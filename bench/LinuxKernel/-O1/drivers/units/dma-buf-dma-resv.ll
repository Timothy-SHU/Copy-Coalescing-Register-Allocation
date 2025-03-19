; ModuleID = 'drivers/dma-buf/dma-resv.c'
source_filename = "drivers/dma-buf/dma-resv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_reservation_ww_class: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad reservation_ww_class ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_resv_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_fini: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_resv_fini ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_reserve_fences: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_resv_reserve_fences ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_add_fence: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_resv_add_fence ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_replace_fences: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_resv_replace_fences ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_iter_first_unlocked: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_resv_iter_first_unlocked ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_iter_next_unlocked: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_resv_iter_next_unlocked ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_iter_first: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_resv_iter_first ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_iter_next: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_resv_iter_next ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_copy_fences: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_resv_copy_fences ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_get_fences: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_resv_get_fences ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_get_singleton: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_resv_get_singleton ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_wait_timeout: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_resv_wait_timeout ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_set_deadline: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_resv_set_deadline ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_test_signaled: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_resv_test_signaled ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_describe: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_resv_describe ; .previous"

%struct.ww_class = type { %struct.atomic64_t, %struct.lock_class_key, %struct.lock_class_key, ptr, ptr, i32 }
%struct.atomic64_t = type { i64 }
%struct.lock_class_key = type {}
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_resv = type { %struct.ww_mutex, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.dma_resv_list = type { %struct.callback_head, i32, i32, [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.13, i64, i64, i64, %struct.kref, i32 }
%union.anon.13 = type { %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dma_resv_iter = type { ptr, i32, ptr, i32, i32, ptr, i32, i8 }
%struct.dma_fence_array = type { %struct.dma_fence, %struct.spinlock, i32, %struct.atomic_t, ptr, %struct.irq_work }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
%struct.rcuwait = type { ptr }

@.str = private unnamed_addr constant [29 x i8] c"reservation_ww_class_acquire\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [27 x i8] c"reservation_ww_class_mutex\00", align 1, !dbg !7
@reservation_ww_class = hidden global %struct.ww_class { %struct.atomic64_t zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, ptr @.str, ptr @.str.1, i32 1 }, align 8, !dbg !12
@__UNIQUE_ID___addressable_reservation_ww_class283 = internal global ptr @reservation_ww_class, section ".discard.addressable", align 8, !dbg !289
@__UNIQUE_ID___addressable_dma_resv_init289 = internal global ptr @dma_resv_init, section ".discard.addressable", align 8, !dbg !291
@__UNIQUE_ID___addressable_dma_resv_fini290 = internal global ptr @dma_resv_fini, section ".discard.addressable", align 8, !dbg !293
@__UNIQUE_ID___addressable_dma_resv_reserve_fences302 = internal global ptr @dma_resv_reserve_fences, section ".discard.addressable", align 8, !dbg !295
@.str.2 = private unnamed_addr constant [27 x i8] c"drivers/dma-buf/dma-resv.c\00", align 1, !dbg !297
@__UNIQUE_ID___addressable_dma_resv_add_fence303 = internal global ptr @dma_resv_add_fence, section ".discard.addressable", align 8, !dbg !299
@__UNIQUE_ID___addressable_dma_resv_replace_fences304 = internal global ptr @dma_resv_replace_fences, section ".discard.addressable", align 8, !dbg !301
@__UNIQUE_ID___addressable_dma_resv_iter_first_unlocked305 = internal global ptr @dma_resv_iter_first_unlocked, section ".discard.addressable", align 8, !dbg !303
@__UNIQUE_ID___addressable_dma_resv_iter_next_unlocked306 = internal global ptr @dma_resv_iter_next_unlocked, section ".discard.addressable", align 8, !dbg !305
@__UNIQUE_ID___addressable_dma_resv_iter_first307 = internal global ptr @dma_resv_iter_first, section ".discard.addressable", align 8, !dbg !307
@__UNIQUE_ID___addressable_dma_resv_iter_next308 = internal global ptr @dma_resv_iter_next, section ".discard.addressable", align 8, !dbg !309
@__UNIQUE_ID___addressable_dma_resv_copy_fences312 = internal global ptr @dma_resv_copy_fences, section ".discard.addressable", align 8, !dbg !311
@__UNIQUE_ID___addressable_dma_resv_get_fences313 = internal global ptr @dma_resv_get_fences, section ".discard.addressable", align 8, !dbg !313
@__UNIQUE_ID___addressable_dma_resv_get_singleton314 = internal global ptr @dma_resv_get_singleton, section ".discard.addressable", align 8, !dbg !315
@__UNIQUE_ID___addressable_dma_resv_wait_timeout315 = internal global ptr @dma_resv_wait_timeout, section ".discard.addressable", align 8, !dbg !317
@__UNIQUE_ID___addressable_dma_resv_set_deadline316 = internal global ptr @dma_resv_set_deadline, section ".discard.addressable", align 8, !dbg !319
@__UNIQUE_ID___addressable_dma_resv_test_signaled317 = internal global ptr @dma_resv_test_signaled, section ".discard.addressable", align 8, !dbg !321
@dma_resv_describe.usage = internal global [4 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 16, !dbg !343
@.str.3 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1, !dbg !323
@.str.4 = private unnamed_addr constant [6 x i8] c"write\00", align 1, !dbg !328
@.str.5 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !333
@.str.6 = private unnamed_addr constant [9 x i8] c"bookkeep\00", align 1, !dbg !338
@.str.7 = private unnamed_addr constant [11 x i8] c"\09%s fence:\00", align 1, !dbg !3630
@__UNIQUE_ID___addressable_dma_resv_describe318 = internal global ptr @dma_resv_describe, section ".discard.addressable", align 8, !dbg !3635
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.8 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !3637
@dma_fence_array_ops = external dso_local constant %struct.dma_fence_ops, align 8
@dma_fence_chain_ops = external dso_local constant %struct.dma_fence_ops, align 8
@.str.9 = private unnamed_addr constant [26 x i8] c"include/linux/dma-fence.h\00", align 1, !dbg !3642
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID___addressable_reservation_ww_class283, ptr @__UNIQUE_ID___addressable_dma_resv_init289, ptr @__UNIQUE_ID___addressable_dma_resv_fini290, ptr @__UNIQUE_ID___addressable_dma_resv_reserve_fences302, ptr @__UNIQUE_ID___addressable_dma_resv_add_fence303, ptr @__UNIQUE_ID___addressable_dma_resv_replace_fences304, ptr @__UNIQUE_ID___addressable_dma_resv_iter_first_unlocked305, ptr @__UNIQUE_ID___addressable_dma_resv_iter_next_unlocked306, ptr @__UNIQUE_ID___addressable_dma_resv_iter_first307, ptr @__UNIQUE_ID___addressable_dma_resv_iter_next308, ptr @__UNIQUE_ID___addressable_dma_resv_copy_fences312, ptr @__UNIQUE_ID___addressable_dma_resv_get_fences313, ptr @__UNIQUE_ID___addressable_dma_resv_get_singleton314, ptr @__UNIQUE_ID___addressable_dma_resv_wait_timeout315, ptr @__UNIQUE_ID___addressable_dma_resv_set_deadline316, ptr @__UNIQUE_ID___addressable_dma_resv_test_signaled317, ptr @__UNIQUE_ID___addressable_dma_resv_describe318], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dma_resv_init(ptr noundef %obj) #0 align 16 !dbg !3664 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !3668, metadata !DIExpression()), !dbg !3669
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !3670
  %lock = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 0, !dbg !3671
  call void @ww_mutex_init(ptr noundef %lock, ptr noundef @reservation_ww_class) #17, !dbg !3672
  br label %do.body, !dbg !3673

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3674

do.body1:                                         ; preds = %do.body
  br label %do.body2, !dbg !3676

do.body2:                                         ; preds = %do.body1
  br label %do.end, !dbg !3678

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3676

do.body3:                                         ; preds = %do.end
  %1 = load ptr, ptr %obj.addr, align 8, !dbg !3680
  %fences = getelementptr inbounds %struct.dma_resv, ptr %1, i32 0, i32 1, !dbg !3680
  store volatile ptr null, ptr %fences, align 8, !dbg !3680
  br label %do.end4, !dbg !3680

do.end4:                                          ; preds = %do.body3
  br label %do.end5, !dbg !3676

do.end5:                                          ; preds = %do.end4
  br label %do.end6, !dbg !3674

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3682
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ww_mutex_init(ptr noundef %lock, ptr noundef %ww_class) #2 align 16 !dbg !3683 {
entry:
  %lock.addr = alloca ptr, align 8
  %ww_class.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3689, metadata !DIExpression()), !dbg !3691
  store ptr %ww_class, ptr %ww_class.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ww_class.addr, metadata !3690, metadata !DIExpression()), !dbg !3692
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3693
  %base = getelementptr inbounds %struct.ww_mutex, ptr %0, i32 0, i32 0, !dbg !3693
  %1 = load ptr, ptr %ww_class.addr, align 8, !dbg !3693
  %mutex_name = getelementptr inbounds %struct.ww_class, ptr %1, i32 0, i32 4, !dbg !3693
  %2 = load ptr, ptr %mutex_name, align 8, !dbg !3693
  %3 = load ptr, ptr %ww_class.addr, align 8, !dbg !3693
  %mutex_key = getelementptr inbounds %struct.ww_class, ptr %3, i32 0, i32 2, !dbg !3693
  call void @__mutex_init(ptr noundef %base, ptr noundef %2, ptr noundef %mutex_key) #17, !dbg !3693
  %4 = load ptr, ptr %lock.addr, align 8, !dbg !3694
  %ctx = getelementptr inbounds %struct.ww_mutex, ptr %4, i32 0, i32 1, !dbg !3695
  store ptr null, ptr %ctx, align 8, !dbg !3696
  ret void, !dbg !3697
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dma_resv_fini(ptr noundef %obj) #0 align 16 !dbg !3698 {
entry:
  %obj.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !3700, metadata !DIExpression()), !dbg !3701
  br label %do.body, !dbg !3702

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3704

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !3702
  %fences = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 1, !dbg !3702
  %1 = load ptr, ptr %fences, align 8, !dbg !3702
  store ptr %1, ptr %tmp, align 8, !dbg !3704
  %2 = load ptr, ptr %tmp, align 8, !dbg !3702
  call void @dma_resv_list_free(ptr noundef %2) #17, !dbg !3706
  %3 = load ptr, ptr %obj.addr, align 8, !dbg !3707
  %lock = getelementptr inbounds %struct.dma_resv, ptr %3, i32 0, i32 0, !dbg !3708
  call void @ww_mutex_destroy(ptr noundef %lock) #17, !dbg !3709
  ret void, !dbg !3710
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_resv_list_free(ptr noundef %list) #0 align 16 !dbg !3711 {
entry:
  %list.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %fence = alloca ptr, align 8
  %___p = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !3715, metadata !DIExpression()), !dbg !3723
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !3724
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3716, metadata !DIExpression()), !dbg !3725
  %0 = load ptr, ptr %list.addr, align 8, !dbg !3726
  %tobool = icmp ne ptr %0, null, !dbg !3726
  br i1 %tobool, label %if.end, label %if.then, !dbg !3728

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3729

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !3730
  br label %for.cond, !dbg !3731

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4, !dbg !3732
  %2 = load ptr, ptr %list.addr, align 8, !dbg !3733
  %num_fences = getelementptr inbounds %struct.dma_resv_list, ptr %2, i32 0, i32 1, !dbg !3734
  %3 = load i32, ptr %num_fences, align 8, !dbg !3734
  %cmp = icmp ult i32 %1, %3, !dbg !3735
  br i1 %cmp, label %for.body, label %for.end, !dbg !3736

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %fence) #18, !dbg !3737
  call void @llvm.dbg.declare(metadata ptr %fence, metadata !3717, metadata !DIExpression()), !dbg !3738
  %4 = load ptr, ptr %list.addr, align 8, !dbg !3739
  %5 = load i32, ptr %i, align 4, !dbg !3740
  call void @dma_resv_list_entry(ptr noundef %4, i32 noundef %5, ptr noundef null, ptr noundef %fence, ptr noundef null) #17, !dbg !3741
  %6 = load ptr, ptr %fence, align 8, !dbg !3742
  call void @dma_fence_put(ptr noundef %6) #17, !dbg !3743
  call void @llvm.lifetime.end.p0(i64 8, ptr %fence) #18, !dbg !3744
  br label %for.inc, !dbg !3745

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !3746
  %inc = add i32 %7, 1, !dbg !3746
  store i32 %inc, ptr %i, align 4, !dbg !3746
  br label %for.cond, !dbg !3747, !llvm.loop !3748

for.end:                                          ; preds = %for.cond
  br label %do.body, !dbg !3752

do.body:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p) #18, !dbg !3753
  call void @llvm.dbg.declare(metadata ptr %___p, metadata !3721, metadata !DIExpression()), !dbg !3753
  %8 = load ptr, ptr %list.addr, align 8, !dbg !3753
  store ptr %8, ptr %___p, align 8, !dbg !3753
  %9 = load ptr, ptr %___p, align 8, !dbg !3754
  %tobool1 = icmp ne ptr %9, null, !dbg !3754
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !3753

if.then2:                                         ; preds = %do.body
  br label %do.body3, !dbg !3756

do.body3:                                         ; preds = %if.then2
  br label %do.cond, !dbg !3758

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !3758

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %___p, align 8, !dbg !3756
  %rcu = getelementptr inbounds %struct.dma_resv_list, ptr %10, i32 0, i32 0, !dbg !3756
  %11 = load ptr, ptr %___p, align 8, !dbg !3756
  call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef %11) #17, !dbg !3756
  br label %if.end4, !dbg !3756

if.end4:                                          ; preds = %do.end, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p) #18, !dbg !3752
  br label %do.cond5, !dbg !3753

do.cond5:                                         ; preds = %if.end4
  br label %do.end6, !dbg !3753

do.end6:                                          ; preds = %do.cond5
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3760
  br label %cleanup, !dbg !3760

cleanup:                                          ; preds = %do.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !3760
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3760

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ww_mutex_destroy(ptr noundef %lock) #2 align 16 !dbg !3761 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3765, metadata !DIExpression()), !dbg !3766
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3767
  %base = getelementptr inbounds %struct.ww_mutex, ptr %0, i32 0, i32 0, !dbg !3768
  call void @mutex_destroy(ptr noundef %base) #17, !dbg !3769
  ret void, !dbg !3770
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @dma_resv_reserve_fences(ptr noundef %obj, i32 noundef %num_fences) #0 align 16 !dbg !3771 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca ptr, align 8
  %num_fences.addr = alloca i32, align 4
  %old = alloca ptr, align 8
  %new = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %max = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x293 = alloca i32, align 4
  %__UNIQUE_ID___y294 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___x295 = alloca i64, align 8
  %__UNIQUE_ID___y296 = alloca i64, align 8
  %tmp35 = alloca i64, align 8
  %usage = alloca i32, align 4
  %fence = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  %fence121 = alloca ptr, align 8
  %tmp125 = alloca ptr, align 8
  %___p = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !3775, metadata !DIExpression()), !dbg !3805
  store i32 %num_fences, ptr %num_fences.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num_fences.addr, metadata !3776, metadata !DIExpression()), !dbg !3806
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #18, !dbg !3807
  call void @llvm.dbg.declare(metadata ptr %old, metadata !3777, metadata !DIExpression()), !dbg !3808
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #18, !dbg !3807
  call void @llvm.dbg.declare(metadata ptr %new, metadata !3778, metadata !DIExpression()), !dbg !3809
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !3810
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3779, metadata !DIExpression()), !dbg !3811
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #18, !dbg !3810
  call void @llvm.dbg.declare(metadata ptr %j, metadata !3780, metadata !DIExpression()), !dbg !3812
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #18, !dbg !3810
  call void @llvm.dbg.declare(metadata ptr %k, metadata !3781, metadata !DIExpression()), !dbg !3813
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #18, !dbg !3810
  call void @llvm.dbg.declare(metadata ptr %max, metadata !3782, metadata !DIExpression()), !dbg !3814
  br label %do.body, !dbg !3815

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !3816
  %lock = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 0, !dbg !3816
  %base = getelementptr inbounds %struct.ww_mutex, ptr %lock, i32 0, i32 0, !dbg !3816
  br label %do.cond, !dbg !3816

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3816

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %obj.addr, align 8, !dbg !3818
  %call = call ptr @dma_resv_fences_list(ptr noundef %1) #17, !dbg !3819
  store ptr %call, ptr %old, align 8, !dbg !3820
  %2 = load ptr, ptr %old, align 8, !dbg !3821
  %tobool = icmp ne ptr %2, null, !dbg !3821
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !3822

land.lhs.true:                                    ; preds = %do.end
  %3 = load ptr, ptr %old, align 8, !dbg !3823
  %max_fences = getelementptr inbounds %struct.dma_resv_list, ptr %3, i32 0, i32 2, !dbg !3824
  %4 = load i32, ptr %max_fences, align 4, !dbg !3824
  %tobool1 = icmp ne i32 %4, 0, !dbg !3823
  br i1 %tobool1, label %if.then, label %if.else, !dbg !3825

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %old, align 8, !dbg !3826
  %num_fences2 = getelementptr inbounds %struct.dma_resv_list, ptr %5, i32 0, i32 1, !dbg !3828
  %6 = load i32, ptr %num_fences2, align 8, !dbg !3828
  %7 = load i32, ptr %num_fences.addr, align 4, !dbg !3829
  %add = add i32 %6, %7, !dbg !3830
  %8 = load ptr, ptr %old, align 8, !dbg !3831
  %max_fences3 = getelementptr inbounds %struct.dma_resv_list, ptr %8, i32 0, i32 2, !dbg !3832
  %9 = load i32, ptr %max_fences3, align 4, !dbg !3832
  %cmp = icmp ule i32 %add, %9, !dbg !3833
  br i1 %cmp, label %if.then4, label %if.end, !dbg !3834

if.then4:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4, !dbg !3835
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3835

if.end:                                           ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x293) #18, !dbg !3836
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x293, metadata !3783, metadata !DIExpression()), !dbg !3836
  %10 = load ptr, ptr %old, align 8, !dbg !3836
  %num_fences5 = getelementptr inbounds %struct.dma_resv_list, ptr %10, i32 0, i32 1, !dbg !3836
  %11 = load i32, ptr %num_fences5, align 8, !dbg !3836
  %12 = load i32, ptr %num_fences.addr, align 4, !dbg !3836
  %add6 = add i32 %11, %12, !dbg !3836
  store i32 %add6, ptr %__UNIQUE_ID___x293, align 4, !dbg !3836
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y294) #18, !dbg !3836
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y294, metadata !3787, metadata !DIExpression()), !dbg !3836
  %13 = load ptr, ptr %old, align 8, !dbg !3836
  %max_fences7 = getelementptr inbounds %struct.dma_resv_list, ptr %13, i32 0, i32 2, !dbg !3836
  %14 = load i32, ptr %max_fences7, align 4, !dbg !3836
  %mul = mul i32 %14, 2, !dbg !3836
  store i32 %mul, ptr %__UNIQUE_ID___y294, align 4, !dbg !3836
  %15 = load i32, ptr %__UNIQUE_ID___x293, align 4, !dbg !3836
  %16 = load i32, ptr %__UNIQUE_ID___y294, align 4, !dbg !3836
  %cmp8 = icmp ugt i32 %15, %16, !dbg !3836
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !3836

cond.true:                                        ; preds = %if.end
  %17 = load i32, ptr %__UNIQUE_ID___x293, align 4, !dbg !3836
  br label %cond.end, !dbg !3836

cond.false:                                       ; preds = %if.end
  %18 = load i32, ptr %__UNIQUE_ID___y294, align 4, !dbg !3836
  br label %cond.end, !dbg !3836

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ %18, %cond.false ], !dbg !3836
  store i32 %cond, ptr %tmp, align 4, !dbg !3836
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y294) #18, !dbg !3837
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x293) #18, !dbg !3837
  %19 = load i32, ptr %tmp, align 4, !dbg !3836
  store i32 %19, ptr %max, align 4, !dbg !3838
  br label %if.end43, !dbg !3839

if.else:                                          ; preds = %land.lhs.true, %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x295) #18, !dbg !3840
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x295, metadata !3788, metadata !DIExpression()), !dbg !3840
  store i64 4, ptr %__UNIQUE_ID___x295, align 8, !dbg !3840
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y296) #18, !dbg !3840
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y296, metadata !3791, metadata !DIExpression()), !dbg !3840
  %20 = load i32, ptr %num_fences.addr, align 4, !dbg !3840
  %21 = call i1 @llvm.is.constant.i32(i32 %20), !dbg !3840
  br i1 %21, label %cond.true9, label %cond.false30, !dbg !3840

cond.true9:                                       ; preds = %if.else
  %22 = load i32, ptr %num_fences.addr, align 4, !dbg !3840
  %cmp10 = icmp eq i32 %22, 1, !dbg !3840
  br i1 %cmp10, label %cond.true11, label %cond.false12, !dbg !3840

cond.true11:                                      ; preds = %cond.true9
  br label %cond.end28, !dbg !3840

cond.false12:                                     ; preds = %cond.true9
  %23 = load i32, ptr %num_fences.addr, align 4, !dbg !3840
  %sub = sub i32 %23, 1, !dbg !3840
  %24 = call i1 @llvm.is.constant.i32(i32 %sub), !dbg !3840
  br i1 %24, label %cond.true13, label %cond.false22, !dbg !3840

cond.true13:                                      ; preds = %cond.false12
  %25 = load i32, ptr %num_fences.addr, align 4, !dbg !3840
  %sub14 = sub i32 %25, 1, !dbg !3840
  %cmp15 = icmp ult i32 %sub14, 2, !dbg !3840
  br i1 %cmp15, label %cond.true16, label %cond.false17, !dbg !3840

cond.true16:                                      ; preds = %cond.true13
  br label %cond.end20, !dbg !3840

cond.false17:                                     ; preds = %cond.true13
  %26 = load i32, ptr %num_fences.addr, align 4, !dbg !3840
  %sub18 = sub i32 %26, 1, !dbg !3840
  %conv = zext i32 %sub18 to i64, !dbg !3840
  %27 = call i64 @llvm.ctlz.i64(i64 %conv, i1 true), !dbg !3840
  %cast = trunc i64 %27 to i32, !dbg !3840
  %sub19 = sub i32 63, %cast, !dbg !3840
  br label %cond.end20, !dbg !3840

cond.end20:                                       ; preds = %cond.false17, %cond.true16
  %cond21 = phi i32 [ 0, %cond.true16 ], [ %sub19, %cond.false17 ], !dbg !3840
  br label %cond.end25, !dbg !3840

cond.false22:                                     ; preds = %cond.false12
  %28 = load i32, ptr %num_fences.addr, align 4, !dbg !3840
  %sub23 = sub i32 %28, 1, !dbg !3840
  %call24 = call i32 @__ilog2_u32(i32 noundef %sub23) #19, !dbg !3840
  br label %cond.end25, !dbg !3840

cond.end25:                                       ; preds = %cond.false22, %cond.end20
  %cond26 = phi i32 [ %cond21, %cond.end20 ], [ %call24, %cond.false22 ], !dbg !3840
  %add27 = add i32 %cond26, 1, !dbg !3840
  %sh_prom = zext i32 %add27 to i64, !dbg !3840
  %shl = shl i64 1, %sh_prom, !dbg !3840
  br label %cond.end28, !dbg !3840

cond.end28:                                       ; preds = %cond.end25, %cond.true11
  %cond29 = phi i64 [ 1, %cond.true11 ], [ %shl, %cond.end25 ], !dbg !3840
  br label %cond.end33, !dbg !3840

cond.false30:                                     ; preds = %if.else
  %29 = load i32, ptr %num_fences.addr, align 4, !dbg !3840
  %conv31 = zext i32 %29 to i64, !dbg !3840
  %call32 = call i64 @__roundup_pow_of_two(i64 noundef %conv31) #19, !dbg !3840
  br label %cond.end33, !dbg !3840

cond.end33:                                       ; preds = %cond.false30, %cond.end28
  %cond34 = phi i64 [ %cond29, %cond.end28 ], [ %call32, %cond.false30 ], !dbg !3840
  store i64 %cond34, ptr %__UNIQUE_ID___y296, align 8, !dbg !3840
  %30 = load i64, ptr %__UNIQUE_ID___x295, align 8, !dbg !3840
  %31 = load i64, ptr %__UNIQUE_ID___y296, align 8, !dbg !3840
  %cmp36 = icmp ugt i64 %30, %31, !dbg !3840
  br i1 %cmp36, label %cond.true38, label %cond.false39, !dbg !3840

cond.true38:                                      ; preds = %cond.end33
  %32 = load i64, ptr %__UNIQUE_ID___x295, align 8, !dbg !3840
  br label %cond.end40, !dbg !3840

cond.false39:                                     ; preds = %cond.end33
  %33 = load i64, ptr %__UNIQUE_ID___y296, align 8, !dbg !3840
  br label %cond.end40, !dbg !3840

cond.end40:                                       ; preds = %cond.false39, %cond.true38
  %cond41 = phi i64 [ %32, %cond.true38 ], [ %33, %cond.false39 ], !dbg !3840
  store i64 %cond41, ptr %tmp35, align 8, !dbg !3840
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y296) #18, !dbg !3841
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x295) #18, !dbg !3841
  %34 = load i64, ptr %tmp35, align 8, !dbg !3840
  %conv42 = trunc i64 %34 to i32, !dbg !3841
  store i32 %conv42, ptr %max, align 4, !dbg !3842
  br label %if.end43

if.end43:                                         ; preds = %cond.end40, %cond.end
  %35 = load i32, ptr %max, align 4, !dbg !3843
  %call44 = call ptr @dma_resv_list_alloc(i32 noundef %35) #17, !dbg !3844
  store ptr %call44, ptr %new, align 8, !dbg !3845
  %36 = load ptr, ptr %new, align 8, !dbg !3846
  %tobool45 = icmp ne ptr %36, null, !dbg !3846
  br i1 %tobool45, label %if.end47, label %if.then46, !dbg !3848

if.then46:                                        ; preds = %if.end43
  store i32 -12, ptr %retval, align 4, !dbg !3849
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3849

if.end47:                                         ; preds = %if.end43
  store i32 0, ptr %i, align 4, !dbg !3850
  store i32 0, ptr %j, align 4, !dbg !3851
  %37 = load i32, ptr %max, align 4, !dbg !3852
  store i32 %37, ptr %k, align 4, !dbg !3853
  br label %for.cond, !dbg !3854

for.cond:                                         ; preds = %for.inc, %if.end47
  %38 = load i32, ptr %i, align 4, !dbg !3855
  %39 = load ptr, ptr %old, align 8, !dbg !3856
  %tobool48 = icmp ne ptr %39, null, !dbg !3856
  br i1 %tobool48, label %cond.true49, label %cond.false51, !dbg !3856

cond.true49:                                      ; preds = %for.cond
  %40 = load ptr, ptr %old, align 8, !dbg !3857
  %num_fences50 = getelementptr inbounds %struct.dma_resv_list, ptr %40, i32 0, i32 1, !dbg !3858
  %41 = load i32, ptr %num_fences50, align 8, !dbg !3858
  br label %cond.end52, !dbg !3856

cond.false51:                                     ; preds = %for.cond
  br label %cond.end52, !dbg !3856

cond.end52:                                       ; preds = %cond.false51, %cond.true49
  %cond53 = phi i32 [ %41, %cond.true49 ], [ 0, %cond.false51 ], !dbg !3856
  %cmp54 = icmp ult i32 %38, %cond53, !dbg !3859
  br i1 %cmp54, label %for.body, label %for.end, !dbg !3860

for.body:                                         ; preds = %cond.end52
  call void @llvm.lifetime.start.p0(i64 4, ptr %usage) #18, !dbg !3861
  call void @llvm.dbg.declare(metadata ptr %usage, metadata !3792, metadata !DIExpression()), !dbg !3862
  call void @llvm.lifetime.start.p0(i64 8, ptr %fence) #18, !dbg !3863
  call void @llvm.dbg.declare(metadata ptr %fence, metadata !3796, metadata !DIExpression()), !dbg !3864
  %42 = load ptr, ptr %old, align 8, !dbg !3865
  %43 = load i32, ptr %i, align 4, !dbg !3866
  %44 = load ptr, ptr %obj.addr, align 8, !dbg !3867
  call void @dma_resv_list_entry(ptr noundef %42, i32 noundef %43, ptr noundef %44, ptr noundef %fence, ptr noundef %usage) #17, !dbg !3868
  %45 = load ptr, ptr %fence, align 8, !dbg !3869
  %call56 = call zeroext i1 @dma_fence_is_signaled(ptr noundef %45) #17, !dbg !3871
  br i1 %call56, label %if.then57, label %if.else70, !dbg !3872

if.then57:                                        ; preds = %for.body
  br label %do.body58, !dbg !3873

do.body58:                                        ; preds = %if.then57
  br label %do.body59, !dbg !3874

do.body59:                                        ; preds = %do.body58
  br label %do.body60, !dbg !3876

do.body60:                                        ; preds = %do.body59
  br label %do.cond61, !dbg !3878

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !3878

do.end62:                                         ; preds = %do.cond61
  br label %do.body63, !dbg !3876

do.body63:                                        ; preds = %do.end62
  %46 = load ptr, ptr %fence, align 8, !dbg !3880
  %47 = load ptr, ptr %new, align 8, !dbg !3880
  %table = getelementptr inbounds %struct.dma_resv_list, ptr %47, i32 0, i32 3, !dbg !3880
  %48 = load i32, ptr %k, align 4, !dbg !3880
  %dec = add i32 %48, -1, !dbg !3880
  store i32 %dec, ptr %k, align 4, !dbg !3880
  %idxprom = zext i32 %dec to i64, !dbg !3880
  %arrayidx = getelementptr [0 x ptr], ptr %table, i64 0, i64 %idxprom, !dbg !3880
  store volatile ptr %46, ptr %arrayidx, align 8, !dbg !3880
  br label %do.cond64, !dbg !3880

do.cond64:                                        ; preds = %do.body63
  br label %do.end65, !dbg !3880

do.end65:                                         ; preds = %do.cond64
  br label %do.cond66, !dbg !3876

do.cond66:                                        ; preds = %do.end65
  br label %do.end67, !dbg !3876

do.end67:                                         ; preds = %do.cond66
  br label %do.cond68, !dbg !3874

do.cond68:                                        ; preds = %do.end67
  br label %do.end69, !dbg !3874

do.end69:                                         ; preds = %do.cond68
  br label %if.end71, !dbg !3874

if.else70:                                        ; preds = %for.body
  %49 = load ptr, ptr %new, align 8, !dbg !3882
  %50 = load i32, ptr %j, align 4, !dbg !3883
  %inc = add i32 %50, 1, !dbg !3883
  store i32 %inc, ptr %j, align 4, !dbg !3883
  %51 = load ptr, ptr %fence, align 8, !dbg !3884
  %52 = load i32, ptr %usage, align 4, !dbg !3885
  call void @dma_resv_list_set(ptr noundef %49, i32 noundef %50, ptr noundef %51, i32 noundef %52) #17, !dbg !3886
  br label %if.end71

if.end71:                                         ; preds = %if.else70, %do.end69
  call void @llvm.lifetime.end.p0(i64 8, ptr %fence) #18, !dbg !3887
  call void @llvm.lifetime.end.p0(i64 4, ptr %usage) #18, !dbg !3887
  br label %for.inc, !dbg !3888

for.inc:                                          ; preds = %if.end71
  %53 = load i32, ptr %i, align 4, !dbg !3889
  %inc72 = add i32 %53, 1, !dbg !3889
  store i32 %inc72, ptr %i, align 4, !dbg !3889
  br label %for.cond, !dbg !3890, !llvm.loop !3891

for.end:                                          ; preds = %cond.end52
  %54 = load i32, ptr %j, align 4, !dbg !3893
  %55 = load ptr, ptr %new, align 8, !dbg !3894
  %num_fences73 = getelementptr inbounds %struct.dma_resv_list, ptr %55, i32 0, i32 1, !dbg !3895
  store i32 %54, ptr %num_fences73, align 8, !dbg !3896
  br label %do.body74, !dbg !3897

do.body74:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #18, !dbg !3898
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !3797, metadata !DIExpression()), !dbg !3898
  %56 = load ptr, ptr %new, align 8, !dbg !3898
  %57 = ptrtoint ptr %56 to i64, !dbg !3898
  store i64 %57, ptr %_r_a_p__v, align 8, !dbg !3898
  br i1 false, label %land.lhs.true75, label %if.else88, !dbg !3899

land.lhs.true75:                                  ; preds = %do.body74
  %58 = load i64, ptr %_r_a_p__v, align 8, !dbg !3899
  %cmp76 = icmp eq i64 %58, 0, !dbg !3899
  br i1 %cmp76, label %if.then78, label %if.else88, !dbg !3898

if.then78:                                        ; preds = %land.lhs.true75
  br label %do.body79, !dbg !3899

do.body79:                                        ; preds = %if.then78
  br label %do.body80, !dbg !3901

do.body80:                                        ; preds = %do.body79
  br label %do.cond81, !dbg !3903

do.cond81:                                        ; preds = %do.body80
  br label %do.end82, !dbg !3903

do.end82:                                         ; preds = %do.cond81
  br label %do.body83, !dbg !3901

do.body83:                                        ; preds = %do.end82
  %59 = load i64, ptr %_r_a_p__v, align 8, !dbg !3905
  %60 = inttoptr i64 %59 to ptr, !dbg !3905
  %61 = load ptr, ptr %obj.addr, align 8, !dbg !3905
  %fences = getelementptr inbounds %struct.dma_resv, ptr %61, i32 0, i32 1, !dbg !3905
  store volatile ptr %60, ptr %fences, align 8, !dbg !3905
  br label %do.cond84, !dbg !3905

do.cond84:                                        ; preds = %do.body83
  br label %do.end85, !dbg !3905

do.end85:                                         ; preds = %do.cond84
  br label %do.cond86, !dbg !3901

do.cond86:                                        ; preds = %do.end85
  br label %do.end87, !dbg !3901

do.end87:                                         ; preds = %do.cond86
  br label %if.end111, !dbg !3901

if.else88:                                        ; preds = %land.lhs.true75, %do.body74
  br label %do.body89, !dbg !3899

do.body89:                                        ; preds = %if.else88
  br label %do.body90, !dbg !3907

do.body90:                                        ; preds = %do.body89
  br label %do.cond91, !dbg !3909

do.cond91:                                        ; preds = %do.body90
  br label %do.end92, !dbg !3909

do.end92:                                         ; preds = %do.cond91
  br label %do.body93, !dbg !3907

do.body93:                                        ; preds = %do.end92
  br label %do.body94, !dbg !3911

do.body94:                                        ; preds = %do.body93
  br label %do.cond95, !dbg !3913

do.cond95:                                        ; preds = %do.body94
  br label %do.end96, !dbg !3913

do.end96:                                         ; preds = %do.cond95
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !dbg !3911, !srcloc !3915
  br label %do.body97, !dbg !3911

do.body97:                                        ; preds = %do.end96
  br label %do.body98, !dbg !3916

do.body98:                                        ; preds = %do.body97
  br label %do.cond99, !dbg !3918

do.cond99:                                        ; preds = %do.body98
  br label %do.end100, !dbg !3918

do.end100:                                        ; preds = %do.cond99
  br label %do.body101, !dbg !3916

do.body101:                                       ; preds = %do.end100
  %62 = load i64, ptr %_r_a_p__v, align 8, !dbg !3920
  %63 = inttoptr i64 %62 to ptr, !dbg !3920
  %64 = load ptr, ptr %obj.addr, align 8, !dbg !3920
  %fences102 = getelementptr inbounds %struct.dma_resv, ptr %64, i32 0, i32 1, !dbg !3920
  store volatile ptr %63, ptr %fences102, align 8, !dbg !3920
  br label %do.cond103, !dbg !3920

do.cond103:                                       ; preds = %do.body101
  br label %do.end104, !dbg !3920

do.end104:                                        ; preds = %do.cond103
  br label %do.cond105, !dbg !3916

do.cond105:                                       ; preds = %do.end104
  br label %do.end106, !dbg !3916

do.end106:                                        ; preds = %do.cond105
  br label %do.cond107, !dbg !3911

do.cond107:                                       ; preds = %do.end106
  br label %do.end108, !dbg !3911

do.end108:                                        ; preds = %do.cond107
  br label %do.cond109, !dbg !3907

do.cond109:                                       ; preds = %do.end108
  br label %do.end110, !dbg !3907

do.end110:                                        ; preds = %do.cond109
  br label %if.end111

if.end111:                                        ; preds = %do.end110, %do.end87
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #18, !dbg !3897
  br label %do.cond112, !dbg !3898

do.cond112:                                       ; preds = %if.end111
  br label %do.end113, !dbg !3898

do.end113:                                        ; preds = %do.cond112
  %65 = load ptr, ptr %old, align 8, !dbg !3922
  %tobool114 = icmp ne ptr %65, null, !dbg !3922
  br i1 %tobool114, label %if.end116, label %if.then115, !dbg !3924

if.then115:                                       ; preds = %do.end113
  store i32 0, ptr %retval, align 4, !dbg !3925
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3925

if.end116:                                        ; preds = %do.end113
  %66 = load i32, ptr %k, align 4, !dbg !3926
  store i32 %66, ptr %i, align 4, !dbg !3927
  br label %for.cond117, !dbg !3928

for.cond117:                                      ; preds = %for.inc129, %if.end116
  %67 = load i32, ptr %i, align 4, !dbg !3929
  %68 = load i32, ptr %max, align 4, !dbg !3930
  %cmp118 = icmp ult i32 %67, %68, !dbg !3931
  br i1 %cmp118, label %for.body120, label %for.end131, !dbg !3932

for.body120:                                      ; preds = %for.cond117
  call void @llvm.lifetime.start.p0(i64 8, ptr %fence121) #18, !dbg !3933
  call void @llvm.dbg.declare(metadata ptr %fence121, metadata !3799, metadata !DIExpression()), !dbg !3934
  br label %do.body122, !dbg !3935

do.body122:                                       ; preds = %for.body120
  br label %do.cond123, !dbg !3937

do.cond123:                                       ; preds = %do.body122
  br label %do.end124, !dbg !3937

do.end124:                                        ; preds = %do.cond123
  %69 = load ptr, ptr %new, align 8, !dbg !3935
  %table126 = getelementptr inbounds %struct.dma_resv_list, ptr %69, i32 0, i32 3, !dbg !3935
  %70 = load i32, ptr %i, align 4, !dbg !3935
  %idxprom127 = zext i32 %70 to i64, !dbg !3935
  %arrayidx128 = getelementptr [0 x ptr], ptr %table126, i64 0, i64 %idxprom127, !dbg !3935
  %71 = load ptr, ptr %arrayidx128, align 8, !dbg !3935
  store ptr %71, ptr %tmp125, align 8, !dbg !3937
  %72 = load ptr, ptr %tmp125, align 8, !dbg !3935
  store ptr %72, ptr %fence121, align 8, !dbg !3939
  %73 = load ptr, ptr %fence121, align 8, !dbg !3940
  call void @dma_fence_put(ptr noundef %73) #17, !dbg !3941
  call void @llvm.lifetime.end.p0(i64 8, ptr %fence121) #18, !dbg !3942
  br label %for.inc129, !dbg !3943

for.inc129:                                       ; preds = %do.end124
  %74 = load i32, ptr %i, align 4, !dbg !3944
  %inc130 = add i32 %74, 1, !dbg !3944
  store i32 %inc130, ptr %i, align 4, !dbg !3944
  br label %for.cond117, !dbg !3945, !llvm.loop !3946

for.end131:                                       ; preds = %for.cond117
  br label %do.body132, !dbg !3948

do.body132:                                       ; preds = %for.end131
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p) #18, !dbg !3949
  call void @llvm.dbg.declare(metadata ptr %___p, metadata !3803, metadata !DIExpression()), !dbg !3949
  %75 = load ptr, ptr %old, align 8, !dbg !3949
  store ptr %75, ptr %___p, align 8, !dbg !3949
  %76 = load ptr, ptr %___p, align 8, !dbg !3950
  %tobool133 = icmp ne ptr %76, null, !dbg !3950
  br i1 %tobool133, label %if.then134, label %if.end138, !dbg !3949

if.then134:                                       ; preds = %do.body132
  br label %do.body135, !dbg !3952

do.body135:                                       ; preds = %if.then134
  br label %do.cond136, !dbg !3954

do.cond136:                                       ; preds = %do.body135
  br label %do.end137, !dbg !3954

do.end137:                                        ; preds = %do.cond136
  %77 = load ptr, ptr %___p, align 8, !dbg !3952
  %rcu = getelementptr inbounds %struct.dma_resv_list, ptr %77, i32 0, i32 0, !dbg !3952
  %78 = load ptr, ptr %___p, align 8, !dbg !3952
  call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef %78) #17, !dbg !3952
  br label %if.end138, !dbg !3952

if.end138:                                        ; preds = %do.end137, %do.body132
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p) #18, !dbg !3948
  br label %do.cond139, !dbg !3949

do.cond139:                                       ; preds = %if.end138
  br label %do.end140, !dbg !3949

do.end140:                                        ; preds = %do.cond139
  store i32 0, ptr %retval, align 4, !dbg !3956
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3956

cleanup:                                          ; preds = %do.end140, %if.then115, %if.then46, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #18, !dbg !3957
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #18, !dbg !3957
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #18, !dbg !3957
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !3957
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #18, !dbg !3957
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #18, !dbg !3957
  %79 = load i32, ptr %retval, align 4, !dbg !3957
  ret i32 %79, !dbg !3957
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dma_resv_fences_list(ptr noundef %obj) #2 align 16 !dbg !3958 {
entry:
  %obj.addr = alloca ptr, align 8
  %__UNIQUE_ID_rcu291 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !3962, metadata !DIExpression()), !dbg !3965
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu291) #18, !dbg !3966
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu291, metadata !3963, metadata !DIExpression()), !dbg !3966
  br label %do.body, !dbg !3967

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3969

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3969

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !3967
  %fences = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 1, !dbg !3967
  %1 = load volatile ptr, ptr %fences, align 8, !dbg !3967
  store ptr %1, ptr %tmp, align 8, !dbg !3969
  %2 = load ptr, ptr %tmp, align 8, !dbg !3967
  store ptr %2, ptr %__UNIQUE_ID_rcu291, align 8, !dbg !3966
  br label %do.body1, !dbg !3966

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !3971

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !3971

do.end3:                                          ; preds = %do.cond2
  %3 = load ptr, ptr %__UNIQUE_ID_rcu291, align 8, !dbg !3966
  store ptr %3, ptr %tmp4, align 8, !dbg !3971
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu291) #18, !dbg !3973
  %4 = load ptr, ptr %tmp4, align 8, !dbg !3966
  ret ptr %4, !dbg !3974
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i32 @__ilog2_u32(i32 noundef %n) #5 align 16 !dbg !3975 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3980, metadata !DIExpression()), !dbg !3981
  %0 = load i32, ptr %n.addr, align 4, !dbg !3982
  %call = call i32 @fls(i32 noundef %0) #17, !dbg !3983
  %sub = sub i32 %call, 1, !dbg !3984
  ret i32 %sub, !dbg !3985
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i64 @__roundup_pow_of_two(i64 noundef %n) #6 align 16 !dbg !3986 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3990, metadata !DIExpression()), !dbg !3991
  %0 = load i64, ptr %n.addr, align 8, !dbg !3992
  %sub = sub i64 %0, 1, !dbg !3993
  %call = call i32 @fls_long(i64 noundef %sub) #17, !dbg !3994
  %sh_prom = zext i32 %call to i64, !dbg !3995
  %shl = shl i64 1, %sh_prom, !dbg !3995
  ret i64 %shl, !dbg !3996
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dma_resv_list_alloc(i32 noundef %max_fences) #0 align 16 !dbg !3997 {
entry:
  %retval = alloca ptr, align 8
  %max_fences.addr = alloca i32, align 4
  %list = alloca ptr, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %max_fences, ptr %max_fences.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_fences.addr, metadata !4001, metadata !DIExpression()), !dbg !4004
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #18, !dbg !4005
  call void @llvm.dbg.declare(metadata ptr %list, metadata !4002, metadata !DIExpression()), !dbg !4006
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #18, !dbg !4007
  call void @llvm.dbg.declare(metadata ptr %size, metadata !4003, metadata !DIExpression()), !dbg !4008
  %0 = load i32, ptr %max_fences.addr, align 4, !dbg !4009
  %conv = zext i32 %0 to i64, !dbg !4009
  %call = call i64 @size_mul(i64 noundef %conv, i64 noundef 8) #17, !dbg !4009
  %call1 = call i64 @size_add(i64 noundef 24, i64 noundef %call) #17, !dbg !4009
  %call2 = call i64 @kmalloc_size_roundup(i64 noundef %call1) #17, !dbg !4010
  store i64 %call2, ptr %size, align 8, !dbg !4011
  %1 = load i64, ptr %size, align 8, !dbg !4012
  %call3 = call noalias ptr @kmalloc(i64 noundef %1, i32 noundef 3264) #20, !dbg !4013
  store ptr %call3, ptr %list, align 8, !dbg !4014
  %2 = load ptr, ptr %list, align 8, !dbg !4015
  %tobool = icmp ne ptr %2, null, !dbg !4015
  br i1 %tobool, label %if.end, label %if.then, !dbg !4017

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4018
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4018

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %size, align 8, !dbg !4019
  %sub = sub i64 %3, 24, !dbg !4020
  %div = udiv i64 %sub, 8, !dbg !4021
  %conv4 = trunc i64 %div to i32, !dbg !4022
  %4 = load ptr, ptr %list, align 8, !dbg !4023
  %max_fences5 = getelementptr inbounds %struct.dma_resv_list, ptr %4, i32 0, i32 2, !dbg !4024
  store i32 %conv4, ptr %max_fences5, align 4, !dbg !4025
  %5 = load ptr, ptr %list, align 8, !dbg !4026
  store ptr %5, ptr %retval, align 8, !dbg !4027
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4027

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #18, !dbg !4028
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #18, !dbg !4028
  %6 = load ptr, ptr %retval, align 8, !dbg !4028
  ret ptr %6, !dbg !4028
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_resv_list_entry(ptr noundef %list, i32 noundef %index, ptr noundef %resv, ptr noundef %fence, ptr noundef %usage) #0 align 16 !dbg !4029 {
entry:
  %list.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %resv.addr = alloca ptr, align 8
  %fence.addr = alloca ptr, align 8
  %usage.addr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID_rcu284 = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4035, metadata !DIExpression()), !dbg !4043
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !4036, metadata !DIExpression()), !dbg !4044
  store ptr %resv, ptr %resv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resv.addr, metadata !4037, metadata !DIExpression()), !dbg !4045
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !4038, metadata !DIExpression()), !dbg !4046
  store ptr %usage, ptr %usage.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %usage.addr, metadata !4039, metadata !DIExpression()), !dbg !4047
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #18, !dbg !4048
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !4040, metadata !DIExpression()), !dbg !4049
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu284) #18, !dbg !4050
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu284, metadata !4041, metadata !DIExpression()), !dbg !4050
  br label %do.body, !dbg !4051

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4053

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4053

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %list.addr, align 8, !dbg !4051
  %table = getelementptr inbounds %struct.dma_resv_list, ptr %0, i32 0, i32 3, !dbg !4051
  %1 = load i32, ptr %index.addr, align 4, !dbg !4051
  %idxprom = zext i32 %1 to i64, !dbg !4051
  %arrayidx = getelementptr [0 x ptr], ptr %table, i64 0, i64 %idxprom, !dbg !4051
  %2 = load volatile ptr, ptr %arrayidx, align 8, !dbg !4051
  store ptr %2, ptr %tmp1, align 8, !dbg !4053
  %3 = load ptr, ptr %tmp1, align 8, !dbg !4051
  store ptr %3, ptr %__UNIQUE_ID_rcu284, align 8, !dbg !4050
  br label %do.body2, !dbg !4050

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !4055

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !4055

do.end4:                                          ; preds = %do.cond3
  %4 = load ptr, ptr %__UNIQUE_ID_rcu284, align 8, !dbg !4050
  store ptr %4, ptr %tmp5, align 8, !dbg !4055
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu284) #18, !dbg !4057
  %5 = load ptr, ptr %tmp5, align 8, !dbg !4050
  %6 = ptrtoint ptr %5 to i64, !dbg !4058
  store i64 %6, ptr %tmp, align 8, !dbg !4059
  %7 = load i64, ptr %tmp, align 8, !dbg !4060
  %and = and i64 %7, -4, !dbg !4061
  %8 = inttoptr i64 %and to ptr, !dbg !4062
  %9 = load ptr, ptr %fence.addr, align 8, !dbg !4063
  store ptr %8, ptr %9, align 8, !dbg !4064
  %10 = load ptr, ptr %usage.addr, align 8, !dbg !4065
  %tobool = icmp ne ptr %10, null, !dbg !4065
  br i1 %tobool, label %if.then, label %if.end, !dbg !4067

if.then:                                          ; preds = %do.end4
  %11 = load i64, ptr %tmp, align 8, !dbg !4068
  %and6 = and i64 %11, 3, !dbg !4069
  %conv = trunc i64 %and6 to i32, !dbg !4068
  %12 = load ptr, ptr %usage.addr, align 8, !dbg !4070
  store i32 %conv, ptr %12, align 4, !dbg !4071
  br label %if.end, !dbg !4072

if.end:                                           ; preds = %if.then, %do.end4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #18, !dbg !4073
  ret void, !dbg !4073
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dma_fence_is_signaled(ptr noundef %fence) #2 align 16 !dbg !4074 {
entry:
  %retval = alloca i1, align 1
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !4076, metadata !DIExpression()), !dbg !4077
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !4078
  %flags = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 5, !dbg !4078
  %1 = ptrtoint ptr %flags to i64, !dbg !4078
  %cmp = icmp ne i64 %1, 0, !dbg !4078
  %conv = zext i1 %cmp to i32, !dbg !4078
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !4078
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !4078

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %fence.addr, align 8, !dbg !4078
  %flags1 = getelementptr inbounds %struct.dma_fence, ptr %3, i32 0, i32 5, !dbg !4078
  %4 = ptrtoint ptr %flags1 to i64, !dbg !4078
  %cmp2 = icmp ne i64 %4, 0, !dbg !4078
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !4078

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %fence.addr, align 8, !dbg !4078
  %flags5 = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 5, !dbg !4078
  %6 = load i64, ptr %flags5, align 8, !dbg !4078
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !4078
  br i1 %7, label %cond.true, label %cond.false, !dbg !4080

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %fence.addr, align 8, !dbg !4078
  %flags6 = getelementptr inbounds %struct.dma_fence, ptr %8, i32 0, i32 5, !dbg !4078
  %call = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %flags6) #17, !dbg !4078
  br i1 %call, label %if.then, label %if.end, !dbg !4078

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %fence.addr, align 8, !dbg !4078
  %flags8 = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 5, !dbg !4078
  %call9 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %flags8) #17, !dbg !4078
  br i1 %call9, label %if.then, label %if.end, !dbg !4080

if.then:                                          ; preds = %cond.false, %cond.true
  store i1 true, ptr %retval, align 1, !dbg !4081
  br label %return, !dbg !4081

if.end:                                           ; preds = %cond.false, %cond.true
  %10 = load ptr, ptr %fence.addr, align 8, !dbg !4082
  %ops = getelementptr inbounds %struct.dma_fence, ptr %10, i32 0, i32 1, !dbg !4084
  %11 = load ptr, ptr %ops, align 8, !dbg !4084
  %signaled = getelementptr inbounds %struct.dma_fence_ops, ptr %11, i32 0, i32 4, !dbg !4085
  %12 = load ptr, ptr %signaled, align 8, !dbg !4085
  %tobool = icmp ne ptr %12, null, !dbg !4082
  br i1 %tobool, label %land.lhs.true11, label %if.end18, !dbg !4086

land.lhs.true11:                                  ; preds = %if.end
  %13 = load ptr, ptr %fence.addr, align 8, !dbg !4087
  %ops12 = getelementptr inbounds %struct.dma_fence, ptr %13, i32 0, i32 1, !dbg !4088
  %14 = load ptr, ptr %ops12, align 8, !dbg !4088
  %signaled13 = getelementptr inbounds %struct.dma_fence_ops, ptr %14, i32 0, i32 4, !dbg !4089
  %15 = load ptr, ptr %signaled13, align 8, !dbg !4089
  %16 = load ptr, ptr %fence.addr, align 8, !dbg !4090
  %call14 = call zeroext i1 %15(ptr noundef %16) #17, !dbg !4087
  br i1 %call14, label %if.then16, label %if.end18, !dbg !4091

if.then16:                                        ; preds = %land.lhs.true11
  %17 = load ptr, ptr %fence.addr, align 8, !dbg !4092
  %call17 = call i32 @dma_fence_signal(ptr noundef %17) #17, !dbg !4094
  store i1 true, ptr %retval, align 1, !dbg !4095
  br label %return, !dbg !4095

if.end18:                                         ; preds = %land.lhs.true11, %if.end
  store i1 false, ptr %retval, align 1, !dbg !4096
  br label %return, !dbg !4096

return:                                           ; preds = %if.end18, %if.then16, %if.then
  %18 = load i1, ptr %retval, align 1, !dbg !4097
  ret i1 %18, !dbg !4097
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_resv_list_set(ptr noundef %list, i32 noundef %index, ptr noundef %fence, i32 noundef %usage) #0 align 16 !dbg !4098 {
entry:
  %list.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %fence.addr = alloca ptr, align 8
  %usage.addr = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4102, metadata !DIExpression()), !dbg !4107
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !4103, metadata !DIExpression()), !dbg !4108
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !4104, metadata !DIExpression()), !dbg !4109
  store i32 %usage, ptr %usage.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %usage.addr, metadata !4105, metadata !DIExpression()), !dbg !4110
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #18, !dbg !4111
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !4106, metadata !DIExpression()), !dbg !4112
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !4113
  %1 = ptrtoint ptr %0 to i64, !dbg !4114
  %2 = load i32, ptr %usage.addr, align 4, !dbg !4115
  %conv = zext i32 %2 to i64, !dbg !4115
  %or = or i64 %1, %conv, !dbg !4116
  store i64 %or, ptr %tmp, align 8, !dbg !4112
  br label %do.body, !dbg !4117

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4118

do.body1:                                         ; preds = %do.body
  br label %do.body2, !dbg !4120

do.body2:                                         ; preds = %do.body1
  br label %do.cond, !dbg !4122

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !4122

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !4120

do.body3:                                         ; preds = %do.end
  %3 = load i64, ptr %tmp, align 8, !dbg !4124
  %4 = inttoptr i64 %3 to ptr, !dbg !4124
  %5 = load ptr, ptr %list.addr, align 8, !dbg !4124
  %table = getelementptr inbounds %struct.dma_resv_list, ptr %5, i32 0, i32 3, !dbg !4124
  %6 = load i32, ptr %index.addr, align 4, !dbg !4124
  %idxprom = zext i32 %6 to i64, !dbg !4124
  %arrayidx = getelementptr [0 x ptr], ptr %table, i64 0, i64 %idxprom, !dbg !4124
  store volatile ptr %4, ptr %arrayidx, align 8, !dbg !4124
  br label %do.cond4, !dbg !4124

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !4124

do.end5:                                          ; preds = %do.cond4
  br label %do.cond6, !dbg !4120

do.cond6:                                         ; preds = %do.end5
  br label %do.end7, !dbg !4120

do.end7:                                          ; preds = %do.cond6
  br label %do.cond8, !dbg !4118

do.cond8:                                         ; preds = %do.end7
  br label %do.end9, !dbg !4118

do.end9:                                          ; preds = %do.cond8
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #18, !dbg !4126
  ret void, !dbg !4126
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_fence_put(ptr noundef %fence) #2 align 16 !dbg !4127 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !4129, metadata !DIExpression()), !dbg !4130
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !4131
  %tobool = icmp ne ptr %0, null, !dbg !4131
  br i1 %tobool, label %if.then, label %if.end, !dbg !4133

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !4134
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6, !dbg !4135
  %call = call i32 @kref_put(ptr noundef %refcount, ptr noundef @dma_fence_release) #17, !dbg !4136
  br label %if.end, !dbg !4136

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4137
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4138 dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dma_resv_add_fence(ptr noundef %obj, ptr noundef %fence, i32 noundef %usage) #0 align 16 !dbg !4142 {
entry:
  %obj.addr = alloca ptr, align 8
  %fence.addr = alloca ptr, align 8
  %usage.addr = alloca i32, align 4
  %fobj = alloca ptr, align 8
  %old = alloca ptr, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %old_usage = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp75 = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp76 = alloca i32, align 4
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !4146, metadata !DIExpression()), !dbg !4168
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !4147, metadata !DIExpression()), !dbg !4169
  store i32 %usage, ptr %usage.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %usage.addr, metadata !4148, metadata !DIExpression()), !dbg !4170
  call void @llvm.lifetime.start.p0(i64 8, ptr %fobj) #18, !dbg !4171
  call void @llvm.dbg.declare(metadata ptr %fobj, metadata !4149, metadata !DIExpression()), !dbg !4172
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #18, !dbg !4173
  call void @llvm.dbg.declare(metadata ptr %old, metadata !4150, metadata !DIExpression()), !dbg !4174
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !4175
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4151, metadata !DIExpression()), !dbg !4176
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #18, !dbg !4175
  call void @llvm.dbg.declare(metadata ptr %count, metadata !4152, metadata !DIExpression()), !dbg !4177
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !4178
  %call = call ptr @dma_fence_get(ptr noundef %0) #17, !dbg !4179
  br label %do.body, !dbg !4180

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %obj.addr, align 8, !dbg !4181
  %lock = getelementptr inbounds %struct.dma_resv, ptr %1, i32 0, i32 0, !dbg !4181
  %base = getelementptr inbounds %struct.ww_mutex, ptr %lock, i32 0, i32 0, !dbg !4181
  br label %do.cond, !dbg !4181

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4181

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !4183
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4153, metadata !DIExpression()), !dbg !4183
  %2 = load ptr, ptr %fence.addr, align 8, !dbg !4183
  %call1 = call zeroext i1 @dma_fence_is_container(ptr noundef %2) #17, !dbg !4183
  %lnot = xor i1 %call1, true, !dbg !4183
  %lnot2 = xor i1 %lnot, true, !dbg !4183
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4183
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4183
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !4184
  %tobool = icmp ne i32 %3, 0, !dbg !4184
  %lnot3 = xor i1 %tobool, true, !dbg !4184
  %lnot5 = xor i1 %lnot3, true, !dbg !4184
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !4184
  %conv = sext i32 %lnot.ext6 to i64, !dbg !4184
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4184
  %tobool7 = icmp ne i64 %expval, 0, !dbg !4184
  br i1 %tobool7, label %if.then, label %if.end, !dbg !4183

if.then:                                          ; preds = %do.end
  br label %do.body8, !dbg !4184

do.body8:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !4185
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4155, metadata !DIExpression()), !dbg !4185
  store i32 2305, ptr %__flags, align 4, !dbg !4185
  br label %do.body9, !dbg !4185

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !4186

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !4186

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !4185

do.body12:                                        ; preds = %do.end11
  %4 = load i32, ptr %__flags, align 4, !dbg !4188
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 294, i32 %4, i64 12) #18, !dbg !4188, !srcloc !4190
  br label %do.cond13, !dbg !4188

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !4188

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !4185

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !4191

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !4191

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !4184
  br label %do.cond18, !dbg !4185

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !4185

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !4185

if.end:                                           ; preds = %do.end19, %do.end
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !4183
  %tobool20 = icmp ne i32 %5, 0, !dbg !4183
  %lnot21 = xor i1 %tobool20, true, !dbg !4183
  %lnot23 = xor i1 %lnot21, true, !dbg !4183
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !4183
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !4183
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !4183
  store i64 %expval26, ptr %tmp, align 8, !dbg !4184
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !4193
  %6 = load i64, ptr %tmp, align 8, !dbg !4183
  %7 = load ptr, ptr %obj.addr, align 8, !dbg !4194
  %call27 = call ptr @dma_resv_fences_list(ptr noundef %7) #17, !dbg !4195
  store ptr %call27, ptr %fobj, align 8, !dbg !4196
  %8 = load ptr, ptr %fobj, align 8, !dbg !4197
  %num_fences = getelementptr inbounds %struct.dma_resv_list, ptr %8, i32 0, i32 1, !dbg !4198
  %9 = load i32, ptr %num_fences, align 8, !dbg !4198
  store i32 %9, ptr %count, align 4, !dbg !4199
  store i32 0, ptr %i, align 4, !dbg !4200
  br label %for.cond, !dbg !4201

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, ptr %i, align 4, !dbg !4202
  %11 = load i32, ptr %count, align 4, !dbg !4203
  %cmp = icmp ult i32 %10, %11, !dbg !4204
  br i1 %cmp, label %for.body, label %for.end, !dbg !4205

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %old_usage) #18, !dbg !4206
  call void @llvm.dbg.declare(metadata ptr %old_usage, metadata !4158, metadata !DIExpression()), !dbg !4207
  %12 = load ptr, ptr %fobj, align 8, !dbg !4208
  %13 = load i32, ptr %i, align 4, !dbg !4209
  %14 = load ptr, ptr %obj.addr, align 8, !dbg !4210
  call void @dma_resv_list_entry(ptr noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef %old, ptr noundef %old_usage) #17, !dbg !4211
  %15 = load ptr, ptr %old, align 8, !dbg !4212
  %context = getelementptr inbounds %struct.dma_fence, ptr %15, i32 0, i32 3, !dbg !4214
  %16 = load i64, ptr %context, align 8, !dbg !4214
  %17 = load ptr, ptr %fence.addr, align 8, !dbg !4215
  %context29 = getelementptr inbounds %struct.dma_fence, ptr %17, i32 0, i32 3, !dbg !4216
  %18 = load i64, ptr %context29, align 8, !dbg !4216
  %cmp30 = icmp eq i64 %16, %18, !dbg !4217
  br i1 %cmp30, label %land.lhs.true, label %lor.lhs.false, !dbg !4218

land.lhs.true:                                    ; preds = %for.body
  %19 = load i32, ptr %old_usage, align 4, !dbg !4219
  %20 = load i32, ptr %usage.addr, align 4, !dbg !4220
  %cmp32 = icmp uge i32 %19, %20, !dbg !4221
  br i1 %cmp32, label %land.lhs.true34, label %lor.lhs.false, !dbg !4222

land.lhs.true34:                                  ; preds = %land.lhs.true
  %21 = load ptr, ptr %fence.addr, align 8, !dbg !4223
  %22 = load ptr, ptr %old, align 8, !dbg !4224
  %call35 = call zeroext i1 @dma_fence_is_later_or_same(ptr noundef %21, ptr noundef %22) #17, !dbg !4225
  br i1 %call35, label %if.then39, label %lor.lhs.false, !dbg !4226

lor.lhs.false:                                    ; preds = %land.lhs.true34, %land.lhs.true, %for.body
  %23 = load ptr, ptr %old, align 8, !dbg !4227
  %call37 = call zeroext i1 @dma_fence_is_signaled(ptr noundef %23) #17, !dbg !4228
  br i1 %call37, label %if.then39, label %if.end40, !dbg !4229

if.then39:                                        ; preds = %lor.lhs.false, %land.lhs.true34
  %24 = load ptr, ptr %fobj, align 8, !dbg !4230
  %25 = load i32, ptr %i, align 4, !dbg !4232
  %26 = load ptr, ptr %fence.addr, align 8, !dbg !4233
  %27 = load i32, ptr %usage.addr, align 4, !dbg !4234
  call void @dma_resv_list_set(ptr noundef %24, i32 noundef %25, ptr noundef %26, i32 noundef %27) #17, !dbg !4235
  %28 = load ptr, ptr %old, align 8, !dbg !4236
  call void @dma_fence_put(ptr noundef %28) #17, !dbg !4237
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4238

if.end40:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4239
  br label %cleanup, !dbg !4239

cleanup:                                          ; preds = %if.end40, %if.then39
  call void @llvm.lifetime.end.p0(i64 4, ptr %old_usage) #18, !dbg !4239
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup81 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !4240

for.inc:                                          ; preds = %cleanup.cont
  %29 = load i32, ptr %i, align 4, !dbg !4241
  %inc = add i32 %29, 1, !dbg !4241
  store i32 %inc, ptr %i, align 4, !dbg !4241
  br label %for.cond, !dbg !4242, !llvm.loop !4243

for.end:                                          ; preds = %for.cond
  br label %do.body41, !dbg !4245

do.body41:                                        ; preds = %for.end
  %30 = load ptr, ptr %fobj, align 8, !dbg !4246
  %num_fences42 = getelementptr inbounds %struct.dma_resv_list, ptr %30, i32 0, i32 1, !dbg !4246
  %31 = load i32, ptr %num_fences42, align 8, !dbg !4246
  %32 = load ptr, ptr %fobj, align 8, !dbg !4246
  %max_fences = getelementptr inbounds %struct.dma_resv_list, ptr %32, i32 0, i32 2, !dbg !4246
  %33 = load i32, ptr %max_fences, align 4, !dbg !4246
  %cmp43 = icmp uge i32 %31, %33, !dbg !4246
  %lnot45 = xor i1 %cmp43, true, !dbg !4246
  %lnot47 = xor i1 %lnot45, true, !dbg !4246
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !4246
  %conv49 = sext i32 %lnot.ext48 to i64, !dbg !4246
  %expval50 = call i64 @llvm.expect.i64(i64 %conv49, i64 0), !dbg !4246
  %tobool51 = icmp ne i64 %expval50, 0, !dbg !4246
  br i1 %tobool51, label %if.then52, label %if.end62, !dbg !4249

if.then52:                                        ; preds = %do.body41
  br label %do.body53, !dbg !4246

do.body53:                                        ; preds = %if.then52
  br label %do.body54, !dbg !4250

do.body54:                                        ; preds = %do.body53
  br label %do.cond55, !dbg !4252

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !4252

do.end56:                                         ; preds = %do.cond55
  br label %do.body57, !dbg !4250

do.body57:                                        ; preds = %do.end56
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 312, i32 0, i64 12) #18, !dbg !4254, !srcloc !4256
  br label %do.cond58, !dbg !4254

do.cond58:                                        ; preds = %do.body57
  br label %do.end59, !dbg !4254

do.end59:                                         ; preds = %do.cond58
  unreachable, !dbg !4250

do.cond60:                                        ; No predecessors!
  br label %do.end61, !dbg !4250

do.end61:                                         ; preds = %do.cond60
  br label %if.end62, !dbg !4250

if.end62:                                         ; preds = %do.end61, %do.body41
  br label %do.cond63, !dbg !4249

do.cond63:                                        ; preds = %if.end62
  br label %do.end64, !dbg !4249

do.end64:                                         ; preds = %do.cond63
  %34 = load i32, ptr %count, align 4, !dbg !4257
  %inc65 = add i32 %34, 1, !dbg !4257
  store i32 %inc65, ptr %count, align 4, !dbg !4257
  %35 = load ptr, ptr %fobj, align 8, !dbg !4258
  %36 = load i32, ptr %i, align 4, !dbg !4259
  %37 = load ptr, ptr %fence.addr, align 8, !dbg !4260
  %38 = load i32, ptr %usage.addr, align 4, !dbg !4261
  call void @dma_resv_list_set(ptr noundef %35, i32 noundef %36, ptr noundef %37, i32 noundef %38) #17, !dbg !4262
  br label %do.body66, !dbg !4263

do.body66:                                        ; preds = %do.end64
  br label %do.body67, !dbg !4264

do.body67:                                        ; preds = %do.body66
  br label %do.cond68, !dbg !4265

do.cond68:                                        ; preds = %do.body67
  br label %do.end69, !dbg !4265

do.end69:                                         ; preds = %do.cond68
  br label %do.body70, !dbg !4264

do.body70:                                        ; preds = %do.end69
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #18, !dbg !4267
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !4162, metadata !DIExpression()), !dbg !4267
  %39 = load ptr, ptr %fobj, align 8, !dbg !4267
  %num_fences71 = getelementptr inbounds %struct.dma_resv_list, ptr %39, i32 0, i32 1, !dbg !4267
  store ptr %num_fences71, ptr %__ai_ptr, align 8, !dbg !4267
  br label %do.body72, !dbg !4267

do.body72:                                        ; preds = %do.body70
  br label %do.cond73, !dbg !4268

do.cond73:                                        ; preds = %do.body72
  br label %do.end74, !dbg !4268

do.end74:                                         ; preds = %do.cond73
  %40 = load ptr, ptr %__ai_ptr, align 8, !dbg !4267
  call void @instrument_atomic_read_write(ptr noundef %40, i64 noundef 4) #17, !dbg !4267
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #18, !dbg !4270
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4166, metadata !DIExpression()), !dbg !4270
  %41 = load i32, ptr %count, align 4, !dbg !4270
  store i32 %41, ptr %__ret, align 4, !dbg !4270
  %42 = load i32, ptr %__ret, align 4, !dbg !4270
  %43 = load ptr, ptr %__ai_ptr, align 8, !dbg !4270
  %44 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %43, i32 %42, ptr elementtype(i32) %43) #18, !dbg !4270, !srcloc !4271
  store i32 %44, ptr %__ret, align 4, !dbg !4270
  %45 = load i32, ptr %__ret, align 4, !dbg !4270
  store i32 %45, ptr %tmp76, align 4, !dbg !4270
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #18, !dbg !4267
  %46 = load i32, ptr %tmp76, align 4, !dbg !4270
  store i32 %46, ptr %tmp75, align 4, !dbg !4267
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #18, !dbg !4272
  %47 = load i32, ptr %tmp75, align 4, !dbg !4267
  br label %do.cond77, !dbg !4272

do.cond77:                                        ; preds = %do.end74
  br label %do.end78, !dbg !4272

do.end78:                                         ; preds = %do.cond77
  br label %do.cond79, !dbg !4264

do.cond79:                                        ; preds = %do.end78
  br label %do.end80, !dbg !4264

do.end80:                                         ; preds = %do.cond79
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4273
  br label %cleanup81, !dbg !4273

cleanup81:                                        ; preds = %do.end80, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #18, !dbg !4273
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !4273
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #18, !dbg !4273
  call void @llvm.lifetime.end.p0(i64 8, ptr %fobj) #18, !dbg !4273
  %cleanup.dest85 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest85, label %unreachable [
    i32 0, label %cleanup.cont86
    i32 1, label %cleanup.cont86
  ]

cleanup.cont86:                                   ; preds = %cleanup81, %cleanup81
  ret void, !dbg !4273

unreachable:                                      ; preds = %cleanup81
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dma_fence_get(ptr noundef %fence) #2 align 16 !dbg !4274 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !4278, metadata !DIExpression()), !dbg !4279
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !4280
  %tobool = icmp ne ptr %0, null, !dbg !4280
  br i1 %tobool, label %if.then, label %if.end, !dbg !4282

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !4283
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6, !dbg !4284
  call void @kref_get(ptr noundef %refcount) #17, !dbg !4285
  br label %if.end, !dbg !4285

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %fence.addr, align 8, !dbg !4286
  ret ptr %2, !dbg !4287
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dma_fence_is_container(ptr noundef %fence) #2 align 16 !dbg !4288 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !4290, metadata !DIExpression()), !dbg !4291
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !4292
  %call = call zeroext i1 @dma_fence_is_array(ptr noundef %0) #17, !dbg !4293
  br i1 %call, label %lor.end, label %lor.rhs, !dbg !4294

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !4295
  %call1 = call zeroext i1 @dma_fence_is_chain(ptr noundef %1) #17, !dbg !4296
  br label %lor.end, !dbg !4294

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %call1, %lor.rhs ]
  ret i1 %2, !dbg !4297
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dma_fence_is_later_or_same(ptr noundef %f1, ptr noundef %f2) #2 align 16 !dbg !4298 {
entry:
  %f1.addr = alloca ptr, align 8
  %f2.addr = alloca ptr, align 8
  store ptr %f1, ptr %f1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f1.addr, metadata !4302, metadata !DIExpression()), !dbg !4304
  store ptr %f2, ptr %f2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f2.addr, metadata !4303, metadata !DIExpression()), !dbg !4305
  %0 = load ptr, ptr %f1.addr, align 8, !dbg !4306
  %1 = load ptr, ptr %f2.addr, align 8, !dbg !4307
  %cmp = icmp eq ptr %0, %1, !dbg !4308
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !4309

lor.rhs:                                          ; preds = %entry
  %2 = load ptr, ptr %f1.addr, align 8, !dbg !4310
  %3 = load ptr, ptr %f2.addr, align 8, !dbg !4311
  %call = call zeroext i1 @dma_fence_is_later(ptr noundef %2, ptr noundef %3) #17, !dbg !4312
  br label %lor.end, !dbg !4309

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %call, %lor.rhs ]
  ret i1 %4, !dbg !4313
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !4314 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4322, metadata !DIExpression()), !dbg !4324
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4323, metadata !DIExpression()), !dbg !4325
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4326
  %1 = load i64, ptr %size.addr, align 8, !dbg !4327
  %conv = trunc i64 %1 to i32, !dbg !4327
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !4328
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4329
  %3 = load i64, ptr %size.addr, align 8, !dbg !4329
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #17, !dbg !4329
  ret void, !dbg !4330
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dma_resv_replace_fences(ptr noundef %obj, i64 noundef %context, ptr noundef %replacement, i32 noundef %usage) #0 align 16 !dbg !4331 {
entry:
  %obj.addr = alloca ptr, align 8
  %context.addr = alloca i64, align 8
  %replacement.addr = alloca ptr, align 8
  %usage.addr = alloca i32, align 4
  %list = alloca ptr, align 8
  %i = alloca i32, align 4
  %old = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !4336, metadata !DIExpression()), !dbg !4346
  store i64 %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !4337, metadata !DIExpression()), !dbg !4347
  store ptr %replacement, ptr %replacement.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %replacement.addr, metadata !4338, metadata !DIExpression()), !dbg !4348
  store i32 %usage, ptr %usage.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %usage.addr, metadata !4339, metadata !DIExpression()), !dbg !4349
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #18, !dbg !4350
  call void @llvm.dbg.declare(metadata ptr %list, metadata !4340, metadata !DIExpression()), !dbg !4351
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !4352
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4341, metadata !DIExpression()), !dbg !4353
  br label %do.body, !dbg !4354

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !4355
  %lock = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 0, !dbg !4355
  %base = getelementptr inbounds %struct.ww_mutex, ptr %lock, i32 0, i32 0, !dbg !4355
  br label %do.cond, !dbg !4355

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4355

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %obj.addr, align 8, !dbg !4357
  %call = call ptr @dma_resv_fences_list(ptr noundef %1) #17, !dbg !4358
  store ptr %call, ptr %list, align 8, !dbg !4359
  store i32 0, ptr %i, align 4, !dbg !4360
  br label %for.cond, !dbg !4361

for.cond:                                         ; preds = %for.inc, %do.end
  %2 = load ptr, ptr %list, align 8, !dbg !4362
  %tobool = icmp ne ptr %2, null, !dbg !4362
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !4363

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !dbg !4364
  %4 = load ptr, ptr %list, align 8, !dbg !4365
  %num_fences = getelementptr inbounds %struct.dma_resv_list, ptr %4, i32 0, i32 1, !dbg !4366
  %5 = load i32, ptr %num_fences, align 8, !dbg !4366
  %cmp = icmp ult i32 %3, %5, !dbg !4367
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ], !dbg !4368
  br i1 %6, label %for.body, label %for.end, !dbg !4369

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #18, !dbg !4370
  call void @llvm.dbg.declare(metadata ptr %old, metadata !4342, metadata !DIExpression()), !dbg !4371
  %7 = load ptr, ptr %list, align 8, !dbg !4372
  %8 = load i32, ptr %i, align 4, !dbg !4373
  %9 = load ptr, ptr %obj.addr, align 8, !dbg !4374
  call void @dma_resv_list_entry(ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %old, ptr noundef null) #17, !dbg !4375
  %10 = load ptr, ptr %old, align 8, !dbg !4376
  %context1 = getelementptr inbounds %struct.dma_fence, ptr %10, i32 0, i32 3, !dbg !4378
  %11 = load i64, ptr %context1, align 8, !dbg !4378
  %12 = load i64, ptr %context.addr, align 8, !dbg !4379
  %cmp2 = icmp ne i64 %11, %12, !dbg !4380
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4381

if.then:                                          ; preds = %for.body
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4382

if.end:                                           ; preds = %for.body
  %13 = load ptr, ptr %list, align 8, !dbg !4383
  %14 = load i32, ptr %i, align 4, !dbg !4384
  %15 = load ptr, ptr %replacement.addr, align 8, !dbg !4385
  %call3 = call ptr @dma_fence_get(ptr noundef %15) #17, !dbg !4386
  %16 = load i32, ptr %usage.addr, align 4, !dbg !4387
  call void @dma_resv_list_set(ptr noundef %13, i32 noundef %14, ptr noundef %call3, i32 noundef %16) #17, !dbg !4388
  %17 = load ptr, ptr %old, align 8, !dbg !4389
  call void @dma_fence_put(ptr noundef %17) #17, !dbg !4390
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4391
  br label %cleanup, !dbg !4391

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #18, !dbg !4391
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 6, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !4392

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %18 = load i32, ptr %i, align 4, !dbg !4393
  %inc = add i32 %18, 1, !dbg !4393
  store i32 %inc, ptr %i, align 4, !dbg !4393
  br label %for.cond, !dbg !4394, !llvm.loop !4395

for.end:                                          ; preds = %land.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !4397
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #18, !dbg !4397
  ret void, !dbg !4397

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @dma_resv_iter_first_unlocked(ptr noundef %cursor) #0 align 16 !dbg !4398 {
entry:
  %cursor.addr = alloca ptr, align 8
  store ptr %cursor, ptr %cursor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cursor.addr, metadata !4403, metadata !DIExpression()), !dbg !4404
  call void @rcu_read_lock() #17, !dbg !4405
  br label %do.body, !dbg !4406

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %cursor.addr, align 8, !dbg !4407
  call void @dma_resv_iter_restart_unlocked(ptr noundef %0) #17, !dbg !4409
  %1 = load ptr, ptr %cursor.addr, align 8, !dbg !4410
  call void @dma_resv_iter_walk_unlocked(ptr noundef %1) #17, !dbg !4411
  br label %do.cond, !dbg !4412

do.cond:                                          ; preds = %do.body
  %2 = load ptr, ptr %cursor.addr, align 8, !dbg !4413
  %obj = getelementptr inbounds %struct.dma_resv_iter, ptr %2, i32 0, i32 0, !dbg !4414
  %3 = load ptr, ptr %obj, align 8, !dbg !4414
  %call = call ptr @dma_resv_fences_list(ptr noundef %3) #17, !dbg !4415
  %4 = load ptr, ptr %cursor.addr, align 8, !dbg !4416
  %fences = getelementptr inbounds %struct.dma_resv_iter, ptr %4, i32 0, i32 5, !dbg !4417
  %5 = load ptr, ptr %fences, align 8, !dbg !4417
  %cmp = icmp ne ptr %call, %5, !dbg !4418
  br i1 %cmp, label %do.body, label %do.end, !dbg !4412, !llvm.loop !4419

do.end:                                           ; preds = %do.cond
  call void @rcu_read_unlock() #17, !dbg !4421
  %6 = load ptr, ptr %cursor.addr, align 8, !dbg !4422
  %fence = getelementptr inbounds %struct.dma_resv_iter, ptr %6, i32 0, i32 2, !dbg !4423
  %7 = load ptr, ptr %fence, align 8, !dbg !4423
  ret ptr %7, !dbg !4424
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #9 align 16 !dbg !4425 {
entry:
  call void @__rcu_read_lock() #17, !dbg !4427
  br label %do.body, !dbg !4428

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4429

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !4431

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4432

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !4434
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_resv_iter_restart_unlocked(ptr noundef %cursor) #0 align 16 !dbg !4435 {
entry:
  %cursor.addr = alloca ptr, align 8
  store ptr %cursor, ptr %cursor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cursor.addr, metadata !4439, metadata !DIExpression()), !dbg !4440
  %0 = load ptr, ptr %cursor.addr, align 8, !dbg !4441
  %index = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 4, !dbg !4442
  store i32 0, ptr %index, align 4, !dbg !4443
  %1 = load ptr, ptr %cursor.addr, align 8, !dbg !4444
  %num_fences = getelementptr inbounds %struct.dma_resv_iter, ptr %1, i32 0, i32 6, !dbg !4445
  store i32 0, ptr %num_fences, align 8, !dbg !4446
  %2 = load ptr, ptr %cursor.addr, align 8, !dbg !4447
  %obj = getelementptr inbounds %struct.dma_resv_iter, ptr %2, i32 0, i32 0, !dbg !4448
  %3 = load ptr, ptr %obj, align 8, !dbg !4448
  %call = call ptr @dma_resv_fences_list(ptr noundef %3) #17, !dbg !4449
  %4 = load ptr, ptr %cursor.addr, align 8, !dbg !4450
  %fences = getelementptr inbounds %struct.dma_resv_iter, ptr %4, i32 0, i32 5, !dbg !4451
  store ptr %call, ptr %fences, align 8, !dbg !4452
  %5 = load ptr, ptr %cursor.addr, align 8, !dbg !4453
  %fences1 = getelementptr inbounds %struct.dma_resv_iter, ptr %5, i32 0, i32 5, !dbg !4455
  %6 = load ptr, ptr %fences1, align 8, !dbg !4455
  %tobool = icmp ne ptr %6, null, !dbg !4453
  br i1 %tobool, label %if.then, label %if.end, !dbg !4456

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %cursor.addr, align 8, !dbg !4457
  %fences2 = getelementptr inbounds %struct.dma_resv_iter, ptr %7, i32 0, i32 5, !dbg !4458
  %8 = load ptr, ptr %fences2, align 8, !dbg !4458
  %num_fences3 = getelementptr inbounds %struct.dma_resv_list, ptr %8, i32 0, i32 1, !dbg !4459
  %9 = load i32, ptr %num_fences3, align 8, !dbg !4459
  %10 = load ptr, ptr %cursor.addr, align 8, !dbg !4460
  %num_fences4 = getelementptr inbounds %struct.dma_resv_iter, ptr %10, i32 0, i32 6, !dbg !4461
  store i32 %9, ptr %num_fences4, align 8, !dbg !4462
  br label %if.end, !dbg !4460

if.end:                                           ; preds = %if.then, %entry
  %11 = load ptr, ptr %cursor.addr, align 8, !dbg !4463
  %is_restarted = getelementptr inbounds %struct.dma_resv_iter, ptr %11, i32 0, i32 7, !dbg !4464
  store i8 1, ptr %is_restarted, align 4, !dbg !4465
  ret void, !dbg !4466
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_resv_iter_walk_unlocked(ptr noundef %cursor) #0 align 16 !dbg !4467 {
entry:
  %cursor.addr = alloca ptr, align 8
  store ptr %cursor, ptr %cursor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cursor.addr, metadata !4469, metadata !DIExpression()), !dbg !4470
  %0 = load ptr, ptr %cursor.addr, align 8, !dbg !4471
  %fences = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 5, !dbg !4473
  %1 = load ptr, ptr %fences, align 8, !dbg !4473
  %tobool = icmp ne ptr %1, null, !dbg !4471
  br i1 %tobool, label %if.end, label %if.then, !dbg !4474

if.then:                                          ; preds = %entry
  br label %do.end, !dbg !4475

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4476

do.body:                                          ; preds = %do.cond, %if.end
  %2 = load ptr, ptr %cursor.addr, align 8, !dbg !4477
  %fence = getelementptr inbounds %struct.dma_resv_iter, ptr %2, i32 0, i32 2, !dbg !4479
  %3 = load ptr, ptr %fence, align 8, !dbg !4479
  call void @dma_fence_put(ptr noundef %3) #17, !dbg !4480
  %4 = load ptr, ptr %cursor.addr, align 8, !dbg !4481
  %index = getelementptr inbounds %struct.dma_resv_iter, ptr %4, i32 0, i32 4, !dbg !4483
  %5 = load i32, ptr %index, align 4, !dbg !4483
  %6 = load ptr, ptr %cursor.addr, align 8, !dbg !4484
  %num_fences = getelementptr inbounds %struct.dma_resv_iter, ptr %6, i32 0, i32 6, !dbg !4485
  %7 = load i32, ptr %num_fences, align 8, !dbg !4485
  %cmp = icmp uge i32 %5, %7, !dbg !4486
  br i1 %cmp, label %if.then1, label %if.end3, !dbg !4487

if.then1:                                         ; preds = %do.body
  %8 = load ptr, ptr %cursor.addr, align 8, !dbg !4488
  %fence2 = getelementptr inbounds %struct.dma_resv_iter, ptr %8, i32 0, i32 2, !dbg !4490
  store ptr null, ptr %fence2, align 8, !dbg !4491
  br label %do.end, !dbg !4492

if.end3:                                          ; preds = %do.body
  %9 = load ptr, ptr %cursor.addr, align 8, !dbg !4493
  %fences4 = getelementptr inbounds %struct.dma_resv_iter, ptr %9, i32 0, i32 5, !dbg !4494
  %10 = load ptr, ptr %fences4, align 8, !dbg !4494
  %11 = load ptr, ptr %cursor.addr, align 8, !dbg !4495
  %index5 = getelementptr inbounds %struct.dma_resv_iter, ptr %11, i32 0, i32 4, !dbg !4496
  %12 = load i32, ptr %index5, align 4, !dbg !4497
  %inc = add i32 %12, 1, !dbg !4497
  store i32 %inc, ptr %index5, align 4, !dbg !4497
  %13 = load ptr, ptr %cursor.addr, align 8, !dbg !4498
  %obj = getelementptr inbounds %struct.dma_resv_iter, ptr %13, i32 0, i32 0, !dbg !4499
  %14 = load ptr, ptr %obj, align 8, !dbg !4499
  %15 = load ptr, ptr %cursor.addr, align 8, !dbg !4500
  %fence6 = getelementptr inbounds %struct.dma_resv_iter, ptr %15, i32 0, i32 2, !dbg !4501
  %16 = load ptr, ptr %cursor.addr, align 8, !dbg !4502
  %fence_usage = getelementptr inbounds %struct.dma_resv_iter, ptr %16, i32 0, i32 3, !dbg !4503
  call void @dma_resv_list_entry(ptr noundef %10, i32 noundef %12, ptr noundef %14, ptr noundef %fence6, ptr noundef %fence_usage) #17, !dbg !4504
  %17 = load ptr, ptr %cursor.addr, align 8, !dbg !4505
  %fence7 = getelementptr inbounds %struct.dma_resv_iter, ptr %17, i32 0, i32 2, !dbg !4506
  %18 = load ptr, ptr %fence7, align 8, !dbg !4506
  %call = call ptr @dma_fence_get_rcu(ptr noundef %18) #17, !dbg !4507
  %19 = load ptr, ptr %cursor.addr, align 8, !dbg !4508
  %fence8 = getelementptr inbounds %struct.dma_resv_iter, ptr %19, i32 0, i32 2, !dbg !4509
  store ptr %call, ptr %fence8, align 8, !dbg !4510
  %20 = load ptr, ptr %cursor.addr, align 8, !dbg !4511
  %fence9 = getelementptr inbounds %struct.dma_resv_iter, ptr %20, i32 0, i32 2, !dbg !4513
  %21 = load ptr, ptr %fence9, align 8, !dbg !4513
  %tobool10 = icmp ne ptr %21, null, !dbg !4511
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !4514

if.then11:                                        ; preds = %if.end3
  %22 = load ptr, ptr %cursor.addr, align 8, !dbg !4515
  call void @dma_resv_iter_restart_unlocked(ptr noundef %22) #17, !dbg !4517
  br label %do.cond, !dbg !4518

if.end12:                                         ; preds = %if.end3
  %23 = load ptr, ptr %cursor.addr, align 8, !dbg !4519
  %fence13 = getelementptr inbounds %struct.dma_resv_iter, ptr %23, i32 0, i32 2, !dbg !4521
  %24 = load ptr, ptr %fence13, align 8, !dbg !4521
  %call14 = call zeroext i1 @dma_fence_is_signaled(ptr noundef %24) #17, !dbg !4522
  br i1 %call14, label %if.end18, label %land.lhs.true, !dbg !4523

land.lhs.true:                                    ; preds = %if.end12
  %25 = load ptr, ptr %cursor.addr, align 8, !dbg !4524
  %usage = getelementptr inbounds %struct.dma_resv_iter, ptr %25, i32 0, i32 1, !dbg !4525
  %26 = load i32, ptr %usage, align 8, !dbg !4525
  %27 = load ptr, ptr %cursor.addr, align 8, !dbg !4526
  %fence_usage15 = getelementptr inbounds %struct.dma_resv_iter, ptr %27, i32 0, i32 3, !dbg !4527
  %28 = load i32, ptr %fence_usage15, align 8, !dbg !4527
  %cmp16 = icmp uge i32 %26, %28, !dbg !4528
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !4529

if.then17:                                        ; preds = %land.lhs.true
  br label %do.end, !dbg !4530

if.end18:                                         ; preds = %land.lhs.true, %if.end12
  br label %do.cond, !dbg !4531

do.cond:                                          ; preds = %if.end18, %if.then11
  br i1 true, label %do.body, label %do.end, !dbg !4531, !llvm.loop !4532

do.end:                                           ; preds = %if.then, %do.cond, %if.then17, %if.then1
  ret void, !dbg !4534
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #2 align 16 !dbg !4535 {
entry:
  br label %do.body, !dbg !4536

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4537

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #17, !dbg !4539
  br label %do.body1, !dbg !4540

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4541

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !4543
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @dma_resv_iter_next_unlocked(ptr noundef %cursor) #0 align 16 !dbg !4544 {
entry:
  %cursor.addr = alloca ptr, align 8
  %restart = alloca i8, align 1
  store ptr %cursor, ptr %cursor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cursor.addr, metadata !4546, metadata !DIExpression()), !dbg !4548
  call void @llvm.lifetime.start.p0(i64 1, ptr %restart) #18, !dbg !4549
  call void @llvm.dbg.declare(metadata ptr %restart, metadata !4547, metadata !DIExpression()), !dbg !4550
  call void @rcu_read_lock() #17, !dbg !4551
  %0 = load ptr, ptr %cursor.addr, align 8, !dbg !4552
  %is_restarted = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 7, !dbg !4553
  store i8 0, ptr %is_restarted, align 4, !dbg !4554
  %1 = load ptr, ptr %cursor.addr, align 8, !dbg !4555
  %obj = getelementptr inbounds %struct.dma_resv_iter, ptr %1, i32 0, i32 0, !dbg !4556
  %2 = load ptr, ptr %obj, align 8, !dbg !4556
  %call = call ptr @dma_resv_fences_list(ptr noundef %2) #17, !dbg !4557
  %3 = load ptr, ptr %cursor.addr, align 8, !dbg !4558
  %fences = getelementptr inbounds %struct.dma_resv_iter, ptr %3, i32 0, i32 5, !dbg !4559
  %4 = load ptr, ptr %fences, align 8, !dbg !4559
  %cmp = icmp ne ptr %call, %4, !dbg !4560
  %frombool = zext i1 %cmp to i8, !dbg !4561
  store i8 %frombool, ptr %restart, align 1, !dbg !4561
  br label %do.body, !dbg !4562

do.body:                                          ; preds = %do.cond, %entry
  %5 = load i8, ptr %restart, align 1, !dbg !4563, !range !4566, !noundef !703
  %tobool = trunc i8 %5 to i1, !dbg !4563
  br i1 %tobool, label %if.then, label %if.end, !dbg !4567

if.then:                                          ; preds = %do.body
  %6 = load ptr, ptr %cursor.addr, align 8, !dbg !4568
  call void @dma_resv_iter_restart_unlocked(ptr noundef %6) #17, !dbg !4569
  br label %if.end, !dbg !4569

if.end:                                           ; preds = %if.then, %do.body
  %7 = load ptr, ptr %cursor.addr, align 8, !dbg !4570
  call void @dma_resv_iter_walk_unlocked(ptr noundef %7) #17, !dbg !4571
  store i8 1, ptr %restart, align 1, !dbg !4572
  br label %do.cond, !dbg !4573

do.cond:                                          ; preds = %if.end
  %8 = load ptr, ptr %cursor.addr, align 8, !dbg !4574
  %obj1 = getelementptr inbounds %struct.dma_resv_iter, ptr %8, i32 0, i32 0, !dbg !4575
  %9 = load ptr, ptr %obj1, align 8, !dbg !4575
  %call2 = call ptr @dma_resv_fences_list(ptr noundef %9) #17, !dbg !4576
  %10 = load ptr, ptr %cursor.addr, align 8, !dbg !4577
  %fences3 = getelementptr inbounds %struct.dma_resv_iter, ptr %10, i32 0, i32 5, !dbg !4578
  %11 = load ptr, ptr %fences3, align 8, !dbg !4578
  %cmp4 = icmp ne ptr %call2, %11, !dbg !4579
  br i1 %cmp4, label %do.body, label %do.end, !dbg !4573, !llvm.loop !4580

do.end:                                           ; preds = %do.cond
  call void @rcu_read_unlock() #17, !dbg !4582
  %12 = load ptr, ptr %cursor.addr, align 8, !dbg !4583
  %fence = getelementptr inbounds %struct.dma_resv_iter, ptr %12, i32 0, i32 2, !dbg !4584
  %13 = load ptr, ptr %fence, align 8, !dbg !4584
  call void @llvm.lifetime.end.p0(i64 1, ptr %restart) #18, !dbg !4585
  ret ptr %13, !dbg !4586
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @dma_resv_iter_first(ptr noundef %cursor) #0 align 16 !dbg !4587 {
entry:
  %cursor.addr = alloca ptr, align 8
  %fence = alloca ptr, align 8
  store ptr %cursor, ptr %cursor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cursor.addr, metadata !4589, metadata !DIExpression()), !dbg !4591
  call void @llvm.lifetime.start.p0(i64 8, ptr %fence) #18, !dbg !4592
  call void @llvm.dbg.declare(metadata ptr %fence, metadata !4590, metadata !DIExpression()), !dbg !4593
  br label %do.body, !dbg !4594

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %cursor.addr, align 8, !dbg !4595
  %obj = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 0, !dbg !4595
  %1 = load ptr, ptr %obj, align 8, !dbg !4595
  %lock = getelementptr inbounds %struct.dma_resv, ptr %1, i32 0, i32 0, !dbg !4595
  %base = getelementptr inbounds %struct.ww_mutex, ptr %lock, i32 0, i32 0, !dbg !4595
  br label %do.cond, !dbg !4595

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4595

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %cursor.addr, align 8, !dbg !4597
  %index = getelementptr inbounds %struct.dma_resv_iter, ptr %2, i32 0, i32 4, !dbg !4598
  store i32 0, ptr %index, align 4, !dbg !4599
  %3 = load ptr, ptr %cursor.addr, align 8, !dbg !4600
  %obj1 = getelementptr inbounds %struct.dma_resv_iter, ptr %3, i32 0, i32 0, !dbg !4601
  %4 = load ptr, ptr %obj1, align 8, !dbg !4601
  %call = call ptr @dma_resv_fences_list(ptr noundef %4) #17, !dbg !4602
  %5 = load ptr, ptr %cursor.addr, align 8, !dbg !4603
  %fences = getelementptr inbounds %struct.dma_resv_iter, ptr %5, i32 0, i32 5, !dbg !4604
  store ptr %call, ptr %fences, align 8, !dbg !4605
  %6 = load ptr, ptr %cursor.addr, align 8, !dbg !4606
  %call2 = call ptr @dma_resv_iter_next(ptr noundef %6) #17, !dbg !4607
  store ptr %call2, ptr %fence, align 8, !dbg !4608
  %7 = load ptr, ptr %cursor.addr, align 8, !dbg !4609
  %is_restarted = getelementptr inbounds %struct.dma_resv_iter, ptr %7, i32 0, i32 7, !dbg !4610
  store i8 1, ptr %is_restarted, align 4, !dbg !4611
  %8 = load ptr, ptr %fence, align 8, !dbg !4612
  call void @llvm.lifetime.end.p0(i64 8, ptr %fence) #18, !dbg !4613
  ret ptr %8, !dbg !4614
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @dma_resv_iter_next(ptr noundef %cursor) #0 align 16 !dbg !4615 {
entry:
  %retval = alloca ptr, align 8
  %cursor.addr = alloca ptr, align 8
  %fence = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cursor, ptr %cursor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cursor.addr, metadata !4617, metadata !DIExpression()), !dbg !4619
  call void @llvm.lifetime.start.p0(i64 8, ptr %fence) #18, !dbg !4620
  call void @llvm.dbg.declare(metadata ptr %fence, metadata !4618, metadata !DIExpression()), !dbg !4621
  br label %do.body, !dbg !4622

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %cursor.addr, align 8, !dbg !4623
  %obj = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 0, !dbg !4623
  %1 = load ptr, ptr %obj, align 8, !dbg !4623
  %lock = getelementptr inbounds %struct.dma_resv, ptr %1, i32 0, i32 0, !dbg !4623
  %base = getelementptr inbounds %struct.ww_mutex, ptr %lock, i32 0, i32 0, !dbg !4623
  br label %do.cond, !dbg !4623

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4623

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %cursor.addr, align 8, !dbg !4625
  %is_restarted = getelementptr inbounds %struct.dma_resv_iter, ptr %2, i32 0, i32 7, !dbg !4626
  store i8 0, ptr %is_restarted, align 4, !dbg !4627
  br label %do.body1, !dbg !4628

do.body1:                                         ; preds = %do.cond6, %do.end
  %3 = load ptr, ptr %cursor.addr, align 8, !dbg !4629
  %fences = getelementptr inbounds %struct.dma_resv_iter, ptr %3, i32 0, i32 5, !dbg !4632
  %4 = load ptr, ptr %fences, align 8, !dbg !4632
  %tobool = icmp ne ptr %4, null, !dbg !4629
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4633

lor.lhs.false:                                    ; preds = %do.body1
  %5 = load ptr, ptr %cursor.addr, align 8, !dbg !4634
  %index = getelementptr inbounds %struct.dma_resv_iter, ptr %5, i32 0, i32 4, !dbg !4635
  %6 = load i32, ptr %index, align 4, !dbg !4635
  %7 = load ptr, ptr %cursor.addr, align 8, !dbg !4636
  %fences2 = getelementptr inbounds %struct.dma_resv_iter, ptr %7, i32 0, i32 5, !dbg !4637
  %8 = load ptr, ptr %fences2, align 8, !dbg !4637
  %num_fences = getelementptr inbounds %struct.dma_resv_list, ptr %8, i32 0, i32 1, !dbg !4638
  %9 = load i32, ptr %num_fences, align 8, !dbg !4638
  %cmp = icmp uge i32 %6, %9, !dbg !4639
  br i1 %cmp, label %if.then, label %if.end, !dbg !4640

if.then:                                          ; preds = %lor.lhs.false, %do.body1
  store ptr null, ptr %retval, align 8, !dbg !4641
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4641

if.end:                                           ; preds = %lor.lhs.false
  %10 = load ptr, ptr %cursor.addr, align 8, !dbg !4642
  %fences3 = getelementptr inbounds %struct.dma_resv_iter, ptr %10, i32 0, i32 5, !dbg !4643
  %11 = load ptr, ptr %fences3, align 8, !dbg !4643
  %12 = load ptr, ptr %cursor.addr, align 8, !dbg !4644
  %index4 = getelementptr inbounds %struct.dma_resv_iter, ptr %12, i32 0, i32 4, !dbg !4645
  %13 = load i32, ptr %index4, align 4, !dbg !4646
  %inc = add i32 %13, 1, !dbg !4646
  store i32 %inc, ptr %index4, align 4, !dbg !4646
  %14 = load ptr, ptr %cursor.addr, align 8, !dbg !4647
  %obj5 = getelementptr inbounds %struct.dma_resv_iter, ptr %14, i32 0, i32 0, !dbg !4648
  %15 = load ptr, ptr %obj5, align 8, !dbg !4648
  %16 = load ptr, ptr %cursor.addr, align 8, !dbg !4649
  %fence_usage = getelementptr inbounds %struct.dma_resv_iter, ptr %16, i32 0, i32 3, !dbg !4650
  call void @dma_resv_list_entry(ptr noundef %11, i32 noundef %13, ptr noundef %15, ptr noundef %fence, ptr noundef %fence_usage) #17, !dbg !4651
  br label %do.cond6, !dbg !4652

do.cond6:                                         ; preds = %if.end
  %17 = load ptr, ptr %cursor.addr, align 8, !dbg !4653
  %fence_usage7 = getelementptr inbounds %struct.dma_resv_iter, ptr %17, i32 0, i32 3, !dbg !4654
  %18 = load i32, ptr %fence_usage7, align 8, !dbg !4654
  %19 = load ptr, ptr %cursor.addr, align 8, !dbg !4655
  %usage = getelementptr inbounds %struct.dma_resv_iter, ptr %19, i32 0, i32 1, !dbg !4656
  %20 = load i32, ptr %usage, align 8, !dbg !4656
  %cmp8 = icmp ugt i32 %18, %20, !dbg !4657
  br i1 %cmp8, label %do.body1, label %do.end9, !dbg !4652, !llvm.loop !4658

do.end9:                                          ; preds = %do.cond6
  %21 = load ptr, ptr %fence, align 8, !dbg !4660
  store ptr %21, ptr %retval, align 8, !dbg !4661
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4661

cleanup:                                          ; preds = %do.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fence) #18, !dbg !4662
  %22 = load ptr, ptr %retval, align 8, !dbg !4662
  ret ptr %22, !dbg !4662
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @dma_resv_copy_fences(ptr noundef %dst, ptr noundef %src) #0 align 16 !dbg !4663 {
entry:
  %retval = alloca i32, align 4
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %cursor = alloca %struct.dma_resv_iter, align 8
  %list = alloca ptr, align 8
  %f = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__tmp = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  %tmp51 = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4667, metadata !DIExpression()), !dbg !4676
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4668, metadata !DIExpression()), !dbg !4677
  call void @llvm.lifetime.start.p0(i64 48, ptr %cursor) #18, !dbg !4678
  call void @llvm.dbg.declare(metadata ptr %cursor, metadata !4669, metadata !DIExpression()), !dbg !4679
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #18, !dbg !4680
  call void @llvm.dbg.declare(metadata ptr %list, metadata !4670, metadata !DIExpression()), !dbg !4681
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #18, !dbg !4682
  call void @llvm.dbg.declare(metadata ptr %f, metadata !4671, metadata !DIExpression()), !dbg !4683
  br label %do.body, !dbg !4684

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !4685
  %lock = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 0, !dbg !4685
  %base = getelementptr inbounds %struct.ww_mutex, ptr %lock, i32 0, i32 0, !dbg !4685
  br label %do.cond, !dbg !4685

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4685

do.end:                                           ; preds = %do.cond
  store ptr null, ptr %list, align 8, !dbg !4687
  %1 = load ptr, ptr %src.addr, align 8, !dbg !4688
  call void @dma_resv_iter_begin(ptr noundef %cursor, ptr noundef %1, i32 noundef 3) #17, !dbg !4689
  %call = call ptr @dma_resv_iter_first_unlocked(ptr noundef %cursor) #17, !dbg !4690
  store ptr %call, ptr %f, align 8, !dbg !4690
  br label %for.cond, !dbg !4690

for.cond:                                         ; preds = %for.inc, %do.end
  %2 = load ptr, ptr %f, align 8, !dbg !4692
  %tobool = icmp ne ptr %2, null, !dbg !4690
  br i1 %tobool, label %for.body, label %for.end, !dbg !4690

for.body:                                         ; preds = %for.cond
  %call1 = call zeroext i1 @dma_resv_iter_is_restarted(ptr noundef %cursor) #17, !dbg !4694
  br i1 %call1, label %if.then, label %if.end6, !dbg !4697

if.then:                                          ; preds = %for.body
  %3 = load ptr, ptr %list, align 8, !dbg !4698
  call void @dma_resv_list_free(ptr noundef %3) #17, !dbg !4700
  %num_fences = getelementptr inbounds %struct.dma_resv_iter, ptr %cursor, i32 0, i32 6, !dbg !4701
  %4 = load i32, ptr %num_fences, align 8, !dbg !4701
  %call2 = call ptr @dma_resv_list_alloc(i32 noundef %4) #17, !dbg !4702
  store ptr %call2, ptr %list, align 8, !dbg !4703
  %5 = load ptr, ptr %list, align 8, !dbg !4704
  %tobool3 = icmp ne ptr %5, null, !dbg !4704
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !4706

if.then4:                                         ; preds = %if.then
  call void @dma_resv_iter_end(ptr noundef %cursor) #17, !dbg !4707
  store i32 -12, ptr %retval, align 4, !dbg !4709
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4709

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %list, align 8, !dbg !4710
  %num_fences5 = getelementptr inbounds %struct.dma_resv_list, ptr %6, i32 0, i32 1, !dbg !4711
  store i32 0, ptr %num_fences5, align 8, !dbg !4712
  br label %if.end6, !dbg !4713

if.end6:                                          ; preds = %if.end, %for.body
  %7 = load ptr, ptr %f, align 8, !dbg !4714
  %call7 = call ptr @dma_fence_get(ptr noundef %7) #17, !dbg !4715
  %8 = load ptr, ptr %list, align 8, !dbg !4716
  %9 = load ptr, ptr %list, align 8, !dbg !4717
  %num_fences8 = getelementptr inbounds %struct.dma_resv_list, ptr %9, i32 0, i32 1, !dbg !4718
  %10 = load i32, ptr %num_fences8, align 8, !dbg !4719
  %inc = add i32 %10, 1, !dbg !4719
  store i32 %inc, ptr %num_fences8, align 8, !dbg !4719
  %11 = load ptr, ptr %f, align 8, !dbg !4720
  %call9 = call i32 @dma_resv_iter_usage(ptr noundef %cursor) #17, !dbg !4721
  call void @dma_resv_list_set(ptr noundef %8, i32 noundef %10, ptr noundef %11, i32 noundef %call9) #17, !dbg !4722
  br label %for.inc, !dbg !4723

for.inc:                                          ; preds = %if.end6
  %call10 = call ptr @dma_resv_iter_next_unlocked(ptr noundef %cursor) #17, !dbg !4692
  store ptr %call10, ptr %f, align 8, !dbg !4692
  br label %for.cond, !dbg !4692, !llvm.loop !4724

for.end:                                          ; preds = %for.cond
  call void @dma_resv_iter_end(ptr noundef %cursor) #17, !dbg !4726
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #18, !dbg !4727
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !4672, metadata !DIExpression()), !dbg !4727
  br label %do.body11, !dbg !4728

do.body11:                                        ; preds = %for.end
  br label %do.cond12, !dbg !4730

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !4730

do.end13:                                         ; preds = %do.cond12
  %12 = load ptr, ptr %dst.addr, align 8, !dbg !4728
  %fences = getelementptr inbounds %struct.dma_resv, ptr %12, i32 0, i32 1, !dbg !4728
  %13 = load ptr, ptr %fences, align 8, !dbg !4728
  store ptr %13, ptr %tmp, align 8, !dbg !4730
  %14 = load ptr, ptr %tmp, align 8, !dbg !4728
  store ptr %14, ptr %__tmp, align 8, !dbg !4727
  br label %do.body14, !dbg !4727

do.body14:                                        ; preds = %do.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #18, !dbg !4732
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !4674, metadata !DIExpression()), !dbg !4732
  %15 = load ptr, ptr %list, align 8, !dbg !4732
  %16 = ptrtoint ptr %15 to i64, !dbg !4732
  store i64 %16, ptr %_r_a_p__v, align 8, !dbg !4732
  br i1 false, label %land.lhs.true, label %if.else, !dbg !4733

land.lhs.true:                                    ; preds = %do.body14
  %17 = load i64, ptr %_r_a_p__v, align 8, !dbg !4733
  %cmp = icmp eq i64 %17, 0, !dbg !4733
  br i1 %cmp, label %if.then15, label %if.else, !dbg !4732

if.then15:                                        ; preds = %land.lhs.true
  br label %do.body16, !dbg !4733

do.body16:                                        ; preds = %if.then15
  br label %do.body17, !dbg !4735

do.body17:                                        ; preds = %do.body16
  br label %do.cond18, !dbg !4737

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !4737

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !4735

do.body20:                                        ; preds = %do.end19
  %18 = load i64, ptr %_r_a_p__v, align 8, !dbg !4739
  %19 = inttoptr i64 %18 to ptr, !dbg !4739
  %20 = load ptr, ptr %dst.addr, align 8, !dbg !4739
  %fences21 = getelementptr inbounds %struct.dma_resv, ptr %20, i32 0, i32 1, !dbg !4739
  store volatile ptr %19, ptr %fences21, align 8, !dbg !4739
  br label %do.cond22, !dbg !4739

do.cond22:                                        ; preds = %do.body20
  br label %do.end23, !dbg !4739

do.end23:                                         ; preds = %do.cond22
  br label %do.cond24, !dbg !4735

do.cond24:                                        ; preds = %do.end23
  br label %do.end25, !dbg !4735

do.end25:                                         ; preds = %do.cond24
  br label %if.end48, !dbg !4735

if.else:                                          ; preds = %land.lhs.true, %do.body14
  br label %do.body26, !dbg !4733

do.body26:                                        ; preds = %if.else
  br label %do.body27, !dbg !4741

do.body27:                                        ; preds = %do.body26
  br label %do.cond28, !dbg !4743

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !4743

do.end29:                                         ; preds = %do.cond28
  br label %do.body30, !dbg !4741

do.body30:                                        ; preds = %do.end29
  br label %do.body31, !dbg !4745

do.body31:                                        ; preds = %do.body30
  br label %do.cond32, !dbg !4747

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !4747

do.end33:                                         ; preds = %do.cond32
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !dbg !4745, !srcloc !4749
  br label %do.body34, !dbg !4745

do.body34:                                        ; preds = %do.end33
  br label %do.body35, !dbg !4750

do.body35:                                        ; preds = %do.body34
  br label %do.cond36, !dbg !4752

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !4752

do.end37:                                         ; preds = %do.cond36
  br label %do.body38, !dbg !4750

do.body38:                                        ; preds = %do.end37
  %21 = load i64, ptr %_r_a_p__v, align 8, !dbg !4754
  %22 = inttoptr i64 %21 to ptr, !dbg !4754
  %23 = load ptr, ptr %dst.addr, align 8, !dbg !4754
  %fences39 = getelementptr inbounds %struct.dma_resv, ptr %23, i32 0, i32 1, !dbg !4754
  store volatile ptr %22, ptr %fences39, align 8, !dbg !4754
  br label %do.cond40, !dbg !4754

do.cond40:                                        ; preds = %do.body38
  br label %do.end41, !dbg !4754

do.end41:                                         ; preds = %do.cond40
  br label %do.cond42, !dbg !4750

do.cond42:                                        ; preds = %do.end41
  br label %do.end43, !dbg !4750

do.end43:                                         ; preds = %do.cond42
  br label %do.cond44, !dbg !4745

do.cond44:                                        ; preds = %do.end43
  br label %do.end45, !dbg !4745

do.end45:                                         ; preds = %do.cond44
  br label %do.cond46, !dbg !4741

do.cond46:                                        ; preds = %do.end45
  br label %do.end47, !dbg !4741

do.end47:                                         ; preds = %do.cond46
  br label %if.end48

if.end48:                                         ; preds = %do.end47, %do.end25
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #18, !dbg !4727
  br label %do.cond49, !dbg !4732

do.cond49:                                        ; preds = %if.end48
  br label %do.end50, !dbg !4732

do.end50:                                         ; preds = %do.cond49
  %24 = load ptr, ptr %__tmp, align 8, !dbg !4727
  store ptr %24, ptr %tmp51, align 8, !dbg !4732
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #18, !dbg !4756
  %25 = load ptr, ptr %tmp51, align 8, !dbg !4727
  store ptr %25, ptr %list, align 8, !dbg !4757
  %26 = load ptr, ptr %list, align 8, !dbg !4758
  call void @dma_resv_list_free(ptr noundef %26) #17, !dbg !4759
  store i32 0, ptr %retval, align 4, !dbg !4760
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4760

cleanup:                                          ; preds = %do.end50, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #18, !dbg !4761
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #18, !dbg !4761
  call void @llvm.lifetime.end.p0(i64 48, ptr %cursor) #18, !dbg !4761
  %27 = load i32, ptr %retval, align 4, !dbg !4761
  ret i32 %27, !dbg !4761
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_resv_iter_begin(ptr noundef %cursor, ptr noundef %obj, i32 noundef %usage) #2 align 16 !dbg !4762 {
entry:
  %cursor.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %usage.addr = alloca i32, align 4
  store ptr %cursor, ptr %cursor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cursor.addr, metadata !4766, metadata !DIExpression()), !dbg !4769
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !4767, metadata !DIExpression()), !dbg !4770
  store i32 %usage, ptr %usage.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %usage.addr, metadata !4768, metadata !DIExpression()), !dbg !4771
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !4772
  %1 = load ptr, ptr %cursor.addr, align 8, !dbg !4773
  %obj1 = getelementptr inbounds %struct.dma_resv_iter, ptr %1, i32 0, i32 0, !dbg !4774
  store ptr %0, ptr %obj1, align 8, !dbg !4775
  %2 = load i32, ptr %usage.addr, align 4, !dbg !4776
  %3 = load ptr, ptr %cursor.addr, align 8, !dbg !4777
  %usage2 = getelementptr inbounds %struct.dma_resv_iter, ptr %3, i32 0, i32 1, !dbg !4778
  store i32 %2, ptr %usage2, align 8, !dbg !4779
  %4 = load ptr, ptr %cursor.addr, align 8, !dbg !4780
  %fence = getelementptr inbounds %struct.dma_resv_iter, ptr %4, i32 0, i32 2, !dbg !4781
  store ptr null, ptr %fence, align 8, !dbg !4782
  ret void, !dbg !4783
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dma_resv_iter_is_restarted(ptr noundef %cursor) #2 align 16 !dbg !4784 {
entry:
  %cursor.addr = alloca ptr, align 8
  store ptr %cursor, ptr %cursor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cursor.addr, metadata !4788, metadata !DIExpression()), !dbg !4789
  %0 = load ptr, ptr %cursor.addr, align 8, !dbg !4790
  %is_restarted = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 7, !dbg !4791
  %1 = load i8, ptr %is_restarted, align 4, !dbg !4791, !range !4566, !noundef !703
  %tobool = trunc i8 %1 to i1, !dbg !4791
  ret i1 %tobool, !dbg !4792
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_resv_iter_end(ptr noundef %cursor) #2 align 16 !dbg !4793 {
entry:
  %cursor.addr = alloca ptr, align 8
  store ptr %cursor, ptr %cursor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cursor.addr, metadata !4795, metadata !DIExpression()), !dbg !4796
  %0 = load ptr, ptr %cursor.addr, align 8, !dbg !4797
  %fence = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 2, !dbg !4798
  %1 = load ptr, ptr %fence, align 8, !dbg !4798
  call void @dma_fence_put(ptr noundef %1) #17, !dbg !4799
  ret void, !dbg !4800
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dma_resv_iter_usage(ptr noundef %cursor) #2 align 16 !dbg !4801 {
entry:
  %cursor.addr = alloca ptr, align 8
  store ptr %cursor, ptr %cursor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cursor.addr, metadata !4805, metadata !DIExpression()), !dbg !4806
  %0 = load ptr, ptr %cursor.addr, align 8, !dbg !4807
  %fence_usage = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 3, !dbg !4808
  %1 = load i32, ptr %fence_usage, align 8, !dbg !4808
  ret i32 %1, !dbg !4809
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @dma_resv_get_fences(ptr noundef %obj, i32 noundef %usage, ptr noundef %num_fences, ptr noundef %fences) #0 align 16 !dbg !4810 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca ptr, align 8
  %usage.addr = alloca i32, align 4
  %num_fences.addr = alloca ptr, align 8
  %fences.addr = alloca ptr, align 8
  %cursor = alloca %struct.dma_resv_iter, align 8
  %fence = alloca ptr, align 8
  %new_fences = alloca ptr, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !4815, metadata !DIExpression()), !dbg !4828
  store i32 %usage, ptr %usage.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %usage.addr, metadata !4816, metadata !DIExpression()), !dbg !4829
  store ptr %num_fences, ptr %num_fences.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num_fences.addr, metadata !4817, metadata !DIExpression()), !dbg !4830
  store ptr %fences, ptr %fences.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fences.addr, metadata !4818, metadata !DIExpression()), !dbg !4831
  call void @llvm.lifetime.start.p0(i64 48, ptr %cursor) #18, !dbg !4832
  call void @llvm.dbg.declare(metadata ptr %cursor, metadata !4819, metadata !DIExpression()), !dbg !4833
  call void @llvm.lifetime.start.p0(i64 8, ptr %fence) #18, !dbg !4834
  call void @llvm.dbg.declare(metadata ptr %fence, metadata !4820, metadata !DIExpression()), !dbg !4835
  %0 = load ptr, ptr %num_fences.addr, align 8, !dbg !4836
  store i32 0, ptr %0, align 4, !dbg !4837
  %1 = load ptr, ptr %fences.addr, align 8, !dbg !4838
  store ptr null, ptr %1, align 8, !dbg !4839
  %2 = load ptr, ptr %obj.addr, align 8, !dbg !4840
  %3 = load i32, ptr %usage.addr, align 4, !dbg !4841
  call void @dma_resv_iter_begin(ptr noundef %cursor, ptr noundef %2, i32 noundef %3) #17, !dbg !4842
  %call = call ptr @dma_resv_iter_first_unlocked(ptr noundef %cursor) #17, !dbg !4843
  store ptr %call, ptr %fence, align 8, !dbg !4843
  br label %for.cond, !dbg !4843

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %fence, align 8, !dbg !4844
  %tobool = icmp ne ptr %4, null, !dbg !4843
  br i1 %tobool, label %for.body, label %for.end, !dbg !4843

for.body:                                         ; preds = %for.cond
  %call1 = call zeroext i1 @dma_resv_iter_is_restarted(ptr noundef %cursor) #17, !dbg !4845
  br i1 %call1, label %if.then, label %if.end9, !dbg !4846

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_fences) #18, !dbg !4847
  call void @llvm.dbg.declare(metadata ptr %new_fences, metadata !4821, metadata !DIExpression()), !dbg !4848
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #18, !dbg !4849
  call void @llvm.dbg.declare(metadata ptr %count, metadata !4827, metadata !DIExpression()), !dbg !4850
  br label %while.cond, !dbg !4851

while.cond:                                       ; preds = %while.body, %if.then
  %5 = load ptr, ptr %num_fences.addr, align 8, !dbg !4852
  %6 = load i32, ptr %5, align 4, !dbg !4853
  %tobool2 = icmp ne i32 %6, 0, !dbg !4851
  br i1 %tobool2, label %while.body, label %while.end, !dbg !4851

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %fences.addr, align 8, !dbg !4854
  %8 = load ptr, ptr %7, align 8, !dbg !4855
  %9 = load ptr, ptr %num_fences.addr, align 8, !dbg !4856
  %10 = load i32, ptr %9, align 4, !dbg !4857
  %dec = add i32 %10, -1, !dbg !4857
  store i32 %dec, ptr %9, align 4, !dbg !4857
  %idxprom = zext i32 %dec to i64, !dbg !4858
  %arrayidx = getelementptr ptr, ptr %8, i64 %idxprom, !dbg !4858
  %11 = load ptr, ptr %arrayidx, align 8, !dbg !4858
  call void @dma_fence_put(ptr noundef %11) #17, !dbg !4859
  br label %while.cond, !dbg !4851, !llvm.loop !4860

while.end:                                        ; preds = %while.cond
  %num_fences3 = getelementptr inbounds %struct.dma_resv_iter, ptr %cursor, i32 0, i32 6, !dbg !4862
  %12 = load i32, ptr %num_fences3, align 8, !dbg !4862
  %add = add i32 %12, 1, !dbg !4863
  store i32 %add, ptr %count, align 4, !dbg !4864
  %13 = load ptr, ptr %fences.addr, align 8, !dbg !4865
  %14 = load ptr, ptr %13, align 8, !dbg !4866
  %15 = load i32, ptr %count, align 4, !dbg !4867
  %conv = zext i32 %15 to i64, !dbg !4867
  %call4 = call ptr @krealloc_array(ptr noundef %14, i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #21, !dbg !4868
  store ptr %call4, ptr %new_fences, align 8, !dbg !4869
  %16 = load i32, ptr %count, align 4, !dbg !4870
  %tobool5 = icmp ne i32 %16, 0, !dbg !4870
  br i1 %tobool5, label %land.lhs.true, label %if.end, !dbg !4872

land.lhs.true:                                    ; preds = %while.end
  %17 = load ptr, ptr %new_fences, align 8, !dbg !4873
  %tobool6 = icmp ne ptr %17, null, !dbg !4873
  br i1 %tobool6, label %if.end, label %if.then7, !dbg !4874

if.then7:                                         ; preds = %land.lhs.true
  %18 = load ptr, ptr %fences.addr, align 8, !dbg !4875
  %19 = load ptr, ptr %18, align 8, !dbg !4877
  call void @kfree(ptr noundef %19) #17, !dbg !4878
  %20 = load ptr, ptr %fences.addr, align 8, !dbg !4879
  store ptr null, ptr %20, align 8, !dbg !4880
  %21 = load ptr, ptr %num_fences.addr, align 8, !dbg !4881
  store i32 0, ptr %21, align 4, !dbg !4882
  call void @dma_resv_iter_end(ptr noundef %cursor) #17, !dbg !4883
  store i32 -12, ptr %retval, align 4, !dbg !4884
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4884

if.end:                                           ; preds = %land.lhs.true, %while.end
  %22 = load ptr, ptr %new_fences, align 8, !dbg !4885
  %23 = load ptr, ptr %fences.addr, align 8, !dbg !4886
  store ptr %22, ptr %23, align 8, !dbg !4887
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4888
  br label %cleanup, !dbg !4888

cleanup:                                          ; preds = %if.end, %if.then7
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #18, !dbg !4888
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_fences) #18, !dbg !4888
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end9, !dbg !4889

if.end9:                                          ; preds = %cleanup.cont, %for.body
  %24 = load ptr, ptr %fence, align 8, !dbg !4890
  %call10 = call ptr @dma_fence_get(ptr noundef %24) #17, !dbg !4891
  %25 = load ptr, ptr %fences.addr, align 8, !dbg !4892
  %26 = load ptr, ptr %25, align 8, !dbg !4893
  %27 = load ptr, ptr %num_fences.addr, align 8, !dbg !4894
  %28 = load i32, ptr %27, align 4, !dbg !4895
  %inc = add i32 %28, 1, !dbg !4895
  store i32 %inc, ptr %27, align 4, !dbg !4895
  %idxprom11 = zext i32 %28 to i64, !dbg !4896
  %arrayidx12 = getelementptr ptr, ptr %26, i64 %idxprom11, !dbg !4896
  store ptr %call10, ptr %arrayidx12, align 8, !dbg !4897
  br label %for.inc, !dbg !4898

for.inc:                                          ; preds = %if.end9
  %call13 = call ptr @dma_resv_iter_next_unlocked(ptr noundef %cursor) #17, !dbg !4844
  store ptr %call13, ptr %fence, align 8, !dbg !4844
  br label %for.cond, !dbg !4844, !llvm.loop !4899

for.end:                                          ; preds = %for.cond
  call void @dma_resv_iter_end(ptr noundef %cursor) #17, !dbg !4901
  store i32 0, ptr %retval, align 4, !dbg !4902
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup14, !dbg !4902

cleanup14:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %fence) #18, !dbg !4903
  call void @llvm.lifetime.end.p0(i64 48, ptr %cursor) #18, !dbg !4903
  %29 = load i32, ptr %retval, align 4, !dbg !4903
  ret i32 %29, !dbg !4903
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(1,2)
define internal ptr @krealloc_array(ptr noundef %p, i64 noundef %new_n, i64 noundef %new_size, i32 noundef %flags) #10 align 16 !dbg !4904 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %new_n.addr = alloca i64, align 8
  %new_size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4908, metadata !DIExpression()), !dbg !4913
  store i64 %new_n, ptr %new_n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_n.addr, metadata !4909, metadata !DIExpression()), !dbg !4914
  store i64 %new_size, ptr %new_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_size.addr, metadata !4910, metadata !DIExpression()), !dbg !4915
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4911, metadata !DIExpression()), !dbg !4916
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #18, !dbg !4917
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !4912, metadata !DIExpression()), !dbg !4918
  %0 = load i64, ptr %new_n.addr, align 8, !dbg !4919
  %1 = load i64, ptr %new_size.addr, align 8, !dbg !4919
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !4919
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !4919
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !4919
  store i64 %4, ptr %bytes, align 8, !dbg !4919
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !4919
  %lnot = xor i1 %call, true, !dbg !4919
  %lnot1 = xor i1 %lnot, true, !dbg !4919
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4919
  %conv = sext i32 %lnot.ext to i64, !dbg !4919
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4919
  %tobool = icmp ne i64 %expval, 0, !dbg !4919
  br i1 %tobool, label %if.then, label %if.end, !dbg !4921

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4922
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4922

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %p.addr, align 8, !dbg !4923
  %6 = load i64, ptr %bytes, align 8, !dbg !4924
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4925
  %call2 = call ptr @krealloc(ptr noundef %5, i64 noundef %6, i32 noundef %7) #22, !dbg !4926
  store ptr %call2, ptr %retval, align 8, !dbg !4927
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4927

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #18, !dbg !4928
  %8 = load ptr, ptr %retval, align 8, !dbg !4928
  ret ptr %8, !dbg !4928
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4929 dso_local void @kfree(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @dma_resv_get_singleton(ptr noundef %obj, i32 noundef %usage, ptr noundef %fence) #0 align 16 !dbg !4934 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca ptr, align 8
  %usage.addr = alloca i32, align 4
  %fence.addr = alloca ptr, align 8
  %array = alloca ptr, align 8
  %fences = alloca ptr, align 8
  %count = alloca i32, align 4
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !4938, metadata !DIExpression()), !dbg !4965
  store i32 %usage, ptr %usage.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %usage.addr, metadata !4939, metadata !DIExpression()), !dbg !4966
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !4940, metadata !DIExpression()), !dbg !4967
  call void @llvm.lifetime.start.p0(i64 8, ptr %array) #18, !dbg !4968
  call void @llvm.dbg.declare(metadata ptr %array, metadata !4941, metadata !DIExpression()), !dbg !4969
  call void @llvm.lifetime.start.p0(i64 8, ptr %fences) #18, !dbg !4970
  call void @llvm.dbg.declare(metadata ptr %fences, metadata !4962, metadata !DIExpression()), !dbg !4971
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #18, !dbg !4972
  call void @llvm.dbg.declare(metadata ptr %count, metadata !4963, metadata !DIExpression()), !dbg !4973
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #18, !dbg !4974
  call void @llvm.dbg.declare(metadata ptr %r, metadata !4964, metadata !DIExpression()), !dbg !4975
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !4976
  %1 = load i32, ptr %usage.addr, align 4, !dbg !4977
  %call = call i32 @dma_resv_get_fences(ptr noundef %0, i32 noundef %1, ptr noundef %count, ptr noundef %fences) #17, !dbg !4978
  store i32 %call, ptr %r, align 4, !dbg !4979
  %2 = load i32, ptr %r, align 4, !dbg !4980
  %tobool = icmp ne i32 %2, 0, !dbg !4980
  br i1 %tobool, label %if.then, label %if.end, !dbg !4982

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %r, align 4, !dbg !4983
  store i32 %3, ptr %retval, align 4, !dbg !4984
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4984

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %count, align 4, !dbg !4985
  %cmp = icmp eq i32 %4, 0, !dbg !4987
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4988

if.then1:                                         ; preds = %if.end
  %5 = load ptr, ptr %fence.addr, align 8, !dbg !4989
  store ptr null, ptr %5, align 8, !dbg !4991
  store i32 0, ptr %retval, align 4, !dbg !4992
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4992

if.end2:                                          ; preds = %if.end
  %6 = load i32, ptr %count, align 4, !dbg !4993
  %cmp3 = icmp eq i32 %6, 1, !dbg !4995
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !4996

if.then4:                                         ; preds = %if.end2
  %7 = load ptr, ptr %fences, align 8, !dbg !4997
  %arrayidx = getelementptr ptr, ptr %7, i64 0, !dbg !4997
  %8 = load ptr, ptr %arrayidx, align 8, !dbg !4997
  %9 = load ptr, ptr %fence.addr, align 8, !dbg !4999
  store ptr %8, ptr %9, align 8, !dbg !5000
  %10 = load ptr, ptr %fences, align 8, !dbg !5001
  call void @kfree(ptr noundef %10) #17, !dbg !5002
  store i32 0, ptr %retval, align 4, !dbg !5003
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5003

if.end5:                                          ; preds = %if.end2
  %11 = load i32, ptr %count, align 4, !dbg !5004
  %12 = load ptr, ptr %fences, align 8, !dbg !5005
  %call6 = call i64 @dma_fence_context_alloc(i32 noundef 1) #17, !dbg !5006
  %call7 = call ptr @dma_fence_array_create(i32 noundef %11, ptr noundef %12, i64 noundef %call6, i32 noundef 1, i1 noundef zeroext false) #17, !dbg !5007
  store ptr %call7, ptr %array, align 8, !dbg !5008
  %13 = load ptr, ptr %array, align 8, !dbg !5009
  %tobool8 = icmp ne ptr %13, null, !dbg !5009
  br i1 %tobool8, label %if.end12, label %if.then9, !dbg !5011

if.then9:                                         ; preds = %if.end5
  br label %while.cond, !dbg !5012

while.cond:                                       ; preds = %while.body, %if.then9
  %14 = load i32, ptr %count, align 4, !dbg !5014
  %dec = add i32 %14, -1, !dbg !5014
  store i32 %dec, ptr %count, align 4, !dbg !5014
  %tobool10 = icmp ne i32 %14, 0, !dbg !5012
  br i1 %tobool10, label %while.body, label %while.end, !dbg !5012

while.body:                                       ; preds = %while.cond
  %15 = load ptr, ptr %fences, align 8, !dbg !5015
  %16 = load i32, ptr %count, align 4, !dbg !5016
  %idxprom = zext i32 %16 to i64, !dbg !5015
  %arrayidx11 = getelementptr ptr, ptr %15, i64 %idxprom, !dbg !5015
  %17 = load ptr, ptr %arrayidx11, align 8, !dbg !5015
  call void @dma_fence_put(ptr noundef %17) #17, !dbg !5017
  br label %while.cond, !dbg !5012, !llvm.loop !5018

while.end:                                        ; preds = %while.cond
  %18 = load ptr, ptr %fences, align 8, !dbg !5020
  call void @kfree(ptr noundef %18) #17, !dbg !5021
  store i32 -12, ptr %retval, align 4, !dbg !5022
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5022

if.end12:                                         ; preds = %if.end5
  %19 = load ptr, ptr %array, align 8, !dbg !5023
  %base = getelementptr inbounds %struct.dma_fence_array, ptr %19, i32 0, i32 0, !dbg !5024
  %20 = load ptr, ptr %fence.addr, align 8, !dbg !5025
  store ptr %base, ptr %20, align 8, !dbg !5026
  store i32 0, ptr %retval, align 4, !dbg !5027
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5027

cleanup:                                          ; preds = %if.end12, %while.end, %if.then4, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #18, !dbg !5028
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #18, !dbg !5028
  call void @llvm.lifetime.end.p0(i64 8, ptr %fences) #18, !dbg !5028
  call void @llvm.lifetime.end.p0(i64 8, ptr %array) #18, !dbg !5028
  %21 = load i32, ptr %retval, align 4, !dbg !5028
  ret i32 %21, !dbg !5028
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5029 dso_local ptr @dma_fence_array_create(i32 noundef, ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5032 dso_local i64 @dma_fence_context_alloc(i32 noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @dma_resv_wait_timeout(ptr noundef %obj, i32 noundef %usage, i1 noundef zeroext %intr, i64 noundef %timeout) #0 align 16 !dbg !5035 {
entry:
  %retval = alloca i64, align 8
  %obj.addr = alloca ptr, align 8
  %usage.addr = alloca i32, align 4
  %intr.addr = alloca i8, align 1
  %timeout.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  %cursor = alloca %struct.dma_resv_iter, align 8
  %fence = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !5039, metadata !DIExpression()), !dbg !5046
  store i32 %usage, ptr %usage.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %usage.addr, metadata !5040, metadata !DIExpression()), !dbg !5047
  %frombool = zext i1 %intr to i8
  store i8 %frombool, ptr %intr.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %intr.addr, metadata !5041, metadata !DIExpression()), !dbg !5048
  store i64 %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !5042, metadata !DIExpression()), !dbg !5049
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #18, !dbg !5050
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5043, metadata !DIExpression()), !dbg !5051
  %0 = load i64, ptr %timeout.addr, align 8, !dbg !5052
  %tobool = icmp ne i64 %0, 0, !dbg !5052
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5052

cond.true:                                        ; preds = %entry
  %1 = load i64, ptr %timeout.addr, align 8, !dbg !5053
  br label %cond.end, !dbg !5052

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5052

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ 1, %cond.false ], !dbg !5052
  store i64 %cond, ptr %ret, align 8, !dbg !5051
  call void @llvm.lifetime.start.p0(i64 48, ptr %cursor) #18, !dbg !5054
  call void @llvm.dbg.declare(metadata ptr %cursor, metadata !5044, metadata !DIExpression()), !dbg !5055
  call void @llvm.lifetime.start.p0(i64 8, ptr %fence) #18, !dbg !5056
  call void @llvm.dbg.declare(metadata ptr %fence, metadata !5045, metadata !DIExpression()), !dbg !5057
  %2 = load ptr, ptr %obj.addr, align 8, !dbg !5058
  %3 = load i32, ptr %usage.addr, align 4, !dbg !5059
  call void @dma_resv_iter_begin(ptr noundef %cursor, ptr noundef %2, i32 noundef %3) #17, !dbg !5060
  %call = call ptr @dma_resv_iter_first_unlocked(ptr noundef %cursor) #17, !dbg !5061
  store ptr %call, ptr %fence, align 8, !dbg !5061
  br label %for.cond, !dbg !5061

for.cond:                                         ; preds = %for.inc, %cond.end
  %4 = load ptr, ptr %fence, align 8, !dbg !5063
  %tobool1 = icmp ne ptr %4, null, !dbg !5061
  br i1 %tobool1, label %for.body, label %for.end, !dbg !5061

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %fence, align 8, !dbg !5065
  %6 = load i8, ptr %intr.addr, align 1, !dbg !5067, !range !4566, !noundef !703
  %tobool2 = trunc i8 %6 to i1, !dbg !5067
  %7 = load i64, ptr %ret, align 8, !dbg !5068
  %call3 = call i64 @dma_fence_wait_timeout(ptr noundef %5, i1 noundef zeroext %tobool2, i64 noundef %7) #17, !dbg !5069
  store i64 %call3, ptr %ret, align 8, !dbg !5070
  %8 = load i64, ptr %ret, align 8, !dbg !5071
  %cmp = icmp sle i64 %8, 0, !dbg !5073
  br i1 %cmp, label %if.then, label %if.end, !dbg !5074

if.then:                                          ; preds = %for.body
  call void @dma_resv_iter_end(ptr noundef %cursor) #17, !dbg !5075
  %9 = load i64, ptr %ret, align 8, !dbg !5077
  store i64 %9, ptr %retval, align 8, !dbg !5078
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5078

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5079

for.inc:                                          ; preds = %if.end
  %call4 = call ptr @dma_resv_iter_next_unlocked(ptr noundef %cursor) #17, !dbg !5063
  store ptr %call4, ptr %fence, align 8, !dbg !5063
  br label %for.cond, !dbg !5063, !llvm.loop !5080

for.end:                                          ; preds = %for.cond
  call void @dma_resv_iter_end(ptr noundef %cursor) #17, !dbg !5082
  %10 = load i64, ptr %ret, align 8, !dbg !5083
  store i64 %10, ptr %retval, align 8, !dbg !5084
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5084

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fence) #18, !dbg !5085
  call void @llvm.lifetime.end.p0(i64 48, ptr %cursor) #18, !dbg !5085
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #18, !dbg !5085
  %11 = load i64, ptr %retval, align 8, !dbg !5085
  ret i64 %11, !dbg !5085
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5086 dso_local i64 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i64 noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dma_resv_set_deadline(ptr noundef %obj, i32 noundef %usage, i64 noundef %deadline) #0 align 16 !dbg !5087 {
entry:
  %obj.addr = alloca ptr, align 8
  %usage.addr = alloca i32, align 4
  %deadline.addr = alloca i64, align 8
  %cursor = alloca %struct.dma_resv_iter, align 8
  %fence = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !5091, metadata !DIExpression()), !dbg !5096
  store i32 %usage, ptr %usage.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %usage.addr, metadata !5092, metadata !DIExpression()), !dbg !5097
  store i64 %deadline, ptr %deadline.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %deadline.addr, metadata !5093, metadata !DIExpression()), !dbg !5098
  call void @llvm.lifetime.start.p0(i64 48, ptr %cursor) #18, !dbg !5099
  call void @llvm.dbg.declare(metadata ptr %cursor, metadata !5094, metadata !DIExpression()), !dbg !5100
  call void @llvm.lifetime.start.p0(i64 8, ptr %fence) #18, !dbg !5101
  call void @llvm.dbg.declare(metadata ptr %fence, metadata !5095, metadata !DIExpression()), !dbg !5102
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !5103
  %1 = load i32, ptr %usage.addr, align 4, !dbg !5104
  call void @dma_resv_iter_begin(ptr noundef %cursor, ptr noundef %0, i32 noundef %1) #17, !dbg !5105
  %call = call ptr @dma_resv_iter_first_unlocked(ptr noundef %cursor) #17, !dbg !5106
  store ptr %call, ptr %fence, align 8, !dbg !5106
  br label %for.cond, !dbg !5106

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %fence, align 8, !dbg !5108
  %tobool = icmp ne ptr %2, null, !dbg !5106
  br i1 %tobool, label %for.body, label %for.end, !dbg !5106

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %fence, align 8, !dbg !5110
  %4 = load i64, ptr %deadline.addr, align 8, !dbg !5112
  call void @dma_fence_set_deadline(ptr noundef %3, i64 noundef %4) #17, !dbg !5113
  br label %for.inc, !dbg !5114

for.inc:                                          ; preds = %for.body
  %call1 = call ptr @dma_resv_iter_next_unlocked(ptr noundef %cursor) #17, !dbg !5108
  store ptr %call1, ptr %fence, align 8, !dbg !5108
  br label %for.cond, !dbg !5108, !llvm.loop !5115

for.end:                                          ; preds = %for.cond
  call void @dma_resv_iter_end(ptr noundef %cursor) #17, !dbg !5117
  call void @llvm.lifetime.end.p0(i64 8, ptr %fence) #18, !dbg !5118
  call void @llvm.lifetime.end.p0(i64 48, ptr %cursor) #18, !dbg !5118
  ret void, !dbg !5118
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5119 dso_local void @dma_fence_set_deadline(ptr noundef, i64 noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @dma_resv_test_signaled(ptr noundef %obj, i32 noundef %usage) #0 align 16 !dbg !5120 {
entry:
  %retval = alloca i1, align 1
  %obj.addr = alloca ptr, align 8
  %usage.addr = alloca i32, align 4
  %cursor = alloca %struct.dma_resv_iter, align 8
  %fence = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !5124, metadata !DIExpression()), !dbg !5128
  store i32 %usage, ptr %usage.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %usage.addr, metadata !5125, metadata !DIExpression()), !dbg !5129
  call void @llvm.lifetime.start.p0(i64 48, ptr %cursor) #18, !dbg !5130
  call void @llvm.dbg.declare(metadata ptr %cursor, metadata !5126, metadata !DIExpression()), !dbg !5131
  call void @llvm.lifetime.start.p0(i64 8, ptr %fence) #18, !dbg !5132
  call void @llvm.dbg.declare(metadata ptr %fence, metadata !5127, metadata !DIExpression()), !dbg !5133
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !5134
  %1 = load i32, ptr %usage.addr, align 4, !dbg !5135
  call void @dma_resv_iter_begin(ptr noundef %cursor, ptr noundef %0, i32 noundef %1) #17, !dbg !5136
  %call = call ptr @dma_resv_iter_first_unlocked(ptr noundef %cursor) #17, !dbg !5137
  store ptr %call, ptr %fence, align 8, !dbg !5137
  br label %for.cond, !dbg !5137

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %fence, align 8, !dbg !5139
  %tobool = icmp ne ptr %2, null, !dbg !5137
  br i1 %tobool, label %for.body, label %for.end, !dbg !5137

for.body:                                         ; preds = %for.cond
  call void @dma_resv_iter_end(ptr noundef %cursor) #17, !dbg !5141
  store i1 false, ptr %retval, align 1, !dbg !5143
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5143

for.inc:                                          ; No predecessors!
  %call1 = call ptr @dma_resv_iter_next_unlocked(ptr noundef %cursor) #17, !dbg !5139
  store ptr %call1, ptr %fence, align 8, !dbg !5139
  br label %for.cond, !dbg !5139, !llvm.loop !5144

for.end:                                          ; preds = %for.cond
  call void @dma_resv_iter_end(ptr noundef %cursor) #17, !dbg !5146
  store i1 true, ptr %retval, align 1, !dbg !5147
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5147

cleanup:                                          ; preds = %for.end, %for.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %fence) #18, !dbg !5148
  call void @llvm.lifetime.end.p0(i64 48, ptr %cursor) #18, !dbg !5148
  %3 = load i1, ptr %retval, align 1, !dbg !5148
  ret i1 %3, !dbg !5148
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dma_resv_describe(ptr noundef %obj, ptr noundef %seq) #0 align 16 !dbg !345 {
entry:
  %obj.addr = alloca ptr, align 8
  %seq.addr = alloca ptr, align 8
  %cursor = alloca %struct.dma_resv_iter, align 8
  %fence = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !3615, metadata !DIExpression()), !dbg !5149
  store ptr %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !3616, metadata !DIExpression()), !dbg !5150
  call void @llvm.lifetime.start.p0(i64 48, ptr %cursor) #18, !dbg !5151
  call void @llvm.dbg.declare(metadata ptr %cursor, metadata !3617, metadata !DIExpression()), !dbg !5152
  call void @llvm.lifetime.start.p0(i64 8, ptr %fence) #18, !dbg !5153
  call void @llvm.dbg.declare(metadata ptr %fence, metadata !3628, metadata !DIExpression()), !dbg !5154
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !5155
  call void @dma_resv_iter_begin(ptr noundef %cursor, ptr noundef %0, i32 noundef 2) #17, !dbg !5155
  %call = call ptr @dma_resv_iter_first(ptr noundef %cursor) #17, !dbg !5155
  store ptr %call, ptr %fence, align 8, !dbg !5155
  br label %for.cond, !dbg !5155

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %fence, align 8, !dbg !5157
  %tobool = icmp ne ptr %1, null, !dbg !5155
  br i1 %tobool, label %for.body, label %for.end, !dbg !5155

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %seq.addr, align 8, !dbg !5159
  %call1 = call i32 @dma_resv_iter_usage(ptr noundef %cursor) #17, !dbg !5161
  %idxprom = zext i32 %call1 to i64, !dbg !5162
  %arrayidx = getelementptr [4 x ptr], ptr @dma_resv_describe.usage, i64 0, i64 %idxprom, !dbg !5162
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !5162
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %2, ptr noundef @.str.7, ptr noundef %3) #17, !dbg !5163
  %4 = load ptr, ptr %fence, align 8, !dbg !5164
  %5 = load ptr, ptr %seq.addr, align 8, !dbg !5165
  call void @dma_fence_describe(ptr noundef %4, ptr noundef %5) #17, !dbg !5166
  br label %for.inc, !dbg !5167

for.inc:                                          ; preds = %for.body
  %call2 = call ptr @dma_resv_iter_next(ptr noundef %cursor) #17, !dbg !5157
  store ptr %call2, ptr %fence, align 8, !dbg !5157
  br label %for.cond, !dbg !5157, !llvm.loop !5168

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %fence) #18, !dbg !5170
  call void @llvm.lifetime.end.p0(i64 48, ptr %cursor) #18, !dbg !5170
  ret void, !dbg !5170
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5171 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5174 dso_local void @dma_fence_describe(ptr noundef, ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5177 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mutex_destroy(ptr noundef %lock) #2 align 16 !dbg !5182 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5186, metadata !DIExpression()), !dbg !5187
  ret void, !dbg !5188
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls(i32 noundef %x) #9 align 16 !dbg !5189 {
entry:
  %x.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !5194, metadata !DIExpression()), !dbg !5196
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #18, !dbg !5197
  call void @llvm.dbg.declare(metadata ptr %r, metadata !5195, metadata !DIExpression()), !dbg !5198
  %0 = load i32, ptr %x.addr, align 4, !dbg !5199
  %1 = call i32 asm "bsrl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 -1) #23, !dbg !5200, !srcloc !5201
  store i32 %1, ptr %r, align 4, !dbg !5200
  %2 = load i32, ptr %r, align 4, !dbg !5202
  %add = add i32 %2, 1, !dbg !5203
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #18, !dbg !5204
  ret i32 %add, !dbg !5205
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls_long(i64 noundef %l) #2 align 16 !dbg !5206 {
entry:
  %l.addr = alloca i64, align 8
  store i64 %l, ptr %l.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !5211, metadata !DIExpression()), !dbg !5212
  %0 = load i64, ptr %l.addr, align 8, !dbg !5213
  %call = call i32 @fls64(i64 noundef %0) #17, !dbg !5214
  ret i32 %call, !dbg !5215
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls64(i64 noundef %x) #9 align 16 !dbg !5216 {
entry:
  %x.addr = alloca i64, align 8
  %bitpos = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !5220, metadata !DIExpression()), !dbg !5222
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitpos) #18, !dbg !5223
  call void @llvm.dbg.declare(metadata ptr %bitpos, metadata !5221, metadata !DIExpression()), !dbg !5224
  store i32 -1, ptr %bitpos, align 4, !dbg !5224
  %0 = load i32, ptr %bitpos, align 4, !dbg !5225
  %1 = load i64, ptr %x.addr, align 8, !dbg !5226
  %2 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %1, i32 %0) #23, !dbg !5225, !srcloc !5227
  store i32 %2, ptr %bitpos, align 4, !dbg !5225
  %3 = load i32, ptr %bitpos, align 4, !dbg !5228
  %add = add i32 %3, 1, !dbg !5229
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitpos) #18, !dbg !5230
  ret i32 %add, !dbg !5231
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5232 dso_local i64 @kmalloc_size_roundup(i64 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_add(i64 noundef %addend1, i64 noundef %addend2) #2 align 16 !dbg !5235 {
entry:
  %retval = alloca i64, align 8
  %addend1.addr = alloca i64, align 8
  %addend2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addend1, ptr %addend1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend1.addr, metadata !5240, metadata !DIExpression()), !dbg !5243
  store i64 %addend2, ptr %addend2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend2.addr, metadata !5241, metadata !DIExpression()), !dbg !5244
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #18, !dbg !5245
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5242, metadata !DIExpression()), !dbg !5246
  %0 = load i64, ptr %addend1.addr, align 8, !dbg !5247
  %1 = load i64, ptr %addend2.addr, align 8, !dbg !5247
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1), !dbg !5247
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !5247
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !5247
  store i64 %4, ptr %bytes, align 8, !dbg !5247
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !5247
  br i1 %call, label %if.then, label %if.end, !dbg !5249

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !5250
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5250

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !5251
  store i64 %5, ptr %retval, align 8, !dbg !5252
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5252

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #18, !dbg !5253
  %6 = load i64, ptr %retval, align 8, !dbg !5253
  ret i64 %6, !dbg !5253
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_mul(i64 noundef %factor1, i64 noundef %factor2) #2 align 16 !dbg !5254 {
entry:
  %retval = alloca i64, align 8
  %factor1.addr = alloca i64, align 8
  %factor2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %factor1, ptr %factor1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor1.addr, metadata !5256, metadata !DIExpression()), !dbg !5259
  store i64 %factor2, ptr %factor2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor2.addr, metadata !5257, metadata !DIExpression()), !dbg !5260
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #18, !dbg !5261
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5258, metadata !DIExpression()), !dbg !5262
  %0 = load i64, ptr %factor1.addr, align 8, !dbg !5263
  %1 = load i64, ptr %factor2.addr, align 8, !dbg !5263
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !5263
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !5263
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !5263
  store i64 %4, ptr %bytes, align 8, !dbg !5263
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !5263
  br i1 %call, label %if.then, label %if.end, !dbg !5265

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !5266
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5266

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !5267
  store i64 %5, ptr %retval, align 8, !dbg !5268
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5268

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #18, !dbg !5269
  %6 = load i64, ptr %retval, align 8, !dbg !5269
  ret i64 %6, !dbg !5269
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !5270 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5274, metadata !DIExpression()), !dbg !5279
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5275, metadata !DIExpression()), !dbg !5280
  %0 = load i64, ptr %size.addr, align 8, !dbg !5281
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5282
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5283

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5284
  %tobool = icmp ne i64 %2, 0, !dbg !5284
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5285

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #18, !dbg !5286
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5276, metadata !DIExpression()), !dbg !5287
  %3 = load i64, ptr %size.addr, align 8, !dbg !5288
  %cmp = icmp ugt i64 %3, 8192, !dbg !5290
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5291

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5292
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5293
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !5294
  store ptr %call, ptr %retval, align 8, !dbg !5295
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5295

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5296
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !5296
  store i32 %call2, ptr %index, align 4, !dbg !5297
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5298
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5299
  %9 = ptrtoint ptr %8 to i64, !dbg !5299
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !5300
  %idxprom = zext i32 %call3 to i64, !dbg !5301
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5301
  %10 = load i32, ptr %index, align 4, !dbg !5302
  %idxprom4 = zext i32 %10 to i64, !dbg !5301
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5301
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5301
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5303
  %13 = load i64, ptr %size.addr, align 8, !dbg !5304
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #24, !dbg !5305
  store ptr %call6, ptr %retval, align 8, !dbg !5306
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5306

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #18, !dbg !5307
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5308
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5309
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !5310
  store ptr %call8, ptr %retval, align 8, !dbg !5311
  br label %return, !dbg !5311

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5312
  ret ptr %16, !dbg !5312
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #2 align 16 !dbg !5313 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !5317, metadata !DIExpression()), !dbg !5318
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !5319, !range !4566, !noundef !703
  %tobool = trunc i8 %0 to i1, !dbg !5319
  %lnot = xor i1 %tobool, true, !dbg !5319
  %lnot1 = xor i1 %lnot, true, !dbg !5319
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5319
  %conv = sext i32 %lnot.ext to i64, !dbg !5319
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5319
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5319
  ret i1 %tobool2, !dbg !5320
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5321 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !5322 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5326, metadata !DIExpression()), !dbg !5328
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5327, metadata !DIExpression()), !dbg !5329
  %0 = load i64, ptr %size.addr, align 8, !dbg !5330
  %tobool = icmp ne i64 %0, 0, !dbg !5330
  br i1 %tobool, label %if.end, label %if.then, !dbg !5332

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5333
  br label %return, !dbg !5333

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5334
  %cmp = icmp ule i64 %1, 8, !dbg !5336
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5337

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5338
  br label %return, !dbg !5338

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5339
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5341
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5342

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5343
  %cmp4 = icmp ule i64 %3, 96, !dbg !5344
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5345

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5346
  br label %return, !dbg !5346

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5347
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5349
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5350

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5351
  %cmp9 = icmp ule i64 %5, 192, !dbg !5352
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5353

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5354
  br label %return, !dbg !5354

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5355
  %cmp12 = icmp ule i64 %6, 8, !dbg !5357
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5358

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5359
  br label %return, !dbg !5359

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5360
  %cmp15 = icmp ule i64 %7, 16, !dbg !5362
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5363

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5364
  br label %return, !dbg !5364

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5365
  %cmp18 = icmp ule i64 %8, 32, !dbg !5367
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5368

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5369
  br label %return, !dbg !5369

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5370
  %cmp21 = icmp ule i64 %9, 64, !dbg !5372
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5373

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5374
  br label %return, !dbg !5374

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5375
  %cmp24 = icmp ule i64 %10, 128, !dbg !5377
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5378

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5379
  br label %return, !dbg !5379

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5380
  %cmp27 = icmp ule i64 %11, 256, !dbg !5382
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5383

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5384
  br label %return, !dbg !5384

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5385
  %cmp30 = icmp ule i64 %12, 512, !dbg !5387
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5388

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5389
  br label %return, !dbg !5389

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5390
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5392
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5393

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5394
  br label %return, !dbg !5394

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5395
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5397
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5398

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5399
  br label %return, !dbg !5399

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5400
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5402
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5403

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5404
  br label %return, !dbg !5404

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5405
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5407
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5408

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5409
  br label %return, !dbg !5409

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5410
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5412
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5413

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5414
  br label %return, !dbg !5414

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5415
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5417
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5418

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5419
  br label %return, !dbg !5419

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5420
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5422
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5423

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5424
  br label %return, !dbg !5424

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5425
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5427
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5428

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5429
  br label %return, !dbg !5429

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5430
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5432
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5433

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5434
  br label %return, !dbg !5434

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5435
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5437
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5438

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5439
  br label %return, !dbg !5439

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5440
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5442
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5443

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5444
  br label %return, !dbg !5444

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5445
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5447
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5448

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5449
  br label %return, !dbg !5449

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5450, !range !4566, !noundef !703
  %tobool69 = trunc i8 %25 to i1, !dbg !5450
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5452

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5453

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_178() #25, !dbg !5454, !srcloc !5457
  unreachable, !dbg !5454

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5458

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5459

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5460

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5462

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5460

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, i32 480, i32 0, i64 12) #18, !dbg !5464, !srcloc !5466
  br label %do.end75, !dbg !5464

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5460

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5467
  br label %return, !dbg !5467

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5468
  ret i32 %26, !dbg !5468
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5469 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !5475 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5479, metadata !DIExpression()), !dbg !5481
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5480, metadata !DIExpression()), !dbg !5482
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5483
  %and = and i32 %0, 17, !dbg !5483
  %cmp = icmp eq i32 %and, 0, !dbg !5483
  %lnot = xor i1 %cmp, true, !dbg !5483
  %lnot1 = xor i1 %lnot, true, !dbg !5483
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5483
  %conv = sext i32 %lnot.ext to i64, !dbg !5483
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5483
  %tobool = icmp ne i64 %expval, 0, !dbg !5483
  br i1 %tobool, label %if.then, label %if.end, !dbg !5485

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5486
  br label %return, !dbg !5486

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5487
  %and2 = and i32 %1, 1, !dbg !5489
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5489
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5490

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5491
  br label %return, !dbg !5491

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5492
  br label %return, !dbg !5492

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5494
  ret i32 %2, !dbg !5494
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5495 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5496 dso_local void @__compiletime_assert_178() #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !5497 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5505, metadata !DIExpression()), !dbg !5510
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5506, metadata !DIExpression()), !dbg !5511
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #18, !dbg !5512
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5507, metadata !DIExpression()), !dbg !5513
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5514
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5515
  %div = udiv i64 %1, 64, !dbg !5515
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5516
  store ptr %add.ptr, ptr %p, align 8, !dbg !5513
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #18, !dbg !5517
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5508, metadata !DIExpression()), !dbg !5518
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5519
  %rem = urem i64 %2, 64, !dbg !5519
  %shl = shl i64 1, %rem, !dbg !5519
  store i64 %shl, ptr %mask, align 8, !dbg !5518
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #18, !dbg !5520
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5509, metadata !DIExpression()), !dbg !5521
  %3 = load ptr, ptr %p, align 8, !dbg !5522
  %4 = load i64, ptr %3, align 8, !dbg !5523
  store i64 %4, ptr %val, align 8, !dbg !5521
  %5 = load i64, ptr %val, align 8, !dbg !5524
  %6 = load i64, ptr %mask, align 8, !dbg !5525
  %and = and i64 %5, %6, !dbg !5526
  %tobool = icmp ne i64 %and, 0, !dbg !5527
  %lnot = xor i1 %tobool, true, !dbg !5527
  %lnot1 = xor i1 %lnot, true, !dbg !5528
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #18, !dbg !5529
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #18, !dbg !5529
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #18, !dbg !5529
  ret i1 %lnot1, !dbg !5530
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !5531 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5534, metadata !DIExpression()), !dbg !5536
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5535, metadata !DIExpression()), !dbg !5537
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5538
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5539
  %div = udiv i64 %1, 64, !dbg !5539
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5540
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !5541
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5542
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5543
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !5544
  ret i1 %call, !dbg !5545
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5546 dso_local i32 @dma_fence_signal(ptr noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !5549 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5551, metadata !DIExpression()), !dbg !5553
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5552, metadata !DIExpression()), !dbg !5554
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5555
  %1 = load i64, ptr %size.addr, align 8, !dbg !5556
  %conv = trunc i64 %1 to i32, !dbg !5556
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !5557
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5558
  %3 = load i64, ptr %size.addr, align 8, !dbg !5558
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !5558
  ret void, !dbg !5559
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !5560 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5562, metadata !DIExpression()), !dbg !5564
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5563, metadata !DIExpression()), !dbg !5565
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5566
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5567
  br i1 %1, label %cond.true, label %cond.false, !dbg !5567

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5568
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5569
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !5570
  %conv = zext i1 %call to i32, !dbg !5570
  br label %cond.end, !dbg !5567

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5571
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5572
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #17, !dbg !5573
  %conv2 = zext i1 %call1 to i32, !dbg !5573
  br label %cond.end, !dbg !5567

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5567
  %tobool = icmp ne i32 %cond, 0, !dbg !5567
  ret i1 %tobool, !dbg !5574
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !5575 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5580, metadata !DIExpression()), !dbg !5582
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5581, metadata !DIExpression()), !dbg !5583
  ret i1 true, !dbg !5584
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #2 align 16 !dbg !5585 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5590, metadata !DIExpression()), !dbg !5593
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5591, metadata !DIExpression()), !dbg !5594
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5592, metadata !DIExpression()), !dbg !5595
  ret void, !dbg !5596
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !5597 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5601, metadata !DIExpression()), !dbg !5603
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5602, metadata !DIExpression()), !dbg !5604
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5605
  %and = and i64 %0, 63, !dbg !5606
  %shl = shl i64 1, %and, !dbg !5607
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5608
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5609
  %shr = ashr i64 %2, 6, !dbg !5610
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5608
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5608
  %and1 = and i64 %shl, %3, !dbg !5611
  %cmp = icmp ne i64 %and1, 0, !dbg !5612
  ret i1 %cmp, !dbg !5613
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !5614 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5616, metadata !DIExpression()), !dbg !5619
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5617, metadata !DIExpression()), !dbg !5620
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #18, !dbg !5621
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5618, metadata !DIExpression()), !dbg !5622
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5623
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5624
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #18, !dbg !5625, !srcloc !5626
  %3 = icmp ult i8 %2, 2, !dbg !5625
  call void @llvm.assume(i1 %3), !dbg !5625
  store i8 %2, ptr %oldbit, align 1, !dbg !5625
  %4 = load i8, ptr %oldbit, align 1, !dbg !5627, !range !4566, !noundef !703
  %tobool = trunc i8 %4 to i1, !dbg !5627
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #18, !dbg !5628
  ret i1 %tobool, !dbg !5629
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_put(ptr noundef %kref, ptr noundef %release) #2 align 16 !dbg !5630 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !5638, metadata !DIExpression()), !dbg !5640
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !5639, metadata !DIExpression()), !dbg !5641
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !5642
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !5644
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcount) #17, !dbg !5645
  br i1 %call, label %if.then, label %if.end, !dbg !5646

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %release.addr, align 8, !dbg !5647
  %2 = load ptr, ptr %kref.addr, align 8, !dbg !5649
  call void %1(ptr noundef %2) #17, !dbg !5647
  store i32 1, ptr %retval, align 4, !dbg !5650
  br label %return, !dbg !5650

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5651
  br label %return, !dbg !5651

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !5652
  ret i32 %3, !dbg !5652
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #2 align 16 !dbg !5653 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5658, metadata !DIExpression()), !dbg !5659
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5660
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #17, !dbg !5661
  ret i1 %call, !dbg !5662
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !5663 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5667, metadata !DIExpression()), !dbg !5669
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5668, metadata !DIExpression()), !dbg !5670
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5671
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !5672
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #17, !dbg !5673
  ret i1 %call, !dbg !5674
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !5675 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5679, metadata !DIExpression()), !dbg !5683
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5680, metadata !DIExpression()), !dbg !5684
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5681, metadata !DIExpression()), !dbg !5685
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #18, !dbg !5686
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5682, metadata !DIExpression()), !dbg !5687
  %0 = load i32, ptr %i.addr, align 4, !dbg !5688
  %1 = load ptr, ptr %r.addr, align 8, !dbg !5689
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !5690
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #17, !dbg !5691
  store i32 %call, ptr %old, align 4, !dbg !5687
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !5692
  %tobool = icmp ne ptr %2, null, !dbg !5692
  br i1 %tobool, label %if.then, label %if.end, !dbg !5694

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !5695
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !5696
  store i32 %3, ptr %4, align 4, !dbg !5697
  br label %if.end, !dbg !5698

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !5699
  %6 = load i32, ptr %i.addr, align 4, !dbg !5701
  %cmp = icmp eq i32 %5, %6, !dbg !5702
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !5703

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !5704

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !5706

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !5708

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5708

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !5706

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !5710

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !5712

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5712

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !dbg !5710, !srcloc !5714
  br label %do.cond7, !dbg !5710

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !5710

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !5706

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !5706

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !5715
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5715

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !5716
  %cmp12 = icmp slt i32 %7, 0, !dbg !5716
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !5716

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !5716
  %9 = load i32, ptr %i.addr, align 4, !dbg !5716
  %sub = sub i32 %8, %9, !dbg !5716
  %cmp13 = icmp slt i32 %sub, 0, !dbg !5716
  br label %lor.end, !dbg !5716

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !5716
  %lnot14 = xor i1 %lnot, true, !dbg !5716
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !5716
  %conv = sext i32 %lnot.ext to i64, !dbg !5716
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5716
  %tobool15 = icmp ne i64 %expval, 0, !dbg !5716
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5718

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !5719
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #17, !dbg !5720
  br label %if.end17, !dbg !5720

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !5721
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5721

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #18, !dbg !5722
  %12 = load i1, ptr %retval, align 1, !dbg !5722
  ret i1 %12, !dbg !5722
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !5723 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5729, metadata !DIExpression()), !dbg !5731
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5730, metadata !DIExpression()), !dbg !5732
  br label %do.body, !dbg !5733

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5734

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5736
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !5737
  %1 = load i32, ptr %i.addr, align 4, !dbg !5738
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5739
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #17, !dbg !5740
  ret i32 %call, !dbg !5741
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5742 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !5745 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5748, metadata !DIExpression()), !dbg !5750
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5749, metadata !DIExpression()), !dbg !5751
  %0 = load i32, ptr %i.addr, align 4, !dbg !5752
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5753
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #17, !dbg !5754
  ret i32 %call, !dbg !5755
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !5756 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5759, metadata !DIExpression()), !dbg !5763
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5760, metadata !DIExpression()), !dbg !5764
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #18, !dbg !5765
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5761, metadata !DIExpression()), !dbg !5765
  %0 = load i32, ptr %i.addr, align 4, !dbg !5765
  %sub = sub i32 0, %0, !dbg !5765
  store i32 %sub, ptr %__ret, align 4, !dbg !5765
  %1 = load i32, ptr %__ret, align 4, !dbg !5765
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5765
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !5765
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #18, !dbg !5765, !srcloc !5766
  store i32 %3, ptr %__ret, align 4, !dbg !5765
  %4 = load i32, ptr %__ret, align 4, !dbg !5765
  store i32 %4, ptr %tmp, align 4, !dbg !5765
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #18, !dbg !5767
  %5 = load i32, ptr %tmp, align 4, !dbg !5765
  ret i32 %5, !dbg !5768
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_get(ptr noundef %kref) #2 align 16 !dbg !5769 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !5771, metadata !DIExpression()), !dbg !5772
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !5773
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !5774
  call void @refcount_inc(ptr noundef %refcount) #17, !dbg !5775
  ret void, !dbg !5776
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #2 align 16 !dbg !5777 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5781, metadata !DIExpression()), !dbg !5782
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5783
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #17, !dbg !5784
  ret void, !dbg !5785
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !5786 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5790, metadata !DIExpression()), !dbg !5792
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5791, metadata !DIExpression()), !dbg !5793
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5794
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !5795
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #17, !dbg !5796
  ret void, !dbg !5797
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !5798 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5802, metadata !DIExpression()), !dbg !5806
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5803, metadata !DIExpression()), !dbg !5807
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5804, metadata !DIExpression()), !dbg !5808
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #18, !dbg !5809
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5805, metadata !DIExpression()), !dbg !5810
  %0 = load i32, ptr %i.addr, align 4, !dbg !5811
  %1 = load ptr, ptr %r.addr, align 8, !dbg !5812
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !5813
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #17, !dbg !5814
  store i32 %call, ptr %old, align 4, !dbg !5810
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !5815
  %tobool = icmp ne ptr %2, null, !dbg !5815
  br i1 %tobool, label %if.then, label %if.end, !dbg !5817

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !5818
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !5819
  store i32 %3, ptr %4, align 4, !dbg !5820
  br label %if.end, !dbg !5821

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !5822
  %tobool1 = icmp ne i32 %5, 0, !dbg !5822
  %lnot = xor i1 %tobool1, true, !dbg !5822
  %lnot2 = xor i1 %lnot, true, !dbg !5822
  %lnot3 = xor i1 %lnot2, true, !dbg !5822
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5822
  %conv = sext i32 %lnot.ext to i64, !dbg !5822
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5822
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5822
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5824

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !5825
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #17, !dbg !5826
  br label %if.end18, !dbg !5826

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !5827
  %cmp = icmp slt i32 %7, 0, !dbg !5827
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5827

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !5827
  %9 = load i32, ptr %i.addr, align 4, !dbg !5827
  %add = add i32 %8, %9, !dbg !5827
  %cmp7 = icmp slt i32 %add, 0, !dbg !5827
  br label %lor.end, !dbg !5827

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !5827
  %lnot11 = xor i1 %lnot9, true, !dbg !5827
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5827
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5827
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !5827
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !5827
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5829

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !5830
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #17, !dbg !5831
  br label %if.end17, !dbg !5831

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #18, !dbg !5832
  ret void, !dbg !5832
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !5833 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5835, metadata !DIExpression()), !dbg !5837
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5836, metadata !DIExpression()), !dbg !5838
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5839
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !5840
  %1 = load i32, ptr %i.addr, align 4, !dbg !5841
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5842
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #17, !dbg !5843
  ret i32 %call, !dbg !5844
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !5845 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5847, metadata !DIExpression()), !dbg !5849
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5848, metadata !DIExpression()), !dbg !5850
  %0 = load i32, ptr %i.addr, align 4, !dbg !5851
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5852
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #17, !dbg !5853
  ret i32 %call, !dbg !5854
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !5855 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5857, metadata !DIExpression()), !dbg !5861
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5858, metadata !DIExpression()), !dbg !5862
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #18, !dbg !5863
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5859, metadata !DIExpression()), !dbg !5863
  %0 = load i32, ptr %i.addr, align 4, !dbg !5863
  store i32 %0, ptr %__ret, align 4, !dbg !5863
  %1 = load i32, ptr %__ret, align 4, !dbg !5863
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5863
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !5863
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #18, !dbg !5863, !srcloc !5864
  store i32 %3, ptr %__ret, align 4, !dbg !5863
  %4 = load i32, ptr %__ret, align 4, !dbg !5863
  store i32 %4, ptr %tmp, align 4, !dbg !5863
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #18, !dbg !5865
  %5 = load i32, ptr %tmp, align 4, !dbg !5863
  ret i32 %5, !dbg !5866
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dma_fence_is_array(ptr noundef %fence) #2 align 16 !dbg !5867 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !5869, metadata !DIExpression()), !dbg !5870
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !5871
  %ops = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 1, !dbg !5872
  %1 = load ptr, ptr %ops, align 8, !dbg !5872
  %cmp = icmp eq ptr %1, @dma_fence_array_ops, !dbg !5873
  ret i1 %cmp, !dbg !5874
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dma_fence_is_chain(ptr noundef %fence) #2 align 16 !dbg !5875 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !5877, metadata !DIExpression()), !dbg !5878
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !5879
  %ops = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 1, !dbg !5880
  %1 = load ptr, ptr %ops, align 8, !dbg !5880
  %cmp = icmp eq ptr %1, @dma_fence_chain_ops, !dbg !5881
  ret i1 %cmp, !dbg !5882
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dma_fence_is_later(ptr noundef %f1, ptr noundef %f2) #2 align 16 !dbg !5883 {
entry:
  %retval = alloca i1, align 1
  %f1.addr = alloca ptr, align 8
  %f2.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %f1, ptr %f1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f1.addr, metadata !5885, metadata !DIExpression()), !dbg !5893
  store ptr %f2, ptr %f2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f2.addr, metadata !5886, metadata !DIExpression()), !dbg !5894
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !5895
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5887, metadata !DIExpression()), !dbg !5895
  %0 = load ptr, ptr %f1.addr, align 8, !dbg !5895
  %context = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 3, !dbg !5895
  %1 = load i64, ptr %context, align 8, !dbg !5895
  %2 = load ptr, ptr %f2.addr, align 8, !dbg !5895
  %context1 = getelementptr inbounds %struct.dma_fence, ptr %2, i32 0, i32 3, !dbg !5895
  %3 = load i64, ptr %context1, align 8, !dbg !5895
  %cmp = icmp ne i64 %1, %3, !dbg !5895
  %lnot = xor i1 %cmp, true, !dbg !5895
  %lnot2 = xor i1 %lnot, true, !dbg !5895
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5895
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5895
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5896
  %tobool = icmp ne i32 %4, 0, !dbg !5896
  %lnot3 = xor i1 %tobool, true, !dbg !5896
  %lnot5 = xor i1 %lnot3, true, !dbg !5896
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5896
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5896
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5896
  %tobool7 = icmp ne i64 %expval, 0, !dbg !5896
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5895

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5896

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !5897
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5890, metadata !DIExpression()), !dbg !5897
  store i32 2305, ptr %__flags, align 4, !dbg !5897
  br label %do.body8, !dbg !5897

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !5898

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !5898

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !5897

do.body9:                                         ; preds = %do.end
  %5 = load i32, ptr %__flags, align 4, !dbg !5900
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.9, i32 495, i32 %5, i64 12) #18, !dbg !5900, !srcloc !5902
  br label %do.cond10, !dbg !5900

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5900

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !5897

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !5903

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5903

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !5896
  br label %do.cond15, !dbg !5897

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !5897

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !5897

if.end:                                           ; preds = %do.end16, %entry
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !5895
  %tobool17 = icmp ne i32 %6, 0, !dbg !5895
  %lnot18 = xor i1 %tobool17, true, !dbg !5895
  %lnot20 = xor i1 %lnot18, true, !dbg !5895
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !5895
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !5895
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !5895
  store i64 %expval23, ptr %tmp, align 8, !dbg !5896
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !5905
  %7 = load i64, ptr %tmp, align 8, !dbg !5895
  %tobool24 = icmp ne i64 %7, 0, !dbg !5905
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !5906

if.then25:                                        ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !5907
  br label %return, !dbg !5907

if.end26:                                         ; preds = %if.end
  %8 = load ptr, ptr %f1.addr, align 8, !dbg !5908
  %seqno = getelementptr inbounds %struct.dma_fence, ptr %8, i32 0, i32 4, !dbg !5909
  %9 = load i64, ptr %seqno, align 8, !dbg !5909
  %10 = load ptr, ptr %f2.addr, align 8, !dbg !5910
  %seqno27 = getelementptr inbounds %struct.dma_fence, ptr %10, i32 0, i32 4, !dbg !5911
  %11 = load i64, ptr %seqno27, align 8, !dbg !5911
  %12 = load ptr, ptr %f1.addr, align 8, !dbg !5912
  %ops = getelementptr inbounds %struct.dma_fence, ptr %12, i32 0, i32 1, !dbg !5913
  %13 = load ptr, ptr %ops, align 8, !dbg !5913
  %call = call zeroext i1 @__dma_fence_is_later(i64 noundef %9, i64 noundef %11, ptr noundef %13) #17, !dbg !5914
  store i1 %call, ptr %retval, align 1, !dbg !5915
  br label %return, !dbg !5915

return:                                           ; preds = %if.end26, %if.then25
  %14 = load i1, ptr %retval, align 1, !dbg !5916
  ret i1 %14, !dbg !5916
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__dma_fence_is_later(i64 noundef %f1, i64 noundef %f2, ptr noundef %ops) #2 align 16 !dbg !5917 {
entry:
  %retval = alloca i1, align 1
  %f1.addr = alloca i64, align 8
  %f2.addr = alloca i64, align 8
  %ops.addr = alloca ptr, align 8
  store i64 %f1, ptr %f1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f1.addr, metadata !5921, metadata !DIExpression()), !dbg !5924
  store i64 %f2, ptr %f2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f2.addr, metadata !5922, metadata !DIExpression()), !dbg !5925
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5923, metadata !DIExpression()), !dbg !5926
  %0 = load ptr, ptr %ops.addr, align 8, !dbg !5927
  %use_64bit_seqno = getelementptr inbounds %struct.dma_fence_ops, ptr %0, i32 0, i32 0, !dbg !5929
  %1 = load i8, ptr %use_64bit_seqno, align 8, !dbg !5929, !range !4566, !noundef !703
  %tobool = trunc i8 %1 to i1, !dbg !5929
  br i1 %tobool, label %if.then, label %if.end, !dbg !5930

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %f1.addr, align 8, !dbg !5931
  %3 = load i64, ptr %f2.addr, align 8, !dbg !5932
  %cmp = icmp ugt i64 %2, %3, !dbg !5933
  store i1 %cmp, ptr %retval, align 1, !dbg !5934
  br label %return, !dbg !5934

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %f1.addr, align 8, !dbg !5935
  %and = and i64 %4, 4294967295, !dbg !5935
  %conv = trunc i64 %and to i32, !dbg !5935
  %5 = load i64, ptr %f2.addr, align 8, !dbg !5936
  %and1 = and i64 %5, 4294967295, !dbg !5936
  %conv2 = trunc i64 %and1 to i32, !dbg !5936
  %sub = sub i32 %conv, %conv2, !dbg !5937
  %cmp3 = icmp sgt i32 %sub, 0, !dbg !5938
  store i1 %cmp3, ptr %retval, align 1, !dbg !5939
  br label %return, !dbg !5939

return:                                           ; preds = %if.end, %if.then
  %6 = load i1, ptr %retval, align 1, !dbg !5940
  ret i1 %6, !dbg !5940
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !5941 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5943, metadata !DIExpression()), !dbg !5945
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5944, metadata !DIExpression()), !dbg !5946
  ret i1 true, !dbg !5947
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5948 dso_local void @__rcu_read_lock() #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dma_fence_get_rcu(ptr noundef %fence) #2 align 16 !dbg !5949 {
entry:
  %retval = alloca ptr, align 8
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !5951, metadata !DIExpression()), !dbg !5952
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !5953
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 6, !dbg !5955
  %call = call i32 @kref_get_unless_zero(ptr noundef %refcount) #17, !dbg !5956
  %tobool = icmp ne i32 %call, 0, !dbg !5956
  br i1 %tobool, label %if.then, label %if.else, !dbg !5957

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !5958
  store ptr %1, ptr %retval, align 8, !dbg !5959
  br label %return, !dbg !5959

if.else:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5960
  br label %return, !dbg !5960

return:                                           ; preds = %if.else, %if.then
  %2 = load ptr, ptr %retval, align 8, !dbg !5961
  ret ptr %2, !dbg !5961
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_get_unless_zero(ptr noundef %kref) #2 align 16 !dbg !5962 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !5966, metadata !DIExpression()), !dbg !5967
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !5968
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !5969
  %call = call zeroext i1 @refcount_inc_not_zero(ptr noundef %refcount) #17, !dbg !5970
  %conv = zext i1 %call to i32, !dbg !5970
  ret i32 %conv, !dbg !5971
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_inc_not_zero(ptr noundef %r) #2 align 16 !dbg !5972 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5974, metadata !DIExpression()), !dbg !5975
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5976
  %call = call zeroext i1 @__refcount_inc_not_zero(ptr noundef %0, ptr noundef null) #17, !dbg !5977
  ret i1 %call, !dbg !5978
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_inc_not_zero(ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !5979 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5981, metadata !DIExpression()), !dbg !5983
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5982, metadata !DIExpression()), !dbg !5984
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5985
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !5986
  %call = call zeroext i1 @__refcount_add_not_zero(i32 noundef 1, ptr noundef %0, ptr noundef %1) #17, !dbg !5987
  ret i1 %call, !dbg !5988
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_add_not_zero(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !5989 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5991, metadata !DIExpression()), !dbg !5995
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5992, metadata !DIExpression()), !dbg !5996
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5993, metadata !DIExpression()), !dbg !5997
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #18, !dbg !5998
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5994, metadata !DIExpression()), !dbg !5999
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6000
  %call = call i32 @refcount_read(ptr noundef %0) #17, !dbg !6001
  store i32 %call, ptr %old, align 4, !dbg !5999
  br label %do.body, !dbg !6002

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, ptr %old, align 4, !dbg !6003
  %tobool = icmp ne i32 %1, 0, !dbg !6003
  br i1 %tobool, label %if.end, label %if.then, !dbg !6006

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !6007

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !6008

do.cond:                                          ; preds = %if.end
  %2 = load ptr, ptr %r.addr, align 8, !dbg !6009
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %2, i32 0, i32 0, !dbg !6010
  %3 = load i32, ptr %old, align 4, !dbg !6011
  %4 = load i32, ptr %i.addr, align 4, !dbg !6012
  %add = add i32 %3, %4, !dbg !6013
  %call1 = call zeroext i1 @atomic_try_cmpxchg_relaxed(ptr noundef %refs, ptr noundef %old, i32 noundef %add) #17, !dbg !6014
  %lnot = xor i1 %call1, true, !dbg !6015
  br i1 %lnot, label %do.body, label %do.end, !dbg !6008, !llvm.loop !6016

do.end:                                           ; preds = %do.cond, %if.then
  %5 = load ptr, ptr %oldp.addr, align 8, !dbg !6018
  %tobool2 = icmp ne ptr %5, null, !dbg !6018
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6020

if.then3:                                         ; preds = %do.end
  %6 = load i32, ptr %old, align 4, !dbg !6021
  %7 = load ptr, ptr %oldp.addr, align 8, !dbg !6022
  store i32 %6, ptr %7, align 4, !dbg !6023
  br label %if.end4, !dbg !6024

if.end4:                                          ; preds = %if.then3, %do.end
  %8 = load i32, ptr %old, align 4, !dbg !6025
  %cmp = icmp slt i32 %8, 0, !dbg !6025
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6025

lor.rhs:                                          ; preds = %if.end4
  %9 = load i32, ptr %old, align 4, !dbg !6025
  %10 = load i32, ptr %i.addr, align 4, !dbg !6025
  %add5 = add i32 %9, %10, !dbg !6025
  %cmp6 = icmp slt i32 %add5, 0, !dbg !6025
  br label %lor.end, !dbg !6025

lor.end:                                          ; preds = %lor.rhs, %if.end4
  %11 = phi i1 [ true, %if.end4 ], [ %cmp6, %lor.rhs ]
  %lnot7 = xor i1 %11, true, !dbg !6025
  %lnot8 = xor i1 %lnot7, true, !dbg !6025
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !6025
  %conv = sext i32 %lnot.ext to i64, !dbg !6025
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6025
  %tobool9 = icmp ne i64 %expval, 0, !dbg !6025
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !6027

if.then10:                                        ; preds = %lor.end
  %12 = load ptr, ptr %r.addr, align 8, !dbg !6028
  call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 0) #17, !dbg !6029
  br label %if.end11, !dbg !6029

if.end11:                                         ; preds = %if.then10, %lor.end
  %13 = load i32, ptr %old, align 4, !dbg !6030
  %tobool12 = icmp ne i32 %13, 0, !dbg !6030
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #18, !dbg !6031
  ret i1 %tobool12, !dbg !6032
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @refcount_read(ptr noundef %r) #2 align 16 !dbg !6033 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6039, metadata !DIExpression()), !dbg !6040
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6041
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !6042
  %call = call i32 @atomic_read(ptr noundef %refs) #17, !dbg !6043
  ret i32 %call, !dbg !6044
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_try_cmpxchg_relaxed(ptr noundef %v, ptr noundef %old, i32 noundef %new) #9 align 16 !dbg !6045 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6049, metadata !DIExpression()), !dbg !6052
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6050, metadata !DIExpression()), !dbg !6053
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6051, metadata !DIExpression()), !dbg !6054
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6055
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !6056
  %1 = load ptr, ptr %old.addr, align 8, !dbg !6057
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 4) #17, !dbg !6058
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6059
  %3 = load ptr, ptr %old.addr, align 8, !dbg !6060
  %4 = load i32, ptr %new.addr, align 4, !dbg !6061
  %call = call zeroext i1 @raw_atomic_try_cmpxchg_relaxed(ptr noundef %2, ptr noundef %3, i32 noundef %4) #17, !dbg !6062
  ret i1 %call, !dbg !6063
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #9 align 16 !dbg !6064 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6070, metadata !DIExpression()), !dbg !6071
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6072
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #17, !dbg !6073
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6074
  %call = call i32 @raw_atomic_read(ptr noundef %1) #17, !dbg !6075
  ret i32 %call, !dbg !6076
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #9 align 16 !dbg !6077 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6079, metadata !DIExpression()), !dbg !6080
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6081
  %call = call i32 @arch_atomic_read(ptr noundef %0) #17, !dbg !6082
  ret i32 %call, !dbg !6083
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #9 align 16 !dbg !6084 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6086, metadata !DIExpression()), !dbg !6087
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6088
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6088
  %1 = load volatile i32, ptr %counter, align 4, !dbg !6088
  ret i32 %1, !dbg !6089
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg_relaxed(ptr noundef %v, ptr noundef %old, i32 noundef %new) #9 align 16 !dbg !6090 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6092, metadata !DIExpression()), !dbg !6095
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6093, metadata !DIExpression()), !dbg !6096
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6094, metadata !DIExpression()), !dbg !6097
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6098
  %1 = load ptr, ptr %old.addr, align 8, !dbg !6099
  %2 = load i32, ptr %new.addr, align 4, !dbg !6100
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #17, !dbg !6101
  ret i1 %call, !dbg !6102
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #9 align 16 !dbg !6103 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6105, metadata !DIExpression()), !dbg !6114
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6106, metadata !DIExpression()), !dbg !6115
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6107, metadata !DIExpression()), !dbg !6116
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #18, !dbg !6117
  call void @llvm.dbg.declare(metadata ptr %success, metadata !6108, metadata !DIExpression()), !dbg !6117
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #18, !dbg !6117
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !6110, metadata !DIExpression()), !dbg !6117
  %0 = load ptr, ptr %old.addr, align 8, !dbg !6117
  store ptr %0, ptr %_old, align 8, !dbg !6117
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #18, !dbg !6117
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !6111, metadata !DIExpression()), !dbg !6117
  %1 = load ptr, ptr %_old, align 8, !dbg !6117
  %2 = load i32, ptr %1, align 4, !dbg !6117
  store i32 %2, ptr %__old, align 4, !dbg !6117
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #18, !dbg !6117
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !6112, metadata !DIExpression()), !dbg !6117
  %3 = load i32, ptr %new.addr, align 4, !dbg !6117
  store i32 %3, ptr %__new, align 4, !dbg !6117
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #18, !dbg !6117
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6113, metadata !DIExpression()), !dbg !6117
  %4 = load ptr, ptr %v.addr, align 8, !dbg !6117
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !6117
  store ptr %counter, ptr %__ptr, align 8, !dbg !6117
  %5 = load ptr, ptr %__ptr, align 8, !dbg !6117
  %6 = load i32, ptr %__old, align 4, !dbg !6117
  %7 = load i32, ptr %__new, align 4, !dbg !6117
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #18, !dbg !6117, !srcloc !6118
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !6117
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !6117
  %9 = icmp ult i8 %asmresult, 2, !dbg !6117
  call void @llvm.assume(i1 %9), !dbg !6117
  store i8 %asmresult, ptr %success, align 1, !dbg !6117
  store i32 %asmresult1, ptr %__old, align 4, !dbg !6117
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #18, !dbg !6117
  %10 = load i8, ptr %success, align 1, !dbg !6119, !range !4566, !noundef !703
  %tobool = trunc i8 %10 to i1, !dbg !6119
  %lnot = xor i1 %tobool, true, !dbg !6119
  %lnot2 = xor i1 %lnot, true, !dbg !6119
  %lnot3 = xor i1 %lnot2, true, !dbg !6119
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6119
  %conv = sext i32 %lnot.ext to i64, !dbg !6119
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6119
  %tobool4 = icmp ne i64 %expval, 0, !dbg !6119
  br i1 %tobool4, label %if.then, label %if.end, !dbg !6117

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !6119
  %12 = load ptr, ptr %_old, align 8, !dbg !6119
  store i32 %11, ptr %12, align 4, !dbg !6119
  br label %if.end, !dbg !6119

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !6117, !range !4566, !noundef !703
  %tobool5 = trunc i8 %13 to i1, !dbg !6117
  %lnot6 = xor i1 %tobool5, true, !dbg !6117
  %lnot8 = xor i1 %lnot6, true, !dbg !6117
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !6117
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !6117
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !6117
  store i64 %expval11, ptr %tmp, align 8, !dbg !6119
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #18, !dbg !6121
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #18, !dbg !6121
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #18, !dbg !6121
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #18, !dbg !6121
  %14 = load i64, ptr %tmp, align 8, !dbg !6117
  %tobool12 = icmp ne i64 %14, 0, !dbg !6121
  ret i1 %tobool12, !dbg !6122
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6123 dso_local void @__rcu_read_unlock() #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare !dbg !6124 dso_local ptr @krealloc(ptr noundef, i64 noundef, i32 noundef) #16

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(1,2) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { noredzone null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { noredzone }
attributes #18 = { nounwind }
attributes #19 = { noredzone nounwind willreturn memory(none) }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { noredzone allocsize(1,2) }
attributes #22 = { noredzone allocsize(1) }
attributes #23 = { nounwind memory(read) }
attributes #24 = { noredzone allocsize(2) }
attributes #25 = { noredzone noreturn }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662}
!llvm.ident = !{!3663}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/dma-buf/dma-resv.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c65a64ad60abcd325f0614c2559fda28")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 29)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 27)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "reservation_ww_class", scope: !14, file: !2, line: 57, type: !3647, isLocal: false, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/dma-buf/.dma-resv.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/dma-buf/dma-resv\22 -D KBUILD_BASENAME=\22dma_resv\22 -D KBUILD_MODNAME=\22dma_resv\22 -D __KBUILD_MODNAME=kmod_dma_resv -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/dma-buf/dma-resv.ll drivers/dma-buf/dma-resv.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !122, globals: !288, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16, !22, !30, !35, !41, !49, !65, !72, !78, !85, !92, !97, !107, !114}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !17, line: 65, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!21 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !23, line: 9, baseType: !18, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!24 = !{!25, !26, !27, !28, !29}
!25 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!26 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!27 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!28 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!29 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !31, line: 2052, baseType: !18, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!32 = !{!33, !34}
!33 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!34 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !36, line: 54, baseType: !18, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!37 = !{!38, !39, !40}
!38 = !DIEnumerator(name: "USRQUOTA", value: 0)
!39 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!40 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !42, line: 68, baseType: !18, size: 32, elements: !43)
!42 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!43 = !{!44, !45, !46, !47, !48}
!44 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!45 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!46 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!48 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !50, line: 1325, baseType: !18, size: 32, elements: !51)
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
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !66, line: 15, baseType: !18, size: 32, elements: !67)
!66 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!67 = !{!68, !69, !70, !71}
!68 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!69 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!70 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!71 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !73, line: 16, baseType: !18, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!74 = !{!75, !76, !77}
!75 = !DIEnumerator(name: "TT_NONE", value: 0)
!76 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!77 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !79, line: 51, baseType: !18, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!80 = !{!81, !82, !83, !84}
!81 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!82 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!83 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!84 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_resv_usage", file: !86, line: 71, baseType: !18, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/dma-resv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "33eb7b47491fa42a2c4bcb5c661d5780")
!87 = !{!88, !89, !90, !91}
!88 = !DIEnumerator(name: "DMA_RESV_USAGE_KERNEL", value: 0)
!89 = !DIEnumerator(name: "DMA_RESV_USAGE_WRITE", value: 1)
!90 = !DIEnumerator(name: "DMA_RESV_USAGE_READ", value: 2)
!91 = !DIEnumerator(name: "DMA_RESV_USAGE_BOOKKEEP", value: 3)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !93, line: 10, baseType: !18, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!94 = !{!95, !96}
!95 = !DIEnumerator(name: "false", value: 0)
!96 = !DIEnumerator(name: "true", value: 1)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !98, line: 364, baseType: !18, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!99 = !{!100, !101, !102, !103, !104, !105, !106}
!100 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!101 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!102 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!103 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!104 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!105 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!106 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_fence_flag_bits", file: !108, line: 98, baseType: !18, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/dma-fence.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "250a5e28e66b96be11f66b71d72fa176")
!109 = !{!110, !111, !112, !113}
!110 = !DIEnumerator(name: "DMA_FENCE_FLAG_SIGNALED_BIT", value: 0)
!111 = !DIEnumerator(name: "DMA_FENCE_FLAG_TIMESTAMP_BIT", value: 1)
!112 = !DIEnumerator(name: "DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT", value: 2)
!113 = !DIEnumerator(name: "DMA_FENCE_FLAG_USER_BITS", value: 3)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !115, line: 119, baseType: !18, size: 32, elements: !116)
!115 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!116 = !{!117, !118, !119, !120, !121}
!117 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!118 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!119 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!120 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!121 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!122 = !{!123, !124, !126, !147, !267, !269, !270, !271, !176, !273, !254, !217, !277, !279, !281, !140, !282, !285, !286}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv_list", file: !2, line: 63, size: 192, elements: !128)
!128 = !{!129, !139, !144, !145}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !127, file: !2, line: 64, baseType: !130, size: 128, align: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !131, line: 232, size: 128, align: 64, elements: !132)
!131 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!132 = !{!133, !135}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !130, file: !131, line: 233, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !130, file: !131, line: 234, baseType: !136, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !134}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "num_fences", scope: !127, file: !2, line: 65, baseType: !140, size: 32, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !141, line: 21, baseType: !142)
!141 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !143, line: 27, baseType: !18)
!143 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!144 = !DIDerivedType(tag: DW_TAG_member, name: "max_fences", scope: !127, file: !2, line: 65, baseType: !140, size: 32, offset: 160)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !127, file: !2, line: 66, baseType: !146, offset: 192)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, elements: !265)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !108, line: 65, size: 512, elements: !149)
!149 = !{!150, !193, !237, !248, !252, !253, !255, !264}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !148, file: !108, line: 66, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
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
!170 = !{!171, !177, !185}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !169, file: !165, line: 16, baseType: !172, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !131, line: 174, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 172, size: 32, elements: !174)
!174 = !{!175}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !173, file: !131, line: 173, baseType: !176, size: 32)
!176 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!177 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !165, line: 24, baseType: !178, size: 16)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !169, file: !165, line: 24, size: 16, elements: !179)
!179 = !{!180, !184}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !178, file: !165, line: 25, baseType: !181, size: 8)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !141, line: 17, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !143, line: 21, baseType: !183)
!183 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !178, file: !165, line: 26, baseType: !181, size: 8, offset: 8)
!185 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !165, line: 28, baseType: !186, size: 32)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !169, file: !165, line: 28, size: 32, elements: !187)
!187 = !{!188, !192}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !186, file: !165, line: 29, baseType: !189, size: 16)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !141, line: 19, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !143, line: 24, baseType: !191)
!191 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !186, file: !165, line: 30, baseType: !189, size: 16, offset: 16)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !148, file: !108, line: 67, baseType: !194, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !108, line: 125, size: 640, elements: !197)
!197 = !{!198, !201, !207, !208, !212, !213, !218, !222, !227, !228}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !196, file: !108, line: 132, baseType: !199, size: 8)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !131, line: 35, baseType: !200)
!200 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !196, file: !108, line: 143, baseType: !202, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!205, !147}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !196, file: !108, line: 155, baseType: !202, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !196, file: !108, line: 192, baseType: !209, size: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!199, !147}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !196, file: !108, line: 209, baseType: !209, size: 64, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !196, file: !108, line: 227, baseType: !214, size: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!217, !147, !199, !217}
!217 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !196, file: !108, line: 238, baseType: !219, size: 64, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !147}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !196, file: !108, line: 248, baseType: !223, size: 64, offset: 448)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !147, !226, !176}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !196, file: !108, line: 258, baseType: !223, size: 64, offset: 512)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "set_deadline", scope: !196, file: !108, line: 279, baseType: !229, size: 64, offset: 576)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !147, !232}
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !233, line: 29, baseType: !234)
!233 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !141, line: 22, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !143, line: 30, baseType: !236)
!236 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!237 = !DIDerivedType(tag: DW_TAG_member, scope: !148, file: !108, line: 84, baseType: !238, size: 128, offset: 128)
!238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !148, file: !108, line: 84, size: 128, elements: !239)
!239 = !{!240, !246, !247}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !238, file: !108, line: 85, baseType: !241, size: 128)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !131, line: 190, size: 128, elements: !242)
!242 = !{!243, !245}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !241, file: !131, line: 191, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !241, file: !131, line: 191, baseType: !244, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !238, file: !108, line: 87, baseType: !232, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !238, file: !108, line: 89, baseType: !130, size: 128, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !148, file: !108, line: 91, baseType: !249, size: 64, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !141, line: 23, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !143, line: 31, baseType: !251)
!251 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !148, file: !108, line: 92, baseType: !249, size: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !148, file: !108, line: 93, baseType: !254, size: 64, offset: 384)
!254 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !148, file: !108, line: 94, baseType: !256, size: 32, offset: 448)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !257, line: 19, size: 32, elements: !258)
!257 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!258 = !{!259}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !256, file: !257, line: 20, baseType: !260, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !115, line: 113, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !115, line: 111, size: 32, elements: !262)
!262 = !{!263}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !261, file: !115, line: 112, baseType: !172, size: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !148, file: !108, line: 95, baseType: !176, size: 32, offset: 480)
!265 = !{!266}
!266 = !DISubrange(count: -1)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !147)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !131, line: 42, baseType: !254)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !131, line: 154, baseType: !18)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !131, line: 61, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !275, line: 72, baseType: !276)
!275 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !275, line: 16, baseType: !254)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !176)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !140)
!288 = !{!0, !7, !12, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !328, !333, !338, !343, !3630, !3635, !3637, !3642}
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_reservation_ww_class283", scope: !14, file: !2, line: 58, type: !123, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_resv_init289", scope: !14, file: !2, line: 144, type: !123, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_resv_fini290", scope: !14, file: !2, line: 159, type: !123, isLocal: true, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_resv_reserve_fences302", scope: !14, file: !2, line: 245, type: !123, isLocal: true, isDefinition: true)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !2, line: 294, type: !9, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_resv_add_fence303", scope: !14, file: !2, line: 319, type: !123, isLocal: true, isDefinition: true)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_resv_replace_fences304", scope: !14, file: !2, line: 356, type: !123, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_resv_iter_first_unlocked305", scope: !14, file: !2, line: 423, type: !123, isLocal: true, isDefinition: true)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_resv_iter_next_unlocked306", scope: !14, file: !2, line: 452, type: !123, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_resv_iter_first307", scope: !14, file: !2, line: 476, type: !123, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_resv_iter_next308", scope: !14, file: !2, line: 504, type: !123, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_resv_copy_fences312", scope: !14, file: !2, line: 547, type: !123, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_resv_get_fences313", scope: !14, file: !2, line: 602, type: !123, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_resv_get_singleton314", scope: !14, file: !2, line: 655, type: !123, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_resv_wait_timeout315", scope: !14, file: !2, line: 690, type: !123, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_resv_set_deadline316", scope: !14, file: !2, line: 713, type: !123, isLocal: true, isDefinition: true)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_resv_test_signaled317", scope: !14, file: !2, line: 741, type: !123, isLocal: true, isDefinition: true)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !2, line: 753, type: !325, isLocal: true, isDefinition: true)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 7)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !2, line: 753, type: !330, isLocal: true, isDefinition: true)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 6)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(scope: null, file: !2, line: 753, type: !335, isLocal: true, isDefinition: true)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 5)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !2, line: 753, type: !340, isLocal: true, isDefinition: true)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 9)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(name: "usage", scope: !345, file: !2, line: 753, type: !3629, isLocal: true, isDefinition: true)
!345 = distinct !DISubprogram(name: "dma_resv_describe", scope: !2, file: !2, line: 751, type: !346, scopeLine: 752, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3614)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !348, !1378}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv", file: !86, line: 155, size: 384, elements: !350)
!350 = !{!351, !3613}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !349, file: !86, line: 166, baseType: !352, size: 320)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !353, line: 47, size: 320, elements: !354)
!353 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!354 = !{!355, !374}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !352, file: !353, line: 48, baseType: !356, size: 256)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !357, line: 66, size: 256, elements: !358)
!357 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!358 = !{!359, !366, !368, !373}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !356, file: !357, line: 67, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !361, line: 13, baseType: !362)
!361 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !131, line: 181, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 179, size: 64, elements: !364)
!364 = !{!365}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !363, file: !131, line: 180, baseType: !234, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !356, file: !357, line: 68, baseType: !367, size: 32, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !161, line: 23, baseType: !160)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !356, file: !357, line: 70, baseType: !369, size: 32, offset: 96)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !370, line: 15, size: 32, elements: !371)
!370 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!371 = !{!372}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !369, file: !370, line: 20, baseType: !172, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !356, file: !357, line: 72, baseType: !241, size: 128, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !352, file: !353, line: 49, baseType: !375, size: 64, offset: 256)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !353, line: 55, size: 192, elements: !377)
!377 = !{!378, !3609, !3610, !3611, !3612}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !376, file: !353, line: 56, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !381, line: 746, size: 58368, elements: !382)
!381 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!382 = !{!383, !391, !392, !393, !394, !395, !396, !397, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !475, !486, !584, !588, !591, !622, !623, !624, !625, !636, !638, !639, !640, !641, !642, !643, !654, !655, !658, !659, !660, !661, !662, !663, !664, !665, !672, !673, !680, !681, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2779, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2794, !2795, !2796, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2828, !2834, !2835, !2836, !2837, !2838, !2840, !2843, !2850, !2855, !2858, !2861, !2864, !2867, !3007, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3049, !3050, !3051, !3060, !3068, !3069, !3070, !3071, !3072, !3077, !3078, !3079, !3083, !3084, !3087, !3090, !3093, !3101, !3104, !3105, !3191, !3192, !3193, !3194, !3195, !3201, !3202, !3203, !3204, !3207, !3208, !3211, !3214, !3215, !3218, !3219, !3220, !3223, !3224, !3225, !3226, !3227, !3228, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3260, !3261, !3267, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3279, !3351, !3353, !3354, !3355, !3356, !3357, !3369, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3386, !3387, !3388}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !380, file: !381, line: 752, baseType: !384, size: 192)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !385, line: 56, size: 192, elements: !386)
!385 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!386 = !{!387, !388, !389, !390}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !384, file: !385, line: 57, baseType: !254, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !384, file: !385, line: 58, baseType: !254, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !384, file: !385, line: 59, baseType: !140, size: 32, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !384, file: !385, line: 61, baseType: !140, size: 32, offset: 160)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !380, file: !381, line: 754, baseType: !18, size: 32, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !380, file: !381, line: 767, baseType: !123, size: 64, offset: 256)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !380, file: !381, line: 768, baseType: !260, size: 32, offset: 320)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !380, file: !381, line: 770, baseType: !18, size: 32, offset: 352)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !380, file: !381, line: 771, baseType: !18, size: 32, offset: 384)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !380, file: !381, line: 774, baseType: !176, size: 32, offset: 416)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !380, file: !381, line: 775, baseType: !398, size: 128, offset: 448)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !399, line: 58, size: 128, elements: !400)
!399 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!400 = !{!401, !407, !412, !413}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !398, file: !399, line: 59, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !403, line: 60, size: 64, elements: !404)
!403 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !402, file: !403, line: 61, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, scope: !398, file: !399, line: 60, baseType: !408, size: 32, offset: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !398, file: !399, line: 60, size: 32, elements: !409)
!409 = !{!410, !411}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !408, file: !399, line: 61, baseType: !18, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !408, file: !399, line: 62, baseType: !172, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !398, file: !399, line: 65, baseType: !189, size: 16, offset: 96)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !398, file: !399, line: 65, baseType: !189, size: 16, offset: 112)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !380, file: !381, line: 776, baseType: !18, size: 32, offset: 576)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !380, file: !381, line: 777, baseType: !254, size: 64, offset: 640)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !380, file: !381, line: 778, baseType: !379, size: 64, offset: 704)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !380, file: !381, line: 787, baseType: !176, size: 32, offset: 768)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !380, file: !381, line: 788, baseType: !176, size: 32, offset: 800)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !380, file: !381, line: 790, baseType: !176, size: 32, offset: 832)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !380, file: !381, line: 792, baseType: !176, size: 32, offset: 864)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !380, file: !381, line: 793, baseType: !176, size: 32, offset: 896)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !380, file: !381, line: 794, baseType: !176, size: 32, offset: 928)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !380, file: !381, line: 795, baseType: !18, size: 32, offset: 960)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !380, file: !381, line: 797, baseType: !425, size: 2048, offset: 1024)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !381, line: 551, size: 2048, elements: !426)
!426 = !{!427, !432, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !454, !457, !458, !459}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !425, file: !381, line: 553, baseType: !428, size: 128)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !381, line: 411, size: 128, elements: !429)
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !428, file: !381, line: 412, baseType: !254, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !428, file: !381, line: 413, baseType: !140, size: 32, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !425, file: !381, line: 554, baseType: !433, size: 192, align: 64, offset: 128)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !434, line: 5, size: 192, align: 64, elements: !435)
!434 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!435 = !{!436, !437, !439}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !433, file: !434, line: 6, baseType: !254, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !433, file: !434, line: 7, baseType: !438, size: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !433, file: !434, line: 8, baseType: !438, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !425, file: !381, line: 555, baseType: !249, size: 64, offset: 320)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !425, file: !381, line: 556, baseType: !249, size: 64, offset: 384)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !425, file: !381, line: 558, baseType: !241, size: 128, offset: 448)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !425, file: !381, line: 559, baseType: !18, size: 32, offset: 576)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !425, file: !381, line: 561, baseType: !249, size: 64, offset: 640)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !425, file: !381, line: 562, baseType: !249, size: 64, offset: 704)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !425, file: !381, line: 563, baseType: !249, size: 64, offset: 768)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !425, file: !381, line: 564, baseType: !249, size: 64, offset: 832)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !425, file: !381, line: 565, baseType: !234, size: 64, offset: 896)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !425, file: !381, line: 566, baseType: !249, size: 64, offset: 960)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !425, file: !381, line: 568, baseType: !249, size: 64, offset: 1024)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !425, file: !381, line: 571, baseType: !176, size: 32, offset: 1088)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !425, file: !381, line: 572, baseType: !453, size: 64, offset: 1152)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !425, file: !381, line: 574, baseType: !455, size: 64, offset: 1216)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !381, line: 49, flags: DIFlagFwdDecl)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !425, file: !381, line: 576, baseType: !455, size: 64, offset: 1280)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !425, file: !381, line: 578, baseType: !254, size: 64, offset: 1344)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !425, file: !381, line: 588, baseType: !460, size: 512, align: 512, offset: 1536)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !381, line: 497, size: 512, align: 512, elements: !461)
!461 = !{!462, !463, !464, !465, !466, !467, !468, !469, !470}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !460, file: !381, line: 498, baseType: !249, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !460, file: !381, line: 499, baseType: !249, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !460, file: !381, line: 500, baseType: !249, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !460, file: !381, line: 501, baseType: !140, size: 32, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !460, file: !381, line: 502, baseType: !140, size: 32, offset: 224)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !460, file: !381, line: 503, baseType: !254, size: 64, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !460, file: !381, line: 504, baseType: !254, size: 64, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !460, file: !381, line: 505, baseType: !254, size: 64, offset: 384)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !460, file: !381, line: 506, baseType: !471, size: 64, align: 64, offset: 448)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !381, line: 445, size: 64, align: 64, elements: !472)
!472 = !{!473, !474}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !471, file: !381, line: 446, baseType: !18, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !471, file: !381, line: 447, baseType: !18, size: 32, offset: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !380, file: !381, line: 798, baseType: !476, size: 384, offset: 3072)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !381, line: 592, size: 384, elements: !477)
!477 = !{!478, !479, !480, !481, !482, !483, !484}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !476, file: !381, line: 593, baseType: !241, size: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !476, file: !381, line: 594, baseType: !254, size: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !476, file: !381, line: 595, baseType: !254, size: 64, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !476, file: !381, line: 596, baseType: !18, size: 32, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !476, file: !381, line: 597, baseType: !191, size: 16, offset: 288)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !476, file: !381, line: 598, baseType: !191, size: 16, offset: 304)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !476, file: !381, line: 600, baseType: !485, size: 64, offset: 320)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !380, file: !381, line: 799, baseType: !487, size: 1792, offset: 3456)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !381, line: 610, size: 1792, elements: !488)
!488 = !{!489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !581, !582}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !487, file: !381, line: 611, baseType: !433, size: 192, align: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !487, file: !381, line: 618, baseType: !249, size: 64, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !487, file: !381, line: 619, baseType: !249, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !487, file: !381, line: 620, baseType: !249, size: 64, offset: 320)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !487, file: !381, line: 621, baseType: !249, size: 64, offset: 384)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !487, file: !381, line: 622, baseType: !249, size: 64, offset: 448)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !487, file: !381, line: 629, baseType: !234, size: 64, offset: 512)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !487, file: !381, line: 630, baseType: !249, size: 64, offset: 576)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !487, file: !381, line: 631, baseType: !18, size: 32, offset: 640)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !487, file: !381, line: 653, baseType: !18, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !487, file: !381, line: 654, baseType: !18, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !487, file: !381, line: 655, baseType: !18, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !487, file: !381, line: 656, baseType: !18, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !487, file: !381, line: 662, baseType: !503, size: 512, offset: 704)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !17, line: 118, size: 512, elements: !504)
!504 = !{!505, !511, !512, !517, !577, !578, !579, !580}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !503, file: !17, line: 119, baseType: !506, size: 256)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !507, line: 9, size: 256, elements: !508)
!507 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!508 = !{!509, !510}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !506, file: !507, line: 10, baseType: !433, size: 192, align: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !506, file: !507, line: 11, baseType: !232, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !503, file: !17, line: 120, baseType: !232, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !503, file: !17, line: 121, baseType: !513, size: 64, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!16, !516}
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !503, file: !17, line: 122, baseType: !518, size: 64, offset: 384)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !17, line: 159, size: 512, align: 512, elements: !520)
!520 = !{!521, !546, !547, !550, !560, !561, !572, !576}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !519, file: !17, line: 160, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !17, line: 215, size: 4608, align: 512, elements: !524)
!524 = !{!525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !523, file: !17, line: 216, baseType: !367, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !523, file: !17, line: 217, baseType: !18, size: 32, offset: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !523, file: !17, line: 218, baseType: !18, size: 32, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !523, file: !17, line: 219, baseType: !18, size: 32, offset: 96)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !523, file: !17, line: 220, baseType: !18, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !523, file: !17, line: 221, baseType: !18, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !523, file: !17, line: 222, baseType: !18, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !523, file: !17, line: 223, baseType: !18, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !523, file: !17, line: 224, baseType: !18, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !523, file: !17, line: 226, baseType: !18, size: 32, offset: 160)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !523, file: !17, line: 227, baseType: !191, size: 16, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !523, file: !17, line: 228, baseType: !191, size: 16, offset: 208)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !523, file: !17, line: 229, baseType: !18, size: 32, offset: 224)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !523, file: !17, line: 235, baseType: !232, size: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !523, file: !17, line: 236, baseType: !516, size: 64, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !523, file: !17, line: 237, baseType: !232, size: 64, offset: 384)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !523, file: !17, line: 238, baseType: !516, size: 64, offset: 448)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !523, file: !17, line: 239, baseType: !543, size: 4096, align: 512, offset: 512)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, size: 4096, align: 512, elements: !544)
!544 = !{!545}
!545 = !DISubrange(count: 8)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !519, file: !17, line: 161, baseType: !18, size: 32, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !519, file: !17, line: 162, baseType: !548, size: 32, offset: 96)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !131, line: 32, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !275, line: 96, baseType: !176)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !519, file: !17, line: 163, baseType: !551, size: 32, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !552, line: 274, baseType: !553)
!552 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !552, line: 274, size: 32, elements: !554)
!554 = !{!555}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !553, file: !552, line: 274, baseType: !556, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !552, line: 69, baseType: !557)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !552, line: 64, size: 32, elements: !558)
!558 = !{!559}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !557, file: !552, line: 65, baseType: !18, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !519, file: !17, line: 164, baseType: !516, size: 64, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !519, file: !17, line: 165, baseType: !562, size: 128, offset: 256)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !507, line: 14, size: 128, elements: !563)
!563 = !{!564}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !562, file: !507, line: 15, baseType: !565, size: 128)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !434, line: 26, size: 128, elements: !566)
!566 = !{!567, !571}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !565, file: !434, line: 27, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !434, line: 12, size: 64, elements: !569)
!569 = !{!570}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !568, file: !434, line: 13, baseType: !438, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !565, file: !434, line: 28, baseType: !438, size: 64, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !519, file: !17, line: 166, baseType: !573, size: 64, offset: 384)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!232}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !519, file: !17, line: 167, baseType: !232, size: 64, offset: 448)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !503, file: !17, line: 123, baseType: !181, size: 8, offset: 448)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !503, file: !17, line: 124, baseType: !181, size: 8, offset: 456)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !503, file: !17, line: 125, baseType: !181, size: 8, offset: 464)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !503, file: !17, line: 126, baseType: !181, size: 8, offset: 472)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !487, file: !381, line: 671, baseType: !503, size: 512, offset: 1216)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !487, file: !381, line: 679, baseType: !583, size: 64, offset: 1728)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !380, file: !381, line: 800, baseType: !585, size: 64, offset: 5248)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !587)
!587 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !381, line: 800, flags: DIFlagFwdDecl)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !380, file: !381, line: 809, baseType: !589, size: 64, offset: 5312)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !381, line: 70, flags: DIFlagFwdDecl)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !380, file: !381, line: 825, baseType: !592, size: 2048, align: 512, offset: 5632)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !381, line: 509, size: 2048, align: 512, elements: !593)
!593 = !{!594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !592, file: !381, line: 511, baseType: !249, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !592, file: !381, line: 512, baseType: !249, size: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !592, file: !381, line: 513, baseType: !249, size: 64, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !592, file: !381, line: 514, baseType: !249, size: 64, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !592, file: !381, line: 515, baseType: !249, size: 64, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !592, file: !381, line: 516, baseType: !249, size: 64, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !592, file: !381, line: 518, baseType: !249, size: 64, offset: 384)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !592, file: !381, line: 519, baseType: !249, size: 64, offset: 448)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !592, file: !381, line: 520, baseType: !234, size: 64, offset: 512)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !592, file: !381, line: 522, baseType: !249, size: 64, offset: 576)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !592, file: !381, line: 523, baseType: !249, size: 64, offset: 640)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !592, file: !381, line: 524, baseType: !234, size: 64, offset: 704)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !592, file: !381, line: 526, baseType: !234, size: 64, offset: 768)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !592, file: !381, line: 527, baseType: !249, size: 64, offset: 832)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !592, file: !381, line: 529, baseType: !249, size: 64, offset: 896)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !592, file: !381, line: 530, baseType: !249, size: 64, offset: 960)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !592, file: !381, line: 531, baseType: !249, size: 64, offset: 1024)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !592, file: !381, line: 532, baseType: !249, size: 64, offset: 1088)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !592, file: !381, line: 533, baseType: !249, size: 64, offset: 1152)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !592, file: !381, line: 535, baseType: !249, size: 64, offset: 1216)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !592, file: !381, line: 536, baseType: !249, size: 64, offset: 1280)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !592, file: !381, line: 537, baseType: !249, size: 64, offset: 1344)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !592, file: !381, line: 538, baseType: !249, size: 64, offset: 1408)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !592, file: !381, line: 539, baseType: !249, size: 64, offset: 1472)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !592, file: !381, line: 540, baseType: !249, size: 64, offset: 1536)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !592, file: !381, line: 541, baseType: !249, size: 64, offset: 1600)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !592, file: !381, line: 542, baseType: !249, size: 64, offset: 1664)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !592, file: !381, line: 543, baseType: !249, size: 64, offset: 1728)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !380, file: !381, line: 833, baseType: !18, size: 32, offset: 7680)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !380, file: !381, line: 836, baseType: !18, size: 32, offset: 7712)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !380, file: !381, line: 837, baseType: !176, size: 32, offset: 7744)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !380, file: !381, line: 838, baseType: !626, size: 64, offset: 7808)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !628)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !629, line: 19, baseType: !630)
!629 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !629, line: 19, size: 64, elements: !631)
!631 = !{!632}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !630, file: !629, line: 19, baseType: !633, size: 64)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 64, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 1)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !380, file: !381, line: 839, baseType: !637, size: 64, offset: 7872)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !380, file: !381, line: 840, baseType: !628, size: 64, offset: 7936)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !380, file: !381, line: 841, baseType: !123, size: 64, offset: 8000)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !380, file: !381, line: 843, baseType: !191, size: 16, offset: 8064)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !380, file: !381, line: 845, baseType: !191, size: 16, offset: 8080)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !380, file: !381, line: 848, baseType: !176, size: 32, offset: 8096)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !380, file: !381, line: 849, baseType: !644, size: 32, offset: 8128)
!644 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !381, line: 718, size: 32, elements: !645)
!645 = !{!646, !653}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !644, file: !381, line: 724, baseType: !647, size: 32)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !644, file: !381, line: 719, size: 32, elements: !648)
!648 = !{!649, !650, !651, !652}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !647, file: !381, line: 720, baseType: !181, size: 8)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !647, file: !381, line: 721, baseType: !181, size: 8, offset: 8)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !647, file: !381, line: 722, baseType: !181, size: 8, offset: 16)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !647, file: !381, line: 723, baseType: !181, size: 8, offset: 24)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !644, file: !381, line: 725, baseType: !140, size: 32)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !380, file: !381, line: 850, baseType: !241, size: 128, offset: 8192)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !380, file: !381, line: 851, baseType: !656, size: 64, offset: 8320)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !381, line: 60, flags: DIFlagFwdDecl)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !380, file: !381, line: 855, baseType: !254, size: 64, offset: 8384)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !380, file: !381, line: 856, baseType: !181, size: 8, offset: 8448)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !380, file: !381, line: 857, baseType: !181, size: 8, offset: 8456)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !380, file: !381, line: 858, baseType: !176, size: 32, offset: 8480)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !380, file: !381, line: 859, baseType: !241, size: 128, offset: 8512)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !380, file: !381, line: 860, baseType: !176, size: 32, offset: 8640)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !380, file: !381, line: 861, baseType: !241, size: 128, offset: 8704)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !380, file: !381, line: 873, baseType: !666, size: 256, offset: 8832)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !381, line: 376, size: 256, elements: !667)
!667 = !{!668, !669, !670, !671}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !666, file: !381, line: 381, baseType: !254, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !666, file: !381, line: 384, baseType: !251, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !666, file: !381, line: 389, baseType: !251, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !666, file: !381, line: 392, baseType: !251, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !380, file: !381, line: 875, baseType: !241, size: 128, offset: 9088)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !380, file: !381, line: 877, baseType: !674, size: 320, offset: 9216)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !675, line: 86, size: 320, elements: !676)
!675 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!676 = !{!677, !678, !679}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !674, file: !675, line: 87, baseType: !176, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !674, file: !675, line: 88, baseType: !241, size: 128, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !674, file: !675, line: 89, baseType: !241, size: 128, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !380, file: !381, line: 878, baseType: !433, size: 192, align: 64, offset: 9536)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !380, file: !381, line: 881, baseType: !682, size: 64, offset: 9728)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !50, line: 733, size: 10240, elements: !684)
!684 = !{!685, !2698}
!685 = !DIDerivedType(tag: DW_TAG_member, scope: !683, file: !50, line: 734, baseType: !686, size: 10240)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !683, file: !50, line: 734, size: 10240, elements: !687)
!687 = !{!688, !692, !706, !2596, !2597, !2598, !2599, !2600, !2601, !2608, !2609, !2610, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2649, !2651, !2654, !2678, !2679, !2680, !2683, !2684, !2685, !2688, !2689, !2690, !2696, !2697}
!688 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !50, line: 739, baseType: !689, size: 512, align: 512)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !686, file: !50, line: 739, size: 512, align: 512, elements: !690)
!690 = !{!691}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !689, file: !50, line: 747, baseType: !172, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !686, file: !50, line: 750, baseType: !693, size: 128, offset: 512)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !694, line: 218, size: 128, elements: !695)
!694 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!695 = !{!696, !704, !705}
!696 = !DIDerivedType(tag: DW_TAG_member, scope: !693, file: !694, line: 219, baseType: !697, size: 32)
!697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !693, file: !694, line: 219, size: 32, elements: !698)
!698 = !{!699, !700}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !697, file: !694, line: 220, baseType: !152, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !697, file: !694, line: 221, baseType: !701)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !694, line: 197, baseType: !702)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !694, line: 197, elements: !703)
!703 = !{}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !693, file: !694, line: 223, baseType: !18, size: 32, offset: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !693, file: !694, line: 224, baseType: !123, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !686, file: !50, line: 752, baseType: !707, size: 64, offset: 640)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!254, !710, !254, !254, !254, !254}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 994, size: 1856, align: 64, elements: !712)
!712 = !{!713, !719, !720, !722, !723, !724, !727, !728, !802, !1008, !1017, !2586, !2587, !2588, !2589, !2590, !2591, !2593, !2594, !2595}
!713 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !31, line: 995, baseType: !714, size: 128)
!714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !711, file: !31, line: 995, size: 128, elements: !715)
!715 = !{!716, !717, !718}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !714, file: !31, line: 996, baseType: !402, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !714, file: !31, line: 997, baseType: !130, size: 128, align: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !714, file: !31, line: 998, baseType: !18, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !711, file: !31, line: 1005, baseType: !152, size: 32, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !711, file: !31, line: 1006, baseType: !721, size: 32, offset: 160)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !131, line: 156, baseType: !18)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !711, file: !31, line: 1007, baseType: !360, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !711, file: !31, line: 1008, baseType: !356, size: 256, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !711, file: !31, line: 1009, baseType: !725, size: 64, offset: 512)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !131, line: 52, baseType: !726)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !275, line: 88, baseType: !236)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !711, file: !31, line: 1010, baseType: !18, size: 32, offset: 576)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !711, file: !31, line: 1011, baseType: !729, size: 256, offset: 640)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 948, size: 256, elements: !730)
!730 = !{!731, !754, !791, !792, !800, !801}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !729, file: !31, line: 949, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !733, line: 34, baseType: !734)
!733 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !733, line: 25, size: 64, elements: !735)
!735 = !{!736}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !734, file: !733, line: 26, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !738, line: 27, baseType: !739)
!738 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !738, line: 13, size: 64, elements: !740)
!740 = !{!741, !753}
!741 = !DIDerivedType(tag: DW_TAG_member, scope: !739, file: !738, line: 14, baseType: !742, size: 32)
!742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !739, file: !738, line: 14, size: 32, elements: !743)
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !742, file: !738, line: 15, baseType: !172, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, scope: !742, file: !738, line: 16, baseType: !746, size: 32)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !742, file: !738, line: 16, size: 32, elements: !747)
!747 = !{!748, !749}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !746, file: !738, line: 18, baseType: !181, size: 8)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !746, file: !738, line: 19, baseType: !750, size: 24, offset: 8)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 24, elements: !751)
!751 = !{!752}
!752 = !DISubrange(count: 3)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !739, file: !738, line: 26, baseType: !164, size: 32, offset: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !729, file: !31, line: 950, baseType: !755, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !23, line: 59, size: 768, elements: !757)
!757 = !{!758, !759, !760, !761, !774, !775, !782, !783}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !756, file: !23, line: 61, baseType: !260, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !756, file: !23, line: 62, baseType: !18, size: 32, offset: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !756, file: !23, line: 63, baseType: !152, size: 32, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !756, file: !23, line: 65, baseType: !762, size: 256, offset: 128)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !763, size: 256, elements: !772)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !131, line: 194, size: 64, elements: !764)
!764 = !{!765}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !763, file: !131, line: 195, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !131, line: 198, size: 128, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !767, file: !131, line: 199, baseType: !766, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !767, file: !131, line: 199, baseType: !771, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!772 = !{!773}
!773 = !DISubrange(count: 4)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !756, file: !23, line: 66, baseType: !763, size: 64, offset: 384)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !756, file: !23, line: 68, baseType: !776, size: 192, offset: 448)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !777, line: 41, baseType: !778)
!777 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !777, line: 37, size: 192, elements: !779)
!779 = !{!780, !781}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !778, file: !777, line: 38, baseType: !152, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !778, file: !777, line: 39, baseType: !241, size: 128, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !756, file: !23, line: 69, baseType: !130, size: 128, align: 64, offset: 640)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !756, file: !23, line: 70, baseType: !784, offset: 768)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !785, elements: !265)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !23, line: 54, size: 128, elements: !786)
!786 = !{!787, !788}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !785, file: !23, line: 55, baseType: !176, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !785, file: !23, line: 56, baseType: !789, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !23, line: 56, flags: DIFlagFwdDecl)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !729, file: !31, line: 951, baseType: !22, size: 32, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !729, file: !31, line: 952, baseType: !793, size: 32, offset: 160)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !794, line: 23, baseType: !795)
!794 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !794, line: 21, size: 32, elements: !796)
!796 = !{!797}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !795, file: !794, line: 22, baseType: !798, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !131, line: 37, baseType: !799)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !275, line: 49, baseType: !18)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !729, file: !31, line: 952, baseType: !793, size: 32, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !729, file: !31, line: 953, baseType: !176, size: 32, offset: 224)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !711, file: !31, line: 1012, baseType: !803, size: 64, offset: 896)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !805)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !806, line: 110, size: 1472, elements: !807)
!806 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!807 = !{!808, !809, !810, !817, !818, !819, !820, !821, !822, !823, !824, !830, !831, !832, !833, !834, !835, !953, !954, !955, !956, !957, !988, !991, !995, !1003}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !805, file: !806, line: 111, baseType: !360, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !805, file: !806, line: 112, baseType: !793, size: 32, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !805, file: !806, line: 113, baseType: !811, size: 32, offset: 96)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !794, line: 28, baseType: !812)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !794, line: 26, size: 32, elements: !813)
!813 = !{!814}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !812, file: !794, line: 27, baseType: !815, size: 32)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !131, line: 38, baseType: !816)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !275, line: 50, baseType: !18)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !805, file: !806, line: 114, baseType: !793, size: 32, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !805, file: !806, line: 115, baseType: !811, size: 32, offset: 160)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !805, file: !806, line: 116, baseType: !793, size: 32, offset: 192)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !805, file: !806, line: 117, baseType: !811, size: 32, offset: 224)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !805, file: !806, line: 118, baseType: !793, size: 32, offset: 256)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !805, file: !806, line: 119, baseType: !811, size: 32, offset: 288)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !805, file: !806, line: 120, baseType: !18, size: 32, offset: 320)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !805, file: !806, line: 121, baseType: !825, size: 64, offset: 384)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !826, line: 24, baseType: !827)
!826 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !826, line: 24, size: 64, elements: !828)
!828 = !{!829}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !827, file: !826, line: 24, baseType: !249, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !805, file: !806, line: 122, baseType: !825, size: 64, offset: 448)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !805, file: !806, line: 123, baseType: !825, size: 64, offset: 512)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !805, file: !806, line: 124, baseType: !825, size: 64, offset: 576)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !805, file: !806, line: 125, baseType: !825, size: 64, offset: 640)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !805, file: !806, line: 127, baseType: !183, size: 8, offset: 704)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !805, file: !806, line: 129, baseType: !836, size: 64, offset: 768)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !838, line: 195, size: 1728, elements: !839)
!838 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!839 = !{!840, !841, !846, !851, !860, !863, !864, !871, !872, !873, !874, !877, !878, !879, !881, !882, !917, !938}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !837, file: !838, line: 196, baseType: !260, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !837, file: !838, line: 197, baseType: !842, size: 32, offset: 32)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !838, line: 28, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !131, line: 104, baseType: !844)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !141, line: 20, baseType: !845)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !143, line: 26, baseType: !176)
!846 = !DIDerivedType(tag: DW_TAG_member, scope: !837, file: !838, line: 198, baseType: !847, size: 192, offset: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !837, file: !838, line: 198, size: 192, elements: !848)
!848 = !{!849, !850}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !847, file: !838, line: 199, baseType: !241, size: 128)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !847, file: !838, line: 200, baseType: !433, size: 192, align: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !837, file: !838, line: 205, baseType: !852, size: 320, offset: 256)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !853, line: 48, size: 320, elements: !854)
!853 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!854 = !{!855, !856, !857, !858, !859}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !852, file: !853, line: 49, baseType: !360, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !852, file: !853, line: 55, baseType: !360, size: 64, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !852, file: !853, line: 57, baseType: !369, size: 32, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !852, file: !853, line: 59, baseType: !367, size: 32, offset: 160)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !852, file: !853, line: 60, baseType: !241, size: 128, offset: 192)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !837, file: !838, line: 206, baseType: !861, size: 64, offset: 576)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !838, line: 206, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !837, file: !838, line: 207, baseType: !123, size: 64, offset: 640)
!864 = !DIDerivedType(tag: DW_TAG_member, scope: !837, file: !838, line: 208, baseType: !865, size: 64, offset: 704)
!865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !837, file: !838, line: 208, size: 64, elements: !866)
!866 = !{!867, !870}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !865, file: !838, line: 209, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !869, line: 8, baseType: !235)
!869 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!870 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !865, file: !838, line: 210, baseType: !868, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !837, file: !838, line: 212, baseType: !868, size: 64, offset: 768)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !837, file: !838, line: 213, baseType: !793, size: 32, offset: 832)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !837, file: !838, line: 214, baseType: !811, size: 32, offset: 864)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !837, file: !838, line: 215, baseType: !875, size: 32, offset: 896)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !838, line: 31, baseType: !876)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !131, line: 110, baseType: !140)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !837, file: !838, line: 216, baseType: !191, size: 16, offset: 928)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !837, file: !838, line: 217, baseType: !191, size: 16, offset: 944)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !837, file: !838, line: 221, baseType: !880, size: 16, offset: 960)
!880 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !837, file: !838, line: 228, baseType: !254, size: 64, offset: 1024)
!882 = !DIDerivedType(tag: DW_TAG_member, scope: !837, file: !838, line: 245, baseType: !883, size: 320, offset: 1088)
!883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !837, file: !838, line: 245, size: 320, elements: !884)
!884 = !{!885, !909}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !883, file: !838, line: 246, baseType: !886, size: 320)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !838, line: 114, size: 320, elements: !887)
!887 = !{!888, !889, !898, !901, !908}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !886, file: !838, line: 116, baseType: !254, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, scope: !886, file: !838, line: 117, baseType: !890, size: 64, offset: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !886, file: !838, line: 117, size: 64, elements: !891)
!891 = !{!892, !897}
!892 = !DIDerivedType(tag: DW_TAG_member, scope: !890, file: !838, line: 118, baseType: !893, size: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !890, file: !838, line: 118, size: 64, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !893, file: !838, line: 120, baseType: !189, size: 16)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !893, file: !838, line: 121, baseType: !330, size: 48, offset: 16)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !890, file: !838, line: 127, baseType: !254, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !886, file: !838, line: 129, baseType: !899, size: 64, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !838, line: 102, flags: DIFlagFwdDecl)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !886, file: !838, line: 130, baseType: !902, size: 64, offset: 192)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !838, line: 108, size: 192, elements: !904)
!904 = !{!905, !906, !907}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !903, file: !838, line: 109, baseType: !130, size: 128, align: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !903, file: !838, line: 110, baseType: !260, size: 32, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !903, file: !838, line: 111, baseType: !199, size: 8, offset: 160)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !886, file: !838, line: 131, baseType: !205, size: 64, offset: 256)
!909 = !DIDerivedType(tag: DW_TAG_member, scope: !883, file: !838, line: 247, baseType: !910, size: 320)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !838, line: 247, size: 320, elements: !911)
!911 = !{!912, !913, !914, !915, !916}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !910, file: !838, line: 248, baseType: !254, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !910, file: !838, line: 249, baseType: !254, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !910, file: !838, line: 250, baseType: !899, size: 64, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !910, file: !838, line: 251, baseType: !902, size: 64, offset: 192)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !910, file: !838, line: 252, baseType: !226, size: 64, offset: 256)
!917 = !DIDerivedType(tag: DW_TAG_member, scope: !837, file: !838, line: 260, baseType: !918, size: 256, offset: 1408)
!918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !837, file: !838, line: 260, size: 256, elements: !919)
!919 = !{!920, !926}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !918, file: !838, line: 261, baseType: !921, size: 256)
!921 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !838, line: 134, size: 256, elements: !922)
!922 = !{!923, !924}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !921, file: !838, line: 135, baseType: !123, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !921, file: !838, line: 136, baseType: !925, size: 256)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 256, elements: !772)
!926 = !DIDerivedType(tag: DW_TAG_member, scope: !918, file: !838, line: 262, baseType: !927, size: 256)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !918, file: !838, line: 262, size: 256, elements: !928)
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !927, file: !838, line: 264, baseType: !241, size: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !927, file: !838, line: 265, baseType: !931, size: 128, offset: 128)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !932, line: 22, size: 128, elements: !933)
!932 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!933 = !{!934, !937}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !931, file: !932, line: 23, baseType: !935, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !932, line: 23, flags: DIFlagFwdDecl)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !931, file: !932, line: 24, baseType: !254, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !837, file: !838, line: 280, baseType: !939, size: 64, offset: 1664)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !838, line: 176, size: 192, elements: !941)
!941 = !{!942, !951, !952}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !940, file: !838, line: 177, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !838, line: 171, baseType: !944)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!176, !836, !947, !949, !836}
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !900)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !921)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !940, file: !838, line: 178, baseType: !836, size: 64, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !940, file: !838, line: 179, baseType: !899, size: 64, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !805, file: !806, line: 130, baseType: !836, size: 64, offset: 832)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !805, file: !806, line: 131, baseType: !836, size: 64, offset: 896)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !805, file: !806, line: 132, baseType: !836, size: 64, offset: 960)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !805, file: !806, line: 135, baseType: !123, size: 64, offset: 1024)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !805, file: !806, line: 137, baseType: !958, size: 64, offset: 1088)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !960, line: 14, size: 1088, elements: !961)
!960 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!961 = !{!962, !963, !972, !973, !974, !975, !976, !977}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !959, file: !960, line: 15, baseType: !260, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !959, file: !960, line: 17, baseType: !964, size: 320, offset: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !965, line: 22, size: 320, elements: !966)
!965 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!966 = !{!967, !968, !969, !970}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !964, file: !965, line: 23, baseType: !367, size: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !964, file: !965, line: 24, baseType: !234, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !964, file: !965, line: 26, baseType: !241, size: 128, offset: 128)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !964, file: !965, line: 28, baseType: !971, size: 64, offset: 256)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !959, file: !960, line: 19, baseType: !254, size: 64, offset: 384)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !959, file: !960, line: 20, baseType: !360, size: 64, offset: 448)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !959, file: !960, line: 23, baseType: !767, size: 128, offset: 512)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !959, file: !960, line: 24, baseType: !793, size: 32, offset: 640)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !959, file: !960, line: 29, baseType: !360, size: 64, offset: 704)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !959, file: !960, line: 36, baseType: !978, size: 320, offset: 768)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !979, line: 15, size: 320, elements: !980)
!979 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!980 = !{!981, !982, !983, !984, !985, !986, !987}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !978, file: !979, line: 16, baseType: !367, size: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !978, file: !979, line: 18, baseType: !176, size: 32, offset: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !978, file: !979, line: 19, baseType: !176, size: 32, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !978, file: !979, line: 20, baseType: !176, size: 32, offset: 96)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !978, file: !979, line: 21, baseType: !176, size: 32, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !978, file: !979, line: 22, baseType: !254, size: 64, offset: 192)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !978, file: !979, line: 23, baseType: !254, size: 64, offset: 256)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !805, file: !806, line: 138, baseType: !989, size: 64, offset: 1152)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !794, line: 18, flags: DIFlagFwdDecl)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !805, file: !806, line: 139, baseType: !992, size: 64, offset: 1216)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !994, line: 16, flags: DIFlagFwdDecl)
!994 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!995 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !805, file: !806, line: 140, baseType: !996, size: 64, offset: 1280)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !806, line: 25, size: 64, elements: !998)
!998 = !{!999, !1000, !1001}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !997, file: !806, line: 26, baseType: !172, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !997, file: !806, line: 27, baseType: !176, size: 32, offset: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !997, file: !806, line: 28, baseType: !1002, offset: 64)
!1002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !811, elements: !265)
!1003 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !806, line: 142, baseType: !1004, size: 128, offset: 1344)
!1004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !805, file: !806, line: 142, size: 128, elements: !1005)
!1005 = !{!1006, !1007}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1004, file: !806, line: 143, baseType: !176, size: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1004, file: !806, line: 144, baseType: !130, size: 128, align: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !711, file: !31, line: 1013, baseType: !1009, size: 256, offset: 960)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 970, size: 256, elements: !1010)
!1010 = !{!1011, !1012, !1013, !1014, !1015, !1016}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1009, file: !31, line: 971, baseType: !254, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1009, file: !31, line: 972, baseType: !18, size: 32, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1009, file: !31, line: 973, baseType: !18, size: 32, offset: 96)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1009, file: !31, line: 974, baseType: !18, size: 32, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1009, file: !31, line: 975, baseType: !18, size: 32, offset: 160)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1009, file: !31, line: 976, baseType: !725, size: 64, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !711, file: !31, line: 1014, baseType: !1018, size: 128, offset: 1216)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1019, line: 8, size: 128, elements: !1020)
!1019 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1020 = !{!1021, !2585}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1018, file: !1019, line: 9, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1024, line: 70, size: 256, elements: !1025)
!1024 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1025 = !{!1026, !2582, !2583, !2584}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1023, file: !1024, line: 71, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1029, line: 82, size: 1536, elements: !1030)
!1029 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1030 = !{!1031, !1032, !1037, !1045, !1046, !1061, !2549, !2551, !2564, !2565, !2566, !2567, !2568, !2574, !2575, !2576}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1028, file: !1029, line: 84, baseType: !18, size: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1028, file: !1029, line: 85, baseType: !1033, size: 32, offset: 32)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !552, line: 275, baseType: !1034)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !552, line: 275, size: 32, elements: !1035)
!1035 = !{!1036}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1034, file: !552, line: 275, baseType: !556, size: 32)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1028, file: !1029, line: 86, baseType: !1038, size: 128, offset: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1039, line: 38, size: 128, elements: !1040)
!1039 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1040 = !{!1041, !1043}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1038, file: !1039, line: 39, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1038, file: !1039, line: 39, baseType: !1044, size: 64, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1028, file: !1029, line: 87, baseType: !1027, size: 64, offset: 192)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1028, file: !1029, line: 88, baseType: !1047, size: 128, offset: 256)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1029, line: 49, size: 128, elements: !1048)
!1048 = !{!1049, !1058}
!1049 = !DIDerivedType(tag: DW_TAG_member, scope: !1047, file: !1029, line: 50, baseType: !1050, size: 64)
!1050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1047, file: !1029, line: 50, size: 64, elements: !1051)
!1051 = !{!1052, !1057}
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !1050, file: !1029, line: 51, baseType: !1053, size: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1050, file: !1029, line: 51, size: 64, elements: !1054)
!1054 = !{!1055, !1056}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1053, file: !1029, line: 52, baseType: !140, size: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1053, file: !1029, line: 52, baseType: !140, size: 32, offset: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1050, file: !1029, line: 54, baseType: !249, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1047, file: !1029, line: 56, baseType: !1059, size: 64, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1028, file: !1029, line: 89, baseType: !1062, size: 64, offset: 384)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 641, size: 4800, elements: !1064)
!1064 = !{!1065, !1067, !1068, !1069, !1070, !1071, !1072, !1075, !1076, !1269, !1863, !2360, !2361, !2362, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2531, !2534, !2535, !2536, !2545, !2546, !2547, !2548}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1063, file: !31, line: 642, baseType: !1066, size: 16)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !131, line: 24, baseType: !191)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1063, file: !31, line: 643, baseType: !191, size: 16, offset: 16)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1063, file: !31, line: 644, baseType: !793, size: 32, offset: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1063, file: !31, line: 645, baseType: !241, size: 128, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1063, file: !31, line: 646, baseType: !811, size: 32, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1063, file: !31, line: 647, baseType: !18, size: 32, offset: 224)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1063, file: !31, line: 650, baseType: !1073, size: 64, offset: 256)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 607, flags: DIFlagFwdDecl)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1063, file: !31, line: 651, baseType: !1073, size: 64, offset: 320)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1063, file: !31, line: 654, baseType: !1077, size: 64, offset: 384)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1079)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1966, size: 2048, align: 512, elements: !1080)
!1080 = !{!1081, !1085, !1098, !1104, !1108, !1112, !1116, !1120, !1124, !1128, !1132, !1133, !1139, !1143, !1180, !1211, !1218, !1224, !1228, !1232, !1236, !1240, !1244, !1250, !1254}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1079, file: !31, line: 1967, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!1027, !1062, !1027, !18}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1079, file: !31, line: 1968, baseType: !1086, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!205, !1027, !1062, !1089}
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1091, line: 10, size: 128, elements: !1092)
!1091 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1092 = !{!1093, !1097}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1090, file: !1091, line: 11, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{null, !123}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1090, file: !1091, line: 12, baseType: !123, size: 64, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1079, file: !31, line: 1969, baseType: !1099, size: 64, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!176, !1102, !1062, !176}
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !826, line: 42, flags: DIFlagFwdDecl)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1079, file: !31, line: 1970, baseType: !1105, size: 64, offset: 192)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!1073, !1062, !176, !199}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1079, file: !31, line: 1972, baseType: !1109, size: 64, offset: 256)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!176, !1027, !226, !176}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1079, file: !31, line: 1974, baseType: !1113, size: 64, offset: 320)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!176, !1102, !1062, !1027, !1066, !199}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1079, file: !31, line: 1976, baseType: !1117, size: 64, offset: 384)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!176, !1027, !1062, !1027}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1079, file: !31, line: 1977, baseType: !1121, size: 64, offset: 448)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!176, !1062, !1027}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1079, file: !31, line: 1978, baseType: !1125, size: 64, offset: 512)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!176, !1102, !1062, !1027, !205}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1079, file: !31, line: 1980, baseType: !1129, size: 64, offset: 576)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!176, !1102, !1062, !1027, !1066}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1079, file: !31, line: 1982, baseType: !1121, size: 64, offset: 640)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1079, file: !31, line: 1983, baseType: !1134, size: 64, offset: 704)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!176, !1102, !1062, !1027, !1066, !1137}
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !131, line: 21, baseType: !1138)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !131, line: 18, baseType: !140)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1079, file: !31, line: 1985, baseType: !1140, size: 64, offset: 768)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!176, !1102, !1062, !1027, !1062, !1027, !18}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1079, file: !31, line: 1987, baseType: !1144, size: 64, offset: 832)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!176, !1102, !1027, !1147}
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 226, size: 640, elements: !1149)
!1149 = !{!1150, !1151, !1152, !1162, !1171, !1172, !1177, !1178, !1179}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1148, file: !31, line: 227, baseType: !18, size: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1148, file: !31, line: 228, baseType: !1066, size: 16, offset: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, scope: !1148, file: !31, line: 241, baseType: !1153, size: 32, offset: 64)
!1153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1148, file: !31, line: 241, size: 32, elements: !1154)
!1154 = !{!1155, !1156}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1153, file: !31, line: 242, baseType: !793, size: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1153, file: !31, line: 243, baseType: !1157, size: 32)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1158, line: 16, baseType: !1159)
!1158 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1158, line: 14, size: 32, elements: !1160)
!1160 = !{!1161}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1159, file: !1158, line: 15, baseType: !798, size: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, scope: !1148, file: !31, line: 245, baseType: !1163, size: 32, offset: 96)
!1163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1148, file: !31, line: 245, size: 32, elements: !1164)
!1164 = !{!1165, !1166}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1163, file: !31, line: 246, baseType: !811, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1163, file: !31, line: 247, baseType: !1167, size: 32)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1158, line: 20, baseType: !1168)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1158, line: 18, size: 32, elements: !1169)
!1169 = !{!1170}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1168, file: !1158, line: 19, baseType: !815, size: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1148, file: !31, line: 249, baseType: !725, size: 64, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1148, file: !31, line: 250, baseType: !1173, size: 128, offset: 192)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !869, line: 13, size: 128, elements: !1174)
!1174 = !{!1175, !1176}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1173, file: !869, line: 14, baseType: !868, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1173, file: !869, line: 15, baseType: !217, size: 64, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1148, file: !31, line: 251, baseType: !1173, size: 128, offset: 320)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1148, file: !31, line: 252, baseType: !1173, size: 128, offset: 448)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1148, file: !31, line: 259, baseType: !710, size: 64, offset: 576)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1079, file: !31, line: 1988, baseType: !1181, size: 64, offset: 896)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!176, !1102, !1184, !1186, !140, !18}
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1018)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1188, line: 22, size: 1280, elements: !1189)
!1188 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1189 = !{!1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1187, file: !1188, line: 23, baseType: !140, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1187, file: !1188, line: 24, baseType: !1066, size: 16, offset: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1187, file: !1188, line: 25, baseType: !18, size: 32, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1187, file: !1188, line: 26, baseType: !876, size: 32, offset: 96)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1187, file: !1188, line: 27, baseType: !249, size: 64, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1187, file: !1188, line: 28, baseType: !249, size: 64, offset: 192)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1187, file: !1188, line: 41, baseType: !249, size: 64, offset: 256)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1187, file: !1188, line: 42, baseType: !1137, size: 32, offset: 320)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1187, file: !1188, line: 43, baseType: !1137, size: 32, offset: 352)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1187, file: !1188, line: 44, baseType: !793, size: 32, offset: 384)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1187, file: !1188, line: 45, baseType: !811, size: 32, offset: 416)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1187, file: !1188, line: 46, baseType: !725, size: 64, offset: 448)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1187, file: !1188, line: 47, baseType: !1173, size: 128, offset: 512)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1187, file: !1188, line: 48, baseType: !1173, size: 128, offset: 640)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1187, file: !1188, line: 49, baseType: !1173, size: 128, offset: 768)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1187, file: !1188, line: 50, baseType: !1173, size: 128, offset: 896)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1187, file: !1188, line: 51, baseType: !249, size: 64, offset: 1024)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1187, file: !1188, line: 52, baseType: !249, size: 64, offset: 1088)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1187, file: !1188, line: 53, baseType: !140, size: 32, offset: 1152)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1187, file: !1188, line: 54, baseType: !140, size: 32, offset: 1184)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1187, file: !1188, line: 55, baseType: !249, size: 64, offset: 1216)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1079, file: !31, line: 1990, baseType: !1212, size: 64, offset: 960)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!1215, !1027, !226, !273}
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !131, line: 66, baseType: !1216)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !275, line: 73, baseType: !1217)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !275, line: 15, baseType: !217)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1079, file: !31, line: 1991, baseType: !1219, size: 64, offset: 1024)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!176, !1062, !1222, !249, !249}
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 55, flags: DIFlagFwdDecl)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1079, file: !31, line: 1993, baseType: !1225, size: 64, offset: 1088)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!176, !1062, !176}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1079, file: !31, line: 1994, baseType: !1229, size: 64, offset: 1152)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!176, !1062, !1027, !710, !18, !1066}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1079, file: !31, line: 1997, baseType: !1233, size: 64, offset: 1216)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!176, !1102, !1062, !710, !1066}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1079, file: !31, line: 1999, baseType: !1237, size: 64, offset: 1280)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!1073, !1102, !1027, !176}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1079, file: !31, line: 2001, baseType: !1241, size: 64, offset: 1344)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!176, !1102, !1027, !1073, !176}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1079, file: !31, line: 2003, baseType: !1245, size: 64, offset: 1408)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!176, !1102, !1027, !1248}
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !31, line: 76, flags: DIFlagFwdDecl)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1079, file: !31, line: 2005, baseType: !1251, size: 64, offset: 1472)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!176, !1027, !1248}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1079, file: !31, line: 2006, baseType: !1255, size: 64, offset: 1536)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!1258, !1062}
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !31, line: 3192, size: 192, elements: !1260)
!1260 = !{!1261, !1268}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1259, file: !31, line: 3193, baseType: !1262, size: 128)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1263, line: 296, size: 128, elements: !1264)
!1263 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1264 = !{!1265, !1266, !1267}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1262, file: !1263, line: 297, baseType: !152, size: 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1262, file: !1263, line: 299, baseType: !270, size: 32, offset: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1262, file: !1263, line: 300, baseType: !123, size: 64, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1259, file: !31, line: 3194, baseType: !140, size: 32, offset: 128)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1063, file: !31, line: 655, baseType: !1270, size: 64, offset: 448)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1190, size: 10752, elements: !1272)
!1272 = !{!1273, !1274, !1275, !1276, !1277, !1278, !1319, !1492, !1532, !1615, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1632, !1636, !1637, !1640, !1643, !1646, !1649, !1650, !1651, !1692, !1719, !1720, !1721, !1722, !1723, !1724, !1727, !1731, !1740, !1741, !1742, !1743, !1802, !1817, !1818, !1819, !1820, !1823, !1827, !1828, !1829, !1844, !1845, !1846, !1857, !1858, !1859, !1860, !1861, !1862}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1271, file: !31, line: 1191, baseType: !241, size: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1271, file: !31, line: 1192, baseType: !1137, size: 32, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1271, file: !31, line: 1193, baseType: !183, size: 8, offset: 160)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1271, file: !31, line: 1194, baseType: !254, size: 64, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1271, file: !31, line: 1195, baseType: !725, size: 64, offset: 256)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1271, file: !31, line: 1196, baseType: !1279, size: 64, offset: 320)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2366, size: 576, elements: !1281)
!1281 = !{!1282, !1283, !1284, !1290, !1294, !1298, !1302, !1306, !1307, !1308, !1311, !1312, !1313, !1315, !1316, !1317, !1318}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1280, file: !31, line: 2367, baseType: !205, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1280, file: !31, line: 2368, baseType: !176, size: 32, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1280, file: !31, line: 2376, baseType: !1285, size: 64, offset: 128)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!176, !1288}
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1024, line: 21, flags: DIFlagFwdDecl)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1280, file: !31, line: 2377, baseType: !1291, size: 64, offset: 192)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1293)
!1293 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 75, flags: DIFlagFwdDecl)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1280, file: !31, line: 2378, baseType: !1295, size: 64, offset: 256)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!1027, !1279, !176, !205, !123}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1280, file: !31, line: 2380, baseType: !1299, size: 64, offset: 320)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{null, !1270}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1280, file: !31, line: 2381, baseType: !1303, size: 64, offset: 384)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1305, line: 103, flags: DIFlagFwdDecl)
!1305 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1280, file: !31, line: 2382, baseType: !1279, size: 64, offset: 448)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1280, file: !31, line: 2383, baseType: !763, size: 64, offset: 512)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1280, file: !31, line: 2385, baseType: !1309, offset: 576)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1310, line: 206, elements: !703)
!1310 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1280, file: !31, line: 2386, baseType: !1309, offset: 576)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1280, file: !31, line: 2387, baseType: !1309, offset: 576)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1280, file: !31, line: 2388, baseType: !1314, offset: 576)
!1314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1309, elements: !751)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1280, file: !31, line: 2390, baseType: !1309, offset: 576)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1280, file: !31, line: 2391, baseType: !1309, offset: 576)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1280, file: !31, line: 2392, baseType: !1309, offset: 576)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1280, file: !31, line: 2393, baseType: !1309, offset: 576)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1271, file: !31, line: 1197, baseType: !1320, size: 64, offset: 384)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1322)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 2057, size: 1664, elements: !1323)
!1323 = !{!1324, !1328, !1332, !1333, !1337, !1343, !1347, !1348, !1349, !1353, !1357, !1361, !1362, !1363, !1369, !1373, !1374, !1417, !1418, !1419, !1420, !1424, !1428, !1475, !1490, !1491}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1322, file: !31, line: 2058, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!1062, !1270}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1322, file: !31, line: 2059, baseType: !1329, size: 64, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{null, !1062}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1322, file: !31, line: 2060, baseType: !1329, size: 64, offset: 128)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1322, file: !31, line: 2062, baseType: !1334, size: 64, offset: 192)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{null, !1062, !176}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1322, file: !31, line: 2063, baseType: !1338, size: 64, offset: 256)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!176, !1062, !1341}
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 309, flags: DIFlagFwdDecl)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1322, file: !31, line: 2064, baseType: !1344, size: 64, offset: 320)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!176, !1062}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1322, file: !31, line: 2065, baseType: !1329, size: 64, offset: 384)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1322, file: !31, line: 2066, baseType: !1299, size: 64, offset: 448)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1322, file: !31, line: 2067, baseType: !1350, size: 64, offset: 512)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!176, !1270, !176}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1322, file: !31, line: 2068, baseType: !1354, size: 64, offset: 576)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!176, !1270, !30}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1322, file: !31, line: 2069, baseType: !1358, size: 64, offset: 640)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!176, !1270}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1322, file: !31, line: 2070, baseType: !1354, size: 64, offset: 704)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1322, file: !31, line: 2071, baseType: !1358, size: 64, offset: 768)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1322, file: !31, line: 2072, baseType: !1364, size: 64, offset: 832)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!176, !1027, !1367}
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 62, flags: DIFlagFwdDecl)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1322, file: !31, line: 2073, baseType: !1370, size: 64, offset: 896)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!176, !1270, !285, !226}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1322, file: !31, line: 2074, baseType: !1299, size: 64, offset: 960)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1322, file: !31, line: 2076, baseType: !1375, size: 64, offset: 1024)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!176, !1378, !1027}
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1380, line: 17, size: 960, elements: !1381)
!1380 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1381 = !{!1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1412, !1413, !1416}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1379, file: !1380, line: 18, baseType: !226, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1379, file: !1380, line: 19, baseType: !273, size: 64, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1379, file: !1380, line: 20, baseType: !273, size: 64, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1379, file: !1380, line: 21, baseType: !273, size: 64, offset: 192)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1379, file: !1380, line: 22, baseType: !273, size: 64, offset: 256)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1379, file: !1380, line: 23, baseType: !725, size: 64, offset: 320)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1379, file: !1380, line: 24, baseType: !725, size: 64, offset: 384)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1379, file: !1380, line: 25, baseType: !356, size: 256, offset: 448)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1379, file: !1380, line: 26, baseType: !1391, size: 64, offset: 704)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1393)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1380, line: 32, size: 256, elements: !1394)
!1394 = !{!1395, !1400, !1404, !1408}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1393, file: !1380, line: 33, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!123, !1378, !1399}
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1393, file: !1380, line: 34, baseType: !1401, size: 64, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{null, !1378, !123}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1393, file: !1380, line: 35, baseType: !1405, size: 64, offset: 128)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!123, !1378, !123, !1399}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1393, file: !1380, line: 36, baseType: !1409, size: 64, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!176, !1378, !123}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1379, file: !1380, line: 27, baseType: !176, size: 32, offset: 768)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1379, file: !1380, line: 28, baseType: !1414, size: 64, offset: 832)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !711)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1379, file: !1380, line: 29, baseType: !123, size: 64, offset: 896)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1322, file: !31, line: 2077, baseType: !1375, size: 64, offset: 1088)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1322, file: !31, line: 2078, baseType: !1375, size: 64, offset: 1152)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1322, file: !31, line: 2079, baseType: !1375, size: 64, offset: 1216)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1322, file: !31, line: 2081, baseType: !1421, size: 64, offset: 1280)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!1215, !1270, !176, !226, !273, !725}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1322, file: !31, line: 2082, baseType: !1425, size: 64, offset: 1344)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!1215, !1270, !176, !205, !273, !725}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1322, file: !31, line: 2083, baseType: !1429, size: 64, offset: 1408)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!1432, !1062}
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !36, line: 296, size: 1664, elements: !1435)
!1435 = !{!1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1460, !1461, !1462}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1434, file: !36, line: 297, baseType: !767, size: 128)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1434, file: !36, line: 298, baseType: !241, size: 128, offset: 128)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1434, file: !36, line: 299, baseType: !241, size: 128, offset: 256)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1434, file: !36, line: 300, baseType: !241, size: 128, offset: 384)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1434, file: !36, line: 301, baseType: !356, size: 256, offset: 512)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1434, file: !36, line: 302, baseType: !152, size: 32, offset: 768)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1434, file: !36, line: 303, baseType: !172, size: 32, offset: 800)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1434, file: !36, line: 304, baseType: !1270, size: 64, offset: 832)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1434, file: !36, line: 305, baseType: !1445, size: 64, offset: 896)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !36, line: 68, size: 64, elements: !1446)
!1446 = !{!1447, !1459}
!1447 = !DIDerivedType(tag: DW_TAG_member, scope: !1445, file: !36, line: 69, baseType: !1448, size: 32)
!1448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1445, file: !36, line: 69, size: 32, elements: !1449)
!1449 = !{!1450, !1451, !1452}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1448, file: !36, line: 70, baseType: !793, size: 32)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1448, file: !36, line: 71, baseType: !811, size: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1448, file: !36, line: 72, baseType: !1453, size: 32)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1454, line: 24, baseType: !1455)
!1454 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1454, line: 22, size: 32, elements: !1456)
!1456 = !{!1457}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1455, file: !1454, line: 23, baseType: !1458, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1454, line: 20, baseType: !799)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1445, file: !36, line: 74, baseType: !35, size: 32, offset: 32)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1434, file: !36, line: 306, baseType: !725, size: 64, offset: 960)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1434, file: !36, line: 307, baseType: !254, size: 64, offset: 1024)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1434, file: !36, line: 308, baseType: !1463, size: 576, offset: 1088)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !36, line: 205, size: 576, elements: !1464)
!1464 = !{!1465, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1463, file: !36, line: 206, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !36, line: 66, baseType: !236)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1463, file: !36, line: 207, baseType: !1466, size: 64, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1463, file: !36, line: 208, baseType: !1466, size: 64, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1463, file: !36, line: 209, baseType: !1466, size: 64, offset: 192)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1463, file: !36, line: 210, baseType: !1466, size: 64, offset: 256)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1463, file: !36, line: 211, baseType: !1466, size: 64, offset: 320)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1463, file: !36, line: 212, baseType: !1466, size: 64, offset: 384)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1463, file: !36, line: 213, baseType: !868, size: 64, offset: 448)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1463, file: !36, line: 214, baseType: !868, size: 64, offset: 512)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1322, file: !31, line: 2085, baseType: !1476, size: 64, offset: 1472)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!217, !1270, !1479}
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1481, line: 15, size: 256, elements: !1482)
!1481 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1482 = !{!1483, !1484, !1485, !1486, !1487}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1480, file: !1481, line: 16, baseType: !270, size: 32)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1480, file: !1481, line: 19, baseType: !176, size: 32, offset: 32)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1480, file: !1481, line: 26, baseType: !254, size: 64, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1480, file: !1481, line: 33, baseType: !254, size: 64, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1480, file: !1481, line: 36, baseType: !1488, size: 64, offset: 192)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !50, line: 33, flags: DIFlagFwdDecl)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1322, file: !31, line: 2087, baseType: !1476, size: 64, offset: 1536)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1322, file: !31, line: 2089, baseType: !1299, size: 64, offset: 1600)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1271, file: !31, line: 1198, baseType: !1493, size: 64, offset: 448)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1495)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !36, line: 324, size: 704, elements: !1496)
!1496 = !{!1497, !1501, !1505, !1509, !1510, !1511, !1512, !1513, !1518, !1523, !1527}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1495, file: !36, line: 325, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!176, !1433}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1495, file: !36, line: 326, baseType: !1502, size: 64, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!1433, !1270, !176}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1495, file: !36, line: 327, baseType: !1506, size: 64, offset: 128)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{null, !1433}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1495, file: !36, line: 328, baseType: !1498, size: 64, offset: 192)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1495, file: !36, line: 329, baseType: !1498, size: 64, offset: 256)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1495, file: !36, line: 330, baseType: !1498, size: 64, offset: 320)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1495, file: !36, line: 331, baseType: !1350, size: 64, offset: 384)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1495, file: !36, line: 334, baseType: !1514, size: 64, offset: 448)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!1517, !1062}
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1495, file: !36, line: 335, baseType: !1519, size: 64, offset: 512)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!176, !1062, !1522}
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1495, file: !36, line: 337, baseType: !1524, size: 64, offset: 576)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!176, !1062, !1517}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1495, file: !36, line: 339, baseType: !1528, size: 64, offset: 640)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!176, !1270, !1531}
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1271, file: !31, line: 1199, baseType: !1533, size: 64, offset: 512)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1535)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !36, line: 430, size: 704, elements: !1536)
!1536 = !{!1537, !1541, !1542, !1546, !1547, !1548, !1563, !1586, !1590, !1591, !1614}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1535, file: !36, line: 431, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!176, !1270, !176, !176, !1184}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1535, file: !36, line: 432, baseType: !1350, size: 64, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1535, file: !36, line: 433, baseType: !1543, size: 64, offset: 128)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!176, !1270, !18}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1535, file: !36, line: 434, baseType: !1543, size: 64, offset: 192)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1535, file: !36, line: 435, baseType: !1350, size: 64, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1535, file: !36, line: 436, baseType: !1549, size: 64, offset: 320)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!176, !1270, !176, !1552}
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !36, line: 417, size: 256, elements: !1554)
!1554 = !{!1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1553, file: !36, line: 418, baseType: !176, size: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1553, file: !36, line: 419, baseType: !18, size: 32, offset: 32)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1553, file: !36, line: 420, baseType: !18, size: 32, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1553, file: !36, line: 422, baseType: !18, size: 32, offset: 96)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1553, file: !36, line: 423, baseType: !18, size: 32, offset: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1553, file: !36, line: 424, baseType: !18, size: 32, offset: 160)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1553, file: !36, line: 425, baseType: !18, size: 32, offset: 192)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1553, file: !36, line: 426, baseType: !18, size: 32, offset: 224)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1535, file: !36, line: 437, baseType: !1564, size: 64, offset: 384)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!176, !1270, !1445, !1567}
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !36, line: 345, size: 960, elements: !1569)
!1569 = !{!1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1568, file: !36, line: 346, baseType: !176, size: 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1568, file: !36, line: 347, baseType: !249, size: 64, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1568, file: !36, line: 348, baseType: !249, size: 64, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1568, file: !36, line: 349, baseType: !249, size: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1568, file: !36, line: 350, baseType: !249, size: 64, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1568, file: !36, line: 351, baseType: !249, size: 64, offset: 320)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1568, file: !36, line: 352, baseType: !249, size: 64, offset: 384)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1568, file: !36, line: 353, baseType: !234, size: 64, offset: 448)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1568, file: !36, line: 355, baseType: !234, size: 64, offset: 512)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1568, file: !36, line: 356, baseType: !176, size: 32, offset: 576)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1568, file: !36, line: 357, baseType: !176, size: 32, offset: 608)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1568, file: !36, line: 358, baseType: !249, size: 64, offset: 640)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1568, file: !36, line: 359, baseType: !249, size: 64, offset: 704)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1568, file: !36, line: 360, baseType: !249, size: 64, offset: 768)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1568, file: !36, line: 361, baseType: !234, size: 64, offset: 832)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1568, file: !36, line: 362, baseType: !176, size: 32, offset: 896)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1535, file: !36, line: 438, baseType: !1587, size: 64, offset: 448)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!176, !1270, !1531, !1567}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1535, file: !36, line: 440, baseType: !1564, size: 64, offset: 512)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1535, file: !36, line: 441, baseType: !1592, size: 64, offset: 576)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!176, !1270, !1595}
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !36, line: 411, size: 1408, elements: !1597)
!1597 = !{!1598, !1599}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1596, file: !36, line: 412, baseType: !18, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1596, file: !36, line: 413, baseType: !1600, size: 1344, offset: 64)
!1600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1601, size: 1344, elements: !751)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !36, line: 397, size: 448, elements: !1602)
!1602 = !{!1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1613}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1601, file: !36, line: 398, baseType: !18, size: 32)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1601, file: !36, line: 399, baseType: !18, size: 32, offset: 32)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1601, file: !36, line: 401, baseType: !18, size: 32, offset: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1601, file: !36, line: 402, baseType: !18, size: 32, offset: 96)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1601, file: !36, line: 403, baseType: !18, size: 32, offset: 128)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1601, file: !36, line: 404, baseType: !18, size: 32, offset: 160)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1601, file: !36, line: 405, baseType: !18, size: 32, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1601, file: !36, line: 406, baseType: !251, size: 64, offset: 256)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1601, file: !36, line: 407, baseType: !1612, size: 64, offset: 320)
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !131, line: 132, baseType: !249)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1601, file: !36, line: 408, baseType: !1612, size: 64, offset: 384)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1535, file: !36, line: 442, baseType: !1543, size: 64, offset: 640)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1271, file: !31, line: 1200, baseType: !1616, size: 64, offset: 576)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1618)
!1618 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 54, flags: DIFlagFwdDecl)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1271, file: !31, line: 1201, baseType: !254, size: 64, offset: 640)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1271, file: !31, line: 1202, baseType: !254, size: 64, offset: 704)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1271, file: !31, line: 1203, baseType: !254, size: 64, offset: 768)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1271, file: !31, line: 1204, baseType: !1027, size: 64, offset: 832)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1271, file: !31, line: 1205, baseType: !852, size: 320, offset: 896)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1271, file: !31, line: 1206, baseType: !176, size: 32, offset: 1216)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1271, file: !31, line: 1207, baseType: !172, size: 32, offset: 1248)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1271, file: !31, line: 1209, baseType: !123, size: 64, offset: 1280)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1271, file: !31, line: 1211, baseType: !1628, size: 64, offset: 1344)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1631)
!1631 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1211, flags: DIFlagFwdDecl)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1271, file: !31, line: 1223, baseType: !1633, size: 64, offset: 1408)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1039, line: 34, size: 64, elements: !1634)
!1634 = !{!1635}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1633, file: !1039, line: 35, baseType: !1042, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1271, file: !31, line: 1224, baseType: !241, size: 128, offset: 1472)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1271, file: !31, line: 1225, baseType: !1638, size: 64, offset: 1600)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 1225, flags: DIFlagFwdDecl)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1271, file: !31, line: 1226, baseType: !1641, size: 64, offset: 1664)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !31, line: 1226, flags: DIFlagFwdDecl)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1271, file: !31, line: 1227, baseType: !1644, size: 64, offset: 1728)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1271, file: !31, line: 1228, baseType: !1647, size: 64, offset: 1792)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1228, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1271, file: !31, line: 1229, baseType: !767, size: 128, offset: 1856)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1271, file: !31, line: 1230, baseType: !18, size: 32, offset: 1984)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1271, file: !31, line: 1231, baseType: !1652, size: 2496, offset: 2048)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !36, line: 521, size: 2496, elements: !1653)
!1653 = !{!1654, !1655, !1656, !1658, !1690}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1652, file: !36, line: 522, baseType: !18, size: 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1652, file: !36, line: 523, baseType: !852, size: 320, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1652, file: !36, line: 524, baseType: !1657, size: 192, offset: 384)
!1657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1062, size: 192, elements: !751)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1652, file: !36, line: 525, baseType: !1659, size: 1728, offset: 576)
!1659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1660, size: 1728, elements: !751)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !36, line: 222, size: 576, elements: !1661)
!1661 = !{!1662, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1660, file: !36, line: 223, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !36, line: 445, size: 256, elements: !1665)
!1665 = !{!1666, !1667, !1680, !1681}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1664, file: !36, line: 446, baseType: !176, size: 32)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1664, file: !36, line: 447, baseType: !1668, size: 64, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1670)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !36, line: 312, size: 512, elements: !1671)
!1671 = !{!1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1670, file: !36, line: 313, baseType: !1350, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1670, file: !36, line: 314, baseType: !1350, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1670, file: !36, line: 315, baseType: !1350, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1670, file: !36, line: 316, baseType: !1350, size: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1670, file: !36, line: 317, baseType: !1498, size: 64, offset: 256)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1670, file: !36, line: 318, baseType: !1498, size: 64, offset: 320)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1670, file: !36, line: 319, baseType: !1498, size: 64, offset: 384)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1670, file: !36, line: 320, baseType: !1528, size: 64, offset: 448)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1664, file: !36, line: 448, baseType: !1303, size: 64, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1664, file: !36, line: 449, baseType: !1663, size: 64, offset: 192)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1660, file: !36, line: 224, baseType: !176, size: 32, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1660, file: !36, line: 226, baseType: !241, size: 128, offset: 128)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1660, file: !36, line: 227, baseType: !254, size: 64, offset: 256)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1660, file: !36, line: 228, baseType: !18, size: 32, offset: 320)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1660, file: !36, line: 229, baseType: !18, size: 32, offset: 352)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1660, file: !36, line: 230, baseType: !1466, size: 64, offset: 384)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1660, file: !36, line: 231, baseType: !1466, size: 64, offset: 448)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1660, file: !36, line: 232, baseType: !123, size: 64, offset: 512)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1652, file: !36, line: 526, baseType: !1691, size: 192, offset: 2304)
!1691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1668, size: 192, elements: !751)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1271, file: !31, line: 1233, baseType: !1693, size: 2368, offset: 4544)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1184, size: 2368, elements: !1694)
!1694 = !{!1695, !1696, !1697}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1693, file: !31, line: 1185, baseType: !191, size: 16)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1693, file: !31, line: 1186, baseType: !191, size: 16, offset: 16)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1693, file: !31, line: 1187, baseType: !1698, size: 2304, offset: 64)
!1698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1699, size: 2304, elements: !751)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1700, line: 12, size: 768, elements: !1701)
!1700 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1701 = !{!1702, !1710, !1712, !1717, !1718}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1699, file: !1700, line: 13, baseType: !1703, size: 384)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1704, line: 17, size: 384, elements: !1705)
!1704 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1705 = !{!1706, !1707, !1708, !1709}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1703, file: !1704, line: 18, baseType: !176, size: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1703, file: !1704, line: 19, baseType: !176, size: 32, offset: 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1703, file: !1704, line: 20, baseType: !776, size: 192, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1703, file: !1704, line: 22, baseType: !130, size: 128, align: 64, offset: 256)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1699, file: !1700, line: 14, baseType: !1711, size: 64, offset: 384)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1699, file: !1700, line: 15, baseType: !1713, size: 64, offset: 448)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1714, line: 16, size: 64, elements: !1715)
!1714 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1715 = !{!1716}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1713, file: !1714, line: 17, baseType: !379, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1699, file: !1700, line: 16, baseType: !776, size: 192, offset: 512)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1699, file: !1700, line: 17, baseType: !172, size: 32, offset: 704)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1271, file: !31, line: 1240, baseType: !123, size: 64, offset: 6912)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1271, file: !31, line: 1243, baseType: !140, size: 32, offset: 6976)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1271, file: !31, line: 1245, baseType: !868, size: 64, offset: 7040)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1271, file: !31, line: 1246, baseType: !868, size: 64, offset: 7104)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1271, file: !31, line: 1248, baseType: !142, size: 32, offset: 7168)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1271, file: !31, line: 1249, baseType: !1725, size: 64, offset: 7232)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 634, flags: DIFlagFwdDecl)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1271, file: !31, line: 1252, baseType: !1728, size: 256, offset: 7296)
!1728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !1729)
!1729 = !{!1730}
!1730 = !DISubrange(count: 32)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1271, file: !31, line: 1253, baseType: !1732, size: 128, offset: 7552)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1733, line: 21, baseType: !1734)
!1733 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1733, line: 19, size: 128, elements: !1735)
!1735 = !{!1736}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1734, file: !1733, line: 20, baseType: !1737, size: 128)
!1737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 128, elements: !1738)
!1738 = !{!1739}
!1739 = !DISubrange(count: 16)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1271, file: !31, line: 1255, baseType: !18, size: 32, offset: 7680)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1271, file: !31, line: 1261, baseType: !356, size: 256, offset: 7744)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1271, file: !31, line: 1267, baseType: !205, size: 64, offset: 8000)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1271, file: !31, line: 1269, baseType: !1744, size: 64, offset: 8064)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1746)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1029, line: 128, size: 1024, align: 512, elements: !1747)
!1747 = !{!1748, !1752, !1753, !1760, !1766, !1770, !1774, !1778, !1779, !1783, !1787, !1792, !1796}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1746, file: !1029, line: 129, baseType: !1749, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!176, !1027, !18}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1746, file: !1029, line: 130, baseType: !1749, size: 64, offset: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1746, file: !1029, line: 131, baseType: !1754, size: 64, offset: 128)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!176, !1757, !1759}
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1028)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1746, file: !1029, line: 132, baseType: !1761, size: 64, offset: 192)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!176, !1757, !18, !205, !1764}
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1047)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1746, file: !1029, line: 134, baseType: !1767, size: 64, offset: 256)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!176, !1757}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1746, file: !1029, line: 135, baseType: !1771, size: 64, offset: 320)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!176, !1027}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1746, file: !1029, line: 136, baseType: !1775, size: 64, offset: 384)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{null, !1027}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1746, file: !1029, line: 137, baseType: !1775, size: 64, offset: 448)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1746, file: !1029, line: 138, baseType: !1780, size: 64, offset: 512)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{null, !1027, !1062}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1746, file: !1029, line: 139, baseType: !1784, size: 64, offset: 576)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!226, !1027, !226, !176}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1746, file: !1029, line: 140, baseType: !1788, size: 64, offset: 640)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!1022, !1791}
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1746, file: !1029, line: 141, baseType: !1793, size: 64, offset: 704)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!176, !1184, !199}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1746, file: !1029, line: 142, baseType: !1797, size: 64, offset: 768)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!1027, !1027, !1800}
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1063)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1271, file: !31, line: 1271, baseType: !1803, size: 448, offset: 8128)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1481, line: 63, size: 448, elements: !1804)
!1804 = !{!1805, !1810, !1811, !1812, !1813, !1814, !1815}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1803, file: !1481, line: 64, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!254, !1809, !1479}
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1803, file: !1481, line: 66, baseType: !1806, size: 64, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1803, file: !1481, line: 69, baseType: !217, size: 64, offset: 128)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1803, file: !1481, line: 70, baseType: !176, size: 32, offset: 192)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1803, file: !1481, line: 71, baseType: !18, size: 32, offset: 224)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1803, file: !1481, line: 74, baseType: !241, size: 128, offset: 256)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1803, file: !1481, line: 85, baseType: !1816, size: 64, offset: 384)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1271, file: !31, line: 1274, baseType: !360, size: 64, offset: 8576)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1271, file: !31, line: 1280, baseType: !360, size: 64, offset: 8640)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1271, file: !31, line: 1283, baseType: !176, size: 32, offset: 8704)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1271, file: !31, line: 1286, baseType: !1821, size: 32, offset: 8736)
!1821 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1822, line: 8, baseType: !140)
!1822 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1271, file: !31, line: 1289, baseType: !1824, size: 64, offset: 8768)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1826, line: 18, flags: DIFlagFwdDecl)
!1826 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1271, file: !31, line: 1290, baseType: !763, size: 64, offset: 8832)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1271, file: !31, line: 1297, baseType: !989, size: 64, offset: 8896)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1271, file: !31, line: 1304, baseType: !1830, size: 64, offset: 8960)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1831, line: 49, size: 64, elements: !1832)
!1831 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!1832 = !{!1833}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1830, file: !1831, line: 50, baseType: !1834, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1831, line: 41, size: 512, align: 512, elements: !1836)
!1836 = !{!1837, !1838, !1843}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1835, file: !1831, line: 43, baseType: !152, size: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1835, file: !1831, line: 45, baseType: !1839, size: 192, offset: 64)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1831, line: 29, size: 192, elements: !1840)
!1840 = !{!1841, !1842}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1839, file: !1831, line: 30, baseType: !241, size: 128)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1839, file: !1831, line: 32, baseType: !217, size: 64, offset: 128)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1835, file: !1831, line: 46, baseType: !217, size: 64, offset: 256)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1271, file: !31, line: 1305, baseType: !1830, size: 64, offset: 9024)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1271, file: !31, line: 1306, baseType: !130, size: 128, align: 64, offset: 9088)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1271, file: !31, line: 1307, baseType: !1847, size: 256, offset: 9216)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1826, line: 98, size: 256, elements: !1848)
!1848 = !{!1849, !1850, !1851}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1847, file: !1826, line: 99, baseType: !360, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1847, file: !1826, line: 100, baseType: !241, size: 128, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1847, file: !1826, line: 101, baseType: !1852, size: 64, offset: 192)
!1852 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1826, line: 21, baseType: !1853)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{null, !1856}
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1271, file: !31, line: 1309, baseType: !356, size: 256, offset: 9472)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1271, file: !31, line: 1314, baseType: !176, size: 32, offset: 9728)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1271, file: !31, line: 1317, baseType: !152, size: 32, align: 512, offset: 10240)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1271, file: !31, line: 1318, baseType: !241, size: 128, offset: 10304)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1271, file: !31, line: 1320, baseType: !152, size: 32, offset: 10432)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1271, file: !31, line: 1321, baseType: !241, size: 128, offset: 10496)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1063, file: !31, line: 656, baseType: !1864, size: 64, offset: 512)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 472, size: 1536, align: 64, elements: !1866)
!1866 = !{!1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !2354, !2355, !2356, !2357, !2358, !2359}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1865, file: !31, line: 473, baseType: !1062, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1865, file: !31, line: 474, baseType: !1262, size: 128, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1865, file: !31, line: 475, baseType: !852, size: 320, offset: 192)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1865, file: !31, line: 476, baseType: !270, size: 32, offset: 512)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1865, file: !31, line: 477, baseType: !172, size: 32, offset: 544)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1865, file: !31, line: 482, baseType: !565, size: 128, offset: 576)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1865, file: !31, line: 483, baseType: !254, size: 64, offset: 704)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1865, file: !31, line: 484, baseType: !254, size: 64, offset: 768)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1865, file: !31, line: 485, baseType: !1876, size: 64, offset: 832)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1878)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 404, size: 1280, elements: !1879)
!1879 = !{!1880, !2179, !2249, !2253, !2257, !2263, !2269, !2273, !2278, !2282, !2286, !2290, !2318, !2322, !2326, !2330, !2335, !2339, !2346, !2350}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1878, file: !31, line: 405, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!176, !1884, !1341}
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !50, line: 74, size: 512, align: 128, elements: !1886)
!1886 = !{!1887, !1888, !2173, !2178}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1885, file: !50, line: 75, baseType: !254, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, scope: !1885, file: !50, line: 83, baseType: !1889, size: 320, offset: 64)
!1889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1885, file: !50, line: 83, size: 320, elements: !1890)
!1890 = !{!1891, !1912, !1926, !1930, !2172}
!1891 = !DIDerivedType(tag: DW_TAG_member, scope: !1889, file: !50, line: 84, baseType: !1892, size: 320)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1889, file: !50, line: 84, size: 320, elements: !1893)
!1893 = !{!1894, !1905, !1906, !1911}
!1894 = !DIDerivedType(tag: DW_TAG_member, scope: !1892, file: !50, line: 90, baseType: !1895, size: 128)
!1895 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1892, file: !50, line: 90, size: 128, elements: !1896)
!1896 = !{!1897, !1898, !1903, !1904}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1895, file: !50, line: 91, baseType: !241, size: 128)
!1898 = !DIDerivedType(tag: DW_TAG_member, scope: !1895, file: !50, line: 94, baseType: !1899, size: 128)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1895, file: !50, line: 94, size: 128, elements: !1900)
!1900 = !{!1901, !1902}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1899, file: !50, line: 96, baseType: !123, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1899, file: !50, line: 98, baseType: !18, size: 32, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1895, file: !50, line: 102, baseType: !241, size: 128)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1895, file: !50, line: 103, baseType: !241, size: 128)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1892, file: !50, line: 106, baseType: !1864, size: 64, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, scope: !1892, file: !50, line: 107, baseType: !1907, size: 64, offset: 192)
!1907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1892, file: !50, line: 107, size: 64, elements: !1908)
!1908 = !{!1909, !1910}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1907, file: !50, line: 108, baseType: !254, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1907, file: !50, line: 109, baseType: !254, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1892, file: !50, line: 117, baseType: !254, size: 64, offset: 256)
!1912 = !DIDerivedType(tag: DW_TAG_member, scope: !1889, file: !50, line: 119, baseType: !1913, size: 320)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1889, file: !50, line: 119, size: 320, elements: !1914)
!1914 = !{!1915, !1916, !1919, !1920, !1921}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1913, file: !50, line: 124, baseType: !254, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1913, file: !50, line: 125, baseType: !1917, size: 64, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !50, line: 125, flags: DIFlagFwdDecl)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1913, file: !50, line: 126, baseType: !254, size: 64, offset: 128)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1913, file: !50, line: 127, baseType: !254, size: 64, offset: 192)
!1921 = !DIDerivedType(tag: DW_TAG_member, scope: !1913, file: !50, line: 128, baseType: !1922, size: 64, offset: 256)
!1922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1913, file: !50, line: 128, size: 64, elements: !1923)
!1923 = !{!1924, !1925}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1922, file: !50, line: 133, baseType: !254, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1922, file: !50, line: 138, baseType: !360, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, scope: !1889, file: !50, line: 141, baseType: !1927, size: 64)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1889, file: !50, line: 141, size: 64, elements: !1928)
!1928 = !{!1929}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1927, file: !50, line: 142, baseType: !254, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, scope: !1889, file: !50, line: 144, baseType: !1931, size: 128)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1889, file: !50, line: 144, size: 128, elements: !1932)
!1932 = !{!1933, !2171}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1931, file: !50, line: 146, baseType: !1934, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !42, line: 126, size: 1216, elements: !1936)
!1936 = !{!1937, !1946, !1967, !1978, !1979, !1980, !1981, !2153, !2154, !2155}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1935, file: !42, line: 127, baseType: !1938, size: 384)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !42, line: 21, size: 384, elements: !1939)
!1939 = !{!1940, !1941, !1942, !1943, !1944, !1945}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1938, file: !42, line: 22, baseType: !254, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1938, file: !42, line: 23, baseType: !280, size: 64, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1938, file: !42, line: 24, baseType: !280, size: 64, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1938, file: !42, line: 25, baseType: !254, size: 64, offset: 192)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1938, file: !42, line: 26, baseType: !254, size: 64, offset: 256)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1938, file: !42, line: 27, baseType: !254, size: 64, offset: 320)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1935, file: !42, line: 128, baseType: !1947, size: 128, offset: 384)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1948, line: 105, size: 128, elements: !1949)
!1948 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1949 = !{!1950, !1951}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1947, file: !1948, line: 110, baseType: !254, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1947, file: !1948, line: 118, baseType: !1952, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1948, line: 95, size: 448, elements: !1954)
!1954 = !{!1955, !1956, !1962, !1963, !1964, !1965, !1966}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1953, file: !1948, line: 96, baseType: !360, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1953, file: !1948, line: 97, baseType: !1957, size: 64, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1948, line: 60, baseType: !1959)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{null, !1961}
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1953, file: !1948, line: 98, baseType: !1957, size: 64, offset: 128)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1953, file: !1948, line: 99, baseType: !199, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1953, file: !1948, line: 100, baseType: !199, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1953, file: !1948, line: 101, baseType: !130, size: 128, align: 64, offset: 256)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1953, file: !1948, line: 102, baseType: !1961, size: 64, offset: 384)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1935, file: !42, line: 129, baseType: !1968, size: 256, offset: 512)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1969, line: 26, size: 256, elements: !1970)
!1969 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1970 = !{!1971, !1972}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1968, file: !1969, line: 27, baseType: !18, size: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1968, file: !1969, line: 28, baseType: !1973, size: 192, offset: 64)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1974, line: 43, size: 192, elements: !1975)
!1974 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1975 = !{!1976, !1977}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1973, file: !1974, line: 44, baseType: !367, size: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1973, file: !1974, line: 45, baseType: !241, size: 128, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1935, file: !42, line: 130, baseType: !41, size: 32, offset: 768)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1935, file: !42, line: 131, baseType: !18, size: 32, offset: 800)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1935, file: !42, line: 132, baseType: !254, size: 64, offset: 832)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1935, file: !42, line: 133, baseType: !1982, size: 64, offset: 896)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1984)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !42, line: 77, size: 192, elements: !1985)
!1985 = !{!1986, !1990, !2149}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1984, file: !42, line: 83, baseType: !1987, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{null, !1884}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1984, file: !42, line: 89, baseType: !1991, size: 64, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!1994, !1995}
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !50, line: 1184, baseType: !18)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1997, line: 512, size: 896, elements: !1998)
!1997 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1998 = !{!1999, !2117, !2118, !2125, !2132, !2142, !2143, !2144, !2146, !2147}
!1999 = !DIDerivedType(tag: DW_TAG_member, scope: !1996, file: !1997, line: 513, baseType: !2000, size: 320)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1996, file: !1997, line: 513, size: 320, elements: !2001)
!2001 = !{!2002, !2113, !2114, !2115, !2116}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2000, file: !1997, line: 514, baseType: !2003, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !50, line: 625, size: 1344, elements: !2005)
!2005 = !{!2006, !2015, !2016, !2024, !2031, !2032, !2037, !2038, !2043, !2044, !2047, !2106, !2107, !2108, !2109, !2110, !2111}
!2006 = !DIDerivedType(tag: DW_TAG_member, scope: !2004, file: !50, line: 628, baseType: !2007, size: 128)
!2007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2004, file: !50, line: 628, size: 128, elements: !2008)
!2008 = !{!2009, !2014}
!2009 = !DIDerivedType(tag: DW_TAG_member, scope: !2007, file: !50, line: 629, baseType: !2010, size: 128)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2007, file: !50, line: 629, size: 128, elements: !2011)
!2011 = !{!2012, !2013}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2010, file: !50, line: 631, baseType: !254, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2010, file: !50, line: 632, baseType: !254, size: 64, offset: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2007, file: !50, line: 635, baseType: !130, size: 128, align: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2004, file: !50, line: 639, baseType: !682, size: 64, offset: 128)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2004, file: !50, line: 640, baseType: !2017, size: 64, offset: 192)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2018, line: 297, baseType: !2019)
!2018 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2018, line: 297, size: 64, elements: !2020)
!2020 = !{!2021}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2019, file: !2018, line: 297, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2023, line: 19, baseType: !254)
!2023 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2024 = !DIDerivedType(tag: DW_TAG_member, scope: !2004, file: !50, line: 646, baseType: !2025, size: 64, offset: 256)
!2025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2004, file: !50, line: 646, size: 64, elements: !2026)
!2026 = !{!2027, !2030}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2025, file: !50, line: 647, baseType: !2028, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2029)
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !50, line: 542, baseType: !254)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2025, file: !50, line: 648, baseType: !2029, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2004, file: !50, line: 666, baseType: !176, size: 32, offset: 320)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2004, file: !50, line: 667, baseType: !2033, size: 64, offset: 384)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !50, line: 579, size: 320, elements: !2035)
!2035 = !{!2036}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2034, file: !50, line: 580, baseType: !852, size: 320)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2004, file: !50, line: 670, baseType: !199, size: 8, offset: 448)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2004, file: !50, line: 681, baseType: !2039, size: 256, offset: 512)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2004, file: !50, line: 678, size: 256, elements: !2040)
!2040 = !{!2041, !2042}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2039, file: !50, line: 679, baseType: !433, size: 192, align: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2039, file: !50, line: 680, baseType: !254, size: 64, offset: 192)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2004, file: !50, line: 689, baseType: !241, size: 128, offset: 768)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2004, file: !50, line: 691, baseType: !2045, size: 64, offset: 896)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !50, line: 691, flags: DIFlagFwdDecl)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2004, file: !50, line: 694, baseType: !2048, size: 64, offset: 960)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2050)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1997, line: 563, size: 1024, elements: !2051)
!2051 = !{!2052, !2056, !2057, !2061, !2065, !2069, !2070, !2074, !2078, !2082, !2083, !2084, !2088, !2092, !2098, !2102}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2050, file: !1997, line: 564, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{null, !2003}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2050, file: !1997, line: 569, baseType: !2053, size: 64, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2050, file: !1997, line: 571, baseType: !2058, size: 64, offset: 128)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!176, !2003, !254}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2050, file: !1997, line: 572, baseType: !2062, size: 64, offset: 192)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!176, !2003}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2050, file: !1997, line: 578, baseType: !2066, size: 64, offset: 256)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!176, !2003, !254, !254, !254}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2050, file: !1997, line: 580, baseType: !1991, size: 64, offset: 320)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2050, file: !1997, line: 581, baseType: !2071, size: 64, offset: 384)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!1994, !1995, !18}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2050, file: !1997, line: 582, baseType: !2075, size: 64, offset: 448)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!1994, !1995, !254, !254}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2050, file: !1997, line: 584, baseType: !2079, size: 64, offset: 512)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!254, !2003}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2050, file: !1997, line: 588, baseType: !1991, size: 64, offset: 576)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2050, file: !1997, line: 591, baseType: !1991, size: 64, offset: 640)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2050, file: !1997, line: 597, baseType: !2085, size: 64, offset: 704)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!176, !2003, !254, !123, !176, !176}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2050, file: !1997, line: 603, baseType: !2089, size: 64, offset: 768)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!205, !2003}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2050, file: !1997, line: 613, baseType: !2093, size: 64, offset: 832)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!176, !2003, !2096}
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !381, line: 54, flags: DIFlagFwdDecl)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2050, file: !1997, line: 625, baseType: !2099, size: 64, offset: 896)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!2096, !2003, !254}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2050, file: !1997, line: 633, baseType: !2103, size: 64, offset: 960)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!1884, !2003, !254}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2004, file: !50, line: 697, baseType: !254, size: 64, offset: 1024)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2004, file: !50, line: 699, baseType: !710, size: 64, offset: 1088)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2004, file: !50, line: 700, baseType: !123, size: 64, offset: 1152)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2004, file: !50, line: 711, baseType: !360, size: 64, offset: 1216)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2004, file: !50, line: 717, baseType: !2096, size: 64, offset: 1280)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2004, file: !50, line: 722, baseType: !2112, offset: 1344)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !50, line: 570, elements: !703)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2000, file: !1997, line: 515, baseType: !270, size: 32, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2000, file: !1997, line: 516, baseType: !254, size: 64, offset: 128)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2000, file: !1997, line: 517, baseType: !254, size: 64, offset: 192)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2000, file: !1997, line: 518, baseType: !254, size: 64, offset: 256)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1996, file: !1997, line: 520, baseType: !49, size: 32, offset: 320)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1996, file: !1997, line: 522, baseType: !2119, size: 64, offset: 384)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2023, line: 22, baseType: !2121)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2023, line: 22, size: 64, elements: !2122)
!2122 = !{!2123}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2121, file: !2023, line: 22, baseType: !2124, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2023, line: 15, baseType: !254)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1996, file: !1997, line: 524, baseType: !2126, size: 64, offset: 448)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2018, line: 372, baseType: !2128)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2018, line: 372, size: 64, elements: !2129)
!2129 = !{!2130}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2128, file: !2018, line: 372, baseType: !2131, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2023, line: 16, baseType: !254)
!2132 = !DIDerivedType(tag: DW_TAG_member, scope: !1996, file: !1997, line: 527, baseType: !2133, size: 64, offset: 512)
!2133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1996, file: !1997, line: 527, size: 64, elements: !2134)
!2134 = !{!2135, !2141}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2133, file: !1997, line: 528, baseType: !2136, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2023, line: 21, baseType: !2137)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2023, line: 21, size: 64, elements: !2138)
!2138 = !{!2139}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2137, file: !2023, line: 21, baseType: !2140, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2023, line: 14, baseType: !254)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2133, file: !1997, line: 529, baseType: !2120, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1996, file: !1997, line: 534, baseType: !1884, size: 64, offset: 576)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1996, file: !1997, line: 535, baseType: !1884, size: 64, offset: 640)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1996, file: !1997, line: 541, baseType: !2145, size: 64, offset: 704)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1996, file: !1997, line: 545, baseType: !151, size: 64, offset: 768)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1996, file: !1997, line: 549, baseType: !2148, size: 64, offset: 832)
!2148 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2018, line: 520, baseType: !1884)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1984, file: !42, line: 100, baseType: !2150, size: 64, offset: 128)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!176, !1934, !254, !254, !176}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1935, file: !42, line: 134, baseType: !123, size: 64, offset: 960)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1935, file: !42, line: 135, baseType: !176, size: 32, offset: 1024)
!2155 = !DIDerivedType(tag: DW_TAG_member, scope: !1935, file: !42, line: 136, baseType: !2156, size: 128, offset: 1088)
!2156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1935, file: !42, line: 136, size: 128, elements: !2157)
!2157 = !{!2158, !2164}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2156, file: !42, line: 137, baseType: !2159, size: 128)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2160, line: 6, size: 128, elements: !2161)
!2160 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2161 = !{!2162, !2163}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2159, file: !2160, line: 7, baseType: !249, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2159, file: !2160, line: 8, baseType: !249, size: 64, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, scope: !2156, file: !42, line: 138, baseType: !2165)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2156, file: !42, line: 138, elements: !2166)
!2166 = !{!2167, !2169}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2165, file: !42, line: 138, baseType: !2168)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2165, file: !42, line: 138, elements: !703)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2165, file: !42, line: 138, baseType: !2170)
!2170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2159, elements: !265)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1931, file: !50, line: 147, baseType: !123, size: 64, offset: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1889, file: !50, line: 161, baseType: !130, size: 128, align: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, scope: !1885, file: !50, line: 164, baseType: !2174, size: 32, offset: 384)
!2174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1885, file: !50, line: 164, size: 32, elements: !2175)
!2175 = !{!2176, !2177}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2174, file: !50, line: 169, baseType: !172, size: 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2174, file: !50, line: 177, baseType: !18, size: 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1885, file: !50, line: 181, baseType: !172, size: 32, offset: 416)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1878, file: !31, line: 406, baseType: !2180, size: 64, offset: 64)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!176, !710, !2183}
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !50, line: 293, size: 1536, elements: !2185)
!2185 = !{!2186, !2216, !2230}
!2186 = !DIDerivedType(tag: DW_TAG_member, scope: !2184, file: !50, line: 295, baseType: !2187, size: 512)
!2187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2184, file: !50, line: 295, size: 512, elements: !2188)
!2188 = !{!2189, !2215}
!2189 = !DIDerivedType(tag: DW_TAG_member, scope: !2187, file: !50, line: 296, baseType: !2190, size: 448)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2187, file: !50, line: 296, size: 448, elements: !2191)
!2191 = !{!2192, !2193, !2202, !2203, !2204, !2213, !2214}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2190, file: !50, line: 298, baseType: !254, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, scope: !2190, file: !50, line: 299, baseType: !2194, size: 128, offset: 64)
!2194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2190, file: !50, line: 299, size: 128, elements: !2195)
!2195 = !{!2196, !2197}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2194, file: !50, line: 300, baseType: !241, size: 128)
!2197 = !DIDerivedType(tag: DW_TAG_member, scope: !2194, file: !50, line: 302, baseType: !2198, size: 128)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2194, file: !50, line: 302, size: 128, elements: !2199)
!2199 = !{!2200, !2201}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2198, file: !50, line: 303, baseType: !123, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2198, file: !50, line: 305, baseType: !18, size: 32, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2190, file: !50, line: 310, baseType: !1864, size: 64, offset: 192)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2190, file: !50, line: 311, baseType: !254, size: 64, offset: 256)
!2204 = !DIDerivedType(tag: DW_TAG_member, scope: !2190, file: !50, line: 312, baseType: !2205, size: 64, offset: 320)
!2205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2190, file: !50, line: 312, size: 64, elements: !2206)
!2206 = !{!2207, !2208}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2205, file: !50, line: 313, baseType: !123, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2205, file: !50, line: 314, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !50, line: 257, baseType: !2210)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 255, size: 64, elements: !2211)
!2211 = !{!2212}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2210, file: !50, line: 256, baseType: !254, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2190, file: !50, line: 316, baseType: !172, size: 32, offset: 384)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2190, file: !50, line: 317, baseType: !172, size: 32, offset: 416)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2187, file: !50, line: 323, baseType: !1885, size: 512, align: 128)
!2216 = !DIDerivedType(tag: DW_TAG_member, scope: !2184, file: !50, line: 325, baseType: !2217, size: 512, offset: 512)
!2217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2184, file: !50, line: 325, size: 512, elements: !2218)
!2218 = !{!2219, !2229}
!2219 = !DIDerivedType(tag: DW_TAG_member, scope: !2217, file: !50, line: 326, baseType: !2220, size: 320)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2217, file: !50, line: 326, size: 320, elements: !2221)
!2221 = !{!2222, !2223, !2224, !2225, !2226, !2227, !2228}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2220, file: !50, line: 327, baseType: !254, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2220, file: !50, line: 328, baseType: !254, size: 64, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2220, file: !50, line: 329, baseType: !254, size: 64, offset: 128)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2220, file: !50, line: 331, baseType: !172, size: 32, offset: 192)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2220, file: !50, line: 332, baseType: !172, size: 32, offset: 224)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2220, file: !50, line: 333, baseType: !172, size: 32, offset: 256)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2220, file: !50, line: 335, baseType: !18, size: 32, offset: 288)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2217, file: !50, line: 339, baseType: !1885, size: 512, align: 128)
!2230 = !DIDerivedType(tag: DW_TAG_member, scope: !2184, file: !50, line: 341, baseType: !2231, size: 512, offset: 1024)
!2231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2184, file: !50, line: 341, size: 512, elements: !2232)
!2232 = !{!2233, !2242, !2248}
!2233 = !DIDerivedType(tag: DW_TAG_member, scope: !2231, file: !50, line: 342, baseType: !2234, size: 384)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2231, file: !50, line: 342, size: 384, elements: !2235)
!2235 = !{!2236, !2237, !2238, !2239, !2240, !2241}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2234, file: !50, line: 343, baseType: !254, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2234, file: !50, line: 344, baseType: !254, size: 64, offset: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2234, file: !50, line: 346, baseType: !123, size: 64, offset: 128)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2234, file: !50, line: 347, baseType: !123, size: 64, offset: 192)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2234, file: !50, line: 348, baseType: !123, size: 64, offset: 256)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2234, file: !50, line: 349, baseType: !123, size: 64, offset: 320)
!2242 = !DIDerivedType(tag: DW_TAG_member, scope: !2231, file: !50, line: 352, baseType: !2243, size: 256)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2231, file: !50, line: 352, size: 256, elements: !2244)
!2244 = !{!2245, !2246, !2247}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2243, file: !50, line: 353, baseType: !254, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2243, file: !50, line: 354, baseType: !254, size: 64, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2243, file: !50, line: 356, baseType: !241, size: 128, offset: 128)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2231, file: !50, line: 359, baseType: !1885, size: 512, align: 128)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1878, file: !31, line: 409, baseType: !2250, size: 64, offset: 128)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!176, !1864, !1341}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1878, file: !31, line: 412, baseType: !2254, size: 64, offset: 192)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!199, !1864, !2183}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1878, file: !31, line: 414, baseType: !2258, size: 64, offset: 256)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{null, !2261}
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 310, flags: DIFlagFwdDecl)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1878, file: !31, line: 416, baseType: !2264, size: 64, offset: 320)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!176, !710, !1864, !725, !18, !2267, !2268}
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1878, file: !31, line: 419, baseType: !2270, size: 64, offset: 384)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!176, !710, !1864, !725, !18, !18, !1884, !123}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1878, file: !31, line: 424, baseType: !2274, size: 64, offset: 448)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!2277, !1864, !2277}
!2277 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !131, line: 131, baseType: !249)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1878, file: !31, line: 425, baseType: !2279, size: 64, offset: 512)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{null, !2183, !273, !273}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1878, file: !31, line: 426, baseType: !2283, size: 64, offset: 576)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!199, !2183, !270}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1878, file: !31, line: 427, baseType: !2287, size: 64, offset: 640)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{null, !2183}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1878, file: !31, line: 428, baseType: !2291, size: 64, offset: 704)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!1215, !2294, !2316}
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 373, size: 384, elements: !2296)
!2296 = !{!2297, !2298, !2299, !2303, !2304, !2305, !2306}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2295, file: !31, line: 374, baseType: !710, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2295, file: !31, line: 375, baseType: !725, size: 64, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2295, file: !31, line: 376, baseType: !2300, size: 64, offset: 128)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{null, !2294, !217}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2295, file: !31, line: 377, baseType: !123, size: 64, offset: 192)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2295, file: !31, line: 378, baseType: !176, size: 32, offset: 256)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2295, file: !31, line: 379, baseType: !189, size: 16, offset: 288)
!2306 = !DIDerivedType(tag: DW_TAG_member, scope: !2295, file: !31, line: 380, baseType: !2307, size: 64, offset: 320)
!2307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2295, file: !31, line: 380, size: 64, elements: !2308)
!2308 = !{!2309, !2312}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2307, file: !31, line: 386, baseType: !2310, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 386, flags: DIFlagFwdDecl)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2307, file: !31, line: 395, baseType: !2313, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!1215, !123}
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 69, flags: DIFlagFwdDecl)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1878, file: !31, line: 433, baseType: !2319, size: 64, offset: 768)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!176, !1864, !2183, !2183, !65}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1878, file: !31, line: 435, baseType: !2323, size: 64, offset: 832)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!176, !2183}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1878, file: !31, line: 436, baseType: !2327, size: 64, offset: 896)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!199, !2183, !273, !273}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1878, file: !31, line: 438, baseType: !2331, size: 64, offset: 960)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{null, !2183, !2334, !2334}
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1878, file: !31, line: 439, baseType: !2336, size: 64, offset: 1024)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!176, !1864, !1884}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1878, file: !31, line: 442, baseType: !2340, size: 64, offset: 1088)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!176, !2343, !710, !2345}
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 66, flags: DIFlagFwdDecl)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1878, file: !31, line: 444, baseType: !2347, size: 64, offset: 1152)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{null, !710}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1878, file: !31, line: 445, baseType: !2351, size: 64, offset: 1216)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!176, !2294, !2316}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1865, file: !31, line: 486, baseType: !254, size: 64, offset: 896)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1865, file: !31, line: 487, baseType: !852, size: 320, offset: 960)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1865, file: !31, line: 488, baseType: !1821, size: 32, offset: 1280)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1865, file: !31, line: 489, baseType: !152, size: 32, offset: 1312)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1865, file: !31, line: 490, baseType: !241, size: 128, offset: 1344)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1865, file: !31, line: 491, baseType: !123, size: 64, offset: 1472)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1063, file: !31, line: 659, baseType: !123, size: 64, offset: 576)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1063, file: !31, line: 663, baseType: !254, size: 64, offset: 640)
!2362 = !DIDerivedType(tag: DW_TAG_member, scope: !1063, file: !31, line: 671, baseType: !2363, size: 32, offset: 704)
!2363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1063, file: !31, line: 671, size: 32, elements: !2364)
!2364 = !{!2365, !2367}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2363, file: !31, line: 672, baseType: !2366, size: 32)
!2366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2363, file: !31, line: 673, baseType: !18, size: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1063, file: !31, line: 675, baseType: !1137, size: 32, offset: 736)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1063, file: !31, line: 676, baseType: !725, size: 64, offset: 768)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1063, file: !31, line: 677, baseType: !1173, size: 128, offset: 832)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1063, file: !31, line: 678, baseType: !1173, size: 128, offset: 960)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1063, file: !31, line: 679, baseType: !1173, size: 128, offset: 1088)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1063, file: !31, line: 680, baseType: !152, size: 32, offset: 1216)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1063, file: !31, line: 681, baseType: !191, size: 16, offset: 1248)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1063, file: !31, line: 682, baseType: !181, size: 8, offset: 1264)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1063, file: !31, line: 683, baseType: !181, size: 8, offset: 1272)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1063, file: !31, line: 684, baseType: !1612, size: 64, offset: 1280)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1063, file: !31, line: 691, baseType: !254, size: 64, offset: 1344)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1063, file: !31, line: 692, baseType: !852, size: 320, offset: 1408)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1063, file: !31, line: 694, baseType: !254, size: 64, offset: 1728)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1063, file: !31, line: 695, baseType: !254, size: 64, offset: 1792)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1063, file: !31, line: 697, baseType: !767, size: 128, offset: 1856)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1063, file: !31, line: 698, baseType: !241, size: 128, offset: 1984)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1063, file: !31, line: 707, baseType: !241, size: 128, offset: 2112)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1063, file: !31, line: 708, baseType: !241, size: 128, offset: 2240)
!2386 = !DIDerivedType(tag: DW_TAG_member, scope: !1063, file: !31, line: 709, baseType: !2387, size: 128, offset: 2368)
!2387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1063, file: !31, line: 709, size: 128, elements: !2388)
!2388 = !{!2389, !2390}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2387, file: !31, line: 710, baseType: !763, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2387, file: !31, line: 711, baseType: !130, size: 128, align: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1063, file: !31, line: 713, baseType: !362, size: 64, offset: 2496)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1063, file: !31, line: 714, baseType: !362, size: 64, offset: 2560)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1063, file: !31, line: 715, baseType: !172, size: 32, offset: 2624)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1063, file: !31, line: 716, baseType: !172, size: 32, offset: 2656)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1063, file: !31, line: 717, baseType: !172, size: 32, offset: 2688)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1063, file: !31, line: 719, baseType: !172, size: 32, offset: 2720)
!2397 = !DIDerivedType(tag: DW_TAG_member, scope: !1063, file: !31, line: 721, baseType: !2398, size: 64, offset: 2752)
!2398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1063, file: !31, line: 721, size: 64, elements: !2399)
!2399 = !{!2400, !2530}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2398, file: !31, line: 722, baseType: !2401, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2403)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1914, size: 2112, elements: !2404)
!2404 = !{!2405, !2406, !2410, !2414, !2418, !2419, !2420, !2426, !2439, !2447, !2451, !2452, !2456, !2457, !2461, !2466, !2467, !2471, !2475, !2481, !2482, !2486, !2487, !2493, !2497, !2498, !2503, !2507, !2511, !2515, !2519, !2520, !2526}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2403, file: !31, line: 1915, baseType: !1303, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2403, file: !31, line: 1916, baseType: !2407, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!725, !710, !725, !176}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2403, file: !31, line: 1917, baseType: !2411, size: 64, offset: 128)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!1215, !710, !226, !273, !1399}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2403, file: !31, line: 1918, baseType: !2415, size: 64, offset: 192)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!1215, !710, !205, !273, !1399}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2403, file: !31, line: 1919, baseType: !2291, size: 64, offset: 256)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2403, file: !31, line: 1920, baseType: !2291, size: 64, offset: 320)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2403, file: !31, line: 1921, baseType: !2421, size: 64, offset: 384)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!176, !2294, !2424, !18}
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !31, line: 53, flags: DIFlagFwdDecl)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2403, file: !31, line: 1923, baseType: !2427, size: 64, offset: 448)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!176, !710, !2430}
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1858, size: 128, elements: !2432)
!2432 = !{!2433, !2438}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2431, file: !31, line: 1859, baseType: !2434, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1855, baseType: !2435)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!199, !2430, !205, !176, !725, !249, !18}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2431, file: !31, line: 1860, baseType: !725, size: 64, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2403, file: !31, line: 1924, baseType: !2440, size: 64, offset: 512)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!2443, !710, !2445}
!2443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2444, line: 59, baseType: !18)
!2444 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !31, line: 61, flags: DIFlagFwdDecl)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2403, file: !31, line: 1925, baseType: !2448, size: 64, offset: 576)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!217, !710, !18, !254}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2403, file: !31, line: 1926, baseType: !2448, size: 64, offset: 640)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2403, file: !31, line: 1927, baseType: !2453, size: 64, offset: 704)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!176, !710, !2003}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2403, file: !31, line: 1928, baseType: !254, size: 64, offset: 768)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2403, file: !31, line: 1929, baseType: !2458, size: 64, offset: 832)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!176, !1062, !710}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2403, file: !31, line: 1930, baseType: !2462, size: 64, offset: 896)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!176, !710, !2465}
!2465 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1061, baseType: !123)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2403, file: !31, line: 1931, baseType: !2458, size: 64, offset: 960)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2403, file: !31, line: 1932, baseType: !2468, size: 64, offset: 1024)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!176, !710, !725, !725, !176}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2403, file: !31, line: 1933, baseType: !2472, size: 64, offset: 1088)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!176, !176, !710, !176}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2403, file: !31, line: 1934, baseType: !2476, size: 64, offset: 1152)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!176, !710, !176, !2479}
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1063, flags: DIFlagFwdDecl)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2403, file: !31, line: 1935, baseType: !707, size: 64, offset: 1216)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2403, file: !31, line: 1936, baseType: !2483, size: 64, offset: 1280)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!176, !176}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2403, file: !31, line: 1937, baseType: !2476, size: 64, offset: 1344)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2403, file: !31, line: 1938, baseType: !2488, size: 64, offset: 1408)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!1215, !2491, !710, !1399, !273, !18}
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !381, line: 59, flags: DIFlagFwdDecl)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2403, file: !31, line: 1939, baseType: !2494, size: 64, offset: 1472)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!1215, !710, !1399, !2491, !273, !18}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2403, file: !31, line: 1940, baseType: !2347, size: 64, offset: 1536)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2403, file: !31, line: 1941, baseType: !2499, size: 64, offset: 1600)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!176, !710, !176, !2502, !2268}
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2403, file: !31, line: 1942, baseType: !2504, size: 64, offset: 1664)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!217, !710, !176, !725, !725}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2403, file: !31, line: 1944, baseType: !2508, size: 64, offset: 1728)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{null, !1378, !710}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2403, file: !31, line: 1948, baseType: !2512, size: 64, offset: 1792)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!1215, !710, !725, !710, !725, !273, !18}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2403, file: !31, line: 1950, baseType: !2516, size: 64, offset: 1856)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!725, !710, !725, !710, !725, !725, !18}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2403, file: !31, line: 1953, baseType: !2468, size: 64, offset: 1920)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2403, file: !31, line: 1954, baseType: !2521, size: 64, offset: 1984)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!176, !2524, !18}
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !31, line: 1911, flags: DIFlagFwdDecl)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2403, file: !31, line: 1955, baseType: !2527, size: 64, offset: 2048)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!176, !2524, !2424, !18}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2398, file: !31, line: 723, baseType: !1329, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1063, file: !31, line: 725, baseType: !2532, size: 64, offset: 2816)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 725, flags: DIFlagFwdDecl)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1063, file: !31, line: 726, baseType: !1865, size: 1536, align: 64, offset: 2880)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1063, file: !31, line: 727, baseType: !241, size: 128, offset: 4416)
!2536 = !DIDerivedType(tag: DW_TAG_member, scope: !1063, file: !31, line: 728, baseType: !2537, size: 64, offset: 4544)
!2537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1063, file: !31, line: 728, size: 64, elements: !2538)
!2538 = !{!2539, !2540, !2543, !2544}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2537, file: !31, line: 729, baseType: !2491, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2537, file: !31, line: 730, baseType: !2541, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !31, line: 730, flags: DIFlagFwdDecl)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2537, file: !31, line: 731, baseType: !226, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2537, file: !31, line: 732, baseType: !18, size: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1063, file: !31, line: 735, baseType: !142, size: 32, offset: 4608)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1063, file: !31, line: 738, baseType: !142, size: 32, offset: 4640)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1063, file: !31, line: 739, baseType: !1725, size: 64, offset: 4672)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1063, file: !31, line: 750, baseType: !123, size: 64, offset: 4736)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1028, file: !1029, line: 91, baseType: !2550, size: 256, offset: 448)
!2550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 256, elements: !1729)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1028, file: !1029, line: 94, baseType: !2552, size: 64, offset: 704)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2553, line: 25, size: 64, elements: !2554)
!2553 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!2554 = !{!2555}
!2555 = !DIDerivedType(tag: DW_TAG_member, scope: !2552, file: !2553, line: 26, baseType: !2556, size: 64)
!2556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2552, file: !2553, line: 26, size: 64, elements: !2557)
!2557 = !{!2558, !2559}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !2556, file: !2553, line: 28, baseType: !250, size: 64, align: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, scope: !2556, file: !2553, line: 30, baseType: !2560, size: 64)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2556, file: !2553, line: 30, size: 64, elements: !2561)
!2561 = !{!2562, !2563}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2560, file: !2553, line: 31, baseType: !152, size: 32)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2560, file: !2553, line: 32, baseType: !176, size: 32, offset: 32)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1028, file: !1029, line: 95, baseType: !1744, size: 64, offset: 768)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1028, file: !1029, line: 96, baseType: !1270, size: 64, offset: 832)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1028, file: !1029, line: 97, baseType: !254, size: 64, offset: 896)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1028, file: !1029, line: 98, baseType: !123, size: 64, offset: 960)
!2568 = !DIDerivedType(tag: DW_TAG_member, scope: !1028, file: !1029, line: 100, baseType: !2569, size: 128, offset: 1024)
!2569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1028, file: !1029, line: 100, size: 128, elements: !2570)
!2570 = !{!2571, !2572}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2569, file: !1029, line: 101, baseType: !241, size: 128)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2569, file: !1029, line: 102, baseType: !2573, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1028, file: !1029, line: 104, baseType: !241, size: 128, offset: 1152)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1028, file: !1029, line: 105, baseType: !241, size: 128, offset: 1280)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1028, file: !1029, line: 113, baseType: !2577, size: 128, offset: 1408)
!2577 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1028, file: !1029, line: 109, size: 128, elements: !2578)
!2578 = !{!2579, !2580, !2581}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2577, file: !1029, line: 110, baseType: !767, size: 128)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2577, file: !1029, line: 111, baseType: !1038, size: 128)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2577, file: !1029, line: 112, baseType: !130, size: 128, align: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1023, file: !1024, line: 72, baseType: !1270, size: 64, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1023, file: !1024, line: 73, baseType: !176, size: 32, offset: 128)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1023, file: !1024, line: 74, baseType: !1102, size: 64, offset: 192)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1018, file: !1019, line: 10, baseType: !1027, size: 64, offset: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !711, file: !31, line: 1015, baseType: !1062, size: 64, offset: 1344)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !711, file: !31, line: 1016, baseType: !2401, size: 64, offset: 1408)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !711, file: !31, line: 1018, baseType: !249, size: 64, offset: 1472)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !711, file: !31, line: 1020, baseType: !123, size: 64, offset: 1536)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !711, file: !31, line: 1023, baseType: !123, size: 64, offset: 1600)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !711, file: !31, line: 1027, baseType: !2592, size: 64, offset: 1664)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !711, file: !31, line: 1029, baseType: !1864, size: 64, offset: 1728)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !711, file: !31, line: 1030, baseType: !1821, size: 32, offset: 1792)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !711, file: !31, line: 1031, baseType: !1821, size: 32, offset: 1824)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !686, file: !50, line: 756, baseType: !254, size: 64, offset: 704)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !686, file: !50, line: 757, baseType: !254, size: 64, offset: 768)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !686, file: !50, line: 760, baseType: !254, size: 64, offset: 832)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !686, file: !50, line: 761, baseType: !254, size: 64, offset: 896)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !686, file: !50, line: 763, baseType: !254, size: 64, offset: 960)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !686, file: !50, line: 764, baseType: !2602, size: 64, offset: 1024)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2018, line: 299, baseType: !2604)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2018, line: 299, size: 64, elements: !2605)
!2605 = !{!2606}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2604, file: !2018, line: 299, baseType: !2607, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2023, line: 18, baseType: !254)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !686, file: !50, line: 773, baseType: !172, size: 32, offset: 1088)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !686, file: !50, line: 785, baseType: !172, size: 32, offset: 1120)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !686, file: !50, line: 795, baseType: !2611, size: 64, offset: 1152)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !50, line: 726, size: 128, elements: !2613)
!2613 = !{!2614, !2615}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2612, file: !50, line: 727, baseType: !249, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2612, file: !50, line: 728, baseType: !176, size: 32, offset: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !686, file: !50, line: 801, baseType: !254, size: 64, offset: 1216)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !686, file: !50, line: 804, baseType: !360, size: 64, offset: 1280)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !686, file: !50, line: 806, baseType: !176, size: 32, offset: 1344)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !686, file: !50, line: 808, baseType: !152, size: 32, offset: 1376)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !686, file: !50, line: 823, baseType: !852, size: 320, offset: 1408)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !686, file: !50, line: 825, baseType: !241, size: 128, offset: 1728)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !686, file: !50, line: 845, baseType: !176, size: 32, offset: 1856)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !686, file: !50, line: 849, baseType: !254, size: 64, offset: 1920)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !686, file: !50, line: 850, baseType: !254, size: 64, offset: 1984)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !686, file: !50, line: 852, baseType: !254, size: 64, offset: 2048)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !686, file: !50, line: 853, baseType: !254, size: 64, offset: 2112)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !686, file: !50, line: 854, baseType: !362, size: 64, offset: 2176)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !686, file: !50, line: 855, baseType: !254, size: 64, offset: 2240)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !686, file: !50, line: 856, baseType: !254, size: 64, offset: 2304)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !686, file: !50, line: 857, baseType: !254, size: 64, offset: 2368)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !686, file: !50, line: 858, baseType: !254, size: 64, offset: 2432)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !686, file: !50, line: 865, baseType: !556, size: 32, offset: 2496)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !686, file: !50, line: 867, baseType: !152, size: 32, offset: 2528)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !686, file: !50, line: 869, baseType: !254, size: 64, offset: 2560)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !686, file: !50, line: 869, baseType: !254, size: 64, offset: 2624)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !686, file: !50, line: 869, baseType: !254, size: 64, offset: 2688)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !686, file: !50, line: 869, baseType: !254, size: 64, offset: 2752)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !686, file: !50, line: 870, baseType: !254, size: 64, offset: 2816)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !686, file: !50, line: 870, baseType: !254, size: 64, offset: 2880)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !686, file: !50, line: 870, baseType: !254, size: 64, offset: 2944)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !686, file: !50, line: 871, baseType: !254, size: 64, offset: 3008)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !686, file: !50, line: 871, baseType: !254, size: 64, offset: 3072)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !686, file: !50, line: 871, baseType: !254, size: 64, offset: 3136)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !686, file: !50, line: 871, baseType: !254, size: 64, offset: 3200)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !686, file: !50, line: 873, baseType: !2646, size: 3328, offset: 3264)
!2646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 3328, elements: !2647)
!2647 = !{!2648}
!2648 = !DISubrange(count: 52)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !686, file: !50, line: 875, baseType: !2650, size: 1280, offset: 6592)
!2650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !964, size: 1280, elements: !772)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !686, file: !50, line: 877, baseType: !2652, size: 64, offset: 7872)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !50, line: 877, flags: DIFlagFwdDecl)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !686, file: !50, line: 880, baseType: !2655, size: 1088, offset: 7936)
!2655 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2656, line: 72, baseType: !2657)
!2656 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2656, line: 23, size: 1088, elements: !2658)
!2658 = !{!2659, !2660, !2661, !2662, !2663, !2666, !2667, !2668, !2669, !2673, !2674, !2675}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2657, file: !2656, line: 28, baseType: !249, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2657, file: !2656, line: 38, baseType: !362, size: 64, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2657, file: !2656, line: 40, baseType: !254, size: 64, offset: 128)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2657, file: !2656, line: 43, baseType: !852, size: 320, offset: 192)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2657, file: !2656, line: 44, baseType: !2664, size: 64, offset: 512)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2656, line: 44, flags: DIFlagFwdDecl)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2657, file: !2656, line: 48, baseType: !254, size: 64, offset: 576)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2657, file: !2656, line: 59, baseType: !356, size: 256, offset: 640)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2657, file: !2656, line: 60, baseType: !123, size: 64, offset: 896)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2657, file: !2656, line: 61, baseType: !2670, size: 64, offset: 960)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2672)
!2672 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2656, line: 61, flags: DIFlagFwdDecl)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2657, file: !2656, line: 63, baseType: !172, size: 32, offset: 1024)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2657, file: !2656, line: 69, baseType: !189, size: 16, offset: 1056)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2657, file: !2656, line: 70, baseType: !2676, size: 16, offset: 1072)
!2676 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !141, line: 18, baseType: !2677)
!2677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !143, line: 23, baseType: !880)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !686, file: !50, line: 882, baseType: !254, size: 64, offset: 9024)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !686, file: !50, line: 885, baseType: !152, size: 32, offset: 9088)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !686, file: !50, line: 886, baseType: !2681, size: 64, offset: 9152)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !50, line: 732, flags: DIFlagFwdDecl)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !686, file: !50, line: 901, baseType: !989, size: 64, offset: 9216)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !686, file: !50, line: 904, baseType: !710, size: 64, offset: 9280)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !686, file: !50, line: 906, baseType: !2686, size: 64, offset: 9344)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !50, line: 906, flags: DIFlagFwdDecl)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !686, file: !50, line: 930, baseType: !172, size: 32, offset: 9408)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !686, file: !50, line: 933, baseType: !172, size: 32, offset: 9440)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !686, file: !50, line: 935, baseType: !2691, size: 64, offset: 9472)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !79, line: 103, size: 64, elements: !2692)
!2692 = !{!2693}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2691, file: !79, line: 104, baseType: !2694, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !79, line: 101, flags: DIFlagFwdDecl)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !686, file: !50, line: 940, baseType: !360, size: 64, offset: 9536)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !686, file: !50, line: 942, baseType: !1847, size: 256, offset: 9600)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !683, file: !50, line: 986, baseType: !2699, offset: 10240)
!2699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, elements: !265)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !380, file: !381, line: 882, baseType: !682, size: 64, offset: 9792)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !380, file: !381, line: 884, baseType: !176, size: 32, offset: 9856)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !380, file: !381, line: 885, baseType: !176, size: 32, offset: 9888)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !380, file: !381, line: 886, baseType: !176, size: 32, offset: 9920)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !380, file: !381, line: 888, baseType: !176, size: 32, offset: 9952)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !380, file: !381, line: 890, baseType: !254, size: 64, offset: 9984)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !380, file: !381, line: 893, baseType: !18, size: 32, offset: 10048)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !380, file: !381, line: 896, baseType: !18, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !380, file: !381, line: 897, baseType: !18, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !380, file: !381, line: 898, baseType: !18, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !380, file: !381, line: 899, baseType: !18, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !380, file: !381, line: 919, baseType: !18, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !380, file: !381, line: 922, baseType: !18, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !380, file: !381, line: 923, baseType: !18, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !380, file: !381, line: 925, baseType: !18, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !380, file: !381, line: 939, baseType: !18, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !380, file: !381, line: 941, baseType: !18, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !380, file: !381, line: 944, baseType: !18, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !380, file: !381, line: 956, baseType: !18, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !380, file: !381, line: 962, baseType: !18, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !380, file: !381, line: 966, baseType: !18, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !380, file: !381, line: 969, baseType: !254, size: 64, offset: 10176)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !380, file: !381, line: 971, baseType: !2723, size: 448, offset: 10240)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !73, line: 25, size: 448, elements: !2724)
!2724 = !{!2725, !2726, !2731}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2723, file: !73, line: 26, baseType: !254, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2723, file: !73, line: 27, baseType: !2727, size: 64, offset: 64)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!217, !2730}
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, scope: !2723, file: !73, line: 28, baseType: !2732, size: 320, offset: 128)
!2732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2723, file: !73, line: 28, size: 320, elements: !2733)
!2733 = !{!2734, !2744, !2769}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2732, file: !73, line: 37, baseType: !2735, size: 320)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2732, file: !73, line: 30, size: 320, elements: !2736)
!2736 = !{!2737, !2739, !2740, !2741, !2742, !2743}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2735, file: !73, line: 31, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2735, file: !73, line: 32, baseType: !140, size: 32, offset: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2735, file: !73, line: 33, baseType: !140, size: 32, offset: 96)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2735, file: !73, line: 34, baseType: !140, size: 32, offset: 128)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2735, file: !73, line: 35, baseType: !249, size: 64, offset: 192)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2735, file: !73, line: 36, baseType: !2738, size: 64, offset: 256)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2732, file: !73, line: 47, baseType: !2745, size: 192)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2732, file: !73, line: 39, size: 192, elements: !2746)
!2746 = !{!2747, !2748, !2749, !2768}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2745, file: !73, line: 40, baseType: !548, size: 32)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2745, file: !73, line: 41, baseType: !72, size: 32, offset: 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, scope: !2745, file: !73, line: 42, baseType: !2750, size: 64, offset: 64)
!2750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2745, file: !73, line: 42, size: 64, elements: !2751)
!2751 = !{!2752, !2760}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2750, file: !73, line: 43, baseType: !2753, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2755, line: 7, size: 128, elements: !2756)
!2755 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2756 = !{!2757, !2759}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2754, file: !2755, line: 8, baseType: !2758, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !275, line: 93, baseType: !236)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2754, file: !2755, line: 9, baseType: !236, size: 64, offset: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2750, file: !73, line: 44, baseType: !2761, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2763, line: 7, size: 64, elements: !2764)
!2763 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2764 = !{!2765, !2767}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2762, file: !2763, line: 8, baseType: !2766, size: 32)
!2766 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2763, line: 5, baseType: !844)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2762, file: !2763, line: 9, baseType: !844, size: 32, offset: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2745, file: !73, line: 46, baseType: !249, size: 64, offset: 128)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2732, file: !73, line: 55, baseType: !2770, size: 256)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2732, file: !73, line: 49, size: 256, elements: !2771)
!2771 = !{!2772, !2775, !2776, !2777, !2778}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2770, file: !73, line: 50, baseType: !2773, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !73, line: 14, flags: DIFlagFwdDecl)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2770, file: !73, line: 51, baseType: !176, size: 32, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2770, file: !73, line: 52, baseType: !176, size: 32, offset: 96)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2770, file: !73, line: 53, baseType: !254, size: 64, offset: 128)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2770, file: !73, line: 54, baseType: !254, size: 64, offset: 192)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !380, file: !381, line: 973, baseType: !2780, size: 32, offset: 10688)
!2780 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !131, line: 27, baseType: !2781)
!2781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !275, line: 28, baseType: !176)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !380, file: !381, line: 974, baseType: !2780, size: 32, offset: 10720)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !380, file: !381, line: 978, baseType: !254, size: 64, offset: 10752)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !380, file: !381, line: 987, baseType: !379, size: 64, offset: 10816)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !380, file: !381, line: 990, baseType: !379, size: 64, offset: 10880)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !380, file: !381, line: 995, baseType: !241, size: 128, offset: 10944)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !380, file: !381, line: 996, baseType: !241, size: 128, offset: 11072)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !380, file: !381, line: 997, baseType: !379, size: 64, offset: 11200)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !380, file: !381, line: 1005, baseType: !241, size: 128, offset: 11264)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !380, file: !381, line: 1006, baseType: !241, size: 128, offset: 11392)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !380, file: !381, line: 1009, baseType: !755, size: 64, offset: 11520)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !380, file: !381, line: 1010, baseType: !2793, size: 512, offset: 11584)
!2793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !767, size: 512, elements: !772)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !380, file: !381, line: 1011, baseType: !241, size: 128, offset: 12096)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !380, file: !381, line: 1012, baseType: !241, size: 128, offset: 12224)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !380, file: !381, line: 1014, baseType: !2797, size: 64, offset: 12352)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !380, file: !381, line: 1017, baseType: !285, size: 64, offset: 12416)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !380, file: !381, line: 1020, baseType: !285, size: 64, offset: 12480)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !380, file: !381, line: 1023, baseType: !123, size: 64, offset: 12544)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !380, file: !381, line: 1025, baseType: !249, size: 64, offset: 12608)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !380, file: !381, line: 1026, baseType: !249, size: 64, offset: 12672)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !380, file: !381, line: 1031, baseType: !249, size: 64, offset: 12736)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !380, file: !381, line: 1032, baseType: !2805, size: 192, offset: 12800)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !381, line: 324, size: 192, elements: !2806)
!2806 = !{!2807, !2808, !2809}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2805, file: !381, line: 326, baseType: !249, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2805, file: !381, line: 327, baseType: !249, size: 64, offset: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2805, file: !381, line: 328, baseType: !367, size: 32, offset: 128)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !380, file: !381, line: 1041, baseType: !254, size: 64, offset: 12992)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !380, file: !381, line: 1042, baseType: !254, size: 64, offset: 13056)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !380, file: !381, line: 1045, baseType: !249, size: 64, offset: 13120)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !380, file: !381, line: 1048, baseType: !249, size: 64, offset: 13184)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !380, file: !381, line: 1051, baseType: !254, size: 64, offset: 13248)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !380, file: !381, line: 1052, baseType: !254, size: 64, offset: 13312)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !380, file: !381, line: 1055, baseType: !2817, size: 640, offset: 13376)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2818, line: 132, size: 640, elements: !2819)
!2818 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2819 = !{!2820, !2826, !2827}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2817, file: !2818, line: 133, baseType: !2821, size: 576)
!2821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2822, size: 576, elements: !751)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2818, line: 117, size: 192, elements: !2823)
!2823 = !{!2824, !2825}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2822, file: !2818, line: 118, baseType: !249, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2822, file: !2818, line: 119, baseType: !562, size: 128, offset: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2817, file: !2818, line: 134, baseType: !18, size: 32, offset: 576)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2817, file: !2818, line: 135, baseType: !18, size: 32, offset: 608)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !380, file: !381, line: 1058, baseType: !2829, size: 448, offset: 14016)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2818, line: 144, size: 448, elements: !2830)
!2830 = !{!2831, !2832, !2833}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2829, file: !2818, line: 145, baseType: !130, size: 128, align: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2829, file: !2818, line: 146, baseType: !356, size: 256, offset: 128)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2829, file: !2818, line: 147, baseType: !18, size: 32, offset: 384)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !380, file: !381, line: 1064, baseType: !803, size: 64, offset: 14464)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !380, file: !381, line: 1067, baseType: !803, size: 64, offset: 14528)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !380, file: !381, line: 1070, baseType: !803, size: 64, offset: 14592)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !380, file: !381, line: 1074, baseType: !836, size: 64, offset: 14656)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !380, file: !381, line: 1084, baseType: !2839, size: 128, offset: 14720)
!2839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !1738)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !380, file: !381, line: 1086, baseType: !2841, size: 64, offset: 14848)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !381, line: 55, flags: DIFlagFwdDecl)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !380, file: !381, line: 1089, baseType: !2844, size: 64, offset: 14912)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2845, line: 12, size: 64, elements: !2846)
!2845 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2846 = !{!2847}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2844, file: !2845, line: 13, baseType: !2848, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2845, line: 8, flags: DIFlagFwdDecl)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !380, file: !381, line: 1090, baseType: !2851, size: 128, offset: 14976)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2852, line: 13, size: 128, elements: !2853)
!2852 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2853 = !{!2854}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2851, file: !2852, line: 14, baseType: !241, size: 128)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !380, file: !381, line: 1097, baseType: !2856, size: 64, offset: 15104)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !381, line: 50, flags: DIFlagFwdDecl)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !380, file: !381, line: 1100, baseType: !2859, size: 64, offset: 15168)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !381, line: 1100, flags: DIFlagFwdDecl)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !380, file: !381, line: 1103, baseType: !2862, size: 64, offset: 15232)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !381, line: 53, flags: DIFlagFwdDecl)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !380, file: !381, line: 1107, baseType: !2865, size: 64, offset: 15296)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !381, line: 56, flags: DIFlagFwdDecl)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !380, file: !381, line: 1110, baseType: !2868, size: 64, offset: 15360)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2870, line: 93, size: 8768, elements: !2871)
!2870 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2871 = !{!2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2921, !2930, !2931, !2933, !2934, !2935, !2938, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2976, !2977, !2984, !2994, !2997, !2998, !3001, !3002, !3003, !3004, !3005, !3006}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2869, file: !2870, line: 94, baseType: !260, size: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2869, file: !2870, line: 95, baseType: !172, size: 32, offset: 32)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2869, file: !2870, line: 96, baseType: !176, size: 32, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2869, file: !2870, line: 97, baseType: !176, size: 32, offset: 96)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2869, file: !2870, line: 98, baseType: !241, size: 128, offset: 128)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2869, file: !2870, line: 100, baseType: !776, size: 192, offset: 256)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2869, file: !2870, line: 103, baseType: !379, size: 64, offset: 448)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2869, file: !2870, line: 106, baseType: !2880, size: 192, offset: 512)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !994, line: 32, size: 192, elements: !2881)
!2881 = !{!2882, !2883}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2880, file: !994, line: 33, baseType: !241, size: 128)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2880, file: !994, line: 34, baseType: !2884, size: 64, offset: 128)
!2884 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2885, line: 25, baseType: !2886)
!2885 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2885, line: 23, size: 64, elements: !2887)
!2887 = !{!2888}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2886, file: !2885, line: 24, baseType: !633, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2869, file: !2870, line: 109, baseType: !763, size: 64, offset: 704)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2869, file: !2870, line: 112, baseType: !176, size: 32, offset: 768)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2869, file: !2870, line: 114, baseType: !176, size: 32, offset: 800)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2869, file: !2870, line: 115, baseType: !379, size: 64, offset: 832)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2869, file: !2870, line: 118, baseType: !176, size: 32, offset: 896)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2869, file: !2870, line: 119, baseType: !18, size: 32, offset: 928)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2869, file: !2870, line: 121, baseType: !2896, size: 64, offset: 960)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2870, line: 80, size: 448, elements: !2898)
!2898 = !{!2899, !2900, !2906}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2897, file: !2870, line: 81, baseType: !172, size: 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2897, file: !2870, line: 82, baseType: !2901, size: 128, offset: 64)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2870, line: 75, size: 128, elements: !2902)
!2902 = !{!2903, !2904}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2901, file: !2870, line: 76, baseType: !379, size: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2901, file: !2870, line: 77, baseType: !2905, size: 64, offset: 64)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2897, file: !2870, line: 83, baseType: !1968, size: 256, offset: 192)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2869, file: !2870, line: 132, baseType: !18, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2869, file: !2870, line: 133, baseType: !18, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2869, file: !2870, line: 138, baseType: !18, size: 32, offset: 1056)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2869, file: !2870, line: 139, baseType: !241, size: 128, offset: 1088)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2869, file: !2870, line: 142, baseType: !503, size: 512, offset: 1216)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2869, file: !2870, line: 143, baseType: !232, size: 64, offset: 1728)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2869, file: !2870, line: 150, baseType: !2914, size: 256, offset: 1792)
!2914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2915, size: 256, elements: !2919)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2870, line: 38, size: 128, elements: !2916)
!2916 = !{!2917, !2918}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2915, file: !2870, line: 39, baseType: !249, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2915, file: !2870, line: 40, baseType: !249, size: 64, offset: 64)
!2919 = !{!2920}
!2920 = !DISubrange(count: 2)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2869, file: !2870, line: 156, baseType: !2922, size: 192, offset: 2048)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2870, line: 66, size: 192, elements: !2923)
!2923 = !{!2924}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2922, file: !2870, line: 67, baseType: !2925, size: 192)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2870, line: 47, size: 192, elements: !2926)
!2926 = !{!2927, !2928, !2929}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2925, file: !2870, line: 48, baseType: !362, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2925, file: !2870, line: 49, baseType: !362, size: 64, offset: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2925, file: !2870, line: 50, baseType: !362, size: 64, offset: 128)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2869, file: !2870, line: 160, baseType: !2817, size: 640, offset: 2240)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2869, file: !2870, line: 163, baseType: !2932, size: 256, offset: 2880)
!2932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !755, size: 256, elements: !772)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2869, file: !2870, line: 169, baseType: !755, size: 64, offset: 3136)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2869, file: !2870, line: 172, baseType: !176, size: 32, offset: 3200)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2869, file: !2870, line: 174, baseType: !2936, size: 64, offset: 3264)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2870, line: 174, flags: DIFlagFwdDecl)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2869, file: !2870, line: 185, baseType: !2939, size: 64, offset: 3328)
!2939 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !552, line: 860, baseType: !2940)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !552, line: 853, size: 64, elements: !2941)
!2941 = !{!2942, !2943}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2940, file: !552, line: 858, baseType: !1033, size: 32)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2940, file: !552, line: 859, baseType: !152, size: 32, offset: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2869, file: !2870, line: 186, baseType: !249, size: 64, offset: 3392)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2869, file: !2870, line: 186, baseType: !249, size: 64, offset: 3456)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2869, file: !2870, line: 186, baseType: !249, size: 64, offset: 3520)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2869, file: !2870, line: 186, baseType: !249, size: 64, offset: 3584)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2869, file: !2870, line: 187, baseType: !249, size: 64, offset: 3648)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2869, file: !2870, line: 188, baseType: !249, size: 64, offset: 3712)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2869, file: !2870, line: 189, baseType: !2805, size: 192, offset: 3776)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2869, file: !2870, line: 190, baseType: !254, size: 64, offset: 3968)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2869, file: !2870, line: 190, baseType: !254, size: 64, offset: 4032)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2869, file: !2870, line: 190, baseType: !254, size: 64, offset: 4096)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2869, file: !2870, line: 190, baseType: !254, size: 64, offset: 4160)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2869, file: !2870, line: 191, baseType: !254, size: 64, offset: 4224)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2869, file: !2870, line: 191, baseType: !254, size: 64, offset: 4288)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2869, file: !2870, line: 191, baseType: !254, size: 64, offset: 4352)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2869, file: !2870, line: 191, baseType: !254, size: 64, offset: 4416)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2869, file: !2870, line: 192, baseType: !254, size: 64, offset: 4480)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2869, file: !2870, line: 192, baseType: !254, size: 64, offset: 4544)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2869, file: !2870, line: 192, baseType: !254, size: 64, offset: 4608)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2869, file: !2870, line: 192, baseType: !254, size: 64, offset: 4672)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2869, file: !2870, line: 193, baseType: !254, size: 64, offset: 4736)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2869, file: !2870, line: 193, baseType: !254, size: 64, offset: 4800)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2869, file: !2870, line: 194, baseType: !2966, size: 448, offset: 4864)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2967, line: 12, size: 448, elements: !2968)
!2967 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2968 = !{!2969, !2970, !2971, !2972, !2973, !2974, !2975}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2966, file: !2967, line: 15, baseType: !249, size: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2966, file: !2967, line: 17, baseType: !249, size: 64, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2966, file: !2967, line: 19, baseType: !249, size: 64, offset: 128)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2966, file: !2967, line: 21, baseType: !249, size: 64, offset: 192)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2966, file: !2967, line: 29, baseType: !249, size: 64, offset: 256)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2966, file: !2967, line: 35, baseType: !249, size: 64, offset: 320)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2966, file: !2967, line: 44, baseType: !249, size: 64, offset: 384)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2869, file: !2870, line: 202, baseType: !251, size: 64, offset: 5312)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2869, file: !2870, line: 213, baseType: !2978, size: 2048, offset: 5376)
!2978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2979, size: 2048, elements: !1738)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2980, line: 43, size: 128, elements: !2981)
!2980 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2981 = !{!2982, !2983}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2979, file: !2980, line: 44, baseType: !276, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2979, file: !2980, line: 45, baseType: !276, size: 64, offset: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2869, file: !2870, line: 216, baseType: !2985, size: 448, offset: 7424)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2870, line: 30, size: 448, elements: !2986)
!2986 = !{!2987, !2988, !2989, !2990, !2991, !2992, !2993}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2985, file: !2870, line: 31, baseType: !176, size: 32)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2985, file: !2870, line: 32, baseType: !217, size: 64, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2985, file: !2870, line: 33, baseType: !254, size: 64, offset: 128)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2985, file: !2870, line: 34, baseType: !249, size: 64, offset: 192)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2985, file: !2870, line: 34, baseType: !249, size: 64, offset: 256)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2985, file: !2870, line: 35, baseType: !254, size: 64, offset: 320)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2985, file: !2870, line: 35, baseType: !254, size: 64, offset: 384)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2869, file: !2870, line: 219, baseType: !2995, size: 64, offset: 7872)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2870, line: 219, flags: DIFlagFwdDecl)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2869, file: !2870, line: 222, baseType: !18, size: 32, offset: 7936)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2869, file: !2870, line: 223, baseType: !2999, size: 64, offset: 8000)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2870, line: 223, flags: DIFlagFwdDecl)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2869, file: !2870, line: 230, baseType: !199, size: 8, offset: 8064)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2869, file: !2870, line: 231, baseType: !880, size: 16, offset: 8080)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2869, file: !2870, line: 232, baseType: !880, size: 16, offset: 8096)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2869, file: !2870, line: 234, baseType: !682, size: 64, offset: 8128)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2869, file: !2870, line: 237, baseType: !356, size: 256, offset: 8192)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2869, file: !2870, line: 243, baseType: !852, size: 320, offset: 8448)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !380, file: !381, line: 1111, baseType: !3008, size: 64, offset: 15424)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2870, line: 20, size: 16640, elements: !3010)
!3010 = !{!3011, !3012, !3013, !3014}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3009, file: !2870, line: 21, baseType: !152, size: 32)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3009, file: !2870, line: 22, baseType: !260, size: 32, offset: 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3009, file: !2870, line: 23, baseType: !776, size: 192, offset: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3009, file: !2870, line: 24, baseType: !3015, size: 16384, offset: 256)
!3015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3016, size: 16384, elements: !3036)
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !994, line: 51, size: 256, elements: !3017)
!3017 = !{!3018}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3016, file: !994, line: 52, baseType: !3019, size: 256)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !994, line: 37, size: 256, elements: !3020)
!3020 = !{!3021, !3028, !3029, !3035}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3019, file: !994, line: 39, baseType: !3022, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3023, line: 83, baseType: !3024)
!3023 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3023, line: 82, baseType: !3026)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{null, !176}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3019, file: !994, line: 40, baseType: !254, size: 64, offset: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3019, file: !994, line: 46, baseType: !3030, size: 64, offset: 128)
!3030 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3023, line: 86, baseType: !3031)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3023, line: 85, baseType: !3033)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{null}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3019, file: !994, line: 48, baseType: !2884, size: 64, offset: 192)
!3036 = !{!3037}
!3037 = !DISubrange(count: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !380, file: !381, line: 1112, baseType: !2884, size: 64, offset: 15488)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !380, file: !381, line: 1113, baseType: !2884, size: 64, offset: 15552)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !380, file: !381, line: 1115, baseType: !2884, size: 64, offset: 15616)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !380, file: !381, line: 1116, baseType: !2880, size: 192, offset: 15680)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !380, file: !381, line: 1117, baseType: !254, size: 64, offset: 15872)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !380, file: !381, line: 1118, baseType: !273, size: 64, offset: 15936)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !380, file: !381, line: 1119, baseType: !18, size: 32, offset: 16000)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !380, file: !381, line: 1121, baseType: !134, size: 64, offset: 16064)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !380, file: !381, line: 1125, baseType: !3047, size: 64, offset: 16128)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !381, line: 43, flags: DIFlagFwdDecl)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !380, file: !381, line: 1127, baseType: !793, size: 32, offset: 16192)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !380, file: !381, line: 1128, baseType: !18, size: 32, offset: 16224)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !380, file: !381, line: 1130, baseType: !3052, size: 128, offset: 16256)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3053, line: 37, size: 128, elements: !3054)
!3053 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3054 = !{!3055, !3056, !3057}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3052, file: !3053, line: 38, baseType: !176, size: 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3052, file: !3053, line: 39, baseType: !172, size: 32, offset: 32)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3052, file: !3053, line: 40, baseType: !3058, size: 64, offset: 64)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3053, line: 24, flags: DIFlagFwdDecl)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !380, file: !381, line: 1131, baseType: !3061, size: 256, offset: 16384)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3062, line: 12, size: 256, elements: !3063)
!3062 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3063 = !{!3064, !3065, !3066, !3067}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3061, file: !3062, line: 13, baseType: !226, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3061, file: !3062, line: 14, baseType: !254, size: 64, offset: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3061, file: !3062, line: 15, baseType: !254, size: 64, offset: 128)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3061, file: !3062, line: 16, baseType: !199, size: 8, offset: 192)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !380, file: !381, line: 1134, baseType: !249, size: 64, offset: 16640)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !380, file: !381, line: 1135, baseType: !249, size: 64, offset: 16704)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !380, file: !381, line: 1138, baseType: !152, size: 32, offset: 16768)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !380, file: !381, line: 1141, baseType: !367, size: 32, offset: 16800)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !380, file: !381, line: 1143, baseType: !3073, size: 64, offset: 16832)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !381, line: 735, size: 64, elements: !3074)
!3074 = !{!3075}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3073, file: !381, line: 736, baseType: !3076, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !380, file: !381, line: 1147, baseType: !565, size: 128, offset: 16896)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !380, file: !381, line: 1149, baseType: !379, size: 64, offset: 17024)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !380, file: !381, line: 1151, baseType: !3080, size: 64, offset: 17088)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !3082, line: 64, flags: DIFlagFwdDecl)
!3082 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3b60a10bef9e89c790a516317bab43b")
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !380, file: !381, line: 1188, baseType: !123, size: 64, offset: 17152)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !380, file: !381, line: 1191, baseType: !3085, size: 64, offset: 17216)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !381, line: 44, flags: DIFlagFwdDecl)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !380, file: !381, line: 1194, baseType: !3088, size: 64, offset: 17280)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !381, line: 45, flags: DIFlagFwdDecl)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !380, file: !381, line: 1197, baseType: !3091, size: 64, offset: 17344)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !381, line: 61, flags: DIFlagFwdDecl)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !380, file: !381, line: 1199, baseType: !3094, size: 64, offset: 17408)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3096, line: 99, size: 128, elements: !3097)
!3096 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3097 = !{!3098, !3099, !3100}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3095, file: !3096, line: 100, baseType: !360, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3095, file: !3096, line: 101, baseType: !172, size: 32, offset: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3095, file: !3096, line: 103, baseType: !191, size: 16, offset: 96)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !380, file: !381, line: 1202, baseType: !3102, size: 64, offset: 17472)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !381, line: 48, flags: DIFlagFwdDecl)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !380, file: !381, line: 1205, baseType: !254, size: 64, offset: 17536)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !380, file: !381, line: 1206, baseType: !3106, size: 64, offset: 17600)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !994, line: 14, baseType: !3108)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !994, line: 12, size: 384, elements: !3109)
!3109 = !{!3110}
!3110 = !DIDerivedType(tag: DW_TAG_member, scope: !3108, file: !994, line: 13, baseType: !3111, size: 384)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3108, file: !994, line: 13, size: 384, elements: !3112)
!3112 = !{!3113, !3114, !3115, !3116}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3111, file: !994, line: 13, baseType: !176, size: 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3111, file: !994, line: 13, baseType: !176, size: 32, offset: 32)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3111, file: !994, line: 13, baseType: !176, size: 32, offset: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3111, file: !994, line: 13, baseType: !3117, size: 256, offset: 128)
!3117 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3118, line: 37, size: 256, elements: !3119)
!3118 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3119 = !{!3120, !3125, !3138, !3144, !3153, !3180, !3185}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3117, file: !3118, line: 42, baseType: !3121, size: 64)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3117, file: !3118, line: 39, size: 64, elements: !3122)
!3122 = !{!3123, !3124}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3121, file: !3118, line: 40, baseType: !2781, size: 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3121, file: !3118, line: 41, baseType: !799, size: 32, offset: 32)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3117, file: !3118, line: 50, baseType: !3126, size: 192)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3117, file: !3118, line: 45, size: 192, elements: !3127)
!3127 = !{!3128, !3130, !3131, !3137}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3126, file: !3118, line: 46, baseType: !3129, size: 32)
!3129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !275, line: 95, baseType: !176)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3126, file: !3118, line: 47, baseType: !176, size: 32, offset: 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3126, file: !3118, line: 48, baseType: !3132, size: 64, offset: 64)
!3132 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3118, line: 11, baseType: !3133)
!3133 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3118, line: 8, size: 64, elements: !3134)
!3134 = !{!3135, !3136}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3133, file: !3118, line: 9, baseType: !176, size: 32)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3133, file: !3118, line: 10, baseType: !123, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3126, file: !3118, line: 49, baseType: !176, size: 32, offset: 128)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3117, file: !3118, line: 57, baseType: !3139, size: 128)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3117, file: !3118, line: 53, size: 128, elements: !3140)
!3140 = !{!3141, !3142, !3143}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3139, file: !3118, line: 54, baseType: !2781, size: 32)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3139, file: !3118, line: 55, baseType: !799, size: 32, offset: 32)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3139, file: !3118, line: 56, baseType: !3132, size: 64, offset: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3117, file: !3118, line: 66, baseType: !3145, size: 256)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3117, file: !3118, line: 60, size: 256, elements: !3146)
!3146 = !{!3147, !3148, !3149, !3150, !3152}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3145, file: !3118, line: 61, baseType: !2781, size: 32)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3145, file: !3118, line: 62, baseType: !799, size: 32, offset: 32)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3145, file: !3118, line: 63, baseType: !176, size: 32, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3145, file: !3118, line: 64, baseType: !3151, size: 64, offset: 128)
!3151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !275, line: 94, baseType: !1217)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3145, file: !3118, line: 65, baseType: !3151, size: 64, offset: 192)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3117, file: !3118, line: 105, baseType: !3154, size: 256)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3117, file: !3118, line: 69, size: 256, elements: !3155)
!3155 = !{!3156, !3157}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3154, file: !3118, line: 70, baseType: !123, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, scope: !3154, file: !3118, line: 79, baseType: !3158, size: 192, offset: 64)
!3158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3154, file: !3118, line: 79, size: 192, elements: !3159)
!3159 = !{!3160, !3161, !3162, !3169, !3174}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3158, file: !3118, line: 81, baseType: !176, size: 32)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3158, file: !3118, line: 86, baseType: !880, size: 16)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3158, file: !3118, line: 92, baseType: !3163, size: 192)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3158, file: !3118, line: 88, size: 192, elements: !3164)
!3164 = !{!3165, !3167, !3168}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3163, file: !3118, line: 89, baseType: !3166, size: 64)
!3166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !544)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3163, file: !3118, line: 90, baseType: !123, size: 64, offset: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3163, file: !3118, line: 91, baseType: !123, size: 64, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3158, file: !3118, line: 97, baseType: !3170, size: 96)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3158, file: !3118, line: 94, size: 96, elements: !3171)
!3171 = !{!3172, !3173}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3170, file: !3118, line: 95, baseType: !3166, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3170, file: !3118, line: 96, baseType: !142, size: 32, offset: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3158, file: !3118, line: 103, baseType: !3175, size: 128)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3158, file: !3118, line: 99, size: 128, elements: !3176)
!3176 = !{!3177, !3178, !3179}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3175, file: !3118, line: 100, baseType: !254, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3175, file: !3118, line: 101, baseType: !142, size: 32, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3175, file: !3118, line: 102, baseType: !142, size: 32, offset: 96)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3117, file: !3118, line: 111, baseType: !3181, size: 128)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3117, file: !3118, line: 108, size: 128, elements: !3182)
!3182 = !{!3183, !3184}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3181, file: !3118, line: 109, baseType: !217, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3181, file: !3118, line: 110, baseType: !176, size: 32, offset: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3117, file: !3118, line: 118, baseType: !3186, size: 128)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3117, file: !3118, line: 114, size: 128, elements: !3187)
!3187 = !{!3188, !3189, !3190}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3186, file: !3118, line: 115, baseType: !123, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3186, file: !3118, line: 116, baseType: !176, size: 32, offset: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3186, file: !3118, line: 117, baseType: !18, size: 32, offset: 96)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !380, file: !381, line: 1208, baseType: !2966, size: 448, offset: 17664)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !380, file: !381, line: 1215, baseType: !249, size: 64, offset: 18112)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !380, file: !381, line: 1217, baseType: !249, size: 64, offset: 18176)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !380, file: !381, line: 1219, baseType: !249, size: 64, offset: 18240)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !380, file: !381, line: 1223, baseType: !3196, size: 64, offset: 18304)
!3196 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3197, line: 99, baseType: !3198)
!3197 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3197, line: 99, size: 64, elements: !3199)
!3199 = !{!3200}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3198, file: !3197, line: 99, baseType: !633, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !380, file: !381, line: 1225, baseType: !1033, size: 32, offset: 18368)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !380, file: !381, line: 1226, baseType: !176, size: 32, offset: 18400)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !380, file: !381, line: 1227, baseType: !176, size: 32, offset: 18432)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !380, file: !381, line: 1231, baseType: !3205, size: 64, offset: 18496)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !381, line: 1231, flags: DIFlagFwdDecl)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !380, file: !381, line: 1233, baseType: !241, size: 128, offset: 18560)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !380, file: !381, line: 1240, baseType: !3209, size: 64, offset: 18688)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !381, line: 62, flags: DIFlagFwdDecl)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !380, file: !381, line: 1242, baseType: !3212, size: 64, offset: 18752)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !381, line: 1242, flags: DIFlagFwdDecl)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !380, file: !381, line: 1244, baseType: !241, size: 128, offset: 18816)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !380, file: !381, line: 1245, baseType: !3216, size: 64, offset: 18944)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !381, line: 51, flags: DIFlagFwdDecl)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !380, file: !381, line: 1246, baseType: !356, size: 256, offset: 19008)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !380, file: !381, line: 1247, baseType: !18, size: 32, offset: 19264)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !380, file: !381, line: 1250, baseType: !3221, size: 64, offset: 19328)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !381, line: 57, flags: DIFlagFwdDecl)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !380, file: !381, line: 1251, baseType: !356, size: 256, offset: 19392)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !380, file: !381, line: 1252, baseType: !241, size: 128, offset: 19648)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !380, file: !381, line: 1259, baseType: !2096, size: 64, offset: 19776)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !380, file: !381, line: 1260, baseType: !880, size: 16, offset: 19840)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !380, file: !381, line: 1261, baseType: !880, size: 16, offset: 19856)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !380, file: !381, line: 1314, baseType: !3229, size: 64, offset: 19904)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3231, line: 62, size: 256, align: 256, elements: !3232)
!3231 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3232 = !{!3233, !3234, !3235, !3236, !3237, !3238, !3239}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3230, file: !3231, line: 75, baseType: !142, size: 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3230, file: !3231, line: 90, baseType: !142, size: 32, offset: 32)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3230, file: !3231, line: 112, baseType: !250, size: 64, offset: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3230, file: !3231, line: 132, baseType: !142, size: 32, offset: 128)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3230, file: !3231, line: 140, baseType: !142, size: 32, offset: 160)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3230, file: !3231, line: 149, baseType: !142, size: 32, offset: 192)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3230, file: !3231, line: 154, baseType: !3240, offset: 224)
!3240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !265)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !380, file: !381, line: 1315, baseType: !140, size: 32, offset: 19968)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !380, file: !381, line: 1316, baseType: !140, size: 32, offset: 20000)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !380, file: !381, line: 1321, baseType: !254, size: 64, offset: 20032)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !380, file: !381, line: 1325, baseType: !176, size: 32, offset: 20096)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !380, file: !381, line: 1326, baseType: !176, size: 32, offset: 20128)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !380, file: !381, line: 1327, baseType: !176, size: 32, offset: 20160)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !380, file: !381, line: 1328, baseType: !176, size: 32, offset: 20192)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !380, file: !381, line: 1329, baseType: !130, size: 128, align: 64, offset: 20224)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !380, file: !381, line: 1332, baseType: !3250, size: 128, offset: 20352)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3251, line: 51, size: 128, elements: !3252)
!3251 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3252 = !{!3253, !3258, !3259}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3250, file: !3251, line: 60, baseType: !3254, size: 64)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3255, line: 7, size: 64, elements: !3256)
!3255 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3256 = !{!3257}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3254, file: !3255, line: 12, baseType: !630, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3250, file: !3251, line: 63, baseType: !199, size: 8, offset: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3250, file: !3251, line: 70, baseType: !199, size: 8, offset: 72)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !380, file: !381, line: 1335, baseType: !2491, size: 64, offset: 20480)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !380, file: !381, line: 1337, baseType: !3262, size: 128, offset: 20544)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3251, line: 39, size: 128, elements: !3263)
!3263 = !{!3264, !3265, !3266}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3262, file: !3251, line: 40, baseType: !1884, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3262, file: !3251, line: 42, baseType: !142, size: 32, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3262, file: !3251, line: 43, baseType: !142, size: 32, offset: 96)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !380, file: !381, line: 1340, baseType: !3268, size: 64, offset: 20672)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !381, line: 69, flags: DIFlagFwdDecl)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !380, file: !381, line: 1351, baseType: !176, size: 32, offset: 20736)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !380, file: !381, line: 1352, baseType: !176, size: 32, offset: 20768)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !380, file: !381, line: 1354, baseType: !254, size: 64, offset: 20800)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !380, file: !381, line: 1364, baseType: !249, size: 64, offset: 20864)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !380, file: !381, line: 1365, baseType: !249, size: 64, offset: 20928)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !380, file: !381, line: 1412, baseType: !254, size: 64, offset: 20992)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !380, file: !381, line: 1453, baseType: !3277, size: 64, offset: 21056)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !381, line: 1453, flags: DIFlagFwdDecl)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !380, file: !381, line: 1457, baseType: !3280, size: 64, offset: 21120)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !79, line: 61, size: 576, elements: !3282)
!3282 = !{!3283, !3284, !3303, !3306, !3307, !3340, !3350}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3281, file: !79, line: 62, baseType: !78, size: 32)
!3284 = !DIDerivedType(tag: DW_TAG_member, scope: !3281, file: !79, line: 64, baseType: !3285, size: 192, offset: 64)
!3285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3281, file: !79, line: 64, size: 192, elements: !3286)
!3286 = !{!3287, !3298}
!3287 = !DIDerivedType(tag: DW_TAG_member, scope: !3285, file: !79, line: 65, baseType: !3288, size: 192)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3285, file: !79, line: 65, size: 192, elements: !3289)
!3289 = !{!3290, !3297}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3288, file: !79, line: 66, baseType: !3291, size: 128)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3292, line: 50, size: 128, elements: !3293)
!3292 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3293 = !{!3294, !3295, !3296}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3291, file: !3292, line: 52, baseType: !254, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3291, file: !3292, line: 54, baseType: !18, size: 32, offset: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3291, file: !3292, line: 55, baseType: !18, size: 32, offset: 96)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3288, file: !79, line: 67, baseType: !254, size: 64, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_member, scope: !3285, file: !79, line: 70, baseType: !3299, size: 192)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3285, file: !79, line: 70, size: 192, elements: !3300)
!3300 = !{!3301, !3302}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3299, file: !79, line: 71, baseType: !130, size: 128, align: 64)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3299, file: !79, line: 72, baseType: !254, size: 64, offset: 128)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3281, file: !79, line: 76, baseType: !3304, size: 64, offset: 256)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !79, line: 76, flags: DIFlagFwdDecl)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3281, file: !79, line: 77, baseType: !254, size: 64, offset: 320)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3281, file: !79, line: 79, baseType: !3308, size: 64, offset: 384)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3292, line: 25, size: 256, elements: !3310)
!3310 = !{!3311, !3317, !3321}
!3311 = !DIDerivedType(tag: DW_TAG_member, scope: !3309, file: !3292, line: 26, baseType: !3312, size: 128)
!3312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3309, file: !3292, line: 26, size: 128, elements: !3313)
!3313 = !{!3314, !3316}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3312, file: !3292, line: 27, baseType: !3315, size: 128)
!3315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 128, elements: !1738)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3312, file: !3292, line: 28, baseType: !3315, size: 128)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3309, file: !3292, line: 31, baseType: !3318, size: 64, offset: 128)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3320)
!3320 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3292, line: 23, flags: DIFlagFwdDecl)
!3321 = !DIDerivedType(tag: DW_TAG_member, scope: !3309, file: !3292, line: 33, baseType: !3322, size: 64, offset: 192)
!3322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3309, file: !3292, line: 33, size: 64, elements: !3323)
!3323 = !{!3324, !3330, !3335}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3322, file: !3292, line: 38, baseType: !3325, size: 64)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3322, file: !3292, line: 34, size: 64, elements: !3326)
!3326 = !{!3327, !3328, !3329}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3325, file: !3292, line: 35, baseType: !844, size: 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3325, file: !3292, line: 36, baseType: !181, size: 8, offset: 32)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3325, file: !3292, line: 37, baseType: !181, size: 8, offset: 40)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3322, file: !3292, line: 42, baseType: !3331, size: 16)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3322, file: !3292, line: 39, size: 16, elements: !3332)
!3332 = !{!3333, !3334}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3331, file: !3292, line: 40, baseType: !181, size: 8)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3331, file: !3292, line: 41, baseType: !181, size: 8, offset: 8)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3322, file: !3292, line: 46, baseType: !3336, size: 16)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3322, file: !3292, line: 43, size: 16, elements: !3337)
!3337 = !{!3338, !3339}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3336, file: !3292, line: 44, baseType: !181, size: 8)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3336, file: !3292, line: 45, baseType: !181, size: 8, offset: 8)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3281, file: !79, line: 81, baseType: !3341, size: 64, offset: 448)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !79, line: 85, size: 384, elements: !3343)
!3343 = !{!3344, !3345, !3346, !3347, !3348, !3349}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3342, file: !79, line: 86, baseType: !3304, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3342, file: !79, line: 87, baseType: !254, size: 64, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3342, file: !79, line: 88, baseType: !254, size: 64, offset: 128)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3342, file: !79, line: 89, baseType: !254, size: 64, offset: 192)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3342, file: !79, line: 90, baseType: !199, size: 8, offset: 256)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3342, file: !79, line: 92, baseType: !3341, size: 64, offset: 320)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3281, file: !79, line: 82, baseType: !18, size: 32, offset: 512)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !380, file: !381, line: 1463, baseType: !3352, offset: 21184)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !381, line: 739, elements: !703)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !380, file: !381, line: 1470, baseType: !130, size: 128, align: 64, offset: 21184)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !380, file: !381, line: 1471, baseType: !260, size: 32, offset: 21312)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !380, file: !381, line: 1472, baseType: !176, size: 32, offset: 21344)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !380, file: !381, line: 1474, baseType: !379, size: 64, offset: 21376)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !380, file: !381, line: 1475, baseType: !3358, size: 320, offset: 21440)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3359, line: 11, size: 320, elements: !3360)
!3359 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!3360 = !{!3361, !3362, !3363, !3368}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3358, file: !3359, line: 16, baseType: !767, size: 128)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3358, file: !3359, line: 17, baseType: !254, size: 64, offset: 128)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3358, file: !3359, line: 18, baseType: !3364, size: 64, offset: 192)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{null, !3367}
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3358, file: !3359, line: 19, baseType: !140, size: 32, offset: 256)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !380, file: !381, line: 1478, baseType: !3370, size: 64, offset: 21760)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !381, line: 1478, flags: DIFlagFwdDecl)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !380, file: !381, line: 1482, baseType: !260, size: 32, offset: 21824)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !380, file: !381, line: 1489, baseType: !123, size: 64, offset: 21888)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !380, file: !381, line: 1504, baseType: !123, size: 64, offset: 21952)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !380, file: !381, line: 1505, baseType: !250, size: 64, offset: 22016)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !380, file: !381, line: 1506, baseType: !249, size: 64, offset: 22080)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !380, file: !381, line: 1507, baseType: !250, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !380, file: !381, line: 1508, baseType: !250, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !380, file: !381, line: 1509, baseType: !250, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !380, file: !381, line: 1510, baseType: !130, size: 128, align: 64, offset: 22208)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !380, file: !381, line: 1511, baseType: !176, size: 32, offset: 22336)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !380, file: !381, line: 1515, baseType: !3383, size: 64, offset: 22400)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !403, line: 56, size: 64, elements: !3384)
!3384 = !{!3385}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3383, file: !403, line: 57, baseType: !406, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !380, file: !381, line: 1518, baseType: !3383, size: 64, offset: 22464)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !380, file: !381, line: 1528, baseType: !130, size: 128, align: 64, offset: 22528)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !380, file: !381, line: 1552, baseType: !3389, size: 35328, offset: 23040)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3390, line: 430, size: 35328, elements: !3391)
!3390 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3391 = !{!3392, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3421, !3422, !3423, !3424, !3425, !3426, !3429, !3430, !3431, !3432}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3389, file: !3390, line: 432, baseType: !3393, size: 192)
!3393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3394, size: 192, elements: !751)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3395, line: 16, size: 64, elements: !3396)
!3395 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3396 = !{!3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3394, file: !3395, line: 17, baseType: !189, size: 16)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3394, file: !3395, line: 18, baseType: !189, size: 16, offset: 16)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3394, file: !3395, line: 19, baseType: !189, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3394, file: !3395, line: 19, baseType: !189, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3394, file: !3395, line: 19, baseType: !189, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3394, file: !3395, line: 19, baseType: !189, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3394, file: !3395, line: 19, baseType: !189, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3394, file: !3395, line: 20, baseType: !189, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3394, file: !3395, line: 20, baseType: !189, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3394, file: !3395, line: 20, baseType: !189, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3394, file: !3395, line: 20, baseType: !189, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3394, file: !3395, line: 20, baseType: !189, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3394, file: !3395, line: 20, baseType: !189, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3389, file: !3390, line: 436, baseType: !254, size: 64, offset: 192)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3389, file: !3390, line: 440, baseType: !191, size: 16, offset: 256)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3389, file: !3390, line: 441, baseType: !191, size: 16, offset: 272)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3389, file: !3390, line: 442, baseType: !191, size: 16, offset: 288)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3389, file: !3390, line: 443, baseType: !191, size: 16, offset: 304)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3389, file: !3390, line: 447, baseType: !254, size: 64, offset: 320)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3389, file: !3390, line: 448, baseType: !254, size: 64, offset: 384)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3389, file: !3390, line: 459, baseType: !3418, size: 256, offset: 448)
!3418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3419, size: 256, elements: !772)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3390, line: 428, flags: DIFlagFwdDecl)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3389, file: !3390, line: 461, baseType: !254, size: 64, offset: 704)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3389, file: !3390, line: 463, baseType: !254, size: 64, offset: 768)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3389, file: !3390, line: 465, baseType: !254, size: 64, offset: 832)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3389, file: !3390, line: 466, baseType: !254, size: 64, offset: 896)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3389, file: !3390, line: 467, baseType: !254, size: 64, offset: 960)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3389, file: !3390, line: 473, baseType: !3427, size: 64, offset: 1024)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3390, line: 10, flags: DIFlagFwdDecl)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3389, file: !3390, line: 480, baseType: !254, size: 64, offset: 1088)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3389, file: !3390, line: 482, baseType: !18, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3389, file: !3390, line: 491, baseType: !140, size: 32, offset: 1184)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3389, file: !3390, line: 501, baseType: !3433, size: 33792, offset: 1536)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3434, line: 448, size: 33792, elements: !3435)
!3434 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3435 = !{!3436, !3437, !3438, !3600, !3601, !3607, !3608}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3433, file: !3434, line: 461, baseType: !18, size: 32)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3433, file: !3434, line: 468, baseType: !254, size: 64, offset: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3433, file: !3434, line: 476, baseType: !3439, size: 64, offset: 128)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3434, line: 356, size: 33280, align: 512, elements: !3441)
!3441 = !{!3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3440, file: !3434, line: 358, baseType: !18, size: 32)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3440, file: !3434, line: 361, baseType: !18, size: 32, offset: 32)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3440, file: !3434, line: 364, baseType: !249, size: 64, offset: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3440, file: !3434, line: 367, baseType: !249, size: 64, offset: 128)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3440, file: !3434, line: 370, baseType: !249, size: 64, offset: 192)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3440, file: !3434, line: 373, baseType: !18, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3440, file: !3434, line: 376, baseType: !18, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3440, file: !3434, line: 391, baseType: !18, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3440, file: !3434, line: 394, baseType: !18, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3440, file: !3434, line: 397, baseType: !3452, size: 32768, offset: 512)
!3452 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3434, line: 348, size: 32768, elements: !3453)
!3453 = !{!3454, !3469, !3506, !3583, !3596}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3452, file: !3434, line: 349, baseType: !3455, size: 896)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3434, line: 12, size: 896, elements: !3456)
!3456 = !{!3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3468}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3455, file: !3434, line: 13, baseType: !140, size: 32)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3455, file: !3434, line: 14, baseType: !140, size: 32, offset: 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3455, file: !3434, line: 15, baseType: !140, size: 32, offset: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3455, file: !3434, line: 16, baseType: !140, size: 32, offset: 96)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3455, file: !3434, line: 17, baseType: !140, size: 32, offset: 128)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3455, file: !3434, line: 18, baseType: !140, size: 32, offset: 160)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3455, file: !3434, line: 19, baseType: !140, size: 32, offset: 192)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3455, file: !3434, line: 22, baseType: !3465, size: 640, offset: 224)
!3465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 640, elements: !3466)
!3466 = !{!3467}
!3467 = !DISubrange(count: 20)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3455, file: !3434, line: 25, baseType: !140, size: 32, offset: 864)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3452, file: !3434, line: 350, baseType: !3470, size: 4096, align: 128)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3434, line: 34, size: 4096, align: 128, elements: !3471)
!3471 = !{!3472, !3473, !3474, !3475, !3476, !3491, !3492, !3493, !3495, !3497, !3501}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3470, file: !3434, line: 35, baseType: !189, size: 16)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3470, file: !3434, line: 36, baseType: !189, size: 16, offset: 16)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3470, file: !3434, line: 37, baseType: !189, size: 16, offset: 32)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3470, file: !3434, line: 38, baseType: !189, size: 16, offset: 48)
!3476 = !DIDerivedType(tag: DW_TAG_member, scope: !3470, file: !3434, line: 39, baseType: !3477, size: 128, offset: 64)
!3477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3470, file: !3434, line: 39, size: 128, elements: !3478)
!3478 = !{!3479, !3484}
!3479 = !DIDerivedType(tag: DW_TAG_member, scope: !3477, file: !3434, line: 40, baseType: !3480, size: 128)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3477, file: !3434, line: 40, size: 128, elements: !3481)
!3481 = !{!3482, !3483}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3480, file: !3434, line: 41, baseType: !249, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3480, file: !3434, line: 42, baseType: !249, size: 64, offset: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, scope: !3477, file: !3434, line: 44, baseType: !3485, size: 128)
!3485 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3477, file: !3434, line: 44, size: 128, elements: !3486)
!3486 = !{!3487, !3488, !3489, !3490}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3485, file: !3434, line: 45, baseType: !140, size: 32)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3485, file: !3434, line: 46, baseType: !140, size: 32, offset: 32)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3485, file: !3434, line: 47, baseType: !140, size: 32, offset: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3485, file: !3434, line: 48, baseType: !140, size: 32, offset: 96)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3470, file: !3434, line: 51, baseType: !140, size: 32, offset: 192)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3470, file: !3434, line: 52, baseType: !140, size: 32, offset: 224)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3470, file: !3434, line: 55, baseType: !3494, size: 1024, offset: 256)
!3494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 1024, elements: !1729)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3470, file: !3434, line: 58, baseType: !3496, size: 2048, offset: 1280)
!3496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 2048, elements: !3036)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3470, file: !3434, line: 60, baseType: !3498, size: 384, offset: 3328)
!3498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 384, elements: !3499)
!3499 = !{!3500}
!3500 = !DISubrange(count: 12)
!3501 = !DIDerivedType(tag: DW_TAG_member, scope: !3470, file: !3434, line: 62, baseType: !3502, size: 384, offset: 3712)
!3502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3470, file: !3434, line: 62, size: 384, elements: !3503)
!3503 = !{!3504, !3505}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3502, file: !3434, line: 63, baseType: !3498, size: 384)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3502, file: !3434, line: 64, baseType: !3498, size: 384)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3452, file: !3434, line: 351, baseType: !3507, size: 1088)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3434, line: 79, size: 1088, elements: !3508)
!3508 = !{!3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3582}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3507, file: !3434, line: 80, baseType: !140, size: 32)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3507, file: !3434, line: 81, baseType: !140, size: 32, offset: 32)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3507, file: !3434, line: 82, baseType: !140, size: 32, offset: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3507, file: !3434, line: 83, baseType: !140, size: 32, offset: 96)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3507, file: !3434, line: 84, baseType: !140, size: 32, offset: 128)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3507, file: !3434, line: 85, baseType: !140, size: 32, offset: 160)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3507, file: !3434, line: 86, baseType: !140, size: 32, offset: 192)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3507, file: !3434, line: 88, baseType: !3465, size: 640, offset: 224)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3507, file: !3434, line: 89, baseType: !181, size: 8, offset: 864)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3507, file: !3434, line: 90, baseType: !181, size: 8, offset: 872)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3507, file: !3434, line: 91, baseType: !181, size: 8, offset: 880)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3507, file: !3434, line: 92, baseType: !181, size: 8, offset: 888)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3507, file: !3434, line: 93, baseType: !181, size: 8, offset: 896)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3507, file: !3434, line: 94, baseType: !181, size: 8, offset: 904)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3507, file: !3434, line: 95, baseType: !3524, size: 64, offset: 960)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3526, line: 11, size: 128, elements: !3527)
!3526 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3527 = !{!3528, !3529}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3525, file: !3526, line: 12, baseType: !217, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3525, file: !3526, line: 13, baseType: !3530, size: 64, offset: 64)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3532, line: 103, size: 1344, elements: !3533)
!3532 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3533 = !{!3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3562, !3563, !3564}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3531, file: !3532, line: 109, baseType: !254, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3531, file: !3532, line: 110, baseType: !254, size: 64, offset: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3531, file: !3532, line: 111, baseType: !254, size: 64, offset: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3531, file: !3532, line: 112, baseType: !254, size: 64, offset: 192)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3531, file: !3532, line: 113, baseType: !254, size: 64, offset: 256)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3531, file: !3532, line: 114, baseType: !254, size: 64, offset: 320)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3531, file: !3532, line: 117, baseType: !254, size: 64, offset: 384)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3531, file: !3532, line: 118, baseType: !254, size: 64, offset: 448)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3531, file: !3532, line: 119, baseType: !254, size: 64, offset: 512)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3531, file: !3532, line: 120, baseType: !254, size: 64, offset: 576)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3531, file: !3532, line: 121, baseType: !254, size: 64, offset: 640)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3531, file: !3532, line: 122, baseType: !254, size: 64, offset: 704)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3531, file: !3532, line: 123, baseType: !254, size: 64, offset: 768)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3531, file: !3532, line: 124, baseType: !254, size: 64, offset: 832)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3531, file: !3532, line: 125, baseType: !254, size: 64, offset: 896)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3531, file: !3532, line: 139, baseType: !254, size: 64, offset: 960)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3531, file: !3532, line: 142, baseType: !254, size: 64, offset: 1024)
!3551 = !DIDerivedType(tag: DW_TAG_member, scope: !3531, file: !3532, line: 144, baseType: !3552, size: 64, offset: 1088)
!3552 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3531, file: !3532, line: 144, size: 64, elements: !3553)
!3553 = !{!3554, !3555, !3556}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3552, file: !3532, line: 146, baseType: !189, size: 16)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3552, file: !3532, line: 148, baseType: !249, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3552, file: !3532, line: 150, baseType: !3557, size: 64)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3532, line: 59, size: 64, elements: !3558)
!3558 = !{!3559, !3560, !3561}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3557, file: !3532, line: 61, baseType: !249, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3557, file: !3532, line: 63, baseType: !249, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3557, file: !3532, line: 65, baseType: !249, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3531, file: !3532, line: 153, baseType: !254, size: 64, offset: 1152)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3531, file: !3532, line: 154, baseType: !254, size: 64, offset: 1216)
!3564 = !DIDerivedType(tag: DW_TAG_member, scope: !3531, file: !3532, line: 156, baseType: !3565, size: 64, offset: 1280)
!3565 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3531, file: !3532, line: 156, size: 64, elements: !3566)
!3566 = !{!3567, !3568, !3569}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3565, file: !3532, line: 158, baseType: !189, size: 16)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3565, file: !3532, line: 160, baseType: !249, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3565, file: !3532, line: 162, baseType: !3570, size: 64)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3532, line: 69, size: 64, elements: !3571)
!3571 = !{!3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3570, file: !3532, line: 71, baseType: !249, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3570, file: !3532, line: 73, baseType: !249, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3570, file: !3532, line: 75, baseType: !249, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3570, file: !3532, line: 77, baseType: !249, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3570, file: !3532, line: 80, baseType: !249, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3570, file: !3532, line: 83, baseType: !249, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3570, file: !3532, line: 86, baseType: !249, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3570, file: !3532, line: 88, baseType: !249, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3570, file: !3532, line: 93, baseType: !249, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3570, file: !3532, line: 100, baseType: !249, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3507, file: !3434, line: 96, baseType: !140, size: 32, offset: 1024)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3452, file: !3434, line: 352, baseType: !3584, size: 4608, align: 512)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3434, line: 333, size: 4608, align: 512, elements: !3585)
!3585 = !{!3586, !3587, !3594}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3584, file: !3434, line: 334, baseType: !3470, size: 4096, align: 128)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3584, file: !3434, line: 335, baseType: !3588, size: 512, offset: 4096)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3434, line: 312, size: 512, elements: !3589)
!3589 = !{!3590, !3591, !3592}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3588, file: !3434, line: 313, baseType: !249, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3588, file: !3434, line: 314, baseType: !249, size: 64, offset: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3588, file: !3434, line: 315, baseType: !3593, size: 384, offset: 128)
!3593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 384, elements: !331)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3584, file: !3434, line: 336, baseType: !3595, offset: 4608)
!3595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, elements: !265)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3452, file: !3434, line: 353, baseType: !3597, size: 32768)
!3597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 32768, elements: !3598)
!3598 = !{!3599}
!3599 = !DISubrange(count: 4096)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3433, file: !3434, line: 484, baseType: !3439, size: 64, offset: 192)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3433, file: !3434, line: 491, baseType: !3602, size: 128, offset: 256)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3434, line: 404, size: 128, elements: !3603)
!3603 = !{!3604, !3605, !3606}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3602, file: !3434, line: 424, baseType: !249, size: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3602, file: !3434, line: 432, baseType: !18, size: 32, offset: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3602, file: !3434, line: 440, baseType: !18, size: 32, offset: 96)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3433, file: !3434, line: 498, baseType: !3602, size: 128, offset: 384)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3433, file: !3434, line: 508, baseType: !3440, size: 33280, align: 512, offset: 512)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !376, file: !353, line: 57, baseType: !254, size: 64, offset: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !376, file: !353, line: 58, baseType: !18, size: 32, offset: 128)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !376, file: !353, line: 59, baseType: !191, size: 16, offset: 160)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !376, file: !353, line: 60, baseType: !191, size: 16, offset: 176)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "fences", scope: !349, file: !86, line: 178, baseType: !126, size: 64, offset: 320)
!3614 = !{!3615, !3616, !3617, !3628}
!3615 = !DILocalVariable(name: "obj", arg: 1, scope: !345, file: !2, line: 751, type: !348)
!3616 = !DILocalVariable(name: "seq", arg: 2, scope: !345, file: !2, line: 751, type: !1378)
!3617 = !DILocalVariable(name: "cursor", scope: !345, file: !2, line: 754, type: !3618)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv_iter", file: !86, line: 193, size: 384, elements: !3619)
!3619 = !{!3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !3618, file: !86, line: 195, baseType: !348, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3618, file: !86, line: 198, baseType: !85, size: 32, offset: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !3618, file: !86, line: 201, baseType: !147, size: 64, offset: 128)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "fence_usage", scope: !3618, file: !86, line: 204, baseType: !85, size: 32, offset: 192)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3618, file: !86, line: 207, baseType: !18, size: 32, offset: 224)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "fences", scope: !3618, file: !86, line: 210, baseType: !126, size: 64, offset: 256)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "num_fences", scope: !3618, file: !86, line: 213, baseType: !18, size: 32, offset: 320)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "is_restarted", scope: !3618, file: !86, line: 216, baseType: !199, size: 8, offset: 352)
!3628 = !DILocalVariable(name: "fence", scope: !345, file: !2, line: 755, type: !147)
!3629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 256, elements: !772)
!3630 = !DIGlobalVariableExpression(var: !3631, expr: !DIExpression())
!3631 = distinct !DIGlobalVariable(scope: null, file: !2, line: 758, type: !3632, isLocal: true, isDefinition: true)
!3632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !3633)
!3633 = !{!3634}
!3634 = !DISubrange(count: 11)
!3635 = !DIGlobalVariableExpression(var: !3636, expr: !DIExpression())
!3636 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_resv_describe318", scope: !14, file: !2, line: 763, type: !123, isLocal: true, isDefinition: true)
!3637 = !DIGlobalVariableExpression(var: !3638, expr: !DIExpression())
!3638 = distinct !DIGlobalVariable(scope: null, file: !98, line: 480, type: !3639, isLocal: true, isDefinition: true)
!3639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !3640)
!3640 = !{!3641}
!3641 = !DISubrange(count: 21)
!3642 = !DIGlobalVariableExpression(var: !3643, expr: !DIExpression())
!3643 = distinct !DIGlobalVariable(scope: null, file: !108, line: 495, type: !3644, isLocal: true, isDefinition: true)
!3644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !3645)
!3645 = !{!3646}
!3646 = !DISubrange(count: 26)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_class", file: !353, line: 38, size: 256, elements: !3648)
!3648 = !{!3649, !3650, !3651, !3652, !3653, !3654}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !3647, file: !353, line: 39, baseType: !360, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_key", scope: !3647, file: !353, line: 40, baseType: !1309, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "mutex_key", scope: !3647, file: !353, line: 41, baseType: !1309, offset: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_name", scope: !3647, file: !353, line: 42, baseType: !205, size: 64, offset: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "mutex_name", scope: !3647, file: !353, line: 43, baseType: !205, size: 64, offset: 128)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !3647, file: !353, line: 44, baseType: !18, size: 32, offset: 192)
!3655 = !{i32 7, !"Dwarf Version", i32 5}
!3656 = !{i32 2, !"Debug Info Version", i32 3}
!3657 = !{i32 1, !"wchar_size", i32 2}
!3658 = !{i32 8, !"cf-protection-branch", i32 1}
!3659 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3660 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3661 = !{i32 1, !"Code Model", i32 2}
!3662 = !{i32 1, !"override-stack-alignment", i32 8}
!3663 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3664 = distinct !DISubprogram(name: "dma_resv_init", scope: !2, file: !2, line: 138, type: !3665, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3667)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{null, !348}
!3667 = !{!3668}
!3668 = !DILocalVariable(name: "obj", arg: 1, scope: !3664, file: !2, line: 138, type: !348)
!3669 = !DILocation(line: 138, column: 37, scope: !3664)
!3670 = !DILocation(line: 140, column: 17, scope: !3664)
!3671 = !DILocation(line: 140, column: 22, scope: !3664)
!3672 = !DILocation(line: 140, column: 2, scope: !3664)
!3673 = !DILocation(line: 142, column: 2, scope: !3664)
!3674 = !DILocation(line: 142, column: 2, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3664, file: !2, line: 142, column: 2)
!3676 = !DILocation(line: 142, column: 2, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3675, file: !2, line: 142, column: 2)
!3678 = !DILocation(line: 142, column: 2, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3677, file: !2, line: 142, column: 2)
!3680 = !DILocation(line: 142, column: 2, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3677, file: !2, line: 142, column: 2)
!3682 = !DILocation(line: 143, column: 1, scope: !3664)
!3683 = distinct !DISubprogram(name: "ww_mutex_init", scope: !353, file: !353, line: 98, type: !3684, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3688)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{null, !3686, !3687}
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3688 = !{!3689, !3690}
!3689 = !DILocalVariable(name: "lock", arg: 1, scope: !3683, file: !353, line: 98, type: !3686)
!3690 = !DILocalVariable(name: "ww_class", arg: 2, scope: !3683, file: !353, line: 99, type: !3687)
!3691 = !DILocation(line: 98, column: 51, scope: !3683)
!3692 = !DILocation(line: 99, column: 23, scope: !3683)
!3693 = !DILocation(line: 101, column: 2, scope: !3683)
!3694 = !DILocation(line: 102, column: 2, scope: !3683)
!3695 = !DILocation(line: 102, column: 8, scope: !3683)
!3696 = !DILocation(line: 102, column: 12, scope: !3683)
!3697 = !DILocation(line: 106, column: 1, scope: !3683)
!3698 = distinct !DISubprogram(name: "dma_resv_fini", scope: !2, file: !2, line: 150, type: !3665, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3699)
!3699 = !{!3700}
!3700 = !DILocalVariable(name: "obj", arg: 1, scope: !3698, file: !2, line: 150, type: !348)
!3701 = !DILocation(line: 150, column: 37, scope: !3698)
!3702 = !DILocation(line: 156, column: 21, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3698, file: !2, line: 156, column: 21)
!3704 = !DILocation(line: 156, column: 21, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3703, file: !2, line: 156, column: 21)
!3706 = !DILocation(line: 156, column: 2, scope: !3698)
!3707 = !DILocation(line: 157, column: 20, scope: !3698)
!3708 = !DILocation(line: 157, column: 25, scope: !3698)
!3709 = !DILocation(line: 157, column: 2, scope: !3698)
!3710 = !DILocation(line: 158, column: 1, scope: !3698)
!3711 = distinct !DISubprogram(name: "dma_resv_list_free", scope: !2, file: !2, line: 118, type: !3712, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3714)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{null, !126}
!3714 = !{!3715, !3716, !3717, !3721}
!3715 = !DILocalVariable(name: "list", arg: 1, scope: !3711, file: !2, line: 118, type: !126)
!3716 = !DILocalVariable(name: "i", scope: !3711, file: !2, line: 120, type: !18)
!3717 = !DILocalVariable(name: "fence", scope: !3718, file: !2, line: 126, type: !147)
!3718 = distinct !DILexicalBlock(scope: !3719, file: !2, line: 125, column: 41)
!3719 = distinct !DILexicalBlock(scope: !3720, file: !2, line: 125, column: 2)
!3720 = distinct !DILexicalBlock(scope: !3711, file: !2, line: 125, column: 2)
!3721 = !DILocalVariable(name: "___p", scope: !3722, file: !2, line: 131, type: !126)
!3722 = distinct !DILexicalBlock(scope: !3711, file: !2, line: 131, column: 2)
!3723 = !DILocation(line: 118, column: 54, scope: !3711)
!3724 = !DILocation(line: 120, column: 2, scope: !3711)
!3725 = !DILocation(line: 120, column: 15, scope: !3711)
!3726 = !DILocation(line: 122, column: 7, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3711, file: !2, line: 122, column: 6)
!3728 = !DILocation(line: 122, column: 6, scope: !3711)
!3729 = !DILocation(line: 123, column: 3, scope: !3727)
!3730 = !DILocation(line: 125, column: 9, scope: !3720)
!3731 = !DILocation(line: 125, column: 7, scope: !3720)
!3732 = !DILocation(line: 125, column: 14, scope: !3719)
!3733 = !DILocation(line: 125, column: 18, scope: !3719)
!3734 = !DILocation(line: 125, column: 24, scope: !3719)
!3735 = !DILocation(line: 125, column: 16, scope: !3719)
!3736 = !DILocation(line: 125, column: 2, scope: !3720)
!3737 = !DILocation(line: 126, column: 3, scope: !3718)
!3738 = !DILocation(line: 126, column: 21, scope: !3718)
!3739 = !DILocation(line: 128, column: 23, scope: !3718)
!3740 = !DILocation(line: 128, column: 29, scope: !3718)
!3741 = !DILocation(line: 128, column: 3, scope: !3718)
!3742 = !DILocation(line: 129, column: 17, scope: !3718)
!3743 = !DILocation(line: 129, column: 3, scope: !3718)
!3744 = !DILocation(line: 130, column: 2, scope: !3719)
!3745 = !DILocation(line: 130, column: 2, scope: !3718)
!3746 = !DILocation(line: 125, column: 36, scope: !3719)
!3747 = !DILocation(line: 125, column: 2, scope: !3719)
!3748 = distinct !{!3748, !3736, !3749, !3750, !3751}
!3749 = !DILocation(line: 130, column: 2, scope: !3720)
!3750 = !{!"llvm.loop.mustprogress"}
!3751 = !{!"llvm.loop.unroll.disable"}
!3752 = !DILocation(line: 131, column: 2, scope: !3711)
!3753 = !DILocation(line: 131, column: 2, scope: !3722)
!3754 = !DILocation(line: 131, column: 2, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3722, file: !2, line: 131, column: 2)
!3756 = !DILocation(line: 131, column: 2, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3755, file: !2, line: 131, column: 2)
!3758 = !DILocation(line: 131, column: 2, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3757, file: !2, line: 131, column: 2)
!3760 = !DILocation(line: 132, column: 1, scope: !3711)
!3761 = distinct !DISubprogram(name: "ww_mutex_destroy", scope: !353, file: !353, line: 351, type: !3762, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3764)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{null, !3686}
!3764 = !{!3765}
!3765 = !DILocalVariable(name: "lock", arg: 1, scope: !3761, file: !353, line: 351, type: !3686)
!3766 = !DILocation(line: 351, column: 54, scope: !3761)
!3767 = !DILocation(line: 354, column: 17, scope: !3761)
!3768 = !DILocation(line: 354, column: 23, scope: !3761)
!3769 = !DILocation(line: 354, column: 2, scope: !3761)
!3770 = !DILocation(line: 356, column: 1, scope: !3761)
!3771 = distinct !DISubprogram(name: "dma_resv_reserve_fences", scope: !2, file: !2, line: 182, type: !3772, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3774)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!176, !348, !18}
!3774 = !{!3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3787, !3788, !3791, !3792, !3796, !3797, !3799, !3803}
!3775 = !DILocalVariable(name: "obj", arg: 1, scope: !3771, file: !2, line: 182, type: !348)
!3776 = !DILocalVariable(name: "num_fences", arg: 2, scope: !3771, file: !2, line: 182, type: !18)
!3777 = !DILocalVariable(name: "old", scope: !3771, file: !2, line: 184, type: !126)
!3778 = !DILocalVariable(name: "new", scope: !3771, file: !2, line: 184, type: !126)
!3779 = !DILocalVariable(name: "i", scope: !3771, file: !2, line: 185, type: !18)
!3780 = !DILocalVariable(name: "j", scope: !3771, file: !2, line: 185, type: !18)
!3781 = !DILocalVariable(name: "k", scope: !3771, file: !2, line: 185, type: !18)
!3782 = !DILocalVariable(name: "max", scope: !3771, file: !2, line: 185, type: !18)
!3783 = !DILocalVariable(name: "__UNIQUE_ID___x293", scope: !3784, file: !2, line: 193, type: !18)
!3784 = distinct !DILexicalBlock(scope: !3785, file: !2, line: 193, column: 9)
!3785 = distinct !DILexicalBlock(scope: !3786, file: !2, line: 190, column: 30)
!3786 = distinct !DILexicalBlock(scope: !3771, file: !2, line: 190, column: 6)
!3787 = !DILocalVariable(name: "__UNIQUE_ID___y294", scope: !3784, file: !2, line: 193, type: !140)
!3788 = !DILocalVariable(name: "__UNIQUE_ID___x295", scope: !3789, file: !2, line: 195, type: !254)
!3789 = distinct !DILexicalBlock(scope: !3790, file: !2, line: 195, column: 9)
!3790 = distinct !DILexicalBlock(scope: !3786, file: !2, line: 194, column: 9)
!3791 = !DILocalVariable(name: "__UNIQUE_ID___y296", scope: !3789, file: !2, line: 195, type: !254)
!3792 = !DILocalVariable(name: "usage", scope: !3793, file: !2, line: 209, type: !85)
!3793 = distinct !DILexicalBlock(scope: !3794, file: !2, line: 208, column: 68)
!3794 = distinct !DILexicalBlock(scope: !3795, file: !2, line: 208, column: 2)
!3795 = distinct !DILexicalBlock(scope: !3771, file: !2, line: 208, column: 2)
!3796 = !DILocalVariable(name: "fence", scope: !3793, file: !2, line: 210, type: !147)
!3797 = !DILocalVariable(name: "_r_a_p__v", scope: !3798, file: !2, line: 228, type: !269)
!3798 = distinct !DILexicalBlock(scope: !3771, file: !2, line: 228, column: 2)
!3799 = !DILocalVariable(name: "fence", scope: !3800, file: !2, line: 235, type: !147)
!3800 = distinct !DILexicalBlock(scope: !3801, file: !2, line: 234, column: 28)
!3801 = distinct !DILexicalBlock(scope: !3802, file: !2, line: 234, column: 2)
!3802 = distinct !DILexicalBlock(scope: !3771, file: !2, line: 234, column: 2)
!3803 = !DILocalVariable(name: "___p", scope: !3804, file: !2, line: 241, type: !126)
!3804 = distinct !DILexicalBlock(scope: !3771, file: !2, line: 241, column: 2)
!3805 = !DILocation(line: 182, column: 46, scope: !3771)
!3806 = !DILocation(line: 182, column: 64, scope: !3771)
!3807 = !DILocation(line: 184, column: 2, scope: !3771)
!3808 = !DILocation(line: 184, column: 24, scope: !3771)
!3809 = !DILocation(line: 184, column: 30, scope: !3771)
!3810 = !DILocation(line: 185, column: 2, scope: !3771)
!3811 = !DILocation(line: 185, column: 15, scope: !3771)
!3812 = !DILocation(line: 185, column: 18, scope: !3771)
!3813 = !DILocation(line: 185, column: 21, scope: !3771)
!3814 = !DILocation(line: 185, column: 24, scope: !3771)
!3815 = !DILocation(line: 187, column: 2, scope: !3771)
!3816 = !DILocation(line: 187, column: 2, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3771, file: !2, line: 187, column: 2)
!3818 = !DILocation(line: 189, column: 29, scope: !3771)
!3819 = !DILocation(line: 189, column: 8, scope: !3771)
!3820 = !DILocation(line: 189, column: 6, scope: !3771)
!3821 = !DILocation(line: 190, column: 6, scope: !3786)
!3822 = !DILocation(line: 190, column: 10, scope: !3786)
!3823 = !DILocation(line: 190, column: 13, scope: !3786)
!3824 = !DILocation(line: 190, column: 18, scope: !3786)
!3825 = !DILocation(line: 190, column: 6, scope: !3771)
!3826 = !DILocation(line: 191, column: 8, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3785, file: !2, line: 191, column: 7)
!3828 = !DILocation(line: 191, column: 13, scope: !3827)
!3829 = !DILocation(line: 191, column: 26, scope: !3827)
!3830 = !DILocation(line: 191, column: 24, scope: !3827)
!3831 = !DILocation(line: 191, column: 41, scope: !3827)
!3832 = !DILocation(line: 191, column: 46, scope: !3827)
!3833 = !DILocation(line: 191, column: 38, scope: !3827)
!3834 = !DILocation(line: 191, column: 7, scope: !3785)
!3835 = !DILocation(line: 192, column: 4, scope: !3827)
!3836 = !DILocation(line: 193, column: 9, scope: !3784)
!3837 = !DILocation(line: 193, column: 9, scope: !3785)
!3838 = !DILocation(line: 193, column: 7, scope: !3785)
!3839 = !DILocation(line: 194, column: 2, scope: !3785)
!3840 = !DILocation(line: 195, column: 9, scope: !3789)
!3841 = !DILocation(line: 195, column: 9, scope: !3790)
!3842 = !DILocation(line: 195, column: 7, scope: !3790)
!3843 = !DILocation(line: 198, column: 28, scope: !3771)
!3844 = !DILocation(line: 198, column: 8, scope: !3771)
!3845 = !DILocation(line: 198, column: 6, scope: !3771)
!3846 = !DILocation(line: 199, column: 7, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3771, file: !2, line: 199, column: 6)
!3848 = !DILocation(line: 199, column: 6, scope: !3771)
!3849 = !DILocation(line: 200, column: 3, scope: !3847)
!3850 = !DILocation(line: 208, column: 9, scope: !3795)
!3851 = !DILocation(line: 208, column: 16, scope: !3795)
!3852 = !DILocation(line: 208, column: 25, scope: !3795)
!3853 = !DILocation(line: 208, column: 23, scope: !3795)
!3854 = !DILocation(line: 208, column: 7, scope: !3795)
!3855 = !DILocation(line: 208, column: 30, scope: !3794)
!3856 = !DILocation(line: 208, column: 35, scope: !3794)
!3857 = !DILocation(line: 208, column: 41, scope: !3794)
!3858 = !DILocation(line: 208, column: 46, scope: !3794)
!3859 = !DILocation(line: 208, column: 32, scope: !3794)
!3860 = !DILocation(line: 208, column: 2, scope: !3795)
!3861 = !DILocation(line: 209, column: 3, scope: !3793)
!3862 = !DILocation(line: 209, column: 23, scope: !3793)
!3863 = !DILocation(line: 210, column: 3, scope: !3793)
!3864 = !DILocation(line: 210, column: 21, scope: !3793)
!3865 = !DILocation(line: 212, column: 23, scope: !3793)
!3866 = !DILocation(line: 212, column: 28, scope: !3793)
!3867 = !DILocation(line: 212, column: 31, scope: !3793)
!3868 = !DILocation(line: 212, column: 3, scope: !3793)
!3869 = !DILocation(line: 213, column: 29, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3793, file: !2, line: 213, column: 7)
!3871 = !DILocation(line: 213, column: 7, scope: !3870)
!3872 = !DILocation(line: 213, column: 7, scope: !3793)
!3873 = !DILocation(line: 214, column: 4, scope: !3870)
!3874 = !DILocation(line: 214, column: 4, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3870, file: !2, line: 214, column: 4)
!3876 = !DILocation(line: 214, column: 4, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3875, file: !2, line: 214, column: 4)
!3878 = !DILocation(line: 214, column: 4, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3877, file: !2, line: 214, column: 4)
!3880 = !DILocation(line: 214, column: 4, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3877, file: !2, line: 214, column: 4)
!3882 = !DILocation(line: 216, column: 22, scope: !3870)
!3883 = !DILocation(line: 216, column: 28, scope: !3870)
!3884 = !DILocation(line: 216, column: 32, scope: !3870)
!3885 = !DILocation(line: 216, column: 39, scope: !3870)
!3886 = !DILocation(line: 216, column: 4, scope: !3870)
!3887 = !DILocation(line: 217, column: 2, scope: !3794)
!3888 = !DILocation(line: 217, column: 2, scope: !3793)
!3889 = !DILocation(line: 208, column: 63, scope: !3794)
!3890 = !DILocation(line: 208, column: 2, scope: !3794)
!3891 = distinct !{!3891, !3860, !3892, !3750, !3751}
!3892 = !DILocation(line: 217, column: 2, scope: !3795)
!3893 = !DILocation(line: 218, column: 20, scope: !3771)
!3894 = !DILocation(line: 218, column: 2, scope: !3771)
!3895 = !DILocation(line: 218, column: 7, scope: !3771)
!3896 = !DILocation(line: 218, column: 18, scope: !3771)
!3897 = !DILocation(line: 228, column: 2, scope: !3771)
!3898 = !DILocation(line: 228, column: 2, scope: !3798)
!3899 = !DILocation(line: 228, column: 2, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3798, file: !2, line: 228, column: 2)
!3901 = !DILocation(line: 228, column: 2, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3900, file: !2, line: 228, column: 2)
!3903 = !DILocation(line: 228, column: 2, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3902, file: !2, line: 228, column: 2)
!3905 = !DILocation(line: 228, column: 2, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3902, file: !2, line: 228, column: 2)
!3907 = !DILocation(line: 228, column: 2, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3900, file: !2, line: 228, column: 2)
!3909 = !DILocation(line: 228, column: 2, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3908, file: !2, line: 228, column: 2)
!3911 = !DILocation(line: 228, column: 2, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3908, file: !2, line: 228, column: 2)
!3913 = !DILocation(line: 228, column: 2, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3912, file: !2, line: 228, column: 2)
!3915 = !{i64 2154108870}
!3916 = !DILocation(line: 228, column: 2, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3912, file: !2, line: 228, column: 2)
!3918 = !DILocation(line: 228, column: 2, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3917, file: !2, line: 228, column: 2)
!3920 = !DILocation(line: 228, column: 2, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3917, file: !2, line: 228, column: 2)
!3922 = !DILocation(line: 230, column: 7, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3771, file: !2, line: 230, column: 6)
!3924 = !DILocation(line: 230, column: 6, scope: !3771)
!3925 = !DILocation(line: 231, column: 3, scope: !3923)
!3926 = !DILocation(line: 234, column: 11, scope: !3802)
!3927 = !DILocation(line: 234, column: 9, scope: !3802)
!3928 = !DILocation(line: 234, column: 7, scope: !3802)
!3929 = !DILocation(line: 234, column: 14, scope: !3801)
!3930 = !DILocation(line: 234, column: 18, scope: !3801)
!3931 = !DILocation(line: 234, column: 16, scope: !3801)
!3932 = !DILocation(line: 234, column: 2, scope: !3802)
!3933 = !DILocation(line: 235, column: 3, scope: !3800)
!3934 = !DILocation(line: 235, column: 21, scope: !3800)
!3935 = !DILocation(line: 237, column: 11, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3800, file: !2, line: 237, column: 11)
!3937 = !DILocation(line: 237, column: 11, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3936, file: !2, line: 237, column: 11)
!3939 = !DILocation(line: 237, column: 9, scope: !3800)
!3940 = !DILocation(line: 239, column: 17, scope: !3800)
!3941 = !DILocation(line: 239, column: 3, scope: !3800)
!3942 = !DILocation(line: 240, column: 2, scope: !3801)
!3943 = !DILocation(line: 240, column: 2, scope: !3800)
!3944 = !DILocation(line: 234, column: 23, scope: !3801)
!3945 = !DILocation(line: 234, column: 2, scope: !3801)
!3946 = distinct !{!3946, !3932, !3947, !3750, !3751}
!3947 = !DILocation(line: 240, column: 2, scope: !3802)
!3948 = !DILocation(line: 241, column: 2, scope: !3771)
!3949 = !DILocation(line: 241, column: 2, scope: !3804)
!3950 = !DILocation(line: 241, column: 2, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3804, file: !2, line: 241, column: 2)
!3952 = !DILocation(line: 241, column: 2, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3951, file: !2, line: 241, column: 2)
!3954 = !DILocation(line: 241, column: 2, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3953, file: !2, line: 241, column: 2)
!3956 = !DILocation(line: 243, column: 2, scope: !3771)
!3957 = !DILocation(line: 244, column: 1, scope: !3771)
!3958 = distinct !DISubprogram(name: "dma_resv_fences_list", scope: !2, file: !2, line: 162, type: !3959, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3961)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!126, !348}
!3961 = !{!3962, !3963}
!3962 = !DILocalVariable(name: "obj", arg: 1, scope: !3958, file: !2, line: 162, type: !348)
!3963 = !DILocalVariable(name: "__UNIQUE_ID_rcu291", scope: !3964, file: !2, line: 164, type: !126)
!3964 = distinct !DILexicalBlock(scope: !3958, file: !2, line: 164, column: 9)
!3965 = !DILocation(line: 162, column: 75, scope: !3958)
!3966 = !DILocation(line: 164, column: 9, scope: !3964)
!3967 = !DILocation(line: 164, column: 9, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3964, file: !2, line: 164, column: 9)
!3969 = !DILocation(line: 164, column: 9, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3968, file: !2, line: 164, column: 9)
!3971 = !DILocation(line: 164, column: 9, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3964, file: !2, line: 164, column: 9)
!3973 = !DILocation(line: 164, column: 9, scope: !3958)
!3974 = !DILocation(line: 164, column: 2, scope: !3958)
!3975 = distinct !DISubprogram(name: "__ilog2_u32", scope: !3976, file: !3976, line: 22, type: !3977, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3979)
!3976 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c147744b0ec822ab26cfdb78fa4c3998")
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!176, !140}
!3979 = !{!3980}
!3980 = !DILocalVariable(name: "n", arg: 1, scope: !3975, file: !3976, line: 22, type: !140)
!3981 = !DILocation(line: 22, column: 21, scope: !3975)
!3982 = !DILocation(line: 24, column: 13, scope: !3975)
!3983 = !DILocation(line: 24, column: 9, scope: !3975)
!3984 = !DILocation(line: 24, column: 16, scope: !3975)
!3985 = !DILocation(line: 24, column: 2, scope: !3975)
!3986 = distinct !DISubprogram(name: "__roundup_pow_of_two", scope: !3976, file: !3976, line: 55, type: !3987, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3989)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!254, !254}
!3989 = !{!3990}
!3990 = !DILocalVariable(name: "n", arg: 1, scope: !3986, file: !3976, line: 55, type: !254)
!3991 = !DILocation(line: 55, column: 50, scope: !3986)
!3992 = !DILocation(line: 57, column: 25, scope: !3986)
!3993 = !DILocation(line: 57, column: 27, scope: !3986)
!3994 = !DILocation(line: 57, column: 16, scope: !3986)
!3995 = !DILocation(line: 57, column: 13, scope: !3986)
!3996 = !DILocation(line: 57, column: 2, scope: !3986)
!3997 = distinct !DISubprogram(name: "dma_resv_list_alloc", scope: !2, file: !2, line: 98, type: !3998, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4000)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!126, !18}
!4000 = !{!4001, !4002, !4003}
!4001 = !DILocalVariable(name: "max_fences", arg: 1, scope: !3997, file: !2, line: 98, type: !18)
!4002 = !DILocalVariable(name: "list", scope: !3997, file: !2, line: 100, type: !126)
!4003 = !DILocalVariable(name: "size", scope: !3997, file: !2, line: 101, type: !273)
!4004 = !DILocation(line: 98, column: 63, scope: !3997)
!4005 = !DILocation(line: 100, column: 2, scope: !3997)
!4006 = !DILocation(line: 100, column: 24, scope: !3997)
!4007 = !DILocation(line: 101, column: 2, scope: !3997)
!4008 = !DILocation(line: 101, column: 9, scope: !3997)
!4009 = !DILocation(line: 104, column: 30, scope: !3997)
!4010 = !DILocation(line: 104, column: 9, scope: !3997)
!4011 = !DILocation(line: 104, column: 7, scope: !3997)
!4012 = !DILocation(line: 106, column: 17, scope: !3997)
!4013 = !DILocation(line: 106, column: 9, scope: !3997)
!4014 = !DILocation(line: 106, column: 7, scope: !3997)
!4015 = !DILocation(line: 107, column: 7, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !3997, file: !2, line: 107, column: 6)
!4017 = !DILocation(line: 107, column: 6, scope: !3997)
!4018 = !DILocation(line: 108, column: 3, scope: !4016)
!4019 = !DILocation(line: 111, column: 22, scope: !3997)
!4020 = !DILocation(line: 111, column: 27, scope: !3997)
!4021 = !DILocation(line: 111, column: 61, scope: !3997)
!4022 = !DILocation(line: 111, column: 21, scope: !3997)
!4023 = !DILocation(line: 111, column: 2, scope: !3997)
!4024 = !DILocation(line: 111, column: 8, scope: !3997)
!4025 = !DILocation(line: 111, column: 19, scope: !3997)
!4026 = !DILocation(line: 114, column: 9, scope: !3997)
!4027 = !DILocation(line: 114, column: 2, scope: !3997)
!4028 = !DILocation(line: 115, column: 1, scope: !3997)
!4029 = distinct !DISubprogram(name: "dma_resv_list_entry", scope: !2, file: !2, line: 70, type: !4030, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4034)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{null, !126, !18, !348, !4032, !4033}
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!4034 = !{!4035, !4036, !4037, !4038, !4039, !4040, !4041}
!4035 = !DILocalVariable(name: "list", arg: 1, scope: !4029, file: !2, line: 70, type: !126)
!4036 = !DILocalVariable(name: "index", arg: 2, scope: !4029, file: !2, line: 70, type: !18)
!4037 = !DILocalVariable(name: "resv", arg: 3, scope: !4029, file: !2, line: 71, type: !348)
!4038 = !DILocalVariable(name: "fence", arg: 4, scope: !4029, file: !2, line: 71, type: !4032)
!4039 = !DILocalVariable(name: "usage", arg: 5, scope: !4029, file: !2, line: 72, type: !4033)
!4040 = !DILocalVariable(name: "tmp", scope: !4029, file: !2, line: 74, type: !217)
!4041 = !DILocalVariable(name: "__UNIQUE_ID_rcu284", scope: !4042, file: !2, line: 76, type: !147)
!4042 = distinct !DILexicalBlock(scope: !4029, file: !2, line: 76, column: 14)
!4043 = !DILocation(line: 70, column: 55, scope: !4029)
!4044 = !DILocation(line: 70, column: 74, scope: !4029)
!4045 = !DILocation(line: 71, column: 22, scope: !4029)
!4046 = !DILocation(line: 71, column: 47, scope: !4029)
!4047 = !DILocation(line: 72, column: 26, scope: !4029)
!4048 = !DILocation(line: 74, column: 2, scope: !4029)
!4049 = !DILocation(line: 74, column: 7, scope: !4029)
!4050 = !DILocation(line: 76, column: 14, scope: !4042)
!4051 = !DILocation(line: 76, column: 14, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4042, file: !2, line: 76, column: 14)
!4053 = !DILocation(line: 76, column: 14, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4052, file: !2, line: 76, column: 14)
!4055 = !DILocation(line: 76, column: 14, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4042, file: !2, line: 76, column: 14)
!4057 = !DILocation(line: 76, column: 14, scope: !4029)
!4058 = !DILocation(line: 76, column: 8, scope: !4029)
!4059 = !DILocation(line: 76, column: 6, scope: !4029)
!4060 = !DILocation(line: 78, column: 32, scope: !4029)
!4061 = !DILocation(line: 78, column: 36, scope: !4029)
!4062 = !DILocation(line: 78, column: 11, scope: !4029)
!4063 = !DILocation(line: 78, column: 3, scope: !4029)
!4064 = !DILocation(line: 78, column: 9, scope: !4029)
!4065 = !DILocation(line: 79, column: 6, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4029, file: !2, line: 79, column: 6)
!4067 = !DILocation(line: 79, column: 6, scope: !4029)
!4068 = !DILocation(line: 80, column: 12, scope: !4066)
!4069 = !DILocation(line: 80, column: 16, scope: !4066)
!4070 = !DILocation(line: 80, column: 4, scope: !4066)
!4071 = !DILocation(line: 80, column: 10, scope: !4066)
!4072 = !DILocation(line: 80, column: 3, scope: !4066)
!4073 = !DILocation(line: 81, column: 1, scope: !4029)
!4074 = distinct !DISubprogram(name: "dma_fence_is_signaled", scope: !108, file: !108, line: 449, type: !210, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4075)
!4075 = !{!4076}
!4076 = !DILocalVariable(name: "fence", arg: 1, scope: !4074, file: !108, line: 449, type: !147)
!4077 = !DILocation(line: 449, column: 41, scope: !4074)
!4078 = !DILocation(line: 451, column: 6, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4074, file: !108, line: 451, column: 6)
!4080 = !DILocation(line: 451, column: 6, scope: !4074)
!4081 = !DILocation(line: 452, column: 3, scope: !4079)
!4082 = !DILocation(line: 454, column: 6, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4074, file: !108, line: 454, column: 6)
!4084 = !DILocation(line: 454, column: 13, scope: !4083)
!4085 = !DILocation(line: 454, column: 18, scope: !4083)
!4086 = !DILocation(line: 454, column: 27, scope: !4083)
!4087 = !DILocation(line: 454, column: 30, scope: !4083)
!4088 = !DILocation(line: 454, column: 37, scope: !4083)
!4089 = !DILocation(line: 454, column: 42, scope: !4083)
!4090 = !DILocation(line: 454, column: 51, scope: !4083)
!4091 = !DILocation(line: 454, column: 6, scope: !4074)
!4092 = !DILocation(line: 455, column: 20, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4083, file: !108, line: 454, column: 59)
!4094 = !DILocation(line: 455, column: 3, scope: !4093)
!4095 = !DILocation(line: 456, column: 3, scope: !4093)
!4096 = !DILocation(line: 459, column: 2, scope: !4074)
!4097 = !DILocation(line: 460, column: 1, scope: !4074)
!4098 = distinct !DISubprogram(name: "dma_resv_list_set", scope: !2, file: !2, line: 84, type: !4099, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4101)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{null, !126, !18, !147, !85}
!4101 = !{!4102, !4103, !4104, !4105, !4106}
!4102 = !DILocalVariable(name: "list", arg: 1, scope: !4098, file: !2, line: 84, type: !126)
!4103 = !DILocalVariable(name: "index", arg: 2, scope: !4098, file: !2, line: 85, type: !18)
!4104 = !DILocalVariable(name: "fence", arg: 3, scope: !4098, file: !2, line: 86, type: !147)
!4105 = !DILocalVariable(name: "usage", arg: 4, scope: !4098, file: !2, line: 87, type: !85)
!4106 = !DILocalVariable(name: "tmp", scope: !4098, file: !2, line: 89, type: !217)
!4107 = !DILocation(line: 84, column: 53, scope: !4098)
!4108 = !DILocation(line: 85, column: 23, scope: !4098)
!4109 = !DILocation(line: 86, column: 28, scope: !4098)
!4110 = !DILocation(line: 87, column: 30, scope: !4098)
!4111 = !DILocation(line: 89, column: 2, scope: !4098)
!4112 = !DILocation(line: 89, column: 7, scope: !4098)
!4113 = !DILocation(line: 89, column: 20, scope: !4098)
!4114 = !DILocation(line: 89, column: 14, scope: !4098)
!4115 = !DILocation(line: 89, column: 29, scope: !4098)
!4116 = !DILocation(line: 89, column: 27, scope: !4098)
!4117 = !DILocation(line: 91, column: 2, scope: !4098)
!4118 = !DILocation(line: 91, column: 2, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4098, file: !2, line: 91, column: 2)
!4120 = !DILocation(line: 91, column: 2, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4119, file: !2, line: 91, column: 2)
!4122 = !DILocation(line: 91, column: 2, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4121, file: !2, line: 91, column: 2)
!4124 = !DILocation(line: 91, column: 2, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4121, file: !2, line: 91, column: 2)
!4126 = !DILocation(line: 92, column: 1, scope: !4098)
!4127 = distinct !DISubprogram(name: "dma_fence_put", scope: !108, file: !108, line: 293, type: !220, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4128)
!4128 = !{!4129}
!4129 = !DILocalVariable(name: "fence", arg: 1, scope: !4127, file: !108, line: 293, type: !147)
!4130 = !DILocation(line: 293, column: 52, scope: !4127)
!4131 = !DILocation(line: 295, column: 6, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4127, file: !108, line: 295, column: 6)
!4133 = !DILocation(line: 295, column: 6, scope: !4127)
!4134 = !DILocation(line: 296, column: 13, scope: !4132)
!4135 = !DILocation(line: 296, column: 20, scope: !4132)
!4136 = !DILocation(line: 296, column: 3, scope: !4132)
!4137 = !DILocation(line: 297, column: 1, scope: !4127)
!4138 = !DISubprogram(name: "kvfree_call_rcu", scope: !4139, file: !4139, line: 37, type: !4140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4139 = !DIFile(filename: "./include/linux/rcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ba1a11a02717ea844631ceb399131463")
!4140 = !DISubroutineType(types: !4141)
!4141 = !{null, !134, !123}
!4142 = distinct !DISubprogram(name: "dma_resv_add_fence", scope: !2, file: !2, line: 280, type: !4143, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4145)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{null, !348, !147, !85}
!4145 = !{!4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4155, !4158, !4162, !4166}
!4146 = !DILocalVariable(name: "obj", arg: 1, scope: !4142, file: !2, line: 280, type: !348)
!4147 = !DILocalVariable(name: "fence", arg: 2, scope: !4142, file: !2, line: 280, type: !147)
!4148 = !DILocalVariable(name: "usage", arg: 3, scope: !4142, file: !2, line: 281, type: !85)
!4149 = !DILocalVariable(name: "fobj", scope: !4142, file: !2, line: 283, type: !126)
!4150 = !DILocalVariable(name: "old", scope: !4142, file: !2, line: 284, type: !147)
!4151 = !DILocalVariable(name: "i", scope: !4142, file: !2, line: 285, type: !18)
!4152 = !DILocalVariable(name: "count", scope: !4142, file: !2, line: 285, type: !18)
!4153 = !DILocalVariable(name: "__ret_warn_on", scope: !4154, file: !2, line: 294, type: !176)
!4154 = distinct !DILexicalBlock(scope: !4142, file: !2, line: 294, column: 2)
!4155 = !DILocalVariable(name: "__flags", scope: !4156, file: !2, line: 294, type: !176)
!4156 = distinct !DILexicalBlock(scope: !4157, file: !2, line: 294, column: 2)
!4157 = distinct !DILexicalBlock(scope: !4154, file: !2, line: 294, column: 2)
!4158 = !DILocalVariable(name: "old_usage", scope: !4159, file: !2, line: 300, type: !85)
!4159 = distinct !DILexicalBlock(scope: !4160, file: !2, line: 299, column: 30)
!4160 = distinct !DILexicalBlock(scope: !4161, file: !2, line: 299, column: 2)
!4161 = distinct !DILexicalBlock(scope: !4142, file: !2, line: 299, column: 2)
!4162 = !DILocalVariable(name: "__ai_ptr", scope: !4163, file: !2, line: 317, type: !2738)
!4163 = distinct !DILexicalBlock(scope: !4164, file: !2, line: 317, column: 2)
!4164 = distinct !DILexicalBlock(scope: !4165, file: !2, line: 317, column: 2)
!4165 = distinct !DILexicalBlock(scope: !4142, file: !2, line: 317, column: 2)
!4166 = !DILocalVariable(name: "__ret", scope: !4167, file: !2, line: 317, type: !140)
!4167 = distinct !DILexicalBlock(scope: !4163, file: !2, line: 317, column: 2)
!4168 = !DILocation(line: 280, column: 42, scope: !4142)
!4169 = !DILocation(line: 280, column: 65, scope: !4142)
!4170 = !DILocation(line: 281, column: 24, scope: !4142)
!4171 = !DILocation(line: 283, column: 2, scope: !4142)
!4172 = !DILocation(line: 283, column: 24, scope: !4142)
!4173 = !DILocation(line: 284, column: 2, scope: !4142)
!4174 = !DILocation(line: 284, column: 20, scope: !4142)
!4175 = !DILocation(line: 285, column: 2, scope: !4142)
!4176 = !DILocation(line: 285, column: 15, scope: !4142)
!4177 = !DILocation(line: 285, column: 18, scope: !4142)
!4178 = !DILocation(line: 287, column: 16, scope: !4142)
!4179 = !DILocation(line: 287, column: 2, scope: !4142)
!4180 = !DILocation(line: 289, column: 2, scope: !4142)
!4181 = !DILocation(line: 289, column: 2, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !4142, file: !2, line: 289, column: 2)
!4183 = !DILocation(line: 294, column: 2, scope: !4154)
!4184 = !DILocation(line: 294, column: 2, scope: !4157)
!4185 = !DILocation(line: 294, column: 2, scope: !4156)
!4186 = !DILocation(line: 294, column: 2, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4156, file: !2, line: 294, column: 2)
!4188 = !DILocation(line: 294, column: 2, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4156, file: !2, line: 294, column: 2)
!4190 = !{i64 2154116269, i64 2154116298, i64 2154116344, i64 2154116402, i64 2154116456, i64 2154116510, i64 2154116565, i64 2154116596, i64 2154116904, i64 2154116910, i64 2154116957, i64 2154116980, i64 2154117006}
!4191 = !DILocation(line: 294, column: 2, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4156, file: !2, line: 294, column: 2)
!4193 = !DILocation(line: 294, column: 2, scope: !4142)
!4194 = !DILocation(line: 296, column: 30, scope: !4142)
!4195 = !DILocation(line: 296, column: 9, scope: !4142)
!4196 = !DILocation(line: 296, column: 7, scope: !4142)
!4197 = !DILocation(line: 297, column: 10, scope: !4142)
!4198 = !DILocation(line: 297, column: 16, scope: !4142)
!4199 = !DILocation(line: 297, column: 8, scope: !4142)
!4200 = !DILocation(line: 299, column: 9, scope: !4161)
!4201 = !DILocation(line: 299, column: 7, scope: !4161)
!4202 = !DILocation(line: 299, column: 14, scope: !4160)
!4203 = !DILocation(line: 299, column: 18, scope: !4160)
!4204 = !DILocation(line: 299, column: 16, scope: !4160)
!4205 = !DILocation(line: 299, column: 2, scope: !4161)
!4206 = !DILocation(line: 300, column: 3, scope: !4159)
!4207 = !DILocation(line: 300, column: 23, scope: !4159)
!4208 = !DILocation(line: 302, column: 23, scope: !4159)
!4209 = !DILocation(line: 302, column: 29, scope: !4159)
!4210 = !DILocation(line: 302, column: 32, scope: !4159)
!4211 = !DILocation(line: 302, column: 3, scope: !4159)
!4212 = !DILocation(line: 303, column: 8, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4159, file: !2, line: 303, column: 7)
!4214 = !DILocation(line: 303, column: 13, scope: !4213)
!4215 = !DILocation(line: 303, column: 24, scope: !4213)
!4216 = !DILocation(line: 303, column: 31, scope: !4213)
!4217 = !DILocation(line: 303, column: 21, scope: !4213)
!4218 = !DILocation(line: 303, column: 39, scope: !4213)
!4219 = !DILocation(line: 303, column: 42, scope: !4213)
!4220 = !DILocation(line: 303, column: 55, scope: !4213)
!4221 = !DILocation(line: 303, column: 52, scope: !4213)
!4222 = !DILocation(line: 303, column: 61, scope: !4213)
!4223 = !DILocation(line: 304, column: 35, scope: !4213)
!4224 = !DILocation(line: 304, column: 42, scope: !4213)
!4225 = !DILocation(line: 304, column: 8, scope: !4213)
!4226 = !DILocation(line: 304, column: 48, scope: !4213)
!4227 = !DILocation(line: 305, column: 29, scope: !4213)
!4228 = !DILocation(line: 305, column: 7, scope: !4213)
!4229 = !DILocation(line: 303, column: 7, scope: !4159)
!4230 = !DILocation(line: 306, column: 22, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4213, file: !2, line: 305, column: 35)
!4232 = !DILocation(line: 306, column: 28, scope: !4231)
!4233 = !DILocation(line: 306, column: 31, scope: !4231)
!4234 = !DILocation(line: 306, column: 38, scope: !4231)
!4235 = !DILocation(line: 306, column: 4, scope: !4231)
!4236 = !DILocation(line: 307, column: 18, scope: !4231)
!4237 = !DILocation(line: 307, column: 4, scope: !4231)
!4238 = !DILocation(line: 308, column: 4, scope: !4231)
!4239 = !DILocation(line: 310, column: 2, scope: !4160)
!4240 = !DILocation(line: 310, column: 2, scope: !4159)
!4241 = !DILocation(line: 299, column: 25, scope: !4160)
!4242 = !DILocation(line: 299, column: 2, scope: !4160)
!4243 = distinct !{!4243, !4205, !4244, !3750, !3751}
!4244 = !DILocation(line: 310, column: 2, scope: !4161)
!4245 = !DILocation(line: 312, column: 2, scope: !4142)
!4246 = !DILocation(line: 312, column: 2, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4248, file: !2, line: 312, column: 2)
!4248 = distinct !DILexicalBlock(scope: !4142, file: !2, line: 312, column: 2)
!4249 = !DILocation(line: 312, column: 2, scope: !4248)
!4250 = !DILocation(line: 312, column: 2, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4247, file: !2, line: 312, column: 2)
!4252 = !DILocation(line: 312, column: 2, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4251, file: !2, line: 312, column: 2)
!4254 = !DILocation(line: 312, column: 2, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4251, file: !2, line: 312, column: 2)
!4256 = !{i64 2154117580, i64 2154117609, i64 2154117655, i64 2154117713, i64 2154117767, i64 2154117821, i64 2154117876, i64 2154117907}
!4257 = !DILocation(line: 313, column: 7, scope: !4142)
!4258 = !DILocation(line: 315, column: 20, scope: !4142)
!4259 = !DILocation(line: 315, column: 26, scope: !4142)
!4260 = !DILocation(line: 315, column: 29, scope: !4142)
!4261 = !DILocation(line: 315, column: 36, scope: !4142)
!4262 = !DILocation(line: 315, column: 2, scope: !4142)
!4263 = !DILocation(line: 317, column: 2, scope: !4142)
!4264 = !DILocation(line: 317, column: 2, scope: !4165)
!4265 = !DILocation(line: 317, column: 2, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4165, file: !2, line: 317, column: 2)
!4267 = !DILocation(line: 317, column: 2, scope: !4163)
!4268 = !DILocation(line: 317, column: 2, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4163, file: !2, line: 317, column: 2)
!4270 = !DILocation(line: 317, column: 2, scope: !4167)
!4271 = !{i64 2154119636}
!4272 = !DILocation(line: 317, column: 2, scope: !4164)
!4273 = !DILocation(line: 318, column: 1, scope: !4142)
!4274 = distinct !DISubprogram(name: "dma_fence_get", scope: !108, file: !108, line: 305, type: !4275, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4277)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!147, !147}
!4277 = !{!4278}
!4278 = !DILocalVariable(name: "fence", arg: 1, scope: !4274, file: !108, line: 305, type: !147)
!4279 = !DILocation(line: 305, column: 65, scope: !4274)
!4280 = !DILocation(line: 307, column: 6, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4274, file: !108, line: 307, column: 6)
!4282 = !DILocation(line: 307, column: 6, scope: !4274)
!4283 = !DILocation(line: 308, column: 13, scope: !4281)
!4284 = !DILocation(line: 308, column: 20, scope: !4281)
!4285 = !DILocation(line: 308, column: 3, scope: !4281)
!4286 = !DILocation(line: 309, column: 9, scope: !4274)
!4287 = !DILocation(line: 309, column: 2, scope: !4274)
!4288 = distinct !DISubprogram(name: "dma_fence_is_container", scope: !108, file: !108, line: 679, type: !210, scopeLine: 680, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4289)
!4289 = !{!4290}
!4290 = !DILocalVariable(name: "fence", arg: 1, scope: !4288, file: !108, line: 679, type: !147)
!4291 = !DILocation(line: 679, column: 61, scope: !4288)
!4292 = !DILocation(line: 681, column: 28, scope: !4288)
!4293 = !DILocation(line: 681, column: 9, scope: !4288)
!4294 = !DILocation(line: 681, column: 35, scope: !4288)
!4295 = !DILocation(line: 681, column: 57, scope: !4288)
!4296 = !DILocation(line: 681, column: 38, scope: !4288)
!4297 = !DILocation(line: 681, column: 2, scope: !4288)
!4298 = distinct !DISubprogram(name: "dma_fence_is_later_or_same", scope: !108, file: !108, line: 510, type: !4299, scopeLine: 512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4301)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{!199, !147, !147}
!4301 = !{!4302, !4303}
!4302 = !DILocalVariable(name: "f1", arg: 1, scope: !4298, file: !108, line: 510, type: !147)
!4303 = !DILocalVariable(name: "f2", arg: 2, scope: !4298, file: !108, line: 511, type: !147)
!4304 = !DILocation(line: 510, column: 65, scope: !4298)
!4305 = !DILocation(line: 511, column: 30, scope: !4298)
!4306 = !DILocation(line: 513, column: 9, scope: !4298)
!4307 = !DILocation(line: 513, column: 15, scope: !4298)
!4308 = !DILocation(line: 513, column: 12, scope: !4298)
!4309 = !DILocation(line: 513, column: 18, scope: !4298)
!4310 = !DILocation(line: 513, column: 40, scope: !4298)
!4311 = !DILocation(line: 513, column: 44, scope: !4298)
!4312 = !DILocation(line: 513, column: 21, scope: !4298)
!4313 = !DILocation(line: 513, column: 2, scope: !4298)
!4314 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4315, file: !4315, line: 94, type: !4316, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4321)
!4315 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4316 = !DISubroutineType(types: !4317)
!4317 = !{null, !4318, !273}
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4320)
!4320 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4321 = !{!4322, !4323}
!4322 = !DILocalVariable(name: "v", arg: 1, scope: !4314, file: !4315, line: 94, type: !4318)
!4323 = !DILocalVariable(name: "size", arg: 2, scope: !4314, file: !4315, line: 94, type: !273)
!4324 = !DILocation(line: 94, column: 79, scope: !4314)
!4325 = !DILocation(line: 94, column: 89, scope: !4314)
!4326 = !DILocation(line: 96, column: 20, scope: !4314)
!4327 = !DILocation(line: 96, column: 23, scope: !4314)
!4328 = !DILocation(line: 96, column: 2, scope: !4314)
!4329 = !DILocation(line: 97, column: 2, scope: !4314)
!4330 = !DILocation(line: 98, column: 1, scope: !4314)
!4331 = distinct !DISubprogram(name: "dma_resv_replace_fences", scope: !2, file: !2, line: 335, type: !4332, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4335)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{null, !348, !4334, !147, !85}
!4334 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !131, line: 113, baseType: !249)
!4335 = !{!4336, !4337, !4338, !4339, !4340, !4341, !4342}
!4336 = !DILocalVariable(name: "obj", arg: 1, scope: !4331, file: !2, line: 335, type: !348)
!4337 = !DILocalVariable(name: "context", arg: 2, scope: !4331, file: !2, line: 335, type: !4334)
!4338 = !DILocalVariable(name: "replacement", arg: 3, scope: !4331, file: !2, line: 336, type: !147)
!4339 = !DILocalVariable(name: "usage", arg: 4, scope: !4331, file: !2, line: 337, type: !85)
!4340 = !DILocalVariable(name: "list", scope: !4331, file: !2, line: 339, type: !126)
!4341 = !DILocalVariable(name: "i", scope: !4331, file: !2, line: 340, type: !18)
!4342 = !DILocalVariable(name: "old", scope: !4343, file: !2, line: 346, type: !147)
!4343 = distinct !DILexicalBlock(scope: !4344, file: !2, line: 345, column: 49)
!4344 = distinct !DILexicalBlock(scope: !4345, file: !2, line: 345, column: 2)
!4345 = distinct !DILexicalBlock(scope: !4331, file: !2, line: 345, column: 2)
!4346 = !DILocation(line: 335, column: 47, scope: !4331)
!4347 = !DILocation(line: 335, column: 61, scope: !4331)
!4348 = !DILocation(line: 336, column: 27, scope: !4331)
!4349 = !DILocation(line: 337, column: 29, scope: !4331)
!4350 = !DILocation(line: 339, column: 2, scope: !4331)
!4351 = !DILocation(line: 339, column: 24, scope: !4331)
!4352 = !DILocation(line: 340, column: 2, scope: !4331)
!4353 = !DILocation(line: 340, column: 15, scope: !4331)
!4354 = !DILocation(line: 342, column: 2, scope: !4331)
!4355 = !DILocation(line: 342, column: 2, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4331, file: !2, line: 342, column: 2)
!4357 = !DILocation(line: 344, column: 30, scope: !4331)
!4358 = !DILocation(line: 344, column: 9, scope: !4331)
!4359 = !DILocation(line: 344, column: 7, scope: !4331)
!4360 = !DILocation(line: 345, column: 9, scope: !4345)
!4361 = !DILocation(line: 345, column: 7, scope: !4345)
!4362 = !DILocation(line: 345, column: 14, scope: !4344)
!4363 = !DILocation(line: 345, column: 19, scope: !4344)
!4364 = !DILocation(line: 345, column: 22, scope: !4344)
!4365 = !DILocation(line: 345, column: 26, scope: !4344)
!4366 = !DILocation(line: 345, column: 32, scope: !4344)
!4367 = !DILocation(line: 345, column: 24, scope: !4344)
!4368 = !DILocation(line: 0, scope: !4344)
!4369 = !DILocation(line: 345, column: 2, scope: !4345)
!4370 = !DILocation(line: 346, column: 3, scope: !4343)
!4371 = !DILocation(line: 346, column: 21, scope: !4343)
!4372 = !DILocation(line: 348, column: 23, scope: !4343)
!4373 = !DILocation(line: 348, column: 29, scope: !4343)
!4374 = !DILocation(line: 348, column: 32, scope: !4343)
!4375 = !DILocation(line: 348, column: 3, scope: !4343)
!4376 = !DILocation(line: 349, column: 7, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4343, file: !2, line: 349, column: 7)
!4378 = !DILocation(line: 349, column: 12, scope: !4377)
!4379 = !DILocation(line: 349, column: 23, scope: !4377)
!4380 = !DILocation(line: 349, column: 20, scope: !4377)
!4381 = !DILocation(line: 349, column: 7, scope: !4343)
!4382 = !DILocation(line: 350, column: 4, scope: !4377)
!4383 = !DILocation(line: 352, column: 21, scope: !4343)
!4384 = !DILocation(line: 352, column: 27, scope: !4343)
!4385 = !DILocation(line: 352, column: 44, scope: !4343)
!4386 = !DILocation(line: 352, column: 30, scope: !4343)
!4387 = !DILocation(line: 352, column: 58, scope: !4343)
!4388 = !DILocation(line: 352, column: 3, scope: !4343)
!4389 = !DILocation(line: 353, column: 17, scope: !4343)
!4390 = !DILocation(line: 353, column: 3, scope: !4343)
!4391 = !DILocation(line: 354, column: 2, scope: !4344)
!4392 = !DILocation(line: 354, column: 2, scope: !4343)
!4393 = !DILocation(line: 345, column: 44, scope: !4344)
!4394 = !DILocation(line: 345, column: 2, scope: !4344)
!4395 = distinct !{!4395, !4369, !4396, !3750, !3751}
!4396 = !DILocation(line: 354, column: 2, scope: !4345)
!4397 = !DILocation(line: 355, column: 1, scope: !4331)
!4398 = distinct !DISubprogram(name: "dma_resv_iter_first_unlocked", scope: !2, file: !2, line: 412, type: !4399, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4402)
!4399 = !DISubroutineType(types: !4400)
!4400 = !{!147, !4401}
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!4402 = !{!4403}
!4403 = !DILocalVariable(name: "cursor", arg: 1, scope: !4398, file: !2, line: 412, type: !4401)
!4404 = !DILocation(line: 412, column: 70, scope: !4398)
!4405 = !DILocation(line: 414, column: 2, scope: !4398)
!4406 = !DILocation(line: 415, column: 2, scope: !4398)
!4407 = !DILocation(line: 416, column: 34, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4398, file: !2, line: 415, column: 5)
!4409 = !DILocation(line: 416, column: 3, scope: !4408)
!4410 = !DILocation(line: 417, column: 31, scope: !4408)
!4411 = !DILocation(line: 417, column: 3, scope: !4408)
!4412 = !DILocation(line: 418, column: 2, scope: !4408)
!4413 = !DILocation(line: 418, column: 32, scope: !4398)
!4414 = !DILocation(line: 418, column: 40, scope: !4398)
!4415 = !DILocation(line: 418, column: 11, scope: !4398)
!4416 = !DILocation(line: 418, column: 48, scope: !4398)
!4417 = !DILocation(line: 418, column: 56, scope: !4398)
!4418 = !DILocation(line: 418, column: 45, scope: !4398)
!4419 = distinct !{!4419, !4406, !4420, !3750, !3751}
!4420 = !DILocation(line: 418, column: 62, scope: !4398)
!4421 = !DILocation(line: 419, column: 2, scope: !4398)
!4422 = !DILocation(line: 421, column: 9, scope: !4398)
!4423 = !DILocation(line: 421, column: 17, scope: !4398)
!4424 = !DILocation(line: 421, column: 2, scope: !4398)
!4425 = distinct !DISubprogram(name: "rcu_read_lock", scope: !4426, file: !4426, line: 782, type: !3033, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14)
!4426 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!4427 = !DILocation(line: 784, column: 2, scope: !4425)
!4428 = !DILocation(line: 786, column: 2, scope: !4425)
!4429 = !DILocation(line: 786, column: 2, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4425, file: !4426, line: 786, column: 2)
!4431 = !DILocation(line: 787, column: 2, scope: !4425)
!4432 = !DILocation(line: 787, column: 2, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4425, file: !4426, line: 787, column: 2)
!4434 = !DILocation(line: 789, column: 1, scope: !4425)
!4435 = distinct !DISubprogram(name: "dma_resv_iter_restart_unlocked", scope: !2, file: !2, line: 359, type: !4436, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4438)
!4436 = !DISubroutineType(types: !4437)
!4437 = !{null, !4401}
!4438 = !{!4439}
!4439 = !DILocalVariable(name: "cursor", arg: 1, scope: !4435, file: !2, line: 359, type: !4401)
!4440 = !DILocation(line: 359, column: 66, scope: !4435)
!4441 = !DILocation(line: 361, column: 2, scope: !4435)
!4442 = !DILocation(line: 361, column: 10, scope: !4435)
!4443 = !DILocation(line: 361, column: 16, scope: !4435)
!4444 = !DILocation(line: 362, column: 2, scope: !4435)
!4445 = !DILocation(line: 362, column: 10, scope: !4435)
!4446 = !DILocation(line: 362, column: 21, scope: !4435)
!4447 = !DILocation(line: 363, column: 40, scope: !4435)
!4448 = !DILocation(line: 363, column: 48, scope: !4435)
!4449 = !DILocation(line: 363, column: 19, scope: !4435)
!4450 = !DILocation(line: 363, column: 2, scope: !4435)
!4451 = !DILocation(line: 363, column: 10, scope: !4435)
!4452 = !DILocation(line: 363, column: 17, scope: !4435)
!4453 = !DILocation(line: 364, column: 6, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4435, file: !2, line: 364, column: 6)
!4455 = !DILocation(line: 364, column: 14, scope: !4454)
!4456 = !DILocation(line: 364, column: 6, scope: !4435)
!4457 = !DILocation(line: 365, column: 24, scope: !4454)
!4458 = !DILocation(line: 365, column: 32, scope: !4454)
!4459 = !DILocation(line: 365, column: 40, scope: !4454)
!4460 = !DILocation(line: 365, column: 3, scope: !4454)
!4461 = !DILocation(line: 365, column: 11, scope: !4454)
!4462 = !DILocation(line: 365, column: 22, scope: !4454)
!4463 = !DILocation(line: 366, column: 2, scope: !4435)
!4464 = !DILocation(line: 366, column: 10, scope: !4435)
!4465 = !DILocation(line: 366, column: 23, scope: !4435)
!4466 = !DILocation(line: 367, column: 1, scope: !4435)
!4467 = distinct !DISubprogram(name: "dma_resv_iter_walk_unlocked", scope: !2, file: !2, line: 370, type: !4436, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4468)
!4468 = !{!4469}
!4469 = !DILocalVariable(name: "cursor", arg: 1, scope: !4467, file: !2, line: 370, type: !4401)
!4470 = !DILocation(line: 370, column: 63, scope: !4467)
!4471 = !DILocation(line: 372, column: 7, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4467, file: !2, line: 372, column: 6)
!4473 = !DILocation(line: 372, column: 15, scope: !4472)
!4474 = !DILocation(line: 372, column: 6, scope: !4467)
!4475 = !DILocation(line: 373, column: 3, scope: !4472)
!4476 = !DILocation(line: 375, column: 2, scope: !4467)
!4477 = !DILocation(line: 377, column: 17, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4467, file: !2, line: 375, column: 5)
!4479 = !DILocation(line: 377, column: 25, scope: !4478)
!4480 = !DILocation(line: 377, column: 3, scope: !4478)
!4481 = !DILocation(line: 379, column: 7, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4478, file: !2, line: 379, column: 7)
!4483 = !DILocation(line: 379, column: 15, scope: !4482)
!4484 = !DILocation(line: 379, column: 24, scope: !4482)
!4485 = !DILocation(line: 379, column: 32, scope: !4482)
!4486 = !DILocation(line: 379, column: 21, scope: !4482)
!4487 = !DILocation(line: 379, column: 7, scope: !4478)
!4488 = !DILocation(line: 380, column: 4, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4482, file: !2, line: 379, column: 44)
!4490 = !DILocation(line: 380, column: 12, scope: !4489)
!4491 = !DILocation(line: 380, column: 18, scope: !4489)
!4492 = !DILocation(line: 381, column: 4, scope: !4489)
!4493 = !DILocation(line: 385, column: 23, scope: !4478)
!4494 = !DILocation(line: 385, column: 31, scope: !4478)
!4495 = !DILocation(line: 385, column: 39, scope: !4478)
!4496 = !DILocation(line: 385, column: 47, scope: !4478)
!4497 = !DILocation(line: 385, column: 52, scope: !4478)
!4498 = !DILocation(line: 386, column: 9, scope: !4478)
!4499 = !DILocation(line: 386, column: 17, scope: !4478)
!4500 = !DILocation(line: 386, column: 23, scope: !4478)
!4501 = !DILocation(line: 386, column: 31, scope: !4478)
!4502 = !DILocation(line: 387, column: 10, scope: !4478)
!4503 = !DILocation(line: 387, column: 18, scope: !4478)
!4504 = !DILocation(line: 385, column: 3, scope: !4478)
!4505 = !DILocation(line: 388, column: 37, scope: !4478)
!4506 = !DILocation(line: 388, column: 45, scope: !4478)
!4507 = !DILocation(line: 388, column: 19, scope: !4478)
!4508 = !DILocation(line: 388, column: 3, scope: !4478)
!4509 = !DILocation(line: 388, column: 11, scope: !4478)
!4510 = !DILocation(line: 388, column: 17, scope: !4478)
!4511 = !DILocation(line: 389, column: 8, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4478, file: !2, line: 389, column: 7)
!4513 = !DILocation(line: 389, column: 16, scope: !4512)
!4514 = !DILocation(line: 389, column: 7, scope: !4478)
!4515 = !DILocation(line: 390, column: 35, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4512, file: !2, line: 389, column: 23)
!4517 = !DILocation(line: 390, column: 4, scope: !4516)
!4518 = !DILocation(line: 391, column: 4, scope: !4516)
!4519 = !DILocation(line: 394, column: 30, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4478, file: !2, line: 394, column: 7)
!4521 = !DILocation(line: 394, column: 38, scope: !4520)
!4522 = !DILocation(line: 394, column: 8, scope: !4520)
!4523 = !DILocation(line: 394, column: 45, scope: !4520)
!4524 = !DILocation(line: 395, column: 7, scope: !4520)
!4525 = !DILocation(line: 395, column: 15, scope: !4520)
!4526 = !DILocation(line: 395, column: 24, scope: !4520)
!4527 = !DILocation(line: 395, column: 32, scope: !4520)
!4528 = !DILocation(line: 395, column: 21, scope: !4520)
!4529 = !DILocation(line: 394, column: 7, scope: !4478)
!4530 = !DILocation(line: 396, column: 4, scope: !4520)
!4531 = !DILocation(line: 397, column: 2, scope: !4478)
!4532 = distinct !{!4532, !4476, !4533, !3751}
!4533 = !DILocation(line: 397, column: 15, scope: !4467)
!4534 = !DILocation(line: 398, column: 1, scope: !4467)
!4535 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !4426, file: !4426, line: 813, type: !3033, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14)
!4536 = !DILocation(line: 815, column: 2, scope: !4535)
!4537 = !DILocation(line: 815, column: 2, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4535, file: !4426, line: 815, column: 2)
!4539 = !DILocation(line: 818, column: 2, scope: !4535)
!4540 = !DILocation(line: 819, column: 2, scope: !4535)
!4541 = !DILocation(line: 819, column: 2, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4535, file: !4426, line: 819, column: 2)
!4543 = !DILocation(line: 820, column: 1, scope: !4535)
!4544 = distinct !DISubprogram(name: "dma_resv_iter_next_unlocked", scope: !2, file: !2, line: 435, type: !4399, scopeLine: 436, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4545)
!4545 = !{!4546, !4547}
!4546 = !DILocalVariable(name: "cursor", arg: 1, scope: !4544, file: !2, line: 435, type: !4401)
!4547 = !DILocalVariable(name: "restart", scope: !4544, file: !2, line: 437, type: !199)
!4548 = !DILocation(line: 435, column: 69, scope: !4544)
!4549 = !DILocation(line: 437, column: 2, scope: !4544)
!4550 = !DILocation(line: 437, column: 7, scope: !4544)
!4551 = !DILocation(line: 439, column: 2, scope: !4544)
!4552 = !DILocation(line: 440, column: 2, scope: !4544)
!4553 = !DILocation(line: 440, column: 10, scope: !4544)
!4554 = !DILocation(line: 440, column: 23, scope: !4544)
!4555 = !DILocation(line: 441, column: 33, scope: !4544)
!4556 = !DILocation(line: 441, column: 41, scope: !4544)
!4557 = !DILocation(line: 441, column: 12, scope: !4544)
!4558 = !DILocation(line: 441, column: 49, scope: !4544)
!4559 = !DILocation(line: 441, column: 57, scope: !4544)
!4560 = !DILocation(line: 441, column: 46, scope: !4544)
!4561 = !DILocation(line: 441, column: 10, scope: !4544)
!4562 = !DILocation(line: 442, column: 2, scope: !4544)
!4563 = !DILocation(line: 443, column: 7, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4565, file: !2, line: 443, column: 7)
!4565 = distinct !DILexicalBlock(scope: !4544, file: !2, line: 442, column: 5)
!4566 = !{i8 0, i8 2}
!4567 = !DILocation(line: 443, column: 7, scope: !4565)
!4568 = !DILocation(line: 444, column: 35, scope: !4564)
!4569 = !DILocation(line: 444, column: 4, scope: !4564)
!4570 = !DILocation(line: 445, column: 31, scope: !4565)
!4571 = !DILocation(line: 445, column: 3, scope: !4565)
!4572 = !DILocation(line: 446, column: 11, scope: !4565)
!4573 = !DILocation(line: 447, column: 2, scope: !4565)
!4574 = !DILocation(line: 447, column: 32, scope: !4544)
!4575 = !DILocation(line: 447, column: 40, scope: !4544)
!4576 = !DILocation(line: 447, column: 11, scope: !4544)
!4577 = !DILocation(line: 447, column: 48, scope: !4544)
!4578 = !DILocation(line: 447, column: 56, scope: !4544)
!4579 = !DILocation(line: 447, column: 45, scope: !4544)
!4580 = distinct !{!4580, !4562, !4581, !3750, !3751}
!4581 = !DILocation(line: 447, column: 62, scope: !4544)
!4582 = !DILocation(line: 448, column: 2, scope: !4544)
!4583 = !DILocation(line: 450, column: 9, scope: !4544)
!4584 = !DILocation(line: 450, column: 17, scope: !4544)
!4585 = !DILocation(line: 451, column: 1, scope: !4544)
!4586 = !DILocation(line: 450, column: 2, scope: !4544)
!4587 = distinct !DISubprogram(name: "dma_resv_iter_first", scope: !2, file: !2, line: 463, type: !4399, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4588)
!4588 = !{!4589, !4590}
!4589 = !DILocalVariable(name: "cursor", arg: 1, scope: !4587, file: !2, line: 463, type: !4401)
!4590 = !DILocalVariable(name: "fence", scope: !4587, file: !2, line: 465, type: !147)
!4591 = !DILocation(line: 463, column: 61, scope: !4587)
!4592 = !DILocation(line: 465, column: 2, scope: !4587)
!4593 = !DILocation(line: 465, column: 20, scope: !4587)
!4594 = !DILocation(line: 467, column: 2, scope: !4587)
!4595 = !DILocation(line: 467, column: 2, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4587, file: !2, line: 467, column: 2)
!4597 = !DILocation(line: 469, column: 2, scope: !4587)
!4598 = !DILocation(line: 469, column: 10, scope: !4587)
!4599 = !DILocation(line: 469, column: 16, scope: !4587)
!4600 = !DILocation(line: 470, column: 40, scope: !4587)
!4601 = !DILocation(line: 470, column: 48, scope: !4587)
!4602 = !DILocation(line: 470, column: 19, scope: !4587)
!4603 = !DILocation(line: 470, column: 2, scope: !4587)
!4604 = !DILocation(line: 470, column: 10, scope: !4587)
!4605 = !DILocation(line: 470, column: 17, scope: !4587)
!4606 = !DILocation(line: 472, column: 29, scope: !4587)
!4607 = !DILocation(line: 472, column: 10, scope: !4587)
!4608 = !DILocation(line: 472, column: 8, scope: !4587)
!4609 = !DILocation(line: 473, column: 2, scope: !4587)
!4610 = !DILocation(line: 473, column: 10, scope: !4587)
!4611 = !DILocation(line: 473, column: 23, scope: !4587)
!4612 = !DILocation(line: 474, column: 9, scope: !4587)
!4613 = !DILocation(line: 475, column: 1, scope: !4587)
!4614 = !DILocation(line: 474, column: 2, scope: !4587)
!4615 = distinct !DISubprogram(name: "dma_resv_iter_next", scope: !2, file: !2, line: 485, type: !4399, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4616)
!4616 = !{!4617, !4618}
!4617 = !DILocalVariable(name: "cursor", arg: 1, scope: !4615, file: !2, line: 485, type: !4401)
!4618 = !DILocalVariable(name: "fence", scope: !4615, file: !2, line: 487, type: !147)
!4619 = !DILocation(line: 485, column: 60, scope: !4615)
!4620 = !DILocation(line: 487, column: 2, scope: !4615)
!4621 = !DILocation(line: 487, column: 20, scope: !4615)
!4622 = !DILocation(line: 489, column: 2, scope: !4615)
!4623 = !DILocation(line: 489, column: 2, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4615, file: !2, line: 489, column: 2)
!4625 = !DILocation(line: 491, column: 2, scope: !4615)
!4626 = !DILocation(line: 491, column: 10, scope: !4615)
!4627 = !DILocation(line: 491, column: 23, scope: !4615)
!4628 = !DILocation(line: 493, column: 2, scope: !4615)
!4629 = !DILocation(line: 494, column: 8, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4631, file: !2, line: 494, column: 7)
!4631 = distinct !DILexicalBlock(scope: !4615, file: !2, line: 493, column: 5)
!4632 = !DILocation(line: 494, column: 16, scope: !4630)
!4633 = !DILocation(line: 494, column: 23, scope: !4630)
!4634 = !DILocation(line: 495, column: 7, scope: !4630)
!4635 = !DILocation(line: 495, column: 15, scope: !4630)
!4636 = !DILocation(line: 495, column: 24, scope: !4630)
!4637 = !DILocation(line: 495, column: 32, scope: !4630)
!4638 = !DILocation(line: 495, column: 40, scope: !4630)
!4639 = !DILocation(line: 495, column: 21, scope: !4630)
!4640 = !DILocation(line: 494, column: 7, scope: !4631)
!4641 = !DILocation(line: 496, column: 4, scope: !4630)
!4642 = !DILocation(line: 498, column: 23, scope: !4631)
!4643 = !DILocation(line: 498, column: 31, scope: !4631)
!4644 = !DILocation(line: 498, column: 39, scope: !4631)
!4645 = !DILocation(line: 498, column: 47, scope: !4631)
!4646 = !DILocation(line: 498, column: 52, scope: !4631)
!4647 = !DILocation(line: 499, column: 9, scope: !4631)
!4648 = !DILocation(line: 499, column: 17, scope: !4631)
!4649 = !DILocation(line: 499, column: 31, scope: !4631)
!4650 = !DILocation(line: 499, column: 39, scope: !4631)
!4651 = !DILocation(line: 498, column: 3, scope: !4631)
!4652 = !DILocation(line: 500, column: 2, scope: !4631)
!4653 = !DILocation(line: 500, column: 11, scope: !4615)
!4654 = !DILocation(line: 500, column: 19, scope: !4615)
!4655 = !DILocation(line: 500, column: 33, scope: !4615)
!4656 = !DILocation(line: 500, column: 41, scope: !4615)
!4657 = !DILocation(line: 500, column: 31, scope: !4615)
!4658 = distinct !{!4658, !4628, !4659, !3750, !3751}
!4659 = !DILocation(line: 500, column: 46, scope: !4615)
!4660 = !DILocation(line: 502, column: 9, scope: !4615)
!4661 = !DILocation(line: 502, column: 2, scope: !4615)
!4662 = !DILocation(line: 503, column: 1, scope: !4615)
!4663 = distinct !DISubprogram(name: "dma_resv_copy_fences", scope: !2, file: !2, line: 513, type: !4664, scopeLine: 514, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4666)
!4664 = !DISubroutineType(types: !4665)
!4665 = !{!176, !348, !348}
!4666 = !{!4667, !4668, !4669, !4670, !4671, !4672, !4674}
!4667 = !DILocalVariable(name: "dst", arg: 1, scope: !4663, file: !2, line: 513, type: !348)
!4668 = !DILocalVariable(name: "src", arg: 2, scope: !4663, file: !2, line: 513, type: !348)
!4669 = !DILocalVariable(name: "cursor", scope: !4663, file: !2, line: 515, type: !3618)
!4670 = !DILocalVariable(name: "list", scope: !4663, file: !2, line: 516, type: !126)
!4671 = !DILocalVariable(name: "f", scope: !4663, file: !2, line: 517, type: !147)
!4672 = !DILocalVariable(name: "__tmp", scope: !4673, file: !2, line: 543, type: !126)
!4673 = distinct !DILexicalBlock(scope: !4663, file: !2, line: 543, column: 9)
!4674 = !DILocalVariable(name: "_r_a_p__v", scope: !4675, file: !2, line: 543, type: !269)
!4675 = distinct !DILexicalBlock(scope: !4673, file: !2, line: 543, column: 9)
!4676 = !DILocation(line: 513, column: 43, scope: !4663)
!4677 = !DILocation(line: 513, column: 65, scope: !4663)
!4678 = !DILocation(line: 515, column: 2, scope: !4663)
!4679 = !DILocation(line: 515, column: 23, scope: !4663)
!4680 = !DILocation(line: 516, column: 2, scope: !4663)
!4681 = !DILocation(line: 516, column: 24, scope: !4663)
!4682 = !DILocation(line: 517, column: 2, scope: !4663)
!4683 = !DILocation(line: 517, column: 20, scope: !4663)
!4684 = !DILocation(line: 519, column: 2, scope: !4663)
!4685 = !DILocation(line: 519, column: 2, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4663, file: !2, line: 519, column: 2)
!4687 = !DILocation(line: 521, column: 7, scope: !4663)
!4688 = !DILocation(line: 523, column: 31, scope: !4663)
!4689 = !DILocation(line: 523, column: 2, scope: !4663)
!4690 = !DILocation(line: 524, column: 2, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4663, file: !2, line: 524, column: 2)
!4692 = !DILocation(line: 524, column: 2, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4691, file: !2, line: 524, column: 2)
!4694 = !DILocation(line: 526, column: 7, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4696, file: !2, line: 526, column: 7)
!4696 = distinct !DILexicalBlock(scope: !4693, file: !2, line: 524, column: 47)
!4697 = !DILocation(line: 526, column: 7, scope: !4696)
!4698 = !DILocation(line: 527, column: 23, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4695, file: !2, line: 526, column: 44)
!4700 = !DILocation(line: 527, column: 4, scope: !4699)
!4701 = !DILocation(line: 529, column: 38, scope: !4699)
!4702 = !DILocation(line: 529, column: 11, scope: !4699)
!4703 = !DILocation(line: 529, column: 9, scope: !4699)
!4704 = !DILocation(line: 530, column: 9, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4699, file: !2, line: 530, column: 8)
!4706 = !DILocation(line: 530, column: 8, scope: !4699)
!4707 = !DILocation(line: 531, column: 5, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4705, file: !2, line: 530, column: 15)
!4709 = !DILocation(line: 532, column: 5, scope: !4708)
!4710 = !DILocation(line: 534, column: 4, scope: !4699)
!4711 = !DILocation(line: 534, column: 10, scope: !4699)
!4712 = !DILocation(line: 534, column: 21, scope: !4699)
!4713 = !DILocation(line: 535, column: 3, scope: !4699)
!4714 = !DILocation(line: 537, column: 17, scope: !4696)
!4715 = !DILocation(line: 537, column: 3, scope: !4696)
!4716 = !DILocation(line: 538, column: 21, scope: !4696)
!4717 = !DILocation(line: 538, column: 27, scope: !4696)
!4718 = !DILocation(line: 538, column: 33, scope: !4696)
!4719 = !DILocation(line: 538, column: 43, scope: !4696)
!4720 = !DILocation(line: 538, column: 47, scope: !4696)
!4721 = !DILocation(line: 539, column: 7, scope: !4696)
!4722 = !DILocation(line: 538, column: 3, scope: !4696)
!4723 = !DILocation(line: 540, column: 2, scope: !4696)
!4724 = distinct !{!4724, !4690, !4725, !3750, !3751}
!4725 = !DILocation(line: 540, column: 2, scope: !4691)
!4726 = !DILocation(line: 541, column: 2, scope: !4663)
!4727 = !DILocation(line: 543, column: 9, scope: !4673)
!4728 = !DILocation(line: 543, column: 9, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4673, file: !2, line: 543, column: 9)
!4730 = !DILocation(line: 543, column: 9, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4729, file: !2, line: 543, column: 9)
!4732 = !DILocation(line: 543, column: 9, scope: !4675)
!4733 = !DILocation(line: 543, column: 9, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4675, file: !2, line: 543, column: 9)
!4735 = !DILocation(line: 543, column: 9, scope: !4736)
!4736 = distinct !DILexicalBlock(scope: !4734, file: !2, line: 543, column: 9)
!4737 = !DILocation(line: 543, column: 9, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4736, file: !2, line: 543, column: 9)
!4739 = !DILocation(line: 543, column: 9, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4736, file: !2, line: 543, column: 9)
!4741 = !DILocation(line: 543, column: 9, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4734, file: !2, line: 543, column: 9)
!4743 = !DILocation(line: 543, column: 9, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4742, file: !2, line: 543, column: 9)
!4745 = !DILocation(line: 543, column: 9, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4742, file: !2, line: 543, column: 9)
!4747 = !DILocation(line: 543, column: 9, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4746, file: !2, line: 543, column: 9)
!4749 = !{i64 2154137770}
!4750 = !DILocation(line: 543, column: 9, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4746, file: !2, line: 543, column: 9)
!4752 = !DILocation(line: 543, column: 9, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4751, file: !2, line: 543, column: 9)
!4754 = !DILocation(line: 543, column: 9, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4751, file: !2, line: 543, column: 9)
!4756 = !DILocation(line: 543, column: 9, scope: !4663)
!4757 = !DILocation(line: 543, column: 7, scope: !4663)
!4758 = !DILocation(line: 544, column: 21, scope: !4663)
!4759 = !DILocation(line: 544, column: 2, scope: !4663)
!4760 = !DILocation(line: 545, column: 2, scope: !4663)
!4761 = !DILocation(line: 546, column: 1, scope: !4663)
!4762 = distinct !DISubprogram(name: "dma_resv_iter_begin", scope: !86, file: !86, line: 230, type: !4763, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4765)
!4763 = !DISubroutineType(types: !4764)
!4764 = !{null, !4401, !348, !85}
!4765 = !{!4766, !4767, !4768}
!4766 = !DILocalVariable(name: "cursor", arg: 1, scope: !4762, file: !86, line: 230, type: !4401)
!4767 = !DILocalVariable(name: "obj", arg: 2, scope: !4762, file: !86, line: 231, type: !348)
!4768 = !DILocalVariable(name: "usage", arg: 3, scope: !4762, file: !86, line: 232, type: !85)
!4769 = !DILocation(line: 230, column: 62, scope: !4762)
!4770 = !DILocation(line: 231, column: 29, scope: !4762)
!4771 = !DILocation(line: 232, column: 32, scope: !4762)
!4772 = !DILocation(line: 234, column: 16, scope: !4762)
!4773 = !DILocation(line: 234, column: 2, scope: !4762)
!4774 = !DILocation(line: 234, column: 10, scope: !4762)
!4775 = !DILocation(line: 234, column: 14, scope: !4762)
!4776 = !DILocation(line: 235, column: 18, scope: !4762)
!4777 = !DILocation(line: 235, column: 2, scope: !4762)
!4778 = !DILocation(line: 235, column: 10, scope: !4762)
!4779 = !DILocation(line: 235, column: 16, scope: !4762)
!4780 = !DILocation(line: 236, column: 2, scope: !4762)
!4781 = !DILocation(line: 236, column: 10, scope: !4762)
!4782 = !DILocation(line: 236, column: 16, scope: !4762)
!4783 = !DILocation(line: 237, column: 1, scope: !4762)
!4784 = distinct !DISubprogram(name: "dma_resv_iter_is_restarted", scope: !86, file: !86, line: 269, type: !4785, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4787)
!4785 = !DISubroutineType(types: !4786)
!4786 = !{!199, !4401}
!4787 = !{!4788}
!4788 = !DILocalVariable(name: "cursor", arg: 1, scope: !4784, file: !86, line: 269, type: !4401)
!4789 = !DILocation(line: 269, column: 69, scope: !4784)
!4790 = !DILocation(line: 271, column: 9, scope: !4784)
!4791 = !DILocation(line: 271, column: 17, scope: !4784)
!4792 = !DILocation(line: 271, column: 2, scope: !4784)
!4793 = distinct !DISubprogram(name: "dma_resv_iter_end", scope: !86, file: !86, line: 246, type: !4436, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4794)
!4794 = !{!4795}
!4795 = !DILocalVariable(name: "cursor", arg: 1, scope: !4793, file: !86, line: 246, type: !4401)
!4796 = !DILocation(line: 246, column: 60, scope: !4793)
!4797 = !DILocation(line: 248, column: 16, scope: !4793)
!4798 = !DILocation(line: 248, column: 24, scope: !4793)
!4799 = !DILocation(line: 248, column: 2, scope: !4793)
!4800 = !DILocation(line: 249, column: 1, scope: !4793)
!4801 = distinct !DISubprogram(name: "dma_resv_iter_usage", scope: !86, file: !86, line: 258, type: !4802, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4804)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!85, !4401}
!4804 = !{!4805}
!4805 = !DILocalVariable(name: "cursor", arg: 1, scope: !4801, file: !86, line: 258, type: !4401)
!4806 = !DILocation(line: 258, column: 43, scope: !4801)
!4807 = !DILocation(line: 260, column: 9, scope: !4801)
!4808 = !DILocation(line: 260, column: 17, scope: !4801)
!4809 = !DILocation(line: 260, column: 2, scope: !4801)
!4810 = distinct !DISubprogram(name: "dma_resv_get_fences", scope: !2, file: !2, line: 561, type: !4811, scopeLine: 563, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4814)
!4811 = !DISubroutineType(types: !4812)
!4812 = !{!176, !348, !85, !1711, !4813}
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4814 = !{!4815, !4816, !4817, !4818, !4819, !4820, !4821, !4827}
!4815 = !DILocalVariable(name: "obj", arg: 1, scope: !4810, file: !2, line: 561, type: !348)
!4816 = !DILocalVariable(name: "usage", arg: 2, scope: !4810, file: !2, line: 561, type: !85)
!4817 = !DILocalVariable(name: "num_fences", arg: 3, scope: !4810, file: !2, line: 562, type: !1711)
!4818 = !DILocalVariable(name: "fences", arg: 4, scope: !4810, file: !2, line: 562, type: !4813)
!4819 = !DILocalVariable(name: "cursor", scope: !4810, file: !2, line: 564, type: !3618)
!4820 = !DILocalVariable(name: "fence", scope: !4810, file: !2, line: 565, type: !147)
!4821 = !DILocalVariable(name: "new_fences", scope: !4822, file: !2, line: 574, type: !4032)
!4822 = distinct !DILexicalBlock(scope: !4823, file: !2, line: 573, column: 44)
!4823 = distinct !DILexicalBlock(scope: !4824, file: !2, line: 573, column: 7)
!4824 = distinct !DILexicalBlock(scope: !4825, file: !2, line: 571, column: 51)
!4825 = distinct !DILexicalBlock(scope: !4826, file: !2, line: 571, column: 2)
!4826 = distinct !DILexicalBlock(scope: !4810, file: !2, line: 571, column: 2)
!4827 = !DILocalVariable(name: "count", scope: !4822, file: !2, line: 575, type: !18)
!4828 = !DILocation(line: 561, column: 42, scope: !4810)
!4829 = !DILocation(line: 561, column: 67, scope: !4810)
!4830 = !DILocation(line: 562, column: 18, scope: !4810)
!4831 = !DILocation(line: 562, column: 50, scope: !4810)
!4832 = !DILocation(line: 564, column: 2, scope: !4810)
!4833 = !DILocation(line: 564, column: 23, scope: !4810)
!4834 = !DILocation(line: 565, column: 2, scope: !4810)
!4835 = !DILocation(line: 565, column: 20, scope: !4810)
!4836 = !DILocation(line: 567, column: 3, scope: !4810)
!4837 = !DILocation(line: 567, column: 14, scope: !4810)
!4838 = !DILocation(line: 568, column: 3, scope: !4810)
!4839 = !DILocation(line: 568, column: 10, scope: !4810)
!4840 = !DILocation(line: 570, column: 31, scope: !4810)
!4841 = !DILocation(line: 570, column: 36, scope: !4810)
!4842 = !DILocation(line: 570, column: 2, scope: !4810)
!4843 = !DILocation(line: 571, column: 2, scope: !4826)
!4844 = !DILocation(line: 571, column: 2, scope: !4825)
!4845 = !DILocation(line: 573, column: 7, scope: !4823)
!4846 = !DILocation(line: 573, column: 7, scope: !4824)
!4847 = !DILocation(line: 574, column: 4, scope: !4822)
!4848 = !DILocation(line: 574, column: 23, scope: !4822)
!4849 = !DILocation(line: 575, column: 4, scope: !4822)
!4850 = !DILocation(line: 575, column: 17, scope: !4822)
!4851 = !DILocation(line: 577, column: 4, scope: !4822)
!4852 = !DILocation(line: 577, column: 12, scope: !4822)
!4853 = !DILocation(line: 577, column: 11, scope: !4822)
!4854 = !DILocation(line: 578, column: 21, scope: !4822)
!4855 = !DILocation(line: 578, column: 20, scope: !4822)
!4856 = !DILocation(line: 578, column: 33, scope: !4822)
!4857 = !DILocation(line: 578, column: 29, scope: !4822)
!4858 = !DILocation(line: 578, column: 19, scope: !4822)
!4859 = !DILocation(line: 578, column: 5, scope: !4822)
!4860 = distinct !{!4860, !4851, !4861, !3750, !3751}
!4861 = !DILocation(line: 578, column: 45, scope: !4822)
!4862 = !DILocation(line: 580, column: 19, scope: !4822)
!4863 = !DILocation(line: 580, column: 30, scope: !4822)
!4864 = !DILocation(line: 580, column: 10, scope: !4822)
!4865 = !DILocation(line: 583, column: 33, scope: !4822)
!4866 = !DILocation(line: 583, column: 32, scope: !4822)
!4867 = !DILocation(line: 583, column: 41, scope: !4822)
!4868 = !DILocation(line: 583, column: 17, scope: !4822)
!4869 = !DILocation(line: 583, column: 15, scope: !4822)
!4870 = !DILocation(line: 586, column: 8, scope: !4871)
!4871 = distinct !DILexicalBlock(scope: !4822, file: !2, line: 586, column: 8)
!4872 = !DILocation(line: 586, column: 14, scope: !4871)
!4873 = !DILocation(line: 586, column: 18, scope: !4871)
!4874 = !DILocation(line: 586, column: 8, scope: !4822)
!4875 = !DILocation(line: 587, column: 12, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4871, file: !2, line: 586, column: 30)
!4877 = !DILocation(line: 587, column: 11, scope: !4876)
!4878 = !DILocation(line: 587, column: 5, scope: !4876)
!4879 = !DILocation(line: 588, column: 6, scope: !4876)
!4880 = !DILocation(line: 588, column: 13, scope: !4876)
!4881 = !DILocation(line: 589, column: 6, scope: !4876)
!4882 = !DILocation(line: 589, column: 17, scope: !4876)
!4883 = !DILocation(line: 590, column: 5, scope: !4876)
!4884 = !DILocation(line: 591, column: 5, scope: !4876)
!4885 = !DILocation(line: 593, column: 14, scope: !4822)
!4886 = !DILocation(line: 593, column: 5, scope: !4822)
!4887 = !DILocation(line: 593, column: 12, scope: !4822)
!4888 = !DILocation(line: 594, column: 3, scope: !4823)
!4889 = !DILocation(line: 594, column: 3, scope: !4822)
!4890 = !DILocation(line: 596, column: 46, scope: !4824)
!4891 = !DILocation(line: 596, column: 32, scope: !4824)
!4892 = !DILocation(line: 596, column: 5, scope: !4824)
!4893 = !DILocation(line: 596, column: 4, scope: !4824)
!4894 = !DILocation(line: 596, column: 15, scope: !4824)
!4895 = !DILocation(line: 596, column: 26, scope: !4824)
!4896 = !DILocation(line: 596, column: 3, scope: !4824)
!4897 = !DILocation(line: 596, column: 30, scope: !4824)
!4898 = !DILocation(line: 597, column: 2, scope: !4824)
!4899 = distinct !{!4899, !4843, !4900, !3750, !3751}
!4900 = !DILocation(line: 597, column: 2, scope: !4826)
!4901 = !DILocation(line: 598, column: 2, scope: !4810)
!4902 = !DILocation(line: 600, column: 2, scope: !4810)
!4903 = !DILocation(line: 601, column: 1, scope: !4810)
!4904 = distinct !DISubprogram(name: "krealloc_array", scope: !98, file: !98, line: 647, type: !4905, scopeLine: 651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4907)
!4905 = !DISubroutineType(types: !4906)
!4906 = !{!123, !123, !273, !273, !270}
!4907 = !{!4908, !4909, !4910, !4911, !4912}
!4908 = !DILocalVariable(name: "p", arg: 1, scope: !4904, file: !98, line: 647, type: !123)
!4909 = !DILocalVariable(name: "new_n", arg: 2, scope: !4904, file: !98, line: 648, type: !273)
!4910 = !DILocalVariable(name: "new_size", arg: 3, scope: !4904, file: !98, line: 649, type: !273)
!4911 = !DILocalVariable(name: "flags", arg: 4, scope: !4904, file: !98, line: 650, type: !270)
!4912 = !DILocalVariable(name: "bytes", scope: !4904, file: !98, line: 652, type: !273)
!4913 = !DILocation(line: 647, column: 77, scope: !4904)
!4914 = !DILocation(line: 648, column: 22, scope: !4904)
!4915 = !DILocation(line: 649, column: 22, scope: !4904)
!4916 = !DILocation(line: 650, column: 21, scope: !4904)
!4917 = !DILocation(line: 652, column: 2, scope: !4904)
!4918 = !DILocation(line: 652, column: 9, scope: !4904)
!4919 = !DILocation(line: 654, column: 6, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4904, file: !98, line: 654, column: 6)
!4921 = !DILocation(line: 654, column: 6, scope: !4904)
!4922 = !DILocation(line: 655, column: 3, scope: !4920)
!4923 = !DILocation(line: 657, column: 18, scope: !4904)
!4924 = !DILocation(line: 657, column: 21, scope: !4904)
!4925 = !DILocation(line: 657, column: 28, scope: !4904)
!4926 = !DILocation(line: 657, column: 9, scope: !4904)
!4927 = !DILocation(line: 657, column: 2, scope: !4904)
!4928 = !DILocation(line: 658, column: 1, scope: !4904)
!4929 = !DISubprogram(name: "kfree", scope: !98, file: !98, line: 227, type: !4930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4930 = !DISubroutineType(types: !4931)
!4931 = !{null, !4932}
!4932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4933, size: 64)
!4933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4934 = distinct !DISubprogram(name: "dma_resv_get_singleton", scope: !2, file: !2, line: 619, type: !4935, scopeLine: 621, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4937)
!4935 = !DISubroutineType(types: !4936)
!4936 = !{!176, !348, !85, !4032}
!4937 = !{!4938, !4939, !4940, !4941, !4962, !4963, !4964}
!4938 = !DILocalVariable(name: "obj", arg: 1, scope: !4934, file: !2, line: 619, type: !348)
!4939 = !DILocalVariable(name: "usage", arg: 2, scope: !4934, file: !2, line: 619, type: !85)
!4940 = !DILocalVariable(name: "fence", arg: 3, scope: !4934, file: !2, line: 620, type: !4032)
!4941 = !DILocalVariable(name: "array", scope: !4934, file: !2, line: 622, type: !4942)
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_array", file: !4944, line: 37, size: 960, elements: !4945)
!4944 = !DIFile(filename: "./include/linux/dma-fence-array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c96d724a719bca3fee59864ce015357f")
!4945 = !{!4946, !4947, !4948, !4949, !4950, !4951}
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4943, file: !4944, line: 38, baseType: !148, size: 512)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4943, file: !4944, line: 40, baseType: !152, size: 32, offset: 512)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "num_fences", scope: !4943, file: !4944, line: 41, baseType: !18, size: 32, offset: 544)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "num_pending", scope: !4943, file: !4944, line: 42, baseType: !172, size: 32, offset: 576)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "fences", scope: !4943, file: !4944, line: 43, baseType: !4032, size: 64, offset: 640)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4943, file: !4944, line: 45, baseType: !4952, size: 256, offset: 704)
!4952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !4953, line: 17, size: 256, elements: !4954)
!4953 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!4954 = !{!4955, !4956, !4961}
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4952, file: !4953, line: 18, baseType: !398, size: 128)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4952, file: !4953, line: 19, baseType: !4957, size: 64, offset: 128)
!4957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4958, size: 64)
!4958 = !DISubroutineType(types: !4959)
!4959 = !{null, !4960}
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4952, size: 64)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !4952, file: !4953, line: 20, baseType: !1713, size: 64, offset: 192)
!4962 = !DILocalVariable(name: "fences", scope: !4934, file: !2, line: 623, type: !4032)
!4963 = !DILocalVariable(name: "count", scope: !4934, file: !2, line: 624, type: !18)
!4964 = !DILocalVariable(name: "r", scope: !4934, file: !2, line: 625, type: !176)
!4965 = !DILocation(line: 619, column: 45, scope: !4934)
!4966 = !DILocation(line: 619, column: 70, scope: !4934)
!4967 = !DILocation(line: 620, column: 26, scope: !4934)
!4968 = !DILocation(line: 622, column: 2, scope: !4934)
!4969 = !DILocation(line: 622, column: 26, scope: !4934)
!4970 = !DILocation(line: 623, column: 2, scope: !4934)
!4971 = !DILocation(line: 623, column: 21, scope: !4934)
!4972 = !DILocation(line: 624, column: 2, scope: !4934)
!4973 = !DILocation(line: 624, column: 11, scope: !4934)
!4974 = !DILocation(line: 625, column: 2, scope: !4934)
!4975 = !DILocation(line: 625, column: 6, scope: !4934)
!4976 = !DILocation(line: 627, column: 26, scope: !4934)
!4977 = !DILocation(line: 627, column: 31, scope: !4934)
!4978 = !DILocation(line: 627, column: 6, scope: !4934)
!4979 = !DILocation(line: 627, column: 4, scope: !4934)
!4980 = !DILocation(line: 628, column: 13, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4934, file: !2, line: 628, column: 13)
!4982 = !DILocation(line: 628, column: 13, scope: !4934)
!4983 = !DILocation(line: 629, column: 10, scope: !4981)
!4984 = !DILocation(line: 629, column: 3, scope: !4981)
!4985 = !DILocation(line: 631, column: 6, scope: !4986)
!4986 = distinct !DILexicalBlock(scope: !4934, file: !2, line: 631, column: 6)
!4987 = !DILocation(line: 631, column: 12, scope: !4986)
!4988 = !DILocation(line: 631, column: 6, scope: !4934)
!4989 = !DILocation(line: 632, column: 4, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4986, file: !2, line: 631, column: 18)
!4991 = !DILocation(line: 632, column: 10, scope: !4990)
!4992 = !DILocation(line: 633, column: 3, scope: !4990)
!4993 = !DILocation(line: 636, column: 6, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4934, file: !2, line: 636, column: 6)
!4995 = !DILocation(line: 636, column: 12, scope: !4994)
!4996 = !DILocation(line: 636, column: 6, scope: !4934)
!4997 = !DILocation(line: 637, column: 12, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4994, file: !2, line: 636, column: 18)
!4999 = !DILocation(line: 637, column: 4, scope: !4998)
!5000 = !DILocation(line: 637, column: 10, scope: !4998)
!5001 = !DILocation(line: 638, column: 9, scope: !4998)
!5002 = !DILocation(line: 638, column: 3, scope: !4998)
!5003 = !DILocation(line: 639, column: 3, scope: !4998)
!5004 = !DILocation(line: 642, column: 33, scope: !4934)
!5005 = !DILocation(line: 642, column: 40, scope: !4934)
!5006 = !DILocation(line: 643, column: 12, scope: !4934)
!5007 = !DILocation(line: 642, column: 10, scope: !4934)
!5008 = !DILocation(line: 642, column: 8, scope: !4934)
!5009 = !DILocation(line: 645, column: 7, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !4934, file: !2, line: 645, column: 6)
!5011 = !DILocation(line: 645, column: 6, scope: !4934)
!5012 = !DILocation(line: 646, column: 3, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !5010, file: !2, line: 645, column: 14)
!5014 = !DILocation(line: 646, column: 15, scope: !5013)
!5015 = !DILocation(line: 647, column: 18, scope: !5013)
!5016 = !DILocation(line: 647, column: 25, scope: !5013)
!5017 = !DILocation(line: 647, column: 4, scope: !5013)
!5018 = distinct !{!5018, !5012, !5019, !3750, !3751}
!5019 = !DILocation(line: 647, column: 31, scope: !5013)
!5020 = !DILocation(line: 648, column: 9, scope: !5013)
!5021 = !DILocation(line: 648, column: 3, scope: !5013)
!5022 = !DILocation(line: 649, column: 3, scope: !5013)
!5023 = !DILocation(line: 652, column: 12, scope: !4934)
!5024 = !DILocation(line: 652, column: 19, scope: !4934)
!5025 = !DILocation(line: 652, column: 3, scope: !4934)
!5026 = !DILocation(line: 652, column: 9, scope: !4934)
!5027 = !DILocation(line: 653, column: 2, scope: !4934)
!5028 = !DILocation(line: 654, column: 1, scope: !4934)
!5029 = !DISubprogram(name: "dma_fence_array_create", scope: !4944, file: !4944, line: 79, type: !5030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5030 = !DISubroutineType(types: !5031)
!5031 = !{!4942, !176, !4032, !249, !18, !199}
!5032 = !DISubprogram(name: "dma_fence_context_alloc", scope: !108, file: !108, line: 644, type: !5033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5033 = !DISubroutineType(types: !5034)
!5034 = !{!249, !18}
!5035 = distinct !DISubprogram(name: "dma_resv_wait_timeout", scope: !2, file: !2, line: 670, type: !5036, scopeLine: 672, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5038)
!5036 = !DISubroutineType(types: !5037)
!5037 = !{!217, !348, !85, !199, !254}
!5038 = !{!5039, !5040, !5041, !5042, !5043, !5044, !5045}
!5039 = !DILocalVariable(name: "obj", arg: 1, scope: !5035, file: !2, line: 670, type: !348)
!5040 = !DILocalVariable(name: "usage", arg: 2, scope: !5035, file: !2, line: 670, type: !85)
!5041 = !DILocalVariable(name: "intr", arg: 3, scope: !5035, file: !2, line: 671, type: !199)
!5042 = !DILocalVariable(name: "timeout", arg: 4, scope: !5035, file: !2, line: 671, type: !254)
!5043 = !DILocalVariable(name: "ret", scope: !5035, file: !2, line: 673, type: !217)
!5044 = !DILocalVariable(name: "cursor", scope: !5035, file: !2, line: 674, type: !3618)
!5045 = !DILocalVariable(name: "fence", scope: !5035, file: !2, line: 675, type: !147)
!5046 = !DILocation(line: 670, column: 45, scope: !5035)
!5047 = !DILocation(line: 670, column: 70, scope: !5035)
!5048 = !DILocation(line: 671, column: 12, scope: !5035)
!5049 = !DILocation(line: 671, column: 32, scope: !5035)
!5050 = !DILocation(line: 673, column: 2, scope: !5035)
!5051 = !DILocation(line: 673, column: 7, scope: !5035)
!5052 = !DILocation(line: 673, column: 13, scope: !5035)
!5053 = !DILocation(line: 673, column: 23, scope: !5035)
!5054 = !DILocation(line: 674, column: 2, scope: !5035)
!5055 = !DILocation(line: 674, column: 23, scope: !5035)
!5056 = !DILocation(line: 675, column: 2, scope: !5035)
!5057 = !DILocation(line: 675, column: 20, scope: !5035)
!5058 = !DILocation(line: 677, column: 31, scope: !5035)
!5059 = !DILocation(line: 677, column: 36, scope: !5035)
!5060 = !DILocation(line: 677, column: 2, scope: !5035)
!5061 = !DILocation(line: 678, column: 2, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5035, file: !2, line: 678, column: 2)
!5063 = !DILocation(line: 678, column: 2, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5062, file: !2, line: 678, column: 2)
!5065 = !DILocation(line: 680, column: 32, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5064, file: !2, line: 678, column: 51)
!5067 = !DILocation(line: 680, column: 39, scope: !5066)
!5068 = !DILocation(line: 680, column: 45, scope: !5066)
!5069 = !DILocation(line: 680, column: 9, scope: !5066)
!5070 = !DILocation(line: 680, column: 7, scope: !5066)
!5071 = !DILocation(line: 681, column: 7, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5066, file: !2, line: 681, column: 7)
!5073 = !DILocation(line: 681, column: 11, scope: !5072)
!5074 = !DILocation(line: 681, column: 7, scope: !5066)
!5075 = !DILocation(line: 682, column: 4, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !5072, file: !2, line: 681, column: 17)
!5077 = !DILocation(line: 683, column: 11, scope: !5076)
!5078 = !DILocation(line: 683, column: 4, scope: !5076)
!5079 = !DILocation(line: 685, column: 2, scope: !5066)
!5080 = distinct !{!5080, !5061, !5081, !3750, !3751}
!5081 = !DILocation(line: 685, column: 2, scope: !5062)
!5082 = !DILocation(line: 686, column: 2, scope: !5035)
!5083 = !DILocation(line: 688, column: 9, scope: !5035)
!5084 = !DILocation(line: 688, column: 2, scope: !5035)
!5085 = !DILocation(line: 689, column: 1, scope: !5035)
!5086 = !DISubprogram(name: "dma_fence_wait_timeout", scope: !108, file: !108, line: 605, type: !215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5087 = distinct !DISubprogram(name: "dma_resv_set_deadline", scope: !2, file: !2, line: 701, type: !5088, scopeLine: 703, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5090)
!5088 = !DISubroutineType(types: !5089)
!5089 = !{null, !348, !85, !232}
!5090 = !{!5091, !5092, !5093, !5094, !5095}
!5091 = !DILocalVariable(name: "obj", arg: 1, scope: !5087, file: !2, line: 701, type: !348)
!5092 = !DILocalVariable(name: "usage", arg: 2, scope: !5087, file: !2, line: 701, type: !85)
!5093 = !DILocalVariable(name: "deadline", arg: 3, scope: !5087, file: !2, line: 702, type: !232)
!5094 = !DILocalVariable(name: "cursor", scope: !5087, file: !2, line: 704, type: !3618)
!5095 = !DILocalVariable(name: "fence", scope: !5087, file: !2, line: 705, type: !147)
!5096 = !DILocation(line: 701, column: 45, scope: !5087)
!5097 = !DILocation(line: 701, column: 70, scope: !5087)
!5098 = !DILocation(line: 702, column: 15, scope: !5087)
!5099 = !DILocation(line: 704, column: 2, scope: !5087)
!5100 = !DILocation(line: 704, column: 23, scope: !5087)
!5101 = !DILocation(line: 705, column: 2, scope: !5087)
!5102 = !DILocation(line: 705, column: 20, scope: !5087)
!5103 = !DILocation(line: 707, column: 31, scope: !5087)
!5104 = !DILocation(line: 707, column: 36, scope: !5087)
!5105 = !DILocation(line: 707, column: 2, scope: !5087)
!5106 = !DILocation(line: 708, column: 2, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5087, file: !2, line: 708, column: 2)
!5108 = !DILocation(line: 708, column: 2, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5107, file: !2, line: 708, column: 2)
!5110 = !DILocation(line: 709, column: 26, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5109, file: !2, line: 708, column: 51)
!5112 = !DILocation(line: 709, column: 33, scope: !5111)
!5113 = !DILocation(line: 709, column: 3, scope: !5111)
!5114 = !DILocation(line: 710, column: 2, scope: !5111)
!5115 = distinct !{!5115, !5106, !5116, !3750, !3751}
!5116 = !DILocation(line: 710, column: 2, scope: !5107)
!5117 = !DILocation(line: 711, column: 2, scope: !5087)
!5118 = !DILocation(line: 712, column: 1, scope: !5087)
!5119 = !DISubprogram(name: "dma_fence_set_deadline", scope: !108, file: !108, line: 640, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5120 = distinct !DISubprogram(name: "dma_resv_test_signaled", scope: !2, file: !2, line: 728, type: !5121, scopeLine: 729, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5123)
!5121 = !DISubroutineType(types: !5122)
!5122 = !{!199, !348, !85}
!5123 = !{!5124, !5125, !5126, !5127}
!5124 = !DILocalVariable(name: "obj", arg: 1, scope: !5120, file: !2, line: 728, type: !348)
!5125 = !DILocalVariable(name: "usage", arg: 2, scope: !5120, file: !2, line: 728, type: !85)
!5126 = !DILocalVariable(name: "cursor", scope: !5120, file: !2, line: 730, type: !3618)
!5127 = !DILocalVariable(name: "fence", scope: !5120, file: !2, line: 731, type: !147)
!5128 = !DILocation(line: 728, column: 46, scope: !5120)
!5129 = !DILocation(line: 728, column: 71, scope: !5120)
!5130 = !DILocation(line: 730, column: 2, scope: !5120)
!5131 = !DILocation(line: 730, column: 23, scope: !5120)
!5132 = !DILocation(line: 731, column: 2, scope: !5120)
!5133 = !DILocation(line: 731, column: 20, scope: !5120)
!5134 = !DILocation(line: 733, column: 31, scope: !5120)
!5135 = !DILocation(line: 733, column: 36, scope: !5120)
!5136 = !DILocation(line: 733, column: 2, scope: !5120)
!5137 = !DILocation(line: 734, column: 2, scope: !5138)
!5138 = distinct !DILexicalBlock(scope: !5120, file: !2, line: 734, column: 2)
!5139 = !DILocation(line: 734, column: 2, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5138, file: !2, line: 734, column: 2)
!5141 = !DILocation(line: 735, column: 3, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5140, file: !2, line: 734, column: 51)
!5143 = !DILocation(line: 736, column: 3, scope: !5142)
!5144 = distinct !{!5144, !5137, !5145, !3750, !3751}
!5145 = !DILocation(line: 737, column: 2, scope: !5138)
!5146 = !DILocation(line: 738, column: 2, scope: !5120)
!5147 = !DILocation(line: 739, column: 2, scope: !5120)
!5148 = !DILocation(line: 740, column: 1, scope: !5120)
!5149 = !DILocation(line: 751, column: 41, scope: !345)
!5150 = !DILocation(line: 751, column: 63, scope: !345)
!5151 = !DILocation(line: 754, column: 2, scope: !345)
!5152 = !DILocation(line: 754, column: 23, scope: !345)
!5153 = !DILocation(line: 755, column: 2, scope: !345)
!5154 = !DILocation(line: 755, column: 20, scope: !345)
!5155 = !DILocation(line: 757, column: 2, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !345, file: !2, line: 757, column: 2)
!5157 = !DILocation(line: 757, column: 2, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5156, file: !2, line: 757, column: 2)
!5159 = !DILocation(line: 758, column: 14, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5158, file: !2, line: 757, column: 68)
!5161 = !DILocation(line: 759, column: 13, scope: !5160)
!5162 = !DILocation(line: 759, column: 7, scope: !5160)
!5163 = !DILocation(line: 758, column: 3, scope: !5160)
!5164 = !DILocation(line: 760, column: 22, scope: !5160)
!5165 = !DILocation(line: 760, column: 29, scope: !5160)
!5166 = !DILocation(line: 760, column: 3, scope: !5160)
!5167 = !DILocation(line: 761, column: 2, scope: !5160)
!5168 = distinct !{!5168, !5155, !5169, !3750, !3751}
!5169 = !DILocation(line: 761, column: 2, scope: !5156)
!5170 = !DILocation(line: 762, column: 1, scope: !345)
!5171 = !DISubprogram(name: "seq_printf", scope: !1380, file: !1380, line: 119, type: !5172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5172 = !DISubroutineType(types: !5173)
!5173 = !{null, !1378, !205, null}
!5174 = !DISubprogram(name: "dma_fence_describe", scope: !108, file: !108, line: 287, type: !5175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5175 = !DISubroutineType(types: !5176)
!5176 = !{null, !147, !1378}
!5177 = !DISubprogram(name: "__mutex_init", scope: !357, file: !357, line: 121, type: !5178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5178 = !DISubroutineType(types: !5179)
!5179 = !{null, !5180, !205, !5181}
!5180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!5181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!5182 = distinct !DISubprogram(name: "mutex_destroy", scope: !357, file: !357, line: 92, type: !5183, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5185)
!5183 = !DISubroutineType(types: !5184)
!5184 = !{null, !5180}
!5185 = !{!5186}
!5186 = !DILocalVariable(name: "lock", arg: 1, scope: !5182, file: !357, line: 92, type: !5180)
!5187 = !DILocation(line: 92, column: 48, scope: !5182)
!5188 = !DILocation(line: 92, column: 55, scope: !5182)
!5189 = distinct !DISubprogram(name: "fls", scope: !5190, file: !5190, line: 359, type: !5191, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5193)
!5190 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5191 = !DISubroutineType(types: !5192)
!5192 = !{!176, !18}
!5193 = !{!5194, !5195}
!5194 = !DILocalVariable(name: "x", arg: 1, scope: !5189, file: !5190, line: 359, type: !18)
!5195 = !DILocalVariable(name: "r", scope: !5189, file: !5190, line: 361, type: !176)
!5196 = !DILocation(line: 359, column: 45, scope: !5189)
!5197 = !DILocation(line: 361, column: 2, scope: !5189)
!5198 = !DILocation(line: 361, column: 6, scope: !5189)
!5199 = !DILocation(line: 375, column: 14, scope: !5189)
!5200 = !DILocation(line: 373, column: 2, scope: !5189)
!5201 = !{i64 378628}
!5202 = !DILocation(line: 386, column: 9, scope: !5189)
!5203 = !DILocation(line: 386, column: 11, scope: !5189)
!5204 = !DILocation(line: 387, column: 1, scope: !5189)
!5205 = !DILocation(line: 386, column: 2, scope: !5189)
!5206 = distinct !DISubprogram(name: "fls_long", scope: !5207, file: !5207, line: 204, type: !5208, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5210)
!5207 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!5208 = !DISubroutineType(types: !5209)
!5209 = !{!18, !254}
!5210 = !{!5211}
!5211 = !DILocalVariable(name: "l", arg: 1, scope: !5206, file: !5207, line: 204, type: !254)
!5212 = !DILocation(line: 204, column: 47, scope: !5206)
!5213 = !DILocation(line: 208, column: 15, scope: !5206)
!5214 = !DILocation(line: 208, column: 9, scope: !5206)
!5215 = !DILocation(line: 208, column: 2, scope: !5206)
!5216 = distinct !DISubprogram(name: "fls64", scope: !5190, file: !5190, line: 401, type: !5217, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5219)
!5217 = !DISubroutineType(types: !5218)
!5218 = !{!176, !250}
!5219 = !{!5220, !5221}
!5220 = !DILocalVariable(name: "x", arg: 1, scope: !5216, file: !5190, line: 401, type: !250)
!5221 = !DILocalVariable(name: "bitpos", scope: !5216, file: !5190, line: 403, type: !176)
!5222 = !DILocation(line: 401, column: 40, scope: !5216)
!5223 = !DILocation(line: 403, column: 2, scope: !5216)
!5224 = !DILocation(line: 403, column: 6, scope: !5216)
!5225 = !DILocation(line: 409, column: 2, scope: !5216)
!5226 = !DILocation(line: 411, column: 14, scope: !5216)
!5227 = !{i64 379594}
!5228 = !DILocation(line: 412, column: 9, scope: !5216)
!5229 = !DILocation(line: 412, column: 16, scope: !5216)
!5230 = !DILocation(line: 413, column: 1, scope: !5216)
!5231 = !DILocation(line: 412, column: 2, scope: !5216)
!5232 = !DISubprogram(name: "kmalloc_size_roundup", scope: !98, file: !98, line: 785, type: !5233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5233 = !DISubroutineType(types: !5234)
!5234 = !{!273, !273}
!5235 = distinct !DISubprogram(name: "size_add", scope: !5236, file: !5236, line: 208, type: !5237, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5239)
!5236 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!5237 = !DISubroutineType(types: !5238)
!5238 = !{!273, !273, !273}
!5239 = !{!5240, !5241, !5242}
!5240 = !DILocalVariable(name: "addend1", arg: 1, scope: !5235, file: !5236, line: 208, type: !273)
!5241 = !DILocalVariable(name: "addend2", arg: 2, scope: !5235, file: !5236, line: 208, type: !273)
!5242 = !DILocalVariable(name: "bytes", scope: !5235, file: !5236, line: 210, type: !273)
!5243 = !DILocation(line: 208, column: 51, scope: !5235)
!5244 = !DILocation(line: 208, column: 67, scope: !5235)
!5245 = !DILocation(line: 210, column: 2, scope: !5235)
!5246 = !DILocation(line: 210, column: 9, scope: !5235)
!5247 = !DILocation(line: 212, column: 6, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5235, file: !5236, line: 212, column: 6)
!5249 = !DILocation(line: 212, column: 6, scope: !5235)
!5250 = !DILocation(line: 213, column: 3, scope: !5248)
!5251 = !DILocation(line: 215, column: 9, scope: !5235)
!5252 = !DILocation(line: 215, column: 2, scope: !5235)
!5253 = !DILocation(line: 216, column: 1, scope: !5235)
!5254 = distinct !DISubprogram(name: "size_mul", scope: !5236, file: !5236, line: 189, type: !5237, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5255)
!5255 = !{!5256, !5257, !5258}
!5256 = !DILocalVariable(name: "factor1", arg: 1, scope: !5254, file: !5236, line: 189, type: !273)
!5257 = !DILocalVariable(name: "factor2", arg: 2, scope: !5254, file: !5236, line: 189, type: !273)
!5258 = !DILocalVariable(name: "bytes", scope: !5254, file: !5236, line: 191, type: !273)
!5259 = !DILocation(line: 189, column: 51, scope: !5254)
!5260 = !DILocation(line: 189, column: 67, scope: !5254)
!5261 = !DILocation(line: 191, column: 2, scope: !5254)
!5262 = !DILocation(line: 191, column: 9, scope: !5254)
!5263 = !DILocation(line: 193, column: 6, scope: !5264)
!5264 = distinct !DILexicalBlock(scope: !5254, file: !5236, line: 193, column: 6)
!5265 = !DILocation(line: 193, column: 6, scope: !5254)
!5266 = !DILocation(line: 194, column: 3, scope: !5264)
!5267 = !DILocation(line: 196, column: 9, scope: !5254)
!5268 = !DILocation(line: 196, column: 2, scope: !5254)
!5269 = !DILocation(line: 197, column: 1, scope: !5254)
!5270 = distinct !DISubprogram(name: "kmalloc", scope: !98, file: !98, line: 591, type: !5271, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5273)
!5271 = !DISubroutineType(types: !5272)
!5272 = !{!123, !273, !270}
!5273 = !{!5274, !5275, !5276}
!5274 = !DILocalVariable(name: "size", arg: 1, scope: !5270, file: !98, line: 591, type: !273)
!5275 = !DILocalVariable(name: "flags", arg: 2, scope: !5270, file: !98, line: 591, type: !270)
!5276 = !DILocalVariable(name: "index", scope: !5277, file: !98, line: 594, type: !18)
!5277 = distinct !DILexicalBlock(scope: !5278, file: !98, line: 593, column: 42)
!5278 = distinct !DILexicalBlock(scope: !5270, file: !98, line: 593, column: 6)
!5279 = !DILocation(line: 591, column: 61, scope: !5270)
!5280 = !DILocation(line: 591, column: 73, scope: !5270)
!5281 = !DILocation(line: 593, column: 27, scope: !5278)
!5282 = !DILocation(line: 593, column: 6, scope: !5278)
!5283 = !DILocation(line: 593, column: 33, scope: !5278)
!5284 = !DILocation(line: 593, column: 36, scope: !5278)
!5285 = !DILocation(line: 593, column: 6, scope: !5270)
!5286 = !DILocation(line: 594, column: 3, scope: !5277)
!5287 = !DILocation(line: 594, column: 16, scope: !5277)
!5288 = !DILocation(line: 596, column: 7, scope: !5289)
!5289 = distinct !DILexicalBlock(scope: !5277, file: !98, line: 596, column: 7)
!5290 = !DILocation(line: 596, column: 12, scope: !5289)
!5291 = !DILocation(line: 596, column: 7, scope: !5277)
!5292 = !DILocation(line: 597, column: 25, scope: !5289)
!5293 = !DILocation(line: 597, column: 31, scope: !5289)
!5294 = !DILocation(line: 597, column: 11, scope: !5289)
!5295 = !DILocation(line: 597, column: 4, scope: !5289)
!5296 = !DILocation(line: 599, column: 11, scope: !5277)
!5297 = !DILocation(line: 599, column: 9, scope: !5277)
!5298 = !DILocation(line: 601, column: 33, scope: !5277)
!5299 = !DILocation(line: 601, column: 40, scope: !5277)
!5300 = !DILocation(line: 601, column: 20, scope: !5277)
!5301 = !DILocation(line: 601, column: 5, scope: !5277)
!5302 = !DILocation(line: 601, column: 51, scope: !5277)
!5303 = !DILocation(line: 602, column: 5, scope: !5277)
!5304 = !DILocation(line: 602, column: 12, scope: !5277)
!5305 = !DILocation(line: 600, column: 10, scope: !5277)
!5306 = !DILocation(line: 600, column: 3, scope: !5277)
!5307 = !DILocation(line: 603, column: 2, scope: !5278)
!5308 = !DILocation(line: 604, column: 19, scope: !5270)
!5309 = !DILocation(line: 604, column: 25, scope: !5270)
!5310 = !DILocation(line: 604, column: 9, scope: !5270)
!5311 = !DILocation(line: 604, column: 2, scope: !5270)
!5312 = !DILocation(line: 605, column: 1, scope: !5270)
!5313 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5236, file: !5236, line: 51, type: !5314, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5316)
!5314 = !DISubroutineType(types: !5315)
!5315 = !{!199, !199}
!5316 = !{!5317}
!5317 = !DILocalVariable(name: "overflow", arg: 1, scope: !5313, file: !5236, line: 51, type: !199)
!5318 = !DILocation(line: 51, column: 60, scope: !5313)
!5319 = !DILocation(line: 53, column: 9, scope: !5313)
!5320 = !DILocation(line: 53, column: 2, scope: !5313)
!5321 = !DISubprogram(name: "kmalloc_large", scope: !98, file: !98, line: 531, type: !5271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5322 = distinct !DISubprogram(name: "__kmalloc_index", scope: !98, file: !98, line: 444, type: !5323, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5325)
!5323 = !DISubroutineType(types: !5324)
!5324 = !{!18, !273, !199}
!5325 = !{!5326, !5327}
!5326 = !DILocalVariable(name: "size", arg: 1, scope: !5322, file: !98, line: 444, type: !273)
!5327 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5322, file: !98, line: 445, type: !199)
!5328 = !DILocation(line: 444, column: 60, scope: !5322)
!5329 = !DILocation(line: 445, column: 16, scope: !5322)
!5330 = !DILocation(line: 447, column: 7, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5322, file: !98, line: 447, column: 6)
!5332 = !DILocation(line: 447, column: 6, scope: !5322)
!5333 = !DILocation(line: 448, column: 3, scope: !5331)
!5334 = !DILocation(line: 450, column: 6, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5322, file: !98, line: 450, column: 6)
!5336 = !DILocation(line: 450, column: 11, scope: !5335)
!5337 = !DILocation(line: 450, column: 6, scope: !5322)
!5338 = !DILocation(line: 451, column: 3, scope: !5335)
!5339 = !DILocation(line: 453, column: 32, scope: !5340)
!5340 = distinct !DILexicalBlock(scope: !5322, file: !98, line: 453, column: 6)
!5341 = !DILocation(line: 453, column: 37, scope: !5340)
!5342 = !DILocation(line: 453, column: 42, scope: !5340)
!5343 = !DILocation(line: 453, column: 45, scope: !5340)
!5344 = !DILocation(line: 453, column: 50, scope: !5340)
!5345 = !DILocation(line: 453, column: 6, scope: !5322)
!5346 = !DILocation(line: 454, column: 3, scope: !5340)
!5347 = !DILocation(line: 455, column: 32, scope: !5348)
!5348 = distinct !DILexicalBlock(scope: !5322, file: !98, line: 455, column: 6)
!5349 = !DILocation(line: 455, column: 37, scope: !5348)
!5350 = !DILocation(line: 455, column: 43, scope: !5348)
!5351 = !DILocation(line: 455, column: 46, scope: !5348)
!5352 = !DILocation(line: 455, column: 51, scope: !5348)
!5353 = !DILocation(line: 455, column: 6, scope: !5322)
!5354 = !DILocation(line: 456, column: 3, scope: !5348)
!5355 = !DILocation(line: 457, column: 6, scope: !5356)
!5356 = distinct !DILexicalBlock(scope: !5322, file: !98, line: 457, column: 6)
!5357 = !DILocation(line: 457, column: 11, scope: !5356)
!5358 = !DILocation(line: 457, column: 6, scope: !5322)
!5359 = !DILocation(line: 457, column: 26, scope: !5356)
!5360 = !DILocation(line: 458, column: 6, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5322, file: !98, line: 458, column: 6)
!5362 = !DILocation(line: 458, column: 11, scope: !5361)
!5363 = !DILocation(line: 458, column: 6, scope: !5322)
!5364 = !DILocation(line: 458, column: 26, scope: !5361)
!5365 = !DILocation(line: 459, column: 6, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5322, file: !98, line: 459, column: 6)
!5367 = !DILocation(line: 459, column: 11, scope: !5366)
!5368 = !DILocation(line: 459, column: 6, scope: !5322)
!5369 = !DILocation(line: 459, column: 26, scope: !5366)
!5370 = !DILocation(line: 460, column: 6, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5322, file: !98, line: 460, column: 6)
!5372 = !DILocation(line: 460, column: 11, scope: !5371)
!5373 = !DILocation(line: 460, column: 6, scope: !5322)
!5374 = !DILocation(line: 460, column: 26, scope: !5371)
!5375 = !DILocation(line: 461, column: 6, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5322, file: !98, line: 461, column: 6)
!5377 = !DILocation(line: 461, column: 11, scope: !5376)
!5378 = !DILocation(line: 461, column: 6, scope: !5322)
!5379 = !DILocation(line: 461, column: 26, scope: !5376)
!5380 = !DILocation(line: 462, column: 6, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5322, file: !98, line: 462, column: 6)
!5382 = !DILocation(line: 462, column: 11, scope: !5381)
!5383 = !DILocation(line: 462, column: 6, scope: !5322)
!5384 = !DILocation(line: 462, column: 26, scope: !5381)
!5385 = !DILocation(line: 463, column: 6, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5322, file: !98, line: 463, column: 6)
!5387 = !DILocation(line: 463, column: 11, scope: !5386)
!5388 = !DILocation(line: 463, column: 6, scope: !5322)
!5389 = !DILocation(line: 463, column: 26, scope: !5386)
!5390 = !DILocation(line: 464, column: 6, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5322, file: !98, line: 464, column: 6)
!5392 = !DILocation(line: 464, column: 11, scope: !5391)
!5393 = !DILocation(line: 464, column: 6, scope: !5322)
!5394 = !DILocation(line: 464, column: 26, scope: !5391)
!5395 = !DILocation(line: 465, column: 6, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5322, file: !98, line: 465, column: 6)
!5397 = !DILocation(line: 465, column: 11, scope: !5396)
!5398 = !DILocation(line: 465, column: 6, scope: !5322)
!5399 = !DILocation(line: 465, column: 26, scope: !5396)
!5400 = !DILocation(line: 466, column: 6, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5322, file: !98, line: 466, column: 6)
!5402 = !DILocation(line: 466, column: 11, scope: !5401)
!5403 = !DILocation(line: 466, column: 6, scope: !5322)
!5404 = !DILocation(line: 466, column: 26, scope: !5401)
!5405 = !DILocation(line: 467, column: 6, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5322, file: !98, line: 467, column: 6)
!5407 = !DILocation(line: 467, column: 11, scope: !5406)
!5408 = !DILocation(line: 467, column: 6, scope: !5322)
!5409 = !DILocation(line: 467, column: 26, scope: !5406)
!5410 = !DILocation(line: 468, column: 6, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5322, file: !98, line: 468, column: 6)
!5412 = !DILocation(line: 468, column: 11, scope: !5411)
!5413 = !DILocation(line: 468, column: 6, scope: !5322)
!5414 = !DILocation(line: 468, column: 26, scope: !5411)
!5415 = !DILocation(line: 469, column: 6, scope: !5416)
!5416 = distinct !DILexicalBlock(scope: !5322, file: !98, line: 469, column: 6)
!5417 = !DILocation(line: 469, column: 11, scope: !5416)
!5418 = !DILocation(line: 469, column: 6, scope: !5322)
!5419 = !DILocation(line: 469, column: 26, scope: !5416)
!5420 = !DILocation(line: 470, column: 6, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5322, file: !98, line: 470, column: 6)
!5422 = !DILocation(line: 470, column: 11, scope: !5421)
!5423 = !DILocation(line: 470, column: 6, scope: !5322)
!5424 = !DILocation(line: 470, column: 26, scope: !5421)
!5425 = !DILocation(line: 471, column: 6, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5322, file: !98, line: 471, column: 6)
!5427 = !DILocation(line: 471, column: 11, scope: !5426)
!5428 = !DILocation(line: 471, column: 6, scope: !5322)
!5429 = !DILocation(line: 471, column: 26, scope: !5426)
!5430 = !DILocation(line: 472, column: 6, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5322, file: !98, line: 472, column: 6)
!5432 = !DILocation(line: 472, column: 11, scope: !5431)
!5433 = !DILocation(line: 472, column: 6, scope: !5322)
!5434 = !DILocation(line: 472, column: 26, scope: !5431)
!5435 = !DILocation(line: 473, column: 6, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !5322, file: !98, line: 473, column: 6)
!5437 = !DILocation(line: 473, column: 11, scope: !5436)
!5438 = !DILocation(line: 473, column: 6, scope: !5322)
!5439 = !DILocation(line: 473, column: 26, scope: !5436)
!5440 = !DILocation(line: 474, column: 6, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5322, file: !98, line: 474, column: 6)
!5442 = !DILocation(line: 474, column: 11, scope: !5441)
!5443 = !DILocation(line: 474, column: 6, scope: !5322)
!5444 = !DILocation(line: 474, column: 27, scope: !5441)
!5445 = !DILocation(line: 475, column: 6, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5322, file: !98, line: 475, column: 6)
!5447 = !DILocation(line: 475, column: 11, scope: !5446)
!5448 = !DILocation(line: 475, column: 6, scope: !5322)
!5449 = !DILocation(line: 475, column: 32, scope: !5446)
!5450 = !DILocation(line: 477, column: 50, scope: !5451)
!5451 = distinct !DILexicalBlock(scope: !5322, file: !98, line: 477, column: 6)
!5452 = !DILocation(line: 477, column: 6, scope: !5322)
!5453 = !DILocation(line: 478, column: 3, scope: !5451)
!5454 = !DILocation(line: 478, column: 3, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5456, file: !98, line: 478, column: 3)
!5456 = distinct !DILexicalBlock(scope: !5451, file: !98, line: 478, column: 3)
!5457 = !{i32 -2142966454}
!5458 = !DILocation(line: 478, column: 3, scope: !5456)
!5459 = !DILocation(line: 480, column: 3, scope: !5451)
!5460 = !DILocation(line: 480, column: 3, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5451, file: !98, line: 480, column: 3)
!5462 = !DILocation(line: 480, column: 3, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5461, file: !98, line: 480, column: 3)
!5464 = !DILocation(line: 480, column: 3, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !5461, file: !98, line: 480, column: 3)
!5466 = !{i64 2152001045, i64 2152001074, i64 2152001120, i64 2152001178, i64 2152001232, i64 2152001286, i64 2152001341, i64 2152001372}
!5467 = !DILocation(line: 483, column: 2, scope: !5322)
!5468 = !DILocation(line: 484, column: 1, scope: !5322)
!5469 = !DISubprogram(name: "kmalloc_trace", scope: !98, file: !98, line: 525, type: !5470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5470 = !DISubroutineType(types: !5471)
!5471 = !{!123, !5472, !270, !273}
!5472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5473, size: 64)
!5473 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5474, line: 11, flags: DIFlagFwdDecl)
!5474 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!5475 = distinct !DISubprogram(name: "kmalloc_type", scope: !98, file: !98, line: 401, type: !5476, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5478)
!5476 = !DISubroutineType(types: !5477)
!5477 = !{!97, !270, !254}
!5478 = !{!5479, !5480}
!5479 = !DILocalVariable(name: "flags", arg: 1, scope: !5475, file: !98, line: 401, type: !270)
!5480 = !DILocalVariable(name: "caller", arg: 2, scope: !5475, file: !98, line: 401, type: !254)
!5481 = !DILocation(line: 401, column: 67, scope: !5475)
!5482 = !DILocation(line: 401, column: 88, scope: !5475)
!5483 = !DILocation(line: 407, column: 6, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5475, file: !98, line: 407, column: 6)
!5485 = !DILocation(line: 407, column: 6, scope: !5475)
!5486 = !DILocation(line: 413, column: 3, scope: !5484)
!5487 = !DILocation(line: 423, column: 38, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5475, file: !98, line: 423, column: 6)
!5489 = !DILocation(line: 423, column: 44, scope: !5488)
!5490 = !DILocation(line: 423, column: 6, scope: !5475)
!5491 = !DILocation(line: 424, column: 3, scope: !5488)
!5492 = !DILocation(line: 426, column: 3, scope: !5493)
!5493 = distinct !DILexicalBlock(scope: !5475, file: !98, line: 425, column: 6)
!5494 = !DILocation(line: 429, column: 1, scope: !5475)
!5495 = !DISubprogram(name: "__kmalloc", scope: !98, file: !98, line: 488, type: !5271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5496 = !DISubprogram(name: "__compiletime_assert_178", scope: !98, file: !98, line: 478, type: !3033, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5497 = distinct !DISubprogram(name: "const_test_bit", scope: !5498, file: !5498, line: 166, type: !5499, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5504)
!5498 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!5499 = !DISubroutineType(types: !5500)
!5500 = !{!199, !254, !5501}
!5501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5502, size: 64)
!5502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5503)
!5503 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !254)
!5504 = !{!5505, !5506, !5507, !5508, !5509}
!5505 = !DILocalVariable(name: "nr", arg: 1, scope: !5497, file: !5498, line: 166, type: !254)
!5506 = !DILocalVariable(name: "addr", arg: 2, scope: !5497, file: !5498, line: 166, type: !5501)
!5507 = !DILocalVariable(name: "p", scope: !5497, file: !5498, line: 168, type: !279)
!5508 = !DILocalVariable(name: "mask", scope: !5497, file: !5498, line: 169, type: !254)
!5509 = !DILocalVariable(name: "val", scope: !5497, file: !5498, line: 170, type: !254)
!5510 = !DILocation(line: 166, column: 30, scope: !5497)
!5511 = !DILocation(line: 166, column: 64, scope: !5497)
!5512 = !DILocation(line: 168, column: 2, scope: !5497)
!5513 = !DILocation(line: 168, column: 23, scope: !5497)
!5514 = !DILocation(line: 168, column: 50, scope: !5497)
!5515 = !DILocation(line: 168, column: 57, scope: !5497)
!5516 = !DILocation(line: 168, column: 55, scope: !5497)
!5517 = !DILocation(line: 169, column: 2, scope: !5497)
!5518 = !DILocation(line: 169, column: 16, scope: !5497)
!5519 = !DILocation(line: 169, column: 23, scope: !5497)
!5520 = !DILocation(line: 170, column: 2, scope: !5497)
!5521 = !DILocation(line: 170, column: 16, scope: !5497)
!5522 = !DILocation(line: 170, column: 23, scope: !5497)
!5523 = !DILocation(line: 170, column: 22, scope: !5497)
!5524 = !DILocation(line: 172, column: 12, scope: !5497)
!5525 = !DILocation(line: 172, column: 18, scope: !5497)
!5526 = !DILocation(line: 172, column: 16, scope: !5497)
!5527 = !DILocation(line: 172, column: 10, scope: !5497)
!5528 = !DILocation(line: 172, column: 9, scope: !5497)
!5529 = !DILocation(line: 173, column: 1, scope: !5497)
!5530 = !DILocation(line: 172, column: 2, scope: !5497)
!5531 = distinct !DISubprogram(name: "_test_bit", scope: !5532, file: !5532, line: 139, type: !5499, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5533)
!5532 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5533 = !{!5534, !5535}
!5534 = !DILocalVariable(name: "nr", arg: 1, scope: !5531, file: !5532, line: 139, type: !254)
!5535 = !DILocalVariable(name: "addr", arg: 2, scope: !5531, file: !5532, line: 139, type: !5501)
!5536 = !DILocation(line: 139, column: 25, scope: !5531)
!5537 = !DILocation(line: 139, column: 59, scope: !5531)
!5538 = !DILocation(line: 141, column: 25, scope: !5531)
!5539 = !DILocation(line: 141, column: 32, scope: !5531)
!5540 = !DILocation(line: 141, column: 30, scope: !5531)
!5541 = !DILocation(line: 141, column: 2, scope: !5531)
!5542 = !DILocation(line: 142, column: 23, scope: !5531)
!5543 = !DILocation(line: 142, column: 27, scope: !5531)
!5544 = !DILocation(line: 142, column: 9, scope: !5531)
!5545 = !DILocation(line: 142, column: 2, scope: !5531)
!5546 = !DISubprogram(name: "dma_fence_signal", scope: !108, file: !108, line: 390, type: !5547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5547 = !DISubroutineType(types: !5548)
!5548 = !{!176, !147}
!5549 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4315, file: !4315, line: 66, type: !4316, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5550)
!5550 = !{!5551, !5552}
!5551 = !DILocalVariable(name: "v", arg: 1, scope: !5549, file: !4315, line: 66, type: !4318)
!5552 = !DILocalVariable(name: "size", arg: 2, scope: !5549, file: !4315, line: 66, type: !273)
!5553 = !DILocation(line: 66, column: 73, scope: !5549)
!5554 = !DILocation(line: 66, column: 83, scope: !5549)
!5555 = !DILocation(line: 68, column: 19, scope: !5549)
!5556 = !DILocation(line: 68, column: 22, scope: !5549)
!5557 = !DILocation(line: 68, column: 2, scope: !5549)
!5558 = !DILocation(line: 69, column: 2, scope: !5549)
!5559 = !DILocation(line: 70, column: 1, scope: !5549)
!5560 = distinct !DISubprogram(name: "arch_test_bit", scope: !5190, file: !5190, line: 237, type: !5499, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5561)
!5561 = !{!5562, !5563}
!5562 = !DILocalVariable(name: "nr", arg: 1, scope: !5560, file: !5190, line: 237, type: !254)
!5563 = !DILocalVariable(name: "addr", arg: 2, scope: !5560, file: !5190, line: 237, type: !5501)
!5564 = !DILocation(line: 237, column: 29, scope: !5560)
!5565 = !DILocation(line: 237, column: 63, scope: !5560)
!5566 = !DILocation(line: 239, column: 30, scope: !5560)
!5567 = !DILocation(line: 239, column: 9, scope: !5560)
!5568 = !DILocation(line: 239, column: 54, scope: !5560)
!5569 = !DILocation(line: 239, column: 58, scope: !5560)
!5570 = !DILocation(line: 239, column: 36, scope: !5560)
!5571 = !DILocation(line: 240, column: 26, scope: !5560)
!5572 = !DILocation(line: 240, column: 30, scope: !5560)
!5573 = !DILocation(line: 240, column: 8, scope: !5560)
!5574 = !DILocation(line: 239, column: 2, scope: !5560)
!5575 = distinct !DISubprogram(name: "kasan_check_read", scope: !5576, file: !5576, line: 40, type: !5577, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5579)
!5576 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5577 = !DISubroutineType(types: !5578)
!5578 = !{!199, !4318, !18}
!5579 = !{!5580, !5581}
!5580 = !DILocalVariable(name: "p", arg: 1, scope: !5575, file: !5576, line: 40, type: !4318)
!5581 = !DILocalVariable(name: "size", arg: 2, scope: !5575, file: !5576, line: 40, type: !18)
!5582 = !DILocation(line: 40, column: 58, scope: !5575)
!5583 = !DILocation(line: 40, column: 74, scope: !5575)
!5584 = !DILocation(line: 42, column: 2, scope: !5575)
!5585 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5586, file: !5586, line: 229, type: !5587, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5589)
!5586 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5587 = !DISubroutineType(types: !5588)
!5588 = !{null, !4318, !273, !176}
!5589 = !{!5590, !5591, !5592}
!5590 = !DILocalVariable(name: "ptr", arg: 1, scope: !5585, file: !5586, line: 229, type: !4318)
!5591 = !DILocalVariable(name: "size", arg: 2, scope: !5585, file: !5586, line: 229, type: !273)
!5592 = !DILocalVariable(name: "type", arg: 3, scope: !5585, file: !5586, line: 230, type: !176)
!5593 = !DILocation(line: 229, column: 60, scope: !5585)
!5594 = !DILocation(line: 229, column: 72, scope: !5585)
!5595 = !DILocation(line: 230, column: 15, scope: !5585)
!5596 = !DILocation(line: 230, column: 23, scope: !5585)
!5597 = distinct !DISubprogram(name: "constant_test_bit", scope: !5190, file: !5190, line: 204, type: !5598, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5600)
!5598 = !DISubroutineType(types: !5599)
!5599 = !{!199, !217, !5501}
!5600 = !{!5601, !5602}
!5601 = !DILocalVariable(name: "nr", arg: 1, scope: !5597, file: !5190, line: 204, type: !217)
!5602 = !DILocalVariable(name: "addr", arg: 2, scope: !5597, file: !5190, line: 204, type: !5501)
!5603 = !DILocation(line: 204, column: 52, scope: !5597)
!5604 = !DILocation(line: 204, column: 86, scope: !5597)
!5605 = !DILocation(line: 206, column: 19, scope: !5597)
!5606 = !DILocation(line: 206, column: 22, scope: !5597)
!5607 = !DILocation(line: 206, column: 15, scope: !5597)
!5608 = !DILocation(line: 207, column: 4, scope: !5597)
!5609 = !DILocation(line: 207, column: 9, scope: !5597)
!5610 = !DILocation(line: 207, column: 12, scope: !5597)
!5611 = !DILocation(line: 206, column: 44, scope: !5597)
!5612 = !DILocation(line: 207, column: 37, scope: !5597)
!5613 = !DILocation(line: 206, column: 2, scope: !5597)
!5614 = distinct !DISubprogram(name: "variable_test_bit", scope: !5190, file: !5190, line: 224, type: !5598, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5615)
!5615 = !{!5616, !5617, !5618}
!5616 = !DILocalVariable(name: "nr", arg: 1, scope: !5614, file: !5190, line: 224, type: !217)
!5617 = !DILocalVariable(name: "addr", arg: 2, scope: !5614, file: !5190, line: 224, type: !5501)
!5618 = !DILocalVariable(name: "oldbit", scope: !5614, file: !5190, line: 226, type: !199)
!5619 = !DILocation(line: 224, column: 52, scope: !5614)
!5620 = !DILocation(line: 224, column: 86, scope: !5614)
!5621 = !DILocation(line: 226, column: 2, scope: !5614)
!5622 = !DILocation(line: 226, column: 7, scope: !5614)
!5623 = !DILocation(line: 231, column: 33, scope: !5614)
!5624 = !DILocation(line: 231, column: 46, scope: !5614)
!5625 = !DILocation(line: 228, column: 2, scope: !5614)
!5626 = !{i64 2147880491, i64 2147880565}
!5627 = !DILocation(line: 233, column: 9, scope: !5614)
!5628 = !DILocation(line: 234, column: 1, scope: !5614)
!5629 = !DILocation(line: 233, column: 2, scope: !5614)
!5630 = distinct !DISubprogram(name: "kref_put", scope: !257, file: !257, line: 62, type: !5631, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5637)
!5631 = !DISubroutineType(types: !5632)
!5632 = !{!176, !5633, !5634}
!5633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!5634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5635, size: 64)
!5635 = !DISubroutineType(types: !5636)
!5636 = !{null, !5633}
!5637 = !{!5638, !5639}
!5638 = !DILocalVariable(name: "kref", arg: 1, scope: !5630, file: !257, line: 62, type: !5633)
!5639 = !DILocalVariable(name: "release", arg: 2, scope: !5630, file: !257, line: 62, type: !5634)
!5640 = !DILocation(line: 62, column: 41, scope: !5630)
!5641 = !DILocation(line: 62, column: 54, scope: !5630)
!5642 = !DILocation(line: 64, column: 29, scope: !5643)
!5643 = distinct !DILexicalBlock(scope: !5630, file: !257, line: 64, column: 6)
!5644 = !DILocation(line: 64, column: 35, scope: !5643)
!5645 = !DILocation(line: 64, column: 6, scope: !5643)
!5646 = !DILocation(line: 64, column: 6, scope: !5630)
!5647 = !DILocation(line: 65, column: 3, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5643, file: !257, line: 64, column: 46)
!5649 = !DILocation(line: 65, column: 11, scope: !5648)
!5650 = !DILocation(line: 66, column: 3, scope: !5648)
!5651 = !DILocation(line: 68, column: 2, scope: !5630)
!5652 = !DILocation(line: 69, column: 1, scope: !5630)
!5653 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !115, file: !115, line: 331, type: !5654, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5657)
!5654 = !DISubroutineType(types: !5655)
!5655 = !{!199, !5656}
!5656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!5657 = !{!5658}
!5658 = !DILocalVariable(name: "r", arg: 1, scope: !5653, file: !115, line: 331, type: !5656)
!5659 = !DILocation(line: 331, column: 67, scope: !5653)
!5660 = !DILocation(line: 333, column: 33, scope: !5653)
!5661 = !DILocation(line: 333, column: 9, scope: !5653)
!5662 = !DILocation(line: 333, column: 2, scope: !5653)
!5663 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !115, file: !115, line: 313, type: !5664, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5666)
!5664 = !DISubroutineType(types: !5665)
!5665 = !{!199, !5656, !285}
!5666 = !{!5667, !5668}
!5667 = !DILocalVariable(name: "r", arg: 1, scope: !5663, file: !115, line: 313, type: !5656)
!5668 = !DILocalVariable(name: "oldp", arg: 2, scope: !5663, file: !115, line: 313, type: !285)
!5669 = !DILocation(line: 313, column: 69, scope: !5663)
!5670 = !DILocation(line: 313, column: 77, scope: !5663)
!5671 = !DILocation(line: 315, column: 36, scope: !5663)
!5672 = !DILocation(line: 315, column: 39, scope: !5663)
!5673 = !DILocation(line: 315, column: 9, scope: !5663)
!5674 = !DILocation(line: 315, column: 2, scope: !5663)
!5675 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !115, file: !115, line: 270, type: !5676, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5678)
!5676 = !DISubroutineType(types: !5677)
!5677 = !{!199, !176, !5656, !285}
!5678 = !{!5679, !5680, !5681, !5682}
!5679 = !DILocalVariable(name: "i", arg: 1, scope: !5675, file: !115, line: 270, type: !176)
!5680 = !DILocalVariable(name: "r", arg: 2, scope: !5675, file: !115, line: 270, type: !5656)
!5681 = !DILocalVariable(name: "oldp", arg: 3, scope: !5675, file: !115, line: 270, type: !285)
!5682 = !DILocalVariable(name: "old", scope: !5675, file: !115, line: 272, type: !176)
!5683 = !DILocation(line: 270, column: 61, scope: !5675)
!5684 = !DILocation(line: 270, column: 76, scope: !5675)
!5685 = !DILocation(line: 270, column: 84, scope: !5675)
!5686 = !DILocation(line: 272, column: 2, scope: !5675)
!5687 = !DILocation(line: 272, column: 6, scope: !5675)
!5688 = !DILocation(line: 272, column: 37, scope: !5675)
!5689 = !DILocation(line: 272, column: 41, scope: !5675)
!5690 = !DILocation(line: 272, column: 44, scope: !5675)
!5691 = !DILocation(line: 272, column: 12, scope: !5675)
!5692 = !DILocation(line: 274, column: 6, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5675, file: !115, line: 274, column: 6)
!5694 = !DILocation(line: 274, column: 6, scope: !5675)
!5695 = !DILocation(line: 275, column: 11, scope: !5693)
!5696 = !DILocation(line: 275, column: 4, scope: !5693)
!5697 = !DILocation(line: 275, column: 9, scope: !5693)
!5698 = !DILocation(line: 275, column: 3, scope: !5693)
!5699 = !DILocation(line: 277, column: 6, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5675, file: !115, line: 277, column: 6)
!5701 = !DILocation(line: 277, column: 13, scope: !5700)
!5702 = !DILocation(line: 277, column: 10, scope: !5700)
!5703 = !DILocation(line: 277, column: 6, scope: !5675)
!5704 = !DILocation(line: 278, column: 3, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !5700, file: !115, line: 277, column: 16)
!5706 = !DILocation(line: 278, column: 3, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5705, file: !115, line: 278, column: 3)
!5708 = !DILocation(line: 278, column: 3, scope: !5709)
!5709 = distinct !DILexicalBlock(scope: !5707, file: !115, line: 278, column: 3)
!5710 = !DILocation(line: 278, column: 3, scope: !5711)
!5711 = distinct !DILexicalBlock(scope: !5707, file: !115, line: 278, column: 3)
!5712 = !DILocation(line: 278, column: 3, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5711, file: !115, line: 278, column: 3)
!5714 = !{i64 2149908066}
!5715 = !DILocation(line: 279, column: 3, scope: !5705)
!5716 = !DILocation(line: 282, column: 6, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5675, file: !115, line: 282, column: 6)
!5718 = !DILocation(line: 282, column: 6, scope: !5675)
!5719 = !DILocation(line: 283, column: 26, scope: !5717)
!5720 = !DILocation(line: 283, column: 3, scope: !5717)
!5721 = !DILocation(line: 285, column: 2, scope: !5675)
!5722 = !DILocation(line: 286, column: 1, scope: !5675)
!5723 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !5724, file: !5724, line: 397, type: !5725, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5728)
!5724 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5725 = !DISubroutineType(types: !5726)
!5726 = !{!176, !176, !5727}
!5727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!5728 = !{!5729, !5730}
!5729 = !DILocalVariable(name: "i", arg: 1, scope: !5723, file: !5724, line: 397, type: !176)
!5730 = !DILocalVariable(name: "v", arg: 2, scope: !5723, file: !5724, line: 397, type: !5727)
!5731 = !DILocation(line: 397, column: 30, scope: !5723)
!5732 = !DILocation(line: 397, column: 43, scope: !5723)
!5733 = !DILocation(line: 399, column: 2, scope: !5723)
!5734 = !DILocation(line: 399, column: 2, scope: !5735)
!5735 = distinct !DILexicalBlock(scope: !5723, file: !5724, line: 399, column: 2)
!5736 = !DILocation(line: 400, column: 31, scope: !5723)
!5737 = !DILocation(line: 400, column: 2, scope: !5723)
!5738 = !DILocation(line: 401, column: 38, scope: !5723)
!5739 = !DILocation(line: 401, column: 41, scope: !5723)
!5740 = !DILocation(line: 401, column: 9, scope: !5723)
!5741 = !DILocation(line: 401, column: 2, scope: !5723)
!5742 = !DISubprogram(name: "refcount_warn_saturate", scope: !115, file: !115, line: 127, type: !5743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5743 = !DISubroutineType(types: !5744)
!5744 = !{null, !5656, !114}
!5745 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !5746, file: !5746, line: 928, type: !5725, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5747)
!5746 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5747 = !{!5748, !5749}
!5748 = !DILocalVariable(name: "i", arg: 1, scope: !5745, file: !5746, line: 928, type: !176)
!5749 = !DILocalVariable(name: "v", arg: 2, scope: !5745, file: !5746, line: 928, type: !5727)
!5750 = !DILocation(line: 928, column: 34, scope: !5745)
!5751 = !DILocation(line: 928, column: 47, scope: !5745)
!5752 = !DILocation(line: 936, column: 31, scope: !5745)
!5753 = !DILocation(line: 936, column: 34, scope: !5745)
!5754 = !DILocation(line: 936, column: 9, scope: !5745)
!5755 = !DILocation(line: 936, column: 2, scope: !5745)
!5756 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !5757, file: !5757, line: 101, type: !5725, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5758)
!5757 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!5758 = !{!5759, !5760, !5761}
!5759 = !DILocalVariable(name: "i", arg: 1, scope: !5756, file: !5757, line: 101, type: !176)
!5760 = !DILocalVariable(name: "v", arg: 2, scope: !5756, file: !5757, line: 101, type: !5727)
!5761 = !DILocalVariable(name: "__ret", scope: !5762, file: !5757, line: 103, type: !176)
!5762 = distinct !DILexicalBlock(scope: !5756, file: !5757, line: 103, column: 9)
!5763 = !DILocation(line: 101, column: 54, scope: !5756)
!5764 = !DILocation(line: 101, column: 67, scope: !5756)
!5765 = !DILocation(line: 103, column: 9, scope: !5762)
!5766 = !{i64 2148524465, i64 2148524504, i64 2148524525, i64 2148524562, i64 2148524585, i64 2148524594}
!5767 = !DILocation(line: 103, column: 9, scope: !5756)
!5768 = !DILocation(line: 103, column: 2, scope: !5756)
!5769 = distinct !DISubprogram(name: "kref_get", scope: !257, file: !257, line: 43, type: !5635, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5770)
!5770 = !{!5771}
!5771 = !DILocalVariable(name: "kref", arg: 1, scope: !5769, file: !257, line: 43, type: !5633)
!5772 = !DILocation(line: 43, column: 42, scope: !5769)
!5773 = !DILocation(line: 45, column: 16, scope: !5769)
!5774 = !DILocation(line: 45, column: 22, scope: !5769)
!5775 = !DILocation(line: 45, column: 2, scope: !5769)
!5776 = !DILocation(line: 46, column: 1, scope: !5769)
!5777 = distinct !DISubprogram(name: "refcount_inc", scope: !115, file: !115, line: 265, type: !5778, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5780)
!5778 = !DISubroutineType(types: !5779)
!5779 = !{null, !5656}
!5780 = !{!5781}
!5781 = !DILocalVariable(name: "r", arg: 1, scope: !5777, file: !115, line: 265, type: !5656)
!5782 = !DILocation(line: 265, column: 45, scope: !5777)
!5783 = !DILocation(line: 267, column: 17, scope: !5777)
!5784 = !DILocation(line: 267, column: 2, scope: !5777)
!5785 = !DILocation(line: 268, column: 1, scope: !5777)
!5786 = distinct !DISubprogram(name: "__refcount_inc", scope: !115, file: !115, line: 248, type: !5787, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5789)
!5787 = !DISubroutineType(types: !5788)
!5788 = !{null, !5656, !285}
!5789 = !{!5790, !5791}
!5790 = !DILocalVariable(name: "r", arg: 1, scope: !5786, file: !115, line: 248, type: !5656)
!5791 = !DILocalVariable(name: "oldp", arg: 2, scope: !5786, file: !115, line: 248, type: !285)
!5792 = !DILocation(line: 248, column: 47, scope: !5786)
!5793 = !DILocation(line: 248, column: 55, scope: !5786)
!5794 = !DILocation(line: 250, column: 20, scope: !5786)
!5795 = !DILocation(line: 250, column: 23, scope: !5786)
!5796 = !DILocation(line: 250, column: 2, scope: !5786)
!5797 = !DILocation(line: 251, column: 1, scope: !5786)
!5798 = distinct !DISubprogram(name: "__refcount_add", scope: !115, file: !115, line: 191, type: !5799, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5801)
!5799 = !DISubroutineType(types: !5800)
!5800 = !{null, !176, !5656, !285}
!5801 = !{!5802, !5803, !5804, !5805}
!5802 = !DILocalVariable(name: "i", arg: 1, scope: !5798, file: !115, line: 191, type: !176)
!5803 = !DILocalVariable(name: "r", arg: 2, scope: !5798, file: !115, line: 191, type: !5656)
!5804 = !DILocalVariable(name: "oldp", arg: 3, scope: !5798, file: !115, line: 191, type: !285)
!5805 = !DILocalVariable(name: "old", scope: !5798, file: !115, line: 193, type: !176)
!5806 = !DILocation(line: 191, column: 39, scope: !5798)
!5807 = !DILocation(line: 191, column: 54, scope: !5798)
!5808 = !DILocation(line: 191, column: 62, scope: !5798)
!5809 = !DILocation(line: 193, column: 2, scope: !5798)
!5810 = !DILocation(line: 193, column: 6, scope: !5798)
!5811 = !DILocation(line: 193, column: 37, scope: !5798)
!5812 = !DILocation(line: 193, column: 41, scope: !5798)
!5813 = !DILocation(line: 193, column: 44, scope: !5798)
!5814 = !DILocation(line: 193, column: 12, scope: !5798)
!5815 = !DILocation(line: 195, column: 6, scope: !5816)
!5816 = distinct !DILexicalBlock(scope: !5798, file: !115, line: 195, column: 6)
!5817 = !DILocation(line: 195, column: 6, scope: !5798)
!5818 = !DILocation(line: 196, column: 11, scope: !5816)
!5819 = !DILocation(line: 196, column: 4, scope: !5816)
!5820 = !DILocation(line: 196, column: 9, scope: !5816)
!5821 = !DILocation(line: 196, column: 3, scope: !5816)
!5822 = !DILocation(line: 198, column: 6, scope: !5823)
!5823 = distinct !DILexicalBlock(scope: !5798, file: !115, line: 198, column: 6)
!5824 = !DILocation(line: 198, column: 6, scope: !5798)
!5825 = !DILocation(line: 199, column: 26, scope: !5823)
!5826 = !DILocation(line: 199, column: 3, scope: !5823)
!5827 = !DILocation(line: 200, column: 11, scope: !5828)
!5828 = distinct !DILexicalBlock(scope: !5823, file: !115, line: 200, column: 11)
!5829 = !DILocation(line: 200, column: 11, scope: !5823)
!5830 = !DILocation(line: 201, column: 26, scope: !5828)
!5831 = !DILocation(line: 201, column: 3, scope: !5828)
!5832 = !DILocation(line: 202, column: 1, scope: !5798)
!5833 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !5724, file: !5724, line: 250, type: !5725, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5834)
!5834 = !{!5835, !5836}
!5835 = !DILocalVariable(name: "i", arg: 1, scope: !5833, file: !5724, line: 250, type: !176)
!5836 = !DILocalVariable(name: "v", arg: 2, scope: !5833, file: !5724, line: 250, type: !5727)
!5837 = !DILocation(line: 250, column: 30, scope: !5833)
!5838 = !DILocation(line: 250, column: 43, scope: !5833)
!5839 = !DILocation(line: 252, column: 31, scope: !5833)
!5840 = !DILocation(line: 252, column: 2, scope: !5833)
!5841 = !DILocation(line: 253, column: 38, scope: !5833)
!5842 = !DILocation(line: 253, column: 41, scope: !5833)
!5843 = !DILocation(line: 253, column: 9, scope: !5833)
!5844 = !DILocation(line: 253, column: 2, scope: !5833)
!5845 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !5746, file: !5746, line: 731, type: !5725, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5846)
!5846 = !{!5847, !5848}
!5847 = !DILocalVariable(name: "i", arg: 1, scope: !5845, file: !5746, line: 731, type: !176)
!5848 = !DILocalVariable(name: "v", arg: 2, scope: !5845, file: !5746, line: 731, type: !5727)
!5849 = !DILocation(line: 731, column: 34, scope: !5845)
!5850 = !DILocation(line: 731, column: 47, scope: !5845)
!5851 = !DILocation(line: 736, column: 31, scope: !5845)
!5852 = !DILocation(line: 736, column: 34, scope: !5845)
!5853 = !DILocation(line: 736, column: 9, scope: !5845)
!5854 = !DILocation(line: 736, column: 2, scope: !5845)
!5855 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !5757, file: !5757, line: 95, type: !5725, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5856)
!5856 = !{!5857, !5858, !5859}
!5857 = !DILocalVariable(name: "i", arg: 1, scope: !5855, file: !5757, line: 95, type: !176)
!5858 = !DILocalVariable(name: "v", arg: 2, scope: !5855, file: !5757, line: 95, type: !5727)
!5859 = !DILocalVariable(name: "__ret", scope: !5860, file: !5757, line: 97, type: !176)
!5860 = distinct !DILexicalBlock(scope: !5855, file: !5757, line: 97, column: 9)
!5861 = !DILocation(line: 95, column: 54, scope: !5855)
!5862 = !DILocation(line: 95, column: 67, scope: !5855)
!5863 = !DILocation(line: 97, column: 9, scope: !5860)
!5864 = !{i64 2148522280, i64 2148522319, i64 2148522340, i64 2148522377, i64 2148522400, i64 2148522409}
!5865 = !DILocation(line: 97, column: 9, scope: !5855)
!5866 = !DILocation(line: 97, column: 2, scope: !5855)
!5867 = distinct !DISubprogram(name: "dma_fence_is_array", scope: !108, file: !108, line: 655, type: !210, scopeLine: 656, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5868)
!5868 = !{!5869}
!5869 = !DILocalVariable(name: "fence", arg: 1, scope: !5867, file: !108, line: 655, type: !147)
!5870 = !DILocation(line: 655, column: 57, scope: !5867)
!5871 = !DILocation(line: 657, column: 9, scope: !5867)
!5872 = !DILocation(line: 657, column: 16, scope: !5867)
!5873 = !DILocation(line: 657, column: 20, scope: !5867)
!5874 = !DILocation(line: 657, column: 2, scope: !5867)
!5875 = distinct !DISubprogram(name: "dma_fence_is_chain", scope: !108, file: !108, line: 666, type: !210, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5876)
!5876 = !{!5877}
!5877 = !DILocalVariable(name: "fence", arg: 1, scope: !5875, file: !108, line: 666, type: !147)
!5878 = !DILocation(line: 666, column: 57, scope: !5875)
!5879 = !DILocation(line: 668, column: 9, scope: !5875)
!5880 = !DILocation(line: 668, column: 16, scope: !5875)
!5881 = !DILocation(line: 668, column: 20, scope: !5875)
!5882 = !DILocation(line: 668, column: 2, scope: !5875)
!5883 = distinct !DISubprogram(name: "dma_fence_is_later", scope: !108, file: !108, line: 492, type: !4299, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5884)
!5884 = !{!5885, !5886, !5887, !5890}
!5885 = !DILocalVariable(name: "f1", arg: 1, scope: !5883, file: !108, line: 492, type: !147)
!5886 = !DILocalVariable(name: "f2", arg: 2, scope: !5883, file: !108, line: 493, type: !147)
!5887 = !DILocalVariable(name: "__ret_warn_on", scope: !5888, file: !108, line: 495, type: !176)
!5888 = distinct !DILexicalBlock(scope: !5889, file: !108, line: 495, column: 6)
!5889 = distinct !DILexicalBlock(scope: !5883, file: !108, line: 495, column: 6)
!5890 = !DILocalVariable(name: "__flags", scope: !5891, file: !108, line: 495, type: !176)
!5891 = distinct !DILexicalBlock(scope: !5892, file: !108, line: 495, column: 6)
!5892 = distinct !DILexicalBlock(scope: !5888, file: !108, line: 495, column: 6)
!5893 = !DILocation(line: 492, column: 57, scope: !5883)
!5894 = !DILocation(line: 493, column: 29, scope: !5883)
!5895 = !DILocation(line: 495, column: 6, scope: !5888)
!5896 = !DILocation(line: 495, column: 6, scope: !5892)
!5897 = !DILocation(line: 495, column: 6, scope: !5891)
!5898 = !DILocation(line: 495, column: 6, scope: !5899)
!5899 = distinct !DILexicalBlock(scope: !5891, file: !108, line: 495, column: 6)
!5900 = !DILocation(line: 495, column: 6, scope: !5901)
!5901 = distinct !DILexicalBlock(scope: !5891, file: !108, line: 495, column: 6)
!5902 = !{i64 2150882668, i64 2150882697, i64 2150882743, i64 2150882801, i64 2150882855, i64 2150882909, i64 2150882964, i64 2150882995, i64 2150883303, i64 2150883309, i64 2150883356, i64 2150883379, i64 2150883405}
!5903 = !DILocation(line: 495, column: 6, scope: !5904)
!5904 = distinct !DILexicalBlock(scope: !5891, file: !108, line: 495, column: 6)
!5905 = !DILocation(line: 495, column: 6, scope: !5889)
!5906 = !DILocation(line: 495, column: 6, scope: !5883)
!5907 = !DILocation(line: 496, column: 3, scope: !5889)
!5908 = !DILocation(line: 498, column: 30, scope: !5883)
!5909 = !DILocation(line: 498, column: 34, scope: !5883)
!5910 = !DILocation(line: 498, column: 41, scope: !5883)
!5911 = !DILocation(line: 498, column: 45, scope: !5883)
!5912 = !DILocation(line: 498, column: 52, scope: !5883)
!5913 = !DILocation(line: 498, column: 56, scope: !5883)
!5914 = !DILocation(line: 498, column: 9, scope: !5883)
!5915 = !DILocation(line: 498, column: 2, scope: !5883)
!5916 = !DILocation(line: 499, column: 1, scope: !5883)
!5917 = distinct !DISubprogram(name: "__dma_fence_is_later", scope: !108, file: !108, line: 471, type: !5918, scopeLine: 473, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5920)
!5918 = !DISubroutineType(types: !5919)
!5919 = !{!199, !249, !249, !194}
!5920 = !{!5921, !5922, !5923}
!5921 = !DILocalVariable(name: "f1", arg: 1, scope: !5917, file: !108, line: 471, type: !249)
!5922 = !DILocalVariable(name: "f2", arg: 2, scope: !5917, file: !108, line: 471, type: !249)
!5923 = !DILocalVariable(name: "ops", arg: 3, scope: !5917, file: !108, line: 472, type: !194)
!5924 = !DILocation(line: 471, column: 45, scope: !5917)
!5925 = !DILocation(line: 471, column: 53, scope: !5917)
!5926 = !DILocation(line: 472, column: 34, scope: !5917)
!5927 = !DILocation(line: 478, column: 6, scope: !5928)
!5928 = distinct !DILexicalBlock(scope: !5917, file: !108, line: 478, column: 6)
!5929 = !DILocation(line: 478, column: 11, scope: !5928)
!5930 = !DILocation(line: 478, column: 6, scope: !5917)
!5931 = !DILocation(line: 479, column: 10, scope: !5928)
!5932 = !DILocation(line: 479, column: 15, scope: !5928)
!5933 = !DILocation(line: 479, column: 13, scope: !5928)
!5934 = !DILocation(line: 479, column: 3, scope: !5928)
!5935 = !DILocation(line: 481, column: 15, scope: !5917)
!5936 = !DILocation(line: 481, column: 35, scope: !5917)
!5937 = !DILocation(line: 481, column: 33, scope: !5917)
!5938 = !DILocation(line: 481, column: 54, scope: !5917)
!5939 = !DILocation(line: 481, column: 2, scope: !5917)
!5940 = !DILocation(line: 482, column: 1, scope: !5917)
!5941 = distinct !DISubprogram(name: "kasan_check_write", scope: !5576, file: !5576, line: 44, type: !5577, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5942)
!5942 = !{!5943, !5944}
!5943 = !DILocalVariable(name: "p", arg: 1, scope: !5941, file: !5576, line: 44, type: !4318)
!5944 = !DILocalVariable(name: "size", arg: 2, scope: !5941, file: !5576, line: 44, type: !18)
!5945 = !DILocation(line: 44, column: 59, scope: !5941)
!5946 = !DILocation(line: 44, column: 75, scope: !5941)
!5947 = !DILocation(line: 46, column: 2, scope: !5941)
!5948 = !DISubprogram(name: "__rcu_read_lock", scope: !4426, file: !4426, line: 74, type: !3033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5949 = distinct !DISubprogram(name: "dma_fence_get_rcu", scope: !108, file: !108, line: 319, type: !4275, scopeLine: 320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5950)
!5950 = !{!5951}
!5951 = !DILocalVariable(name: "fence", arg: 1, scope: !5949, file: !108, line: 319, type: !147)
!5952 = !DILocation(line: 319, column: 69, scope: !5949)
!5953 = !DILocation(line: 321, column: 28, scope: !5954)
!5954 = distinct !DILexicalBlock(scope: !5949, file: !108, line: 321, column: 6)
!5955 = !DILocation(line: 321, column: 35, scope: !5954)
!5956 = !DILocation(line: 321, column: 6, scope: !5954)
!5957 = !DILocation(line: 321, column: 6, scope: !5949)
!5958 = !DILocation(line: 322, column: 10, scope: !5954)
!5959 = !DILocation(line: 322, column: 3, scope: !5954)
!5960 = !DILocation(line: 324, column: 3, scope: !5954)
!5961 = !DILocation(line: 325, column: 1, scope: !5949)
!5962 = distinct !DISubprogram(name: "kref_get_unless_zero", scope: !257, file: !257, line: 109, type: !5963, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5965)
!5963 = !DISubroutineType(types: !5964)
!5964 = !{!176, !5633}
!5965 = !{!5966}
!5966 = !DILocalVariable(name: "kref", arg: 1, scope: !5962, file: !257, line: 109, type: !5633)
!5967 = !DILocation(line: 109, column: 66, scope: !5962)
!5968 = !DILocation(line: 111, column: 32, scope: !5962)
!5969 = !DILocation(line: 111, column: 38, scope: !5962)
!5970 = !DILocation(line: 111, column: 9, scope: !5962)
!5971 = !DILocation(line: 111, column: 2, scope: !5962)
!5972 = distinct !DISubprogram(name: "refcount_inc_not_zero", scope: !115, file: !115, line: 243, type: !5654, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5973)
!5973 = !{!5974}
!5974 = !DILocalVariable(name: "r", arg: 1, scope: !5972, file: !115, line: 243, type: !5656)
!5975 = !DILocation(line: 243, column: 67, scope: !5972)
!5976 = !DILocation(line: 245, column: 33, scope: !5972)
!5977 = !DILocation(line: 245, column: 9, scope: !5972)
!5978 = !DILocation(line: 245, column: 2, scope: !5972)
!5979 = distinct !DISubprogram(name: "__refcount_inc_not_zero", scope: !115, file: !115, line: 225, type: !5664, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5980)
!5980 = !{!5981, !5982}
!5981 = !DILocalVariable(name: "r", arg: 1, scope: !5979, file: !115, line: 225, type: !5656)
!5982 = !DILocalVariable(name: "oldp", arg: 2, scope: !5979, file: !115, line: 225, type: !285)
!5983 = !DILocation(line: 225, column: 69, scope: !5979)
!5984 = !DILocation(line: 225, column: 77, scope: !5979)
!5985 = !DILocation(line: 227, column: 36, scope: !5979)
!5986 = !DILocation(line: 227, column: 39, scope: !5979)
!5987 = !DILocation(line: 227, column: 9, scope: !5979)
!5988 = !DILocation(line: 227, column: 2, scope: !5979)
!5989 = distinct !DISubprogram(name: "__refcount_add_not_zero", scope: !115, file: !115, line: 150, type: !5676, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5990)
!5990 = !{!5991, !5992, !5993, !5994}
!5991 = !DILocalVariable(name: "i", arg: 1, scope: !5989, file: !115, line: 150, type: !176)
!5992 = !DILocalVariable(name: "r", arg: 2, scope: !5989, file: !115, line: 150, type: !5656)
!5993 = !DILocalVariable(name: "oldp", arg: 3, scope: !5989, file: !115, line: 150, type: !285)
!5994 = !DILocalVariable(name: "old", scope: !5989, file: !115, line: 152, type: !176)
!5995 = !DILocation(line: 150, column: 61, scope: !5989)
!5996 = !DILocation(line: 150, column: 76, scope: !5989)
!5997 = !DILocation(line: 150, column: 84, scope: !5989)
!5998 = !DILocation(line: 152, column: 2, scope: !5989)
!5999 = !DILocation(line: 152, column: 6, scope: !5989)
!6000 = !DILocation(line: 152, column: 26, scope: !5989)
!6001 = !DILocation(line: 152, column: 12, scope: !5989)
!6002 = !DILocation(line: 154, column: 2, scope: !5989)
!6003 = !DILocation(line: 155, column: 8, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !6005, file: !115, line: 155, column: 7)
!6005 = distinct !DILexicalBlock(scope: !5989, file: !115, line: 154, column: 5)
!6006 = !DILocation(line: 155, column: 7, scope: !6005)
!6007 = !DILocation(line: 156, column: 4, scope: !6004)
!6008 = !DILocation(line: 157, column: 2, scope: !6005)
!6009 = !DILocation(line: 157, column: 40, scope: !5989)
!6010 = !DILocation(line: 157, column: 43, scope: !5989)
!6011 = !DILocation(line: 157, column: 55, scope: !5989)
!6012 = !DILocation(line: 157, column: 61, scope: !5989)
!6013 = !DILocation(line: 157, column: 59, scope: !5989)
!6014 = !DILocation(line: 157, column: 12, scope: !5989)
!6015 = !DILocation(line: 157, column: 11, scope: !5989)
!6016 = distinct !{!6016, !6002, !6017, !3750, !3751}
!6017 = !DILocation(line: 157, column: 63, scope: !5989)
!6018 = !DILocation(line: 159, column: 6, scope: !6019)
!6019 = distinct !DILexicalBlock(scope: !5989, file: !115, line: 159, column: 6)
!6020 = !DILocation(line: 159, column: 6, scope: !5989)
!6021 = !DILocation(line: 160, column: 11, scope: !6019)
!6022 = !DILocation(line: 160, column: 4, scope: !6019)
!6023 = !DILocation(line: 160, column: 9, scope: !6019)
!6024 = !DILocation(line: 160, column: 3, scope: !6019)
!6025 = !DILocation(line: 162, column: 6, scope: !6026)
!6026 = distinct !DILexicalBlock(scope: !5989, file: !115, line: 162, column: 6)
!6027 = !DILocation(line: 162, column: 6, scope: !5989)
!6028 = !DILocation(line: 163, column: 26, scope: !6026)
!6029 = !DILocation(line: 163, column: 3, scope: !6026)
!6030 = !DILocation(line: 165, column: 9, scope: !5989)
!6031 = !DILocation(line: 166, column: 1, scope: !5989)
!6032 = !DILocation(line: 165, column: 2, scope: !5989)
!6033 = distinct !DISubprogram(name: "refcount_read", scope: !115, file: !115, line: 145, type: !6034, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6038)
!6034 = !DISubroutineType(types: !6035)
!6035 = !{!18, !6036}
!6036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6037, size: 64)
!6037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!6038 = !{!6039}
!6039 = !DILocalVariable(name: "r", arg: 1, scope: !6033, file: !115, line: 145, type: !6036)
!6040 = !DILocation(line: 145, column: 60, scope: !6033)
!6041 = !DILocation(line: 147, column: 22, scope: !6033)
!6042 = !DILocation(line: 147, column: 25, scope: !6033)
!6043 = !DILocation(line: 147, column: 9, scope: !6033)
!6044 = !DILocation(line: 147, column: 2, scope: !6033)
!6045 = distinct !DISubprogram(name: "atomic_try_cmpxchg_relaxed", scope: !5724, file: !5724, line: 1335, type: !6046, scopeLine: 1336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6048)
!6046 = !DISubroutineType(types: !6047)
!6047 = !{!199, !5727, !285, !176}
!6048 = !{!6049, !6050, !6051}
!6049 = !DILocalVariable(name: "v", arg: 1, scope: !6045, file: !5724, line: 1335, type: !5727)
!6050 = !DILocalVariable(name: "old", arg: 2, scope: !6045, file: !5724, line: 1335, type: !285)
!6051 = !DILocalVariable(name: "new", arg: 3, scope: !6045, file: !5724, line: 1335, type: !176)
!6052 = !DILocation(line: 1335, column: 38, scope: !6045)
!6053 = !DILocation(line: 1335, column: 46, scope: !6045)
!6054 = !DILocation(line: 1335, column: 55, scope: !6045)
!6055 = !DILocation(line: 1337, column: 31, scope: !6045)
!6056 = !DILocation(line: 1337, column: 2, scope: !6045)
!6057 = !DILocation(line: 1338, column: 31, scope: !6045)
!6058 = !DILocation(line: 1338, column: 2, scope: !6045)
!6059 = !DILocation(line: 1339, column: 40, scope: !6045)
!6060 = !DILocation(line: 1339, column: 43, scope: !6045)
!6061 = !DILocation(line: 1339, column: 48, scope: !6045)
!6062 = !DILocation(line: 1339, column: 9, scope: !6045)
!6063 = !DILocation(line: 1339, column: 2, scope: !6045)
!6064 = distinct !DISubprogram(name: "atomic_read", scope: !5724, file: !5724, line: 30, type: !6065, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6069)
!6065 = !DISubroutineType(types: !6066)
!6066 = !{!176, !6067}
!6067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6068, size: 64)
!6068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!6069 = !{!6070}
!6070 = !DILocalVariable(name: "v", arg: 1, scope: !6064, file: !5724, line: 30, type: !6067)
!6071 = !DILocation(line: 30, column: 29, scope: !6064)
!6072 = !DILocation(line: 32, column: 25, scope: !6064)
!6073 = !DILocation(line: 32, column: 2, scope: !6064)
!6074 = !DILocation(line: 33, column: 25, scope: !6064)
!6075 = !DILocation(line: 33, column: 9, scope: !6064)
!6076 = !DILocation(line: 33, column: 2, scope: !6064)
!6077 = distinct !DISubprogram(name: "raw_atomic_read", scope: !5746, file: !5746, line: 442, type: !6065, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6078)
!6078 = !{!6079}
!6079 = !DILocalVariable(name: "v", arg: 1, scope: !6077, file: !5746, line: 442, type: !6067)
!6080 = !DILocation(line: 442, column: 33, scope: !6077)
!6081 = !DILocation(line: 444, column: 26, scope: !6077)
!6082 = !DILocation(line: 444, column: 9, scope: !6077)
!6083 = !DILocation(line: 444, column: 2, scope: !6077)
!6084 = distinct !DISubprogram(name: "arch_atomic_read", scope: !5757, file: !5757, line: 17, type: !6065, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6085)
!6085 = !{!6086}
!6086 = !DILocalVariable(name: "v", arg: 1, scope: !6084, file: !5757, line: 17, type: !6067)
!6087 = !DILocation(line: 17, column: 61, scope: !6084)
!6088 = !DILocation(line: 23, column: 9, scope: !6084)
!6089 = !DILocation(line: 23, column: 2, scope: !6084)
!6090 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg_relaxed", scope: !5746, file: !5746, line: 2207, type: !6046, scopeLine: 2208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6091)
!6091 = !{!6092, !6093, !6094}
!6092 = !DILocalVariable(name: "v", arg: 1, scope: !6090, file: !5746, line: 2207, type: !5727)
!6093 = !DILocalVariable(name: "old", arg: 2, scope: !6090, file: !5746, line: 2207, type: !285)
!6094 = !DILocalVariable(name: "new", arg: 3, scope: !6090, file: !5746, line: 2207, type: !176)
!6095 = !DILocation(line: 2207, column: 42, scope: !6090)
!6096 = !DILocation(line: 2207, column: 50, scope: !6090)
!6097 = !DILocation(line: 2207, column: 59, scope: !6090)
!6098 = !DILocation(line: 2212, column: 33, scope: !6090)
!6099 = !DILocation(line: 2212, column: 36, scope: !6090)
!6100 = !DILocation(line: 2212, column: 41, scope: !6090)
!6101 = !DILocation(line: 2212, column: 9, scope: !6090)
!6102 = !DILocation(line: 2212, column: 2, scope: !6090)
!6103 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !5757, file: !5757, line: 113, type: !6046, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6104)
!6104 = !{!6105, !6106, !6107, !6108, !6110, !6111, !6112, !6113}
!6105 = !DILocalVariable(name: "v", arg: 1, scope: !6103, file: !5757, line: 113, type: !5727)
!6106 = !DILocalVariable(name: "old", arg: 2, scope: !6103, file: !5757, line: 113, type: !285)
!6107 = !DILocalVariable(name: "new", arg: 3, scope: !6103, file: !5757, line: 113, type: !176)
!6108 = !DILocalVariable(name: "success", scope: !6109, file: !5757, line: 115, type: !199)
!6109 = distinct !DILexicalBlock(scope: !6103, file: !5757, line: 115, column: 9)
!6110 = !DILocalVariable(name: "_old", scope: !6109, file: !5757, line: 115, type: !285)
!6111 = !DILocalVariable(name: "__old", scope: !6109, file: !5757, line: 115, type: !176)
!6112 = !DILocalVariable(name: "__new", scope: !6109, file: !5757, line: 115, type: !176)
!6113 = !DILocalVariable(name: "__ptr", scope: !6109, file: !5757, line: 115, type: !286)
!6114 = !DILocation(line: 113, column: 63, scope: !6103)
!6115 = !DILocation(line: 113, column: 71, scope: !6103)
!6116 = !DILocation(line: 113, column: 80, scope: !6103)
!6117 = !DILocation(line: 115, column: 9, scope: !6109)
!6118 = !{i64 2148530172, i64 2148530211, i64 2148530232, i64 2148530269, i64 2148530292, i64 2148530301, i64 2148530599}
!6119 = !DILocation(line: 115, column: 9, scope: !6120)
!6120 = distinct !DILexicalBlock(scope: !6109, file: !5757, line: 115, column: 9)
!6121 = !DILocation(line: 115, column: 9, scope: !6103)
!6122 = !DILocation(line: 115, column: 2, scope: !6103)
!6123 = !DISubprogram(name: "__rcu_read_unlock", scope: !4426, file: !4426, line: 75, type: !3033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6124 = !DISubprogram(name: "krealloc", scope: !98, file: !98, line: 226, type: !6125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6125 = !DISubroutineType(types: !6126)
!6126 = !{!123, !4932, !273, !270}
