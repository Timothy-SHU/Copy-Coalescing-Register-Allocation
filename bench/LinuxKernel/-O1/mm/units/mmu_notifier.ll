; ModuleID = 'mm/mmu_notifier.c'
source_filename = "mm/mmu_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mmu_interval_read_begin: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mmu_interval_read_begin ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___mmu_notifier_register: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __mmu_notifier_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mmu_notifier_register: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mmu_notifier_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mmu_notifier_get_locked: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mmu_notifier_get_locked ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mmu_notifier_unregister: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mmu_notifier_unregister ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mmu_notifier_put: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mmu_notifier_put ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mmu_interval_notifier_insert: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mmu_interval_notifier_insert ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mmu_interval_notifier_insert_locked: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mmu_interval_notifier_insert_locked ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mmu_interval_notifier_remove: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mmu_interval_notifier_remove ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mmu_notifier_synchronize: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mmu_notifier_synchronize ; .previous"

%struct.srcu_struct = type { i32, ptr, %struct.lockdep_map, ptr }
%struct.lockdep_map = type {}
%struct.lock_class_key = type {}
%struct.static_call_key = type { ptr, %union.anon.16 }
%union.anon.16 = type { i64 }
%struct.srcu_data = type { [2 x %struct.atomic64_t], [2 x %struct.atomic64_t], i32, [28 x i8], %struct.spinlock, %struct.rcu_segcblist, i64, i64, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, ptr, i64, i32, ptr, [48 x i8] }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rcu_segcblist = type { ptr, [4 x ptr], [4 x i64], i64, [4 x i64], i8 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.srcu_usage = type { ptr, [3 x ptr], i32, %struct.mutex, %struct.spinlock, %struct.mutex, i64, i64, i64, i64, i64, i64, i64, i64, i8, i64, %struct.mutex, %struct.completion, %struct.atomic_t, i64, i64, %struct.delayed_work, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.17 }
%union.anon.17 = type { i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i64 }
%struct.interval_tree_node = type { %struct.rb_node, i64, i64, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.mm_struct = type { %struct.anon.13, [0 x i64] }
%struct.anon.13 = type { %struct.anon.14, %struct.maple_tree, ptr, i64, i64, i64, i64, i64, ptr, %struct.atomic_t, %struct.atomic_t, ptr, i64, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [52 x i64], [4 x %struct.percpu_counter], ptr, %struct.mm_context_t, i64, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.uprobes_state, %struct.atomic64_t, %struct.work_struct, [48 x i8] }
%struct.anon.14 = type { %struct.atomic_t, [60 x i8] }
%struct.maple_tree = type { %union.anon.15, i32, ptr }
%union.anon.15 = type { %struct.spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.seqcount = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_context_t = type { i64, %struct.atomic64_t, i64, %struct.rw_semaphore, ptr, i64, %struct.mutex, ptr, ptr, %struct.atomic_t, i16, i16 }
%struct.uprobes_state = type { ptr }
%struct.mmu_notifier_subscriptions = type { %struct.hlist_head, i8, %struct.spinlock, i64, i64, %struct.rb_root_cached, %struct.wait_queue_head, %struct.hlist_head }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.mmu_notifier_range = type { ptr, i64, i64, i32, i32, ptr }
%struct.mmu_interval_notifier_ops = type { ptr }
%struct.mmu_notifier = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32 }
%struct.mmu_notifier_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pte_t = type { i64 }

@__UNIQUE_ID___addressable_mmu_interval_read_begin279 = internal global ptr @mmu_interval_read_begin, section ".discard.addressable", align 8, !dbg !0
@srcu = internal global %struct.srcu_struct { i32 0, ptr @srcu_srcu_data, %struct.lockdep_map zeroinitializer, ptr @srcu_srcu_usage }, align 8, !dbg !3565
@.str = private unnamed_addr constant [18 x i8] c"mm/mmu_notifier.c\00", align 1, !dbg !3516
@__mmu_notifier_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3521
@.str.1 = private unnamed_addr constant [19 x i8] c"&subscriptions->wq\00", align 1, !dbg !3538
@__UNIQUE_ID___addressable___mmu_notifier_register318 = internal global ptr @__mmu_notifier_register, section ".discard.addressable", align 8, !dbg !3543
@__UNIQUE_ID___addressable_mmu_notifier_register319 = internal global ptr @mmu_notifier_register, section ".discard.addressable", align 8, !dbg !3545
@__UNIQUE_ID___addressable_mmu_notifier_get_locked324 = internal global ptr @mmu_notifier_get_locked, section ".discard.addressable", align 8, !dbg !3547
@__UNIQUE_ID___addressable_mmu_notifier_unregister325 = internal global ptr @mmu_notifier_unregister, section ".discard.addressable", align 8, !dbg !3549
@__UNIQUE_ID___addressable_mmu_notifier_put326 = internal global ptr @mmu_notifier_put, section ".discard.addressable", align 8, !dbg !3551
@__UNIQUE_ID___addressable_mmu_interval_notifier_insert329 = internal global ptr @mmu_interval_notifier_insert, section ".discard.addressable", align 8, !dbg !3553
@__UNIQUE_ID___addressable_mmu_interval_notifier_insert_locked330 = internal global ptr @mmu_interval_notifier_insert_locked, section ".discard.addressable", align 8, !dbg !3555
@__UNIQUE_ID___addressable_mmu_interval_notifier_remove331 = internal global ptr @mmu_interval_notifier_remove, section ".discard.addressable", align 8, !dbg !3557
@__UNIQUE_ID___addressable_mmu_notifier_synchronize332 = internal global ptr @mmu_notifier_synchronize, section ".discard.addressable", align 8, !dbg !3559
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched37 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !3561
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@srcu_srcu_data = internal global %struct.srcu_data zeroinitializer, section ".data..percpu", align 64, !dbg !3651
@srcu_srcu_usage = internal global %struct.srcu_usage { ptr null, [3 x ptr] zeroinitializer, i32 0, %struct.mutex zeroinitializer, %struct.spinlock zeroinitializer, %struct.mutex zeroinitializer, i64 0, i64 -1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i8 0, i64 0, %struct.mutex zeroinitializer, %struct.completion zeroinitializer, %struct.atomic_t zeroinitializer, i64 0, i64 0, %struct.delayed_work { %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { ptr getelementptr (i8, ptr @srcu_srcu_usage, i64 288), ptr getelementptr (i8, ptr @srcu_srcu_usage, i64 288) }, ptr null }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i64 -2401263026318605568 to ptr), ptr null }, i64 0, ptr @delayed_work_timer_fn, i32 2097152 }, ptr null, i32 0 }, ptr null }, align 8, !dbg !3653
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/srcu.h\00", align 1, !dbg !3655
@.str.3 = private unnamed_addr constant [55 x i8] c"\016%pS callback failed with %d in %sblockable context.\0A\00", align 1, !dbg !3661
@.str.4 = private unnamed_addr constant [5 x i8] c"non-\00", align 1, !dbg !3666
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !3671
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !3674
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 8
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 8
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 8
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID___addressable_mmu_interval_read_begin279, ptr @__UNIQUE_ID___addressable___mmu_notifier_register318, ptr @__UNIQUE_ID___addressable_mmu_notifier_register319, ptr @__UNIQUE_ID___addressable_mmu_notifier_get_locked324, ptr @__UNIQUE_ID___addressable_mmu_notifier_unregister325, ptr @__UNIQUE_ID___addressable_mmu_notifier_put326, ptr @__UNIQUE_ID___addressable_mmu_interval_notifier_insert329, ptr @__UNIQUE_ID___addressable_mmu_interval_notifier_insert_locked330, ptr @__UNIQUE_ID___addressable_mmu_interval_notifier_remove331, ptr @__UNIQUE_ID___addressable_mmu_notifier_synchronize332, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched37], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @mmu_interval_read_begin(ptr noundef %interval_sub) #0 align 16 !dbg !3685 {
entry:
  %interval_sub.addr = alloca ptr, align 8
  %subscriptions = alloca ptr, align 8
  %seq = alloca i64, align 8
  %is_invalidating = alloca i8, align 1
  %tmp = alloca i64, align 8
  %tmp16 = alloca i64, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret = alloca i64, align 8
  %__int = alloca i64, align 8
  %tmp23 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp29 = alloca i64, align 8
  store ptr %interval_sub, ptr %interval_sub.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %interval_sub.addr, metadata !3689, metadata !DIExpression()), !dbg !3714
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscriptions) #16, !dbg !3715
  call void @llvm.dbg.declare(metadata ptr %subscriptions, metadata !3690, metadata !DIExpression()), !dbg !3716
  %0 = load ptr, ptr %interval_sub.addr, align 8, !dbg !3717
  %mm = getelementptr inbounds %struct.mmu_interval_notifier, ptr %0, i32 0, i32 2, !dbg !3718
  %1 = load ptr, ptr %mm, align 8, !dbg !3718
  %2 = getelementptr inbounds %struct.mm_struct, ptr %1, i32 0, i32 0, !dbg !3719
  %notifier_subscriptions = getelementptr inbounds %struct.anon.13, ptr %2, i32 0, i32 50, !dbg !3719
  %3 = load ptr, ptr %notifier_subscriptions, align 16, !dbg !3719
  store ptr %3, ptr %subscriptions, align 8, !dbg !3716
  call void @llvm.lifetime.start.p0(i64 8, ptr %seq) #16, !dbg !3720
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !3691, metadata !DIExpression()), !dbg !3721
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_invalidating) #16, !dbg !3722
  call void @llvm.dbg.declare(metadata ptr %is_invalidating, metadata !3692, metadata !DIExpression()), !dbg !3723
  %4 = load ptr, ptr %subscriptions, align 8, !dbg !3724
  %lock = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %4, i32 0, i32 2, !dbg !3725
  call void @spin_lock(ptr noundef %lock) #17, !dbg !3726
  br label %do.body, !dbg !3727

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3729

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3729

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %interval_sub.addr, align 8, !dbg !3727
  %invalidate_seq = getelementptr inbounds %struct.mmu_interval_notifier, ptr %5, i32 0, i32 4, !dbg !3727
  %6 = load volatile i64, ptr %invalidate_seq, align 8, !dbg !3727
  store i64 %6, ptr %tmp, align 8, !dbg !3729
  %7 = load i64, ptr %tmp, align 8, !dbg !3727
  store i64 %7, ptr %seq, align 8, !dbg !3731
  %8 = load i64, ptr %seq, align 8, !dbg !3732
  %9 = load ptr, ptr %subscriptions, align 8, !dbg !3733
  %invalidate_seq1 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %9, i32 0, i32 3, !dbg !3734
  %10 = load i64, ptr %invalidate_seq1, align 8, !dbg !3734
  %cmp = icmp eq i64 %8, %10, !dbg !3735
  %frombool = zext i1 %cmp to i8, !dbg !3736
  store i8 %frombool, ptr %is_invalidating, align 1, !dbg !3736
  %11 = load ptr, ptr %subscriptions, align 8, !dbg !3737
  %lock2 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %11, i32 0, i32 2, !dbg !3738
  call void @spin_unlock(ptr noundef %lock2) #17, !dbg !3739
  br label %do.body3, !dbg !3740

do.body3:                                         ; preds = %do.end
  br label %do.cond4, !dbg !3741

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !3741

do.end5:                                          ; preds = %do.cond4
  br label %do.body6, !dbg !3743

do.body6:                                         ; preds = %do.end5
  br label %do.cond7, !dbg !3744

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !3744

do.end8:                                          ; preds = %do.cond7
  %12 = load i8, ptr %is_invalidating, align 1, !dbg !3746, !range !3747, !noundef !193
  %tobool = trunc i8 %12 to i1, !dbg !3746
  br i1 %tobool, label %if.then, label %if.end32, !dbg !3748

if.then:                                          ; preds = %do.end8
  br label %do.body9, !dbg !3749

do.body9:                                         ; preds = %if.then
  br label %do.body10, !dbg !3750

do.body10:                                        ; preds = %do.body9
  call void @might_resched() #17, !dbg !3751
  br label %do.cond11, !dbg !3751

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !3751

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !3753

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !3756

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !3756

do.end15:                                         ; preds = %do.cond14
  %13 = load ptr, ptr %subscriptions, align 8, !dbg !3753
  %invalidate_seq17 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %13, i32 0, i32 3, !dbg !3753
  %14 = load volatile i64, ptr %invalidate_seq17, align 8, !dbg !3753
  store i64 %14, ptr %tmp16, align 8, !dbg !3756
  %15 = load i64, ptr %tmp16, align 8, !dbg !3753
  %16 = load i64, ptr %seq, align 8, !dbg !3758
  %cmp18 = icmp ne i64 %15, %16, !dbg !3758
  br i1 %cmp18, label %if.then19, label %if.end, !dbg !3750

if.then19:                                        ; preds = %do.end15
  br label %do.end31, !dbg !3758

if.end:                                           ; preds = %do.end15
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry) #16, !dbg !3759
  call void @llvm.dbg.declare(metadata ptr %__wq_entry, metadata !3693, metadata !DIExpression()), !dbg !3759
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #16, !dbg !3759
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !3708, metadata !DIExpression()), !dbg !3759
  store i64 0, ptr %__ret, align 8, !dbg !3759
  call void @init_wait_entry(ptr noundef %__wq_entry, i32 noundef 0) #17, !dbg !3759
  br label %for.cond, !dbg !3759

for.cond:                                         ; preds = %cleanup.cont, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #16, !dbg !3760
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !3709, metadata !DIExpression()), !dbg !3760
  %17 = load ptr, ptr %subscriptions, align 8, !dbg !3760
  %wq = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %17, i32 0, i32 6, !dbg !3760
  %call = call i64 @prepare_to_wait_event(ptr noundef %wq, ptr noundef %__wq_entry, i32 noundef 2) #17, !dbg !3760
  store i64 %call, ptr %__int, align 8, !dbg !3760
  br label %do.body20, !dbg !3761

do.body20:                                        ; preds = %for.cond
  br label %do.cond21, !dbg !3764

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !3764

do.end22:                                         ; preds = %do.cond21
  %18 = load ptr, ptr %subscriptions, align 8, !dbg !3761
  %invalidate_seq24 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %18, i32 0, i32 3, !dbg !3761
  %19 = load volatile i64, ptr %invalidate_seq24, align 8, !dbg !3761
  store i64 %19, ptr %tmp23, align 8, !dbg !3764
  %20 = load i64, ptr %tmp23, align 8, !dbg !3761
  %21 = load i64, ptr %seq, align 8, !dbg !3766
  %cmp25 = icmp ne i64 %20, %21, !dbg !3766
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !3760

if.then26:                                        ; preds = %do.end22
  store i32 14, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3766

if.end27:                                         ; preds = %do.end22
  call void @schedule() #17, !dbg !3760
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3767
  br label %cleanup, !dbg !3767

cleanup:                                          ; preds = %if.end27, %if.then26
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #16, !dbg !3767
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 14, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !3767, !llvm.loop !3768

for.end:                                          ; preds = %cleanup
  %22 = load ptr, ptr %subscriptions, align 8, !dbg !3759
  %wq28 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %22, i32 0, i32 6, !dbg !3759
  call void @finish_wait(ptr noundef %wq28, ptr noundef %__wq_entry) #17, !dbg !3759
  br label %__out, !dbg !3759

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !3713), !dbg !3759
  %23 = load i64, ptr %__ret, align 8, !dbg !3759
  store i64 %23, ptr %tmp29, align 8, !dbg !3759
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #16, !dbg !3750
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry) #16, !dbg !3750
  %24 = load i64, ptr %tmp29, align 8, !dbg !3759
  br label %do.cond30, !dbg !3750

do.cond30:                                        ; preds = %__out
  br label %do.end31, !dbg !3750

do.end31:                                         ; preds = %do.cond30, %if.then19
  br label %if.end32, !dbg !3750

if.end32:                                         ; preds = %do.end31, %do.end8
  %25 = load i64, ptr %seq, align 8, !dbg !3771
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_invalidating) #16, !dbg !3772
  call void @llvm.lifetime.end.p0(i64 8, ptr %seq) #16, !dbg !3772
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscriptions) #16, !dbg !3772
  ret i64 %25, !dbg !3773

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #3 align 16 !dbg !3774 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3779, metadata !DIExpression()), !dbg !3780
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3781
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !3781
  call void @_raw_spin_lock(ptr noundef %1) #17, !dbg !3781
  ret void, !dbg !3782
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #3 align 16 !dbg !3783 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3785, metadata !DIExpression()), !dbg !3786
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3787
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !3787
  call void @_raw_spin_unlock(ptr noundef %1) #17, !dbg !3787
  ret void, !dbg !3788
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #3 align 16 !dbg !3563 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !3789
  %0 = load ptr, ptr %tmp, align 8, !dbg !3789
  %call = call i32 %0() #17, !dbg !3791
  ret void, !dbg !3792
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3793 dso_local void @init_wait_entry(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3796 dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3800 dso_local void @schedule() #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3801 dso_local void @finish_wait(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__mmu_notifier_release(ptr noundef %mm) #0 align 16 !dbg !3804 {
entry:
  %mm.addr = alloca ptr, align 8
  %subscriptions = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !3808, metadata !DIExpression()), !dbg !3810
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscriptions) #16, !dbg !3811
  call void @llvm.dbg.declare(metadata ptr %subscriptions, metadata !3809, metadata !DIExpression()), !dbg !3812
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !3813
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !3814
  %notifier_subscriptions = getelementptr inbounds %struct.anon.13, ptr %1, i32 0, i32 50, !dbg !3814
  %2 = load ptr, ptr %notifier_subscriptions, align 16, !dbg !3814
  store ptr %2, ptr %subscriptions, align 8, !dbg !3812
  %3 = load ptr, ptr %subscriptions, align 8, !dbg !3815
  %has_itree = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %3, i32 0, i32 1, !dbg !3817
  %4 = load i8, ptr %has_itree, align 8, !dbg !3817, !range !3747, !noundef !193
  %tobool = trunc i8 %4 to i1, !dbg !3817
  br i1 %tobool, label %if.then, label %if.end, !dbg !3818

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %subscriptions, align 8, !dbg !3819
  %6 = load ptr, ptr %mm.addr, align 8, !dbg !3820
  call void @mn_itree_release(ptr noundef %5, ptr noundef %6) #17, !dbg !3821
  br label %if.end, !dbg !3821

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %subscriptions, align 8, !dbg !3822
  %list = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %7, i32 0, i32 0, !dbg !3824
  %call = call i32 @hlist_empty(ptr noundef %list) #17, !dbg !3825
  %tobool1 = icmp ne i32 %call, 0, !dbg !3825
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3826

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %subscriptions, align 8, !dbg !3827
  %9 = load ptr, ptr %mm.addr, align 8, !dbg !3828
  call void @mn_hlist_release(ptr noundef %8, ptr noundef %9) #17, !dbg !3829
  br label %if.end3, !dbg !3829

if.end3:                                          ; preds = %if.then2, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscriptions) #16, !dbg !3830
  ret void, !dbg !3830
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mn_itree_release(ptr noundef %subscriptions, ptr noundef %mm) #0 align 16 !dbg !3831 {
entry:
  %subscriptions.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %range = alloca %struct.mmu_notifier_range, align 8
  %interval_sub = alloca ptr, align 8
  %cur_seq = alloca i64, align 8
  %ret = alloca i8, align 1
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %subscriptions, ptr %subscriptions.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %subscriptions.addr, metadata !3835, metadata !DIExpression()), !dbg !3849
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !3836, metadata !DIExpression()), !dbg !3850
  call void @llvm.lifetime.start.p0(i64 40, ptr %range) #16, !dbg !3851
  call void @llvm.dbg.declare(metadata ptr %range, metadata !3837, metadata !DIExpression()), !dbg !3852
  %mm1 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 0, !dbg !3853
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !3854
  store ptr %0, ptr %mm1, align 8, !dbg !3853
  %start = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 1, !dbg !3853
  store i64 0, ptr %start, align 8, !dbg !3853
  %end = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 2, !dbg !3853
  store i64 -1, ptr %end, align 8, !dbg !3853
  %flags = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 3, !dbg !3853
  store i32 1, ptr %flags, align 8, !dbg !3853
  %event = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 4, !dbg !3853
  store i32 5, ptr %event, align 4, !dbg !3853
  %owner = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 5, !dbg !3853
  store ptr null, ptr %owner, align 8, !dbg !3853
  call void @llvm.lifetime.start.p0(i64 8, ptr %interval_sub) #16, !dbg !3855
  call void @llvm.dbg.declare(metadata ptr %interval_sub, metadata !3838, metadata !DIExpression()), !dbg !3856
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_seq) #16, !dbg !3857
  call void @llvm.dbg.declare(metadata ptr %cur_seq, metadata !3839, metadata !DIExpression()), !dbg !3858
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #16, !dbg !3859
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3840, metadata !DIExpression()), !dbg !3860
  %1 = load ptr, ptr %subscriptions.addr, align 8, !dbg !3861
  %call = call ptr @mn_itree_inv_start_range(ptr noundef %1, ptr noundef %range, ptr noundef %cur_seq) #17, !dbg !3862
  store ptr %call, ptr %interval_sub, align 8, !dbg !3863
  br label %for.cond, !dbg !3864

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %interval_sub, align 8, !dbg !3865
  %tobool = icmp ne ptr %2, null, !dbg !3866
  br i1 %tobool, label %for.body, label %for.end, !dbg !3866

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %interval_sub, align 8, !dbg !3867
  %ops = getelementptr inbounds %struct.mmu_interval_notifier, ptr %3, i32 0, i32 1, !dbg !3868
  %4 = load ptr, ptr %ops, align 8, !dbg !3868
  %invalidate = getelementptr inbounds %struct.mmu_interval_notifier_ops, ptr %4, i32 0, i32 0, !dbg !3869
  %5 = load ptr, ptr %invalidate, align 8, !dbg !3869
  %6 = load ptr, ptr %interval_sub, align 8, !dbg !3870
  %7 = load i64, ptr %cur_seq, align 8, !dbg !3871
  %call2 = call zeroext i1 %5(ptr noundef %6, ptr noundef %range, i64 noundef %7) #17, !dbg !3867
  %frombool = zext i1 %call2 to i8, !dbg !3872
  store i8 %frombool, ptr %ret, align 1, !dbg !3872
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !3873
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3841, metadata !DIExpression()), !dbg !3873
  %8 = load i8, ptr %ret, align 1, !dbg !3873, !range !3747, !noundef !193
  %tobool3 = trunc i8 %8 to i1, !dbg !3873
  %lnot = xor i1 %tobool3, true, !dbg !3873
  %lnot4 = xor i1 %lnot, true, !dbg !3873
  %lnot5 = xor i1 %lnot4, true, !dbg !3873
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !3873
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3873
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !3874
  %tobool6 = icmp ne i32 %9, 0, !dbg !3874
  %lnot7 = xor i1 %tobool6, true, !dbg !3874
  %lnot9 = xor i1 %lnot7, true, !dbg !3874
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !3874
  %conv = sext i32 %lnot.ext10 to i64, !dbg !3874
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3874
  %tobool11 = icmp ne i64 %expval, 0, !dbg !3874
  br i1 %tobool11, label %if.then, label %if.end, !dbg !3873

if.then:                                          ; preds = %for.body
  br label %do.body, !dbg !3874

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !3875
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3846, metadata !DIExpression()), !dbg !3875
  store i32 2305, ptr %__flags, align 4, !dbg !3875
  br label %do.body12, !dbg !3875

do.body12:                                        ; preds = %do.body
  br label %do.cond, !dbg !3876

do.cond:                                          ; preds = %do.body12
  br label %do.end, !dbg !3876

do.end:                                           ; preds = %do.cond
  br label %do.body13, !dbg !3875

do.body13:                                        ; preds = %do.end
  %10 = load i32, ptr %__flags, align 4, !dbg !3878
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 281, i32 %10, i64 12) #16, !dbg !3878, !srcloc !3880
  br label %do.cond14, !dbg !3878

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !3878

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !3875

do.body16:                                        ; preds = %do.end15
  br label %do.cond17, !dbg !3881

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !3881

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !3874
  br label %do.cond19, !dbg !3875

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !3875

do.end20:                                         ; preds = %do.cond19
  br label %if.end, !dbg !3875

if.end:                                           ; preds = %do.end20, %for.body
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !3873
  %tobool21 = icmp ne i32 %11, 0, !dbg !3873
  %lnot22 = xor i1 %tobool21, true, !dbg !3873
  %lnot24 = xor i1 %lnot22, true, !dbg !3873
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !3873
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !3873
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !3873
  store i64 %expval27, ptr %tmp, align 8, !dbg !3874
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !3883
  %12 = load i64, ptr %tmp, align 8, !dbg !3873
  br label %for.inc, !dbg !3884

for.inc:                                          ; preds = %if.end
  %13 = load ptr, ptr %interval_sub, align 8, !dbg !3885
  %call28 = call ptr @mn_itree_inv_next(ptr noundef %13, ptr noundef %range) #17, !dbg !3886
  store ptr %call28, ptr %interval_sub, align 8, !dbg !3887
  br label %for.cond, !dbg !3888, !llvm.loop !3889

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %subscriptions.addr, align 8, !dbg !3892
  call void @mn_itree_inv_end(ptr noundef %14) #17, !dbg !3893
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #16, !dbg !3894
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_seq) #16, !dbg !3894
  call void @llvm.lifetime.end.p0(i64 8, ptr %interval_sub) #16, !dbg !3894
  call void @llvm.lifetime.end.p0(i64 40, ptr %range) #16, !dbg !3894
  ret void, !dbg !3894
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hlist_empty(ptr noundef %h) #5 align 16 !dbg !3895 {
entry:
  %h.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !3902, metadata !DIExpression()), !dbg !3903
  br label %do.body, !dbg !3904

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3906

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %h.addr, align 8, !dbg !3904
  %first = getelementptr inbounds %struct.hlist_head, ptr %0, i32 0, i32 0, !dbg !3904
  %1 = load volatile ptr, ptr %first, align 8, !dbg !3904
  store ptr %1, ptr %tmp, align 8, !dbg !3906
  %2 = load ptr, ptr %tmp, align 8, !dbg !3904
  %tobool = icmp ne ptr %2, null, !dbg !3908
  %lnot = xor i1 %tobool, true, !dbg !3908
  %lnot.ext = zext i1 %lnot to i32, !dbg !3908
  ret i32 %lnot.ext, !dbg !3909
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mn_hlist_release(ptr noundef %subscriptions, ptr noundef %mm) #0 align 16 !dbg !3910 {
entry:
  %subscriptions.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %subscription = alloca ptr, align 8
  %id = alloca i32, align 4
  %____ptr = alloca ptr, align 8
  %__UNIQUE_ID_rcu280 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %____ptr8 = alloca ptr, align 8
  %__UNIQUE_ID_rcu282 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  %__mptr17 = alloca ptr, align 8
  %tmp18 = alloca ptr, align 8
  %__mptr29 = alloca ptr, align 8
  %tmp32 = alloca ptr, align 8
  store ptr %subscriptions, ptr %subscriptions.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %subscriptions.addr, metadata !3912, metadata !DIExpression()), !dbg !3933
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !3913, metadata !DIExpression()), !dbg !3934
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscription) #16, !dbg !3935
  call void @llvm.dbg.declare(metadata ptr %subscription, metadata !3914, metadata !DIExpression()), !dbg !3936
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #16, !dbg !3937
  call void @llvm.dbg.declare(metadata ptr %id, metadata !3915, metadata !DIExpression()), !dbg !3938
  %call = call i32 @srcu_read_lock(ptr noundef @srcu) #17, !dbg !3939
  store i32 %call, ptr %id, align 4, !dbg !3940
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #16, !dbg !3941
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !3916, metadata !DIExpression()), !dbg !3941
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu280) #16, !dbg !3942
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu280, metadata !3919, metadata !DIExpression()), !dbg !3942
  br label %do.body, !dbg !3943

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3945

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3945

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %subscriptions.addr, align 8, !dbg !3943
  %list = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %0, i32 0, i32 0, !dbg !3943
  %first = getelementptr inbounds %struct.hlist_head, ptr %list, i32 0, i32 0, !dbg !3943
  %1 = load volatile ptr, ptr %first, align 8, !dbg !3943
  store ptr %1, ptr %tmp, align 8, !dbg !3945
  %2 = load ptr, ptr %tmp, align 8, !dbg !3943
  store ptr %2, ptr %__UNIQUE_ID_rcu280, align 8, !dbg !3942
  %3 = load ptr, ptr %__UNIQUE_ID_rcu280, align 8, !dbg !3942
  store ptr %3, ptr %tmp1, align 8, !dbg !3942
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu280) #16, !dbg !3941
  %4 = load ptr, ptr %tmp1, align 8, !dbg !3942
  store ptr %4, ptr %____ptr, align 8, !dbg !3941
  %5 = load ptr, ptr %____ptr, align 8, !dbg !3941
  %tobool = icmp ne ptr %5, null, !dbg !3941
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3941

cond.true:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !3947
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3921, metadata !DIExpression()), !dbg !3947
  %6 = load ptr, ptr %____ptr, align 8, !dbg !3947
  store ptr %6, ptr %__mptr, align 8, !dbg !3947
  %7 = load ptr, ptr %__mptr, align 8, !dbg !3947
  %add.ptr = getelementptr i8, ptr %7, i64 0, !dbg !3947
  store ptr %add.ptr, ptr %tmp3, align 8, !dbg !3947
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !3941
  %8 = load ptr, ptr %tmp3, align 8, !dbg !3947
  br label %cond.end, !dbg !3941

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !3941

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %8, %cond.true ], [ null, %cond.false ], !dbg !3941
  store ptr %cond, ptr %tmp2, align 8, !dbg !3941
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #16, !dbg !3948
  %9 = load ptr, ptr %tmp2, align 8, !dbg !3941
  store ptr %9, ptr %subscription, align 8, !dbg !3948
  br label %for.cond, !dbg !3948

for.cond:                                         ; preds = %cond.end21, %cond.end
  %10 = load ptr, ptr %subscription, align 8, !dbg !3949
  %tobool4 = icmp ne ptr %10, null, !dbg !3948
  br i1 %tobool4, label %for.body, label %for.end, !dbg !3948

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %subscription, align 8, !dbg !3950
  %ops = getelementptr inbounds %struct.mmu_notifier, ptr %11, i32 0, i32 1, !dbg !3952
  %12 = load ptr, ptr %ops, align 8, !dbg !3952
  %release = getelementptr inbounds %struct.mmu_notifier_ops, ptr %12, i32 0, i32 0, !dbg !3953
  %13 = load ptr, ptr %release, align 8, !dbg !3953
  %tobool5 = icmp ne ptr %13, null, !dbg !3950
  br i1 %tobool5, label %if.then, label %if.end, !dbg !3954

if.then:                                          ; preds = %for.body
  %14 = load ptr, ptr %subscription, align 8, !dbg !3955
  %ops6 = getelementptr inbounds %struct.mmu_notifier, ptr %14, i32 0, i32 1, !dbg !3956
  %15 = load ptr, ptr %ops6, align 8, !dbg !3956
  %release7 = getelementptr inbounds %struct.mmu_notifier_ops, ptr %15, i32 0, i32 0, !dbg !3957
  %16 = load ptr, ptr %release7, align 8, !dbg !3957
  %17 = load ptr, ptr %subscription, align 8, !dbg !3958
  %18 = load ptr, ptr %mm.addr, align 8, !dbg !3959
  call void %16(ptr noundef %17, ptr noundef %18) #17, !dbg !3955
  br label %if.end, !dbg !3955

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !3953

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr8) #16, !dbg !3960
  call void @llvm.dbg.declare(metadata ptr %____ptr8, metadata !3923, metadata !DIExpression()), !dbg !3960
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu282) #16, !dbg !3961
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu282, metadata !3926, metadata !DIExpression()), !dbg !3961
  br label %do.body9, !dbg !3962

do.body9:                                         ; preds = %for.inc
  br label %do.cond10, !dbg !3964

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !3964

do.end11:                                         ; preds = %do.cond10
  %19 = load ptr, ptr %subscription, align 8, !dbg !3962
  %hlist = getelementptr inbounds %struct.mmu_notifier, ptr %19, i32 0, i32 0, !dbg !3962
  %next = getelementptr inbounds %struct.hlist_node, ptr %hlist, i32 0, i32 0, !dbg !3962
  %20 = load volatile ptr, ptr %next, align 8, !dbg !3962
  store ptr %20, ptr %tmp12, align 8, !dbg !3964
  %21 = load ptr, ptr %tmp12, align 8, !dbg !3962
  store ptr %21, ptr %__UNIQUE_ID_rcu282, align 8, !dbg !3961
  %22 = load ptr, ptr %__UNIQUE_ID_rcu282, align 8, !dbg !3961
  store ptr %22, ptr %tmp13, align 8, !dbg !3961
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu282) #16, !dbg !3960
  %23 = load ptr, ptr %tmp13, align 8, !dbg !3961
  store ptr %23, ptr %____ptr8, align 8, !dbg !3960
  %24 = load ptr, ptr %____ptr8, align 8, !dbg !3960
  %tobool15 = icmp ne ptr %24, null, !dbg !3960
  br i1 %tobool15, label %cond.true16, label %cond.false20, !dbg !3960

cond.true16:                                      ; preds = %do.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr17) #16, !dbg !3966
  call void @llvm.dbg.declare(metadata ptr %__mptr17, metadata !3928, metadata !DIExpression()), !dbg !3966
  %25 = load ptr, ptr %____ptr8, align 8, !dbg !3966
  store ptr %25, ptr %__mptr17, align 8, !dbg !3966
  %26 = load ptr, ptr %__mptr17, align 8, !dbg !3966
  %add.ptr19 = getelementptr i8, ptr %26, i64 0, !dbg !3966
  store ptr %add.ptr19, ptr %tmp18, align 8, !dbg !3966
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr17) #16, !dbg !3960
  %27 = load ptr, ptr %tmp18, align 8, !dbg !3966
  br label %cond.end21, !dbg !3960

cond.false20:                                     ; preds = %do.end11
  br label %cond.end21, !dbg !3960

cond.end21:                                       ; preds = %cond.false20, %cond.true16
  %cond22 = phi ptr [ %27, %cond.true16 ], [ null, %cond.false20 ], !dbg !3960
  store ptr %cond22, ptr %tmp14, align 8, !dbg !3960
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr8) #16, !dbg !3949
  %28 = load ptr, ptr %tmp14, align 8, !dbg !3960
  store ptr %28, ptr %subscription, align 8, !dbg !3949
  br label %for.cond, !dbg !3949, !llvm.loop !3967

for.end:                                          ; preds = %for.cond
  %29 = load ptr, ptr %subscriptions.addr, align 8, !dbg !3969
  %lock = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %29, i32 0, i32 2, !dbg !3970
  call void @spin_lock(ptr noundef %lock) #17, !dbg !3971
  br label %while.cond, !dbg !3972

while.cond:                                       ; preds = %while.body, %for.end
  %30 = load ptr, ptr %subscriptions.addr, align 8, !dbg !3973
  %list23 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %30, i32 0, i32 0, !dbg !3973
  %call24 = call i32 @hlist_empty(ptr noundef %list23) #17, !dbg !3973
  %tobool25 = icmp ne i32 %call24, 0, !dbg !3973
  %lnot = xor i1 %tobool25, true, !dbg !3973
  %lnot26 = xor i1 %lnot, true, !dbg !3973
  %lnot27 = xor i1 %lnot26, true, !dbg !3973
  %lnot.ext = zext i1 %lnot27 to i32, !dbg !3973
  %conv = sext i32 %lnot.ext to i64, !dbg !3973
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3973
  %tobool28 = icmp ne i64 %expval, 0, !dbg !3972
  br i1 %tobool28, label %while.body, label %while.end, !dbg !3972

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr29) #16, !dbg !3974
  call void @llvm.dbg.declare(metadata ptr %__mptr29, metadata !3930, metadata !DIExpression()), !dbg !3974
  %31 = load ptr, ptr %subscriptions.addr, align 8, !dbg !3974
  %list30 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %31, i32 0, i32 0, !dbg !3974
  %first31 = getelementptr inbounds %struct.hlist_head, ptr %list30, i32 0, i32 0, !dbg !3974
  %32 = load ptr, ptr %first31, align 8, !dbg !3974
  store ptr %32, ptr %__mptr29, align 8, !dbg !3974
  %33 = load ptr, ptr %__mptr29, align 8, !dbg !3974
  %add.ptr33 = getelementptr i8, ptr %33, i64 0, !dbg !3974
  store ptr %add.ptr33, ptr %tmp32, align 8, !dbg !3974
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr29) #16, !dbg !3975
  %34 = load ptr, ptr %tmp32, align 8, !dbg !3974
  store ptr %34, ptr %subscription, align 8, !dbg !3976
  %35 = load ptr, ptr %subscription, align 8, !dbg !3977
  %hlist34 = getelementptr inbounds %struct.mmu_notifier, ptr %35, i32 0, i32 0, !dbg !3978
  call void @hlist_del_init_rcu(ptr noundef %hlist34) #17, !dbg !3979
  br label %while.cond, !dbg !3972, !llvm.loop !3980

while.end:                                        ; preds = %while.cond
  %36 = load ptr, ptr %subscriptions.addr, align 8, !dbg !3982
  %lock35 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %36, i32 0, i32 2, !dbg !3983
  call void @spin_unlock(ptr noundef %lock35) #17, !dbg !3984
  %37 = load i32, ptr %id, align 4, !dbg !3985
  call void @srcu_read_unlock(ptr noundef @srcu, i32 noundef %37) #17, !dbg !3986
  call void @synchronize_srcu(ptr noundef @srcu) #17, !dbg !3987
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #16, !dbg !3988
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscription) #16, !dbg !3988
  ret void, !dbg !3988
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__mmu_notifier_clear_flush_young(ptr noundef %mm, i64 noundef %start, i64 noundef %end) #0 align 16 !dbg !3989 {
entry:
  %mm.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %subscription = alloca ptr, align 8
  %young = alloca i32, align 4
  %id = alloca i32, align 4
  %____ptr = alloca ptr, align 8
  %__UNIQUE_ID_rcu284 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %____ptr9 = alloca ptr, align 8
  %__UNIQUE_ID_rcu286 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  %__mptr18 = alloca ptr, align 8
  %tmp19 = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !3993, metadata !DIExpression()), !dbg !4013
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !3994, metadata !DIExpression()), !dbg !4014
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !3995, metadata !DIExpression()), !dbg !4015
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscription) #16, !dbg !4016
  call void @llvm.dbg.declare(metadata ptr %subscription, metadata !3996, metadata !DIExpression()), !dbg !4017
  call void @llvm.lifetime.start.p0(i64 4, ptr %young) #16, !dbg !4018
  call void @llvm.dbg.declare(metadata ptr %young, metadata !3997, metadata !DIExpression()), !dbg !4019
  store i32 0, ptr %young, align 4, !dbg !4019
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #16, !dbg !4018
  call void @llvm.dbg.declare(metadata ptr %id, metadata !3998, metadata !DIExpression()), !dbg !4020
  %call = call i32 @srcu_read_lock(ptr noundef @srcu) #17, !dbg !4021
  store i32 %call, ptr %id, align 4, !dbg !4022
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #16, !dbg !4023
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !3999, metadata !DIExpression()), !dbg !4023
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu284) #16, !dbg !4024
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu284, metadata !4002, metadata !DIExpression()), !dbg !4024
  br label %do.body, !dbg !4025

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4027

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4027

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !4025
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !4025
  %notifier_subscriptions = getelementptr inbounds %struct.anon.13, ptr %1, i32 0, i32 50, !dbg !4025
  %2 = load ptr, ptr %notifier_subscriptions, align 16, !dbg !4025
  %list = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %2, i32 0, i32 0, !dbg !4025
  %first = getelementptr inbounds %struct.hlist_head, ptr %list, i32 0, i32 0, !dbg !4025
  %3 = load volatile ptr, ptr %first, align 8, !dbg !4025
  store ptr %3, ptr %tmp, align 8, !dbg !4027
  %4 = load ptr, ptr %tmp, align 8, !dbg !4025
  store ptr %4, ptr %__UNIQUE_ID_rcu284, align 8, !dbg !4024
  %5 = load ptr, ptr %__UNIQUE_ID_rcu284, align 8, !dbg !4024
  store ptr %5, ptr %tmp1, align 8, !dbg !4024
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu284) #16, !dbg !4023
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4024
  store ptr %6, ptr %____ptr, align 8, !dbg !4023
  %7 = load ptr, ptr %____ptr, align 8, !dbg !4023
  %tobool = icmp ne ptr %7, null, !dbg !4023
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4023

cond.true:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4029
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4004, metadata !DIExpression()), !dbg !4029
  %8 = load ptr, ptr %____ptr, align 8, !dbg !4029
  store ptr %8, ptr %__mptr, align 8, !dbg !4029
  %9 = load ptr, ptr %__mptr, align 8, !dbg !4029
  %add.ptr = getelementptr i8, ptr %9, i64 0, !dbg !4029
  store ptr %add.ptr, ptr %tmp3, align 8, !dbg !4029
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4023
  %10 = load ptr, ptr %tmp3, align 8, !dbg !4029
  br label %cond.end, !dbg !4023

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !4023

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %10, %cond.true ], [ null, %cond.false ], !dbg !4023
  store ptr %cond, ptr %tmp2, align 8, !dbg !4023
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #16, !dbg !4030
  %11 = load ptr, ptr %tmp2, align 8, !dbg !4023
  store ptr %11, ptr %subscription, align 8, !dbg !4030
  br label %for.cond, !dbg !4030

for.cond:                                         ; preds = %cond.end22, %cond.end
  %12 = load ptr, ptr %subscription, align 8, !dbg !4031
  %tobool4 = icmp ne ptr %12, null, !dbg !4030
  br i1 %tobool4, label %for.body, label %for.end, !dbg !4030

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %subscription, align 8, !dbg !4032
  %ops = getelementptr inbounds %struct.mmu_notifier, ptr %13, i32 0, i32 1, !dbg !4035
  %14 = load ptr, ptr %ops, align 8, !dbg !4035
  %clear_flush_young = getelementptr inbounds %struct.mmu_notifier_ops, ptr %14, i32 0, i32 1, !dbg !4036
  %15 = load ptr, ptr %clear_flush_young, align 8, !dbg !4036
  %tobool5 = icmp ne ptr %15, null, !dbg !4032
  br i1 %tobool5, label %if.then, label %if.end, !dbg !4037

if.then:                                          ; preds = %for.body
  %16 = load ptr, ptr %subscription, align 8, !dbg !4038
  %ops6 = getelementptr inbounds %struct.mmu_notifier, ptr %16, i32 0, i32 1, !dbg !4039
  %17 = load ptr, ptr %ops6, align 8, !dbg !4039
  %clear_flush_young7 = getelementptr inbounds %struct.mmu_notifier_ops, ptr %17, i32 0, i32 1, !dbg !4040
  %18 = load ptr, ptr %clear_flush_young7, align 8, !dbg !4040
  %19 = load ptr, ptr %subscription, align 8, !dbg !4041
  %20 = load ptr, ptr %mm.addr, align 8, !dbg !4042
  %21 = load i64, ptr %start.addr, align 8, !dbg !4043
  %22 = load i64, ptr %end.addr, align 8, !dbg !4044
  %call8 = call i32 %18(ptr noundef %19, ptr noundef %20, i64 noundef %21, i64 noundef %22) #17, !dbg !4038
  %23 = load i32, ptr %young, align 4, !dbg !4045
  %or = or i32 %23, %call8, !dbg !4045
  store i32 %or, ptr %young, align 4, !dbg !4045
  br label %if.end, !dbg !4046

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !4047

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr9) #16, !dbg !4048
  call void @llvm.dbg.declare(metadata ptr %____ptr9, metadata !4006, metadata !DIExpression()), !dbg !4048
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu286) #16, !dbg !4049
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu286, metadata !4009, metadata !DIExpression()), !dbg !4049
  br label %do.body10, !dbg !4050

do.body10:                                        ; preds = %for.inc
  br label %do.cond11, !dbg !4052

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !4052

do.end12:                                         ; preds = %do.cond11
  %24 = load ptr, ptr %subscription, align 8, !dbg !4050
  %hlist = getelementptr inbounds %struct.mmu_notifier, ptr %24, i32 0, i32 0, !dbg !4050
  %next = getelementptr inbounds %struct.hlist_node, ptr %hlist, i32 0, i32 0, !dbg !4050
  %25 = load volatile ptr, ptr %next, align 8, !dbg !4050
  store ptr %25, ptr %tmp13, align 8, !dbg !4052
  %26 = load ptr, ptr %tmp13, align 8, !dbg !4050
  store ptr %26, ptr %__UNIQUE_ID_rcu286, align 8, !dbg !4049
  %27 = load ptr, ptr %__UNIQUE_ID_rcu286, align 8, !dbg !4049
  store ptr %27, ptr %tmp14, align 8, !dbg !4049
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu286) #16, !dbg !4048
  %28 = load ptr, ptr %tmp14, align 8, !dbg !4049
  store ptr %28, ptr %____ptr9, align 8, !dbg !4048
  %29 = load ptr, ptr %____ptr9, align 8, !dbg !4048
  %tobool16 = icmp ne ptr %29, null, !dbg !4048
  br i1 %tobool16, label %cond.true17, label %cond.false21, !dbg !4048

cond.true17:                                      ; preds = %do.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr18) #16, !dbg !4054
  call void @llvm.dbg.declare(metadata ptr %__mptr18, metadata !4011, metadata !DIExpression()), !dbg !4054
  %30 = load ptr, ptr %____ptr9, align 8, !dbg !4054
  store ptr %30, ptr %__mptr18, align 8, !dbg !4054
  %31 = load ptr, ptr %__mptr18, align 8, !dbg !4054
  %add.ptr20 = getelementptr i8, ptr %31, i64 0, !dbg !4054
  store ptr %add.ptr20, ptr %tmp19, align 8, !dbg !4054
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr18) #16, !dbg !4048
  %32 = load ptr, ptr %tmp19, align 8, !dbg !4054
  br label %cond.end22, !dbg !4048

cond.false21:                                     ; preds = %do.end12
  br label %cond.end22, !dbg !4048

cond.end22:                                       ; preds = %cond.false21, %cond.true17
  %cond23 = phi ptr [ %32, %cond.true17 ], [ null, %cond.false21 ], !dbg !4048
  store ptr %cond23, ptr %tmp15, align 8, !dbg !4048
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr9) #16, !dbg !4031
  %33 = load ptr, ptr %tmp15, align 8, !dbg !4048
  store ptr %33, ptr %subscription, align 8, !dbg !4031
  br label %for.cond, !dbg !4031, !llvm.loop !4055

for.end:                                          ; preds = %for.cond
  %34 = load i32, ptr %id, align 4, !dbg !4057
  call void @srcu_read_unlock(ptr noundef @srcu, i32 noundef %34) #17, !dbg !4058
  %35 = load i32, ptr %young, align 4, !dbg !4059
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #16, !dbg !4060
  call void @llvm.lifetime.end.p0(i64 4, ptr %young) #16, !dbg !4060
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscription) #16, !dbg !4060
  ret i32 %35, !dbg !4061
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @srcu_read_lock(ptr noundef %ssp) #5 align 16 !dbg !4062 {
entry:
  %ssp.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  store ptr %ssp, ptr %ssp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ssp.addr, metadata !4066, metadata !DIExpression()), !dbg !4068
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #16, !dbg !4069
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !4067, metadata !DIExpression()), !dbg !4070
  %0 = load ptr, ptr %ssp.addr, align 8, !dbg !4071
  call void @srcu_check_nmi_safety(ptr noundef %0, i1 noundef zeroext false) #17, !dbg !4072
  %1 = load ptr, ptr %ssp.addr, align 8, !dbg !4073
  %call = call i32 @__srcu_read_lock(ptr noundef %1) #17, !dbg !4074
  store i32 %call, ptr %retval1, align 4, !dbg !4075
  br label %do.body, !dbg !4076

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4077

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4077

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr %retval1, align 4, !dbg !4079
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #16, !dbg !4080
  ret i32 %2, !dbg !4081
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @srcu_read_unlock(ptr noundef %ssp, i32 noundef %idx) #5 align 16 !dbg !4082 {
entry:
  %ssp.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %ssp, ptr %ssp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ssp.addr, metadata !4086, metadata !DIExpression()), !dbg !4093
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !4087, metadata !DIExpression()), !dbg !4094
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4095
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4088, metadata !DIExpression()), !dbg !4095
  %0 = load i32, ptr %idx.addr, align 4, !dbg !4095
  %and = and i32 %0, -2, !dbg !4095
  %tobool = icmp ne i32 %and, 0, !dbg !4095
  %lnot = xor i1 %tobool, true, !dbg !4095
  %lnot1 = xor i1 %lnot, true, !dbg !4095
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4095
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4095
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !4096
  %tobool2 = icmp ne i32 %1, 0, !dbg !4096
  %lnot3 = xor i1 %tobool2, true, !dbg !4096
  %lnot5 = xor i1 %lnot3, true, !dbg !4096
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !4096
  %conv = sext i32 %lnot.ext6 to i64, !dbg !4096
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4096
  %tobool7 = icmp ne i64 %expval, 0, !dbg !4096
  br i1 %tobool7, label %if.then, label %if.end, !dbg !4095

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4096

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !4097
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4090, metadata !DIExpression()), !dbg !4097
  store i32 2307, ptr %__flags, align 4, !dbg !4097
  br label %do.body8, !dbg !4097

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !4098

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !4098

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !4097

do.body9:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !4100
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 285, i32 %2, i64 12) #16, !dbg !4100, !srcloc !4102
  br label %do.cond10, !dbg !4100

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !4100

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !4097

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !4103

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !4103

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !4096
  br label %do.cond15, !dbg !4097

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !4097

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !4097

if.end:                                           ; preds = %do.end16, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !4095
  %tobool17 = icmp ne i32 %3, 0, !dbg !4095
  %lnot18 = xor i1 %tobool17, true, !dbg !4095
  %lnot20 = xor i1 %lnot18, true, !dbg !4095
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !4095
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !4095
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !4095
  store i64 %expval23, ptr %tmp, align 8, !dbg !4096
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4105
  %4 = load i64, ptr %tmp, align 8, !dbg !4095
  %5 = load ptr, ptr %ssp.addr, align 8, !dbg !4106
  call void @srcu_check_nmi_safety(ptr noundef %5, i1 noundef zeroext false) #17, !dbg !4107
  br label %do.body24, !dbg !4108

do.body24:                                        ; preds = %if.end
  br label %do.end26, !dbg !4109

do.end26:                                         ; preds = %do.body24
  %6 = load ptr, ptr %ssp.addr, align 8, !dbg !4111
  %7 = load i32, ptr %idx.addr, align 4, !dbg !4112
  call void @__srcu_read_unlock(ptr noundef %6, i32 noundef %7) #17, !dbg !4113
  ret void, !dbg !4114
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__mmu_notifier_clear_young(ptr noundef %mm, i64 noundef %start, i64 noundef %end) #0 align 16 !dbg !4115 {
entry:
  %mm.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %subscription = alloca ptr, align 8
  %young = alloca i32, align 4
  %id = alloca i32, align 4
  %____ptr = alloca ptr, align 8
  %__UNIQUE_ID_rcu288 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %____ptr9 = alloca ptr, align 8
  %__UNIQUE_ID_rcu290 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  %__mptr18 = alloca ptr, align 8
  %tmp19 = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !4117, metadata !DIExpression()), !dbg !4137
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4118, metadata !DIExpression()), !dbg !4138
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !4119, metadata !DIExpression()), !dbg !4139
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscription) #16, !dbg !4140
  call void @llvm.dbg.declare(metadata ptr %subscription, metadata !4120, metadata !DIExpression()), !dbg !4141
  call void @llvm.lifetime.start.p0(i64 4, ptr %young) #16, !dbg !4142
  call void @llvm.dbg.declare(metadata ptr %young, metadata !4121, metadata !DIExpression()), !dbg !4143
  store i32 0, ptr %young, align 4, !dbg !4143
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #16, !dbg !4142
  call void @llvm.dbg.declare(metadata ptr %id, metadata !4122, metadata !DIExpression()), !dbg !4144
  %call = call i32 @srcu_read_lock(ptr noundef @srcu) #17, !dbg !4145
  store i32 %call, ptr %id, align 4, !dbg !4146
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #16, !dbg !4147
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !4123, metadata !DIExpression()), !dbg !4147
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu288) #16, !dbg !4148
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu288, metadata !4126, metadata !DIExpression()), !dbg !4148
  br label %do.body, !dbg !4149

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4151

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4151

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !4149
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !4149
  %notifier_subscriptions = getelementptr inbounds %struct.anon.13, ptr %1, i32 0, i32 50, !dbg !4149
  %2 = load ptr, ptr %notifier_subscriptions, align 16, !dbg !4149
  %list = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %2, i32 0, i32 0, !dbg !4149
  %first = getelementptr inbounds %struct.hlist_head, ptr %list, i32 0, i32 0, !dbg !4149
  %3 = load volatile ptr, ptr %first, align 8, !dbg !4149
  store ptr %3, ptr %tmp, align 8, !dbg !4151
  %4 = load ptr, ptr %tmp, align 8, !dbg !4149
  store ptr %4, ptr %__UNIQUE_ID_rcu288, align 8, !dbg !4148
  %5 = load ptr, ptr %__UNIQUE_ID_rcu288, align 8, !dbg !4148
  store ptr %5, ptr %tmp1, align 8, !dbg !4148
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu288) #16, !dbg !4147
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4148
  store ptr %6, ptr %____ptr, align 8, !dbg !4147
  %7 = load ptr, ptr %____ptr, align 8, !dbg !4147
  %tobool = icmp ne ptr %7, null, !dbg !4147
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4147

cond.true:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4153
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4128, metadata !DIExpression()), !dbg !4153
  %8 = load ptr, ptr %____ptr, align 8, !dbg !4153
  store ptr %8, ptr %__mptr, align 8, !dbg !4153
  %9 = load ptr, ptr %__mptr, align 8, !dbg !4153
  %add.ptr = getelementptr i8, ptr %9, i64 0, !dbg !4153
  store ptr %add.ptr, ptr %tmp3, align 8, !dbg !4153
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4147
  %10 = load ptr, ptr %tmp3, align 8, !dbg !4153
  br label %cond.end, !dbg !4147

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !4147

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %10, %cond.true ], [ null, %cond.false ], !dbg !4147
  store ptr %cond, ptr %tmp2, align 8, !dbg !4147
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #16, !dbg !4154
  %11 = load ptr, ptr %tmp2, align 8, !dbg !4147
  store ptr %11, ptr %subscription, align 8, !dbg !4154
  br label %for.cond, !dbg !4154

for.cond:                                         ; preds = %cond.end22, %cond.end
  %12 = load ptr, ptr %subscription, align 8, !dbg !4155
  %tobool4 = icmp ne ptr %12, null, !dbg !4154
  br i1 %tobool4, label %for.body, label %for.end, !dbg !4154

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %subscription, align 8, !dbg !4156
  %ops = getelementptr inbounds %struct.mmu_notifier, ptr %13, i32 0, i32 1, !dbg !4159
  %14 = load ptr, ptr %ops, align 8, !dbg !4159
  %clear_young = getelementptr inbounds %struct.mmu_notifier_ops, ptr %14, i32 0, i32 2, !dbg !4160
  %15 = load ptr, ptr %clear_young, align 8, !dbg !4160
  %tobool5 = icmp ne ptr %15, null, !dbg !4156
  br i1 %tobool5, label %if.then, label %if.end, !dbg !4161

if.then:                                          ; preds = %for.body
  %16 = load ptr, ptr %subscription, align 8, !dbg !4162
  %ops6 = getelementptr inbounds %struct.mmu_notifier, ptr %16, i32 0, i32 1, !dbg !4163
  %17 = load ptr, ptr %ops6, align 8, !dbg !4163
  %clear_young7 = getelementptr inbounds %struct.mmu_notifier_ops, ptr %17, i32 0, i32 2, !dbg !4164
  %18 = load ptr, ptr %clear_young7, align 8, !dbg !4164
  %19 = load ptr, ptr %subscription, align 8, !dbg !4165
  %20 = load ptr, ptr %mm.addr, align 8, !dbg !4166
  %21 = load i64, ptr %start.addr, align 8, !dbg !4167
  %22 = load i64, ptr %end.addr, align 8, !dbg !4168
  %call8 = call i32 %18(ptr noundef %19, ptr noundef %20, i64 noundef %21, i64 noundef %22) #17, !dbg !4162
  %23 = load i32, ptr %young, align 4, !dbg !4169
  %or = or i32 %23, %call8, !dbg !4169
  store i32 %or, ptr %young, align 4, !dbg !4169
  br label %if.end, !dbg !4170

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !4171

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr9) #16, !dbg !4172
  call void @llvm.dbg.declare(metadata ptr %____ptr9, metadata !4130, metadata !DIExpression()), !dbg !4172
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu290) #16, !dbg !4173
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu290, metadata !4133, metadata !DIExpression()), !dbg !4173
  br label %do.body10, !dbg !4174

do.body10:                                        ; preds = %for.inc
  br label %do.cond11, !dbg !4176

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !4176

do.end12:                                         ; preds = %do.cond11
  %24 = load ptr, ptr %subscription, align 8, !dbg !4174
  %hlist = getelementptr inbounds %struct.mmu_notifier, ptr %24, i32 0, i32 0, !dbg !4174
  %next = getelementptr inbounds %struct.hlist_node, ptr %hlist, i32 0, i32 0, !dbg !4174
  %25 = load volatile ptr, ptr %next, align 8, !dbg !4174
  store ptr %25, ptr %tmp13, align 8, !dbg !4176
  %26 = load ptr, ptr %tmp13, align 8, !dbg !4174
  store ptr %26, ptr %__UNIQUE_ID_rcu290, align 8, !dbg !4173
  %27 = load ptr, ptr %__UNIQUE_ID_rcu290, align 8, !dbg !4173
  store ptr %27, ptr %tmp14, align 8, !dbg !4173
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu290) #16, !dbg !4172
  %28 = load ptr, ptr %tmp14, align 8, !dbg !4173
  store ptr %28, ptr %____ptr9, align 8, !dbg !4172
  %29 = load ptr, ptr %____ptr9, align 8, !dbg !4172
  %tobool16 = icmp ne ptr %29, null, !dbg !4172
  br i1 %tobool16, label %cond.true17, label %cond.false21, !dbg !4172

cond.true17:                                      ; preds = %do.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr18) #16, !dbg !4178
  call void @llvm.dbg.declare(metadata ptr %__mptr18, metadata !4135, metadata !DIExpression()), !dbg !4178
  %30 = load ptr, ptr %____ptr9, align 8, !dbg !4178
  store ptr %30, ptr %__mptr18, align 8, !dbg !4178
  %31 = load ptr, ptr %__mptr18, align 8, !dbg !4178
  %add.ptr20 = getelementptr i8, ptr %31, i64 0, !dbg !4178
  store ptr %add.ptr20, ptr %tmp19, align 8, !dbg !4178
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr18) #16, !dbg !4172
  %32 = load ptr, ptr %tmp19, align 8, !dbg !4178
  br label %cond.end22, !dbg !4172

cond.false21:                                     ; preds = %do.end12
  br label %cond.end22, !dbg !4172

cond.end22:                                       ; preds = %cond.false21, %cond.true17
  %cond23 = phi ptr [ %32, %cond.true17 ], [ null, %cond.false21 ], !dbg !4172
  store ptr %cond23, ptr %tmp15, align 8, !dbg !4172
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr9) #16, !dbg !4155
  %33 = load ptr, ptr %tmp15, align 8, !dbg !4172
  store ptr %33, ptr %subscription, align 8, !dbg !4155
  br label %for.cond, !dbg !4155, !llvm.loop !4179

for.end:                                          ; preds = %for.cond
  %34 = load i32, ptr %id, align 4, !dbg !4181
  call void @srcu_read_unlock(ptr noundef @srcu, i32 noundef %34) #17, !dbg !4182
  %35 = load i32, ptr %young, align 4, !dbg !4183
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #16, !dbg !4184
  call void @llvm.lifetime.end.p0(i64 4, ptr %young) #16, !dbg !4184
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscription) #16, !dbg !4184
  ret i32 %35, !dbg !4185
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__mmu_notifier_test_young(ptr noundef %mm, i64 noundef %address) #0 align 16 !dbg !4186 {
entry:
  %mm.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  %subscription = alloca ptr, align 8
  %young = alloca i32, align 4
  %id = alloca i32, align 4
  %____ptr = alloca ptr, align 8
  %__UNIQUE_ID_rcu292 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %____ptr12 = alloca ptr, align 8
  %__UNIQUE_ID_rcu294 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  %tmp18 = alloca ptr, align 8
  %__mptr21 = alloca ptr, align 8
  %tmp22 = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !4190, metadata !DIExpression()), !dbg !4209
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !4191, metadata !DIExpression()), !dbg !4210
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscription) #16, !dbg !4211
  call void @llvm.dbg.declare(metadata ptr %subscription, metadata !4192, metadata !DIExpression()), !dbg !4212
  call void @llvm.lifetime.start.p0(i64 4, ptr %young) #16, !dbg !4213
  call void @llvm.dbg.declare(metadata ptr %young, metadata !4193, metadata !DIExpression()), !dbg !4214
  store i32 0, ptr %young, align 4, !dbg !4214
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #16, !dbg !4213
  call void @llvm.dbg.declare(metadata ptr %id, metadata !4194, metadata !DIExpression()), !dbg !4215
  %call = call i32 @srcu_read_lock(ptr noundef @srcu) #17, !dbg !4216
  store i32 %call, ptr %id, align 4, !dbg !4217
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #16, !dbg !4218
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !4195, metadata !DIExpression()), !dbg !4218
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu292) #16, !dbg !4219
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu292, metadata !4198, metadata !DIExpression()), !dbg !4219
  br label %do.body, !dbg !4220

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4222

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4222

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !4220
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !4220
  %notifier_subscriptions = getelementptr inbounds %struct.anon.13, ptr %1, i32 0, i32 50, !dbg !4220
  %2 = load ptr, ptr %notifier_subscriptions, align 16, !dbg !4220
  %list = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %2, i32 0, i32 0, !dbg !4220
  %first = getelementptr inbounds %struct.hlist_head, ptr %list, i32 0, i32 0, !dbg !4220
  %3 = load volatile ptr, ptr %first, align 8, !dbg !4220
  store ptr %3, ptr %tmp, align 8, !dbg !4222
  %4 = load ptr, ptr %tmp, align 8, !dbg !4220
  store ptr %4, ptr %__UNIQUE_ID_rcu292, align 8, !dbg !4219
  %5 = load ptr, ptr %__UNIQUE_ID_rcu292, align 8, !dbg !4219
  store ptr %5, ptr %tmp1, align 8, !dbg !4219
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu292) #16, !dbg !4218
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4219
  store ptr %6, ptr %____ptr, align 8, !dbg !4218
  %7 = load ptr, ptr %____ptr, align 8, !dbg !4218
  %tobool = icmp ne ptr %7, null, !dbg !4218
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4218

cond.true:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4224
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4200, metadata !DIExpression()), !dbg !4224
  %8 = load ptr, ptr %____ptr, align 8, !dbg !4224
  store ptr %8, ptr %__mptr, align 8, !dbg !4224
  %9 = load ptr, ptr %__mptr, align 8, !dbg !4224
  %add.ptr = getelementptr i8, ptr %9, i64 0, !dbg !4224
  store ptr %add.ptr, ptr %tmp3, align 8, !dbg !4224
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4218
  %10 = load ptr, ptr %tmp3, align 8, !dbg !4224
  br label %cond.end, !dbg !4218

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !4218

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %10, %cond.true ], [ null, %cond.false ], !dbg !4218
  store ptr %cond, ptr %tmp2, align 8, !dbg !4218
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #16, !dbg !4225
  %11 = load ptr, ptr %tmp2, align 8, !dbg !4218
  store ptr %11, ptr %subscription, align 8, !dbg !4225
  br label %for.cond, !dbg !4225

for.cond:                                         ; preds = %cond.end25, %cond.end
  %12 = load ptr, ptr %subscription, align 8, !dbg !4226
  %tobool4 = icmp ne ptr %12, null, !dbg !4225
  br i1 %tobool4, label %for.body, label %for.end, !dbg !4225

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %subscription, align 8, !dbg !4227
  %ops = getelementptr inbounds %struct.mmu_notifier, ptr %13, i32 0, i32 1, !dbg !4230
  %14 = load ptr, ptr %ops, align 8, !dbg !4230
  %test_young = getelementptr inbounds %struct.mmu_notifier_ops, ptr %14, i32 0, i32 3, !dbg !4231
  %15 = load ptr, ptr %test_young, align 8, !dbg !4231
  %tobool5 = icmp ne ptr %15, null, !dbg !4227
  br i1 %tobool5, label %if.then, label %if.end11, !dbg !4232

if.then:                                          ; preds = %for.body
  %16 = load ptr, ptr %subscription, align 8, !dbg !4233
  %ops6 = getelementptr inbounds %struct.mmu_notifier, ptr %16, i32 0, i32 1, !dbg !4235
  %17 = load ptr, ptr %ops6, align 8, !dbg !4235
  %test_young7 = getelementptr inbounds %struct.mmu_notifier_ops, ptr %17, i32 0, i32 3, !dbg !4236
  %18 = load ptr, ptr %test_young7, align 8, !dbg !4236
  %19 = load ptr, ptr %subscription, align 8, !dbg !4237
  %20 = load ptr, ptr %mm.addr, align 8, !dbg !4238
  %21 = load i64, ptr %address.addr, align 8, !dbg !4239
  %call8 = call i32 %18(ptr noundef %19, ptr noundef %20, i64 noundef %21) #17, !dbg !4233
  store i32 %call8, ptr %young, align 4, !dbg !4240
  %22 = load i32, ptr %young, align 4, !dbg !4241
  %tobool9 = icmp ne i32 %22, 0, !dbg !4241
  br i1 %tobool9, label %if.then10, label %if.end, !dbg !4243

if.then10:                                        ; preds = %if.then
  br label %for.end, !dbg !4244

if.end:                                           ; preds = %if.then
  br label %if.end11, !dbg !4245

if.end11:                                         ; preds = %if.end, %for.body
  br label %for.inc, !dbg !4246

for.inc:                                          ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr12) #16, !dbg !4247
  call void @llvm.dbg.declare(metadata ptr %____ptr12, metadata !4202, metadata !DIExpression()), !dbg !4247
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu294) #16, !dbg !4248
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu294, metadata !4205, metadata !DIExpression()), !dbg !4248
  br label %do.body13, !dbg !4249

do.body13:                                        ; preds = %for.inc
  br label %do.cond14, !dbg !4251

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !4251

do.end15:                                         ; preds = %do.cond14
  %23 = load ptr, ptr %subscription, align 8, !dbg !4249
  %hlist = getelementptr inbounds %struct.mmu_notifier, ptr %23, i32 0, i32 0, !dbg !4249
  %next = getelementptr inbounds %struct.hlist_node, ptr %hlist, i32 0, i32 0, !dbg !4249
  %24 = load volatile ptr, ptr %next, align 8, !dbg !4249
  store ptr %24, ptr %tmp16, align 8, !dbg !4251
  %25 = load ptr, ptr %tmp16, align 8, !dbg !4249
  store ptr %25, ptr %__UNIQUE_ID_rcu294, align 8, !dbg !4248
  %26 = load ptr, ptr %__UNIQUE_ID_rcu294, align 8, !dbg !4248
  store ptr %26, ptr %tmp17, align 8, !dbg !4248
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu294) #16, !dbg !4247
  %27 = load ptr, ptr %tmp17, align 8, !dbg !4248
  store ptr %27, ptr %____ptr12, align 8, !dbg !4247
  %28 = load ptr, ptr %____ptr12, align 8, !dbg !4247
  %tobool19 = icmp ne ptr %28, null, !dbg !4247
  br i1 %tobool19, label %cond.true20, label %cond.false24, !dbg !4247

cond.true20:                                      ; preds = %do.end15
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr21) #16, !dbg !4253
  call void @llvm.dbg.declare(metadata ptr %__mptr21, metadata !4207, metadata !DIExpression()), !dbg !4253
  %29 = load ptr, ptr %____ptr12, align 8, !dbg !4253
  store ptr %29, ptr %__mptr21, align 8, !dbg !4253
  %30 = load ptr, ptr %__mptr21, align 8, !dbg !4253
  %add.ptr23 = getelementptr i8, ptr %30, i64 0, !dbg !4253
  store ptr %add.ptr23, ptr %tmp22, align 8, !dbg !4253
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr21) #16, !dbg !4247
  %31 = load ptr, ptr %tmp22, align 8, !dbg !4253
  br label %cond.end25, !dbg !4247

cond.false24:                                     ; preds = %do.end15
  br label %cond.end25, !dbg !4247

cond.end25:                                       ; preds = %cond.false24, %cond.true20
  %cond26 = phi ptr [ %31, %cond.true20 ], [ null, %cond.false24 ], !dbg !4247
  store ptr %cond26, ptr %tmp18, align 8, !dbg !4247
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr12) #16, !dbg !4226
  %32 = load ptr, ptr %tmp18, align 8, !dbg !4247
  store ptr %32, ptr %subscription, align 8, !dbg !4226
  br label %for.cond, !dbg !4226, !llvm.loop !4254

for.end:                                          ; preds = %if.then10, %for.cond
  %33 = load i32, ptr %id, align 4, !dbg !4256
  call void @srcu_read_unlock(ptr noundef @srcu, i32 noundef %33) #17, !dbg !4257
  %34 = load i32, ptr %young, align 4, !dbg !4258
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #16, !dbg !4259
  call void @llvm.lifetime.end.p0(i64 4, ptr %young) #16, !dbg !4259
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscription) #16, !dbg !4259
  ret i32 %34, !dbg !4260
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__mmu_notifier_change_pte(ptr noundef %mm, i64 noundef %address, i64 %pte.coerce) #0 align 16 !dbg !4261 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %mm.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  %subscription = alloca ptr, align 8
  %id = alloca i32, align 4
  %____ptr = alloca ptr, align 8
  %__UNIQUE_ID_rcu296 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %____ptr9 = alloca ptr, align 8
  %__UNIQUE_ID_rcu298 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  %__mptr18 = alloca ptr, align 8
  %tmp19 = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !4265, metadata !DIExpression()), !dbg !4284
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !4266, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !4267, metadata !DIExpression()), !dbg !4286
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscription) #16, !dbg !4287
  call void @llvm.dbg.declare(metadata ptr %subscription, metadata !4268, metadata !DIExpression()), !dbg !4288
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #16, !dbg !4289
  call void @llvm.dbg.declare(metadata ptr %id, metadata !4269, metadata !DIExpression()), !dbg !4290
  %call = call i32 @srcu_read_lock(ptr noundef @srcu) #17, !dbg !4291
  store i32 %call, ptr %id, align 4, !dbg !4292
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #16, !dbg !4293
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !4270, metadata !DIExpression()), !dbg !4293
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu296) #16, !dbg !4294
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu296, metadata !4273, metadata !DIExpression()), !dbg !4294
  br label %do.body, !dbg !4295

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4297

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4297

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !4295
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !4295
  %notifier_subscriptions = getelementptr inbounds %struct.anon.13, ptr %1, i32 0, i32 50, !dbg !4295
  %2 = load ptr, ptr %notifier_subscriptions, align 16, !dbg !4295
  %list = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %2, i32 0, i32 0, !dbg !4295
  %first = getelementptr inbounds %struct.hlist_head, ptr %list, i32 0, i32 0, !dbg !4295
  %3 = load volatile ptr, ptr %first, align 8, !dbg !4295
  store ptr %3, ptr %tmp, align 8, !dbg !4297
  %4 = load ptr, ptr %tmp, align 8, !dbg !4295
  store ptr %4, ptr %__UNIQUE_ID_rcu296, align 8, !dbg !4294
  %5 = load ptr, ptr %__UNIQUE_ID_rcu296, align 8, !dbg !4294
  store ptr %5, ptr %tmp1, align 8, !dbg !4294
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu296) #16, !dbg !4293
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4294
  store ptr %6, ptr %____ptr, align 8, !dbg !4293
  %7 = load ptr, ptr %____ptr, align 8, !dbg !4293
  %tobool = icmp ne ptr %7, null, !dbg !4293
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4293

cond.true:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4299
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4275, metadata !DIExpression()), !dbg !4299
  %8 = load ptr, ptr %____ptr, align 8, !dbg !4299
  store ptr %8, ptr %__mptr, align 8, !dbg !4299
  %9 = load ptr, ptr %__mptr, align 8, !dbg !4299
  %add.ptr = getelementptr i8, ptr %9, i64 0, !dbg !4299
  store ptr %add.ptr, ptr %tmp3, align 8, !dbg !4299
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4293
  %10 = load ptr, ptr %tmp3, align 8, !dbg !4299
  br label %cond.end, !dbg !4293

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !4293

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %10, %cond.true ], [ null, %cond.false ], !dbg !4293
  store ptr %cond, ptr %tmp2, align 8, !dbg !4293
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #16, !dbg !4300
  %11 = load ptr, ptr %tmp2, align 8, !dbg !4293
  store ptr %11, ptr %subscription, align 8, !dbg !4300
  br label %for.cond, !dbg !4300

for.cond:                                         ; preds = %cond.end22, %cond.end
  %12 = load ptr, ptr %subscription, align 8, !dbg !4301
  %tobool4 = icmp ne ptr %12, null, !dbg !4300
  br i1 %tobool4, label %for.body, label %for.end, !dbg !4300

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %subscription, align 8, !dbg !4302
  %ops = getelementptr inbounds %struct.mmu_notifier, ptr %13, i32 0, i32 1, !dbg !4305
  %14 = load ptr, ptr %ops, align 8, !dbg !4305
  %change_pte = getelementptr inbounds %struct.mmu_notifier_ops, ptr %14, i32 0, i32 4, !dbg !4306
  %15 = load ptr, ptr %change_pte, align 8, !dbg !4306
  %tobool5 = icmp ne ptr %15, null, !dbg !4302
  br i1 %tobool5, label %if.then, label %if.end, !dbg !4307

if.then:                                          ; preds = %for.body
  %16 = load ptr, ptr %subscription, align 8, !dbg !4308
  %ops6 = getelementptr inbounds %struct.mmu_notifier, ptr %16, i32 0, i32 1, !dbg !4309
  %17 = load ptr, ptr %ops6, align 8, !dbg !4309
  %change_pte7 = getelementptr inbounds %struct.mmu_notifier_ops, ptr %17, i32 0, i32 4, !dbg !4310
  %18 = load ptr, ptr %change_pte7, align 8, !dbg !4310
  %19 = load ptr, ptr %subscription, align 8, !dbg !4311
  %20 = load ptr, ptr %mm.addr, align 8, !dbg !4312
  %21 = load i64, ptr %address.addr, align 8, !dbg !4313
  %coerce.dive8 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !4308
  %22 = load i64, ptr %coerce.dive8, align 8, !dbg !4308
  call void %18(ptr noundef %19, ptr noundef %20, i64 noundef %21, i64 %22) #17, !dbg !4308
  br label %if.end, !dbg !4308

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !4314

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr9) #16, !dbg !4315
  call void @llvm.dbg.declare(metadata ptr %____ptr9, metadata !4277, metadata !DIExpression()), !dbg !4315
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu298) #16, !dbg !4316
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu298, metadata !4280, metadata !DIExpression()), !dbg !4316
  br label %do.body10, !dbg !4317

do.body10:                                        ; preds = %for.inc
  br label %do.cond11, !dbg !4319

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !4319

do.end12:                                         ; preds = %do.cond11
  %23 = load ptr, ptr %subscription, align 8, !dbg !4317
  %hlist = getelementptr inbounds %struct.mmu_notifier, ptr %23, i32 0, i32 0, !dbg !4317
  %next = getelementptr inbounds %struct.hlist_node, ptr %hlist, i32 0, i32 0, !dbg !4317
  %24 = load volatile ptr, ptr %next, align 8, !dbg !4317
  store ptr %24, ptr %tmp13, align 8, !dbg !4319
  %25 = load ptr, ptr %tmp13, align 8, !dbg !4317
  store ptr %25, ptr %__UNIQUE_ID_rcu298, align 8, !dbg !4316
  %26 = load ptr, ptr %__UNIQUE_ID_rcu298, align 8, !dbg !4316
  store ptr %26, ptr %tmp14, align 8, !dbg !4316
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu298) #16, !dbg !4315
  %27 = load ptr, ptr %tmp14, align 8, !dbg !4316
  store ptr %27, ptr %____ptr9, align 8, !dbg !4315
  %28 = load ptr, ptr %____ptr9, align 8, !dbg !4315
  %tobool16 = icmp ne ptr %28, null, !dbg !4315
  br i1 %tobool16, label %cond.true17, label %cond.false21, !dbg !4315

cond.true17:                                      ; preds = %do.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr18) #16, !dbg !4321
  call void @llvm.dbg.declare(metadata ptr %__mptr18, metadata !4282, metadata !DIExpression()), !dbg !4321
  %29 = load ptr, ptr %____ptr9, align 8, !dbg !4321
  store ptr %29, ptr %__mptr18, align 8, !dbg !4321
  %30 = load ptr, ptr %__mptr18, align 8, !dbg !4321
  %add.ptr20 = getelementptr i8, ptr %30, i64 0, !dbg !4321
  store ptr %add.ptr20, ptr %tmp19, align 8, !dbg !4321
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr18) #16, !dbg !4315
  %31 = load ptr, ptr %tmp19, align 8, !dbg !4321
  br label %cond.end22, !dbg !4315

cond.false21:                                     ; preds = %do.end12
  br label %cond.end22, !dbg !4315

cond.end22:                                       ; preds = %cond.false21, %cond.true17
  %cond23 = phi ptr [ %31, %cond.true17 ], [ null, %cond.false21 ], !dbg !4315
  store ptr %cond23, ptr %tmp15, align 8, !dbg !4315
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr9) #16, !dbg !4301
  %32 = load ptr, ptr %tmp15, align 8, !dbg !4315
  store ptr %32, ptr %subscription, align 8, !dbg !4301
  br label %for.cond, !dbg !4301, !llvm.loop !4322

for.end:                                          ; preds = %for.cond
  %33 = load i32, ptr %id, align 4, !dbg !4324
  call void @srcu_read_unlock(ptr noundef @srcu, i32 noundef %33) #17, !dbg !4325
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #16, !dbg !4326
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscription) #16, !dbg !4326
  ret void, !dbg !4326
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__mmu_notifier_invalidate_range_start(ptr noundef %range) #0 align 16 !dbg !4327 {
entry:
  %retval = alloca i32, align 4
  %range.addr = alloca ptr, align 8
  %subscriptions = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %range, ptr %range.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %range.addr, metadata !4332, metadata !DIExpression()), !dbg !4335
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscriptions) #16, !dbg !4336
  call void @llvm.dbg.declare(metadata ptr %subscriptions, metadata !4333, metadata !DIExpression()), !dbg !4337
  %0 = load ptr, ptr %range.addr, align 8, !dbg !4338
  %mm = getelementptr inbounds %struct.mmu_notifier_range, ptr %0, i32 0, i32 0, !dbg !4339
  %1 = load ptr, ptr %mm, align 8, !dbg !4339
  %2 = getelementptr inbounds %struct.mm_struct, ptr %1, i32 0, i32 0, !dbg !4340
  %notifier_subscriptions = getelementptr inbounds %struct.anon.13, ptr %2, i32 0, i32 50, !dbg !4340
  %3 = load ptr, ptr %notifier_subscriptions, align 16, !dbg !4340
  store ptr %3, ptr %subscriptions, align 8, !dbg !4337
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !4341
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4334, metadata !DIExpression()), !dbg !4342
  %4 = load ptr, ptr %subscriptions, align 8, !dbg !4343
  %has_itree = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %4, i32 0, i32 1, !dbg !4345
  %5 = load i8, ptr %has_itree, align 8, !dbg !4345, !range !3747, !noundef !193
  %tobool = trunc i8 %5 to i1, !dbg !4345
  br i1 %tobool, label %if.then, label %if.end3, !dbg !4346

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %subscriptions, align 8, !dbg !4347
  %7 = load ptr, ptr %range.addr, align 8, !dbg !4349
  %call = call i32 @mn_itree_invalidate(ptr noundef %6, ptr noundef %7) #17, !dbg !4350
  store i32 %call, ptr %ret, align 4, !dbg !4351
  %8 = load i32, ptr %ret, align 4, !dbg !4352
  %tobool1 = icmp ne i32 %8, 0, !dbg !4352
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !4354

if.then2:                                         ; preds = %if.then
  %9 = load i32, ptr %ret, align 4, !dbg !4355
  store i32 %9, ptr %retval, align 4, !dbg !4356
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4356

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !4357

if.end3:                                          ; preds = %if.end, %entry
  %10 = load ptr, ptr %subscriptions, align 8, !dbg !4358
  %list = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %10, i32 0, i32 0, !dbg !4360
  %call4 = call i32 @hlist_empty(ptr noundef %list) #17, !dbg !4361
  %tobool5 = icmp ne i32 %call4, 0, !dbg !4361
  br i1 %tobool5, label %if.end8, label %if.then6, !dbg !4362

if.then6:                                         ; preds = %if.end3
  %11 = load ptr, ptr %subscriptions, align 8, !dbg !4363
  %12 = load ptr, ptr %range.addr, align 8, !dbg !4364
  %call7 = call i32 @mn_hlist_invalidate_range_start(ptr noundef %11, ptr noundef %12) #17, !dbg !4365
  store i32 %call7, ptr %retval, align 4, !dbg !4366
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4366

if.end8:                                          ; preds = %if.end3
  store i32 0, ptr %retval, align 4, !dbg !4367
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4367

cleanup:                                          ; preds = %if.end8, %if.then6, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !4368
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscriptions) #16, !dbg !4368
  %13 = load i32, ptr %retval, align 4, !dbg !4368
  ret i32 %13, !dbg !4368
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mn_itree_invalidate(ptr noundef %subscriptions, ptr noundef %range) #0 align 16 !dbg !4369 {
entry:
  %retval = alloca i32, align 4
  %subscriptions.addr = alloca ptr, align 8
  %range.addr = alloca ptr, align 8
  %interval_sub = alloca ptr, align 8
  %cur_seq = alloca i64, align 8
  %ret = alloca i8, align 1
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %subscriptions, ptr %subscriptions.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %subscriptions.addr, metadata !4373, metadata !DIExpression()), !dbg !4390
  store ptr %range, ptr %range.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %range.addr, metadata !4374, metadata !DIExpression()), !dbg !4391
  call void @llvm.lifetime.start.p0(i64 8, ptr %interval_sub) #16, !dbg !4392
  call void @llvm.dbg.declare(metadata ptr %interval_sub, metadata !4375, metadata !DIExpression()), !dbg !4393
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_seq) #16, !dbg !4394
  call void @llvm.dbg.declare(metadata ptr %cur_seq, metadata !4376, metadata !DIExpression()), !dbg !4395
  %0 = load ptr, ptr %subscriptions.addr, align 8, !dbg !4396
  %1 = load ptr, ptr %range.addr, align 8, !dbg !4397
  %call = call ptr @mn_itree_inv_start_range(ptr noundef %0, ptr noundef %1, ptr noundef %cur_seq) #17, !dbg !4398
  store ptr %call, ptr %interval_sub, align 8, !dbg !4399
  br label %for.cond, !dbg !4400

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %interval_sub, align 8, !dbg !4401
  %tobool = icmp ne ptr %2, null, !dbg !4402
  br i1 %tobool, label %for.body, label %for.end, !dbg !4402

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #16, !dbg !4403
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4377, metadata !DIExpression()), !dbg !4404
  %3 = load ptr, ptr %interval_sub, align 8, !dbg !4405
  %ops = getelementptr inbounds %struct.mmu_interval_notifier, ptr %3, i32 0, i32 1, !dbg !4406
  %4 = load ptr, ptr %ops, align 8, !dbg !4406
  %invalidate = getelementptr inbounds %struct.mmu_interval_notifier_ops, ptr %4, i32 0, i32 0, !dbg !4407
  %5 = load ptr, ptr %invalidate, align 8, !dbg !4407
  %6 = load ptr, ptr %interval_sub, align 8, !dbg !4408
  %7 = load ptr, ptr %range.addr, align 8, !dbg !4409
  %8 = load i64, ptr %cur_seq, align 8, !dbg !4410
  %call1 = call zeroext i1 %5(ptr noundef %6, ptr noundef %7, i64 noundef %8) #17, !dbg !4405
  %frombool = zext i1 %call1 to i8, !dbg !4411
  store i8 %frombool, ptr %ret, align 1, !dbg !4411
  %9 = load i8, ptr %ret, align 1, !dbg !4412, !range !3747, !noundef !193
  %tobool2 = trunc i8 %9 to i1, !dbg !4412
  br i1 %tobool2, label %if.end31, label %if.then, !dbg !4413

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4414
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4381, metadata !DIExpression()), !dbg !4414
  %10 = load ptr, ptr %range.addr, align 8, !dbg !4414
  %call3 = call zeroext i1 @mmu_notifier_range_blockable(ptr noundef %10) #17, !dbg !4414
  %lnot = xor i1 %call3, true, !dbg !4414
  %lnot4 = xor i1 %lnot, true, !dbg !4414
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !4414
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4414
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !4415
  %tobool5 = icmp ne i32 %11, 0, !dbg !4415
  %lnot6 = xor i1 %tobool5, true, !dbg !4415
  %lnot8 = xor i1 %lnot6, true, !dbg !4415
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !4415
  %conv = sext i32 %lnot.ext9 to i64, !dbg !4415
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4415
  %tobool10 = icmp ne i64 %expval, 0, !dbg !4415
  br i1 %tobool10, label %if.then11, label %if.end, !dbg !4414

if.then11:                                        ; preds = %if.then
  br label %do.body, !dbg !4415

do.body:                                          ; preds = %if.then11
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !4416
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4386, metadata !DIExpression()), !dbg !4416
  store i32 2305, ptr %__flags, align 4, !dbg !4416
  br label %do.body12, !dbg !4416

do.body12:                                        ; preds = %do.body
  br label %do.cond, !dbg !4417

do.cond:                                          ; preds = %do.body12
  br label %do.end, !dbg !4417

do.end:                                           ; preds = %do.cond
  br label %do.body13, !dbg !4416

do.body13:                                        ; preds = %do.end
  %12 = load i32, ptr %__flags, align 4, !dbg !4419
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 459, i32 %12, i64 12) #16, !dbg !4419, !srcloc !4421
  br label %do.cond14, !dbg !4419

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !4419

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !4416

do.body16:                                        ; preds = %do.end15
  br label %do.cond17, !dbg !4422

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !4422

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !4415
  br label %do.cond19, !dbg !4416

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !4416

do.end20:                                         ; preds = %do.cond19
  br label %if.end, !dbg !4416

if.end:                                           ; preds = %do.end20, %if.then
  %13 = load i32, ptr %__ret_warn_on, align 4, !dbg !4414
  %tobool21 = icmp ne i32 %13, 0, !dbg !4414
  %lnot22 = xor i1 %tobool21, true, !dbg !4414
  %lnot24 = xor i1 %lnot22, true, !dbg !4414
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !4414
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !4414
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !4414
  store i64 %expval27, ptr %tmp, align 8, !dbg !4415
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4424
  %14 = load i64, ptr %tmp, align 8, !dbg !4414
  %tobool28 = icmp ne i64 %14, 0, !dbg !4424
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !4425

if.then29:                                        ; preds = %if.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4426

if.end30:                                         ; preds = %if.end
  store i32 13, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4427

if.end31:                                         ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4428
  br label %cleanup, !dbg !4428

cleanup:                                          ; preds = %if.end30, %if.end31, %if.then29
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #16, !dbg !4428
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup33 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
    i32 13, label %out_would_block
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !4429

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %15 = load ptr, ptr %interval_sub, align 8, !dbg !4430
  %16 = load ptr, ptr %range.addr, align 8, !dbg !4431
  %call32 = call ptr @mn_itree_inv_next(ptr noundef %15, ptr noundef %16) #17, !dbg !4432
  store ptr %call32, ptr %interval_sub, align 8, !dbg !4433
  br label %for.cond, !dbg !4434, !llvm.loop !4435

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !4437
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup33, !dbg !4437

out_would_block:                                  ; preds = %cleanup
  call void @llvm.dbg.label(metadata !4389), !dbg !4438
  %17 = load ptr, ptr %subscriptions.addr, align 8, !dbg !4439
  call void @mn_itree_inv_end(ptr noundef %17) #17, !dbg !4440
  store i32 -11, ptr %retval, align 4, !dbg !4441
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup33, !dbg !4441

cleanup33:                                        ; preds = %out_would_block, %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_seq) #16, !dbg !4442
  call void @llvm.lifetime.end.p0(i64 8, ptr %interval_sub) #16, !dbg !4442
  %18 = load i32, ptr %retval, align 4, !dbg !4442
  ret i32 %18, !dbg !4442
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mn_hlist_invalidate_range_start(ptr noundef %subscriptions, ptr noundef %range) #0 align 16 !dbg !4443 {
entry:
  %subscriptions.addr = alloca ptr, align 8
  %range.addr = alloca ptr, align 8
  %subscription = alloca ptr, align 8
  %ret = alloca i32, align 4
  %id = alloca i32, align 4
  %____ptr = alloca ptr, align 8
  %__UNIQUE_ID_rcu300 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %ops = alloca ptr, align 8
  %_ret = alloca i32, align 4
  %tmp25 = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp53 = alloca i64, align 8
  %__ret_warn_on61 = alloca i32, align 4
  %__flags77 = alloca i32, align 4
  %tmp90 = alloca i64, align 8
  %____ptr100 = alloca ptr, align 8
  %__UNIQUE_ID_rcu302 = alloca ptr, align 8
  %tmp104 = alloca ptr, align 8
  %tmp105 = alloca ptr, align 8
  %tmp106 = alloca ptr, align 8
  %__mptr109 = alloca ptr, align 8
  %tmp110 = alloca ptr, align 8
  %____ptr117 = alloca ptr, align 8
  %__UNIQUE_ID_rcu304 = alloca ptr, align 8
  %tmp121 = alloca ptr, align 8
  %tmp124 = alloca ptr, align 8
  %tmp125 = alloca ptr, align 8
  %__mptr128 = alloca ptr, align 8
  %tmp129 = alloca ptr, align 8
  %____ptr145 = alloca ptr, align 8
  %__UNIQUE_ID_rcu306 = alloca ptr, align 8
  %tmp149 = alloca ptr, align 8
  %tmp152 = alloca ptr, align 8
  %tmp153 = alloca ptr, align 8
  %__mptr156 = alloca ptr, align 8
  %tmp157 = alloca ptr, align 8
  store ptr %subscriptions, ptr %subscriptions.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %subscriptions.addr, metadata !4447, metadata !DIExpression()), !dbg !4499
  store ptr %range, ptr %range.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %range.addr, metadata !4448, metadata !DIExpression()), !dbg !4500
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscription) #16, !dbg !4501
  call void @llvm.dbg.declare(metadata ptr %subscription, metadata !4449, metadata !DIExpression()), !dbg !4502
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !4503
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4450, metadata !DIExpression()), !dbg !4504
  store i32 0, ptr %ret, align 4, !dbg !4504
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #16, !dbg !4505
  call void @llvm.dbg.declare(metadata ptr %id, metadata !4451, metadata !DIExpression()), !dbg !4506
  %call = call i32 @srcu_read_lock(ptr noundef @srcu) #17, !dbg !4507
  store i32 %call, ptr %id, align 4, !dbg !4508
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #16, !dbg !4509
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !4452, metadata !DIExpression()), !dbg !4509
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu300) #16, !dbg !4510
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu300, metadata !4455, metadata !DIExpression()), !dbg !4510
  br label %do.body, !dbg !4511

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4513

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4513

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %subscriptions.addr, align 8, !dbg !4511
  %list = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %0, i32 0, i32 0, !dbg !4511
  %first = getelementptr inbounds %struct.hlist_head, ptr %list, i32 0, i32 0, !dbg !4511
  %1 = load volatile ptr, ptr %first, align 8, !dbg !4511
  store ptr %1, ptr %tmp, align 8, !dbg !4513
  %2 = load ptr, ptr %tmp, align 8, !dbg !4511
  store ptr %2, ptr %__UNIQUE_ID_rcu300, align 8, !dbg !4510
  %3 = load ptr, ptr %__UNIQUE_ID_rcu300, align 8, !dbg !4510
  store ptr %3, ptr %tmp1, align 8, !dbg !4510
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu300) #16, !dbg !4509
  %4 = load ptr, ptr %tmp1, align 8, !dbg !4510
  store ptr %4, ptr %____ptr, align 8, !dbg !4509
  %5 = load ptr, ptr %____ptr, align 8, !dbg !4509
  %tobool = icmp ne ptr %5, null, !dbg !4509
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4509

cond.true:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4515
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4457, metadata !DIExpression()), !dbg !4515
  %6 = load ptr, ptr %____ptr, align 8, !dbg !4515
  store ptr %6, ptr %__mptr, align 8, !dbg !4515
  %7 = load ptr, ptr %__mptr, align 8, !dbg !4515
  %add.ptr = getelementptr i8, ptr %7, i64 0, !dbg !4515
  store ptr %add.ptr, ptr %tmp3, align 8, !dbg !4515
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4509
  %8 = load ptr, ptr %tmp3, align 8, !dbg !4515
  br label %cond.end, !dbg !4509

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !4509

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %8, %cond.true ], [ null, %cond.false ], !dbg !4509
  store ptr %cond, ptr %tmp2, align 8, !dbg !4509
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #16, !dbg !4516
  %9 = load ptr, ptr %tmp2, align 8, !dbg !4509
  store ptr %9, ptr %subscription, align 8, !dbg !4516
  br label %for.cond, !dbg !4516

for.cond:                                         ; preds = %cond.end113, %cond.end
  %10 = load ptr, ptr %subscription, align 8, !dbg !4517
  %tobool4 = icmp ne ptr %10, null, !dbg !4516
  br i1 %tobool4, label %for.body, label %for.end, !dbg !4516

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #16, !dbg !4518
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !4459, metadata !DIExpression()), !dbg !4519
  %11 = load ptr, ptr %subscription, align 8, !dbg !4520
  %ops5 = getelementptr inbounds %struct.mmu_notifier, ptr %11, i32 0, i32 1, !dbg !4521
  %12 = load ptr, ptr %ops5, align 8, !dbg !4521
  store ptr %12, ptr %ops, align 8, !dbg !4519
  %13 = load ptr, ptr %ops, align 8, !dbg !4522
  %invalidate_range_start = getelementptr inbounds %struct.mmu_notifier_ops, ptr %13, i32 0, i32 5, !dbg !4523
  %14 = load ptr, ptr %invalidate_range_start, align 8, !dbg !4523
  %tobool6 = icmp ne ptr %14, null, !dbg !4522
  br i1 %tobool6, label %if.then, label %if.end99, !dbg !4524

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %_ret) #16, !dbg !4525
  call void @llvm.dbg.declare(metadata ptr %_ret, metadata !4462, metadata !DIExpression()), !dbg !4526
  %15 = load ptr, ptr %range.addr, align 8, !dbg !4527
  %call7 = call zeroext i1 @mmu_notifier_range_blockable(ptr noundef %15) #17, !dbg !4529
  br i1 %call7, label %if.end, label %if.then8, !dbg !4530

if.then8:                                         ; preds = %if.then
  br label %do.body9, !dbg !4531

do.body9:                                         ; preds = %if.then8
  br label %do.cond10, !dbg !4532

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !4532

do.end11:                                         ; preds = %do.cond10
  br label %if.end, !dbg !4532

if.end:                                           ; preds = %do.end11, %if.then
  %16 = load ptr, ptr %ops, align 8, !dbg !4534
  %invalidate_range_start12 = getelementptr inbounds %struct.mmu_notifier_ops, ptr %16, i32 0, i32 5, !dbg !4535
  %17 = load ptr, ptr %invalidate_range_start12, align 8, !dbg !4535
  %18 = load ptr, ptr %subscription, align 8, !dbg !4536
  %19 = load ptr, ptr %range.addr, align 8, !dbg !4537
  %call13 = call i32 %17(ptr noundef %18, ptr noundef %19) #17, !dbg !4534
  store i32 %call13, ptr %_ret, align 4, !dbg !4538
  %20 = load ptr, ptr %range.addr, align 8, !dbg !4539
  %call14 = call zeroext i1 @mmu_notifier_range_blockable(ptr noundef %20) #17, !dbg !4541
  br i1 %call14, label %if.end19, label %if.then15, !dbg !4542

if.then15:                                        ; preds = %if.end
  br label %do.body16, !dbg !4543

do.body16:                                        ; preds = %if.then15
  br label %do.cond17, !dbg !4544

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !4544

do.end18:                                         ; preds = %do.cond17
  br label %if.end19, !dbg !4544

if.end19:                                         ; preds = %do.end18, %if.end
  %21 = load i32, ptr %_ret, align 4, !dbg !4546
  %tobool20 = icmp ne i32 %21, 0, !dbg !4546
  br i1 %tobool20, label %if.then21, label %if.end98, !dbg !4547

if.then21:                                        ; preds = %if.end19
  br label %do.body22, !dbg !4548

do.body22:                                        ; preds = %if.then21
  br label %do.cond23, !dbg !4550

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !4550

do.end24:                                         ; preds = %do.cond23
  %22 = load ptr, ptr %ops, align 8, !dbg !4548
  %invalidate_range_start26 = getelementptr inbounds %struct.mmu_notifier_ops, ptr %22, i32 0, i32 5, !dbg !4548
  %23 = load ptr, ptr %invalidate_range_start26, align 8, !dbg !4548
  %24 = load i32, ptr %_ret, align 4, !dbg !4548
  %25 = load ptr, ptr %range.addr, align 8, !dbg !4548
  %call27 = call zeroext i1 @mmu_notifier_range_blockable(ptr noundef %25) #17, !dbg !4548
  %lnot = xor i1 %call27, true, !dbg !4548
  %26 = zext i1 %lnot to i64, !dbg !4548
  %cond28 = select i1 %lnot, ptr @.str.4, ptr @.str.5, !dbg !4548
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, ptr noundef %23, i32 noundef %24, ptr noundef %cond28) #18, !dbg !4548
  store i32 %call29, ptr %tmp25, align 4, !dbg !4550
  %27 = load i32, ptr %tmp25, align 4, !dbg !4548
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4552
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4465, metadata !DIExpression()), !dbg !4552
  %28 = load ptr, ptr %range.addr, align 8, !dbg !4552
  %call30 = call zeroext i1 @mmu_notifier_range_blockable(ptr noundef %28) #17, !dbg !4552
  br i1 %call30, label %lor.end, label %lor.rhs, !dbg !4552

lor.rhs:                                          ; preds = %do.end24
  %29 = load i32, ptr %_ret, align 4, !dbg !4552
  %cmp = icmp ne i32 %29, -11, !dbg !4552
  br label %lor.end, !dbg !4552

lor.end:                                          ; preds = %lor.rhs, %do.end24
  %30 = phi i1 [ true, %do.end24 ], [ %cmp, %lor.rhs ]
  %lnot31 = xor i1 %30, true, !dbg !4552
  %lnot32 = xor i1 %lnot31, true, !dbg !4552
  %lnot.ext = zext i1 %lnot32 to i32, !dbg !4552
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4552
  %31 = load i32, ptr %__ret_warn_on, align 4, !dbg !4553
  %tobool33 = icmp ne i32 %31, 0, !dbg !4553
  %lnot34 = xor i1 %tobool33, true, !dbg !4553
  %lnot36 = xor i1 %lnot34, true, !dbg !4553
  %lnot.ext37 = zext i1 %lnot36 to i32, !dbg !4553
  %conv = sext i32 %lnot.ext37 to i64, !dbg !4553
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4553
  %tobool38 = icmp ne i64 %expval, 0, !dbg !4553
  br i1 %tobool38, label %if.then39, label %if.end52, !dbg !4552

if.then39:                                        ; preds = %lor.end
  br label %do.body40, !dbg !4553

do.body40:                                        ; preds = %if.then39
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !4554
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4469, metadata !DIExpression()), !dbg !4554
  store i32 2305, ptr %__flags, align 4, !dbg !4554
  br label %do.body41, !dbg !4554

do.body41:                                        ; preds = %do.body40
  br label %do.cond42, !dbg !4555

do.cond42:                                        ; preds = %do.body41
  br label %do.end43, !dbg !4555

do.end43:                                         ; preds = %do.cond42
  br label %do.body44, !dbg !4554

do.body44:                                        ; preds = %do.end43
  %32 = load i32, ptr %__flags, align 4, !dbg !4557
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 503, i32 %32, i64 12) #16, !dbg !4557, !srcloc !4559
  br label %do.cond45, !dbg !4557

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !4557

do.end46:                                         ; preds = %do.cond45
  br label %do.body47, !dbg !4554

do.body47:                                        ; preds = %do.end46
  br label %do.cond48, !dbg !4560

do.cond48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !4560

do.end49:                                         ; preds = %do.cond48
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !4553
  br label %do.cond50, !dbg !4554

do.cond50:                                        ; preds = %do.end49
  br label %do.end51, !dbg !4554

do.end51:                                         ; preds = %do.cond50
  br label %if.end52, !dbg !4554

if.end52:                                         ; preds = %do.end51, %lor.end
  %33 = load i32, ptr %__ret_warn_on, align 4, !dbg !4552
  %tobool54 = icmp ne i32 %33, 0, !dbg !4552
  %lnot55 = xor i1 %tobool54, true, !dbg !4552
  %lnot57 = xor i1 %lnot55, true, !dbg !4552
  %lnot.ext58 = zext i1 %lnot57 to i32, !dbg !4552
  %conv59 = sext i32 %lnot.ext58 to i64, !dbg !4552
  %expval60 = call i64 @llvm.expect.i64(i64 %conv59, i64 0), !dbg !4552
  store i64 %expval60, ptr %tmp53, align 8, !dbg !4553
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4562
  %34 = load i64, ptr %tmp53, align 8, !dbg !4552
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on61) #16, !dbg !4563
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on61, metadata !4472, metadata !DIExpression()), !dbg !4563
  %35 = load ptr, ptr %ops, align 8, !dbg !4563
  %invalidate_range_end = getelementptr inbounds %struct.mmu_notifier_ops, ptr %35, i32 0, i32 6, !dbg !4563
  %36 = load ptr, ptr %invalidate_range_end, align 8, !dbg !4563
  %tobool62 = icmp ne ptr %36, null, !dbg !4563
  %lnot63 = xor i1 %tobool62, true, !dbg !4563
  %lnot65 = xor i1 %lnot63, true, !dbg !4563
  %lnot.ext66 = zext i1 %lnot65 to i32, !dbg !4563
  store i32 %lnot.ext66, ptr %__ret_warn_on61, align 4, !dbg !4563
  %37 = load i32, ptr %__ret_warn_on61, align 4, !dbg !4564
  %tobool67 = icmp ne i32 %37, 0, !dbg !4564
  %lnot68 = xor i1 %tobool67, true, !dbg !4564
  %lnot70 = xor i1 %lnot68, true, !dbg !4564
  %lnot.ext71 = zext i1 %lnot70 to i32, !dbg !4564
  %conv72 = sext i32 %lnot.ext71 to i64, !dbg !4564
  %expval73 = call i64 @llvm.expect.i64(i64 %conv72, i64 0), !dbg !4564
  %tobool74 = icmp ne i64 %expval73, 0, !dbg !4564
  br i1 %tobool74, label %if.then75, label %if.end89, !dbg !4563

if.then75:                                        ; preds = %if.end52
  br label %do.body76, !dbg !4564

do.body76:                                        ; preds = %if.then75
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags77) #16, !dbg !4565
  call void @llvm.dbg.declare(metadata ptr %__flags77, metadata !4474, metadata !DIExpression()), !dbg !4565
  store i32 2305, ptr %__flags77, align 4, !dbg !4565
  br label %do.body78, !dbg !4565

do.body78:                                        ; preds = %do.body76
  br label %do.cond79, !dbg !4566

do.cond79:                                        ; preds = %do.body78
  br label %do.end80, !dbg !4566

do.end80:                                         ; preds = %do.cond79
  br label %do.body81, !dbg !4565

do.body81:                                        ; preds = %do.end80
  %38 = load i32, ptr %__flags77, align 4, !dbg !4568
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 510, i32 %38, i64 12) #16, !dbg !4568, !srcloc !4570
  br label %do.cond82, !dbg !4568

do.cond82:                                        ; preds = %do.body81
  br label %do.end83, !dbg !4568

do.end83:                                         ; preds = %do.cond82
  br label %do.body84, !dbg !4565

do.body84:                                        ; preds = %do.end83
  br label %do.cond85, !dbg !4571

do.cond85:                                        ; preds = %do.body84
  br label %do.end86, !dbg !4571

do.end86:                                         ; preds = %do.cond85
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags77) #16, !dbg !4564
  br label %do.cond87, !dbg !4565

do.cond87:                                        ; preds = %do.end86
  br label %do.end88, !dbg !4565

do.end88:                                         ; preds = %do.cond87
  br label %if.end89, !dbg !4565

if.end89:                                         ; preds = %do.end88, %if.end52
  %39 = load i32, ptr %__ret_warn_on61, align 4, !dbg !4563
  %tobool91 = icmp ne i32 %39, 0, !dbg !4563
  %lnot92 = xor i1 %tobool91, true, !dbg !4563
  %lnot94 = xor i1 %lnot92, true, !dbg !4563
  %lnot.ext95 = zext i1 %lnot94 to i32, !dbg !4563
  %conv96 = sext i32 %lnot.ext95 to i64, !dbg !4563
  %expval97 = call i64 @llvm.expect.i64(i64 %conv96, i64 0), !dbg !4563
  store i64 %expval97, ptr %tmp90, align 8, !dbg !4564
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on61) #16, !dbg !4573
  %40 = load i64, ptr %tmp90, align 8, !dbg !4563
  %41 = load i32, ptr %_ret, align 4, !dbg !4574
  store i32 %41, ptr %ret, align 4, !dbg !4575
  br label %if.end98, !dbg !4576

if.end98:                                         ; preds = %if.end89, %if.end19
  call void @llvm.lifetime.end.p0(i64 4, ptr %_ret) #16, !dbg !4577
  br label %if.end99, !dbg !4578

if.end99:                                         ; preds = %if.end98, %for.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #16, !dbg !4579
  br label %for.inc, !dbg !4580

for.inc:                                          ; preds = %if.end99
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr100) #16, !dbg !4581
  call void @llvm.dbg.declare(metadata ptr %____ptr100, metadata !4477, metadata !DIExpression()), !dbg !4581
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu302) #16, !dbg !4582
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu302, metadata !4479, metadata !DIExpression()), !dbg !4582
  br label %do.body101, !dbg !4583

do.body101:                                       ; preds = %for.inc
  br label %do.cond102, !dbg !4585

do.cond102:                                       ; preds = %do.body101
  br label %do.end103, !dbg !4585

do.end103:                                        ; preds = %do.cond102
  %42 = load ptr, ptr %subscription, align 8, !dbg !4583
  %hlist = getelementptr inbounds %struct.mmu_notifier, ptr %42, i32 0, i32 0, !dbg !4583
  %next = getelementptr inbounds %struct.hlist_node, ptr %hlist, i32 0, i32 0, !dbg !4583
  %43 = load volatile ptr, ptr %next, align 8, !dbg !4583
  store ptr %43, ptr %tmp104, align 8, !dbg !4585
  %44 = load ptr, ptr %tmp104, align 8, !dbg !4583
  store ptr %44, ptr %__UNIQUE_ID_rcu302, align 8, !dbg !4582
  %45 = load ptr, ptr %__UNIQUE_ID_rcu302, align 8, !dbg !4582
  store ptr %45, ptr %tmp105, align 8, !dbg !4582
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu302) #16, !dbg !4581
  %46 = load ptr, ptr %tmp105, align 8, !dbg !4582
  store ptr %46, ptr %____ptr100, align 8, !dbg !4581
  %47 = load ptr, ptr %____ptr100, align 8, !dbg !4581
  %tobool107 = icmp ne ptr %47, null, !dbg !4581
  br i1 %tobool107, label %cond.true108, label %cond.false112, !dbg !4581

cond.true108:                                     ; preds = %do.end103
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr109) #16, !dbg !4587
  call void @llvm.dbg.declare(metadata ptr %__mptr109, metadata !4481, metadata !DIExpression()), !dbg !4587
  %48 = load ptr, ptr %____ptr100, align 8, !dbg !4587
  store ptr %48, ptr %__mptr109, align 8, !dbg !4587
  %49 = load ptr, ptr %__mptr109, align 8, !dbg !4587
  %add.ptr111 = getelementptr i8, ptr %49, i64 0, !dbg !4587
  store ptr %add.ptr111, ptr %tmp110, align 8, !dbg !4587
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr109) #16, !dbg !4581
  %50 = load ptr, ptr %tmp110, align 8, !dbg !4587
  br label %cond.end113, !dbg !4581

cond.false112:                                    ; preds = %do.end103
  br label %cond.end113, !dbg !4581

cond.end113:                                      ; preds = %cond.false112, %cond.true108
  %cond114 = phi ptr [ %50, %cond.true108 ], [ null, %cond.false112 ], !dbg !4581
  store ptr %cond114, ptr %tmp106, align 8, !dbg !4581
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr100) #16, !dbg !4517
  %51 = load ptr, ptr %tmp106, align 8, !dbg !4581
  store ptr %51, ptr %subscription, align 8, !dbg !4517
  br label %for.cond, !dbg !4517, !llvm.loop !4588

for.end:                                          ; preds = %for.cond
  %52 = load i32, ptr %ret, align 4, !dbg !4590
  %tobool115 = icmp ne i32 %52, 0, !dbg !4590
  br i1 %tobool115, label %if.then116, label %if.end163, !dbg !4591

if.then116:                                       ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr117) #16, !dbg !4592
  call void @llvm.dbg.declare(metadata ptr %____ptr117, metadata !4483, metadata !DIExpression()), !dbg !4592
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu304) #16, !dbg !4593
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu304, metadata !4488, metadata !DIExpression()), !dbg !4593
  br label %do.body118, !dbg !4594

do.body118:                                       ; preds = %if.then116
  br label %do.cond119, !dbg !4596

do.cond119:                                       ; preds = %do.body118
  br label %do.end120, !dbg !4596

do.end120:                                        ; preds = %do.cond119
  %53 = load ptr, ptr %subscriptions.addr, align 8, !dbg !4594
  %list122 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %53, i32 0, i32 0, !dbg !4594
  %first123 = getelementptr inbounds %struct.hlist_head, ptr %list122, i32 0, i32 0, !dbg !4594
  %54 = load volatile ptr, ptr %first123, align 8, !dbg !4594
  store ptr %54, ptr %tmp121, align 8, !dbg !4596
  %55 = load ptr, ptr %tmp121, align 8, !dbg !4594
  store ptr %55, ptr %__UNIQUE_ID_rcu304, align 8, !dbg !4593
  %56 = load ptr, ptr %__UNIQUE_ID_rcu304, align 8, !dbg !4593
  store ptr %56, ptr %tmp124, align 8, !dbg !4593
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu304) #16, !dbg !4592
  %57 = load ptr, ptr %tmp124, align 8, !dbg !4593
  store ptr %57, ptr %____ptr117, align 8, !dbg !4592
  %58 = load ptr, ptr %____ptr117, align 8, !dbg !4592
  %tobool126 = icmp ne ptr %58, null, !dbg !4592
  br i1 %tobool126, label %cond.true127, label %cond.false131, !dbg !4592

cond.true127:                                     ; preds = %do.end120
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr128) #16, !dbg !4598
  call void @llvm.dbg.declare(metadata ptr %__mptr128, metadata !4490, metadata !DIExpression()), !dbg !4598
  %59 = load ptr, ptr %____ptr117, align 8, !dbg !4598
  store ptr %59, ptr %__mptr128, align 8, !dbg !4598
  %60 = load ptr, ptr %__mptr128, align 8, !dbg !4598
  %add.ptr130 = getelementptr i8, ptr %60, i64 0, !dbg !4598
  store ptr %add.ptr130, ptr %tmp129, align 8, !dbg !4598
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr128) #16, !dbg !4592
  %61 = load ptr, ptr %tmp129, align 8, !dbg !4598
  br label %cond.end132, !dbg !4592

cond.false131:                                    ; preds = %do.end120
  br label %cond.end132, !dbg !4592

cond.end132:                                      ; preds = %cond.false131, %cond.true127
  %cond133 = phi ptr [ %61, %cond.true127 ], [ null, %cond.false131 ], !dbg !4592
  store ptr %cond133, ptr %tmp125, align 8, !dbg !4592
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr117) #16, !dbg !4599
  %62 = load ptr, ptr %tmp125, align 8, !dbg !4592
  store ptr %62, ptr %subscription, align 8, !dbg !4599
  br label %for.cond134, !dbg !4599

for.cond134:                                      ; preds = %cond.end160, %cond.end132
  %63 = load ptr, ptr %subscription, align 8, !dbg !4600
  %tobool135 = icmp ne ptr %63, null, !dbg !4599
  br i1 %tobool135, label %for.body136, label %for.end162, !dbg !4599

for.body136:                                      ; preds = %for.cond134
  %64 = load ptr, ptr %subscription, align 8, !dbg !4601
  %ops137 = getelementptr inbounds %struct.mmu_notifier, ptr %64, i32 0, i32 1, !dbg !4604
  %65 = load ptr, ptr %ops137, align 8, !dbg !4604
  %invalidate_range_end138 = getelementptr inbounds %struct.mmu_notifier_ops, ptr %65, i32 0, i32 6, !dbg !4605
  %66 = load ptr, ptr %invalidate_range_end138, align 8, !dbg !4605
  %tobool139 = icmp ne ptr %66, null, !dbg !4601
  br i1 %tobool139, label %if.end141, label %if.then140, !dbg !4606

if.then140:                                       ; preds = %for.body136
  br label %for.inc144, !dbg !4607

if.end141:                                        ; preds = %for.body136
  %67 = load ptr, ptr %subscription, align 8, !dbg !4608
  %ops142 = getelementptr inbounds %struct.mmu_notifier, ptr %67, i32 0, i32 1, !dbg !4609
  %68 = load ptr, ptr %ops142, align 8, !dbg !4609
  %invalidate_range_end143 = getelementptr inbounds %struct.mmu_notifier_ops, ptr %68, i32 0, i32 6, !dbg !4610
  %69 = load ptr, ptr %invalidate_range_end143, align 8, !dbg !4610
  %70 = load ptr, ptr %subscription, align 8, !dbg !4611
  %71 = load ptr, ptr %range.addr, align 8, !dbg !4612
  call void %69(ptr noundef %70, ptr noundef %71) #17, !dbg !4608
  br label %for.inc144, !dbg !4613

for.inc144:                                       ; preds = %if.end141, %if.then140
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr145) #16, !dbg !4614
  call void @llvm.dbg.declare(metadata ptr %____ptr145, metadata !4492, metadata !DIExpression()), !dbg !4614
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu306) #16, !dbg !4615
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu306, metadata !4495, metadata !DIExpression()), !dbg !4615
  br label %do.body146, !dbg !4616

do.body146:                                       ; preds = %for.inc144
  br label %do.cond147, !dbg !4618

do.cond147:                                       ; preds = %do.body146
  br label %do.end148, !dbg !4618

do.end148:                                        ; preds = %do.cond147
  %72 = load ptr, ptr %subscription, align 8, !dbg !4616
  %hlist150 = getelementptr inbounds %struct.mmu_notifier, ptr %72, i32 0, i32 0, !dbg !4616
  %next151 = getelementptr inbounds %struct.hlist_node, ptr %hlist150, i32 0, i32 0, !dbg !4616
  %73 = load volatile ptr, ptr %next151, align 8, !dbg !4616
  store ptr %73, ptr %tmp149, align 8, !dbg !4618
  %74 = load ptr, ptr %tmp149, align 8, !dbg !4616
  store ptr %74, ptr %__UNIQUE_ID_rcu306, align 8, !dbg !4615
  %75 = load ptr, ptr %__UNIQUE_ID_rcu306, align 8, !dbg !4615
  store ptr %75, ptr %tmp152, align 8, !dbg !4615
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu306) #16, !dbg !4614
  %76 = load ptr, ptr %tmp152, align 8, !dbg !4615
  store ptr %76, ptr %____ptr145, align 8, !dbg !4614
  %77 = load ptr, ptr %____ptr145, align 8, !dbg !4614
  %tobool154 = icmp ne ptr %77, null, !dbg !4614
  br i1 %tobool154, label %cond.true155, label %cond.false159, !dbg !4614

cond.true155:                                     ; preds = %do.end148
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr156) #16, !dbg !4620
  call void @llvm.dbg.declare(metadata ptr %__mptr156, metadata !4497, metadata !DIExpression()), !dbg !4620
  %78 = load ptr, ptr %____ptr145, align 8, !dbg !4620
  store ptr %78, ptr %__mptr156, align 8, !dbg !4620
  %79 = load ptr, ptr %__mptr156, align 8, !dbg !4620
  %add.ptr158 = getelementptr i8, ptr %79, i64 0, !dbg !4620
  store ptr %add.ptr158, ptr %tmp157, align 8, !dbg !4620
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr156) #16, !dbg !4614
  %80 = load ptr, ptr %tmp157, align 8, !dbg !4620
  br label %cond.end160, !dbg !4614

cond.false159:                                    ; preds = %do.end148
  br label %cond.end160, !dbg !4614

cond.end160:                                      ; preds = %cond.false159, %cond.true155
  %cond161 = phi ptr [ %80, %cond.true155 ], [ null, %cond.false159 ], !dbg !4614
  store ptr %cond161, ptr %tmp153, align 8, !dbg !4614
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr145) #16, !dbg !4600
  %81 = load ptr, ptr %tmp153, align 8, !dbg !4614
  store ptr %81, ptr %subscription, align 8, !dbg !4600
  br label %for.cond134, !dbg !4600, !llvm.loop !4621

for.end162:                                       ; preds = %for.cond134
  br label %if.end163, !dbg !4623

if.end163:                                        ; preds = %for.end162, %for.end
  %82 = load i32, ptr %id, align 4, !dbg !4624
  call void @srcu_read_unlock(ptr noundef @srcu, i32 noundef %82) #17, !dbg !4625
  %83 = load i32, ptr %ret, align 4, !dbg !4626
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #16, !dbg !4627
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !4627
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscription) #16, !dbg !4627
  ret i32 %83, !dbg !4628
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__mmu_notifier_invalidate_range_end(ptr noundef %range) #0 align 16 !dbg !4629 {
entry:
  %range.addr = alloca ptr, align 8
  %subscriptions = alloca ptr, align 8
  store ptr %range, ptr %range.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %range.addr, metadata !4633, metadata !DIExpression()), !dbg !4635
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscriptions) #16, !dbg !4636
  call void @llvm.dbg.declare(metadata ptr %subscriptions, metadata !4634, metadata !DIExpression()), !dbg !4637
  %0 = load ptr, ptr %range.addr, align 8, !dbg !4638
  %mm = getelementptr inbounds %struct.mmu_notifier_range, ptr %0, i32 0, i32 0, !dbg !4639
  %1 = load ptr, ptr %mm, align 8, !dbg !4639
  %2 = getelementptr inbounds %struct.mm_struct, ptr %1, i32 0, i32 0, !dbg !4640
  %notifier_subscriptions = getelementptr inbounds %struct.anon.13, ptr %2, i32 0, i32 50, !dbg !4640
  %3 = load ptr, ptr %notifier_subscriptions, align 16, !dbg !4640
  store ptr %3, ptr %subscriptions, align 8, !dbg !4637
  br label %do.body, !dbg !4641

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4642

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4642

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %subscriptions, align 8, !dbg !4644
  %has_itree = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %4, i32 0, i32 1, !dbg !4646
  %5 = load i8, ptr %has_itree, align 8, !dbg !4646, !range !3747, !noundef !193
  %tobool = trunc i8 %5 to i1, !dbg !4646
  br i1 %tobool, label %if.then, label %if.end, !dbg !4647

if.then:                                          ; preds = %do.end
  %6 = load ptr, ptr %subscriptions, align 8, !dbg !4648
  call void @mn_itree_inv_end(ptr noundef %6) #17, !dbg !4649
  br label %if.end, !dbg !4649

if.end:                                           ; preds = %if.then, %do.end
  %7 = load ptr, ptr %subscriptions, align 8, !dbg !4650
  %list = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %7, i32 0, i32 0, !dbg !4652
  %call = call i32 @hlist_empty(ptr noundef %list) #17, !dbg !4653
  %tobool1 = icmp ne i32 %call, 0, !dbg !4653
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !4654

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %subscriptions, align 8, !dbg !4655
  %9 = load ptr, ptr %range.addr, align 8, !dbg !4656
  call void @mn_hlist_invalidate_end(ptr noundef %8, ptr noundef %9) #17, !dbg !4657
  br label %if.end3, !dbg !4657

if.end3:                                          ; preds = %if.then2, %if.end
  br label %do.body4, !dbg !4658

do.body4:                                         ; preds = %if.end3
  br label %do.cond5, !dbg !4659

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !4659

do.end6:                                          ; preds = %do.cond5
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscriptions) #16, !dbg !4661
  ret void, !dbg !4661
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mn_itree_inv_end(ptr noundef %subscriptions) #0 align 16 !dbg !4662 {
entry:
  %subscriptions.addr = alloca ptr, align 8
  %interval_sub = alloca ptr, align 8
  %next = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %____ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %tmp6 = alloca i32, align 4
  %____ptr16 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  %__mptr20 = alloca ptr, align 8
  %tmp21 = alloca ptr, align 8
  store ptr %subscriptions, ptr %subscriptions.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %subscriptions.addr, metadata !4666, metadata !DIExpression()), !dbg !4679
  call void @llvm.lifetime.start.p0(i64 8, ptr %interval_sub) #16, !dbg !4680
  call void @llvm.dbg.declare(metadata ptr %interval_sub, metadata !4667, metadata !DIExpression()), !dbg !4681
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #16, !dbg !4682
  call void @llvm.dbg.declare(metadata ptr %next, metadata !4668, metadata !DIExpression()), !dbg !4683
  %0 = load ptr, ptr %subscriptions.addr, align 8, !dbg !4684
  %lock = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %0, i32 0, i32 2, !dbg !4685
  call void @spin_lock(ptr noundef %lock) #17, !dbg !4686
  %1 = load ptr, ptr %subscriptions.addr, align 8, !dbg !4687
  %active_invalidate_ranges = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %1, i32 0, i32 4, !dbg !4689
  %2 = load i64, ptr %active_invalidate_ranges, align 8, !dbg !4690
  %dec = add i64 %2, -1, !dbg !4690
  store i64 %dec, ptr %active_invalidate_ranges, align 8, !dbg !4690
  %tobool = icmp ne i64 %dec, 0, !dbg !4690
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !4691

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %subscriptions.addr, align 8, !dbg !4692
  %call = call zeroext i1 @mn_itree_is_invalidating(ptr noundef %3) #17, !dbg !4693
  br i1 %call, label %if.end, label %if.then, !dbg !4694

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %subscriptions.addr, align 8, !dbg !4695
  %lock1 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %4, i32 0, i32 2, !dbg !4697
  call void @spin_unlock(ptr noundef %lock1) #17, !dbg !4698
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4699

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %subscriptions.addr, align 8, !dbg !4700
  %invalidate_seq = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %5, i32 0, i32 3, !dbg !4701
  %6 = load i64, ptr %invalidate_seq, align 8, !dbg !4702
  %inc = add i64 %6, 1, !dbg !4702
  store i64 %inc, ptr %invalidate_seq, align 8, !dbg !4702
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #16, !dbg !4703
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !4669, metadata !DIExpression()), !dbg !4703
  %7 = load ptr, ptr %subscriptions.addr, align 8, !dbg !4703
  %deferred_list = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %7, i32 0, i32 7, !dbg !4703
  %first = getelementptr inbounds %struct.hlist_head, ptr %deferred_list, i32 0, i32 0, !dbg !4703
  %8 = load ptr, ptr %first, align 8, !dbg !4703
  store ptr %8, ptr %____ptr, align 8, !dbg !4703
  %9 = load ptr, ptr %____ptr, align 8, !dbg !4703
  %tobool2 = icmp ne ptr %9, null, !dbg !4703
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !4703

cond.true:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4704
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4672, metadata !DIExpression()), !dbg !4704
  %10 = load ptr, ptr %____ptr, align 8, !dbg !4704
  store ptr %10, ptr %__mptr, align 8, !dbg !4704
  %11 = load ptr, ptr %__mptr, align 8, !dbg !4704
  %add.ptr = getelementptr i8, ptr %11, i64 -64, !dbg !4704
  store ptr %add.ptr, ptr %tmp3, align 8, !dbg !4704
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4703
  %12 = load ptr, ptr %tmp3, align 8, !dbg !4704
  br label %cond.end, !dbg !4703

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !4703

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %12, %cond.true ], [ null, %cond.false ], !dbg !4703
  store ptr %cond, ptr %tmp, align 8, !dbg !4703
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #16, !dbg !4705
  %13 = load ptr, ptr %tmp, align 8, !dbg !4703
  store ptr %13, ptr %interval_sub, align 8, !dbg !4705
  br label %for.cond, !dbg !4705

for.cond:                                         ; preds = %cond.end24, %cond.end
  %14 = load ptr, ptr %interval_sub, align 8, !dbg !4706
  %tobool4 = icmp ne ptr %14, null, !dbg !4706
  br i1 %tobool4, label %land.rhs, label %land.end, !dbg !4706

land.rhs:                                         ; preds = %for.cond
  %15 = load ptr, ptr %interval_sub, align 8, !dbg !4707
  %deferred_item = getelementptr inbounds %struct.mmu_interval_notifier, ptr %15, i32 0, i32 3, !dbg !4707
  %next5 = getelementptr inbounds %struct.hlist_node, ptr %deferred_item, i32 0, i32 0, !dbg !4707
  %16 = load ptr, ptr %next5, align 8, !dbg !4707
  store ptr %16, ptr %next, align 8, !dbg !4707
  store i32 1, ptr %tmp6, align 4, !dbg !4707
  %17 = load i32, ptr %tmp6, align 4, !dbg !4707
  %tobool7 = icmp ne i32 %17, 0, !dbg !4706
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %18 = phi i1 [ false, %for.cond ], [ %tobool7, %land.rhs ], !dbg !4709
  br i1 %18, label %for.body, label %for.end, !dbg !4705

for.body:                                         ; preds = %land.end
  %19 = load ptr, ptr %interval_sub, align 8, !dbg !4710
  %interval_tree = getelementptr inbounds %struct.mmu_interval_notifier, ptr %19, i32 0, i32 0, !dbg !4710
  %rb = getelementptr inbounds %struct.interval_tree_node, ptr %interval_tree, i32 0, i32 0, !dbg !4710
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %rb, i32 0, i32 0, !dbg !4710
  %20 = load i64, ptr %__rb_parent_color, align 8, !dbg !4710
  %21 = load ptr, ptr %interval_sub, align 8, !dbg !4710
  %interval_tree8 = getelementptr inbounds %struct.mmu_interval_notifier, ptr %21, i32 0, i32 0, !dbg !4710
  %rb9 = getelementptr inbounds %struct.interval_tree_node, ptr %interval_tree8, i32 0, i32 0, !dbg !4710
  %22 = ptrtoint ptr %rb9 to i64, !dbg !4710
  %cmp = icmp eq i64 %20, %22, !dbg !4710
  br i1 %cmp, label %if.then10, label %if.else, !dbg !4713

if.then10:                                        ; preds = %for.body
  %23 = load ptr, ptr %interval_sub, align 8, !dbg !4714
  %interval_tree11 = getelementptr inbounds %struct.mmu_interval_notifier, ptr %23, i32 0, i32 0, !dbg !4715
  %24 = load ptr, ptr %subscriptions.addr, align 8, !dbg !4716
  %itree = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %24, i32 0, i32 5, !dbg !4717
  call void @interval_tree_insert(ptr noundef %interval_tree11, ptr noundef %itree) #17, !dbg !4718
  br label %if.end14, !dbg !4718

if.else:                                          ; preds = %for.body
  %25 = load ptr, ptr %interval_sub, align 8, !dbg !4719
  %interval_tree12 = getelementptr inbounds %struct.mmu_interval_notifier, ptr %25, i32 0, i32 0, !dbg !4720
  %26 = load ptr, ptr %subscriptions.addr, align 8, !dbg !4721
  %itree13 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %26, i32 0, i32 5, !dbg !4722
  call void @interval_tree_remove(ptr noundef %interval_tree12, ptr noundef %itree13) #17, !dbg !4723
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then10
  %27 = load ptr, ptr %interval_sub, align 8, !dbg !4724
  %deferred_item15 = getelementptr inbounds %struct.mmu_interval_notifier, ptr %27, i32 0, i32 3, !dbg !4725
  call void @hlist_del(ptr noundef %deferred_item15) #17, !dbg !4726
  br label %for.inc, !dbg !4727

for.inc:                                          ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr16) #16, !dbg !4728
  call void @llvm.dbg.declare(metadata ptr %____ptr16, metadata !4674, metadata !DIExpression()), !dbg !4728
  %28 = load ptr, ptr %next, align 8, !dbg !4728
  store ptr %28, ptr %____ptr16, align 8, !dbg !4728
  %29 = load ptr, ptr %____ptr16, align 8, !dbg !4728
  %tobool18 = icmp ne ptr %29, null, !dbg !4728
  br i1 %tobool18, label %cond.true19, label %cond.false23, !dbg !4728

cond.true19:                                      ; preds = %for.inc
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr20) #16, !dbg !4729
  call void @llvm.dbg.declare(metadata ptr %__mptr20, metadata !4677, metadata !DIExpression()), !dbg !4729
  %30 = load ptr, ptr %____ptr16, align 8, !dbg !4729
  store ptr %30, ptr %__mptr20, align 8, !dbg !4729
  %31 = load ptr, ptr %__mptr20, align 8, !dbg !4729
  %add.ptr22 = getelementptr i8, ptr %31, i64 -64, !dbg !4729
  store ptr %add.ptr22, ptr %tmp21, align 8, !dbg !4729
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr20) #16, !dbg !4728
  %32 = load ptr, ptr %tmp21, align 8, !dbg !4729
  br label %cond.end24, !dbg !4728

cond.false23:                                     ; preds = %for.inc
  br label %cond.end24, !dbg !4728

cond.end24:                                       ; preds = %cond.false23, %cond.true19
  %cond25 = phi ptr [ %32, %cond.true19 ], [ null, %cond.false23 ], !dbg !4728
  store ptr %cond25, ptr %tmp17, align 8, !dbg !4728
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr16) #16, !dbg !4706
  %33 = load ptr, ptr %tmp17, align 8, !dbg !4728
  store ptr %33, ptr %interval_sub, align 8, !dbg !4706
  br label %for.cond, !dbg !4706, !llvm.loop !4730

for.end:                                          ; preds = %land.end
  %34 = load ptr, ptr %subscriptions.addr, align 8, !dbg !4732
  %lock26 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %34, i32 0, i32 2, !dbg !4733
  call void @spin_unlock(ptr noundef %lock26) #17, !dbg !4734
  %35 = load ptr, ptr %subscriptions.addr, align 8, !dbg !4735
  %wq = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %35, i32 0, i32 6, !dbg !4735
  %call27 = call i32 @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #17, !dbg !4735
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4736
  br label %cleanup, !dbg !4736

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #16, !dbg !4736
  call void @llvm.lifetime.end.p0(i64 8, ptr %interval_sub) #16, !dbg !4736
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4736

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mn_hlist_invalidate_end(ptr noundef %subscriptions, ptr noundef %range) #0 align 16 !dbg !4737 {
entry:
  %subscriptions.addr = alloca ptr, align 8
  %range.addr = alloca ptr, align 8
  %subscription = alloca ptr, align 8
  %id = alloca i32, align 4
  %____ptr = alloca ptr, align 8
  %__UNIQUE_ID_rcu308 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %____ptr20 = alloca ptr, align 8
  %__UNIQUE_ID_rcu310 = alloca ptr, align 8
  %tmp24 = alloca ptr, align 8
  %tmp25 = alloca ptr, align 8
  %tmp26 = alloca ptr, align 8
  %__mptr29 = alloca ptr, align 8
  %tmp30 = alloca ptr, align 8
  store ptr %subscriptions, ptr %subscriptions.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %subscriptions.addr, metadata !4741, metadata !DIExpression()), !dbg !4759
  store ptr %range, ptr %range.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %range.addr, metadata !4742, metadata !DIExpression()), !dbg !4760
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscription) #16, !dbg !4761
  call void @llvm.dbg.declare(metadata ptr %subscription, metadata !4743, metadata !DIExpression()), !dbg !4762
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #16, !dbg !4763
  call void @llvm.dbg.declare(metadata ptr %id, metadata !4744, metadata !DIExpression()), !dbg !4764
  %call = call i32 @srcu_read_lock(ptr noundef @srcu) #17, !dbg !4765
  store i32 %call, ptr %id, align 4, !dbg !4766
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #16, !dbg !4767
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !4745, metadata !DIExpression()), !dbg !4767
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu308) #16, !dbg !4768
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu308, metadata !4748, metadata !DIExpression()), !dbg !4768
  br label %do.body, !dbg !4769

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4771

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4771

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %subscriptions.addr, align 8, !dbg !4769
  %list = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %0, i32 0, i32 0, !dbg !4769
  %first = getelementptr inbounds %struct.hlist_head, ptr %list, i32 0, i32 0, !dbg !4769
  %1 = load volatile ptr, ptr %first, align 8, !dbg !4769
  store ptr %1, ptr %tmp, align 8, !dbg !4771
  %2 = load ptr, ptr %tmp, align 8, !dbg !4769
  store ptr %2, ptr %__UNIQUE_ID_rcu308, align 8, !dbg !4768
  %3 = load ptr, ptr %__UNIQUE_ID_rcu308, align 8, !dbg !4768
  store ptr %3, ptr %tmp1, align 8, !dbg !4768
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu308) #16, !dbg !4767
  %4 = load ptr, ptr %tmp1, align 8, !dbg !4768
  store ptr %4, ptr %____ptr, align 8, !dbg !4767
  %5 = load ptr, ptr %____ptr, align 8, !dbg !4767
  %tobool = icmp ne ptr %5, null, !dbg !4767
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4767

cond.true:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4773
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4750, metadata !DIExpression()), !dbg !4773
  %6 = load ptr, ptr %____ptr, align 8, !dbg !4773
  store ptr %6, ptr %__mptr, align 8, !dbg !4773
  %7 = load ptr, ptr %__mptr, align 8, !dbg !4773
  %add.ptr = getelementptr i8, ptr %7, i64 0, !dbg !4773
  store ptr %add.ptr, ptr %tmp3, align 8, !dbg !4773
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4767
  %8 = load ptr, ptr %tmp3, align 8, !dbg !4773
  br label %cond.end, !dbg !4767

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !4767

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %8, %cond.true ], [ null, %cond.false ], !dbg !4767
  store ptr %cond, ptr %tmp2, align 8, !dbg !4767
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #16, !dbg !4774
  %9 = load ptr, ptr %tmp2, align 8, !dbg !4767
  store ptr %9, ptr %subscription, align 8, !dbg !4774
  br label %for.cond, !dbg !4774

for.cond:                                         ; preds = %cond.end33, %cond.end
  %10 = load ptr, ptr %subscription, align 8, !dbg !4775
  %tobool4 = icmp ne ptr %10, null, !dbg !4774
  br i1 %tobool4, label %for.body, label %for.end, !dbg !4774

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %subscription, align 8, !dbg !4776
  %ops = getelementptr inbounds %struct.mmu_notifier, ptr %11, i32 0, i32 1, !dbg !4779
  %12 = load ptr, ptr %ops, align 8, !dbg !4779
  %invalidate_range_end = getelementptr inbounds %struct.mmu_notifier_ops, ptr %12, i32 0, i32 6, !dbg !4780
  %13 = load ptr, ptr %invalidate_range_end, align 8, !dbg !4780
  %tobool5 = icmp ne ptr %13, null, !dbg !4776
  br i1 %tobool5, label %if.then, label %if.end19, !dbg !4781

if.then:                                          ; preds = %for.body
  %14 = load ptr, ptr %range.addr, align 8, !dbg !4782
  %call6 = call zeroext i1 @mmu_notifier_range_blockable(ptr noundef %14) #17, !dbg !4785
  br i1 %call6, label %if.end, label %if.then7, !dbg !4786

if.then7:                                         ; preds = %if.then
  br label %do.body8, !dbg !4787

do.body8:                                         ; preds = %if.then7
  br label %do.cond9, !dbg !4788

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !4788

do.end10:                                         ; preds = %do.cond9
  br label %if.end, !dbg !4788

if.end:                                           ; preds = %do.end10, %if.then
  %15 = load ptr, ptr %subscription, align 8, !dbg !4790
  %ops11 = getelementptr inbounds %struct.mmu_notifier, ptr %15, i32 0, i32 1, !dbg !4791
  %16 = load ptr, ptr %ops11, align 8, !dbg !4791
  %invalidate_range_end12 = getelementptr inbounds %struct.mmu_notifier_ops, ptr %16, i32 0, i32 6, !dbg !4792
  %17 = load ptr, ptr %invalidate_range_end12, align 8, !dbg !4792
  %18 = load ptr, ptr %subscription, align 8, !dbg !4793
  %19 = load ptr, ptr %range.addr, align 8, !dbg !4794
  call void %17(ptr noundef %18, ptr noundef %19) #17, !dbg !4790
  %20 = load ptr, ptr %range.addr, align 8, !dbg !4795
  %call13 = call zeroext i1 @mmu_notifier_range_blockable(ptr noundef %20) #17, !dbg !4797
  br i1 %call13, label %if.end18, label %if.then14, !dbg !4798

if.then14:                                        ; preds = %if.end
  br label %do.body15, !dbg !4799

do.body15:                                        ; preds = %if.then14
  br label %do.cond16, !dbg !4800

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !4800

do.end17:                                         ; preds = %do.cond16
  br label %if.end18, !dbg !4800

if.end18:                                         ; preds = %do.end17, %if.end
  br label %if.end19, !dbg !4802

if.end19:                                         ; preds = %if.end18, %for.body
  br label %for.inc, !dbg !4803

for.inc:                                          ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr20) #16, !dbg !4804
  call void @llvm.dbg.declare(metadata ptr %____ptr20, metadata !4752, metadata !DIExpression()), !dbg !4804
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu310) #16, !dbg !4805
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu310, metadata !4755, metadata !DIExpression()), !dbg !4805
  br label %do.body21, !dbg !4806

do.body21:                                        ; preds = %for.inc
  br label %do.cond22, !dbg !4808

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !4808

do.end23:                                         ; preds = %do.cond22
  %21 = load ptr, ptr %subscription, align 8, !dbg !4806
  %hlist = getelementptr inbounds %struct.mmu_notifier, ptr %21, i32 0, i32 0, !dbg !4806
  %next = getelementptr inbounds %struct.hlist_node, ptr %hlist, i32 0, i32 0, !dbg !4806
  %22 = load volatile ptr, ptr %next, align 8, !dbg !4806
  store ptr %22, ptr %tmp24, align 8, !dbg !4808
  %23 = load ptr, ptr %tmp24, align 8, !dbg !4806
  store ptr %23, ptr %__UNIQUE_ID_rcu310, align 8, !dbg !4805
  %24 = load ptr, ptr %__UNIQUE_ID_rcu310, align 8, !dbg !4805
  store ptr %24, ptr %tmp25, align 8, !dbg !4805
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu310) #16, !dbg !4804
  %25 = load ptr, ptr %tmp25, align 8, !dbg !4805
  store ptr %25, ptr %____ptr20, align 8, !dbg !4804
  %26 = load ptr, ptr %____ptr20, align 8, !dbg !4804
  %tobool27 = icmp ne ptr %26, null, !dbg !4804
  br i1 %tobool27, label %cond.true28, label %cond.false32, !dbg !4804

cond.true28:                                      ; preds = %do.end23
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr29) #16, !dbg !4810
  call void @llvm.dbg.declare(metadata ptr %__mptr29, metadata !4757, metadata !DIExpression()), !dbg !4810
  %27 = load ptr, ptr %____ptr20, align 8, !dbg !4810
  store ptr %27, ptr %__mptr29, align 8, !dbg !4810
  %28 = load ptr, ptr %__mptr29, align 8, !dbg !4810
  %add.ptr31 = getelementptr i8, ptr %28, i64 0, !dbg !4810
  store ptr %add.ptr31, ptr %tmp30, align 8, !dbg !4810
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr29) #16, !dbg !4804
  %29 = load ptr, ptr %tmp30, align 8, !dbg !4810
  br label %cond.end33, !dbg !4804

cond.false32:                                     ; preds = %do.end23
  br label %cond.end33, !dbg !4804

cond.end33:                                       ; preds = %cond.false32, %cond.true28
  %cond34 = phi ptr [ %29, %cond.true28 ], [ null, %cond.false32 ], !dbg !4804
  store ptr %cond34, ptr %tmp26, align 8, !dbg !4804
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr20) #16, !dbg !4775
  %30 = load ptr, ptr %tmp26, align 8, !dbg !4804
  store ptr %30, ptr %subscription, align 8, !dbg !4775
  br label %for.cond, !dbg !4775, !llvm.loop !4811

for.end:                                          ; preds = %for.cond
  %31 = load i32, ptr %id, align 4, !dbg !4813
  call void @srcu_read_unlock(ptr noundef @srcu, i32 noundef %31) #17, !dbg !4814
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #16, !dbg !4815
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscription) #16, !dbg !4815
  ret void, !dbg !4815
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__mmu_notifier_arch_invalidate_secondary_tlbs(ptr noundef %mm, i64 noundef %start, i64 noundef %end) #0 align 16 !dbg !4816 {
entry:
  %mm.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %subscription = alloca ptr, align 8
  %id = alloca i32, align 4
  %____ptr = alloca ptr, align 8
  %__UNIQUE_ID_rcu312 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %____ptr8 = alloca ptr, align 8
  %__UNIQUE_ID_rcu314 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  %__mptr17 = alloca ptr, align 8
  %tmp18 = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !4820, metadata !DIExpression()), !dbg !4839
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4821, metadata !DIExpression()), !dbg !4840
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !4822, metadata !DIExpression()), !dbg !4841
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscription) #16, !dbg !4842
  call void @llvm.dbg.declare(metadata ptr %subscription, metadata !4823, metadata !DIExpression()), !dbg !4843
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #16, !dbg !4844
  call void @llvm.dbg.declare(metadata ptr %id, metadata !4824, metadata !DIExpression()), !dbg !4845
  %call = call i32 @srcu_read_lock(ptr noundef @srcu) #17, !dbg !4846
  store i32 %call, ptr %id, align 4, !dbg !4847
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #16, !dbg !4848
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !4825, metadata !DIExpression()), !dbg !4848
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu312) #16, !dbg !4849
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu312, metadata !4828, metadata !DIExpression()), !dbg !4849
  br label %do.body, !dbg !4850

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4852

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4852

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !4850
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !4850
  %notifier_subscriptions = getelementptr inbounds %struct.anon.13, ptr %1, i32 0, i32 50, !dbg !4850
  %2 = load ptr, ptr %notifier_subscriptions, align 16, !dbg !4850
  %list = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %2, i32 0, i32 0, !dbg !4850
  %first = getelementptr inbounds %struct.hlist_head, ptr %list, i32 0, i32 0, !dbg !4850
  %3 = load volatile ptr, ptr %first, align 8, !dbg !4850
  store ptr %3, ptr %tmp, align 8, !dbg !4852
  %4 = load ptr, ptr %tmp, align 8, !dbg !4850
  store ptr %4, ptr %__UNIQUE_ID_rcu312, align 8, !dbg !4849
  %5 = load ptr, ptr %__UNIQUE_ID_rcu312, align 8, !dbg !4849
  store ptr %5, ptr %tmp1, align 8, !dbg !4849
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu312) #16, !dbg !4848
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4849
  store ptr %6, ptr %____ptr, align 8, !dbg !4848
  %7 = load ptr, ptr %____ptr, align 8, !dbg !4848
  %tobool = icmp ne ptr %7, null, !dbg !4848
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4848

cond.true:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4854
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4830, metadata !DIExpression()), !dbg !4854
  %8 = load ptr, ptr %____ptr, align 8, !dbg !4854
  store ptr %8, ptr %__mptr, align 8, !dbg !4854
  %9 = load ptr, ptr %__mptr, align 8, !dbg !4854
  %add.ptr = getelementptr i8, ptr %9, i64 0, !dbg !4854
  store ptr %add.ptr, ptr %tmp3, align 8, !dbg !4854
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4848
  %10 = load ptr, ptr %tmp3, align 8, !dbg !4854
  br label %cond.end, !dbg !4848

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !4848

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %10, %cond.true ], [ null, %cond.false ], !dbg !4848
  store ptr %cond, ptr %tmp2, align 8, !dbg !4848
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #16, !dbg !4855
  %11 = load ptr, ptr %tmp2, align 8, !dbg !4848
  store ptr %11, ptr %subscription, align 8, !dbg !4855
  br label %for.cond, !dbg !4855

for.cond:                                         ; preds = %cond.end21, %cond.end
  %12 = load ptr, ptr %subscription, align 8, !dbg !4856
  %tobool4 = icmp ne ptr %12, null, !dbg !4855
  br i1 %tobool4, label %for.body, label %for.end, !dbg !4855

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %subscription, align 8, !dbg !4857
  %ops = getelementptr inbounds %struct.mmu_notifier, ptr %13, i32 0, i32 1, !dbg !4860
  %14 = load ptr, ptr %ops, align 8, !dbg !4860
  %arch_invalidate_secondary_tlbs = getelementptr inbounds %struct.mmu_notifier_ops, ptr %14, i32 0, i32 7, !dbg !4861
  %15 = load ptr, ptr %arch_invalidate_secondary_tlbs, align 8, !dbg !4861
  %tobool5 = icmp ne ptr %15, null, !dbg !4857
  br i1 %tobool5, label %if.then, label %if.end, !dbg !4862

if.then:                                          ; preds = %for.body
  %16 = load ptr, ptr %subscription, align 8, !dbg !4863
  %ops6 = getelementptr inbounds %struct.mmu_notifier, ptr %16, i32 0, i32 1, !dbg !4864
  %17 = load ptr, ptr %ops6, align 8, !dbg !4864
  %arch_invalidate_secondary_tlbs7 = getelementptr inbounds %struct.mmu_notifier_ops, ptr %17, i32 0, i32 7, !dbg !4865
  %18 = load ptr, ptr %arch_invalidate_secondary_tlbs7, align 8, !dbg !4865
  %19 = load ptr, ptr %subscription, align 8, !dbg !4866
  %20 = load ptr, ptr %mm.addr, align 8, !dbg !4867
  %21 = load i64, ptr %start.addr, align 8, !dbg !4868
  %22 = load i64, ptr %end.addr, align 8, !dbg !4869
  call void %18(ptr noundef %19, ptr noundef %20, i64 noundef %21, i64 noundef %22) #17, !dbg !4863
  br label %if.end, !dbg !4863

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !4870

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr8) #16, !dbg !4871
  call void @llvm.dbg.declare(metadata ptr %____ptr8, metadata !4832, metadata !DIExpression()), !dbg !4871
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu314) #16, !dbg !4872
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu314, metadata !4835, metadata !DIExpression()), !dbg !4872
  br label %do.body9, !dbg !4873

do.body9:                                         ; preds = %for.inc
  br label %do.cond10, !dbg !4875

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !4875

do.end11:                                         ; preds = %do.cond10
  %23 = load ptr, ptr %subscription, align 8, !dbg !4873
  %hlist = getelementptr inbounds %struct.mmu_notifier, ptr %23, i32 0, i32 0, !dbg !4873
  %next = getelementptr inbounds %struct.hlist_node, ptr %hlist, i32 0, i32 0, !dbg !4873
  %24 = load volatile ptr, ptr %next, align 8, !dbg !4873
  store ptr %24, ptr %tmp12, align 8, !dbg !4875
  %25 = load ptr, ptr %tmp12, align 8, !dbg !4873
  store ptr %25, ptr %__UNIQUE_ID_rcu314, align 8, !dbg !4872
  %26 = load ptr, ptr %__UNIQUE_ID_rcu314, align 8, !dbg !4872
  store ptr %26, ptr %tmp13, align 8, !dbg !4872
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu314) #16, !dbg !4871
  %27 = load ptr, ptr %tmp13, align 8, !dbg !4872
  store ptr %27, ptr %____ptr8, align 8, !dbg !4871
  %28 = load ptr, ptr %____ptr8, align 8, !dbg !4871
  %tobool15 = icmp ne ptr %28, null, !dbg !4871
  br i1 %tobool15, label %cond.true16, label %cond.false20, !dbg !4871

cond.true16:                                      ; preds = %do.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr17) #16, !dbg !4877
  call void @llvm.dbg.declare(metadata ptr %__mptr17, metadata !4837, metadata !DIExpression()), !dbg !4877
  %29 = load ptr, ptr %____ptr8, align 8, !dbg !4877
  store ptr %29, ptr %__mptr17, align 8, !dbg !4877
  %30 = load ptr, ptr %__mptr17, align 8, !dbg !4877
  %add.ptr19 = getelementptr i8, ptr %30, i64 0, !dbg !4877
  store ptr %add.ptr19, ptr %tmp18, align 8, !dbg !4877
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr17) #16, !dbg !4871
  %31 = load ptr, ptr %tmp18, align 8, !dbg !4877
  br label %cond.end21, !dbg !4871

cond.false20:                                     ; preds = %do.end11
  br label %cond.end21, !dbg !4871

cond.end21:                                       ; preds = %cond.false20, %cond.true16
  %cond22 = phi ptr [ %31, %cond.true16 ], [ null, %cond.false20 ], !dbg !4871
  store ptr %cond22, ptr %tmp14, align 8, !dbg !4871
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr8) #16, !dbg !4856
  %32 = load ptr, ptr %tmp14, align 8, !dbg !4871
  store ptr %32, ptr %subscription, align 8, !dbg !4856
  br label %for.cond, !dbg !4856, !llvm.loop !4878

for.end:                                          ; preds = %for.cond
  %33 = load i32, ptr %id, align 4, !dbg !4880
  call void @srcu_read_unlock(ptr noundef @srcu, i32 noundef %33) #17, !dbg !4881
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #16, !dbg !4882
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscription) #16, !dbg !4882
  ret void, !dbg !4882
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__mmu_notifier_register(ptr noundef %subscription, ptr noundef %mm) #0 align 16 !dbg !3523 {
entry:
  %retval = alloca i32, align 4
  %subscription.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %subscriptions = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  %.compoundliteral66 = alloca %struct.rb_root_cached, align 8
  store ptr %subscription, ptr %subscription.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %subscription.addr, metadata !3527, metadata !DIExpression()), !dbg !4883
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !3528, metadata !DIExpression()), !dbg !4884
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscriptions) #16, !dbg !4885
  call void @llvm.dbg.declare(metadata ptr %subscriptions, metadata !3529, metadata !DIExpression()), !dbg !4886
  store ptr null, ptr %subscriptions, align 8, !dbg !4886
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !4887
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3530, metadata !DIExpression()), !dbg !4888
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !4889
  call void @mmap_assert_write_locked(ptr noundef %0) #17, !dbg !4890
  br label %do.body, !dbg !4891

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !4892
  %2 = getelementptr inbounds %struct.mm_struct, ptr %1, i32 0, i32 0, !dbg !4892
  %mm_users = getelementptr inbounds %struct.anon.13, ptr %2, i32 0, i32 10, !dbg !4892
  %call = call i32 @atomic_read(ptr noundef %mm_users) #17, !dbg !4892
  %cmp = icmp sle i32 %call, 0, !dbg !4892
  %lnot = xor i1 %cmp, true, !dbg !4892
  %lnot1 = xor i1 %lnot, true, !dbg !4892
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4892
  %conv = sext i32 %lnot.ext to i64, !dbg !4892
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4892
  %tobool = icmp ne i64 %expval, 0, !dbg !4892
  br i1 %tobool, label %if.then, label %if.end, !dbg !4895

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !4892

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !4896

do.body3:                                         ; preds = %do.body2
  br label %do.cond, !dbg !4898

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !4898

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !4896

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 618, i32 0, i64 12) #16, !dbg !4900, !srcloc !4902
  br label %do.cond5, !dbg !4900

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !4900

do.end6:                                          ; preds = %do.cond5
  unreachable, !dbg !4896

do.cond7:                                         ; No predecessors!
  br label %do.end8, !dbg !4896

do.end8:                                          ; preds = %do.cond7
  br label %if.end, !dbg !4896

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.cond9, !dbg !4895

do.cond9:                                         ; preds = %if.end
  br label %do.end10, !dbg !4895

do.end10:                                         ; preds = %do.cond9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4903
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3531, metadata !DIExpression()), !dbg !4903
  %3 = load ptr, ptr %subscription.addr, align 8, !dbg !4903
  %tobool11 = icmp ne ptr %3, null, !dbg !4903
  br i1 %tobool11, label %land.rhs, label %land.end18, !dbg !4903

land.rhs:                                         ; preds = %do.end10
  %4 = load ptr, ptr %subscription.addr, align 8, !dbg !4903
  %ops = getelementptr inbounds %struct.mmu_notifier, ptr %4, i32 0, i32 1, !dbg !4903
  %5 = load ptr, ptr %ops, align 8, !dbg !4903
  %arch_invalidate_secondary_tlbs = getelementptr inbounds %struct.mmu_notifier_ops, ptr %5, i32 0, i32 7, !dbg !4903
  %6 = load ptr, ptr %arch_invalidate_secondary_tlbs, align 8, !dbg !4903
  %tobool12 = icmp ne ptr %6, null, !dbg !4903
  br i1 %tobool12, label %land.rhs13, label %land.end, !dbg !4903

land.rhs13:                                       ; preds = %land.rhs
  %7 = load ptr, ptr %subscription.addr, align 8, !dbg !4903
  %ops14 = getelementptr inbounds %struct.mmu_notifier, ptr %7, i32 0, i32 1, !dbg !4903
  %8 = load ptr, ptr %ops14, align 8, !dbg !4903
  %invalidate_range_start = getelementptr inbounds %struct.mmu_notifier_ops, ptr %8, i32 0, i32 5, !dbg !4903
  %9 = load ptr, ptr %invalidate_range_start, align 8, !dbg !4903
  %tobool15 = icmp ne ptr %9, null, !dbg !4903
  br i1 %tobool15, label %lor.end, label %lor.rhs, !dbg !4903

lor.rhs:                                          ; preds = %land.rhs13
  %10 = load ptr, ptr %subscription.addr, align 8, !dbg !4903
  %ops16 = getelementptr inbounds %struct.mmu_notifier, ptr %10, i32 0, i32 1, !dbg !4903
  %11 = load ptr, ptr %ops16, align 8, !dbg !4903
  %invalidate_range_end = getelementptr inbounds %struct.mmu_notifier_ops, ptr %11, i32 0, i32 6, !dbg !4903
  %12 = load ptr, ptr %invalidate_range_end, align 8, !dbg !4903
  %tobool17 = icmp ne ptr %12, null, !dbg !4903
  br label %lor.end, !dbg !4903

lor.end:                                          ; preds = %lor.rhs, %land.rhs13
  %13 = phi i1 [ true, %land.rhs13 ], [ %tobool17, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.rhs
  %14 = phi i1 [ false, %land.rhs ], [ %13, %lor.end ], !dbg !4904
  br label %land.end18

land.end18:                                       ; preds = %land.end, %do.end10
  %15 = phi i1 [ false, %do.end10 ], [ %14, %land.end ], !dbg !4904
  %lnot19 = xor i1 %15, true, !dbg !4903
  %lnot21 = xor i1 %lnot19, true, !dbg !4903
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !4903
  store i32 %lnot.ext22, ptr %__ret_warn_on, align 4, !dbg !4903
  %16 = load i32, ptr %__ret_warn_on, align 4, !dbg !4905
  %tobool23 = icmp ne i32 %16, 0, !dbg !4905
  %lnot24 = xor i1 %tobool23, true, !dbg !4905
  %lnot26 = xor i1 %lnot24, true, !dbg !4905
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !4905
  %conv28 = sext i32 %lnot.ext27 to i64, !dbg !4905
  %expval29 = call i64 @llvm.expect.i64(i64 %conv28, i64 0), !dbg !4905
  %tobool30 = icmp ne i64 %expval29, 0, !dbg !4905
  br i1 %tobool30, label %if.then31, label %if.end44, !dbg !4903

if.then31:                                        ; preds = %land.end18
  br label %do.body32, !dbg !4905

do.body32:                                        ; preds = %if.then31
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !4906
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3534, metadata !DIExpression()), !dbg !4906
  store i32 2307, ptr %__flags, align 4, !dbg !4906
  br label %do.body33, !dbg !4906

do.body33:                                        ; preds = %do.body32
  br label %do.cond34, !dbg !4907

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !4907

do.end35:                                         ; preds = %do.cond34
  br label %do.body36, !dbg !4906

do.body36:                                        ; preds = %do.end35
  %17 = load i32, ptr %__flags, align 4, !dbg !4909
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 627, i32 %17, i64 12) #16, !dbg !4909, !srcloc !4911
  br label %do.cond37, !dbg !4909

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !4909

do.end38:                                         ; preds = %do.cond37
  br label %do.body39, !dbg !4906

do.body39:                                        ; preds = %do.end38
  br label %do.cond40, !dbg !4912

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !4912

do.end41:                                         ; preds = %do.cond40
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !4905
  br label %do.cond42, !dbg !4906

do.cond42:                                        ; preds = %do.end41
  br label %do.end43, !dbg !4906

do.end43:                                         ; preds = %do.cond42
  br label %if.end44, !dbg !4906

if.end44:                                         ; preds = %do.end43, %land.end18
  %18 = load i32, ptr %__ret_warn_on, align 4, !dbg !4903
  %tobool45 = icmp ne i32 %18, 0, !dbg !4903
  %lnot46 = xor i1 %tobool45, true, !dbg !4903
  %lnot48 = xor i1 %lnot46, true, !dbg !4903
  %lnot.ext49 = zext i1 %lnot48 to i32, !dbg !4903
  %conv50 = sext i32 %lnot.ext49 to i64, !dbg !4903
  %expval51 = call i64 @llvm.expect.i64(i64 %conv50, i64 0), !dbg !4903
  store i64 %expval51, ptr %tmp, align 8, !dbg !4905
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4914
  %19 = load i64, ptr %tmp, align 8, !dbg !4903
  %tobool52 = icmp ne i64 %19, 0, !dbg !4914
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !4915

if.then53:                                        ; preds = %if.end44
  store i32 -22, ptr %retval, align 4, !dbg !4916
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4916

if.end54:                                         ; preds = %if.end44
  %20 = load ptr, ptr %mm.addr, align 8, !dbg !4917
  %21 = getelementptr inbounds %struct.mm_struct, ptr %20, i32 0, i32 0, !dbg !4919
  %notifier_subscriptions = getelementptr inbounds %struct.anon.13, ptr %21, i32 0, i32 50, !dbg !4919
  %22 = load ptr, ptr %notifier_subscriptions, align 16, !dbg !4919
  %tobool55 = icmp ne ptr %22, null, !dbg !4917
  br i1 %tobool55, label %if.end71, label %if.then56, !dbg !4920

if.then56:                                        ; preds = %if.end54
  %call57 = call noalias ptr @kzalloc(i64 noundef 80, i32 noundef 3264) #19, !dbg !4921
  store ptr %call57, ptr %subscriptions, align 8, !dbg !4923
  %23 = load ptr, ptr %subscriptions, align 8, !dbg !4924
  %tobool58 = icmp ne ptr %23, null, !dbg !4924
  br i1 %tobool58, label %if.end60, label %if.then59, !dbg !4926

if.then59:                                        ; preds = %if.then56
  store i32 -12, ptr %retval, align 4, !dbg !4927
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4927

if.end60:                                         ; preds = %if.then56
  %24 = load ptr, ptr %subscriptions, align 8, !dbg !4928
  %list = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %24, i32 0, i32 0, !dbg !4928
  %first = getelementptr inbounds %struct.hlist_head, ptr %list, i32 0, i32 0, !dbg !4928
  store ptr null, ptr %first, align 8, !dbg !4928
  br label %do.body61, !dbg !4929

do.body61:                                        ; preds = %if.end60
  %25 = load ptr, ptr %subscriptions, align 8, !dbg !4930
  %lock = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %25, i32 0, i32 2, !dbg !4930
  %call62 = call ptr @spinlock_check(ptr noundef %lock) #17, !dbg !4930
  %26 = load ptr, ptr %subscriptions, align 8, !dbg !4930
  %lock63 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %26, i32 0, i32 2, !dbg !4930
  %27 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !4930
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %27, i32 0, i32 0, !dbg !4930
  %28 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !4930
  %counter = getelementptr inbounds %struct.atomic_t, ptr %28, i32 0, i32 0, !dbg !4930
  store i32 0, ptr %counter, align 4, !dbg !4930
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %lock63, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !4930
  br label %do.cond64, !dbg !4930

do.cond64:                                        ; preds = %do.body61
  br label %do.end65, !dbg !4930

do.end65:                                         ; preds = %do.cond64
  %29 = load ptr, ptr %subscriptions, align 8, !dbg !4932
  %invalidate_seq = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %29, i32 0, i32 3, !dbg !4933
  store i64 2, ptr %invalidate_seq, align 8, !dbg !4934
  %30 = load ptr, ptr %subscriptions, align 8, !dbg !4935
  %itree = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %30, i32 0, i32 5, !dbg !4936
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %.compoundliteral66, i32 0, i32 0, !dbg !4937
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %rb_root, i32 0, i32 0, !dbg !4937
  store ptr null, ptr %rb_node, align 8, !dbg !4937
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %.compoundliteral66, i32 0, i32 1, !dbg !4937
  store ptr null, ptr %rb_leftmost, align 8, !dbg !4937
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %itree, ptr align 8 %.compoundliteral66, i64 16, i1 false), !dbg !4937
  br label %do.body67, !dbg !4938

do.body67:                                        ; preds = %do.end65
  %31 = load ptr, ptr %subscriptions, align 8, !dbg !4939
  %wq = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %31, i32 0, i32 6, !dbg !4939
  call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef @.str.1, ptr noundef @__mmu_notifier_register.__key) #17, !dbg !4939
  br label %do.cond68, !dbg !4939

do.cond68:                                        ; preds = %do.body67
  br label %do.end69, !dbg !4939

do.end69:                                         ; preds = %do.cond68
  %32 = load ptr, ptr %subscriptions, align 8, !dbg !4941
  %deferred_list = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %32, i32 0, i32 7, !dbg !4941
  %first70 = getelementptr inbounds %struct.hlist_head, ptr %deferred_list, i32 0, i32 0, !dbg !4941
  store ptr null, ptr %first70, align 8, !dbg !4941
  br label %if.end71, !dbg !4942

if.end71:                                         ; preds = %do.end69, %if.end54
  %33 = load ptr, ptr %mm.addr, align 8, !dbg !4943
  %call72 = call i32 @mm_take_all_locks(ptr noundef %33) #17, !dbg !4944
  store i32 %call72, ptr %ret, align 4, !dbg !4945
  %34 = load i32, ptr %ret, align 4, !dbg !4946
  %tobool73 = icmp ne i32 %34, 0, !dbg !4946
  %lnot74 = xor i1 %tobool73, true, !dbg !4946
  %lnot76 = xor i1 %lnot74, true, !dbg !4946
  %lnot.ext77 = zext i1 %lnot76 to i32, !dbg !4946
  %conv78 = sext i32 %lnot.ext77 to i64, !dbg !4946
  %expval79 = call i64 @llvm.expect.i64(i64 %conv78, i64 0), !dbg !4946
  %tobool80 = icmp ne i64 %expval79, 0, !dbg !4946
  br i1 %tobool80, label %if.then81, label %if.end82, !dbg !4948

if.then81:                                        ; preds = %if.end71
  br label %out_clean, !dbg !4949

if.end82:                                         ; preds = %if.end71
  %35 = load ptr, ptr %subscriptions, align 8, !dbg !4950
  %tobool83 = icmp ne ptr %35, null, !dbg !4950
  br i1 %tobool83, label %if.then84, label %if.end107, !dbg !4952

if.then84:                                        ; preds = %if.end82
  br label %do.body85, !dbg !4953

do.body85:                                        ; preds = %if.then84
  br label %do.body86, !dbg !4954

do.body86:                                        ; preds = %do.body85
  br label %do.cond87, !dbg !4956

do.cond87:                                        ; preds = %do.body86
  br label %do.end88, !dbg !4956

do.end88:                                         ; preds = %do.cond87
  br label %do.body89, !dbg !4954

do.body89:                                        ; preds = %do.end88
  br label %do.body90, !dbg !4958

do.body90:                                        ; preds = %do.body89
  br label %do.cond91, !dbg !4960

do.cond91:                                        ; preds = %do.body90
  br label %do.end92, !dbg !4960

do.end92:                                         ; preds = %do.cond91
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !4958, !srcloc !4962
  br label %do.body93, !dbg !4958

do.body93:                                        ; preds = %do.end92
  br label %do.body94, !dbg !4963

do.body94:                                        ; preds = %do.body93
  br label %do.cond95, !dbg !4965

do.cond95:                                        ; preds = %do.body94
  br label %do.end96, !dbg !4965

do.end96:                                         ; preds = %do.cond95
  br label %do.body97, !dbg !4963

do.body97:                                        ; preds = %do.end96
  %36 = load ptr, ptr %subscriptions, align 8, !dbg !4967
  %37 = load ptr, ptr %mm.addr, align 8, !dbg !4967
  %38 = getelementptr inbounds %struct.mm_struct, ptr %37, i32 0, i32 0, !dbg !4967
  %notifier_subscriptions98 = getelementptr inbounds %struct.anon.13, ptr %38, i32 0, i32 50, !dbg !4967
  store volatile ptr %36, ptr %notifier_subscriptions98, align 16, !dbg !4967
  br label %do.cond99, !dbg !4967

do.cond99:                                        ; preds = %do.body97
  br label %do.end100, !dbg !4967

do.end100:                                        ; preds = %do.cond99
  br label %do.cond101, !dbg !4963

do.cond101:                                       ; preds = %do.end100
  br label %do.end102, !dbg !4963

do.end102:                                        ; preds = %do.cond101
  br label %do.cond103, !dbg !4958

do.cond103:                                       ; preds = %do.end102
  br label %do.end104, !dbg !4958

do.end104:                                        ; preds = %do.cond103
  br label %do.cond105, !dbg !4954

do.cond105:                                       ; preds = %do.end104
  br label %do.end106, !dbg !4954

do.end106:                                        ; preds = %do.cond105
  br label %if.end107, !dbg !4954

if.end107:                                        ; preds = %do.end106, %if.end82
  %39 = load ptr, ptr %subscription.addr, align 8, !dbg !4969
  %tobool108 = icmp ne ptr %39, null, !dbg !4969
  br i1 %tobool108, label %if.then109, label %if.else, !dbg !4971

if.then109:                                       ; preds = %if.end107
  %40 = load ptr, ptr %mm.addr, align 8, !dbg !4972
  call void @mmgrab(ptr noundef %40) #17, !dbg !4974
  %41 = load ptr, ptr %mm.addr, align 8, !dbg !4975
  %42 = load ptr, ptr %subscription.addr, align 8, !dbg !4976
  %mm110 = getelementptr inbounds %struct.mmu_notifier, ptr %42, i32 0, i32 2, !dbg !4977
  store ptr %41, ptr %mm110, align 8, !dbg !4978
  %43 = load ptr, ptr %subscription.addr, align 8, !dbg !4979
  %users = getelementptr inbounds %struct.mmu_notifier, ptr %43, i32 0, i32 4, !dbg !4980
  store i32 1, ptr %users, align 8, !dbg !4981
  %44 = load ptr, ptr %mm.addr, align 8, !dbg !4982
  %45 = getelementptr inbounds %struct.mm_struct, ptr %44, i32 0, i32 0, !dbg !4983
  %notifier_subscriptions111 = getelementptr inbounds %struct.anon.13, ptr %45, i32 0, i32 50, !dbg !4983
  %46 = load ptr, ptr %notifier_subscriptions111, align 16, !dbg !4983
  %lock112 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %46, i32 0, i32 2, !dbg !4984
  call void @spin_lock(ptr noundef %lock112) #17, !dbg !4985
  %47 = load ptr, ptr %subscription.addr, align 8, !dbg !4986
  %hlist = getelementptr inbounds %struct.mmu_notifier, ptr %47, i32 0, i32 0, !dbg !4987
  %48 = load ptr, ptr %mm.addr, align 8, !dbg !4988
  %49 = getelementptr inbounds %struct.mm_struct, ptr %48, i32 0, i32 0, !dbg !4989
  %notifier_subscriptions113 = getelementptr inbounds %struct.anon.13, ptr %49, i32 0, i32 50, !dbg !4989
  %50 = load ptr, ptr %notifier_subscriptions113, align 16, !dbg !4989
  %list114 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %50, i32 0, i32 0, !dbg !4990
  call void @hlist_add_head_rcu(ptr noundef %hlist, ptr noundef %list114) #17, !dbg !4991
  %51 = load ptr, ptr %mm.addr, align 8, !dbg !4992
  %52 = getelementptr inbounds %struct.mm_struct, ptr %51, i32 0, i32 0, !dbg !4993
  %notifier_subscriptions115 = getelementptr inbounds %struct.anon.13, ptr %52, i32 0, i32 50, !dbg !4993
  %53 = load ptr, ptr %notifier_subscriptions115, align 16, !dbg !4993
  %lock116 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %53, i32 0, i32 2, !dbg !4994
  call void @spin_unlock(ptr noundef %lock116) #17, !dbg !4995
  br label %if.end118, !dbg !4996

if.else:                                          ; preds = %if.end107
  %54 = load ptr, ptr %mm.addr, align 8, !dbg !4997
  %55 = getelementptr inbounds %struct.mm_struct, ptr %54, i32 0, i32 0, !dbg !4998
  %notifier_subscriptions117 = getelementptr inbounds %struct.anon.13, ptr %55, i32 0, i32 50, !dbg !4998
  %56 = load ptr, ptr %notifier_subscriptions117, align 16, !dbg !4998
  %has_itree = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %56, i32 0, i32 1, !dbg !4999
  store i8 1, ptr %has_itree, align 8, !dbg !5000
  br label %if.end118

if.end118:                                        ; preds = %if.else, %if.then109
  %57 = load ptr, ptr %mm.addr, align 8, !dbg !5001
  call void @mm_drop_all_locks(ptr noundef %57) #17, !dbg !5002
  br label %do.body119, !dbg !5003

do.body119:                                       ; preds = %if.end118
  %58 = load ptr, ptr %mm.addr, align 8, !dbg !5004
  %59 = getelementptr inbounds %struct.mm_struct, ptr %58, i32 0, i32 0, !dbg !5004
  %mm_users120 = getelementptr inbounds %struct.anon.13, ptr %59, i32 0, i32 10, !dbg !5004
  %call121 = call i32 @atomic_read(ptr noundef %mm_users120) #17, !dbg !5004
  %cmp122 = icmp sle i32 %call121, 0, !dbg !5004
  %lnot124 = xor i1 %cmp122, true, !dbg !5004
  %lnot126 = xor i1 %lnot124, true, !dbg !5004
  %lnot.ext127 = zext i1 %lnot126 to i32, !dbg !5004
  %conv128 = sext i32 %lnot.ext127 to i64, !dbg !5004
  %expval129 = call i64 @llvm.expect.i64(i64 %conv128, i64 0), !dbg !5004
  %tobool130 = icmp ne i64 %expval129, 0, !dbg !5004
  br i1 %tobool130, label %if.then131, label %if.end141, !dbg !5007

if.then131:                                       ; preds = %do.body119
  br label %do.body132, !dbg !5004

do.body132:                                       ; preds = %if.then131
  br label %do.body133, !dbg !5008

do.body133:                                       ; preds = %do.body132
  br label %do.cond134, !dbg !5010

do.cond134:                                       ; preds = %do.body133
  br label %do.end135, !dbg !5010

do.end135:                                        ; preds = %do.cond134
  br label %do.body136, !dbg !5008

do.body136:                                       ; preds = %do.end135
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 686, i32 0, i64 12) #16, !dbg !5012, !srcloc !5014
  br label %do.cond137, !dbg !5012

do.cond137:                                       ; preds = %do.body136
  br label %do.end138, !dbg !5012

do.end138:                                        ; preds = %do.cond137
  unreachable, !dbg !5008

do.cond139:                                       ; No predecessors!
  br label %do.end140, !dbg !5008

do.end140:                                        ; preds = %do.cond139
  br label %if.end141, !dbg !5008

if.end141:                                        ; preds = %do.end140, %do.body119
  br label %do.cond142, !dbg !5007

do.cond142:                                       ; preds = %if.end141
  br label %do.end143, !dbg !5007

do.end143:                                        ; preds = %do.cond142
  store i32 0, ptr %retval, align 4, !dbg !5015
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5015

out_clean:                                        ; preds = %if.then81
  call void @llvm.dbg.label(metadata !3537), !dbg !5016
  %60 = load ptr, ptr %subscriptions, align 8, !dbg !5017
  call void @kfree(ptr noundef %60) #17, !dbg !5018
  %61 = load i32, ptr %ret, align 4, !dbg !5019
  store i32 %61, ptr %retval, align 4, !dbg !5020
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5020

cleanup:                                          ; preds = %out_clean, %do.end143, %if.then59, %if.then53
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !5021
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscriptions) #16, !dbg !5021
  %62 = load i32, ptr %retval, align 4, !dbg !5021
  ret i32 %62, !dbg !5021
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmap_assert_write_locked(ptr noundef %mm) #5 align 16 !dbg !5022 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5025, metadata !DIExpression()), !dbg !5026
  br label %do.body, !dbg !5027

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !5028
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !5028
  %mmap_lock = getelementptr inbounds %struct.anon.13, ptr %1, i32 0, i32 16, !dbg !5028
  br label %do.end, !dbg !5028

do.end:                                           ; preds = %do.body
  ret void, !dbg !5030
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #3 align 16 !dbg !5031 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5038, metadata !DIExpression()), !dbg !5039
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5040
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #17, !dbg !5041
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5042
  %call = call i32 @raw_atomic_read(ptr noundef %1) #17, !dbg !5043
  ret i32 %call, !dbg !5044
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !5045 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5049, metadata !DIExpression()), !dbg !5051
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5050, metadata !DIExpression()), !dbg !5052
  %0 = load i64, ptr %size.addr, align 8, !dbg !5053
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5054
  %or = or i32 %1, 256, !dbg !5055
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !5056
  ret ptr %call, !dbg !5057
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #3 align 16 !dbg !5058 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5063, metadata !DIExpression()), !dbg !5064
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5065
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5066
  ret ptr %1, !dbg !5067
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5068 dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5072 dso_local i32 @mm_take_all_locks(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmgrab(ptr noundef %mm) #5 align 16 !dbg !5075 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5078, metadata !DIExpression()), !dbg !5079
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !5080
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !5081
  %2 = getelementptr inbounds %struct.anon.13, ptr %1, i32 0, i32 0, !dbg !5081
  %mm_count = getelementptr inbounds %struct.anon.14, ptr %2, i32 0, i32 0, !dbg !5081
  call void @atomic_inc(ptr noundef %mm_count) #17, !dbg !5082
  ret void, !dbg !5083
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hlist_add_head_rcu(ptr noundef %n, ptr noundef %h) #5 align 16 !dbg !5084 {
entry:
  %n.addr = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %first = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5089, metadata !DIExpression()), !dbg !5094
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !5090, metadata !DIExpression()), !dbg !5095
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #16, !dbg !5096
  call void @llvm.dbg.declare(metadata ptr %first, metadata !5091, metadata !DIExpression()), !dbg !5097
  %0 = load ptr, ptr %h.addr, align 8, !dbg !5098
  %first1 = getelementptr inbounds %struct.hlist_head, ptr %0, i32 0, i32 0, !dbg !5099
  %1 = load ptr, ptr %first1, align 8, !dbg !5099
  store ptr %1, ptr %first, align 8, !dbg !5097
  %2 = load ptr, ptr %first, align 8, !dbg !5100
  %3 = load ptr, ptr %n.addr, align 8, !dbg !5101
  %next = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 0, !dbg !5102
  store ptr %2, ptr %next, align 8, !dbg !5103
  br label %do.body, !dbg !5104

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5105

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !5107

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5107

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !5105

do.body3:                                         ; preds = %do.end
  %4 = load ptr, ptr %h.addr, align 8, !dbg !5109
  %first4 = getelementptr inbounds %struct.hlist_head, ptr %4, i32 0, i32 0, !dbg !5109
  %5 = load ptr, ptr %n.addr, align 8, !dbg !5109
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1, !dbg !5109
  store volatile ptr %first4, ptr %pprev, align 8, !dbg !5109
  br label %do.cond5, !dbg !5109

do.cond5:                                         ; preds = %do.body3
  br label %do.end6, !dbg !5109

do.end6:                                          ; preds = %do.cond5
  br label %do.cond7, !dbg !5105

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !5105

do.end8:                                          ; preds = %do.cond7
  br label %do.body9, !dbg !5111

do.body9:                                         ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #16, !dbg !5112
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !5092, metadata !DIExpression()), !dbg !5112
  %6 = load ptr, ptr %n.addr, align 8, !dbg !5112
  %7 = ptrtoint ptr %6 to i64, !dbg !5112
  store i64 %7, ptr %_r_a_p__v, align 8, !dbg !5112
  br i1 false, label %land.lhs.true, label %if.else, !dbg !5113

land.lhs.true:                                    ; preds = %do.body9
  %8 = load i64, ptr %_r_a_p__v, align 8, !dbg !5113
  %cmp = icmp eq i64 %8, 0, !dbg !5113
  br i1 %cmp, label %if.then, label %if.else, !dbg !5112

if.then:                                          ; preds = %land.lhs.true
  br label %do.body10, !dbg !5113

do.body10:                                        ; preds = %if.then
  br label %do.body11, !dbg !5115

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !5117

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5117

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !5115

do.body14:                                        ; preds = %do.end13
  %9 = load i64, ptr %_r_a_p__v, align 8, !dbg !5119
  %10 = inttoptr i64 %9 to ptr, !dbg !5119
  %11 = load ptr, ptr %h.addr, align 8, !dbg !5119
  %first15 = getelementptr inbounds %struct.hlist_head, ptr %11, i32 0, i32 0, !dbg !5119
  store volatile ptr %10, ptr %first15, align 8, !dbg !5119
  br label %do.cond16, !dbg !5119

do.cond16:                                        ; preds = %do.body14
  br label %do.end17, !dbg !5119

do.end17:                                         ; preds = %do.cond16
  br label %do.cond18, !dbg !5115

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !5115

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !5115

if.else:                                          ; preds = %land.lhs.true, %do.body9
  br label %do.body20, !dbg !5113

do.body20:                                        ; preds = %if.else
  br label %do.body21, !dbg !5121

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !5123

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !5123

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !5121

do.body24:                                        ; preds = %do.end23
  br label %do.body25, !dbg !5125

do.body25:                                        ; preds = %do.body24
  br label %do.cond26, !dbg !5127

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !5127

do.end27:                                         ; preds = %do.cond26
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !5125, !srcloc !5129
  br label %do.body28, !dbg !5125

do.body28:                                        ; preds = %do.end27
  br label %do.body29, !dbg !5130

do.body29:                                        ; preds = %do.body28
  br label %do.cond30, !dbg !5132

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !5132

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !5130

do.body32:                                        ; preds = %do.end31
  %12 = load i64, ptr %_r_a_p__v, align 8, !dbg !5134
  %13 = inttoptr i64 %12 to ptr, !dbg !5134
  %14 = load ptr, ptr %h.addr, align 8, !dbg !5134
  %first33 = getelementptr inbounds %struct.hlist_head, ptr %14, i32 0, i32 0, !dbg !5134
  store volatile ptr %13, ptr %first33, align 8, !dbg !5134
  br label %do.cond34, !dbg !5134

do.cond34:                                        ; preds = %do.body32
  br label %do.end35, !dbg !5134

do.end35:                                         ; preds = %do.cond34
  br label %do.cond36, !dbg !5130

do.cond36:                                        ; preds = %do.end35
  br label %do.end37, !dbg !5130

do.end37:                                         ; preds = %do.cond36
  br label %do.cond38, !dbg !5125

do.cond38:                                        ; preds = %do.end37
  br label %do.end39, !dbg !5125

do.end39:                                         ; preds = %do.cond38
  br label %do.cond40, !dbg !5121

do.cond40:                                        ; preds = %do.end39
  br label %do.end41, !dbg !5121

do.end41:                                         ; preds = %do.cond40
  br label %if.end

if.end:                                           ; preds = %do.end41, %do.end19
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #16, !dbg !5111
  br label %do.cond42, !dbg !5112

do.cond42:                                        ; preds = %if.end
  br label %do.end43, !dbg !5112

do.end43:                                         ; preds = %do.cond42
  %15 = load ptr, ptr %first, align 8, !dbg !5136
  %tobool = icmp ne ptr %15, null, !dbg !5136
  br i1 %tobool, label %if.then44, label %if.end56, !dbg !5138

if.then44:                                        ; preds = %do.end43
  br label %do.body45, !dbg !5139

do.body45:                                        ; preds = %if.then44
  br label %do.body46, !dbg !5140

do.body46:                                        ; preds = %do.body45
  br label %do.cond47, !dbg !5142

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !5142

do.end48:                                         ; preds = %do.cond47
  br label %do.body49, !dbg !5140

do.body49:                                        ; preds = %do.end48
  %16 = load ptr, ptr %n.addr, align 8, !dbg !5144
  %next50 = getelementptr inbounds %struct.hlist_node, ptr %16, i32 0, i32 0, !dbg !5144
  %17 = load ptr, ptr %first, align 8, !dbg !5144
  %pprev51 = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1, !dbg !5144
  store volatile ptr %next50, ptr %pprev51, align 8, !dbg !5144
  br label %do.cond52, !dbg !5144

do.cond52:                                        ; preds = %do.body49
  br label %do.end53, !dbg !5144

do.end53:                                         ; preds = %do.cond52
  br label %do.cond54, !dbg !5140

do.cond54:                                        ; preds = %do.end53
  br label %do.end55, !dbg !5140

do.end55:                                         ; preds = %do.cond54
  br label %if.end56, !dbg !5140

if.end56:                                         ; preds = %do.end55, %do.end43
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #16, !dbg !5146
  ret void, !dbg !5146
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5147 dso_local void @mm_drop_all_locks(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5148 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mmu_notifier_register(ptr noundef %subscription, ptr noundef %mm) #0 align 16 !dbg !5153 {
entry:
  %subscription.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %subscription, ptr %subscription.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %subscription.addr, metadata !5155, metadata !DIExpression()), !dbg !5158
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5156, metadata !DIExpression()), !dbg !5159
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !5160
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5157, metadata !DIExpression()), !dbg !5161
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !5162
  call void @mmap_write_lock(ptr noundef %0) #17, !dbg !5163
  %1 = load ptr, ptr %subscription.addr, align 8, !dbg !5164
  %2 = load ptr, ptr %mm.addr, align 8, !dbg !5165
  %call = call i32 @__mmu_notifier_register(ptr noundef %1, ptr noundef %2) #17, !dbg !5166
  store i32 %call, ptr %ret, align 4, !dbg !5167
  %3 = load ptr, ptr %mm.addr, align 8, !dbg !5168
  call void @mmap_write_unlock(ptr noundef %3) #17, !dbg !5169
  %4 = load i32, ptr %ret, align 4, !dbg !5170
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !5171
  ret i32 %4, !dbg !5172
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmap_write_lock(ptr noundef %mm) #5 align 16 !dbg !5173 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5175, metadata !DIExpression()), !dbg !5176
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !5177
  call void @__mmap_lock_trace_start_locking(ptr noundef %0, i1 noundef zeroext true) #17, !dbg !5178
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !5179
  %2 = getelementptr inbounds %struct.mm_struct, ptr %1, i32 0, i32 0, !dbg !5180
  %mmap_lock = getelementptr inbounds %struct.anon.13, ptr %2, i32 0, i32 16, !dbg !5180
  call void @down_write(ptr noundef %mmap_lock) #17, !dbg !5181
  %3 = load ptr, ptr %mm.addr, align 8, !dbg !5182
  call void @__mmap_lock_trace_acquire_returned(ptr noundef %3, i1 noundef zeroext true, i1 noundef zeroext true) #17, !dbg !5183
  ret void, !dbg !5184
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmap_write_unlock(ptr noundef %mm) #5 align 16 !dbg !5185 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5187, metadata !DIExpression()), !dbg !5188
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !5189
  call void @__mmap_lock_trace_released(ptr noundef %0, i1 noundef zeroext true) #17, !dbg !5190
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !5191
  call void @vma_end_write_all(ptr noundef %1) #17, !dbg !5192
  %2 = load ptr, ptr %mm.addr, align 8, !dbg !5193
  %3 = getelementptr inbounds %struct.mm_struct, ptr %2, i32 0, i32 0, !dbg !5194
  %mmap_lock = getelementptr inbounds %struct.anon.13, ptr %3, i32 0, i32 16, !dbg !5194
  call void @up_write(ptr noundef %mmap_lock) #17, !dbg !5195
  ret void, !dbg !5196
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @mmu_notifier_get_locked(ptr noundef %ops, ptr noundef %mm) #0 align 16 !dbg !5197 {
entry:
  %retval = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %subscription = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5201, metadata !DIExpression()), !dbg !5206
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5202, metadata !DIExpression()), !dbg !5207
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscription) #16, !dbg !5208
  call void @llvm.dbg.declare(metadata ptr %subscription, metadata !5203, metadata !DIExpression()), !dbg !5209
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !5210
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5204, metadata !DIExpression()), !dbg !5211
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !5212
  call void @mmap_assert_write_locked(ptr noundef %0) #17, !dbg !5213
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !5214
  %2 = getelementptr inbounds %struct.mm_struct, ptr %1, i32 0, i32 0, !dbg !5216
  %notifier_subscriptions = getelementptr inbounds %struct.anon.13, ptr %2, i32 0, i32 50, !dbg !5216
  %3 = load ptr, ptr %notifier_subscriptions, align 16, !dbg !5216
  %tobool = icmp ne ptr %3, null, !dbg !5214
  br i1 %tobool, label %if.then, label %if.end3, !dbg !5217

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %mm.addr, align 8, !dbg !5218
  %5 = load ptr, ptr %ops.addr, align 8, !dbg !5220
  %call = call ptr @find_get_mmu_notifier(ptr noundef %4, ptr noundef %5) #17, !dbg !5221
  store ptr %call, ptr %subscription, align 8, !dbg !5222
  %6 = load ptr, ptr %subscription, align 8, !dbg !5223
  %tobool1 = icmp ne ptr %6, null, !dbg !5223
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !5225

if.then2:                                         ; preds = %if.then
  %7 = load ptr, ptr %subscription, align 8, !dbg !5226
  store ptr %7, ptr %retval, align 8, !dbg !5227
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5227

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !5228

if.end3:                                          ; preds = %if.end, %entry
  %8 = load ptr, ptr %ops.addr, align 8, !dbg !5229
  %alloc_notifier = getelementptr inbounds %struct.mmu_notifier_ops, ptr %8, i32 0, i32 8, !dbg !5230
  %9 = load ptr, ptr %alloc_notifier, align 8, !dbg !5230
  %10 = load ptr, ptr %mm.addr, align 8, !dbg !5231
  %call4 = call ptr %9(ptr noundef %10) #17, !dbg !5229
  store ptr %call4, ptr %subscription, align 8, !dbg !5232
  %11 = load ptr, ptr %subscription, align 8, !dbg !5233
  %call5 = call zeroext i1 @IS_ERR(ptr noundef %11) #17, !dbg !5235
  br i1 %call5, label %if.then6, label %if.end7, !dbg !5236

if.then6:                                         ; preds = %if.end3
  %12 = load ptr, ptr %subscription, align 8, !dbg !5237
  store ptr %12, ptr %retval, align 8, !dbg !5238
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5238

if.end7:                                          ; preds = %if.end3
  %13 = load ptr, ptr %ops.addr, align 8, !dbg !5239
  %14 = load ptr, ptr %subscription, align 8, !dbg !5240
  %ops8 = getelementptr inbounds %struct.mmu_notifier, ptr %14, i32 0, i32 1, !dbg !5241
  store ptr %13, ptr %ops8, align 8, !dbg !5242
  %15 = load ptr, ptr %subscription, align 8, !dbg !5243
  %16 = load ptr, ptr %mm.addr, align 8, !dbg !5244
  %call9 = call i32 @__mmu_notifier_register(ptr noundef %15, ptr noundef %16) #17, !dbg !5245
  store i32 %call9, ptr %ret, align 4, !dbg !5246
  %17 = load i32, ptr %ret, align 4, !dbg !5247
  %tobool10 = icmp ne i32 %17, 0, !dbg !5247
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5249

if.then11:                                        ; preds = %if.end7
  br label %out_free, !dbg !5250

if.end12:                                         ; preds = %if.end7
  %18 = load ptr, ptr %subscription, align 8, !dbg !5251
  store ptr %18, ptr %retval, align 8, !dbg !5252
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5252

out_free:                                         ; preds = %if.then11
  call void @llvm.dbg.label(metadata !5205), !dbg !5253
  %19 = load ptr, ptr %subscription, align 8, !dbg !5254
  %ops13 = getelementptr inbounds %struct.mmu_notifier, ptr %19, i32 0, i32 1, !dbg !5255
  %20 = load ptr, ptr %ops13, align 8, !dbg !5255
  %free_notifier = getelementptr inbounds %struct.mmu_notifier_ops, ptr %20, i32 0, i32 9, !dbg !5256
  %21 = load ptr, ptr %free_notifier, align 8, !dbg !5256
  %22 = load ptr, ptr %subscription, align 8, !dbg !5257
  call void %21(ptr noundef %22) #17, !dbg !5254
  %23 = load i32, ptr %ret, align 4, !dbg !5258
  %conv = sext i32 %23 to i64, !dbg !5258
  %call14 = call ptr @ERR_PTR(i64 noundef %conv) #17, !dbg !5259
  store ptr %call14, ptr %retval, align 8, !dbg !5260
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5260

cleanup:                                          ; preds = %out_free, %if.end12, %if.then6, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !5261
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscription) #16, !dbg !5261
  %24 = load ptr, ptr %retval, align 8, !dbg !5261
  ret ptr %24, !dbg !5261
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @find_get_mmu_notifier(ptr noundef %mm, ptr noundef %ops) #0 align 16 !dbg !5262 {
entry:
  %retval = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %subscription = alloca ptr, align 8
  %____ptr = alloca ptr, align 8
  %__UNIQUE_ID_rcu320 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %____ptr15 = alloca ptr, align 8
  %__UNIQUE_ID_rcu322 = alloca ptr, align 8
  %tmp19 = alloca ptr, align 8
  %tmp20 = alloca ptr, align 8
  %tmp21 = alloca ptr, align 8
  %__mptr24 = alloca ptr, align 8
  %tmp25 = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5266, metadata !DIExpression()), !dbg !5283
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5267, metadata !DIExpression()), !dbg !5284
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscription) #16, !dbg !5285
  call void @llvm.dbg.declare(metadata ptr %subscription, metadata !5268, metadata !DIExpression()), !dbg !5286
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !5287
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !5288
  %notifier_subscriptions = getelementptr inbounds %struct.anon.13, ptr %1, i32 0, i32 50, !dbg !5288
  %2 = load ptr, ptr %notifier_subscriptions, align 16, !dbg !5288
  %lock = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %2, i32 0, i32 2, !dbg !5289
  call void @spin_lock(ptr noundef %lock) #17, !dbg !5290
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #16, !dbg !5291
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !5269, metadata !DIExpression()), !dbg !5291
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu320) #16, !dbg !5292
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu320, metadata !5272, metadata !DIExpression()), !dbg !5292
  br label %do.body, !dbg !5293

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5295

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5295

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %mm.addr, align 8, !dbg !5293
  %4 = getelementptr inbounds %struct.mm_struct, ptr %3, i32 0, i32 0, !dbg !5293
  %notifier_subscriptions1 = getelementptr inbounds %struct.anon.13, ptr %4, i32 0, i32 50, !dbg !5293
  %5 = load ptr, ptr %notifier_subscriptions1, align 16, !dbg !5293
  %list = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %5, i32 0, i32 0, !dbg !5293
  %first = getelementptr inbounds %struct.hlist_head, ptr %list, i32 0, i32 0, !dbg !5293
  %6 = load volatile ptr, ptr %first, align 8, !dbg !5293
  store ptr %6, ptr %tmp, align 8, !dbg !5295
  %7 = load ptr, ptr %tmp, align 8, !dbg !5293
  store ptr %7, ptr %__UNIQUE_ID_rcu320, align 8, !dbg !5292
  %8 = load ptr, ptr %__UNIQUE_ID_rcu320, align 8, !dbg !5292
  store ptr %8, ptr %tmp2, align 8, !dbg !5292
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu320) #16, !dbg !5291
  %9 = load ptr, ptr %tmp2, align 8, !dbg !5292
  store ptr %9, ptr %____ptr, align 8, !dbg !5291
  %10 = load ptr, ptr %____ptr, align 8, !dbg !5291
  %tobool = icmp ne ptr %10, null, !dbg !5291
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5291

cond.true:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5297
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5274, metadata !DIExpression()), !dbg !5297
  %11 = load ptr, ptr %____ptr, align 8, !dbg !5297
  store ptr %11, ptr %__mptr, align 8, !dbg !5297
  %12 = load ptr, ptr %__mptr, align 8, !dbg !5297
  %add.ptr = getelementptr i8, ptr %12, i64 0, !dbg !5297
  store ptr %add.ptr, ptr %tmp4, align 8, !dbg !5297
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5291
  %13 = load ptr, ptr %tmp4, align 8, !dbg !5297
  br label %cond.end, !dbg !5291

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !5291

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %13, %cond.true ], [ null, %cond.false ], !dbg !5291
  store ptr %cond, ptr %tmp3, align 8, !dbg !5291
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #16, !dbg !5298
  %14 = load ptr, ptr %tmp3, align 8, !dbg !5291
  store ptr %14, ptr %subscription, align 8, !dbg !5298
  br label %for.cond, !dbg !5298

for.cond:                                         ; preds = %cond.end28, %cond.end
  %15 = load ptr, ptr %subscription, align 8, !dbg !5299
  %tobool5 = icmp ne ptr %15, null, !dbg !5298
  br i1 %tobool5, label %for.body, label %for.end, !dbg !5298

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %subscription, align 8, !dbg !5300
  %ops6 = getelementptr inbounds %struct.mmu_notifier, ptr %16, i32 0, i32 1, !dbg !5303
  %17 = load ptr, ptr %ops6, align 8, !dbg !5303
  %18 = load ptr, ptr %ops.addr, align 8, !dbg !5304
  %cmp = icmp ne ptr %17, %18, !dbg !5305
  br i1 %cmp, label %if.then, label %if.end, !dbg !5306

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !5307

if.end:                                           ; preds = %for.body
  %19 = load ptr, ptr %subscription, align 8, !dbg !5308
  %users = getelementptr inbounds %struct.mmu_notifier, ptr %19, i32 0, i32 4, !dbg !5308
  %20 = load i32, ptr %users, align 8, !dbg !5308
  %cmp7 = icmp ne i32 %20, -1, !dbg !5308
  %lnot = xor i1 %cmp7, true, !dbg !5308
  %lnot8 = xor i1 %lnot, true, !dbg !5308
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !5308
  %conv = sext i32 %lnot.ext to i64, !dbg !5308
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5308
  %tobool9 = icmp ne i64 %expval, 0, !dbg !5308
  br i1 %tobool9, label %if.then10, label %if.else, !dbg !5310

if.then10:                                        ; preds = %if.end
  %21 = load ptr, ptr %subscription, align 8, !dbg !5311
  %users11 = getelementptr inbounds %struct.mmu_notifier, ptr %21, i32 0, i32 4, !dbg !5312
  %22 = load i32, ptr %users11, align 8, !dbg !5313
  %inc = add i32 %22, 1, !dbg !5313
  store i32 %inc, ptr %users11, align 8, !dbg !5313
  br label %if.end12, !dbg !5311

if.else:                                          ; preds = %if.end
  %call = call ptr @ERR_PTR(i64 noundef -75) #17, !dbg !5314
  store ptr %call, ptr %subscription, align 8, !dbg !5315
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then10
  %23 = load ptr, ptr %mm.addr, align 8, !dbg !5316
  %24 = getelementptr inbounds %struct.mm_struct, ptr %23, i32 0, i32 0, !dbg !5317
  %notifier_subscriptions13 = getelementptr inbounds %struct.anon.13, ptr %24, i32 0, i32 50, !dbg !5317
  %25 = load ptr, ptr %notifier_subscriptions13, align 16, !dbg !5317
  %lock14 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %25, i32 0, i32 2, !dbg !5318
  call void @spin_unlock(ptr noundef %lock14) #17, !dbg !5319
  %26 = load ptr, ptr %subscription, align 8, !dbg !5320
  store ptr %26, ptr %retval, align 8, !dbg !5321
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5321

for.inc:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr15) #16, !dbg !5322
  call void @llvm.dbg.declare(metadata ptr %____ptr15, metadata !5276, metadata !DIExpression()), !dbg !5322
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu322) #16, !dbg !5323
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu322, metadata !5279, metadata !DIExpression()), !dbg !5323
  br label %do.body16, !dbg !5324

do.body16:                                        ; preds = %for.inc
  br label %do.cond17, !dbg !5326

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !5326

do.end18:                                         ; preds = %do.cond17
  %27 = load ptr, ptr %subscription, align 8, !dbg !5324
  %hlist = getelementptr inbounds %struct.mmu_notifier, ptr %27, i32 0, i32 0, !dbg !5324
  %next = getelementptr inbounds %struct.hlist_node, ptr %hlist, i32 0, i32 0, !dbg !5324
  %28 = load volatile ptr, ptr %next, align 8, !dbg !5324
  store ptr %28, ptr %tmp19, align 8, !dbg !5326
  %29 = load ptr, ptr %tmp19, align 8, !dbg !5324
  store ptr %29, ptr %__UNIQUE_ID_rcu322, align 8, !dbg !5323
  %30 = load ptr, ptr %__UNIQUE_ID_rcu322, align 8, !dbg !5323
  store ptr %30, ptr %tmp20, align 8, !dbg !5323
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu322) #16, !dbg !5322
  %31 = load ptr, ptr %tmp20, align 8, !dbg !5323
  store ptr %31, ptr %____ptr15, align 8, !dbg !5322
  %32 = load ptr, ptr %____ptr15, align 8, !dbg !5322
  %tobool22 = icmp ne ptr %32, null, !dbg !5322
  br i1 %tobool22, label %cond.true23, label %cond.false27, !dbg !5322

cond.true23:                                      ; preds = %do.end18
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr24) #16, !dbg !5328
  call void @llvm.dbg.declare(metadata ptr %__mptr24, metadata !5281, metadata !DIExpression()), !dbg !5328
  %33 = load ptr, ptr %____ptr15, align 8, !dbg !5328
  store ptr %33, ptr %__mptr24, align 8, !dbg !5328
  %34 = load ptr, ptr %__mptr24, align 8, !dbg !5328
  %add.ptr26 = getelementptr i8, ptr %34, i64 0, !dbg !5328
  store ptr %add.ptr26, ptr %tmp25, align 8, !dbg !5328
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr24) #16, !dbg !5322
  %35 = load ptr, ptr %tmp25, align 8, !dbg !5328
  br label %cond.end28, !dbg !5322

cond.false27:                                     ; preds = %do.end18
  br label %cond.end28, !dbg !5322

cond.end28:                                       ; preds = %cond.false27, %cond.true23
  %cond29 = phi ptr [ %35, %cond.true23 ], [ null, %cond.false27 ], !dbg !5322
  store ptr %cond29, ptr %tmp21, align 8, !dbg !5322
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr15) #16, !dbg !5299
  %36 = load ptr, ptr %tmp21, align 8, !dbg !5322
  store ptr %36, ptr %subscription, align 8, !dbg !5299
  br label %for.cond, !dbg !5299, !llvm.loop !5329

for.end:                                          ; preds = %for.cond
  %37 = load ptr, ptr %mm.addr, align 8, !dbg !5331
  %38 = getelementptr inbounds %struct.mm_struct, ptr %37, i32 0, i32 0, !dbg !5332
  %notifier_subscriptions30 = getelementptr inbounds %struct.anon.13, ptr %38, i32 0, i32 50, !dbg !5332
  %39 = load ptr, ptr %notifier_subscriptions30, align 16, !dbg !5332
  %lock31 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %39, i32 0, i32 2, !dbg !5333
  call void @spin_unlock(ptr noundef %lock31) #17, !dbg !5334
  store ptr null, ptr %retval, align 8, !dbg !5335
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5335

cleanup:                                          ; preds = %for.end, %if.end12
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscription) #16, !dbg !5336
  %40 = load ptr, ptr %retval, align 8, !dbg !5336
  ret ptr %40, !dbg !5336
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #5 align 16 !dbg !5337 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5342, metadata !DIExpression()), !dbg !5343
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5344
  %1 = ptrtoint ptr %0 to i64, !dbg !5344
  %2 = inttoptr i64 %1 to ptr, !dbg !5344
  %3 = ptrtoint ptr %2 to i64, !dbg !5344
  %cmp = icmp uge i64 %3, -4095, !dbg !5344
  %lnot = xor i1 %cmp, true, !dbg !5344
  %lnot1 = xor i1 %lnot, true, !dbg !5344
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5344
  %conv = sext i32 %lnot.ext to i64, !dbg !5344
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5344
  %tobool = icmp ne i64 %expval, 0, !dbg !5344
  ret i1 %tobool, !dbg !5345
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #5 align 16 !dbg !5346 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5350, metadata !DIExpression()), !dbg !5351
  %0 = load i64, ptr %error.addr, align 8, !dbg !5352
  %1 = inttoptr i64 %0 to ptr, !dbg !5353
  ret ptr %1, !dbg !5354
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__mmu_notifier_subscriptions_destroy(ptr noundef %mm) #0 align 16 !dbg !5355 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5357, metadata !DIExpression()), !dbg !5358
  br label %do.body, !dbg !5359

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !5360
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !5360
  %notifier_subscriptions = getelementptr inbounds %struct.anon.13, ptr %1, i32 0, i32 50, !dbg !5360
  %2 = load ptr, ptr %notifier_subscriptions, align 16, !dbg !5360
  %list = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %2, i32 0, i32 0, !dbg !5360
  %call = call i32 @hlist_empty(ptr noundef %list) #17, !dbg !5360
  %tobool = icmp ne i32 %call, 0, !dbg !5360
  %lnot = xor i1 %tobool, true, !dbg !5360
  %lnot1 = xor i1 %lnot, true, !dbg !5360
  %lnot2 = xor i1 %lnot1, true, !dbg !5360
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5360
  %conv = sext i32 %lnot.ext to i64, !dbg !5360
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5360
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5360
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5363

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !5360

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !5364

do.body5:                                         ; preds = %do.body4
  br label %do.end, !dbg !5366

do.end:                                           ; preds = %do.body5
  br label %do.body6, !dbg !5364

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 797, i32 0, i64 12) #16, !dbg !5368, !srcloc !5370
  br label %do.end7, !dbg !5368

do.end7:                                          ; preds = %do.body6
  unreachable, !dbg !5364

do.end8:                                          ; No predecessors!
  br label %if.end, !dbg !5364

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.end9, !dbg !5363

do.end9:                                          ; preds = %if.end
  %3 = load ptr, ptr %mm.addr, align 8, !dbg !5371
  %4 = getelementptr inbounds %struct.mm_struct, ptr %3, i32 0, i32 0, !dbg !5372
  %notifier_subscriptions10 = getelementptr inbounds %struct.anon.13, ptr %4, i32 0, i32 50, !dbg !5372
  %5 = load ptr, ptr %notifier_subscriptions10, align 16, !dbg !5372
  call void @kfree(ptr noundef %5) #17, !dbg !5373
  %6 = load ptr, ptr %mm.addr, align 8, !dbg !5374
  %7 = getelementptr inbounds %struct.mm_struct, ptr %6, i32 0, i32 0, !dbg !5375
  %notifier_subscriptions11 = getelementptr inbounds %struct.anon.13, ptr %7, i32 0, i32 50, !dbg !5375
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %notifier_subscriptions11, align 16, !dbg !5376
  ret void, !dbg !5377
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mmu_notifier_unregister(ptr noundef %subscription, ptr noundef %mm) #0 align 16 !dbg !5378 {
entry:
  %subscription.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %id = alloca i32, align 4
  store ptr %subscription, ptr %subscription.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %subscription.addr, metadata !5380, metadata !DIExpression()), !dbg !5385
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5381, metadata !DIExpression()), !dbg !5386
  br label %do.body, !dbg !5387

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !5388
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !5388
  %2 = getelementptr inbounds %struct.anon.13, ptr %1, i32 0, i32 0, !dbg !5388
  %mm_count = getelementptr inbounds %struct.anon.14, ptr %2, i32 0, i32 0, !dbg !5388
  %call = call i32 @atomic_read(ptr noundef %mm_count) #17, !dbg !5388
  %cmp = icmp sle i32 %call, 0, !dbg !5388
  %lnot = xor i1 %cmp, true, !dbg !5388
  %lnot1 = xor i1 %lnot, true, !dbg !5388
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5388
  %conv = sext i32 %lnot.ext to i64, !dbg !5388
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5388
  %tobool = icmp ne i64 %expval, 0, !dbg !5388
  br i1 %tobool, label %if.then, label %if.end, !dbg !5391

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !5388

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !5392

do.body3:                                         ; preds = %do.body2
  br label %do.end, !dbg !5394

do.end:                                           ; preds = %do.body3
  br label %do.body4, !dbg !5392

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 815, i32 0, i64 12) #16, !dbg !5396, !srcloc !5398
  br label %do.end5, !dbg !5396

do.end5:                                          ; preds = %do.body4
  unreachable, !dbg !5392

do.end6:                                          ; No predecessors!
  br label %if.end, !dbg !5392

if.end:                                           ; preds = %do.end6, %do.body
  br label %do.end7, !dbg !5391

do.end7:                                          ; preds = %if.end
  %3 = load ptr, ptr %subscription.addr, align 8, !dbg !5399
  %hlist = getelementptr inbounds %struct.mmu_notifier, ptr %3, i32 0, i32 0, !dbg !5400
  %call8 = call i32 @hlist_unhashed(ptr noundef %hlist) #17, !dbg !5401
  %tobool9 = icmp ne i32 %call8, 0, !dbg !5401
  br i1 %tobool9, label %if.end20, label %if.then10, !dbg !5402

if.then10:                                        ; preds = %do.end7
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #16, !dbg !5403
  call void @llvm.dbg.declare(metadata ptr %id, metadata !5382, metadata !DIExpression()), !dbg !5404
  %call11 = call i32 @srcu_read_lock(ptr noundef @srcu) #17, !dbg !5405
  store i32 %call11, ptr %id, align 4, !dbg !5406
  %4 = load ptr, ptr %subscription.addr, align 8, !dbg !5407
  %ops = getelementptr inbounds %struct.mmu_notifier, ptr %4, i32 0, i32 1, !dbg !5409
  %5 = load ptr, ptr %ops, align 8, !dbg !5409
  %release = getelementptr inbounds %struct.mmu_notifier_ops, ptr %5, i32 0, i32 0, !dbg !5410
  %6 = load ptr, ptr %release, align 8, !dbg !5410
  %tobool12 = icmp ne ptr %6, null, !dbg !5407
  br i1 %tobool12, label %if.then13, label %if.end16, !dbg !5411

if.then13:                                        ; preds = %if.then10
  %7 = load ptr, ptr %subscription.addr, align 8, !dbg !5412
  %ops14 = getelementptr inbounds %struct.mmu_notifier, ptr %7, i32 0, i32 1, !dbg !5413
  %8 = load ptr, ptr %ops14, align 8, !dbg !5413
  %release15 = getelementptr inbounds %struct.mmu_notifier_ops, ptr %8, i32 0, i32 0, !dbg !5414
  %9 = load ptr, ptr %release15, align 8, !dbg !5414
  %10 = load ptr, ptr %subscription.addr, align 8, !dbg !5415
  %11 = load ptr, ptr %mm.addr, align 8, !dbg !5416
  call void %9(ptr noundef %10, ptr noundef %11) #17, !dbg !5412
  br label %if.end16, !dbg !5412

if.end16:                                         ; preds = %if.then13, %if.then10
  %12 = load i32, ptr %id, align 4, !dbg !5417
  call void @srcu_read_unlock(ptr noundef @srcu, i32 noundef %12) #17, !dbg !5418
  %13 = load ptr, ptr %mm.addr, align 8, !dbg !5419
  %14 = getelementptr inbounds %struct.mm_struct, ptr %13, i32 0, i32 0, !dbg !5420
  %notifier_subscriptions = getelementptr inbounds %struct.anon.13, ptr %14, i32 0, i32 50, !dbg !5420
  %15 = load ptr, ptr %notifier_subscriptions, align 16, !dbg !5420
  %lock = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %15, i32 0, i32 2, !dbg !5421
  call void @spin_lock(ptr noundef %lock) #17, !dbg !5422
  %16 = load ptr, ptr %subscription.addr, align 8, !dbg !5423
  %hlist17 = getelementptr inbounds %struct.mmu_notifier, ptr %16, i32 0, i32 0, !dbg !5424
  call void @hlist_del_init_rcu(ptr noundef %hlist17) #17, !dbg !5425
  %17 = load ptr, ptr %mm.addr, align 8, !dbg !5426
  %18 = getelementptr inbounds %struct.mm_struct, ptr %17, i32 0, i32 0, !dbg !5427
  %notifier_subscriptions18 = getelementptr inbounds %struct.anon.13, ptr %18, i32 0, i32 50, !dbg !5427
  %19 = load ptr, ptr %notifier_subscriptions18, align 16, !dbg !5427
  %lock19 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %19, i32 0, i32 2, !dbg !5428
  call void @spin_unlock(ptr noundef %lock19) #17, !dbg !5429
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #16, !dbg !5430
  br label %if.end20, !dbg !5431

if.end20:                                         ; preds = %if.end16, %do.end7
  call void @synchronize_srcu(ptr noundef @srcu) #17, !dbg !5432
  br label %do.body21, !dbg !5433

do.body21:                                        ; preds = %if.end20
  %20 = load ptr, ptr %mm.addr, align 8, !dbg !5434
  %21 = getelementptr inbounds %struct.mm_struct, ptr %20, i32 0, i32 0, !dbg !5434
  %22 = getelementptr inbounds %struct.anon.13, ptr %21, i32 0, i32 0, !dbg !5434
  %mm_count22 = getelementptr inbounds %struct.anon.14, ptr %22, i32 0, i32 0, !dbg !5434
  %call23 = call i32 @atomic_read(ptr noundef %mm_count22) #17, !dbg !5434
  %cmp24 = icmp sle i32 %call23, 0, !dbg !5434
  %lnot26 = xor i1 %cmp24, true, !dbg !5434
  %lnot28 = xor i1 %lnot26, true, !dbg !5434
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !5434
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !5434
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !5434
  %tobool32 = icmp ne i64 %expval31, 0, !dbg !5434
  br i1 %tobool32, label %if.then33, label %if.end40, !dbg !5437

if.then33:                                        ; preds = %do.body21
  br label %do.body34, !dbg !5434

do.body34:                                        ; preds = %if.then33
  br label %do.body35, !dbg !5438

do.body35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !5440

do.end36:                                         ; preds = %do.body35
  br label %do.body37, !dbg !5438

do.body37:                                        ; preds = %do.end36
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 848, i32 0, i64 12) #16, !dbg !5442, !srcloc !5444
  br label %do.end38, !dbg !5442

do.end38:                                         ; preds = %do.body37
  unreachable, !dbg !5438

do.end39:                                         ; No predecessors!
  br label %if.end40, !dbg !5438

if.end40:                                         ; preds = %do.end39, %do.body21
  br label %do.end41, !dbg !5437

do.end41:                                         ; preds = %if.end40
  %23 = load ptr, ptr %mm.addr, align 8, !dbg !5445
  call void @mmdrop(ptr noundef %23) #17, !dbg !5446
  ret void, !dbg !5447
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hlist_unhashed(ptr noundef %h) #5 align 16 !dbg !5448 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !5454, metadata !DIExpression()), !dbg !5455
  %0 = load ptr, ptr %h.addr, align 8, !dbg !5456
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1, !dbg !5457
  %1 = load ptr, ptr %pprev, align 8, !dbg !5457
  %tobool = icmp ne ptr %1, null, !dbg !5458
  %lnot = xor i1 %tobool, true, !dbg !5458
  %lnot.ext = zext i1 %lnot to i32, !dbg !5458
  ret i32 %lnot.ext, !dbg !5459
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hlist_del_init_rcu(ptr noundef %n) #5 align 16 !dbg !5460 {
entry:
  %n.addr = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5464, metadata !DIExpression()), !dbg !5465
  %0 = load ptr, ptr %n.addr, align 8, !dbg !5466
  %call = call i32 @hlist_unhashed(ptr noundef %0) #17, !dbg !5468
  %tobool = icmp ne i32 %call, 0, !dbg !5468
  br i1 %tobool, label %if.end, label %if.then, !dbg !5469

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %n.addr, align 8, !dbg !5470
  call void @__hlist_del(ptr noundef %1) #17, !dbg !5472
  br label %do.body, !dbg !5473

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !5474

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5476

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5474

do.body2:                                         ; preds = %do.end
  %2 = load ptr, ptr %n.addr, align 8, !dbg !5478
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1, !dbg !5478
  store volatile ptr null, ptr %pprev, align 8, !dbg !5478
  br label %do.end3, !dbg !5478

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5474

do.end4:                                          ; preds = %do.end3
  br label %if.end, !dbg !5480

if.end:                                           ; preds = %do.end4, %entry
  ret void, !dbg !5481
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5482 dso_local void @synchronize_srcu(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmdrop(ptr noundef %mm) #5 align 16 !dbg !5485 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5487, metadata !DIExpression()), !dbg !5488
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !5489
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !5489
  %2 = getelementptr inbounds %struct.anon.13, ptr %1, i32 0, i32 0, !dbg !5489
  %mm_count = getelementptr inbounds %struct.anon.14, ptr %2, i32 0, i32 0, !dbg !5489
  %call = call zeroext i1 @atomic_dec_and_test(ptr noundef %mm_count) #17, !dbg !5489
  %lnot = xor i1 %call, true, !dbg !5489
  %lnot1 = xor i1 %lnot, true, !dbg !5489
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5489
  %conv = sext i32 %lnot.ext to i64, !dbg !5489
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5489
  %tobool = icmp ne i64 %expval, 0, !dbg !5489
  br i1 %tobool, label %if.then, label %if.end, !dbg !5491

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %mm.addr, align 8, !dbg !5492
  call void @__mmdrop(ptr noundef %3) #17, !dbg !5493
  br label %if.end, !dbg !5493

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5494
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mmu_notifier_put(ptr noundef %subscription) #0 align 16 !dbg !5495 {
entry:
  %subscription.addr = alloca ptr, align 8
  %mm = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %subscription, ptr %subscription.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %subscription.addr, metadata !5497, metadata !DIExpression()), !dbg !5506
  call void @llvm.lifetime.start.p0(i64 8, ptr %mm) #16, !dbg !5507
  call void @llvm.dbg.declare(metadata ptr %mm, metadata !5498, metadata !DIExpression()), !dbg !5508
  %0 = load ptr, ptr %subscription.addr, align 8, !dbg !5509
  %mm1 = getelementptr inbounds %struct.mmu_notifier, ptr %0, i32 0, i32 2, !dbg !5510
  %1 = load ptr, ptr %mm1, align 8, !dbg !5510
  store ptr %1, ptr %mm, align 8, !dbg !5508
  %2 = load ptr, ptr %mm, align 8, !dbg !5511
  %3 = getelementptr inbounds %struct.mm_struct, ptr %2, i32 0, i32 0, !dbg !5512
  %notifier_subscriptions = getelementptr inbounds %struct.anon.13, ptr %3, i32 0, i32 50, !dbg !5512
  %4 = load ptr, ptr %notifier_subscriptions, align 16, !dbg !5512
  %lock = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %4, i32 0, i32 2, !dbg !5513
  call void @spin_lock(ptr noundef %lock) #17, !dbg !5514
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5515
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5499, metadata !DIExpression()), !dbg !5515
  %5 = load ptr, ptr %subscription.addr, align 8, !dbg !5515
  %users = getelementptr inbounds %struct.mmu_notifier, ptr %5, i32 0, i32 4, !dbg !5515
  %6 = load i32, ptr %users, align 8, !dbg !5515
  %tobool = icmp ne i32 %6, 0, !dbg !5515
  %lnot = xor i1 %tobool, true, !dbg !5515
  %lnot2 = xor i1 %lnot, true, !dbg !5515
  %lnot3 = xor i1 %lnot2, true, !dbg !5515
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5515
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5515
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !5516
  %tobool4 = icmp ne i32 %7, 0, !dbg !5516
  %lnot5 = xor i1 %tobool4, true, !dbg !5516
  %lnot7 = xor i1 %lnot5, true, !dbg !5516
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5516
  %conv = sext i32 %lnot.ext8 to i64, !dbg !5516
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5516
  %tobool9 = icmp ne i64 %expval, 0, !dbg !5516
  br i1 %tobool9, label %if.then, label %if.end, !dbg !5515

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5516

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !5517
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5502, metadata !DIExpression()), !dbg !5517
  store i32 2305, ptr %__flags, align 4, !dbg !5517
  br label %do.body10, !dbg !5517

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !5518

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !5518

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !5517

do.body11:                                        ; preds = %do.end
  %8 = load i32, ptr %__flags, align 4, !dbg !5520
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 892, i32 %8, i64 12) #16, !dbg !5520, !srcloc !5522
  br label %do.cond12, !dbg !5520

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5520

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !5517

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !5523

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5523

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !5516
  br label %do.cond17, !dbg !5517

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !5517

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !5517

if.end:                                           ; preds = %do.end18, %entry
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !5515
  %tobool19 = icmp ne i32 %9, 0, !dbg !5515
  %lnot20 = xor i1 %tobool19, true, !dbg !5515
  %lnot22 = xor i1 %lnot20, true, !dbg !5515
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5515
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5515
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !5515
  store i64 %expval25, ptr %tmp, align 8, !dbg !5516
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5525
  %10 = load i64, ptr %tmp, align 8, !dbg !5515
  %tobool26 = icmp ne i64 %10, 0, !dbg !5525
  br i1 %tobool26, label %if.then29, label %lor.lhs.false, !dbg !5526

lor.lhs.false:                                    ; preds = %if.end
  %11 = load ptr, ptr %subscription.addr, align 8, !dbg !5527
  %users27 = getelementptr inbounds %struct.mmu_notifier, ptr %11, i32 0, i32 4, !dbg !5528
  %12 = load i32, ptr %users27, align 8, !dbg !5529
  %dec = add i32 %12, -1, !dbg !5529
  store i32 %dec, ptr %users27, align 8, !dbg !5529
  %tobool28 = icmp ne i32 %dec, 0, !dbg !5529
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !5530

if.then29:                                        ; preds = %lor.lhs.false, %if.end
  br label %out_unlock, !dbg !5531

if.end30:                                         ; preds = %lor.lhs.false
  %13 = load ptr, ptr %subscription.addr, align 8, !dbg !5532
  %hlist = getelementptr inbounds %struct.mmu_notifier, ptr %13, i32 0, i32 0, !dbg !5533
  call void @hlist_del_init_rcu(ptr noundef %hlist) #17, !dbg !5534
  %14 = load ptr, ptr %mm, align 8, !dbg !5535
  %15 = getelementptr inbounds %struct.mm_struct, ptr %14, i32 0, i32 0, !dbg !5536
  %notifier_subscriptions31 = getelementptr inbounds %struct.anon.13, ptr %15, i32 0, i32 50, !dbg !5536
  %16 = load ptr, ptr %notifier_subscriptions31, align 16, !dbg !5536
  %lock32 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %16, i32 0, i32 2, !dbg !5537
  call void @spin_unlock(ptr noundef %lock32) #17, !dbg !5538
  %17 = load ptr, ptr %subscription.addr, align 8, !dbg !5539
  %rcu = getelementptr inbounds %struct.mmu_notifier, ptr %17, i32 0, i32 3, !dbg !5540
  call void @call_srcu(ptr noundef @srcu, ptr noundef %rcu, ptr noundef @mmu_notifier_free_rcu) #17, !dbg !5541
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5542

out_unlock:                                       ; preds = %if.then29
  call void @llvm.dbg.label(metadata !5505), !dbg !5543
  %18 = load ptr, ptr %mm, align 8, !dbg !5544
  %19 = getelementptr inbounds %struct.mm_struct, ptr %18, i32 0, i32 0, !dbg !5545
  %notifier_subscriptions33 = getelementptr inbounds %struct.anon.13, ptr %19, i32 0, i32 50, !dbg !5545
  %20 = load ptr, ptr %notifier_subscriptions33, align 16, !dbg !5545
  %lock34 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %20, i32 0, i32 2, !dbg !5546
  call void @spin_unlock(ptr noundef %lock34) #17, !dbg !5547
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5548
  br label %cleanup, !dbg !5548

cleanup:                                          ; preds = %out_unlock, %if.end30
  call void @llvm.lifetime.end.p0(i64 8, ptr %mm) #16, !dbg !5548
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5548

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5549 dso_local void @call_srcu(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmu_notifier_free_rcu(ptr noundef %rcu) #0 align 16 !dbg !5552 {
entry:
  %rcu.addr = alloca ptr, align 8
  %subscription = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %mm = alloca ptr, align 8
  store ptr %rcu, ptr %rcu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rcu.addr, metadata !5554, metadata !DIExpression()), !dbg !5559
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscription) #16, !dbg !5560
  call void @llvm.dbg.declare(metadata ptr %subscription, metadata !5555, metadata !DIExpression()), !dbg !5561
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5562
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5556, metadata !DIExpression()), !dbg !5562
  %0 = load ptr, ptr %rcu.addr, align 8, !dbg !5562
  store ptr %0, ptr %__mptr, align 8, !dbg !5562
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5562
  %add.ptr = getelementptr i8, ptr %1, i64 -32, !dbg !5562
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5562
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5563
  %2 = load ptr, ptr %tmp, align 8, !dbg !5562
  store ptr %2, ptr %subscription, align 8, !dbg !5561
  call void @llvm.lifetime.start.p0(i64 8, ptr %mm) #16, !dbg !5564
  call void @llvm.dbg.declare(metadata ptr %mm, metadata !5558, metadata !DIExpression()), !dbg !5565
  %3 = load ptr, ptr %subscription, align 8, !dbg !5566
  %mm1 = getelementptr inbounds %struct.mmu_notifier, ptr %3, i32 0, i32 2, !dbg !5567
  %4 = load ptr, ptr %mm1, align 8, !dbg !5567
  store ptr %4, ptr %mm, align 8, !dbg !5565
  %5 = load ptr, ptr %subscription, align 8, !dbg !5568
  %ops = getelementptr inbounds %struct.mmu_notifier, ptr %5, i32 0, i32 1, !dbg !5569
  %6 = load ptr, ptr %ops, align 8, !dbg !5569
  %free_notifier = getelementptr inbounds %struct.mmu_notifier_ops, ptr %6, i32 0, i32 9, !dbg !5570
  %7 = load ptr, ptr %free_notifier, align 8, !dbg !5570
  %8 = load ptr, ptr %subscription, align 8, !dbg !5571
  call void %7(ptr noundef %8) #17, !dbg !5568
  %9 = load ptr, ptr %mm, align 8, !dbg !5572
  call void @mmdrop(ptr noundef %9) #17, !dbg !5573
  call void @llvm.lifetime.end.p0(i64 8, ptr %mm) #16, !dbg !5574
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscription) #16, !dbg !5574
  ret void, !dbg !5574
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mmu_interval_notifier_insert(ptr noundef %interval_sub, ptr noundef %mm, i64 noundef %start, i64 noundef %length, ptr noundef %ops) #0 align 16 !dbg !5575 {
entry:
  %retval = alloca i32, align 4
  %interval_sub.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %length.addr = alloca i64, align 8
  %ops.addr = alloca ptr, align 8
  %subscriptions = alloca ptr, align 8
  %ret = alloca i32, align 4
  %___p1 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %interval_sub, ptr %interval_sub.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %interval_sub.addr, metadata !5579, metadata !DIExpression()), !dbg !5588
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5580, metadata !DIExpression()), !dbg !5589
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5581, metadata !DIExpression()), !dbg !5590
  store i64 %length, ptr %length.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !5582, metadata !DIExpression()), !dbg !5591
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5583, metadata !DIExpression()), !dbg !5592
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscriptions) #16, !dbg !5593
  call void @llvm.dbg.declare(metadata ptr %subscriptions, metadata !5584, metadata !DIExpression()), !dbg !5594
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !5595
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5585, metadata !DIExpression()), !dbg !5596
  br label %do.body, !dbg !5597

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5598

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5598

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p1) #16, !dbg !5600
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !5586, metadata !DIExpression()), !dbg !5600
  br label %do.body1, !dbg !5601

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !5603

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !5603

do.end3:                                          ; preds = %do.cond2
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !5601
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !5601
  %notifier_subscriptions = getelementptr inbounds %struct.anon.13, ptr %1, i32 0, i32 50, !dbg !5601
  %2 = load volatile ptr, ptr %notifier_subscriptions, align 16, !dbg !5601
  store ptr %2, ptr %tmp, align 8, !dbg !5603
  %3 = load ptr, ptr %tmp, align 8, !dbg !5601
  store ptr %3, ptr %___p1, align 8, !dbg !5600
  br label %do.body4, !dbg !5600

do.body4:                                         ; preds = %do.end3
  br label %do.cond5, !dbg !5605

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5605

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !5600, !srcloc !5607
  %4 = load ptr, ptr %___p1, align 8, !dbg !5600
  store ptr %4, ptr %tmp7, align 8, !dbg !5600
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p1) #16, !dbg !5608
  %5 = load ptr, ptr %tmp7, align 8, !dbg !5600
  store ptr %5, ptr %subscriptions, align 8, !dbg !5609
  %6 = load ptr, ptr %subscriptions, align 8, !dbg !5610
  %tobool = icmp ne ptr %6, null, !dbg !5610
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5612

lor.lhs.false:                                    ; preds = %do.end6
  %7 = load ptr, ptr %subscriptions, align 8, !dbg !5613
  %has_itree = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %7, i32 0, i32 1, !dbg !5614
  %8 = load i8, ptr %has_itree, align 8, !dbg !5614, !range !3747, !noundef !193
  %tobool8 = trunc i8 %8 to i1, !dbg !5614
  br i1 %tobool8, label %if.end12, label %if.then, !dbg !5615

if.then:                                          ; preds = %lor.lhs.false, %do.end6
  %9 = load ptr, ptr %mm.addr, align 8, !dbg !5616
  %call = call i32 @mmu_notifier_register(ptr noundef null, ptr noundef %9) #17, !dbg !5618
  store i32 %call, ptr %ret, align 4, !dbg !5619
  %10 = load i32, ptr %ret, align 4, !dbg !5620
  %tobool9 = icmp ne i32 %10, 0, !dbg !5620
  br i1 %tobool9, label %if.then10, label %if.end, !dbg !5622

if.then10:                                        ; preds = %if.then
  %11 = load i32, ptr %ret, align 4, !dbg !5623
  store i32 %11, ptr %retval, align 4, !dbg !5624
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5624

if.end:                                           ; preds = %if.then
  %12 = load ptr, ptr %mm.addr, align 8, !dbg !5625
  %13 = getelementptr inbounds %struct.mm_struct, ptr %12, i32 0, i32 0, !dbg !5626
  %notifier_subscriptions11 = getelementptr inbounds %struct.anon.13, ptr %13, i32 0, i32 50, !dbg !5626
  %14 = load ptr, ptr %notifier_subscriptions11, align 16, !dbg !5626
  store ptr %14, ptr %subscriptions, align 8, !dbg !5627
  br label %if.end12, !dbg !5628

if.end12:                                         ; preds = %if.end, %lor.lhs.false
  %15 = load ptr, ptr %interval_sub.addr, align 8, !dbg !5629
  %16 = load ptr, ptr %mm.addr, align 8, !dbg !5630
  %17 = load ptr, ptr %subscriptions, align 8, !dbg !5631
  %18 = load i64, ptr %start.addr, align 8, !dbg !5632
  %19 = load i64, ptr %length.addr, align 8, !dbg !5633
  %20 = load ptr, ptr %ops.addr, align 8, !dbg !5634
  %call13 = call i32 @__mmu_interval_notifier_insert(ptr noundef %15, ptr noundef %16, ptr noundef %17, i64 noundef %18, i64 noundef %19, ptr noundef %20) #17, !dbg !5635
  store i32 %call13, ptr %retval, align 4, !dbg !5636
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5636

cleanup:                                          ; preds = %if.end12, %if.then10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !5637
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscriptions) #16, !dbg !5637
  %21 = load i32, ptr %retval, align 4, !dbg !5637
  ret i32 %21, !dbg !5637
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__mmu_interval_notifier_insert(ptr noundef %interval_sub, ptr noundef %mm, ptr noundef %subscriptions, i64 noundef %start, i64 noundef %length, ptr noundef %ops) #0 align 16 !dbg !5638 {
entry:
  %retval = alloca i32, align 4
  %interval_sub.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %subscriptions.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %length.addr = alloca i64, align 8
  %ops.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on46 = alloca i32, align 4
  %__flags62 = alloca i32, align 4
  %tmp75 = alloca i64, align 8
  store ptr %interval_sub, ptr %interval_sub.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %interval_sub.addr, metadata !5642, metadata !DIExpression()), !dbg !5661
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5643, metadata !DIExpression()), !dbg !5662
  store ptr %subscriptions, ptr %subscriptions.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %subscriptions.addr, metadata !5644, metadata !DIExpression()), !dbg !5663
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5645, metadata !DIExpression()), !dbg !5664
  store i64 %length, ptr %length.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !5646, metadata !DIExpression()), !dbg !5665
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5647, metadata !DIExpression()), !dbg !5666
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !5667
  %1 = load ptr, ptr %interval_sub.addr, align 8, !dbg !5668
  %mm1 = getelementptr inbounds %struct.mmu_interval_notifier, ptr %1, i32 0, i32 2, !dbg !5669
  store ptr %0, ptr %mm1, align 8, !dbg !5670
  %2 = load ptr, ptr %ops.addr, align 8, !dbg !5671
  %3 = load ptr, ptr %interval_sub.addr, align 8, !dbg !5672
  %ops2 = getelementptr inbounds %struct.mmu_interval_notifier, ptr %3, i32 0, i32 1, !dbg !5673
  store ptr %2, ptr %ops2, align 8, !dbg !5674
  %4 = load ptr, ptr %interval_sub.addr, align 8, !dbg !5675
  %interval_tree = getelementptr inbounds %struct.mmu_interval_notifier, ptr %4, i32 0, i32 0, !dbg !5675
  %rb = getelementptr inbounds %struct.interval_tree_node, ptr %interval_tree, i32 0, i32 0, !dbg !5675
  %5 = ptrtoint ptr %rb to i64, !dbg !5675
  %6 = load ptr, ptr %interval_sub.addr, align 8, !dbg !5675
  %interval_tree3 = getelementptr inbounds %struct.mmu_interval_notifier, ptr %6, i32 0, i32 0, !dbg !5675
  %rb4 = getelementptr inbounds %struct.interval_tree_node, ptr %interval_tree3, i32 0, i32 0, !dbg !5675
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %rb4, i32 0, i32 0, !dbg !5675
  store i64 %5, ptr %__rb_parent_color, align 8, !dbg !5675
  %7 = load i64, ptr %start.addr, align 8, !dbg !5676
  %8 = load ptr, ptr %interval_sub.addr, align 8, !dbg !5677
  %interval_tree5 = getelementptr inbounds %struct.mmu_interval_notifier, ptr %8, i32 0, i32 0, !dbg !5678
  %start6 = getelementptr inbounds %struct.interval_tree_node, ptr %interval_tree5, i32 0, i32 1, !dbg !5679
  store i64 %7, ptr %start6, align 8, !dbg !5680
  %9 = load i64, ptr %length.addr, align 8, !dbg !5681
  %cmp = icmp eq i64 %9, 0, !dbg !5683
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5684

lor.lhs.false:                                    ; preds = %entry
  %10 = load i64, ptr %start.addr, align 8, !dbg !5685
  %11 = load i64, ptr %length.addr, align 8, !dbg !5685
  %sub = sub i64 %11, 1, !dbg !5685
  %12 = load ptr, ptr %interval_sub.addr, align 8, !dbg !5685
  %interval_tree7 = getelementptr inbounds %struct.mmu_interval_notifier, ptr %12, i32 0, i32 0, !dbg !5685
  %last = getelementptr inbounds %struct.interval_tree_node, ptr %interval_tree7, i32 0, i32 2, !dbg !5685
  %13 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %10, i64 %sub), !dbg !5685
  %14 = extractvalue { i64, i1 } %13, 1, !dbg !5685
  %15 = extractvalue { i64, i1 } %13, 0, !dbg !5685
  store i64 %15, ptr %last, align 8, !dbg !5685
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %14) #17, !dbg !5685
  br i1 %call, label %if.then, label %if.end, !dbg !5686

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -75, ptr %retval, align 4, !dbg !5687
  br label %return, !dbg !5687

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5688
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5648, metadata !DIExpression()), !dbg !5688
  %16 = load ptr, ptr %mm.addr, align 8, !dbg !5688
  %17 = getelementptr inbounds %struct.mm_struct, ptr %16, i32 0, i32 0, !dbg !5688
  %mm_users = getelementptr inbounds %struct.anon.13, ptr %17, i32 0, i32 10, !dbg !5688
  %call8 = call i32 @atomic_read(ptr noundef %mm_users) #17, !dbg !5688
  %cmp9 = icmp sle i32 %call8, 0, !dbg !5688
  %lnot = xor i1 %cmp9, true, !dbg !5688
  %lnot10 = xor i1 %lnot, true, !dbg !5688
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !5688
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5688
  %18 = load i32, ptr %__ret_warn_on, align 4, !dbg !5689
  %tobool = icmp ne i32 %18, 0, !dbg !5689
  %lnot11 = xor i1 %tobool, true, !dbg !5689
  %lnot13 = xor i1 %lnot11, true, !dbg !5689
  %lnot.ext14 = zext i1 %lnot13 to i32, !dbg !5689
  %conv = sext i32 %lnot.ext14 to i64, !dbg !5689
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5689
  %tobool15 = icmp ne i64 %expval, 0, !dbg !5689
  br i1 %tobool15, label %if.then16, label %if.end26, !dbg !5688

if.then16:                                        ; preds = %if.end
  br label %do.body, !dbg !5689

do.body:                                          ; preds = %if.then16
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !5690
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5651, metadata !DIExpression()), !dbg !5690
  store i32 2305, ptr %__flags, align 4, !dbg !5690
  br label %do.body17, !dbg !5690

do.body17:                                        ; preds = %do.body
  br label %do.cond, !dbg !5691

do.cond:                                          ; preds = %do.body17
  br label %do.end, !dbg !5691

do.end:                                           ; preds = %do.cond
  br label %do.body18, !dbg !5690

do.body18:                                        ; preds = %do.end
  %19 = load i32, ptr %__flags, align 4, !dbg !5693
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 924, i32 %19, i64 12) #16, !dbg !5693, !srcloc !5695
  br label %do.cond19, !dbg !5693

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !5693

do.end20:                                         ; preds = %do.cond19
  br label %do.body21, !dbg !5690

do.body21:                                        ; preds = %do.end20
  br label %do.cond22, !dbg !5696

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !5696

do.end23:                                         ; preds = %do.cond22
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !5689
  br label %do.cond24, !dbg !5690

do.cond24:                                        ; preds = %do.end23
  br label %do.end25, !dbg !5690

do.end25:                                         ; preds = %do.cond24
  br label %if.end26, !dbg !5690

if.end26:                                         ; preds = %do.end25, %if.end
  %20 = load i32, ptr %__ret_warn_on, align 4, !dbg !5688
  %tobool27 = icmp ne i32 %20, 0, !dbg !5688
  %lnot28 = xor i1 %tobool27, true, !dbg !5688
  %lnot30 = xor i1 %lnot28, true, !dbg !5688
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !5688
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !5688
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 0), !dbg !5688
  store i64 %expval33, ptr %tmp, align 8, !dbg !5689
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5698
  %21 = load i64, ptr %tmp, align 8, !dbg !5688
  %tobool34 = icmp ne i64 %21, 0, !dbg !5698
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !5699

if.then35:                                        ; preds = %if.end26
  store i32 -22, ptr %retval, align 4, !dbg !5700
  br label %return, !dbg !5700

if.end36:                                         ; preds = %if.end26
  %22 = load ptr, ptr %mm.addr, align 8, !dbg !5701
  call void @mmgrab(ptr noundef %22) #17, !dbg !5702
  %23 = load ptr, ptr %subscriptions.addr, align 8, !dbg !5703
  %lock = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %23, i32 0, i32 2, !dbg !5704
  call void @spin_lock(ptr noundef %lock) #17, !dbg !5705
  %24 = load ptr, ptr %subscriptions.addr, align 8, !dbg !5706
  %active_invalidate_ranges = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %24, i32 0, i32 4, !dbg !5707
  %25 = load i64, ptr %active_invalidate_ranges, align 8, !dbg !5707
  %tobool37 = icmp ne i64 %25, 0, !dbg !5706
  br i1 %tobool37, label %if.then38, label %if.else45, !dbg !5708

if.then38:                                        ; preds = %if.end36
  %26 = load ptr, ptr %subscriptions.addr, align 8, !dbg !5709
  %call39 = call zeroext i1 @mn_itree_is_invalidating(ptr noundef %26) #17, !dbg !5712
  br i1 %call39, label %if.then40, label %if.else, !dbg !5713

if.then40:                                        ; preds = %if.then38
  %27 = load ptr, ptr %interval_sub.addr, align 8, !dbg !5714
  %deferred_item = getelementptr inbounds %struct.mmu_interval_notifier, ptr %27, i32 0, i32 3, !dbg !5715
  %28 = load ptr, ptr %subscriptions.addr, align 8, !dbg !5716
  %deferred_list = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %28, i32 0, i32 7, !dbg !5717
  call void @hlist_add_head(ptr noundef %deferred_item, ptr noundef %deferred_list) #17, !dbg !5718
  br label %if.end42, !dbg !5718

if.else:                                          ; preds = %if.then38
  %29 = load ptr, ptr %subscriptions.addr, align 8, !dbg !5719
  %invalidate_seq = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %29, i32 0, i32 3, !dbg !5721
  %30 = load i64, ptr %invalidate_seq, align 8, !dbg !5722
  %or = or i64 %30, 1, !dbg !5722
  store i64 %or, ptr %invalidate_seq, align 8, !dbg !5722
  %31 = load ptr, ptr %interval_sub.addr, align 8, !dbg !5723
  %interval_tree41 = getelementptr inbounds %struct.mmu_interval_notifier, ptr %31, i32 0, i32 0, !dbg !5724
  %32 = load ptr, ptr %subscriptions.addr, align 8, !dbg !5725
  %itree = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %32, i32 0, i32 5, !dbg !5726
  call void @interval_tree_insert(ptr noundef %interval_tree41, ptr noundef %itree) #17, !dbg !5727
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then40
  %33 = load ptr, ptr %subscriptions.addr, align 8, !dbg !5728
  %invalidate_seq43 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %33, i32 0, i32 3, !dbg !5729
  %34 = load i64, ptr %invalidate_seq43, align 8, !dbg !5729
  %35 = load ptr, ptr %interval_sub.addr, align 8, !dbg !5730
  %invalidate_seq44 = getelementptr inbounds %struct.mmu_interval_notifier, ptr %35, i32 0, i32 4, !dbg !5731
  store i64 %34, ptr %invalidate_seq44, align 8, !dbg !5732
  br label %if.end88, !dbg !5733

if.else45:                                        ; preds = %if.end36
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on46) #16, !dbg !5734
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on46, metadata !5654, metadata !DIExpression()), !dbg !5734
  %36 = load ptr, ptr %subscriptions.addr, align 8, !dbg !5734
  %call47 = call zeroext i1 @mn_itree_is_invalidating(ptr noundef %36) #17, !dbg !5734
  %lnot48 = xor i1 %call47, true, !dbg !5734
  %lnot50 = xor i1 %lnot48, true, !dbg !5734
  %lnot.ext51 = zext i1 %lnot50 to i32, !dbg !5734
  store i32 %lnot.ext51, ptr %__ret_warn_on46, align 4, !dbg !5734
  %37 = load i32, ptr %__ret_warn_on46, align 4, !dbg !5735
  %tobool52 = icmp ne i32 %37, 0, !dbg !5735
  %lnot53 = xor i1 %tobool52, true, !dbg !5735
  %lnot55 = xor i1 %lnot53, true, !dbg !5735
  %lnot.ext56 = zext i1 %lnot55 to i32, !dbg !5735
  %conv57 = sext i32 %lnot.ext56 to i64, !dbg !5735
  %expval58 = call i64 @llvm.expect.i64(i64 %conv57, i64 0), !dbg !5735
  %tobool59 = icmp ne i64 %expval58, 0, !dbg !5735
  br i1 %tobool59, label %if.then60, label %if.end74, !dbg !5734

if.then60:                                        ; preds = %if.else45
  br label %do.body61, !dbg !5735

do.body61:                                        ; preds = %if.then60
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags62) #16, !dbg !5736
  call void @llvm.dbg.declare(metadata ptr %__flags62, metadata !5658, metadata !DIExpression()), !dbg !5736
  store i32 2305, ptr %__flags62, align 4, !dbg !5736
  br label %do.body63, !dbg !5736

do.body63:                                        ; preds = %do.body61
  br label %do.cond64, !dbg !5737

do.cond64:                                        ; preds = %do.body63
  br label %do.end65, !dbg !5737

do.end65:                                         ; preds = %do.cond64
  br label %do.body66, !dbg !5736

do.body66:                                        ; preds = %do.end65
  %38 = load i32, ptr %__flags62, align 4, !dbg !5739
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 955, i32 %38, i64 12) #16, !dbg !5739, !srcloc !5741
  br label %do.cond67, !dbg !5739

do.cond67:                                        ; preds = %do.body66
  br label %do.end68, !dbg !5739

do.end68:                                         ; preds = %do.cond67
  br label %do.body69, !dbg !5736

do.body69:                                        ; preds = %do.end68
  br label %do.cond70, !dbg !5742

do.cond70:                                        ; preds = %do.body69
  br label %do.end71, !dbg !5742

do.end71:                                         ; preds = %do.cond70
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags62) #16, !dbg !5735
  br label %do.cond72, !dbg !5736

do.cond72:                                        ; preds = %do.end71
  br label %do.end73, !dbg !5736

do.end73:                                         ; preds = %do.cond72
  br label %if.end74, !dbg !5736

if.end74:                                         ; preds = %do.end73, %if.else45
  %39 = load i32, ptr %__ret_warn_on46, align 4, !dbg !5734
  %tobool76 = icmp ne i32 %39, 0, !dbg !5734
  %lnot77 = xor i1 %tobool76, true, !dbg !5734
  %lnot79 = xor i1 %lnot77, true, !dbg !5734
  %lnot.ext80 = zext i1 %lnot79 to i32, !dbg !5734
  %conv81 = sext i32 %lnot.ext80 to i64, !dbg !5734
  %expval82 = call i64 @llvm.expect.i64(i64 %conv81, i64 0), !dbg !5734
  store i64 %expval82, ptr %tmp75, align 8, !dbg !5735
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on46) #16, !dbg !5744
  %40 = load i64, ptr %tmp75, align 8, !dbg !5734
  %41 = load ptr, ptr %subscriptions.addr, align 8, !dbg !5745
  %invalidate_seq83 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %41, i32 0, i32 3, !dbg !5746
  %42 = load i64, ptr %invalidate_seq83, align 8, !dbg !5746
  %sub84 = sub i64 %42, 1, !dbg !5747
  %43 = load ptr, ptr %interval_sub.addr, align 8, !dbg !5748
  %invalidate_seq85 = getelementptr inbounds %struct.mmu_interval_notifier, ptr %43, i32 0, i32 4, !dbg !5749
  store i64 %sub84, ptr %invalidate_seq85, align 8, !dbg !5750
  %44 = load ptr, ptr %interval_sub.addr, align 8, !dbg !5751
  %interval_tree86 = getelementptr inbounds %struct.mmu_interval_notifier, ptr %44, i32 0, i32 0, !dbg !5752
  %45 = load ptr, ptr %subscriptions.addr, align 8, !dbg !5753
  %itree87 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %45, i32 0, i32 5, !dbg !5754
  call void @interval_tree_insert(ptr noundef %interval_tree86, ptr noundef %itree87) #17, !dbg !5755
  br label %if.end88

if.end88:                                         ; preds = %if.end74, %if.end42
  %46 = load ptr, ptr %subscriptions.addr, align 8, !dbg !5756
  %lock89 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %46, i32 0, i32 2, !dbg !5757
  call void @spin_unlock(ptr noundef %lock89) #17, !dbg !5758
  store i32 0, ptr %retval, align 4, !dbg !5759
  br label %return, !dbg !5759

return:                                           ; preds = %if.end88, %if.then35, %if.then
  %47 = load i32, ptr %retval, align 4, !dbg !5760
  ret i32 %47, !dbg !5760
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mmu_interval_notifier_insert_locked(ptr noundef %interval_sub, ptr noundef %mm, i64 noundef %start, i64 noundef %length, ptr noundef %ops) #0 align 16 !dbg !5761 {
entry:
  %retval = alloca i32, align 4
  %interval_sub.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %length.addr = alloca i64, align 8
  %ops.addr = alloca ptr, align 8
  %subscriptions = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %interval_sub, ptr %interval_sub.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %interval_sub.addr, metadata !5763, metadata !DIExpression()), !dbg !5770
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5764, metadata !DIExpression()), !dbg !5771
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5765, metadata !DIExpression()), !dbg !5772
  store i64 %length, ptr %length.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !5766, metadata !DIExpression()), !dbg !5773
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5767, metadata !DIExpression()), !dbg !5774
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscriptions) #16, !dbg !5775
  call void @llvm.dbg.declare(metadata ptr %subscriptions, metadata !5768, metadata !DIExpression()), !dbg !5776
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !5777
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !5778
  %notifier_subscriptions = getelementptr inbounds %struct.anon.13, ptr %1, i32 0, i32 50, !dbg !5778
  %2 = load ptr, ptr %notifier_subscriptions, align 16, !dbg !5778
  store ptr %2, ptr %subscriptions, align 8, !dbg !5776
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !5779
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5769, metadata !DIExpression()), !dbg !5780
  %3 = load ptr, ptr %mm.addr, align 8, !dbg !5781
  call void @mmap_assert_write_locked(ptr noundef %3) #17, !dbg !5782
  %4 = load ptr, ptr %subscriptions, align 8, !dbg !5783
  %tobool = icmp ne ptr %4, null, !dbg !5783
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5785

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %subscriptions, align 8, !dbg !5786
  %has_itree = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %5, i32 0, i32 1, !dbg !5787
  %6 = load i8, ptr %has_itree, align 8, !dbg !5787, !range !3747, !noundef !193
  %tobool1 = trunc i8 %6 to i1, !dbg !5787
  br i1 %tobool1, label %if.end5, label %if.then, !dbg !5788

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load ptr, ptr %mm.addr, align 8, !dbg !5789
  %call = call i32 @__mmu_notifier_register(ptr noundef null, ptr noundef %7) #17, !dbg !5791
  store i32 %call, ptr %ret, align 4, !dbg !5792
  %8 = load i32, ptr %ret, align 4, !dbg !5793
  %tobool2 = icmp ne i32 %8, 0, !dbg !5793
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !5795

if.then3:                                         ; preds = %if.then
  %9 = load i32, ptr %ret, align 4, !dbg !5796
  store i32 %9, ptr %retval, align 4, !dbg !5797
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5797

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %mm.addr, align 8, !dbg !5798
  %11 = getelementptr inbounds %struct.mm_struct, ptr %10, i32 0, i32 0, !dbg !5799
  %notifier_subscriptions4 = getelementptr inbounds %struct.anon.13, ptr %11, i32 0, i32 50, !dbg !5799
  %12 = load ptr, ptr %notifier_subscriptions4, align 16, !dbg !5799
  store ptr %12, ptr %subscriptions, align 8, !dbg !5800
  br label %if.end5, !dbg !5801

if.end5:                                          ; preds = %if.end, %lor.lhs.false
  %13 = load ptr, ptr %interval_sub.addr, align 8, !dbg !5802
  %14 = load ptr, ptr %mm.addr, align 8, !dbg !5803
  %15 = load ptr, ptr %subscriptions, align 8, !dbg !5804
  %16 = load i64, ptr %start.addr, align 8, !dbg !5805
  %17 = load i64, ptr %length.addr, align 8, !dbg !5806
  %18 = load ptr, ptr %ops.addr, align 8, !dbg !5807
  %call6 = call i32 @__mmu_interval_notifier_insert(ptr noundef %13, ptr noundef %14, ptr noundef %15, i64 noundef %16, i64 noundef %17, ptr noundef %18) #17, !dbg !5808
  store i32 %call6, ptr %retval, align 4, !dbg !5809
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5809

cleanup:                                          ; preds = %if.end5, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !5810
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscriptions) #16, !dbg !5810
  %19 = load i32, ptr %retval, align 4, !dbg !5810
  ret i32 %19, !dbg !5810
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mmu_interval_notifier_remove(ptr noundef %interval_sub) #0 align 16 !dbg !5811 {
entry:
  %interval_sub.addr = alloca ptr, align 8
  %mm = alloca ptr, align 8
  %subscriptions = alloca ptr, align 8
  %seq = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret = alloca i64, align 8
  %__int = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp63 = alloca i64, align 8
  store ptr %interval_sub, ptr %interval_sub.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %interval_sub.addr, metadata !5815, metadata !DIExpression()), !dbg !5836
  call void @llvm.lifetime.start.p0(i64 8, ptr %mm) #16, !dbg !5837
  call void @llvm.dbg.declare(metadata ptr %mm, metadata !5816, metadata !DIExpression()), !dbg !5838
  %0 = load ptr, ptr %interval_sub.addr, align 8, !dbg !5839
  %mm1 = getelementptr inbounds %struct.mmu_interval_notifier, ptr %0, i32 0, i32 2, !dbg !5840
  %1 = load ptr, ptr %mm1, align 8, !dbg !5840
  store ptr %1, ptr %mm, align 8, !dbg !5838
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscriptions) #16, !dbg !5841
  call void @llvm.dbg.declare(metadata ptr %subscriptions, metadata !5817, metadata !DIExpression()), !dbg !5842
  %2 = load ptr, ptr %mm, align 8, !dbg !5843
  %3 = getelementptr inbounds %struct.mm_struct, ptr %2, i32 0, i32 0, !dbg !5844
  %notifier_subscriptions = getelementptr inbounds %struct.anon.13, ptr %3, i32 0, i32 50, !dbg !5844
  %4 = load ptr, ptr %notifier_subscriptions, align 16, !dbg !5844
  store ptr %4, ptr %subscriptions, align 8, !dbg !5842
  call void @llvm.lifetime.start.p0(i64 8, ptr %seq) #16, !dbg !5845
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !5818, metadata !DIExpression()), !dbg !5846
  store i64 0, ptr %seq, align 8, !dbg !5846
  br label %do.body, !dbg !5847

do.body:                                          ; preds = %entry
  call void @might_resched() #17, !dbg !5848
  br label %do.cond, !dbg !5848

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5848

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %subscriptions, align 8, !dbg !5850
  %lock = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %5, i32 0, i32 2, !dbg !5851
  call void @spin_lock(ptr noundef %lock) #17, !dbg !5852
  %6 = load ptr, ptr %subscriptions, align 8, !dbg !5853
  %call = call zeroext i1 @mn_itree_is_invalidating(ptr noundef %6) #17, !dbg !5854
  br i1 %call, label %if.then, label %if.else6, !dbg !5855

if.then:                                          ; preds = %do.end
  %7 = load ptr, ptr %interval_sub.addr, align 8, !dbg !5856
  %interval_tree = getelementptr inbounds %struct.mmu_interval_notifier, ptr %7, i32 0, i32 0, !dbg !5856
  %rb = getelementptr inbounds %struct.interval_tree_node, ptr %interval_tree, i32 0, i32 0, !dbg !5856
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %rb, i32 0, i32 0, !dbg !5856
  %8 = load i64, ptr %__rb_parent_color, align 8, !dbg !5856
  %9 = load ptr, ptr %interval_sub.addr, align 8, !dbg !5856
  %interval_tree2 = getelementptr inbounds %struct.mmu_interval_notifier, ptr %9, i32 0, i32 0, !dbg !5856
  %rb3 = getelementptr inbounds %struct.interval_tree_node, ptr %interval_tree2, i32 0, i32 0, !dbg !5856
  %10 = ptrtoint ptr %rb3 to i64, !dbg !5856
  %cmp = icmp eq i64 %8, %10, !dbg !5856
  br i1 %cmp, label %if.then4, label %if.else, !dbg !5859

if.then4:                                         ; preds = %if.then
  %11 = load ptr, ptr %interval_sub.addr, align 8, !dbg !5860
  %deferred_item = getelementptr inbounds %struct.mmu_interval_notifier, ptr %11, i32 0, i32 3, !dbg !5862
  call void @hlist_del(ptr noundef %deferred_item) #17, !dbg !5863
  br label %if.end, !dbg !5864

if.else:                                          ; preds = %if.then
  %12 = load ptr, ptr %interval_sub.addr, align 8, !dbg !5865
  %deferred_item5 = getelementptr inbounds %struct.mmu_interval_notifier, ptr %12, i32 0, i32 3, !dbg !5867
  %13 = load ptr, ptr %subscriptions, align 8, !dbg !5868
  %deferred_list = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %13, i32 0, i32 7, !dbg !5869
  call void @hlist_add_head(ptr noundef %deferred_item5, ptr noundef %deferred_list) #17, !dbg !5870
  %14 = load ptr, ptr %subscriptions, align 8, !dbg !5871
  %invalidate_seq = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %14, i32 0, i32 3, !dbg !5872
  %15 = load i64, ptr %invalidate_seq, align 8, !dbg !5872
  store i64 %15, ptr %seq, align 8, !dbg !5873
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  br label %if.end41, !dbg !5874

if.else6:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5875
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5819, metadata !DIExpression()), !dbg !5875
  %16 = load ptr, ptr %interval_sub.addr, align 8, !dbg !5875
  %interval_tree7 = getelementptr inbounds %struct.mmu_interval_notifier, ptr %16, i32 0, i32 0, !dbg !5875
  %rb8 = getelementptr inbounds %struct.interval_tree_node, ptr %interval_tree7, i32 0, i32 0, !dbg !5875
  %__rb_parent_color9 = getelementptr inbounds %struct.rb_node, ptr %rb8, i32 0, i32 0, !dbg !5875
  %17 = load i64, ptr %__rb_parent_color9, align 8, !dbg !5875
  %18 = load ptr, ptr %interval_sub.addr, align 8, !dbg !5875
  %interval_tree10 = getelementptr inbounds %struct.mmu_interval_notifier, ptr %18, i32 0, i32 0, !dbg !5875
  %rb11 = getelementptr inbounds %struct.interval_tree_node, ptr %interval_tree10, i32 0, i32 0, !dbg !5875
  %19 = ptrtoint ptr %rb11 to i64, !dbg !5875
  %cmp12 = icmp eq i64 %17, %19, !dbg !5875
  %lnot = xor i1 %cmp12, true, !dbg !5875
  %lnot13 = xor i1 %lnot, true, !dbg !5875
  %lnot.ext = zext i1 %lnot13 to i32, !dbg !5875
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5875
  %20 = load i32, ptr %__ret_warn_on, align 4, !dbg !5876
  %tobool = icmp ne i32 %20, 0, !dbg !5876
  %lnot14 = xor i1 %tobool, true, !dbg !5876
  %lnot16 = xor i1 %lnot14, true, !dbg !5876
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !5876
  %conv = sext i32 %lnot.ext17 to i64, !dbg !5876
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5876
  %tobool18 = icmp ne i64 %expval, 0, !dbg !5876
  br i1 %tobool18, label %if.then19, label %if.end32, !dbg !5875

if.then19:                                        ; preds = %if.else6
  br label %do.body20, !dbg !5876

do.body20:                                        ; preds = %if.then19
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !5877
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5823, metadata !DIExpression()), !dbg !5877
  store i32 2305, ptr %__flags, align 4, !dbg !5877
  br label %do.body21, !dbg !5877

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !5878

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !5878

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !5877

do.body24:                                        ; preds = %do.end23
  %21 = load i32, ptr %__flags, align 4, !dbg !5880
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 1076, i32 %21, i64 12) #16, !dbg !5880, !srcloc !5882
  br label %do.cond25, !dbg !5880

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !5880

do.end26:                                         ; preds = %do.cond25
  br label %do.body27, !dbg !5877

do.body27:                                        ; preds = %do.end26
  br label %do.cond28, !dbg !5883

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !5883

do.end29:                                         ; preds = %do.cond28
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !5876
  br label %do.cond30, !dbg !5877

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !5877

do.end31:                                         ; preds = %do.cond30
  br label %if.end32, !dbg !5877

if.end32:                                         ; preds = %do.end31, %if.else6
  %22 = load i32, ptr %__ret_warn_on, align 4, !dbg !5875
  %tobool33 = icmp ne i32 %22, 0, !dbg !5875
  %lnot34 = xor i1 %tobool33, true, !dbg !5875
  %lnot36 = xor i1 %lnot34, true, !dbg !5875
  %lnot.ext37 = zext i1 %lnot36 to i32, !dbg !5875
  %conv38 = sext i32 %lnot.ext37 to i64, !dbg !5875
  %expval39 = call i64 @llvm.expect.i64(i64 %conv38, i64 0), !dbg !5875
  store i64 %expval39, ptr %tmp, align 8, !dbg !5876
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5885
  %23 = load i64, ptr %tmp, align 8, !dbg !5875
  %24 = load ptr, ptr %interval_sub.addr, align 8, !dbg !5886
  %interval_tree40 = getelementptr inbounds %struct.mmu_interval_notifier, ptr %24, i32 0, i32 0, !dbg !5887
  %25 = load ptr, ptr %subscriptions, align 8, !dbg !5888
  %itree = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %25, i32 0, i32 5, !dbg !5889
  call void @interval_tree_remove(ptr noundef %interval_tree40, ptr noundef %itree) #17, !dbg !5890
  br label %if.end41

if.end41:                                         ; preds = %if.end32, %if.end
  %26 = load ptr, ptr %subscriptions, align 8, !dbg !5891
  %lock42 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %26, i32 0, i32 2, !dbg !5892
  call void @spin_unlock(ptr noundef %lock42) #17, !dbg !5893
  br label %do.body43, !dbg !5894

do.body43:                                        ; preds = %if.end41
  br label %do.cond44, !dbg !5895

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !5895

do.end45:                                         ; preds = %do.cond44
  br label %do.body46, !dbg !5897

do.body46:                                        ; preds = %do.end45
  br label %do.cond47, !dbg !5898

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !5898

do.end48:                                         ; preds = %do.cond47
  %27 = load i64, ptr %seq, align 8, !dbg !5900
  %tobool49 = icmp ne i64 %27, 0, !dbg !5900
  br i1 %tobool49, label %if.then50, label %if.end66, !dbg !5901

if.then50:                                        ; preds = %do.end48
  br label %do.body51, !dbg !5902

do.body51:                                        ; preds = %if.then50
  br label %do.body52, !dbg !5903

do.body52:                                        ; preds = %do.body51
  call void @might_resched() #17, !dbg !5904
  br label %do.cond53, !dbg !5904

do.cond53:                                        ; preds = %do.body52
  br label %do.end54, !dbg !5904

do.end54:                                         ; preds = %do.cond53
  %28 = load ptr, ptr %subscriptions, align 8, !dbg !5906
  %29 = load i64, ptr %seq, align 8, !dbg !5906
  %call55 = call zeroext i1 @mmu_interval_seq_released(ptr noundef %28, i64 noundef %29) #17, !dbg !5906
  br i1 %call55, label %if.then56, label %if.end57, !dbg !5903

if.then56:                                        ; preds = %do.end54
  br label %do.end65, !dbg !5906

if.end57:                                         ; preds = %do.end54
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry) #16, !dbg !5908
  call void @llvm.dbg.declare(metadata ptr %__wq_entry, metadata !5826, metadata !DIExpression()), !dbg !5908
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #16, !dbg !5908
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5830, metadata !DIExpression()), !dbg !5908
  store i64 0, ptr %__ret, align 8, !dbg !5908
  call void @init_wait_entry(ptr noundef %__wq_entry, i32 noundef 0) #17, !dbg !5908
  br label %for.cond, !dbg !5908

for.cond:                                         ; preds = %cleanup.cont, %if.end57
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #16, !dbg !5909
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !5831, metadata !DIExpression()), !dbg !5909
  %30 = load ptr, ptr %subscriptions, align 8, !dbg !5909
  %wq = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %30, i32 0, i32 6, !dbg !5909
  %call58 = call i64 @prepare_to_wait_event(ptr noundef %wq, ptr noundef %__wq_entry, i32 noundef 2) #17, !dbg !5909
  store i64 %call58, ptr %__int, align 8, !dbg !5909
  %31 = load ptr, ptr %subscriptions, align 8, !dbg !5910
  %32 = load i64, ptr %seq, align 8, !dbg !5910
  %call59 = call zeroext i1 @mmu_interval_seq_released(ptr noundef %31, i64 noundef %32) #17, !dbg !5910
  br i1 %call59, label %if.then60, label %if.end61, !dbg !5909

if.then60:                                        ; preds = %for.cond
  store i32 20, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5910

if.end61:                                         ; preds = %for.cond
  call void @schedule() #17, !dbg !5909
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5912
  br label %cleanup, !dbg !5912

cleanup:                                          ; preds = %if.end61, %if.then60
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #16, !dbg !5912
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 20, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !5912, !llvm.loop !5913

for.end:                                          ; preds = %cleanup
  %33 = load ptr, ptr %subscriptions, align 8, !dbg !5908
  %wq62 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %33, i32 0, i32 6, !dbg !5908
  call void @finish_wait(ptr noundef %wq62, ptr noundef %__wq_entry) #17, !dbg !5908
  br label %__out, !dbg !5908

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !5835), !dbg !5908
  %34 = load i64, ptr %__ret, align 8, !dbg !5908
  store i64 %34, ptr %tmp63, align 8, !dbg !5908
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #16, !dbg !5903
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry) #16, !dbg !5903
  %35 = load i64, ptr %tmp63, align 8, !dbg !5908
  br label %do.cond64, !dbg !5903

do.cond64:                                        ; preds = %__out
  br label %do.end65, !dbg !5903

do.end65:                                         ; preds = %do.cond64, %if.then56
  br label %if.end66, !dbg !5903

if.end66:                                         ; preds = %do.end65, %do.end48
  %36 = load ptr, ptr %mm, align 8, !dbg !5915
  call void @mmdrop(ptr noundef %36) #17, !dbg !5916
  call void @llvm.lifetime.end.p0(i64 8, ptr %seq) #16, !dbg !5917
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscriptions) #16, !dbg !5917
  call void @llvm.lifetime.end.p0(i64 8, ptr %mm) #16, !dbg !5917
  ret void, !dbg !5917

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @mn_itree_is_invalidating(ptr noundef %subscriptions) #0 align 16 !dbg !5918 {
entry:
  %subscriptions.addr = alloca ptr, align 8
  store ptr %subscriptions, ptr %subscriptions.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %subscriptions.addr, metadata !5922, metadata !DIExpression()), !dbg !5923
  br label %do.body, !dbg !5924

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %subscriptions.addr, align 8, !dbg !5925
  %lock = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %0, i32 0, i32 2, !dbg !5925
  br label %do.end, !dbg !5925

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %subscriptions.addr, align 8, !dbg !5927
  %invalidate_seq = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %1, i32 0, i32 3, !dbg !5928
  %2 = load i64, ptr %invalidate_seq, align 8, !dbg !5928
  %and = and i64 %2, 1, !dbg !5929
  %tobool = icmp ne i64 %and, 0, !dbg !5927
  ret i1 %tobool, !dbg !5930
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hlist_del(ptr noundef %n) #5 align 16 !dbg !5931 {
entry:
  %n.addr = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5933, metadata !DIExpression()), !dbg !5934
  %0 = load ptr, ptr %n.addr, align 8, !dbg !5935
  call void @__hlist_del(ptr noundef %0) #17, !dbg !5936
  %1 = load ptr, ptr %n.addr, align 8, !dbg !5937
  %next = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 0, !dbg !5938
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !5939
  %2 = load ptr, ptr %n.addr, align 8, !dbg !5940
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1, !dbg !5941
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %pprev, align 8, !dbg !5942
  ret void, !dbg !5943
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hlist_add_head(ptr noundef %n, ptr noundef %h) #5 align 16 !dbg !5944 {
entry:
  %n.addr = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %first = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5946, metadata !DIExpression()), !dbg !5949
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !5947, metadata !DIExpression()), !dbg !5950
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #16, !dbg !5951
  call void @llvm.dbg.declare(metadata ptr %first, metadata !5948, metadata !DIExpression()), !dbg !5952
  %0 = load ptr, ptr %h.addr, align 8, !dbg !5953
  %first1 = getelementptr inbounds %struct.hlist_head, ptr %0, i32 0, i32 0, !dbg !5954
  %1 = load ptr, ptr %first1, align 8, !dbg !5954
  store ptr %1, ptr %first, align 8, !dbg !5952
  br label %do.body, !dbg !5955

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5956

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !5958

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5958

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !5956

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %first, align 8, !dbg !5960
  %3 = load ptr, ptr %n.addr, align 8, !dbg !5960
  %next = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 0, !dbg !5960
  store volatile ptr %2, ptr %next, align 8, !dbg !5960
  br label %do.cond4, !dbg !5960

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !5960

do.end5:                                          ; preds = %do.cond4
  br label %do.cond6, !dbg !5956

do.cond6:                                         ; preds = %do.end5
  br label %do.end7, !dbg !5956

do.end7:                                          ; preds = %do.cond6
  %4 = load ptr, ptr %first, align 8, !dbg !5962
  %tobool = icmp ne ptr %4, null, !dbg !5962
  br i1 %tobool, label %if.then, label %if.end, !dbg !5964

if.then:                                          ; preds = %do.end7
  br label %do.body8, !dbg !5965

do.body8:                                         ; preds = %if.then
  br label %do.body9, !dbg !5966

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !5968

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5968

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !5966

do.body12:                                        ; preds = %do.end11
  %5 = load ptr, ptr %n.addr, align 8, !dbg !5970
  %next13 = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 0, !dbg !5970
  %6 = load ptr, ptr %first, align 8, !dbg !5970
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1, !dbg !5970
  store volatile ptr %next13, ptr %pprev, align 8, !dbg !5970
  br label %do.cond14, !dbg !5970

do.cond14:                                        ; preds = %do.body12
  br label %do.end15, !dbg !5970

do.end15:                                         ; preds = %do.cond14
  br label %do.cond16, !dbg !5966

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5966

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !5966

if.end:                                           ; preds = %do.end17, %do.end7
  br label %do.body18, !dbg !5972

do.body18:                                        ; preds = %if.end
  br label %do.body19, !dbg !5973

do.body19:                                        ; preds = %do.body18
  br label %do.cond20, !dbg !5975

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !5975

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !5973

do.body22:                                        ; preds = %do.end21
  %7 = load ptr, ptr %n.addr, align 8, !dbg !5977
  %8 = load ptr, ptr %h.addr, align 8, !dbg !5977
  %first23 = getelementptr inbounds %struct.hlist_head, ptr %8, i32 0, i32 0, !dbg !5977
  store volatile ptr %7, ptr %first23, align 8, !dbg !5977
  br label %do.cond24, !dbg !5977

do.cond24:                                        ; preds = %do.body22
  br label %do.end25, !dbg !5977

do.end25:                                         ; preds = %do.cond24
  br label %do.cond26, !dbg !5973

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !5973

do.end27:                                         ; preds = %do.cond26
  br label %do.body28, !dbg !5979

do.body28:                                        ; preds = %do.end27
  br label %do.body29, !dbg !5980

do.body29:                                        ; preds = %do.body28
  br label %do.cond30, !dbg !5982

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !5982

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !5980

do.body32:                                        ; preds = %do.end31
  %9 = load ptr, ptr %h.addr, align 8, !dbg !5984
  %first33 = getelementptr inbounds %struct.hlist_head, ptr %9, i32 0, i32 0, !dbg !5984
  %10 = load ptr, ptr %n.addr, align 8, !dbg !5984
  %pprev34 = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1, !dbg !5984
  store volatile ptr %first33, ptr %pprev34, align 8, !dbg !5984
  br label %do.cond35, !dbg !5984

do.cond35:                                        ; preds = %do.body32
  br label %do.end36, !dbg !5984

do.end36:                                         ; preds = %do.cond35
  br label %do.cond37, !dbg !5980

do.cond37:                                        ; preds = %do.end36
  br label %do.end38, !dbg !5980

do.end38:                                         ; preds = %do.cond37
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #16, !dbg !5986
  ret void, !dbg !5986
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5987 dso_local void @interval_tree_remove(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @mmu_interval_seq_released(ptr noundef %subscriptions, i64 noundef %seq) #0 align 16 !dbg !5992 {
entry:
  %subscriptions.addr = alloca ptr, align 8
  %seq.addr = alloca i64, align 8
  %ret = alloca i8, align 1
  store ptr %subscriptions, ptr %subscriptions.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %subscriptions.addr, metadata !5996, metadata !DIExpression()), !dbg !5999
  store i64 %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !5997, metadata !DIExpression()), !dbg !6000
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #16, !dbg !6001
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5998, metadata !DIExpression()), !dbg !6002
  %0 = load ptr, ptr %subscriptions.addr, align 8, !dbg !6003
  %lock = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %0, i32 0, i32 2, !dbg !6004
  call void @spin_lock(ptr noundef %lock) #17, !dbg !6005
  %1 = load ptr, ptr %subscriptions.addr, align 8, !dbg !6006
  %invalidate_seq = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %1, i32 0, i32 3, !dbg !6007
  %2 = load i64, ptr %invalidate_seq, align 8, !dbg !6007
  %3 = load i64, ptr %seq.addr, align 8, !dbg !6008
  %cmp = icmp ne i64 %2, %3, !dbg !6009
  %frombool = zext i1 %cmp to i8, !dbg !6010
  store i8 %frombool, ptr %ret, align 1, !dbg !6010
  %4 = load ptr, ptr %subscriptions.addr, align 8, !dbg !6011
  %lock1 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %4, i32 0, i32 2, !dbg !6012
  call void @spin_unlock(ptr noundef %lock1) #17, !dbg !6013
  %5 = load i8, ptr %ret, align 1, !dbg !6014, !range !3747, !noundef !193
  %tobool = trunc i8 %5 to i1, !dbg !6014
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #16, !dbg !6015
  ret i1 %tobool, !dbg !6016
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mmu_notifier_synchronize() #0 align 16 !dbg !6017 {
entry:
  call void @synchronize_srcu(ptr noundef @srcu) #17, !dbg !6018
  ret void, !dbg !6019
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6020 dso_local void @_raw_spin_lock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6024 dso_local void @_raw_spin_unlock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @mn_itree_inv_start_range(ptr noundef %subscriptions, ptr noundef %range, ptr noundef %seq) #0 align 16 !dbg !6025 {
entry:
  %subscriptions.addr = alloca ptr, align 8
  %range.addr = alloca ptr, align 8
  %seq.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %res = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %subscriptions, ptr %subscriptions.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %subscriptions.addr, metadata !6030, metadata !DIExpression()), !dbg !6039
  store ptr %range, ptr %range.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %range.addr, metadata !6031, metadata !DIExpression()), !dbg !6040
  store ptr %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6032, metadata !DIExpression()), !dbg !6041
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #16, !dbg !6042
  call void @llvm.dbg.declare(metadata ptr %node, metadata !6033, metadata !DIExpression()), !dbg !6043
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #16, !dbg !6044
  call void @llvm.dbg.declare(metadata ptr %res, metadata !6034, metadata !DIExpression()), !dbg !6045
  store ptr null, ptr %res, align 8, !dbg !6045
  %0 = load ptr, ptr %subscriptions.addr, align 8, !dbg !6046
  %lock = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %0, i32 0, i32 2, !dbg !6047
  call void @spin_lock(ptr noundef %lock) #17, !dbg !6048
  %1 = load ptr, ptr %subscriptions.addr, align 8, !dbg !6049
  %active_invalidate_ranges = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %1, i32 0, i32 4, !dbg !6050
  %2 = load i64, ptr %active_invalidate_ranges, align 8, !dbg !6051
  %inc = add i64 %2, 1, !dbg !6051
  store i64 %inc, ptr %active_invalidate_ranges, align 8, !dbg !6051
  %3 = load ptr, ptr %subscriptions.addr, align 8, !dbg !6052
  %itree = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %3, i32 0, i32 5, !dbg !6053
  %4 = load ptr, ptr %range.addr, align 8, !dbg !6054
  %start = getelementptr inbounds %struct.mmu_notifier_range, ptr %4, i32 0, i32 1, !dbg !6055
  %5 = load i64, ptr %start, align 8, !dbg !6055
  %6 = load ptr, ptr %range.addr, align 8, !dbg !6056
  %end = getelementptr inbounds %struct.mmu_notifier_range, ptr %6, i32 0, i32 2, !dbg !6057
  %7 = load i64, ptr %end, align 8, !dbg !6057
  %sub = sub i64 %7, 1, !dbg !6058
  %call = call ptr @interval_tree_iter_first(ptr noundef %itree, i64 noundef %5, i64 noundef %sub) #17, !dbg !6059
  store ptr %call, ptr %node, align 8, !dbg !6060
  %8 = load ptr, ptr %node, align 8, !dbg !6061
  %tobool = icmp ne ptr %8, null, !dbg !6061
  br i1 %tobool, label %if.then, label %if.end, !dbg !6062

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %subscriptions.addr, align 8, !dbg !6063
  %invalidate_seq = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %9, i32 0, i32 3, !dbg !6064
  %10 = load i64, ptr %invalidate_seq, align 8, !dbg !6065
  %or = or i64 %10, 1, !dbg !6065
  store i64 %or, ptr %invalidate_seq, align 8, !dbg !6065
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6066
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6035, metadata !DIExpression()), !dbg !6066
  %11 = load ptr, ptr %node, align 8, !dbg !6066
  store ptr %11, ptr %__mptr, align 8, !dbg !6066
  %12 = load ptr, ptr %__mptr, align 8, !dbg !6066
  %add.ptr = getelementptr i8, ptr %12, i64 0, !dbg !6066
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6066
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6067
  %13 = load ptr, ptr %tmp, align 8, !dbg !6066
  store ptr %13, ptr %res, align 8, !dbg !6068
  br label %if.end, !dbg !6069

if.end:                                           ; preds = %if.then, %entry
  %14 = load ptr, ptr %subscriptions.addr, align 8, !dbg !6070
  %invalidate_seq1 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %14, i32 0, i32 3, !dbg !6071
  %15 = load i64, ptr %invalidate_seq1, align 8, !dbg !6071
  %16 = load ptr, ptr %seq.addr, align 8, !dbg !6072
  store i64 %15, ptr %16, align 8, !dbg !6073
  %17 = load ptr, ptr %subscriptions.addr, align 8, !dbg !6074
  %lock2 = getelementptr inbounds %struct.mmu_notifier_subscriptions, ptr %17, i32 0, i32 2, !dbg !6075
  call void @spin_unlock(ptr noundef %lock2) #17, !dbg !6076
  %18 = load ptr, ptr %res, align 8, !dbg !6077
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #16, !dbg !6078
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #16, !dbg !6078
  ret ptr %18, !dbg !6079
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @mn_itree_inv_next(ptr noundef %interval_sub, ptr noundef %range) #0 align 16 !dbg !6080 {
entry:
  %retval = alloca ptr, align 8
  %interval_sub.addr = alloca ptr, align 8
  %range.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %interval_sub, ptr %interval_sub.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %interval_sub.addr, metadata !6084, metadata !DIExpression()), !dbg !6089
  store ptr %range, ptr %range.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %range.addr, metadata !6085, metadata !DIExpression()), !dbg !6090
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #16, !dbg !6091
  call void @llvm.dbg.declare(metadata ptr %node, metadata !6086, metadata !DIExpression()), !dbg !6092
  %0 = load ptr, ptr %interval_sub.addr, align 8, !dbg !6093
  %interval_tree = getelementptr inbounds %struct.mmu_interval_notifier, ptr %0, i32 0, i32 0, !dbg !6094
  %1 = load ptr, ptr %range.addr, align 8, !dbg !6095
  %start = getelementptr inbounds %struct.mmu_notifier_range, ptr %1, i32 0, i32 1, !dbg !6096
  %2 = load i64, ptr %start, align 8, !dbg !6096
  %3 = load ptr, ptr %range.addr, align 8, !dbg !6097
  %end = getelementptr inbounds %struct.mmu_notifier_range, ptr %3, i32 0, i32 2, !dbg !6098
  %4 = load i64, ptr %end, align 8, !dbg !6098
  %sub = sub i64 %4, 1, !dbg !6099
  %call = call ptr @interval_tree_iter_next(ptr noundef %interval_tree, i64 noundef %2, i64 noundef %sub) #17, !dbg !6100
  store ptr %call, ptr %node, align 8, !dbg !6101
  %5 = load ptr, ptr %node, align 8, !dbg !6102
  %tobool = icmp ne ptr %5, null, !dbg !6102
  br i1 %tobool, label %if.end, label %if.then, !dbg !6104

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6105
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6105

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6106
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6087, metadata !DIExpression()), !dbg !6106
  %6 = load ptr, ptr %node, align 8, !dbg !6106
  store ptr %6, ptr %__mptr, align 8, !dbg !6106
  %7 = load ptr, ptr %__mptr, align 8, !dbg !6106
  %add.ptr = getelementptr i8, ptr %7, i64 0, !dbg !6106
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6106
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6107
  %8 = load ptr, ptr %tmp, align 8, !dbg !6106
  store ptr %8, ptr %retval, align 8, !dbg !6108
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6108

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #16, !dbg !6109
  %9 = load ptr, ptr %retval, align 8, !dbg !6109
  ret ptr %9, !dbg !6109
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6110 dso_local ptr @interval_tree_iter_first(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6113 dso_local ptr @interval_tree_iter_next(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @srcu_check_nmi_safety(ptr noundef %ssp, i1 noundef zeroext %nmi_safe) #5 align 16 !dbg !6116 {
entry:
  %ssp.addr = alloca ptr, align 8
  %nmi_safe.addr = alloca i8, align 1
  store ptr %ssp, ptr %ssp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ssp.addr, metadata !6120, metadata !DIExpression()), !dbg !6122
  %frombool = zext i1 %nmi_safe to i8
  store i8 %frombool, ptr %nmi_safe.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %nmi_safe.addr, metadata !6121, metadata !DIExpression()), !dbg !6123
  ret void, !dbg !6124
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6125 dso_local i32 @__srcu_read_lock(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6126 dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @mmu_notifier_range_blockable(ptr noundef %range) #5 align 16 !dbg !6127 {
entry:
  %range.addr = alloca ptr, align 8
  store ptr %range, ptr %range.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %range.addr, metadata !6131, metadata !DIExpression()), !dbg !6132
  %0 = load ptr, ptr %range.addr, align 8, !dbg !6133
  %flags = getelementptr inbounds %struct.mmu_notifier_range, ptr %0, i32 0, i32 3, !dbg !6134
  %1 = load i32, ptr %flags, align 8, !dbg !6134
  %and = and i32 %1, 1, !dbg !6135
  %tobool = icmp ne i32 %and, 0, !dbg !6136
  ret i1 %tobool, !dbg !6137
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6138 dso_local i32 @_printk(ptr noundef, ...) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6142 dso_local void @interval_tree_insert(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6143 dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !6146 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6154, metadata !DIExpression()), !dbg !6156
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6155, metadata !DIExpression()), !dbg !6157
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6158
  %1 = load i64, ptr %size.addr, align 8, !dbg !6159
  %conv = trunc i64 %1 to i32, !dbg !6159
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !6160
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6161
  %3 = load i64, ptr %size.addr, align 8, !dbg !6161
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !6161
  ret void, !dbg !6162
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #3 align 16 !dbg !6163 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6166, metadata !DIExpression()), !dbg !6167
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6168
  %call = call i32 @arch_atomic_read(ptr noundef %0) #17, !dbg !6169
  ret i32 %call, !dbg !6170
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6171 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6176, metadata !DIExpression()), !dbg !6178
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6177, metadata !DIExpression()), !dbg !6179
  ret i1 true, !dbg !6180
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !6181 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6186, metadata !DIExpression()), !dbg !6189
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6187, metadata !DIExpression()), !dbg !6190
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6188, metadata !DIExpression()), !dbg !6191
  ret void, !dbg !6192
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #3 align 16 !dbg !6193 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6196, metadata !DIExpression()), !dbg !6197
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6198
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6198
  %1 = load volatile i32, ptr %counter, align 4, !dbg !6198
  ret i32 %1, !dbg !6199
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !6200 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6202, metadata !DIExpression()), !dbg !6207
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6203, metadata !DIExpression()), !dbg !6208
  %0 = load i64, ptr %size.addr, align 8, !dbg !6209
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6210
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6211

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6212
  %tobool = icmp ne i64 %2, 0, !dbg !6212
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6213

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !6214
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6204, metadata !DIExpression()), !dbg !6215
  %3 = load i64, ptr %size.addr, align 8, !dbg !6216
  %cmp = icmp ugt i64 %3, 8192, !dbg !6218
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6219

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6220
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6221
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !6222
  store ptr %call, ptr %retval, align 8, !dbg !6223
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6223

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6224
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !6224
  store i32 %call2, ptr %index, align 4, !dbg !6225
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6226
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6227
  %9 = ptrtoint ptr %8 to i64, !dbg !6227
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !6228
  %idxprom = zext i32 %call3 to i64, !dbg !6229
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6229
  %10 = load i32, ptr %index, align 4, !dbg !6230
  %idxprom4 = zext i32 %10 to i64, !dbg !6229
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6229
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6229
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6231
  %13 = load i64, ptr %size.addr, align 8, !dbg !6232
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !6233
  store ptr %call6, ptr %retval, align 8, !dbg !6234
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6234

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !6235
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6236
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6237
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !6238
  store ptr %call8, ptr %retval, align 8, !dbg !6239
  br label %return, !dbg !6239

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6240
  ret ptr %16, !dbg !6240
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6241 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #3 align 16 !dbg !6242 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6246, metadata !DIExpression()), !dbg !6248
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6247, metadata !DIExpression()), !dbg !6249
  %0 = load i64, ptr %size.addr, align 8, !dbg !6250
  %tobool = icmp ne i64 %0, 0, !dbg !6250
  br i1 %tobool, label %if.end, label %if.then, !dbg !6252

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6253
  br label %return, !dbg !6253

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6254
  %cmp = icmp ule i64 %1, 8, !dbg !6256
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6257

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6258
  br label %return, !dbg !6258

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6259
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6261
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6262

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6263
  %cmp4 = icmp ule i64 %3, 96, !dbg !6264
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6265

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6266
  br label %return, !dbg !6266

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6267
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6269
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6270

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6271
  %cmp9 = icmp ule i64 %5, 192, !dbg !6272
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6273

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6274
  br label %return, !dbg !6274

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6275
  %cmp12 = icmp ule i64 %6, 8, !dbg !6277
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6278

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6279
  br label %return, !dbg !6279

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6280
  %cmp15 = icmp ule i64 %7, 16, !dbg !6282
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6283

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6284
  br label %return, !dbg !6284

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6285
  %cmp18 = icmp ule i64 %8, 32, !dbg !6287
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6288

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6289
  br label %return, !dbg !6289

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6290
  %cmp21 = icmp ule i64 %9, 64, !dbg !6292
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6293

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6294
  br label %return, !dbg !6294

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6295
  %cmp24 = icmp ule i64 %10, 128, !dbg !6297
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6298

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6299
  br label %return, !dbg !6299

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6300
  %cmp27 = icmp ule i64 %11, 256, !dbg !6302
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6303

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6304
  br label %return, !dbg !6304

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6305
  %cmp30 = icmp ule i64 %12, 512, !dbg !6307
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6308

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6309
  br label %return, !dbg !6309

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6310
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6312
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6313

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6314
  br label %return, !dbg !6314

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6315
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6317
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6318

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6319
  br label %return, !dbg !6319

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6320
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6322
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6323

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6324
  br label %return, !dbg !6324

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6325
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6327
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6328

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6329
  br label %return, !dbg !6329

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6330
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6332
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6333

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6334
  br label %return, !dbg !6334

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6335
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6337
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6338

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6339
  br label %return, !dbg !6339

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6340
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6342
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6343

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6344
  br label %return, !dbg !6344

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6345
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6347
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6348

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6349
  br label %return, !dbg !6349

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6350
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6352
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6353

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6354
  br label %return, !dbg !6354

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6355
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6357
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6358

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6359
  br label %return, !dbg !6359

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6360
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6362
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6363

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6364
  br label %return, !dbg !6364

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6365
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6367
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6368

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6369
  br label %return, !dbg !6369

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6370, !range !3747, !noundef !193
  %tobool69 = trunc i8 %25 to i1, !dbg !6370
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6372

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6373

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_208() #21, !dbg !6374, !srcloc !6377
  unreachable, !dbg !6374

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6378

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6379

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6380

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6382

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6380

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, i32 480, i32 0, i64 12) #16, !dbg !6384, !srcloc !6386
  br label %do.end75, !dbg !6384

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6380

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6387
  br label %return, !dbg !6387

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6388
  ret i32 %26, !dbg !6388
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6389 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #3 align 16 !dbg !6395 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6399, metadata !DIExpression()), !dbg !6401
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6400, metadata !DIExpression()), !dbg !6402
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6403
  %and = and i32 %0, 17, !dbg !6403
  %cmp = icmp eq i32 %and, 0, !dbg !6403
  %lnot = xor i1 %cmp, true, !dbg !6403
  %lnot1 = xor i1 %lnot, true, !dbg !6403
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6403
  %conv = sext i32 %lnot.ext to i64, !dbg !6403
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6403
  %tobool = icmp ne i64 %expval, 0, !dbg !6403
  br i1 %tobool, label %if.then, label %if.end, !dbg !6405

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6406
  br label %return, !dbg !6406

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6407
  %and2 = and i32 %1, 1, !dbg !6409
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6409
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6410

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6411
  br label %return, !dbg !6411

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6412
  br label %return, !dbg !6412

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6414
  ret i32 %2, !dbg !6414
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6415 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6416 dso_local void @__compiletime_assert_208() #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #3 align 16 !dbg !6417 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6422, metadata !DIExpression()), !dbg !6423
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6424
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !6425
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6426
  call void @raw_atomic_inc(ptr noundef %1) #17, !dbg !6427
  ret void, !dbg !6428
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !6429 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6431, metadata !DIExpression()), !dbg !6433
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6432, metadata !DIExpression()), !dbg !6434
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6435
  %1 = load i64, ptr %size.addr, align 8, !dbg !6436
  %conv = trunc i64 %1 to i32, !dbg !6436
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !6437
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6438
  %3 = load i64, ptr %size.addr, align 8, !dbg !6438
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #17, !dbg !6438
  ret void, !dbg !6439
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #3 align 16 !dbg !6440 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6442, metadata !DIExpression()), !dbg !6443
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6444
  call void @arch_atomic_inc(ptr noundef %0) #17, !dbg !6445
  ret void, !dbg !6446
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6447 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6449, metadata !DIExpression()), !dbg !6451
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6450, metadata !DIExpression()), !dbg !6452
  ret i1 true, !dbg !6453
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #3 align 16 !dbg !6454 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6456, metadata !DIExpression()), !dbg !6457
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6458
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6459
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #16, !dbg !6460, !srcloc !6461
  ret void, !dbg !6462
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__mmap_lock_trace_start_locking(ptr noundef %mm, i1 noundef zeroext %write) #5 align 16 !dbg !6463 {
entry:
  %mm.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6467, metadata !DIExpression()), !dbg !6469
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6468, metadata !DIExpression()), !dbg !6470
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1)) #17, !dbg !6471
  br i1 %call, label %if.then, label %if.end, !dbg !6473

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6474
  %1 = load i8, ptr %write.addr, align 1, !dbg !6475, !range !3747, !noundef !193
  %tobool = trunc i8 %1 to i1, !dbg !6475
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %0, i1 noundef zeroext %tobool) #17, !dbg !6476
  br label %if.end, !dbg !6476

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6477
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6478 dso_local void @down_write(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__mmap_lock_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext %write, i1 noundef zeroext %success) #5 align 16 !dbg !6482 {
entry:
  %mm.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  %success.addr = alloca i8, align 1
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6486, metadata !DIExpression()), !dbg !6489
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6487, metadata !DIExpression()), !dbg !6490
  %frombool1 = zext i1 %success to i8
  store i8 %frombool1, ptr %success.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %success.addr, metadata !6488, metadata !DIExpression()), !dbg !6491
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1)) #17, !dbg !6492
  br i1 %call, label %if.then, label %if.end, !dbg !6494

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6495
  %1 = load i8, ptr %write.addr, align 1, !dbg !6496, !range !3747, !noundef !193
  %tobool = trunc i8 %1 to i1, !dbg !6496
  %2 = load i8, ptr %success.addr, align 1, !dbg !6497, !range !3747, !noundef !193
  %tobool2 = trunc i8 %2 to i1, !dbg !6497
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %0, i1 noundef zeroext %tobool, i1 noundef zeroext %tobool2) #17, !dbg !6498
  br label %if.end, !dbg !6498

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6499
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #3 align 16 !dbg !6500 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6523, metadata !DIExpression()), !dbg !6524
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6525
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #17, !dbg !6526
  ret i1 %call, !dbg !6527
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6528 dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #3 align 16 !dbg !6529 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6534, metadata !DIExpression()), !dbg !6537
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !6535, metadata !DIExpression()), !dbg !6538
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6539
  %1 = load i8, ptr %branch.addr, align 1, !dbg !6540, !range !3747, !noundef !193
  %tobool = trunc i8 %1 to i1, !dbg !6540
  %conv = zext i1 %tobool to i32, !dbg !6540
  %or = or i32 2, %conv, !dbg !6541
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #16
          to label %asm.fallthrough [label %l_yes], !dbg !6542, !srcloc !6543

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6544
  br label %return, !dbg !6544

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !6536), !dbg !6545
  store i1 true, ptr %retval, align 1, !dbg !6546
  br label %return, !dbg !6546

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !6547
  ret i1 %2, !dbg !6547
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6548 dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__mmap_lock_trace_released(ptr noundef %mm, i1 noundef zeroext %write) #5 align 16 !dbg !6549 {
entry:
  %mm.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6551, metadata !DIExpression()), !dbg !6553
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6552, metadata !DIExpression()), !dbg !6554
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1)) #17, !dbg !6555
  br i1 %call, label %if.then, label %if.end, !dbg !6557

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6558
  %1 = load i8, ptr %write.addr, align 1, !dbg !6559, !range !3747, !noundef !193
  %tobool = trunc i8 %1 to i1, !dbg !6559
  call void @__mmap_lock_do_trace_released(ptr noundef %0, i1 noundef zeroext %tobool) #17, !dbg !6560
  br label %if.end, !dbg !6560

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6561
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vma_end_write_all(ptr noundef %mm) #5 align 16 !dbg !6562 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6564, metadata !DIExpression()), !dbg !6565
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6566
  call void @mmap_assert_write_locked(ptr noundef %0) #17, !dbg !6567
  br label %do.body, !dbg !6568

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6569

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6571

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6569

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !6573

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !6575

do.end4:                                          ; preds = %do.body3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !6573, !srcloc !6577
  br label %do.body5, !dbg !6573

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6578

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6580

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !6578

do.body8:                                         ; preds = %do.end7
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !6582
  %2 = getelementptr inbounds %struct.mm_struct, ptr %1, i32 0, i32 0, !dbg !6582
  %mm_lock_seq = getelementptr inbounds %struct.anon.13, ptr %2, i32 0, i32 18, !dbg !6582
  %3 = load i32, ptr %mm_lock_seq, align 8, !dbg !6582
  %add = add i32 %3, 1, !dbg !6582
  %4 = load ptr, ptr %mm.addr, align 8, !dbg !6582
  %5 = getelementptr inbounds %struct.mm_struct, ptr %4, i32 0, i32 0, !dbg !6582
  %mm_lock_seq9 = getelementptr inbounds %struct.anon.13, ptr %5, i32 0, i32 18, !dbg !6582
  store volatile i32 %add, ptr %mm_lock_seq9, align 8, !dbg !6582
  br label %do.end10, !dbg !6582

do.end10:                                         ; preds = %do.body8
  br label %do.end11, !dbg !6578

do.end11:                                         ; preds = %do.end10
  br label %do.end12, !dbg !6573

do.end12:                                         ; preds = %do.end11
  br label %do.end13, !dbg !6569

do.end13:                                         ; preds = %do.end12
  ret void, !dbg !6584
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6585 dso_local void @up_write(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6586 dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__hlist_del(ptr noundef %n) #5 align 16 !dbg !6587 {
entry:
  %n.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  %pprev = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6589, metadata !DIExpression()), !dbg !6592
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #16, !dbg !6593
  call void @llvm.dbg.declare(metadata ptr %next, metadata !6590, metadata !DIExpression()), !dbg !6594
  %0 = load ptr, ptr %n.addr, align 8, !dbg !6595
  %next1 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 0, !dbg !6596
  %1 = load ptr, ptr %next1, align 8, !dbg !6596
  store ptr %1, ptr %next, align 8, !dbg !6594
  call void @llvm.lifetime.start.p0(i64 8, ptr %pprev) #16, !dbg !6597
  call void @llvm.dbg.declare(metadata ptr %pprev, metadata !6591, metadata !DIExpression()), !dbg !6598
  %2 = load ptr, ptr %n.addr, align 8, !dbg !6599
  %pprev2 = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1, !dbg !6600
  %3 = load ptr, ptr %pprev2, align 8, !dbg !6600
  store ptr %3, ptr %pprev, align 8, !dbg !6598
  br label %do.body, !dbg !6601

do.body:                                          ; preds = %entry
  br label %do.body3, !dbg !6602

do.body3:                                         ; preds = %do.body
  br label %do.cond, !dbg !6604

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !6604

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !6602

do.body4:                                         ; preds = %do.end
  %4 = load ptr, ptr %next, align 8, !dbg !6606
  %5 = load ptr, ptr %pprev, align 8, !dbg !6606
  store volatile ptr %4, ptr %5, align 8, !dbg !6606
  br label %do.cond5, !dbg !6606

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6606

do.end6:                                          ; preds = %do.cond5
  br label %do.cond7, !dbg !6602

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !6602

do.end8:                                          ; preds = %do.cond7
  %6 = load ptr, ptr %next, align 8, !dbg !6608
  %tobool = icmp ne ptr %6, null, !dbg !6608
  br i1 %tobool, label %if.then, label %if.end, !dbg !6610

if.then:                                          ; preds = %do.end8
  br label %do.body9, !dbg !6611

do.body9:                                         ; preds = %if.then
  br label %do.body10, !dbg !6612

do.body10:                                        ; preds = %do.body9
  br label %do.cond11, !dbg !6614

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !6614

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !6612

do.body13:                                        ; preds = %do.end12
  %7 = load ptr, ptr %pprev, align 8, !dbg !6616
  %8 = load ptr, ptr %next, align 8, !dbg !6616
  %pprev14 = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1, !dbg !6616
  store volatile ptr %7, ptr %pprev14, align 8, !dbg !6616
  br label %do.cond15, !dbg !6616

do.cond15:                                        ; preds = %do.body13
  br label %do.end16, !dbg !6616

do.end16:                                         ; preds = %do.cond15
  br label %do.cond17, !dbg !6612

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !6612

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !6612

if.end:                                           ; preds = %do.end18, %do.end8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pprev) #16, !dbg !6618
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #16, !dbg !6618
  ret void, !dbg !6618
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_dec_and_test(ptr noundef %v) #3 align 16 !dbg !6619 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6623, metadata !DIExpression()), !dbg !6624
  br label %do.body, !dbg !6625

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6626

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6628
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !6629
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6630
  %call = call zeroext i1 @raw_atomic_dec_and_test(ptr noundef %1) #17, !dbg !6631
  ret i1 %call, !dbg !6632
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6633 dso_local void @__mmdrop(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_dec_and_test(ptr noundef %v) #3 align 16 !dbg !6634 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6636, metadata !DIExpression()), !dbg !6637
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6638
  %call = call zeroext i1 @arch_atomic_dec_and_test(ptr noundef %0) #17, !dbg !6639
  ret i1 %call, !dbg !6640
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_dec_and_test(ptr noundef %v) #3 align 16 !dbg !6641 {
entry:
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6643, metadata !DIExpression()), !dbg !6646
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #16, !dbg !6647
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6644, metadata !DIExpression()), !dbg !6647
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6647
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6647
  %1 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #16, !dbg !6647, !srcloc !6648
  %2 = icmp ult i8 %1, 2, !dbg !6647
  call void @llvm.assume(i1 %2), !dbg !6647
  store i8 %1, ptr %c, align 1, !dbg !6647
  %3 = load i8, ptr %c, align 1, !dbg !6647, !range !3747, !noundef !193
  %tobool = trunc i8 %3 to i1, !dbg !6647
  %frombool = zext i1 %tobool to i8, !dbg !6647
  store i8 %frombool, ptr %tmp, align 1, !dbg !6647
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #16, !dbg !6649
  %4 = load i8, ptr %tmp, align 1, !dbg !6647, !range !3747, !noundef !193
  %tobool1 = trunc i8 %4 to i1, !dbg !6647
  ret i1 %tobool1, !dbg !6650
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #5 align 16 !dbg !6651 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6656, metadata !DIExpression()), !dbg !6657
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6658, !range !3747, !noundef !193
  %tobool = trunc i8 %0 to i1, !dbg !6658
  %lnot = xor i1 %tobool, true, !dbg !6658
  %lnot1 = xor i1 %lnot, true, !dbg !6658
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6658
  %conv = sext i32 %lnot.ext to i64, !dbg !6658
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6658
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6658
  ret i1 %tobool2, !dbg !6659
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683}
!llvm.ident = !{!3684}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mmu_interval_read_begin279", scope: !2, file: !3, line: 259, type: !105, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF mm/.mmu_notifier.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22mm/mmu_notifier\22 -D KBUILD_BASENAME=\22mmu_notifier\22 -D KBUILD_MODNAME=\22mmu_notifier\22 -D __KBUILD_MODNAME=kmod_mmu_notifier -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o mm/mmu_notifier.ll mm/mmu_notifier.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !100, globals: !3515, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "mm/mmu_notifier.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "729afd2ae4f4cbffb35ce8f52194afed")
!4 = !{!5, !14, !19, !25, !30, !36, !43, !51, !67, !74, !85, !90}
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
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !26, line: 65, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!27 = !{!28, !29}
!28 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!29 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !31, line: 16, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!32 = !{!33, !34, !35}
!33 = !DIEnumerator(name: "TT_NONE", value: 0)
!34 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!35 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !37, line: 15, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!38 = !{!39, !40, !41, !42}
!39 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!40 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!41 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!42 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !44, line: 68, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!45 = !{!46, !47, !48, !49, !50}
!46 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!48 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!49 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!50 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !52, line: 1325, baseType: !7, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!54 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!55 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!56 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!57 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!58 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!59 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!60 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!61 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!62 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!63 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!64 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!65 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!66 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !68, line: 51, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!71 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!72 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!73 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mmu_notifier_event", file: !75, line: 51, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/mmu_notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5d3dbea1abb98e7b3cb680e919d88fb4")
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84}
!77 = !DIEnumerator(name: "MMU_NOTIFY_UNMAP", value: 0)
!78 = !DIEnumerator(name: "MMU_NOTIFY_CLEAR", value: 1)
!79 = !DIEnumerator(name: "MMU_NOTIFY_PROTECTION_VMA", value: 2)
!80 = !DIEnumerator(name: "MMU_NOTIFY_PROTECTION_PAGE", value: 3)
!81 = !DIEnumerator(name: "MMU_NOTIFY_SOFT_DIRTY", value: 4)
!82 = !DIEnumerator(name: "MMU_NOTIFY_RELEASE", value: 5)
!83 = !DIEnumerator(name: "MMU_NOTIFY_MIGRATE", value: 6)
!84 = !DIEnumerator(name: "MMU_NOTIFY_EXCLUSIVE", value: 7)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !86, line: 10, baseType: !7, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!87 = !{!88, !89}
!88 = !DIEnumerator(name: "false", value: 0)
!89 = !DIEnumerator(name: "true", value: 1)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !91, line: 364, baseType: !7, size: 32, elements: !92)
!91 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!92 = !{!93, !94, !95, !96, !97, !98, !99}
!93 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!94 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!95 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!96 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!97 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!98 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!99 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!100 = !{!101, !105, !106, !115, !109, !116, !828, !3480, !3482, !104, !3484, !3507, !3510, !3512, !3513, !3514}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !104)
!104 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !111, line: 198, size: 128, elements: !112)
!111 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!112 = !{!113, !114}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !110, file: !111, line: 199, baseType: !109, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !110, file: !111, line: 199, baseType: !115, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier", file: !75, line: 237, size: 448, elements: !118)
!118 = !{!119, !120, !3477, !3478, !3479}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !117, file: !75, line: 238, baseType: !110, size: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !117, file: !75, line: 239, baseType: !121, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_ops", file: !75, line: 64, size: 640, elements: !124)
!124 = !{!125, !3434, !3438, !3439, !3443, !3447, !3461, !3465, !3469, !3473}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !123, file: !75, line: 88, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !116, !129}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !52, line: 733, size: 10240, elements: !131)
!131 = !{!132, !3432}
!132 = !DIDerivedType(tag: DW_TAG_member, scope: !130, file: !52, line: 734, baseType: !133, size: 10240)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !130, file: !52, line: 734, size: 10240, elements: !134)
!134 = !{!135, !144, !196, !3321, !3322, !3323, !3324, !3325, !3326, !3333, !3334, !3335, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3374, !3376, !3379, !3403, !3404, !3405, !3408, !3409, !3410, !3422, !3423, !3424, !3430, !3431}
!135 = !DIDerivedType(tag: DW_TAG_member, scope: !133, file: !52, line: 739, baseType: !136, size: 512, align: 512)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !133, file: !52, line: 739, size: 512, align: 512, elements: !137)
!137 = !{!138}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !136, file: !52, line: 747, baseType: !139, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !111, line: 174, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !111, line: 172, size: 32, elements: !141)
!141 = !{!142}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !140, file: !111, line: 173, baseType: !143, size: 32)
!143 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !133, file: !52, line: 750, baseType: !145, size: 128, offset: 512)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !146, line: 218, size: 128, elements: !147)
!146 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!147 = !{!148, !194, !195}
!148 = !DIDerivedType(tag: DW_TAG_member, scope: !145, file: !146, line: 219, baseType: !149, size: 32)
!149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !145, file: !146, line: 219, size: 32, elements: !150)
!150 = !{!151, !190}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !149, file: !146, line: 220, baseType: !152, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !153, line: 29, baseType: !154)
!153 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !153, line: 17, size: 32, elements: !155)
!155 = !{!156}
!156 = !DIDerivedType(tag: DW_TAG_member, scope: !154, file: !153, line: 18, baseType: !157, size: 32)
!157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !154, file: !153, line: 18, size: 32, elements: !158)
!158 = !{!159}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !157, file: !153, line: 19, baseType: !160, size: 32)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !161, line: 14, size: 32, elements: !162)
!161 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !160, file: !161, line: 15, baseType: !164, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !165, line: 44, baseType: !166)
!165 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !165, line: 14, size: 32, elements: !167)
!167 = !{!168}
!168 = !DIDerivedType(tag: DW_TAG_member, scope: !166, file: !165, line: 15, baseType: !169, size: 32)
!169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !166, file: !165, line: 15, size: 32, elements: !170)
!170 = !{!171, !172, !182}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !169, file: !165, line: 16, baseType: !139, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !165, line: 24, baseType: !173, size: 16)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !169, file: !165, line: 24, size: 16, elements: !174)
!174 = !{!175, !181}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !173, file: !165, line: 25, baseType: !176, size: 8)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !177, line: 17, baseType: !178)
!177 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !179, line: 21, baseType: !180)
!179 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!180 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !173, file: !165, line: 26, baseType: !176, size: 8, offset: 8)
!182 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !165, line: 28, baseType: !183, size: 32)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !169, file: !165, line: 28, size: 32, elements: !184)
!184 = !{!185, !189}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !183, file: !165, line: 29, baseType: !186, size: 16)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !177, line: 19, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !179, line: 24, baseType: !188)
!188 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !183, file: !165, line: 30, baseType: !186, size: 16, offset: 16)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !149, file: !146, line: 221, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !146, line: 197, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 197, elements: !193)
!193 = !{}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !145, file: !146, line: 223, baseType: !7, size: 32, offset: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !145, file: !146, line: 224, baseType: !105, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !133, file: !52, line: 752, baseType: !197, size: 64, offset: 640)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!104, !200, !104, !104, !104, !104}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !15, line: 994, size: 1856, align: 64, elements: !202)
!202 = !{!203, !222, !223, !225, !235, !253, !257, !258, !333, !560, !569, !3311, !3312, !3313, !3314, !3315, !3316, !3318, !3319, !3320}
!203 = !DIDerivedType(tag: DW_TAG_member, scope: !201, file: !15, line: 995, baseType: !204, size: 128)
!204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !201, file: !15, line: 995, size: 128, elements: !205)
!205 = !{!206, !212, !221}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !204, file: !15, line: 996, baseType: !207, size: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !208, line: 60, size: 64, elements: !209)
!208 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!209 = !{!210}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !207, file: !208, line: 61, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !204, file: !15, line: 997, baseType: !213, size: 128, align: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !111, line: 232, size: 128, align: 64, elements: !214)
!214 = !{!215, !217}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !213, file: !111, line: 233, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !213, file: !111, line: 234, baseType: !218, size: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !216}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !204, file: !15, line: 998, baseType: !7, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !201, file: !15, line: 1005, baseType: !152, size: 32, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !201, file: !15, line: 1006, baseType: !224, size: 32, offset: 160)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !111, line: 156, baseType: !7)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !201, file: !15, line: 1007, baseType: !226, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !227, line: 13, baseType: !228)
!227 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !111, line: 181, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !111, line: 179, size: 64, elements: !230)
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !229, file: !111, line: 180, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !177, line: 22, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !179, line: 30, baseType: !234)
!234 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !201, file: !15, line: 1008, baseType: !236, size: 256, offset: 256)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !237, line: 66, size: 256, elements: !238)
!237 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!238 = !{!239, !240, !242, !247}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !236, file: !237, line: 67, baseType: !226, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !236, file: !237, line: 68, baseType: !241, size: 32, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !161, line: 23, baseType: !160)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !236, file: !237, line: 70, baseType: !243, size: 32, offset: 96)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !244, line: 15, size: 32, elements: !245)
!244 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !243, file: !244, line: 20, baseType: !139, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !236, file: !237, line: 72, baseType: !248, size: 128, offset: 128)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !111, line: 190, size: 128, elements: !249)
!249 = !{!250, !252}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !248, file: !111, line: 191, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !248, file: !111, line: 191, baseType: !251, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !201, file: !15, line: 1009, baseType: !254, size: 64, offset: 512)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !111, line: 52, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !256, line: 88, baseType: !234)
!256 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!257 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !201, file: !15, line: 1010, baseType: !7, size: 32, offset: 576)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !201, file: !15, line: 1011, baseType: !259, size: 256, offset: 640)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !15, line: 948, size: 256, elements: !260)
!260 = !{!261, !284, !322, !323, !331, !332}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !259, file: !15, line: 949, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !263, line: 34, baseType: !264)
!263 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !263, line: 25, size: 64, elements: !265)
!265 = !{!266}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !264, file: !263, line: 26, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !268, line: 27, baseType: !269)
!268 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !268, line: 13, size: 64, elements: !270)
!270 = !{!271, !283}
!271 = !DIDerivedType(tag: DW_TAG_member, scope: !269, file: !268, line: 14, baseType: !272, size: 32)
!272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !269, file: !268, line: 14, size: 32, elements: !273)
!273 = !{!274, !275}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !272, file: !268, line: 15, baseType: !139, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, scope: !272, file: !268, line: 16, baseType: !276, size: 32)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !272, file: !268, line: 16, size: 32, elements: !277)
!277 = !{!278, !279}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !276, file: !268, line: 18, baseType: !176, size: 8)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !276, file: !268, line: 19, baseType: !280, size: 24, offset: 8)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 24, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 3)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !269, file: !268, line: 26, baseType: !164, size: 32, offset: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !259, file: !15, line: 950, baseType: !285, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !287)
!287 = !{!288, !294, !295, !296, !303, !304, !311, !312}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !286, file: !6, line: 61, baseType: !289, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !290, line: 113, baseType: !291)
!290 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !290, line: 111, size: 32, elements: !292)
!292 = !{!293}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !291, file: !290, line: 112, baseType: !139, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !286, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !286, file: !6, line: 63, baseType: !152, size: 32, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !286, file: !6, line: 65, baseType: !297, size: 256, offset: 128)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 256, elements: !301)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !111, line: 194, size: 64, elements: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !298, file: !111, line: 195, baseType: !109, size: 64)
!301 = !{!302}
!302 = !DISubrange(count: 4)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !286, file: !6, line: 66, baseType: !298, size: 64, offset: 384)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !286, file: !6, line: 68, baseType: !305, size: 192, offset: 448)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !306, line: 41, baseType: !307)
!306 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !306, line: 37, size: 192, elements: !308)
!308 = !{!309, !310}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !307, file: !306, line: 38, baseType: !152, size: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !307, file: !306, line: 39, baseType: !248, size: 128, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !286, file: !6, line: 69, baseType: !213, size: 128, align: 64, offset: 640)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !286, file: !6, line: 70, baseType: !313, offset: 768)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, elements: !320)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !315)
!315 = !{!316, !317}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !314, file: !6, line: 55, baseType: !143, size: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !314, file: !6, line: 56, baseType: !318, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!320 = !{!321}
!321 = !DISubrange(count: -1)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !259, file: !15, line: 951, baseType: !5, size: 32, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !259, file: !15, line: 952, baseType: !324, size: 32, offset: 160)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !325, line: 23, baseType: !326)
!325 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !325, line: 21, size: 32, elements: !327)
!327 = !{!328}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !326, file: !325, line: 22, baseType: !329, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !111, line: 37, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !256, line: 49, baseType: !7)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !259, file: !15, line: 952, baseType: !324, size: 32, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !259, file: !15, line: 953, baseType: !143, size: 32, offset: 224)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !201, file: !15, line: 1012, baseType: !334, size: 64, offset: 896)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !337, line: 110, size: 1472, elements: !338)
!337 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!338 = !{!339, !340, !341, !348, !349, !350, !351, !352, !353, !354, !355, !364, !365, !366, !367, !368, !369, !505, !506, !507, !508, !509, !540, !543, !547, !555}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !336, file: !337, line: 111, baseType: !226, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !336, file: !337, line: 112, baseType: !324, size: 32, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !336, file: !337, line: 113, baseType: !342, size: 32, offset: 96)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !325, line: 28, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !325, line: 26, size: 32, elements: !344)
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !343, file: !325, line: 27, baseType: !346, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !111, line: 38, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !256, line: 50, baseType: !7)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !336, file: !337, line: 114, baseType: !324, size: 32, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !336, file: !337, line: 115, baseType: !342, size: 32, offset: 160)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !336, file: !337, line: 116, baseType: !324, size: 32, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !336, file: !337, line: 117, baseType: !342, size: 32, offset: 224)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !336, file: !337, line: 118, baseType: !324, size: 32, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !336, file: !337, line: 119, baseType: !342, size: 32, offset: 288)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !336, file: !337, line: 120, baseType: !7, size: 32, offset: 320)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !336, file: !337, line: 121, baseType: !356, size: 64, offset: 384)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !357, line: 24, baseType: !358)
!357 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !357, line: 24, size: 64, elements: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !358, file: !357, line: 24, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !177, line: 23, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !179, line: 31, baseType: !363)
!363 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !336, file: !337, line: 122, baseType: !356, size: 64, offset: 448)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !336, file: !337, line: 123, baseType: !356, size: 64, offset: 512)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !336, file: !337, line: 124, baseType: !356, size: 64, offset: 576)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !336, file: !337, line: 125, baseType: !356, size: 64, offset: 640)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !336, file: !337, line: 127, baseType: !180, size: 8, offset: 704)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !336, file: !337, line: 129, baseType: !370, size: 64, offset: 768)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !372, line: 195, size: 1728, elements: !373)
!372 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!373 = !{!374, !375, !380, !392, !401, !404, !405, !412, !413, !414, !415, !420, !421, !422, !424, !425, !469, !490}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !371, file: !372, line: 196, baseType: !289, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !371, file: !372, line: 197, baseType: !376, size: 32, offset: 32)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !372, line: 28, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !111, line: 104, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !177, line: 20, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !179, line: 26, baseType: !143)
!380 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !372, line: 198, baseType: !381, size: 192, offset: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !372, line: 198, size: 192, elements: !382)
!382 = !{!383, !384}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !381, file: !372, line: 199, baseType: !248, size: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !381, file: !372, line: 200, baseType: !385, size: 192, align: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !386, line: 5, size: 192, align: 64, elements: !387)
!386 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!387 = !{!388, !389, !391}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !385, file: !386, line: 6, baseType: !104, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !385, file: !386, line: 7, baseType: !390, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !385, file: !386, line: 8, baseType: !390, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !371, file: !372, line: 205, baseType: !393, size: 320, offset: 256)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !394, line: 48, size: 320, elements: !395)
!394 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!395 = !{!396, !397, !398, !399, !400}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !393, file: !394, line: 49, baseType: !226, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !393, file: !394, line: 55, baseType: !226, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !393, file: !394, line: 57, baseType: !243, size: 32, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !393, file: !394, line: 59, baseType: !241, size: 32, offset: 160)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !393, file: !394, line: 60, baseType: !248, size: 128, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !371, file: !372, line: 206, baseType: !402, size: 64, offset: 576)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !372, line: 206, flags: DIFlagFwdDecl)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !371, file: !372, line: 207, baseType: !105, size: 64, offset: 640)
!405 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !372, line: 208, baseType: !406, size: 64, offset: 704)
!406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !372, line: 208, size: 64, elements: !407)
!407 = !{!408, !411}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !406, file: !372, line: 209, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !410, line: 8, baseType: !233)
!410 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!411 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !406, file: !372, line: 210, baseType: !409, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !371, file: !372, line: 212, baseType: !409, size: 64, offset: 768)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !371, file: !372, line: 213, baseType: !324, size: 32, offset: 832)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !371, file: !372, line: 214, baseType: !342, size: 32, offset: 864)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !371, file: !372, line: 215, baseType: !416, size: 32, offset: 896)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !372, line: 31, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !111, line: 110, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !177, line: 21, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !179, line: 27, baseType: !7)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !371, file: !372, line: 216, baseType: !188, size: 16, offset: 928)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !371, file: !372, line: 217, baseType: !188, size: 16, offset: 944)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !371, file: !372, line: 221, baseType: !423, size: 16, offset: 960)
!423 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !371, file: !372, line: 228, baseType: !104, size: 64, offset: 1024)
!425 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !372, line: 245, baseType: !426, size: 320, offset: 1088)
!426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !372, line: 245, size: 320, elements: !427)
!427 = !{!428, !460}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !426, file: !372, line: 246, baseType: !429, size: 320)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !372, line: 114, size: 320, elements: !430)
!430 = !{!431, !432, !445, !448, !457}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !429, file: !372, line: 116, baseType: !104, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, scope: !429, file: !372, line: 117, baseType: !433, size: 64, offset: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !429, file: !372, line: 117, size: 64, elements: !434)
!434 = !{!435, !444}
!435 = !DIDerivedType(tag: DW_TAG_member, scope: !433, file: !372, line: 118, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !433, file: !372, line: 118, size: 64, elements: !437)
!437 = !{!438, !439}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !436, file: !372, line: 120, baseType: !186, size: 16)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !436, file: !372, line: 121, baseType: !440, size: 48, offset: 16)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 48, elements: !442)
!441 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!442 = !{!443}
!443 = !DISubrange(count: 6)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !433, file: !372, line: 127, baseType: !104, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !429, file: !372, line: 129, baseType: !446, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !372, line: 102, flags: DIFlagFwdDecl)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !429, file: !372, line: 130, baseType: !449, size: 64, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !372, line: 108, size: 192, elements: !451)
!451 = !{!452, !453, !454}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !450, file: !372, line: 109, baseType: !213, size: 128, align: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !450, file: !372, line: 110, baseType: !289, size: 32, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !450, file: !372, line: 111, baseType: !455, size: 8, offset: 160)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !111, line: 35, baseType: !456)
!456 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !429, file: !372, line: 131, baseType: !458, size: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!460 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !372, line: 247, baseType: !461, size: 320)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !426, file: !372, line: 247, size: 320, elements: !462)
!462 = !{!463, !464, !465, !466, !467}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !461, file: !372, line: 248, baseType: !104, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !461, file: !372, line: 249, baseType: !104, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !461, file: !372, line: 250, baseType: !446, size: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !461, file: !372, line: 251, baseType: !449, size: 64, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !461, file: !372, line: 252, baseType: !468, size: 64, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !372, line: 260, baseType: !470, size: 256, offset: 1408)
!470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !372, line: 260, size: 256, elements: !471)
!471 = !{!472, !478}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !470, file: !372, line: 261, baseType: !473, size: 256)
!473 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !372, line: 134, size: 256, elements: !474)
!474 = !{!475, !476}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !473, file: !372, line: 135, baseType: !105, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !473, file: !372, line: 136, baseType: !477, size: 256)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 256, elements: !301)
!478 = !DIDerivedType(tag: DW_TAG_member, scope: !470, file: !372, line: 262, baseType: !479, size: 256)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !470, file: !372, line: 262, size: 256, elements: !480)
!480 = !{!481, !482}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !479, file: !372, line: 264, baseType: !248, size: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !479, file: !372, line: 265, baseType: !483, size: 128, offset: 128)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !484, line: 22, size: 128, elements: !485)
!484 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!485 = !{!486, !489}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !483, file: !484, line: 23, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !484, line: 23, flags: DIFlagFwdDecl)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !483, file: !484, line: 24, baseType: !104, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !371, file: !372, line: 280, baseType: !491, size: 64, offset: 1664)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !372, line: 176, size: 192, elements: !493)
!493 = !{!494, !503, !504}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !492, file: !372, line: 177, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !372, line: 171, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!143, !370, !499, !501, !370}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !492, file: !372, line: 178, baseType: !370, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !492, file: !372, line: 179, baseType: !446, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !336, file: !337, line: 130, baseType: !370, size: 64, offset: 832)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !336, file: !337, line: 131, baseType: !370, size: 64, offset: 896)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !336, file: !337, line: 132, baseType: !370, size: 64, offset: 960)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !336, file: !337, line: 135, baseType: !105, size: 64, offset: 1024)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !336, file: !337, line: 137, baseType: !510, size: 64, offset: 1088)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !512, line: 14, size: 1088, elements: !513)
!512 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!513 = !{!514, !515, !524, !525, !526, !527, !528, !529}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !511, file: !512, line: 15, baseType: !289, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !511, file: !512, line: 17, baseType: !516, size: 320, offset: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !517, line: 22, size: 320, elements: !518)
!517 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!518 = !{!519, !520, !521, !522}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !516, file: !517, line: 23, baseType: !241, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !516, file: !517, line: 24, baseType: !232, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !516, file: !517, line: 26, baseType: !248, size: 128, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !516, file: !517, line: 28, baseType: !523, size: 64, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !511, file: !512, line: 19, baseType: !104, size: 64, offset: 384)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !511, file: !512, line: 20, baseType: !226, size: 64, offset: 448)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !511, file: !512, line: 23, baseType: !110, size: 128, offset: 512)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !511, file: !512, line: 24, baseType: !324, size: 32, offset: 640)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !511, file: !512, line: 29, baseType: !226, size: 64, offset: 704)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !511, file: !512, line: 36, baseType: !530, size: 320, offset: 768)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !531, line: 15, size: 320, elements: !532)
!531 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!532 = !{!533, !534, !535, !536, !537, !538, !539}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !530, file: !531, line: 16, baseType: !241, size: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !530, file: !531, line: 18, baseType: !143, size: 32, offset: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !530, file: !531, line: 19, baseType: !143, size: 32, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !530, file: !531, line: 20, baseType: !143, size: 32, offset: 96)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !530, file: !531, line: 21, baseType: !143, size: 32, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !530, file: !531, line: 22, baseType: !104, size: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !530, file: !531, line: 23, baseType: !104, size: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !336, file: !337, line: 138, baseType: !541, size: 64, offset: 1152)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !52, line: 901, flags: DIFlagFwdDecl)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !336, file: !337, line: 139, baseType: !544, size: 64, offset: 1216)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !546, line: 16, flags: DIFlagFwdDecl)
!546 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!547 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !336, file: !337, line: 140, baseType: !548, size: 64, offset: 1280)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !337, line: 25, size: 64, elements: !550)
!550 = !{!551, !552, !553}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !549, file: !337, line: 26, baseType: !139, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !549, file: !337, line: 27, baseType: !143, size: 32, offset: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !549, file: !337, line: 28, baseType: !554, offset: 64)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, elements: !320)
!555 = !DIDerivedType(tag: DW_TAG_member, scope: !336, file: !337, line: 142, baseType: !556, size: 128, offset: 1344)
!556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !336, file: !337, line: 142, size: 128, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !556, file: !337, line: 143, baseType: !143, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !556, file: !337, line: 144, baseType: !213, size: 128, align: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !201, file: !15, line: 1013, baseType: !561, size: 256, offset: 960)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !15, line: 970, size: 256, elements: !562)
!562 = !{!563, !564, !565, !566, !567, !568}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !561, file: !15, line: 971, baseType: !104, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !561, file: !15, line: 972, baseType: !7, size: 32, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !561, file: !15, line: 973, baseType: !7, size: 32, offset: 96)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !561, file: !15, line: 974, baseType: !7, size: 32, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !561, file: !15, line: 975, baseType: !7, size: 32, offset: 160)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !561, file: !15, line: 976, baseType: !254, size: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !201, file: !15, line: 1014, baseType: !570, size: 128, offset: 1216)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !571, line: 8, size: 128, elements: !572)
!571 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!572 = !{!573, !3310}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !570, file: !571, line: 9, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !576, line: 70, size: 256, elements: !577)
!576 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!577 = !{!578, !3307, !3308, !3309}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !575, file: !576, line: 71, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !581, line: 82, size: 1536, elements: !582)
!581 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!582 = !{!583, !584, !594, !602, !603, !618, !3274, !3276, !3289, !3290, !3291, !3292, !3293, !3299, !3300, !3301}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !580, file: !581, line: 84, baseType: !7, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !580, file: !581, line: 85, baseType: !585, size: 32, offset: 32)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !586, line: 275, baseType: !587)
!586 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !586, line: 275, size: 32, elements: !588)
!588 = !{!589}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !587, file: !586, line: 275, baseType: !590, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !586, line: 69, baseType: !591)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !586, line: 64, size: 32, elements: !592)
!592 = !{!593}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !591, file: !586, line: 65, baseType: !7, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !580, file: !581, line: 86, baseType: !595, size: 128, offset: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !596, line: 38, size: 128, elements: !597)
!596 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!597 = !{!598, !600}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !595, file: !596, line: 39, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !595, file: !596, line: 39, baseType: !601, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !580, file: !581, line: 87, baseType: !579, size: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !580, file: !581, line: 88, baseType: !604, size: 128, offset: 256)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !581, line: 49, size: 128, elements: !605)
!605 = !{!606, !615}
!606 = !DIDerivedType(tag: DW_TAG_member, scope: !604, file: !581, line: 50, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !604, file: !581, line: 50, size: 64, elements: !608)
!608 = !{!609, !614}
!609 = !DIDerivedType(tag: DW_TAG_member, scope: !607, file: !581, line: 51, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !607, file: !581, line: 51, size: 64, elements: !611)
!611 = !{!612, !613}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !610, file: !581, line: 52, baseType: !418, size: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !610, file: !581, line: 52, baseType: !418, size: 32, offset: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !607, file: !581, line: 54, baseType: !361, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !604, file: !581, line: 56, baseType: !616, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !580, file: !581, line: 89, baseType: !619, size: 64, offset: 384)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !15, line: 641, size: 4800, elements: !621)
!621 = !{!622, !624, !625, !626, !627, !628, !629, !632, !633, !831, !3085, !3086, !3087, !3088, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3256, !3259, !3260, !3261, !3270, !3271, !3272, !3273}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !620, file: !15, line: 642, baseType: !623, size: 16)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !111, line: 24, baseType: !188)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !620, file: !15, line: 643, baseType: !188, size: 16, offset: 16)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !620, file: !15, line: 644, baseType: !324, size: 32, offset: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !620, file: !15, line: 645, baseType: !248, size: 128, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !620, file: !15, line: 646, baseType: !342, size: 32, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !620, file: !15, line: 647, baseType: !7, size: 32, offset: 224)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !620, file: !15, line: 650, baseType: !630, size: 64, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !15, line: 607, flags: DIFlagFwdDecl)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !620, file: !15, line: 651, baseType: !630, size: 64, offset: 320)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !620, file: !15, line: 654, baseType: !634, size: 64, offset: 384)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !636)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !15, line: 1966, size: 2048, align: 512, elements: !637)
!637 = !{!638, !642, !655, !661, !665, !669, !673, !677, !681, !685, !689, !690, !696, !700, !738, !769, !779, !785, !789, !793, !797, !801, !805, !811, !815}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !636, file: !15, line: 1967, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!579, !619, !579, !7}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !636, file: !15, line: 1968, baseType: !643, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!458, !579, !619, !646}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !648, line: 10, size: 128, elements: !649)
!648 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!649 = !{!650, !654}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !647, file: !648, line: 11, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !105}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !647, file: !648, line: 12, baseType: !105, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !636, file: !15, line: 1969, baseType: !656, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!143, !659, !619, !143}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !357, line: 42, flags: DIFlagFwdDecl)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !636, file: !15, line: 1970, baseType: !662, size: 64, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!630, !619, !143, !455}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !636, file: !15, line: 1972, baseType: !666, size: 64, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!143, !579, !468, !143}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !636, file: !15, line: 1974, baseType: !670, size: 64, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!143, !659, !619, !579, !623, !455}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !636, file: !15, line: 1976, baseType: !674, size: 64, offset: 384)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!143, !579, !619, !579}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !636, file: !15, line: 1977, baseType: !678, size: 64, offset: 448)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!143, !619, !579}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !636, file: !15, line: 1978, baseType: !682, size: 64, offset: 512)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!143, !659, !619, !579, !458}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !636, file: !15, line: 1980, baseType: !686, size: 64, offset: 576)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!143, !659, !619, !579, !623}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !636, file: !15, line: 1982, baseType: !678, size: 64, offset: 640)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !636, file: !15, line: 1983, baseType: !691, size: 64, offset: 704)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!143, !659, !619, !579, !623, !694}
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !111, line: 21, baseType: !695)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !111, line: 18, baseType: !418)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !636, file: !15, line: 1985, baseType: !697, size: 64, offset: 768)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!143, !659, !619, !579, !619, !579, !7}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !636, file: !15, line: 1987, baseType: !701, size: 64, offset: 832)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!143, !659, !579, !704}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !15, line: 226, size: 640, elements: !706)
!706 = !{!707, !708, !709, !719, !728, !729, !735, !736, !737}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !705, file: !15, line: 227, baseType: !7, size: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !705, file: !15, line: 228, baseType: !623, size: 16, offset: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, scope: !705, file: !15, line: 241, baseType: !710, size: 32, offset: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !705, file: !15, line: 241, size: 32, elements: !711)
!711 = !{!712, !713}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !710, file: !15, line: 242, baseType: !324, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !710, file: !15, line: 243, baseType: !714, size: 32)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !715, line: 16, baseType: !716)
!715 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !715, line: 14, size: 32, elements: !717)
!717 = !{!718}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !716, file: !715, line: 15, baseType: !329, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, scope: !705, file: !15, line: 245, baseType: !720, size: 32, offset: 96)
!720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !705, file: !15, line: 245, size: 32, elements: !721)
!721 = !{!722, !723}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !720, file: !15, line: 246, baseType: !342, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !720, file: !15, line: 247, baseType: !724, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !715, line: 20, baseType: !725)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !715, line: 18, size: 32, elements: !726)
!726 = !{!727}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !725, file: !715, line: 19, baseType: !346, size: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !705, file: !15, line: 249, baseType: !254, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !705, file: !15, line: 250, baseType: !730, size: 128, offset: 192)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !410, line: 13, size: 128, elements: !731)
!731 = !{!732, !733}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !730, file: !410, line: 14, baseType: !409, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !730, file: !410, line: 15, baseType: !734, size: 64, offset: 64)
!734 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !705, file: !15, line: 251, baseType: !730, size: 128, offset: 320)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !705, file: !15, line: 252, baseType: !730, size: 128, offset: 448)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !705, file: !15, line: 259, baseType: !200, size: 64, offset: 576)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !636, file: !15, line: 1988, baseType: !739, size: 64, offset: 896)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!143, !659, !742, !744, !418, !7}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !570)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !746, line: 22, size: 1280, elements: !747)
!746 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!747 = !{!748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !745, file: !746, line: 23, baseType: !418, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !745, file: !746, line: 24, baseType: !623, size: 16, offset: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !745, file: !746, line: 25, baseType: !7, size: 32, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !745, file: !746, line: 26, baseType: !417, size: 32, offset: 96)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !745, file: !746, line: 27, baseType: !361, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !745, file: !746, line: 28, baseType: !361, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !745, file: !746, line: 41, baseType: !361, size: 64, offset: 256)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !745, file: !746, line: 42, baseType: !694, size: 32, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !745, file: !746, line: 43, baseType: !694, size: 32, offset: 352)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !745, file: !746, line: 44, baseType: !324, size: 32, offset: 384)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !745, file: !746, line: 45, baseType: !342, size: 32, offset: 416)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !745, file: !746, line: 46, baseType: !254, size: 64, offset: 448)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !745, file: !746, line: 47, baseType: !730, size: 128, offset: 512)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !745, file: !746, line: 48, baseType: !730, size: 128, offset: 640)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !745, file: !746, line: 49, baseType: !730, size: 128, offset: 768)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !745, file: !746, line: 50, baseType: !730, size: 128, offset: 896)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !745, file: !746, line: 51, baseType: !361, size: 64, offset: 1024)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !745, file: !746, line: 52, baseType: !361, size: 64, offset: 1088)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !745, file: !746, line: 53, baseType: !418, size: 32, offset: 1152)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !745, file: !746, line: 54, baseType: !418, size: 32, offset: 1184)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !745, file: !746, line: 55, baseType: !361, size: 64, offset: 1216)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !636, file: !15, line: 1990, baseType: !770, size: 64, offset: 960)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!773, !579, !468, !776}
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !111, line: 66, baseType: !774)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !256, line: 73, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !256, line: 15, baseType: !734)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !111, line: 61, baseType: !777)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !256, line: 72, baseType: !778)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !256, line: 16, baseType: !104)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !636, file: !15, line: 1991, baseType: !780, size: 64, offset: 1024)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!143, !619, !783, !361, !361}
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !15, line: 55, flags: DIFlagFwdDecl)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !636, file: !15, line: 1993, baseType: !786, size: 64, offset: 1088)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!143, !619, !143}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !636, file: !15, line: 1994, baseType: !790, size: 64, offset: 1152)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!143, !619, !579, !200, !7, !623}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !636, file: !15, line: 1997, baseType: !794, size: 64, offset: 1216)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!143, !659, !619, !200, !623}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !636, file: !15, line: 1999, baseType: !798, size: 64, offset: 1280)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!630, !659, !579, !143}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !636, file: !15, line: 2001, baseType: !802, size: 64, offset: 1344)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!143, !659, !579, !630, !143}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !636, file: !15, line: 2003, baseType: !806, size: 64, offset: 1408)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!143, !659, !579, !809}
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !15, line: 76, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !636, file: !15, line: 2005, baseType: !812, size: 64, offset: 1472)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!143, !579, !809}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !636, file: !15, line: 2006, baseType: !816, size: 64, offset: 1536)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!819, !619}
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !15, line: 3192, size: 192, elements: !821)
!821 = !{!822, !830}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !820, file: !15, line: 3193, baseType: !823, size: 128)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !824, line: 296, size: 128, elements: !825)
!824 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!825 = !{!826, !827, !829}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !823, file: !824, line: 297, baseType: !152, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !823, file: !824, line: 299, baseType: !828, size: 32, offset: 32)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !111, line: 154, baseType: !7)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !823, file: !824, line: 300, baseType: !105, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !820, file: !15, line: 3194, baseType: !418, size: 32, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !620, file: !15, line: 655, baseType: !832, size: 64, offset: 448)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !15, line: 1190, size: 10752, elements: !834)
!834 = !{!835, !836, !837, !838, !839, !840, !881, !1019, !1059, !1142, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1159, !1163, !1164, !1167, !1170, !1173, !1176, !1177, !1178, !1219, !2947, !2948, !2949, !2950, !2951, !2952, !2955, !2957, !2964, !2965, !2966, !2967, !3026, !3041, !3042, !3043, !3044, !3045, !3049, !3050, !3051, !3066, !3067, !3068, !3079, !3080, !3081, !3082, !3083, !3084}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !833, file: !15, line: 1191, baseType: !248, size: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !833, file: !15, line: 1192, baseType: !694, size: 32, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !833, file: !15, line: 1193, baseType: !180, size: 8, offset: 160)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !833, file: !15, line: 1194, baseType: !104, size: 64, offset: 192)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !833, file: !15, line: 1195, baseType: !254, size: 64, offset: 256)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !833, file: !15, line: 1196, baseType: !841, size: 64, offset: 320)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !15, line: 2366, size: 576, elements: !843)
!843 = !{!844, !845, !846, !852, !856, !860, !864, !868, !869, !870, !873, !874, !875, !877, !878, !879, !880}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !842, file: !15, line: 2367, baseType: !458, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !842, file: !15, line: 2368, baseType: !143, size: 32, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !842, file: !15, line: 2376, baseType: !847, size: 64, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!143, !850}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !576, line: 21, flags: DIFlagFwdDecl)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !842, file: !15, line: 2377, baseType: !853, size: 64, offset: 192)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !855)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !15, line: 75, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !842, file: !15, line: 2378, baseType: !857, size: 64, offset: 256)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!579, !841, !143, !458, !105}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !842, file: !15, line: 2380, baseType: !861, size: 64, offset: 320)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !832}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !842, file: !15, line: 2381, baseType: !865, size: 64, offset: 384)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !867, line: 103, flags: DIFlagFwdDecl)
!867 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!868 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !842, file: !15, line: 2382, baseType: !841, size: 64, offset: 448)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !842, file: !15, line: 2383, baseType: !298, size: 64, offset: 512)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !842, file: !15, line: 2385, baseType: !871, offset: 576)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !872, line: 206, elements: !193)
!872 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!873 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !842, file: !15, line: 2386, baseType: !871, offset: 576)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !842, file: !15, line: 2387, baseType: !871, offset: 576)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !842, file: !15, line: 2388, baseType: !876, offset: 576)
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !871, elements: !281)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !842, file: !15, line: 2390, baseType: !871, offset: 576)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !842, file: !15, line: 2391, baseType: !871, offset: 576)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !842, file: !15, line: 2392, baseType: !871, offset: 576)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !842, file: !15, line: 2393, baseType: !871, offset: 576)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !833, file: !15, line: 1197, baseType: !882, size: 64, offset: 384)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !884)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !15, line: 2057, size: 1664, elements: !885)
!885 = !{!886, !890, !894, !895, !899, !905, !909, !910, !911, !915, !919, !923, !924, !925, !931, !936, !937, !944, !945, !946, !947, !951, !955, !1002, !1017, !1018}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !884, file: !15, line: 2058, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{!619, !832}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !884, file: !15, line: 2059, baseType: !891, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !619}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !884, file: !15, line: 2060, baseType: !891, size: 64, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !884, file: !15, line: 2062, baseType: !896, size: 64, offset: 192)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{null, !619, !143}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !884, file: !15, line: 2063, baseType: !900, size: 64, offset: 256)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!143, !619, !903}
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !15, line: 309, flags: DIFlagFwdDecl)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !884, file: !15, line: 2064, baseType: !906, size: 64, offset: 320)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{!143, !619}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !884, file: !15, line: 2065, baseType: !891, size: 64, offset: 384)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !884, file: !15, line: 2066, baseType: !861, size: 64, offset: 448)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !884, file: !15, line: 2067, baseType: !912, size: 64, offset: 512)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!143, !832, !143}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !884, file: !15, line: 2068, baseType: !916, size: 64, offset: 576)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{!143, !832, !14}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !884, file: !15, line: 2069, baseType: !920, size: 64, offset: 640)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!143, !832}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !884, file: !15, line: 2070, baseType: !916, size: 64, offset: 704)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !884, file: !15, line: 2071, baseType: !920, size: 64, offset: 768)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !884, file: !15, line: 2072, baseType: !926, size: 64, offset: 832)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!143, !579, !929}
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !15, line: 62, flags: DIFlagFwdDecl)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !884, file: !15, line: 2073, baseType: !932, size: 64, offset: 896)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!143, !832, !935, !468}
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !884, file: !15, line: 2074, baseType: !861, size: 64, offset: 960)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !884, file: !15, line: 2076, baseType: !938, size: 64, offset: 1024)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!143, !941, !579}
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !943, line: 66, flags: DIFlagFwdDecl)
!943 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!944 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !884, file: !15, line: 2077, baseType: !938, size: 64, offset: 1088)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !884, file: !15, line: 2078, baseType: !938, size: 64, offset: 1152)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !884, file: !15, line: 2079, baseType: !938, size: 64, offset: 1216)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !884, file: !15, line: 2081, baseType: !948, size: 64, offset: 1280)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!773, !832, !143, !468, !776, !254}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !884, file: !15, line: 2082, baseType: !952, size: 64, offset: 1344)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!773, !832, !143, !458, !776, !254}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !884, file: !15, line: 2083, baseType: !956, size: 64, offset: 1408)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{!959, !619}
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !20, line: 296, size: 1664, elements: !962)
!962 = !{!963, !964, !965, !966, !967, !968, !969, !970, !971, !987, !988, !989}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !961, file: !20, line: 297, baseType: !110, size: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !961, file: !20, line: 298, baseType: !248, size: 128, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !961, file: !20, line: 299, baseType: !248, size: 128, offset: 256)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !961, file: !20, line: 300, baseType: !248, size: 128, offset: 384)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !961, file: !20, line: 301, baseType: !236, size: 256, offset: 512)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !961, file: !20, line: 302, baseType: !152, size: 32, offset: 768)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !961, file: !20, line: 303, baseType: !139, size: 32, offset: 800)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !961, file: !20, line: 304, baseType: !832, size: 64, offset: 832)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !961, file: !20, line: 305, baseType: !972, size: 64, offset: 896)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !20, line: 68, size: 64, elements: !973)
!973 = !{!974, !986}
!974 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !20, line: 69, baseType: !975, size: 32)
!975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !972, file: !20, line: 69, size: 32, elements: !976)
!976 = !{!977, !978, !979}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !975, file: !20, line: 70, baseType: !324, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !975, file: !20, line: 71, baseType: !342, size: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !975, file: !20, line: 72, baseType: !980, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !981, line: 24, baseType: !982)
!981 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !981, line: 22, size: 32, elements: !983)
!983 = !{!984}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !982, file: !981, line: 23, baseType: !985, size: 32)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !981, line: 20, baseType: !330)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !972, file: !20, line: 74, baseType: !19, size: 32, offset: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !961, file: !20, line: 306, baseType: !254, size: 64, offset: 960)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !961, file: !20, line: 307, baseType: !104, size: 64, offset: 1024)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !961, file: !20, line: 308, baseType: !990, size: 576, offset: 1088)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !20, line: 205, size: 576, elements: !991)
!991 = !{!992, !994, !995, !996, !997, !998, !999, !1000, !1001}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !990, file: !20, line: 206, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !20, line: 66, baseType: !234)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !990, file: !20, line: 207, baseType: !993, size: 64, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !990, file: !20, line: 208, baseType: !993, size: 64, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !990, file: !20, line: 209, baseType: !993, size: 64, offset: 192)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !990, file: !20, line: 210, baseType: !993, size: 64, offset: 256)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !990, file: !20, line: 211, baseType: !993, size: 64, offset: 320)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !990, file: !20, line: 212, baseType: !993, size: 64, offset: 384)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !990, file: !20, line: 213, baseType: !409, size: 64, offset: 448)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !990, file: !20, line: 214, baseType: !409, size: 64, offset: 512)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !884, file: !15, line: 2085, baseType: !1003, size: 64, offset: 1472)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!734, !832, !1006}
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1008, line: 15, size: 256, elements: !1009)
!1008 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1009 = !{!1010, !1011, !1012, !1013, !1014}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1007, file: !1008, line: 16, baseType: !828, size: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1007, file: !1008, line: 19, baseType: !143, size: 32, offset: 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1007, file: !1008, line: 26, baseType: !104, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1007, file: !1008, line: 33, baseType: !104, size: 64, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1007, file: !1008, line: 36, baseType: !1015, size: 64, offset: 192)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !52, line: 33, flags: DIFlagFwdDecl)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !884, file: !15, line: 2087, baseType: !1003, size: 64, offset: 1536)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !884, file: !15, line: 2089, baseType: !861, size: 64, offset: 1600)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !833, file: !15, line: 1198, baseType: !1020, size: 64, offset: 448)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1022)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !20, line: 324, size: 704, elements: !1023)
!1023 = !{!1024, !1028, !1032, !1036, !1037, !1038, !1039, !1040, !1045, !1050, !1054}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1022, file: !20, line: 325, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!143, !960}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1022, file: !20, line: 326, baseType: !1029, size: 64, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!960, !832, !143}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1022, file: !20, line: 327, baseType: !1033, size: 64, offset: 128)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{null, !960}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1022, file: !20, line: 328, baseType: !1025, size: 64, offset: 192)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1022, file: !20, line: 329, baseType: !1025, size: 64, offset: 256)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1022, file: !20, line: 330, baseType: !1025, size: 64, offset: 320)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1022, file: !20, line: 331, baseType: !912, size: 64, offset: 384)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1022, file: !20, line: 334, baseType: !1041, size: 64, offset: 448)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!1044, !619}
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1022, file: !20, line: 335, baseType: !1046, size: 64, offset: 512)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!143, !619, !1049}
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1022, file: !20, line: 337, baseType: !1051, size: 64, offset: 576)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!143, !619, !1044}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1022, file: !20, line: 339, baseType: !1055, size: 64, offset: 640)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!143, !832, !1058}
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !833, file: !15, line: 1199, baseType: !1060, size: 64, offset: 512)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1062)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !20, line: 430, size: 704, elements: !1063)
!1063 = !{!1064, !1068, !1069, !1073, !1074, !1075, !1090, !1113, !1117, !1118, !1141}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1062, file: !20, line: 431, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!143, !832, !143, !143, !742}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1062, file: !20, line: 432, baseType: !912, size: 64, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1062, file: !20, line: 433, baseType: !1070, size: 64, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!143, !832, !7}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1062, file: !20, line: 434, baseType: !1070, size: 64, offset: 192)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1062, file: !20, line: 435, baseType: !912, size: 64, offset: 256)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1062, file: !20, line: 436, baseType: !1076, size: 64, offset: 320)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!143, !832, !143, !1079}
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !20, line: 417, size: 256, elements: !1081)
!1081 = !{!1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1080, file: !20, line: 418, baseType: !143, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1080, file: !20, line: 419, baseType: !7, size: 32, offset: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1080, file: !20, line: 420, baseType: !7, size: 32, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1080, file: !20, line: 422, baseType: !7, size: 32, offset: 96)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1080, file: !20, line: 423, baseType: !7, size: 32, offset: 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1080, file: !20, line: 424, baseType: !7, size: 32, offset: 160)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1080, file: !20, line: 425, baseType: !7, size: 32, offset: 192)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1080, file: !20, line: 426, baseType: !7, size: 32, offset: 224)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1062, file: !20, line: 437, baseType: !1091, size: 64, offset: 384)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!143, !832, !972, !1094}
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !20, line: 345, size: 960, elements: !1096)
!1096 = !{!1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1095, file: !20, line: 346, baseType: !143, size: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1095, file: !20, line: 347, baseType: !361, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1095, file: !20, line: 348, baseType: !361, size: 64, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1095, file: !20, line: 349, baseType: !361, size: 64, offset: 192)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1095, file: !20, line: 350, baseType: !361, size: 64, offset: 256)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1095, file: !20, line: 351, baseType: !361, size: 64, offset: 320)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1095, file: !20, line: 352, baseType: !361, size: 64, offset: 384)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1095, file: !20, line: 353, baseType: !232, size: 64, offset: 448)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1095, file: !20, line: 355, baseType: !232, size: 64, offset: 512)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1095, file: !20, line: 356, baseType: !143, size: 32, offset: 576)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1095, file: !20, line: 357, baseType: !143, size: 32, offset: 608)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1095, file: !20, line: 358, baseType: !361, size: 64, offset: 640)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1095, file: !20, line: 359, baseType: !361, size: 64, offset: 704)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1095, file: !20, line: 360, baseType: !361, size: 64, offset: 768)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1095, file: !20, line: 361, baseType: !232, size: 64, offset: 832)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1095, file: !20, line: 362, baseType: !143, size: 32, offset: 896)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1062, file: !20, line: 438, baseType: !1114, size: 64, offset: 448)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!143, !832, !1058, !1094}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1062, file: !20, line: 440, baseType: !1091, size: 64, offset: 512)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1062, file: !20, line: 441, baseType: !1119, size: 64, offset: 576)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!143, !832, !1122}
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !20, line: 411, size: 1408, elements: !1124)
!1124 = !{!1125, !1126}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1123, file: !20, line: 412, baseType: !7, size: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1123, file: !20, line: 413, baseType: !1127, size: 1344, offset: 64)
!1127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1128, size: 1344, elements: !281)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !20, line: 397, size: 448, elements: !1129)
!1129 = !{!1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1140}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1128, file: !20, line: 398, baseType: !7, size: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1128, file: !20, line: 399, baseType: !7, size: 32, offset: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1128, file: !20, line: 401, baseType: !7, size: 32, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1128, file: !20, line: 402, baseType: !7, size: 32, offset: 96)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1128, file: !20, line: 403, baseType: !7, size: 32, offset: 128)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1128, file: !20, line: 404, baseType: !7, size: 32, offset: 160)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1128, file: !20, line: 405, baseType: !7, size: 32, offset: 192)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1128, file: !20, line: 406, baseType: !363, size: 64, offset: 256)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1128, file: !20, line: 407, baseType: !1139, size: 64, offset: 320)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !111, line: 132, baseType: !361)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1128, file: !20, line: 408, baseType: !1139, size: 64, offset: 384)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1062, file: !20, line: 442, baseType: !1070, size: 64, offset: 640)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !833, file: !15, line: 1200, baseType: !1143, size: 64, offset: 576)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1145)
!1145 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !15, line: 54, flags: DIFlagFwdDecl)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !833, file: !15, line: 1201, baseType: !104, size: 64, offset: 640)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !833, file: !15, line: 1202, baseType: !104, size: 64, offset: 704)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !833, file: !15, line: 1203, baseType: !104, size: 64, offset: 768)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !833, file: !15, line: 1204, baseType: !579, size: 64, offset: 832)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !833, file: !15, line: 1205, baseType: !393, size: 320, offset: 896)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !833, file: !15, line: 1206, baseType: !143, size: 32, offset: 1216)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !833, file: !15, line: 1207, baseType: !139, size: 32, offset: 1248)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !833, file: !15, line: 1209, baseType: !105, size: 64, offset: 1280)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !833, file: !15, line: 1211, baseType: !1155, size: 64, offset: 1344)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1158)
!1158 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !15, line: 1211, flags: DIFlagFwdDecl)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !833, file: !15, line: 1223, baseType: !1160, size: 64, offset: 1408)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !596, line: 34, size: 64, elements: !1161)
!1161 = !{!1162}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1160, file: !596, line: 35, baseType: !599, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !833, file: !15, line: 1224, baseType: !248, size: 128, offset: 1472)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !833, file: !15, line: 1225, baseType: !1165, size: 64, offset: 1600)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !15, line: 1225, flags: DIFlagFwdDecl)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !833, file: !15, line: 1226, baseType: !1168, size: 64, offset: 1664)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !15, line: 1226, flags: DIFlagFwdDecl)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !833, file: !15, line: 1227, baseType: !1171, size: 64, offset: 1728)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !15, line: 50, flags: DIFlagFwdDecl)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !833, file: !15, line: 1228, baseType: !1174, size: 64, offset: 1792)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !15, line: 1228, flags: DIFlagFwdDecl)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !833, file: !15, line: 1229, baseType: !110, size: 128, offset: 1856)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !833, file: !15, line: 1230, baseType: !7, size: 32, offset: 1984)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !833, file: !15, line: 1231, baseType: !1179, size: 2496, offset: 2048)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !20, line: 521, size: 2496, elements: !1180)
!1180 = !{!1181, !1182, !1183, !1185, !1217}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1179, file: !20, line: 522, baseType: !7, size: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1179, file: !20, line: 523, baseType: !393, size: 320, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1179, file: !20, line: 524, baseType: !1184, size: 192, offset: 384)
!1184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 192, elements: !281)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1179, file: !20, line: 525, baseType: !1186, size: 1728, offset: 576)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1187, size: 1728, elements: !281)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !20, line: 222, size: 576, elements: !1188)
!1188 = !{!1189, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1187, file: !20, line: 223, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !20, line: 445, size: 256, elements: !1192)
!1192 = !{!1193, !1194, !1207, !1208}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1191, file: !20, line: 446, baseType: !143, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1191, file: !20, line: 447, baseType: !1195, size: 64, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1197)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !20, line: 312, size: 512, elements: !1198)
!1198 = !{!1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1197, file: !20, line: 313, baseType: !912, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1197, file: !20, line: 314, baseType: !912, size: 64, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1197, file: !20, line: 315, baseType: !912, size: 64, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1197, file: !20, line: 316, baseType: !912, size: 64, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1197, file: !20, line: 317, baseType: !1025, size: 64, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1197, file: !20, line: 318, baseType: !1025, size: 64, offset: 320)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1197, file: !20, line: 319, baseType: !1025, size: 64, offset: 384)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1197, file: !20, line: 320, baseType: !1055, size: 64, offset: 448)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1191, file: !20, line: 448, baseType: !865, size: 64, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1191, file: !20, line: 449, baseType: !1190, size: 64, offset: 192)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1187, file: !20, line: 224, baseType: !143, size: 32, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1187, file: !20, line: 226, baseType: !248, size: 128, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1187, file: !20, line: 227, baseType: !104, size: 64, offset: 256)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1187, file: !20, line: 228, baseType: !7, size: 32, offset: 320)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1187, file: !20, line: 229, baseType: !7, size: 32, offset: 352)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1187, file: !20, line: 230, baseType: !993, size: 64, offset: 384)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1187, file: !20, line: 231, baseType: !993, size: 64, offset: 448)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1187, file: !20, line: 232, baseType: !105, size: 64, offset: 512)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1179, file: !20, line: 526, baseType: !1218, size: 192, offset: 2304)
!1218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1195, size: 192, elements: !281)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !833, file: !15, line: 1233, baseType: !1220, size: 2368, offset: 4544)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !15, line: 1184, size: 2368, elements: !1221)
!1221 = !{!1222, !1223, !1224}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1220, file: !15, line: 1185, baseType: !188, size: 16)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1220, file: !15, line: 1186, baseType: !188, size: 16, offset: 16)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1220, file: !15, line: 1187, baseType: !1225, size: 2304, offset: 64)
!1225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1226, size: 2304, elements: !281)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1227, line: 12, size: 768, elements: !1228)
!1227 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1228 = !{!1229, !1237, !1239, !2945, !2946}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1226, file: !1227, line: 13, baseType: !1230, size: 384)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1231, line: 17, size: 384, elements: !1232)
!1231 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1232 = !{!1233, !1234, !1235, !1236}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1230, file: !1231, line: 18, baseType: !143, size: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1230, file: !1231, line: 19, baseType: !143, size: 32, offset: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1230, file: !1231, line: 20, baseType: !305, size: 192, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1230, file: !1231, line: 22, baseType: !213, size: 128, align: 64, offset: 256)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1226, file: !1227, line: 14, baseType: !1238, size: 64, offset: 384)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1226, file: !1227, line: 15, baseType: !1240, size: 64, offset: 448)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1241, line: 16, size: 64, elements: !1242)
!1241 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1242 = !{!1243}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1240, file: !1241, line: 17, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !943, line: 746, size: 58368, elements: !1246)
!1246 = !{!1247, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1327, !1338, !1433, !1437, !1440, !1471, !1472, !1473, !1474, !1485, !1487, !1488, !1489, !1490, !1491, !1492, !1503, !1504, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1521, !1522, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1610, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1625, !1626, !1627, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1669, !1675, !1676, !1677, !1678, !1679, !1683, !1686, !1693, !1698, !1701, !1704, !1707, !1710, !1850, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1892, !1893, !1894, !1903, !1911, !1912, !1913, !1914, !1915, !1920, !1921, !1922, !1925, !1926, !1929, !1932, !1935, !1943, !1946, !1947, !2033, !2034, !2035, !2036, !2037, !2043, !2044, !2045, !2046, !2049, !2050, !2053, !2056, !2057, !2060, !2061, !2062, !2065, !2066, !2067, !2070, !2071, !2072, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2104, !2107, !2601, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2613, !2685, !2687, !2688, !2689, !2690, !2691, !2703, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2720, !2721, !2722}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1245, file: !943, line: 752, baseType: !1248, size: 192)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1249, line: 56, size: 192, elements: !1250)
!1249 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1250 = !{!1251, !1252, !1253, !1254}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1248, file: !1249, line: 57, baseType: !104, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1248, file: !1249, line: 58, baseType: !104, size: 64, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1248, file: !1249, line: 59, baseType: !418, size: 32, offset: 128)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1248, file: !1249, line: 61, baseType: !418, size: 32, offset: 160)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1245, file: !943, line: 754, baseType: !7, size: 32, offset: 192)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1245, file: !943, line: 767, baseType: !105, size: 64, offset: 256)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1245, file: !943, line: 768, baseType: !289, size: 32, offset: 320)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1245, file: !943, line: 770, baseType: !7, size: 32, offset: 352)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1245, file: !943, line: 771, baseType: !7, size: 32, offset: 384)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1245, file: !943, line: 774, baseType: !143, size: 32, offset: 416)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1245, file: !943, line: 775, baseType: !1262, size: 128, offset: 448)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1263, line: 58, size: 128, elements: !1264)
!1263 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1264 = !{!1265, !1266, !1271, !1272}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1262, file: !1263, line: 59, baseType: !207, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, scope: !1262, file: !1263, line: 60, baseType: !1267, size: 32, offset: 64)
!1267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1262, file: !1263, line: 60, size: 32, elements: !1268)
!1268 = !{!1269, !1270}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1267, file: !1263, line: 61, baseType: !7, size: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1267, file: !1263, line: 62, baseType: !139, size: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1262, file: !1263, line: 65, baseType: !186, size: 16, offset: 96)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1262, file: !1263, line: 65, baseType: !186, size: 16, offset: 112)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1245, file: !943, line: 776, baseType: !7, size: 32, offset: 576)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1245, file: !943, line: 777, baseType: !104, size: 64, offset: 640)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1245, file: !943, line: 778, baseType: !1244, size: 64, offset: 704)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1245, file: !943, line: 787, baseType: !143, size: 32, offset: 768)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1245, file: !943, line: 788, baseType: !143, size: 32, offset: 800)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1245, file: !943, line: 790, baseType: !143, size: 32, offset: 832)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1245, file: !943, line: 792, baseType: !143, size: 32, offset: 864)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1245, file: !943, line: 793, baseType: !143, size: 32, offset: 896)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1245, file: !943, line: 794, baseType: !143, size: 32, offset: 928)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1245, file: !943, line: 795, baseType: !7, size: 32, offset: 960)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1245, file: !943, line: 797, baseType: !1284, size: 2048, offset: 1024)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !943, line: 551, size: 2048, elements: !1285)
!1285 = !{!1286, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1306, !1309, !1310, !1311}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1284, file: !943, line: 553, baseType: !1287, size: 128)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !943, line: 411, size: 128, elements: !1288)
!1288 = !{!1289, !1290}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1287, file: !943, line: 412, baseType: !104, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1287, file: !943, line: 413, baseType: !418, size: 32, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1284, file: !943, line: 554, baseType: !385, size: 192, align: 64, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1284, file: !943, line: 555, baseType: !361, size: 64, offset: 320)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1284, file: !943, line: 556, baseType: !361, size: 64, offset: 384)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1284, file: !943, line: 558, baseType: !248, size: 128, offset: 448)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1284, file: !943, line: 559, baseType: !7, size: 32, offset: 576)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1284, file: !943, line: 561, baseType: !361, size: 64, offset: 640)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1284, file: !943, line: 562, baseType: !361, size: 64, offset: 704)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1284, file: !943, line: 563, baseType: !361, size: 64, offset: 768)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1284, file: !943, line: 564, baseType: !361, size: 64, offset: 832)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1284, file: !943, line: 565, baseType: !232, size: 64, offset: 896)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1284, file: !943, line: 566, baseType: !361, size: 64, offset: 960)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1284, file: !943, line: 568, baseType: !361, size: 64, offset: 1024)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1284, file: !943, line: 571, baseType: !143, size: 32, offset: 1088)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1284, file: !943, line: 572, baseType: !1305, size: 64, offset: 1152)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1284, file: !943, line: 574, baseType: !1307, size: 64, offset: 1216)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !943, line: 49, flags: DIFlagFwdDecl)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1284, file: !943, line: 576, baseType: !1307, size: 64, offset: 1280)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1284, file: !943, line: 578, baseType: !104, size: 64, offset: 1344)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1284, file: !943, line: 588, baseType: !1312, size: 512, align: 512, offset: 1536)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !943, line: 497, size: 512, align: 512, elements: !1313)
!1313 = !{!1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1312, file: !943, line: 498, baseType: !361, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1312, file: !943, line: 499, baseType: !361, size: 64, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1312, file: !943, line: 500, baseType: !361, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1312, file: !943, line: 501, baseType: !418, size: 32, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1312, file: !943, line: 502, baseType: !418, size: 32, offset: 224)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1312, file: !943, line: 503, baseType: !104, size: 64, offset: 256)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1312, file: !943, line: 504, baseType: !104, size: 64, offset: 320)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1312, file: !943, line: 505, baseType: !104, size: 64, offset: 384)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1312, file: !943, line: 506, baseType: !1323, size: 64, align: 64, offset: 448)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !943, line: 445, size: 64, align: 64, elements: !1324)
!1324 = !{!1325, !1326}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1323, file: !943, line: 446, baseType: !7, size: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1323, file: !943, line: 447, baseType: !7, size: 32, offset: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1245, file: !943, line: 798, baseType: !1328, size: 384, offset: 3072)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !943, line: 592, size: 384, elements: !1329)
!1329 = !{!1330, !1331, !1332, !1333, !1334, !1335, !1336}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1328, file: !943, line: 593, baseType: !248, size: 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1328, file: !943, line: 594, baseType: !104, size: 64, offset: 128)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1328, file: !943, line: 595, baseType: !104, size: 64, offset: 192)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1328, file: !943, line: 596, baseType: !7, size: 32, offset: 256)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1328, file: !943, line: 597, baseType: !188, size: 16, offset: 288)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1328, file: !943, line: 598, baseType: !188, size: 16, offset: 304)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1328, file: !943, line: 600, baseType: !1337, size: 64, offset: 320)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1245, file: !943, line: 799, baseType: !1339, size: 1792, offset: 3456)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !943, line: 610, size: 1792, elements: !1340)
!1340 = !{!1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1430, !1431}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1339, file: !943, line: 611, baseType: !385, size: 192, align: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1339, file: !943, line: 618, baseType: !361, size: 64, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1339, file: !943, line: 619, baseType: !361, size: 64, offset: 256)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1339, file: !943, line: 620, baseType: !361, size: 64, offset: 320)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1339, file: !943, line: 621, baseType: !361, size: 64, offset: 384)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1339, file: !943, line: 622, baseType: !361, size: 64, offset: 448)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1339, file: !943, line: 629, baseType: !232, size: 64, offset: 512)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1339, file: !943, line: 630, baseType: !361, size: 64, offset: 576)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1339, file: !943, line: 631, baseType: !7, size: 32, offset: 640)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1339, file: !943, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1339, file: !943, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1339, file: !943, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1339, file: !943, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1339, file: !943, line: 662, baseType: !1355, size: 512, offset: 704)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !26, line: 118, size: 512, elements: !1356)
!1356 = !{!1357, !1365, !1366, !1371, !1426, !1427, !1428, !1429}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1355, file: !26, line: 119, baseType: !1358, size: 256)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1359, line: 9, size: 256, elements: !1360)
!1359 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1360 = !{!1361, !1362}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1358, file: !1359, line: 10, baseType: !385, size: 192, align: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1358, file: !1359, line: 11, baseType: !1363, size: 64, offset: 192)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1364, line: 29, baseType: !232)
!1364 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1355, file: !26, line: 120, baseType: !1363, size: 64, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1355, file: !26, line: 121, baseType: !1367, size: 64, offset: 320)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!25, !1370}
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1355, file: !26, line: 122, baseType: !1372, size: 64, offset: 384)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !26, line: 159, size: 512, align: 512, elements: !1374)
!1374 = !{!1375, !1400, !1401, !1404, !1409, !1410, !1421, !1425}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1373, file: !26, line: 160, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !26, line: 215, size: 4608, align: 512, elements: !1378)
!1378 = !{!1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1377, file: !26, line: 216, baseType: !241, size: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1377, file: !26, line: 217, baseType: !7, size: 32, offset: 32)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1377, file: !26, line: 218, baseType: !7, size: 32, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1377, file: !26, line: 219, baseType: !7, size: 32, offset: 96)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1377, file: !26, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1377, file: !26, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1377, file: !26, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1377, file: !26, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1377, file: !26, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1377, file: !26, line: 226, baseType: !7, size: 32, offset: 160)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1377, file: !26, line: 227, baseType: !188, size: 16, offset: 192)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1377, file: !26, line: 228, baseType: !188, size: 16, offset: 208)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1377, file: !26, line: 229, baseType: !7, size: 32, offset: 224)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1377, file: !26, line: 235, baseType: !1363, size: 64, offset: 256)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1377, file: !26, line: 236, baseType: !1370, size: 64, offset: 320)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1377, file: !26, line: 237, baseType: !1363, size: 64, offset: 384)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1377, file: !26, line: 238, baseType: !1370, size: 64, offset: 448)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1377, file: !26, line: 239, baseType: !1397, size: 4096, align: 512, offset: 512)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1373, size: 4096, align: 512, elements: !1398)
!1398 = !{!1399}
!1399 = !DISubrange(count: 8)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1373, file: !26, line: 161, baseType: !7, size: 32, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1373, file: !26, line: 162, baseType: !1402, size: 32, offset: 96)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !111, line: 32, baseType: !1403)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !256, line: 96, baseType: !143)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1373, file: !26, line: 163, baseType: !1405, size: 32, offset: 128)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !586, line: 274, baseType: !1406)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !586, line: 274, size: 32, elements: !1407)
!1407 = !{!1408}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1406, file: !586, line: 274, baseType: !590, size: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1373, file: !26, line: 164, baseType: !1370, size: 64, offset: 192)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1373, file: !26, line: 165, baseType: !1411, size: 128, offset: 256)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1359, line: 14, size: 128, elements: !1412)
!1412 = !{!1413}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1411, file: !1359, line: 15, baseType: !1414, size: 128)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !386, line: 26, size: 128, elements: !1415)
!1415 = !{!1416, !1420}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1414, file: !386, line: 27, baseType: !1417, size: 64)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !386, line: 12, size: 64, elements: !1418)
!1418 = !{!1419}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1417, file: !386, line: 13, baseType: !390, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1414, file: !386, line: 28, baseType: !390, size: 64, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1373, file: !26, line: 166, baseType: !1422, size: 64, offset: 384)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!1363}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1373, file: !26, line: 167, baseType: !1363, size: 64, offset: 448)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1355, file: !26, line: 123, baseType: !176, size: 8, offset: 448)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1355, file: !26, line: 124, baseType: !176, size: 8, offset: 456)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1355, file: !26, line: 125, baseType: !176, size: 8, offset: 464)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1355, file: !26, line: 126, baseType: !176, size: 8, offset: 472)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1339, file: !943, line: 671, baseType: !1355, size: 512, offset: 1216)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1339, file: !943, line: 679, baseType: !1432, size: 64, offset: 1728)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1245, file: !943, line: 800, baseType: !1434, size: 64, offset: 5248)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1436)
!1436 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !943, line: 800, flags: DIFlagFwdDecl)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1245, file: !943, line: 809, baseType: !1438, size: 64, offset: 5312)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !943, line: 70, flags: DIFlagFwdDecl)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1245, file: !943, line: 825, baseType: !1441, size: 2048, align: 512, offset: 5632)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !943, line: 509, size: 2048, align: 512, elements: !1442)
!1442 = !{!1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1441, file: !943, line: 511, baseType: !361, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1441, file: !943, line: 512, baseType: !361, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1441, file: !943, line: 513, baseType: !361, size: 64, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1441, file: !943, line: 514, baseType: !361, size: 64, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1441, file: !943, line: 515, baseType: !361, size: 64, offset: 256)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1441, file: !943, line: 516, baseType: !361, size: 64, offset: 320)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1441, file: !943, line: 518, baseType: !361, size: 64, offset: 384)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1441, file: !943, line: 519, baseType: !361, size: 64, offset: 448)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1441, file: !943, line: 520, baseType: !232, size: 64, offset: 512)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1441, file: !943, line: 522, baseType: !361, size: 64, offset: 576)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1441, file: !943, line: 523, baseType: !361, size: 64, offset: 640)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1441, file: !943, line: 524, baseType: !232, size: 64, offset: 704)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1441, file: !943, line: 526, baseType: !232, size: 64, offset: 768)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1441, file: !943, line: 527, baseType: !361, size: 64, offset: 832)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1441, file: !943, line: 529, baseType: !361, size: 64, offset: 896)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1441, file: !943, line: 530, baseType: !361, size: 64, offset: 960)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1441, file: !943, line: 531, baseType: !361, size: 64, offset: 1024)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1441, file: !943, line: 532, baseType: !361, size: 64, offset: 1088)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1441, file: !943, line: 533, baseType: !361, size: 64, offset: 1152)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1441, file: !943, line: 535, baseType: !361, size: 64, offset: 1216)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1441, file: !943, line: 536, baseType: !361, size: 64, offset: 1280)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1441, file: !943, line: 537, baseType: !361, size: 64, offset: 1344)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1441, file: !943, line: 538, baseType: !361, size: 64, offset: 1408)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1441, file: !943, line: 539, baseType: !361, size: 64, offset: 1472)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1441, file: !943, line: 540, baseType: !361, size: 64, offset: 1536)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1441, file: !943, line: 541, baseType: !361, size: 64, offset: 1600)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1441, file: !943, line: 542, baseType: !361, size: 64, offset: 1664)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1441, file: !943, line: 543, baseType: !361, size: 64, offset: 1728)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1245, file: !943, line: 833, baseType: !7, size: 32, offset: 7680)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1245, file: !943, line: 836, baseType: !7, size: 32, offset: 7712)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1245, file: !943, line: 837, baseType: !143, size: 32, offset: 7744)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1245, file: !943, line: 838, baseType: !1475, size: 64, offset: 7808)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1477)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1478, line: 19, baseType: !1479)
!1478 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1478, line: 19, size: 64, elements: !1480)
!1480 = !{!1481}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1479, file: !1478, line: 19, baseType: !1482, size: 64)
!1482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 64, elements: !1483)
!1483 = !{!1484}
!1484 = !DISubrange(count: 1)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1245, file: !943, line: 839, baseType: !1486, size: 64, offset: 7872)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1245, file: !943, line: 840, baseType: !1477, size: 64, offset: 7936)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1245, file: !943, line: 841, baseType: !105, size: 64, offset: 8000)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1245, file: !943, line: 843, baseType: !188, size: 16, offset: 8064)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1245, file: !943, line: 845, baseType: !188, size: 16, offset: 8080)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1245, file: !943, line: 848, baseType: !143, size: 32, offset: 8096)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1245, file: !943, line: 849, baseType: !1493, size: 32, offset: 8128)
!1493 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !943, line: 718, size: 32, elements: !1494)
!1494 = !{!1495, !1502}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1493, file: !943, line: 724, baseType: !1496, size: 32)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1493, file: !943, line: 719, size: 32, elements: !1497)
!1497 = !{!1498, !1499, !1500, !1501}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1496, file: !943, line: 720, baseType: !176, size: 8)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1496, file: !943, line: 721, baseType: !176, size: 8, offset: 8)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1496, file: !943, line: 722, baseType: !176, size: 8, offset: 16)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1496, file: !943, line: 723, baseType: !176, size: 8, offset: 24)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1493, file: !943, line: 725, baseType: !418, size: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1245, file: !943, line: 850, baseType: !248, size: 128, offset: 8192)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1245, file: !943, line: 851, baseType: !1505, size: 64, offset: 8320)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !943, line: 60, flags: DIFlagFwdDecl)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1245, file: !943, line: 855, baseType: !104, size: 64, offset: 8384)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1245, file: !943, line: 856, baseType: !176, size: 8, offset: 8448)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1245, file: !943, line: 857, baseType: !176, size: 8, offset: 8456)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1245, file: !943, line: 858, baseType: !143, size: 32, offset: 8480)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1245, file: !943, line: 859, baseType: !248, size: 128, offset: 8512)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1245, file: !943, line: 860, baseType: !143, size: 32, offset: 8640)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1245, file: !943, line: 861, baseType: !248, size: 128, offset: 8704)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1245, file: !943, line: 873, baseType: !1515, size: 256, offset: 8832)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !943, line: 376, size: 256, elements: !1516)
!1516 = !{!1517, !1518, !1519, !1520}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1515, file: !943, line: 381, baseType: !104, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1515, file: !943, line: 384, baseType: !363, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1515, file: !943, line: 389, baseType: !363, size: 64, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1515, file: !943, line: 392, baseType: !363, size: 64, offset: 192)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1245, file: !943, line: 875, baseType: !248, size: 128, offset: 9088)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1245, file: !943, line: 877, baseType: !1523, size: 320, offset: 9216)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1524, line: 86, size: 320, elements: !1525)
!1524 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1525 = !{!1526, !1527, !1528}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1523, file: !1524, line: 87, baseType: !143, size: 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1523, file: !1524, line: 88, baseType: !248, size: 128, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1523, file: !1524, line: 89, baseType: !248, size: 128, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1245, file: !943, line: 878, baseType: !385, size: 192, align: 64, offset: 9536)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1245, file: !943, line: 881, baseType: !129, size: 64, offset: 9728)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1245, file: !943, line: 882, baseType: !129, size: 64, offset: 9792)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1245, file: !943, line: 884, baseType: !143, size: 32, offset: 9856)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1245, file: !943, line: 885, baseType: !143, size: 32, offset: 9888)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1245, file: !943, line: 886, baseType: !143, size: 32, offset: 9920)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1245, file: !943, line: 888, baseType: !143, size: 32, offset: 9952)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1245, file: !943, line: 890, baseType: !104, size: 64, offset: 9984)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1245, file: !943, line: 893, baseType: !7, size: 32, offset: 10048)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1245, file: !943, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1245, file: !943, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1245, file: !943, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1245, file: !943, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1245, file: !943, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1245, file: !943, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1245, file: !943, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1245, file: !943, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1245, file: !943, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1245, file: !943, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1245, file: !943, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1245, file: !943, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1245, file: !943, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1245, file: !943, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1245, file: !943, line: 969, baseType: !104, size: 64, offset: 10176)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1245, file: !943, line: 971, baseType: !1554, size: 448, offset: 10240)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !31, line: 25, size: 448, elements: !1555)
!1555 = !{!1556, !1557, !1562}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1554, file: !31, line: 26, baseType: !104, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1554, file: !31, line: 27, baseType: !1558, size: 64, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!734, !1561}
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, scope: !1554, file: !31, line: 28, baseType: !1563, size: 320, offset: 128)
!1563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1554, file: !31, line: 28, size: 320, elements: !1564)
!1564 = !{!1565, !1575, !1600}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1563, file: !31, line: 37, baseType: !1566, size: 320)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1563, file: !31, line: 30, size: 320, elements: !1567)
!1567 = !{!1568, !1570, !1571, !1572, !1573, !1574}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1566, file: !31, line: 31, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1566, file: !31, line: 32, baseType: !418, size: 32, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1566, file: !31, line: 33, baseType: !418, size: 32, offset: 96)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1566, file: !31, line: 34, baseType: !418, size: 32, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1566, file: !31, line: 35, baseType: !361, size: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1566, file: !31, line: 36, baseType: !1569, size: 64, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1563, file: !31, line: 47, baseType: !1576, size: 192)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1563, file: !31, line: 39, size: 192, elements: !1577)
!1577 = !{!1578, !1579, !1580, !1599}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1576, file: !31, line: 40, baseType: !1402, size: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1576, file: !31, line: 41, baseType: !30, size: 32, offset: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, scope: !1576, file: !31, line: 42, baseType: !1581, size: 64, offset: 64)
!1581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1576, file: !31, line: 42, size: 64, elements: !1582)
!1582 = !{!1583, !1591}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1581, file: !31, line: 43, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1586, line: 7, size: 128, elements: !1587)
!1586 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1587 = !{!1588, !1590}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1585, file: !1586, line: 8, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !256, line: 93, baseType: !234)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1585, file: !1586, line: 9, baseType: !234, size: 64, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1581, file: !31, line: 44, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1594, line: 7, size: 64, elements: !1595)
!1594 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1595 = !{!1596, !1598}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1593, file: !1594, line: 8, baseType: !1597, size: 32)
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1594, line: 5, baseType: !378)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1593, file: !1594, line: 9, baseType: !378, size: 32, offset: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1576, file: !31, line: 46, baseType: !361, size: 64, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1563, file: !31, line: 55, baseType: !1601, size: 256)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1563, file: !31, line: 49, size: 256, elements: !1602)
!1602 = !{!1603, !1606, !1607, !1608, !1609}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1601, file: !31, line: 50, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !31, line: 14, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1601, file: !31, line: 51, baseType: !143, size: 32, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1601, file: !31, line: 52, baseType: !143, size: 32, offset: 96)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1601, file: !31, line: 53, baseType: !104, size: 64, offset: 128)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1601, file: !31, line: 54, baseType: !104, size: 64, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1245, file: !943, line: 973, baseType: !1611, size: 32, offset: 10688)
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !111, line: 27, baseType: !1612)
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !256, line: 28, baseType: !143)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1245, file: !943, line: 974, baseType: !1611, size: 32, offset: 10720)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1245, file: !943, line: 978, baseType: !104, size: 64, offset: 10752)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1245, file: !943, line: 987, baseType: !1244, size: 64, offset: 10816)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1245, file: !943, line: 990, baseType: !1244, size: 64, offset: 10880)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1245, file: !943, line: 995, baseType: !248, size: 128, offset: 10944)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1245, file: !943, line: 996, baseType: !248, size: 128, offset: 11072)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1245, file: !943, line: 997, baseType: !1244, size: 64, offset: 11200)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1245, file: !943, line: 1005, baseType: !248, size: 128, offset: 11264)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1245, file: !943, line: 1006, baseType: !248, size: 128, offset: 11392)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1245, file: !943, line: 1009, baseType: !285, size: 64, offset: 11520)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1245, file: !943, line: 1010, baseType: !1624, size: 512, offset: 11584)
!1624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 512, elements: !301)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1245, file: !943, line: 1011, baseType: !248, size: 128, offset: 12096)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1245, file: !943, line: 1012, baseType: !248, size: 128, offset: 12224)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1245, file: !943, line: 1014, baseType: !1628, size: 64, offset: 12352)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1630, line: 26, size: 256, elements: !1631)
!1630 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1631 = !{!1632, !1633}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1629, file: !1630, line: 27, baseType: !7, size: 32)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1629, file: !1630, line: 28, baseType: !1634, size: 192, offset: 64)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1635, line: 43, size: 192, elements: !1636)
!1635 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1636 = !{!1637, !1638}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1634, file: !1635, line: 44, baseType: !241, size: 32)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1634, file: !1635, line: 45, baseType: !248, size: 128, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1245, file: !943, line: 1017, baseType: !935, size: 64, offset: 12416)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1245, file: !943, line: 1020, baseType: !935, size: 64, offset: 12480)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1245, file: !943, line: 1023, baseType: !105, size: 64, offset: 12544)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1245, file: !943, line: 1025, baseType: !361, size: 64, offset: 12608)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1245, file: !943, line: 1026, baseType: !361, size: 64, offset: 12672)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1245, file: !943, line: 1031, baseType: !361, size: 64, offset: 12736)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1245, file: !943, line: 1032, baseType: !1646, size: 192, offset: 12800)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !943, line: 324, size: 192, elements: !1647)
!1647 = !{!1648, !1649, !1650}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1646, file: !943, line: 326, baseType: !361, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1646, file: !943, line: 327, baseType: !361, size: 64, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1646, file: !943, line: 328, baseType: !241, size: 32, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1245, file: !943, line: 1041, baseType: !104, size: 64, offset: 12992)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1245, file: !943, line: 1042, baseType: !104, size: 64, offset: 13056)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1245, file: !943, line: 1045, baseType: !361, size: 64, offset: 13120)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1245, file: !943, line: 1048, baseType: !361, size: 64, offset: 13184)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1245, file: !943, line: 1051, baseType: !104, size: 64, offset: 13248)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1245, file: !943, line: 1052, baseType: !104, size: 64, offset: 13312)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1245, file: !943, line: 1055, baseType: !1658, size: 640, offset: 13376)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1659, line: 132, size: 640, elements: !1660)
!1659 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1660 = !{!1661, !1667, !1668}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1658, file: !1659, line: 133, baseType: !1662, size: 576)
!1662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1663, size: 576, elements: !281)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1659, line: 117, size: 192, elements: !1664)
!1664 = !{!1665, !1666}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1663, file: !1659, line: 118, baseType: !361, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1663, file: !1659, line: 119, baseType: !1411, size: 128, offset: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1658, file: !1659, line: 134, baseType: !7, size: 32, offset: 576)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1658, file: !1659, line: 135, baseType: !7, size: 32, offset: 608)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1245, file: !943, line: 1058, baseType: !1670, size: 448, offset: 14016)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1659, line: 144, size: 448, elements: !1671)
!1671 = !{!1672, !1673, !1674}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1670, file: !1659, line: 145, baseType: !213, size: 128, align: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1670, file: !1659, line: 146, baseType: !236, size: 256, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1670, file: !1659, line: 147, baseType: !7, size: 32, offset: 384)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1245, file: !943, line: 1064, baseType: !334, size: 64, offset: 14464)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1245, file: !943, line: 1067, baseType: !334, size: 64, offset: 14528)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1245, file: !943, line: 1070, baseType: !334, size: 64, offset: 14592)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1245, file: !943, line: 1074, baseType: !370, size: 64, offset: 14656)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1245, file: !943, line: 1084, baseType: !1680, size: 128, offset: 14720)
!1680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 128, elements: !1681)
!1681 = !{!1682}
!1682 = !DISubrange(count: 16)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1245, file: !943, line: 1086, baseType: !1684, size: 64, offset: 14848)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !943, line: 55, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1245, file: !943, line: 1089, baseType: !1687, size: 64, offset: 14912)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1688, line: 12, size: 64, elements: !1689)
!1688 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1689 = !{!1690}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1687, file: !1688, line: 13, baseType: !1691, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1688, line: 8, flags: DIFlagFwdDecl)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1245, file: !943, line: 1090, baseType: !1694, size: 128, offset: 14976)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1695, line: 13, size: 128, elements: !1696)
!1695 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1696 = !{!1697}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1694, file: !1695, line: 14, baseType: !248, size: 128)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1245, file: !943, line: 1097, baseType: !1699, size: 64, offset: 15104)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !943, line: 50, flags: DIFlagFwdDecl)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1245, file: !943, line: 1100, baseType: !1702, size: 64, offset: 15168)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !943, line: 1100, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1245, file: !943, line: 1103, baseType: !1705, size: 64, offset: 15232)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !943, line: 53, flags: DIFlagFwdDecl)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1245, file: !943, line: 1107, baseType: !1708, size: 64, offset: 15296)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !943, line: 56, flags: DIFlagFwdDecl)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1245, file: !943, line: 1110, baseType: !1711, size: 64, offset: 15360)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1713, line: 93, size: 8768, elements: !1714)
!1713 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1714 = !{!1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1764, !1773, !1774, !1776, !1777, !1778, !1781, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1819, !1820, !1827, !1837, !1840, !1841, !1844, !1845, !1846, !1847, !1848, !1849}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1712, file: !1713, line: 94, baseType: !289, size: 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1712, file: !1713, line: 95, baseType: !139, size: 32, offset: 32)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1712, file: !1713, line: 96, baseType: !143, size: 32, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1712, file: !1713, line: 97, baseType: !143, size: 32, offset: 96)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1712, file: !1713, line: 98, baseType: !248, size: 128, offset: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1712, file: !1713, line: 100, baseType: !305, size: 192, offset: 256)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1712, file: !1713, line: 103, baseType: !1244, size: 64, offset: 448)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1712, file: !1713, line: 106, baseType: !1723, size: 192, offset: 512)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !546, line: 32, size: 192, elements: !1724)
!1724 = !{!1725, !1726}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1723, file: !546, line: 33, baseType: !248, size: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1723, file: !546, line: 34, baseType: !1727, size: 64, offset: 128)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1728, line: 25, baseType: !1729)
!1728 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1728, line: 23, size: 64, elements: !1730)
!1730 = !{!1731}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1729, file: !1728, line: 24, baseType: !1482, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1712, file: !1713, line: 109, baseType: !298, size: 64, offset: 704)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1712, file: !1713, line: 112, baseType: !143, size: 32, offset: 768)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1712, file: !1713, line: 114, baseType: !143, size: 32, offset: 800)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1712, file: !1713, line: 115, baseType: !1244, size: 64, offset: 832)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1712, file: !1713, line: 118, baseType: !143, size: 32, offset: 896)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1712, file: !1713, line: 119, baseType: !7, size: 32, offset: 928)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1712, file: !1713, line: 121, baseType: !1739, size: 64, offset: 960)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1713, line: 80, size: 448, elements: !1741)
!1741 = !{!1742, !1743, !1749}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1740, file: !1713, line: 81, baseType: !139, size: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1740, file: !1713, line: 82, baseType: !1744, size: 128, offset: 64)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1713, line: 75, size: 128, elements: !1745)
!1745 = !{!1746, !1747}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1744, file: !1713, line: 76, baseType: !1244, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1744, file: !1713, line: 77, baseType: !1748, size: 64, offset: 64)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1740, file: !1713, line: 83, baseType: !1629, size: 256, offset: 192)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1712, file: !1713, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1712, file: !1713, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1712, file: !1713, line: 138, baseType: !7, size: 32, offset: 1056)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1712, file: !1713, line: 139, baseType: !248, size: 128, offset: 1088)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1712, file: !1713, line: 142, baseType: !1355, size: 512, offset: 1216)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1712, file: !1713, line: 143, baseType: !1363, size: 64, offset: 1728)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1712, file: !1713, line: 150, baseType: !1757, size: 256, offset: 1792)
!1757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1758, size: 256, elements: !1762)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1713, line: 38, size: 128, elements: !1759)
!1759 = !{!1760, !1761}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1758, file: !1713, line: 39, baseType: !361, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1758, file: !1713, line: 40, baseType: !361, size: 64, offset: 64)
!1762 = !{!1763}
!1763 = !DISubrange(count: 2)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1712, file: !1713, line: 156, baseType: !1765, size: 192, offset: 2048)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1713, line: 66, size: 192, elements: !1766)
!1766 = !{!1767}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1765, file: !1713, line: 67, baseType: !1768, size: 192)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1713, line: 47, size: 192, elements: !1769)
!1769 = !{!1770, !1771, !1772}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1768, file: !1713, line: 48, baseType: !228, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1768, file: !1713, line: 49, baseType: !228, size: 64, offset: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1768, file: !1713, line: 50, baseType: !228, size: 64, offset: 128)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1712, file: !1713, line: 160, baseType: !1658, size: 640, offset: 2240)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1712, file: !1713, line: 163, baseType: !1775, size: 256, offset: 2880)
!1775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 256, elements: !301)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1712, file: !1713, line: 169, baseType: !285, size: 64, offset: 3136)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1712, file: !1713, line: 172, baseType: !143, size: 32, offset: 3200)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1712, file: !1713, line: 174, baseType: !1779, size: 64, offset: 3264)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1713, line: 174, flags: DIFlagFwdDecl)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1712, file: !1713, line: 185, baseType: !1782, size: 64, offset: 3328)
!1782 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !586, line: 860, baseType: !1783)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !586, line: 853, size: 64, elements: !1784)
!1784 = !{!1785, !1786}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1783, file: !586, line: 858, baseType: !585, size: 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1783, file: !586, line: 859, baseType: !152, size: 32, offset: 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1712, file: !1713, line: 186, baseType: !361, size: 64, offset: 3392)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1712, file: !1713, line: 186, baseType: !361, size: 64, offset: 3456)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1712, file: !1713, line: 186, baseType: !361, size: 64, offset: 3520)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1712, file: !1713, line: 186, baseType: !361, size: 64, offset: 3584)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1712, file: !1713, line: 187, baseType: !361, size: 64, offset: 3648)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1712, file: !1713, line: 188, baseType: !361, size: 64, offset: 3712)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1712, file: !1713, line: 189, baseType: !1646, size: 192, offset: 3776)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1712, file: !1713, line: 190, baseType: !104, size: 64, offset: 3968)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1712, file: !1713, line: 190, baseType: !104, size: 64, offset: 4032)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1712, file: !1713, line: 190, baseType: !104, size: 64, offset: 4096)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1712, file: !1713, line: 190, baseType: !104, size: 64, offset: 4160)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1712, file: !1713, line: 191, baseType: !104, size: 64, offset: 4224)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1712, file: !1713, line: 191, baseType: !104, size: 64, offset: 4288)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1712, file: !1713, line: 191, baseType: !104, size: 64, offset: 4352)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1712, file: !1713, line: 191, baseType: !104, size: 64, offset: 4416)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1712, file: !1713, line: 192, baseType: !104, size: 64, offset: 4480)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1712, file: !1713, line: 192, baseType: !104, size: 64, offset: 4544)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1712, file: !1713, line: 192, baseType: !104, size: 64, offset: 4608)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1712, file: !1713, line: 192, baseType: !104, size: 64, offset: 4672)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1712, file: !1713, line: 193, baseType: !104, size: 64, offset: 4736)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1712, file: !1713, line: 193, baseType: !104, size: 64, offset: 4800)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1712, file: !1713, line: 194, baseType: !1809, size: 448, offset: 4864)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1810, line: 12, size: 448, elements: !1811)
!1810 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1811 = !{!1812, !1813, !1814, !1815, !1816, !1817, !1818}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1809, file: !1810, line: 15, baseType: !361, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1809, file: !1810, line: 17, baseType: !361, size: 64, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1809, file: !1810, line: 19, baseType: !361, size: 64, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1809, file: !1810, line: 21, baseType: !361, size: 64, offset: 192)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1809, file: !1810, line: 29, baseType: !361, size: 64, offset: 256)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1809, file: !1810, line: 35, baseType: !361, size: 64, offset: 320)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1809, file: !1810, line: 44, baseType: !361, size: 64, offset: 384)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1712, file: !1713, line: 202, baseType: !363, size: 64, offset: 5312)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1712, file: !1713, line: 213, baseType: !1821, size: 2048, offset: 5376)
!1821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1822, size: 2048, elements: !1681)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1823, line: 43, size: 128, elements: !1824)
!1823 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1824 = !{!1825, !1826}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1822, file: !1823, line: 44, baseType: !778, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1822, file: !1823, line: 45, baseType: !778, size: 64, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1712, file: !1713, line: 216, baseType: !1828, size: 448, offset: 7424)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1713, line: 30, size: 448, elements: !1829)
!1829 = !{!1830, !1831, !1832, !1833, !1834, !1835, !1836}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1828, file: !1713, line: 31, baseType: !143, size: 32)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1828, file: !1713, line: 32, baseType: !734, size: 64, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1828, file: !1713, line: 33, baseType: !104, size: 64, offset: 128)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1828, file: !1713, line: 34, baseType: !361, size: 64, offset: 192)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1828, file: !1713, line: 34, baseType: !361, size: 64, offset: 256)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1828, file: !1713, line: 35, baseType: !104, size: 64, offset: 320)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1828, file: !1713, line: 35, baseType: !104, size: 64, offset: 384)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1712, file: !1713, line: 219, baseType: !1838, size: 64, offset: 7872)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1713, line: 219, flags: DIFlagFwdDecl)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1712, file: !1713, line: 222, baseType: !7, size: 32, offset: 7936)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1712, file: !1713, line: 223, baseType: !1842, size: 64, offset: 8000)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1713, line: 223, flags: DIFlagFwdDecl)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1712, file: !1713, line: 230, baseType: !455, size: 8, offset: 8064)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1712, file: !1713, line: 231, baseType: !423, size: 16, offset: 8080)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1712, file: !1713, line: 232, baseType: !423, size: 16, offset: 8096)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1712, file: !1713, line: 234, baseType: !129, size: 64, offset: 8128)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1712, file: !1713, line: 237, baseType: !236, size: 256, offset: 8192)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1712, file: !1713, line: 243, baseType: !393, size: 320, offset: 8448)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1245, file: !943, line: 1111, baseType: !1851, size: 64, offset: 15424)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1713, line: 20, size: 16640, elements: !1853)
!1853 = !{!1854, !1855, !1856, !1857}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1852, file: !1713, line: 21, baseType: !152, size: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1852, file: !1713, line: 22, baseType: !289, size: 32, offset: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1852, file: !1713, line: 23, baseType: !305, size: 192, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1852, file: !1713, line: 24, baseType: !1858, size: 16384, offset: 256)
!1858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1859, size: 16384, elements: !1879)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !546, line: 51, size: 256, elements: !1860)
!1860 = !{!1861}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1859, file: !546, line: 52, baseType: !1862, size: 256)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !546, line: 37, size: 256, elements: !1863)
!1863 = !{!1864, !1871, !1872, !1878}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1862, file: !546, line: 39, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1866, line: 83, baseType: !1867)
!1866 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1866, line: 82, baseType: !1869)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{null, !143}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1862, file: !546, line: 40, baseType: !104, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1862, file: !546, line: 46, baseType: !1873, size: 64, offset: 128)
!1873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1866, line: 86, baseType: !1874)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1866, line: 85, baseType: !1876)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{null}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1862, file: !546, line: 48, baseType: !1727, size: 64, offset: 192)
!1879 = !{!1880}
!1880 = !DISubrange(count: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1245, file: !943, line: 1112, baseType: !1727, size: 64, offset: 15488)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1245, file: !943, line: 1113, baseType: !1727, size: 64, offset: 15552)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1245, file: !943, line: 1115, baseType: !1727, size: 64, offset: 15616)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1245, file: !943, line: 1116, baseType: !1723, size: 192, offset: 15680)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1245, file: !943, line: 1117, baseType: !104, size: 64, offset: 15872)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1245, file: !943, line: 1118, baseType: !776, size: 64, offset: 15936)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1245, file: !943, line: 1119, baseType: !7, size: 32, offset: 16000)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1245, file: !943, line: 1121, baseType: !216, size: 64, offset: 16064)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1245, file: !943, line: 1125, baseType: !1890, size: 64, offset: 16128)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !943, line: 43, flags: DIFlagFwdDecl)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1245, file: !943, line: 1127, baseType: !324, size: 32, offset: 16192)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1245, file: !943, line: 1128, baseType: !7, size: 32, offset: 16224)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1245, file: !943, line: 1130, baseType: !1895, size: 128, offset: 16256)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1896, line: 37, size: 128, elements: !1897)
!1896 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1897 = !{!1898, !1899, !1900}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1895, file: !1896, line: 38, baseType: !143, size: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1895, file: !1896, line: 39, baseType: !139, size: 32, offset: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1895, file: !1896, line: 40, baseType: !1901, size: 64, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1896, line: 24, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1245, file: !943, line: 1131, baseType: !1904, size: 256, offset: 16384)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1905, line: 12, size: 256, elements: !1906)
!1905 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1906 = !{!1907, !1908, !1909, !1910}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1904, file: !1905, line: 13, baseType: !468, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1904, file: !1905, line: 14, baseType: !104, size: 64, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1904, file: !1905, line: 15, baseType: !104, size: 64, offset: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1904, file: !1905, line: 16, baseType: !455, size: 8, offset: 192)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1245, file: !943, line: 1134, baseType: !361, size: 64, offset: 16640)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1245, file: !943, line: 1135, baseType: !361, size: 64, offset: 16704)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1245, file: !943, line: 1138, baseType: !152, size: 32, offset: 16768)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1245, file: !943, line: 1141, baseType: !241, size: 32, offset: 16800)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1245, file: !943, line: 1143, baseType: !1916, size: 64, offset: 16832)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !943, line: 735, size: 64, elements: !1917)
!1917 = !{!1918}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1916, file: !943, line: 736, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1245, file: !943, line: 1147, baseType: !1414, size: 128, offset: 16896)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1245, file: !943, line: 1149, baseType: !1244, size: 64, offset: 17024)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1245, file: !943, line: 1151, baseType: !1923, size: 64, offset: 17088)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !943, line: 1151, flags: DIFlagFwdDecl)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1245, file: !943, line: 1188, baseType: !105, size: 64, offset: 17152)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1245, file: !943, line: 1191, baseType: !1927, size: 64, offset: 17216)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !943, line: 44, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1245, file: !943, line: 1194, baseType: !1930, size: 64, offset: 17280)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !943, line: 45, flags: DIFlagFwdDecl)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1245, file: !943, line: 1197, baseType: !1933, size: 64, offset: 17344)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !943, line: 61, flags: DIFlagFwdDecl)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1245, file: !943, line: 1199, baseType: !1936, size: 64, offset: 17408)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1938, line: 99, size: 128, elements: !1939)
!1938 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!1939 = !{!1940, !1941, !1942}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1937, file: !1938, line: 100, baseType: !226, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1937, file: !1938, line: 101, baseType: !139, size: 32, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1937, file: !1938, line: 103, baseType: !188, size: 16, offset: 96)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1245, file: !943, line: 1202, baseType: !1944, size: 64, offset: 17472)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !943, line: 48, flags: DIFlagFwdDecl)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1245, file: !943, line: 1205, baseType: !104, size: 64, offset: 17536)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1245, file: !943, line: 1206, baseType: !1948, size: 64, offset: 17600)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !546, line: 14, baseType: !1950)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !546, line: 12, size: 384, elements: !1951)
!1951 = !{!1952}
!1952 = !DIDerivedType(tag: DW_TAG_member, scope: !1950, file: !546, line: 13, baseType: !1953, size: 384)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1950, file: !546, line: 13, size: 384, elements: !1954)
!1954 = !{!1955, !1956, !1957, !1958}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1953, file: !546, line: 13, baseType: !143, size: 32)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1953, file: !546, line: 13, baseType: !143, size: 32, offset: 32)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1953, file: !546, line: 13, baseType: !143, size: 32, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1953, file: !546, line: 13, baseType: !1959, size: 256, offset: 128)
!1959 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1960, line: 37, size: 256, elements: !1961)
!1960 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1961 = !{!1962, !1967, !1980, !1986, !1995, !2022, !2027}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1959, file: !1960, line: 42, baseType: !1963, size: 64)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1959, file: !1960, line: 39, size: 64, elements: !1964)
!1964 = !{!1965, !1966}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1963, file: !1960, line: 40, baseType: !1612, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1963, file: !1960, line: 41, baseType: !330, size: 32, offset: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1959, file: !1960, line: 50, baseType: !1968, size: 192)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1959, file: !1960, line: 45, size: 192, elements: !1969)
!1969 = !{!1970, !1972, !1973, !1979}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1968, file: !1960, line: 46, baseType: !1971, size: 32)
!1971 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !256, line: 95, baseType: !143)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1968, file: !1960, line: 47, baseType: !143, size: 32, offset: 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1968, file: !1960, line: 48, baseType: !1974, size: 64, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1960, line: 11, baseType: !1975)
!1975 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1960, line: 8, size: 64, elements: !1976)
!1976 = !{!1977, !1978}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1975, file: !1960, line: 9, baseType: !143, size: 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1975, file: !1960, line: 10, baseType: !105, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1968, file: !1960, line: 49, baseType: !143, size: 32, offset: 128)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1959, file: !1960, line: 57, baseType: !1981, size: 128)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1959, file: !1960, line: 53, size: 128, elements: !1982)
!1982 = !{!1983, !1984, !1985}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1981, file: !1960, line: 54, baseType: !1612, size: 32)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1981, file: !1960, line: 55, baseType: !330, size: 32, offset: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1981, file: !1960, line: 56, baseType: !1974, size: 64, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1959, file: !1960, line: 66, baseType: !1987, size: 256)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1959, file: !1960, line: 60, size: 256, elements: !1988)
!1988 = !{!1989, !1990, !1991, !1992, !1994}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1987, file: !1960, line: 61, baseType: !1612, size: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1987, file: !1960, line: 62, baseType: !330, size: 32, offset: 32)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1987, file: !1960, line: 63, baseType: !143, size: 32, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1987, file: !1960, line: 64, baseType: !1993, size: 64, offset: 128)
!1993 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !256, line: 94, baseType: !775)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1987, file: !1960, line: 65, baseType: !1993, size: 64, offset: 192)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1959, file: !1960, line: 105, baseType: !1996, size: 256)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1959, file: !1960, line: 69, size: 256, elements: !1997)
!1997 = !{!1998, !1999}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1996, file: !1960, line: 70, baseType: !105, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, scope: !1996, file: !1960, line: 79, baseType: !2000, size: 192, offset: 64)
!2000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1996, file: !1960, line: 79, size: 192, elements: !2001)
!2001 = !{!2002, !2003, !2004, !2011, !2016}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2000, file: !1960, line: 81, baseType: !143, size: 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2000, file: !1960, line: 86, baseType: !423, size: 16)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2000, file: !1960, line: 92, baseType: !2005, size: 192)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2000, file: !1960, line: 88, size: 192, elements: !2006)
!2006 = !{!2007, !2009, !2010}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2005, file: !1960, line: 89, baseType: !2008, size: 64)
!2008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 64, elements: !1398)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2005, file: !1960, line: 90, baseType: !105, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2005, file: !1960, line: 91, baseType: !105, size: 64, offset: 128)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2000, file: !1960, line: 97, baseType: !2012, size: 96)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2000, file: !1960, line: 94, size: 96, elements: !2013)
!2013 = !{!2014, !2015}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2012, file: !1960, line: 95, baseType: !2008, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2012, file: !1960, line: 96, baseType: !419, size: 32, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2000, file: !1960, line: 103, baseType: !2017, size: 128)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2000, file: !1960, line: 99, size: 128, elements: !2018)
!2018 = !{!2019, !2020, !2021}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2017, file: !1960, line: 100, baseType: !104, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2017, file: !1960, line: 101, baseType: !419, size: 32, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2017, file: !1960, line: 102, baseType: !419, size: 32, offset: 96)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1959, file: !1960, line: 111, baseType: !2023, size: 128)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1959, file: !1960, line: 108, size: 128, elements: !2024)
!2024 = !{!2025, !2026}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2023, file: !1960, line: 109, baseType: !734, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2023, file: !1960, line: 110, baseType: !143, size: 32, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1959, file: !1960, line: 118, baseType: !2028, size: 128)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1959, file: !1960, line: 114, size: 128, elements: !2029)
!2029 = !{!2030, !2031, !2032}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2028, file: !1960, line: 115, baseType: !105, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2028, file: !1960, line: 116, baseType: !143, size: 32, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2028, file: !1960, line: 117, baseType: !7, size: 32, offset: 96)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1245, file: !943, line: 1208, baseType: !1809, size: 448, offset: 17664)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1245, file: !943, line: 1215, baseType: !361, size: 64, offset: 18112)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1245, file: !943, line: 1217, baseType: !361, size: 64, offset: 18176)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1245, file: !943, line: 1219, baseType: !361, size: 64, offset: 18240)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1245, file: !943, line: 1223, baseType: !2038, size: 64, offset: 18304)
!2038 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2039, line: 99, baseType: !2040)
!2039 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2039, line: 99, size: 64, elements: !2041)
!2041 = !{!2042}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2040, file: !2039, line: 99, baseType: !1482, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1245, file: !943, line: 1225, baseType: !585, size: 32, offset: 18368)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1245, file: !943, line: 1226, baseType: !143, size: 32, offset: 18400)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1245, file: !943, line: 1227, baseType: !143, size: 32, offset: 18432)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1245, file: !943, line: 1231, baseType: !2047, size: 64, offset: 18496)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !943, line: 1231, flags: DIFlagFwdDecl)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1245, file: !943, line: 1233, baseType: !248, size: 128, offset: 18560)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1245, file: !943, line: 1240, baseType: !2051, size: 64, offset: 18688)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !943, line: 62, flags: DIFlagFwdDecl)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1245, file: !943, line: 1242, baseType: !2054, size: 64, offset: 18752)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !943, line: 1242, flags: DIFlagFwdDecl)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1245, file: !943, line: 1244, baseType: !248, size: 128, offset: 18816)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1245, file: !943, line: 1245, baseType: !2058, size: 64, offset: 18944)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !943, line: 51, flags: DIFlagFwdDecl)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1245, file: !943, line: 1246, baseType: !236, size: 256, offset: 19008)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1245, file: !943, line: 1247, baseType: !7, size: 32, offset: 19264)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1245, file: !943, line: 1250, baseType: !2063, size: 64, offset: 19328)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !943, line: 57, flags: DIFlagFwdDecl)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1245, file: !943, line: 1251, baseType: !236, size: 256, offset: 19392)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1245, file: !943, line: 1252, baseType: !248, size: 128, offset: 19648)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1245, file: !943, line: 1259, baseType: !2068, size: 64, offset: 19776)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !52, line: 717, flags: DIFlagFwdDecl)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1245, file: !943, line: 1260, baseType: !423, size: 16, offset: 19840)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1245, file: !943, line: 1261, baseType: !423, size: 16, offset: 19856)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1245, file: !943, line: 1314, baseType: !2073, size: 64, offset: 19904)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2075, line: 62, size: 256, align: 256, elements: !2076)
!2075 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2076 = !{!2077, !2078, !2079, !2080, !2081, !2082, !2083}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2074, file: !2075, line: 75, baseType: !419, size: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2074, file: !2075, line: 90, baseType: !419, size: 32, offset: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2074, file: !2075, line: 112, baseType: !362, size: 64, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2074, file: !2075, line: 132, baseType: !419, size: 32, offset: 128)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2074, file: !2075, line: 140, baseType: !419, size: 32, offset: 160)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2074, file: !2075, line: 149, baseType: !419, size: 32, offset: 192)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2074, file: !2075, line: 154, baseType: !2084, offset: 224)
!2084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, elements: !320)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1245, file: !943, line: 1315, baseType: !418, size: 32, offset: 19968)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1245, file: !943, line: 1316, baseType: !418, size: 32, offset: 20000)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1245, file: !943, line: 1321, baseType: !104, size: 64, offset: 20032)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1245, file: !943, line: 1325, baseType: !143, size: 32, offset: 20096)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1245, file: !943, line: 1326, baseType: !143, size: 32, offset: 20128)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1245, file: !943, line: 1327, baseType: !143, size: 32, offset: 20160)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1245, file: !943, line: 1328, baseType: !143, size: 32, offset: 20192)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1245, file: !943, line: 1329, baseType: !213, size: 128, align: 64, offset: 20224)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1245, file: !943, line: 1332, baseType: !2094, size: 128, offset: 20352)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2095, line: 51, size: 128, elements: !2096)
!2095 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2096 = !{!2097, !2102, !2103}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2094, file: !2095, line: 60, baseType: !2098, size: 64)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2099, line: 7, size: 64, elements: !2100)
!2099 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2100 = !{!2101}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2098, file: !2099, line: 12, baseType: !1479, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2094, file: !2095, line: 63, baseType: !455, size: 8, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2094, file: !2095, line: 70, baseType: !455, size: 8, offset: 72)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1245, file: !943, line: 1335, baseType: !2105, size: 64, offset: 20480)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !943, line: 59, flags: DIFlagFwdDecl)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1245, file: !943, line: 1337, baseType: !2108, size: 128, offset: 20544)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2095, line: 39, size: 128, elements: !2109)
!2109 = !{!2110, !2599, !2600}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2108, file: !2095, line: 40, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !52, line: 74, size: 512, align: 128, elements: !2113)
!2113 = !{!2114, !2115, !2593, !2598}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2112, file: !52, line: 75, baseType: !104, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, scope: !2112, file: !52, line: 83, baseType: !2116, size: 320, offset: 64)
!2116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2112, file: !52, line: 83, size: 320, elements: !2117)
!2117 = !{!2118, !2342, !2356, !2360, !2592}
!2118 = !DIDerivedType(tag: DW_TAG_member, scope: !2116, file: !52, line: 84, baseType: !2119, size: 320)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2116, file: !52, line: 84, size: 320, elements: !2120)
!2120 = !{!2121, !2132, !2336, !2341}
!2121 = !DIDerivedType(tag: DW_TAG_member, scope: !2119, file: !52, line: 90, baseType: !2122, size: 128)
!2122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2119, file: !52, line: 90, size: 128, elements: !2123)
!2123 = !{!2124, !2125, !2130, !2131}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2122, file: !52, line: 91, baseType: !248, size: 128)
!2125 = !DIDerivedType(tag: DW_TAG_member, scope: !2122, file: !52, line: 94, baseType: !2126, size: 128)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2122, file: !52, line: 94, size: 128, elements: !2127)
!2127 = !{!2128, !2129}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2126, file: !52, line: 96, baseType: !105, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2126, file: !52, line: 98, baseType: !7, size: 32, offset: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2122, file: !52, line: 102, baseType: !248, size: 128)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2122, file: !52, line: 103, baseType: !248, size: 128)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2119, file: !52, line: 106, baseType: !2133, size: 64, offset: 128)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !15, line: 472, size: 1536, align: 64, elements: !2135)
!2135 = !{!2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2328, !2329, !2330, !2333, !2334, !2335}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !2134, file: !15, line: 473, baseType: !619, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !2134, file: !15, line: 474, baseType: !823, size: 128, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !2134, file: !15, line: 475, baseType: !393, size: 320, offset: 192)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2134, file: !15, line: 476, baseType: !828, size: 32, offset: 512)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !2134, file: !15, line: 477, baseType: !139, size: 32, offset: 544)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !2134, file: !15, line: 482, baseType: !1414, size: 128, offset: 576)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !2134, file: !15, line: 483, baseType: !104, size: 64, offset: 704)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !2134, file: !15, line: 484, baseType: !104, size: 64, offset: 768)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !2134, file: !15, line: 485, baseType: !2145, size: 64, offset: 832)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2147)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !15, line: 404, size: 1280, elements: !2148)
!2148 = !{!2149, !2153, !2223, !2227, !2231, !2237, !2243, !2247, !2252, !2256, !2260, !2264, !2292, !2296, !2300, !2304, !2309, !2313, !2320, !2324}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2147, file: !15, line: 405, baseType: !2150, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!143, !2111, !903}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !2147, file: !15, line: 406, baseType: !2154, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!143, !200, !2157}
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !52, line: 293, size: 1536, elements: !2159)
!2159 = !{!2160, !2190, !2204}
!2160 = !DIDerivedType(tag: DW_TAG_member, scope: !2158, file: !52, line: 295, baseType: !2161, size: 512)
!2161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2158, file: !52, line: 295, size: 512, elements: !2162)
!2162 = !{!2163, !2189}
!2163 = !DIDerivedType(tag: DW_TAG_member, scope: !2161, file: !52, line: 296, baseType: !2164, size: 448)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2161, file: !52, line: 296, size: 448, elements: !2165)
!2165 = !{!2166, !2167, !2176, !2177, !2178, !2187, !2188}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2164, file: !52, line: 298, baseType: !104, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, scope: !2164, file: !52, line: 299, baseType: !2168, size: 128, offset: 64)
!2168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2164, file: !52, line: 299, size: 128, elements: !2169)
!2169 = !{!2170, !2171}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2168, file: !52, line: 300, baseType: !248, size: 128)
!2171 = !DIDerivedType(tag: DW_TAG_member, scope: !2168, file: !52, line: 302, baseType: !2172, size: 128)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2168, file: !52, line: 302, size: 128, elements: !2173)
!2173 = !{!2174, !2175}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2172, file: !52, line: 303, baseType: !105, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2172, file: !52, line: 305, baseType: !7, size: 32, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2164, file: !52, line: 310, baseType: !2133, size: 64, offset: 192)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2164, file: !52, line: 311, baseType: !104, size: 64, offset: 256)
!2178 = !DIDerivedType(tag: DW_TAG_member, scope: !2164, file: !52, line: 312, baseType: !2179, size: 64, offset: 320)
!2179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2164, file: !52, line: 312, size: 64, elements: !2180)
!2180 = !{!2181, !2182}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2179, file: !52, line: 313, baseType: !105, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2179, file: !52, line: 314, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !52, line: 257, baseType: !2184)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !52, line: 255, size: 64, elements: !2185)
!2185 = !{!2186}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2184, file: !52, line: 256, baseType: !104, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2164, file: !52, line: 316, baseType: !139, size: 32, offset: 384)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2164, file: !52, line: 317, baseType: !139, size: 32, offset: 416)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2161, file: !52, line: 323, baseType: !2112, size: 512, align: 128)
!2190 = !DIDerivedType(tag: DW_TAG_member, scope: !2158, file: !52, line: 325, baseType: !2191, size: 512, offset: 512)
!2191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2158, file: !52, line: 325, size: 512, elements: !2192)
!2192 = !{!2193, !2203}
!2193 = !DIDerivedType(tag: DW_TAG_member, scope: !2191, file: !52, line: 326, baseType: !2194, size: 320)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2191, file: !52, line: 326, size: 320, elements: !2195)
!2195 = !{!2196, !2197, !2198, !2199, !2200, !2201, !2202}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2194, file: !52, line: 327, baseType: !104, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2194, file: !52, line: 328, baseType: !104, size: 64, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2194, file: !52, line: 329, baseType: !104, size: 64, offset: 128)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2194, file: !52, line: 331, baseType: !139, size: 32, offset: 192)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2194, file: !52, line: 332, baseType: !139, size: 32, offset: 224)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2194, file: !52, line: 333, baseType: !139, size: 32, offset: 256)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2194, file: !52, line: 335, baseType: !7, size: 32, offset: 288)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2191, file: !52, line: 339, baseType: !2112, size: 512, align: 128)
!2204 = !DIDerivedType(tag: DW_TAG_member, scope: !2158, file: !52, line: 341, baseType: !2205, size: 512, offset: 1024)
!2205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2158, file: !52, line: 341, size: 512, elements: !2206)
!2206 = !{!2207, !2216, !2222}
!2207 = !DIDerivedType(tag: DW_TAG_member, scope: !2205, file: !52, line: 342, baseType: !2208, size: 384)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2205, file: !52, line: 342, size: 384, elements: !2209)
!2209 = !{!2210, !2211, !2212, !2213, !2214, !2215}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2208, file: !52, line: 343, baseType: !104, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2208, file: !52, line: 344, baseType: !104, size: 64, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2208, file: !52, line: 346, baseType: !105, size: 64, offset: 128)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2208, file: !52, line: 347, baseType: !105, size: 64, offset: 192)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2208, file: !52, line: 348, baseType: !105, size: 64, offset: 256)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2208, file: !52, line: 349, baseType: !105, size: 64, offset: 320)
!2216 = !DIDerivedType(tag: DW_TAG_member, scope: !2205, file: !52, line: 352, baseType: !2217, size: 256)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2205, file: !52, line: 352, size: 256, elements: !2218)
!2218 = !{!2219, !2220, !2221}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2217, file: !52, line: 353, baseType: !104, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2217, file: !52, line: 354, baseType: !104, size: 64, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2217, file: !52, line: 356, baseType: !248, size: 128, offset: 128)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2205, file: !52, line: 359, baseType: !2112, size: 512, align: 128)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2147, file: !15, line: 409, baseType: !2224, size: 64, offset: 128)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!143, !2133, !903}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !2147, file: !15, line: 412, baseType: !2228, size: 64, offset: 192)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!455, !2133, !2157}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2147, file: !15, line: 414, baseType: !2232, size: 64, offset: 256)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{null, !2235}
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !15, line: 310, flags: DIFlagFwdDecl)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2147, file: !15, line: 416, baseType: !2238, size: 64, offset: 320)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!143, !200, !2133, !254, !7, !2241, !2242}
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2147, file: !15, line: 419, baseType: !2244, size: 64, offset: 384)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!143, !200, !2133, !254, !7, !7, !2111, !105}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2147, file: !15, line: 424, baseType: !2248, size: 64, offset: 448)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!2251, !2133, !2251}
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !111, line: 131, baseType: !361)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !2147, file: !15, line: 425, baseType: !2253, size: 64, offset: 512)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{null, !2157, !776, !776}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !2147, file: !15, line: 426, baseType: !2257, size: 64, offset: 576)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!455, !2157, !828}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !2147, file: !15, line: 427, baseType: !2261, size: 64, offset: 640)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{null, !2157}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2147, file: !15, line: 428, baseType: !2265, size: 64, offset: 704)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!773, !2268, !2290}
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !15, line: 373, size: 384, elements: !2270)
!2270 = !{!2271, !2272, !2273, !2277, !2278, !2279, !2280}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2269, file: !15, line: 374, baseType: !200, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2269, file: !15, line: 375, baseType: !254, size: 64, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2269, file: !15, line: 376, baseType: !2274, size: 64, offset: 128)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{null, !2268, !734}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2269, file: !15, line: 377, baseType: !105, size: 64, offset: 192)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2269, file: !15, line: 378, baseType: !143, size: 32, offset: 256)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2269, file: !15, line: 379, baseType: !186, size: 16, offset: 288)
!2280 = !DIDerivedType(tag: DW_TAG_member, scope: !2269, file: !15, line: 380, baseType: !2281, size: 64, offset: 320)
!2281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2269, file: !15, line: 380, size: 64, elements: !2282)
!2282 = !{!2283, !2286}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2281, file: !15, line: 386, baseType: !2284, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !15, line: 386, flags: DIFlagFwdDecl)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2281, file: !15, line: 395, baseType: !2287, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!773, !105}
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !15, line: 69, flags: DIFlagFwdDecl)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !2147, file: !15, line: 433, baseType: !2293, size: 64, offset: 768)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!143, !2133, !2157, !2157, !36}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !2147, file: !15, line: 435, baseType: !2297, size: 64, offset: 832)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!143, !2157}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2147, file: !15, line: 436, baseType: !2301, size: 64, offset: 896)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!455, !2157, !776, !776}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2147, file: !15, line: 438, baseType: !2305, size: 64, offset: 960)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{null, !2157, !2308, !2308}
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2147, file: !15, line: 439, baseType: !2310, size: 64, offset: 1024)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!143, !2133, !2111}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2147, file: !15, line: 442, baseType: !2314, size: 64, offset: 1088)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!143, !2317, !200, !2319}
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !15, line: 66, flags: DIFlagFwdDecl)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2147, file: !15, line: 444, baseType: !2321, size: 64, offset: 1152)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{null, !200}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !2147, file: !15, line: 445, baseType: !2325, size: 64, offset: 1216)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!143, !2268, !2290}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2134, file: !15, line: 486, baseType: !104, size: 64, offset: 896)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !2134, file: !15, line: 487, baseType: !393, size: 320, offset: 960)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !2134, file: !15, line: 488, baseType: !2331, size: 32, offset: 1280)
!2331 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2332, line: 8, baseType: !418)
!2332 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !2134, file: !15, line: 489, baseType: !152, size: 32, offset: 1312)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !2134, file: !15, line: 490, baseType: !248, size: 128, offset: 1344)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2134, file: !15, line: 491, baseType: !105, size: 64, offset: 1472)
!2336 = !DIDerivedType(tag: DW_TAG_member, scope: !2119, file: !52, line: 107, baseType: !2337, size: 64, offset: 192)
!2337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2119, file: !52, line: 107, size: 64, elements: !2338)
!2338 = !{!2339, !2340}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2337, file: !52, line: 108, baseType: !104, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2337, file: !52, line: 109, baseType: !104, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2119, file: !52, line: 117, baseType: !104, size: 64, offset: 256)
!2342 = !DIDerivedType(tag: DW_TAG_member, scope: !2116, file: !52, line: 119, baseType: !2343, size: 320)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2116, file: !52, line: 119, size: 320, elements: !2344)
!2344 = !{!2345, !2346, !2349, !2350, !2351}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2343, file: !52, line: 124, baseType: !104, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2343, file: !52, line: 125, baseType: !2347, size: 64, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !52, line: 125, flags: DIFlagFwdDecl)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2343, file: !52, line: 126, baseType: !104, size: 64, offset: 128)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2343, file: !52, line: 127, baseType: !104, size: 64, offset: 192)
!2351 = !DIDerivedType(tag: DW_TAG_member, scope: !2343, file: !52, line: 128, baseType: !2352, size: 64, offset: 256)
!2352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2343, file: !52, line: 128, size: 64, elements: !2353)
!2353 = !{!2354, !2355}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2352, file: !52, line: 133, baseType: !104, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2352, file: !52, line: 138, baseType: !226, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, scope: !2116, file: !52, line: 141, baseType: !2357, size: 64)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2116, file: !52, line: 141, size: 64, elements: !2358)
!2358 = !{!2359}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2357, file: !52, line: 142, baseType: !104, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, scope: !2116, file: !52, line: 144, baseType: !2361, size: 128)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2116, file: !52, line: 144, size: 128, elements: !2362)
!2362 = !{!2363, !2591}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2361, file: !52, line: 146, baseType: !2364, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !44, line: 126, size: 1216, elements: !2366)
!2366 = !{!2367, !2377, !2398, !2399, !2400, !2401, !2402, !2573, !2574, !2575}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2365, file: !44, line: 127, baseType: !2368, size: 384)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !44, line: 21, size: 384, elements: !2369)
!2369 = !{!2370, !2371, !2373, !2374, !2375, !2376}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2368, file: !44, line: 22, baseType: !104, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2368, file: !44, line: 23, baseType: !2372, size: 64, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2368, file: !44, line: 24, baseType: !2372, size: 64, offset: 128)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2368, file: !44, line: 25, baseType: !104, size: 64, offset: 192)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2368, file: !44, line: 26, baseType: !104, size: 64, offset: 256)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2368, file: !44, line: 27, baseType: !104, size: 64, offset: 320)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2365, file: !44, line: 128, baseType: !2378, size: 128, offset: 384)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2379, line: 105, size: 128, elements: !2380)
!2379 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2380 = !{!2381, !2382}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2378, file: !2379, line: 110, baseType: !104, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2378, file: !2379, line: 118, baseType: !2383, size: 64, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2379, line: 95, size: 448, elements: !2385)
!2385 = !{!2386, !2387, !2393, !2394, !2395, !2396, !2397}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2384, file: !2379, line: 96, baseType: !226, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2384, file: !2379, line: 97, baseType: !2388, size: 64, offset: 64)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2379, line: 60, baseType: !2390)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{null, !2392}
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2384, file: !2379, line: 98, baseType: !2388, size: 64, offset: 128)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2384, file: !2379, line: 99, baseType: !455, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2384, file: !2379, line: 100, baseType: !455, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2384, file: !2379, line: 101, baseType: !213, size: 128, align: 64, offset: 256)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2384, file: !2379, line: 102, baseType: !2392, size: 64, offset: 384)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2365, file: !44, line: 129, baseType: !1629, size: 256, offset: 512)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2365, file: !44, line: 130, baseType: !43, size: 32, offset: 768)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2365, file: !44, line: 131, baseType: !7, size: 32, offset: 800)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2365, file: !44, line: 132, baseType: !104, size: 64, offset: 832)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2365, file: !44, line: 133, baseType: !2403, size: 64, offset: 896)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2405)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !44, line: 77, size: 192, elements: !2406)
!2406 = !{!2407, !2411, !2569}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2405, file: !44, line: 83, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{null, !2111}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2405, file: !44, line: 89, baseType: !2412, size: 64, offset: 64)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!2415, !2416}
!2415 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !52, line: 1184, baseType: !7)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2418, line: 512, size: 896, elements: !2419)
!2418 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2419 = !{!2420, !2536, !2537, !2544, !2551, !2561, !2562, !2563, !2565, !2567}
!2420 = !DIDerivedType(tag: DW_TAG_member, scope: !2417, file: !2418, line: 513, baseType: !2421, size: 320)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2417, file: !2418, line: 513, size: 320, elements: !2422)
!2422 = !{!2423, !2532, !2533, !2534, !2535}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2421, file: !2418, line: 514, baseType: !2424, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !52, line: 625, size: 1344, elements: !2426)
!2426 = !{!2427, !2436, !2437, !2445, !2452, !2453, !2458, !2459, !2464, !2465, !2468, !2525, !2526, !2527, !2528, !2529, !2530}
!2427 = !DIDerivedType(tag: DW_TAG_member, scope: !2425, file: !52, line: 628, baseType: !2428, size: 128)
!2428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2425, file: !52, line: 628, size: 128, elements: !2429)
!2429 = !{!2430, !2435}
!2430 = !DIDerivedType(tag: DW_TAG_member, scope: !2428, file: !52, line: 629, baseType: !2431, size: 128)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2428, file: !52, line: 629, size: 128, elements: !2432)
!2432 = !{!2433, !2434}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2431, file: !52, line: 631, baseType: !104, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2431, file: !52, line: 632, baseType: !104, size: 64, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2428, file: !52, line: 635, baseType: !213, size: 128, align: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2425, file: !52, line: 639, baseType: !129, size: 64, offset: 128)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2425, file: !52, line: 640, baseType: !2438, size: 64, offset: 192)
!2438 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2439, line: 297, baseType: !2440)
!2439 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2439, line: 297, size: 64, elements: !2441)
!2441 = !{!2442}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2440, file: !2439, line: 297, baseType: !2443, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2444, line: 19, baseType: !104)
!2444 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2445 = !DIDerivedType(tag: DW_TAG_member, scope: !2425, file: !52, line: 646, baseType: !2446, size: 64, offset: 256)
!2446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2425, file: !52, line: 646, size: 64, elements: !2447)
!2447 = !{!2448, !2451}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2446, file: !52, line: 647, baseType: !2449, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2450)
!2450 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !52, line: 542, baseType: !104)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2446, file: !52, line: 648, baseType: !2450, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2425, file: !52, line: 666, baseType: !143, size: 32, offset: 320)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2425, file: !52, line: 667, baseType: !2454, size: 64, offset: 384)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !52, line: 579, size: 320, elements: !2456)
!2456 = !{!2457}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2455, file: !52, line: 580, baseType: !393, size: 320)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2425, file: !52, line: 670, baseType: !455, size: 8, offset: 448)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2425, file: !52, line: 681, baseType: !2460, size: 256, offset: 512)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2425, file: !52, line: 678, size: 256, elements: !2461)
!2461 = !{!2462, !2463}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2460, file: !52, line: 679, baseType: !385, size: 192, align: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2460, file: !52, line: 680, baseType: !104, size: 64, offset: 192)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2425, file: !52, line: 689, baseType: !248, size: 128, offset: 768)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2425, file: !52, line: 691, baseType: !2466, size: 64, offset: 896)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !52, line: 691, flags: DIFlagFwdDecl)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2425, file: !52, line: 694, baseType: !2469, size: 64, offset: 960)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2471)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2418, line: 563, size: 1024, elements: !2472)
!2472 = !{!2473, !2477, !2478, !2482, !2486, !2490, !2491, !2495, !2499, !2503, !2504, !2505, !2509, !2513, !2517, !2521}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2471, file: !2418, line: 564, baseType: !2474, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{null, !2424}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2471, file: !2418, line: 569, baseType: !2474, size: 64, offset: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2471, file: !2418, line: 571, baseType: !2479, size: 64, offset: 128)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!143, !2424, !104}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2471, file: !2418, line: 572, baseType: !2483, size: 64, offset: 192)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!143, !2424}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2471, file: !2418, line: 578, baseType: !2487, size: 64, offset: 256)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!143, !2424, !104, !104, !104}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2471, file: !2418, line: 580, baseType: !2412, size: 64, offset: 320)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2471, file: !2418, line: 581, baseType: !2492, size: 64, offset: 384)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!2415, !2416, !7}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2471, file: !2418, line: 582, baseType: !2496, size: 64, offset: 448)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!2415, !2416, !104, !104}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2471, file: !2418, line: 584, baseType: !2500, size: 64, offset: 512)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!104, !2424}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2471, file: !2418, line: 588, baseType: !2412, size: 64, offset: 576)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2471, file: !2418, line: 591, baseType: !2412, size: 64, offset: 640)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2471, file: !2418, line: 597, baseType: !2506, size: 64, offset: 704)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!143, !2424, !104, !105, !143, !143}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2471, file: !2418, line: 603, baseType: !2510, size: 64, offset: 768)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!458, !2424}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2471, file: !2418, line: 613, baseType: !2514, size: 64, offset: 832)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!143, !2424, !2068}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2471, file: !2418, line: 625, baseType: !2518, size: 64, offset: 896)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!2068, !2424, !104}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2471, file: !2418, line: 633, baseType: !2522, size: 64, offset: 960)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!2111, !2424, !104}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2425, file: !52, line: 697, baseType: !104, size: 64, offset: 1024)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2425, file: !52, line: 699, baseType: !200, size: 64, offset: 1088)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2425, file: !52, line: 700, baseType: !105, size: 64, offset: 1152)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2425, file: !52, line: 711, baseType: !226, size: 64, offset: 1216)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2425, file: !52, line: 717, baseType: !2068, size: 64, offset: 1280)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2425, file: !52, line: 722, baseType: !2531, offset: 1344)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !52, line: 570, elements: !193)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2421, file: !2418, line: 515, baseType: !828, size: 32, offset: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2421, file: !2418, line: 516, baseType: !104, size: 64, offset: 128)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2421, file: !2418, line: 517, baseType: !104, size: 64, offset: 192)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2421, file: !2418, line: 518, baseType: !104, size: 64, offset: 256)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2417, file: !2418, line: 520, baseType: !51, size: 32, offset: 320)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2417, file: !2418, line: 522, baseType: !2538, size: 64, offset: 384)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2444, line: 22, baseType: !2540)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2444, line: 22, size: 64, elements: !2541)
!2541 = !{!2542}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2540, file: !2444, line: 22, baseType: !2543, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2444, line: 15, baseType: !104)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2417, file: !2418, line: 524, baseType: !2545, size: 64, offset: 448)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2439, line: 372, baseType: !2547)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2439, line: 372, size: 64, elements: !2548)
!2548 = !{!2549}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2547, file: !2439, line: 372, baseType: !2550, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2444, line: 16, baseType: !104)
!2551 = !DIDerivedType(tag: DW_TAG_member, scope: !2417, file: !2418, line: 527, baseType: !2552, size: 64, offset: 512)
!2552 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2417, file: !2418, line: 527, size: 64, elements: !2553)
!2553 = !{!2554, !2560}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2552, file: !2418, line: 528, baseType: !2555, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2444, line: 21, baseType: !2556)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2444, line: 21, size: 64, elements: !2557)
!2557 = !{!2558}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2556, file: !2444, line: 21, baseType: !2559, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2444, line: 14, baseType: !104)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2552, file: !2418, line: 529, baseType: !2539, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2417, file: !2418, line: 534, baseType: !2111, size: 64, offset: 576)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2417, file: !2418, line: 535, baseType: !2111, size: 64, offset: 640)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2417, file: !2418, line: 541, baseType: !2564, size: 64, offset: 704)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2417, file: !2418, line: 545, baseType: !2566, size: 64, offset: 768)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2417, file: !2418, line: 549, baseType: !2568, size: 64, offset: 832)
!2568 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2439, line: 520, baseType: !2111)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2405, file: !44, line: 100, baseType: !2570, size: 64, offset: 128)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!143, !2364, !104, !104, !143}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2365, file: !44, line: 134, baseType: !105, size: 64, offset: 960)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2365, file: !44, line: 135, baseType: !143, size: 32, offset: 1024)
!2575 = !DIDerivedType(tag: DW_TAG_member, scope: !2365, file: !44, line: 136, baseType: !2576, size: 128, offset: 1088)
!2576 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2365, file: !44, line: 136, size: 128, elements: !2577)
!2577 = !{!2578, !2584}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2576, file: !44, line: 137, baseType: !2579, size: 128)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2580, line: 6, size: 128, elements: !2581)
!2580 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2581 = !{!2582, !2583}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2579, file: !2580, line: 7, baseType: !361, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2579, file: !2580, line: 8, baseType: !361, size: 64, offset: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, scope: !2576, file: !44, line: 138, baseType: !2585)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2576, file: !44, line: 138, elements: !2586)
!2586 = !{!2587, !2589}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2585, file: !44, line: 138, baseType: !2588)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2585, file: !44, line: 138, elements: !193)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2585, file: !44, line: 138, baseType: !2590)
!2590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2579, elements: !320)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2361, file: !52, line: 147, baseType: !105, size: 64, offset: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2116, file: !52, line: 161, baseType: !213, size: 128, align: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, scope: !2112, file: !52, line: 164, baseType: !2594, size: 32, offset: 384)
!2594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2112, file: !52, line: 164, size: 32, elements: !2595)
!2595 = !{!2596, !2597}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2594, file: !52, line: 169, baseType: !139, size: 32)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2594, file: !52, line: 177, baseType: !7, size: 32)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2112, file: !52, line: 181, baseType: !139, size: 32, offset: 416)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2108, file: !2095, line: 42, baseType: !419, size: 32, offset: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2108, file: !2095, line: 43, baseType: !419, size: 32, offset: 96)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1245, file: !943, line: 1340, baseType: !2602, size: 64, offset: 20672)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !943, line: 69, flags: DIFlagFwdDecl)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1245, file: !943, line: 1351, baseType: !143, size: 32, offset: 20736)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1245, file: !943, line: 1352, baseType: !143, size: 32, offset: 20768)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1245, file: !943, line: 1354, baseType: !104, size: 64, offset: 20800)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1245, file: !943, line: 1364, baseType: !361, size: 64, offset: 20864)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1245, file: !943, line: 1365, baseType: !361, size: 64, offset: 20928)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1245, file: !943, line: 1412, baseType: !104, size: 64, offset: 20992)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1245, file: !943, line: 1453, baseType: !2611, size: 64, offset: 21056)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !943, line: 1453, flags: DIFlagFwdDecl)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1245, file: !943, line: 1457, baseType: !2614, size: 64, offset: 21120)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !2616)
!2616 = !{!2617, !2618, !2637, !2640, !2641, !2674, !2684}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2615, file: !68, line: 62, baseType: !67, size: 32)
!2618 = !DIDerivedType(tag: DW_TAG_member, scope: !2615, file: !68, line: 64, baseType: !2619, size: 192, offset: 64)
!2619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2615, file: !68, line: 64, size: 192, elements: !2620)
!2620 = !{!2621, !2632}
!2621 = !DIDerivedType(tag: DW_TAG_member, scope: !2619, file: !68, line: 65, baseType: !2622, size: 192)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2619, file: !68, line: 65, size: 192, elements: !2623)
!2623 = !{!2624, !2631}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2622, file: !68, line: 66, baseType: !2625, size: 128)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2626, line: 50, size: 128, elements: !2627)
!2626 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2627 = !{!2628, !2629, !2630}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2625, file: !2626, line: 52, baseType: !104, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2625, file: !2626, line: 54, baseType: !7, size: 32, offset: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2625, file: !2626, line: 55, baseType: !7, size: 32, offset: 96)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2622, file: !68, line: 67, baseType: !104, size: 64, offset: 128)
!2632 = !DIDerivedType(tag: DW_TAG_member, scope: !2619, file: !68, line: 70, baseType: !2633, size: 192)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2619, file: !68, line: 70, size: 192, elements: !2634)
!2634 = !{!2635, !2636}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2633, file: !68, line: 71, baseType: !213, size: 128, align: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2633, file: !68, line: 72, baseType: !104, size: 64, offset: 128)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2615, file: !68, line: 76, baseType: !2638, size: 64, offset: 256)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2615, file: !68, line: 77, baseType: !104, size: 64, offset: 320)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2615, file: !68, line: 79, baseType: !2642, size: 64, offset: 384)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2626, line: 25, size: 256, elements: !2644)
!2644 = !{!2645, !2651, !2655}
!2645 = !DIDerivedType(tag: DW_TAG_member, scope: !2643, file: !2626, line: 26, baseType: !2646, size: 128)
!2646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2643, file: !2626, line: 26, size: 128, elements: !2647)
!2647 = !{!2648, !2650}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2646, file: !2626, line: 27, baseType: !2649, size: 128)
!2649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 128, elements: !1681)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2646, file: !2626, line: 28, baseType: !2649, size: 128)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2643, file: !2626, line: 31, baseType: !2652, size: 64, offset: 128)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2654)
!2654 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2626, line: 23, flags: DIFlagFwdDecl)
!2655 = !DIDerivedType(tag: DW_TAG_member, scope: !2643, file: !2626, line: 33, baseType: !2656, size: 64, offset: 192)
!2656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2643, file: !2626, line: 33, size: 64, elements: !2657)
!2657 = !{!2658, !2664, !2669}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2656, file: !2626, line: 38, baseType: !2659, size: 64)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2656, file: !2626, line: 34, size: 64, elements: !2660)
!2660 = !{!2661, !2662, !2663}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2659, file: !2626, line: 35, baseType: !378, size: 32)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2659, file: !2626, line: 36, baseType: !176, size: 8, offset: 32)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2659, file: !2626, line: 37, baseType: !176, size: 8, offset: 40)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2656, file: !2626, line: 42, baseType: !2665, size: 16)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2656, file: !2626, line: 39, size: 16, elements: !2666)
!2666 = !{!2667, !2668}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2665, file: !2626, line: 40, baseType: !176, size: 8)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2665, file: !2626, line: 41, baseType: !176, size: 8, offset: 8)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2656, file: !2626, line: 46, baseType: !2670, size: 16)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2656, file: !2626, line: 43, size: 16, elements: !2671)
!2671 = !{!2672, !2673}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2670, file: !2626, line: 44, baseType: !176, size: 8)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2670, file: !2626, line: 45, baseType: !176, size: 8, offset: 8)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2615, file: !68, line: 81, baseType: !2675, size: 64, offset: 448)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !2677)
!2677 = !{!2678, !2679, !2680, !2681, !2682, !2683}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2676, file: !68, line: 86, baseType: !2638, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2676, file: !68, line: 87, baseType: !104, size: 64, offset: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2676, file: !68, line: 88, baseType: !104, size: 64, offset: 128)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2676, file: !68, line: 89, baseType: !104, size: 64, offset: 192)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2676, file: !68, line: 90, baseType: !455, size: 8, offset: 256)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2676, file: !68, line: 92, baseType: !2675, size: 64, offset: 320)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2615, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1245, file: !943, line: 1463, baseType: !2686, offset: 21184)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !943, line: 739, elements: !193)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1245, file: !943, line: 1470, baseType: !213, size: 128, align: 64, offset: 21184)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1245, file: !943, line: 1471, baseType: !289, size: 32, offset: 21312)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1245, file: !943, line: 1472, baseType: !143, size: 32, offset: 21344)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1245, file: !943, line: 1474, baseType: !1244, size: 64, offset: 21376)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1245, file: !943, line: 1475, baseType: !2692, size: 320, offset: 21440)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2693, line: 11, size: 320, elements: !2694)
!2693 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2694 = !{!2695, !2696, !2697, !2702}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2692, file: !2693, line: 16, baseType: !110, size: 128)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2692, file: !2693, line: 17, baseType: !104, size: 64, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2692, file: !2693, line: 18, baseType: !2698, size: 64, offset: 192)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{null, !2701}
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2692, file: !2693, line: 19, baseType: !418, size: 32, offset: 256)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1245, file: !943, line: 1478, baseType: !2704, size: 64, offset: 21760)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !943, line: 1478, flags: DIFlagFwdDecl)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1245, file: !943, line: 1482, baseType: !289, size: 32, offset: 21824)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1245, file: !943, line: 1489, baseType: !105, size: 64, offset: 21888)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1245, file: !943, line: 1504, baseType: !105, size: 64, offset: 21952)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1245, file: !943, line: 1505, baseType: !362, size: 64, offset: 22016)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1245, file: !943, line: 1506, baseType: !361, size: 64, offset: 22080)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1245, file: !943, line: 1507, baseType: !362, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1245, file: !943, line: 1508, baseType: !362, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1245, file: !943, line: 1509, baseType: !362, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1245, file: !943, line: 1510, baseType: !213, size: 128, align: 64, offset: 22208)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1245, file: !943, line: 1511, baseType: !143, size: 32, offset: 22336)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1245, file: !943, line: 1515, baseType: !2717, size: 64, offset: 22400)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !208, line: 56, size: 64, elements: !2718)
!2718 = !{!2719}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2717, file: !208, line: 57, baseType: !211, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1245, file: !943, line: 1518, baseType: !2717, size: 64, offset: 22464)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1245, file: !943, line: 1528, baseType: !213, size: 128, align: 64, offset: 22528)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1245, file: !943, line: 1552, baseType: !2723, size: 35328, offset: 23040)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2724, line: 430, size: 35328, elements: !2725)
!2724 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2725 = !{!2726, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2755, !2756, !2757, !2758, !2759, !2760, !2763, !2764, !2765, !2766}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2723, file: !2724, line: 432, baseType: !2727, size: 192)
!2727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2728, size: 192, elements: !281)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2729, line: 16, size: 64, elements: !2730)
!2729 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2730 = !{!2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2728, file: !2729, line: 17, baseType: !186, size: 16)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2728, file: !2729, line: 18, baseType: !186, size: 16, offset: 16)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2728, file: !2729, line: 19, baseType: !186, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2728, file: !2729, line: 19, baseType: !186, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2728, file: !2729, line: 19, baseType: !186, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2728, file: !2729, line: 19, baseType: !186, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2728, file: !2729, line: 19, baseType: !186, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2728, file: !2729, line: 20, baseType: !186, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2728, file: !2729, line: 20, baseType: !186, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2728, file: !2729, line: 20, baseType: !186, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2728, file: !2729, line: 20, baseType: !186, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2728, file: !2729, line: 20, baseType: !186, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2728, file: !2729, line: 20, baseType: !186, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2723, file: !2724, line: 436, baseType: !104, size: 64, offset: 192)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2723, file: !2724, line: 440, baseType: !188, size: 16, offset: 256)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2723, file: !2724, line: 441, baseType: !188, size: 16, offset: 272)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2723, file: !2724, line: 442, baseType: !188, size: 16, offset: 288)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2723, file: !2724, line: 443, baseType: !188, size: 16, offset: 304)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2723, file: !2724, line: 447, baseType: !104, size: 64, offset: 320)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2723, file: !2724, line: 448, baseType: !104, size: 64, offset: 384)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2723, file: !2724, line: 459, baseType: !2752, size: 256, offset: 448)
!2752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2753, size: 256, elements: !301)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2724, line: 428, flags: DIFlagFwdDecl)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2723, file: !2724, line: 461, baseType: !104, size: 64, offset: 704)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2723, file: !2724, line: 463, baseType: !104, size: 64, offset: 768)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2723, file: !2724, line: 465, baseType: !104, size: 64, offset: 832)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2723, file: !2724, line: 466, baseType: !104, size: 64, offset: 896)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2723, file: !2724, line: 467, baseType: !104, size: 64, offset: 960)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2723, file: !2724, line: 473, baseType: !2761, size: 64, offset: 1024)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2724, line: 10, flags: DIFlagFwdDecl)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2723, file: !2724, line: 480, baseType: !104, size: 64, offset: 1088)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2723, file: !2724, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2723, file: !2724, line: 491, baseType: !418, size: 32, offset: 1184)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2723, file: !2724, line: 501, baseType: !2767, size: 33792, offset: 1536)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2768, line: 448, size: 33792, elements: !2769)
!2768 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2769 = !{!2770, !2771, !2772, !2936, !2937, !2943, !2944}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2767, file: !2768, line: 461, baseType: !7, size: 32)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2767, file: !2768, line: 468, baseType: !104, size: 64, offset: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2767, file: !2768, line: 476, baseType: !2773, size: 64, offset: 128)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2768, line: 356, size: 33280, align: 512, elements: !2775)
!2775 = !{!2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2774, file: !2768, line: 358, baseType: !7, size: 32)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2774, file: !2768, line: 361, baseType: !7, size: 32, offset: 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2774, file: !2768, line: 364, baseType: !361, size: 64, offset: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2774, file: !2768, line: 367, baseType: !361, size: 64, offset: 128)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2774, file: !2768, line: 370, baseType: !361, size: 64, offset: 192)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2774, file: !2768, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2774, file: !2768, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2774, file: !2768, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2774, file: !2768, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2774, file: !2768, line: 397, baseType: !2786, size: 32768, offset: 512)
!2786 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2768, line: 348, size: 32768, elements: !2787)
!2787 = !{!2788, !2803, !2842, !2919, !2932}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2786, file: !2768, line: 349, baseType: !2789, size: 896)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2768, line: 12, size: 896, elements: !2790)
!2790 = !{!2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2802}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2789, file: !2768, line: 13, baseType: !418, size: 32)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2789, file: !2768, line: 14, baseType: !418, size: 32, offset: 32)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2789, file: !2768, line: 15, baseType: !418, size: 32, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2789, file: !2768, line: 16, baseType: !418, size: 32, offset: 96)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2789, file: !2768, line: 17, baseType: !418, size: 32, offset: 128)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2789, file: !2768, line: 18, baseType: !418, size: 32, offset: 160)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2789, file: !2768, line: 19, baseType: !418, size: 32, offset: 192)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2789, file: !2768, line: 22, baseType: !2799, size: 640, offset: 224)
!2799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 640, elements: !2800)
!2800 = !{!2801}
!2801 = !DISubrange(count: 20)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2789, file: !2768, line: 25, baseType: !418, size: 32, offset: 864)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2786, file: !2768, line: 350, baseType: !2804, size: 4096, align: 128)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2768, line: 34, size: 4096, align: 128, elements: !2805)
!2805 = !{!2806, !2807, !2808, !2809, !2810, !2825, !2826, !2827, !2831, !2833, !2837}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2804, file: !2768, line: 35, baseType: !186, size: 16)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2804, file: !2768, line: 36, baseType: !186, size: 16, offset: 16)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2804, file: !2768, line: 37, baseType: !186, size: 16, offset: 32)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2804, file: !2768, line: 38, baseType: !186, size: 16, offset: 48)
!2810 = !DIDerivedType(tag: DW_TAG_member, scope: !2804, file: !2768, line: 39, baseType: !2811, size: 128, offset: 64)
!2811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2804, file: !2768, line: 39, size: 128, elements: !2812)
!2812 = !{!2813, !2818}
!2813 = !DIDerivedType(tag: DW_TAG_member, scope: !2811, file: !2768, line: 40, baseType: !2814, size: 128)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2811, file: !2768, line: 40, size: 128, elements: !2815)
!2815 = !{!2816, !2817}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2814, file: !2768, line: 41, baseType: !361, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2814, file: !2768, line: 42, baseType: !361, size: 64, offset: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, scope: !2811, file: !2768, line: 44, baseType: !2819, size: 128)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2811, file: !2768, line: 44, size: 128, elements: !2820)
!2820 = !{!2821, !2822, !2823, !2824}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2819, file: !2768, line: 45, baseType: !418, size: 32)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2819, file: !2768, line: 46, baseType: !418, size: 32, offset: 32)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2819, file: !2768, line: 47, baseType: !418, size: 32, offset: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2819, file: !2768, line: 48, baseType: !418, size: 32, offset: 96)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2804, file: !2768, line: 51, baseType: !418, size: 32, offset: 192)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2804, file: !2768, line: 52, baseType: !418, size: 32, offset: 224)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2804, file: !2768, line: 55, baseType: !2828, size: 1024, offset: 256)
!2828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 1024, elements: !2829)
!2829 = !{!2830}
!2830 = !DISubrange(count: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2804, file: !2768, line: 58, baseType: !2832, size: 2048, offset: 1280)
!2832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 2048, elements: !1879)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2804, file: !2768, line: 60, baseType: !2834, size: 384, offset: 3328)
!2834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 384, elements: !2835)
!2835 = !{!2836}
!2836 = !DISubrange(count: 12)
!2837 = !DIDerivedType(tag: DW_TAG_member, scope: !2804, file: !2768, line: 62, baseType: !2838, size: 384, offset: 3712)
!2838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2804, file: !2768, line: 62, size: 384, elements: !2839)
!2839 = !{!2840, !2841}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2838, file: !2768, line: 63, baseType: !2834, size: 384)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2838, file: !2768, line: 64, baseType: !2834, size: 384)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2786, file: !2768, line: 351, baseType: !2843, size: 1088)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2768, line: 79, size: 1088, elements: !2844)
!2844 = !{!2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2918}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2843, file: !2768, line: 80, baseType: !418, size: 32)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2843, file: !2768, line: 81, baseType: !418, size: 32, offset: 32)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2843, file: !2768, line: 82, baseType: !418, size: 32, offset: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2843, file: !2768, line: 83, baseType: !418, size: 32, offset: 96)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2843, file: !2768, line: 84, baseType: !418, size: 32, offset: 128)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2843, file: !2768, line: 85, baseType: !418, size: 32, offset: 160)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2843, file: !2768, line: 86, baseType: !418, size: 32, offset: 192)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2843, file: !2768, line: 88, baseType: !2799, size: 640, offset: 224)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2843, file: !2768, line: 89, baseType: !176, size: 8, offset: 864)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2843, file: !2768, line: 90, baseType: !176, size: 8, offset: 872)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2843, file: !2768, line: 91, baseType: !176, size: 8, offset: 880)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2843, file: !2768, line: 92, baseType: !176, size: 8, offset: 888)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2843, file: !2768, line: 93, baseType: !176, size: 8, offset: 896)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2843, file: !2768, line: 94, baseType: !176, size: 8, offset: 904)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2843, file: !2768, line: 95, baseType: !2860, size: 64, offset: 960)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2862, line: 11, size: 128, elements: !2863)
!2862 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2863 = !{!2864, !2865}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2861, file: !2862, line: 12, baseType: !734, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2861, file: !2862, line: 13, baseType: !2866, size: 64, offset: 64)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2868, line: 103, size: 1344, elements: !2869)
!2868 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2869 = !{!2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2898, !2899, !2900}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2867, file: !2868, line: 109, baseType: !104, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2867, file: !2868, line: 110, baseType: !104, size: 64, offset: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2867, file: !2868, line: 111, baseType: !104, size: 64, offset: 128)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2867, file: !2868, line: 112, baseType: !104, size: 64, offset: 192)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2867, file: !2868, line: 113, baseType: !104, size: 64, offset: 256)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2867, file: !2868, line: 114, baseType: !104, size: 64, offset: 320)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2867, file: !2868, line: 117, baseType: !104, size: 64, offset: 384)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2867, file: !2868, line: 118, baseType: !104, size: 64, offset: 448)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2867, file: !2868, line: 119, baseType: !104, size: 64, offset: 512)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2867, file: !2868, line: 120, baseType: !104, size: 64, offset: 576)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2867, file: !2868, line: 121, baseType: !104, size: 64, offset: 640)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2867, file: !2868, line: 122, baseType: !104, size: 64, offset: 704)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2867, file: !2868, line: 123, baseType: !104, size: 64, offset: 768)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2867, file: !2868, line: 124, baseType: !104, size: 64, offset: 832)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2867, file: !2868, line: 125, baseType: !104, size: 64, offset: 896)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2867, file: !2868, line: 139, baseType: !104, size: 64, offset: 960)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2867, file: !2868, line: 142, baseType: !104, size: 64, offset: 1024)
!2887 = !DIDerivedType(tag: DW_TAG_member, scope: !2867, file: !2868, line: 144, baseType: !2888, size: 64, offset: 1088)
!2888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2867, file: !2868, line: 144, size: 64, elements: !2889)
!2889 = !{!2890, !2891, !2892}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2888, file: !2868, line: 146, baseType: !186, size: 16)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2888, file: !2868, line: 148, baseType: !361, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2888, file: !2868, line: 150, baseType: !2893, size: 64)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2868, line: 59, size: 64, elements: !2894)
!2894 = !{!2895, !2896, !2897}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2893, file: !2868, line: 61, baseType: !361, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2893, file: !2868, line: 63, baseType: !361, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2893, file: !2868, line: 65, baseType: !361, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2867, file: !2868, line: 153, baseType: !104, size: 64, offset: 1152)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2867, file: !2868, line: 154, baseType: !104, size: 64, offset: 1216)
!2900 = !DIDerivedType(tag: DW_TAG_member, scope: !2867, file: !2868, line: 156, baseType: !2901, size: 64, offset: 1280)
!2901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2867, file: !2868, line: 156, size: 64, elements: !2902)
!2902 = !{!2903, !2904, !2905}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2901, file: !2868, line: 158, baseType: !186, size: 16)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2901, file: !2868, line: 160, baseType: !361, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2901, file: !2868, line: 162, baseType: !2906, size: 64)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2868, line: 69, size: 64, elements: !2907)
!2907 = !{!2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2906, file: !2868, line: 71, baseType: !361, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2906, file: !2868, line: 73, baseType: !361, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2906, file: !2868, line: 75, baseType: !361, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2906, file: !2868, line: 77, baseType: !361, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2906, file: !2868, line: 80, baseType: !361, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2906, file: !2868, line: 83, baseType: !361, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2906, file: !2868, line: 86, baseType: !361, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2906, file: !2868, line: 88, baseType: !361, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2906, file: !2868, line: 93, baseType: !361, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2906, file: !2868, line: 100, baseType: !361, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2843, file: !2768, line: 96, baseType: !418, size: 32, offset: 1024)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2786, file: !2768, line: 352, baseType: !2920, size: 4608, align: 512)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2768, line: 333, size: 4608, align: 512, elements: !2921)
!2921 = !{!2922, !2923, !2930}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2920, file: !2768, line: 334, baseType: !2804, size: 4096, align: 128)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2920, file: !2768, line: 335, baseType: !2924, size: 512, offset: 4096)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2768, line: 312, size: 512, elements: !2925)
!2925 = !{!2926, !2927, !2928}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2924, file: !2768, line: 313, baseType: !361, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2924, file: !2768, line: 314, baseType: !361, size: 64, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2924, file: !2768, line: 315, baseType: !2929, size: 384, offset: 128)
!2929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 384, elements: !442)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2920, file: !2768, line: 336, baseType: !2931, offset: 4608)
!2931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, elements: !320)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2786, file: !2768, line: 353, baseType: !2933, size: 32768)
!2933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 32768, elements: !2934)
!2934 = !{!2935}
!2935 = !DISubrange(count: 4096)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2767, file: !2768, line: 484, baseType: !2773, size: 64, offset: 192)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2767, file: !2768, line: 491, baseType: !2938, size: 128, offset: 256)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2768, line: 404, size: 128, elements: !2939)
!2939 = !{!2940, !2941, !2942}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2938, file: !2768, line: 424, baseType: !361, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2938, file: !2768, line: 432, baseType: !7, size: 32, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2938, file: !2768, line: 440, baseType: !7, size: 32, offset: 96)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2767, file: !2768, line: 498, baseType: !2938, size: 128, offset: 384)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2767, file: !2768, line: 508, baseType: !2774, size: 33280, align: 512, offset: 512)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1226, file: !1227, line: 16, baseType: !305, size: 192, offset: 512)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1226, file: !1227, line: 17, baseType: !139, size: 32, offset: 704)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !833, file: !15, line: 1240, baseType: !105, size: 64, offset: 6912)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !833, file: !15, line: 1243, baseType: !418, size: 32, offset: 6976)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !833, file: !15, line: 1245, baseType: !409, size: 64, offset: 7040)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !833, file: !15, line: 1246, baseType: !409, size: 64, offset: 7104)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !833, file: !15, line: 1248, baseType: !419, size: 32, offset: 7168)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !833, file: !15, line: 1249, baseType: !2953, size: 64, offset: 7232)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !15, line: 634, flags: DIFlagFwdDecl)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !833, file: !15, line: 1252, baseType: !2956, size: 256, offset: 7296)
!2956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 256, elements: !2829)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !833, file: !15, line: 1253, baseType: !2958, size: 128, offset: 7552)
!2958 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2959, line: 21, baseType: !2960)
!2959 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2959, line: 19, size: 128, elements: !2961)
!2961 = !{!2962}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2960, file: !2959, line: 20, baseType: !2963, size: 128)
!2963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 128, elements: !1681)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !833, file: !15, line: 1255, baseType: !7, size: 32, offset: 7680)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !833, file: !15, line: 1261, baseType: !236, size: 256, offset: 7744)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !833, file: !15, line: 1267, baseType: !458, size: 64, offset: 8000)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !833, file: !15, line: 1269, baseType: !2968, size: 64, offset: 8064)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2970)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !581, line: 128, size: 1024, align: 512, elements: !2971)
!2971 = !{!2972, !2976, !2977, !2984, !2990, !2994, !2998, !3002, !3003, !3007, !3011, !3016, !3020}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2970, file: !581, line: 129, baseType: !2973, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!143, !579, !7}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2970, file: !581, line: 130, baseType: !2973, size: 64, offset: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2970, file: !581, line: 131, baseType: !2978, size: 64, offset: 128)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!143, !2981, !2983}
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !580)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2970, file: !581, line: 132, baseType: !2985, size: 64, offset: 192)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!143, !2981, !7, !458, !2988}
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !604)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2970, file: !581, line: 134, baseType: !2991, size: 64, offset: 256)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!143, !2981}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2970, file: !581, line: 135, baseType: !2995, size: 64, offset: 320)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!143, !579}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2970, file: !581, line: 136, baseType: !2999, size: 64, offset: 384)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{null, !579}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2970, file: !581, line: 137, baseType: !2999, size: 64, offset: 448)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2970, file: !581, line: 138, baseType: !3004, size: 64, offset: 512)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{null, !579, !619}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2970, file: !581, line: 139, baseType: !3008, size: 64, offset: 576)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!468, !579, !468, !143}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2970, file: !581, line: 140, baseType: !3012, size: 64, offset: 640)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!574, !3015}
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2970, file: !581, line: 141, baseType: !3017, size: 64, offset: 704)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!143, !742, !455}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2970, file: !581, line: 142, baseType: !3021, size: 64, offset: 768)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!579, !579, !3024}
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !620)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !833, file: !15, line: 1271, baseType: !3027, size: 448, offset: 8128)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1008, line: 63, size: 448, elements: !3028)
!3028 = !{!3029, !3034, !3035, !3036, !3037, !3038, !3039}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3027, file: !1008, line: 64, baseType: !3030, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!104, !3033, !1006}
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3027, file: !1008, line: 66, baseType: !3030, size: 64, offset: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3027, file: !1008, line: 69, baseType: !734, size: 64, offset: 128)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3027, file: !1008, line: 70, baseType: !143, size: 32, offset: 192)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3027, file: !1008, line: 71, baseType: !7, size: 32, offset: 224)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3027, file: !1008, line: 74, baseType: !248, size: 128, offset: 256)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3027, file: !1008, line: 85, baseType: !3040, size: 64, offset: 384)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !833, file: !15, line: 1274, baseType: !226, size: 64, offset: 8576)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !833, file: !15, line: 1280, baseType: !226, size: 64, offset: 8640)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !833, file: !15, line: 1283, baseType: !143, size: 32, offset: 8704)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !833, file: !15, line: 1286, baseType: !2331, size: 32, offset: 8736)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !833, file: !15, line: 1289, baseType: !3046, size: 64, offset: 8768)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !3048, line: 18, flags: DIFlagFwdDecl)
!3048 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !833, file: !15, line: 1290, baseType: !298, size: 64, offset: 8832)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !833, file: !15, line: 1297, baseType: !541, size: 64, offset: 8896)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !833, file: !15, line: 1304, baseType: !3052, size: 64, offset: 8960)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3053, line: 49, size: 64, elements: !3054)
!3053 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3054 = !{!3055}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3052, file: !3053, line: 50, baseType: !3056, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3053, line: 41, size: 512, align: 512, elements: !3058)
!3058 = !{!3059, !3060, !3065}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3057, file: !3053, line: 43, baseType: !152, size: 32)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3057, file: !3053, line: 45, baseType: !3061, size: 192, offset: 64)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3053, line: 29, size: 192, elements: !3062)
!3062 = !{!3063, !3064}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3061, file: !3053, line: 30, baseType: !248, size: 128)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3061, file: !3053, line: 32, baseType: !734, size: 64, offset: 128)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3057, file: !3053, line: 46, baseType: !734, size: 64, offset: 256)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !833, file: !15, line: 1305, baseType: !3052, size: 64, offset: 9024)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !833, file: !15, line: 1306, baseType: !213, size: 128, align: 64, offset: 9088)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !833, file: !15, line: 1307, baseType: !3069, size: 256, offset: 9216)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !3048, line: 98, size: 256, elements: !3070)
!3070 = !{!3071, !3072, !3073}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3069, file: !3048, line: 99, baseType: !226, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3069, file: !3048, line: 100, baseType: !248, size: 128, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3069, file: !3048, line: 101, baseType: !3074, size: 64, offset: 192)
!3074 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !3048, line: 21, baseType: !3075)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{null, !3078}
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !833, file: !15, line: 1309, baseType: !236, size: 256, offset: 9472)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !833, file: !15, line: 1314, baseType: !143, size: 32, offset: 9728)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !833, file: !15, line: 1317, baseType: !152, size: 32, align: 512, offset: 10240)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !833, file: !15, line: 1318, baseType: !248, size: 128, offset: 10304)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !833, file: !15, line: 1320, baseType: !152, size: 32, offset: 10432)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !833, file: !15, line: 1321, baseType: !248, size: 128, offset: 10496)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !620, file: !15, line: 656, baseType: !2133, size: 64, offset: 512)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !620, file: !15, line: 659, baseType: !105, size: 64, offset: 576)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !620, file: !15, line: 663, baseType: !104, size: 64, offset: 640)
!3088 = !DIDerivedType(tag: DW_TAG_member, scope: !620, file: !15, line: 671, baseType: !3089, size: 32, offset: 704)
!3089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !620, file: !15, line: 671, size: 32, elements: !3090)
!3090 = !{!3091, !3093}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3089, file: !15, line: 672, baseType: !3092, size: 32)
!3092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3089, file: !15, line: 673, baseType: !7, size: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !620, file: !15, line: 675, baseType: !694, size: 32, offset: 736)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !620, file: !15, line: 676, baseType: !254, size: 64, offset: 768)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !620, file: !15, line: 677, baseType: !730, size: 128, offset: 832)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !620, file: !15, line: 678, baseType: !730, size: 128, offset: 960)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !620, file: !15, line: 679, baseType: !730, size: 128, offset: 1088)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !620, file: !15, line: 680, baseType: !152, size: 32, offset: 1216)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !620, file: !15, line: 681, baseType: !188, size: 16, offset: 1248)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !620, file: !15, line: 682, baseType: !176, size: 8, offset: 1264)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !620, file: !15, line: 683, baseType: !176, size: 8, offset: 1272)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !620, file: !15, line: 684, baseType: !1139, size: 64, offset: 1280)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !620, file: !15, line: 691, baseType: !104, size: 64, offset: 1344)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !620, file: !15, line: 692, baseType: !393, size: 320, offset: 1408)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !620, file: !15, line: 694, baseType: !104, size: 64, offset: 1728)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !620, file: !15, line: 695, baseType: !104, size: 64, offset: 1792)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !620, file: !15, line: 697, baseType: !110, size: 128, offset: 1856)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !620, file: !15, line: 698, baseType: !248, size: 128, offset: 1984)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !620, file: !15, line: 707, baseType: !248, size: 128, offset: 2112)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !620, file: !15, line: 708, baseType: !248, size: 128, offset: 2240)
!3112 = !DIDerivedType(tag: DW_TAG_member, scope: !620, file: !15, line: 709, baseType: !3113, size: 128, offset: 2368)
!3113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !620, file: !15, line: 709, size: 128, elements: !3114)
!3114 = !{!3115, !3116}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3113, file: !15, line: 710, baseType: !298, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3113, file: !15, line: 711, baseType: !213, size: 128, align: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !620, file: !15, line: 713, baseType: !228, size: 64, offset: 2496)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !620, file: !15, line: 714, baseType: !228, size: 64, offset: 2560)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !620, file: !15, line: 715, baseType: !139, size: 32, offset: 2624)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !620, file: !15, line: 716, baseType: !139, size: 32, offset: 2656)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !620, file: !15, line: 717, baseType: !139, size: 32, offset: 2688)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !620, file: !15, line: 719, baseType: !139, size: 32, offset: 2720)
!3123 = !DIDerivedType(tag: DW_TAG_member, scope: !620, file: !15, line: 721, baseType: !3124, size: 64, offset: 2752)
!3124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !620, file: !15, line: 721, size: 64, elements: !3125)
!3125 = !{!3126, !3255}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3124, file: !15, line: 722, baseType: !3127, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3129)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !15, line: 1914, size: 2112, elements: !3130)
!3130 = !{!3131, !3132, !3136, !3141, !3145, !3146, !3147, !3153, !3166, !3174, !3178, !3179, !3183, !3184, !3188, !3193, !3194, !3198, !3202, !3208, !3209, !3213, !3214, !3218, !3222, !3223, !3228, !3232, !3236, !3240, !3244, !3245, !3251}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3129, file: !15, line: 1915, baseType: !865, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3129, file: !15, line: 1916, baseType: !3133, size: 64, offset: 64)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!254, !200, !254, !143}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3129, file: !15, line: 1917, baseType: !3137, size: 64, offset: 128)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!773, !200, !468, !776, !3140}
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3129, file: !15, line: 1918, baseType: !3142, size: 64, offset: 192)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!773, !200, !458, !776, !3140}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3129, file: !15, line: 1919, baseType: !2265, size: 64, offset: 256)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3129, file: !15, line: 1920, baseType: !2265, size: 64, offset: 320)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3129, file: !15, line: 1921, baseType: !3148, size: 64, offset: 384)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!143, !2268, !3151, !7}
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !15, line: 53, flags: DIFlagFwdDecl)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3129, file: !15, line: 1923, baseType: !3154, size: 64, offset: 448)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!143, !200, !3157}
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !15, line: 1858, size: 128, elements: !3159)
!3159 = !{!3160, !3165}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3158, file: !15, line: 1859, baseType: !3161, size: 64)
!3161 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !15, line: 1855, baseType: !3162)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!455, !3157, !458, !143, !254, !361, !7}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3158, file: !15, line: 1860, baseType: !254, size: 64, offset: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3129, file: !15, line: 1924, baseType: !3167, size: 64, offset: 512)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!3170, !200, !3172}
!3170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3171, line: 59, baseType: !7)
!3171 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !15, line: 61, flags: DIFlagFwdDecl)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3129, file: !15, line: 1925, baseType: !3175, size: 64, offset: 576)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!734, !200, !7, !104}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3129, file: !15, line: 1926, baseType: !3175, size: 64, offset: 640)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3129, file: !15, line: 1927, baseType: !3180, size: 64, offset: 704)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!143, !200, !2424}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3129, file: !15, line: 1928, baseType: !104, size: 64, offset: 768)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3129, file: !15, line: 1929, baseType: !3185, size: 64, offset: 832)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!143, !619, !200}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3129, file: !15, line: 1930, baseType: !3189, size: 64, offset: 896)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!143, !200, !3192}
!3192 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !15, line: 1061, baseType: !105)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3129, file: !15, line: 1931, baseType: !3185, size: 64, offset: 960)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3129, file: !15, line: 1932, baseType: !3195, size: 64, offset: 1024)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!143, !200, !254, !254, !143}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3129, file: !15, line: 1933, baseType: !3199, size: 64, offset: 1088)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!143, !143, !200, !143}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3129, file: !15, line: 1934, baseType: !3203, size: 64, offset: 1152)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!143, !200, !143, !3206}
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !15, line: 1063, flags: DIFlagFwdDecl)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3129, file: !15, line: 1935, baseType: !197, size: 64, offset: 1216)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3129, file: !15, line: 1936, baseType: !3210, size: 64, offset: 1280)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!143, !143}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3129, file: !15, line: 1937, baseType: !3203, size: 64, offset: 1344)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3129, file: !15, line: 1938, baseType: !3215, size: 64, offset: 1408)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!773, !2105, !200, !3140, !776, !7}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3129, file: !15, line: 1939, baseType: !3219, size: 64, offset: 1472)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!773, !200, !3140, !2105, !776, !7}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3129, file: !15, line: 1940, baseType: !2321, size: 64, offset: 1536)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3129, file: !15, line: 1941, baseType: !3224, size: 64, offset: 1600)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!143, !200, !143, !3227, !2242}
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3129, file: !15, line: 1942, baseType: !3229, size: 64, offset: 1664)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!734, !200, !143, !254, !254}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3129, file: !15, line: 1944, baseType: !3233, size: 64, offset: 1728)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{null, !941, !200}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3129, file: !15, line: 1948, baseType: !3237, size: 64, offset: 1792)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!773, !200, !254, !200, !254, !776, !7}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3129, file: !15, line: 1950, baseType: !3241, size: 64, offset: 1856)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!254, !200, !254, !200, !254, !254, !7}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3129, file: !15, line: 1953, baseType: !3195, size: 64, offset: 1920)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3129, file: !15, line: 1954, baseType: !3246, size: 64, offset: 1984)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!143, !3249, !7}
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !15, line: 1911, flags: DIFlagFwdDecl)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3129, file: !15, line: 1955, baseType: !3252, size: 64, offset: 2048)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!143, !3249, !3151, !7}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3124, file: !15, line: 723, baseType: !891, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !620, file: !15, line: 725, baseType: !3257, size: 64, offset: 2816)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !15, line: 725, flags: DIFlagFwdDecl)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !620, file: !15, line: 726, baseType: !2134, size: 1536, align: 64, offset: 2880)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !620, file: !15, line: 727, baseType: !248, size: 128, offset: 4416)
!3261 = !DIDerivedType(tag: DW_TAG_member, scope: !620, file: !15, line: 728, baseType: !3262, size: 64, offset: 4544)
!3262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !620, file: !15, line: 728, size: 64, elements: !3263)
!3263 = !{!3264, !3265, !3268, !3269}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3262, file: !15, line: 729, baseType: !2105, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3262, file: !15, line: 730, baseType: !3266, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !15, line: 730, flags: DIFlagFwdDecl)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3262, file: !15, line: 731, baseType: !468, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3262, file: !15, line: 732, baseType: !7, size: 32)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !620, file: !15, line: 735, baseType: !419, size: 32, offset: 4608)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !620, file: !15, line: 738, baseType: !419, size: 32, offset: 4640)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !620, file: !15, line: 739, baseType: !2953, size: 64, offset: 4672)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !620, file: !15, line: 750, baseType: !105, size: 64, offset: 4736)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !580, file: !581, line: 91, baseType: !3275, size: 256, offset: 448)
!3275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 256, elements: !2829)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !580, file: !581, line: 94, baseType: !3277, size: 64, offset: 704)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3278, line: 25, size: 64, elements: !3279)
!3278 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3279 = !{!3280}
!3280 = !DIDerivedType(tag: DW_TAG_member, scope: !3277, file: !3278, line: 26, baseType: !3281, size: 64)
!3281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3277, file: !3278, line: 26, size: 64, elements: !3282)
!3282 = !{!3283, !3284}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3281, file: !3278, line: 28, baseType: !362, size: 64, align: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, scope: !3281, file: !3278, line: 30, baseType: !3285, size: 64)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3281, file: !3278, line: 30, size: 64, elements: !3286)
!3286 = !{!3287, !3288}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3285, file: !3278, line: 31, baseType: !152, size: 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3285, file: !3278, line: 32, baseType: !143, size: 32, offset: 32)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !580, file: !581, line: 95, baseType: !2968, size: 64, offset: 768)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !580, file: !581, line: 96, baseType: !832, size: 64, offset: 832)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !580, file: !581, line: 97, baseType: !104, size: 64, offset: 896)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !580, file: !581, line: 98, baseType: !105, size: 64, offset: 960)
!3293 = !DIDerivedType(tag: DW_TAG_member, scope: !580, file: !581, line: 100, baseType: !3294, size: 128, offset: 1024)
!3294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !580, file: !581, line: 100, size: 128, elements: !3295)
!3295 = !{!3296, !3297}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3294, file: !581, line: 101, baseType: !248, size: 128)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3294, file: !581, line: 102, baseType: !3298, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !580, file: !581, line: 104, baseType: !248, size: 128, offset: 1152)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !580, file: !581, line: 105, baseType: !248, size: 128, offset: 1280)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !580, file: !581, line: 113, baseType: !3302, size: 128, offset: 1408)
!3302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !580, file: !581, line: 109, size: 128, elements: !3303)
!3303 = !{!3304, !3305, !3306}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3302, file: !581, line: 110, baseType: !110, size: 128)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3302, file: !581, line: 111, baseType: !595, size: 128)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3302, file: !581, line: 112, baseType: !213, size: 128, align: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !575, file: !576, line: 72, baseType: !832, size: 64, offset: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !575, file: !576, line: 73, baseType: !143, size: 32, offset: 128)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !575, file: !576, line: 74, baseType: !659, size: 64, offset: 192)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !570, file: !571, line: 10, baseType: !579, size: 64, offset: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !201, file: !15, line: 1015, baseType: !619, size: 64, offset: 1344)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !201, file: !15, line: 1016, baseType: !3127, size: 64, offset: 1408)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !201, file: !15, line: 1018, baseType: !361, size: 64, offset: 1472)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !201, file: !15, line: 1020, baseType: !105, size: 64, offset: 1536)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !201, file: !15, line: 1023, baseType: !105, size: 64, offset: 1600)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !201, file: !15, line: 1027, baseType: !3317, size: 64, offset: 1664)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !201, file: !15, line: 1029, baseType: !2133, size: 64, offset: 1728)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !201, file: !15, line: 1030, baseType: !2331, size: 32, offset: 1792)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !201, file: !15, line: 1031, baseType: !2331, size: 32, offset: 1824)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !133, file: !52, line: 756, baseType: !104, size: 64, offset: 704)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !133, file: !52, line: 757, baseType: !104, size: 64, offset: 768)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !133, file: !52, line: 760, baseType: !104, size: 64, offset: 832)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !133, file: !52, line: 761, baseType: !104, size: 64, offset: 896)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !133, file: !52, line: 763, baseType: !104, size: 64, offset: 960)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !133, file: !52, line: 764, baseType: !3327, size: 64, offset: 1024)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2439, line: 299, baseType: !3329)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2439, line: 299, size: 64, elements: !3330)
!3330 = !{!3331}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3329, file: !2439, line: 299, baseType: !3332, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2444, line: 18, baseType: !104)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !133, file: !52, line: 773, baseType: !139, size: 32, offset: 1088)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !133, file: !52, line: 785, baseType: !139, size: 32, offset: 1120)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !133, file: !52, line: 795, baseType: !3336, size: 64, offset: 1152)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !52, line: 726, size: 128, elements: !3338)
!3338 = !{!3339, !3340}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3337, file: !52, line: 727, baseType: !361, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3337, file: !52, line: 728, baseType: !143, size: 32, offset: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !133, file: !52, line: 801, baseType: !104, size: 64, offset: 1216)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !133, file: !52, line: 804, baseType: !226, size: 64, offset: 1280)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !133, file: !52, line: 806, baseType: !143, size: 32, offset: 1344)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !133, file: !52, line: 808, baseType: !152, size: 32, offset: 1376)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !133, file: !52, line: 823, baseType: !393, size: 320, offset: 1408)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !133, file: !52, line: 825, baseType: !248, size: 128, offset: 1728)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !133, file: !52, line: 845, baseType: !143, size: 32, offset: 1856)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !133, file: !52, line: 849, baseType: !104, size: 64, offset: 1920)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !133, file: !52, line: 850, baseType: !104, size: 64, offset: 1984)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !133, file: !52, line: 852, baseType: !104, size: 64, offset: 2048)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !133, file: !52, line: 853, baseType: !104, size: 64, offset: 2112)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !133, file: !52, line: 854, baseType: !228, size: 64, offset: 2176)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !133, file: !52, line: 855, baseType: !104, size: 64, offset: 2240)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !133, file: !52, line: 856, baseType: !104, size: 64, offset: 2304)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !133, file: !52, line: 857, baseType: !104, size: 64, offset: 2368)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !133, file: !52, line: 858, baseType: !104, size: 64, offset: 2432)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !133, file: !52, line: 865, baseType: !590, size: 32, offset: 2496)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !133, file: !52, line: 867, baseType: !152, size: 32, offset: 2528)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !133, file: !52, line: 869, baseType: !104, size: 64, offset: 2560)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !133, file: !52, line: 869, baseType: !104, size: 64, offset: 2624)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !133, file: !52, line: 869, baseType: !104, size: 64, offset: 2688)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !133, file: !52, line: 869, baseType: !104, size: 64, offset: 2752)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !133, file: !52, line: 870, baseType: !104, size: 64, offset: 2816)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !133, file: !52, line: 870, baseType: !104, size: 64, offset: 2880)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !133, file: !52, line: 870, baseType: !104, size: 64, offset: 2944)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !133, file: !52, line: 871, baseType: !104, size: 64, offset: 3008)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !133, file: !52, line: 871, baseType: !104, size: 64, offset: 3072)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !133, file: !52, line: 871, baseType: !104, size: 64, offset: 3136)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !133, file: !52, line: 871, baseType: !104, size: 64, offset: 3200)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !133, file: !52, line: 873, baseType: !3371, size: 3328, offset: 3264)
!3371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 3328, elements: !3372)
!3372 = !{!3373}
!3373 = !DISubrange(count: 52)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !133, file: !52, line: 875, baseType: !3375, size: 1280, offset: 6592)
!3375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 1280, elements: !301)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !133, file: !52, line: 877, baseType: !3377, size: 64, offset: 7872)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !52, line: 877, flags: DIFlagFwdDecl)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !133, file: !52, line: 880, baseType: !3380, size: 1088, offset: 7936)
!3380 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3381, line: 72, baseType: !3382)
!3381 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3381, line: 23, size: 1088, elements: !3383)
!3383 = !{!3384, !3385, !3386, !3387, !3388, !3391, !3392, !3393, !3394, !3398, !3399, !3400}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3382, file: !3381, line: 28, baseType: !361, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3382, file: !3381, line: 38, baseType: !228, size: 64, offset: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3382, file: !3381, line: 40, baseType: !104, size: 64, offset: 128)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3382, file: !3381, line: 43, baseType: !393, size: 320, offset: 192)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3382, file: !3381, line: 44, baseType: !3389, size: 64, offset: 512)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3381, line: 44, flags: DIFlagFwdDecl)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3382, file: !3381, line: 48, baseType: !104, size: 64, offset: 576)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3382, file: !3381, line: 59, baseType: !236, size: 256, offset: 640)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3382, file: !3381, line: 60, baseType: !105, size: 64, offset: 896)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3382, file: !3381, line: 61, baseType: !3395, size: 64, offset: 960)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3397)
!3397 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3381, line: 61, flags: DIFlagFwdDecl)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3382, file: !3381, line: 63, baseType: !139, size: 32, offset: 1024)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3382, file: !3381, line: 69, baseType: !186, size: 16, offset: 1056)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3382, file: !3381, line: 70, baseType: !3401, size: 16, offset: 1072)
!3401 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !177, line: 18, baseType: !3402)
!3402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !179, line: 23, baseType: !423)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !133, file: !52, line: 882, baseType: !104, size: 64, offset: 9024)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !133, file: !52, line: 885, baseType: !152, size: 32, offset: 9088)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !133, file: !52, line: 886, baseType: !3406, size: 64, offset: 9152)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !52, line: 732, flags: DIFlagFwdDecl)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !133, file: !52, line: 901, baseType: !541, size: 64, offset: 9216)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !133, file: !52, line: 904, baseType: !200, size: 64, offset: 9280)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !133, file: !52, line: 906, baseType: !3411, size: 64, offset: 9344)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !3, line: 37, size: 640, elements: !3413)
!3413 = !{!3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3412, file: !3, line: 39, baseType: !298, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "has_itree", scope: !3412, file: !3, line: 40, baseType: !455, size: 8, offset: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3412, file: !3, line: 42, baseType: !152, size: 32, offset: 96)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_seq", scope: !3412, file: !3, line: 43, baseType: !104, size: 64, offset: 128)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "active_invalidate_ranges", scope: !3412, file: !3, line: 44, baseType: !104, size: 64, offset: 192)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "itree", scope: !3412, file: !3, line: 45, baseType: !1414, size: 128, offset: 256)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3412, file: !3, line: 46, baseType: !305, size: 192, offset: 384)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !3412, file: !3, line: 47, baseType: !298, size: 64, offset: 576)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !133, file: !52, line: 930, baseType: !139, size: 32, offset: 9408)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !133, file: !52, line: 933, baseType: !139, size: 32, offset: 9440)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !133, file: !52, line: 935, baseType: !3425, size: 64, offset: 9472)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !3426)
!3426 = !{!3427}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3425, file: !68, line: 104, baseType: !3428, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !133, file: !52, line: 940, baseType: !226, size: 64, offset: 9536)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !133, file: !52, line: 942, baseType: !3069, size: 256, offset: 9600)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !130, file: !52, line: 986, baseType: !3433, offset: 10240)
!3433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, elements: !320)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "clear_flush_young", scope: !123, file: !75, line: 100, baseType: !3435, size: 64, offset: 64)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!143, !116, !129, !104, !104}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "clear_young", scope: !123, file: !75, line: 110, baseType: !3435, size: 64, offset: 128)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "test_young", scope: !123, file: !75, line: 121, baseType: !3440, size: 64, offset: 192)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!143, !116, !129, !104}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "change_pte", scope: !123, file: !75, line: 129, baseType: !3444, size: 64, offset: 256)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{null, !116, !129, !104, !2555}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_range_start", scope: !123, file: !75, line: 184, baseType: !3448, size: 64, offset: 320)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!143, !116, !3451}
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3453)
!3453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_range", file: !75, line: 271, size: 320, elements: !3454)
!3454 = !{!3455, !3456, !3457, !3458, !3459, !3460}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3453, file: !75, line: 272, baseType: !129, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3453, file: !75, line: 273, baseType: !104, size: 64, offset: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3453, file: !75, line: 274, baseType: !104, size: 64, offset: 128)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3453, file: !75, line: 275, baseType: !7, size: 32, offset: 192)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3453, file: !75, line: 276, baseType: !74, size: 32, offset: 224)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3453, file: !75, line: 277, baseType: !105, size: 64, offset: 256)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_range_end", scope: !123, file: !75, line: 186, baseType: !3462, size: 64, offset: 384)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{null, !116, !3451}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "arch_invalidate_secondary_tlbs", scope: !123, file: !75, line: 206, baseType: !3466, size: 64, offset: 448)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{null, !116, !129, !104, !104}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_notifier", scope: !123, file: !75, line: 222, baseType: !3470, size: 64, offset: 512)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!116, !129}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "free_notifier", scope: !123, file: !75, line: 223, baseType: !3474, size: 64, offset: 576)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{null, !116}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !117, file: !75, line: 240, baseType: !129, size: 64, offset: 192)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !117, file: !75, line: 241, baseType: !213, size: 128, align: 64, offset: 256)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !117, file: !75, line: 242, baseType: !7, size: 32, offset: 384)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3411)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3481)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_interval_notifier", file: !75, line: 257, size: 704, elements: !3486)
!3486 = !{!3487, !3495, !3504, !3505, !3506}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "interval_tree", scope: !3485, file: !75, line: 258, baseType: !3488, size: 384)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "interval_tree_node", file: !3489, line: 7, size: 384, elements: !3490)
!3489 = !DIFile(filename: "./include/linux/interval_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "94f3524c238b848ebf78105e19d513b3")
!3490 = !{!3491, !3492, !3493, !3494}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3488, file: !3489, line: 8, baseType: !385, size: 192, align: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3488, file: !3489, line: 9, baseType: !104, size: 64, offset: 192)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !3488, file: !3489, line: 10, baseType: !104, size: 64, offset: 256)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "__subtree_last", scope: !3488, file: !3489, line: 11, baseType: !104, size: 64, offset: 320)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3485, file: !75, line: 259, baseType: !3496, size: 64, offset: 384)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3498)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_interval_notifier_ops", file: !75, line: 251, size: 64, elements: !3499)
!3499 = !{!3500}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate", scope: !3498, file: !75, line: 252, baseType: !3501, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!455, !3484, !3451, !104}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3485, file: !75, line: 260, baseType: !129, size: 64, offset: 448)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_item", scope: !3485, file: !75, line: 261, baseType: !110, size: 128, offset: 512)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_seq", scope: !3485, file: !75, line: 262, baseType: !104, size: 64, offset: 640)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3509)
!3509 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !143)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !115)
!3512 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !111, line: 42, baseType: !104)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3515 = !{!0, !3516, !3521, !3538, !3543, !3545, !3547, !3549, !3551, !3553, !3555, !3557, !3559, !3561, !3565, !3651, !3653, !3655, !3661, !3666, !3671, !3674}
!3516 = !DIGlobalVariableExpression(var: !3517, expr: !DIExpression())
!3517 = distinct !DIGlobalVariable(scope: null, file: !3, line: 618, type: !3518, isLocal: true, isDefinition: true)
!3518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 144, elements: !3519)
!3519 = !{!3520}
!3520 = !DISubrange(count: 18)
!3521 = !DIGlobalVariableExpression(var: !3522, expr: !DIExpression())
!3522 = distinct !DIGlobalVariable(name: "__key", scope: !3523, file: !3, line: 645, type: !871, isLocal: true, isDefinition: true)
!3523 = distinct !DISubprogram(name: "__mmu_notifier_register", scope: !3, file: !3, line: 611, type: !3524, scopeLine: 613, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3526)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!143, !116, !129}
!3526 = !{!3527, !3528, !3529, !3530, !3531, !3534, !3537}
!3527 = !DILocalVariable(name: "subscription", arg: 1, scope: !3523, file: !3, line: 611, type: !116)
!3528 = !DILocalVariable(name: "mm", arg: 2, scope: !3523, file: !3, line: 612, type: !129)
!3529 = !DILocalVariable(name: "subscriptions", scope: !3523, file: !3, line: 614, type: !3411)
!3530 = !DILocalVariable(name: "ret", scope: !3523, file: !3, line: 615, type: !143)
!3531 = !DILocalVariable(name: "__ret_warn_on", scope: !3532, file: !3, line: 624, type: !143)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 624, column: 6)
!3533 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 624, column: 6)
!3534 = !DILocalVariable(name: "__flags", scope: !3535, file: !3, line: 624, type: !143)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !3, line: 624, column: 6)
!3536 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 624, column: 6)
!3537 = !DILabel(scope: !3523, name: "out_clean", file: !3, line: 689)
!3538 = !DIGlobalVariableExpression(var: !3539, expr: !DIExpression())
!3539 = distinct !DIGlobalVariable(scope: null, file: !3, line: 645, type: !3540, isLocal: true, isDefinition: true)
!3540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 152, elements: !3541)
!3541 = !{!3542}
!3542 = !DISubrange(count: 19)
!3543 = !DIGlobalVariableExpression(var: !3544, expr: !DIExpression())
!3544 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___mmu_notifier_register318", scope: !2, file: !3, line: 693, type: !105, isLocal: true, isDefinition: true)
!3545 = !DIGlobalVariableExpression(var: !3546, expr: !DIExpression())
!3546 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mmu_notifier_register319", scope: !2, file: !3, line: 724, type: !105, isLocal: true, isDefinition: true)
!3547 = !DIGlobalVariableExpression(var: !3548, expr: !DIExpression())
!3548 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mmu_notifier_get_locked324", scope: !2, file: !3, line: 792, type: !105, isLocal: true, isDefinition: true)
!3549 = !DIGlobalVariableExpression(var: !3550, expr: !DIExpression())
!3550 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mmu_notifier_unregister325", scope: !2, file: !3, line: 852, type: !105, isLocal: true, isDefinition: true)
!3551 = !DIGlobalVariableExpression(var: !3552, expr: !DIExpression())
!3552 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mmu_notifier_put326", scope: !2, file: !3, line: 903, type: !105, isLocal: true, isDefinition: true)
!3553 = !DIGlobalVariableExpression(var: !3554, expr: !DIExpression())
!3554 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mmu_interval_notifier_insert329", scope: !2, file: !3, line: 1007, type: !105, isLocal: true, isDefinition: true)
!3555 = !DIGlobalVariableExpression(var: !3556, expr: !DIExpression())
!3556 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mmu_interval_notifier_insert_locked330", scope: !2, file: !3, line: 1029, type: !105, isLocal: true, isDefinition: true)
!3557 = !DIGlobalVariableExpression(var: !3558, expr: !DIExpression())
!3558 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mmu_interval_notifier_remove331", scope: !2, file: !3, line: 1095, type: !105, isLocal: true, isDefinition: true)
!3559 = !DIGlobalVariableExpression(var: !3560, expr: !DIExpression())
!3560 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mmu_notifier_synchronize332", scope: !2, file: !3, line: 1114, type: !105, isLocal: true, isDefinition: true)
!3561 = !DIGlobalVariableExpression(var: !3562, expr: !DIExpression())
!3562 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched37", scope: !3563, file: !3564, line: 112, type: !105, isLocal: true, isDefinition: true)
!3563 = distinct !DISubprogram(name: "might_resched", scope: !3564, file: !3564, line: 110, type: !1876, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3564 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!3565 = !DIGlobalVariableExpression(var: !3566, expr: !DIExpression())
!3566 = distinct !DIGlobalVariable(name: "srcu", scope: !2, file: !3, line: 23, type: !3567, isLocal: true, isDefinition: true)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3568, line: 96, size: 192, elements: !3569)
!3568 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3569 = !{!3570, !3571, !3615, !3617}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3567, file: !3568, line: 97, baseType: !7, size: 32)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3567, file: !3568, line: 98, baseType: !3572, size: 64, offset: 64)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3568, line: 24, size: 3072, elements: !3574)
!3574 = !{!3575, !3577, !3578, !3579, !3580, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3611, !3612, !3613}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3573, file: !3568, line: 26, baseType: !3576, size: 128)
!3576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 128, elements: !1762)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3573, file: !3568, line: 27, baseType: !3576, size: 128, offset: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3573, file: !3568, line: 28, baseType: !143, size: 32, offset: 256)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3573, file: !3568, line: 31, baseType: !152, size: 32, align: 512, offset: 512)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3573, file: !3568, line: 32, baseType: !3581, size: 960, offset: 576)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3582, line: 206, size: 960, elements: !3583)
!3582 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3583 = !{!3584, !3585, !3588, !3590, !3591, !3593}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3581, file: !3582, line: 207, baseType: !216, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3581, file: !3582, line: 208, baseType: !3586, size: 256, offset: 64)
!3586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3587, size: 256, elements: !301)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3581, file: !3582, line: 209, baseType: !3589, size: 256, offset: 320)
!3589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 256, elements: !301)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3581, file: !3582, line: 213, baseType: !734, size: 64, offset: 576)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3581, file: !3582, line: 215, baseType: !3592, size: 256, offset: 640)
!3592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !734, size: 256, elements: !301)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3581, file: !3582, line: 216, baseType: !176, size: 8, offset: 896)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3573, file: !3568, line: 33, baseType: !104, size: 64, offset: 1536)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3573, file: !3568, line: 34, baseType: !104, size: 64, offset: 1600)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3573, file: !3568, line: 35, baseType: !455, size: 8, offset: 1664)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3573, file: !3568, line: 36, baseType: !2692, size: 320, offset: 1728)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3573, file: !3568, line: 37, baseType: !3069, size: 256, offset: 2048)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3573, file: !3568, line: 38, baseType: !213, size: 128, align: 64, offset: 2304)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3573, file: !3568, line: 39, baseType: !3601, size: 64, offset: 2432)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3568, line: 49, size: 768, elements: !3603)
!3603 = !{!3604, !3605, !3606, !3607, !3608, !3609, !3610}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3602, file: !3568, line: 50, baseType: !152, size: 32)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3602, file: !3568, line: 51, baseType: !3589, size: 256, offset: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3602, file: !3568, line: 53, baseType: !3589, size: 256, offset: 320)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3602, file: !3568, line: 54, baseType: !104, size: 64, offset: 576)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3602, file: !3568, line: 55, baseType: !3601, size: 64, offset: 640)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3602, file: !3568, line: 56, baseType: !143, size: 32, offset: 704)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3602, file: !3568, line: 57, baseType: !143, size: 32, offset: 736)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3573, file: !3568, line: 40, baseType: !104, size: 64, offset: 2496)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3573, file: !3568, line: 42, baseType: !143, size: 32, offset: 2560)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3573, file: !3568, line: 43, baseType: !3614, size: 64, offset: 2624)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3567, file: !3568, line: 99, baseType: !3616, offset: 128)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !872, line: 211, elements: !193)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3567, file: !3568, line: 100, baseType: !3618, size: 64, offset: 128)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3568, line: 63, size: 3008, elements: !3620)
!3620 = !{!3621, !3622, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3650}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3619, file: !3568, line: 64, baseType: !3601, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3619, file: !3568, line: 65, baseType: !3623, size: 192, offset: 64)
!3623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3601, size: 192, elements: !281)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3619, file: !3568, line: 67, baseType: !143, size: 32, offset: 256)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3619, file: !3568, line: 68, baseType: !236, size: 256, offset: 320)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3619, file: !3568, line: 69, baseType: !152, size: 32, offset: 576)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3619, file: !3568, line: 70, baseType: !236, size: 256, offset: 640)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3619, file: !3568, line: 71, baseType: !104, size: 64, offset: 896)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3619, file: !3568, line: 72, baseType: !104, size: 64, offset: 960)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3619, file: !3568, line: 73, baseType: !104, size: 64, offset: 1024)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3619, file: !3568, line: 74, baseType: !104, size: 64, offset: 1088)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3619, file: !3568, line: 75, baseType: !104, size: 64, offset: 1152)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3619, file: !3568, line: 76, baseType: !104, size: 64, offset: 1216)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3619, file: !3568, line: 77, baseType: !104, size: 64, offset: 1280)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3619, file: !3568, line: 78, baseType: !104, size: 64, offset: 1344)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3619, file: !3568, line: 79, baseType: !455, size: 8, offset: 1408)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3619, file: !3568, line: 80, baseType: !104, size: 64, offset: 1472)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3619, file: !3568, line: 81, baseType: !236, size: 256, offset: 1536)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3619, file: !3568, line: 82, baseType: !1629, size: 256, offset: 1792)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3619, file: !3568, line: 84, baseType: !139, size: 32, offset: 2048)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3619, file: !3568, line: 87, baseType: !104, size: 64, offset: 2112)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3619, file: !3568, line: 88, baseType: !104, size: 64, offset: 2176)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3619, file: !3568, line: 89, baseType: !3644, size: 704, offset: 2240)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !3048, line: 111, size: 704, elements: !3645)
!3645 = !{!3646, !3647, !3648, !3649}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3644, file: !3048, line: 112, baseType: !3069, size: 256)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3644, file: !3048, line: 113, baseType: !2692, size: 320, offset: 256)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3644, file: !3048, line: 116, baseType: !3046, size: 64, offset: 576)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3644, file: !3048, line: 117, baseType: !143, size: 32, offset: 640)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3619, file: !3568, line: 90, baseType: !3614, size: 64, offset: 2944)
!3651 = !DIGlobalVariableExpression(var: !3652, expr: !DIExpression())
!3652 = distinct !DIGlobalVariable(name: "srcu_srcu_data", scope: !2, file: !3, line: 23, type: !3573, isLocal: true, isDefinition: true)
!3653 = !DIGlobalVariableExpression(var: !3654, expr: !DIExpression())
!3654 = distinct !DIGlobalVariable(name: "srcu_srcu_usage", scope: !2, file: !3, line: 23, type: !3619, isLocal: true, isDefinition: true)
!3655 = !DIGlobalVariableExpression(var: !3656, expr: !DIExpression())
!3656 = distinct !DIGlobalVariable(scope: null, file: !3657, line: 285, type: !3658, isLocal: true, isDefinition: true)
!3657 = !DIFile(filename: "./include/linux/srcu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f3855d969f2ce3ac707545b2791ec624")
!3658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 168, elements: !3659)
!3659 = !{!3660}
!3660 = !DISubrange(count: 21)
!3661 = !DIGlobalVariableExpression(var: !3662, expr: !DIExpression())
!3662 = distinct !DIGlobalVariable(scope: null, file: !3, line: 497, type: !3663, isLocal: true, isDefinition: true)
!3663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 440, elements: !3664)
!3664 = !{!3665}
!3665 = !DISubrange(count: 55)
!3666 = !DIGlobalVariableExpression(var: !3667, expr: !DIExpression())
!3667 = distinct !DIGlobalVariable(scope: null, file: !3, line: 497, type: !3668, isLocal: true, isDefinition: true)
!3668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 40, elements: !3669)
!3669 = !{!3670}
!3670 = !DISubrange(count: 5)
!3671 = !DIGlobalVariableExpression(var: !3672, expr: !DIExpression())
!3672 = distinct !DIGlobalVariable(scope: null, file: !3, line: 497, type: !3673, isLocal: true, isDefinition: true)
!3673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 8, elements: !1483)
!3674 = !DIGlobalVariableExpression(var: !3675, expr: !DIExpression())
!3675 = distinct !DIGlobalVariable(scope: null, file: !91, line: 480, type: !3658, isLocal: true, isDefinition: true)
!3676 = !{i32 7, !"Dwarf Version", i32 5}
!3677 = !{i32 2, !"Debug Info Version", i32 3}
!3678 = !{i32 1, !"wchar_size", i32 2}
!3679 = !{i32 8, !"cf-protection-branch", i32 1}
!3680 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3681 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3682 = !{i32 1, !"Code Model", i32 2}
!3683 = !{i32 1, !"override-stack-alignment", i32 8}
!3684 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3685 = distinct !DISubprogram(name: "mmu_interval_read_begin", scope: !3, file: !3, line: 186, type: !3686, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3688)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!104, !3484}
!3688 = !{!3689, !3690, !3691, !3692, !3693, !3708, !3709, !3713}
!3689 = !DILocalVariable(name: "interval_sub", arg: 1, scope: !3685, file: !3, line: 186, type: !3484)
!3690 = !DILocalVariable(name: "subscriptions", scope: !3685, file: !3, line: 188, type: !3411)
!3691 = !DILocalVariable(name: "seq", scope: !3685, file: !3, line: 190, type: !104)
!3692 = !DILocalVariable(name: "is_invalidating", scope: !3685, file: !3, line: 191, type: !455)
!3693 = !DILocalVariable(name: "__wq_entry", scope: !3694, file: !3, line: 248, type: !3697)
!3694 = distinct !DILexicalBlock(scope: !3695, file: !3, line: 248, column: 3)
!3695 = distinct !DILexicalBlock(scope: !3696, file: !3, line: 248, column: 3)
!3696 = distinct !DILexicalBlock(scope: !3685, file: !3, line: 247, column: 6)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !306, line: 30, size: 320, elements: !3698)
!3698 = !{!3699, !3700, !3701, !3707}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3697, file: !306, line: 31, baseType: !7, size: 32)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3697, file: !306, line: 32, baseType: !105, size: 64, offset: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3697, file: !306, line: 33, baseType: !3702, size: 64, offset: 128)
!3702 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !306, line: 16, baseType: !3703)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!143, !3706, !7, !143, !105}
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3697, file: !306, line: 34, baseType: !248, size: 128, offset: 192)
!3708 = !DILocalVariable(name: "__ret", scope: !3694, file: !3, line: 248, type: !734)
!3709 = !DILocalVariable(name: "__int", scope: !3710, file: !3, line: 248, type: !734)
!3710 = distinct !DILexicalBlock(scope: !3711, file: !3, line: 248, column: 3)
!3711 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 248, column: 3)
!3712 = distinct !DILexicalBlock(scope: !3694, file: !3, line: 248, column: 3)
!3713 = !DILabel(scope: !3694, name: "__out", file: !3, line: 248)
!3714 = !DILocation(line: 186, column: 55, scope: !3685)
!3715 = !DILocation(line: 188, column: 2, scope: !3685)
!3716 = !DILocation(line: 188, column: 37, scope: !3685)
!3717 = !DILocation(line: 189, column: 3, scope: !3685)
!3718 = !DILocation(line: 189, column: 17, scope: !3685)
!3719 = !DILocation(line: 189, column: 21, scope: !3685)
!3720 = !DILocation(line: 190, column: 2, scope: !3685)
!3721 = !DILocation(line: 190, column: 16, scope: !3685)
!3722 = !DILocation(line: 191, column: 2, scope: !3685)
!3723 = !DILocation(line: 191, column: 7, scope: !3685)
!3724 = !DILocation(line: 232, column: 13, scope: !3685)
!3725 = !DILocation(line: 232, column: 28, scope: !3685)
!3726 = !DILocation(line: 232, column: 2, scope: !3685)
!3727 = !DILocation(line: 234, column: 8, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3685, file: !3, line: 234, column: 8)
!3729 = !DILocation(line: 234, column: 8, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3728, file: !3, line: 234, column: 8)
!3731 = !DILocation(line: 234, column: 6, scope: !3685)
!3732 = !DILocation(line: 235, column: 20, scope: !3685)
!3733 = !DILocation(line: 235, column: 27, scope: !3685)
!3734 = !DILocation(line: 235, column: 42, scope: !3685)
!3735 = !DILocation(line: 235, column: 24, scope: !3685)
!3736 = !DILocation(line: 235, column: 18, scope: !3685)
!3737 = !DILocation(line: 236, column: 15, scope: !3685)
!3738 = !DILocation(line: 236, column: 30, scope: !3685)
!3739 = !DILocation(line: 236, column: 2, scope: !3685)
!3740 = !DILocation(line: 245, column: 2, scope: !3685)
!3741 = !DILocation(line: 245, column: 2, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3685, file: !3, line: 245, column: 2)
!3743 = !DILocation(line: 246, column: 2, scope: !3685)
!3744 = !DILocation(line: 246, column: 2, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3685, file: !3, line: 246, column: 2)
!3746 = !DILocation(line: 247, column: 6, scope: !3696)
!3747 = !{i8 0, i8 2}
!3748 = !DILocation(line: 247, column: 6, scope: !3685)
!3749 = !DILocation(line: 248, column: 3, scope: !3696)
!3750 = !DILocation(line: 248, column: 3, scope: !3695)
!3751 = !DILocation(line: 248, column: 3, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3695, file: !3, line: 248, column: 3)
!3753 = !DILocation(line: 248, column: 3, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3755, file: !3, line: 248, column: 3)
!3755 = distinct !DILexicalBlock(scope: !3695, file: !3, line: 248, column: 3)
!3756 = !DILocation(line: 248, column: 3, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3754, file: !3, line: 248, column: 3)
!3758 = !DILocation(line: 248, column: 3, scope: !3755)
!3759 = !DILocation(line: 248, column: 3, scope: !3694)
!3760 = !DILocation(line: 248, column: 3, scope: !3710)
!3761 = !DILocation(line: 248, column: 3, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3763, file: !3, line: 248, column: 3)
!3763 = distinct !DILexicalBlock(scope: !3710, file: !3, line: 248, column: 3)
!3764 = !DILocation(line: 248, column: 3, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3762, file: !3, line: 248, column: 3)
!3766 = !DILocation(line: 248, column: 3, scope: !3763)
!3767 = !DILocation(line: 248, column: 3, scope: !3711)
!3768 = distinct !{!3768, !3769, !3769, !3770}
!3769 = !DILocation(line: 248, column: 3, scope: !3712)
!3770 = !{!"llvm.loop.unroll.disable"}
!3771 = !DILocation(line: 257, column: 9, scope: !3685)
!3772 = !DILocation(line: 258, column: 1, scope: !3685)
!3773 = !DILocation(line: 257, column: 2, scope: !3685)
!3774 = distinct !DISubprogram(name: "spin_lock", scope: !3775, file: !3775, line: 349, type: !3776, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3778)
!3775 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!3776 = !DISubroutineType(types: !3777)
!3777 = !{null, !2566}
!3778 = !{!3779}
!3779 = !DILocalVariable(name: "lock", arg: 1, scope: !3774, file: !3775, line: 349, type: !2566)
!3780 = !DILocation(line: 349, column: 51, scope: !3774)
!3781 = !DILocation(line: 351, column: 2, scope: !3774)
!3782 = !DILocation(line: 352, column: 1, scope: !3774)
!3783 = distinct !DISubprogram(name: "spin_unlock", scope: !3775, file: !3775, line: 389, type: !3776, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3784)
!3784 = !{!3785}
!3785 = !DILocalVariable(name: "lock", arg: 1, scope: !3783, file: !3775, line: 389, type: !2566)
!3786 = !DILocation(line: 389, column: 53, scope: !3783)
!3787 = !DILocation(line: 391, column: 2, scope: !3783)
!3788 = !DILocation(line: 392, column: 1, scope: !3783)
!3789 = !DILocation(line: 112, column: 2, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3563, file: !3564, line: 112, column: 2)
!3791 = !DILocation(line: 112, column: 2, scope: !3563)
!3792 = !DILocation(line: 113, column: 1, scope: !3563)
!3793 = !DISubprogram(name: "init_wait_entry", scope: !306, file: !306, line: 290, type: !3794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{null, !3706, !143}
!3796 = !DISubprogram(name: "prepare_to_wait_event", scope: !306, file: !306, line: 1199, type: !3797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!734, !3799, !3706, !143}
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!3800 = !DISubprogram(name: "schedule", scope: !943, file: !943, line: 303, type: !1876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3801 = !DISubprogram(name: "finish_wait", scope: !306, file: !306, line: 1200, type: !3802, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{null, !3799, !3706}
!3804 = distinct !DISubprogram(name: "__mmu_notifier_release", scope: !3, file: !3, line: 348, type: !3805, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3807)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{null, !129}
!3807 = !{!3808, !3809}
!3808 = !DILocalVariable(name: "mm", arg: 1, scope: !3804, file: !3, line: 348, type: !129)
!3809 = !DILocalVariable(name: "subscriptions", scope: !3804, file: !3, line: 350, type: !3411)
!3810 = !DILocation(line: 348, column: 47, scope: !3804)
!3811 = !DILocation(line: 350, column: 2, scope: !3804)
!3812 = !DILocation(line: 350, column: 37, scope: !3804)
!3813 = !DILocation(line: 351, column: 3, scope: !3804)
!3814 = !DILocation(line: 351, column: 7, scope: !3804)
!3815 = !DILocation(line: 353, column: 6, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3804, file: !3, line: 353, column: 6)
!3817 = !DILocation(line: 353, column: 21, scope: !3816)
!3818 = !DILocation(line: 353, column: 6, scope: !3804)
!3819 = !DILocation(line: 354, column: 20, scope: !3816)
!3820 = !DILocation(line: 354, column: 35, scope: !3816)
!3821 = !DILocation(line: 354, column: 3, scope: !3816)
!3822 = !DILocation(line: 356, column: 20, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3804, file: !3, line: 356, column: 6)
!3824 = !DILocation(line: 356, column: 35, scope: !3823)
!3825 = !DILocation(line: 356, column: 7, scope: !3823)
!3826 = !DILocation(line: 356, column: 6, scope: !3804)
!3827 = !DILocation(line: 357, column: 20, scope: !3823)
!3828 = !DILocation(line: 357, column: 35, scope: !3823)
!3829 = !DILocation(line: 357, column: 3, scope: !3823)
!3830 = !DILocation(line: 358, column: 1, scope: !3804)
!3831 = distinct !DISubprogram(name: "mn_itree_release", scope: !3, file: !3, line: 261, type: !3832, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3834)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{null, !3411, !129}
!3834 = !{!3835, !3836, !3837, !3838, !3839, !3840, !3841, !3846}
!3835 = !DILocalVariable(name: "subscriptions", arg: 1, scope: !3831, file: !3, line: 261, type: !3411)
!3836 = !DILocalVariable(name: "mm", arg: 2, scope: !3831, file: !3, line: 262, type: !129)
!3837 = !DILocalVariable(name: "range", scope: !3831, file: !3, line: 264, type: !3453)
!3838 = !DILocalVariable(name: "interval_sub", scope: !3831, file: !3, line: 271, type: !3484)
!3839 = !DILocalVariable(name: "cur_seq", scope: !3831, file: !3, line: 272, type: !104)
!3840 = !DILocalVariable(name: "ret", scope: !3831, file: !3, line: 273, type: !455)
!3841 = !DILocalVariable(name: "__ret_warn_on", scope: !3842, file: !3, line: 281, type: !143)
!3842 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 281, column: 3)
!3843 = distinct !DILexicalBlock(scope: !3844, file: !3, line: 278, column: 63)
!3844 = distinct !DILexicalBlock(scope: !3845, file: !3, line: 275, column: 2)
!3845 = distinct !DILexicalBlock(scope: !3831, file: !3, line: 275, column: 2)
!3846 = !DILocalVariable(name: "__flags", scope: !3847, file: !3, line: 281, type: !143)
!3847 = distinct !DILexicalBlock(scope: !3848, file: !3, line: 281, column: 3)
!3848 = distinct !DILexicalBlock(scope: !3842, file: !3, line: 281, column: 3)
!3849 = !DILocation(line: 261, column: 65, scope: !3831)
!3850 = !DILocation(line: 262, column: 27, scope: !3831)
!3851 = !DILocation(line: 264, column: 2, scope: !3831)
!3852 = !DILocation(line: 264, column: 28, scope: !3831)
!3853 = !DILocation(line: 264, column: 36, scope: !3831)
!3854 = !DILocation(line: 267, column: 9, scope: !3831)
!3855 = !DILocation(line: 271, column: 2, scope: !3831)
!3856 = !DILocation(line: 271, column: 32, scope: !3831)
!3857 = !DILocation(line: 272, column: 2, scope: !3831)
!3858 = !DILocation(line: 272, column: 16, scope: !3831)
!3859 = !DILocation(line: 273, column: 2, scope: !3831)
!3860 = !DILocation(line: 273, column: 7, scope: !3831)
!3861 = !DILocation(line: 276, column: 33, scope: !3845)
!3862 = !DILocation(line: 276, column: 8, scope: !3845)
!3863 = !DILocation(line: 275, column: 20, scope: !3845)
!3864 = !DILocation(line: 275, column: 7, scope: !3845)
!3865 = !DILocation(line: 277, column: 7, scope: !3844)
!3866 = !DILocation(line: 275, column: 2, scope: !3845)
!3867 = !DILocation(line: 279, column: 9, scope: !3843)
!3868 = !DILocation(line: 279, column: 23, scope: !3843)
!3869 = !DILocation(line: 279, column: 28, scope: !3843)
!3870 = !DILocation(line: 279, column: 39, scope: !3843)
!3871 = !DILocation(line: 280, column: 11, scope: !3843)
!3872 = !DILocation(line: 279, column: 7, scope: !3843)
!3873 = !DILocation(line: 281, column: 3, scope: !3842)
!3874 = !DILocation(line: 281, column: 3, scope: !3848)
!3875 = !DILocation(line: 281, column: 3, scope: !3847)
!3876 = !DILocation(line: 281, column: 3, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 281, column: 3)
!3878 = !DILocation(line: 281, column: 3, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 281, column: 3)
!3880 = !{i64 2153938917, i64 2153938946, i64 2153938992, i64 2153939050, i64 2153939104, i64 2153939158, i64 2153939213, i64 2153939244, i64 2153939552, i64 2153939558, i64 2153939605, i64 2153939628, i64 2153939654}
!3881 = !DILocation(line: 281, column: 3, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 281, column: 3)
!3883 = !DILocation(line: 281, column: 3, scope: !3843)
!3884 = !DILocation(line: 282, column: 2, scope: !3843)
!3885 = !DILocation(line: 278, column: 40, scope: !3844)
!3886 = !DILocation(line: 278, column: 22, scope: !3844)
!3887 = !DILocation(line: 278, column: 20, scope: !3844)
!3888 = !DILocation(line: 275, column: 2, scope: !3844)
!3889 = distinct !{!3889, !3866, !3890, !3891, !3770}
!3890 = !DILocation(line: 282, column: 2, scope: !3845)
!3891 = !{!"llvm.loop.mustprogress"}
!3892 = !DILocation(line: 284, column: 19, scope: !3831)
!3893 = !DILocation(line: 284, column: 2, scope: !3831)
!3894 = !DILocation(line: 285, column: 1, scope: !3831)
!3895 = distinct !DISubprogram(name: "hlist_empty", scope: !3896, file: !3896, line: 970, type: !3897, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3901)
!3896 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!143, !3899}
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!3901 = !{!3902}
!3902 = !DILocalVariable(name: "h", arg: 1, scope: !3895, file: !3896, line: 970, type: !3899)
!3903 = !DILocation(line: 970, column: 56, scope: !3895)
!3904 = !DILocation(line: 972, column: 10, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3895, file: !3896, line: 972, column: 10)
!3906 = !DILocation(line: 972, column: 10, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3905, file: !3896, line: 972, column: 10)
!3908 = !DILocation(line: 972, column: 9, scope: !3895)
!3909 = !DILocation(line: 972, column: 2, scope: !3895)
!3910 = distinct !DISubprogram(name: "mn_hlist_release", scope: !3, file: !3, line: 299, type: !3832, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3911)
!3911 = !{!3912, !3913, !3914, !3915, !3916, !3919, !3921, !3923, !3926, !3928, !3930}
!3912 = !DILocalVariable(name: "subscriptions", arg: 1, scope: !3910, file: !3, line: 299, type: !3411)
!3913 = !DILocalVariable(name: "mm", arg: 2, scope: !3910, file: !3, line: 300, type: !129)
!3914 = !DILocalVariable(name: "subscription", scope: !3910, file: !3, line: 302, type: !116)
!3915 = !DILocalVariable(name: "id", scope: !3910, file: !3, line: 303, type: !143)
!3916 = !DILocalVariable(name: "____ptr", scope: !3917, file: !3, line: 310, type: !109)
!3917 = distinct !DILexicalBlock(scope: !3918, file: !3, line: 310, column: 2)
!3918 = distinct !DILexicalBlock(scope: !3910, file: !3, line: 310, column: 2)
!3919 = !DILocalVariable(name: "__UNIQUE_ID_rcu280", scope: !3920, file: !3, line: 310, type: !109)
!3920 = distinct !DILexicalBlock(scope: !3917, file: !3, line: 310, column: 2)
!3921 = !DILocalVariable(name: "__mptr", scope: !3922, file: !3, line: 310, type: !105)
!3922 = distinct !DILexicalBlock(scope: !3917, file: !3, line: 310, column: 2)
!3923 = !DILocalVariable(name: "____ptr", scope: !3924, file: !3, line: 310, type: !109)
!3924 = distinct !DILexicalBlock(scope: !3925, file: !3, line: 310, column: 2)
!3925 = distinct !DILexicalBlock(scope: !3918, file: !3, line: 310, column: 2)
!3926 = !DILocalVariable(name: "__UNIQUE_ID_rcu282", scope: !3927, file: !3, line: 310, type: !109)
!3927 = distinct !DILexicalBlock(scope: !3924, file: !3, line: 310, column: 2)
!3928 = !DILocalVariable(name: "__mptr", scope: !3929, file: !3, line: 310, type: !105)
!3929 = distinct !DILexicalBlock(scope: !3924, file: !3, line: 310, column: 2)
!3930 = !DILocalVariable(name: "__mptr", scope: !3931, file: !3, line: 323, type: !105)
!3931 = distinct !DILexicalBlock(scope: !3932, file: !3, line: 323, column: 18)
!3932 = distinct !DILexicalBlock(scope: !3910, file: !3, line: 322, column: 55)
!3933 = !DILocation(line: 299, column: 65, scope: !3910)
!3934 = !DILocation(line: 300, column: 27, scope: !3910)
!3935 = !DILocation(line: 302, column: 2, scope: !3910)
!3936 = !DILocation(line: 302, column: 23, scope: !3910)
!3937 = !DILocation(line: 303, column: 2, scope: !3910)
!3938 = !DILocation(line: 303, column: 6, scope: !3910)
!3939 = !DILocation(line: 309, column: 7, scope: !3910)
!3940 = !DILocation(line: 309, column: 5, scope: !3910)
!3941 = !DILocation(line: 310, column: 2, scope: !3917)
!3942 = !DILocation(line: 310, column: 2, scope: !3920)
!3943 = !DILocation(line: 310, column: 2, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3920, file: !3, line: 310, column: 2)
!3945 = !DILocation(line: 310, column: 2, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3944, file: !3, line: 310, column: 2)
!3947 = !DILocation(line: 310, column: 2, scope: !3922)
!3948 = !DILocation(line: 310, column: 2, scope: !3918)
!3949 = !DILocation(line: 310, column: 2, scope: !3925)
!3950 = !DILocation(line: 318, column: 7, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3925, file: !3, line: 318, column: 7)
!3952 = !DILocation(line: 318, column: 21, scope: !3951)
!3953 = !DILocation(line: 318, column: 26, scope: !3951)
!3954 = !DILocation(line: 318, column: 7, scope: !3925)
!3955 = !DILocation(line: 319, column: 4, scope: !3951)
!3956 = !DILocation(line: 319, column: 18, scope: !3951)
!3957 = !DILocation(line: 319, column: 23, scope: !3951)
!3958 = !DILocation(line: 319, column: 31, scope: !3951)
!3959 = !DILocation(line: 319, column: 45, scope: !3951)
!3960 = !DILocation(line: 310, column: 2, scope: !3924)
!3961 = !DILocation(line: 310, column: 2, scope: !3927)
!3962 = !DILocation(line: 310, column: 2, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3927, file: !3, line: 310, column: 2)
!3964 = !DILocation(line: 310, column: 2, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3963, file: !3, line: 310, column: 2)
!3966 = !DILocation(line: 310, column: 2, scope: !3929)
!3967 = distinct !{!3967, !3948, !3968, !3891, !3770}
!3968 = !DILocation(line: 319, column: 47, scope: !3918)
!3969 = !DILocation(line: 321, column: 13, scope: !3910)
!3970 = !DILocation(line: 321, column: 28, scope: !3910)
!3971 = !DILocation(line: 321, column: 2, scope: !3910)
!3972 = !DILocation(line: 322, column: 2, scope: !3910)
!3973 = !DILocation(line: 322, column: 9, scope: !3910)
!3974 = !DILocation(line: 323, column: 18, scope: !3931)
!3975 = !DILocation(line: 323, column: 18, scope: !3932)
!3976 = !DILocation(line: 323, column: 16, scope: !3932)
!3977 = !DILocation(line: 331, column: 23, scope: !3932)
!3978 = !DILocation(line: 331, column: 37, scope: !3932)
!3979 = !DILocation(line: 331, column: 3, scope: !3932)
!3980 = distinct !{!3980, !3972, !3981, !3891, !3770}
!3981 = !DILocation(line: 332, column: 2, scope: !3910)
!3982 = !DILocation(line: 333, column: 15, scope: !3910)
!3983 = !DILocation(line: 333, column: 30, scope: !3910)
!3984 = !DILocation(line: 333, column: 2, scope: !3910)
!3985 = !DILocation(line: 334, column: 26, scope: !3910)
!3986 = !DILocation(line: 334, column: 2, scope: !3910)
!3987 = !DILocation(line: 345, column: 2, scope: !3910)
!3988 = !DILocation(line: 346, column: 1, scope: !3910)
!3989 = distinct !DISubprogram(name: "__mmu_notifier_clear_flush_young", scope: !3, file: !3, line: 365, type: !3990, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3992)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!143, !129, !104, !104}
!3992 = !{!3993, !3994, !3995, !3996, !3997, !3998, !3999, !4002, !4004, !4006, !4009, !4011}
!3993 = !DILocalVariable(name: "mm", arg: 1, scope: !3989, file: !3, line: 365, type: !129)
!3994 = !DILocalVariable(name: "start", arg: 2, scope: !3989, file: !3, line: 366, type: !104)
!3995 = !DILocalVariable(name: "end", arg: 3, scope: !3989, file: !3, line: 367, type: !104)
!3996 = !DILocalVariable(name: "subscription", scope: !3989, file: !3, line: 369, type: !116)
!3997 = !DILocalVariable(name: "young", scope: !3989, file: !3, line: 370, type: !143)
!3998 = !DILocalVariable(name: "id", scope: !3989, file: !3, line: 370, type: !143)
!3999 = !DILocalVariable(name: "____ptr", scope: !4000, file: !3, line: 373, type: !109)
!4000 = distinct !DILexicalBlock(scope: !4001, file: !3, line: 373, column: 2)
!4001 = distinct !DILexicalBlock(scope: !3989, file: !3, line: 373, column: 2)
!4002 = !DILocalVariable(name: "__UNIQUE_ID_rcu284", scope: !4003, file: !3, line: 373, type: !109)
!4003 = distinct !DILexicalBlock(scope: !4000, file: !3, line: 373, column: 2)
!4004 = !DILocalVariable(name: "__mptr", scope: !4005, file: !3, line: 373, type: !105)
!4005 = distinct !DILexicalBlock(scope: !4000, file: !3, line: 373, column: 2)
!4006 = !DILocalVariable(name: "____ptr", scope: !4007, file: !3, line: 373, type: !109)
!4007 = distinct !DILexicalBlock(scope: !4008, file: !3, line: 373, column: 2)
!4008 = distinct !DILexicalBlock(scope: !4001, file: !3, line: 373, column: 2)
!4009 = !DILocalVariable(name: "__UNIQUE_ID_rcu286", scope: !4010, file: !3, line: 373, type: !109)
!4010 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 373, column: 2)
!4011 = !DILocalVariable(name: "__mptr", scope: !4012, file: !3, line: 373, type: !105)
!4012 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 373, column: 2)
!4013 = !DILocation(line: 365, column: 56, scope: !3989)
!4014 = !DILocation(line: 366, column: 20, scope: !3989)
!4015 = !DILocation(line: 367, column: 20, scope: !3989)
!4016 = !DILocation(line: 369, column: 2, scope: !3989)
!4017 = !DILocation(line: 369, column: 23, scope: !3989)
!4018 = !DILocation(line: 370, column: 2, scope: !3989)
!4019 = !DILocation(line: 370, column: 6, scope: !3989)
!4020 = !DILocation(line: 370, column: 17, scope: !3989)
!4021 = !DILocation(line: 372, column: 7, scope: !3989)
!4022 = !DILocation(line: 372, column: 5, scope: !3989)
!4023 = !DILocation(line: 373, column: 2, scope: !4000)
!4024 = !DILocation(line: 373, column: 2, scope: !4003)
!4025 = !DILocation(line: 373, column: 2, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4003, file: !3, line: 373, column: 2)
!4027 = !DILocation(line: 373, column: 2, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4026, file: !3, line: 373, column: 2)
!4029 = !DILocation(line: 373, column: 2, scope: !4005)
!4030 = !DILocation(line: 373, column: 2, scope: !4001)
!4031 = !DILocation(line: 373, column: 2, scope: !4008)
!4032 = !DILocation(line: 376, column: 7, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !4034, file: !3, line: 376, column: 7)
!4034 = distinct !DILexicalBlock(scope: !4008, file: !3, line: 375, column: 34)
!4035 = !DILocation(line: 376, column: 21, scope: !4033)
!4036 = !DILocation(line: 376, column: 26, scope: !4033)
!4037 = !DILocation(line: 376, column: 7, scope: !4034)
!4038 = !DILocation(line: 377, column: 13, scope: !4033)
!4039 = !DILocation(line: 377, column: 27, scope: !4033)
!4040 = !DILocation(line: 377, column: 32, scope: !4033)
!4041 = !DILocation(line: 378, column: 5, scope: !4033)
!4042 = !DILocation(line: 378, column: 19, scope: !4033)
!4043 = !DILocation(line: 378, column: 23, scope: !4033)
!4044 = !DILocation(line: 378, column: 30, scope: !4033)
!4045 = !DILocation(line: 377, column: 10, scope: !4033)
!4046 = !DILocation(line: 377, column: 4, scope: !4033)
!4047 = !DILocation(line: 379, column: 2, scope: !4034)
!4048 = !DILocation(line: 373, column: 2, scope: !4007)
!4049 = !DILocation(line: 373, column: 2, scope: !4010)
!4050 = !DILocation(line: 373, column: 2, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4010, file: !3, line: 373, column: 2)
!4052 = !DILocation(line: 373, column: 2, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !4051, file: !3, line: 373, column: 2)
!4054 = !DILocation(line: 373, column: 2, scope: !4012)
!4055 = distinct !{!4055, !4030, !4056, !3891, !3770}
!4056 = !DILocation(line: 379, column: 2, scope: !4001)
!4057 = !DILocation(line: 380, column: 26, scope: !3989)
!4058 = !DILocation(line: 380, column: 2, scope: !3989)
!4059 = !DILocation(line: 382, column: 9, scope: !3989)
!4060 = !DILocation(line: 383, column: 1, scope: !3989)
!4061 = !DILocation(line: 382, column: 2, scope: !3989)
!4062 = distinct !DISubprogram(name: "srcu_read_lock", scope: !3657, file: !3657, line: 209, type: !4063, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4065)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!143, !3614}
!4065 = !{!4066, !4067}
!4066 = !DILocalVariable(name: "ssp", arg: 1, scope: !4062, file: !3657, line: 209, type: !3614)
!4067 = !DILocalVariable(name: "retval", scope: !4062, file: !3657, line: 211, type: !143)
!4068 = !DILocation(line: 209, column: 54, scope: !4062)
!4069 = !DILocation(line: 211, column: 2, scope: !4062)
!4070 = !DILocation(line: 211, column: 6, scope: !4062)
!4071 = !DILocation(line: 213, column: 24, scope: !4062)
!4072 = !DILocation(line: 213, column: 2, scope: !4062)
!4073 = !DILocation(line: 214, column: 28, scope: !4062)
!4074 = !DILocation(line: 214, column: 11, scope: !4062)
!4075 = !DILocation(line: 214, column: 9, scope: !4062)
!4076 = !DILocation(line: 215, column: 2, scope: !4062)
!4077 = !DILocation(line: 215, column: 2, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4062, file: !3657, line: 215, column: 2)
!4079 = !DILocation(line: 216, column: 9, scope: !4062)
!4080 = !DILocation(line: 217, column: 1, scope: !4062)
!4081 = !DILocation(line: 216, column: 2, scope: !4062)
!4082 = distinct !DISubprogram(name: "srcu_read_unlock", scope: !3657, file: !3657, line: 282, type: !4083, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4085)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{null, !3614, !143}
!4085 = !{!4086, !4087, !4088, !4090}
!4086 = !DILocalVariable(name: "ssp", arg: 1, scope: !4082, file: !3657, line: 282, type: !3614)
!4087 = !DILocalVariable(name: "idx", arg: 2, scope: !4082, file: !3657, line: 282, type: !143)
!4088 = !DILocalVariable(name: "__ret_warn_on", scope: !4089, file: !3657, line: 285, type: !143)
!4089 = distinct !DILexicalBlock(scope: !4082, file: !3657, line: 285, column: 2)
!4090 = !DILocalVariable(name: "__flags", scope: !4091, file: !3657, line: 285, type: !143)
!4091 = distinct !DILexicalBlock(scope: !4092, file: !3657, line: 285, column: 2)
!4092 = distinct !DILexicalBlock(scope: !4089, file: !3657, line: 285, column: 2)
!4093 = !DILocation(line: 282, column: 57, scope: !4082)
!4094 = !DILocation(line: 282, column: 66, scope: !4082)
!4095 = !DILocation(line: 285, column: 2, scope: !4089)
!4096 = !DILocation(line: 285, column: 2, scope: !4092)
!4097 = !DILocation(line: 285, column: 2, scope: !4091)
!4098 = !DILocation(line: 285, column: 2, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4091, file: !3657, line: 285, column: 2)
!4100 = !DILocation(line: 285, column: 2, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4091, file: !3657, line: 285, column: 2)
!4102 = !{i64 2150488931, i64 2150488960, i64 2150489006, i64 2150489064, i64 2150489118, i64 2150489172, i64 2150489227, i64 2150489258, i64 2150489566, i64 2150489572, i64 2150489619, i64 2150489642, i64 2150489668}
!4103 = !DILocation(line: 285, column: 2, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4091, file: !3657, line: 285, column: 2)
!4105 = !DILocation(line: 285, column: 2, scope: !4082)
!4106 = !DILocation(line: 286, column: 24, scope: !4082)
!4107 = !DILocation(line: 286, column: 2, scope: !4082)
!4108 = !DILocation(line: 287, column: 2, scope: !4082)
!4109 = !DILocation(line: 287, column: 2, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4082, file: !3657, line: 287, column: 2)
!4111 = !DILocation(line: 288, column: 21, scope: !4082)
!4112 = !DILocation(line: 288, column: 26, scope: !4082)
!4113 = !DILocation(line: 288, column: 2, scope: !4082)
!4114 = !DILocation(line: 289, column: 1, scope: !4082)
!4115 = distinct !DISubprogram(name: "__mmu_notifier_clear_young", scope: !3, file: !3, line: 385, type: !3990, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4116)
!4116 = !{!4117, !4118, !4119, !4120, !4121, !4122, !4123, !4126, !4128, !4130, !4133, !4135}
!4117 = !DILocalVariable(name: "mm", arg: 1, scope: !4115, file: !3, line: 385, type: !129)
!4118 = !DILocalVariable(name: "start", arg: 2, scope: !4115, file: !3, line: 386, type: !104)
!4119 = !DILocalVariable(name: "end", arg: 3, scope: !4115, file: !3, line: 387, type: !104)
!4120 = !DILocalVariable(name: "subscription", scope: !4115, file: !3, line: 389, type: !116)
!4121 = !DILocalVariable(name: "young", scope: !4115, file: !3, line: 390, type: !143)
!4122 = !DILocalVariable(name: "id", scope: !4115, file: !3, line: 390, type: !143)
!4123 = !DILocalVariable(name: "____ptr", scope: !4124, file: !3, line: 393, type: !109)
!4124 = distinct !DILexicalBlock(scope: !4125, file: !3, line: 393, column: 2)
!4125 = distinct !DILexicalBlock(scope: !4115, file: !3, line: 393, column: 2)
!4126 = !DILocalVariable(name: "__UNIQUE_ID_rcu288", scope: !4127, file: !3, line: 393, type: !109)
!4127 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 393, column: 2)
!4128 = !DILocalVariable(name: "__mptr", scope: !4129, file: !3, line: 393, type: !105)
!4129 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 393, column: 2)
!4130 = !DILocalVariable(name: "____ptr", scope: !4131, file: !3, line: 393, type: !109)
!4131 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 393, column: 2)
!4132 = distinct !DILexicalBlock(scope: !4125, file: !3, line: 393, column: 2)
!4133 = !DILocalVariable(name: "__UNIQUE_ID_rcu290", scope: !4134, file: !3, line: 393, type: !109)
!4134 = distinct !DILexicalBlock(scope: !4131, file: !3, line: 393, column: 2)
!4135 = !DILocalVariable(name: "__mptr", scope: !4136, file: !3, line: 393, type: !105)
!4136 = distinct !DILexicalBlock(scope: !4131, file: !3, line: 393, column: 2)
!4137 = !DILocation(line: 385, column: 50, scope: !4115)
!4138 = !DILocation(line: 386, column: 25, scope: !4115)
!4139 = !DILocation(line: 387, column: 25, scope: !4115)
!4140 = !DILocation(line: 389, column: 2, scope: !4115)
!4141 = !DILocation(line: 389, column: 23, scope: !4115)
!4142 = !DILocation(line: 390, column: 2, scope: !4115)
!4143 = !DILocation(line: 390, column: 6, scope: !4115)
!4144 = !DILocation(line: 390, column: 17, scope: !4115)
!4145 = !DILocation(line: 392, column: 7, scope: !4115)
!4146 = !DILocation(line: 392, column: 5, scope: !4115)
!4147 = !DILocation(line: 393, column: 2, scope: !4124)
!4148 = !DILocation(line: 393, column: 2, scope: !4127)
!4149 = !DILocation(line: 393, column: 2, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4127, file: !3, line: 393, column: 2)
!4151 = !DILocation(line: 393, column: 2, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4150, file: !3, line: 393, column: 2)
!4153 = !DILocation(line: 393, column: 2, scope: !4129)
!4154 = !DILocation(line: 393, column: 2, scope: !4125)
!4155 = !DILocation(line: 393, column: 2, scope: !4132)
!4156 = !DILocation(line: 396, column: 7, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4158, file: !3, line: 396, column: 7)
!4158 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 395, column: 34)
!4159 = !DILocation(line: 396, column: 21, scope: !4157)
!4160 = !DILocation(line: 396, column: 26, scope: !4157)
!4161 = !DILocation(line: 396, column: 7, scope: !4158)
!4162 = !DILocation(line: 397, column: 13, scope: !4157)
!4163 = !DILocation(line: 397, column: 27, scope: !4157)
!4164 = !DILocation(line: 397, column: 32, scope: !4157)
!4165 = !DILocation(line: 397, column: 44, scope: !4157)
!4166 = !DILocation(line: 398, column: 9, scope: !4157)
!4167 = !DILocation(line: 398, column: 13, scope: !4157)
!4168 = !DILocation(line: 398, column: 20, scope: !4157)
!4169 = !DILocation(line: 397, column: 10, scope: !4157)
!4170 = !DILocation(line: 397, column: 4, scope: !4157)
!4171 = !DILocation(line: 399, column: 2, scope: !4158)
!4172 = !DILocation(line: 393, column: 2, scope: !4131)
!4173 = !DILocation(line: 393, column: 2, scope: !4134)
!4174 = !DILocation(line: 393, column: 2, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4134, file: !3, line: 393, column: 2)
!4176 = !DILocation(line: 393, column: 2, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4175, file: !3, line: 393, column: 2)
!4178 = !DILocation(line: 393, column: 2, scope: !4136)
!4179 = distinct !{!4179, !4154, !4180, !3891, !3770}
!4180 = !DILocation(line: 399, column: 2, scope: !4125)
!4181 = !DILocation(line: 400, column: 26, scope: !4115)
!4182 = !DILocation(line: 400, column: 2, scope: !4115)
!4183 = !DILocation(line: 402, column: 9, scope: !4115)
!4184 = !DILocation(line: 403, column: 1, scope: !4115)
!4185 = !DILocation(line: 402, column: 2, scope: !4115)
!4186 = distinct !DISubprogram(name: "__mmu_notifier_test_young", scope: !3, file: !3, line: 405, type: !4187, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4189)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!143, !129, !104}
!4189 = !{!4190, !4191, !4192, !4193, !4194, !4195, !4198, !4200, !4202, !4205, !4207}
!4190 = !DILocalVariable(name: "mm", arg: 1, scope: !4186, file: !3, line: 405, type: !129)
!4191 = !DILocalVariable(name: "address", arg: 2, scope: !4186, file: !3, line: 406, type: !104)
!4192 = !DILocalVariable(name: "subscription", scope: !4186, file: !3, line: 408, type: !116)
!4193 = !DILocalVariable(name: "young", scope: !4186, file: !3, line: 409, type: !143)
!4194 = !DILocalVariable(name: "id", scope: !4186, file: !3, line: 409, type: !143)
!4195 = !DILocalVariable(name: "____ptr", scope: !4196, file: !3, line: 412, type: !109)
!4196 = distinct !DILexicalBlock(scope: !4197, file: !3, line: 412, column: 2)
!4197 = distinct !DILexicalBlock(scope: !4186, file: !3, line: 412, column: 2)
!4198 = !DILocalVariable(name: "__UNIQUE_ID_rcu292", scope: !4199, file: !3, line: 412, type: !109)
!4199 = distinct !DILexicalBlock(scope: !4196, file: !3, line: 412, column: 2)
!4200 = !DILocalVariable(name: "__mptr", scope: !4201, file: !3, line: 412, type: !105)
!4201 = distinct !DILexicalBlock(scope: !4196, file: !3, line: 412, column: 2)
!4202 = !DILocalVariable(name: "____ptr", scope: !4203, file: !3, line: 412, type: !109)
!4203 = distinct !DILexicalBlock(scope: !4204, file: !3, line: 412, column: 2)
!4204 = distinct !DILexicalBlock(scope: !4197, file: !3, line: 412, column: 2)
!4205 = !DILocalVariable(name: "__UNIQUE_ID_rcu294", scope: !4206, file: !3, line: 412, type: !109)
!4206 = distinct !DILexicalBlock(scope: !4203, file: !3, line: 412, column: 2)
!4207 = !DILocalVariable(name: "__mptr", scope: !4208, file: !3, line: 412, type: !105)
!4208 = distinct !DILexicalBlock(scope: !4203, file: !3, line: 412, column: 2)
!4209 = !DILocation(line: 405, column: 49, scope: !4186)
!4210 = !DILocation(line: 406, column: 24, scope: !4186)
!4211 = !DILocation(line: 408, column: 2, scope: !4186)
!4212 = !DILocation(line: 408, column: 23, scope: !4186)
!4213 = !DILocation(line: 409, column: 2, scope: !4186)
!4214 = !DILocation(line: 409, column: 6, scope: !4186)
!4215 = !DILocation(line: 409, column: 17, scope: !4186)
!4216 = !DILocation(line: 411, column: 7, scope: !4186)
!4217 = !DILocation(line: 411, column: 5, scope: !4186)
!4218 = !DILocation(line: 412, column: 2, scope: !4196)
!4219 = !DILocation(line: 412, column: 2, scope: !4199)
!4220 = !DILocation(line: 412, column: 2, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !4199, file: !3, line: 412, column: 2)
!4222 = !DILocation(line: 412, column: 2, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 412, column: 2)
!4224 = !DILocation(line: 412, column: 2, scope: !4201)
!4225 = !DILocation(line: 412, column: 2, scope: !4197)
!4226 = !DILocation(line: 412, column: 2, scope: !4204)
!4227 = !DILocation(line: 415, column: 7, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4229, file: !3, line: 415, column: 7)
!4229 = distinct !DILexicalBlock(scope: !4204, file: !3, line: 414, column: 34)
!4230 = !DILocation(line: 415, column: 21, scope: !4228)
!4231 = !DILocation(line: 415, column: 26, scope: !4228)
!4232 = !DILocation(line: 415, column: 7, scope: !4229)
!4233 = !DILocation(line: 416, column: 12, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4228, file: !3, line: 415, column: 38)
!4235 = !DILocation(line: 416, column: 26, scope: !4234)
!4236 = !DILocation(line: 416, column: 31, scope: !4234)
!4237 = !DILocation(line: 416, column: 42, scope: !4234)
!4238 = !DILocation(line: 416, column: 56, scope: !4234)
!4239 = !DILocation(line: 417, column: 14, scope: !4234)
!4240 = !DILocation(line: 416, column: 10, scope: !4234)
!4241 = !DILocation(line: 418, column: 8, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4234, file: !3, line: 418, column: 8)
!4243 = !DILocation(line: 418, column: 8, scope: !4234)
!4244 = !DILocation(line: 419, column: 5, scope: !4242)
!4245 = !DILocation(line: 420, column: 3, scope: !4234)
!4246 = !DILocation(line: 421, column: 2, scope: !4229)
!4247 = !DILocation(line: 412, column: 2, scope: !4203)
!4248 = !DILocation(line: 412, column: 2, scope: !4206)
!4249 = !DILocation(line: 412, column: 2, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4206, file: !3, line: 412, column: 2)
!4251 = !DILocation(line: 412, column: 2, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4250, file: !3, line: 412, column: 2)
!4253 = !DILocation(line: 412, column: 2, scope: !4208)
!4254 = distinct !{!4254, !4225, !4255, !3891, !3770}
!4255 = !DILocation(line: 421, column: 2, scope: !4197)
!4256 = !DILocation(line: 422, column: 26, scope: !4186)
!4257 = !DILocation(line: 422, column: 2, scope: !4186)
!4258 = !DILocation(line: 424, column: 9, scope: !4186)
!4259 = !DILocation(line: 425, column: 1, scope: !4186)
!4260 = !DILocation(line: 424, column: 2, scope: !4186)
!4261 = distinct !DISubprogram(name: "__mmu_notifier_change_pte", scope: !3, file: !3, line: 427, type: !4262, scopeLine: 429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4264)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{null, !129, !104, !2555}
!4264 = !{!4265, !4266, !4267, !4268, !4269, !4270, !4273, !4275, !4277, !4280, !4282}
!4265 = !DILocalVariable(name: "mm", arg: 1, scope: !4261, file: !3, line: 427, type: !129)
!4266 = !DILocalVariable(name: "address", arg: 2, scope: !4261, file: !3, line: 427, type: !104)
!4267 = !DILocalVariable(name: "pte", arg: 3, scope: !4261, file: !3, line: 428, type: !2555)
!4268 = !DILocalVariable(name: "subscription", scope: !4261, file: !3, line: 430, type: !116)
!4269 = !DILocalVariable(name: "id", scope: !4261, file: !3, line: 431, type: !143)
!4270 = !DILocalVariable(name: "____ptr", scope: !4271, file: !3, line: 434, type: !109)
!4271 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 434, column: 2)
!4272 = distinct !DILexicalBlock(scope: !4261, file: !3, line: 434, column: 2)
!4273 = !DILocalVariable(name: "__UNIQUE_ID_rcu296", scope: !4274, file: !3, line: 434, type: !109)
!4274 = distinct !DILexicalBlock(scope: !4271, file: !3, line: 434, column: 2)
!4275 = !DILocalVariable(name: "__mptr", scope: !4276, file: !3, line: 434, type: !105)
!4276 = distinct !DILexicalBlock(scope: !4271, file: !3, line: 434, column: 2)
!4277 = !DILocalVariable(name: "____ptr", scope: !4278, file: !3, line: 434, type: !109)
!4278 = distinct !DILexicalBlock(scope: !4279, file: !3, line: 434, column: 2)
!4279 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 434, column: 2)
!4280 = !DILocalVariable(name: "__UNIQUE_ID_rcu298", scope: !4281, file: !3, line: 434, type: !109)
!4281 = distinct !DILexicalBlock(scope: !4278, file: !3, line: 434, column: 2)
!4282 = !DILocalVariable(name: "__mptr", scope: !4283, file: !3, line: 434, type: !105)
!4283 = distinct !DILexicalBlock(scope: !4278, file: !3, line: 434, column: 2)
!4284 = !DILocation(line: 427, column: 50, scope: !4261)
!4285 = !DILocation(line: 427, column: 68, scope: !4261)
!4286 = !DILocation(line: 428, column: 17, scope: !4261)
!4287 = !DILocation(line: 430, column: 2, scope: !4261)
!4288 = !DILocation(line: 430, column: 23, scope: !4261)
!4289 = !DILocation(line: 431, column: 2, scope: !4261)
!4290 = !DILocation(line: 431, column: 6, scope: !4261)
!4291 = !DILocation(line: 433, column: 7, scope: !4261)
!4292 = !DILocation(line: 433, column: 5, scope: !4261)
!4293 = !DILocation(line: 434, column: 2, scope: !4271)
!4294 = !DILocation(line: 434, column: 2, scope: !4274)
!4295 = !DILocation(line: 434, column: 2, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 434, column: 2)
!4297 = !DILocation(line: 434, column: 2, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 434, column: 2)
!4299 = !DILocation(line: 434, column: 2, scope: !4276)
!4300 = !DILocation(line: 434, column: 2, scope: !4272)
!4301 = !DILocation(line: 434, column: 2, scope: !4279)
!4302 = !DILocation(line: 437, column: 7, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4304, file: !3, line: 437, column: 7)
!4304 = distinct !DILexicalBlock(scope: !4279, file: !3, line: 436, column: 34)
!4305 = !DILocation(line: 437, column: 21, scope: !4303)
!4306 = !DILocation(line: 437, column: 26, scope: !4303)
!4307 = !DILocation(line: 437, column: 7, scope: !4304)
!4308 = !DILocation(line: 438, column: 4, scope: !4303)
!4309 = !DILocation(line: 438, column: 18, scope: !4303)
!4310 = !DILocation(line: 438, column: 23, scope: !4303)
!4311 = !DILocation(line: 438, column: 34, scope: !4303)
!4312 = !DILocation(line: 438, column: 48, scope: !4303)
!4313 = !DILocation(line: 438, column: 52, scope: !4303)
!4314 = !DILocation(line: 440, column: 2, scope: !4304)
!4315 = !DILocation(line: 434, column: 2, scope: !4278)
!4316 = !DILocation(line: 434, column: 2, scope: !4281)
!4317 = !DILocation(line: 434, column: 2, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4281, file: !3, line: 434, column: 2)
!4319 = !DILocation(line: 434, column: 2, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4318, file: !3, line: 434, column: 2)
!4321 = !DILocation(line: 434, column: 2, scope: !4283)
!4322 = distinct !{!4322, !4300, !4323, !3891, !3770}
!4323 = !DILocation(line: 440, column: 2, scope: !4272)
!4324 = !DILocation(line: 441, column: 26, scope: !4261)
!4325 = !DILocation(line: 441, column: 2, scope: !4261)
!4326 = !DILocation(line: 442, column: 1, scope: !4261)
!4327 = distinct !DISubprogram(name: "__mmu_notifier_invalidate_range_start", scope: !3, file: !3, line: 536, type: !4328, scopeLine: 537, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4331)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!143, !4330}
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!4331 = !{!4332, !4333, !4334}
!4332 = !DILocalVariable(name: "range", arg: 1, scope: !4327, file: !3, line: 536, type: !4330)
!4333 = !DILocalVariable(name: "subscriptions", scope: !4327, file: !3, line: 538, type: !3411)
!4334 = !DILocalVariable(name: "ret", scope: !4327, file: !3, line: 540, type: !143)
!4335 = !DILocation(line: 536, column: 70, scope: !4327)
!4336 = !DILocation(line: 538, column: 2, scope: !4327)
!4337 = !DILocation(line: 538, column: 37, scope: !4327)
!4338 = !DILocation(line: 539, column: 3, scope: !4327)
!4339 = !DILocation(line: 539, column: 10, scope: !4327)
!4340 = !DILocation(line: 539, column: 14, scope: !4327)
!4341 = !DILocation(line: 540, column: 2, scope: !4327)
!4342 = !DILocation(line: 540, column: 6, scope: !4327)
!4343 = !DILocation(line: 542, column: 6, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4327, file: !3, line: 542, column: 6)
!4345 = !DILocation(line: 542, column: 21, scope: !4344)
!4346 = !DILocation(line: 542, column: 6, scope: !4327)
!4347 = !DILocation(line: 543, column: 29, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !4344, file: !3, line: 542, column: 32)
!4349 = !DILocation(line: 543, column: 44, scope: !4348)
!4350 = !DILocation(line: 543, column: 9, scope: !4348)
!4351 = !DILocation(line: 543, column: 7, scope: !4348)
!4352 = !DILocation(line: 544, column: 7, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4348, file: !3, line: 544, column: 7)
!4354 = !DILocation(line: 544, column: 7, scope: !4348)
!4355 = !DILocation(line: 545, column: 11, scope: !4353)
!4356 = !DILocation(line: 545, column: 4, scope: !4353)
!4357 = !DILocation(line: 546, column: 2, scope: !4348)
!4358 = !DILocation(line: 547, column: 20, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4327, file: !3, line: 547, column: 6)
!4360 = !DILocation(line: 547, column: 35, scope: !4359)
!4361 = !DILocation(line: 547, column: 7, scope: !4359)
!4362 = !DILocation(line: 547, column: 6, scope: !4327)
!4363 = !DILocation(line: 548, column: 42, scope: !4359)
!4364 = !DILocation(line: 548, column: 57, scope: !4359)
!4365 = !DILocation(line: 548, column: 10, scope: !4359)
!4366 = !DILocation(line: 548, column: 3, scope: !4359)
!4367 = !DILocation(line: 549, column: 2, scope: !4327)
!4368 = !DILocation(line: 550, column: 1, scope: !4327)
!4369 = distinct !DISubprogram(name: "mn_itree_invalidate", scope: !3, file: !3, line: 444, type: !4370, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4372)
!4370 = !DISubroutineType(types: !4371)
!4371 = !{!143, !3411, !3451}
!4372 = !{!4373, !4374, !4375, !4376, !4377, !4381, !4386, !4389}
!4373 = !DILocalVariable(name: "subscriptions", arg: 1, scope: !4369, file: !3, line: 444, type: !3411)
!4374 = !DILocalVariable(name: "range", arg: 2, scope: !4369, file: !3, line: 445, type: !3451)
!4375 = !DILocalVariable(name: "interval_sub", scope: !4369, file: !3, line: 447, type: !3484)
!4376 = !DILocalVariable(name: "cur_seq", scope: !4369, file: !3, line: 448, type: !104)
!4377 = !DILocalVariable(name: "ret", scope: !4378, file: !3, line: 454, type: !455)
!4378 = distinct !DILexicalBlock(scope: !4379, file: !3, line: 453, column: 62)
!4379 = distinct !DILexicalBlock(scope: !4380, file: !3, line: 450, column: 2)
!4380 = distinct !DILexicalBlock(scope: !4369, file: !3, line: 450, column: 2)
!4381 = !DILocalVariable(name: "__ret_warn_on", scope: !4382, file: !3, line: 459, type: !143)
!4382 = distinct !DILexicalBlock(scope: !4383, file: !3, line: 459, column: 8)
!4383 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 459, column: 8)
!4384 = distinct !DILexicalBlock(scope: !4385, file: !3, line: 458, column: 13)
!4385 = distinct !DILexicalBlock(scope: !4378, file: !3, line: 458, column: 7)
!4386 = !DILocalVariable(name: "__flags", scope: !4387, file: !3, line: 459, type: !143)
!4387 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 459, column: 8)
!4388 = distinct !DILexicalBlock(scope: !4382, file: !3, line: 459, column: 8)
!4389 = !DILabel(scope: !4369, name: "out_would_block", file: !3, line: 466)
!4390 = !DILocation(line: 444, column: 67, scope: !4369)
!4391 = !DILocation(line: 445, column: 44, scope: !4369)
!4392 = !DILocation(line: 447, column: 2, scope: !4369)
!4393 = !DILocation(line: 447, column: 32, scope: !4369)
!4394 = !DILocation(line: 448, column: 2, scope: !4369)
!4395 = !DILocation(line: 448, column: 16, scope: !4369)
!4396 = !DILocation(line: 451, column: 33, scope: !4380)
!4397 = !DILocation(line: 451, column: 48, scope: !4380)
!4398 = !DILocation(line: 451, column: 8, scope: !4380)
!4399 = !DILocation(line: 450, column: 20, scope: !4380)
!4400 = !DILocation(line: 450, column: 7, scope: !4380)
!4401 = !DILocation(line: 452, column: 7, scope: !4379)
!4402 = !DILocation(line: 450, column: 2, scope: !4380)
!4403 = !DILocation(line: 454, column: 3, scope: !4378)
!4404 = !DILocation(line: 454, column: 8, scope: !4378)
!4405 = !DILocation(line: 456, column: 9, scope: !4378)
!4406 = !DILocation(line: 456, column: 23, scope: !4378)
!4407 = !DILocation(line: 456, column: 28, scope: !4378)
!4408 = !DILocation(line: 456, column: 39, scope: !4378)
!4409 = !DILocation(line: 456, column: 53, scope: !4378)
!4410 = !DILocation(line: 457, column: 11, scope: !4378)
!4411 = !DILocation(line: 456, column: 7, scope: !4378)
!4412 = !DILocation(line: 458, column: 8, scope: !4385)
!4413 = !DILocation(line: 458, column: 7, scope: !4378)
!4414 = !DILocation(line: 459, column: 8, scope: !4382)
!4415 = !DILocation(line: 459, column: 8, scope: !4388)
!4416 = !DILocation(line: 459, column: 8, scope: !4387)
!4417 = !DILocation(line: 459, column: 8, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4387, file: !3, line: 459, column: 8)
!4419 = !DILocation(line: 459, column: 8, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4387, file: !3, line: 459, column: 8)
!4421 = !{i64 2154047270, i64 2154047299, i64 2154047345, i64 2154047403, i64 2154047457, i64 2154047511, i64 2154047566, i64 2154047597, i64 2154047905, i64 2154047911, i64 2154047958, i64 2154047981, i64 2154048007}
!4422 = !DILocation(line: 459, column: 8, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4387, file: !3, line: 459, column: 8)
!4424 = !DILocation(line: 459, column: 8, scope: !4383)
!4425 = !DILocation(line: 459, column: 8, scope: !4384)
!4426 = !DILocation(line: 460, column: 5, scope: !4383)
!4427 = !DILocation(line: 461, column: 4, scope: !4384)
!4428 = !DILocation(line: 463, column: 2, scope: !4379)
!4429 = !DILocation(line: 463, column: 2, scope: !4378)
!4430 = !DILocation(line: 453, column: 40, scope: !4379)
!4431 = !DILocation(line: 453, column: 54, scope: !4379)
!4432 = !DILocation(line: 453, column: 22, scope: !4379)
!4433 = !DILocation(line: 453, column: 20, scope: !4379)
!4434 = !DILocation(line: 450, column: 2, scope: !4379)
!4435 = distinct !{!4435, !4402, !4436, !3891, !3770}
!4436 = !DILocation(line: 463, column: 2, scope: !4380)
!4437 = !DILocation(line: 464, column: 2, scope: !4369)
!4438 = !DILocation(line: 466, column: 1, scope: !4369)
!4439 = !DILocation(line: 471, column: 19, scope: !4369)
!4440 = !DILocation(line: 471, column: 2, scope: !4369)
!4441 = !DILocation(line: 472, column: 2, scope: !4369)
!4442 = !DILocation(line: 473, column: 1, scope: !4369)
!4443 = distinct !DISubprogram(name: "mn_hlist_invalidate_range_start", scope: !3, file: !3, line: 475, type: !4444, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4446)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!143, !3411, !4330}
!4446 = !{!4447, !4448, !4449, !4450, !4451, !4452, !4455, !4457, !4459, !4462, !4465, !4469, !4472, !4474, !4477, !4479, !4481, !4483, !4488, !4490, !4492, !4495, !4497}
!4447 = !DILocalVariable(name: "subscriptions", arg: 1, scope: !4443, file: !3, line: 476, type: !3411)
!4448 = !DILocalVariable(name: "range", arg: 2, scope: !4443, file: !3, line: 477, type: !4330)
!4449 = !DILocalVariable(name: "subscription", scope: !4443, file: !3, line: 479, type: !116)
!4450 = !DILocalVariable(name: "ret", scope: !4443, file: !3, line: 480, type: !143)
!4451 = !DILocalVariable(name: "id", scope: !4443, file: !3, line: 481, type: !143)
!4452 = !DILocalVariable(name: "____ptr", scope: !4453, file: !3, line: 484, type: !109)
!4453 = distinct !DILexicalBlock(scope: !4454, file: !3, line: 484, column: 2)
!4454 = distinct !DILexicalBlock(scope: !4443, file: !3, line: 484, column: 2)
!4455 = !DILocalVariable(name: "__UNIQUE_ID_rcu300", scope: !4456, file: !3, line: 484, type: !109)
!4456 = distinct !DILexicalBlock(scope: !4453, file: !3, line: 484, column: 2)
!4457 = !DILocalVariable(name: "__mptr", scope: !4458, file: !3, line: 484, type: !105)
!4458 = distinct !DILexicalBlock(scope: !4453, file: !3, line: 484, column: 2)
!4459 = !DILocalVariable(name: "ops", scope: !4460, file: !3, line: 486, type: !121)
!4460 = distinct !DILexicalBlock(scope: !4461, file: !3, line: 485, column: 34)
!4461 = distinct !DILexicalBlock(scope: !4454, file: !3, line: 484, column: 2)
!4462 = !DILocalVariable(name: "_ret", scope: !4463, file: !3, line: 489, type: !143)
!4463 = distinct !DILexicalBlock(scope: !4464, file: !3, line: 488, column: 36)
!4464 = distinct !DILexicalBlock(scope: !4460, file: !3, line: 488, column: 7)
!4465 = !DILocalVariable(name: "__ret_warn_on", scope: !4466, file: !3, line: 502, type: !143)
!4466 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 502, column: 5)
!4467 = distinct !DILexicalBlock(scope: !4468, file: !3, line: 496, column: 14)
!4468 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 496, column: 8)
!4469 = !DILocalVariable(name: "__flags", scope: !4470, file: !3, line: 502, type: !143)
!4470 = distinct !DILexicalBlock(scope: !4471, file: !3, line: 502, column: 5)
!4471 = distinct !DILexicalBlock(scope: !4466, file: !3, line: 502, column: 5)
!4472 = !DILocalVariable(name: "__ret_warn_on", scope: !4473, file: !3, line: 510, type: !143)
!4473 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 510, column: 5)
!4474 = !DILocalVariable(name: "__flags", scope: !4475, file: !3, line: 510, type: !143)
!4475 = distinct !DILexicalBlock(scope: !4476, file: !3, line: 510, column: 5)
!4476 = distinct !DILexicalBlock(scope: !4473, file: !3, line: 510, column: 5)
!4477 = !DILocalVariable(name: "____ptr", scope: !4478, file: !3, line: 484, type: !109)
!4478 = distinct !DILexicalBlock(scope: !4461, file: !3, line: 484, column: 2)
!4479 = !DILocalVariable(name: "__UNIQUE_ID_rcu302", scope: !4480, file: !3, line: 484, type: !109)
!4480 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 484, column: 2)
!4481 = !DILocalVariable(name: "__mptr", scope: !4482, file: !3, line: 484, type: !105)
!4482 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 484, column: 2)
!4483 = !DILocalVariable(name: "____ptr", scope: !4484, file: !3, line: 522, type: !109)
!4484 = distinct !DILexicalBlock(scope: !4485, file: !3, line: 522, column: 3)
!4485 = distinct !DILexicalBlock(scope: !4486, file: !3, line: 522, column: 3)
!4486 = distinct !DILexicalBlock(scope: !4487, file: !3, line: 516, column: 11)
!4487 = distinct !DILexicalBlock(scope: !4443, file: !3, line: 516, column: 6)
!4488 = !DILocalVariable(name: "__UNIQUE_ID_rcu304", scope: !4489, file: !3, line: 522, type: !109)
!4489 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 522, column: 3)
!4490 = !DILocalVariable(name: "__mptr", scope: !4491, file: !3, line: 522, type: !105)
!4491 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 522, column: 3)
!4492 = !DILocalVariable(name: "____ptr", scope: !4493, file: !3, line: 522, type: !109)
!4493 = distinct !DILexicalBlock(scope: !4494, file: !3, line: 522, column: 3)
!4494 = distinct !DILexicalBlock(scope: !4485, file: !3, line: 522, column: 3)
!4495 = !DILocalVariable(name: "__UNIQUE_ID_rcu306", scope: !4496, file: !3, line: 522, type: !109)
!4496 = distinct !DILexicalBlock(scope: !4493, file: !3, line: 522, column: 3)
!4497 = !DILocalVariable(name: "__mptr", scope: !4498, file: !3, line: 522, type: !105)
!4498 = distinct !DILexicalBlock(scope: !4493, file: !3, line: 522, column: 3)
!4499 = !DILocation(line: 476, column: 37, scope: !4443)
!4500 = !DILocation(line: 477, column: 29, scope: !4443)
!4501 = !DILocation(line: 479, column: 2, scope: !4443)
!4502 = !DILocation(line: 479, column: 23, scope: !4443)
!4503 = !DILocation(line: 480, column: 2, scope: !4443)
!4504 = !DILocation(line: 480, column: 6, scope: !4443)
!4505 = !DILocation(line: 481, column: 2, scope: !4443)
!4506 = !DILocation(line: 481, column: 6, scope: !4443)
!4507 = !DILocation(line: 483, column: 7, scope: !4443)
!4508 = !DILocation(line: 483, column: 5, scope: !4443)
!4509 = !DILocation(line: 484, column: 2, scope: !4453)
!4510 = !DILocation(line: 484, column: 2, scope: !4456)
!4511 = !DILocation(line: 484, column: 2, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4456, file: !3, line: 484, column: 2)
!4513 = !DILocation(line: 484, column: 2, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4512, file: !3, line: 484, column: 2)
!4515 = !DILocation(line: 484, column: 2, scope: !4458)
!4516 = !DILocation(line: 484, column: 2, scope: !4454)
!4517 = !DILocation(line: 484, column: 2, scope: !4461)
!4518 = !DILocation(line: 486, column: 3, scope: !4460)
!4519 = !DILocation(line: 486, column: 34, scope: !4460)
!4520 = !DILocation(line: 486, column: 40, scope: !4460)
!4521 = !DILocation(line: 486, column: 54, scope: !4460)
!4522 = !DILocation(line: 488, column: 7, scope: !4464)
!4523 = !DILocation(line: 488, column: 12, scope: !4464)
!4524 = !DILocation(line: 488, column: 7, scope: !4460)
!4525 = !DILocation(line: 489, column: 4, scope: !4463)
!4526 = !DILocation(line: 489, column: 8, scope: !4463)
!4527 = !DILocation(line: 491, column: 38, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 491, column: 8)
!4529 = !DILocation(line: 491, column: 9, scope: !4528)
!4530 = !DILocation(line: 491, column: 8, scope: !4463)
!4531 = !DILocation(line: 492, column: 5, scope: !4528)
!4532 = !DILocation(line: 492, column: 5, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 492, column: 5)
!4534 = !DILocation(line: 493, column: 11, scope: !4463)
!4535 = !DILocation(line: 493, column: 16, scope: !4463)
!4536 = !DILocation(line: 493, column: 39, scope: !4463)
!4537 = !DILocation(line: 493, column: 53, scope: !4463)
!4538 = !DILocation(line: 493, column: 9, scope: !4463)
!4539 = !DILocation(line: 494, column: 38, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 494, column: 8)
!4541 = !DILocation(line: 494, column: 9, scope: !4540)
!4542 = !DILocation(line: 494, column: 8, scope: !4463)
!4543 = !DILocation(line: 495, column: 5, scope: !4540)
!4544 = !DILocation(line: 495, column: 5, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 495, column: 5)
!4546 = !DILocation(line: 496, column: 8, scope: !4468)
!4547 = !DILocation(line: 496, column: 8, scope: !4463)
!4548 = !DILocation(line: 497, column: 5, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 497, column: 5)
!4550 = !DILocation(line: 497, column: 5, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4549, file: !3, line: 497, column: 5)
!4552 = !DILocation(line: 502, column: 5, scope: !4466)
!4553 = !DILocation(line: 502, column: 5, scope: !4471)
!4554 = !DILocation(line: 502, column: 5, scope: !4470)
!4555 = !DILocation(line: 502, column: 5, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4470, file: !3, line: 502, column: 5)
!4557 = !DILocation(line: 502, column: 5, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4470, file: !3, line: 502, column: 5)
!4559 = !{i64 2154074283, i64 2154074312, i64 2154074358, i64 2154074416, i64 2154074470, i64 2154074524, i64 2154074579, i64 2154074610, i64 2154074918, i64 2154074924, i64 2154074971, i64 2154074994, i64 2154075020}
!4560 = !DILocation(line: 502, column: 5, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4470, file: !3, line: 502, column: 5)
!4562 = !DILocation(line: 502, column: 5, scope: !4467)
!4563 = !DILocation(line: 510, column: 5, scope: !4473)
!4564 = !DILocation(line: 510, column: 5, scope: !4476)
!4565 = !DILocation(line: 510, column: 5, scope: !4475)
!4566 = !DILocation(line: 510, column: 5, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4475, file: !3, line: 510, column: 5)
!4568 = !DILocation(line: 510, column: 5, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4475, file: !3, line: 510, column: 5)
!4570 = !{i64 2154075789, i64 2154075818, i64 2154075864, i64 2154075922, i64 2154075976, i64 2154076030, i64 2154076085, i64 2154076116, i64 2154076424, i64 2154076430, i64 2154076477, i64 2154076500, i64 2154076526}
!4571 = !DILocation(line: 510, column: 5, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4475, file: !3, line: 510, column: 5)
!4573 = !DILocation(line: 510, column: 5, scope: !4467)
!4574 = !DILocation(line: 511, column: 11, scope: !4467)
!4575 = !DILocation(line: 511, column: 9, scope: !4467)
!4576 = !DILocation(line: 512, column: 4, scope: !4467)
!4577 = !DILocation(line: 513, column: 3, scope: !4464)
!4578 = !DILocation(line: 513, column: 3, scope: !4463)
!4579 = !DILocation(line: 514, column: 2, scope: !4461)
!4580 = !DILocation(line: 514, column: 2, scope: !4460)
!4581 = !DILocation(line: 484, column: 2, scope: !4478)
!4582 = !DILocation(line: 484, column: 2, scope: !4480)
!4583 = !DILocation(line: 484, column: 2, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4480, file: !3, line: 484, column: 2)
!4585 = !DILocation(line: 484, column: 2, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 484, column: 2)
!4587 = !DILocation(line: 484, column: 2, scope: !4482)
!4588 = distinct !{!4588, !4516, !4589, !3891, !3770}
!4589 = !DILocation(line: 514, column: 2, scope: !4454)
!4590 = !DILocation(line: 516, column: 6, scope: !4487)
!4591 = !DILocation(line: 516, column: 6, scope: !4443)
!4592 = !DILocation(line: 522, column: 3, scope: !4484)
!4593 = !DILocation(line: 522, column: 3, scope: !4489)
!4594 = !DILocation(line: 522, column: 3, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4489, file: !3, line: 522, column: 3)
!4596 = !DILocation(line: 522, column: 3, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4595, file: !3, line: 522, column: 3)
!4598 = !DILocation(line: 522, column: 3, scope: !4491)
!4599 = !DILocation(line: 522, column: 3, scope: !4485)
!4600 = !DILocation(line: 522, column: 3, scope: !4494)
!4601 = !DILocation(line: 524, column: 9, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4603, file: !3, line: 524, column: 8)
!4603 = distinct !DILexicalBlock(scope: !4494, file: !3, line: 523, column: 42)
!4604 = !DILocation(line: 524, column: 23, scope: !4602)
!4605 = !DILocation(line: 524, column: 28, scope: !4602)
!4606 = !DILocation(line: 524, column: 8, scope: !4603)
!4607 = !DILocation(line: 525, column: 5, scope: !4602)
!4608 = !DILocation(line: 527, column: 4, scope: !4603)
!4609 = !DILocation(line: 527, column: 18, scope: !4603)
!4610 = !DILocation(line: 527, column: 23, scope: !4603)
!4611 = !DILocation(line: 527, column: 44, scope: !4603)
!4612 = !DILocation(line: 528, column: 9, scope: !4603)
!4613 = !DILocation(line: 529, column: 3, scope: !4603)
!4614 = !DILocation(line: 522, column: 3, scope: !4493)
!4615 = !DILocation(line: 522, column: 3, scope: !4496)
!4616 = !DILocation(line: 522, column: 3, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4496, file: !3, line: 522, column: 3)
!4618 = !DILocation(line: 522, column: 3, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4617, file: !3, line: 522, column: 3)
!4620 = !DILocation(line: 522, column: 3, scope: !4498)
!4621 = distinct !{!4621, !4599, !4622, !3891, !3770}
!4622 = !DILocation(line: 529, column: 3, scope: !4485)
!4623 = !DILocation(line: 530, column: 2, scope: !4486)
!4624 = !DILocation(line: 531, column: 26, scope: !4443)
!4625 = !DILocation(line: 531, column: 2, scope: !4443)
!4626 = !DILocation(line: 533, column: 9, scope: !4443)
!4627 = !DILocation(line: 534, column: 1, scope: !4443)
!4628 = !DILocation(line: 533, column: 2, scope: !4443)
!4629 = distinct !DISubprogram(name: "__mmu_notifier_invalidate_range_end", scope: !3, file: !3, line: 574, type: !4630, scopeLine: 575, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4632)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{null, !4330}
!4632 = !{!4633, !4634}
!4633 = !DILocalVariable(name: "range", arg: 1, scope: !4629, file: !3, line: 574, type: !4330)
!4634 = !DILocalVariable(name: "subscriptions", scope: !4629, file: !3, line: 576, type: !3411)
!4635 = !DILocation(line: 574, column: 69, scope: !4629)
!4636 = !DILocation(line: 576, column: 2, scope: !4629)
!4637 = !DILocation(line: 576, column: 37, scope: !4629)
!4638 = !DILocation(line: 577, column: 3, scope: !4629)
!4639 = !DILocation(line: 577, column: 10, scope: !4629)
!4640 = !DILocation(line: 577, column: 14, scope: !4629)
!4641 = !DILocation(line: 579, column: 2, scope: !4629)
!4642 = !DILocation(line: 579, column: 2, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4629, file: !3, line: 579, column: 2)
!4644 = !DILocation(line: 580, column: 6, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4629, file: !3, line: 580, column: 6)
!4646 = !DILocation(line: 580, column: 21, scope: !4645)
!4647 = !DILocation(line: 580, column: 6, scope: !4629)
!4648 = !DILocation(line: 581, column: 20, scope: !4645)
!4649 = !DILocation(line: 581, column: 3, scope: !4645)
!4650 = !DILocation(line: 583, column: 20, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4629, file: !3, line: 583, column: 6)
!4652 = !DILocation(line: 583, column: 35, scope: !4651)
!4653 = !DILocation(line: 583, column: 7, scope: !4651)
!4654 = !DILocation(line: 583, column: 6, scope: !4629)
!4655 = !DILocation(line: 584, column: 27, scope: !4651)
!4656 = !DILocation(line: 584, column: 42, scope: !4651)
!4657 = !DILocation(line: 584, column: 3, scope: !4651)
!4658 = !DILocation(line: 585, column: 2, scope: !4629)
!4659 = !DILocation(line: 585, column: 2, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4629, file: !3, line: 585, column: 2)
!4661 = !DILocation(line: 586, column: 1, scope: !4629)
!4662 = distinct !DISubprogram(name: "mn_itree_inv_end", scope: !3, file: !3, line: 129, type: !4663, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4665)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{null, !3411}
!4665 = !{!4666, !4667, !4668, !4669, !4672, !4674, !4677}
!4666 = !DILocalVariable(name: "subscriptions", arg: 1, scope: !4662, file: !3, line: 129, type: !3411)
!4667 = !DILocalVariable(name: "interval_sub", scope: !4662, file: !3, line: 131, type: !3484)
!4668 = !DILocalVariable(name: "next", scope: !4662, file: !3, line: 132, type: !109)
!4669 = !DILocalVariable(name: "____ptr", scope: !4670, file: !3, line: 150, type: !109)
!4670 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 150, column: 2)
!4671 = distinct !DILexicalBlock(scope: !4662, file: !3, line: 150, column: 2)
!4672 = !DILocalVariable(name: "__mptr", scope: !4673, file: !3, line: 150, type: !105)
!4673 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 150, column: 2)
!4674 = !DILocalVariable(name: "____ptr", scope: !4675, file: !3, line: 150, type: !109)
!4675 = distinct !DILexicalBlock(scope: !4676, file: !3, line: 150, column: 2)
!4676 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 150, column: 2)
!4677 = !DILocalVariable(name: "__mptr", scope: !4678, file: !3, line: 150, type: !105)
!4678 = distinct !DILexicalBlock(scope: !4675, file: !3, line: 150, column: 2)
!4679 = !DILocation(line: 129, column: 65, scope: !4662)
!4680 = !DILocation(line: 131, column: 2, scope: !4662)
!4681 = !DILocation(line: 131, column: 32, scope: !4662)
!4682 = !DILocation(line: 132, column: 2, scope: !4662)
!4683 = !DILocation(line: 132, column: 21, scope: !4662)
!4684 = !DILocation(line: 134, column: 13, scope: !4662)
!4685 = !DILocation(line: 134, column: 28, scope: !4662)
!4686 = !DILocation(line: 134, column: 2, scope: !4662)
!4687 = !DILocation(line: 135, column: 8, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4662, file: !3, line: 135, column: 6)
!4689 = !DILocation(line: 135, column: 23, scope: !4688)
!4690 = !DILocation(line: 135, column: 6, scope: !4688)
!4691 = !DILocation(line: 135, column: 48, scope: !4688)
!4692 = !DILocation(line: 136, column: 32, scope: !4688)
!4693 = !DILocation(line: 136, column: 7, scope: !4688)
!4694 = !DILocation(line: 135, column: 6, scope: !4662)
!4695 = !DILocation(line: 137, column: 16, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 136, column: 48)
!4697 = !DILocation(line: 137, column: 31, scope: !4696)
!4698 = !DILocation(line: 137, column: 3, scope: !4696)
!4699 = !DILocation(line: 138, column: 3, scope: !4696)
!4700 = !DILocation(line: 142, column: 2, scope: !4662)
!4701 = !DILocation(line: 142, column: 17, scope: !4662)
!4702 = !DILocation(line: 142, column: 31, scope: !4662)
!4703 = !DILocation(line: 150, column: 2, scope: !4670)
!4704 = !DILocation(line: 150, column: 2, scope: !4673)
!4705 = !DILocation(line: 150, column: 2, scope: !4671)
!4706 = !DILocation(line: 150, column: 2, scope: !4676)
!4707 = !DILocation(line: 150, column: 2, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4676, file: !3, line: 150, column: 2)
!4709 = !DILocation(line: 0, scope: !4676)
!4710 = !DILocation(line: 153, column: 7, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4712, file: !3, line: 153, column: 7)
!4712 = distinct !DILexicalBlock(scope: !4676, file: !3, line: 152, column: 22)
!4713 = !DILocation(line: 153, column: 7, scope: !4712)
!4714 = !DILocation(line: 154, column: 26, scope: !4711)
!4715 = !DILocation(line: 154, column: 40, scope: !4711)
!4716 = !DILocation(line: 155, column: 12, scope: !4711)
!4717 = !DILocation(line: 155, column: 27, scope: !4711)
!4718 = !DILocation(line: 154, column: 4, scope: !4711)
!4719 = !DILocation(line: 157, column: 26, scope: !4711)
!4720 = !DILocation(line: 157, column: 40, scope: !4711)
!4721 = !DILocation(line: 158, column: 12, scope: !4711)
!4722 = !DILocation(line: 158, column: 27, scope: !4711)
!4723 = !DILocation(line: 157, column: 4, scope: !4711)
!4724 = !DILocation(line: 159, column: 14, scope: !4712)
!4725 = !DILocation(line: 159, column: 28, scope: !4712)
!4726 = !DILocation(line: 159, column: 3, scope: !4712)
!4727 = !DILocation(line: 160, column: 2, scope: !4712)
!4728 = !DILocation(line: 150, column: 2, scope: !4675)
!4729 = !DILocation(line: 150, column: 2, scope: !4678)
!4730 = distinct !{!4730, !4705, !4731, !3891, !3770}
!4731 = !DILocation(line: 160, column: 2, scope: !4671)
!4732 = !DILocation(line: 161, column: 15, scope: !4662)
!4733 = !DILocation(line: 161, column: 30, scope: !4662)
!4734 = !DILocation(line: 161, column: 2, scope: !4662)
!4735 = !DILocation(line: 163, column: 2, scope: !4662)
!4736 = !DILocation(line: 164, column: 1, scope: !4662)
!4737 = distinct !DISubprogram(name: "mn_hlist_invalidate_end", scope: !3, file: !3, line: 553, type: !4738, scopeLine: 555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4740)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{null, !3411, !4330}
!4740 = !{!4741, !4742, !4743, !4744, !4745, !4748, !4750, !4752, !4755, !4757}
!4741 = !DILocalVariable(name: "subscriptions", arg: 1, scope: !4737, file: !3, line: 553, type: !3411)
!4742 = !DILocalVariable(name: "range", arg: 2, scope: !4737, file: !3, line: 554, type: !4330)
!4743 = !DILocalVariable(name: "subscription", scope: !4737, file: !3, line: 556, type: !116)
!4744 = !DILocalVariable(name: "id", scope: !4737, file: !3, line: 557, type: !143)
!4745 = !DILocalVariable(name: "____ptr", scope: !4746, file: !3, line: 560, type: !109)
!4746 = distinct !DILexicalBlock(scope: !4747, file: !3, line: 560, column: 2)
!4747 = distinct !DILexicalBlock(scope: !4737, file: !3, line: 560, column: 2)
!4748 = !DILocalVariable(name: "__UNIQUE_ID_rcu308", scope: !4749, file: !3, line: 560, type: !109)
!4749 = distinct !DILexicalBlock(scope: !4746, file: !3, line: 560, column: 2)
!4750 = !DILocalVariable(name: "__mptr", scope: !4751, file: !3, line: 560, type: !105)
!4751 = distinct !DILexicalBlock(scope: !4746, file: !3, line: 560, column: 2)
!4752 = !DILocalVariable(name: "____ptr", scope: !4753, file: !3, line: 560, type: !109)
!4753 = distinct !DILexicalBlock(scope: !4754, file: !3, line: 560, column: 2)
!4754 = distinct !DILexicalBlock(scope: !4747, file: !3, line: 560, column: 2)
!4755 = !DILocalVariable(name: "__UNIQUE_ID_rcu310", scope: !4756, file: !3, line: 560, type: !109)
!4756 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 560, column: 2)
!4757 = !DILocalVariable(name: "__mptr", scope: !4758, file: !3, line: 560, type: !105)
!4758 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 560, column: 2)
!4759 = !DILocation(line: 553, column: 60, scope: !4737)
!4760 = !DILocation(line: 554, column: 31, scope: !4737)
!4761 = !DILocation(line: 556, column: 2, scope: !4737)
!4762 = !DILocation(line: 556, column: 23, scope: !4737)
!4763 = !DILocation(line: 557, column: 2, scope: !4737)
!4764 = !DILocation(line: 557, column: 6, scope: !4737)
!4765 = !DILocation(line: 559, column: 7, scope: !4737)
!4766 = !DILocation(line: 559, column: 5, scope: !4737)
!4767 = !DILocation(line: 560, column: 2, scope: !4746)
!4768 = !DILocation(line: 560, column: 2, scope: !4749)
!4769 = !DILocation(line: 560, column: 2, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4749, file: !3, line: 560, column: 2)
!4771 = !DILocation(line: 560, column: 2, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4770, file: !3, line: 560, column: 2)
!4773 = !DILocation(line: 560, column: 2, scope: !4751)
!4774 = !DILocation(line: 560, column: 2, scope: !4747)
!4775 = !DILocation(line: 560, column: 2, scope: !4754)
!4776 = !DILocation(line: 562, column: 7, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4778, file: !3, line: 562, column: 7)
!4778 = distinct !DILexicalBlock(scope: !4754, file: !3, line: 561, column: 34)
!4779 = !DILocation(line: 562, column: 21, scope: !4777)
!4780 = !DILocation(line: 562, column: 26, scope: !4777)
!4781 = !DILocation(line: 562, column: 7, scope: !4778)
!4782 = !DILocation(line: 563, column: 38, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4784, file: !3, line: 563, column: 8)
!4784 = distinct !DILexicalBlock(scope: !4777, file: !3, line: 562, column: 48)
!4785 = !DILocation(line: 563, column: 9, scope: !4783)
!4786 = !DILocation(line: 563, column: 8, scope: !4784)
!4787 = !DILocation(line: 564, column: 5, scope: !4783)
!4788 = !DILocation(line: 564, column: 5, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4783, file: !3, line: 564, column: 5)
!4790 = !DILocation(line: 565, column: 4, scope: !4784)
!4791 = !DILocation(line: 565, column: 18, scope: !4784)
!4792 = !DILocation(line: 565, column: 23, scope: !4784)
!4793 = !DILocation(line: 565, column: 44, scope: !4784)
!4794 = !DILocation(line: 566, column: 9, scope: !4784)
!4795 = !DILocation(line: 567, column: 38, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4784, file: !3, line: 567, column: 8)
!4797 = !DILocation(line: 567, column: 9, scope: !4796)
!4798 = !DILocation(line: 567, column: 8, scope: !4784)
!4799 = !DILocation(line: 568, column: 5, scope: !4796)
!4800 = !DILocation(line: 568, column: 5, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4796, file: !3, line: 568, column: 5)
!4802 = !DILocation(line: 569, column: 3, scope: !4784)
!4803 = !DILocation(line: 570, column: 2, scope: !4778)
!4804 = !DILocation(line: 560, column: 2, scope: !4753)
!4805 = !DILocation(line: 560, column: 2, scope: !4756)
!4806 = !DILocation(line: 560, column: 2, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4756, file: !3, line: 560, column: 2)
!4808 = !DILocation(line: 560, column: 2, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4807, file: !3, line: 560, column: 2)
!4810 = !DILocation(line: 560, column: 2, scope: !4758)
!4811 = distinct !{!4811, !4774, !4812, !3891, !3770}
!4812 = !DILocation(line: 570, column: 2, scope: !4747)
!4813 = !DILocation(line: 571, column: 26, scope: !4737)
!4814 = !DILocation(line: 571, column: 2, scope: !4737)
!4815 = !DILocation(line: 572, column: 1, scope: !4737)
!4816 = distinct !DISubprogram(name: "__mmu_notifier_arch_invalidate_secondary_tlbs", scope: !3, file: !3, line: 588, type: !4817, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4819)
!4817 = !DISubroutineType(types: !4818)
!4818 = !{null, !129, !104, !104}
!4819 = !{!4820, !4821, !4822, !4823, !4824, !4825, !4828, !4830, !4832, !4835, !4837}
!4820 = !DILocalVariable(name: "mm", arg: 1, scope: !4816, file: !3, line: 588, type: !129)
!4821 = !DILocalVariable(name: "start", arg: 2, scope: !4816, file: !3, line: 589, type: !104)
!4822 = !DILocalVariable(name: "end", arg: 3, scope: !4816, file: !3, line: 589, type: !104)
!4823 = !DILocalVariable(name: "subscription", scope: !4816, file: !3, line: 591, type: !116)
!4824 = !DILocalVariable(name: "id", scope: !4816, file: !3, line: 592, type: !143)
!4825 = !DILocalVariable(name: "____ptr", scope: !4826, file: !3, line: 595, type: !109)
!4826 = distinct !DILexicalBlock(scope: !4827, file: !3, line: 595, column: 2)
!4827 = distinct !DILexicalBlock(scope: !4816, file: !3, line: 595, column: 2)
!4828 = !DILocalVariable(name: "__UNIQUE_ID_rcu312", scope: !4829, file: !3, line: 595, type: !109)
!4829 = distinct !DILexicalBlock(scope: !4826, file: !3, line: 595, column: 2)
!4830 = !DILocalVariable(name: "__mptr", scope: !4831, file: !3, line: 595, type: !105)
!4831 = distinct !DILexicalBlock(scope: !4826, file: !3, line: 595, column: 2)
!4832 = !DILocalVariable(name: "____ptr", scope: !4833, file: !3, line: 595, type: !109)
!4833 = distinct !DILexicalBlock(scope: !4834, file: !3, line: 595, column: 2)
!4834 = distinct !DILexicalBlock(scope: !4827, file: !3, line: 595, column: 2)
!4835 = !DILocalVariable(name: "__UNIQUE_ID_rcu314", scope: !4836, file: !3, line: 595, type: !109)
!4836 = distinct !DILexicalBlock(scope: !4833, file: !3, line: 595, column: 2)
!4837 = !DILocalVariable(name: "__mptr", scope: !4838, file: !3, line: 595, type: !105)
!4838 = distinct !DILexicalBlock(scope: !4833, file: !3, line: 595, column: 2)
!4839 = !DILocation(line: 588, column: 70, scope: !4816)
!4840 = !DILocation(line: 589, column: 20, scope: !4816)
!4841 = !DILocation(line: 589, column: 41, scope: !4816)
!4842 = !DILocation(line: 591, column: 2, scope: !4816)
!4843 = !DILocation(line: 591, column: 23, scope: !4816)
!4844 = !DILocation(line: 592, column: 2, scope: !4816)
!4845 = !DILocation(line: 592, column: 6, scope: !4816)
!4846 = !DILocation(line: 594, column: 7, scope: !4816)
!4847 = !DILocation(line: 594, column: 5, scope: !4816)
!4848 = !DILocation(line: 595, column: 2, scope: !4826)
!4849 = !DILocation(line: 595, column: 2, scope: !4829)
!4850 = !DILocation(line: 595, column: 2, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4829, file: !3, line: 595, column: 2)
!4852 = !DILocation(line: 595, column: 2, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4851, file: !3, line: 595, column: 2)
!4854 = !DILocation(line: 595, column: 2, scope: !4831)
!4855 = !DILocation(line: 595, column: 2, scope: !4827)
!4856 = !DILocation(line: 595, column: 2, scope: !4834)
!4857 = !DILocation(line: 598, column: 7, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4859, file: !3, line: 598, column: 7)
!4859 = distinct !DILexicalBlock(scope: !4834, file: !3, line: 597, column: 34)
!4860 = !DILocation(line: 598, column: 21, scope: !4858)
!4861 = !DILocation(line: 598, column: 26, scope: !4858)
!4862 = !DILocation(line: 598, column: 7, scope: !4859)
!4863 = !DILocation(line: 599, column: 4, scope: !4858)
!4864 = !DILocation(line: 599, column: 18, scope: !4858)
!4865 = !DILocation(line: 599, column: 23, scope: !4858)
!4866 = !DILocation(line: 600, column: 5, scope: !4858)
!4867 = !DILocation(line: 600, column: 19, scope: !4858)
!4868 = !DILocation(line: 601, column: 5, scope: !4858)
!4869 = !DILocation(line: 601, column: 12, scope: !4858)
!4870 = !DILocation(line: 602, column: 2, scope: !4859)
!4871 = !DILocation(line: 595, column: 2, scope: !4833)
!4872 = !DILocation(line: 595, column: 2, scope: !4836)
!4873 = !DILocation(line: 595, column: 2, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4836, file: !3, line: 595, column: 2)
!4875 = !DILocation(line: 595, column: 2, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4874, file: !3, line: 595, column: 2)
!4877 = !DILocation(line: 595, column: 2, scope: !4838)
!4878 = distinct !{!4878, !4855, !4879, !3891, !3770}
!4879 = !DILocation(line: 602, column: 2, scope: !4827)
!4880 = !DILocation(line: 603, column: 26, scope: !4816)
!4881 = !DILocation(line: 603, column: 2, scope: !4816)
!4882 = !DILocation(line: 604, column: 1, scope: !4816)
!4883 = !DILocation(line: 611, column: 50, scope: !3523)
!4884 = !DILocation(line: 612, column: 26, scope: !3523)
!4885 = !DILocation(line: 614, column: 2, scope: !3523)
!4886 = !DILocation(line: 614, column: 37, scope: !3523)
!4887 = !DILocation(line: 615, column: 2, scope: !3523)
!4888 = !DILocation(line: 615, column: 6, scope: !3523)
!4889 = !DILocation(line: 617, column: 27, scope: !3523)
!4890 = !DILocation(line: 617, column: 2, scope: !3523)
!4891 = !DILocation(line: 618, column: 2, scope: !3523)
!4892 = !DILocation(line: 618, column: 2, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4894, file: !3, line: 618, column: 2)
!4894 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 618, column: 2)
!4895 = !DILocation(line: 618, column: 2, scope: !4894)
!4896 = !DILocation(line: 618, column: 2, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4893, file: !3, line: 618, column: 2)
!4898 = !DILocation(line: 618, column: 2, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4897, file: !3, line: 618, column: 2)
!4900 = !DILocation(line: 618, column: 2, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4897, file: !3, line: 618, column: 2)
!4902 = !{i64 2154139818, i64 2154139847, i64 2154139893, i64 2154139951, i64 2154140005, i64 2154140059, i64 2154140114, i64 2154140145}
!4903 = !DILocation(line: 624, column: 6, scope: !3532)
!4904 = !DILocation(line: 0, scope: !3532)
!4905 = !DILocation(line: 624, column: 6, scope: !3536)
!4906 = !DILocation(line: 624, column: 6, scope: !3535)
!4907 = !DILocation(line: 624, column: 6, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 624, column: 6)
!4909 = !DILocation(line: 624, column: 6, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 624, column: 6)
!4911 = !{i64 2154141223, i64 2154141252, i64 2154141298, i64 2154141356, i64 2154141410, i64 2154141464, i64 2154141519, i64 2154141550, i64 2154141858, i64 2154141864, i64 2154141911, i64 2154141934, i64 2154141960}
!4912 = !DILocation(line: 624, column: 6, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 624, column: 6)
!4914 = !DILocation(line: 624, column: 6, scope: !3533)
!4915 = !DILocation(line: 624, column: 6, scope: !3523)
!4916 = !DILocation(line: 628, column: 3, scope: !3533)
!4917 = !DILocation(line: 630, column: 7, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 630, column: 6)
!4919 = !DILocation(line: 630, column: 11, scope: !4918)
!4920 = !DILocation(line: 630, column: 6, scope: !3523)
!4921 = !DILocation(line: 636, column: 19, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4918, file: !3, line: 630, column: 35)
!4923 = !DILocation(line: 636, column: 17, scope: !4922)
!4924 = !DILocation(line: 638, column: 8, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4922, file: !3, line: 638, column: 7)
!4926 = !DILocation(line: 638, column: 7, scope: !4922)
!4927 = !DILocation(line: 639, column: 4, scope: !4925)
!4928 = !DILocation(line: 641, column: 3, scope: !4922)
!4929 = !DILocation(line: 642, column: 3, scope: !4922)
!4930 = !DILocation(line: 642, column: 3, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4922, file: !3, line: 642, column: 3)
!4932 = !DILocation(line: 643, column: 3, scope: !4922)
!4933 = !DILocation(line: 643, column: 18, scope: !4922)
!4934 = !DILocation(line: 643, column: 33, scope: !4922)
!4935 = !DILocation(line: 644, column: 3, scope: !4922)
!4936 = !DILocation(line: 644, column: 18, scope: !4922)
!4937 = !DILocation(line: 644, column: 26, scope: !4922)
!4938 = !DILocation(line: 645, column: 3, scope: !4922)
!4939 = !DILocation(line: 645, column: 3, scope: !4940)
!4940 = distinct !DILexicalBlock(scope: !4922, file: !3, line: 645, column: 3)
!4941 = !DILocation(line: 646, column: 3, scope: !4922)
!4942 = !DILocation(line: 647, column: 2, scope: !4922)
!4943 = !DILocation(line: 649, column: 26, scope: !3523)
!4944 = !DILocation(line: 649, column: 8, scope: !3523)
!4945 = !DILocation(line: 649, column: 6, scope: !3523)
!4946 = !DILocation(line: 650, column: 6, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 650, column: 6)
!4948 = !DILocation(line: 650, column: 6, scope: !3523)
!4949 = !DILocation(line: 651, column: 3, scope: !4947)
!4950 = !DILocation(line: 669, column: 6, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 669, column: 6)
!4952 = !DILocation(line: 669, column: 6, scope: !3523)
!4953 = !DILocation(line: 670, column: 3, scope: !4951)
!4954 = !DILocation(line: 670, column: 3, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4951, file: !3, line: 670, column: 3)
!4956 = !DILocation(line: 670, column: 3, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4955, file: !3, line: 670, column: 3)
!4958 = !DILocation(line: 670, column: 3, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4955, file: !3, line: 670, column: 3)
!4960 = !DILocation(line: 670, column: 3, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4959, file: !3, line: 670, column: 3)
!4962 = !{i64 2154145578}
!4963 = !DILocation(line: 670, column: 3, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4959, file: !3, line: 670, column: 3)
!4965 = !DILocation(line: 670, column: 3, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 670, column: 3)
!4967 = !DILocation(line: 670, column: 3, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 670, column: 3)
!4969 = !DILocation(line: 672, column: 6, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 672, column: 6)
!4971 = !DILocation(line: 672, column: 6, scope: !3523)
!4972 = !DILocation(line: 674, column: 10, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4970, file: !3, line: 672, column: 20)
!4974 = !DILocation(line: 674, column: 3, scope: !4973)
!4975 = !DILocation(line: 675, column: 22, scope: !4973)
!4976 = !DILocation(line: 675, column: 3, scope: !4973)
!4977 = !DILocation(line: 675, column: 17, scope: !4973)
!4978 = !DILocation(line: 675, column: 20, scope: !4973)
!4979 = !DILocation(line: 676, column: 3, scope: !4973)
!4980 = !DILocation(line: 676, column: 17, scope: !4973)
!4981 = !DILocation(line: 676, column: 23, scope: !4973)
!4982 = !DILocation(line: 678, column: 14, scope: !4973)
!4983 = !DILocation(line: 678, column: 18, scope: !4973)
!4984 = !DILocation(line: 678, column: 42, scope: !4973)
!4985 = !DILocation(line: 678, column: 3, scope: !4973)
!4986 = !DILocation(line: 679, column: 23, scope: !4973)
!4987 = !DILocation(line: 679, column: 37, scope: !4973)
!4988 = !DILocation(line: 680, column: 9, scope: !4973)
!4989 = !DILocation(line: 680, column: 13, scope: !4973)
!4990 = !DILocation(line: 680, column: 37, scope: !4973)
!4991 = !DILocation(line: 679, column: 3, scope: !4973)
!4992 = !DILocation(line: 681, column: 16, scope: !4973)
!4993 = !DILocation(line: 681, column: 20, scope: !4973)
!4994 = !DILocation(line: 681, column: 44, scope: !4973)
!4995 = !DILocation(line: 681, column: 3, scope: !4973)
!4996 = !DILocation(line: 682, column: 2, scope: !4973)
!4997 = !DILocation(line: 683, column: 3, scope: !4970)
!4998 = !DILocation(line: 683, column: 7, scope: !4970)
!4999 = !DILocation(line: 683, column: 31, scope: !4970)
!5000 = !DILocation(line: 683, column: 41, scope: !4970)
!5001 = !DILocation(line: 685, column: 20, scope: !3523)
!5002 = !DILocation(line: 685, column: 2, scope: !3523)
!5003 = !DILocation(line: 686, column: 2, scope: !3523)
!5004 = !DILocation(line: 686, column: 2, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !5006, file: !3, line: 686, column: 2)
!5006 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 686, column: 2)
!5007 = !DILocation(line: 686, column: 2, scope: !5006)
!5008 = !DILocation(line: 686, column: 2, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 686, column: 2)
!5010 = !DILocation(line: 686, column: 2, scope: !5011)
!5011 = distinct !DILexicalBlock(scope: !5009, file: !3, line: 686, column: 2)
!5012 = !DILocation(line: 686, column: 2, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !5009, file: !3, line: 686, column: 2)
!5014 = !{i64 2154148450, i64 2154148479, i64 2154148525, i64 2154148583, i64 2154148637, i64 2154148691, i64 2154148746, i64 2154148777}
!5015 = !DILocation(line: 687, column: 2, scope: !3523)
!5016 = !DILocation(line: 689, column: 1, scope: !3523)
!5017 = !DILocation(line: 690, column: 8, scope: !3523)
!5018 = !DILocation(line: 690, column: 2, scope: !3523)
!5019 = !DILocation(line: 691, column: 9, scope: !3523)
!5020 = !DILocation(line: 691, column: 2, scope: !3523)
!5021 = !DILocation(line: 692, column: 1, scope: !3523)
!5022 = distinct !DISubprogram(name: "mmap_assert_write_locked", scope: !5023, file: !5023, line: 69, type: !3805, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5024)
!5023 = !DIFile(filename: "./include/linux/mmap_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd03efe98da879092694cad0501d32bc")
!5024 = !{!5025}
!5025 = !DILocalVariable(name: "mm", arg: 1, scope: !5022, file: !5023, line: 69, type: !129)
!5026 = !DILocation(line: 69, column: 63, scope: !5022)
!5027 = !DILocation(line: 71, column: 2, scope: !5022)
!5028 = !DILocation(line: 71, column: 2, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5022, file: !5023, line: 71, column: 2)
!5030 = !DILocation(line: 73, column: 1, scope: !5022)
!5031 = distinct !DISubprogram(name: "atomic_read", scope: !5032, file: !5032, line: 30, type: !5033, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5037)
!5032 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5033 = !DISubroutineType(types: !5034)
!5034 = !{!143, !5035}
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5036, size: 64)
!5036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!5037 = !{!5038}
!5038 = !DILocalVariable(name: "v", arg: 1, scope: !5031, file: !5032, line: 30, type: !5035)
!5039 = !DILocation(line: 30, column: 29, scope: !5031)
!5040 = !DILocation(line: 32, column: 25, scope: !5031)
!5041 = !DILocation(line: 32, column: 2, scope: !5031)
!5042 = !DILocation(line: 33, column: 25, scope: !5031)
!5043 = !DILocation(line: 33, column: 9, scope: !5031)
!5044 = !DILocation(line: 33, column: 2, scope: !5031)
!5045 = distinct !DISubprogram(name: "kzalloc", scope: !91, file: !91, line: 719, type: !5046, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5048)
!5046 = !DISubroutineType(types: !5047)
!5047 = !{!105, !776, !828}
!5048 = !{!5049, !5050}
!5049 = !DILocalVariable(name: "size", arg: 1, scope: !5045, file: !91, line: 719, type: !776)
!5050 = !DILocalVariable(name: "flags", arg: 2, scope: !5045, file: !91, line: 719, type: !828)
!5051 = !DILocation(line: 719, column: 52, scope: !5045)
!5052 = !DILocation(line: 719, column: 64, scope: !5045)
!5053 = !DILocation(line: 721, column: 17, scope: !5045)
!5054 = !DILocation(line: 721, column: 23, scope: !5045)
!5055 = !DILocation(line: 721, column: 29, scope: !5045)
!5056 = !DILocation(line: 721, column: 9, scope: !5045)
!5057 = !DILocation(line: 721, column: 2, scope: !5045)
!5058 = distinct !DISubprogram(name: "spinlock_check", scope: !3775, file: !3775, line: 324, type: !5059, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5062)
!5059 = !DISubroutineType(types: !5060)
!5060 = !{!5061, !2566}
!5061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!5062 = !{!5063}
!5063 = !DILocalVariable(name: "lock", arg: 1, scope: !5058, file: !3775, line: 324, type: !2566)
!5064 = !DILocation(line: 324, column: 67, scope: !5058)
!5065 = !DILocation(line: 326, column: 10, scope: !5058)
!5066 = !DILocation(line: 326, column: 16, scope: !5058)
!5067 = !DILocation(line: 326, column: 2, scope: !5058)
!5068 = !DISubprogram(name: "__init_waitqueue_head", scope: !306, file: !306, line: 64, type: !5069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5069 = !DISubroutineType(types: !5070)
!5070 = !{null, !3799, !458, !5071}
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!5072 = !DISubprogram(name: "mm_take_all_locks", scope: !2418, file: !2418, line: 3262, type: !5073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5073 = !DISubroutineType(types: !5074)
!5074 = !{!143, !129}
!5075 = distinct !DISubprogram(name: "mmgrab", scope: !5076, file: !5076, line: 34, type: !3805, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5077)
!5076 = !DIFile(filename: "./include/linux/sched/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2bdb17d42d55a8ac5ff9bf0c87450707")
!5077 = !{!5078}
!5078 = !DILocalVariable(name: "mm", arg: 1, scope: !5075, file: !5076, line: 34, type: !129)
!5079 = !DILocation(line: 34, column: 45, scope: !5075)
!5080 = !DILocation(line: 36, column: 14, scope: !5075)
!5081 = !DILocation(line: 36, column: 18, scope: !5075)
!5082 = !DILocation(line: 36, column: 2, scope: !5075)
!5083 = !DILocation(line: 37, column: 1, scope: !5075)
!5084 = distinct !DISubprogram(name: "hlist_add_head_rcu", scope: !5085, file: !5085, line: 584, type: !5086, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5088)
!5085 = !DIFile(filename: "./include/linux/rculist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd1f3f0ac3963a1bf35badb4cb07f795")
!5086 = !DISubroutineType(types: !5087)
!5087 = !{null, !109, !3317}
!5088 = !{!5089, !5090, !5091, !5092}
!5089 = !DILocalVariable(name: "n", arg: 1, scope: !5084, file: !5085, line: 584, type: !109)
!5090 = !DILocalVariable(name: "h", arg: 2, scope: !5084, file: !5085, line: 585, type: !3317)
!5091 = !DILocalVariable(name: "first", scope: !5084, file: !5085, line: 587, type: !109)
!5092 = !DILocalVariable(name: "_r_a_p__v", scope: !5093, file: !5085, line: 591, type: !3512)
!5093 = distinct !DILexicalBlock(scope: !5084, file: !5085, line: 591, column: 2)
!5094 = !DILocation(line: 584, column: 58, scope: !5084)
!5095 = !DILocation(line: 585, column: 25, scope: !5084)
!5096 = !DILocation(line: 587, column: 2, scope: !5084)
!5097 = !DILocation(line: 587, column: 21, scope: !5084)
!5098 = !DILocation(line: 587, column: 29, scope: !5084)
!5099 = !DILocation(line: 587, column: 32, scope: !5084)
!5100 = !DILocation(line: 589, column: 12, scope: !5084)
!5101 = !DILocation(line: 589, column: 2, scope: !5084)
!5102 = !DILocation(line: 589, column: 5, scope: !5084)
!5103 = !DILocation(line: 589, column: 10, scope: !5084)
!5104 = !DILocation(line: 590, column: 2, scope: !5084)
!5105 = !DILocation(line: 590, column: 2, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5084, file: !5085, line: 590, column: 2)
!5107 = !DILocation(line: 590, column: 2, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5106, file: !5085, line: 590, column: 2)
!5109 = !DILocation(line: 590, column: 2, scope: !5110)
!5110 = distinct !DILexicalBlock(scope: !5106, file: !5085, line: 590, column: 2)
!5111 = !DILocation(line: 591, column: 2, scope: !5084)
!5112 = !DILocation(line: 591, column: 2, scope: !5093)
!5113 = !DILocation(line: 591, column: 2, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5093, file: !5085, line: 591, column: 2)
!5115 = !DILocation(line: 591, column: 2, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5114, file: !5085, line: 591, column: 2)
!5117 = !DILocation(line: 591, column: 2, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5116, file: !5085, line: 591, column: 2)
!5119 = !DILocation(line: 591, column: 2, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5116, file: !5085, line: 591, column: 2)
!5121 = !DILocation(line: 591, column: 2, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5114, file: !5085, line: 591, column: 2)
!5123 = !DILocation(line: 591, column: 2, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5122, file: !5085, line: 591, column: 2)
!5125 = !DILocation(line: 591, column: 2, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5122, file: !5085, line: 591, column: 2)
!5127 = !DILocation(line: 591, column: 2, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5126, file: !5085, line: 591, column: 2)
!5129 = !{i64 2149742621}
!5130 = !DILocation(line: 591, column: 2, scope: !5131)
!5131 = distinct !DILexicalBlock(scope: !5126, file: !5085, line: 591, column: 2)
!5132 = !DILocation(line: 591, column: 2, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5131, file: !5085, line: 591, column: 2)
!5134 = !DILocation(line: 591, column: 2, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !5131, file: !5085, line: 591, column: 2)
!5136 = !DILocation(line: 592, column: 6, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !5084, file: !5085, line: 592, column: 6)
!5138 = !DILocation(line: 592, column: 6, scope: !5084)
!5139 = !DILocation(line: 593, column: 3, scope: !5137)
!5140 = !DILocation(line: 593, column: 3, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !5137, file: !5085, line: 593, column: 3)
!5142 = !DILocation(line: 593, column: 3, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5141, file: !5085, line: 593, column: 3)
!5144 = !DILocation(line: 593, column: 3, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5141, file: !5085, line: 593, column: 3)
!5146 = !DILocation(line: 594, column: 1, scope: !5084)
!5147 = !DISubprogram(name: "mm_drop_all_locks", scope: !2418, file: !2418, line: 3263, type: !3805, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5148 = !DISubprogram(name: "kfree", scope: !91, file: !91, line: 227, type: !5149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5149 = !DISubroutineType(types: !5150)
!5150 = !{null, !5151}
!5151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5152, size: 64)
!5152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!5153 = distinct !DISubprogram(name: "mmu_notifier_register", scope: !3, file: !3, line: 714, type: !3524, scopeLine: 716, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5154)
!5154 = !{!5155, !5156, !5157}
!5155 = !DILocalVariable(name: "subscription", arg: 1, scope: !5153, file: !3, line: 714, type: !116)
!5156 = !DILocalVariable(name: "mm", arg: 2, scope: !5153, file: !3, line: 715, type: !129)
!5157 = !DILocalVariable(name: "ret", scope: !5153, file: !3, line: 717, type: !143)
!5158 = !DILocation(line: 714, column: 48, scope: !5153)
!5159 = !DILocation(line: 715, column: 24, scope: !5153)
!5160 = !DILocation(line: 717, column: 2, scope: !5153)
!5161 = !DILocation(line: 717, column: 6, scope: !5153)
!5162 = !DILocation(line: 719, column: 18, scope: !5153)
!5163 = !DILocation(line: 719, column: 2, scope: !5153)
!5164 = !DILocation(line: 720, column: 32, scope: !5153)
!5165 = !DILocation(line: 720, column: 46, scope: !5153)
!5166 = !DILocation(line: 720, column: 8, scope: !5153)
!5167 = !DILocation(line: 720, column: 6, scope: !5153)
!5168 = !DILocation(line: 721, column: 20, scope: !5153)
!5169 = !DILocation(line: 721, column: 2, scope: !5153)
!5170 = !DILocation(line: 722, column: 9, scope: !5153)
!5171 = !DILocation(line: 723, column: 1, scope: !5153)
!5172 = !DILocation(line: 722, column: 2, scope: !5153)
!5173 = distinct !DISubprogram(name: "mmap_write_lock", scope: !5023, file: !5023, line: 105, type: !3805, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5174)
!5174 = !{!5175}
!5175 = !DILocalVariable(name: "mm", arg: 1, scope: !5173, file: !5023, line: 105, type: !129)
!5176 = !DILocation(line: 105, column: 54, scope: !5173)
!5177 = !DILocation(line: 107, column: 34, scope: !5173)
!5178 = !DILocation(line: 107, column: 2, scope: !5173)
!5179 = !DILocation(line: 108, column: 14, scope: !5173)
!5180 = !DILocation(line: 108, column: 18, scope: !5173)
!5181 = !DILocation(line: 108, column: 2, scope: !5173)
!5182 = !DILocation(line: 109, column: 37, scope: !5173)
!5183 = !DILocation(line: 109, column: 2, scope: !5173)
!5184 = !DILocation(line: 110, column: 1, scope: !5173)
!5185 = distinct !DISubprogram(name: "mmap_write_unlock", scope: !5023, file: !5023, line: 129, type: !3805, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5186)
!5186 = !{!5187}
!5187 = !DILocalVariable(name: "mm", arg: 1, scope: !5185, file: !5023, line: 129, type: !129)
!5188 = !DILocation(line: 129, column: 56, scope: !5185)
!5189 = !DILocation(line: 131, column: 29, scope: !5185)
!5190 = !DILocation(line: 131, column: 2, scope: !5185)
!5191 = !DILocation(line: 132, column: 20, scope: !5185)
!5192 = !DILocation(line: 132, column: 2, scope: !5185)
!5193 = !DILocation(line: 133, column: 12, scope: !5185)
!5194 = !DILocation(line: 133, column: 16, scope: !5185)
!5195 = !DILocation(line: 133, column: 2, scope: !5185)
!5196 = !DILocation(line: 134, column: 1, scope: !5185)
!5197 = distinct !DISubprogram(name: "mmu_notifier_get_locked", scope: !3, file: !3, line: 766, type: !5198, scopeLine: 768, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5200)
!5198 = !DISubroutineType(types: !5199)
!5199 = !{!116, !121, !129}
!5200 = !{!5201, !5202, !5203, !5204, !5205}
!5201 = !DILocalVariable(name: "ops", arg: 1, scope: !5197, file: !3, line: 766, type: !121)
!5202 = !DILocalVariable(name: "mm", arg: 2, scope: !5197, file: !3, line: 767, type: !129)
!5203 = !DILocalVariable(name: "subscription", scope: !5197, file: !3, line: 769, type: !116)
!5204 = !DILocalVariable(name: "ret", scope: !5197, file: !3, line: 770, type: !143)
!5205 = !DILabel(scope: !5197, name: "out_free", file: !3, line: 788)
!5206 = !DILocation(line: 766, column: 77, scope: !5197)
!5207 = !DILocation(line: 767, column: 29, scope: !5197)
!5208 = !DILocation(line: 769, column: 2, scope: !5197)
!5209 = !DILocation(line: 769, column: 23, scope: !5197)
!5210 = !DILocation(line: 770, column: 2, scope: !5197)
!5211 = !DILocation(line: 770, column: 6, scope: !5197)
!5212 = !DILocation(line: 772, column: 27, scope: !5197)
!5213 = !DILocation(line: 772, column: 2, scope: !5197)
!5214 = !DILocation(line: 774, column: 6, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5197, file: !3, line: 774, column: 6)
!5216 = !DILocation(line: 774, column: 10, scope: !5215)
!5217 = !DILocation(line: 774, column: 6, scope: !5197)
!5218 = !DILocation(line: 775, column: 40, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5215, file: !3, line: 774, column: 34)
!5220 = !DILocation(line: 775, column: 44, scope: !5219)
!5221 = !DILocation(line: 775, column: 18, scope: !5219)
!5222 = !DILocation(line: 775, column: 16, scope: !5219)
!5223 = !DILocation(line: 776, column: 7, scope: !5224)
!5224 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 776, column: 7)
!5225 = !DILocation(line: 776, column: 7, scope: !5219)
!5226 = !DILocation(line: 777, column: 11, scope: !5224)
!5227 = !DILocation(line: 777, column: 4, scope: !5224)
!5228 = !DILocation(line: 778, column: 2, scope: !5219)
!5229 = !DILocation(line: 780, column: 17, scope: !5197)
!5230 = !DILocation(line: 780, column: 22, scope: !5197)
!5231 = !DILocation(line: 780, column: 37, scope: !5197)
!5232 = !DILocation(line: 780, column: 15, scope: !5197)
!5233 = !DILocation(line: 781, column: 13, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5197, file: !3, line: 781, column: 6)
!5235 = !DILocation(line: 781, column: 6, scope: !5234)
!5236 = !DILocation(line: 781, column: 6, scope: !5197)
!5237 = !DILocation(line: 782, column: 10, scope: !5234)
!5238 = !DILocation(line: 782, column: 3, scope: !5234)
!5239 = !DILocation(line: 783, column: 22, scope: !5197)
!5240 = !DILocation(line: 783, column: 2, scope: !5197)
!5241 = !DILocation(line: 783, column: 16, scope: !5197)
!5242 = !DILocation(line: 783, column: 20, scope: !5197)
!5243 = !DILocation(line: 784, column: 32, scope: !5197)
!5244 = !DILocation(line: 784, column: 46, scope: !5197)
!5245 = !DILocation(line: 784, column: 8, scope: !5197)
!5246 = !DILocation(line: 784, column: 6, scope: !5197)
!5247 = !DILocation(line: 785, column: 6, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5197, file: !3, line: 785, column: 6)
!5249 = !DILocation(line: 785, column: 6, scope: !5197)
!5250 = !DILocation(line: 786, column: 3, scope: !5248)
!5251 = !DILocation(line: 787, column: 9, scope: !5197)
!5252 = !DILocation(line: 787, column: 2, scope: !5197)
!5253 = !DILocation(line: 788, column: 1, scope: !5197)
!5254 = !DILocation(line: 789, column: 2, scope: !5197)
!5255 = !DILocation(line: 789, column: 16, scope: !5197)
!5256 = !DILocation(line: 789, column: 21, scope: !5197)
!5257 = !DILocation(line: 789, column: 35, scope: !5197)
!5258 = !DILocation(line: 790, column: 17, scope: !5197)
!5259 = !DILocation(line: 790, column: 9, scope: !5197)
!5260 = !DILocation(line: 790, column: 2, scope: !5197)
!5261 = !DILocation(line: 791, column: 1, scope: !5197)
!5262 = distinct !DISubprogram(name: "find_get_mmu_notifier", scope: !3, file: !3, line: 727, type: !5263, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5265)
!5263 = !DISubroutineType(types: !5264)
!5264 = !{!116, !129, !121}
!5265 = !{!5266, !5267, !5268, !5269, !5272, !5274, !5276, !5279, !5281}
!5266 = !DILocalVariable(name: "mm", arg: 1, scope: !5262, file: !3, line: 727, type: !129)
!5267 = !DILocalVariable(name: "ops", arg: 2, scope: !5262, file: !3, line: 727, type: !121)
!5268 = !DILocalVariable(name: "subscription", scope: !5262, file: !3, line: 729, type: !116)
!5269 = !DILocalVariable(name: "____ptr", scope: !5270, file: !3, line: 732, type: !109)
!5270 = distinct !DILexicalBlock(scope: !5271, file: !3, line: 732, column: 2)
!5271 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 732, column: 2)
!5272 = !DILocalVariable(name: "__UNIQUE_ID_rcu320", scope: !5273, file: !3, line: 732, type: !109)
!5273 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 732, column: 2)
!5274 = !DILocalVariable(name: "__mptr", scope: !5275, file: !3, line: 732, type: !105)
!5275 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 732, column: 2)
!5276 = !DILocalVariable(name: "____ptr", scope: !5277, file: !3, line: 732, type: !109)
!5277 = distinct !DILexicalBlock(scope: !5278, file: !3, line: 732, column: 2)
!5278 = distinct !DILexicalBlock(scope: !5271, file: !3, line: 732, column: 2)
!5279 = !DILocalVariable(name: "__UNIQUE_ID_rcu322", scope: !5280, file: !3, line: 732, type: !109)
!5280 = distinct !DILexicalBlock(scope: !5277, file: !3, line: 732, column: 2)
!5281 = !DILocalVariable(name: "__mptr", scope: !5282, file: !3, line: 732, type: !105)
!5282 = distinct !DILexicalBlock(scope: !5277, file: !3, line: 732, column: 2)
!5283 = !DILocation(line: 727, column: 41, scope: !5262)
!5284 = !DILocation(line: 727, column: 76, scope: !5262)
!5285 = !DILocation(line: 729, column: 2, scope: !5262)
!5286 = !DILocation(line: 729, column: 23, scope: !5262)
!5287 = !DILocation(line: 731, column: 13, scope: !5262)
!5288 = !DILocation(line: 731, column: 17, scope: !5262)
!5289 = !DILocation(line: 731, column: 41, scope: !5262)
!5290 = !DILocation(line: 731, column: 2, scope: !5262)
!5291 = !DILocation(line: 732, column: 2, scope: !5270)
!5292 = !DILocation(line: 732, column: 2, scope: !5273)
!5293 = !DILocation(line: 732, column: 2, scope: !5294)
!5294 = distinct !DILexicalBlock(scope: !5273, file: !3, line: 732, column: 2)
!5295 = !DILocation(line: 732, column: 2, scope: !5296)
!5296 = distinct !DILexicalBlock(scope: !5294, file: !3, line: 732, column: 2)
!5297 = !DILocation(line: 732, column: 2, scope: !5275)
!5298 = !DILocation(line: 732, column: 2, scope: !5271)
!5299 = !DILocation(line: 732, column: 2, scope: !5278)
!5300 = !DILocation(line: 735, column: 7, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5302, file: !3, line: 735, column: 7)
!5302 = distinct !DILexicalBlock(scope: !5278, file: !3, line: 734, column: 58)
!5303 = !DILocation(line: 735, column: 21, scope: !5301)
!5304 = !DILocation(line: 735, column: 28, scope: !5301)
!5305 = !DILocation(line: 735, column: 25, scope: !5301)
!5306 = !DILocation(line: 735, column: 7, scope: !5302)
!5307 = !DILocation(line: 736, column: 4, scope: !5301)
!5308 = !DILocation(line: 738, column: 7, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5302, file: !3, line: 738, column: 7)
!5310 = !DILocation(line: 738, column: 7, scope: !5302)
!5311 = !DILocation(line: 739, column: 4, scope: !5309)
!5312 = !DILocation(line: 739, column: 18, scope: !5309)
!5313 = !DILocation(line: 739, column: 23, scope: !5309)
!5314 = !DILocation(line: 741, column: 19, scope: !5309)
!5315 = !DILocation(line: 741, column: 17, scope: !5309)
!5316 = !DILocation(line: 742, column: 16, scope: !5302)
!5317 = !DILocation(line: 742, column: 20, scope: !5302)
!5318 = !DILocation(line: 742, column: 44, scope: !5302)
!5319 = !DILocation(line: 742, column: 3, scope: !5302)
!5320 = !DILocation(line: 743, column: 10, scope: !5302)
!5321 = !DILocation(line: 743, column: 3, scope: !5302)
!5322 = !DILocation(line: 732, column: 2, scope: !5277)
!5323 = !DILocation(line: 732, column: 2, scope: !5280)
!5324 = !DILocation(line: 732, column: 2, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 732, column: 2)
!5326 = !DILocation(line: 732, column: 2, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5325, file: !3, line: 732, column: 2)
!5328 = !DILocation(line: 732, column: 2, scope: !5282)
!5329 = distinct !{!5329, !5298, !5330, !3891, !3770}
!5330 = !DILocation(line: 744, column: 2, scope: !5271)
!5331 = !DILocation(line: 745, column: 15, scope: !5262)
!5332 = !DILocation(line: 745, column: 19, scope: !5262)
!5333 = !DILocation(line: 745, column: 43, scope: !5262)
!5334 = !DILocation(line: 745, column: 2, scope: !5262)
!5335 = !DILocation(line: 746, column: 2, scope: !5262)
!5336 = !DILocation(line: 747, column: 1, scope: !5262)
!5337 = distinct !DISubprogram(name: "IS_ERR", scope: !5338, file: !5338, line: 59, type: !5339, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5341)
!5338 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5339 = !DISubroutineType(types: !5340)
!5340 = !{!455, !5151}
!5341 = !{!5342}
!5342 = !DILocalVariable(name: "ptr", arg: 1, scope: !5337, file: !5338, line: 59, type: !5151)
!5343 = !DILocation(line: 59, column: 60, scope: !5337)
!5344 = !DILocation(line: 61, column: 9, scope: !5337)
!5345 = !DILocation(line: 61, column: 2, scope: !5337)
!5346 = distinct !DISubprogram(name: "ERR_PTR", scope: !5338, file: !5338, line: 39, type: !5347, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5349)
!5347 = !DISubroutineType(types: !5348)
!5348 = !{!105, !734}
!5349 = !{!5350}
!5350 = !DILocalVariable(name: "error", arg: 1, scope: !5346, file: !5338, line: 39, type: !734)
!5351 = !DILocation(line: 39, column: 48, scope: !5346)
!5352 = !DILocation(line: 41, column: 18, scope: !5346)
!5353 = !DILocation(line: 41, column: 9, scope: !5346)
!5354 = !DILocation(line: 41, column: 2, scope: !5346)
!5355 = distinct !DISubprogram(name: "__mmu_notifier_subscriptions_destroy", scope: !3, file: !3, line: 795, type: !3805, scopeLine: 796, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5356)
!5356 = !{!5357}
!5357 = !DILocalVariable(name: "mm", arg: 1, scope: !5355, file: !3, line: 795, type: !129)
!5358 = !DILocation(line: 795, column: 61, scope: !5355)
!5359 = !DILocation(line: 797, column: 2, scope: !5355)
!5360 = !DILocation(line: 797, column: 2, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 797, column: 2)
!5362 = distinct !DILexicalBlock(scope: !5355, file: !3, line: 797, column: 2)
!5363 = !DILocation(line: 797, column: 2, scope: !5362)
!5364 = !DILocation(line: 797, column: 2, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5361, file: !3, line: 797, column: 2)
!5366 = !DILocation(line: 797, column: 2, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5365, file: !3, line: 797, column: 2)
!5368 = !DILocation(line: 797, column: 2, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5365, file: !3, line: 797, column: 2)
!5370 = !{i64 2154176619, i64 2154176648, i64 2154176694, i64 2154176752, i64 2154176806, i64 2154176860, i64 2154176915, i64 2154176946}
!5371 = !DILocation(line: 798, column: 8, scope: !5355)
!5372 = !DILocation(line: 798, column: 12, scope: !5355)
!5373 = !DILocation(line: 798, column: 2, scope: !5355)
!5374 = !DILocation(line: 799, column: 2, scope: !5355)
!5375 = !DILocation(line: 799, column: 6, scope: !5355)
!5376 = !DILocation(line: 799, column: 29, scope: !5355)
!5377 = !DILocation(line: 800, column: 1, scope: !5355)
!5378 = distinct !DISubprogram(name: "mmu_notifier_unregister", scope: !3, file: !3, line: 812, type: !127, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5379)
!5379 = !{!5380, !5381, !5382}
!5380 = !DILocalVariable(name: "subscription", arg: 1, scope: !5378, file: !3, line: 812, type: !116)
!5381 = !DILocalVariable(name: "mm", arg: 2, scope: !5378, file: !3, line: 813, type: !129)
!5382 = !DILocalVariable(name: "id", scope: !5383, file: !3, line: 822, type: !143)
!5383 = distinct !DILexicalBlock(scope: !5384, file: !3, line: 817, column: 45)
!5384 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 817, column: 6)
!5385 = !DILocation(line: 812, column: 51, scope: !5378)
!5386 = !DILocation(line: 813, column: 27, scope: !5378)
!5387 = !DILocation(line: 815, column: 2, scope: !5378)
!5388 = !DILocation(line: 815, column: 2, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 815, column: 2)
!5390 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 815, column: 2)
!5391 = !DILocation(line: 815, column: 2, scope: !5390)
!5392 = !DILocation(line: 815, column: 2, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 815, column: 2)
!5394 = !DILocation(line: 815, column: 2, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !5393, file: !3, line: 815, column: 2)
!5396 = !DILocation(line: 815, column: 2, scope: !5397)
!5397 = distinct !DILexicalBlock(scope: !5393, file: !3, line: 815, column: 2)
!5398 = !{i64 2154177816, i64 2154177845, i64 2154177891, i64 2154177949, i64 2154178003, i64 2154178057, i64 2154178112, i64 2154178143}
!5399 = !DILocation(line: 817, column: 23, scope: !5384)
!5400 = !DILocation(line: 817, column: 37, scope: !5384)
!5401 = !DILocation(line: 817, column: 7, scope: !5384)
!5402 = !DILocation(line: 817, column: 6, scope: !5378)
!5403 = !DILocation(line: 822, column: 3, scope: !5383)
!5404 = !DILocation(line: 822, column: 7, scope: !5383)
!5405 = !DILocation(line: 824, column: 8, scope: !5383)
!5406 = !DILocation(line: 824, column: 6, scope: !5383)
!5407 = !DILocation(line: 829, column: 7, scope: !5408)
!5408 = distinct !DILexicalBlock(scope: !5383, file: !3, line: 829, column: 7)
!5409 = !DILocation(line: 829, column: 21, scope: !5408)
!5410 = !DILocation(line: 829, column: 26, scope: !5408)
!5411 = !DILocation(line: 829, column: 7, scope: !5383)
!5412 = !DILocation(line: 830, column: 4, scope: !5408)
!5413 = !DILocation(line: 830, column: 18, scope: !5408)
!5414 = !DILocation(line: 830, column: 23, scope: !5408)
!5415 = !DILocation(line: 830, column: 31, scope: !5408)
!5416 = !DILocation(line: 830, column: 45, scope: !5408)
!5417 = !DILocation(line: 831, column: 27, scope: !5383)
!5418 = !DILocation(line: 831, column: 3, scope: !5383)
!5419 = !DILocation(line: 833, column: 14, scope: !5383)
!5420 = !DILocation(line: 833, column: 18, scope: !5383)
!5421 = !DILocation(line: 833, column: 42, scope: !5383)
!5422 = !DILocation(line: 833, column: 3, scope: !5383)
!5423 = !DILocation(line: 838, column: 23, scope: !5383)
!5424 = !DILocation(line: 838, column: 37, scope: !5383)
!5425 = !DILocation(line: 838, column: 3, scope: !5383)
!5426 = !DILocation(line: 839, column: 16, scope: !5383)
!5427 = !DILocation(line: 839, column: 20, scope: !5383)
!5428 = !DILocation(line: 839, column: 44, scope: !5383)
!5429 = !DILocation(line: 839, column: 3, scope: !5383)
!5430 = !DILocation(line: 840, column: 2, scope: !5384)
!5431 = !DILocation(line: 840, column: 2, scope: !5383)
!5432 = !DILocation(line: 846, column: 2, scope: !5378)
!5433 = !DILocation(line: 848, column: 2, scope: !5378)
!5434 = !DILocation(line: 848, column: 2, scope: !5435)
!5435 = distinct !DILexicalBlock(scope: !5436, file: !3, line: 848, column: 2)
!5436 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 848, column: 2)
!5437 = !DILocation(line: 848, column: 2, scope: !5436)
!5438 = !DILocation(line: 848, column: 2, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5435, file: !3, line: 848, column: 2)
!5440 = !DILocation(line: 848, column: 2, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5439, file: !3, line: 848, column: 2)
!5442 = !DILocation(line: 848, column: 2, scope: !5443)
!5443 = distinct !DILexicalBlock(scope: !5439, file: !3, line: 848, column: 2)
!5444 = !{i64 2154178834, i64 2154178863, i64 2154178909, i64 2154178967, i64 2154179021, i64 2154179075, i64 2154179130, i64 2154179161}
!5445 = !DILocation(line: 850, column: 9, scope: !5378)
!5446 = !DILocation(line: 850, column: 2, scope: !5378)
!5447 = !DILocation(line: 851, column: 1, scope: !5378)
!5448 = distinct !DISubprogram(name: "hlist_unhashed", scope: !3896, file: !3896, line: 948, type: !5449, scopeLine: 949, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5453)
!5449 = !DISubroutineType(types: !5450)
!5450 = !{!143, !5451}
!5451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5452, size: 64)
!5452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!5453 = !{!5454}
!5454 = !DILocalVariable(name: "h", arg: 1, scope: !5448, file: !3896, line: 948, type: !5451)
!5455 = !DILocation(line: 948, column: 59, scope: !5448)
!5456 = !DILocation(line: 950, column: 10, scope: !5448)
!5457 = !DILocation(line: 950, column: 13, scope: !5448)
!5458 = !DILocation(line: 950, column: 9, scope: !5448)
!5459 = !DILocation(line: 950, column: 2, scope: !5448)
!5460 = distinct !DISubprogram(name: "hlist_del_init_rcu", scope: !5085, file: !5085, line: 181, type: !5461, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5463)
!5461 = !DISubroutineType(types: !5462)
!5462 = !{null, !109}
!5463 = !{!5464}
!5464 = !DILocalVariable(name: "n", arg: 1, scope: !5460, file: !5085, line: 181, type: !109)
!5465 = !DILocation(line: 181, column: 58, scope: !5460)
!5466 = !DILocation(line: 183, column: 22, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5460, file: !5085, line: 183, column: 6)
!5468 = !DILocation(line: 183, column: 7, scope: !5467)
!5469 = !DILocation(line: 183, column: 6, scope: !5460)
!5470 = !DILocation(line: 184, column: 15, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5467, file: !5085, line: 183, column: 26)
!5472 = !DILocation(line: 184, column: 3, scope: !5471)
!5473 = !DILocation(line: 185, column: 3, scope: !5471)
!5474 = !DILocation(line: 185, column: 3, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !5471, file: !5085, line: 185, column: 3)
!5476 = !DILocation(line: 185, column: 3, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5475, file: !5085, line: 185, column: 3)
!5478 = !DILocation(line: 185, column: 3, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5475, file: !5085, line: 185, column: 3)
!5480 = !DILocation(line: 186, column: 2, scope: !5471)
!5481 = !DILocation(line: 187, column: 1, scope: !5460)
!5482 = !DISubprogram(name: "synchronize_srcu", scope: !3657, file: !3657, line: 59, type: !5483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5483 = !DISubroutineType(types: !5484)
!5484 = !{null, !3614}
!5485 = distinct !DISubprogram(name: "mmdrop", scope: !5076, file: !5076, line: 46, type: !3805, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5486)
!5486 = !{!5487}
!5487 = !DILocalVariable(name: "mm", arg: 1, scope: !5485, file: !5076, line: 46, type: !129)
!5488 = !DILocation(line: 46, column: 45, scope: !5485)
!5489 = !DILocation(line: 53, column: 6, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5485, file: !5076, line: 53, column: 6)
!5491 = !DILocation(line: 53, column: 6, scope: !5485)
!5492 = !DILocation(line: 54, column: 12, scope: !5490)
!5493 = !DILocation(line: 54, column: 3, scope: !5490)
!5494 = !DILocation(line: 55, column: 1, scope: !5485)
!5495 = distinct !DISubprogram(name: "mmu_notifier_put", scope: !3, file: !3, line: 887, type: !3475, scopeLine: 888, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5496)
!5496 = !{!5497, !5498, !5499, !5502, !5505}
!5497 = !DILocalVariable(name: "subscription", arg: 1, scope: !5495, file: !3, line: 887, type: !116)
!5498 = !DILocalVariable(name: "mm", scope: !5495, file: !3, line: 889, type: !129)
!5499 = !DILocalVariable(name: "__ret_warn_on", scope: !5500, file: !3, line: 892, type: !143)
!5500 = distinct !DILexicalBlock(scope: !5501, file: !3, line: 892, column: 6)
!5501 = distinct !DILexicalBlock(scope: !5495, file: !3, line: 892, column: 6)
!5502 = !DILocalVariable(name: "__flags", scope: !5503, file: !3, line: 892, type: !143)
!5503 = distinct !DILexicalBlock(scope: !5504, file: !3, line: 892, column: 6)
!5504 = distinct !DILexicalBlock(scope: !5500, file: !3, line: 892, column: 6)
!5505 = !DILabel(scope: !5495, name: "out_unlock", file: !3, line: 900)
!5506 = !DILocation(line: 887, column: 44, scope: !5495)
!5507 = !DILocation(line: 889, column: 2, scope: !5495)
!5508 = !DILocation(line: 889, column: 20, scope: !5495)
!5509 = !DILocation(line: 889, column: 25, scope: !5495)
!5510 = !DILocation(line: 889, column: 39, scope: !5495)
!5511 = !DILocation(line: 891, column: 13, scope: !5495)
!5512 = !DILocation(line: 891, column: 17, scope: !5495)
!5513 = !DILocation(line: 891, column: 41, scope: !5495)
!5514 = !DILocation(line: 891, column: 2, scope: !5495)
!5515 = !DILocation(line: 892, column: 6, scope: !5500)
!5516 = !DILocation(line: 892, column: 6, scope: !5504)
!5517 = !DILocation(line: 892, column: 6, scope: !5503)
!5518 = !DILocation(line: 892, column: 6, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 892, column: 6)
!5520 = !DILocation(line: 892, column: 6, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 892, column: 6)
!5522 = !{i64 2154183137, i64 2154183166, i64 2154183212, i64 2154183270, i64 2154183324, i64 2154183378, i64 2154183433, i64 2154183464, i64 2154183772, i64 2154183778, i64 2154183825, i64 2154183848, i64 2154183874}
!5523 = !DILocation(line: 892, column: 6, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 892, column: 6)
!5525 = !DILocation(line: 892, column: 6, scope: !5501)
!5526 = !DILocation(line: 892, column: 36, scope: !5501)
!5527 = !DILocation(line: 892, column: 41, scope: !5501)
!5528 = !DILocation(line: 892, column: 55, scope: !5501)
!5529 = !DILocation(line: 892, column: 39, scope: !5501)
!5530 = !DILocation(line: 892, column: 6, scope: !5495)
!5531 = !DILocation(line: 893, column: 3, scope: !5501)
!5532 = !DILocation(line: 894, column: 22, scope: !5495)
!5533 = !DILocation(line: 894, column: 36, scope: !5495)
!5534 = !DILocation(line: 894, column: 2, scope: !5495)
!5535 = !DILocation(line: 895, column: 15, scope: !5495)
!5536 = !DILocation(line: 895, column: 19, scope: !5495)
!5537 = !DILocation(line: 895, column: 43, scope: !5495)
!5538 = !DILocation(line: 895, column: 2, scope: !5495)
!5539 = !DILocation(line: 897, column: 20, scope: !5495)
!5540 = !DILocation(line: 897, column: 34, scope: !5495)
!5541 = !DILocation(line: 897, column: 2, scope: !5495)
!5542 = !DILocation(line: 898, column: 2, scope: !5495)
!5543 = !DILocation(line: 900, column: 1, scope: !5495)
!5544 = !DILocation(line: 901, column: 15, scope: !5495)
!5545 = !DILocation(line: 901, column: 19, scope: !5495)
!5546 = !DILocation(line: 901, column: 43, scope: !5495)
!5547 = !DILocation(line: 901, column: 2, scope: !5495)
!5548 = !DILocation(line: 902, column: 1, scope: !5495)
!5549 = !DISubprogram(name: "call_srcu", scope: !3657, file: !3657, line: 54, type: !5550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5550 = !DISubroutineType(types: !5551)
!5551 = !{null, !3614, !216, !218}
!5552 = distinct !DISubprogram(name: "mmu_notifier_free_rcu", scope: !3, file: !3, line: 854, type: !219, scopeLine: 855, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5553)
!5553 = !{!5554, !5555, !5556, !5558}
!5554 = !DILocalVariable(name: "rcu", arg: 1, scope: !5552, file: !3, line: 854, type: !216)
!5555 = !DILocalVariable(name: "subscription", scope: !5552, file: !3, line: 856, type: !116)
!5556 = !DILocalVariable(name: "__mptr", scope: !5557, file: !3, line: 857, type: !105)
!5557 = distinct !DILexicalBlock(scope: !5552, file: !3, line: 857, column: 3)
!5558 = !DILocalVariable(name: "mm", scope: !5552, file: !3, line: 858, type: !129)
!5559 = !DILocation(line: 854, column: 52, scope: !5552)
!5560 = !DILocation(line: 856, column: 2, scope: !5552)
!5561 = !DILocation(line: 856, column: 23, scope: !5552)
!5562 = !DILocation(line: 857, column: 3, scope: !5557)
!5563 = !DILocation(line: 857, column: 3, scope: !5552)
!5564 = !DILocation(line: 858, column: 2, scope: !5552)
!5565 = !DILocation(line: 858, column: 20, scope: !5552)
!5566 = !DILocation(line: 858, column: 25, scope: !5552)
!5567 = !DILocation(line: 858, column: 39, scope: !5552)
!5568 = !DILocation(line: 860, column: 2, scope: !5552)
!5569 = !DILocation(line: 860, column: 16, scope: !5552)
!5570 = !DILocation(line: 860, column: 21, scope: !5552)
!5571 = !DILocation(line: 860, column: 35, scope: !5552)
!5572 = !DILocation(line: 862, column: 9, scope: !5552)
!5573 = !DILocation(line: 862, column: 2, scope: !5552)
!5574 = !DILocation(line: 863, column: 1, scope: !5552)
!5575 = distinct !DISubprogram(name: "mmu_interval_notifier_insert", scope: !3, file: !3, line: 987, type: !5576, scopeLine: 991, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5578)
!5576 = !DISubroutineType(types: !5577)
!5577 = !{!143, !3484, !129, !104, !104, !3496}
!5578 = !{!5579, !5580, !5581, !5582, !5583, !5584, !5585, !5586}
!5579 = !DILocalVariable(name: "interval_sub", arg: 1, scope: !5575, file: !3, line: 987, type: !3484)
!5580 = !DILocalVariable(name: "mm", arg: 2, scope: !5575, file: !3, line: 988, type: !129)
!5581 = !DILocalVariable(name: "start", arg: 3, scope: !5575, file: !3, line: 988, type: !104)
!5582 = !DILocalVariable(name: "length", arg: 4, scope: !5575, file: !3, line: 989, type: !104)
!5583 = !DILocalVariable(name: "ops", arg: 5, scope: !5575, file: !3, line: 990, type: !3496)
!5584 = !DILocalVariable(name: "subscriptions", scope: !5575, file: !3, line: 992, type: !3411)
!5585 = !DILocalVariable(name: "ret", scope: !5575, file: !3, line: 993, type: !143)
!5586 = !DILocalVariable(name: "___p1", scope: !5587, file: !3, line: 997, type: !3411)
!5587 = distinct !DILexicalBlock(scope: !5575, file: !3, line: 997, column: 18)
!5588 = !DILocation(line: 987, column: 64, scope: !5575)
!5589 = !DILocation(line: 988, column: 24, scope: !5575)
!5590 = !DILocation(line: 988, column: 42, scope: !5575)
!5591 = !DILocation(line: 989, column: 20, scope: !5575)
!5592 = !DILocation(line: 990, column: 46, scope: !5575)
!5593 = !DILocation(line: 992, column: 2, scope: !5575)
!5594 = !DILocation(line: 992, column: 37, scope: !5575)
!5595 = !DILocation(line: 993, column: 2, scope: !5575)
!5596 = !DILocation(line: 993, column: 6, scope: !5575)
!5597 = !DILocation(line: 995, column: 2, scope: !5575)
!5598 = !DILocation(line: 995, column: 2, scope: !5599)
!5599 = distinct !DILexicalBlock(scope: !5575, file: !3, line: 995, column: 2)
!5600 = !DILocation(line: 997, column: 18, scope: !5587)
!5601 = !DILocation(line: 997, column: 18, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5587, file: !3, line: 997, column: 18)
!5603 = !DILocation(line: 997, column: 18, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5602, file: !3, line: 997, column: 18)
!5605 = !DILocation(line: 997, column: 18, scope: !5606)
!5606 = distinct !DILexicalBlock(scope: !5587, file: !3, line: 997, column: 18)
!5607 = !{i64 2154198763}
!5608 = !DILocation(line: 997, column: 18, scope: !5575)
!5609 = !DILocation(line: 997, column: 16, scope: !5575)
!5610 = !DILocation(line: 998, column: 7, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5575, file: !3, line: 998, column: 6)
!5612 = !DILocation(line: 998, column: 21, scope: !5611)
!5613 = !DILocation(line: 998, column: 25, scope: !5611)
!5614 = !DILocation(line: 998, column: 40, scope: !5611)
!5615 = !DILocation(line: 998, column: 6, scope: !5575)
!5616 = !DILocation(line: 999, column: 37, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5611, file: !3, line: 998, column: 51)
!5618 = !DILocation(line: 999, column: 9, scope: !5617)
!5619 = !DILocation(line: 999, column: 7, scope: !5617)
!5620 = !DILocation(line: 1000, column: 7, scope: !5621)
!5621 = distinct !DILexicalBlock(scope: !5617, file: !3, line: 1000, column: 7)
!5622 = !DILocation(line: 1000, column: 7, scope: !5617)
!5623 = !DILocation(line: 1001, column: 11, scope: !5621)
!5624 = !DILocation(line: 1001, column: 4, scope: !5621)
!5625 = !DILocation(line: 1002, column: 19, scope: !5617)
!5626 = !DILocation(line: 1002, column: 23, scope: !5617)
!5627 = !DILocation(line: 1002, column: 17, scope: !5617)
!5628 = !DILocation(line: 1003, column: 2, scope: !5617)
!5629 = !DILocation(line: 1004, column: 40, scope: !5575)
!5630 = !DILocation(line: 1004, column: 54, scope: !5575)
!5631 = !DILocation(line: 1004, column: 58, scope: !5575)
!5632 = !DILocation(line: 1005, column: 12, scope: !5575)
!5633 = !DILocation(line: 1005, column: 19, scope: !5575)
!5634 = !DILocation(line: 1005, column: 27, scope: !5575)
!5635 = !DILocation(line: 1004, column: 9, scope: !5575)
!5636 = !DILocation(line: 1004, column: 2, scope: !5575)
!5637 = !DILocation(line: 1006, column: 1, scope: !5575)
!5638 = distinct !DISubprogram(name: "__mmu_interval_notifier_insert", scope: !3, file: !3, line: 905, type: !5639, scopeLine: 909, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5641)
!5639 = !DISubroutineType(types: !5640)
!5640 = !{!143, !3484, !129, !3411, !104, !104, !3496}
!5641 = !{!5642, !5643, !5644, !5645, !5646, !5647, !5648, !5651, !5654, !5658}
!5642 = !DILocalVariable(name: "interval_sub", arg: 1, scope: !5638, file: !3, line: 906, type: !3484)
!5643 = !DILocalVariable(name: "mm", arg: 2, scope: !5638, file: !3, line: 906, type: !129)
!5644 = !DILocalVariable(name: "subscriptions", arg: 3, scope: !5638, file: !3, line: 907, type: !3411)
!5645 = !DILocalVariable(name: "start", arg: 4, scope: !5638, file: !3, line: 907, type: !104)
!5646 = !DILocalVariable(name: "length", arg: 5, scope: !5638, file: !3, line: 908, type: !104)
!5647 = !DILocalVariable(name: "ops", arg: 6, scope: !5638, file: !3, line: 908, type: !3496)
!5648 = !DILocalVariable(name: "__ret_warn_on", scope: !5649, file: !3, line: 924, type: !143)
!5649 = distinct !DILexicalBlock(scope: !5650, file: !3, line: 924, column: 6)
!5650 = distinct !DILexicalBlock(scope: !5638, file: !3, line: 924, column: 6)
!5651 = !DILocalVariable(name: "__flags", scope: !5652, file: !3, line: 924, type: !143)
!5652 = distinct !DILexicalBlock(scope: !5653, file: !3, line: 924, column: 6)
!5653 = distinct !DILexicalBlock(scope: !5649, file: !3, line: 924, column: 6)
!5654 = !DILocalVariable(name: "__ret_warn_on", scope: !5655, file: !3, line: 955, type: !143)
!5655 = distinct !DILexicalBlock(scope: !5656, file: !3, line: 955, column: 3)
!5656 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 954, column: 9)
!5657 = distinct !DILexicalBlock(scope: !5638, file: !3, line: 944, column: 6)
!5658 = !DILocalVariable(name: "__flags", scope: !5659, file: !3, line: 955, type: !143)
!5659 = distinct !DILexicalBlock(scope: !5660, file: !3, line: 955, column: 3)
!5660 = distinct !DILexicalBlock(scope: !5655, file: !3, line: 955, column: 3)
!5661 = !DILocation(line: 906, column: 32, scope: !5638)
!5662 = !DILocation(line: 906, column: 64, scope: !5638)
!5663 = !DILocation(line: 907, column: 37, scope: !5638)
!5664 = !DILocation(line: 907, column: 66, scope: !5638)
!5665 = !DILocation(line: 908, column: 16, scope: !5638)
!5666 = !DILocation(line: 908, column: 64, scope: !5638)
!5667 = !DILocation(line: 910, column: 21, scope: !5638)
!5668 = !DILocation(line: 910, column: 2, scope: !5638)
!5669 = !DILocation(line: 910, column: 16, scope: !5638)
!5670 = !DILocation(line: 910, column: 19, scope: !5638)
!5671 = !DILocation(line: 911, column: 22, scope: !5638)
!5672 = !DILocation(line: 911, column: 2, scope: !5638)
!5673 = !DILocation(line: 911, column: 16, scope: !5638)
!5674 = !DILocation(line: 911, column: 20, scope: !5638)
!5675 = !DILocation(line: 912, column: 2, scope: !5638)
!5676 = !DILocation(line: 913, column: 38, scope: !5638)
!5677 = !DILocation(line: 913, column: 2, scope: !5638)
!5678 = !DILocation(line: 913, column: 16, scope: !5638)
!5679 = !DILocation(line: 913, column: 30, scope: !5638)
!5680 = !DILocation(line: 913, column: 36, scope: !5638)
!5681 = !DILocation(line: 918, column: 6, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5638, file: !3, line: 918, column: 6)
!5683 = !DILocation(line: 918, column: 13, scope: !5682)
!5684 = !DILocation(line: 918, column: 18, scope: !5682)
!5685 = !DILocation(line: 919, column: 6, scope: !5682)
!5686 = !DILocation(line: 918, column: 6, scope: !5638)
!5687 = !DILocation(line: 921, column: 3, scope: !5682)
!5688 = !DILocation(line: 924, column: 6, scope: !5649)
!5689 = !DILocation(line: 924, column: 6, scope: !5653)
!5690 = !DILocation(line: 924, column: 6, scope: !5652)
!5691 = !DILocation(line: 924, column: 6, scope: !5692)
!5692 = distinct !DILexicalBlock(scope: !5652, file: !3, line: 924, column: 6)
!5693 = !DILocation(line: 924, column: 6, scope: !5694)
!5694 = distinct !DILexicalBlock(scope: !5652, file: !3, line: 924, column: 6)
!5695 = !{i64 2154190702, i64 2154190731, i64 2154190777, i64 2154190835, i64 2154190889, i64 2154190943, i64 2154190998, i64 2154191029, i64 2154191337, i64 2154191343, i64 2154191390, i64 2154191413, i64 2154191439}
!5696 = !DILocation(line: 924, column: 6, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5652, file: !3, line: 924, column: 6)
!5698 = !DILocation(line: 924, column: 6, scope: !5650)
!5699 = !DILocation(line: 924, column: 6, scope: !5638)
!5700 = !DILocation(line: 925, column: 3, scope: !5650)
!5701 = !DILocation(line: 928, column: 9, scope: !5638)
!5702 = !DILocation(line: 928, column: 2, scope: !5638)
!5703 = !DILocation(line: 943, column: 13, scope: !5638)
!5704 = !DILocation(line: 943, column: 28, scope: !5638)
!5705 = !DILocation(line: 943, column: 2, scope: !5638)
!5706 = !DILocation(line: 944, column: 6, scope: !5657)
!5707 = !DILocation(line: 944, column: 21, scope: !5657)
!5708 = !DILocation(line: 944, column: 6, scope: !5638)
!5709 = !DILocation(line: 945, column: 32, scope: !5710)
!5710 = distinct !DILexicalBlock(scope: !5711, file: !3, line: 945, column: 7)
!5711 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 944, column: 47)
!5712 = !DILocation(line: 945, column: 7, scope: !5710)
!5713 = !DILocation(line: 945, column: 7, scope: !5711)
!5714 = !DILocation(line: 946, column: 20, scope: !5710)
!5715 = !DILocation(line: 946, column: 34, scope: !5710)
!5716 = !DILocation(line: 947, column: 13, scope: !5710)
!5717 = !DILocation(line: 947, column: 28, scope: !5710)
!5718 = !DILocation(line: 946, column: 4, scope: !5710)
!5719 = !DILocation(line: 949, column: 4, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5710, file: !3, line: 948, column: 8)
!5721 = !DILocation(line: 949, column: 19, scope: !5720)
!5722 = !DILocation(line: 949, column: 34, scope: !5720)
!5723 = !DILocation(line: 950, column: 26, scope: !5720)
!5724 = !DILocation(line: 950, column: 40, scope: !5720)
!5725 = !DILocation(line: 951, column: 12, scope: !5720)
!5726 = !DILocation(line: 951, column: 27, scope: !5720)
!5727 = !DILocation(line: 950, column: 4, scope: !5720)
!5728 = !DILocation(line: 953, column: 34, scope: !5711)
!5729 = !DILocation(line: 953, column: 49, scope: !5711)
!5730 = !DILocation(line: 953, column: 3, scope: !5711)
!5731 = !DILocation(line: 953, column: 17, scope: !5711)
!5732 = !DILocation(line: 953, column: 32, scope: !5711)
!5733 = !DILocation(line: 954, column: 2, scope: !5711)
!5734 = !DILocation(line: 955, column: 3, scope: !5655)
!5735 = !DILocation(line: 955, column: 3, scope: !5660)
!5736 = !DILocation(line: 955, column: 3, scope: !5659)
!5737 = !DILocation(line: 955, column: 3, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5659, file: !3, line: 955, column: 3)
!5739 = !DILocation(line: 955, column: 3, scope: !5740)
!5740 = distinct !DILexicalBlock(scope: !5659, file: !3, line: 955, column: 3)
!5741 = !{i64 2154192225, i64 2154192254, i64 2154192300, i64 2154192358, i64 2154192412, i64 2154192466, i64 2154192521, i64 2154192552, i64 2154192860, i64 2154192866, i64 2154192913, i64 2154192936, i64 2154192962}
!5742 = !DILocation(line: 955, column: 3, scope: !5743)
!5743 = distinct !DILexicalBlock(scope: !5659, file: !3, line: 955, column: 3)
!5744 = !DILocation(line: 955, column: 3, scope: !5656)
!5745 = !DILocation(line: 963, column: 4, scope: !5656)
!5746 = !DILocation(line: 963, column: 19, scope: !5656)
!5747 = !DILocation(line: 963, column: 34, scope: !5656)
!5748 = !DILocation(line: 962, column: 3, scope: !5656)
!5749 = !DILocation(line: 962, column: 17, scope: !5656)
!5750 = !DILocation(line: 962, column: 32, scope: !5656)
!5751 = !DILocation(line: 964, column: 25, scope: !5656)
!5752 = !DILocation(line: 964, column: 39, scope: !5656)
!5753 = !DILocation(line: 965, column: 11, scope: !5656)
!5754 = !DILocation(line: 965, column: 26, scope: !5656)
!5755 = !DILocation(line: 964, column: 3, scope: !5656)
!5756 = !DILocation(line: 967, column: 15, scope: !5638)
!5757 = !DILocation(line: 967, column: 30, scope: !5638)
!5758 = !DILocation(line: 967, column: 2, scope: !5638)
!5759 = !DILocation(line: 968, column: 2, scope: !5638)
!5760 = !DILocation(line: 969, column: 1, scope: !5638)
!5761 = distinct !DISubprogram(name: "mmu_interval_notifier_insert_locked", scope: !3, file: !3, line: 1009, type: !5576, scopeLine: 1013, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5762)
!5762 = !{!5763, !5764, !5765, !5766, !5767, !5768, !5769}
!5763 = !DILocalVariable(name: "interval_sub", arg: 1, scope: !5761, file: !3, line: 1010, type: !3484)
!5764 = !DILocalVariable(name: "mm", arg: 2, scope: !5761, file: !3, line: 1010, type: !129)
!5765 = !DILocalVariable(name: "start", arg: 3, scope: !5761, file: !3, line: 1011, type: !104)
!5766 = !DILocalVariable(name: "length", arg: 4, scope: !5761, file: !3, line: 1011, type: !104)
!5767 = !DILocalVariable(name: "ops", arg: 5, scope: !5761, file: !3, line: 1012, type: !3496)
!5768 = !DILocalVariable(name: "subscriptions", scope: !5761, file: !3, line: 1014, type: !3411)
!5769 = !DILocalVariable(name: "ret", scope: !5761, file: !3, line: 1016, type: !143)
!5770 = !DILocation(line: 1010, column: 32, scope: !5761)
!5771 = !DILocation(line: 1010, column: 64, scope: !5761)
!5772 = !DILocation(line: 1011, column: 16, scope: !5761)
!5773 = !DILocation(line: 1011, column: 37, scope: !5761)
!5774 = !DILocation(line: 1012, column: 42, scope: !5761)
!5775 = !DILocation(line: 1014, column: 2, scope: !5761)
!5776 = !DILocation(line: 1014, column: 37, scope: !5761)
!5777 = !DILocation(line: 1015, column: 3, scope: !5761)
!5778 = !DILocation(line: 1015, column: 7, scope: !5761)
!5779 = !DILocation(line: 1016, column: 2, scope: !5761)
!5780 = !DILocation(line: 1016, column: 6, scope: !5761)
!5781 = !DILocation(line: 1018, column: 27, scope: !5761)
!5782 = !DILocation(line: 1018, column: 2, scope: !5761)
!5783 = !DILocation(line: 1020, column: 7, scope: !5784)
!5784 = distinct !DILexicalBlock(scope: !5761, file: !3, line: 1020, column: 6)
!5785 = !DILocation(line: 1020, column: 21, scope: !5784)
!5786 = !DILocation(line: 1020, column: 25, scope: !5784)
!5787 = !DILocation(line: 1020, column: 40, scope: !5784)
!5788 = !DILocation(line: 1020, column: 6, scope: !5761)
!5789 = !DILocation(line: 1021, column: 39, scope: !5790)
!5790 = distinct !DILexicalBlock(scope: !5784, file: !3, line: 1020, column: 51)
!5791 = !DILocation(line: 1021, column: 9, scope: !5790)
!5792 = !DILocation(line: 1021, column: 7, scope: !5790)
!5793 = !DILocation(line: 1022, column: 7, scope: !5794)
!5794 = distinct !DILexicalBlock(scope: !5790, file: !3, line: 1022, column: 7)
!5795 = !DILocation(line: 1022, column: 7, scope: !5790)
!5796 = !DILocation(line: 1023, column: 11, scope: !5794)
!5797 = !DILocation(line: 1023, column: 4, scope: !5794)
!5798 = !DILocation(line: 1024, column: 19, scope: !5790)
!5799 = !DILocation(line: 1024, column: 23, scope: !5790)
!5800 = !DILocation(line: 1024, column: 17, scope: !5790)
!5801 = !DILocation(line: 1025, column: 2, scope: !5790)
!5802 = !DILocation(line: 1026, column: 40, scope: !5761)
!5803 = !DILocation(line: 1026, column: 54, scope: !5761)
!5804 = !DILocation(line: 1026, column: 58, scope: !5761)
!5805 = !DILocation(line: 1027, column: 12, scope: !5761)
!5806 = !DILocation(line: 1027, column: 19, scope: !5761)
!5807 = !DILocation(line: 1027, column: 27, scope: !5761)
!5808 = !DILocation(line: 1026, column: 9, scope: !5761)
!5809 = !DILocation(line: 1026, column: 2, scope: !5761)
!5810 = !DILocation(line: 1028, column: 1, scope: !5761)
!5811 = distinct !DISubprogram(name: "mmu_interval_notifier_remove", scope: !3, file: !3, line: 1053, type: !5812, scopeLine: 1054, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5814)
!5812 = !DISubroutineType(types: !5813)
!5813 = !{null, !3484}
!5814 = !{!5815, !5816, !5817, !5818, !5819, !5823, !5826, !5830, !5831, !5835}
!5815 = !DILocalVariable(name: "interval_sub", arg: 1, scope: !5811, file: !3, line: 1053, type: !3484)
!5816 = !DILocalVariable(name: "mm", scope: !5811, file: !3, line: 1055, type: !129)
!5817 = !DILocalVariable(name: "subscriptions", scope: !5811, file: !3, line: 1056, type: !3411)
!5818 = !DILocalVariable(name: "seq", scope: !5811, file: !3, line: 1058, type: !104)
!5819 = !DILocalVariable(name: "__ret_warn_on", scope: !5820, file: !3, line: 1076, type: !143)
!5820 = distinct !DILexicalBlock(scope: !5821, file: !3, line: 1076, column: 3)
!5821 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 1075, column: 9)
!5822 = distinct !DILexicalBlock(scope: !5811, file: !3, line: 1063, column: 6)
!5823 = !DILocalVariable(name: "__flags", scope: !5824, file: !3, line: 1076, type: !143)
!5824 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 1076, column: 3)
!5825 = distinct !DILexicalBlock(scope: !5820, file: !3, line: 1076, column: 3)
!5826 = !DILocalVariable(name: "__wq_entry", scope: !5827, file: !3, line: 1089, type: !3697)
!5827 = distinct !DILexicalBlock(scope: !5828, file: !3, line: 1089, column: 3)
!5828 = distinct !DILexicalBlock(scope: !5829, file: !3, line: 1089, column: 3)
!5829 = distinct !DILexicalBlock(scope: !5811, file: !3, line: 1088, column: 6)
!5830 = !DILocalVariable(name: "__ret", scope: !5827, file: !3, line: 1089, type: !734)
!5831 = !DILocalVariable(name: "__int", scope: !5832, file: !3, line: 1089, type: !734)
!5832 = distinct !DILexicalBlock(scope: !5833, file: !3, line: 1089, column: 3)
!5833 = distinct !DILexicalBlock(scope: !5834, file: !3, line: 1089, column: 3)
!5834 = distinct !DILexicalBlock(scope: !5827, file: !3, line: 1089, column: 3)
!5835 = !DILabel(scope: !5827, name: "__out", file: !3, line: 1089)
!5836 = !DILocation(line: 1053, column: 65, scope: !5811)
!5837 = !DILocation(line: 1055, column: 2, scope: !5811)
!5838 = !DILocation(line: 1055, column: 20, scope: !5811)
!5839 = !DILocation(line: 1055, column: 25, scope: !5811)
!5840 = !DILocation(line: 1055, column: 39, scope: !5811)
!5841 = !DILocation(line: 1056, column: 2, scope: !5811)
!5842 = !DILocation(line: 1056, column: 37, scope: !5811)
!5843 = !DILocation(line: 1057, column: 3, scope: !5811)
!5844 = !DILocation(line: 1057, column: 7, scope: !5811)
!5845 = !DILocation(line: 1058, column: 2, scope: !5811)
!5846 = !DILocation(line: 1058, column: 16, scope: !5811)
!5847 = !DILocation(line: 1060, column: 2, scope: !5811)
!5848 = !DILocation(line: 1060, column: 2, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5811, file: !3, line: 1060, column: 2)
!5850 = !DILocation(line: 1062, column: 13, scope: !5811)
!5851 = !DILocation(line: 1062, column: 28, scope: !5811)
!5852 = !DILocation(line: 1062, column: 2, scope: !5811)
!5853 = !DILocation(line: 1063, column: 31, scope: !5822)
!5854 = !DILocation(line: 1063, column: 6, scope: !5822)
!5855 = !DILocation(line: 1063, column: 6, scope: !5811)
!5856 = !DILocation(line: 1068, column: 7, scope: !5857)
!5857 = distinct !DILexicalBlock(scope: !5858, file: !3, line: 1068, column: 7)
!5858 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 1063, column: 47)
!5859 = !DILocation(line: 1068, column: 7, scope: !5858)
!5860 = !DILocation(line: 1069, column: 15, scope: !5861)
!5861 = distinct !DILexicalBlock(scope: !5857, file: !3, line: 1068, column: 55)
!5862 = !DILocation(line: 1069, column: 29, scope: !5861)
!5863 = !DILocation(line: 1069, column: 4, scope: !5861)
!5864 = !DILocation(line: 1070, column: 3, scope: !5861)
!5865 = !DILocation(line: 1071, column: 20, scope: !5866)
!5866 = distinct !DILexicalBlock(scope: !5857, file: !3, line: 1070, column: 10)
!5867 = !DILocation(line: 1071, column: 34, scope: !5866)
!5868 = !DILocation(line: 1072, column: 13, scope: !5866)
!5869 = !DILocation(line: 1072, column: 28, scope: !5866)
!5870 = !DILocation(line: 1071, column: 4, scope: !5866)
!5871 = !DILocation(line: 1073, column: 10, scope: !5866)
!5872 = !DILocation(line: 1073, column: 25, scope: !5866)
!5873 = !DILocation(line: 1073, column: 8, scope: !5866)
!5874 = !DILocation(line: 1075, column: 2, scope: !5858)
!5875 = !DILocation(line: 1076, column: 3, scope: !5820)
!5876 = !DILocation(line: 1076, column: 3, scope: !5825)
!5877 = !DILocation(line: 1076, column: 3, scope: !5824)
!5878 = !DILocation(line: 1076, column: 3, scope: !5879)
!5879 = distinct !DILexicalBlock(scope: !5824, file: !3, line: 1076, column: 3)
!5880 = !DILocation(line: 1076, column: 3, scope: !5881)
!5881 = distinct !DILexicalBlock(scope: !5824, file: !3, line: 1076, column: 3)
!5882 = !{i64 2154204060, i64 2154204089, i64 2154204135, i64 2154204193, i64 2154204247, i64 2154204301, i64 2154204356, i64 2154204387, i64 2154204695, i64 2154204701, i64 2154204748, i64 2154204771, i64 2154204797}
!5883 = !DILocation(line: 1076, column: 3, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5824, file: !3, line: 1076, column: 3)
!5885 = !DILocation(line: 1076, column: 3, scope: !5821)
!5886 = !DILocation(line: 1077, column: 25, scope: !5821)
!5887 = !DILocation(line: 1077, column: 39, scope: !5821)
!5888 = !DILocation(line: 1078, column: 11, scope: !5821)
!5889 = !DILocation(line: 1078, column: 26, scope: !5821)
!5890 = !DILocation(line: 1077, column: 3, scope: !5821)
!5891 = !DILocation(line: 1080, column: 15, scope: !5811)
!5892 = !DILocation(line: 1080, column: 30, scope: !5811)
!5893 = !DILocation(line: 1080, column: 2, scope: !5811)
!5894 = !DILocation(line: 1086, column: 2, scope: !5811)
!5895 = !DILocation(line: 1086, column: 2, scope: !5896)
!5896 = distinct !DILexicalBlock(scope: !5811, file: !3, line: 1086, column: 2)
!5897 = !DILocation(line: 1087, column: 2, scope: !5811)
!5898 = !DILocation(line: 1087, column: 2, scope: !5899)
!5899 = distinct !DILexicalBlock(scope: !5811, file: !3, line: 1087, column: 2)
!5900 = !DILocation(line: 1088, column: 6, scope: !5829)
!5901 = !DILocation(line: 1088, column: 6, scope: !5811)
!5902 = !DILocation(line: 1089, column: 3, scope: !5829)
!5903 = !DILocation(line: 1089, column: 3, scope: !5828)
!5904 = !DILocation(line: 1089, column: 3, scope: !5905)
!5905 = distinct !DILexicalBlock(scope: !5828, file: !3, line: 1089, column: 3)
!5906 = !DILocation(line: 1089, column: 3, scope: !5907)
!5907 = distinct !DILexicalBlock(scope: !5828, file: !3, line: 1089, column: 3)
!5908 = !DILocation(line: 1089, column: 3, scope: !5827)
!5909 = !DILocation(line: 1089, column: 3, scope: !5832)
!5910 = !DILocation(line: 1089, column: 3, scope: !5911)
!5911 = distinct !DILexicalBlock(scope: !5832, file: !3, line: 1089, column: 3)
!5912 = !DILocation(line: 1089, column: 3, scope: !5833)
!5913 = distinct !{!5913, !5914, !5914, !3770}
!5914 = !DILocation(line: 1089, column: 3, scope: !5834)
!5915 = !DILocation(line: 1093, column: 9, scope: !5811)
!5916 = !DILocation(line: 1093, column: 2, scope: !5811)
!5917 = !DILocation(line: 1094, column: 1, scope: !5811)
!5918 = distinct !DISubprogram(name: "mn_itree_is_invalidating", scope: !3, file: !3, line: 87, type: !5919, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5921)
!5919 = !DISubroutineType(types: !5920)
!5920 = !{!455, !3411}
!5921 = !{!5922}
!5922 = !DILocalVariable(name: "subscriptions", arg: 1, scope: !5918, file: !3, line: 87, type: !3411)
!5923 = !DILocation(line: 87, column: 61, scope: !5918)
!5924 = !DILocation(line: 89, column: 2, scope: !5918)
!5925 = !DILocation(line: 89, column: 2, scope: !5926)
!5926 = distinct !DILexicalBlock(scope: !5918, file: !3, line: 89, column: 2)
!5927 = !DILocation(line: 90, column: 9, scope: !5918)
!5928 = !DILocation(line: 90, column: 24, scope: !5918)
!5929 = !DILocation(line: 90, column: 39, scope: !5918)
!5930 = !DILocation(line: 90, column: 2, scope: !5918)
!5931 = distinct !DISubprogram(name: "hlist_del", scope: !3896, file: !3896, line: 992, type: !5461, scopeLine: 993, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5932)
!5932 = !{!5933}
!5933 = !DILocalVariable(name: "n", arg: 1, scope: !5931, file: !3896, line: 992, type: !109)
!5934 = !DILocation(line: 992, column: 49, scope: !5931)
!5935 = !DILocation(line: 994, column: 14, scope: !5931)
!5936 = !DILocation(line: 994, column: 2, scope: !5931)
!5937 = !DILocation(line: 995, column: 2, scope: !5931)
!5938 = !DILocation(line: 995, column: 5, scope: !5931)
!5939 = !DILocation(line: 995, column: 10, scope: !5931)
!5940 = !DILocation(line: 996, column: 2, scope: !5931)
!5941 = !DILocation(line: 996, column: 5, scope: !5931)
!5942 = !DILocation(line: 996, column: 11, scope: !5931)
!5943 = !DILocation(line: 997, column: 1, scope: !5931)
!5944 = distinct !DISubprogram(name: "hlist_add_head", scope: !3896, file: !3896, line: 1021, type: !5086, scopeLine: 1022, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5945)
!5945 = !{!5946, !5947, !5948}
!5946 = !DILocalVariable(name: "n", arg: 1, scope: !5944, file: !3896, line: 1021, type: !109)
!5947 = !DILocalVariable(name: "h", arg: 2, scope: !5944, file: !3896, line: 1021, type: !3317)
!5948 = !DILocalVariable(name: "first", scope: !5944, file: !3896, line: 1023, type: !109)
!5949 = !DILocation(line: 1021, column: 54, scope: !5944)
!5950 = !DILocation(line: 1021, column: 76, scope: !5944)
!5951 = !DILocation(line: 1023, column: 2, scope: !5944)
!5952 = !DILocation(line: 1023, column: 21, scope: !5944)
!5953 = !DILocation(line: 1023, column: 29, scope: !5944)
!5954 = !DILocation(line: 1023, column: 32, scope: !5944)
!5955 = !DILocation(line: 1024, column: 2, scope: !5944)
!5956 = !DILocation(line: 1024, column: 2, scope: !5957)
!5957 = distinct !DILexicalBlock(scope: !5944, file: !3896, line: 1024, column: 2)
!5958 = !DILocation(line: 1024, column: 2, scope: !5959)
!5959 = distinct !DILexicalBlock(scope: !5957, file: !3896, line: 1024, column: 2)
!5960 = !DILocation(line: 1024, column: 2, scope: !5961)
!5961 = distinct !DILexicalBlock(scope: !5957, file: !3896, line: 1024, column: 2)
!5962 = !DILocation(line: 1025, column: 6, scope: !5963)
!5963 = distinct !DILexicalBlock(scope: !5944, file: !3896, line: 1025, column: 6)
!5964 = !DILocation(line: 1025, column: 6, scope: !5944)
!5965 = !DILocation(line: 1026, column: 3, scope: !5963)
!5966 = !DILocation(line: 1026, column: 3, scope: !5967)
!5967 = distinct !DILexicalBlock(scope: !5963, file: !3896, line: 1026, column: 3)
!5968 = !DILocation(line: 1026, column: 3, scope: !5969)
!5969 = distinct !DILexicalBlock(scope: !5967, file: !3896, line: 1026, column: 3)
!5970 = !DILocation(line: 1026, column: 3, scope: !5971)
!5971 = distinct !DILexicalBlock(scope: !5967, file: !3896, line: 1026, column: 3)
!5972 = !DILocation(line: 1027, column: 2, scope: !5944)
!5973 = !DILocation(line: 1027, column: 2, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5944, file: !3896, line: 1027, column: 2)
!5975 = !DILocation(line: 1027, column: 2, scope: !5976)
!5976 = distinct !DILexicalBlock(scope: !5974, file: !3896, line: 1027, column: 2)
!5977 = !DILocation(line: 1027, column: 2, scope: !5978)
!5978 = distinct !DILexicalBlock(scope: !5974, file: !3896, line: 1027, column: 2)
!5979 = !DILocation(line: 1028, column: 2, scope: !5944)
!5980 = !DILocation(line: 1028, column: 2, scope: !5981)
!5981 = distinct !DILexicalBlock(scope: !5944, file: !3896, line: 1028, column: 2)
!5982 = !DILocation(line: 1028, column: 2, scope: !5983)
!5983 = distinct !DILexicalBlock(scope: !5981, file: !3896, line: 1028, column: 2)
!5984 = !DILocation(line: 1028, column: 2, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5981, file: !3896, line: 1028, column: 2)
!5986 = !DILocation(line: 1029, column: 1, scope: !5944)
!5987 = !DISubprogram(name: "interval_tree_remove", scope: !3489, file: !3489, line: 19, type: !5988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5988 = !DISubroutineType(types: !5989)
!5989 = !{null, !5990, !5991}
!5990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!5991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!5992 = distinct !DISubprogram(name: "mmu_interval_seq_released", scope: !3, file: !3, line: 1032, type: !5993, scopeLine: 1034, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5995)
!5993 = !DISubroutineType(types: !5994)
!5994 = !{!455, !3411, !104}
!5995 = !{!5996, !5997, !5998}
!5996 = !DILocalVariable(name: "subscriptions", arg: 1, scope: !5992, file: !3, line: 1032, type: !3411)
!5997 = !DILocalVariable(name: "seq", arg: 2, scope: !5992, file: !3, line: 1033, type: !104)
!5998 = !DILocalVariable(name: "ret", scope: !5992, file: !3, line: 1035, type: !455)
!5999 = !DILocation(line: 1032, column: 62, scope: !5992)
!6000 = !DILocation(line: 1033, column: 20, scope: !5992)
!6001 = !DILocation(line: 1035, column: 2, scope: !5992)
!6002 = !DILocation(line: 1035, column: 7, scope: !5992)
!6003 = !DILocation(line: 1037, column: 13, scope: !5992)
!6004 = !DILocation(line: 1037, column: 28, scope: !5992)
!6005 = !DILocation(line: 1037, column: 2, scope: !5992)
!6006 = !DILocation(line: 1038, column: 8, scope: !5992)
!6007 = !DILocation(line: 1038, column: 23, scope: !5992)
!6008 = !DILocation(line: 1038, column: 41, scope: !5992)
!6009 = !DILocation(line: 1038, column: 38, scope: !5992)
!6010 = !DILocation(line: 1038, column: 6, scope: !5992)
!6011 = !DILocation(line: 1039, column: 15, scope: !5992)
!6012 = !DILocation(line: 1039, column: 30, scope: !5992)
!6013 = !DILocation(line: 1039, column: 2, scope: !5992)
!6014 = !DILocation(line: 1040, column: 9, scope: !5992)
!6015 = !DILocation(line: 1041, column: 1, scope: !5992)
!6016 = !DILocation(line: 1040, column: 2, scope: !5992)
!6017 = distinct !DISubprogram(name: "mmu_notifier_synchronize", scope: !3, file: !3, line: 1110, type: !1876, scopeLine: 1111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6018 = !DILocation(line: 1112, column: 2, scope: !6017)
!6019 = !DILocation(line: 1113, column: 1, scope: !6017)
!6020 = !DISubprogram(name: "_raw_spin_lock", scope: !6021, file: !6021, line: 22, type: !6022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6021 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6022 = !DISubroutineType(types: !6023)
!6023 = !{null, !5061}
!6024 = !DISubprogram(name: "_raw_spin_unlock", scope: !6021, file: !6021, line: 39, type: !6022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6025 = distinct !DISubprogram(name: "mn_itree_inv_start_range", scope: !3, file: !3, line: 94, type: !6026, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6029)
!6026 = !DISubroutineType(types: !6027)
!6027 = !{!3484, !3411, !3451, !6028}
!6028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!6029 = !{!6030, !6031, !6032, !6033, !6034, !6035}
!6030 = !DILocalVariable(name: "subscriptions", arg: 1, scope: !6025, file: !3, line: 94, type: !3411)
!6031 = !DILocalVariable(name: "range", arg: 2, scope: !6025, file: !3, line: 95, type: !3451)
!6032 = !DILocalVariable(name: "seq", arg: 3, scope: !6025, file: !3, line: 96, type: !6028)
!6033 = !DILocalVariable(name: "node", scope: !6025, file: !3, line: 98, type: !5990)
!6034 = !DILocalVariable(name: "res", scope: !6025, file: !3, line: 99, type: !3484)
!6035 = !DILocalVariable(name: "__mptr", scope: !6036, file: !3, line: 107, type: !105)
!6036 = distinct !DILexicalBlock(scope: !6037, file: !3, line: 107, column: 9)
!6037 = distinct !DILexicalBlock(scope: !6038, file: !3, line: 105, column: 12)
!6038 = distinct !DILexicalBlock(scope: !6025, file: !3, line: 105, column: 6)
!6039 = !DILocation(line: 94, column: 61, scope: !6025)
!6040 = !DILocation(line: 95, column: 38, scope: !6025)
!6041 = !DILocation(line: 96, column: 20, scope: !6025)
!6042 = !DILocation(line: 98, column: 2, scope: !6025)
!6043 = !DILocation(line: 98, column: 29, scope: !6025)
!6044 = !DILocation(line: 99, column: 2, scope: !6025)
!6045 = !DILocation(line: 99, column: 32, scope: !6025)
!6046 = !DILocation(line: 101, column: 13, scope: !6025)
!6047 = !DILocation(line: 101, column: 28, scope: !6025)
!6048 = !DILocation(line: 101, column: 2, scope: !6025)
!6049 = !DILocation(line: 102, column: 2, scope: !6025)
!6050 = !DILocation(line: 102, column: 17, scope: !6025)
!6051 = !DILocation(line: 102, column: 41, scope: !6025)
!6052 = !DILocation(line: 103, column: 35, scope: !6025)
!6053 = !DILocation(line: 103, column: 50, scope: !6025)
!6054 = !DILocation(line: 103, column: 57, scope: !6025)
!6055 = !DILocation(line: 103, column: 64, scope: !6025)
!6056 = !DILocation(line: 104, column: 6, scope: !6025)
!6057 = !DILocation(line: 104, column: 13, scope: !6025)
!6058 = !DILocation(line: 104, column: 17, scope: !6025)
!6059 = !DILocation(line: 103, column: 9, scope: !6025)
!6060 = !DILocation(line: 103, column: 7, scope: !6025)
!6061 = !DILocation(line: 105, column: 6, scope: !6038)
!6062 = !DILocation(line: 105, column: 6, scope: !6025)
!6063 = !DILocation(line: 106, column: 3, scope: !6037)
!6064 = !DILocation(line: 106, column: 18, scope: !6037)
!6065 = !DILocation(line: 106, column: 33, scope: !6037)
!6066 = !DILocation(line: 107, column: 9, scope: !6036)
!6067 = !DILocation(line: 107, column: 9, scope: !6037)
!6068 = !DILocation(line: 107, column: 7, scope: !6037)
!6069 = !DILocation(line: 109, column: 2, scope: !6037)
!6070 = !DILocation(line: 111, column: 9, scope: !6025)
!6071 = !DILocation(line: 111, column: 24, scope: !6025)
!6072 = !DILocation(line: 111, column: 3, scope: !6025)
!6073 = !DILocation(line: 111, column: 7, scope: !6025)
!6074 = !DILocation(line: 112, column: 15, scope: !6025)
!6075 = !DILocation(line: 112, column: 30, scope: !6025)
!6076 = !DILocation(line: 112, column: 2, scope: !6025)
!6077 = !DILocation(line: 113, column: 9, scope: !6025)
!6078 = !DILocation(line: 114, column: 1, scope: !6025)
!6079 = !DILocation(line: 113, column: 2, scope: !6025)
!6080 = distinct !DISubprogram(name: "mn_itree_inv_next", scope: !3, file: !3, line: 117, type: !6081, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6083)
!6081 = !DISubroutineType(types: !6082)
!6082 = !{!3484, !3484, !3451}
!6083 = !{!6084, !6085, !6086, !6087}
!6084 = !DILocalVariable(name: "interval_sub", arg: 1, scope: !6080, file: !3, line: 117, type: !3484)
!6085 = !DILocalVariable(name: "range", arg: 2, scope: !6080, file: !3, line: 118, type: !3451)
!6086 = !DILocalVariable(name: "node", scope: !6080, file: !3, line: 120, type: !5990)
!6087 = !DILocalVariable(name: "__mptr", scope: !6088, file: !3, line: 126, type: !105)
!6088 = distinct !DILexicalBlock(scope: !6080, file: !3, line: 126, column: 9)
!6089 = !DILocation(line: 117, column: 49, scope: !6080)
!6090 = !DILocation(line: 118, column: 38, scope: !6080)
!6091 = !DILocation(line: 120, column: 2, scope: !6080)
!6092 = !DILocation(line: 120, column: 29, scope: !6080)
!6093 = !DILocation(line: 122, column: 34, scope: !6080)
!6094 = !DILocation(line: 122, column: 48, scope: !6080)
!6095 = !DILocation(line: 123, column: 12, scope: !6080)
!6096 = !DILocation(line: 123, column: 19, scope: !6080)
!6097 = !DILocation(line: 123, column: 26, scope: !6080)
!6098 = !DILocation(line: 123, column: 33, scope: !6080)
!6099 = !DILocation(line: 123, column: 37, scope: !6080)
!6100 = !DILocation(line: 122, column: 9, scope: !6080)
!6101 = !DILocation(line: 122, column: 7, scope: !6080)
!6102 = !DILocation(line: 124, column: 7, scope: !6103)
!6103 = distinct !DILexicalBlock(scope: !6080, file: !3, line: 124, column: 6)
!6104 = !DILocation(line: 124, column: 6, scope: !6080)
!6105 = !DILocation(line: 125, column: 3, scope: !6103)
!6106 = !DILocation(line: 126, column: 9, scope: !6088)
!6107 = !DILocation(line: 126, column: 9, scope: !6080)
!6108 = !DILocation(line: 126, column: 2, scope: !6080)
!6109 = !DILocation(line: 127, column: 1, scope: !6080)
!6110 = !DISubprogram(name: "interval_tree_iter_first", scope: !3489, file: !3489, line: 23, type: !6111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6111 = !DISubroutineType(types: !6112)
!6112 = !{!5990, !5991, !104, !104}
!6113 = !DISubprogram(name: "interval_tree_iter_next", scope: !3489, file: !3489, line: 27, type: !6114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6114 = !DISubroutineType(types: !6115)
!6115 = !{!5990, !5990, !104, !104}
!6116 = distinct !DISubprogram(name: "srcu_check_nmi_safety", scope: !3657, file: !3657, line: 151, type: !6117, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6119)
!6117 = !DISubroutineType(types: !6118)
!6118 = !{null, !3614, !455}
!6119 = !{!6120, !6121}
!6120 = !DILocalVariable(name: "ssp", arg: 1, scope: !6116, file: !3657, line: 151, type: !3614)
!6121 = !DILocalVariable(name: "nmi_safe", arg: 2, scope: !6116, file: !3657, line: 152, type: !455)
!6122 = !DILocation(line: 151, column: 62, scope: !6116)
!6123 = !DILocation(line: 152, column: 12, scope: !6116)
!6124 = !DILocation(line: 152, column: 24, scope: !6116)
!6125 = !DISubprogram(name: "__srcu_read_lock", scope: !3657, file: !3657, line: 57, type: !4063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6126 = !DISubprogram(name: "__srcu_read_unlock", scope: !3657, file: !3657, line: 58, type: !4083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6127 = distinct !DISubprogram(name: "mmu_notifier_range_blockable", scope: !75, file: !75, line: 405, type: !6128, scopeLine: 406, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6130)
!6128 = !DISubroutineType(types: !6129)
!6129 = !{!455, !3451}
!6130 = !{!6131}
!6131 = !DILocalVariable(name: "range", arg: 1, scope: !6127, file: !75, line: 405, type: !3451)
!6132 = !DILocation(line: 405, column: 63, scope: !6127)
!6133 = !DILocation(line: 407, column: 10, scope: !6127)
!6134 = !DILocation(line: 407, column: 17, scope: !6127)
!6135 = !DILocation(line: 407, column: 23, scope: !6127)
!6136 = !DILocation(line: 407, column: 9, scope: !6127)
!6137 = !DILocation(line: 407, column: 2, scope: !6127)
!6138 = !DISubprogram(name: "_printk", scope: !6139, file: !6139, line: 153, type: !6140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6139 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6140 = !DISubroutineType(types: !6141)
!6141 = !{!143, !458, null}
!6142 = !DISubprogram(name: "interval_tree_insert", scope: !3489, file: !3489, line: 15, type: !5988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6143 = !DISubprogram(name: "__wake_up", scope: !306, file: !306, line: 212, type: !6144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6144 = !DISubroutineType(types: !6145)
!6145 = !{!143, !3799, !7, !143, !105}
!6146 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6147, file: !6147, line: 66, type: !6148, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6153)
!6147 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6148 = !DISubroutineType(types: !6149)
!6149 = !{null, !6150, !776}
!6150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6151, size: 64)
!6151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6152)
!6152 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6153 = !{!6154, !6155}
!6154 = !DILocalVariable(name: "v", arg: 1, scope: !6146, file: !6147, line: 66, type: !6150)
!6155 = !DILocalVariable(name: "size", arg: 2, scope: !6146, file: !6147, line: 66, type: !776)
!6156 = !DILocation(line: 66, column: 73, scope: !6146)
!6157 = !DILocation(line: 66, column: 83, scope: !6146)
!6158 = !DILocation(line: 68, column: 19, scope: !6146)
!6159 = !DILocation(line: 68, column: 22, scope: !6146)
!6160 = !DILocation(line: 68, column: 2, scope: !6146)
!6161 = !DILocation(line: 69, column: 2, scope: !6146)
!6162 = !DILocation(line: 70, column: 1, scope: !6146)
!6163 = distinct !DISubprogram(name: "raw_atomic_read", scope: !6164, file: !6164, line: 442, type: !5033, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6165)
!6164 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6165 = !{!6166}
!6166 = !DILocalVariable(name: "v", arg: 1, scope: !6163, file: !6164, line: 442, type: !5035)
!6167 = !DILocation(line: 442, column: 33, scope: !6163)
!6168 = !DILocation(line: 444, column: 26, scope: !6163)
!6169 = !DILocation(line: 444, column: 9, scope: !6163)
!6170 = !DILocation(line: 444, column: 2, scope: !6163)
!6171 = distinct !DISubprogram(name: "kasan_check_read", scope: !6172, file: !6172, line: 40, type: !6173, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6175)
!6172 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6173 = !DISubroutineType(types: !6174)
!6174 = !{!455, !6150, !7}
!6175 = !{!6176, !6177}
!6176 = !DILocalVariable(name: "p", arg: 1, scope: !6171, file: !6172, line: 40, type: !6150)
!6177 = !DILocalVariable(name: "size", arg: 2, scope: !6171, file: !6172, line: 40, type: !7)
!6178 = !DILocation(line: 40, column: 58, scope: !6171)
!6179 = !DILocation(line: 40, column: 74, scope: !6171)
!6180 = !DILocation(line: 42, column: 2, scope: !6171)
!6181 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6182, file: !6182, line: 229, type: !6183, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6185)
!6182 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6183 = !DISubroutineType(types: !6184)
!6184 = !{null, !6150, !776, !143}
!6185 = !{!6186, !6187, !6188}
!6186 = !DILocalVariable(name: "ptr", arg: 1, scope: !6181, file: !6182, line: 229, type: !6150)
!6187 = !DILocalVariable(name: "size", arg: 2, scope: !6181, file: !6182, line: 229, type: !776)
!6188 = !DILocalVariable(name: "type", arg: 3, scope: !6181, file: !6182, line: 230, type: !143)
!6189 = !DILocation(line: 229, column: 60, scope: !6181)
!6190 = !DILocation(line: 229, column: 72, scope: !6181)
!6191 = !DILocation(line: 230, column: 15, scope: !6181)
!6192 = !DILocation(line: 230, column: 23, scope: !6181)
!6193 = distinct !DISubprogram(name: "arch_atomic_read", scope: !6194, file: !6194, line: 17, type: !5033, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6195)
!6194 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6195 = !{!6196}
!6196 = !DILocalVariable(name: "v", arg: 1, scope: !6193, file: !6194, line: 17, type: !5035)
!6197 = !DILocation(line: 17, column: 61, scope: !6193)
!6198 = !DILocation(line: 23, column: 9, scope: !6193)
!6199 = !DILocation(line: 23, column: 2, scope: !6193)
!6200 = distinct !DISubprogram(name: "kmalloc", scope: !91, file: !91, line: 591, type: !5046, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6201)
!6201 = !{!6202, !6203, !6204}
!6202 = !DILocalVariable(name: "size", arg: 1, scope: !6200, file: !91, line: 591, type: !776)
!6203 = !DILocalVariable(name: "flags", arg: 2, scope: !6200, file: !91, line: 591, type: !828)
!6204 = !DILocalVariable(name: "index", scope: !6205, file: !91, line: 594, type: !7)
!6205 = distinct !DILexicalBlock(scope: !6206, file: !91, line: 593, column: 42)
!6206 = distinct !DILexicalBlock(scope: !6200, file: !91, line: 593, column: 6)
!6207 = !DILocation(line: 591, column: 61, scope: !6200)
!6208 = !DILocation(line: 591, column: 73, scope: !6200)
!6209 = !DILocation(line: 593, column: 27, scope: !6206)
!6210 = !DILocation(line: 593, column: 6, scope: !6206)
!6211 = !DILocation(line: 593, column: 33, scope: !6206)
!6212 = !DILocation(line: 593, column: 36, scope: !6206)
!6213 = !DILocation(line: 593, column: 6, scope: !6200)
!6214 = !DILocation(line: 594, column: 3, scope: !6205)
!6215 = !DILocation(line: 594, column: 16, scope: !6205)
!6216 = !DILocation(line: 596, column: 7, scope: !6217)
!6217 = distinct !DILexicalBlock(scope: !6205, file: !91, line: 596, column: 7)
!6218 = !DILocation(line: 596, column: 12, scope: !6217)
!6219 = !DILocation(line: 596, column: 7, scope: !6205)
!6220 = !DILocation(line: 597, column: 25, scope: !6217)
!6221 = !DILocation(line: 597, column: 31, scope: !6217)
!6222 = !DILocation(line: 597, column: 11, scope: !6217)
!6223 = !DILocation(line: 597, column: 4, scope: !6217)
!6224 = !DILocation(line: 599, column: 11, scope: !6205)
!6225 = !DILocation(line: 599, column: 9, scope: !6205)
!6226 = !DILocation(line: 601, column: 33, scope: !6205)
!6227 = !DILocation(line: 601, column: 40, scope: !6205)
!6228 = !DILocation(line: 601, column: 20, scope: !6205)
!6229 = !DILocation(line: 601, column: 5, scope: !6205)
!6230 = !DILocation(line: 601, column: 51, scope: !6205)
!6231 = !DILocation(line: 602, column: 5, scope: !6205)
!6232 = !DILocation(line: 602, column: 12, scope: !6205)
!6233 = !DILocation(line: 600, column: 10, scope: !6205)
!6234 = !DILocation(line: 600, column: 3, scope: !6205)
!6235 = !DILocation(line: 603, column: 2, scope: !6206)
!6236 = !DILocation(line: 604, column: 19, scope: !6200)
!6237 = !DILocation(line: 604, column: 25, scope: !6200)
!6238 = !DILocation(line: 604, column: 9, scope: !6200)
!6239 = !DILocation(line: 604, column: 2, scope: !6200)
!6240 = !DILocation(line: 605, column: 1, scope: !6200)
!6241 = !DISubprogram(name: "kmalloc_large", scope: !91, file: !91, line: 531, type: !5046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6242 = distinct !DISubprogram(name: "__kmalloc_index", scope: !91, file: !91, line: 444, type: !6243, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6245)
!6243 = !DISubroutineType(types: !6244)
!6244 = !{!7, !776, !455}
!6245 = !{!6246, !6247}
!6246 = !DILocalVariable(name: "size", arg: 1, scope: !6242, file: !91, line: 444, type: !776)
!6247 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6242, file: !91, line: 445, type: !455)
!6248 = !DILocation(line: 444, column: 60, scope: !6242)
!6249 = !DILocation(line: 445, column: 16, scope: !6242)
!6250 = !DILocation(line: 447, column: 7, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6242, file: !91, line: 447, column: 6)
!6252 = !DILocation(line: 447, column: 6, scope: !6242)
!6253 = !DILocation(line: 448, column: 3, scope: !6251)
!6254 = !DILocation(line: 450, column: 6, scope: !6255)
!6255 = distinct !DILexicalBlock(scope: !6242, file: !91, line: 450, column: 6)
!6256 = !DILocation(line: 450, column: 11, scope: !6255)
!6257 = !DILocation(line: 450, column: 6, scope: !6242)
!6258 = !DILocation(line: 451, column: 3, scope: !6255)
!6259 = !DILocation(line: 453, column: 32, scope: !6260)
!6260 = distinct !DILexicalBlock(scope: !6242, file: !91, line: 453, column: 6)
!6261 = !DILocation(line: 453, column: 37, scope: !6260)
!6262 = !DILocation(line: 453, column: 42, scope: !6260)
!6263 = !DILocation(line: 453, column: 45, scope: !6260)
!6264 = !DILocation(line: 453, column: 50, scope: !6260)
!6265 = !DILocation(line: 453, column: 6, scope: !6242)
!6266 = !DILocation(line: 454, column: 3, scope: !6260)
!6267 = !DILocation(line: 455, column: 32, scope: !6268)
!6268 = distinct !DILexicalBlock(scope: !6242, file: !91, line: 455, column: 6)
!6269 = !DILocation(line: 455, column: 37, scope: !6268)
!6270 = !DILocation(line: 455, column: 43, scope: !6268)
!6271 = !DILocation(line: 455, column: 46, scope: !6268)
!6272 = !DILocation(line: 455, column: 51, scope: !6268)
!6273 = !DILocation(line: 455, column: 6, scope: !6242)
!6274 = !DILocation(line: 456, column: 3, scope: !6268)
!6275 = !DILocation(line: 457, column: 6, scope: !6276)
!6276 = distinct !DILexicalBlock(scope: !6242, file: !91, line: 457, column: 6)
!6277 = !DILocation(line: 457, column: 11, scope: !6276)
!6278 = !DILocation(line: 457, column: 6, scope: !6242)
!6279 = !DILocation(line: 457, column: 26, scope: !6276)
!6280 = !DILocation(line: 458, column: 6, scope: !6281)
!6281 = distinct !DILexicalBlock(scope: !6242, file: !91, line: 458, column: 6)
!6282 = !DILocation(line: 458, column: 11, scope: !6281)
!6283 = !DILocation(line: 458, column: 6, scope: !6242)
!6284 = !DILocation(line: 458, column: 26, scope: !6281)
!6285 = !DILocation(line: 459, column: 6, scope: !6286)
!6286 = distinct !DILexicalBlock(scope: !6242, file: !91, line: 459, column: 6)
!6287 = !DILocation(line: 459, column: 11, scope: !6286)
!6288 = !DILocation(line: 459, column: 6, scope: !6242)
!6289 = !DILocation(line: 459, column: 26, scope: !6286)
!6290 = !DILocation(line: 460, column: 6, scope: !6291)
!6291 = distinct !DILexicalBlock(scope: !6242, file: !91, line: 460, column: 6)
!6292 = !DILocation(line: 460, column: 11, scope: !6291)
!6293 = !DILocation(line: 460, column: 6, scope: !6242)
!6294 = !DILocation(line: 460, column: 26, scope: !6291)
!6295 = !DILocation(line: 461, column: 6, scope: !6296)
!6296 = distinct !DILexicalBlock(scope: !6242, file: !91, line: 461, column: 6)
!6297 = !DILocation(line: 461, column: 11, scope: !6296)
!6298 = !DILocation(line: 461, column: 6, scope: !6242)
!6299 = !DILocation(line: 461, column: 26, scope: !6296)
!6300 = !DILocation(line: 462, column: 6, scope: !6301)
!6301 = distinct !DILexicalBlock(scope: !6242, file: !91, line: 462, column: 6)
!6302 = !DILocation(line: 462, column: 11, scope: !6301)
!6303 = !DILocation(line: 462, column: 6, scope: !6242)
!6304 = !DILocation(line: 462, column: 26, scope: !6301)
!6305 = !DILocation(line: 463, column: 6, scope: !6306)
!6306 = distinct !DILexicalBlock(scope: !6242, file: !91, line: 463, column: 6)
!6307 = !DILocation(line: 463, column: 11, scope: !6306)
!6308 = !DILocation(line: 463, column: 6, scope: !6242)
!6309 = !DILocation(line: 463, column: 26, scope: !6306)
!6310 = !DILocation(line: 464, column: 6, scope: !6311)
!6311 = distinct !DILexicalBlock(scope: !6242, file: !91, line: 464, column: 6)
!6312 = !DILocation(line: 464, column: 11, scope: !6311)
!6313 = !DILocation(line: 464, column: 6, scope: !6242)
!6314 = !DILocation(line: 464, column: 26, scope: !6311)
!6315 = !DILocation(line: 465, column: 6, scope: !6316)
!6316 = distinct !DILexicalBlock(scope: !6242, file: !91, line: 465, column: 6)
!6317 = !DILocation(line: 465, column: 11, scope: !6316)
!6318 = !DILocation(line: 465, column: 6, scope: !6242)
!6319 = !DILocation(line: 465, column: 26, scope: !6316)
!6320 = !DILocation(line: 466, column: 6, scope: !6321)
!6321 = distinct !DILexicalBlock(scope: !6242, file: !91, line: 466, column: 6)
!6322 = !DILocation(line: 466, column: 11, scope: !6321)
!6323 = !DILocation(line: 466, column: 6, scope: !6242)
!6324 = !DILocation(line: 466, column: 26, scope: !6321)
!6325 = !DILocation(line: 467, column: 6, scope: !6326)
!6326 = distinct !DILexicalBlock(scope: !6242, file: !91, line: 467, column: 6)
!6327 = !DILocation(line: 467, column: 11, scope: !6326)
!6328 = !DILocation(line: 467, column: 6, scope: !6242)
!6329 = !DILocation(line: 467, column: 26, scope: !6326)
!6330 = !DILocation(line: 468, column: 6, scope: !6331)
!6331 = distinct !DILexicalBlock(scope: !6242, file: !91, line: 468, column: 6)
!6332 = !DILocation(line: 468, column: 11, scope: !6331)
!6333 = !DILocation(line: 468, column: 6, scope: !6242)
!6334 = !DILocation(line: 468, column: 26, scope: !6331)
!6335 = !DILocation(line: 469, column: 6, scope: !6336)
!6336 = distinct !DILexicalBlock(scope: !6242, file: !91, line: 469, column: 6)
!6337 = !DILocation(line: 469, column: 11, scope: !6336)
!6338 = !DILocation(line: 469, column: 6, scope: !6242)
!6339 = !DILocation(line: 469, column: 26, scope: !6336)
!6340 = !DILocation(line: 470, column: 6, scope: !6341)
!6341 = distinct !DILexicalBlock(scope: !6242, file: !91, line: 470, column: 6)
!6342 = !DILocation(line: 470, column: 11, scope: !6341)
!6343 = !DILocation(line: 470, column: 6, scope: !6242)
!6344 = !DILocation(line: 470, column: 26, scope: !6341)
!6345 = !DILocation(line: 471, column: 6, scope: !6346)
!6346 = distinct !DILexicalBlock(scope: !6242, file: !91, line: 471, column: 6)
!6347 = !DILocation(line: 471, column: 11, scope: !6346)
!6348 = !DILocation(line: 471, column: 6, scope: !6242)
!6349 = !DILocation(line: 471, column: 26, scope: !6346)
!6350 = !DILocation(line: 472, column: 6, scope: !6351)
!6351 = distinct !DILexicalBlock(scope: !6242, file: !91, line: 472, column: 6)
!6352 = !DILocation(line: 472, column: 11, scope: !6351)
!6353 = !DILocation(line: 472, column: 6, scope: !6242)
!6354 = !DILocation(line: 472, column: 26, scope: !6351)
!6355 = !DILocation(line: 473, column: 6, scope: !6356)
!6356 = distinct !DILexicalBlock(scope: !6242, file: !91, line: 473, column: 6)
!6357 = !DILocation(line: 473, column: 11, scope: !6356)
!6358 = !DILocation(line: 473, column: 6, scope: !6242)
!6359 = !DILocation(line: 473, column: 26, scope: !6356)
!6360 = !DILocation(line: 474, column: 6, scope: !6361)
!6361 = distinct !DILexicalBlock(scope: !6242, file: !91, line: 474, column: 6)
!6362 = !DILocation(line: 474, column: 11, scope: !6361)
!6363 = !DILocation(line: 474, column: 6, scope: !6242)
!6364 = !DILocation(line: 474, column: 27, scope: !6361)
!6365 = !DILocation(line: 475, column: 6, scope: !6366)
!6366 = distinct !DILexicalBlock(scope: !6242, file: !91, line: 475, column: 6)
!6367 = !DILocation(line: 475, column: 11, scope: !6366)
!6368 = !DILocation(line: 475, column: 6, scope: !6242)
!6369 = !DILocation(line: 475, column: 32, scope: !6366)
!6370 = !DILocation(line: 477, column: 50, scope: !6371)
!6371 = distinct !DILexicalBlock(scope: !6242, file: !91, line: 477, column: 6)
!6372 = !DILocation(line: 477, column: 6, scope: !6242)
!6373 = !DILocation(line: 478, column: 3, scope: !6371)
!6374 = !DILocation(line: 478, column: 3, scope: !6375)
!6375 = distinct !DILexicalBlock(scope: !6376, file: !91, line: 478, column: 3)
!6376 = distinct !DILexicalBlock(scope: !6371, file: !91, line: 478, column: 3)
!6377 = !{i32 -2142257902}
!6378 = !DILocation(line: 478, column: 3, scope: !6376)
!6379 = !DILocation(line: 480, column: 3, scope: !6371)
!6380 = !DILocation(line: 480, column: 3, scope: !6381)
!6381 = distinct !DILexicalBlock(scope: !6371, file: !91, line: 480, column: 3)
!6382 = !DILocation(line: 480, column: 3, scope: !6383)
!6383 = distinct !DILexicalBlock(scope: !6381, file: !91, line: 480, column: 3)
!6384 = !DILocation(line: 480, column: 3, scope: !6385)
!6385 = distinct !DILexicalBlock(scope: !6381, file: !91, line: 480, column: 3)
!6386 = !{i64 2152709597, i64 2152709626, i64 2152709672, i64 2152709730, i64 2152709784, i64 2152709838, i64 2152709893, i64 2152709924}
!6387 = !DILocation(line: 483, column: 2, scope: !6242)
!6388 = !DILocation(line: 484, column: 1, scope: !6242)
!6389 = !DISubprogram(name: "kmalloc_trace", scope: !91, file: !91, line: 525, type: !6390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6390 = !DISubroutineType(types: !6391)
!6391 = !{!105, !6392, !828, !776}
!6392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6393, size: 64)
!6393 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6394, line: 11, flags: DIFlagFwdDecl)
!6394 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6395 = distinct !DISubprogram(name: "kmalloc_type", scope: !91, file: !91, line: 401, type: !6396, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6398)
!6396 = !DISubroutineType(types: !6397)
!6397 = !{!90, !828, !104}
!6398 = !{!6399, !6400}
!6399 = !DILocalVariable(name: "flags", arg: 1, scope: !6395, file: !91, line: 401, type: !828)
!6400 = !DILocalVariable(name: "caller", arg: 2, scope: !6395, file: !91, line: 401, type: !104)
!6401 = !DILocation(line: 401, column: 67, scope: !6395)
!6402 = !DILocation(line: 401, column: 88, scope: !6395)
!6403 = !DILocation(line: 407, column: 6, scope: !6404)
!6404 = distinct !DILexicalBlock(scope: !6395, file: !91, line: 407, column: 6)
!6405 = !DILocation(line: 407, column: 6, scope: !6395)
!6406 = !DILocation(line: 413, column: 3, scope: !6404)
!6407 = !DILocation(line: 423, column: 38, scope: !6408)
!6408 = distinct !DILexicalBlock(scope: !6395, file: !91, line: 423, column: 6)
!6409 = !DILocation(line: 423, column: 44, scope: !6408)
!6410 = !DILocation(line: 423, column: 6, scope: !6395)
!6411 = !DILocation(line: 424, column: 3, scope: !6408)
!6412 = !DILocation(line: 426, column: 3, scope: !6413)
!6413 = distinct !DILexicalBlock(scope: !6395, file: !91, line: 425, column: 6)
!6414 = !DILocation(line: 429, column: 1, scope: !6395)
!6415 = !DISubprogram(name: "__kmalloc", scope: !91, file: !91, line: 488, type: !5046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6416 = !DISubprogram(name: "__compiletime_assert_208", scope: !91, file: !91, line: 478, type: !1876, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6417 = distinct !DISubprogram(name: "atomic_inc", scope: !5032, file: !5032, line: 433, type: !6418, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6421)
!6418 = !DISubroutineType(types: !6419)
!6419 = !{null, !6420}
!6420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!6421 = !{!6422}
!6422 = !DILocalVariable(name: "v", arg: 1, scope: !6417, file: !5032, line: 433, type: !6420)
!6423 = !DILocation(line: 433, column: 22, scope: !6417)
!6424 = !DILocation(line: 435, column: 31, scope: !6417)
!6425 = !DILocation(line: 435, column: 2, scope: !6417)
!6426 = !DILocation(line: 436, column: 17, scope: !6417)
!6427 = !DILocation(line: 436, column: 2, scope: !6417)
!6428 = !DILocation(line: 437, column: 1, scope: !6417)
!6429 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6147, file: !6147, line: 94, type: !6148, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6430)
!6430 = !{!6431, !6432}
!6431 = !DILocalVariable(name: "v", arg: 1, scope: !6429, file: !6147, line: 94, type: !6150)
!6432 = !DILocalVariable(name: "size", arg: 2, scope: !6429, file: !6147, line: 94, type: !776)
!6433 = !DILocation(line: 94, column: 79, scope: !6429)
!6434 = !DILocation(line: 94, column: 89, scope: !6429)
!6435 = !DILocation(line: 96, column: 20, scope: !6429)
!6436 = !DILocation(line: 96, column: 23, scope: !6429)
!6437 = !DILocation(line: 96, column: 2, scope: !6429)
!6438 = !DILocation(line: 97, column: 2, scope: !6429)
!6439 = !DILocation(line: 98, column: 1, scope: !6429)
!6440 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !6164, file: !6164, line: 976, type: !6418, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6441)
!6441 = !{!6442}
!6442 = !DILocalVariable(name: "v", arg: 1, scope: !6440, file: !6164, line: 976, type: !6420)
!6443 = !DILocation(line: 976, column: 26, scope: !6440)
!6444 = !DILocation(line: 979, column: 18, scope: !6440)
!6445 = !DILocation(line: 979, column: 2, scope: !6440)
!6446 = !DILocation(line: 983, column: 1, scope: !6440)
!6447 = distinct !DISubprogram(name: "kasan_check_write", scope: !6172, file: !6172, line: 44, type: !6173, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6448)
!6448 = !{!6449, !6450}
!6449 = !DILocalVariable(name: "p", arg: 1, scope: !6447, file: !6172, line: 44, type: !6150)
!6450 = !DILocalVariable(name: "size", arg: 2, scope: !6447, file: !6172, line: 44, type: !7)
!6451 = !DILocation(line: 44, column: 59, scope: !6447)
!6452 = !DILocation(line: 44, column: 75, scope: !6447)
!6453 = !DILocation(line: 46, column: 2, scope: !6447)
!6454 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !6194, file: !6194, line: 51, type: !6418, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6455)
!6455 = !{!6456}
!6456 = !DILocalVariable(name: "v", arg: 1, scope: !6454, file: !6194, line: 51, type: !6420)
!6457 = !DILocation(line: 51, column: 55, scope: !6454)
!6458 = !DILocation(line: 54, column: 16, scope: !6454)
!6459 = !DILocation(line: 54, column: 19, scope: !6454)
!6460 = !DILocation(line: 53, column: 2, scope: !6454)
!6461 = !{i64 2147977204, i64 2147977243, i64 2147977264, i64 2147977301, i64 2147977324, i64 2147977194}
!6462 = !DILocation(line: 55, column: 1, scope: !6454)
!6463 = distinct !DISubprogram(name: "__mmap_lock_trace_start_locking", scope: !5023, file: !5023, line: 25, type: !6464, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6466)
!6464 = !DISubroutineType(types: !6465)
!6465 = !{null, !129, !455}
!6466 = !{!6467, !6468}
!6467 = !DILocalVariable(name: "mm", arg: 1, scope: !6463, file: !5023, line: 25, type: !129)
!6468 = !DILocalVariable(name: "write", arg: 2, scope: !6463, file: !5023, line: 26, type: !455)
!6469 = !DILocation(line: 25, column: 70, scope: !6463)
!6470 = !DILocation(line: 26, column: 15, scope: !6463)
!6471 = !DILocation(line: 28, column: 6, scope: !6472)
!6472 = distinct !DILexicalBlock(scope: !6463, file: !5023, line: 28, column: 6)
!6473 = !DILocation(line: 28, column: 6, scope: !6463)
!6474 = !DILocation(line: 29, column: 38, scope: !6472)
!6475 = !DILocation(line: 29, column: 42, scope: !6472)
!6476 = !DILocation(line: 29, column: 3, scope: !6472)
!6477 = !DILocation(line: 30, column: 1, scope: !6463)
!6478 = !DISubprogram(name: "down_write", scope: !394, file: !394, line: 187, type: !6479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6479 = !DISubroutineType(types: !6480)
!6480 = !{null, !6481}
!6481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!6482 = distinct !DISubprogram(name: "__mmap_lock_trace_acquire_returned", scope: !5023, file: !5023, line: 32, type: !6483, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6485)
!6483 = !DISubroutineType(types: !6484)
!6484 = !{null, !129, !455, !455}
!6485 = !{!6486, !6487, !6488}
!6486 = !DILocalVariable(name: "mm", arg: 1, scope: !6482, file: !5023, line: 32, type: !129)
!6487 = !DILocalVariable(name: "write", arg: 2, scope: !6482, file: !5023, line: 33, type: !455)
!6488 = !DILocalVariable(name: "success", arg: 3, scope: !6482, file: !5023, line: 33, type: !455)
!6489 = !DILocation(line: 32, column: 73, scope: !6482)
!6490 = !DILocation(line: 33, column: 18, scope: !6482)
!6491 = !DILocation(line: 33, column: 30, scope: !6482)
!6492 = !DILocation(line: 35, column: 6, scope: !6493)
!6493 = distinct !DILexicalBlock(scope: !6482, file: !5023, line: 35, column: 6)
!6494 = !DILocation(line: 35, column: 6, scope: !6482)
!6495 = !DILocation(line: 36, column: 41, scope: !6493)
!6496 = !DILocation(line: 36, column: 45, scope: !6493)
!6497 = !DILocation(line: 36, column: 52, scope: !6493)
!6498 = !DILocation(line: 36, column: 3, scope: !6493)
!6499 = !DILocation(line: 37, column: 1, scope: !6482)
!6500 = distinct !DISubprogram(name: "static_key_false", scope: !6501, file: !6501, line: 205, type: !6502, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6522)
!6501 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!6502 = !DISubroutineType(types: !6503)
!6503 = !{!455, !6504}
!6504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6505, size: 64)
!6505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !6501, line: 85, size: 128, elements: !6506)
!6506 = !{!6507, !6508}
!6507 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6505, file: !6501, line: 86, baseType: !139, size: 32)
!6508 = !DIDerivedType(tag: DW_TAG_member, scope: !6505, file: !6501, line: 101, baseType: !6509, size: 64, offset: 64)
!6509 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6505, file: !6501, line: 101, size: 64, elements: !6510)
!6510 = !{!6511, !6512, !6519}
!6511 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6509, file: !6501, line: 102, baseType: !104, size: 64)
!6512 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !6509, file: !6501, line: 103, baseType: !6513, size: 64)
!6513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6514, size: 64)
!6514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !6501, line: 117, size: 128, elements: !6515)
!6515 = !{!6516, !6517, !6518}
!6516 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !6514, file: !6501, line: 118, baseType: !378, size: 32)
!6517 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !6514, file: !6501, line: 119, baseType: !378, size: 32, offset: 32)
!6518 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !6514, file: !6501, line: 120, baseType: !734, size: 64, offset: 64)
!6519 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6509, file: !6501, line: 104, baseType: !6520, size: 64)
!6520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6521, size: 64)
!6521 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !6501, line: 104, flags: DIFlagFwdDecl)
!6522 = !{!6523}
!6523 = !DILocalVariable(name: "key", arg: 1, scope: !6500, file: !6501, line: 205, type: !6504)
!6524 = !DILocation(line: 205, column: 65, scope: !6500)
!6525 = !DILocation(line: 207, column: 28, scope: !6500)
!6526 = !DILocation(line: 207, column: 9, scope: !6500)
!6527 = !DILocation(line: 207, column: 2, scope: !6500)
!6528 = !DISubprogram(name: "__mmap_lock_do_trace_start_locking", scope: !5023, file: !5023, line: 20, type: !6464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6529 = distinct !DISubprogram(name: "arch_static_branch", scope: !6530, file: !6530, line: 25, type: !6531, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6533)
!6530 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!6531 = !DISubroutineType(types: !6532)
!6532 = !{!455, !6504, !455}
!6533 = !{!6534, !6535, !6536}
!6534 = !DILocalVariable(name: "key", arg: 1, scope: !6529, file: !6530, line: 25, type: !6504)
!6535 = !DILocalVariable(name: "branch", arg: 2, scope: !6529, file: !6530, line: 25, type: !455)
!6536 = !DILabel(scope: !6529, name: "l_yes", file: !6530, line: 33)
!6537 = !DILocation(line: 25, column: 67, scope: !6529)
!6538 = !DILocation(line: 25, column: 77, scope: !6529)
!6539 = !DILocation(line: 30, column: 13, scope: !6529)
!6540 = !DILocation(line: 30, column: 28, scope: !6529)
!6541 = !DILocation(line: 30, column: 26, scope: !6529)
!6542 = !DILocation(line: 27, column: 2, scope: !6529)
!6543 = !{i64 1086310, i64 1086354, i64 2148571041, i64 2148571062, i64 2148571088, i64 2148571121, i64 2148571155, i64 2148571179}
!6544 = !DILocation(line: 32, column: 2, scope: !6529)
!6545 = !DILocation(line: 33, column: 1, scope: !6529)
!6546 = !DILocation(line: 34, column: 2, scope: !6529)
!6547 = !DILocation(line: 35, column: 1, scope: !6529)
!6548 = !DISubprogram(name: "__mmap_lock_do_trace_acquire_returned", scope: !5023, file: !5023, line: 21, type: !6483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6549 = distinct !DISubprogram(name: "__mmap_lock_trace_released", scope: !5023, file: !5023, line: 39, type: !6464, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6550)
!6550 = !{!6551, !6552}
!6551 = !DILocalVariable(name: "mm", arg: 1, scope: !6549, file: !5023, line: 39, type: !129)
!6552 = !DILocalVariable(name: "write", arg: 2, scope: !6549, file: !5023, line: 39, type: !455)
!6553 = !DILocation(line: 39, column: 65, scope: !6549)
!6554 = !DILocation(line: 39, column: 74, scope: !6549)
!6555 = !DILocation(line: 41, column: 6, scope: !6556)
!6556 = distinct !DILexicalBlock(scope: !6549, file: !5023, line: 41, column: 6)
!6557 = !DILocation(line: 41, column: 6, scope: !6549)
!6558 = !DILocation(line: 42, column: 33, scope: !6556)
!6559 = !DILocation(line: 42, column: 37, scope: !6556)
!6560 = !DILocation(line: 42, column: 3, scope: !6556)
!6561 = !DILocation(line: 43, column: 1, scope: !6549)
!6562 = distinct !DISubprogram(name: "vma_end_write_all", scope: !5023, file: !5023, line: 84, type: !3805, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6563)
!6563 = !{!6564}
!6564 = !DILocalVariable(name: "mm", arg: 1, scope: !6562, file: !5023, line: 84, type: !129)
!6565 = !DILocation(line: 84, column: 56, scope: !6562)
!6566 = !DILocation(line: 86, column: 27, scope: !6562)
!6567 = !DILocation(line: 86, column: 2, scope: !6562)
!6568 = !DILocation(line: 94, column: 2, scope: !6562)
!6569 = !DILocation(line: 94, column: 2, scope: !6570)
!6570 = distinct !DILexicalBlock(scope: !6562, file: !5023, line: 94, column: 2)
!6571 = !DILocation(line: 94, column: 2, scope: !6572)
!6572 = distinct !DILexicalBlock(scope: !6570, file: !5023, line: 94, column: 2)
!6573 = !DILocation(line: 94, column: 2, scope: !6574)
!6574 = distinct !DILexicalBlock(scope: !6570, file: !5023, line: 94, column: 2)
!6575 = !DILocation(line: 94, column: 2, scope: !6576)
!6576 = distinct !DILexicalBlock(scope: !6574, file: !5023, line: 94, column: 2)
!6577 = !{i64 2150674523}
!6578 = !DILocation(line: 94, column: 2, scope: !6579)
!6579 = distinct !DILexicalBlock(scope: !6574, file: !5023, line: 94, column: 2)
!6580 = !DILocation(line: 94, column: 2, scope: !6581)
!6581 = distinct !DILexicalBlock(scope: !6579, file: !5023, line: 94, column: 2)
!6582 = !DILocation(line: 94, column: 2, scope: !6583)
!6583 = distinct !DILexicalBlock(scope: !6579, file: !5023, line: 94, column: 2)
!6584 = !DILocation(line: 95, column: 1, scope: !6562)
!6585 = !DISubprogram(name: "up_write", scope: !394, file: !394, line: 203, type: !6479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6586 = !DISubprogram(name: "__mmap_lock_do_trace_released", scope: !5023, file: !5023, line: 23, type: !6464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6587 = distinct !DISubprogram(name: "__hlist_del", scope: !3896, file: !3896, line: 975, type: !5461, scopeLine: 976, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6588)
!6588 = !{!6589, !6590, !6591}
!6589 = !DILocalVariable(name: "n", arg: 1, scope: !6587, file: !3896, line: 975, type: !109)
!6590 = !DILocalVariable(name: "next", scope: !6587, file: !3896, line: 977, type: !109)
!6591 = !DILocalVariable(name: "pprev", scope: !6587, file: !3896, line: 978, type: !115)
!6592 = !DILocation(line: 975, column: 51, scope: !6587)
!6593 = !DILocation(line: 977, column: 2, scope: !6587)
!6594 = !DILocation(line: 977, column: 21, scope: !6587)
!6595 = !DILocation(line: 977, column: 28, scope: !6587)
!6596 = !DILocation(line: 977, column: 31, scope: !6587)
!6597 = !DILocation(line: 978, column: 2, scope: !6587)
!6598 = !DILocation(line: 978, column: 22, scope: !6587)
!6599 = !DILocation(line: 978, column: 30, scope: !6587)
!6600 = !DILocation(line: 978, column: 33, scope: !6587)
!6601 = !DILocation(line: 980, column: 2, scope: !6587)
!6602 = !DILocation(line: 980, column: 2, scope: !6603)
!6603 = distinct !DILexicalBlock(scope: !6587, file: !3896, line: 980, column: 2)
!6604 = !DILocation(line: 980, column: 2, scope: !6605)
!6605 = distinct !DILexicalBlock(scope: !6603, file: !3896, line: 980, column: 2)
!6606 = !DILocation(line: 980, column: 2, scope: !6607)
!6607 = distinct !DILexicalBlock(scope: !6603, file: !3896, line: 980, column: 2)
!6608 = !DILocation(line: 981, column: 6, scope: !6609)
!6609 = distinct !DILexicalBlock(scope: !6587, file: !3896, line: 981, column: 6)
!6610 = !DILocation(line: 981, column: 6, scope: !6587)
!6611 = !DILocation(line: 982, column: 3, scope: !6609)
!6612 = !DILocation(line: 982, column: 3, scope: !6613)
!6613 = distinct !DILexicalBlock(scope: !6609, file: !3896, line: 982, column: 3)
!6614 = !DILocation(line: 982, column: 3, scope: !6615)
!6615 = distinct !DILexicalBlock(scope: !6613, file: !3896, line: 982, column: 3)
!6616 = !DILocation(line: 982, column: 3, scope: !6617)
!6617 = distinct !DILexicalBlock(scope: !6613, file: !3896, line: 982, column: 3)
!6618 = !DILocation(line: 983, column: 1, scope: !6587)
!6619 = distinct !DISubprogram(name: "atomic_dec_and_test", scope: !5032, file: !5032, line: 1372, type: !6620, scopeLine: 1373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6622)
!6620 = !DISubroutineType(types: !6621)
!6621 = !{!455, !6420}
!6622 = !{!6623}
!6623 = !DILocalVariable(name: "v", arg: 1, scope: !6619, file: !5032, line: 1372, type: !6420)
!6624 = !DILocation(line: 1372, column: 31, scope: !6619)
!6625 = !DILocation(line: 1374, column: 2, scope: !6619)
!6626 = !DILocation(line: 1374, column: 2, scope: !6627)
!6627 = distinct !DILexicalBlock(scope: !6619, file: !5032, line: 1374, column: 2)
!6628 = !DILocation(line: 1375, column: 31, scope: !6619)
!6629 = !DILocation(line: 1375, column: 2, scope: !6619)
!6630 = !DILocation(line: 1376, column: 33, scope: !6619)
!6631 = !DILocation(line: 1376, column: 9, scope: !6619)
!6632 = !DILocation(line: 1376, column: 2, scope: !6619)
!6633 = !DISubprogram(name: "__mmdrop", scope: !5076, file: !5076, line: 44, type: !3805, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6634 = distinct !DISubprogram(name: "raw_atomic_dec_and_test", scope: !6164, file: !6164, line: 2254, type: !6620, scopeLine: 2255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6635)
!6635 = !{!6636}
!6636 = !DILocalVariable(name: "v", arg: 1, scope: !6634, file: !6164, line: 2254, type: !6420)
!6637 = !DILocation(line: 2254, column: 35, scope: !6634)
!6638 = !DILocation(line: 2257, column: 34, scope: !6634)
!6639 = !DILocation(line: 2257, column: 9, scope: !6634)
!6640 = !DILocation(line: 2257, column: 2, scope: !6634)
!6641 = distinct !DISubprogram(name: "arch_atomic_dec_and_test", scope: !6194, file: !6194, line: 65, type: !6620, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6642)
!6642 = !{!6643, !6644}
!6643 = !DILocalVariable(name: "v", arg: 1, scope: !6641, file: !6194, line: 65, type: !6420)
!6644 = !DILocalVariable(name: "c", scope: !6645, file: !6194, line: 67, type: !455)
!6645 = distinct !DILexicalBlock(scope: !6641, file: !6194, line: 67, column: 9)
!6646 = !DILocation(line: 65, column: 64, scope: !6641)
!6647 = !DILocation(line: 67, column: 9, scope: !6645)
!6648 = !{i64 2147979324, i64 2147979363, i64 2147979384, i64 2147979421, i64 2147979444, i64 2147979453, i64 2147979527}
!6649 = !DILocation(line: 67, column: 9, scope: !6641)
!6650 = !DILocation(line: 67, column: 2, scope: !6641)
!6651 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6652, file: !6652, line: 51, type: !6653, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6655)
!6652 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!6653 = !DISubroutineType(types: !6654)
!6654 = !{!455, !455}
!6655 = !{!6656}
!6656 = !DILocalVariable(name: "overflow", arg: 1, scope: !6651, file: !6652, line: 51, type: !455)
!6657 = !DILocation(line: 51, column: 60, scope: !6651)
!6658 = !DILocation(line: 53, column: 9, scope: !6651)
!6659 = !DILocation(line: 53, column: 2, scope: !6651)
