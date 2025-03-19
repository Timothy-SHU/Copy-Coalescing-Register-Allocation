; ModuleID = 'lib/rhashtable.c'
source_filename = "lib/rhashtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rhashtable_insert_slow: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad rhashtable_insert_slow ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rhashtable_walk_enter: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad rhashtable_walk_enter ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rhashtable_walk_exit: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad rhashtable_walk_exit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rhashtable_walk_start_check: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad rhashtable_walk_start_check ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rhashtable_walk_next: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad rhashtable_walk_next ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rhashtable_walk_peek: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad rhashtable_walk_peek ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rhashtable_walk_stop: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad rhashtable_walk_stop ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rhashtable_init: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad rhashtable_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rhltable_init: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad rhltable_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rhashtable_free_and_destroy: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad rhashtable_free_and_destroy ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rhashtable_destroy: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad rhashtable_destroy ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___rht_bucket_nested: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __rht_bucket_nested ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rht_bucket_nested: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad rht_bucket_nested ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rht_bucket_nested_insert: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad rht_bucket_nested_insert ; .previous"

%struct.lock_class_key = type {}
%struct.static_call_key = type { ptr, %union.anon.2 }
%union.anon.2 = type { i64 }
%struct.pcpu_hot = type { %union.anon.3 }
%union.anon.3 = type { %struct.anon.4, [16 x i8] }
%struct.anon.4 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [8 x i8], [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
%struct.lockdep_map = type {}
%struct.rhashtable_iter = type { ptr, ptr, ptr, %struct.rhashtable_walker, i32, i32, i8 }
%struct.rhashtable_walker = type { %struct.list_head, ptr }
%struct.rhash_head = type { ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhltable = type { %struct.rhashtable }
%union.nested_table = type { ptr }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.__una_u32 = type { i32 }

@__UNIQUE_ID___addressable_rhashtable_insert_slow354 = internal global ptr @rhashtable_insert_slow, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_rhashtable_walk_enter355 = internal global ptr @rhashtable_walk_enter, section ".discard.addressable", align 8, !dbg !281
@__UNIQUE_ID___addressable_rhashtable_walk_exit356 = internal global ptr @rhashtable_walk_exit, section ".discard.addressable", align 8, !dbg !283
@__UNIQUE_ID___addressable_rhashtable_walk_start_check365 = internal global ptr @rhashtable_walk_start_check, section ".discard.addressable", align 8, !dbg !285
@__UNIQUE_ID___addressable_rhashtable_walk_next376 = internal global ptr @rhashtable_walk_next, section ".discard.addressable", align 8, !dbg !287
@__UNIQUE_ID___addressable_rhashtable_walk_peek377 = internal global ptr @rhashtable_walk_peek, section ".discard.addressable", align 8, !dbg !289
@__UNIQUE_ID___addressable_rhashtable_walk_stop378 = internal global ptr @rhashtable_walk_stop, section ".discard.addressable", align 8, !dbg !291
@rhashtable_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !293
@.str = private unnamed_addr constant [11 x i8] c"&ht->mutex\00", align 1, !dbg !314
@rhashtable_init.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !319
@__UNIQUE_ID___addressable_rhashtable_init388 = internal global ptr @rhashtable_init, section ".discard.addressable", align 8, !dbg !321
@__UNIQUE_ID___addressable_rhltable_init389 = internal global ptr @rhltable_init, section ".discard.addressable", align 8, !dbg !323
@.str.2 = private unnamed_addr constant [17 x i8] c"lib/rhashtable.c\00", align 1, !dbg !325
@__UNIQUE_ID___addressable_rhashtable_free_and_destroy390 = internal global ptr @rhashtable_free_and_destroy, section ".discard.addressable", align 8, !dbg !330
@__UNIQUE_ID___addressable_rhashtable_destroy391 = internal global ptr @rhashtable_destroy, section ".discard.addressable", align 8, !dbg !332
@__UNIQUE_ID___addressable___rht_bucket_nested396 = internal global ptr @__rht_bucket_nested, section ".discard.addressable", align 8, !dbg !334
@rht_bucket_nested.rhnull = internal global ptr null, align 8, !dbg !336
@__UNIQUE_ID___addressable_rht_bucket_nested397 = internal global ptr @rht_bucket_nested, section ".discard.addressable", align 8, !dbg !347
@__UNIQUE_ID___addressable_rht_bucket_nested_insert398 = internal global ptr @rht_bucket_nested_insert, section ".discard.addressable", align 8, !dbg !349
@bit_spin_lock.__UNIQUE_ID___addressable___SCK__preempt_schedule176 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !351
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@system_wq = external dso_local global ptr, align 8
@bit_spin_unlock.__UNIQUE_ID___addressable___SCK__preempt_schedule178 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !360
@.str.3 = private unnamed_addr constant [25 x i8] c"include/linux/rcupdate.h\00", align 1, !dbg !366
@bucket_table_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !372
@.str.4 = private unnamed_addr constant [18 x i8] c"rhashtable_bucket\00", align 1, !dbg !384
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !389
@rht_assign_unlock.__UNIQUE_ID___addressable___SCK__preempt_schedule285 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !394
@_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched144 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8, !dbg !411
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID___addressable_rhashtable_insert_slow354, ptr @__UNIQUE_ID___addressable_rhashtable_walk_enter355, ptr @__UNIQUE_ID___addressable_rhashtable_walk_exit356, ptr @__UNIQUE_ID___addressable_rhashtable_walk_start_check365, ptr @__UNIQUE_ID___addressable_rhashtable_walk_next376, ptr @__UNIQUE_ID___addressable_rhashtable_walk_peek377, ptr @__UNIQUE_ID___addressable_rhashtable_walk_stop378, ptr @__UNIQUE_ID___addressable_rhashtable_init388, ptr @__UNIQUE_ID___addressable_rhltable_init389, ptr @__UNIQUE_ID___addressable_rhashtable_free_and_destroy390, ptr @__UNIQUE_ID___addressable_rhashtable_destroy391, ptr @__UNIQUE_ID___addressable___rht_bucket_nested396, ptr @__UNIQUE_ID___addressable_rht_bucket_nested397, ptr @__UNIQUE_ID___addressable_rht_bucket_nested_insert398, ptr @bit_spin_lock.__UNIQUE_ID___addressable___SCK__preempt_schedule176, ptr @bit_spin_unlock.__UNIQUE_ID___addressable___SCK__preempt_schedule178, ptr @rht_assign_unlock.__UNIQUE_ID___addressable___SCK__preempt_schedule285, ptr @_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched144], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @rhashtable_insert_slow(ptr noundef %ht, ptr noundef %key, ptr noundef %obj) #0 align 16 !dbg !427 {
entry:
  %ht.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !431, metadata !DIExpression()), !dbg !435
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !432, metadata !DIExpression()), !dbg !436
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !433, metadata !DIExpression()), !dbg !437
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #20, !dbg !438
  call void @llvm.dbg.declare(metadata ptr %data, metadata !434, metadata !DIExpression()), !dbg !439
  br label %do.body, !dbg !440

do.body:                                          ; preds = %do.cond, %entry
  call void @rcu_read_lock() #21, !dbg !441
  %0 = load ptr, ptr %ht.addr, align 8, !dbg !443
  %1 = load ptr, ptr %key.addr, align 8, !dbg !444
  %2 = load ptr, ptr %obj.addr, align 8, !dbg !445
  %call = call ptr @rhashtable_try_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2) #21, !dbg !446
  store ptr %call, ptr %data, align 8, !dbg !447
  call void @rcu_read_unlock() #21, !dbg !448
  br label %do.cond, !dbg !449

do.cond:                                          ; preds = %do.body
  %3 = load ptr, ptr %data, align 8, !dbg !450
  %call1 = call i64 @PTR_ERR(ptr noundef %3) #21, !dbg !451
  %cmp = icmp eq i64 %call1, -11, !dbg !452
  br i1 %cmp, label %do.body, label %do.end, !dbg !449, !llvm.loop !453

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %data, align 8, !dbg !457
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #20, !dbg !458
  ret ptr %4, !dbg !459
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #3 align 16 !dbg !460 {
entry:
  call void @__rcu_read_lock() #21, !dbg !463
  br label %do.body, !dbg !464

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !465

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !467

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !468

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !470
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rhashtable_try_insert(ptr noundef %ht, ptr noundef %key, ptr noundef %obj) #0 align 16 !dbg !471 {
entry:
  %ht.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %new_tbl = alloca ptr, align 8
  %tbl = alloca ptr, align 8
  %bkt = alloca ptr, align 8
  %flags = alloca i64, align 8
  %hash = alloca i32, align 4
  %data = alloca ptr, align 8
  %__UNIQUE_ID_rcu348 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %__UNIQUE_ID_rcu350 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  %__UNIQUE_ID_rcu352 = alloca ptr, align 8
  %tmp18 = alloca ptr, align 8
  %tmp23 = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !473, metadata !DIExpression()), !dbg !492
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !474, metadata !DIExpression()), !dbg !493
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !475, metadata !DIExpression()), !dbg !494
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_tbl) #20, !dbg !495
  call void @llvm.dbg.declare(metadata ptr %new_tbl, metadata !476, metadata !DIExpression()), !dbg !496
  call void @llvm.lifetime.start.p0(i64 8, ptr %tbl) #20, !dbg !497
  call void @llvm.dbg.declare(metadata ptr %tbl, metadata !477, metadata !DIExpression()), !dbg !498
  call void @llvm.lifetime.start.p0(i64 8, ptr %bkt) #20, !dbg !499
  call void @llvm.dbg.declare(metadata ptr %bkt, metadata !478, metadata !DIExpression()), !dbg !500
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #20, !dbg !501
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !479, metadata !DIExpression()), !dbg !502
  call void @llvm.lifetime.start.p0(i64 4, ptr %hash) #20, !dbg !503
  call void @llvm.dbg.declare(metadata ptr %hash, metadata !480, metadata !DIExpression()), !dbg !504
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #20, !dbg !505
  call void @llvm.dbg.declare(metadata ptr %data, metadata !481, metadata !DIExpression()), !dbg !506
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu348) #20, !dbg !507
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu348, metadata !482, metadata !DIExpression()), !dbg !507
  br label %do.body, !dbg !508

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !510

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !510

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %ht.addr, align 8, !dbg !508
  %tbl1 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 0, !dbg !508
  %1 = load volatile ptr, ptr %tbl1, align 8, !dbg !508
  store ptr %1, ptr %tmp, align 8, !dbg !510
  %2 = load ptr, ptr %tmp, align 8, !dbg !508
  store ptr %2, ptr %__UNIQUE_ID_rcu348, align 8, !dbg !507
  br label %do.body2, !dbg !507

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !512

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !512

do.end4:                                          ; preds = %do.cond3
  %3 = load ptr, ptr %__UNIQUE_ID_rcu348, align 8, !dbg !507
  store ptr %3, ptr %tmp5, align 8, !dbg !512
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu348) #20, !dbg !514
  %4 = load ptr, ptr %tmp5, align 8, !dbg !507
  store ptr %4, ptr %new_tbl, align 8, !dbg !515
  br label %do.body6, !dbg !516

do.body6:                                         ; preds = %do.cond35, %do.end4
  %5 = load ptr, ptr %new_tbl, align 8, !dbg !517
  store ptr %5, ptr %tbl, align 8, !dbg !518
  %6 = load ptr, ptr %ht.addr, align 8, !dbg !519
  %7 = load ptr, ptr %tbl, align 8, !dbg !520
  %8 = load ptr, ptr %obj.addr, align 8, !dbg !521
  %9 = load ptr, ptr %ht.addr, align 8, !dbg !522
  %p = getelementptr inbounds %struct.rhashtable, ptr %9, i32 0, i32 3, !dbg !523
  %call = call i32 @rht_head_hashfn(ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef byval(%struct.rhashtable_params) align 8 %p) #21, !dbg !524
  store i32 %call, ptr %hash, align 4, !dbg !525
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu350) #20, !dbg !526
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu350, metadata !484, metadata !DIExpression()), !dbg !526
  br label %do.body7, !dbg !527

do.body7:                                         ; preds = %do.body6
  br label %do.cond8, !dbg !529

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !529

do.end9:                                          ; preds = %do.cond8
  %10 = load ptr, ptr %tbl, align 8, !dbg !527
  %future_tbl = getelementptr inbounds %struct.bucket_table, ptr %10, i32 0, i32 5, !dbg !527
  %11 = load volatile ptr, ptr %future_tbl, align 16, !dbg !527
  store ptr %11, ptr %tmp10, align 8, !dbg !529
  %12 = load ptr, ptr %tmp10, align 8, !dbg !527
  store ptr %12, ptr %__UNIQUE_ID_rcu350, align 8, !dbg !526
  %13 = load ptr, ptr %__UNIQUE_ID_rcu350, align 8, !dbg !526
  store ptr %13, ptr %tmp11, align 8, !dbg !526
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu350) #20, !dbg !531
  %14 = load ptr, ptr %tmp11, align 8, !dbg !526
  %tobool = icmp ne ptr %14, null, !dbg !531
  br i1 %tobool, label %if.then, label %if.else, !dbg !532

if.then:                                          ; preds = %do.end9
  %15 = load ptr, ptr %tbl, align 8, !dbg !533
  %16 = load i32, ptr %hash, align 4, !dbg !534
  %call12 = call ptr @rht_bucket_var(ptr noundef %15, i32 noundef %16) #21, !dbg !535
  store ptr %call12, ptr %bkt, align 8, !dbg !536
  br label %if.end, !dbg !537

if.else:                                          ; preds = %do.end9
  %17 = load ptr, ptr %ht.addr, align 8, !dbg !538
  %18 = load ptr, ptr %tbl, align 8, !dbg !539
  %19 = load i32, ptr %hash, align 4, !dbg !540
  %call13 = call ptr @rht_bucket_insert(ptr noundef %17, ptr noundef %18, i32 noundef %19) #21, !dbg !541
  store ptr %call13, ptr %bkt, align 8, !dbg !542
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load ptr, ptr %bkt, align 8, !dbg !543
  %cmp = icmp eq ptr %20, null, !dbg !544
  br i1 %cmp, label %if.then14, label %if.else25, !dbg !545

if.then14:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu352) #20, !dbg !546
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu352, metadata !488, metadata !DIExpression()), !dbg !546
  br label %do.body15, !dbg !547

do.body15:                                        ; preds = %if.then14
  br label %do.cond16, !dbg !549

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !549

do.end17:                                         ; preds = %do.cond16
  %21 = load ptr, ptr %tbl, align 8, !dbg !547
  %future_tbl19 = getelementptr inbounds %struct.bucket_table, ptr %21, i32 0, i32 5, !dbg !547
  %22 = load volatile ptr, ptr %future_tbl19, align 16, !dbg !547
  store ptr %22, ptr %tmp18, align 8, !dbg !549
  %23 = load ptr, ptr %tmp18, align 8, !dbg !547
  store ptr %23, ptr %__UNIQUE_ID_rcu352, align 8, !dbg !546
  br label %do.body20, !dbg !546

do.body20:                                        ; preds = %do.end17
  br label %do.cond21, !dbg !551

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !551

do.end22:                                         ; preds = %do.cond21
  %24 = load ptr, ptr %__UNIQUE_ID_rcu352, align 8, !dbg !546
  store ptr %24, ptr %tmp23, align 8, !dbg !551
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu352) #20, !dbg !553
  %25 = load ptr, ptr %tmp23, align 8, !dbg !546
  store ptr %25, ptr %new_tbl, align 8, !dbg !554
  %call24 = call ptr @ERR_PTR(i64 noundef -11) #21, !dbg !555
  store ptr %call24, ptr %data, align 8, !dbg !556
  br label %if.end34, !dbg !557

if.else25:                                        ; preds = %if.end
  %26 = load ptr, ptr %tbl, align 8, !dbg !558
  %27 = load ptr, ptr %bkt, align 8, !dbg !560
  %call26 = call i64 @rht_lock(ptr noundef %26, ptr noundef %27) #21, !dbg !561
  store i64 %call26, ptr %flags, align 8, !dbg !562
  %28 = load ptr, ptr %ht.addr, align 8, !dbg !563
  %29 = load ptr, ptr %bkt, align 8, !dbg !564
  %30 = load ptr, ptr %tbl, align 8, !dbg !565
  %31 = load i32, ptr %hash, align 4, !dbg !566
  %32 = load ptr, ptr %key.addr, align 8, !dbg !567
  %33 = load ptr, ptr %obj.addr, align 8, !dbg !568
  %call27 = call ptr @rhashtable_lookup_one(ptr noundef %28, ptr noundef %29, ptr noundef %30, i32 noundef %31, ptr noundef %32, ptr noundef %33) #21, !dbg !569
  store ptr %call27, ptr %data, align 8, !dbg !570
  %34 = load ptr, ptr %ht.addr, align 8, !dbg !571
  %35 = load ptr, ptr %bkt, align 8, !dbg !572
  %36 = load ptr, ptr %tbl, align 8, !dbg !573
  %37 = load i32, ptr %hash, align 4, !dbg !574
  %38 = load ptr, ptr %obj.addr, align 8, !dbg !575
  %39 = load ptr, ptr %data, align 8, !dbg !576
  %call28 = call ptr @rhashtable_insert_one(ptr noundef %34, ptr noundef %35, ptr noundef %36, i32 noundef %37, ptr noundef %38, ptr noundef %39) #21, !dbg !577
  store ptr %call28, ptr %new_tbl, align 8, !dbg !578
  %40 = load ptr, ptr %new_tbl, align 8, !dbg !579
  %call29 = call i64 @PTR_ERR(ptr noundef %40) #21, !dbg !581
  %cmp30 = icmp ne i64 %call29, -17, !dbg !582
  br i1 %cmp30, label %if.then31, label %if.end33, !dbg !583

if.then31:                                        ; preds = %if.else25
  %41 = load ptr, ptr %new_tbl, align 8, !dbg !584
  %call32 = call ptr @ERR_CAST(ptr noundef %41) #21, !dbg !585
  store ptr %call32, ptr %data, align 8, !dbg !586
  br label %if.end33, !dbg !587

if.end33:                                         ; preds = %if.then31, %if.else25
  %42 = load ptr, ptr %tbl, align 8, !dbg !588
  %43 = load ptr, ptr %bkt, align 8, !dbg !589
  %44 = load i64, ptr %flags, align 8, !dbg !590
  call void @rht_unlock(ptr noundef %42, ptr noundef %43, i64 noundef %44) #21, !dbg !591
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %do.end22
  br label %do.cond35, !dbg !592

do.cond35:                                        ; preds = %if.end34
  %45 = load ptr, ptr %new_tbl, align 8, !dbg !593
  %call36 = call zeroext i1 @IS_ERR_OR_NULL(ptr noundef %45) #21, !dbg !594
  %lnot = xor i1 %call36, true, !dbg !595
  br i1 %lnot, label %do.body6, label %do.end37, !dbg !592, !llvm.loop !596

do.end37:                                         ; preds = %do.cond35
  %46 = load ptr, ptr %data, align 8, !dbg !598
  %call38 = call i64 @PTR_ERR(ptr noundef %46) #21, !dbg !600
  %cmp39 = icmp eq i64 %call38, -11, !dbg !601
  br i1 %cmp39, label %if.then40, label %if.end44, !dbg !602

if.then40:                                        ; preds = %do.end37
  %47 = load ptr, ptr %ht.addr, align 8, !dbg !603
  %48 = load ptr, ptr %tbl, align 8, !dbg !604
  %call41 = call i32 @rhashtable_insert_rehash(ptr noundef %47, ptr noundef %48) #21, !dbg !605
  %tobool42 = icmp ne i32 %call41, 0, !dbg !605
  br i1 %tobool42, label %cond.true, label %cond.false, !dbg !605

cond.true:                                        ; preds = %if.then40
  br label %cond.end, !dbg !605

cond.false:                                       ; preds = %if.then40
  br label %cond.end, !dbg !605

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call41, %cond.true ], [ -11, %cond.false ], !dbg !605
  %conv = sext i32 %cond to i64, !dbg !605
  %call43 = call ptr @ERR_PTR(i64 noundef %conv) #21, !dbg !606
  store ptr %call43, ptr %data, align 8, !dbg !607
  br label %if.end44, !dbg !608

if.end44:                                         ; preds = %cond.end, %do.end37
  %49 = load ptr, ptr %data, align 8, !dbg !609
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #20, !dbg !610
  call void @llvm.lifetime.end.p0(i64 4, ptr %hash) #20, !dbg !610
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #20, !dbg !610
  call void @llvm.lifetime.end.p0(i64 8, ptr %bkt) #20, !dbg !610
  call void @llvm.lifetime.end.p0(i64 8, ptr %tbl) #20, !dbg !610
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_tbl) #20, !dbg !610
  ret ptr %49, !dbg !611
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #4 align 16 !dbg !612 {
entry:
  br label %do.body, !dbg !613

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !614

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #21, !dbg !616
  br label %do.body1, !dbg !617

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !618

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !620
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !621 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !626, metadata !DIExpression()), !dbg !627
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !628
  %1 = ptrtoint ptr %0 to i64, !dbg !629
  ret i64 %1, !dbg !630
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rhashtable_walk_enter(ptr noundef %ht, ptr noundef %iter) #0 align 16 !dbg !631 {
entry:
  %ht.addr = alloca ptr, align 8
  %iter.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !645, metadata !DIExpression()), !dbg !647
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !646, metadata !DIExpression()), !dbg !648
  %0 = load ptr, ptr %ht.addr, align 8, !dbg !649
  %1 = load ptr, ptr %iter.addr, align 8, !dbg !650
  %ht1 = getelementptr inbounds %struct.rhashtable_iter, ptr %1, i32 0, i32 0, !dbg !651
  store ptr %0, ptr %ht1, align 8, !dbg !652
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !653
  %p = getelementptr inbounds %struct.rhashtable_iter, ptr %2, i32 0, i32 1, !dbg !654
  store ptr null, ptr %p, align 8, !dbg !655
  %3 = load ptr, ptr %iter.addr, align 8, !dbg !656
  %slot = getelementptr inbounds %struct.rhashtable_iter, ptr %3, i32 0, i32 4, !dbg !657
  store i32 0, ptr %slot, align 8, !dbg !658
  %4 = load ptr, ptr %iter.addr, align 8, !dbg !659
  %skip = getelementptr inbounds %struct.rhashtable_iter, ptr %4, i32 0, i32 5, !dbg !660
  store i32 0, ptr %skip, align 4, !dbg !661
  %5 = load ptr, ptr %iter.addr, align 8, !dbg !662
  %end_of_table = getelementptr inbounds %struct.rhashtable_iter, ptr %5, i32 0, i32 6, !dbg !663
  store i8 0, ptr %end_of_table, align 8, !dbg !664
  %6 = load ptr, ptr %ht.addr, align 8, !dbg !665
  %lock = getelementptr inbounds %struct.rhashtable, ptr %6, i32 0, i32 7, !dbg !666
  call void @spin_lock(ptr noundef %lock) #21, !dbg !667
  br label %do.body, !dbg !668

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !670

do.end:                                           ; preds = %do.body
  %7 = load ptr, ptr %ht.addr, align 8, !dbg !668
  %tbl = getelementptr inbounds %struct.rhashtable, ptr %7, i32 0, i32 0, !dbg !668
  %8 = load ptr, ptr %tbl, align 8, !dbg !668
  store ptr %8, ptr %tmp, align 8, !dbg !670
  %9 = load ptr, ptr %tmp, align 8, !dbg !668
  %10 = load ptr, ptr %iter.addr, align 8, !dbg !672
  %walker = getelementptr inbounds %struct.rhashtable_iter, ptr %10, i32 0, i32 3, !dbg !673
  %tbl2 = getelementptr inbounds %struct.rhashtable_walker, ptr %walker, i32 0, i32 1, !dbg !674
  store ptr %9, ptr %tbl2, align 8, !dbg !675
  %11 = load ptr, ptr %iter.addr, align 8, !dbg !676
  %walker3 = getelementptr inbounds %struct.rhashtable_iter, ptr %11, i32 0, i32 3, !dbg !677
  %list = getelementptr inbounds %struct.rhashtable_walker, ptr %walker3, i32 0, i32 0, !dbg !678
  %12 = load ptr, ptr %iter.addr, align 8, !dbg !679
  %walker4 = getelementptr inbounds %struct.rhashtable_iter, ptr %12, i32 0, i32 3, !dbg !680
  %tbl5 = getelementptr inbounds %struct.rhashtable_walker, ptr %walker4, i32 0, i32 1, !dbg !681
  %13 = load ptr, ptr %tbl5, align 8, !dbg !681
  %walkers = getelementptr inbounds %struct.bucket_table, ptr %13, i32 0, i32 3, !dbg !682
  call void @list_add(ptr noundef %list, ptr noundef %walkers) #21, !dbg !683
  %14 = load ptr, ptr %ht.addr, align 8, !dbg !684
  %lock6 = getelementptr inbounds %struct.rhashtable, ptr %14, i32 0, i32 7, !dbg !685
  call void @spin_unlock(ptr noundef %lock6) #21, !dbg !686
  ret void, !dbg !687
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #3 align 16 !dbg !688 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !694, metadata !DIExpression()), !dbg !695
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !696
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !696
  call void @_raw_spin_lock(ptr noundef %1) #21, !dbg !696
  ret void, !dbg !697
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !698 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !703, metadata !DIExpression()), !dbg !705
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !704, metadata !DIExpression()), !dbg !706
  %0 = load ptr, ptr %new.addr, align 8, !dbg !707
  %1 = load ptr, ptr %head.addr, align 8, !dbg !708
  %2 = load ptr, ptr %head.addr, align 8, !dbg !709
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !710
  %3 = load ptr, ptr %next, align 8, !dbg !710
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #21, !dbg !711
  ret void, !dbg !712
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #3 align 16 !dbg !713 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !715, metadata !DIExpression()), !dbg !716
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !717
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !717
  call void @_raw_spin_unlock(ptr noundef %1) #21, !dbg !717
  ret void, !dbg !718
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rhashtable_walk_exit(ptr noundef %iter) #0 align 16 !dbg !719 {
entry:
  %iter.addr = alloca ptr, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !723, metadata !DIExpression()), !dbg !724
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !725
  %ht = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 0, !dbg !726
  %1 = load ptr, ptr %ht, align 8, !dbg !726
  %lock = getelementptr inbounds %struct.rhashtable, ptr %1, i32 0, i32 7, !dbg !727
  call void @spin_lock(ptr noundef %lock) #21, !dbg !728
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !729
  %walker = getelementptr inbounds %struct.rhashtable_iter, ptr %2, i32 0, i32 3, !dbg !731
  %tbl = getelementptr inbounds %struct.rhashtable_walker, ptr %walker, i32 0, i32 1, !dbg !732
  %3 = load ptr, ptr %tbl, align 8, !dbg !732
  %tobool = icmp ne ptr %3, null, !dbg !729
  br i1 %tobool, label %if.then, label %if.end, !dbg !733

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %iter.addr, align 8, !dbg !734
  %walker1 = getelementptr inbounds %struct.rhashtable_iter, ptr %4, i32 0, i32 3, !dbg !735
  %list = getelementptr inbounds %struct.rhashtable_walker, ptr %walker1, i32 0, i32 0, !dbg !736
  call void @list_del(ptr noundef %list) #21, !dbg !737
  br label %if.end, !dbg !737

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %iter.addr, align 8, !dbg !738
  %ht2 = getelementptr inbounds %struct.rhashtable_iter, ptr %5, i32 0, i32 0, !dbg !739
  %6 = load ptr, ptr %ht2, align 8, !dbg !739
  %lock3 = getelementptr inbounds %struct.rhashtable, ptr %6, i32 0, i32 7, !dbg !740
  call void @spin_unlock(ptr noundef %lock3) #21, !dbg !741
  ret void, !dbg !742
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #4 align 16 !dbg !743 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !747, metadata !DIExpression()), !dbg !748
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !749
  call void @__list_del_entry(ptr noundef %0) #21, !dbg !750
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !751
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !752
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !753
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !754
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !755
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !756
  ret void, !dbg !757
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rhashtable_walk_start_check(ptr noundef %iter) #0 align 16 !dbg !758 {
entry:
  %retval = alloca i32, align 4
  %iter.addr = alloca ptr, align 8
  %ht = alloca ptr, align 8
  %rhlist = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID_rcu357 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  %p24 = alloca ptr, align 8
  %skip25 = alloca i32, align 4
  %__UNIQUE_ID_rcu359 = alloca ptr, align 8
  %tmp38 = alloca ptr, align 8
  %tmp39 = alloca ptr, align 8
  %p47 = alloca ptr, align 8
  %list48 = alloca ptr, align 8
  %skip49 = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp59 = alloca ptr, align 8
  %__UNIQUE_ID_rcu363 = alloca ptr, align 8
  %tmp74 = alloca ptr, align 8
  %tmp79 = alloca ptr, align 8
  %__UNIQUE_ID_rcu361 = alloca ptr, align 8
  %tmp85 = alloca ptr, align 8
  %tmp87 = alloca ptr, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !762, metadata !DIExpression()), !dbg !794
  call void @llvm.lifetime.start.p0(i64 8, ptr %ht) #20, !dbg !795
  call void @llvm.dbg.declare(metadata ptr %ht, metadata !763, metadata !DIExpression()), !dbg !796
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !797
  %ht1 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 0, !dbg !798
  %1 = load ptr, ptr %ht1, align 8, !dbg !798
  store ptr %1, ptr %ht, align 8, !dbg !796
  call void @llvm.lifetime.start.p0(i64 1, ptr %rhlist) #20, !dbg !799
  call void @llvm.dbg.declare(metadata ptr %rhlist, metadata !764, metadata !DIExpression()), !dbg !800
  %2 = load ptr, ptr %ht, align 8, !dbg !801
  %rhlist2 = getelementptr inbounds %struct.rhashtable, ptr %2, i32 0, i32 4, !dbg !802
  %3 = load i8, ptr %rhlist2, align 8, !dbg !802, !range !803, !noundef !80
  %tobool = trunc i8 %3 to i1, !dbg !802
  %frombool = zext i1 %tobool to i8, !dbg !800
  store i8 %frombool, ptr %rhlist, align 1, !dbg !800
  call void @rcu_read_lock() #21, !dbg !804
  %4 = load ptr, ptr %ht, align 8, !dbg !805
  %lock = getelementptr inbounds %struct.rhashtable, ptr %4, i32 0, i32 7, !dbg !806
  call void @spin_lock(ptr noundef %lock) #21, !dbg !807
  %5 = load ptr, ptr %iter.addr, align 8, !dbg !808
  %walker = getelementptr inbounds %struct.rhashtable_iter, ptr %5, i32 0, i32 3, !dbg !810
  %tbl = getelementptr inbounds %struct.rhashtable_walker, ptr %walker, i32 0, i32 1, !dbg !811
  %6 = load ptr, ptr %tbl, align 8, !dbg !811
  %tobool3 = icmp ne ptr %6, null, !dbg !808
  br i1 %tobool3, label %if.then, label %if.end, !dbg !812

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %iter.addr, align 8, !dbg !813
  %walker4 = getelementptr inbounds %struct.rhashtable_iter, ptr %7, i32 0, i32 3, !dbg !814
  %list = getelementptr inbounds %struct.rhashtable_walker, ptr %walker4, i32 0, i32 0, !dbg !815
  call void @list_del(ptr noundef %list) #21, !dbg !816
  br label %if.end, !dbg !816

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %ht, align 8, !dbg !817
  %lock5 = getelementptr inbounds %struct.rhashtable, ptr %8, i32 0, i32 7, !dbg !818
  call void @spin_unlock(ptr noundef %lock5) #21, !dbg !819
  %9 = load ptr, ptr %iter.addr, align 8, !dbg !820
  %end_of_table = getelementptr inbounds %struct.rhashtable_iter, ptr %9, i32 0, i32 6, !dbg !822
  %10 = load i8, ptr %end_of_table, align 8, !dbg !822, !range !803, !noundef !80
  %tobool6 = trunc i8 %10 to i1, !dbg !822
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !823

if.then7:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !824
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup97, !dbg !824

if.end8:                                          ; preds = %if.end
  %11 = load ptr, ptr %iter.addr, align 8, !dbg !825
  %walker9 = getelementptr inbounds %struct.rhashtable_iter, ptr %11, i32 0, i32 3, !dbg !826
  %tbl10 = getelementptr inbounds %struct.rhashtable_walker, ptr %walker9, i32 0, i32 1, !dbg !827
  %12 = load ptr, ptr %tbl10, align 8, !dbg !827
  %tobool11 = icmp ne ptr %12, null, !dbg !825
  br i1 %tobool11, label %if.end20, label %if.then12, !dbg !828

if.then12:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu357) #20, !dbg !829
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu357, metadata !765, metadata !DIExpression()), !dbg !829
  br label %do.body, !dbg !830

do.body:                                          ; preds = %if.then12
  br label %do.cond, !dbg !832

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !832

do.end:                                           ; preds = %do.cond
  %13 = load ptr, ptr %ht, align 8, !dbg !830
  %tbl13 = getelementptr inbounds %struct.rhashtable, ptr %13, i32 0, i32 0, !dbg !830
  %14 = load volatile ptr, ptr %tbl13, align 8, !dbg !830
  store ptr %14, ptr %tmp, align 8, !dbg !832
  %15 = load ptr, ptr %tmp, align 8, !dbg !830
  store ptr %15, ptr %__UNIQUE_ID_rcu357, align 8, !dbg !829
  br label %do.body14, !dbg !829

do.body14:                                        ; preds = %do.end
  br label %do.cond15, !dbg !834

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !834

do.end16:                                         ; preds = %do.cond15
  %16 = load ptr, ptr %__UNIQUE_ID_rcu357, align 8, !dbg !829
  store ptr %16, ptr %tmp17, align 8, !dbg !834
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu357) #20, !dbg !836
  %17 = load ptr, ptr %tmp17, align 8, !dbg !829
  %18 = load ptr, ptr %iter.addr, align 8, !dbg !837
  %walker18 = getelementptr inbounds %struct.rhashtable_iter, ptr %18, i32 0, i32 3, !dbg !838
  %tbl19 = getelementptr inbounds %struct.rhashtable_walker, ptr %walker18, i32 0, i32 1, !dbg !839
  store ptr %17, ptr %tbl19, align 8, !dbg !840
  %19 = load ptr, ptr %iter.addr, align 8, !dbg !841
  %slot = getelementptr inbounds %struct.rhashtable_iter, ptr %19, i32 0, i32 4, !dbg !842
  store i32 0, ptr %slot, align 8, !dbg !843
  %20 = load ptr, ptr %iter.addr, align 8, !dbg !844
  %skip = getelementptr inbounds %struct.rhashtable_iter, ptr %20, i32 0, i32 5, !dbg !845
  store i32 0, ptr %skip, align 4, !dbg !846
  store i32 -11, ptr %retval, align 4, !dbg !847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup97, !dbg !847

if.end20:                                         ; preds = %if.end8
  %21 = load ptr, ptr %iter.addr, align 8, !dbg !848
  %p = getelementptr inbounds %struct.rhashtable_iter, ptr %21, i32 0, i32 1, !dbg !849
  %22 = load ptr, ptr %p, align 8, !dbg !849
  %tobool21 = icmp ne ptr %22, null, !dbg !848
  br i1 %tobool21, label %land.lhs.true, label %if.else, !dbg !850

land.lhs.true:                                    ; preds = %if.end20
  %23 = load i8, ptr %rhlist, align 1, !dbg !851, !range !803, !noundef !80
  %tobool22 = trunc i8 %23 to i1, !dbg !851
  br i1 %tobool22, label %if.else, label %if.then23, !dbg !852

if.then23:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %p24) #20, !dbg !853
  call void @llvm.dbg.declare(metadata ptr %p24, metadata !769, metadata !DIExpression()), !dbg !854
  call void @llvm.lifetime.start.p0(i64 4, ptr %skip25) #20, !dbg !855
  call void @llvm.dbg.declare(metadata ptr %skip25, metadata !772, metadata !DIExpression()), !dbg !856
  store i32 0, ptr %skip25, align 4, !dbg !856
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !dbg !857, !srcloc !859
  %24 = load ptr, ptr %iter.addr, align 8, !dbg !860
  %walker26 = getelementptr inbounds %struct.rhashtable_iter, ptr %24, i32 0, i32 3, !dbg !860
  %tbl27 = getelementptr inbounds %struct.rhashtable_walker, ptr %walker26, i32 0, i32 1, !dbg !860
  %25 = load ptr, ptr %tbl27, align 8, !dbg !860
  %26 = load ptr, ptr %iter.addr, align 8, !dbg !860
  %slot28 = getelementptr inbounds %struct.rhashtable_iter, ptr %26, i32 0, i32 4, !dbg !860
  %27 = load i32, ptr %slot28, align 8, !dbg !860
  %call = call ptr @rht_bucket(ptr noundef %25, i32 noundef %27) #21, !dbg !860
  %call29 = call ptr @rht_ptr_rcu(ptr noundef %call) #21, !dbg !860
  store ptr %call29, ptr %p24, align 8, !dbg !860
  br label %for.cond, !dbg !860

for.cond:                                         ; preds = %do.end37, %if.then23
  %28 = load ptr, ptr %p24, align 8, !dbg !861
  %call30 = call zeroext i1 @rht_is_a_nulls(ptr noundef %28) #21, !dbg !861
  %lnot = xor i1 %call30, true, !dbg !861
  br i1 %lnot, label %for.body, label %for.end, !dbg !860

for.body:                                         ; preds = %for.cond
  %29 = load i32, ptr %skip25, align 4, !dbg !862
  %inc = add i32 %29, 1, !dbg !862
  store i32 %inc, ptr %skip25, align 4, !dbg !862
  %30 = load ptr, ptr %p24, align 8, !dbg !864
  %31 = load ptr, ptr %iter.addr, align 8, !dbg !866
  %p31 = getelementptr inbounds %struct.rhashtable_iter, ptr %31, i32 0, i32 1, !dbg !867
  %32 = load ptr, ptr %p31, align 8, !dbg !867
  %cmp = icmp eq ptr %30, %32, !dbg !868
  br i1 %cmp, label %if.then32, label %if.end34, !dbg !869

if.then32:                                        ; preds = %for.body
  %33 = load i32, ptr %skip25, align 4, !dbg !870
  %34 = load ptr, ptr %iter.addr, align 8, !dbg !872
  %skip33 = getelementptr inbounds %struct.rhashtable_iter, ptr %34, i32 0, i32 5, !dbg !873
  store i32 %33, ptr %skip33, align 4, !dbg !874
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !875

if.end34:                                         ; preds = %for.body
  br label %for.inc, !dbg !876

for.inc:                                          ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu359) #20, !dbg !877
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu359, metadata !773, metadata !DIExpression()), !dbg !877
  br label %do.body35, !dbg !878

do.body35:                                        ; preds = %for.inc
  br label %do.cond36, !dbg !880

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !880

do.end37:                                         ; preds = %do.cond36
  %35 = load ptr, ptr %p24, align 8, !dbg !878
  %next = getelementptr inbounds %struct.rhash_head, ptr %35, i32 0, i32 0, !dbg !878
  %36 = load volatile ptr, ptr %next, align 8, !dbg !878
  store ptr %36, ptr %tmp38, align 8, !dbg !880
  %37 = load ptr, ptr %tmp38, align 8, !dbg !878
  store ptr %37, ptr %__UNIQUE_ID_rcu359, align 8, !dbg !877
  %38 = load ptr, ptr %__UNIQUE_ID_rcu359, align 8, !dbg !877
  store ptr %38, ptr %tmp39, align 8, !dbg !877
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu359) #20, !dbg !861
  %39 = load ptr, ptr %tmp39, align 8, !dbg !877
  store ptr %39, ptr %p24, align 8, !dbg !861
  br label %for.cond, !dbg !861, !llvm.loop !882

for.end:                                          ; preds = %for.cond
  %40 = load ptr, ptr %iter.addr, align 8, !dbg !884
  %p40 = getelementptr inbounds %struct.rhashtable_iter, ptr %40, i32 0, i32 1, !dbg !885
  store ptr null, ptr %p40, align 8, !dbg !886
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !887
  br label %cleanup, !dbg !887

cleanup:                                          ; preds = %if.then32, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %skip25) #20, !dbg !887
  call void @llvm.lifetime.end.p0(i64 8, ptr %p24) #20, !dbg !887
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup97 [
    i32 0, label %cleanup.cont
    i32 9, label %found
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end96, !dbg !888

if.else:                                          ; preds = %land.lhs.true, %if.end20
  %41 = load ptr, ptr %iter.addr, align 8, !dbg !889
  %p42 = getelementptr inbounds %struct.rhashtable_iter, ptr %41, i32 0, i32 1, !dbg !890
  %42 = load ptr, ptr %p42, align 8, !dbg !890
  %tobool43 = icmp ne ptr %42, null, !dbg !889
  br i1 %tobool43, label %land.lhs.true44, label %if.end95, !dbg !891

land.lhs.true44:                                  ; preds = %if.else
  %43 = load i8, ptr %rhlist, align 1, !dbg !892, !range !803, !noundef !80
  %tobool45 = trunc i8 %43 to i1, !dbg !892
  br i1 %tobool45, label %if.then46, label %if.end95, !dbg !893

if.then46:                                        ; preds = %land.lhs.true44
  call void @llvm.lifetime.start.p0(i64 8, ptr %p47) #20, !dbg !894
  call void @llvm.dbg.declare(metadata ptr %p47, metadata !777, metadata !DIExpression()), !dbg !895
  call void @llvm.lifetime.start.p0(i64 8, ptr %list48) #20, !dbg !896
  call void @llvm.dbg.declare(metadata ptr %list48, metadata !780, metadata !DIExpression()), !dbg !897
  call void @llvm.lifetime.start.p0(i64 4, ptr %skip49) #20, !dbg !898
  call void @llvm.dbg.declare(metadata ptr %skip49, metadata !781, metadata !DIExpression()), !dbg !899
  store i32 0, ptr %skip49, align 4, !dbg !899
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !dbg !900, !srcloc !902
  %44 = load ptr, ptr %iter.addr, align 8, !dbg !903
  %walker50 = getelementptr inbounds %struct.rhashtable_iter, ptr %44, i32 0, i32 3, !dbg !903
  %tbl51 = getelementptr inbounds %struct.rhashtable_walker, ptr %walker50, i32 0, i32 1, !dbg !903
  %45 = load ptr, ptr %tbl51, align 8, !dbg !903
  %46 = load ptr, ptr %iter.addr, align 8, !dbg !903
  %slot52 = getelementptr inbounds %struct.rhashtable_iter, ptr %46, i32 0, i32 4, !dbg !903
  %47 = load i32, ptr %slot52, align 8, !dbg !903
  %call53 = call ptr @rht_bucket(ptr noundef %45, i32 noundef %47) #21, !dbg !903
  %call54 = call ptr @rht_ptr_rcu(ptr noundef %call53) #21, !dbg !903
  store ptr %call54, ptr %p47, align 8, !dbg !903
  br label %for.cond55, !dbg !903

for.cond55:                                       ; preds = %do.end84, %if.then46
  %48 = load ptr, ptr %p47, align 8, !dbg !904
  %call56 = call zeroext i1 @rht_is_a_nulls(ptr noundef %48) #21, !dbg !904
  %lnot57 = xor i1 %call56, true, !dbg !904
  br i1 %lnot57, label %for.body58, label %for.end88, !dbg !903

for.body58:                                       ; preds = %for.cond55
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #20, !dbg !905
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !782, metadata !DIExpression()), !dbg !905
  %49 = load ptr, ptr %p47, align 8, !dbg !905
  store ptr %49, ptr %__mptr, align 8, !dbg !905
  %50 = load ptr, ptr %__mptr, align 8, !dbg !905
  %add.ptr = getelementptr i8, ptr %50, i64 0, !dbg !905
  store ptr %add.ptr, ptr %tmp59, align 8, !dbg !905
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #20, !dbg !906
  %51 = load ptr, ptr %tmp59, align 8, !dbg !905
  store ptr %51, ptr %list48, align 8, !dbg !907
  br label %for.cond60, !dbg !908

for.cond60:                                       ; preds = %do.end78, %for.body58
  %52 = load ptr, ptr %list48, align 8, !dbg !909
  %tobool61 = icmp ne ptr %52, null, !dbg !910
  br i1 %tobool61, label %for.body62, label %for.end80, !dbg !910

for.body62:                                       ; preds = %for.cond60
  %53 = load i32, ptr %skip49, align 4, !dbg !911
  %inc63 = add i32 %53, 1, !dbg !911
  store i32 %inc63, ptr %skip49, align 4, !dbg !911
  %54 = load ptr, ptr %list48, align 8, !dbg !913
  %55 = load ptr, ptr %iter.addr, align 8, !dbg !915
  %list64 = getelementptr inbounds %struct.rhashtable_iter, ptr %55, i32 0, i32 2, !dbg !916
  %56 = load ptr, ptr %list64, align 8, !dbg !916
  %cmp65 = icmp eq ptr %54, %56, !dbg !917
  br i1 %cmp65, label %if.then66, label %if.end69, !dbg !918

if.then66:                                        ; preds = %for.body62
  %57 = load ptr, ptr %p47, align 8, !dbg !919
  %58 = load ptr, ptr %iter.addr, align 8, !dbg !921
  %p67 = getelementptr inbounds %struct.rhashtable_iter, ptr %58, i32 0, i32 1, !dbg !922
  store ptr %57, ptr %p67, align 8, !dbg !923
  %59 = load i32, ptr %skip49, align 4, !dbg !924
  %60 = load ptr, ptr %iter.addr, align 8, !dbg !925
  %skip68 = getelementptr inbounds %struct.rhashtable_iter, ptr %60, i32 0, i32 5, !dbg !926
  store i32 %59, ptr %skip68, align 4, !dbg !927
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup90, !dbg !928

if.end69:                                         ; preds = %for.body62
  br label %for.inc70, !dbg !929

for.inc70:                                        ; preds = %if.end69
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu363) #20, !dbg !930
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu363, metadata !788, metadata !DIExpression()), !dbg !930
  br label %do.body71, !dbg !931

do.body71:                                        ; preds = %for.inc70
  br label %do.cond72, !dbg !933

do.cond72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !933

do.end73:                                         ; preds = %do.cond72
  %61 = load ptr, ptr %list48, align 8, !dbg !931
  %next75 = getelementptr inbounds %struct.rhlist_head, ptr %61, i32 0, i32 1, !dbg !931
  %62 = load volatile ptr, ptr %next75, align 8, !dbg !931
  store ptr %62, ptr %tmp74, align 8, !dbg !933
  %63 = load ptr, ptr %tmp74, align 8, !dbg !931
  store ptr %63, ptr %__UNIQUE_ID_rcu363, align 8, !dbg !930
  br label %do.body76, !dbg !930

do.body76:                                        ; preds = %do.end73
  br label %do.cond77, !dbg !935

do.cond77:                                        ; preds = %do.body76
  br label %do.end78, !dbg !935

do.end78:                                         ; preds = %do.cond77
  %64 = load ptr, ptr %__UNIQUE_ID_rcu363, align 8, !dbg !930
  store ptr %64, ptr %tmp79, align 8, !dbg !935
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu363) #20, !dbg !937
  %65 = load ptr, ptr %tmp79, align 8, !dbg !930
  store ptr %65, ptr %list48, align 8, !dbg !938
  br label %for.cond60, !dbg !939, !llvm.loop !940

for.end80:                                        ; preds = %for.cond60
  br label %for.inc81, !dbg !942

for.inc81:                                        ; preds = %for.end80
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu361) #20, !dbg !943
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu361, metadata !791, metadata !DIExpression()), !dbg !943
  br label %do.body82, !dbg !944

do.body82:                                        ; preds = %for.inc81
  br label %do.cond83, !dbg !946

do.cond83:                                        ; preds = %do.body82
  br label %do.end84, !dbg !946

do.end84:                                         ; preds = %do.cond83
  %66 = load ptr, ptr %p47, align 8, !dbg !944
  %next86 = getelementptr inbounds %struct.rhash_head, ptr %66, i32 0, i32 0, !dbg !944
  %67 = load volatile ptr, ptr %next86, align 8, !dbg !944
  store ptr %67, ptr %tmp85, align 8, !dbg !946
  %68 = load ptr, ptr %tmp85, align 8, !dbg !944
  store ptr %68, ptr %__UNIQUE_ID_rcu361, align 8, !dbg !943
  %69 = load ptr, ptr %__UNIQUE_ID_rcu361, align 8, !dbg !943
  store ptr %69, ptr %tmp87, align 8, !dbg !943
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu361) #20, !dbg !904
  %70 = load ptr, ptr %tmp87, align 8, !dbg !943
  store ptr %70, ptr %p47, align 8, !dbg !904
  br label %for.cond55, !dbg !904, !llvm.loop !948

for.end88:                                        ; preds = %for.cond55
  %71 = load ptr, ptr %iter.addr, align 8, !dbg !950
  %p89 = getelementptr inbounds %struct.rhashtable_iter, ptr %71, i32 0, i32 1, !dbg !951
  store ptr null, ptr %p89, align 8, !dbg !952
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !953
  br label %cleanup90, !dbg !953

cleanup90:                                        ; preds = %if.then66, %for.end88
  call void @llvm.lifetime.end.p0(i64 4, ptr %skip49) #20, !dbg !953
  call void @llvm.lifetime.end.p0(i64 8, ptr %list48) #20, !dbg !953
  call void @llvm.lifetime.end.p0(i64 8, ptr %p47) #20, !dbg !953
  %cleanup.dest93 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest93, label %cleanup97 [
    i32 0, label %cleanup.cont94
    i32 9, label %found
  ]

cleanup.cont94:                                   ; preds = %cleanup90
  br label %if.end95, !dbg !954

if.end95:                                         ; preds = %cleanup.cont94, %land.lhs.true44, %if.else
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %cleanup.cont
  br label %found, !dbg !851

found:                                            ; preds = %if.end96, %cleanup90, %cleanup
  call void @llvm.dbg.label(metadata !793), !dbg !955
  store i32 0, ptr %retval, align 4, !dbg !956
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup97, !dbg !956

cleanup97:                                        ; preds = %found, %cleanup90, %cleanup, %do.end16, %if.then7
  call void @llvm.lifetime.end.p0(i64 1, ptr %rhlist) #20, !dbg !957
  call void @llvm.lifetime.end.p0(i64 8, ptr %ht) #20, !dbg !957
  %72 = load i32, ptr %retval, align 4, !dbg !957
  ret i32 %72, !dbg !957
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rht_ptr_rcu(ptr noundef %bkt) #4 align 16 !dbg !958 {
entry:
  %bkt.addr = alloca ptr, align 8
  %__UNIQUE_ID_rcu277 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %bkt, ptr %bkt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bkt.addr, metadata !964, metadata !DIExpression()), !dbg !967
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu277) #20, !dbg !968
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu277, metadata !965, metadata !DIExpression()), !dbg !968
  br label %do.body, !dbg !969

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !971

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !971

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %bkt.addr, align 8, !dbg !969
  %1 = load volatile ptr, ptr %0, align 8, !dbg !969
  store ptr %1, ptr %tmp, align 8, !dbg !971
  %2 = load ptr, ptr %tmp, align 8, !dbg !969
  store ptr %2, ptr %__UNIQUE_ID_rcu277, align 8, !dbg !968
  br label %do.body1, !dbg !968

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !973

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !973

do.end3:                                          ; preds = %do.cond2
  %3 = load ptr, ptr %__UNIQUE_ID_rcu277, align 8, !dbg !968
  store ptr %3, ptr %tmp4, align 8, !dbg !973
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu277) #20, !dbg !975
  %4 = load ptr, ptr %tmp4, align 8, !dbg !968
  %5 = load ptr, ptr %bkt.addr, align 8, !dbg !976
  %call = call ptr @__rht_ptr(ptr noundef %4, ptr noundef %5) #21, !dbg !977
  ret ptr %call, !dbg !978
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rht_bucket(ptr noundef %tbl, i32 noundef %hash) #4 align 16 !dbg !979 {
entry:
  %tbl.addr = alloca ptr, align 8
  %hash.addr = alloca i32, align 4
  store ptr %tbl, ptr %tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tbl.addr, metadata !983, metadata !DIExpression()), !dbg !985
  store i32 %hash, ptr %hash.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !984, metadata !DIExpression()), !dbg !986
  %0 = load ptr, ptr %tbl.addr, align 8, !dbg !987
  %nest = getelementptr inbounds %struct.bucket_table, ptr %0, i32 0, i32 1, !dbg !987
  %1 = load i32, ptr %nest, align 4, !dbg !987
  %tobool = icmp ne i32 %1, 0, !dbg !987
  %lnot = xor i1 %tobool, true, !dbg !987
  %lnot1 = xor i1 %lnot, true, !dbg !987
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !987
  %conv = sext i32 %lnot.ext to i64, !dbg !987
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !987
  %tobool2 = icmp ne i64 %expval, 0, !dbg !987
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !987

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %tbl.addr, align 8, !dbg !988
  %3 = load i32, ptr %hash.addr, align 4, !dbg !989
  %call = call ptr @rht_bucket_nested(ptr noundef %2, i32 noundef %3) #21, !dbg !990
  br label %cond.end, !dbg !987

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %tbl.addr, align 8, !dbg !991
  %buckets = getelementptr inbounds %struct.bucket_table, ptr %4, i32 0, i32 8, !dbg !992
  %5 = load i32, ptr %hash.addr, align 4, !dbg !993
  %idxprom = zext i32 %5 to i64, !dbg !991
  %arrayidx = getelementptr [0 x ptr], ptr %buckets, i64 0, i64 %idxprom, !dbg !991
  br label %cond.end, !dbg !987

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call, %cond.true ], [ %arrayidx, %cond.false ], !dbg !987
  ret ptr %cond, !dbg !994
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rht_is_a_nulls(ptr noundef %ptr) #4 align 16 !dbg !995 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1001, metadata !DIExpression()), !dbg !1002
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !1003
  %1 = ptrtoint ptr %0 to i64, !dbg !1004
  %and = and i64 %1, 1, !dbg !1005
  %tobool = icmp ne i64 %and, 0, !dbg !1006
  ret i1 %tobool, !dbg !1007
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @rhashtable_walk_next(ptr noundef %iter) #0 align 16 !dbg !1008 {
entry:
  %retval = alloca ptr, align 8
  %iter.addr = alloca ptr, align 8
  %list = alloca ptr, align 8
  %ht = alloca ptr, align 8
  %p = alloca ptr, align 8
  %rhlist = alloca i8, align 1
  %__UNIQUE_ID_rcu372 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %__UNIQUE_ID_rcu374 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  %tmp21 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp22 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !1012, metadata !DIExpression()), !dbg !1027
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #20, !dbg !1028
  call void @llvm.dbg.declare(metadata ptr %list, metadata !1013, metadata !DIExpression()), !dbg !1029
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !1030
  %list1 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 2, !dbg !1031
  %1 = load ptr, ptr %list1, align 8, !dbg !1031
  store ptr %1, ptr %list, align 8, !dbg !1029
  call void @llvm.lifetime.start.p0(i64 8, ptr %ht) #20, !dbg !1032
  call void @llvm.dbg.declare(metadata ptr %ht, metadata !1014, metadata !DIExpression()), !dbg !1033
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !1034
  %ht2 = getelementptr inbounds %struct.rhashtable_iter, ptr %2, i32 0, i32 0, !dbg !1035
  %3 = load ptr, ptr %ht2, align 8, !dbg !1035
  store ptr %3, ptr %ht, align 8, !dbg !1033
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #20, !dbg !1036
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1015, metadata !DIExpression()), !dbg !1037
  %4 = load ptr, ptr %iter.addr, align 8, !dbg !1038
  %p3 = getelementptr inbounds %struct.rhashtable_iter, ptr %4, i32 0, i32 1, !dbg !1039
  %5 = load ptr, ptr %p3, align 8, !dbg !1039
  store ptr %5, ptr %p, align 8, !dbg !1037
  call void @llvm.lifetime.start.p0(i64 1, ptr %rhlist) #20, !dbg !1040
  call void @llvm.dbg.declare(metadata ptr %rhlist, metadata !1016, metadata !DIExpression()), !dbg !1041
  %6 = load ptr, ptr %ht, align 8, !dbg !1042
  %rhlist4 = getelementptr inbounds %struct.rhashtable, ptr %6, i32 0, i32 4, !dbg !1043
  %7 = load i8, ptr %rhlist4, align 8, !dbg !1043, !range !803, !noundef !80
  %tobool = trunc i8 %7 to i1, !dbg !1043
  %frombool = zext i1 %tobool to i8, !dbg !1041
  store i8 %frombool, ptr %rhlist, align 1, !dbg !1041
  %8 = load ptr, ptr %p, align 8, !dbg !1044
  %tobool5 = icmp ne ptr %8, null, !dbg !1044
  br i1 %tobool5, label %if.then, label %if.end31, !dbg !1045

if.then:                                          ; preds = %entry
  %9 = load i8, ptr %rhlist, align 1, !dbg !1046, !range !803, !noundef !80
  %tobool6 = trunc i8 %9 to i1, !dbg !1046
  br i1 %tobool6, label %lor.lhs.false, label %if.then12, !dbg !1047

lor.lhs.false:                                    ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu372) #20, !dbg !1048
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu372, metadata !1017, metadata !DIExpression()), !dbg !1048
  br label %do.body, !dbg !1049

do.body:                                          ; preds = %lor.lhs.false
  br label %do.cond, !dbg !1051

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1051

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %list, align 8, !dbg !1049
  %next = getelementptr inbounds %struct.rhlist_head, ptr %10, i32 0, i32 1, !dbg !1049
  %11 = load volatile ptr, ptr %next, align 8, !dbg !1049
  store ptr %11, ptr %tmp, align 8, !dbg !1051
  %12 = load ptr, ptr %tmp, align 8, !dbg !1049
  store ptr %12, ptr %__UNIQUE_ID_rcu372, align 8, !dbg !1048
  br label %do.body7, !dbg !1048

do.body7:                                         ; preds = %do.end
  br label %do.cond8, !dbg !1053

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !1053

do.end9:                                          ; preds = %do.cond8
  %13 = load ptr, ptr %__UNIQUE_ID_rcu372, align 8, !dbg !1048
  store ptr %13, ptr %tmp10, align 8, !dbg !1053
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu372) #20, !dbg !1055
  %14 = load ptr, ptr %tmp10, align 8, !dbg !1048
  store ptr %14, ptr %list, align 8, !dbg !1056
  %tobool11 = icmp ne ptr %14, null, !dbg !1056
  br i1 %tobool11, label %if.end, label %if.then12, !dbg !1057

if.then12:                                        ; preds = %do.end9, %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu374) #20, !dbg !1058
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu374, metadata !1022, metadata !DIExpression()), !dbg !1058
  br label %do.body13, !dbg !1059

do.body13:                                        ; preds = %if.then12
  br label %do.cond14, !dbg !1061

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !1061

do.end15:                                         ; preds = %do.cond14
  %15 = load ptr, ptr %p, align 8, !dbg !1059
  %next17 = getelementptr inbounds %struct.rhash_head, ptr %15, i32 0, i32 0, !dbg !1059
  %16 = load volatile ptr, ptr %next17, align 8, !dbg !1059
  store ptr %16, ptr %tmp16, align 8, !dbg !1061
  %17 = load ptr, ptr %tmp16, align 8, !dbg !1059
  store ptr %17, ptr %__UNIQUE_ID_rcu374, align 8, !dbg !1058
  br label %do.body18, !dbg !1058

do.body18:                                        ; preds = %do.end15
  br label %do.cond19, !dbg !1063

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !1063

do.end20:                                         ; preds = %do.cond19
  %18 = load ptr, ptr %__UNIQUE_ID_rcu374, align 8, !dbg !1058
  store ptr %18, ptr %tmp21, align 8, !dbg !1063
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu374) #20, !dbg !1065
  %19 = load ptr, ptr %tmp21, align 8, !dbg !1058
  store ptr %19, ptr %p, align 8, !dbg !1066
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #20, !dbg !1067
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1025, metadata !DIExpression()), !dbg !1067
  %20 = load ptr, ptr %p, align 8, !dbg !1067
  store ptr %20, ptr %__mptr, align 8, !dbg !1067
  %21 = load ptr, ptr %__mptr, align 8, !dbg !1067
  %add.ptr = getelementptr i8, ptr %21, i64 0, !dbg !1067
  store ptr %add.ptr, ptr %tmp22, align 8, !dbg !1067
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #20, !dbg !1068
  %22 = load ptr, ptr %tmp22, align 8, !dbg !1067
  store ptr %22, ptr %list, align 8, !dbg !1069
  br label %if.end, !dbg !1070

if.end:                                           ; preds = %do.end20, %do.end9
  %23 = load ptr, ptr %p, align 8, !dbg !1071
  %call = call zeroext i1 @rht_is_a_nulls(ptr noundef %23) #21, !dbg !1073
  br i1 %call, label %if.end28, label %if.then23, !dbg !1074

if.then23:                                        ; preds = %if.end
  %24 = load ptr, ptr %iter.addr, align 8, !dbg !1075
  %skip = getelementptr inbounds %struct.rhashtable_iter, ptr %24, i32 0, i32 5, !dbg !1077
  %25 = load i32, ptr %skip, align 4, !dbg !1078
  %inc = add i32 %25, 1, !dbg !1078
  store i32 %inc, ptr %skip, align 4, !dbg !1078
  %26 = load ptr, ptr %p, align 8, !dbg !1079
  %27 = load ptr, ptr %iter.addr, align 8, !dbg !1080
  %p24 = getelementptr inbounds %struct.rhashtable_iter, ptr %27, i32 0, i32 1, !dbg !1081
  store ptr %26, ptr %p24, align 8, !dbg !1082
  %28 = load ptr, ptr %list, align 8, !dbg !1083
  %29 = load ptr, ptr %iter.addr, align 8, !dbg !1084
  %list25 = getelementptr inbounds %struct.rhashtable_iter, ptr %29, i32 0, i32 2, !dbg !1085
  store ptr %28, ptr %list25, align 8, !dbg !1086
  %30 = load ptr, ptr %ht, align 8, !dbg !1087
  %31 = load i8, ptr %rhlist, align 1, !dbg !1088, !range !803, !noundef !80
  %tobool26 = trunc i8 %31 to i1, !dbg !1088
  br i1 %tobool26, label %cond.true, label %cond.false, !dbg !1088

cond.true:                                        ; preds = %if.then23
  %32 = load ptr, ptr %list, align 8, !dbg !1089
  %rhead = getelementptr inbounds %struct.rhlist_head, ptr %32, i32 0, i32 0, !dbg !1090
  br label %cond.end, !dbg !1088

cond.false:                                       ; preds = %if.then23
  %33 = load ptr, ptr %p, align 8, !dbg !1091
  br label %cond.end, !dbg !1088

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %rhead, %cond.true ], [ %33, %cond.false ], !dbg !1088
  %call27 = call ptr @rht_obj(ptr noundef %30, ptr noundef %cond) #21, !dbg !1092
  store ptr %call27, ptr %retval, align 8, !dbg !1093
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1093

if.end28:                                         ; preds = %if.end
  %34 = load ptr, ptr %iter.addr, align 8, !dbg !1094
  %skip29 = getelementptr inbounds %struct.rhashtable_iter, ptr %34, i32 0, i32 5, !dbg !1095
  store i32 0, ptr %skip29, align 4, !dbg !1096
  %35 = load ptr, ptr %iter.addr, align 8, !dbg !1097
  %slot = getelementptr inbounds %struct.rhashtable_iter, ptr %35, i32 0, i32 4, !dbg !1098
  %36 = load i32, ptr %slot, align 8, !dbg !1099
  %inc30 = add i32 %36, 1, !dbg !1099
  store i32 %inc30, ptr %slot, align 8, !dbg !1099
  br label %if.end31, !dbg !1100

if.end31:                                         ; preds = %if.end28, %entry
  %37 = load ptr, ptr %iter.addr, align 8, !dbg !1101
  %call32 = call ptr @__rhashtable_walk_find_next(ptr noundef %37) #21, !dbg !1102
  store ptr %call32, ptr %retval, align 8, !dbg !1103
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1103

cleanup:                                          ; preds = %if.end31, %cond.end
  call void @llvm.lifetime.end.p0(i64 1, ptr %rhlist) #20, !dbg !1104
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #20, !dbg !1104
  call void @llvm.lifetime.end.p0(i64 8, ptr %ht) #20, !dbg !1104
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #20, !dbg !1104
  %38 = load ptr, ptr %retval, align 8, !dbg !1104
  ret ptr %38, !dbg !1104
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rht_obj(ptr noundef %ht, ptr noundef %he) #4 align 16 !dbg !1105 {
entry:
  %ht.addr = alloca ptr, align 8
  %he.addr = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !1111, metadata !DIExpression()), !dbg !1113
  store ptr %he, ptr %he.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %he.addr, metadata !1112, metadata !DIExpression()), !dbg !1114
  %0 = load ptr, ptr %he.addr, align 8, !dbg !1115
  %1 = load ptr, ptr %ht.addr, align 8, !dbg !1116
  %p = getelementptr inbounds %struct.rhashtable, ptr %1, i32 0, i32 3, !dbg !1117
  %head_offset = getelementptr inbounds %struct.rhashtable_params, ptr %p, i32 0, i32 3, !dbg !1118
  %2 = load i16, ptr %head_offset, align 2, !dbg !1118
  %conv = zext i16 %2 to i32, !dbg !1116
  %idx.ext = sext i32 %conv to i64, !dbg !1119
  %idx.neg = sub i64 0, %idx.ext, !dbg !1119
  %add.ptr = getelementptr i8, ptr %0, i64 %idx.neg, !dbg !1119
  ret ptr %add.ptr, !dbg !1120
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__rhashtable_walk_find_next(ptr noundef %iter) #0 align 16 !dbg !1121 {
entry:
  %retval = alloca ptr, align 8
  %iter.addr = alloca ptr, align 8
  %tbl = alloca ptr, align 8
  %list = alloca ptr, align 8
  %ht = alloca ptr, align 8
  %p = alloca ptr, align 8
  %rhlist = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %skip = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__UNIQUE_ID_rcu368 = alloca ptr, align 8
  %tmp19 = alloca ptr, align 8
  %tmp23 = alloca ptr, align 8
  %__UNIQUE_ID_rcu366 = alloca ptr, align 8
  %tmp35 = alloca ptr, align 8
  %tmp37 = alloca ptr, align 8
  %__UNIQUE_ID_rcu370 = alloca ptr, align 8
  %tmp68 = alloca ptr, align 8
  %tmp72 = alloca ptr, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !1123, metadata !DIExpression()), !dbg !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %tbl) #20, !dbg !1149
  call void @llvm.dbg.declare(metadata ptr %tbl, metadata !1124, metadata !DIExpression()), !dbg !1150
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !1151
  %walker = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 3, !dbg !1152
  %tbl1 = getelementptr inbounds %struct.rhashtable_walker, ptr %walker, i32 0, i32 1, !dbg !1153
  %1 = load ptr, ptr %tbl1, align 8, !dbg !1153
  store ptr %1, ptr %tbl, align 8, !dbg !1150
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #20, !dbg !1154
  call void @llvm.dbg.declare(metadata ptr %list, metadata !1125, metadata !DIExpression()), !dbg !1155
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !1156
  %list2 = getelementptr inbounds %struct.rhashtable_iter, ptr %2, i32 0, i32 2, !dbg !1157
  %3 = load ptr, ptr %list2, align 8, !dbg !1157
  store ptr %3, ptr %list, align 8, !dbg !1155
  call void @llvm.lifetime.start.p0(i64 8, ptr %ht) #20, !dbg !1158
  call void @llvm.dbg.declare(metadata ptr %ht, metadata !1126, metadata !DIExpression()), !dbg !1159
  %4 = load ptr, ptr %iter.addr, align 8, !dbg !1160
  %ht3 = getelementptr inbounds %struct.rhashtable_iter, ptr %4, i32 0, i32 0, !dbg !1161
  %5 = load ptr, ptr %ht3, align 8, !dbg !1161
  store ptr %5, ptr %ht, align 8, !dbg !1159
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #20, !dbg !1162
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1127, metadata !DIExpression()), !dbg !1163
  %6 = load ptr, ptr %iter.addr, align 8, !dbg !1164
  %p4 = getelementptr inbounds %struct.rhashtable_iter, ptr %6, i32 0, i32 1, !dbg !1165
  %7 = load ptr, ptr %p4, align 8, !dbg !1165
  store ptr %7, ptr %p, align 8, !dbg !1163
  call void @llvm.lifetime.start.p0(i64 1, ptr %rhlist) #20, !dbg !1166
  call void @llvm.dbg.declare(metadata ptr %rhlist, metadata !1128, metadata !DIExpression()), !dbg !1167
  %8 = load ptr, ptr %ht, align 8, !dbg !1168
  %rhlist5 = getelementptr inbounds %struct.rhashtable, ptr %8, i32 0, i32 4, !dbg !1169
  %9 = load i8, ptr %rhlist5, align 8, !dbg !1169, !range !803, !noundef !80
  %tobool = trunc i8 %9 to i1, !dbg !1169
  %frombool = zext i1 %tobool to i8, !dbg !1167
  store i8 %frombool, ptr %rhlist, align 1, !dbg !1167
  %10 = load ptr, ptr %tbl, align 8, !dbg !1170
  %tobool6 = icmp ne ptr %10, null, !dbg !1170
  br i1 %tobool6, label %if.end, label %if.then, !dbg !1172

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1173
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83, !dbg !1173

if.end:                                           ; preds = %entry
  br label %for.cond, !dbg !1174

for.cond:                                         ; preds = %for.inc48, %if.end
  %11 = load ptr, ptr %iter.addr, align 8, !dbg !1175
  %slot = getelementptr inbounds %struct.rhashtable_iter, ptr %11, i32 0, i32 4, !dbg !1176
  %12 = load i32, ptr %slot, align 8, !dbg !1176
  %13 = load ptr, ptr %tbl, align 8, !dbg !1177
  %size = getelementptr inbounds %struct.bucket_table, ptr %13, i32 0, i32 0, !dbg !1178
  %14 = load i32, ptr %size, align 64, !dbg !1178
  %cmp = icmp ult i32 %12, %14, !dbg !1179
  br i1 %cmp, label %for.body, label %for.end51, !dbg !1180

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %skip) #20, !dbg !1181
  call void @llvm.dbg.declare(metadata ptr %skip, metadata !1129, metadata !DIExpression()), !dbg !1182
  %15 = load ptr, ptr %iter.addr, align 8, !dbg !1183
  %skip7 = getelementptr inbounds %struct.rhashtable_iter, ptr %15, i32 0, i32 5, !dbg !1184
  %16 = load i32, ptr %skip7, align 4, !dbg !1184
  store i32 %16, ptr %skip, align 4, !dbg !1182
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !dbg !1185, !srcloc !1187
  %17 = load ptr, ptr %tbl, align 8, !dbg !1188
  %18 = load ptr, ptr %iter.addr, align 8, !dbg !1188
  %slot8 = getelementptr inbounds %struct.rhashtable_iter, ptr %18, i32 0, i32 4, !dbg !1188
  %19 = load i32, ptr %slot8, align 8, !dbg !1188
  %call = call ptr @rht_bucket(ptr noundef %17, i32 noundef %19) #21, !dbg !1188
  %call9 = call ptr @rht_ptr_rcu(ptr noundef %call) #21, !dbg !1188
  store ptr %call9, ptr %p, align 8, !dbg !1188
  br label %for.cond10, !dbg !1188

for.cond10:                                       ; preds = %do.end34, %for.body
  %20 = load ptr, ptr %p, align 8, !dbg !1189
  %call11 = call zeroext i1 @rht_is_a_nulls(ptr noundef %20) #21, !dbg !1189
  %lnot = xor i1 %call11, true, !dbg !1189
  br i1 %lnot, label %for.body12, label %for.end, !dbg !1188

for.body12:                                       ; preds = %for.cond10
  %21 = load i8, ptr %rhlist, align 1, !dbg !1190, !range !803, !noundef !80
  %tobool13 = trunc i8 %21 to i1, !dbg !1190
  br i1 %tobool13, label %if.then14, label %if.end27, !dbg !1191

if.then14:                                        ; preds = %for.body12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #20, !dbg !1192
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1133, metadata !DIExpression()), !dbg !1192
  %22 = load ptr, ptr %p, align 8, !dbg !1192
  store ptr %22, ptr %__mptr, align 8, !dbg !1192
  %23 = load ptr, ptr %__mptr, align 8, !dbg !1192
  %add.ptr = getelementptr i8, ptr %23, i64 0, !dbg !1192
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1192
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #20, !dbg !1193
  %24 = load ptr, ptr %tmp, align 8, !dbg !1192
  store ptr %24, ptr %list, align 8, !dbg !1194
  br label %do.body, !dbg !1195

do.body:                                          ; preds = %do.cond24, %if.then14
  %25 = load i32, ptr %skip, align 4, !dbg !1196
  %tobool15 = icmp ne i32 %25, 0, !dbg !1196
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !1198

if.then16:                                        ; preds = %do.body
  br label %next38, !dbg !1199

if.end17:                                         ; preds = %do.body
  %26 = load i32, ptr %skip, align 4, !dbg !1200
  %dec = add i32 %26, -1, !dbg !1200
  store i32 %dec, ptr %skip, align 4, !dbg !1200
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu368) #20, !dbg !1201
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu368, metadata !1140, metadata !DIExpression()), !dbg !1201
  br label %do.body18, !dbg !1202

do.body18:                                        ; preds = %if.end17
  br label %do.cond, !dbg !1204

do.cond:                                          ; preds = %do.body18
  br label %do.end, !dbg !1204

do.end:                                           ; preds = %do.cond
  %27 = load ptr, ptr %list, align 8, !dbg !1202
  %next = getelementptr inbounds %struct.rhlist_head, ptr %27, i32 0, i32 1, !dbg !1202
  %28 = load volatile ptr, ptr %next, align 8, !dbg !1202
  store ptr %28, ptr %tmp19, align 8, !dbg !1204
  %29 = load ptr, ptr %tmp19, align 8, !dbg !1202
  store ptr %29, ptr %__UNIQUE_ID_rcu368, align 8, !dbg !1201
  br label %do.body20, !dbg !1201

do.body20:                                        ; preds = %do.end
  br label %do.cond21, !dbg !1206

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !1206

do.end22:                                         ; preds = %do.cond21
  %30 = load ptr, ptr %__UNIQUE_ID_rcu368, align 8, !dbg !1201
  store ptr %30, ptr %tmp23, align 8, !dbg !1206
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu368) #20, !dbg !1208
  %31 = load ptr, ptr %tmp23, align 8, !dbg !1201
  store ptr %31, ptr %list, align 8, !dbg !1209
  br label %do.cond24, !dbg !1210

do.cond24:                                        ; preds = %do.end22
  %32 = load ptr, ptr %list, align 8, !dbg !1211
  %tobool25 = icmp ne ptr %32, null, !dbg !1210
  br i1 %tobool25, label %do.body, label %do.end26, !dbg !1210, !llvm.loop !1212

do.end26:                                         ; preds = %do.cond24
  br label %for.inc, !dbg !1214

if.end27:                                         ; preds = %for.body12
  %33 = load i32, ptr %skip, align 4, !dbg !1215
  %tobool28 = icmp ne i32 %33, 0, !dbg !1215
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !1217

if.then29:                                        ; preds = %if.end27
  br label %for.end, !dbg !1218

if.end30:                                         ; preds = %if.end27
  %34 = load i32, ptr %skip, align 4, !dbg !1219
  %dec31 = add i32 %34, -1, !dbg !1219
  store i32 %dec31, ptr %skip, align 4, !dbg !1219
  br label %for.inc, !dbg !1220

for.inc:                                          ; preds = %if.end30, %do.end26
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu366) #20, !dbg !1221
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu366, metadata !1143, metadata !DIExpression()), !dbg !1221
  br label %do.body32, !dbg !1222

do.body32:                                        ; preds = %for.inc
  br label %do.cond33, !dbg !1224

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !1224

do.end34:                                         ; preds = %do.cond33
  %35 = load ptr, ptr %p, align 8, !dbg !1222
  %next36 = getelementptr inbounds %struct.rhash_head, ptr %35, i32 0, i32 0, !dbg !1222
  %36 = load volatile ptr, ptr %next36, align 8, !dbg !1222
  store ptr %36, ptr %tmp35, align 8, !dbg !1224
  %37 = load ptr, ptr %tmp35, align 8, !dbg !1222
  store ptr %37, ptr %__UNIQUE_ID_rcu366, align 8, !dbg !1221
  %38 = load ptr, ptr %__UNIQUE_ID_rcu366, align 8, !dbg !1221
  store ptr %38, ptr %tmp37, align 8, !dbg !1221
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu366) #20, !dbg !1189
  %39 = load ptr, ptr %tmp37, align 8, !dbg !1221
  store ptr %39, ptr %p, align 8, !dbg !1189
  br label %for.cond10, !dbg !1189, !llvm.loop !1226

for.end:                                          ; preds = %if.then29, %for.cond10
  br label %next38, !dbg !1227

next38:                                           ; preds = %for.end, %if.then16
  call void @llvm.dbg.label(metadata !1145), !dbg !1228
  %40 = load ptr, ptr %p, align 8, !dbg !1229
  %call39 = call zeroext i1 @rht_is_a_nulls(ptr noundef %40) #21, !dbg !1231
  br i1 %call39, label %if.end46, label %if.then40, !dbg !1232

if.then40:                                        ; preds = %next38
  %41 = load ptr, ptr %iter.addr, align 8, !dbg !1233
  %skip41 = getelementptr inbounds %struct.rhashtable_iter, ptr %41, i32 0, i32 5, !dbg !1235
  %42 = load i32, ptr %skip41, align 4, !dbg !1236
  %inc = add i32 %42, 1, !dbg !1236
  store i32 %inc, ptr %skip41, align 4, !dbg !1236
  %43 = load ptr, ptr %p, align 8, !dbg !1237
  %44 = load ptr, ptr %iter.addr, align 8, !dbg !1238
  %p42 = getelementptr inbounds %struct.rhashtable_iter, ptr %44, i32 0, i32 1, !dbg !1239
  store ptr %43, ptr %p42, align 8, !dbg !1240
  %45 = load ptr, ptr %list, align 8, !dbg !1241
  %46 = load ptr, ptr %iter.addr, align 8, !dbg !1242
  %list43 = getelementptr inbounds %struct.rhashtable_iter, ptr %46, i32 0, i32 2, !dbg !1243
  store ptr %45, ptr %list43, align 8, !dbg !1244
  %47 = load ptr, ptr %ht, align 8, !dbg !1245
  %48 = load i8, ptr %rhlist, align 1, !dbg !1246, !range !803, !noundef !80
  %tobool44 = trunc i8 %48 to i1, !dbg !1246
  br i1 %tobool44, label %cond.true, label %cond.false, !dbg !1246

cond.true:                                        ; preds = %if.then40
  %49 = load ptr, ptr %list, align 8, !dbg !1247
  %rhead = getelementptr inbounds %struct.rhlist_head, ptr %49, i32 0, i32 0, !dbg !1248
  br label %cond.end, !dbg !1246

cond.false:                                       ; preds = %if.then40
  %50 = load ptr, ptr %p, align 8, !dbg !1249
  br label %cond.end, !dbg !1246

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %rhead, %cond.true ], [ %50, %cond.false ], !dbg !1246
  %call45 = call ptr @rht_obj(ptr noundef %47, ptr noundef %cond) #21, !dbg !1250
  store ptr %call45, ptr %retval, align 8, !dbg !1251
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1251

if.end46:                                         ; preds = %next38
  %51 = load ptr, ptr %iter.addr, align 8, !dbg !1252
  %skip47 = getelementptr inbounds %struct.rhashtable_iter, ptr %51, i32 0, i32 5, !dbg !1253
  store i32 0, ptr %skip47, align 4, !dbg !1254
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1255
  br label %cleanup, !dbg !1255

cleanup:                                          ; preds = %if.end46, %cond.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %skip) #20, !dbg !1255
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup83 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc48, !dbg !1256

for.inc48:                                        ; preds = %cleanup.cont
  %52 = load ptr, ptr %iter.addr, align 8, !dbg !1257
  %slot49 = getelementptr inbounds %struct.rhashtable_iter, ptr %52, i32 0, i32 4, !dbg !1258
  %53 = load i32, ptr %slot49, align 8, !dbg !1259
  %inc50 = add i32 %53, 1, !dbg !1259
  store i32 %inc50, ptr %slot49, align 8, !dbg !1259
  br label %for.cond, !dbg !1260, !llvm.loop !1261

for.end51:                                        ; preds = %for.cond
  %54 = load ptr, ptr %iter.addr, align 8, !dbg !1263
  %p52 = getelementptr inbounds %struct.rhashtable_iter, ptr %54, i32 0, i32 1, !dbg !1264
  store ptr null, ptr %p52, align 8, !dbg !1265
  br label %do.body53, !dbg !1266

do.body53:                                        ; preds = %for.end51
  br label %do.body54, !dbg !1267

do.body54:                                        ; preds = %do.body53
  br label %do.cond55, !dbg !1269

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !1269

do.end56:                                         ; preds = %do.cond55
  br label %do.body57, !dbg !1267

do.body57:                                        ; preds = %do.end56
  br label %do.body58, !dbg !1271

do.body58:                                        ; preds = %do.body57
  br label %do.cond59, !dbg !1273

do.cond59:                                        ; preds = %do.body58
  br label %do.end60, !dbg !1273

do.end60:                                         ; preds = %do.cond59
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !dbg !1271, !srcloc !1275
  br label %do.cond61, !dbg !1271

do.cond61:                                        ; preds = %do.end60
  br label %do.end62, !dbg !1271

do.end62:                                         ; preds = %do.cond61
  br label %do.cond63, !dbg !1267

do.cond63:                                        ; preds = %do.end62
  br label %do.end64, !dbg !1267

do.end64:                                         ; preds = %do.cond63
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu370) #20, !dbg !1276
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu370, metadata !1146, metadata !DIExpression()), !dbg !1276
  br label %do.body65, !dbg !1277

do.body65:                                        ; preds = %do.end64
  br label %do.cond66, !dbg !1279

do.cond66:                                        ; preds = %do.body65
  br label %do.end67, !dbg !1279

do.end67:                                         ; preds = %do.cond66
  %55 = load ptr, ptr %tbl, align 8, !dbg !1277
  %future_tbl = getelementptr inbounds %struct.bucket_table, ptr %55, i32 0, i32 5, !dbg !1277
  %56 = load volatile ptr, ptr %future_tbl, align 16, !dbg !1277
  store ptr %56, ptr %tmp68, align 8, !dbg !1279
  %57 = load ptr, ptr %tmp68, align 8, !dbg !1277
  store ptr %57, ptr %__UNIQUE_ID_rcu370, align 8, !dbg !1276
  br label %do.body69, !dbg !1276

do.body69:                                        ; preds = %do.end67
  br label %do.cond70, !dbg !1281

do.cond70:                                        ; preds = %do.body69
  br label %do.end71, !dbg !1281

do.end71:                                         ; preds = %do.cond70
  %58 = load ptr, ptr %__UNIQUE_ID_rcu370, align 8, !dbg !1276
  store ptr %58, ptr %tmp72, align 8, !dbg !1281
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu370) #20, !dbg !1283
  %59 = load ptr, ptr %tmp72, align 8, !dbg !1276
  %60 = load ptr, ptr %iter.addr, align 8, !dbg !1284
  %walker73 = getelementptr inbounds %struct.rhashtable_iter, ptr %60, i32 0, i32 3, !dbg !1285
  %tbl74 = getelementptr inbounds %struct.rhashtable_walker, ptr %walker73, i32 0, i32 1, !dbg !1286
  store ptr %59, ptr %tbl74, align 8, !dbg !1287
  %61 = load ptr, ptr %iter.addr, align 8, !dbg !1288
  %walker75 = getelementptr inbounds %struct.rhashtable_iter, ptr %61, i32 0, i32 3, !dbg !1290
  %tbl76 = getelementptr inbounds %struct.rhashtable_walker, ptr %walker75, i32 0, i32 1, !dbg !1291
  %62 = load ptr, ptr %tbl76, align 8, !dbg !1291
  %tobool77 = icmp ne ptr %62, null, !dbg !1288
  br i1 %tobool77, label %if.then78, label %if.else, !dbg !1292

if.then78:                                        ; preds = %do.end71
  %63 = load ptr, ptr %iter.addr, align 8, !dbg !1293
  %slot79 = getelementptr inbounds %struct.rhashtable_iter, ptr %63, i32 0, i32 4, !dbg !1295
  store i32 0, ptr %slot79, align 8, !dbg !1296
  %64 = load ptr, ptr %iter.addr, align 8, !dbg !1297
  %skip80 = getelementptr inbounds %struct.rhashtable_iter, ptr %64, i32 0, i32 5, !dbg !1298
  store i32 0, ptr %skip80, align 4, !dbg !1299
  %call81 = call ptr @ERR_PTR(i64 noundef -11) #21, !dbg !1300
  store ptr %call81, ptr %retval, align 8, !dbg !1301
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83, !dbg !1301

if.else:                                          ; preds = %do.end71
  %65 = load ptr, ptr %iter.addr, align 8, !dbg !1302
  %end_of_table = getelementptr inbounds %struct.rhashtable_iter, ptr %65, i32 0, i32 6, !dbg !1304
  store i8 1, ptr %end_of_table, align 8, !dbg !1305
  br label %if.end82

if.end82:                                         ; preds = %if.else
  store ptr null, ptr %retval, align 8, !dbg !1306
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83, !dbg !1306

cleanup83:                                        ; preds = %if.end82, %if.then78, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %rhlist) #20, !dbg !1307
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #20, !dbg !1307
  call void @llvm.lifetime.end.p0(i64 8, ptr %ht) #20, !dbg !1307
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #20, !dbg !1307
  call void @llvm.lifetime.end.p0(i64 8, ptr %tbl) #20, !dbg !1307
  %66 = load ptr, ptr %retval, align 8, !dbg !1307
  ret ptr %66, !dbg !1307
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @rhashtable_walk_peek(ptr noundef %iter) #0 align 16 !dbg !1308 {
entry:
  %retval = alloca ptr, align 8
  %iter.addr = alloca ptr, align 8
  %list = alloca ptr, align 8
  %ht = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !1310, metadata !DIExpression()), !dbg !1314
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #20, !dbg !1315
  call void @llvm.dbg.declare(metadata ptr %list, metadata !1311, metadata !DIExpression()), !dbg !1316
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !1317
  %list1 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 2, !dbg !1318
  %1 = load ptr, ptr %list1, align 8, !dbg !1318
  store ptr %1, ptr %list, align 8, !dbg !1316
  call void @llvm.lifetime.start.p0(i64 8, ptr %ht) #20, !dbg !1319
  call void @llvm.dbg.declare(metadata ptr %ht, metadata !1312, metadata !DIExpression()), !dbg !1320
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !1321
  %ht2 = getelementptr inbounds %struct.rhashtable_iter, ptr %2, i32 0, i32 0, !dbg !1322
  %3 = load ptr, ptr %ht2, align 8, !dbg !1322
  store ptr %3, ptr %ht, align 8, !dbg !1320
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #20, !dbg !1323
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1313, metadata !DIExpression()), !dbg !1324
  %4 = load ptr, ptr %iter.addr, align 8, !dbg !1325
  %p3 = getelementptr inbounds %struct.rhashtable_iter, ptr %4, i32 0, i32 1, !dbg !1326
  %5 = load ptr, ptr %p3, align 8, !dbg !1326
  store ptr %5, ptr %p, align 8, !dbg !1324
  %6 = load ptr, ptr %p, align 8, !dbg !1327
  %tobool = icmp ne ptr %6, null, !dbg !1327
  br i1 %tobool, label %if.then, label %if.end, !dbg !1329

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %ht, align 8, !dbg !1330
  %8 = load ptr, ptr %ht, align 8, !dbg !1331
  %rhlist = getelementptr inbounds %struct.rhashtable, ptr %8, i32 0, i32 4, !dbg !1332
  %9 = load i8, ptr %rhlist, align 8, !dbg !1332, !range !803, !noundef !80
  %tobool4 = trunc i8 %9 to i1, !dbg !1332
  br i1 %tobool4, label %cond.true, label %cond.false, !dbg !1331

cond.true:                                        ; preds = %if.then
  %10 = load ptr, ptr %list, align 8, !dbg !1333
  %rhead = getelementptr inbounds %struct.rhlist_head, ptr %10, i32 0, i32 0, !dbg !1334
  br label %cond.end, !dbg !1331

cond.false:                                       ; preds = %if.then
  %11 = load ptr, ptr %p, align 8, !dbg !1335
  br label %cond.end, !dbg !1331

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %rhead, %cond.true ], [ %11, %cond.false ], !dbg !1331
  %call = call ptr @rht_obj(ptr noundef %7, ptr noundef %cond) #21, !dbg !1336
  store ptr %call, ptr %retval, align 8, !dbg !1337
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1337

if.end:                                           ; preds = %entry
  %12 = load ptr, ptr %iter.addr, align 8, !dbg !1338
  %skip = getelementptr inbounds %struct.rhashtable_iter, ptr %12, i32 0, i32 5, !dbg !1340
  %13 = load i32, ptr %skip, align 4, !dbg !1340
  %tobool5 = icmp ne i32 %13, 0, !dbg !1338
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !1341

if.then6:                                         ; preds = %if.end
  %14 = load ptr, ptr %iter.addr, align 8, !dbg !1342
  %skip7 = getelementptr inbounds %struct.rhashtable_iter, ptr %14, i32 0, i32 5, !dbg !1344
  %15 = load i32, ptr %skip7, align 4, !dbg !1345
  %dec = add i32 %15, -1, !dbg !1345
  store i32 %dec, ptr %skip7, align 4, !dbg !1345
  br label %if.end8, !dbg !1346

if.end8:                                          ; preds = %if.then6, %if.end
  %16 = load ptr, ptr %iter.addr, align 8, !dbg !1347
  %call9 = call ptr @__rhashtable_walk_find_next(ptr noundef %16) #21, !dbg !1348
  store ptr %call9, ptr %retval, align 8, !dbg !1349
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1349

cleanup:                                          ; preds = %if.end8, %cond.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #20, !dbg !1350
  call void @llvm.lifetime.end.p0(i64 8, ptr %ht) #20, !dbg !1350
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #20, !dbg !1350
  %17 = load ptr, ptr %retval, align 8, !dbg !1350
  ret ptr %17, !dbg !1350
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rhashtable_walk_stop(ptr noundef %iter) #0 align 16 !dbg !1351 {
entry:
  %iter.addr = alloca ptr, align 8
  %ht = alloca ptr, align 8
  %tbl = alloca ptr, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !1353, metadata !DIExpression()), !dbg !1357
  call void @llvm.lifetime.start.p0(i64 8, ptr %ht) #20, !dbg !1358
  call void @llvm.dbg.declare(metadata ptr %ht, metadata !1354, metadata !DIExpression()), !dbg !1359
  call void @llvm.lifetime.start.p0(i64 8, ptr %tbl) #20, !dbg !1360
  call void @llvm.dbg.declare(metadata ptr %tbl, metadata !1355, metadata !DIExpression()), !dbg !1361
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !1362
  %walker = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 3, !dbg !1363
  %tbl1 = getelementptr inbounds %struct.rhashtable_walker, ptr %walker, i32 0, i32 1, !dbg !1364
  %1 = load ptr, ptr %tbl1, align 8, !dbg !1364
  store ptr %1, ptr %tbl, align 8, !dbg !1361
  %2 = load ptr, ptr %tbl, align 8, !dbg !1365
  %tobool = icmp ne ptr %2, null, !dbg !1365
  br i1 %tobool, label %if.end, label %if.then, !dbg !1367

if.then:                                          ; preds = %entry
  br label %out, !dbg !1368

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %iter.addr, align 8, !dbg !1369
  %ht2 = getelementptr inbounds %struct.rhashtable_iter, ptr %3, i32 0, i32 0, !dbg !1370
  %4 = load ptr, ptr %ht2, align 8, !dbg !1370
  store ptr %4, ptr %ht, align 8, !dbg !1371
  %5 = load ptr, ptr %ht, align 8, !dbg !1372
  %lock = getelementptr inbounds %struct.rhashtable, ptr %5, i32 0, i32 7, !dbg !1373
  call void @spin_lock(ptr noundef %lock) #21, !dbg !1374
  %6 = load ptr, ptr %tbl, align 8, !dbg !1375
  %rcu = getelementptr inbounds %struct.bucket_table, ptr %6, i32 0, i32 4, !dbg !1377
  %call = call zeroext i1 @rcu_head_after_call_rcu(ptr noundef %rcu, ptr noundef @bucket_table_free_rcu) #21, !dbg !1378
  br i1 %call, label %if.then3, label %if.else, !dbg !1379

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %iter.addr, align 8, !dbg !1380
  %walker4 = getelementptr inbounds %struct.rhashtable_iter, ptr %7, i32 0, i32 3, !dbg !1381
  %tbl5 = getelementptr inbounds %struct.rhashtable_walker, ptr %walker4, i32 0, i32 1, !dbg !1382
  store ptr null, ptr %tbl5, align 8, !dbg !1383
  br label %if.end7, !dbg !1380

if.else:                                          ; preds = %if.end
  %8 = load ptr, ptr %iter.addr, align 8, !dbg !1384
  %walker6 = getelementptr inbounds %struct.rhashtable_iter, ptr %8, i32 0, i32 3, !dbg !1385
  %list = getelementptr inbounds %struct.rhashtable_walker, ptr %walker6, i32 0, i32 0, !dbg !1386
  %9 = load ptr, ptr %tbl, align 8, !dbg !1387
  %walkers = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 3, !dbg !1388
  call void @list_add(ptr noundef %list, ptr noundef %walkers) #21, !dbg !1389
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %10 = load ptr, ptr %ht, align 8, !dbg !1390
  %lock8 = getelementptr inbounds %struct.rhashtable, ptr %10, i32 0, i32 7, !dbg !1391
  call void @spin_unlock(ptr noundef %lock8) #21, !dbg !1392
  br label %out, !dbg !1392

out:                                              ; preds = %if.end7, %if.then
  call void @llvm.dbg.label(metadata !1356), !dbg !1393
  call void @rcu_read_unlock() #21, !dbg !1394
  call void @llvm.lifetime.end.p0(i64 8, ptr %tbl) #20, !dbg !1395
  call void @llvm.lifetime.end.p0(i64 8, ptr %ht) #20, !dbg !1395
  ret void, !dbg !1395
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rcu_head_after_call_rcu(ptr noundef %rhp, ptr noundef %f) #4 align 16 !dbg !1396 {
entry:
  %retval = alloca i1, align 1
  %rhp.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %func = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp23 = alloca i64, align 8
  store ptr %rhp, ptr %rhp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rhp.addr, metadata !1400, metadata !DIExpression()), !dbg !1408
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !1401, metadata !DIExpression()), !dbg !1409
  call void @llvm.lifetime.start.p0(i64 8, ptr %func) #20, !dbg !1410
  call void @llvm.dbg.declare(metadata ptr %func, metadata !1402, metadata !DIExpression()), !dbg !1411
  br label %do.body, !dbg !1412

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1414

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1414

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %rhp.addr, align 8, !dbg !1412
  %func1 = getelementptr inbounds %struct.callback_head, ptr %0, i32 0, i32 1, !dbg !1412
  %1 = load volatile ptr, ptr %func1, align 8, !dbg !1412
  store ptr %1, ptr %tmp, align 8, !dbg !1414
  %2 = load ptr, ptr %tmp, align 8, !dbg !1412
  store ptr %2, ptr %func, align 8, !dbg !1411
  %3 = load ptr, ptr %func, align 8, !dbg !1416
  %4 = load ptr, ptr %f.addr, align 8, !dbg !1418
  %cmp = icmp eq ptr %3, %4, !dbg !1419
  br i1 %cmp, label %if.then, label %if.end, !dbg !1420

if.then:                                          ; preds = %do.end
  store i1 true, ptr %retval, align 1, !dbg !1421
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1421

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #20, !dbg !1422
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1403, metadata !DIExpression()), !dbg !1422
  %5 = load ptr, ptr %func, align 8, !dbg !1422
  %cmp2 = icmp ne ptr %5, inttoptr (i64 -1 to ptr), !dbg !1422
  %lnot = xor i1 %cmp2, true, !dbg !1422
  %lnot3 = xor i1 %lnot, true, !dbg !1422
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !1422
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1422
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !1423
  %tobool = icmp ne i32 %6, 0, !dbg !1423
  %lnot4 = xor i1 %tobool, true, !dbg !1423
  %lnot6 = xor i1 %lnot4, true, !dbg !1423
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !1423
  %conv = sext i32 %lnot.ext7 to i64, !dbg !1423
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1423
  %tobool8 = icmp ne i64 %expval, 0, !dbg !1423
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !1422

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !1423

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #20, !dbg !1424
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1405, metadata !DIExpression()), !dbg !1424
  store i32 2307, ptr %__flags, align 4, !dbg !1424
  br label %do.body11, !dbg !1424

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !1425

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !1425

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !1424

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !1427
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 1090, i32 %7, i64 12) #20, !dbg !1427, !srcloc !1429
  br label %do.cond15, !dbg !1427

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !1427

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !1424

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !1430

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !1430

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #20, !dbg !1423
  br label %do.cond20, !dbg !1424

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !1424

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !1424

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !1422
  %tobool24 = icmp ne i32 %8, 0, !dbg !1422
  %lnot25 = xor i1 %tobool24, true, !dbg !1422
  %lnot27 = xor i1 %lnot25, true, !dbg !1422
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !1422
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !1422
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !1422
  store i64 %expval30, ptr %tmp23, align 8, !dbg !1423
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #20, !dbg !1432
  %9 = load i64, ptr %tmp23, align 8, !dbg !1422
  store i1 false, ptr %retval, align 1, !dbg !1433
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1433

cleanup:                                          ; preds = %if.end22, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %func) #20, !dbg !1434
  %10 = load i1, ptr %retval, align 1, !dbg !1434
  ret i1 %10, !dbg !1434
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bucket_table_free_rcu(ptr noundef %head) #0 align 16 !dbg !1435 {
entry:
  %head.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !1437, metadata !DIExpression()), !dbg !1440
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #20, !dbg !1441
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1438, metadata !DIExpression()), !dbg !1441
  %0 = load ptr, ptr %head.addr, align 8, !dbg !1441
  store ptr %0, ptr %__mptr, align 8, !dbg !1441
  %1 = load ptr, ptr %__mptr, align 8, !dbg !1441
  %add.ptr = getelementptr i8, ptr %1, i64 -32, !dbg !1441
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1441
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #20, !dbg !1442
  %2 = load ptr, ptr %tmp, align 8, !dbg !1441
  call void @bucket_table_free(ptr noundef %2) #21, !dbg !1443
  ret void, !dbg !1444
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rhashtable_init(ptr noundef %ht, ptr noundef %params) #0 align 16 !dbg !295 {
entry:
  %retval = alloca i32, align 4
  %ht.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %tbl = alloca ptr, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  %__UNIQUE_ID___x383 = alloca i16, align 2
  %__UNIQUE_ID___y384 = alloca i16, align 2
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___x385 = alloca i16, align 2
  %__UNIQUE_ID___y386 = alloca i16, align 2
  %tmp140 = alloca i32, align 4
  %.compoundliteral170 = alloca %struct.atomic64_t, align 8
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !301, metadata !DIExpression()), !dbg !1445
  store ptr %params, ptr %params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %params.addr, metadata !302, metadata !DIExpression()), !dbg !1446
  call void @llvm.lifetime.start.p0(i64 8, ptr %tbl) #20, !dbg !1447
  call void @llvm.dbg.declare(metadata ptr %tbl, metadata !303, metadata !DIExpression()), !dbg !1448
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #20, !dbg !1449
  call void @llvm.dbg.declare(metadata ptr %size, metadata !304, metadata !DIExpression()), !dbg !1450
  %0 = load ptr, ptr %params.addr, align 8, !dbg !1451
  %key_len = getelementptr inbounds %struct.rhashtable_params, ptr %0, i32 0, i32 1, !dbg !1453
  %1 = load i16, ptr %key_len, align 2, !dbg !1453
  %tobool = icmp ne i16 %1, 0, !dbg !1451
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true, !dbg !1454

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %params.addr, align 8, !dbg !1455
  %obj_hashfn = getelementptr inbounds %struct.rhashtable_params, ptr %2, i32 0, i32 8, !dbg !1456
  %3 = load ptr, ptr %obj_hashfn, align 8, !dbg !1456
  %tobool1 = icmp ne ptr %3, null, !dbg !1455
  br i1 %tobool1, label %lor.lhs.false, label %if.then, !dbg !1457

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr %params.addr, align 8, !dbg !1458
  %obj_hashfn2 = getelementptr inbounds %struct.rhashtable_params, ptr %4, i32 0, i32 8, !dbg !1459
  %5 = load ptr, ptr %obj_hashfn2, align 8, !dbg !1459
  %tobool3 = icmp ne ptr %5, null, !dbg !1458
  br i1 %tobool3, label %land.lhs.true4, label %if.end, !dbg !1460

land.lhs.true4:                                   ; preds = %lor.lhs.false
  %6 = load ptr, ptr %params.addr, align 8, !dbg !1461
  %obj_cmpfn = getelementptr inbounds %struct.rhashtable_params, ptr %6, i32 0, i32 9, !dbg !1462
  %7 = load ptr, ptr %obj_cmpfn, align 8, !dbg !1462
  %tobool5 = icmp ne ptr %7, null, !dbg !1461
  br i1 %tobool5, label %if.end, label %if.then, !dbg !1463

if.then:                                          ; preds = %land.lhs.true4, %land.lhs.true
  store i32 -22, ptr %retval, align 4, !dbg !1464
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1464

if.end:                                           ; preds = %land.lhs.true4, %lor.lhs.false
  %8 = load ptr, ptr %ht.addr, align 8, !dbg !1465
  call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 136, i1 false), !dbg !1466
  br label %do.body, !dbg !1467

do.body:                                          ; preds = %if.end
  %9 = load ptr, ptr %ht.addr, align 8, !dbg !1468
  %mutex = getelementptr inbounds %struct.rhashtable, ptr %9, i32 0, i32 6, !dbg !1468
  call void @__mutex_init(ptr noundef %mutex, ptr noundef @.str, ptr noundef @rhashtable_init.__key) #21, !dbg !1468
  br label %do.cond, !dbg !1468

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1468

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !1470

do.body6:                                         ; preds = %do.end
  %10 = load ptr, ptr %ht.addr, align 8, !dbg !1471
  %lock = getelementptr inbounds %struct.rhashtable, ptr %10, i32 0, i32 7, !dbg !1471
  %call = call ptr @spinlock_check(ptr noundef %lock) #21, !dbg !1471
  %11 = load ptr, ptr %ht.addr, align 8, !dbg !1471
  %lock7 = getelementptr inbounds %struct.rhashtable, ptr %11, i32 0, i32 7, !dbg !1471
  %12 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !1471
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %12, i32 0, i32 0, !dbg !1471
  %13 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !1471
  %counter = getelementptr inbounds %struct.atomic_t, ptr %13, i32 0, i32 0, !dbg !1471
  store i32 0, ptr %counter, align 4, !dbg !1471
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock7, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !1471
  br label %do.cond8, !dbg !1471

do.cond8:                                         ; preds = %do.body6
  br label %do.end9, !dbg !1471

do.end9:                                          ; preds = %do.cond8
  %14 = load ptr, ptr %ht.addr, align 8, !dbg !1473
  %p = getelementptr inbounds %struct.rhashtable, ptr %14, i32 0, i32 3, !dbg !1474
  %15 = load ptr, ptr %params.addr, align 8, !dbg !1475
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %p, ptr align 8 %15, i64 40, i1 false), !dbg !1476
  %16 = load ptr, ptr %params.addr, align 8, !dbg !1477
  %min_size = getelementptr inbounds %struct.rhashtable_params, ptr %16, i32 0, i32 5, !dbg !1479
  %17 = load i16, ptr %min_size, align 4, !dbg !1479
  %tobool10 = icmp ne i16 %17, 0, !dbg !1477
  br i1 %tobool10, label %if.then11, label %if.end49, !dbg !1480

if.then11:                                        ; preds = %do.end9
  %18 = load ptr, ptr %params.addr, align 8, !dbg !1481
  %min_size12 = getelementptr inbounds %struct.rhashtable_params, ptr %18, i32 0, i32 5, !dbg !1481
  %19 = load i16, ptr %min_size12, align 4, !dbg !1481
  %20 = call i1 @llvm.is.constant.i16(i16 %19), !dbg !1481
  br i1 %20, label %cond.true, label %cond.false40, !dbg !1481

cond.true:                                        ; preds = %if.then11
  %21 = load ptr, ptr %params.addr, align 8, !dbg !1481
  %min_size13 = getelementptr inbounds %struct.rhashtable_params, ptr %21, i32 0, i32 5, !dbg !1481
  %22 = load i16, ptr %min_size13, align 4, !dbg !1481
  %conv = zext i16 %22 to i32, !dbg !1481
  %cmp = icmp eq i32 %conv, 1, !dbg !1481
  br i1 %cmp, label %cond.true15, label %cond.false, !dbg !1481

cond.true15:                                      ; preds = %cond.true
  br label %cond.end38, !dbg !1481

cond.false:                                       ; preds = %cond.true
  %23 = load ptr, ptr %params.addr, align 8, !dbg !1481
  %min_size16 = getelementptr inbounds %struct.rhashtable_params, ptr %23, i32 0, i32 5, !dbg !1481
  %24 = load i16, ptr %min_size16, align 4, !dbg !1481
  %conv17 = zext i16 %24 to i32, !dbg !1481
  %sub = sub i32 %conv17, 1, !dbg !1481
  %25 = call i1 @llvm.is.constant.i32(i32 %sub), !dbg !1481
  br i1 %25, label %cond.true18, label %cond.false31, !dbg !1481

cond.true18:                                      ; preds = %cond.false
  %26 = load ptr, ptr %params.addr, align 8, !dbg !1481
  %min_size19 = getelementptr inbounds %struct.rhashtable_params, ptr %26, i32 0, i32 5, !dbg !1481
  %27 = load i16, ptr %min_size19, align 4, !dbg !1481
  %conv20 = zext i16 %27 to i32, !dbg !1481
  %sub21 = sub i32 %conv20, 1, !dbg !1481
  %cmp22 = icmp slt i32 %sub21, 2, !dbg !1481
  br i1 %cmp22, label %cond.true24, label %cond.false25, !dbg !1481

cond.true24:                                      ; preds = %cond.true18
  br label %cond.end, !dbg !1481

cond.false25:                                     ; preds = %cond.true18
  %28 = load ptr, ptr %params.addr, align 8, !dbg !1481
  %min_size26 = getelementptr inbounds %struct.rhashtable_params, ptr %28, i32 0, i32 5, !dbg !1481
  %29 = load i16, ptr %min_size26, align 4, !dbg !1481
  %conv27 = zext i16 %29 to i32, !dbg !1481
  %sub28 = sub i32 %conv27, 1, !dbg !1481
  %conv29 = sext i32 %sub28 to i64, !dbg !1481
  %30 = call i64 @llvm.ctlz.i64(i64 %conv29, i1 true), !dbg !1481
  %cast = trunc i64 %30 to i32, !dbg !1481
  %sub30 = sub i32 63, %cast, !dbg !1481
  br label %cond.end, !dbg !1481

cond.end:                                         ; preds = %cond.false25, %cond.true24
  %cond = phi i32 [ 0, %cond.true24 ], [ %sub30, %cond.false25 ], !dbg !1481
  br label %cond.end36, !dbg !1481

cond.false31:                                     ; preds = %cond.false
  %31 = load ptr, ptr %params.addr, align 8, !dbg !1481
  %min_size32 = getelementptr inbounds %struct.rhashtable_params, ptr %31, i32 0, i32 5, !dbg !1481
  %32 = load i16, ptr %min_size32, align 4, !dbg !1481
  %conv33 = zext i16 %32 to i32, !dbg !1481
  %sub34 = sub i32 %conv33, 1, !dbg !1481
  %call35 = call i32 @__ilog2_u32(i32 noundef %sub34) #22, !dbg !1481
  br label %cond.end36, !dbg !1481

cond.end36:                                       ; preds = %cond.false31, %cond.end
  %cond37 = phi i32 [ %cond, %cond.end ], [ %call35, %cond.false31 ], !dbg !1481
  %add = add i32 %cond37, 1, !dbg !1481
  %sh_prom = zext i32 %add to i64, !dbg !1481
  %shl = shl i64 1, %sh_prom, !dbg !1481
  br label %cond.end38, !dbg !1481

cond.end38:                                       ; preds = %cond.end36, %cond.true15
  %cond39 = phi i64 [ 1, %cond.true15 ], [ %shl, %cond.end36 ], !dbg !1481
  br label %cond.end44, !dbg !1481

cond.false40:                                     ; preds = %if.then11
  %33 = load ptr, ptr %params.addr, align 8, !dbg !1481
  %min_size41 = getelementptr inbounds %struct.rhashtable_params, ptr %33, i32 0, i32 5, !dbg !1481
  %34 = load i16, ptr %min_size41, align 4, !dbg !1481
  %conv42 = zext i16 %34 to i64, !dbg !1481
  %call43 = call i64 @__roundup_pow_of_two(i64 noundef %conv42) #22, !dbg !1481
  br label %cond.end44, !dbg !1481

cond.end44:                                       ; preds = %cond.false40, %cond.end38
  %cond45 = phi i64 [ %cond39, %cond.end38 ], [ %call43, %cond.false40 ], !dbg !1481
  %conv46 = trunc i64 %cond45 to i16, !dbg !1481
  %35 = load ptr, ptr %ht.addr, align 8, !dbg !1482
  %p47 = getelementptr inbounds %struct.rhashtable, ptr %35, i32 0, i32 3, !dbg !1483
  %min_size48 = getelementptr inbounds %struct.rhashtable_params, ptr %p47, i32 0, i32 5, !dbg !1484
  store i16 %conv46, ptr %min_size48, align 4, !dbg !1485
  br label %if.end49, !dbg !1482

if.end49:                                         ; preds = %cond.end44, %do.end9
  %36 = load ptr, ptr %ht.addr, align 8, !dbg !1486
  %max_elems = getelementptr inbounds %struct.rhashtable, ptr %36, i32 0, i32 2, !dbg !1487
  store i32 -2147483648, ptr %max_elems, align 4, !dbg !1488
  %37 = load ptr, ptr %params.addr, align 8, !dbg !1489
  %max_size = getelementptr inbounds %struct.rhashtable_params, ptr %37, i32 0, i32 4, !dbg !1491
  %38 = load i32, ptr %max_size, align 8, !dbg !1491
  %tobool50 = icmp ne i32 %38, 0, !dbg !1489
  br i1 %tobool50, label %if.then51, label %if.end93, !dbg !1492

if.then51:                                        ; preds = %if.end49
  %39 = load ptr, ptr %params.addr, align 8, !dbg !1493
  %max_size52 = getelementptr inbounds %struct.rhashtable_params, ptr %39, i32 0, i32 4, !dbg !1493
  %40 = load i32, ptr %max_size52, align 8, !dbg !1493
  %41 = call i1 @llvm.is.constant.i32(i32 %40), !dbg !1493
  br i1 %41, label %cond.true53, label %cond.false74, !dbg !1493

cond.true53:                                      ; preds = %if.then51
  %42 = load ptr, ptr %params.addr, align 8, !dbg !1493
  %max_size54 = getelementptr inbounds %struct.rhashtable_params, ptr %42, i32 0, i32 4, !dbg !1493
  %43 = load i32, ptr %max_size54, align 8, !dbg !1493
  %44 = call i1 @llvm.is.constant.i32(i32 %43), !dbg !1493
  br i1 %44, label %cond.true55, label %cond.false67, !dbg !1493

cond.true55:                                      ; preds = %cond.true53
  %45 = load ptr, ptr %params.addr, align 8, !dbg !1493
  %max_size56 = getelementptr inbounds %struct.rhashtable_params, ptr %45, i32 0, i32 4, !dbg !1493
  %46 = load i32, ptr %max_size56, align 8, !dbg !1493
  %cmp57 = icmp ult i32 %46, 2, !dbg !1493
  br i1 %cmp57, label %cond.true59, label %cond.false60, !dbg !1493

cond.true59:                                      ; preds = %cond.true55
  br label %cond.end65, !dbg !1493

cond.false60:                                     ; preds = %cond.true55
  %47 = load ptr, ptr %params.addr, align 8, !dbg !1493
  %max_size61 = getelementptr inbounds %struct.rhashtable_params, ptr %47, i32 0, i32 4, !dbg !1493
  %48 = load i32, ptr %max_size61, align 8, !dbg !1493
  %conv62 = zext i32 %48 to i64, !dbg !1493
  %49 = call i64 @llvm.ctlz.i64(i64 %conv62, i1 true), !dbg !1493
  %cast63 = trunc i64 %49 to i32, !dbg !1493
  %sub64 = sub i32 63, %cast63, !dbg !1493
  br label %cond.end65, !dbg !1493

cond.end65:                                       ; preds = %cond.false60, %cond.true59
  %cond66 = phi i32 [ 0, %cond.true59 ], [ %sub64, %cond.false60 ], !dbg !1493
  br label %cond.end70, !dbg !1493

cond.false67:                                     ; preds = %cond.true53
  %50 = load ptr, ptr %params.addr, align 8, !dbg !1493
  %max_size68 = getelementptr inbounds %struct.rhashtable_params, ptr %50, i32 0, i32 4, !dbg !1493
  %51 = load i32, ptr %max_size68, align 8, !dbg !1493
  %call69 = call i32 @__ilog2_u32(i32 noundef %51) #22, !dbg !1493
  br label %cond.end70, !dbg !1493

cond.end70:                                       ; preds = %cond.false67, %cond.end65
  %cond71 = phi i32 [ %cond66, %cond.end65 ], [ %call69, %cond.false67 ], !dbg !1493
  %sh_prom72 = zext i32 %cond71 to i64, !dbg !1493
  %shl73 = shl i64 1, %sh_prom72, !dbg !1493
  br label %cond.end78, !dbg !1493

cond.false74:                                     ; preds = %if.then51
  %52 = load ptr, ptr %params.addr, align 8, !dbg !1493
  %max_size75 = getelementptr inbounds %struct.rhashtable_params, ptr %52, i32 0, i32 4, !dbg !1493
  %53 = load i32, ptr %max_size75, align 8, !dbg !1493
  %conv76 = zext i32 %53 to i64, !dbg !1493
  %call77 = call i64 @__rounddown_pow_of_two(i64 noundef %conv76) #22, !dbg !1493
  br label %cond.end78, !dbg !1493

cond.end78:                                       ; preds = %cond.false74, %cond.end70
  %cond79 = phi i64 [ %shl73, %cond.end70 ], [ %call77, %cond.false74 ], !dbg !1493
  %conv80 = trunc i64 %cond79 to i32, !dbg !1493
  %54 = load ptr, ptr %ht.addr, align 8, !dbg !1495
  %p81 = getelementptr inbounds %struct.rhashtable, ptr %54, i32 0, i32 3, !dbg !1496
  %max_size82 = getelementptr inbounds %struct.rhashtable_params, ptr %p81, i32 0, i32 4, !dbg !1497
  store i32 %conv80, ptr %max_size82, align 8, !dbg !1498
  %55 = load ptr, ptr %ht.addr, align 8, !dbg !1499
  %p83 = getelementptr inbounds %struct.rhashtable, ptr %55, i32 0, i32 3, !dbg !1501
  %max_size84 = getelementptr inbounds %struct.rhashtable_params, ptr %p83, i32 0, i32 4, !dbg !1502
  %56 = load i32, ptr %max_size84, align 8, !dbg !1502
  %57 = load ptr, ptr %ht.addr, align 8, !dbg !1503
  %max_elems85 = getelementptr inbounds %struct.rhashtable, ptr %57, i32 0, i32 2, !dbg !1504
  %58 = load i32, ptr %max_elems85, align 4, !dbg !1504
  %div = udiv i32 %58, 2, !dbg !1505
  %cmp86 = icmp ult i32 %56, %div, !dbg !1506
  br i1 %cmp86, label %if.then88, label %if.end92, !dbg !1507

if.then88:                                        ; preds = %cond.end78
  %59 = load ptr, ptr %ht.addr, align 8, !dbg !1508
  %p89 = getelementptr inbounds %struct.rhashtable, ptr %59, i32 0, i32 3, !dbg !1509
  %max_size90 = getelementptr inbounds %struct.rhashtable_params, ptr %p89, i32 0, i32 4, !dbg !1510
  %60 = load i32, ptr %max_size90, align 8, !dbg !1510
  %mul = mul i32 %60, 2, !dbg !1511
  %61 = load ptr, ptr %ht.addr, align 8, !dbg !1512
  %max_elems91 = getelementptr inbounds %struct.rhashtable, ptr %61, i32 0, i32 2, !dbg !1513
  store i32 %mul, ptr %max_elems91, align 4, !dbg !1514
  br label %if.end92, !dbg !1512

if.end92:                                         ; preds = %if.then88, %cond.end78
  br label %if.end93, !dbg !1515

if.end93:                                         ; preds = %if.end92, %if.end49
  call void @llvm.lifetime.start.p0(i64 2, ptr %__UNIQUE_ID___x383) #20, !dbg !1516
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x383, metadata !305, metadata !DIExpression()), !dbg !1516
  %62 = load ptr, ptr %ht.addr, align 8, !dbg !1516
  %p94 = getelementptr inbounds %struct.rhashtable, ptr %62, i32 0, i32 3, !dbg !1516
  %min_size95 = getelementptr inbounds %struct.rhashtable_params, ptr %p94, i32 0, i32 5, !dbg !1516
  %63 = load i16, ptr %min_size95, align 4, !dbg !1516
  store i16 %63, ptr %__UNIQUE_ID___x383, align 2, !dbg !1516
  call void @llvm.lifetime.start.p0(i64 2, ptr %__UNIQUE_ID___y384) #20, !dbg !1516
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y384, metadata !307, metadata !DIExpression()), !dbg !1516
  store i16 4, ptr %__UNIQUE_ID___y384, align 2, !dbg !1516
  %64 = load i16, ptr %__UNIQUE_ID___x383, align 2, !dbg !1516
  %conv96 = zext i16 %64 to i32, !dbg !1516
  %65 = load i16, ptr %__UNIQUE_ID___y384, align 2, !dbg !1516
  %conv97 = zext i16 %65 to i32, !dbg !1516
  %cmp98 = icmp sgt i32 %conv96, %conv97, !dbg !1516
  br i1 %cmp98, label %cond.true100, label %cond.false102, !dbg !1516

cond.true100:                                     ; preds = %if.end93
  %66 = load i16, ptr %__UNIQUE_ID___x383, align 2, !dbg !1516
  %conv101 = zext i16 %66 to i32, !dbg !1516
  br label %cond.end104, !dbg !1516

cond.false102:                                    ; preds = %if.end93
  %67 = load i16, ptr %__UNIQUE_ID___y384, align 2, !dbg !1516
  %conv103 = zext i16 %67 to i32, !dbg !1516
  br label %cond.end104, !dbg !1516

cond.end104:                                      ; preds = %cond.false102, %cond.true100
  %cond105 = phi i32 [ %conv101, %cond.true100 ], [ %conv103, %cond.false102 ], !dbg !1516
  store i32 %cond105, ptr %tmp, align 4, !dbg !1516
  call void @llvm.lifetime.end.p0(i64 2, ptr %__UNIQUE_ID___y384) #20, !dbg !1517
  call void @llvm.lifetime.end.p0(i64 2, ptr %__UNIQUE_ID___x383) #20, !dbg !1517
  %68 = load i32, ptr %tmp, align 4, !dbg !1516
  %conv106 = trunc i32 %68 to i16, !dbg !1517
  %69 = load ptr, ptr %ht.addr, align 8, !dbg !1518
  %p107 = getelementptr inbounds %struct.rhashtable, ptr %69, i32 0, i32 3, !dbg !1519
  %min_size108 = getelementptr inbounds %struct.rhashtable_params, ptr %p107, i32 0, i32 5, !dbg !1520
  store i16 %conv106, ptr %min_size108, align 4, !dbg !1521
  %70 = load ptr, ptr %ht.addr, align 8, !dbg !1522
  %p109 = getelementptr inbounds %struct.rhashtable, ptr %70, i32 0, i32 3, !dbg !1523
  %call110 = call i64 @rounded_hashtable_size(ptr noundef %p109) #21, !dbg !1524
  store i64 %call110, ptr %size, align 8, !dbg !1525
  %71 = load ptr, ptr %ht.addr, align 8, !dbg !1526
  %p111 = getelementptr inbounds %struct.rhashtable, ptr %71, i32 0, i32 3, !dbg !1527
  %key_len112 = getelementptr inbounds %struct.rhashtable_params, ptr %p111, i32 0, i32 1, !dbg !1528
  %72 = load i16, ptr %key_len112, align 2, !dbg !1528
  %conv113 = zext i16 %72 to i32, !dbg !1526
  %73 = load ptr, ptr %ht.addr, align 8, !dbg !1529
  %key_len114 = getelementptr inbounds %struct.rhashtable, ptr %73, i32 0, i32 1, !dbg !1530
  store i32 %conv113, ptr %key_len114, align 8, !dbg !1531
  %74 = load ptr, ptr %params.addr, align 8, !dbg !1532
  %hashfn = getelementptr inbounds %struct.rhashtable_params, ptr %74, i32 0, i32 7, !dbg !1534
  %75 = load ptr, ptr %hashfn, align 8, !dbg !1534
  %tobool115 = icmp ne ptr %75, null, !dbg !1532
  br i1 %tobool115, label %if.end130, label %if.then116, !dbg !1535

if.then116:                                       ; preds = %cond.end104
  %76 = load ptr, ptr %ht.addr, align 8, !dbg !1536
  %p117 = getelementptr inbounds %struct.rhashtable, ptr %76, i32 0, i32 3, !dbg !1538
  %hashfn118 = getelementptr inbounds %struct.rhashtable_params, ptr %p117, i32 0, i32 7, !dbg !1539
  store ptr @jhash, ptr %hashfn118, align 8, !dbg !1540
  %77 = load ptr, ptr %ht.addr, align 8, !dbg !1541
  %key_len119 = getelementptr inbounds %struct.rhashtable, ptr %77, i32 0, i32 1, !dbg !1543
  %78 = load i32, ptr %key_len119, align 8, !dbg !1543
  %conv120 = zext i32 %78 to i64, !dbg !1541
  %and = and i64 %conv120, 3, !dbg !1544
  %tobool121 = icmp ne i64 %and, 0, !dbg !1544
  br i1 %tobool121, label %if.end129, label %if.then122, !dbg !1545

if.then122:                                       ; preds = %if.then116
  %79 = load ptr, ptr %ht.addr, align 8, !dbg !1546
  %key_len123 = getelementptr inbounds %struct.rhashtable, ptr %79, i32 0, i32 1, !dbg !1548
  %80 = load i32, ptr %key_len123, align 8, !dbg !1549
  %conv124 = zext i32 %80 to i64, !dbg !1549
  %div125 = udiv i64 %conv124, 4, !dbg !1549
  %conv126 = trunc i64 %div125 to i32, !dbg !1549
  store i32 %conv126, ptr %key_len123, align 8, !dbg !1549
  %81 = load ptr, ptr %ht.addr, align 8, !dbg !1550
  %p127 = getelementptr inbounds %struct.rhashtable, ptr %81, i32 0, i32 3, !dbg !1551
  %hashfn128 = getelementptr inbounds %struct.rhashtable_params, ptr %p127, i32 0, i32 7, !dbg !1552
  store ptr @rhashtable_jhash2, ptr %hashfn128, align 8, !dbg !1553
  br label %if.end129, !dbg !1554

if.end129:                                        ; preds = %if.then122, %if.then116
  br label %if.end130, !dbg !1555

if.end130:                                        ; preds = %if.end129, %cond.end104
  %82 = load ptr, ptr %ht.addr, align 8, !dbg !1556
  %83 = load i64, ptr %size, align 8, !dbg !1557
  %call131 = call ptr @bucket_table_alloc(ptr noundef %82, i64 noundef %83, i32 noundef 3264) #21, !dbg !1558
  store ptr %call131, ptr %tbl, align 8, !dbg !1559
  %84 = load ptr, ptr %tbl, align 8, !dbg !1560
  %cmp132 = icmp eq ptr %84, null, !dbg !1560
  %lnot = xor i1 %cmp132, true, !dbg !1560
  %lnot134 = xor i1 %lnot, true, !dbg !1560
  %lnot.ext = zext i1 %lnot134 to i32, !dbg !1560
  %conv135 = sext i32 %lnot.ext to i64, !dbg !1560
  %expval = call i64 @llvm.expect.i64(i64 %conv135, i64 0), !dbg !1560
  %tobool136 = icmp ne i64 %expval, 0, !dbg !1560
  br i1 %tobool136, label %if.then137, label %if.end153, !dbg !1561

if.then137:                                       ; preds = %if.end130
  call void @llvm.lifetime.start.p0(i64 2, ptr %__UNIQUE_ID___x385) #20, !dbg !1562
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x385, metadata !308, metadata !DIExpression()), !dbg !1562
  %85 = load ptr, ptr %ht.addr, align 8, !dbg !1562
  %p138 = getelementptr inbounds %struct.rhashtable, ptr %85, i32 0, i32 3, !dbg !1562
  %min_size139 = getelementptr inbounds %struct.rhashtable_params, ptr %p138, i32 0, i32 5, !dbg !1562
  %86 = load i16, ptr %min_size139, align 4, !dbg !1562
  store i16 %86, ptr %__UNIQUE_ID___x385, align 2, !dbg !1562
  call void @llvm.lifetime.start.p0(i64 2, ptr %__UNIQUE_ID___y386) #20, !dbg !1562
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y386, metadata !312, metadata !DIExpression()), !dbg !1562
  store i16 4, ptr %__UNIQUE_ID___y386, align 2, !dbg !1562
  %87 = load i16, ptr %__UNIQUE_ID___x385, align 2, !dbg !1562
  %conv141 = zext i16 %87 to i32, !dbg !1562
  %88 = load i16, ptr %__UNIQUE_ID___y386, align 2, !dbg !1562
  %conv142 = zext i16 %88 to i32, !dbg !1562
  %cmp143 = icmp sgt i32 %conv141, %conv142, !dbg !1562
  br i1 %cmp143, label %cond.true145, label %cond.false147, !dbg !1562

cond.true145:                                     ; preds = %if.then137
  %89 = load i16, ptr %__UNIQUE_ID___x385, align 2, !dbg !1562
  %conv146 = zext i16 %89 to i32, !dbg !1562
  br label %cond.end149, !dbg !1562

cond.false147:                                    ; preds = %if.then137
  %90 = load i16, ptr %__UNIQUE_ID___y386, align 2, !dbg !1562
  %conv148 = zext i16 %90 to i32, !dbg !1562
  br label %cond.end149, !dbg !1562

cond.end149:                                      ; preds = %cond.false147, %cond.true145
  %cond150 = phi i32 [ %conv146, %cond.true145 ], [ %conv148, %cond.false147 ], !dbg !1562
  store i32 %cond150, ptr %tmp140, align 4, !dbg !1562
  call void @llvm.lifetime.end.p0(i64 2, ptr %__UNIQUE_ID___y386) #20, !dbg !1563
  call void @llvm.lifetime.end.p0(i64 2, ptr %__UNIQUE_ID___x385) #20, !dbg !1563
  %91 = load i32, ptr %tmp140, align 4, !dbg !1562
  %conv151 = sext i32 %91 to i64, !dbg !1563
  store i64 %conv151, ptr %size, align 8, !dbg !1564
  %92 = load ptr, ptr %ht.addr, align 8, !dbg !1565
  %93 = load i64, ptr %size, align 8, !dbg !1566
  %call152 = call ptr @bucket_table_alloc(ptr noundef %92, i64 noundef %93, i32 noundef 36032) #21, !dbg !1567
  store ptr %call152, ptr %tbl, align 8, !dbg !1568
  br label %if.end153, !dbg !1569

if.end153:                                        ; preds = %cond.end149, %if.end130
  %94 = load ptr, ptr %ht.addr, align 8, !dbg !1570
  %nelems = getelementptr inbounds %struct.rhashtable, ptr %94, i32 0, i32 8, !dbg !1571
  call void @atomic_set(ptr noundef %nelems, i32 noundef 0) #21, !dbg !1572
  br label %do.body154, !dbg !1573

do.body154:                                       ; preds = %if.end153
  br label %do.body155, !dbg !1574

do.body155:                                       ; preds = %do.body154
  br label %do.body156, !dbg !1576

do.body156:                                       ; preds = %do.body155
  br label %do.cond157, !dbg !1578

do.cond157:                                       ; preds = %do.body156
  br label %do.end158, !dbg !1578

do.end158:                                        ; preds = %do.cond157
  br label %do.body159, !dbg !1576

do.body159:                                       ; preds = %do.end158
  %95 = load ptr, ptr %tbl, align 8, !dbg !1580
  %96 = load ptr, ptr %ht.addr, align 8, !dbg !1580
  %tbl160 = getelementptr inbounds %struct.rhashtable, ptr %96, i32 0, i32 0, !dbg !1580
  store volatile ptr %95, ptr %tbl160, align 8, !dbg !1580
  br label %do.cond161, !dbg !1580

do.cond161:                                       ; preds = %do.body159
  br label %do.end162, !dbg !1580

do.end162:                                        ; preds = %do.cond161
  br label %do.cond163, !dbg !1576

do.cond163:                                       ; preds = %do.end162
  br label %do.end164, !dbg !1576

do.end164:                                        ; preds = %do.cond163
  br label %do.cond165, !dbg !1574

do.cond165:                                       ; preds = %do.end164
  br label %do.end166, !dbg !1574

do.end166:                                        ; preds = %do.cond165
  br label %do.body167, !dbg !1582

do.body167:                                       ; preds = %do.end166
  br label %do.body168, !dbg !1583

do.body168:                                       ; preds = %do.body167
  %97 = load ptr, ptr %ht.addr, align 8, !dbg !1585
  %run_work = getelementptr inbounds %struct.rhashtable, ptr %97, i32 0, i32 5, !dbg !1585
  call void @__init_work(ptr noundef %run_work, i32 noundef 0) #21, !dbg !1585
  %98 = load ptr, ptr %ht.addr, align 8, !dbg !1585
  %run_work169 = getelementptr inbounds %struct.rhashtable, ptr %98, i32 0, i32 5, !dbg !1585
  %data = getelementptr inbounds %struct.work_struct, ptr %run_work169, i32 0, i32 0, !dbg !1585
  %counter171 = getelementptr inbounds %struct.atomic64_t, ptr %.compoundliteral170, i32 0, i32 0, !dbg !1585
  store i64 68719476704, ptr %counter171, align 8, !dbg !1585
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %data, ptr align 8 %.compoundliteral170, i64 8, i1 false), !dbg !1585
  %99 = load ptr, ptr %ht.addr, align 8, !dbg !1585
  %run_work172 = getelementptr inbounds %struct.rhashtable, ptr %99, i32 0, i32 5, !dbg !1585
  %entry173 = getelementptr inbounds %struct.work_struct, ptr %run_work172, i32 0, i32 1, !dbg !1585
  call void @INIT_LIST_HEAD(ptr noundef %entry173) #21, !dbg !1585
  %100 = load ptr, ptr %ht.addr, align 8, !dbg !1585
  %run_work174 = getelementptr inbounds %struct.rhashtable, ptr %100, i32 0, i32 5, !dbg !1585
  %func = getelementptr inbounds %struct.work_struct, ptr %run_work174, i32 0, i32 2, !dbg !1585
  store ptr @rht_deferred_worker, ptr %func, align 8, !dbg !1585
  br label %do.cond175, !dbg !1585

do.cond175:                                       ; preds = %do.body168
  br label %do.end176, !dbg !1585

do.end176:                                        ; preds = %do.cond175
  br label %do.cond177, !dbg !1583

do.cond177:                                       ; preds = %do.end176
  br label %do.end178, !dbg !1583

do.end178:                                        ; preds = %do.cond177
  store i32 0, ptr %retval, align 4, !dbg !1587
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1587

cleanup:                                          ; preds = %do.end178, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #20, !dbg !1588
  call void @llvm.lifetime.end.p0(i64 8, ptr %tbl) #20, !dbg !1588
  %101 = load i32, ptr %retval, align 4, !dbg !1588
  ret i32 %101, !dbg !1588
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1589 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #3 align 16 !dbg !1596 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1601, metadata !DIExpression()), !dbg !1602
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1603
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !1604
  ret ptr %1, !dbg !1605
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i16(i16) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i32 @__ilog2_u32(i32 noundef %n) #9 align 16 !dbg !1606 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1611, metadata !DIExpression()), !dbg !1612
  %0 = load i32, ptr %n.addr, align 4, !dbg !1613
  %call = call i32 @fls(i32 noundef %0) #21, !dbg !1614
  %sub = sub i32 %call, 1, !dbg !1615
  ret i32 %sub, !dbg !1616
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i64 @__roundup_pow_of_two(i64 noundef %n) #10 align 16 !dbg !1617 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1621, metadata !DIExpression()), !dbg !1622
  %0 = load i64, ptr %n.addr, align 8, !dbg !1623
  %sub = sub i64 %0, 1, !dbg !1624
  %call = call i32 @fls_long(i64 noundef %sub) #21, !dbg !1625
  %sh_prom = zext i32 %call to i64, !dbg !1626
  %shl = shl i64 1, %sh_prom, !dbg !1626
  ret i64 %shl, !dbg !1627
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i64 @__rounddown_pow_of_two(i64 noundef %n) #10 align 16 !dbg !1628 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1630, metadata !DIExpression()), !dbg !1631
  %0 = load i64, ptr %n.addr, align 8, !dbg !1632
  %call = call i32 @fls_long(i64 noundef %0) #21, !dbg !1633
  %sub = sub i32 %call, 1, !dbg !1634
  %sh_prom = zext i32 %sub to i64, !dbg !1635
  %shl = shl i64 1, %sh_prom, !dbg !1635
  ret i64 %shl, !dbg !1636
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rounded_hashtable_size(ptr noundef %params) #0 align 16 !dbg !1637 {
entry:
  %params.addr = alloca ptr, align 8
  %retsize = alloca i64, align 8
  %__UNIQUE_ID___x379 = alloca i64, align 8
  %__UNIQUE_ID___y380 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x381 = alloca i64, align 8
  %__UNIQUE_ID___y382 = alloca i64, align 8
  %tmp57 = alloca i64, align 8
  store ptr %params, ptr %params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %params.addr, metadata !1641, metadata !DIExpression()), !dbg !1650
  call void @llvm.lifetime.start.p0(i64 8, ptr %retsize) #20, !dbg !1651
  call void @llvm.dbg.declare(metadata ptr %retsize, metadata !1642, metadata !DIExpression()), !dbg !1652
  %0 = load ptr, ptr %params.addr, align 8, !dbg !1653
  %nelem_hint = getelementptr inbounds %struct.rhashtable_params, ptr %0, i32 0, i32 0, !dbg !1654
  %1 = load i16, ptr %nelem_hint, align 8, !dbg !1654
  %tobool = icmp ne i16 %1, 0, !dbg !1653
  br i1 %tobool, label %if.then, label %if.else, !dbg !1655

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x379) #20, !dbg !1656
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x379, metadata !1643, metadata !DIExpression()), !dbg !1656
  %2 = load ptr, ptr %params.addr, align 8, !dbg !1656
  %nelem_hint1 = getelementptr inbounds %struct.rhashtable_params, ptr %2, i32 0, i32 0, !dbg !1656
  %3 = load i16, ptr %nelem_hint1, align 8, !dbg !1656
  %conv = zext i16 %3 to i32, !dbg !1656
  %mul = mul i32 %conv, 4, !dbg !1656
  %div = sdiv i32 %mul, 3, !dbg !1656
  %4 = call i1 @llvm.is.constant.i32(i32 %div), !dbg !1656
  br i1 %4, label %cond.true, label %cond.false39, !dbg !1656

cond.true:                                        ; preds = %if.then
  %5 = load ptr, ptr %params.addr, align 8, !dbg !1656
  %nelem_hint2 = getelementptr inbounds %struct.rhashtable_params, ptr %5, i32 0, i32 0, !dbg !1656
  %6 = load i16, ptr %nelem_hint2, align 8, !dbg !1656
  %conv3 = zext i16 %6 to i32, !dbg !1656
  %mul4 = mul i32 %conv3, 4, !dbg !1656
  %div5 = sdiv i32 %mul4, 3, !dbg !1656
  %cmp = icmp eq i32 %div5, 1, !dbg !1656
  br i1 %cmp, label %cond.true7, label %cond.false, !dbg !1656

cond.true7:                                       ; preds = %cond.true
  br label %cond.end37, !dbg !1656

cond.false:                                       ; preds = %cond.true
  %7 = load ptr, ptr %params.addr, align 8, !dbg !1656
  %nelem_hint8 = getelementptr inbounds %struct.rhashtable_params, ptr %7, i32 0, i32 0, !dbg !1656
  %8 = load i16, ptr %nelem_hint8, align 8, !dbg !1656
  %conv9 = zext i16 %8 to i32, !dbg !1656
  %mul10 = mul i32 %conv9, 4, !dbg !1656
  %div11 = sdiv i32 %mul10, 3, !dbg !1656
  %sub = sub i32 %div11, 1, !dbg !1656
  %9 = call i1 @llvm.is.constant.i32(i32 %sub), !dbg !1656
  br i1 %9, label %cond.true12, label %cond.false29, !dbg !1656

cond.true12:                                      ; preds = %cond.false
  %10 = load ptr, ptr %params.addr, align 8, !dbg !1656
  %nelem_hint13 = getelementptr inbounds %struct.rhashtable_params, ptr %10, i32 0, i32 0, !dbg !1656
  %11 = load i16, ptr %nelem_hint13, align 8, !dbg !1656
  %conv14 = zext i16 %11 to i32, !dbg !1656
  %mul15 = mul i32 %conv14, 4, !dbg !1656
  %div16 = sdiv i32 %mul15, 3, !dbg !1656
  %sub17 = sub i32 %div16, 1, !dbg !1656
  %cmp18 = icmp slt i32 %sub17, 2, !dbg !1656
  br i1 %cmp18, label %cond.true20, label %cond.false21, !dbg !1656

cond.true20:                                      ; preds = %cond.true12
  br label %cond.end, !dbg !1656

cond.false21:                                     ; preds = %cond.true12
  %12 = load ptr, ptr %params.addr, align 8, !dbg !1656
  %nelem_hint22 = getelementptr inbounds %struct.rhashtable_params, ptr %12, i32 0, i32 0, !dbg !1656
  %13 = load i16, ptr %nelem_hint22, align 8, !dbg !1656
  %conv23 = zext i16 %13 to i32, !dbg !1656
  %mul24 = mul i32 %conv23, 4, !dbg !1656
  %div25 = sdiv i32 %mul24, 3, !dbg !1656
  %sub26 = sub i32 %div25, 1, !dbg !1656
  %conv27 = sext i32 %sub26 to i64, !dbg !1656
  %14 = call i64 @llvm.ctlz.i64(i64 %conv27, i1 true), !dbg !1656
  %cast = trunc i64 %14 to i32, !dbg !1656
  %sub28 = sub i32 63, %cast, !dbg !1656
  br label %cond.end, !dbg !1656

cond.end:                                         ; preds = %cond.false21, %cond.true20
  %cond = phi i32 [ 0, %cond.true20 ], [ %sub28, %cond.false21 ], !dbg !1656
  br label %cond.end35, !dbg !1656

cond.false29:                                     ; preds = %cond.false
  %15 = load ptr, ptr %params.addr, align 8, !dbg !1656
  %nelem_hint30 = getelementptr inbounds %struct.rhashtable_params, ptr %15, i32 0, i32 0, !dbg !1656
  %16 = load i16, ptr %nelem_hint30, align 8, !dbg !1656
  %conv31 = zext i16 %16 to i32, !dbg !1656
  %mul32 = mul i32 %conv31, 4, !dbg !1656
  %div33 = sdiv i32 %mul32, 3, !dbg !1656
  %sub34 = sub i32 %div33, 1, !dbg !1656
  %call = call i32 @__ilog2_u32(i32 noundef %sub34) #22, !dbg !1656
  br label %cond.end35, !dbg !1656

cond.end35:                                       ; preds = %cond.false29, %cond.end
  %cond36 = phi i32 [ %cond, %cond.end ], [ %call, %cond.false29 ], !dbg !1656
  %add = add i32 %cond36, 1, !dbg !1656
  %sh_prom = zext i32 %add to i64, !dbg !1656
  %shl = shl i64 1, %sh_prom, !dbg !1656
  br label %cond.end37, !dbg !1656

cond.end37:                                       ; preds = %cond.end35, %cond.true7
  %cond38 = phi i64 [ 1, %cond.true7 ], [ %shl, %cond.end35 ], !dbg !1656
  br label %cond.end46, !dbg !1656

cond.false39:                                     ; preds = %if.then
  %17 = load ptr, ptr %params.addr, align 8, !dbg !1656
  %nelem_hint40 = getelementptr inbounds %struct.rhashtable_params, ptr %17, i32 0, i32 0, !dbg !1656
  %18 = load i16, ptr %nelem_hint40, align 8, !dbg !1656
  %conv41 = zext i16 %18 to i32, !dbg !1656
  %mul42 = mul i32 %conv41, 4, !dbg !1656
  %div43 = sdiv i32 %mul42, 3, !dbg !1656
  %conv44 = sext i32 %div43 to i64, !dbg !1656
  %call45 = call i64 @__roundup_pow_of_two(i64 noundef %conv44) #22, !dbg !1656
  br label %cond.end46, !dbg !1656

cond.end46:                                       ; preds = %cond.false39, %cond.end37
  %cond47 = phi i64 [ %cond38, %cond.end37 ], [ %call45, %cond.false39 ], !dbg !1656
  store i64 %cond47, ptr %__UNIQUE_ID___x379, align 8, !dbg !1656
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y380) #20, !dbg !1656
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y380, metadata !1646, metadata !DIExpression()), !dbg !1656
  %19 = load ptr, ptr %params.addr, align 8, !dbg !1656
  %min_size = getelementptr inbounds %struct.rhashtable_params, ptr %19, i32 0, i32 5, !dbg !1656
  %20 = load i16, ptr %min_size, align 4, !dbg !1656
  %conv48 = zext i16 %20 to i64, !dbg !1656
  store i64 %conv48, ptr %__UNIQUE_ID___y380, align 8, !dbg !1656
  %21 = load i64, ptr %__UNIQUE_ID___x379, align 8, !dbg !1656
  %22 = load i64, ptr %__UNIQUE_ID___y380, align 8, !dbg !1656
  %cmp49 = icmp ugt i64 %21, %22, !dbg !1656
  br i1 %cmp49, label %cond.true51, label %cond.false52, !dbg !1656

cond.true51:                                      ; preds = %cond.end46
  %23 = load i64, ptr %__UNIQUE_ID___x379, align 8, !dbg !1656
  br label %cond.end53, !dbg !1656

cond.false52:                                     ; preds = %cond.end46
  %24 = load i64, ptr %__UNIQUE_ID___y380, align 8, !dbg !1656
  br label %cond.end53, !dbg !1656

cond.end53:                                       ; preds = %cond.false52, %cond.true51
  %cond54 = phi i64 [ %23, %cond.true51 ], [ %24, %cond.false52 ], !dbg !1656
  store i64 %cond54, ptr %tmp, align 8, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y380) #20, !dbg !1657
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x379) #20, !dbg !1657
  %25 = load i64, ptr %tmp, align 8, !dbg !1656
  store i64 %25, ptr %retsize, align 8, !dbg !1658
  br label %if.end, !dbg !1659

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x381) #20, !dbg !1660
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x381, metadata !1647, metadata !DIExpression()), !dbg !1660
  store i64 64, ptr %__UNIQUE_ID___x381, align 8, !dbg !1660
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y382) #20, !dbg !1660
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y382, metadata !1649, metadata !DIExpression()), !dbg !1660
  %26 = load ptr, ptr %params.addr, align 8, !dbg !1660
  %min_size55 = getelementptr inbounds %struct.rhashtable_params, ptr %26, i32 0, i32 5, !dbg !1660
  %27 = load i16, ptr %min_size55, align 4, !dbg !1660
  %conv56 = zext i16 %27 to i64, !dbg !1660
  store i64 %conv56, ptr %__UNIQUE_ID___y382, align 8, !dbg !1660
  %28 = load i64, ptr %__UNIQUE_ID___x381, align 8, !dbg !1660
  %29 = load i64, ptr %__UNIQUE_ID___y382, align 8, !dbg !1660
  %cmp58 = icmp ugt i64 %28, %29, !dbg !1660
  br i1 %cmp58, label %cond.true60, label %cond.false61, !dbg !1660

cond.true60:                                      ; preds = %if.else
  %30 = load i64, ptr %__UNIQUE_ID___x381, align 8, !dbg !1660
  br label %cond.end62, !dbg !1660

cond.false61:                                     ; preds = %if.else
  %31 = load i64, ptr %__UNIQUE_ID___y382, align 8, !dbg !1660
  br label %cond.end62, !dbg !1660

cond.end62:                                       ; preds = %cond.false61, %cond.true60
  %cond63 = phi i64 [ %30, %cond.true60 ], [ %31, %cond.false61 ], !dbg !1660
  store i64 %cond63, ptr %tmp57, align 8, !dbg !1660
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y382) #20, !dbg !1661
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x381) #20, !dbg !1661
  %32 = load i64, ptr %tmp57, align 8, !dbg !1660
  store i64 %32, ptr %retsize, align 8, !dbg !1662
  br label %if.end

if.end:                                           ; preds = %cond.end62, %cond.end53
  %33 = load i64, ptr %retsize, align 8, !dbg !1663
  call void @llvm.lifetime.end.p0(i64 8, ptr %retsize) #20, !dbg !1664
  ret i64 %33, !dbg !1665
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @jhash(ptr noundef %key, i32 noundef %length, i32 noundef %initval) #4 align 16 !dbg !1666 {
entry:
  %key.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %initval.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %k = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1669, metadata !DIExpression()), !dbg !1678
  store i32 %length, ptr %length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !1670, metadata !DIExpression()), !dbg !1679
  store i32 %initval, ptr %initval.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %initval.addr, metadata !1671, metadata !DIExpression()), !dbg !1680
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #20, !dbg !1681
  call void @llvm.dbg.declare(metadata ptr %a, metadata !1672, metadata !DIExpression()), !dbg !1682
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #20, !dbg !1681
  call void @llvm.dbg.declare(metadata ptr %b, metadata !1673, metadata !DIExpression()), !dbg !1683
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #20, !dbg !1681
  call void @llvm.dbg.declare(metadata ptr %c, metadata !1674, metadata !DIExpression()), !dbg !1684
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #20, !dbg !1685
  call void @llvm.dbg.declare(metadata ptr %k, metadata !1675, metadata !DIExpression()), !dbg !1686
  %0 = load ptr, ptr %key.addr, align 8, !dbg !1687
  store ptr %0, ptr %k, align 8, !dbg !1686
  %1 = load i32, ptr %length.addr, align 4, !dbg !1688
  %add = add i32 -559038737, %1, !dbg !1689
  %2 = load i32, ptr %initval.addr, align 4, !dbg !1690
  %add1 = add i32 %add, %2, !dbg !1691
  store i32 %add1, ptr %c, align 4, !dbg !1692
  store i32 %add1, ptr %b, align 4, !dbg !1693
  store i32 %add1, ptr %a, align 4, !dbg !1694
  br label %while.cond, !dbg !1695

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, ptr %length.addr, align 4, !dbg !1696
  %cmp = icmp ugt i32 %3, 12, !dbg !1697
  br i1 %cmp, label %while.body, label %while.end, !dbg !1695

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %k, align 8, !dbg !1698
  %call = call i32 @__get_unaligned_cpu32(ptr noundef %4) #21, !dbg !1700
  %5 = load i32, ptr %a, align 4, !dbg !1701
  %add2 = add i32 %5, %call, !dbg !1701
  store i32 %add2, ptr %a, align 4, !dbg !1701
  %6 = load ptr, ptr %k, align 8, !dbg !1702
  %add.ptr = getelementptr i8, ptr %6, i64 4, !dbg !1703
  %call3 = call i32 @__get_unaligned_cpu32(ptr noundef %add.ptr) #21, !dbg !1704
  %7 = load i32, ptr %b, align 4, !dbg !1705
  %add4 = add i32 %7, %call3, !dbg !1705
  store i32 %add4, ptr %b, align 4, !dbg !1705
  %8 = load ptr, ptr %k, align 8, !dbg !1706
  %add.ptr5 = getelementptr i8, ptr %8, i64 8, !dbg !1707
  %call6 = call i32 @__get_unaligned_cpu32(ptr noundef %add.ptr5) #21, !dbg !1708
  %9 = load i32, ptr %c, align 4, !dbg !1709
  %add7 = add i32 %9, %call6, !dbg !1709
  store i32 %add7, ptr %c, align 4, !dbg !1709
  %10 = load i32, ptr %c, align 4, !dbg !1710
  %11 = load i32, ptr %a, align 4, !dbg !1710
  %sub = sub i32 %11, %10, !dbg !1710
  store i32 %sub, ptr %a, align 4, !dbg !1710
  %12 = load i32, ptr %c, align 4, !dbg !1710
  %call8 = call i32 @rol32(i32 noundef %12, i32 noundef 4) #21, !dbg !1710
  %13 = load i32, ptr %a, align 4, !dbg !1710
  %xor = xor i32 %13, %call8, !dbg !1710
  store i32 %xor, ptr %a, align 4, !dbg !1710
  %14 = load i32, ptr %b, align 4, !dbg !1710
  %15 = load i32, ptr %c, align 4, !dbg !1710
  %add9 = add i32 %15, %14, !dbg !1710
  store i32 %add9, ptr %c, align 4, !dbg !1710
  %16 = load i32, ptr %a, align 4, !dbg !1710
  %17 = load i32, ptr %b, align 4, !dbg !1710
  %sub10 = sub i32 %17, %16, !dbg !1710
  store i32 %sub10, ptr %b, align 4, !dbg !1710
  %18 = load i32, ptr %a, align 4, !dbg !1710
  %call11 = call i32 @rol32(i32 noundef %18, i32 noundef 6) #21, !dbg !1710
  %19 = load i32, ptr %b, align 4, !dbg !1710
  %xor12 = xor i32 %19, %call11, !dbg !1710
  store i32 %xor12, ptr %b, align 4, !dbg !1710
  %20 = load i32, ptr %c, align 4, !dbg !1710
  %21 = load i32, ptr %a, align 4, !dbg !1710
  %add13 = add i32 %21, %20, !dbg !1710
  store i32 %add13, ptr %a, align 4, !dbg !1710
  %22 = load i32, ptr %b, align 4, !dbg !1710
  %23 = load i32, ptr %c, align 4, !dbg !1710
  %sub14 = sub i32 %23, %22, !dbg !1710
  store i32 %sub14, ptr %c, align 4, !dbg !1710
  %24 = load i32, ptr %b, align 4, !dbg !1710
  %call15 = call i32 @rol32(i32 noundef %24, i32 noundef 8) #21, !dbg !1710
  %25 = load i32, ptr %c, align 4, !dbg !1710
  %xor16 = xor i32 %25, %call15, !dbg !1710
  store i32 %xor16, ptr %c, align 4, !dbg !1710
  %26 = load i32, ptr %a, align 4, !dbg !1710
  %27 = load i32, ptr %b, align 4, !dbg !1710
  %add17 = add i32 %27, %26, !dbg !1710
  store i32 %add17, ptr %b, align 4, !dbg !1710
  %28 = load i32, ptr %c, align 4, !dbg !1710
  %29 = load i32, ptr %a, align 4, !dbg !1710
  %sub18 = sub i32 %29, %28, !dbg !1710
  store i32 %sub18, ptr %a, align 4, !dbg !1710
  %30 = load i32, ptr %c, align 4, !dbg !1710
  %call19 = call i32 @rol32(i32 noundef %30, i32 noundef 16) #21, !dbg !1710
  %31 = load i32, ptr %a, align 4, !dbg !1710
  %xor20 = xor i32 %31, %call19, !dbg !1710
  store i32 %xor20, ptr %a, align 4, !dbg !1710
  %32 = load i32, ptr %b, align 4, !dbg !1710
  %33 = load i32, ptr %c, align 4, !dbg !1710
  %add21 = add i32 %33, %32, !dbg !1710
  store i32 %add21, ptr %c, align 4, !dbg !1710
  %34 = load i32, ptr %a, align 4, !dbg !1710
  %35 = load i32, ptr %b, align 4, !dbg !1710
  %sub22 = sub i32 %35, %34, !dbg !1710
  store i32 %sub22, ptr %b, align 4, !dbg !1710
  %36 = load i32, ptr %a, align 4, !dbg !1710
  %call23 = call i32 @rol32(i32 noundef %36, i32 noundef 19) #21, !dbg !1710
  %37 = load i32, ptr %b, align 4, !dbg !1710
  %xor24 = xor i32 %37, %call23, !dbg !1710
  store i32 %xor24, ptr %b, align 4, !dbg !1710
  %38 = load i32, ptr %c, align 4, !dbg !1710
  %39 = load i32, ptr %a, align 4, !dbg !1710
  %add25 = add i32 %39, %38, !dbg !1710
  store i32 %add25, ptr %a, align 4, !dbg !1710
  %40 = load i32, ptr %b, align 4, !dbg !1710
  %41 = load i32, ptr %c, align 4, !dbg !1710
  %sub26 = sub i32 %41, %40, !dbg !1710
  store i32 %sub26, ptr %c, align 4, !dbg !1710
  %42 = load i32, ptr %b, align 4, !dbg !1710
  %call27 = call i32 @rol32(i32 noundef %42, i32 noundef 4) #21, !dbg !1710
  %43 = load i32, ptr %c, align 4, !dbg !1710
  %xor28 = xor i32 %43, %call27, !dbg !1710
  store i32 %xor28, ptr %c, align 4, !dbg !1710
  %44 = load i32, ptr %a, align 4, !dbg !1710
  %45 = load i32, ptr %b, align 4, !dbg !1710
  %add29 = add i32 %45, %44, !dbg !1710
  store i32 %add29, ptr %b, align 4, !dbg !1710
  %46 = load i32, ptr %length.addr, align 4, !dbg !1712
  %sub30 = sub i32 %46, 12, !dbg !1712
  store i32 %sub30, ptr %length.addr, align 4, !dbg !1712
  %47 = load ptr, ptr %k, align 8, !dbg !1713
  %add.ptr31 = getelementptr i8, ptr %47, i64 12, !dbg !1713
  store ptr %add.ptr31, ptr %k, align 8, !dbg !1713
  br label %while.cond, !dbg !1695, !llvm.loop !1714

while.end:                                        ; preds = %while.cond
  %48 = load i32, ptr %length.addr, align 4, !dbg !1716
  switch i32 %48, label %sw.epilog [
    i32 12, label %sw.bb
    i32 11, label %sw.bb33
    i32 10, label %sw.bb38
    i32 9, label %sw.bb43
    i32 8, label %sw.bb47
    i32 7, label %sw.bb52
    i32 6, label %sw.bb57
    i32 5, label %sw.bb62
    i32 4, label %sw.bb66
    i32 3, label %sw.bb71
    i32 2, label %sw.bb76
    i32 1, label %sw.bb81
    i32 0, label %sw.epilog
  ], !dbg !1717

sw.bb:                                            ; preds = %while.end
  %49 = load ptr, ptr %k, align 8, !dbg !1718
  %arrayidx = getelementptr i8, ptr %49, i64 11, !dbg !1718
  %50 = load i8, ptr %arrayidx, align 1, !dbg !1718
  %conv = zext i8 %50 to i32, !dbg !1720
  %shl = shl i32 %conv, 24, !dbg !1721
  %51 = load i32, ptr %c, align 4, !dbg !1722
  %add32 = add i32 %51, %shl, !dbg !1722
  store i32 %add32, ptr %c, align 4, !dbg !1722
  br label %sw.bb33, !dbg !1723

sw.bb33:                                          ; preds = %while.end, %sw.bb
  %52 = load ptr, ptr %k, align 8, !dbg !1724
  %arrayidx34 = getelementptr i8, ptr %52, i64 10, !dbg !1724
  %53 = load i8, ptr %arrayidx34, align 1, !dbg !1724
  %conv35 = zext i8 %53 to i32, !dbg !1725
  %shl36 = shl i32 %conv35, 16, !dbg !1726
  %54 = load i32, ptr %c, align 4, !dbg !1727
  %add37 = add i32 %54, %shl36, !dbg !1727
  store i32 %add37, ptr %c, align 4, !dbg !1727
  br label %sw.bb38, !dbg !1728

sw.bb38:                                          ; preds = %while.end, %sw.bb33
  %55 = load ptr, ptr %k, align 8, !dbg !1729
  %arrayidx39 = getelementptr i8, ptr %55, i64 9, !dbg !1729
  %56 = load i8, ptr %arrayidx39, align 1, !dbg !1729
  %conv40 = zext i8 %56 to i32, !dbg !1730
  %shl41 = shl i32 %conv40, 8, !dbg !1731
  %57 = load i32, ptr %c, align 4, !dbg !1732
  %add42 = add i32 %57, %shl41, !dbg !1732
  store i32 %add42, ptr %c, align 4, !dbg !1732
  br label %sw.bb43, !dbg !1733

sw.bb43:                                          ; preds = %while.end, %sw.bb38
  %58 = load ptr, ptr %k, align 8, !dbg !1734
  %arrayidx44 = getelementptr i8, ptr %58, i64 8, !dbg !1734
  %59 = load i8, ptr %arrayidx44, align 1, !dbg !1734
  %conv45 = zext i8 %59 to i32, !dbg !1734
  %60 = load i32, ptr %c, align 4, !dbg !1735
  %add46 = add i32 %60, %conv45, !dbg !1735
  store i32 %add46, ptr %c, align 4, !dbg !1735
  br label %sw.bb47, !dbg !1736

sw.bb47:                                          ; preds = %while.end, %sw.bb43
  %61 = load ptr, ptr %k, align 8, !dbg !1737
  %arrayidx48 = getelementptr i8, ptr %61, i64 7, !dbg !1737
  %62 = load i8, ptr %arrayidx48, align 1, !dbg !1737
  %conv49 = zext i8 %62 to i32, !dbg !1738
  %shl50 = shl i32 %conv49, 24, !dbg !1739
  %63 = load i32, ptr %b, align 4, !dbg !1740
  %add51 = add i32 %63, %shl50, !dbg !1740
  store i32 %add51, ptr %b, align 4, !dbg !1740
  br label %sw.bb52, !dbg !1741

sw.bb52:                                          ; preds = %while.end, %sw.bb47
  %64 = load ptr, ptr %k, align 8, !dbg !1742
  %arrayidx53 = getelementptr i8, ptr %64, i64 6, !dbg !1742
  %65 = load i8, ptr %arrayidx53, align 1, !dbg !1742
  %conv54 = zext i8 %65 to i32, !dbg !1743
  %shl55 = shl i32 %conv54, 16, !dbg !1744
  %66 = load i32, ptr %b, align 4, !dbg !1745
  %add56 = add i32 %66, %shl55, !dbg !1745
  store i32 %add56, ptr %b, align 4, !dbg !1745
  br label %sw.bb57, !dbg !1746

sw.bb57:                                          ; preds = %while.end, %sw.bb52
  %67 = load ptr, ptr %k, align 8, !dbg !1747
  %arrayidx58 = getelementptr i8, ptr %67, i64 5, !dbg !1747
  %68 = load i8, ptr %arrayidx58, align 1, !dbg !1747
  %conv59 = zext i8 %68 to i32, !dbg !1748
  %shl60 = shl i32 %conv59, 8, !dbg !1749
  %69 = load i32, ptr %b, align 4, !dbg !1750
  %add61 = add i32 %69, %shl60, !dbg !1750
  store i32 %add61, ptr %b, align 4, !dbg !1750
  br label %sw.bb62, !dbg !1751

sw.bb62:                                          ; preds = %while.end, %sw.bb57
  %70 = load ptr, ptr %k, align 8, !dbg !1752
  %arrayidx63 = getelementptr i8, ptr %70, i64 4, !dbg !1752
  %71 = load i8, ptr %arrayidx63, align 1, !dbg !1752
  %conv64 = zext i8 %71 to i32, !dbg !1752
  %72 = load i32, ptr %b, align 4, !dbg !1753
  %add65 = add i32 %72, %conv64, !dbg !1753
  store i32 %add65, ptr %b, align 4, !dbg !1753
  br label %sw.bb66, !dbg !1754

sw.bb66:                                          ; preds = %while.end, %sw.bb62
  %73 = load ptr, ptr %k, align 8, !dbg !1755
  %arrayidx67 = getelementptr i8, ptr %73, i64 3, !dbg !1755
  %74 = load i8, ptr %arrayidx67, align 1, !dbg !1755
  %conv68 = zext i8 %74 to i32, !dbg !1756
  %shl69 = shl i32 %conv68, 24, !dbg !1757
  %75 = load i32, ptr %a, align 4, !dbg !1758
  %add70 = add i32 %75, %shl69, !dbg !1758
  store i32 %add70, ptr %a, align 4, !dbg !1758
  br label %sw.bb71, !dbg !1759

sw.bb71:                                          ; preds = %while.end, %sw.bb66
  %76 = load ptr, ptr %k, align 8, !dbg !1760
  %arrayidx72 = getelementptr i8, ptr %76, i64 2, !dbg !1760
  %77 = load i8, ptr %arrayidx72, align 1, !dbg !1760
  %conv73 = zext i8 %77 to i32, !dbg !1761
  %shl74 = shl i32 %conv73, 16, !dbg !1762
  %78 = load i32, ptr %a, align 4, !dbg !1763
  %add75 = add i32 %78, %shl74, !dbg !1763
  store i32 %add75, ptr %a, align 4, !dbg !1763
  br label %sw.bb76, !dbg !1764

sw.bb76:                                          ; preds = %while.end, %sw.bb71
  %79 = load ptr, ptr %k, align 8, !dbg !1765
  %arrayidx77 = getelementptr i8, ptr %79, i64 1, !dbg !1765
  %80 = load i8, ptr %arrayidx77, align 1, !dbg !1765
  %conv78 = zext i8 %80 to i32, !dbg !1766
  %shl79 = shl i32 %conv78, 8, !dbg !1767
  %81 = load i32, ptr %a, align 4, !dbg !1768
  %add80 = add i32 %81, %shl79, !dbg !1768
  store i32 %add80, ptr %a, align 4, !dbg !1768
  br label %sw.bb81, !dbg !1769

sw.bb81:                                          ; preds = %while.end, %sw.bb76
  %82 = load ptr, ptr %k, align 8, !dbg !1770
  %arrayidx82 = getelementptr i8, ptr %82, i64 0, !dbg !1770
  %83 = load i8, ptr %arrayidx82, align 1, !dbg !1770
  %conv83 = zext i8 %83 to i32, !dbg !1770
  %84 = load i32, ptr %a, align 4, !dbg !1771
  %add84 = add i32 %84, %conv83, !dbg !1771
  store i32 %add84, ptr %a, align 4, !dbg !1771
  %85 = load i32, ptr %b, align 4, !dbg !1772
  %86 = load i32, ptr %c, align 4, !dbg !1772
  %xor85 = xor i32 %86, %85, !dbg !1772
  store i32 %xor85, ptr %c, align 4, !dbg !1772
  %87 = load i32, ptr %b, align 4, !dbg !1772
  %call86 = call i32 @rol32(i32 noundef %87, i32 noundef 14) #21, !dbg !1772
  %88 = load i32, ptr %c, align 4, !dbg !1772
  %sub87 = sub i32 %88, %call86, !dbg !1772
  store i32 %sub87, ptr %c, align 4, !dbg !1772
  %89 = load i32, ptr %c, align 4, !dbg !1772
  %90 = load i32, ptr %a, align 4, !dbg !1772
  %xor88 = xor i32 %90, %89, !dbg !1772
  store i32 %xor88, ptr %a, align 4, !dbg !1772
  %91 = load i32, ptr %c, align 4, !dbg !1772
  %call89 = call i32 @rol32(i32 noundef %91, i32 noundef 11) #21, !dbg !1772
  %92 = load i32, ptr %a, align 4, !dbg !1772
  %sub90 = sub i32 %92, %call89, !dbg !1772
  store i32 %sub90, ptr %a, align 4, !dbg !1772
  %93 = load i32, ptr %a, align 4, !dbg !1772
  %94 = load i32, ptr %b, align 4, !dbg !1772
  %xor91 = xor i32 %94, %93, !dbg !1772
  store i32 %xor91, ptr %b, align 4, !dbg !1772
  %95 = load i32, ptr %a, align 4, !dbg !1772
  %call92 = call i32 @rol32(i32 noundef %95, i32 noundef 25) #21, !dbg !1772
  %96 = load i32, ptr %b, align 4, !dbg !1772
  %sub93 = sub i32 %96, %call92, !dbg !1772
  store i32 %sub93, ptr %b, align 4, !dbg !1772
  %97 = load i32, ptr %b, align 4, !dbg !1772
  %98 = load i32, ptr %c, align 4, !dbg !1772
  %xor94 = xor i32 %98, %97, !dbg !1772
  store i32 %xor94, ptr %c, align 4, !dbg !1772
  %99 = load i32, ptr %b, align 4, !dbg !1772
  %call95 = call i32 @rol32(i32 noundef %99, i32 noundef 16) #21, !dbg !1772
  %100 = load i32, ptr %c, align 4, !dbg !1772
  %sub96 = sub i32 %100, %call95, !dbg !1772
  store i32 %sub96, ptr %c, align 4, !dbg !1772
  %101 = load i32, ptr %c, align 4, !dbg !1772
  %102 = load i32, ptr %a, align 4, !dbg !1772
  %xor97 = xor i32 %102, %101, !dbg !1772
  store i32 %xor97, ptr %a, align 4, !dbg !1772
  %103 = load i32, ptr %c, align 4, !dbg !1772
  %call98 = call i32 @rol32(i32 noundef %103, i32 noundef 4) #21, !dbg !1772
  %104 = load i32, ptr %a, align 4, !dbg !1772
  %sub99 = sub i32 %104, %call98, !dbg !1772
  store i32 %sub99, ptr %a, align 4, !dbg !1772
  %105 = load i32, ptr %a, align 4, !dbg !1772
  %106 = load i32, ptr %b, align 4, !dbg !1772
  %xor100 = xor i32 %106, %105, !dbg !1772
  store i32 %xor100, ptr %b, align 4, !dbg !1772
  %107 = load i32, ptr %a, align 4, !dbg !1772
  %call101 = call i32 @rol32(i32 noundef %107, i32 noundef 14) #21, !dbg !1772
  %108 = load i32, ptr %b, align 4, !dbg !1772
  %sub102 = sub i32 %108, %call101, !dbg !1772
  store i32 %sub102, ptr %b, align 4, !dbg !1772
  %109 = load i32, ptr %b, align 4, !dbg !1772
  %110 = load i32, ptr %c, align 4, !dbg !1772
  %xor103 = xor i32 %110, %109, !dbg !1772
  store i32 %xor103, ptr %c, align 4, !dbg !1772
  %111 = load i32, ptr %b, align 4, !dbg !1772
  %call104 = call i32 @rol32(i32 noundef %111, i32 noundef 24) #21, !dbg !1772
  %112 = load i32, ptr %c, align 4, !dbg !1772
  %sub105 = sub i32 %112, %call104, !dbg !1772
  store i32 %sub105, ptr %c, align 4, !dbg !1772
  br label %sw.epilog, !dbg !1774

sw.epilog:                                        ; preds = %while.end, %while.end, %sw.bb81
  %113 = load i32, ptr %c, align 4, !dbg !1775
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #20, !dbg !1776
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #20, !dbg !1776
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #20, !dbg !1776
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #20, !dbg !1776
  ret i32 %113, !dbg !1777
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rhashtable_jhash2(ptr noundef %key, i32 noundef %length, i32 noundef %seed) #0 align 16 !dbg !1778 {
entry:
  %key.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %seed.addr = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1780, metadata !DIExpression()), !dbg !1783
  store i32 %length, ptr %length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !1781, metadata !DIExpression()), !dbg !1784
  store i32 %seed, ptr %seed.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seed.addr, metadata !1782, metadata !DIExpression()), !dbg !1785
  %0 = load ptr, ptr %key.addr, align 8, !dbg !1786
  %1 = load i32, ptr %length.addr, align 4, !dbg !1787
  %2 = load i32, ptr %seed.addr, align 4, !dbg !1788
  %call = call i32 @jhash2(ptr noundef %0, i32 noundef %1, i32 noundef %2) #21, !dbg !1789
  ret i32 %call, !dbg !1790
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @bucket_table_alloc(ptr noundef %ht, i64 noundef %nbuckets, i32 noundef %gfp) #0 align 16 !dbg !374 {
entry:
  %retval = alloca ptr, align 8
  %ht.addr = alloca ptr, align 8
  %nbuckets.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  %tbl = alloca ptr, align 8
  %size = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !378, metadata !DIExpression()), !dbg !1791
  store i64 %nbuckets, ptr %nbuckets.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbuckets.addr, metadata !379, metadata !DIExpression()), !dbg !1792
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !380, metadata !DIExpression()), !dbg !1793
  call void @llvm.lifetime.start.p0(i64 8, ptr %tbl) #20, !dbg !1794
  call void @llvm.dbg.declare(metadata ptr %tbl, metadata !381, metadata !DIExpression()), !dbg !1795
  store ptr null, ptr %tbl, align 8, !dbg !1795
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #20, !dbg !1796
  call void @llvm.dbg.declare(metadata ptr %size, metadata !382, metadata !DIExpression()), !dbg !1797
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #20, !dbg !1798
  call void @llvm.dbg.declare(metadata ptr %i, metadata !383, metadata !DIExpression()), !dbg !1799
  %0 = load i64, ptr %nbuckets.addr, align 8, !dbg !1800
  %call = call i64 @size_mul(i64 noundef %0, i64 noundef 8) #21, !dbg !1800
  %call1 = call i64 @size_add(i64 noundef 64, i64 noundef %call) #21, !dbg !1800
  %1 = load i32, ptr %gfp.addr, align 4, !dbg !1801
  %call2 = call noalias ptr @kvzalloc(i64 noundef %call1, i32 noundef %1) #23, !dbg !1802
  store ptr %call2, ptr %tbl, align 8, !dbg !1803
  %2 = load i64, ptr %nbuckets.addr, align 8, !dbg !1804
  store i64 %2, ptr %size, align 8, !dbg !1805
  %3 = load ptr, ptr %tbl, align 8, !dbg !1806
  %cmp = icmp eq ptr %3, null, !dbg !1808
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1809

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, ptr %gfp.addr, align 4, !dbg !1810
  %and = and i32 %4, -32769, !dbg !1811
  %cmp3 = icmp ne i32 %and, 3264, !dbg !1812
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1813

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %ht.addr, align 8, !dbg !1814
  %6 = load i64, ptr %nbuckets.addr, align 8, !dbg !1816
  %7 = load i32, ptr %gfp.addr, align 4, !dbg !1817
  %call4 = call ptr @nested_bucket_table_alloc(ptr noundef %5, i64 noundef %6, i32 noundef %7) #21, !dbg !1818
  store ptr %call4, ptr %tbl, align 8, !dbg !1819
  store i64 0, ptr %nbuckets.addr, align 8, !dbg !1820
  br label %if.end, !dbg !1821

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load ptr, ptr %tbl, align 8, !dbg !1822
  %cmp5 = icmp eq ptr %8, null, !dbg !1824
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !1825

if.then6:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !1826
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1826

if.end7:                                          ; preds = %if.end
  br label %do.body, !dbg !1827

do.body:                                          ; preds = %if.end7
  br label %do.cond, !dbg !1828

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1828

do.end:                                           ; preds = %do.cond
  %9 = load i64, ptr %size, align 8, !dbg !1830
  %conv = trunc i64 %9 to i32, !dbg !1830
  %10 = load ptr, ptr %tbl, align 8, !dbg !1831
  %size8 = getelementptr inbounds %struct.bucket_table, ptr %10, i32 0, i32 0, !dbg !1832
  store i32 %conv, ptr %size8, align 64, !dbg !1833
  %11 = load ptr, ptr %tbl, align 8, !dbg !1834
  %rcu = getelementptr inbounds %struct.bucket_table, ptr %11, i32 0, i32 4, !dbg !1835
  call void @rcu_head_init(ptr noundef %rcu) #21, !dbg !1836
  %12 = load ptr, ptr %tbl, align 8, !dbg !1837
  %walkers = getelementptr inbounds %struct.bucket_table, ptr %12, i32 0, i32 3, !dbg !1838
  call void @INIT_LIST_HEAD(ptr noundef %walkers) #21, !dbg !1839
  %call9 = call i32 @get_random_u32() #21, !dbg !1840
  %13 = load ptr, ptr %tbl, align 8, !dbg !1841
  %hash_rnd = getelementptr inbounds %struct.bucket_table, ptr %13, i32 0, i32 2, !dbg !1842
  store i32 %call9, ptr %hash_rnd, align 8, !dbg !1843
  store i32 0, ptr %i, align 4, !dbg !1844
  br label %for.cond, !dbg !1846

for.cond:                                         ; preds = %for.inc, %do.end
  %14 = load i32, ptr %i, align 4, !dbg !1847
  %conv10 = sext i32 %14 to i64, !dbg !1847
  %15 = load i64, ptr %nbuckets.addr, align 8, !dbg !1849
  %cmp11 = icmp ult i64 %conv10, %15, !dbg !1850
  br i1 %cmp11, label %for.body, label %for.end, !dbg !1851

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %tbl, align 8, !dbg !1852
  %buckets = getelementptr inbounds %struct.bucket_table, ptr %16, i32 0, i32 8, !dbg !1852
  %17 = load i32, ptr %i, align 4, !dbg !1852
  %idxprom = sext i32 %17 to i64, !dbg !1852
  %arrayidx = getelementptr [0 x ptr], ptr %buckets, i64 0, i64 %idxprom, !dbg !1852
  store ptr null, ptr %arrayidx, align 8, !dbg !1852
  br label %for.inc, !dbg !1852

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %i, align 4, !dbg !1853
  %inc = add i32 %18, 1, !dbg !1853
  store i32 %inc, ptr %i, align 4, !dbg !1853
  br label %for.cond, !dbg !1854, !llvm.loop !1855

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %tbl, align 8, !dbg !1857
  store ptr %19, ptr %retval, align 8, !dbg !1858
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1858

cleanup:                                          ; preds = %for.end, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #20, !dbg !1859
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #20, !dbg !1859
  call void @llvm.lifetime.end.p0(i64 8, ptr %tbl) #20, !dbg !1859
  %20 = load ptr, ptr %retval, align 8, !dbg !1859
  ret ptr %20, !dbg !1859
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #3 align 16 !dbg !1860 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1866, metadata !DIExpression()), !dbg !1868
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1867, metadata !DIExpression()), !dbg !1869
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1870
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #21, !dbg !1871
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1872
  %2 = load i32, ptr %i.addr, align 4, !dbg !1873
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #21, !dbg !1874
  ret void, !dbg !1875
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__init_work(ptr noundef %work, i32 noundef %onstack) #4 align 16 !dbg !1876 {
entry:
  %work.addr = alloca ptr, align 8
  %onstack.addr = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !1880, metadata !DIExpression()), !dbg !1882
  store i32 %onstack, ptr %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %onstack.addr, metadata !1881, metadata !DIExpression()), !dbg !1883
  ret void, !dbg !1884
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #4 align 16 !dbg !1885 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !1887, metadata !DIExpression()), !dbg !1888
  br label %do.body, !dbg !1889

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1890

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1892

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1890

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !1894
  %1 = load ptr, ptr %list.addr, align 8, !dbg !1894
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !1894
  store volatile ptr %0, ptr %next, align 8, !dbg !1894
  br label %do.end3, !dbg !1894

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !1890

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !1896

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !1897

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !1899

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !1897

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !1901
  %3 = load ptr, ptr %list.addr, align 8, !dbg !1901
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !1901
  store volatile ptr %2, ptr %prev, align 8, !dbg !1901
  br label %do.end9, !dbg !1901

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !1897

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !1903
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rht_deferred_worker(ptr noundef %work) #0 align 16 !dbg !1904 {
entry:
  %work.addr = alloca ptr, align 8
  %ht = alloca ptr, align 8
  %tbl = alloca ptr, align 8
  %err = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %nerr = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !1906, metadata !DIExpression()), !dbg !1915
  call void @llvm.lifetime.start.p0(i64 8, ptr %ht) #20, !dbg !1916
  call void @llvm.dbg.declare(metadata ptr %ht, metadata !1907, metadata !DIExpression()), !dbg !1917
  call void @llvm.lifetime.start.p0(i64 8, ptr %tbl) #20, !dbg !1918
  call void @llvm.dbg.declare(metadata ptr %tbl, metadata !1908, metadata !DIExpression()), !dbg !1919
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #20, !dbg !1920
  call void @llvm.dbg.declare(metadata ptr %err, metadata !1909, metadata !DIExpression()), !dbg !1921
  store i32 0, ptr %err, align 4, !dbg !1921
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #20, !dbg !1922
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1910, metadata !DIExpression()), !dbg !1922
  %0 = load ptr, ptr %work.addr, align 8, !dbg !1922
  store ptr %0, ptr %__mptr, align 8, !dbg !1922
  %1 = load ptr, ptr %__mptr, align 8, !dbg !1922
  %add.ptr = getelementptr i8, ptr %1, i64 -64, !dbg !1922
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1922
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #20, !dbg !1923
  %2 = load ptr, ptr %tmp, align 8, !dbg !1922
  store ptr %2, ptr %ht, align 8, !dbg !1924
  %3 = load ptr, ptr %ht, align 8, !dbg !1925
  %mutex = getelementptr inbounds %struct.rhashtable, ptr %3, i32 0, i32 6, !dbg !1926
  call void @mutex_lock(ptr noundef %mutex) #21, !dbg !1927
  br label %do.body, !dbg !1928

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1930

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1930

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %ht, align 8, !dbg !1928
  %tbl2 = getelementptr inbounds %struct.rhashtable, ptr %4, i32 0, i32 0, !dbg !1928
  %5 = load ptr, ptr %tbl2, align 8, !dbg !1928
  store ptr %5, ptr %tmp1, align 8, !dbg !1930
  %6 = load ptr, ptr %tmp1, align 8, !dbg !1928
  store ptr %6, ptr %tbl, align 8, !dbg !1932
  %7 = load ptr, ptr %ht, align 8, !dbg !1933
  %8 = load ptr, ptr %tbl, align 8, !dbg !1934
  %call = call ptr @rhashtable_last_table(ptr noundef %7, ptr noundef %8) #21, !dbg !1935
  store ptr %call, ptr %tbl, align 8, !dbg !1936
  %9 = load ptr, ptr %ht, align 8, !dbg !1937
  %10 = load ptr, ptr %tbl, align 8, !dbg !1939
  %call3 = call zeroext i1 @rht_grow_above_75(ptr noundef %9, ptr noundef %10) #21, !dbg !1940
  br i1 %call3, label %if.then, label %if.else, !dbg !1941

if.then:                                          ; preds = %do.end
  %11 = load ptr, ptr %ht, align 8, !dbg !1942
  %12 = load ptr, ptr %tbl, align 8, !dbg !1943
  %13 = load ptr, ptr %tbl, align 8, !dbg !1944
  %size = getelementptr inbounds %struct.bucket_table, ptr %13, i32 0, i32 0, !dbg !1945
  %14 = load i32, ptr %size, align 64, !dbg !1945
  %mul = mul i32 %14, 2, !dbg !1946
  %call4 = call i32 @rhashtable_rehash_alloc(ptr noundef %11, ptr noundef %12, i32 noundef %mul) #21, !dbg !1947
  store i32 %call4, ptr %err, align 4, !dbg !1948
  br label %if.end14, !dbg !1949

if.else:                                          ; preds = %do.end
  %15 = load ptr, ptr %ht, align 8, !dbg !1950
  %p = getelementptr inbounds %struct.rhashtable, ptr %15, i32 0, i32 3, !dbg !1952
  %automatic_shrinking = getelementptr inbounds %struct.rhashtable_params, ptr %p, i32 0, i32 6, !dbg !1953
  %16 = load i8, ptr %automatic_shrinking, align 2, !dbg !1953, !range !803, !noundef !80
  %tobool = trunc i8 %16 to i1, !dbg !1953
  br i1 %tobool, label %land.lhs.true, label %if.else8, !dbg !1954

land.lhs.true:                                    ; preds = %if.else
  %17 = load ptr, ptr %ht, align 8, !dbg !1955
  %18 = load ptr, ptr %tbl, align 8, !dbg !1956
  %call5 = call zeroext i1 @rht_shrink_below_30(ptr noundef %17, ptr noundef %18) #21, !dbg !1957
  br i1 %call5, label %if.then6, label %if.else8, !dbg !1958

if.then6:                                         ; preds = %land.lhs.true
  %19 = load ptr, ptr %ht, align 8, !dbg !1959
  %call7 = call i32 @rhashtable_shrink(ptr noundef %19) #21, !dbg !1960
  store i32 %call7, ptr %err, align 4, !dbg !1961
  br label %if.end13, !dbg !1962

if.else8:                                         ; preds = %land.lhs.true, %if.else
  %20 = load ptr, ptr %tbl, align 8, !dbg !1963
  %nest = getelementptr inbounds %struct.bucket_table, ptr %20, i32 0, i32 1, !dbg !1965
  %21 = load i32, ptr %nest, align 4, !dbg !1965
  %tobool9 = icmp ne i32 %21, 0, !dbg !1963
  br i1 %tobool9, label %if.then10, label %if.end, !dbg !1966

if.then10:                                        ; preds = %if.else8
  %22 = load ptr, ptr %ht, align 8, !dbg !1967
  %23 = load ptr, ptr %tbl, align 8, !dbg !1968
  %24 = load ptr, ptr %tbl, align 8, !dbg !1969
  %size11 = getelementptr inbounds %struct.bucket_table, ptr %24, i32 0, i32 0, !dbg !1970
  %25 = load i32, ptr %size11, align 64, !dbg !1970
  %call12 = call i32 @rhashtable_rehash_alloc(ptr noundef %22, ptr noundef %23, i32 noundef %25) #21, !dbg !1971
  store i32 %call12, ptr %err, align 4, !dbg !1972
  br label %if.end, !dbg !1973

if.end:                                           ; preds = %if.then10, %if.else8
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then6
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then
  %26 = load i32, ptr %err, align 4, !dbg !1974
  %tobool15 = icmp ne i32 %26, 0, !dbg !1974
  br i1 %tobool15, label %lor.lhs.false, label %if.then16, !dbg !1975

lor.lhs.false:                                    ; preds = %if.end14
  %27 = load i32, ptr %err, align 4, !dbg !1976
  %cmp = icmp eq i32 %27, -17, !dbg !1977
  br i1 %cmp, label %if.then16, label %if.end19, !dbg !1978

if.then16:                                        ; preds = %lor.lhs.false, %if.end14
  call void @llvm.lifetime.start.p0(i64 4, ptr %nerr) #20, !dbg !1979
  call void @llvm.dbg.declare(metadata ptr %nerr, metadata !1912, metadata !DIExpression()), !dbg !1980
  %28 = load ptr, ptr %ht, align 8, !dbg !1981
  %call17 = call i32 @rhashtable_rehash_table(ptr noundef %28) #21, !dbg !1982
  store i32 %call17, ptr %nerr, align 4, !dbg !1983
  %29 = load i32, ptr %err, align 4, !dbg !1984
  %tobool18 = icmp ne i32 %29, 0, !dbg !1984
  br i1 %tobool18, label %cond.true, label %cond.false, !dbg !1984

cond.true:                                        ; preds = %if.then16
  br label %cond.end, !dbg !1984

cond.false:                                       ; preds = %if.then16
  %30 = load i32, ptr %nerr, align 4, !dbg !1985
  br label %cond.end, !dbg !1984

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %29, %cond.true ], [ %30, %cond.false ], !dbg !1984
  store i32 %cond, ptr %err, align 4, !dbg !1986
  call void @llvm.lifetime.end.p0(i64 4, ptr %nerr) #20, !dbg !1987
  br label %if.end19, !dbg !1988

if.end19:                                         ; preds = %cond.end, %lor.lhs.false
  %31 = load ptr, ptr %ht, align 8, !dbg !1989
  %mutex20 = getelementptr inbounds %struct.rhashtable, ptr %31, i32 0, i32 6, !dbg !1990
  call void @mutex_unlock(ptr noundef %mutex20) #21, !dbg !1991
  %32 = load i32, ptr %err, align 4, !dbg !1992
  %tobool21 = icmp ne i32 %32, 0, !dbg !1992
  br i1 %tobool21, label %if.then22, label %if.end24, !dbg !1994

if.then22:                                        ; preds = %if.end19
  %33 = load ptr, ptr %ht, align 8, !dbg !1995
  %run_work = getelementptr inbounds %struct.rhashtable, ptr %33, i32 0, i32 5, !dbg !1996
  %call23 = call zeroext i1 @schedule_work(ptr noundef %run_work) #21, !dbg !1997
  br label %if.end24, !dbg !1997

if.end24:                                         ; preds = %if.then22, %if.end19
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #20, !dbg !1998
  call void @llvm.lifetime.end.p0(i64 8, ptr %tbl) #20, !dbg !1998
  call void @llvm.lifetime.end.p0(i64 8, ptr %ht) #20, !dbg !1998
  ret void, !dbg !1998
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rhltable_init(ptr noundef %hlt, ptr noundef %params) #0 align 16 !dbg !1999 {
entry:
  %hlt.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %hlt, ptr %hlt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hlt.addr, metadata !2007, metadata !DIExpression()), !dbg !2010
  store ptr %params, ptr %params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %params.addr, metadata !2008, metadata !DIExpression()), !dbg !2011
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #20, !dbg !2012
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2009, metadata !DIExpression()), !dbg !2013
  %0 = load ptr, ptr %hlt.addr, align 8, !dbg !2014
  %ht = getelementptr inbounds %struct.rhltable, ptr %0, i32 0, i32 0, !dbg !2015
  %1 = load ptr, ptr %params.addr, align 8, !dbg !2016
  %call = call i32 @rhashtable_init(ptr noundef %ht, ptr noundef %1) #21, !dbg !2017
  store i32 %call, ptr %err, align 4, !dbg !2018
  %2 = load ptr, ptr %hlt.addr, align 8, !dbg !2019
  %ht1 = getelementptr inbounds %struct.rhltable, ptr %2, i32 0, i32 0, !dbg !2020
  %rhlist = getelementptr inbounds %struct.rhashtable, ptr %ht1, i32 0, i32 4, !dbg !2021
  store i8 1, ptr %rhlist, align 8, !dbg !2022
  %3 = load i32, ptr %err, align 4, !dbg !2023
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #20, !dbg !2024
  ret i32 %3, !dbg !2025
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rhashtable_free_and_destroy(ptr noundef %ht, ptr noundef %free_fn, ptr noundef %arg) #0 align 16 !dbg !2026 {
entry:
  %ht.addr = alloca ptr, align 8
  %free_fn.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %tbl = alloca ptr, align 8
  %next_tbl = alloca ptr, align 8
  %i = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %pos = alloca ptr, align 8
  %next = alloca ptr, align 8
  %tmp2 = alloca i32, align 4
  %tmp10 = alloca ptr, align 8
  %tmp20 = alloca ptr, align 8
  %tmp30 = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !2033, metadata !DIExpression()), !dbg !2047
  store ptr %free_fn, ptr %free_fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %free_fn.addr, metadata !2034, metadata !DIExpression()), !dbg !2048
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !2035, metadata !DIExpression()), !dbg !2049
  call void @llvm.lifetime.start.p0(i64 8, ptr %tbl) #20, !dbg !2050
  call void @llvm.dbg.declare(metadata ptr %tbl, metadata !2036, metadata !DIExpression()), !dbg !2051
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_tbl) #20, !dbg !2050
  call void @llvm.dbg.declare(metadata ptr %next_tbl, metadata !2037, metadata !DIExpression()), !dbg !2052
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #20, !dbg !2053
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2038, metadata !DIExpression()), !dbg !2054
  %0 = load ptr, ptr %ht.addr, align 8, !dbg !2055
  %run_work = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 5, !dbg !2056
  %call = call zeroext i1 @cancel_work_sync(ptr noundef %run_work) #21, !dbg !2057
  %1 = load ptr, ptr %ht.addr, align 8, !dbg !2058
  %mutex = getelementptr inbounds %struct.rhashtable, ptr %1, i32 0, i32 6, !dbg !2059
  call void @mutex_lock(ptr noundef %mutex) #21, !dbg !2060
  br label %do.body, !dbg !2061

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !2063

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2063

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %ht.addr, align 8, !dbg !2061
  %tbl1 = getelementptr inbounds %struct.rhashtable, ptr %2, i32 0, i32 0, !dbg !2061
  %3 = load ptr, ptr %tbl1, align 8, !dbg !2061
  store ptr %3, ptr %tmp, align 8, !dbg !2063
  %4 = load ptr, ptr %tmp, align 8, !dbg !2061
  store ptr %4, ptr %tbl, align 8, !dbg !2065
  br label %restart, !dbg !2066

restart:                                          ; preds = %if.then32, %do.end
  call void @llvm.dbg.label(metadata !2039), !dbg !2067
  %5 = load ptr, ptr %free_fn.addr, align 8, !dbg !2068
  %tobool = icmp ne ptr %5, null, !dbg !2068
  br i1 %tobool, label %if.then, label %if.end, !dbg !2069

if.then:                                          ; preds = %restart
  store i32 0, ptr %i, align 4, !dbg !2070
  br label %for.cond, !dbg !2071

for.cond:                                         ; preds = %for.inc25, %if.then
  %6 = load i32, ptr %i, align 4, !dbg !2072
  %7 = load ptr, ptr %tbl, align 8, !dbg !2073
  %size = getelementptr inbounds %struct.bucket_table, ptr %7, i32 0, i32 0, !dbg !2074
  %8 = load i32, ptr %size, align 64, !dbg !2074
  %cmp = icmp ult i32 %6, %8, !dbg !2075
  br i1 %cmp, label %for.body, label %for.end26, !dbg !2076

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #20, !dbg !2077
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !2040, metadata !DIExpression()), !dbg !2078
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #20, !dbg !2077
  call void @llvm.dbg.declare(metadata ptr %next, metadata !2046, metadata !DIExpression()), !dbg !2079
  call void @__might_resched(ptr noundef @.str.2, i32 noundef 1150, i32 noundef 0) #21, !dbg !2080
  %call3 = call i32 @_cond_resched() #21, !dbg !2080
  store i32 %call3, ptr %tmp2, align 4, !dbg !2080
  %9 = load i32, ptr %tmp2, align 4, !dbg !2080
  %10 = load ptr, ptr %tbl, align 8, !dbg !2082
  %11 = load i32, ptr %i, align 4, !dbg !2084
  %call4 = call ptr @rht_bucket(ptr noundef %10, i32 noundef %11) #21, !dbg !2085
  %call5 = call ptr @rht_ptr_exclusive(ptr noundef %call4) #21, !dbg !2086
  store ptr %call5, ptr %pos, align 8, !dbg !2087
  %12 = load ptr, ptr %pos, align 8, !dbg !2088
  %call6 = call zeroext i1 @rht_is_a_nulls(ptr noundef %12) #21, !dbg !2089
  br i1 %call6, label %cond.false, label %cond.true, !dbg !2090

cond.true:                                        ; preds = %for.body
  br label %do.body7, !dbg !2091

do.body7:                                         ; preds = %cond.true
  br label %do.cond8, !dbg !2093

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !2093

do.end9:                                          ; preds = %do.cond8
  %13 = load ptr, ptr %pos, align 8, !dbg !2091
  %next11 = getelementptr inbounds %struct.rhash_head, ptr %13, i32 0, i32 0, !dbg !2091
  %14 = load ptr, ptr %next11, align 8, !dbg !2091
  store ptr %14, ptr %tmp10, align 8, !dbg !2093
  %15 = load ptr, ptr %tmp10, align 8, !dbg !2091
  br label %cond.end, !dbg !2090

cond.false:                                       ; preds = %for.body
  br label %cond.end, !dbg !2090

cond.end:                                         ; preds = %cond.false, %do.end9
  %cond = phi ptr [ %15, %do.end9 ], [ null, %cond.false ], !dbg !2090
  store ptr %cond, ptr %next, align 8, !dbg !2095
  br label %for.cond12, !dbg !2096

for.cond12:                                       ; preds = %cond.end23, %cond.end
  %16 = load ptr, ptr %pos, align 8, !dbg !2097
  %call13 = call zeroext i1 @rht_is_a_nulls(ptr noundef %16) #21, !dbg !2099
  %lnot = xor i1 %call13, true, !dbg !2100
  br i1 %lnot, label %for.body14, label %for.end, !dbg !2101

for.body14:                                       ; preds = %for.cond12
  %17 = load ptr, ptr %ht.addr, align 8, !dbg !2102
  %18 = load ptr, ptr %pos, align 8, !dbg !2103
  %19 = load ptr, ptr %free_fn.addr, align 8, !dbg !2104
  %20 = load ptr, ptr %arg.addr, align 8, !dbg !2105
  call void @rhashtable_free_one(ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20) #21, !dbg !2106
  br label %for.inc, !dbg !2106

for.inc:                                          ; preds = %for.body14
  %21 = load ptr, ptr %next, align 8, !dbg !2107
  store ptr %21, ptr %pos, align 8, !dbg !2108
  %22 = load ptr, ptr %pos, align 8, !dbg !2109
  %call15 = call zeroext i1 @rht_is_a_nulls(ptr noundef %22) #21, !dbg !2110
  br i1 %call15, label %cond.false22, label %cond.true16, !dbg !2111

cond.true16:                                      ; preds = %for.inc
  br label %do.body17, !dbg !2112

do.body17:                                        ; preds = %cond.true16
  br label %do.cond18, !dbg !2114

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !2114

do.end19:                                         ; preds = %do.cond18
  %23 = load ptr, ptr %pos, align 8, !dbg !2112
  %next21 = getelementptr inbounds %struct.rhash_head, ptr %23, i32 0, i32 0, !dbg !2112
  %24 = load ptr, ptr %next21, align 8, !dbg !2112
  store ptr %24, ptr %tmp20, align 8, !dbg !2114
  %25 = load ptr, ptr %tmp20, align 8, !dbg !2112
  br label %cond.end23, !dbg !2111

cond.false22:                                     ; preds = %for.inc
  br label %cond.end23, !dbg !2111

cond.end23:                                       ; preds = %cond.false22, %do.end19
  %cond24 = phi ptr [ %25, %do.end19 ], [ null, %cond.false22 ], !dbg !2111
  store ptr %cond24, ptr %next, align 8, !dbg !2116
  br label %for.cond12, !dbg !2117, !llvm.loop !2118

for.end:                                          ; preds = %for.cond12
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #20, !dbg !2120
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #20, !dbg !2120
  br label %for.inc25, !dbg !2121

for.inc25:                                        ; preds = %for.end
  %26 = load i32, ptr %i, align 4, !dbg !2122
  %inc = add i32 %26, 1, !dbg !2122
  store i32 %inc, ptr %i, align 4, !dbg !2122
  br label %for.cond, !dbg !2123, !llvm.loop !2124

for.end26:                                        ; preds = %for.cond
  br label %if.end, !dbg !2126

if.end:                                           ; preds = %for.end26, %restart
  br label %do.body27, !dbg !2127

do.body27:                                        ; preds = %if.end
  br label %do.cond28, !dbg !2129

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !2129

do.end29:                                         ; preds = %do.cond28
  %27 = load ptr, ptr %tbl, align 8, !dbg !2127
  %future_tbl = getelementptr inbounds %struct.bucket_table, ptr %27, i32 0, i32 5, !dbg !2127
  %28 = load ptr, ptr %future_tbl, align 16, !dbg !2127
  store ptr %28, ptr %tmp30, align 8, !dbg !2129
  %29 = load ptr, ptr %tmp30, align 8, !dbg !2127
  store ptr %29, ptr %next_tbl, align 8, !dbg !2131
  %30 = load ptr, ptr %tbl, align 8, !dbg !2132
  call void @bucket_table_free(ptr noundef %30) #21, !dbg !2133
  %31 = load ptr, ptr %next_tbl, align 8, !dbg !2134
  %tobool31 = icmp ne ptr %31, null, !dbg !2134
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !2136

if.then32:                                        ; preds = %do.end29
  %32 = load ptr, ptr %next_tbl, align 8, !dbg !2137
  store ptr %32, ptr %tbl, align 8, !dbg !2139
  br label %restart, !dbg !2140

if.end33:                                         ; preds = %do.end29
  %33 = load ptr, ptr %ht.addr, align 8, !dbg !2141
  %mutex34 = getelementptr inbounds %struct.rhashtable, ptr %33, i32 0, i32 6, !dbg !2142
  call void @mutex_unlock(ptr noundef %mutex34) #21, !dbg !2143
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #20, !dbg !2144
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_tbl) #20, !dbg !2144
  call void @llvm.lifetime.end.p0(i64 8, ptr %tbl) #20, !dbg !2144
  ret void, !dbg !2144
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2145 dso_local zeroext i1 @cancel_work_sync(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2148 dso_local void @mutex_lock(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__might_resched(ptr noundef %file, i32 noundef %line, i32 noundef %offsets) #4 align 16 !dbg !2151 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %offsets.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !2156, metadata !DIExpression()), !dbg !2159
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !2157, metadata !DIExpression()), !dbg !2160
  store i32 %offsets, ptr %offsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offsets.addr, metadata !2158, metadata !DIExpression()), !dbg !2161
  ret void, !dbg !2162
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_cond_resched() #3 align 16 !dbg !413 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__cond_resched, ptr %tmp, align 8, !dbg !2163
  %0 = load ptr, ptr %tmp, align 8, !dbg !2163
  %call = call i32 %0() #21, !dbg !2165
  ret i32 %call, !dbg !2166
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rht_ptr_exclusive(ptr noundef %bkt) #4 align 16 !dbg !2167 {
entry:
  %bkt.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %bkt, ptr %bkt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bkt.addr, metadata !2169, metadata !DIExpression()), !dbg !2170
  br label %do.body, !dbg !2171

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2173

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %bkt.addr, align 8, !dbg !2171
  %1 = load ptr, ptr %0, align 8, !dbg !2171
  store ptr %1, ptr %tmp, align 8, !dbg !2173
  %2 = load ptr, ptr %tmp, align 8, !dbg !2171
  %3 = load ptr, ptr %bkt.addr, align 8, !dbg !2175
  %call = call ptr @__rht_ptr(ptr noundef %2, ptr noundef %3) #21, !dbg !2176
  ret ptr %call, !dbg !2177
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rhashtable_free_one(ptr noundef %ht, ptr noundef %obj, ptr noundef %free_fn, ptr noundef %arg) #0 align 16 !dbg !2178 {
entry:
  %ht.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %free_fn.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %list = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !2182, metadata !DIExpression()), !dbg !2189
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !2183, metadata !DIExpression()), !dbg !2190
  store ptr %free_fn, ptr %free_fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %free_fn.addr, metadata !2184, metadata !DIExpression()), !dbg !2191
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !2185, metadata !DIExpression()), !dbg !2192
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #20, !dbg !2193
  call void @llvm.dbg.declare(metadata ptr %list, metadata !2186, metadata !DIExpression()), !dbg !2194
  %0 = load ptr, ptr %ht.addr, align 8, !dbg !2195
  %rhlist = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 4, !dbg !2197
  %1 = load i8, ptr %rhlist, align 8, !dbg !2197, !range !803, !noundef !80
  %tobool = trunc i8 %1 to i1, !dbg !2197
  br i1 %tobool, label %if.end, label %if.then, !dbg !2198

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %free_fn.addr, align 8, !dbg !2199
  %3 = load ptr, ptr %ht.addr, align 8, !dbg !2201
  %4 = load ptr, ptr %obj.addr, align 8, !dbg !2202
  %call = call ptr @rht_obj(ptr noundef %3, ptr noundef %4) #21, !dbg !2203
  %5 = load ptr, ptr %arg.addr, align 8, !dbg !2204
  call void %2(ptr noundef %call, ptr noundef %5) #21, !dbg !2199
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2205

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #20, !dbg !2206
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2187, metadata !DIExpression()), !dbg !2206
  %6 = load ptr, ptr %obj.addr, align 8, !dbg !2206
  store ptr %6, ptr %__mptr, align 8, !dbg !2206
  %7 = load ptr, ptr %__mptr, align 8, !dbg !2206
  %add.ptr = getelementptr i8, ptr %7, i64 0, !dbg !2206
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2206
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #20, !dbg !2207
  %8 = load ptr, ptr %tmp, align 8, !dbg !2206
  store ptr %8, ptr %list, align 8, !dbg !2208
  br label %do.body, !dbg !2209

do.body:                                          ; preds = %do.cond4, %if.end
  %9 = load ptr, ptr %list, align 8, !dbg !2210
  %rhead = getelementptr inbounds %struct.rhlist_head, ptr %9, i32 0, i32 0, !dbg !2212
  store ptr %rhead, ptr %obj.addr, align 8, !dbg !2213
  br label %do.body1, !dbg !2214

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !2216

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !2216

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %list, align 8, !dbg !2214
  %next = getelementptr inbounds %struct.rhlist_head, ptr %10, i32 0, i32 1, !dbg !2214
  %11 = load ptr, ptr %next, align 8, !dbg !2214
  store ptr %11, ptr %tmp2, align 8, !dbg !2216
  %12 = load ptr, ptr %tmp2, align 8, !dbg !2214
  store ptr %12, ptr %list, align 8, !dbg !2218
  %13 = load ptr, ptr %free_fn.addr, align 8, !dbg !2219
  %14 = load ptr, ptr %ht.addr, align 8, !dbg !2220
  %15 = load ptr, ptr %obj.addr, align 8, !dbg !2221
  %call3 = call ptr @rht_obj(ptr noundef %14, ptr noundef %15) #21, !dbg !2222
  %16 = load ptr, ptr %arg.addr, align 8, !dbg !2223
  call void %13(ptr noundef %call3, ptr noundef %16) #21, !dbg !2219
  br label %do.cond4, !dbg !2224

do.cond4:                                         ; preds = %do.end
  %17 = load ptr, ptr %list, align 8, !dbg !2225
  %tobool5 = icmp ne ptr %17, null, !dbg !2224
  br i1 %tobool5, label %do.body, label %do.end6, !dbg !2224, !llvm.loop !2226

do.end6:                                          ; preds = %do.cond4
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2228
  br label %cleanup, !dbg !2228

cleanup:                                          ; preds = %do.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #20, !dbg !2228
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2228

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bucket_table_free(ptr noundef %tbl) #0 align 16 !dbg !2229 {
entry:
  %tbl.addr = alloca ptr, align 8
  store ptr %tbl, ptr %tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tbl.addr, metadata !2233, metadata !DIExpression()), !dbg !2234
  %0 = load ptr, ptr %tbl.addr, align 8, !dbg !2235
  %nest = getelementptr inbounds %struct.bucket_table, ptr %0, i32 0, i32 1, !dbg !2237
  %1 = load i32, ptr %nest, align 4, !dbg !2237
  %tobool = icmp ne i32 %1, 0, !dbg !2235
  br i1 %tobool, label %if.then, label %if.end, !dbg !2238

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tbl.addr, align 8, !dbg !2239
  call void @nested_bucket_table_free(ptr noundef %2) #21, !dbg !2240
  br label %if.end, !dbg !2240

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %tbl.addr, align 8, !dbg !2241
  call void @kvfree(ptr noundef %3) #21, !dbg !2242
  ret void, !dbg !2243
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2244 dso_local void @mutex_unlock(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rhashtable_destroy(ptr noundef %ht) #0 align 16 !dbg !2245 {
entry:
  %ht.addr = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !2249, metadata !DIExpression()), !dbg !2250
  %0 = load ptr, ptr %ht.addr, align 8, !dbg !2251
  call void @rhashtable_free_and_destroy(ptr noundef %0, ptr noundef null, ptr noundef null) #21, !dbg !2252
  ret void, !dbg !2253
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @__rht_bucket_nested(ptr noundef %tbl, i32 noundef %hash) #0 align 16 !dbg !2254 {
entry:
  %retval = alloca ptr, align 8
  %tbl.addr = alloca ptr, align 8
  %hash.addr = alloca i32, align 4
  %shift = alloca i32, align 4
  %index = alloca i32, align 4
  %size = alloca i32, align 4
  %subhash = alloca i32, align 4
  %ntbl = alloca ptr, align 8
  %__UNIQUE_ID_rcu392 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %__UNIQUE_ID_rcu394 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  %tmp19 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tbl, ptr %tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tbl.addr, metadata !2256, metadata !DIExpression()), !dbg !2269
  store i32 %hash, ptr %hash.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !2257, metadata !DIExpression()), !dbg !2270
  call void @llvm.lifetime.start.p0(i64 4, ptr %shift) #20, !dbg !2271
  call void @llvm.dbg.declare(metadata ptr %shift, metadata !2258, metadata !DIExpression()), !dbg !2272
  store i32 9, ptr %shift, align 4, !dbg !2272
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #20, !dbg !2273
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2260, metadata !DIExpression()), !dbg !2274
  %0 = load i32, ptr %hash.addr, align 4, !dbg !2275
  %1 = load ptr, ptr %tbl.addr, align 8, !dbg !2276
  %nest = getelementptr inbounds %struct.bucket_table, ptr %1, i32 0, i32 1, !dbg !2277
  %2 = load i32, ptr %nest, align 4, !dbg !2277
  %shl = shl i32 1, %2, !dbg !2278
  %sub = sub i32 %shl, 1, !dbg !2279
  %and = and i32 %0, %sub, !dbg !2280
  store i32 %and, ptr %index, align 4, !dbg !2274
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #20, !dbg !2281
  call void @llvm.dbg.declare(metadata ptr %size, metadata !2261, metadata !DIExpression()), !dbg !2282
  %3 = load ptr, ptr %tbl.addr, align 8, !dbg !2283
  %size1 = getelementptr inbounds %struct.bucket_table, ptr %3, i32 0, i32 0, !dbg !2284
  %4 = load i32, ptr %size1, align 64, !dbg !2284
  %5 = load ptr, ptr %tbl.addr, align 8, !dbg !2285
  %nest2 = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 1, !dbg !2286
  %6 = load i32, ptr %nest2, align 4, !dbg !2286
  %shr = lshr i32 %4, %6, !dbg !2287
  store i32 %shr, ptr %size, align 4, !dbg !2282
  call void @llvm.lifetime.start.p0(i64 4, ptr %subhash) #20, !dbg !2288
  call void @llvm.dbg.declare(metadata ptr %subhash, metadata !2262, metadata !DIExpression()), !dbg !2289
  %7 = load i32, ptr %hash.addr, align 4, !dbg !2290
  store i32 %7, ptr %subhash, align 4, !dbg !2289
  call void @llvm.lifetime.start.p0(i64 8, ptr %ntbl) #20, !dbg !2291
  call void @llvm.dbg.declare(metadata ptr %ntbl, metadata !2263, metadata !DIExpression()), !dbg !2292
  %8 = load ptr, ptr %tbl.addr, align 8, !dbg !2293
  %call = call ptr @nested_table_top(ptr noundef %8) #21, !dbg !2294
  store ptr %call, ptr %ntbl, align 8, !dbg !2295
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu392) #20, !dbg !2296
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu392, metadata !2264, metadata !DIExpression()), !dbg !2296
  br label %do.body, !dbg !2297

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !2299

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2299

do.end:                                           ; preds = %do.cond
  %9 = load ptr, ptr %ntbl, align 8, !dbg !2297
  %10 = load i32, ptr %index, align 4, !dbg !2297
  %idxprom = zext i32 %10 to i64, !dbg !2297
  %arrayidx = getelementptr %union.nested_table, ptr %9, i64 %idxprom, !dbg !2297
  %11 = load volatile ptr, ptr %arrayidx, align 8, !dbg !2297
  store ptr %11, ptr %tmp, align 8, !dbg !2299
  %12 = load ptr, ptr %tmp, align 8, !dbg !2297
  store ptr %12, ptr %__UNIQUE_ID_rcu392, align 8, !dbg !2296
  br label %do.body3, !dbg !2296

do.body3:                                         ; preds = %do.end
  br label %do.cond4, !dbg !2301

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !2301

do.end5:                                          ; preds = %do.cond4
  %13 = load ptr, ptr %__UNIQUE_ID_rcu392, align 8, !dbg !2296
  store ptr %13, ptr %tmp6, align 8, !dbg !2301
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu392) #20, !dbg !2303
  %14 = load ptr, ptr %tmp6, align 8, !dbg !2296
  store ptr %14, ptr %ntbl, align 8, !dbg !2304
  %15 = load ptr, ptr %tbl.addr, align 8, !dbg !2305
  %nest7 = getelementptr inbounds %struct.bucket_table, ptr %15, i32 0, i32 1, !dbg !2306
  %16 = load i32, ptr %nest7, align 4, !dbg !2306
  %17 = load i32, ptr %subhash, align 4, !dbg !2307
  %shr8 = lshr i32 %17, %16, !dbg !2307
  store i32 %shr8, ptr %subhash, align 4, !dbg !2307
  br label %while.cond, !dbg !2308

while.cond:                                       ; preds = %do.end18, %do.end5
  %18 = load ptr, ptr %ntbl, align 8, !dbg !2309
  %tobool = icmp ne ptr %18, null, !dbg !2309
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2310

land.rhs:                                         ; preds = %while.cond
  %19 = load i32, ptr %size, align 4, !dbg !2311
  %cmp = icmp ugt i32 %19, 512, !dbg !2312
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %20 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ], !dbg !2313
  br i1 %20, label %while.body, label %while.end, !dbg !2308

while.body:                                       ; preds = %land.end
  %21 = load i32, ptr %subhash, align 4, !dbg !2314
  %and9 = and i32 %21, 511, !dbg !2315
  store i32 %and9, ptr %index, align 4, !dbg !2316
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu394) #20, !dbg !2317
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu394, metadata !2266, metadata !DIExpression()), !dbg !2317
  br label %do.body10, !dbg !2318

do.body10:                                        ; preds = %while.body
  br label %do.cond11, !dbg !2320

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !2320

do.end12:                                         ; preds = %do.cond11
  %22 = load ptr, ptr %ntbl, align 8, !dbg !2318
  %23 = load i32, ptr %index, align 4, !dbg !2318
  %idxprom14 = zext i32 %23 to i64, !dbg !2318
  %arrayidx15 = getelementptr %union.nested_table, ptr %22, i64 %idxprom14, !dbg !2318
  %24 = load volatile ptr, ptr %arrayidx15, align 8, !dbg !2318
  store ptr %24, ptr %tmp13, align 8, !dbg !2320
  %25 = load ptr, ptr %tmp13, align 8, !dbg !2318
  store ptr %25, ptr %__UNIQUE_ID_rcu394, align 8, !dbg !2317
  br label %do.body16, !dbg !2317

do.body16:                                        ; preds = %do.end12
  br label %do.cond17, !dbg !2322

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !2322

do.end18:                                         ; preds = %do.cond17
  %26 = load ptr, ptr %__UNIQUE_ID_rcu394, align 8, !dbg !2317
  store ptr %26, ptr %tmp19, align 8, !dbg !2322
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu394) #20, !dbg !2324
  %27 = load ptr, ptr %tmp19, align 8, !dbg !2317
  store ptr %27, ptr %ntbl, align 8, !dbg !2325
  %28 = load i32, ptr %size, align 4, !dbg !2326
  %shr20 = lshr i32 %28, 9, !dbg !2326
  store i32 %shr20, ptr %size, align 4, !dbg !2326
  %29 = load i32, ptr %subhash, align 4, !dbg !2327
  %shr21 = lshr i32 %29, 9, !dbg !2327
  store i32 %shr21, ptr %subhash, align 4, !dbg !2327
  br label %while.cond, !dbg !2308, !llvm.loop !2328

while.end:                                        ; preds = %land.end
  %30 = load ptr, ptr %ntbl, align 8, !dbg !2330
  %tobool22 = icmp ne ptr %30, null, !dbg !2330
  br i1 %tobool22, label %if.end, label %if.then, !dbg !2332

if.then:                                          ; preds = %while.end
  store ptr null, ptr %retval, align 8, !dbg !2333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2333

if.end:                                           ; preds = %while.end
  %31 = load ptr, ptr %ntbl, align 8, !dbg !2334
  %32 = load i32, ptr %subhash, align 4, !dbg !2335
  %idxprom23 = zext i32 %32 to i64, !dbg !2334
  %arrayidx24 = getelementptr %union.nested_table, ptr %31, i64 %idxprom23, !dbg !2334
  store ptr %arrayidx24, ptr %retval, align 8, !dbg !2336
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2336

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ntbl) #20, !dbg !2337
  call void @llvm.lifetime.end.p0(i64 4, ptr %subhash) #20, !dbg !2337
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #20, !dbg !2337
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #20, !dbg !2337
  call void @llvm.lifetime.end.p0(i64 4, ptr %shift) #20, !dbg !2337
  %33 = load ptr, ptr %retval, align 8, !dbg !2337
  ret ptr %33, !dbg !2337
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @nested_table_top(ptr noundef %tbl) #4 align 16 !dbg !2338 {
entry:
  %tbl.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %tbl, ptr %tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tbl.addr, metadata !2342, metadata !DIExpression()), !dbg !2343
  br label %do.body, !dbg !2344

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2346

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %tbl.addr, align 8, !dbg !2344
  %buckets = getelementptr inbounds %struct.bucket_table, ptr %0, i32 0, i32 8, !dbg !2344
  %arrayidx = getelementptr [0 x ptr], ptr %buckets, i64 0, i64 0, !dbg !2344
  %1 = load ptr, ptr %arrayidx, align 64, !dbg !2344
  store ptr %1, ptr %tmp, align 8, !dbg !2346
  %2 = load ptr, ptr %tmp, align 8, !dbg !2344
  ret ptr %2, !dbg !2348
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @rht_bucket_nested(ptr noundef %tbl, i32 noundef %hash) #0 align 16 !dbg !338 {
entry:
  %tbl.addr = alloca ptr, align 8
  %hash.addr = alloca i32, align 4
  store ptr %tbl, ptr %tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tbl.addr, metadata !345, metadata !DIExpression()), !dbg !2349
  store i32 %hash, ptr %hash.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !346, metadata !DIExpression()), !dbg !2350
  %0 = load ptr, ptr @rht_bucket_nested.rhnull, align 8, !dbg !2351
  %tobool = icmp ne ptr %0, null, !dbg !2351
  br i1 %tobool, label %if.end, label %if.then, !dbg !2353

if.then:                                          ; preds = %entry
  store ptr null, ptr @rht_bucket_nested.rhnull, align 8, !dbg !2354
  br label %if.end, !dbg !2354

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %tbl.addr, align 8, !dbg !2355
  %2 = load i32, ptr %hash.addr, align 4, !dbg !2356
  %call = call ptr @__rht_bucket_nested(ptr noundef %1, i32 noundef %2) #21, !dbg !2357
  %tobool1 = icmp ne ptr %call, null, !dbg !2357
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !2357

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !2357

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2357

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call, %cond.true ], [ @rht_bucket_nested.rhnull, %cond.false ], !dbg !2357
  ret ptr %cond, !dbg !2358
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @rht_bucket_nested_insert(ptr noundef %ht, ptr noundef %tbl, i32 noundef %hash) #0 align 16 !dbg !2359 {
entry:
  %retval = alloca ptr, align 8
  %ht.addr = alloca ptr, align 8
  %tbl.addr = alloca ptr, align 8
  %hash.addr = alloca i32, align 4
  %shift = alloca i32, align 4
  %index = alloca i32, align 4
  %size = alloca i32, align 4
  %ntbl = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !2363, metadata !DIExpression()), !dbg !2370
  store ptr %tbl, ptr %tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tbl.addr, metadata !2364, metadata !DIExpression()), !dbg !2371
  store i32 %hash, ptr %hash.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !2365, metadata !DIExpression()), !dbg !2372
  call void @llvm.lifetime.start.p0(i64 4, ptr %shift) #20, !dbg !2373
  call void @llvm.dbg.declare(metadata ptr %shift, metadata !2366, metadata !DIExpression()), !dbg !2374
  store i32 9, ptr %shift, align 4, !dbg !2374
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #20, !dbg !2375
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2367, metadata !DIExpression()), !dbg !2376
  %0 = load i32, ptr %hash.addr, align 4, !dbg !2377
  %1 = load ptr, ptr %tbl.addr, align 8, !dbg !2378
  %nest = getelementptr inbounds %struct.bucket_table, ptr %1, i32 0, i32 1, !dbg !2379
  %2 = load i32, ptr %nest, align 4, !dbg !2379
  %shl = shl i32 1, %2, !dbg !2380
  %sub = sub i32 %shl, 1, !dbg !2381
  %and = and i32 %0, %sub, !dbg !2382
  store i32 %and, ptr %index, align 4, !dbg !2376
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #20, !dbg !2383
  call void @llvm.dbg.declare(metadata ptr %size, metadata !2368, metadata !DIExpression()), !dbg !2384
  %3 = load ptr, ptr %tbl.addr, align 8, !dbg !2385
  %size1 = getelementptr inbounds %struct.bucket_table, ptr %3, i32 0, i32 0, !dbg !2386
  %4 = load i32, ptr %size1, align 64, !dbg !2386
  %5 = load ptr, ptr %tbl.addr, align 8, !dbg !2387
  %nest2 = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 1, !dbg !2388
  %6 = load i32, ptr %nest2, align 4, !dbg !2388
  %shr = lshr i32 %4, %6, !dbg !2389
  store i32 %shr, ptr %size, align 4, !dbg !2384
  call void @llvm.lifetime.start.p0(i64 8, ptr %ntbl) #20, !dbg !2390
  call void @llvm.dbg.declare(metadata ptr %ntbl, metadata !2369, metadata !DIExpression()), !dbg !2391
  %7 = load ptr, ptr %tbl.addr, align 8, !dbg !2392
  %call = call ptr @nested_table_top(ptr noundef %7) #21, !dbg !2393
  store ptr %call, ptr %ntbl, align 8, !dbg !2394
  %8 = load ptr, ptr %tbl.addr, align 8, !dbg !2395
  %nest3 = getelementptr inbounds %struct.bucket_table, ptr %8, i32 0, i32 1, !dbg !2396
  %9 = load i32, ptr %nest3, align 4, !dbg !2396
  %10 = load i32, ptr %hash.addr, align 4, !dbg !2397
  %shr4 = lshr i32 %10, %9, !dbg !2397
  store i32 %shr4, ptr %hash.addr, align 4, !dbg !2397
  %11 = load ptr, ptr %ht.addr, align 8, !dbg !2398
  %12 = load ptr, ptr %ntbl, align 8, !dbg !2399
  %13 = load i32, ptr %index, align 4, !dbg !2400
  %idxprom = zext i32 %13 to i64, !dbg !2399
  %arrayidx = getelementptr %union.nested_table, ptr %12, i64 %idxprom, !dbg !2399
  %14 = load i32, ptr %size, align 4, !dbg !2401
  %cmp = icmp ule i32 %14, 512, !dbg !2402
  %call5 = call ptr @nested_table_alloc(ptr noundef %11, ptr noundef %arrayidx, i1 noundef zeroext %cmp) #21, !dbg !2403
  store ptr %call5, ptr %ntbl, align 8, !dbg !2404
  br label %while.cond, !dbg !2405

while.cond:                                       ; preds = %while.body, %entry
  %15 = load ptr, ptr %ntbl, align 8, !dbg !2406
  %tobool = icmp ne ptr %15, null, !dbg !2406
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2407

land.rhs:                                         ; preds = %while.cond
  %16 = load i32, ptr %size, align 4, !dbg !2408
  %cmp6 = icmp ugt i32 %16, 512, !dbg !2409
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %cmp6, %land.rhs ], !dbg !2410
  br i1 %17, label %while.body, label %while.end, !dbg !2405

while.body:                                       ; preds = %land.end
  %18 = load i32, ptr %hash.addr, align 4, !dbg !2411
  %and7 = and i32 %18, 511, !dbg !2413
  store i32 %and7, ptr %index, align 4, !dbg !2414
  %19 = load i32, ptr %size, align 4, !dbg !2415
  %shr8 = lshr i32 %19, 9, !dbg !2415
  store i32 %shr8, ptr %size, align 4, !dbg !2415
  %20 = load i32, ptr %hash.addr, align 4, !dbg !2416
  %shr9 = lshr i32 %20, 9, !dbg !2416
  store i32 %shr9, ptr %hash.addr, align 4, !dbg !2416
  %21 = load ptr, ptr %ht.addr, align 8, !dbg !2417
  %22 = load ptr, ptr %ntbl, align 8, !dbg !2418
  %23 = load i32, ptr %index, align 4, !dbg !2419
  %idxprom10 = zext i32 %23 to i64, !dbg !2418
  %arrayidx11 = getelementptr %union.nested_table, ptr %22, i64 %idxprom10, !dbg !2418
  %24 = load i32, ptr %size, align 4, !dbg !2420
  %cmp12 = icmp ule i32 %24, 512, !dbg !2421
  %call13 = call ptr @nested_table_alloc(ptr noundef %21, ptr noundef %arrayidx11, i1 noundef zeroext %cmp12) #21, !dbg !2422
  store ptr %call13, ptr %ntbl, align 8, !dbg !2423
  br label %while.cond, !dbg !2405, !llvm.loop !2424

while.end:                                        ; preds = %land.end
  %25 = load ptr, ptr %ntbl, align 8, !dbg !2426
  %tobool14 = icmp ne ptr %25, null, !dbg !2426
  br i1 %tobool14, label %if.end, label %if.then, !dbg !2428

if.then:                                          ; preds = %while.end
  store ptr null, ptr %retval, align 8, !dbg !2429
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2429

if.end:                                           ; preds = %while.end
  %26 = load ptr, ptr %ntbl, align 8, !dbg !2430
  %27 = load i32, ptr %hash.addr, align 4, !dbg !2431
  %idxprom15 = zext i32 %27 to i64, !dbg !2430
  %arrayidx16 = getelementptr %union.nested_table, ptr %26, i64 %idxprom15, !dbg !2430
  store ptr %arrayidx16, ptr %retval, align 8, !dbg !2432
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2432

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ntbl) #20, !dbg !2433
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #20, !dbg !2433
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #20, !dbg !2433
  call void @llvm.lifetime.end.p0(i64 4, ptr %shift) #20, !dbg !2433
  %28 = load ptr, ptr %retval, align 8, !dbg !2433
  ret ptr %28, !dbg !2433
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @nested_table_alloc(ptr noundef %ht, ptr noundef %prev, i1 noundef zeroext %leaf) #0 align 16 !dbg !2434 {
entry:
  %retval = alloca ptr, align 8
  %ht.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %leaf.addr = alloca i8, align 1
  %ntbl = alloca ptr, align 8
  %i = alloca i32, align 4
  %__UNIQUE_ID_rcu322 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  %__ret = alloca ptr, align 8
  %__old = alloca ptr, align 8
  %__new = alloca ptr, align 8
  %__ptr = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  %__UNIQUE_ID_rcu324 = alloca ptr, align 8
  %tmp22 = alloca ptr, align 8
  %tmp26 = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !2438, metadata !DIExpression()), !dbg !2455
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2439, metadata !DIExpression()), !dbg !2456
  %frombool = zext i1 %leaf to i8
  store i8 %frombool, ptr %leaf.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %leaf.addr, metadata !2440, metadata !DIExpression()), !dbg !2457
  call void @llvm.lifetime.start.p0(i64 8, ptr %ntbl) #20, !dbg !2458
  call void @llvm.dbg.declare(metadata ptr %ntbl, metadata !2441, metadata !DIExpression()), !dbg !2459
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #20, !dbg !2460
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2442, metadata !DIExpression()), !dbg !2461
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu322) #20, !dbg !2462
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu322, metadata !2443, metadata !DIExpression()), !dbg !2462
  br label %do.body, !dbg !2463

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !2465

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2465

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !2463
  %1 = load volatile ptr, ptr %0, align 8, !dbg !2463
  store ptr %1, ptr %tmp, align 8, !dbg !2465
  %2 = load ptr, ptr %tmp, align 8, !dbg !2463
  store ptr %2, ptr %__UNIQUE_ID_rcu322, align 8, !dbg !2462
  br label %do.body1, !dbg !2462

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !2467

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !2467

do.end3:                                          ; preds = %do.cond2
  %3 = load ptr, ptr %__UNIQUE_ID_rcu322, align 8, !dbg !2462
  store ptr %3, ptr %tmp4, align 8, !dbg !2467
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu322) #20, !dbg !2469
  %4 = load ptr, ptr %tmp4, align 8, !dbg !2462
  store ptr %4, ptr %ntbl, align 8, !dbg !2470
  %5 = load ptr, ptr %ntbl, align 8, !dbg !2471
  %tobool = icmp ne ptr %5, null, !dbg !2471
  br i1 %tobool, label %if.then, label %if.end, !dbg !2473

if.then:                                          ; preds = %do.end3
  %6 = load ptr, ptr %ntbl, align 8, !dbg !2474
  store ptr %6, ptr %retval, align 8, !dbg !2475
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2475

if.end:                                           ; preds = %do.end3
  %call = call noalias ptr @kzalloc(i64 noundef 4096, i32 noundef 2080) #23, !dbg !2476
  store ptr %call, ptr %ntbl, align 8, !dbg !2477
  %7 = load ptr, ptr %ntbl, align 8, !dbg !2478
  %tobool5 = icmp ne ptr %7, null, !dbg !2478
  br i1 %tobool5, label %land.lhs.true, label %if.end9, !dbg !2480

land.lhs.true:                                    ; preds = %if.end
  %8 = load i8, ptr %leaf.addr, align 1, !dbg !2481, !range !803, !noundef !80
  %tobool6 = trunc i8 %8 to i1, !dbg !2481
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !2482

if.then7:                                         ; preds = %land.lhs.true
  store i32 0, ptr %i, align 4, !dbg !2483
  br label %for.cond, !dbg !2486

for.cond:                                         ; preds = %for.inc, %if.then7
  %9 = load i32, ptr %i, align 4, !dbg !2487
  %conv = sext i32 %9 to i64, !dbg !2487
  %cmp = icmp ult i64 %conv, 512, !dbg !2489
  br i1 %cmp, label %for.body, label %for.end, !dbg !2490

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %ntbl, align 8, !dbg !2491
  %11 = load i32, ptr %i, align 4, !dbg !2491
  %idxprom = sext i32 %11 to i64, !dbg !2491
  %arrayidx = getelementptr %union.nested_table, ptr %10, i64 %idxprom, !dbg !2491
  store ptr null, ptr %arrayidx, align 8, !dbg !2491
  br label %for.inc, !dbg !2491

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !dbg !2492
  %inc = add i32 %12, 1, !dbg !2492
  store i32 %inc, ptr %i, align 4, !dbg !2492
  br label %for.cond, !dbg !2493, !llvm.loop !2494

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !2496

if.end9:                                          ; preds = %for.end, %land.lhs.true, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #20, !dbg !2497
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !2445, metadata !DIExpression()), !dbg !2497
  %13 = load ptr, ptr %prev.addr, align 8, !dbg !2497
  store ptr %13, ptr %__ai_ptr, align 8, !dbg !2497
  br label %do.body10, !dbg !2497

do.body10:                                        ; preds = %if.end9
  br label %do.cond11, !dbg !2498

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !2498

do.end12:                                         ; preds = %do.cond11
  %14 = load ptr, ptr %__ai_ptr, align 8, !dbg !2497
  call void @instrument_atomic_read_write(ptr noundef %14, i64 noundef 8) #21, !dbg !2497
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #20, !dbg !2500
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !2448, metadata !DIExpression()), !dbg !2500
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #20, !dbg !2500
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !2450, metadata !DIExpression()), !dbg !2500
  store ptr null, ptr %__old, align 8, !dbg !2500
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #20, !dbg !2500
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !2451, metadata !DIExpression()), !dbg !2500
  %15 = load ptr, ptr %ntbl, align 8, !dbg !2500
  store ptr %15, ptr %__new, align 8, !dbg !2500
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #20, !dbg !2500
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2452, metadata !DIExpression()), !dbg !2500
  %16 = load ptr, ptr %__ai_ptr, align 8, !dbg !2500
  store ptr %16, ptr %__ptr, align 8, !dbg !2500
  %17 = load ptr, ptr %__ptr, align 8, !dbg !2500
  %18 = load ptr, ptr %__new, align 8, !dbg !2500
  %19 = load ptr, ptr %__old, align 8, !dbg !2500
  %20 = call ptr asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %17, ptr %18, ptr %19, ptr elementtype(i64) %17) #20, !dbg !2500, !srcloc !2501
  store ptr %20, ptr %__ret, align 8, !dbg !2500
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #20, !dbg !2500
  %21 = load ptr, ptr %__ret, align 8, !dbg !2500
  store ptr %21, ptr %tmp14, align 8, !dbg !2500
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #20, !dbg !2497
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #20, !dbg !2497
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #20, !dbg !2497
  %22 = load ptr, ptr %tmp14, align 8, !dbg !2500
  store ptr %22, ptr %tmp13, align 8, !dbg !2497
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #20, !dbg !2502
  %23 = load ptr, ptr %tmp13, align 8, !dbg !2497
  %cmp15 = icmp eq ptr %23, null, !dbg !2503
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !2504

if.then17:                                        ; preds = %do.end12
  %24 = load ptr, ptr %ntbl, align 8, !dbg !2505
  store ptr %24, ptr %retval, align 8, !dbg !2506
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2506

if.end18:                                         ; preds = %do.end12
  %25 = load ptr, ptr %ntbl, align 8, !dbg !2507
  call void @kfree(ptr noundef %25) #21, !dbg !2508
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu324) #20, !dbg !2509
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu324, metadata !2453, metadata !DIExpression()), !dbg !2509
  br label %do.body19, !dbg !2510

do.body19:                                        ; preds = %if.end18
  br label %do.cond20, !dbg !2512

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !2512

do.end21:                                         ; preds = %do.cond20
  %26 = load ptr, ptr %prev.addr, align 8, !dbg !2510
  %27 = load volatile ptr, ptr %26, align 8, !dbg !2510
  store ptr %27, ptr %tmp22, align 8, !dbg !2512
  %28 = load ptr, ptr %tmp22, align 8, !dbg !2510
  store ptr %28, ptr %__UNIQUE_ID_rcu324, align 8, !dbg !2509
  br label %do.body23, !dbg !2509

do.body23:                                        ; preds = %do.end21
  br label %do.cond24, !dbg !2514

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !2514

do.end25:                                         ; preds = %do.cond24
  %29 = load ptr, ptr %__UNIQUE_ID_rcu324, align 8, !dbg !2509
  store ptr %29, ptr %tmp26, align 8, !dbg !2514
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu324) #20, !dbg !2516
  %30 = load ptr, ptr %tmp26, align 8, !dbg !2509
  store ptr %30, ptr %retval, align 8, !dbg !2517
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2517

cleanup:                                          ; preds = %do.end25, %if.then17, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #20, !dbg !2518
  call void @llvm.lifetime.end.p0(i64 8, ptr %ntbl) #20, !dbg !2518
  %31 = load ptr, ptr %retval, align 8, !dbg !2518
  ret ptr %31, !dbg !2518
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2519 dso_local void @__rcu_read_lock() #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rht_head_hashfn(ptr noundef %ht, ptr noundef %tbl, ptr noundef %he, ptr noundef byval(%struct.rhashtable_params) align 8 %params) #4 align 16 !dbg !2520 {
entry:
  %ht.addr = alloca ptr, align 8
  %tbl.addr = alloca ptr, align 8
  %he.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !2524, metadata !DIExpression()), !dbg !2529
  store ptr %tbl, ptr %tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tbl.addr, metadata !2525, metadata !DIExpression()), !dbg !2530
  store ptr %he, ptr %he.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %he.addr, metadata !2526, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.declare(metadata ptr %params, metadata !2527, metadata !DIExpression()), !dbg !2532
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #20, !dbg !2533
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !2528, metadata !DIExpression()), !dbg !2534
  %0 = load ptr, ptr %ht.addr, align 8, !dbg !2535
  %1 = load ptr, ptr %he.addr, align 8, !dbg !2536
  %call = call ptr @rht_obj(ptr noundef %0, ptr noundef %1) #21, !dbg !2537
  store ptr %call, ptr %ptr, align 8, !dbg !2534
  %obj_hashfn = getelementptr inbounds %struct.rhashtable_params, ptr %params, i32 0, i32 8, !dbg !2538
  %2 = load ptr, ptr %obj_hashfn, align 8, !dbg !2538
  %tobool = icmp ne ptr %2, null, !dbg !2538
  %lnot = xor i1 %tobool, true, !dbg !2538
  %lnot1 = xor i1 %lnot, true, !dbg !2538
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2538
  %conv = sext i32 %lnot.ext to i64, !dbg !2538
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2538
  %tobool2 = icmp ne i64 %expval, 0, !dbg !2538
  br i1 %tobool2, label %cond.true, label %cond.false11, !dbg !2538

cond.true:                                        ; preds = %entry
  %3 = load ptr, ptr %tbl.addr, align 8, !dbg !2539
  %obj_hashfn3 = getelementptr inbounds %struct.rhashtable_params, ptr %params, i32 0, i32 8, !dbg !2540
  %4 = load ptr, ptr %obj_hashfn3, align 8, !dbg !2540
  %5 = load ptr, ptr %ptr, align 8, !dbg !2541
  %key_len = getelementptr inbounds %struct.rhashtable_params, ptr %params, i32 0, i32 1, !dbg !2542
  %6 = load i16, ptr %key_len, align 2, !dbg !2542
  %conv4 = zext i16 %6 to i32, !dbg !2543
  %tobool5 = icmp ne i32 %conv4, 0, !dbg !2543
  br i1 %tobool5, label %cond.true6, label %cond.false, !dbg !2543

cond.true6:                                       ; preds = %cond.true
  br label %cond.end, !dbg !2543

cond.false:                                       ; preds = %cond.true
  %7 = load ptr, ptr %ht.addr, align 8, !dbg !2544
  %p = getelementptr inbounds %struct.rhashtable, ptr %7, i32 0, i32 3, !dbg !2545
  %key_len7 = getelementptr inbounds %struct.rhashtable_params, ptr %p, i32 0, i32 1, !dbg !2546
  %8 = load i16, ptr %key_len7, align 2, !dbg !2546
  %conv8 = zext i16 %8 to i32, !dbg !2544
  br label %cond.end, !dbg !2543

cond.end:                                         ; preds = %cond.false, %cond.true6
  %cond = phi i32 [ %conv4, %cond.true6 ], [ %conv8, %cond.false ], !dbg !2543
  %9 = load ptr, ptr %tbl.addr, align 8, !dbg !2547
  %hash_rnd = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 2, !dbg !2548
  %10 = load i32, ptr %hash_rnd, align 8, !dbg !2548
  %call9 = call i32 %4(ptr noundef %5, i32 noundef %cond, i32 noundef %10) #21, !dbg !2549
  %call10 = call i32 @rht_bucket_index(ptr noundef %3, i32 noundef %call9) #21, !dbg !2550
  br label %cond.end14, !dbg !2538

cond.false11:                                     ; preds = %entry
  %11 = load ptr, ptr %ht.addr, align 8, !dbg !2551
  %12 = load ptr, ptr %tbl.addr, align 8, !dbg !2552
  %13 = load ptr, ptr %ptr, align 8, !dbg !2553
  %key_offset = getelementptr inbounds %struct.rhashtable_params, ptr %params, i32 0, i32 2, !dbg !2554
  %14 = load i16, ptr %key_offset, align 4, !dbg !2554
  %conv12 = zext i16 %14 to i32, !dbg !2555
  %idx.ext = sext i32 %conv12 to i64, !dbg !2556
  %add.ptr = getelementptr i8, ptr %13, i64 %idx.ext, !dbg !2556
  %call13 = call i32 @rht_key_hashfn(ptr noundef %11, ptr noundef %12, ptr noundef %add.ptr, ptr noundef byval(%struct.rhashtable_params) align 8 %params) #21, !dbg !2557
  br label %cond.end14, !dbg !2538

cond.end14:                                       ; preds = %cond.false11, %cond.end
  %cond15 = phi i32 [ %call10, %cond.end ], [ %call13, %cond.false11 ], !dbg !2538
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #20, !dbg !2558
  ret i32 %cond15, !dbg !2559
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rht_bucket_var(ptr noundef %tbl, i32 noundef %hash) #4 align 16 !dbg !2560 {
entry:
  %tbl.addr = alloca ptr, align 8
  %hash.addr = alloca i32, align 4
  store ptr %tbl, ptr %tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tbl.addr, metadata !2564, metadata !DIExpression()), !dbg !2566
  store i32 %hash, ptr %hash.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !2565, metadata !DIExpression()), !dbg !2567
  %0 = load ptr, ptr %tbl.addr, align 8, !dbg !2568
  %nest = getelementptr inbounds %struct.bucket_table, ptr %0, i32 0, i32 1, !dbg !2568
  %1 = load i32, ptr %nest, align 4, !dbg !2568
  %tobool = icmp ne i32 %1, 0, !dbg !2568
  %lnot = xor i1 %tobool, true, !dbg !2568
  %lnot1 = xor i1 %lnot, true, !dbg !2568
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2568
  %conv = sext i32 %lnot.ext to i64, !dbg !2568
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2568
  %tobool2 = icmp ne i64 %expval, 0, !dbg !2568
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !2568

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %tbl.addr, align 8, !dbg !2569
  %3 = load i32, ptr %hash.addr, align 4, !dbg !2570
  %call = call ptr @__rht_bucket_nested(ptr noundef %2, i32 noundef %3) #21, !dbg !2571
  br label %cond.end, !dbg !2568

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %tbl.addr, align 8, !dbg !2572
  %buckets = getelementptr inbounds %struct.bucket_table, ptr %4, i32 0, i32 8, !dbg !2573
  %5 = load i32, ptr %hash.addr, align 4, !dbg !2574
  %idxprom = zext i32 %5 to i64, !dbg !2572
  %arrayidx = getelementptr [0 x ptr], ptr %buckets, i64 0, i64 %idxprom, !dbg !2572
  br label %cond.end, !dbg !2568

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call, %cond.true ], [ %arrayidx, %cond.false ], !dbg !2568
  ret ptr %cond, !dbg !2575
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rht_bucket_insert(ptr noundef %ht, ptr noundef %tbl, i32 noundef %hash) #4 align 16 !dbg !2576 {
entry:
  %ht.addr = alloca ptr, align 8
  %tbl.addr = alloca ptr, align 8
  %hash.addr = alloca i32, align 4
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !2578, metadata !DIExpression()), !dbg !2581
  store ptr %tbl, ptr %tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tbl.addr, metadata !2579, metadata !DIExpression()), !dbg !2582
  store i32 %hash, ptr %hash.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !2580, metadata !DIExpression()), !dbg !2583
  %0 = load ptr, ptr %tbl.addr, align 8, !dbg !2584
  %nest = getelementptr inbounds %struct.bucket_table, ptr %0, i32 0, i32 1, !dbg !2584
  %1 = load i32, ptr %nest, align 4, !dbg !2584
  %tobool = icmp ne i32 %1, 0, !dbg !2584
  %lnot = xor i1 %tobool, true, !dbg !2584
  %lnot1 = xor i1 %lnot, true, !dbg !2584
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2584
  %conv = sext i32 %lnot.ext to i64, !dbg !2584
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2584
  %tobool2 = icmp ne i64 %expval, 0, !dbg !2584
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !2584

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %ht.addr, align 8, !dbg !2585
  %3 = load ptr, ptr %tbl.addr, align 8, !dbg !2586
  %4 = load i32, ptr %hash.addr, align 4, !dbg !2587
  %call = call ptr @rht_bucket_nested_insert(ptr noundef %2, ptr noundef %3, i32 noundef %4) #21, !dbg !2588
  br label %cond.end, !dbg !2584

cond.false:                                       ; preds = %entry
  %5 = load ptr, ptr %tbl.addr, align 8, !dbg !2589
  %buckets = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 8, !dbg !2590
  %6 = load i32, ptr %hash.addr, align 4, !dbg !2591
  %idxprom = zext i32 %6 to i64, !dbg !2589
  %arrayidx = getelementptr [0 x ptr], ptr %buckets, i64 0, i64 %idxprom, !dbg !2589
  br label %cond.end, !dbg !2584

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call, %cond.true ], [ %arrayidx, %cond.false ], !dbg !2584
  ret ptr %cond, !dbg !2592
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !2593 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !2597, metadata !DIExpression()), !dbg !2598
  %0 = load i64, ptr %error.addr, align 8, !dbg !2599
  %1 = inttoptr i64 %0 to ptr, !dbg !2600
  ret ptr %1, !dbg !2601
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #4 align 16 !dbg !2602 {
entry:
  %tbl.addr = alloca ptr, align 8
  %bkt.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %tbl, ptr %tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tbl.addr, metadata !2606, metadata !DIExpression()), !dbg !2614
  store ptr %bkt, ptr %bkt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bkt.addr, metadata !2607, metadata !DIExpression()), !dbg !2615
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #20, !dbg !2616
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2608, metadata !DIExpression()), !dbg !2617
  br label %do.body, !dbg !2618

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2619

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #20, !dbg !2620
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2609, metadata !DIExpression()), !dbg !2620
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #20, !dbg !2620
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2613, metadata !DIExpression()), !dbg !2620
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2620
  %conv = zext i1 %cmp to i32, !dbg !2620
  store i32 1, ptr %tmp, align 4, !dbg !2620
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #20, !dbg !2621
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #20, !dbg !2621
  %0 = load i32, ptr %tmp, align 4, !dbg !2620
  %call = call i64 @arch_local_irq_save() #21, !dbg !2621
  store i64 %call, ptr %flags, align 8, !dbg !2621
  br label %do.cond, !dbg !2621

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !2621

do.end:                                           ; preds = %do.cond
  br label %do.cond2, !dbg !2619

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !2619

do.end3:                                          ; preds = %do.cond2
  %1 = load ptr, ptr %bkt.addr, align 8, !dbg !2622
  call void @bit_spin_lock(i32 noundef 0, ptr noundef %1) #21, !dbg !2623
  br label %do.body4, !dbg !2624

do.body4:                                         ; preds = %do.end3
  br label %do.cond5, !dbg !2625

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !2625

do.end6:                                          ; preds = %do.cond5
  %2 = load i64, ptr %flags, align 8, !dbg !2627
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #20, !dbg !2628
  ret i64 %2, !dbg !2629
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rhashtable_lookup_one(ptr noundef %ht, ptr noundef %bkt, ptr noundef %tbl, i32 noundef %hash, ptr noundef %key, ptr noundef %obj) #0 align 16 !dbg !2630 {
entry:
  %retval = alloca ptr, align 8
  %ht.addr = alloca ptr, align 8
  %bkt.addr = alloca ptr, align 8
  %tbl.addr = alloca ptr, align 8
  %hash.addr = alloca i32, align 4
  %key.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %arg = alloca %struct.rhashtable_compare_arg, align 8
  %pprev = alloca ptr, align 8
  %head = alloca ptr, align 8
  %elasticity = alloca i32, align 4
  %list = alloca ptr, align 8
  %plist = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr17 = alloca ptr, align 8
  %tmp18 = alloca ptr, align 8
  %tmp33 = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  %tmp91 = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !2634, metadata !DIExpression()), !dbg !2657
  store ptr %bkt, ptr %bkt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bkt.addr, metadata !2635, metadata !DIExpression()), !dbg !2658
  store ptr %tbl, ptr %tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tbl.addr, metadata !2636, metadata !DIExpression()), !dbg !2659
  store i32 %hash, ptr %hash.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !2637, metadata !DIExpression()), !dbg !2660
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2638, metadata !DIExpression()), !dbg !2661
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !2639, metadata !DIExpression()), !dbg !2662
  call void @llvm.lifetime.start.p0(i64 16, ptr %arg) #20, !dbg !2663
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !2640, metadata !DIExpression()), !dbg !2664
  %ht1 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg, i32 0, i32 0, !dbg !2665
  %0 = load ptr, ptr %ht.addr, align 8, !dbg !2666
  store ptr %0, ptr %ht1, align 8, !dbg !2665
  %key2 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg, i32 0, i32 1, !dbg !2665
  %1 = load ptr, ptr %key.addr, align 8, !dbg !2667
  store ptr %1, ptr %key2, align 8, !dbg !2665
  call void @llvm.lifetime.start.p0(i64 8, ptr %pprev) #20, !dbg !2668
  call void @llvm.dbg.declare(metadata ptr %pprev, metadata !2641, metadata !DIExpression()), !dbg !2669
  store ptr null, ptr %pprev, align 8, !dbg !2669
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #20, !dbg !2670
  call void @llvm.dbg.declare(metadata ptr %head, metadata !2643, metadata !DIExpression()), !dbg !2671
  call void @llvm.lifetime.start.p0(i64 4, ptr %elasticity) #20, !dbg !2672
  call void @llvm.dbg.declare(metadata ptr %elasticity, metadata !2644, metadata !DIExpression()), !dbg !2673
  store i32 16, ptr %elasticity, align 4, !dbg !2674
  %2 = load ptr, ptr %bkt.addr, align 8, !dbg !2675
  %3 = load ptr, ptr %tbl.addr, align 8, !dbg !2675
  %4 = load i32, ptr %hash.addr, align 4, !dbg !2675
  %call = call ptr @rht_ptr(ptr noundef %2, ptr noundef %3, i32 noundef %4) #21, !dbg !2675
  store ptr %call, ptr %head, align 8, !dbg !2675
  br label %for.cond, !dbg !2675

for.cond:                                         ; preds = %do.end90, %entry
  %5 = load ptr, ptr %head, align 8, !dbg !2676
  %call3 = call zeroext i1 @rht_is_a_nulls(ptr noundef %5) #21, !dbg !2676
  %lnot = xor i1 %call3, true, !dbg !2676
  br i1 %lnot, label %for.body, label %for.end, !dbg !2675

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #20, !dbg !2677
  call void @llvm.dbg.declare(metadata ptr %list, metadata !2645, metadata !DIExpression()), !dbg !2678
  call void @llvm.lifetime.start.p0(i64 8, ptr %plist) #20, !dbg !2679
  call void @llvm.dbg.declare(metadata ptr %plist, metadata !2649, metadata !DIExpression()), !dbg !2680
  %6 = load i32, ptr %elasticity, align 4, !dbg !2681
  %dec = add i32 %6, -1, !dbg !2681
  store i32 %dec, ptr %elasticity, align 4, !dbg !2681
  %7 = load ptr, ptr %key.addr, align 8, !dbg !2682
  %tobool = icmp ne ptr %7, null, !dbg !2682
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2684

lor.lhs.false:                                    ; preds = %for.body
  %8 = load ptr, ptr %ht.addr, align 8, !dbg !2685
  %p = getelementptr inbounds %struct.rhashtable, ptr %8, i32 0, i32 3, !dbg !2686
  %obj_cmpfn = getelementptr inbounds %struct.rhashtable_params, ptr %p, i32 0, i32 9, !dbg !2687
  %9 = load ptr, ptr %obj_cmpfn, align 8, !dbg !2687
  %tobool4 = icmp ne ptr %9, null, !dbg !2685
  br i1 %tobool4, label %cond.true, label %cond.false, !dbg !2688

cond.true:                                        ; preds = %lor.lhs.false
  %10 = load ptr, ptr %ht.addr, align 8, !dbg !2689
  %p5 = getelementptr inbounds %struct.rhashtable, ptr %10, i32 0, i32 3, !dbg !2690
  %obj_cmpfn6 = getelementptr inbounds %struct.rhashtable_params, ptr %p5, i32 0, i32 9, !dbg !2691
  %11 = load ptr, ptr %obj_cmpfn6, align 8, !dbg !2691
  %12 = load ptr, ptr %ht.addr, align 8, !dbg !2692
  %13 = load ptr, ptr %head, align 8, !dbg !2693
  %call7 = call ptr @rht_obj(ptr noundef %12, ptr noundef %13) #21, !dbg !2694
  %call8 = call i32 %11(ptr noundef %arg, ptr noundef %call7) #21, !dbg !2689
  %tobool9 = icmp ne i32 %call8, 0, !dbg !2689
  br i1 %tobool9, label %if.then, label %if.end, !dbg !2685

cond.false:                                       ; preds = %lor.lhs.false
  %14 = load ptr, ptr %ht.addr, align 8, !dbg !2695
  %15 = load ptr, ptr %head, align 8, !dbg !2696
  %call10 = call ptr @rht_obj(ptr noundef %14, ptr noundef %15) #21, !dbg !2697
  %call11 = call i32 @rhashtable_compare(ptr noundef %arg, ptr noundef %call10) #21, !dbg !2698
  %tobool12 = icmp ne i32 %call11, 0, !dbg !2698
  br i1 %tobool12, label %if.then, label %if.end, !dbg !2688

if.then:                                          ; preds = %cond.false, %cond.true, %for.body
  %16 = load ptr, ptr %head, align 8, !dbg !2699
  %next = getelementptr inbounds %struct.rhash_head, ptr %16, i32 0, i32 0, !dbg !2701
  store ptr %next, ptr %pprev, align 8, !dbg !2702
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2703

if.end:                                           ; preds = %cond.false, %cond.true
  %17 = load ptr, ptr %ht.addr, align 8, !dbg !2704
  %rhlist = getelementptr inbounds %struct.rhashtable, ptr %17, i32 0, i32 4, !dbg !2706
  %18 = load i8, ptr %rhlist, align 8, !dbg !2706, !range !803, !noundef !80
  %tobool13 = trunc i8 %18 to i1, !dbg !2706
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !2707

if.then14:                                        ; preds = %if.end
  %19 = load ptr, ptr %ht.addr, align 8, !dbg !2708
  %20 = load ptr, ptr %head, align 8, !dbg !2709
  %call15 = call ptr @rht_obj(ptr noundef %19, ptr noundef %20) #21, !dbg !2710
  store ptr %call15, ptr %retval, align 8, !dbg !2711
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2711

if.end16:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #20, !dbg !2712
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2650, metadata !DIExpression()), !dbg !2712
  %21 = load ptr, ptr %obj.addr, align 8, !dbg !2712
  store ptr %21, ptr %__mptr, align 8, !dbg !2712
  %22 = load ptr, ptr %__mptr, align 8, !dbg !2712
  %add.ptr = getelementptr i8, ptr %22, i64 0, !dbg !2712
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2712
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #20, !dbg !2713
  %23 = load ptr, ptr %tmp, align 8, !dbg !2712
  store ptr %23, ptr %list, align 8, !dbg !2714
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr17) #20, !dbg !2715
  call void @llvm.dbg.declare(metadata ptr %__mptr17, metadata !2652, metadata !DIExpression()), !dbg !2715
  %24 = load ptr, ptr %head, align 8, !dbg !2715
  store ptr %24, ptr %__mptr17, align 8, !dbg !2715
  %25 = load ptr, ptr %__mptr17, align 8, !dbg !2715
  %add.ptr19 = getelementptr i8, ptr %25, i64 0, !dbg !2715
  store ptr %add.ptr19, ptr %tmp18, align 8, !dbg !2715
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr17) #20, !dbg !2716
  %26 = load ptr, ptr %tmp18, align 8, !dbg !2715
  store ptr %26, ptr %plist, align 8, !dbg !2717
  br label %do.body, !dbg !2718

do.body:                                          ; preds = %if.end16
  br label %do.body20, !dbg !2719

do.body20:                                        ; preds = %do.body
  br label %do.body21, !dbg !2721

do.body21:                                        ; preds = %do.body20
  br label %do.cond, !dbg !2723

do.cond:                                          ; preds = %do.body21
  br label %do.end, !dbg !2723

do.end:                                           ; preds = %do.cond
  br label %do.body22, !dbg !2721

do.body22:                                        ; preds = %do.end
  %27 = load ptr, ptr %plist, align 8, !dbg !2725
  %28 = load ptr, ptr %list, align 8, !dbg !2725
  %next23 = getelementptr inbounds %struct.rhlist_head, ptr %28, i32 0, i32 1, !dbg !2725
  store volatile ptr %27, ptr %next23, align 8, !dbg !2725
  br label %do.cond24, !dbg !2725

do.cond24:                                        ; preds = %do.body22
  br label %do.end25, !dbg !2725

do.end25:                                         ; preds = %do.cond24
  br label %do.cond26, !dbg !2721

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !2721

do.end27:                                         ; preds = %do.cond26
  br label %do.cond28, !dbg !2719

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !2719

do.end29:                                         ; preds = %do.cond28
  br label %do.body30, !dbg !2727

do.body30:                                        ; preds = %do.end29
  br label %do.cond31, !dbg !2729

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !2729

do.end32:                                         ; preds = %do.cond31
  %29 = load ptr, ptr %head, align 8, !dbg !2727
  %next34 = getelementptr inbounds %struct.rhash_head, ptr %29, i32 0, i32 0, !dbg !2727
  %30 = load ptr, ptr %next34, align 8, !dbg !2727
  store ptr %30, ptr %tmp33, align 8, !dbg !2729
  %31 = load ptr, ptr %tmp33, align 8, !dbg !2727
  store ptr %31, ptr %head, align 8, !dbg !2731
  br label %do.body35, !dbg !2732

do.body35:                                        ; preds = %do.end32
  br label %do.body36, !dbg !2733

do.body36:                                        ; preds = %do.body35
  br label %do.body37, !dbg !2735

do.body37:                                        ; preds = %do.body36
  br label %do.cond38, !dbg !2737

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !2737

do.end39:                                         ; preds = %do.cond38
  br label %do.body40, !dbg !2735

do.body40:                                        ; preds = %do.end39
  %32 = load ptr, ptr %head, align 8, !dbg !2739
  %33 = load ptr, ptr %list, align 8, !dbg !2739
  %rhead = getelementptr inbounds %struct.rhlist_head, ptr %33, i32 0, i32 0, !dbg !2739
  %next41 = getelementptr inbounds %struct.rhash_head, ptr %rhead, i32 0, i32 0, !dbg !2739
  store volatile ptr %32, ptr %next41, align 8, !dbg !2739
  br label %do.cond42, !dbg !2739

do.cond42:                                        ; preds = %do.body40
  br label %do.end43, !dbg !2739

do.end43:                                         ; preds = %do.cond42
  br label %do.cond44, !dbg !2735

do.cond44:                                        ; preds = %do.end43
  br label %do.end45, !dbg !2735

do.end45:                                         ; preds = %do.cond44
  br label %do.cond46, !dbg !2733

do.cond46:                                        ; preds = %do.end45
  br label %do.end47, !dbg !2733

do.end47:                                         ; preds = %do.cond46
  %34 = load ptr, ptr %pprev, align 8, !dbg !2741
  %tobool48 = icmp ne ptr %34, null, !dbg !2741
  br i1 %tobool48, label %if.then49, label %if.else85, !dbg !2742

if.then49:                                        ; preds = %do.end47
  br label %do.body50, !dbg !2743

do.body50:                                        ; preds = %if.then49
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #20, !dbg !2744
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !2654, metadata !DIExpression()), !dbg !2744
  %35 = load ptr, ptr %obj.addr, align 8, !dbg !2744
  %36 = ptrtoint ptr %35 to i64, !dbg !2744
  store i64 %36, ptr %_r_a_p__v, align 8, !dbg !2744
  br i1 false, label %land.lhs.true, label %if.else, !dbg !2745

land.lhs.true:                                    ; preds = %do.body50
  %37 = load i64, ptr %_r_a_p__v, align 8, !dbg !2745
  %cmp = icmp eq i64 %37, 0, !dbg !2745
  br i1 %cmp, label %if.then51, label %if.else, !dbg !2744

if.then51:                                        ; preds = %land.lhs.true
  br label %do.body52, !dbg !2745

do.body52:                                        ; preds = %if.then51
  br label %do.body53, !dbg !2747

do.body53:                                        ; preds = %do.body52
  br label %do.cond54, !dbg !2749

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !2749

do.end55:                                         ; preds = %do.cond54
  br label %do.body56, !dbg !2747

do.body56:                                        ; preds = %do.end55
  %38 = load i64, ptr %_r_a_p__v, align 8, !dbg !2751
  %39 = inttoptr i64 %38 to ptr, !dbg !2751
  %40 = load ptr, ptr %pprev, align 8, !dbg !2751
  store volatile ptr %39, ptr %40, align 8, !dbg !2751
  br label %do.cond57, !dbg !2751

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !2751

do.end58:                                         ; preds = %do.cond57
  br label %do.cond59, !dbg !2747

do.cond59:                                        ; preds = %do.end58
  br label %do.end60, !dbg !2747

do.end60:                                         ; preds = %do.cond59
  br label %if.end82, !dbg !2747

if.else:                                          ; preds = %land.lhs.true, %do.body50
  br label %do.body61, !dbg !2745

do.body61:                                        ; preds = %if.else
  br label %do.body62, !dbg !2753

do.body62:                                        ; preds = %do.body61
  br label %do.cond63, !dbg !2755

do.cond63:                                        ; preds = %do.body62
  br label %do.end64, !dbg !2755

do.end64:                                         ; preds = %do.cond63
  br label %do.body65, !dbg !2753

do.body65:                                        ; preds = %do.end64
  br label %do.body66, !dbg !2757

do.body66:                                        ; preds = %do.body65
  br label %do.cond67, !dbg !2759

do.cond67:                                        ; preds = %do.body66
  br label %do.end68, !dbg !2759

do.end68:                                         ; preds = %do.cond67
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !dbg !2757, !srcloc !2761
  br label %do.body69, !dbg !2757

do.body69:                                        ; preds = %do.end68
  br label %do.body70, !dbg !2762

do.body70:                                        ; preds = %do.body69
  br label %do.cond71, !dbg !2764

do.cond71:                                        ; preds = %do.body70
  br label %do.end72, !dbg !2764

do.end72:                                         ; preds = %do.cond71
  br label %do.body73, !dbg !2762

do.body73:                                        ; preds = %do.end72
  %41 = load i64, ptr %_r_a_p__v, align 8, !dbg !2766
  %42 = inttoptr i64 %41 to ptr, !dbg !2766
  %43 = load ptr, ptr %pprev, align 8, !dbg !2766
  store volatile ptr %42, ptr %43, align 8, !dbg !2766
  br label %do.cond74, !dbg !2766

do.cond74:                                        ; preds = %do.body73
  br label %do.end75, !dbg !2766

do.end75:                                         ; preds = %do.cond74
  br label %do.cond76, !dbg !2762

do.cond76:                                        ; preds = %do.end75
  br label %do.end77, !dbg !2762

do.end77:                                         ; preds = %do.cond76
  br label %do.cond78, !dbg !2757

do.cond78:                                        ; preds = %do.end77
  br label %do.end79, !dbg !2757

do.end79:                                         ; preds = %do.cond78
  br label %do.cond80, !dbg !2753

do.cond80:                                        ; preds = %do.end79
  br label %do.end81, !dbg !2753

do.end81:                                         ; preds = %do.cond80
  br label %if.end82

if.end82:                                         ; preds = %do.end81, %do.end60
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #20, !dbg !2743
  br label %do.cond83, !dbg !2744

do.cond83:                                        ; preds = %if.end82
  br label %do.end84, !dbg !2744

do.end84:                                         ; preds = %do.cond83
  br label %if.end86, !dbg !2744

if.else85:                                        ; preds = %do.end47
  %44 = load ptr, ptr %bkt.addr, align 8, !dbg !2768
  %45 = load ptr, ptr %obj.addr, align 8, !dbg !2769
  call void @rht_assign_locked(ptr noundef %44, ptr noundef %45) #21, !dbg !2770
  br label %if.end86

if.end86:                                         ; preds = %if.else85, %do.end84
  store ptr null, ptr %retval, align 8, !dbg !2771
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2771

cleanup:                                          ; preds = %if.end86, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %plist) #20, !dbg !2772
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #20, !dbg !2772
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup98 [
    i32 4, label %for.inc
  ]

for.inc:                                          ; preds = %cleanup
  br label %do.body88, !dbg !2773

do.body88:                                        ; preds = %for.inc
  br label %do.cond89, !dbg !2775

do.cond89:                                        ; preds = %do.body88
  br label %do.end90, !dbg !2775

do.end90:                                         ; preds = %do.cond89
  %46 = load ptr, ptr %head, align 8, !dbg !2773
  %next92 = getelementptr inbounds %struct.rhash_head, ptr %46, i32 0, i32 0, !dbg !2773
  %47 = load ptr, ptr %next92, align 8, !dbg !2773
  store ptr %47, ptr %tmp91, align 8, !dbg !2775
  %48 = load ptr, ptr %tmp91, align 8, !dbg !2773
  store ptr %48, ptr %head, align 8, !dbg !2676
  br label %for.cond, !dbg !2676, !llvm.loop !2777

for.end:                                          ; preds = %for.cond
  %49 = load i32, ptr %elasticity, align 4, !dbg !2779
  %cmp93 = icmp sle i32 %49, 0, !dbg !2781
  br i1 %cmp93, label %if.then94, label %if.end96, !dbg !2782

if.then94:                                        ; preds = %for.end
  %call95 = call ptr @ERR_PTR(i64 noundef -11) #21, !dbg !2783
  store ptr %call95, ptr %retval, align 8, !dbg !2784
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup98, !dbg !2784

if.end96:                                         ; preds = %for.end
  %call97 = call ptr @ERR_PTR(i64 noundef -2) #21, !dbg !2785
  store ptr %call97, ptr %retval, align 8, !dbg !2786
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup98, !dbg !2786

cleanup98:                                        ; preds = %if.end96, %if.then94, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %elasticity) #20, !dbg !2787
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #20, !dbg !2787
  call void @llvm.lifetime.end.p0(i64 8, ptr %pprev) #20, !dbg !2787
  call void @llvm.lifetime.end.p0(i64 16, ptr %arg) #20, !dbg !2787
  %50 = load ptr, ptr %retval, align 8, !dbg !2787
  ret ptr %50, !dbg !2787
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rhashtable_insert_one(ptr noundef %ht, ptr noundef %bkt, ptr noundef %tbl, i32 noundef %hash, ptr noundef %obj, ptr noundef %data) #0 align 16 !dbg !2788 {
entry:
  %retval = alloca ptr, align 8
  %ht.addr = alloca ptr, align 8
  %bkt.addr = alloca ptr, align 8
  %tbl.addr = alloca ptr, align 8
  %hash.addr = alloca i32, align 4
  %obj.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %new_tbl = alloca ptr, align 8
  %head = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID_rcu344 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  %list = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp51 = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !2792, metadata !DIExpression()), !dbg !2807
  store ptr %bkt, ptr %bkt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bkt.addr, metadata !2793, metadata !DIExpression()), !dbg !2808
  store ptr %tbl, ptr %tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tbl.addr, metadata !2794, metadata !DIExpression()), !dbg !2809
  store i32 %hash, ptr %hash.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !2795, metadata !DIExpression()), !dbg !2810
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !2796, metadata !DIExpression()), !dbg !2811
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2797, metadata !DIExpression()), !dbg !2812
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_tbl) #20, !dbg !2813
  call void @llvm.dbg.declare(metadata ptr %new_tbl, metadata !2798, metadata !DIExpression()), !dbg !2814
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #20, !dbg !2815
  call void @llvm.dbg.declare(metadata ptr %head, metadata !2799, metadata !DIExpression()), !dbg !2816
  %0 = load ptr, ptr %data.addr, align 8, !dbg !2817
  %call = call zeroext i1 @IS_ERR_OR_NULL(ptr noundef %0) #21, !dbg !2819
  br i1 %call, label %if.end, label %if.then, !dbg !2820

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -17) #21, !dbg !2821
  store ptr %call1, ptr %retval, align 8, !dbg !2822
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2822

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %data.addr, align 8, !dbg !2823
  %call2 = call i64 @PTR_ERR(ptr noundef %1) #21, !dbg !2825
  %cmp = icmp ne i64 %call2, -11, !dbg !2826
  br i1 %cmp, label %land.lhs.true, label %if.end7, !dbg !2827

land.lhs.true:                                    ; preds = %if.end
  %2 = load ptr, ptr %data.addr, align 8, !dbg !2828
  %call3 = call i64 @PTR_ERR(ptr noundef %2) #21, !dbg !2829
  %cmp4 = icmp ne i64 %call3, -2, !dbg !2830
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !2831

if.then5:                                         ; preds = %land.lhs.true
  %3 = load ptr, ptr %data.addr, align 8, !dbg !2832
  %call6 = call ptr @ERR_CAST(ptr noundef %3) #21, !dbg !2833
  store ptr %call6, ptr %retval, align 8, !dbg !2834
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2834

if.end7:                                          ; preds = %land.lhs.true, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu344) #20, !dbg !2835
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu344, metadata !2800, metadata !DIExpression()), !dbg !2835
  br label %do.body, !dbg !2836

do.body:                                          ; preds = %if.end7
  br label %do.cond, !dbg !2838

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2838

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %tbl.addr, align 8, !dbg !2836
  %future_tbl = getelementptr inbounds %struct.bucket_table, ptr %4, i32 0, i32 5, !dbg !2836
  %5 = load volatile ptr, ptr %future_tbl, align 16, !dbg !2836
  store ptr %5, ptr %tmp, align 8, !dbg !2838
  %6 = load ptr, ptr %tmp, align 8, !dbg !2836
  store ptr %6, ptr %__UNIQUE_ID_rcu344, align 8, !dbg !2835
  br label %do.body8, !dbg !2835

do.body8:                                         ; preds = %do.end
  br label %do.cond9, !dbg !2840

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !2840

do.end10:                                         ; preds = %do.cond9
  %7 = load ptr, ptr %__UNIQUE_ID_rcu344, align 8, !dbg !2835
  store ptr %7, ptr %tmp11, align 8, !dbg !2840
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu344) #20, !dbg !2842
  %8 = load ptr, ptr %tmp11, align 8, !dbg !2835
  store ptr %8, ptr %new_tbl, align 8, !dbg !2843
  %9 = load ptr, ptr %new_tbl, align 8, !dbg !2844
  %tobool = icmp ne ptr %9, null, !dbg !2844
  br i1 %tobool, label %if.then12, label %if.end13, !dbg !2846

if.then12:                                        ; preds = %do.end10
  %10 = load ptr, ptr %new_tbl, align 8, !dbg !2847
  store ptr %10, ptr %retval, align 8, !dbg !2848
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2848

if.end13:                                         ; preds = %do.end10
  %11 = load ptr, ptr %data.addr, align 8, !dbg !2849
  %call14 = call i64 @PTR_ERR(ptr noundef %11) #21, !dbg !2851
  %cmp15 = icmp ne i64 %call14, -2, !dbg !2852
  br i1 %cmp15, label %if.then16, label %if.end18, !dbg !2853

if.then16:                                        ; preds = %if.end13
  %12 = load ptr, ptr %data.addr, align 8, !dbg !2854
  %call17 = call ptr @ERR_CAST(ptr noundef %12) #21, !dbg !2855
  store ptr %call17, ptr %retval, align 8, !dbg !2856
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2856

if.end18:                                         ; preds = %if.end13
  %13 = load ptr, ptr %ht.addr, align 8, !dbg !2857
  %14 = load ptr, ptr %tbl.addr, align 8, !dbg !2857
  %call19 = call zeroext i1 @rht_grow_above_max(ptr noundef %13, ptr noundef %14) #21, !dbg !2857
  %lnot = xor i1 %call19, true, !dbg !2857
  %lnot20 = xor i1 %lnot, true, !dbg !2857
  %lnot.ext = zext i1 %lnot20 to i32, !dbg !2857
  %conv = sext i32 %lnot.ext to i64, !dbg !2857
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2857
  %tobool21 = icmp ne i64 %expval, 0, !dbg !2857
  br i1 %tobool21, label %if.then22, label %if.end24, !dbg !2859

if.then22:                                        ; preds = %if.end18
  %call23 = call ptr @ERR_PTR(i64 noundef -7) #21, !dbg !2860
  store ptr %call23, ptr %retval, align 8, !dbg !2861
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2861

if.end24:                                         ; preds = %if.end18
  %15 = load ptr, ptr %ht.addr, align 8, !dbg !2862
  %16 = load ptr, ptr %tbl.addr, align 8, !dbg !2862
  %call25 = call zeroext i1 @rht_grow_above_100(ptr noundef %15, ptr noundef %16) #21, !dbg !2862
  %lnot26 = xor i1 %call25, true, !dbg !2862
  %lnot28 = xor i1 %lnot26, true, !dbg !2862
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !2862
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !2862
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !2862
  %tobool32 = icmp ne i64 %expval31, 0, !dbg !2862
  br i1 %tobool32, label %if.then33, label %if.end35, !dbg !2864

if.then33:                                        ; preds = %if.end24
  %call34 = call ptr @ERR_PTR(i64 noundef -11) #21, !dbg !2865
  store ptr %call34, ptr %retval, align 8, !dbg !2866
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2866

if.end35:                                         ; preds = %if.end24
  %17 = load ptr, ptr %bkt.addr, align 8, !dbg !2867
  %18 = load ptr, ptr %tbl.addr, align 8, !dbg !2868
  %19 = load i32, ptr %hash.addr, align 4, !dbg !2869
  %call36 = call ptr @rht_ptr(ptr noundef %17, ptr noundef %18, i32 noundef %19) #21, !dbg !2870
  store ptr %call36, ptr %head, align 8, !dbg !2871
  br label %do.body37, !dbg !2872

do.body37:                                        ; preds = %if.end35
  br label %do.body38, !dbg !2873

do.body38:                                        ; preds = %do.body37
  br label %do.body39, !dbg !2875

do.body39:                                        ; preds = %do.body38
  br label %do.cond40, !dbg !2877

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !2877

do.end41:                                         ; preds = %do.cond40
  br label %do.body42, !dbg !2875

do.body42:                                        ; preds = %do.end41
  %20 = load ptr, ptr %head, align 8, !dbg !2879
  %21 = load ptr, ptr %obj.addr, align 8, !dbg !2879
  %next = getelementptr inbounds %struct.rhash_head, ptr %21, i32 0, i32 0, !dbg !2879
  store volatile ptr %20, ptr %next, align 8, !dbg !2879
  br label %do.cond43, !dbg !2879

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !2879

do.end44:                                         ; preds = %do.cond43
  br label %do.cond45, !dbg !2875

do.cond45:                                        ; preds = %do.end44
  br label %do.end46, !dbg !2875

do.end46:                                         ; preds = %do.cond45
  br label %do.cond47, !dbg !2873

do.cond47:                                        ; preds = %do.end46
  br label %do.end48, !dbg !2873

do.end48:                                         ; preds = %do.cond47
  %22 = load ptr, ptr %ht.addr, align 8, !dbg !2881
  %rhlist = getelementptr inbounds %struct.rhashtable, ptr %22, i32 0, i32 4, !dbg !2882
  %23 = load i8, ptr %rhlist, align 8, !dbg !2882, !range !803, !noundef !80
  %tobool49 = trunc i8 %23 to i1, !dbg !2882
  br i1 %tobool49, label %if.then50, label %if.end65, !dbg !2883

if.then50:                                        ; preds = %do.end48
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #20, !dbg !2884
  call void @llvm.dbg.declare(metadata ptr %list, metadata !2802, metadata !DIExpression()), !dbg !2885
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #20, !dbg !2886
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2805, metadata !DIExpression()), !dbg !2886
  %24 = load ptr, ptr %obj.addr, align 8, !dbg !2886
  store ptr %24, ptr %__mptr, align 8, !dbg !2886
  %25 = load ptr, ptr %__mptr, align 8, !dbg !2886
  %add.ptr = getelementptr i8, ptr %25, i64 0, !dbg !2886
  store ptr %add.ptr, ptr %tmp51, align 8, !dbg !2886
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #20, !dbg !2887
  %26 = load ptr, ptr %tmp51, align 8, !dbg !2886
  store ptr %26, ptr %list, align 8, !dbg !2888
  br label %do.body52, !dbg !2889

do.body52:                                        ; preds = %if.then50
  br label %do.body53, !dbg !2890

do.body53:                                        ; preds = %do.body52
  br label %do.body54, !dbg !2892

do.body54:                                        ; preds = %do.body53
  br label %do.cond55, !dbg !2894

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !2894

do.end56:                                         ; preds = %do.cond55
  br label %do.body57, !dbg !2892

do.body57:                                        ; preds = %do.end56
  %27 = load ptr, ptr %list, align 8, !dbg !2896
  %next58 = getelementptr inbounds %struct.rhlist_head, ptr %27, i32 0, i32 1, !dbg !2896
  store volatile ptr null, ptr %next58, align 8, !dbg !2896
  br label %do.cond59, !dbg !2896

do.cond59:                                        ; preds = %do.body57
  br label %do.end60, !dbg !2896

do.end60:                                         ; preds = %do.cond59
  br label %do.cond61, !dbg !2892

do.cond61:                                        ; preds = %do.end60
  br label %do.end62, !dbg !2892

do.end62:                                         ; preds = %do.cond61
  br label %do.cond63, !dbg !2890

do.cond63:                                        ; preds = %do.end62
  br label %do.end64, !dbg !2890

do.end64:                                         ; preds = %do.cond63
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #20, !dbg !2898
  br label %if.end65, !dbg !2899

if.end65:                                         ; preds = %do.end64, %do.end48
  %28 = load ptr, ptr %bkt.addr, align 8, !dbg !2900
  %29 = load ptr, ptr %obj.addr, align 8, !dbg !2901
  call void @rht_assign_locked(ptr noundef %28, ptr noundef %29) #21, !dbg !2902
  %30 = load ptr, ptr %ht.addr, align 8, !dbg !2903
  %nelems = getelementptr inbounds %struct.rhashtable, ptr %30, i32 0, i32 8, !dbg !2904
  call void @atomic_inc(ptr noundef %nelems) #21, !dbg !2905
  %31 = load ptr, ptr %ht.addr, align 8, !dbg !2906
  %32 = load ptr, ptr %tbl.addr, align 8, !dbg !2908
  %call66 = call zeroext i1 @rht_grow_above_75(ptr noundef %31, ptr noundef %32) #21, !dbg !2909
  br i1 %call66, label %if.then67, label %if.end69, !dbg !2910

if.then67:                                        ; preds = %if.end65
  %33 = load ptr, ptr %ht.addr, align 8, !dbg !2911
  %run_work = getelementptr inbounds %struct.rhashtable, ptr %33, i32 0, i32 5, !dbg !2912
  %call68 = call zeroext i1 @schedule_work(ptr noundef %run_work) #21, !dbg !2913
  br label %if.end69, !dbg !2913

if.end69:                                         ; preds = %if.then67, %if.end65
  store ptr null, ptr %retval, align 8, !dbg !2914
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2914

cleanup:                                          ; preds = %if.end69, %if.then33, %if.then22, %if.then16, %if.then12, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #20, !dbg !2915
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_tbl) #20, !dbg !2915
  %34 = load ptr, ptr %retval, align 8, !dbg !2915
  ret ptr %34, !dbg !2915
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_CAST(ptr noundef %ptr) #4 align 16 !dbg !2916 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2920, metadata !DIExpression()), !dbg !2921
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2922
  ret ptr %0, !dbg !2923
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt, i64 noundef %flags) #4 align 16 !dbg !2924 {
entry:
  %tbl.addr = alloca ptr, align 8
  %bkt.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %tbl, ptr %tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tbl.addr, metadata !2928, metadata !DIExpression()), !dbg !2936
  store ptr %bkt, ptr %bkt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bkt.addr, metadata !2929, metadata !DIExpression()), !dbg !2937
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2930, metadata !DIExpression()), !dbg !2938
  br label %do.body, !dbg !2939

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2940

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %bkt.addr, align 8, !dbg !2942
  call void @bit_spin_unlock(i32 noundef 0, ptr noundef %0) #21, !dbg !2943
  br label %do.body1, !dbg !2944

do.body1:                                         ; preds = %do.end
  br label %do.body2, !dbg !2945

do.body2:                                         ; preds = %do.body1
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #20, !dbg !2946
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2931, metadata !DIExpression()), !dbg !2946
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #20, !dbg !2946
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2935, metadata !DIExpression()), !dbg !2946
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2946
  %conv = zext i1 %cmp to i32, !dbg !2946
  store i32 1, ptr %tmp, align 4, !dbg !2946
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #20, !dbg !2947
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #20, !dbg !2947
  %1 = load i32, ptr %tmp, align 4, !dbg !2946
  br label %do.body3, !dbg !2947

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !2948

do.end4:                                          ; preds = %do.body3
  %2 = load i64, ptr %flags.addr, align 8, !dbg !2947
  call void @arch_local_irq_restore(i64 noundef %2) #21, !dbg !2947
  br label %do.end5, !dbg !2947

do.end5:                                          ; preds = %do.end4
  br label %do.end6, !dbg !2945

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !2950
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(ptr noundef %ptr) #4 align 16 !dbg !2951 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2955, metadata !DIExpression()), !dbg !2956
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2957
  %tobool = icmp ne ptr %0, null, !dbg !2957
  %lnot = xor i1 %tobool, true, !dbg !2957
  %lnot1 = xor i1 %lnot, true, !dbg !2957
  %lnot2 = xor i1 %lnot1, true, !dbg !2957
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2957
  %conv = sext i32 %lnot.ext to i64, !dbg !2957
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2957
  %tobool3 = icmp ne i64 %expval, 0, !dbg !2957
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !2958

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !2959
  %2 = ptrtoint ptr %1 to i64, !dbg !2959
  %3 = inttoptr i64 %2 to ptr, !dbg !2959
  %4 = ptrtoint ptr %3 to i64, !dbg !2959
  %cmp = icmp uge i64 %4, -4095, !dbg !2959
  %lnot5 = xor i1 %cmp, true, !dbg !2959
  %lnot7 = xor i1 %lnot5, true, !dbg !2959
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !2959
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !2959
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !2959
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !2958
  br label %lor.end, !dbg !2958

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool11, %lor.rhs ]
  ret i1 %5, !dbg !2960
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rhashtable_insert_rehash(ptr noundef %ht, ptr noundef %tbl) #0 align 16 !dbg !2961 {
entry:
  %retval = alloca i32, align 4
  %ht.addr = alloca ptr, align 8
  %tbl.addr = alloca ptr, align 8
  %old_tbl = alloca ptr, align 8
  %new_tbl = alloca ptr, align 8
  %size = alloca i32, align 4
  %err = alloca i32, align 4
  %__UNIQUE_ID_rcu335 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID_rcu337 = alloca ptr, align 8
  %tmp26 = alloca ptr, align 8
  %tmp27 = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !2965, metadata !DIExpression()), !dbg !2977
  store ptr %tbl, ptr %tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tbl.addr, metadata !2966, metadata !DIExpression()), !dbg !2978
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_tbl) #20, !dbg !2979
  call void @llvm.dbg.declare(metadata ptr %old_tbl, metadata !2967, metadata !DIExpression()), !dbg !2980
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_tbl) #20, !dbg !2981
  call void @llvm.dbg.declare(metadata ptr %new_tbl, metadata !2968, metadata !DIExpression()), !dbg !2982
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #20, !dbg !2983
  call void @llvm.dbg.declare(metadata ptr %size, metadata !2969, metadata !DIExpression()), !dbg !2984
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #20, !dbg !2985
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2970, metadata !DIExpression()), !dbg !2986
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu335) #20, !dbg !2987
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu335, metadata !2971, metadata !DIExpression()), !dbg !2987
  br label %do.body, !dbg !2988

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !2990

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2990

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %ht.addr, align 8, !dbg !2988
  %tbl1 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 0, !dbg !2988
  %1 = load volatile ptr, ptr %tbl1, align 8, !dbg !2988
  store ptr %1, ptr %tmp, align 8, !dbg !2990
  %2 = load ptr, ptr %tmp, align 8, !dbg !2988
  store ptr %2, ptr %__UNIQUE_ID_rcu335, align 8, !dbg !2987
  br label %do.body2, !dbg !2987

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !2992

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !2992

do.end4:                                          ; preds = %do.cond3
  %3 = load ptr, ptr %__UNIQUE_ID_rcu335, align 8, !dbg !2987
  store ptr %3, ptr %tmp5, align 8, !dbg !2992
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu335) #20, !dbg !2994
  %4 = load ptr, ptr %tmp5, align 8, !dbg !2987
  store ptr %4, ptr %old_tbl, align 8, !dbg !2995
  %5 = load ptr, ptr %tbl.addr, align 8, !dbg !2996
  %size6 = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 0, !dbg !2997
  %6 = load i32, ptr %size6, align 64, !dbg !2997
  store i32 %6, ptr %size, align 4, !dbg !2998
  store i32 -16, ptr %err, align 4, !dbg !2999
  %7 = load ptr, ptr %ht.addr, align 8, !dbg !3000
  %8 = load ptr, ptr %tbl.addr, align 8, !dbg !3002
  %call = call zeroext i1 @rht_grow_above_75(ptr noundef %7, ptr noundef %8) #21, !dbg !3003
  br i1 %call, label %if.then, label %if.else, !dbg !3004

if.then:                                          ; preds = %do.end4
  %9 = load i32, ptr %size, align 4, !dbg !3005
  %mul = mul i32 %9, 2, !dbg !3005
  store i32 %mul, ptr %size, align 4, !dbg !3005
  br label %if.end8, !dbg !3006

if.else:                                          ; preds = %do.end4
  %10 = load ptr, ptr %old_tbl, align 8, !dbg !3007
  %11 = load ptr, ptr %tbl.addr, align 8, !dbg !3009
  %cmp = icmp ne ptr %10, %11, !dbg !3010
  br i1 %cmp, label %if.then7, label %if.end, !dbg !3011

if.then7:                                         ; preds = %if.else
  br label %fail, !dbg !3012

if.end:                                           ; preds = %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  store i32 -12, ptr %err, align 4, !dbg !3013
  %12 = load ptr, ptr %ht.addr, align 8, !dbg !3014
  %13 = load i32, ptr %size, align 4, !dbg !3015
  %conv = zext i32 %13 to i64, !dbg !3015
  %call9 = call ptr @bucket_table_alloc(ptr noundef %12, i64 noundef %conv, i32 noundef 10272) #21, !dbg !3016
  store ptr %call9, ptr %new_tbl, align 8, !dbg !3017
  %14 = load ptr, ptr %new_tbl, align 8, !dbg !3018
  %cmp10 = icmp eq ptr %14, null, !dbg !3020
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !3021

if.then12:                                        ; preds = %if.end8
  br label %fail, !dbg !3022

if.end13:                                         ; preds = %if.end8
  %15 = load ptr, ptr %ht.addr, align 8, !dbg !3023
  %16 = load ptr, ptr %tbl.addr, align 8, !dbg !3024
  %17 = load ptr, ptr %new_tbl, align 8, !dbg !3025
  %call14 = call i32 @rhashtable_rehash_attach(ptr noundef %15, ptr noundef %16, ptr noundef %17) #21, !dbg !3026
  store i32 %call14, ptr %err, align 4, !dbg !3027
  %18 = load i32, ptr %err, align 4, !dbg !3028
  %tobool = icmp ne i32 %18, 0, !dbg !3028
  br i1 %tobool, label %if.then15, label %if.else20, !dbg !3030

if.then15:                                        ; preds = %if.end13
  %19 = load ptr, ptr %new_tbl, align 8, !dbg !3031
  call void @bucket_table_free(ptr noundef %19) #21, !dbg !3033
  %20 = load i32, ptr %err, align 4, !dbg !3034
  %cmp16 = icmp eq i32 %20, -17, !dbg !3036
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !3037

if.then18:                                        ; preds = %if.then15
  store i32 0, ptr %err, align 4, !dbg !3038
  br label %if.end19, !dbg !3039

if.end19:                                         ; preds = %if.then18, %if.then15
  br label %if.end22, !dbg !3040

if.else20:                                        ; preds = %if.end13
  %21 = load ptr, ptr %ht.addr, align 8, !dbg !3041
  %run_work = getelementptr inbounds %struct.rhashtable, ptr %21, i32 0, i32 5, !dbg !3042
  %call21 = call zeroext i1 @schedule_work(ptr noundef %run_work) #21, !dbg !3043
  br label %if.end22

if.end22:                                         ; preds = %if.else20, %if.end19
  %22 = load i32, ptr %err, align 4, !dbg !3044
  store i32 %22, ptr %retval, align 4, !dbg !3045
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3045

fail:                                             ; preds = %if.then12, %if.then7
  call void @llvm.dbg.label(metadata !2973), !dbg !3046
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu337) #20, !dbg !3047
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu337, metadata !2974, metadata !DIExpression()), !dbg !3047
  br label %do.body23, !dbg !3048

do.body23:                                        ; preds = %fail
  br label %do.cond24, !dbg !3050

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !3050

do.end25:                                         ; preds = %do.cond24
  %23 = load ptr, ptr %tbl.addr, align 8, !dbg !3048
  %future_tbl = getelementptr inbounds %struct.bucket_table, ptr %23, i32 0, i32 5, !dbg !3048
  %24 = load volatile ptr, ptr %future_tbl, align 16, !dbg !3048
  store ptr %24, ptr %tmp26, align 8, !dbg !3050
  %25 = load ptr, ptr %tmp26, align 8, !dbg !3048
  store ptr %25, ptr %__UNIQUE_ID_rcu337, align 8, !dbg !3047
  %26 = load ptr, ptr %__UNIQUE_ID_rcu337, align 8, !dbg !3047
  store ptr %26, ptr %tmp27, align 8, !dbg !3047
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu337) #20, !dbg !3052
  %27 = load ptr, ptr %tmp27, align 8, !dbg !3047
  %tobool28 = icmp ne ptr %27, null, !dbg !3052
  %lnot = xor i1 %tobool28, true, !dbg !3052
  %lnot29 = xor i1 %lnot, true, !dbg !3052
  %lnot.ext = zext i1 %lnot29 to i32, !dbg !3052
  %conv30 = sext i32 %lnot.ext to i64, !dbg !3052
  %expval = call i64 @llvm.expect.i64(i64 %conv30, i64 1), !dbg !3052
  %tobool31 = icmp ne i64 %expval, 0, !dbg !3052
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !3053

if.then32:                                        ; preds = %do.end25
  store i32 0, ptr %retval, align 4, !dbg !3054
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3054

if.end33:                                         ; preds = %do.end25
  %28 = load i32, ptr %err, align 4, !dbg !3055
  %cmp34 = icmp eq i32 %28, -12, !dbg !3057
  br i1 %cmp34, label %if.then36, label %if.end39, !dbg !3058

if.then36:                                        ; preds = %if.end33
  %29 = load ptr, ptr %ht.addr, align 8, !dbg !3059
  %run_work37 = getelementptr inbounds %struct.rhashtable, ptr %29, i32 0, i32 5, !dbg !3060
  %call38 = call zeroext i1 @schedule_work(ptr noundef %run_work37) #21, !dbg !3061
  br label %if.end39, !dbg !3061

if.end39:                                         ; preds = %if.then36, %if.end33
  %30 = load i32, ptr %err, align 4, !dbg !3062
  store i32 %30, ptr %retval, align 4, !dbg !3063
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3063

cleanup:                                          ; preds = %if.end39, %if.then32, %if.end22
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #20, !dbg !3064
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #20, !dbg !3064
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_tbl) #20, !dbg !3064
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_tbl) #20, !dbg !3064
  %31 = load i32, ptr %retval, align 4, !dbg !3064
  ret i32 %31, !dbg !3064
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rht_bucket_index(ptr noundef %tbl, i32 noundef %hash) #4 align 16 !dbg !3065 {
entry:
  %tbl.addr = alloca ptr, align 8
  %hash.addr = alloca i32, align 4
  store ptr %tbl, ptr %tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tbl.addr, metadata !3069, metadata !DIExpression()), !dbg !3071
  store i32 %hash, ptr %hash.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !3070, metadata !DIExpression()), !dbg !3072
  %0 = load i32, ptr %hash.addr, align 4, !dbg !3073
  %1 = load ptr, ptr %tbl.addr, align 8, !dbg !3074
  %size = getelementptr inbounds %struct.bucket_table, ptr %1, i32 0, i32 0, !dbg !3075
  %2 = load i32, ptr %size, align 64, !dbg !3075
  %sub = sub i32 %2, 1, !dbg !3076
  %and = and i32 %0, %sub, !dbg !3077
  ret i32 %and, !dbg !3078
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rht_key_hashfn(ptr noundef %ht, ptr noundef %tbl, ptr noundef %key, ptr noundef byval(%struct.rhashtable_params) align 8 %params) #4 align 16 !dbg !3079 {
entry:
  %ht.addr = alloca ptr, align 8
  %tbl.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %hash = alloca i32, align 4
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !3083, metadata !DIExpression()), !dbg !3088
  store ptr %tbl, ptr %tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tbl.addr, metadata !3084, metadata !DIExpression()), !dbg !3089
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3085, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.declare(metadata ptr %params, metadata !3086, metadata !DIExpression()), !dbg !3091
  call void @llvm.lifetime.start.p0(i64 4, ptr %hash) #20, !dbg !3092
  call void @llvm.dbg.declare(metadata ptr %hash, metadata !3087, metadata !DIExpression()), !dbg !3093
  %0 = load ptr, ptr %ht.addr, align 8, !dbg !3094
  %1 = load ptr, ptr %key.addr, align 8, !dbg !3095
  %2 = load ptr, ptr %tbl.addr, align 8, !dbg !3096
  %hash_rnd = getelementptr inbounds %struct.bucket_table, ptr %2, i32 0, i32 2, !dbg !3097
  %3 = load i32, ptr %hash_rnd, align 8, !dbg !3097
  %call = call i32 @rht_key_get_hash(ptr noundef %0, ptr noundef %1, ptr noundef byval(%struct.rhashtable_params) align 8 %params, i32 noundef %3) #21, !dbg !3098
  store i32 %call, ptr %hash, align 4, !dbg !3093
  %4 = load ptr, ptr %tbl.addr, align 8, !dbg !3099
  %5 = load i32, ptr %hash, align 4, !dbg !3100
  %call1 = call i32 @rht_bucket_index(ptr noundef %4, i32 noundef %5) #21, !dbg !3101
  call void @llvm.lifetime.end.p0(i64 4, ptr %hash) #20, !dbg !3102
  ret i32 %call1, !dbg !3103
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rht_key_get_hash(ptr noundef %ht, ptr noundef %key, ptr noundef byval(%struct.rhashtable_params) align 8 %params, i32 noundef %hash_rnd) #4 align 16 !dbg !3104 {
entry:
  %ht.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %hash_rnd.addr = alloca i32, align 4
  %hash = alloca i32, align 4
  %key_len4 = alloca i32, align 4
  %key_len22 = alloca i32, align 4
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !3108, metadata !DIExpression()), !dbg !3119
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3109, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.declare(metadata ptr %params, metadata !3110, metadata !DIExpression()), !dbg !3121
  store i32 %hash_rnd, ptr %hash_rnd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hash_rnd.addr, metadata !3111, metadata !DIExpression()), !dbg !3122
  call void @llvm.lifetime.start.p0(i64 4, ptr %hash) #20, !dbg !3123
  call void @llvm.dbg.declare(metadata ptr %hash, metadata !3112, metadata !DIExpression()), !dbg !3124
  %key_len = getelementptr inbounds %struct.rhashtable_params, ptr %params, i32 0, i32 1, !dbg !3125
  %0 = load i16, ptr %key_len, align 2, !dbg !3125
  %1 = call i1 @llvm.is.constant.i16(i16 %0), !dbg !3126
  br i1 %1, label %if.else, label %if.then, !dbg !3127

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ht.addr, align 8, !dbg !3128
  %p = getelementptr inbounds %struct.rhashtable, ptr %2, i32 0, i32 3, !dbg !3129
  %hashfn = getelementptr inbounds %struct.rhashtable_params, ptr %p, i32 0, i32 7, !dbg !3130
  %3 = load ptr, ptr %hashfn, align 8, !dbg !3130
  %4 = load ptr, ptr %key.addr, align 8, !dbg !3131
  %5 = load ptr, ptr %ht.addr, align 8, !dbg !3132
  %key_len1 = getelementptr inbounds %struct.rhashtable, ptr %5, i32 0, i32 1, !dbg !3133
  %6 = load i32, ptr %key_len1, align 8, !dbg !3133
  %7 = load i32, ptr %hash_rnd.addr, align 4, !dbg !3134
  %call = call i32 %3(ptr noundef %4, i32 noundef %6, i32 noundef %7) #21, !dbg !3128
  store i32 %call, ptr %hash, align 4, !dbg !3135
  br label %if.end35, !dbg !3136

if.else:                                          ; preds = %entry
  %key_len2 = getelementptr inbounds %struct.rhashtable_params, ptr %params, i32 0, i32 1, !dbg !3137
  %8 = load i16, ptr %key_len2, align 2, !dbg !3137
  %tobool = icmp ne i16 %8, 0, !dbg !3138
  br i1 %tobool, label %if.then3, label %if.else21, !dbg !3139

if.then3:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr %key_len4) #20, !dbg !3140
  call void @llvm.dbg.declare(metadata ptr %key_len4, metadata !3113, metadata !DIExpression()), !dbg !3141
  %key_len5 = getelementptr inbounds %struct.rhashtable_params, ptr %params, i32 0, i32 1, !dbg !3142
  %9 = load i16, ptr %key_len5, align 2, !dbg !3142
  %conv = zext i16 %9 to i32, !dbg !3143
  store i32 %conv, ptr %key_len4, align 4, !dbg !3141
  %hashfn6 = getelementptr inbounds %struct.rhashtable_params, ptr %params, i32 0, i32 7, !dbg !3144
  %10 = load ptr, ptr %hashfn6, align 8, !dbg !3144
  %tobool7 = icmp ne ptr %10, null, !dbg !3146
  br i1 %tobool7, label %if.then8, label %if.else11, !dbg !3147

if.then8:                                         ; preds = %if.then3
  %hashfn9 = getelementptr inbounds %struct.rhashtable_params, ptr %params, i32 0, i32 7, !dbg !3148
  %11 = load ptr, ptr %hashfn9, align 8, !dbg !3148
  %12 = load ptr, ptr %key.addr, align 8, !dbg !3149
  %13 = load i32, ptr %key_len4, align 4, !dbg !3150
  %14 = load i32, ptr %hash_rnd.addr, align 4, !dbg !3151
  %call10 = call i32 %11(ptr noundef %12, i32 noundef %13, i32 noundef %14) #21, !dbg !3152
  store i32 %call10, ptr %hash, align 4, !dbg !3153
  br label %if.end20, !dbg !3154

if.else11:                                        ; preds = %if.then3
  %15 = load i32, ptr %key_len4, align 4, !dbg !3155
  %conv12 = zext i32 %15 to i64, !dbg !3155
  %and = and i64 %conv12, 3, !dbg !3157
  %tobool13 = icmp ne i64 %and, 0, !dbg !3157
  br i1 %tobool13, label %if.then14, label %if.else16, !dbg !3158

if.then14:                                        ; preds = %if.else11
  %16 = load ptr, ptr %key.addr, align 8, !dbg !3159
  %17 = load i32, ptr %key_len4, align 4, !dbg !3160
  %18 = load i32, ptr %hash_rnd.addr, align 4, !dbg !3161
  %call15 = call i32 @jhash(ptr noundef %16, i32 noundef %17, i32 noundef %18) #21, !dbg !3162
  store i32 %call15, ptr %hash, align 4, !dbg !3163
  br label %if.end, !dbg !3164

if.else16:                                        ; preds = %if.else11
  %19 = load ptr, ptr %key.addr, align 8, !dbg !3165
  %20 = load i32, ptr %key_len4, align 4, !dbg !3166
  %conv17 = zext i32 %20 to i64, !dbg !3166
  %div = udiv i64 %conv17, 4, !dbg !3167
  %conv18 = trunc i64 %div to i32, !dbg !3166
  %21 = load i32, ptr %hash_rnd.addr, align 4, !dbg !3168
  %call19 = call i32 @jhash2(ptr noundef %19, i32 noundef %conv18, i32 noundef %21) #21, !dbg !3169
  store i32 %call19, ptr %hash, align 4, !dbg !3170
  br label %if.end

if.end:                                           ; preds = %if.else16, %if.then14
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.then8
  call void @llvm.lifetime.end.p0(i64 4, ptr %key_len4) #20, !dbg !3171
  br label %if.end34, !dbg !3172

if.else21:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr %key_len22) #20, !dbg !3173
  call void @llvm.dbg.declare(metadata ptr %key_len22, metadata !3117, metadata !DIExpression()), !dbg !3174
  %22 = load ptr, ptr %ht.addr, align 8, !dbg !3175
  %p23 = getelementptr inbounds %struct.rhashtable, ptr %22, i32 0, i32 3, !dbg !3176
  %key_len24 = getelementptr inbounds %struct.rhashtable_params, ptr %p23, i32 0, i32 1, !dbg !3177
  %23 = load i16, ptr %key_len24, align 2, !dbg !3177
  %conv25 = zext i16 %23 to i32, !dbg !3175
  store i32 %conv25, ptr %key_len22, align 4, !dbg !3174
  %hashfn26 = getelementptr inbounds %struct.rhashtable_params, ptr %params, i32 0, i32 7, !dbg !3178
  %24 = load ptr, ptr %hashfn26, align 8, !dbg !3178
  %tobool27 = icmp ne ptr %24, null, !dbg !3180
  br i1 %tobool27, label %if.then28, label %if.else31, !dbg !3181

if.then28:                                        ; preds = %if.else21
  %hashfn29 = getelementptr inbounds %struct.rhashtable_params, ptr %params, i32 0, i32 7, !dbg !3182
  %25 = load ptr, ptr %hashfn29, align 8, !dbg !3182
  %26 = load ptr, ptr %key.addr, align 8, !dbg !3183
  %27 = load i32, ptr %key_len22, align 4, !dbg !3184
  %28 = load i32, ptr %hash_rnd.addr, align 4, !dbg !3185
  %call30 = call i32 %25(ptr noundef %26, i32 noundef %27, i32 noundef %28) #21, !dbg !3186
  store i32 %call30, ptr %hash, align 4, !dbg !3187
  br label %if.end33, !dbg !3188

if.else31:                                        ; preds = %if.else21
  %29 = load ptr, ptr %key.addr, align 8, !dbg !3189
  %30 = load i32, ptr %key_len22, align 4, !dbg !3190
  %31 = load i32, ptr %hash_rnd.addr, align 4, !dbg !3191
  %call32 = call i32 @jhash(ptr noundef %29, i32 noundef %30, i32 noundef %31) #21, !dbg !3192
  store i32 %call32, ptr %hash, align 4, !dbg !3193
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %if.then28
  call void @llvm.lifetime.end.p0(i64 4, ptr %key_len22) #20, !dbg !3194
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end20
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then
  %32 = load i32, ptr %hash, align 4, !dbg !3195
  call void @llvm.lifetime.end.p0(i64 4, ptr %hash) #20, !dbg !3196
  ret i32 %32, !dbg !3197
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @jhash2(ptr noundef %k, i32 noundef %length, i32 noundef %initval) #4 align 16 !dbg !3198 {
entry:
  %k.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %initval.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !3204, metadata !DIExpression()), !dbg !3210
  store i32 %length, ptr %length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !3205, metadata !DIExpression()), !dbg !3211
  store i32 %initval, ptr %initval.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %initval.addr, metadata !3206, metadata !DIExpression()), !dbg !3212
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #20, !dbg !3213
  call void @llvm.dbg.declare(metadata ptr %a, metadata !3207, metadata !DIExpression()), !dbg !3214
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #20, !dbg !3213
  call void @llvm.dbg.declare(metadata ptr %b, metadata !3208, metadata !DIExpression()), !dbg !3215
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #20, !dbg !3213
  call void @llvm.dbg.declare(metadata ptr %c, metadata !3209, metadata !DIExpression()), !dbg !3216
  %0 = load i32, ptr %length.addr, align 4, !dbg !3217
  %shl = shl i32 %0, 2, !dbg !3218
  %add = add i32 -559038737, %shl, !dbg !3219
  %1 = load i32, ptr %initval.addr, align 4, !dbg !3220
  %add1 = add i32 %add, %1, !dbg !3221
  store i32 %add1, ptr %c, align 4, !dbg !3222
  store i32 %add1, ptr %b, align 4, !dbg !3223
  store i32 %add1, ptr %a, align 4, !dbg !3224
  br label %while.cond, !dbg !3225

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, ptr %length.addr, align 4, !dbg !3226
  %cmp = icmp ugt i32 %2, 3, !dbg !3227
  br i1 %cmp, label %while.body, label %while.end, !dbg !3225

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %k.addr, align 8, !dbg !3228
  %arrayidx = getelementptr i32, ptr %3, i64 0, !dbg !3228
  %4 = load i32, ptr %arrayidx, align 4, !dbg !3228
  %5 = load i32, ptr %a, align 4, !dbg !3230
  %add2 = add i32 %5, %4, !dbg !3230
  store i32 %add2, ptr %a, align 4, !dbg !3230
  %6 = load ptr, ptr %k.addr, align 8, !dbg !3231
  %arrayidx3 = getelementptr i32, ptr %6, i64 1, !dbg !3231
  %7 = load i32, ptr %arrayidx3, align 4, !dbg !3231
  %8 = load i32, ptr %b, align 4, !dbg !3232
  %add4 = add i32 %8, %7, !dbg !3232
  store i32 %add4, ptr %b, align 4, !dbg !3232
  %9 = load ptr, ptr %k.addr, align 8, !dbg !3233
  %arrayidx5 = getelementptr i32, ptr %9, i64 2, !dbg !3233
  %10 = load i32, ptr %arrayidx5, align 4, !dbg !3233
  %11 = load i32, ptr %c, align 4, !dbg !3234
  %add6 = add i32 %11, %10, !dbg !3234
  store i32 %add6, ptr %c, align 4, !dbg !3234
  %12 = load i32, ptr %c, align 4, !dbg !3235
  %13 = load i32, ptr %a, align 4, !dbg !3235
  %sub = sub i32 %13, %12, !dbg !3235
  store i32 %sub, ptr %a, align 4, !dbg !3235
  %14 = load i32, ptr %c, align 4, !dbg !3235
  %call = call i32 @rol32(i32 noundef %14, i32 noundef 4) #21, !dbg !3235
  %15 = load i32, ptr %a, align 4, !dbg !3235
  %xor = xor i32 %15, %call, !dbg !3235
  store i32 %xor, ptr %a, align 4, !dbg !3235
  %16 = load i32, ptr %b, align 4, !dbg !3235
  %17 = load i32, ptr %c, align 4, !dbg !3235
  %add7 = add i32 %17, %16, !dbg !3235
  store i32 %add7, ptr %c, align 4, !dbg !3235
  %18 = load i32, ptr %a, align 4, !dbg !3235
  %19 = load i32, ptr %b, align 4, !dbg !3235
  %sub8 = sub i32 %19, %18, !dbg !3235
  store i32 %sub8, ptr %b, align 4, !dbg !3235
  %20 = load i32, ptr %a, align 4, !dbg !3235
  %call9 = call i32 @rol32(i32 noundef %20, i32 noundef 6) #21, !dbg !3235
  %21 = load i32, ptr %b, align 4, !dbg !3235
  %xor10 = xor i32 %21, %call9, !dbg !3235
  store i32 %xor10, ptr %b, align 4, !dbg !3235
  %22 = load i32, ptr %c, align 4, !dbg !3235
  %23 = load i32, ptr %a, align 4, !dbg !3235
  %add11 = add i32 %23, %22, !dbg !3235
  store i32 %add11, ptr %a, align 4, !dbg !3235
  %24 = load i32, ptr %b, align 4, !dbg !3235
  %25 = load i32, ptr %c, align 4, !dbg !3235
  %sub12 = sub i32 %25, %24, !dbg !3235
  store i32 %sub12, ptr %c, align 4, !dbg !3235
  %26 = load i32, ptr %b, align 4, !dbg !3235
  %call13 = call i32 @rol32(i32 noundef %26, i32 noundef 8) #21, !dbg !3235
  %27 = load i32, ptr %c, align 4, !dbg !3235
  %xor14 = xor i32 %27, %call13, !dbg !3235
  store i32 %xor14, ptr %c, align 4, !dbg !3235
  %28 = load i32, ptr %a, align 4, !dbg !3235
  %29 = load i32, ptr %b, align 4, !dbg !3235
  %add15 = add i32 %29, %28, !dbg !3235
  store i32 %add15, ptr %b, align 4, !dbg !3235
  %30 = load i32, ptr %c, align 4, !dbg !3235
  %31 = load i32, ptr %a, align 4, !dbg !3235
  %sub16 = sub i32 %31, %30, !dbg !3235
  store i32 %sub16, ptr %a, align 4, !dbg !3235
  %32 = load i32, ptr %c, align 4, !dbg !3235
  %call17 = call i32 @rol32(i32 noundef %32, i32 noundef 16) #21, !dbg !3235
  %33 = load i32, ptr %a, align 4, !dbg !3235
  %xor18 = xor i32 %33, %call17, !dbg !3235
  store i32 %xor18, ptr %a, align 4, !dbg !3235
  %34 = load i32, ptr %b, align 4, !dbg !3235
  %35 = load i32, ptr %c, align 4, !dbg !3235
  %add19 = add i32 %35, %34, !dbg !3235
  store i32 %add19, ptr %c, align 4, !dbg !3235
  %36 = load i32, ptr %a, align 4, !dbg !3235
  %37 = load i32, ptr %b, align 4, !dbg !3235
  %sub20 = sub i32 %37, %36, !dbg !3235
  store i32 %sub20, ptr %b, align 4, !dbg !3235
  %38 = load i32, ptr %a, align 4, !dbg !3235
  %call21 = call i32 @rol32(i32 noundef %38, i32 noundef 19) #21, !dbg !3235
  %39 = load i32, ptr %b, align 4, !dbg !3235
  %xor22 = xor i32 %39, %call21, !dbg !3235
  store i32 %xor22, ptr %b, align 4, !dbg !3235
  %40 = load i32, ptr %c, align 4, !dbg !3235
  %41 = load i32, ptr %a, align 4, !dbg !3235
  %add23 = add i32 %41, %40, !dbg !3235
  store i32 %add23, ptr %a, align 4, !dbg !3235
  %42 = load i32, ptr %b, align 4, !dbg !3235
  %43 = load i32, ptr %c, align 4, !dbg !3235
  %sub24 = sub i32 %43, %42, !dbg !3235
  store i32 %sub24, ptr %c, align 4, !dbg !3235
  %44 = load i32, ptr %b, align 4, !dbg !3235
  %call25 = call i32 @rol32(i32 noundef %44, i32 noundef 4) #21, !dbg !3235
  %45 = load i32, ptr %c, align 4, !dbg !3235
  %xor26 = xor i32 %45, %call25, !dbg !3235
  store i32 %xor26, ptr %c, align 4, !dbg !3235
  %46 = load i32, ptr %a, align 4, !dbg !3235
  %47 = load i32, ptr %b, align 4, !dbg !3235
  %add27 = add i32 %47, %46, !dbg !3235
  store i32 %add27, ptr %b, align 4, !dbg !3235
  %48 = load i32, ptr %length.addr, align 4, !dbg !3237
  %sub28 = sub i32 %48, 3, !dbg !3237
  store i32 %sub28, ptr %length.addr, align 4, !dbg !3237
  %49 = load ptr, ptr %k.addr, align 8, !dbg !3238
  %add.ptr = getelementptr i32, ptr %49, i64 3, !dbg !3238
  store ptr %add.ptr, ptr %k.addr, align 8, !dbg !3238
  br label %while.cond, !dbg !3225, !llvm.loop !3239

while.end:                                        ; preds = %while.cond
  %50 = load i32, ptr %length.addr, align 4, !dbg !3241
  switch i32 %50, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb31
    i32 1, label %sw.bb34
    i32 0, label %sw.epilog
  ], !dbg !3242

sw.bb:                                            ; preds = %while.end
  %51 = load ptr, ptr %k.addr, align 8, !dbg !3243
  %arrayidx29 = getelementptr i32, ptr %51, i64 2, !dbg !3243
  %52 = load i32, ptr %arrayidx29, align 4, !dbg !3243
  %53 = load i32, ptr %c, align 4, !dbg !3245
  %add30 = add i32 %53, %52, !dbg !3245
  store i32 %add30, ptr %c, align 4, !dbg !3245
  br label %sw.bb31, !dbg !3246

sw.bb31:                                          ; preds = %while.end, %sw.bb
  %54 = load ptr, ptr %k.addr, align 8, !dbg !3247
  %arrayidx32 = getelementptr i32, ptr %54, i64 1, !dbg !3247
  %55 = load i32, ptr %arrayidx32, align 4, !dbg !3247
  %56 = load i32, ptr %b, align 4, !dbg !3248
  %add33 = add i32 %56, %55, !dbg !3248
  store i32 %add33, ptr %b, align 4, !dbg !3248
  br label %sw.bb34, !dbg !3249

sw.bb34:                                          ; preds = %while.end, %sw.bb31
  %57 = load ptr, ptr %k.addr, align 8, !dbg !3250
  %arrayidx35 = getelementptr i32, ptr %57, i64 0, !dbg !3250
  %58 = load i32, ptr %arrayidx35, align 4, !dbg !3250
  %59 = load i32, ptr %a, align 4, !dbg !3251
  %add36 = add i32 %59, %58, !dbg !3251
  store i32 %add36, ptr %a, align 4, !dbg !3251
  %60 = load i32, ptr %b, align 4, !dbg !3252
  %61 = load i32, ptr %c, align 4, !dbg !3252
  %xor37 = xor i32 %61, %60, !dbg !3252
  store i32 %xor37, ptr %c, align 4, !dbg !3252
  %62 = load i32, ptr %b, align 4, !dbg !3252
  %call38 = call i32 @rol32(i32 noundef %62, i32 noundef 14) #21, !dbg !3252
  %63 = load i32, ptr %c, align 4, !dbg !3252
  %sub39 = sub i32 %63, %call38, !dbg !3252
  store i32 %sub39, ptr %c, align 4, !dbg !3252
  %64 = load i32, ptr %c, align 4, !dbg !3252
  %65 = load i32, ptr %a, align 4, !dbg !3252
  %xor40 = xor i32 %65, %64, !dbg !3252
  store i32 %xor40, ptr %a, align 4, !dbg !3252
  %66 = load i32, ptr %c, align 4, !dbg !3252
  %call41 = call i32 @rol32(i32 noundef %66, i32 noundef 11) #21, !dbg !3252
  %67 = load i32, ptr %a, align 4, !dbg !3252
  %sub42 = sub i32 %67, %call41, !dbg !3252
  store i32 %sub42, ptr %a, align 4, !dbg !3252
  %68 = load i32, ptr %a, align 4, !dbg !3252
  %69 = load i32, ptr %b, align 4, !dbg !3252
  %xor43 = xor i32 %69, %68, !dbg !3252
  store i32 %xor43, ptr %b, align 4, !dbg !3252
  %70 = load i32, ptr %a, align 4, !dbg !3252
  %call44 = call i32 @rol32(i32 noundef %70, i32 noundef 25) #21, !dbg !3252
  %71 = load i32, ptr %b, align 4, !dbg !3252
  %sub45 = sub i32 %71, %call44, !dbg !3252
  store i32 %sub45, ptr %b, align 4, !dbg !3252
  %72 = load i32, ptr %b, align 4, !dbg !3252
  %73 = load i32, ptr %c, align 4, !dbg !3252
  %xor46 = xor i32 %73, %72, !dbg !3252
  store i32 %xor46, ptr %c, align 4, !dbg !3252
  %74 = load i32, ptr %b, align 4, !dbg !3252
  %call47 = call i32 @rol32(i32 noundef %74, i32 noundef 16) #21, !dbg !3252
  %75 = load i32, ptr %c, align 4, !dbg !3252
  %sub48 = sub i32 %75, %call47, !dbg !3252
  store i32 %sub48, ptr %c, align 4, !dbg !3252
  %76 = load i32, ptr %c, align 4, !dbg !3252
  %77 = load i32, ptr %a, align 4, !dbg !3252
  %xor49 = xor i32 %77, %76, !dbg !3252
  store i32 %xor49, ptr %a, align 4, !dbg !3252
  %78 = load i32, ptr %c, align 4, !dbg !3252
  %call50 = call i32 @rol32(i32 noundef %78, i32 noundef 4) #21, !dbg !3252
  %79 = load i32, ptr %a, align 4, !dbg !3252
  %sub51 = sub i32 %79, %call50, !dbg !3252
  store i32 %sub51, ptr %a, align 4, !dbg !3252
  %80 = load i32, ptr %a, align 4, !dbg !3252
  %81 = load i32, ptr %b, align 4, !dbg !3252
  %xor52 = xor i32 %81, %80, !dbg !3252
  store i32 %xor52, ptr %b, align 4, !dbg !3252
  %82 = load i32, ptr %a, align 4, !dbg !3252
  %call53 = call i32 @rol32(i32 noundef %82, i32 noundef 14) #21, !dbg !3252
  %83 = load i32, ptr %b, align 4, !dbg !3252
  %sub54 = sub i32 %83, %call53, !dbg !3252
  store i32 %sub54, ptr %b, align 4, !dbg !3252
  %84 = load i32, ptr %b, align 4, !dbg !3252
  %85 = load i32, ptr %c, align 4, !dbg !3252
  %xor55 = xor i32 %85, %84, !dbg !3252
  store i32 %xor55, ptr %c, align 4, !dbg !3252
  %86 = load i32, ptr %b, align 4, !dbg !3252
  %call56 = call i32 @rol32(i32 noundef %86, i32 noundef 24) #21, !dbg !3252
  %87 = load i32, ptr %c, align 4, !dbg !3252
  %sub57 = sub i32 %87, %call56, !dbg !3252
  store i32 %sub57, ptr %c, align 4, !dbg !3252
  br label %sw.epilog, !dbg !3254

sw.epilog:                                        ; preds = %while.end, %while.end, %sw.bb34
  %88 = load i32, ptr %c, align 4, !dbg !3255
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #20, !dbg !3256
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #20, !dbg !3256
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #20, !dbg !3256
  ret i32 %88, !dbg !3257
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rol32(i32 noundef %word, i32 noundef %shift) #4 align 16 !dbg !3258 {
entry:
  %word.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  store i32 %word, ptr %word.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !3263, metadata !DIExpression()), !dbg !3265
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !3264, metadata !DIExpression()), !dbg !3266
  %0 = load i32, ptr %word.addr, align 4, !dbg !3267
  %1 = load i32, ptr %shift.addr, align 4, !dbg !3268
  %and = and i32 %1, 31, !dbg !3269
  %shl = shl i32 %0, %and, !dbg !3270
  %2 = load i32, ptr %word.addr, align 4, !dbg !3271
  %3 = load i32, ptr %shift.addr, align 4, !dbg !3272
  %sub = sub i32 0, %3, !dbg !3273
  %and1 = and i32 %sub, 31, !dbg !3274
  %shr = lshr i32 %2, %and1, !dbg !3275
  %or = or i32 %shl, %shr, !dbg !3276
  ret i32 %or, !dbg !3277
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_irq_save() #3 align 16 !dbg !3278 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #20, !dbg !3284
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !3283, metadata !DIExpression()), !dbg !3285
  %call = call i64 @arch_local_save_flags() #21, !dbg !3286
  store i64 %call, ptr %flags, align 8, !dbg !3285
  call void @arch_local_irq_disable() #21, !dbg !3287
  %0 = load i64, ptr %flags, align 8, !dbg !3288
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #20, !dbg !3289
  ret i64 %0, !dbg !3290
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bit_spin_lock(i32 noundef %bitnum, ptr noundef %addr) #4 align 16 !dbg !353 {
entry:
  %bitnum.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  store i32 %bitnum, ptr %bitnum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bitnum.addr, metadata !358, metadata !DIExpression()), !dbg !3291
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !359, metadata !DIExpression()), !dbg !3292
  br label %do.body, !dbg !3293

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #21, !dbg !3294
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !dbg !3294, !srcloc !3296
  br label %do.end, !dbg !3294

do.end:                                           ; preds = %do.body
  br label %while.cond, !dbg !3297

while.cond:                                       ; preds = %do.end31, %do.end
  %0 = load i32, ptr %bitnum.addr, align 4, !dbg !3298
  %conv = sext i32 %0 to i64, !dbg !3298
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3298
  %call = call zeroext i1 @test_and_set_bit_lock(i64 noundef %conv, ptr noundef %1) #21, !dbg !3298
  %lnot = xor i1 %call, true, !dbg !3298
  %lnot1 = xor i1 %lnot, true, !dbg !3298
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3298
  %conv2 = sext i32 %lnot.ext to i64, !dbg !3298
  %expval = call i64 @llvm.expect.i64(i64 %conv2, i64 0), !dbg !3298
  %tobool = icmp ne i64 %expval, 0, !dbg !3297
  br i1 %tobool, label %while.body, label %while.end, !dbg !3297

while.body:                                       ; preds = %while.cond
  br label %do.body3, !dbg !3299

do.body3:                                         ; preds = %while.body
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !dbg !3301, !srcloc !3303
  %call4 = call zeroext i1 @__preempt_count_dec_and_test() #21, !dbg !3304
  %lnot5 = xor i1 %call4, true, !dbg !3304
  %lnot7 = xor i1 %lnot5, true, !dbg !3304
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !3304
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !3304
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !3304
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !3304
  br i1 %tobool11, label %if.then, label %if.end, !dbg !3301

if.then:                                          ; preds = %do.body3
  br label %do.body12, !dbg !3304

do.body12:                                        ; preds = %if.then
  %2 = call i64 @llvm.read_register.i64(metadata !417), !dbg !3306
  %3 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %2) #20, !dbg !3306, !srcloc !3308
  call void @llvm.write_register.i64(metadata !417, i64 %3), !dbg !3306
  br label %do.end13, !dbg !3306

do.end13:                                         ; preds = %do.body12
  br label %if.end, !dbg !3306

if.end:                                           ; preds = %do.end13, %do.body3
  br label %do.end14, !dbg !3301

do.end14:                                         ; preds = %if.end
  br label %do.body15, !dbg !3309

do.body15:                                        ; preds = %cond.end, %do.end14
  call void @cpu_relax() #21, !dbg !3310
  br label %do.cond, !dbg !3312

do.cond:                                          ; preds = %do.body15
  %4 = load i32, ptr %bitnum.addr, align 4, !dbg !3313
  %5 = call i1 @llvm.is.constant.i32(i32 %4), !dbg !3313
  br i1 %5, label %land.lhs.true, label %cond.false, !dbg !3313

land.lhs.true:                                    ; preds = %do.cond
  %6 = load ptr, ptr %addr.addr, align 8, !dbg !3313
  %7 = ptrtoint ptr %6 to i64, !dbg !3313
  %cmp = icmp ne i64 %7, 0, !dbg !3313
  %conv16 = zext i1 %cmp to i32, !dbg !3313
  %8 = call i1 @llvm.is.constant.i32(i32 %conv16), !dbg !3313
  br i1 %8, label %land.lhs.true17, label %cond.false, !dbg !3313

land.lhs.true17:                                  ; preds = %land.lhs.true
  %9 = load ptr, ptr %addr.addr, align 8, !dbg !3313
  %10 = ptrtoint ptr %9 to i64, !dbg !3313
  %cmp18 = icmp ne i64 %10, 0, !dbg !3313
  br i1 %cmp18, label %land.lhs.true20, label %cond.false, !dbg !3313

land.lhs.true20:                                  ; preds = %land.lhs.true17
  %11 = load ptr, ptr %addr.addr, align 8, !dbg !3313
  %12 = load i64, ptr %11, align 8, !dbg !3313
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !3313
  br i1 %13, label %cond.true, label %cond.false, !dbg !3313

cond.true:                                        ; preds = %land.lhs.true20
  %14 = load i32, ptr %bitnum.addr, align 4, !dbg !3313
  %conv21 = sext i32 %14 to i64, !dbg !3313
  %15 = load ptr, ptr %addr.addr, align 8, !dbg !3313
  %call22 = call zeroext i1 @const_test_bit(i64 noundef %conv21, ptr noundef %15) #21, !dbg !3313
  %conv23 = zext i1 %call22 to i32, !dbg !3313
  br label %cond.end, !dbg !3313

cond.false:                                       ; preds = %land.lhs.true20, %land.lhs.true17, %land.lhs.true, %do.cond
  %16 = load i32, ptr %bitnum.addr, align 4, !dbg !3313
  %conv24 = sext i32 %16 to i64, !dbg !3313
  %17 = load ptr, ptr %addr.addr, align 8, !dbg !3313
  %call25 = call zeroext i1 @_test_bit(i64 noundef %conv24, ptr noundef %17) #21, !dbg !3313
  %conv26 = zext i1 %call25 to i32, !dbg !3313
  br label %cond.end, !dbg !3313

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv23, %cond.true ], [ %conv26, %cond.false ], !dbg !3313
  %tobool27 = icmp ne i32 %cond, 0, !dbg !3312
  br i1 %tobool27, label %do.body15, label %do.end28, !dbg !3312, !llvm.loop !3314

do.end28:                                         ; preds = %cond.end
  br label %do.body29, !dbg !3316

do.body29:                                        ; preds = %do.end28
  call void @__preempt_count_add(i32 noundef 1) #21, !dbg !3317
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !dbg !3317, !srcloc !3319
  br label %do.end31, !dbg !3317

do.end31:                                         ; preds = %do.body29
  br label %while.cond, !dbg !3297, !llvm.loop !3320

while.end:                                        ; preds = %while.cond
  ret void, !dbg !3322
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #3 align 16 !dbg !3323 {
entry:
  %call = call i64 @native_save_fl() #21, !dbg !3324
  ret i64 %call, !dbg !3325
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #3 align 16 !dbg !3326 {
entry:
  call void @native_irq_disable() #21, !dbg !3327
  ret void, !dbg !3328
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #3 align 16 !dbg !3329 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #20, !dbg !3332
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !3331, metadata !DIExpression()), !dbg !3333
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #20, !dbg !3334, !srcloc !3335
  %0 = load i64, ptr %flags, align 8, !dbg !3336
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #20, !dbg !3337
  ret i64 %0, !dbg !3338
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #3 align 16 !dbg !3339 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !dbg !3340, !srcloc !3341
  ret void, !dbg !3342
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #3 align 16 !dbg !3343 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !3348, metadata !DIExpression()), !dbg !3356
  br label %do.body, !dbg !3357

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #20, !dbg !3358
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !3349, metadata !DIExpression()), !dbg !3358
  %0 = load i32, ptr %val.addr, align 4, !dbg !3358
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !3358
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !3358

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !3358
  %cmp = icmp eq i32 %2, 1, !dbg !3358
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !3358

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !3358
  %cmp1 = icmp eq i32 %3, -1, !dbg !3358
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !3358

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !3358
  br label %cond.end, !dbg !3358

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !3358

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !3358
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !3358
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !3359
  %cmp2 = icmp eq i32 %5, 1, !dbg !3359
  br i1 %cmp2, label %if.then, label %if.else, !dbg !3358

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #20, !dbg !3360, !srcloc !3362
  br label %if.end8, !dbg !3359

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !3363
  %cmp3 = icmp eq i32 %6, -1, !dbg !3363
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !3359

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #20, !dbg !3364, !srcloc !3366
  br label %if.end, !dbg !3363

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !3363

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #20, !dbg !3367
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !3352, metadata !DIExpression()), !dbg !3367
  %7 = load i32, ptr %val.addr, align 4, !dbg !3367
  %conv = sext i32 %7 to i64, !dbg !3367
  %and = and i64 %conv, 4294967295, !dbg !3367
  %conv7 = trunc i64 %and to i32, !dbg !3367
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !3367
  %8 = load i32, ptr %pto_val__, align 4, !dbg !3367
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #20, !dbg !3367, !srcloc !3368
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #20, !dbg !3363
  br label %do.cond, !dbg !3367

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !3367

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #20, !dbg !3357
  br label %do.end10, !dbg !3358

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !3369
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_and_set_bit_lock(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !3370 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3377, metadata !DIExpression()), !dbg !3379
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3378, metadata !DIExpression()), !dbg !3380
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3381
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3382
  %div = sdiv i64 %1, 64, !dbg !3382
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3383
  call void @instrument_atomic_read_write(ptr noundef %add.ptr, i64 noundef 8) #21, !dbg !3384
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3385
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3386
  %call = call zeroext i1 @arch_test_and_set_bit_lock(i64 noundef %2, ptr noundef %3) #21, !dbg !3387
  ret i1 %call, !dbg !3388
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #3 align 16 !dbg !3389 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #20, !dbg !3395
  call void @llvm.dbg.declare(metadata ptr %c, metadata !3393, metadata !DIExpression()), !dbg !3395
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #20, !dbg !3395, !srcloc !3396
  %1 = icmp ult i8 %0, 2, !dbg !3395
  call void @llvm.assume(i1 %1), !dbg !3395
  store i8 %0, ptr %c, align 1, !dbg !3395
  %2 = load i8, ptr %c, align 1, !dbg !3395, !range !803, !noundef !80
  %tobool = trunc i8 %2 to i1, !dbg !3395
  %frombool = zext i1 %tobool to i8, !dbg !3395
  store i8 %frombool, ptr %tmp, align 1, !dbg !3395
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #20, !dbg !3397
  %3 = load i8, ptr %tmp, align 1, !dbg !3395, !range !803, !noundef !80
  %tobool1 = trunc i8 %3 to i1, !dbg !3395
  ret i1 %tobool1, !dbg !3398
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #12

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #3 align 16 !dbg !3399 {
entry:
  call void @rep_nop() #21, !dbg !3401
  ret void, !dbg !3402
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !3403 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3410, metadata !DIExpression()), !dbg !3415
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3411, metadata !DIExpression()), !dbg !3416
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #20, !dbg !3417
  call void @llvm.dbg.declare(metadata ptr %p, metadata !3412, metadata !DIExpression()), !dbg !3418
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3419
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3420
  %div = udiv i64 %1, 64, !dbg !3420
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3421
  store ptr %add.ptr, ptr %p, align 8, !dbg !3418
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #20, !dbg !3422
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !3413, metadata !DIExpression()), !dbg !3423
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3424
  %rem = urem i64 %2, 64, !dbg !3424
  %shl = shl i64 1, %rem, !dbg !3424
  store i64 %shl, ptr %mask, align 8, !dbg !3423
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #20, !dbg !3425
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3414, metadata !DIExpression()), !dbg !3426
  %3 = load ptr, ptr %p, align 8, !dbg !3427
  %4 = load i64, ptr %3, align 8, !dbg !3428
  store i64 %4, ptr %val, align 8, !dbg !3426
  %5 = load i64, ptr %val, align 8, !dbg !3429
  %6 = load i64, ptr %mask, align 8, !dbg !3430
  %and = and i64 %5, %6, !dbg !3431
  %tobool = icmp ne i64 %and, 0, !dbg !3432
  %lnot = xor i1 %tobool, true, !dbg !3432
  %lnot1 = xor i1 %lnot, true, !dbg !3433
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #20, !dbg !3434
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #20, !dbg !3434
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #20, !dbg !3434
  ret i1 %lnot1, !dbg !3435
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !3436 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3439, metadata !DIExpression()), !dbg !3441
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3440, metadata !DIExpression()), !dbg !3442
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3443
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3444
  %div = udiv i64 %1, 64, !dbg !3444
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3445
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #21, !dbg !3446
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3447
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3448
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #21, !dbg !3449
  ret i1 %call, !dbg !3450
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !3451 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3459, metadata !DIExpression()), !dbg !3461
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3460, metadata !DIExpression()), !dbg !3462
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3463
  %1 = load i64, ptr %size.addr, align 8, !dbg !3464
  %conv = trunc i64 %1 to i32, !dbg !3464
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #21, !dbg !3465
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3466
  %3 = load i64, ptr %size.addr, align 8, !dbg !3466
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #21, !dbg !3466
  ret void, !dbg !3467
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_set_bit_lock(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !3468 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3471, metadata !DIExpression()), !dbg !3473
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3472, metadata !DIExpression()), !dbg !3474
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3475
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3476
  %call = call zeroext i1 @arch_test_and_set_bit(i64 noundef %0, ptr noundef %1) #21, !dbg !3477
  ret i1 %call, !dbg !3478
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !3479 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3484, metadata !DIExpression()), !dbg !3486
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3485, metadata !DIExpression()), !dbg !3487
  ret i1 true, !dbg !3488
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !3489 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3494, metadata !DIExpression()), !dbg !3497
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3495, metadata !DIExpression()), !dbg !3498
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3496, metadata !DIExpression()), !dbg !3499
  ret void, !dbg !3500
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !3501 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3503, metadata !DIExpression()), !dbg !3507
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3504, metadata !DIExpression()), !dbg !3508
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #20, !dbg !3509
  call void @llvm.dbg.declare(metadata ptr %c, metadata !3505, metadata !DIExpression()), !dbg !3509
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3509
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3509
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1, ptr elementtype(i64) %0) #20, !dbg !3509, !srcloc !3510
  %3 = icmp ult i8 %2, 2, !dbg !3509
  call void @llvm.assume(i1 %3), !dbg !3509
  store i8 %2, ptr %c, align 1, !dbg !3509
  %4 = load i8, ptr %c, align 1, !dbg !3509, !range !803, !noundef !80
  %tobool = trunc i8 %4 to i1, !dbg !3509
  %frombool = zext i1 %tobool to i8, !dbg !3509
  store i8 %frombool, ptr %tmp, align 1, !dbg !3509
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #20, !dbg !3511
  %5 = load i8, ptr %tmp, align 1, !dbg !3509, !range !803, !noundef !80
  %tobool1 = trunc i8 %5 to i1, !dbg !3509
  ret i1 %tobool1, !dbg !3512
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #3 align 16 !dbg !3513 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !dbg !3514, !srcloc !3515
  ret void, !dbg !3516
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !3517 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3519, metadata !DIExpression()), !dbg !3521
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3520, metadata !DIExpression()), !dbg !3522
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3523
  %1 = load i64, ptr %size.addr, align 8, !dbg !3524
  %conv = trunc i64 %1 to i32, !dbg !3524
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #21, !dbg !3525
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3526
  %3 = load i64, ptr %size.addr, align 8, !dbg !3526
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #21, !dbg !3526
  ret void, !dbg !3527
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !3528 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3530, metadata !DIExpression()), !dbg !3532
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3531, metadata !DIExpression()), !dbg !3533
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3534
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3535
  br i1 %1, label %cond.true, label %cond.false, !dbg !3535

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3536
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3537
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #21, !dbg !3538
  %conv = zext i1 %call to i32, !dbg !3538
  br label %cond.end, !dbg !3535

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3539
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3540
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #21, !dbg !3541
  %conv2 = zext i1 %call1 to i32, !dbg !3541
  br label %cond.end, !dbg !3535

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3535
  %tobool = icmp ne i32 %cond, 0, !dbg !3535
  ret i1 %tobool, !dbg !3542
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !3543 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3545, metadata !DIExpression()), !dbg !3547
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3546, metadata !DIExpression()), !dbg !3548
  ret i1 true, !dbg !3549
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !3550 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3554, metadata !DIExpression()), !dbg !3556
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3555, metadata !DIExpression()), !dbg !3557
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3558
  %and = and i64 %0, 63, !dbg !3559
  %shl = shl i64 1, %and, !dbg !3560
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3561
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3562
  %shr = ashr i64 %2, 6, !dbg !3563
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !3561
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !3561
  %and1 = and i64 %shl, %3, !dbg !3564
  %cmp = icmp ne i64 %and1, 0, !dbg !3565
  ret i1 %cmp, !dbg !3566
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !3567 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3569, metadata !DIExpression()), !dbg !3572
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3570, metadata !DIExpression()), !dbg !3573
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #20, !dbg !3574
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !3571, metadata !DIExpression()), !dbg !3575
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3576
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3577
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #20, !dbg !3578, !srcloc !3579
  %3 = icmp ult i8 %2, 2, !dbg !3578
  call void @llvm.assume(i1 %3), !dbg !3578
  store i8 %2, ptr %oldbit, align 1, !dbg !3578
  %4 = load i8, ptr %oldbit, align 1, !dbg !3580, !range !803, !noundef !80
  %tobool = trunc i8 %4 to i1, !dbg !3580
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #20, !dbg !3581
  ret i1 %tobool, !dbg !3582
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rht_ptr(ptr noundef %bkt, ptr noundef %tbl, i32 noundef %hash) #4 align 16 !dbg !3583 {
entry:
  %bkt.addr = alloca ptr, align 8
  %tbl.addr = alloca ptr, align 8
  %hash.addr = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store ptr %bkt, ptr %bkt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bkt.addr, metadata !3587, metadata !DIExpression()), !dbg !3590
  store ptr %tbl, ptr %tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tbl.addr, metadata !3588, metadata !DIExpression()), !dbg !3591
  store i32 %hash, ptr %hash.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !3589, metadata !DIExpression()), !dbg !3592
  br label %do.body, !dbg !3593

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3595

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %bkt.addr, align 8, !dbg !3593
  %1 = load ptr, ptr %0, align 8, !dbg !3593
  store ptr %1, ptr %tmp, align 8, !dbg !3595
  %2 = load ptr, ptr %tmp, align 8, !dbg !3593
  %3 = load ptr, ptr %bkt.addr, align 8, !dbg !3597
  %call = call ptr @__rht_ptr(ptr noundef %2, ptr noundef %3) #21, !dbg !3598
  ret ptr %call, !dbg !3599
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rhashtable_compare(ptr noundef %arg, ptr noundef %obj) #4 align 16 !dbg !3600 {
entry:
  %arg.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %ht = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !3602, metadata !DIExpression()), !dbg !3606
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !3603, metadata !DIExpression()), !dbg !3607
  call void @llvm.lifetime.start.p0(i64 8, ptr %ht) #20, !dbg !3608
  call void @llvm.dbg.declare(metadata ptr %ht, metadata !3604, metadata !DIExpression()), !dbg !3609
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !3610
  %ht1 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %0, i32 0, i32 0, !dbg !3611
  %1 = load ptr, ptr %ht1, align 8, !dbg !3611
  store ptr %1, ptr %ht, align 8, !dbg !3609
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #20, !dbg !3612
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !3605, metadata !DIExpression()), !dbg !3613
  %2 = load ptr, ptr %obj.addr, align 8, !dbg !3614
  store ptr %2, ptr %ptr, align 8, !dbg !3613
  %3 = load ptr, ptr %ptr, align 8, !dbg !3615
  %4 = load ptr, ptr %ht, align 8, !dbg !3616
  %p = getelementptr inbounds %struct.rhashtable, ptr %4, i32 0, i32 3, !dbg !3617
  %key_offset = getelementptr inbounds %struct.rhashtable_params, ptr %p, i32 0, i32 2, !dbg !3618
  %5 = load i16, ptr %key_offset, align 4, !dbg !3618
  %conv = zext i16 %5 to i32, !dbg !3616
  %idx.ext = sext i32 %conv to i64, !dbg !3619
  %add.ptr = getelementptr i8, ptr %3, i64 %idx.ext, !dbg !3619
  %6 = load ptr, ptr %arg.addr, align 8, !dbg !3620
  %key = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %6, i32 0, i32 1, !dbg !3621
  %7 = load ptr, ptr %key, align 8, !dbg !3621
  %8 = load ptr, ptr %ht, align 8, !dbg !3622
  %p2 = getelementptr inbounds %struct.rhashtable, ptr %8, i32 0, i32 3, !dbg !3623
  %key_len = getelementptr inbounds %struct.rhashtable_params, ptr %p2, i32 0, i32 1, !dbg !3624
  %9 = load i16, ptr %key_len, align 2, !dbg !3624
  %conv3 = zext i16 %9 to i64, !dbg !3622
  %call = call i32 @memcmp(ptr noundef %add.ptr, ptr noundef %7, i64 noundef %conv3) #21, !dbg !3625
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #20, !dbg !3626
  call void @llvm.lifetime.end.p0(i64 8, ptr %ht) #20, !dbg !3626
  ret i32 %call, !dbg !3627
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rht_assign_locked(ptr noundef %bkt, ptr noundef %obj) #4 align 16 !dbg !3628 {
entry:
  %bkt.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  store ptr %bkt, ptr %bkt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bkt.addr, metadata !3632, metadata !DIExpression()), !dbg !3636
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !3633, metadata !DIExpression()), !dbg !3637
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !3638
  %call = call zeroext i1 @rht_is_a_nulls(ptr noundef %0) #21, !dbg !3640
  br i1 %call, label %if.then, label %if.end, !dbg !3641

if.then:                                          ; preds = %entry
  store ptr null, ptr %obj.addr, align 8, !dbg !3642
  br label %if.end, !dbg !3643

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !3644

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #20, !dbg !3645
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !3634, metadata !DIExpression()), !dbg !3645
  %1 = load ptr, ptr %obj.addr, align 8, !dbg !3645
  %2 = ptrtoint ptr %1 to i64, !dbg !3645
  %or = or i64 %2, 1, !dbg !3645
  %3 = inttoptr i64 %or to ptr, !dbg !3645
  %4 = ptrtoint ptr %3 to i64, !dbg !3645
  store i64 %4, ptr %_r_a_p__v, align 8, !dbg !3645
  br i1 false, label %land.lhs.true, label %if.else, !dbg !3646

land.lhs.true:                                    ; preds = %do.body
  %5 = load i64, ptr %_r_a_p__v, align 8, !dbg !3646
  %cmp = icmp eq i64 %5, 0, !dbg !3646
  br i1 %cmp, label %if.then1, label %if.else, !dbg !3645

if.then1:                                         ; preds = %land.lhs.true
  br label %do.body2, !dbg !3646

do.body2:                                         ; preds = %if.then1
  br label %do.body3, !dbg !3648

do.body3:                                         ; preds = %do.body2
  br label %do.cond, !dbg !3650

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !3650

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !3648

do.body4:                                         ; preds = %do.end
  %6 = load i64, ptr %_r_a_p__v, align 8, !dbg !3652
  %7 = inttoptr i64 %6 to ptr, !dbg !3652
  %8 = load ptr, ptr %bkt.addr, align 8, !dbg !3652
  store volatile ptr %7, ptr %8, align 8, !dbg !3652
  br label %do.cond5, !dbg !3652

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !3652

do.end6:                                          ; preds = %do.cond5
  br label %do.cond7, !dbg !3648

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !3648

do.end8:                                          ; preds = %do.cond7
  br label %if.end30, !dbg !3648

if.else:                                          ; preds = %land.lhs.true, %do.body
  br label %do.body9, !dbg !3646

do.body9:                                         ; preds = %if.else
  br label %do.body10, !dbg !3654

do.body10:                                        ; preds = %do.body9
  br label %do.cond11, !dbg !3656

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !3656

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !3654

do.body13:                                        ; preds = %do.end12
  br label %do.body14, !dbg !3658

do.body14:                                        ; preds = %do.body13
  br label %do.cond15, !dbg !3660

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !3660

do.end16:                                         ; preds = %do.cond15
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !dbg !3658, !srcloc !3662
  br label %do.body17, !dbg !3658

do.body17:                                        ; preds = %do.end16
  br label %do.body18, !dbg !3663

do.body18:                                        ; preds = %do.body17
  br label %do.cond19, !dbg !3665

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !3665

do.end20:                                         ; preds = %do.cond19
  br label %do.body21, !dbg !3663

do.body21:                                        ; preds = %do.end20
  %9 = load i64, ptr %_r_a_p__v, align 8, !dbg !3667
  %10 = inttoptr i64 %9 to ptr, !dbg !3667
  %11 = load ptr, ptr %bkt.addr, align 8, !dbg !3667
  store volatile ptr %10, ptr %11, align 8, !dbg !3667
  br label %do.cond22, !dbg !3667

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !3667

do.end23:                                         ; preds = %do.cond22
  br label %do.cond24, !dbg !3663

do.cond24:                                        ; preds = %do.end23
  br label %do.end25, !dbg !3663

do.end25:                                         ; preds = %do.cond24
  br label %do.cond26, !dbg !3658

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !3658

do.end27:                                         ; preds = %do.cond26
  br label %do.cond28, !dbg !3654

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !3654

do.end29:                                         ; preds = %do.cond28
  br label %if.end30

if.end30:                                         ; preds = %do.end29, %do.end8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #20, !dbg !3644
  br label %do.end32, !dbg !3645

do.end32:                                         ; preds = %if.end30
  ret void, !dbg !3669
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__rht_ptr(ptr noundef %p, ptr noundef %bkt) #4 align 16 !dbg !3670 {
entry:
  %p.addr = alloca ptr, align 8
  %bkt.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3674, metadata !DIExpression()), !dbg !3676
  store ptr %bkt, ptr %bkt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bkt.addr, metadata !3675, metadata !DIExpression()), !dbg !3677
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3678
  %1 = ptrtoint ptr %0 to i64, !dbg !3679
  %and = and i64 %1, -2, !dbg !3680
  %tobool = icmp ne i64 %and, 0, !dbg !3680
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3679

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !3679

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr %bkt.addr, align 8, !dbg !3681
  %3 = ptrtoint ptr %2 to i64, !dbg !3681
  %shr = ashr i64 %3, 1, !dbg !3681
  %shl = shl i64 %shr, 1, !dbg !3681
  %or = or i64 1, %shl, !dbg !3681
  %4 = inttoptr i64 %or to ptr, !dbg !3681
  %5 = ptrtoint ptr %4 to i64, !dbg !3682
  br label %cond.end, !dbg !3679

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %and, %cond.true ], [ %5, %cond.false ], !dbg !3679
  %6 = inttoptr i64 %cond to ptr, !dbg !3683
  ret ptr %6, !dbg !3684
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3685 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rht_grow_above_max(ptr noundef %ht, ptr noundef %tbl) #4 align 16 !dbg !3689 {
entry:
  %ht.addr = alloca ptr, align 8
  %tbl.addr = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !3693, metadata !DIExpression()), !dbg !3695
  store ptr %tbl, ptr %tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tbl.addr, metadata !3694, metadata !DIExpression()), !dbg !3696
  %0 = load ptr, ptr %ht.addr, align 8, !dbg !3697
  %nelems = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 8, !dbg !3698
  %call = call i32 @atomic_read(ptr noundef %nelems) #21, !dbg !3699
  %1 = load ptr, ptr %ht.addr, align 8, !dbg !3700
  %max_elems = getelementptr inbounds %struct.rhashtable, ptr %1, i32 0, i32 2, !dbg !3701
  %2 = load i32, ptr %max_elems, align 4, !dbg !3701
  %cmp = icmp uge i32 %call, %2, !dbg !3702
  ret i1 %cmp, !dbg !3703
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rht_grow_above_100(ptr noundef %ht, ptr noundef %tbl) #4 align 16 !dbg !3704 {
entry:
  %ht.addr = alloca ptr, align 8
  %tbl.addr = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !3706, metadata !DIExpression()), !dbg !3708
  store ptr %tbl, ptr %tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tbl.addr, metadata !3707, metadata !DIExpression()), !dbg !3709
  %0 = load ptr, ptr %ht.addr, align 8, !dbg !3710
  %nelems = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 8, !dbg !3711
  %call = call i32 @atomic_read(ptr noundef %nelems) #21, !dbg !3712
  %1 = load ptr, ptr %tbl.addr, align 8, !dbg !3713
  %size = getelementptr inbounds %struct.bucket_table, ptr %1, i32 0, i32 0, !dbg !3714
  %2 = load i32, ptr %size, align 64, !dbg !3714
  %cmp = icmp ugt i32 %call, %2, !dbg !3715
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3716

land.rhs:                                         ; preds = %entry
  %3 = load ptr, ptr %ht.addr, align 8, !dbg !3717
  %p = getelementptr inbounds %struct.rhashtable, ptr %3, i32 0, i32 3, !dbg !3718
  %max_size = getelementptr inbounds %struct.rhashtable_params, ptr %p, i32 0, i32 4, !dbg !3719
  %4 = load i32, ptr %max_size, align 8, !dbg !3719
  %tobool = icmp ne i32 %4, 0, !dbg !3717
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !3720

lor.rhs:                                          ; preds = %land.rhs
  %5 = load ptr, ptr %tbl.addr, align 8, !dbg !3721
  %size1 = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 0, !dbg !3722
  %6 = load i32, ptr %size1, align 64, !dbg !3722
  %7 = load ptr, ptr %ht.addr, align 8, !dbg !3723
  %p2 = getelementptr inbounds %struct.rhashtable, ptr %7, i32 0, i32 3, !dbg !3724
  %max_size3 = getelementptr inbounds %struct.rhashtable_params, ptr %p2, i32 0, i32 4, !dbg !3725
  %8 = load i32, ptr %max_size3, align 8, !dbg !3725
  %cmp4 = icmp ult i32 %6, %8, !dbg !3726
  br label %lor.end, !dbg !3720

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %9 = phi i1 [ true, %land.rhs ], [ %cmp4, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %10 = phi i1 [ false, %entry ], [ %9, %lor.end ], !dbg !3727
  ret i1 %10, !dbg !3728
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #3 align 16 !dbg !3729 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3733, metadata !DIExpression()), !dbg !3734
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3735
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #21, !dbg !3736
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3737
  call void @raw_atomic_inc(ptr noundef %1) #21, !dbg !3738
  ret void, !dbg !3739
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rht_grow_above_75(ptr noundef %ht, ptr noundef %tbl) #4 align 16 !dbg !3740 {
entry:
  %ht.addr = alloca ptr, align 8
  %tbl.addr = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !3742, metadata !DIExpression()), !dbg !3744
  store ptr %tbl, ptr %tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tbl.addr, metadata !3743, metadata !DIExpression()), !dbg !3745
  %0 = load ptr, ptr %ht.addr, align 8, !dbg !3746
  %nelems = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 8, !dbg !3747
  %call = call i32 @atomic_read(ptr noundef %nelems) #21, !dbg !3748
  %1 = load ptr, ptr %tbl.addr, align 8, !dbg !3749
  %size = getelementptr inbounds %struct.bucket_table, ptr %1, i32 0, i32 0, !dbg !3750
  %2 = load i32, ptr %size, align 64, !dbg !3750
  %div = udiv i32 %2, 4, !dbg !3751
  %mul = mul i32 %div, 3, !dbg !3752
  %cmp = icmp ugt i32 %call, %mul, !dbg !3753
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3754

land.rhs:                                         ; preds = %entry
  %3 = load ptr, ptr %ht.addr, align 8, !dbg !3755
  %p = getelementptr inbounds %struct.rhashtable, ptr %3, i32 0, i32 3, !dbg !3756
  %max_size = getelementptr inbounds %struct.rhashtable_params, ptr %p, i32 0, i32 4, !dbg !3757
  %4 = load i32, ptr %max_size, align 8, !dbg !3757
  %tobool = icmp ne i32 %4, 0, !dbg !3755
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !3758

lor.rhs:                                          ; preds = %land.rhs
  %5 = load ptr, ptr %tbl.addr, align 8, !dbg !3759
  %size1 = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 0, !dbg !3760
  %6 = load i32, ptr %size1, align 64, !dbg !3760
  %7 = load ptr, ptr %ht.addr, align 8, !dbg !3761
  %p2 = getelementptr inbounds %struct.rhashtable, ptr %7, i32 0, i32 3, !dbg !3762
  %max_size3 = getelementptr inbounds %struct.rhashtable_params, ptr %p2, i32 0, i32 4, !dbg !3763
  %8 = load i32, ptr %max_size3, align 8, !dbg !3763
  %cmp4 = icmp ult i32 %6, %8, !dbg !3764
  br label %lor.end, !dbg !3758

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %9 = phi i1 [ true, %land.rhs ], [ %cmp4, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %10 = phi i1 [ false, %entry ], [ %9, %lor.end ], !dbg !3765
  ret i1 %10, !dbg !3766
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @schedule_work(ptr noundef %work) #4 align 16 !dbg !3767 {
entry:
  %work.addr = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !3769, metadata !DIExpression()), !dbg !3770
  %0 = load ptr, ptr @system_wq, align 8, !dbg !3771
  %1 = load ptr, ptr %work.addr, align 8, !dbg !3772
  %call = call zeroext i1 @queue_work(ptr noundef %0, ptr noundef %1) #21, !dbg !3773
  ret i1 %call, !dbg !3774
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #3 align 16 !dbg !3775 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3781, metadata !DIExpression()), !dbg !3782
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3783
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #21, !dbg !3784
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3785
  %call = call i32 @raw_atomic_read(ptr noundef %1) #21, !dbg !3786
  ret i32 %call, !dbg !3787
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #3 align 16 !dbg !3788 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3791, metadata !DIExpression()), !dbg !3792
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3793
  %call = call i32 @arch_atomic_read(ptr noundef %0) #21, !dbg !3794
  ret i32 %call, !dbg !3795
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #3 align 16 !dbg !3796 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3799, metadata !DIExpression()), !dbg !3800
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3801
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !3801
  %1 = load volatile i32, ptr %counter, align 4, !dbg !3801
  ret i32 %1, !dbg !3802
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #3 align 16 !dbg !3803 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3805, metadata !DIExpression()), !dbg !3806
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3807
  call void @arch_atomic_inc(ptr noundef %0) #21, !dbg !3808
  ret void, !dbg !3809
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #3 align 16 !dbg !3810 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3812, metadata !DIExpression()), !dbg !3813
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3814
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !3815
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #20, !dbg !3816, !srcloc !3817
  ret void, !dbg !3818
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_work(ptr noundef %wq, ptr noundef %work) #4 align 16 !dbg !3819 {
entry:
  %wq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !3825, metadata !DIExpression()), !dbg !3827
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !3826, metadata !DIExpression()), !dbg !3828
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !3829
  %1 = load ptr, ptr %work.addr, align 8, !dbg !3830
  %call = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1) #21, !dbg !3831
  ret i1 %call, !dbg !3832
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3833 dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bit_spin_unlock(i32 noundef %bitnum, ptr noundef %addr) #4 align 16 !dbg !362 {
entry:
  %bitnum.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  store i32 %bitnum, ptr %bitnum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bitnum.addr, metadata !364, metadata !DIExpression()), !dbg !3836
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !365, metadata !DIExpression()), !dbg !3837
  %0 = load i32, ptr %bitnum.addr, align 4, !dbg !3838
  %conv = sext i32 %0 to i64, !dbg !3838
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3839
  call void @clear_bit_unlock(i64 noundef %conv, ptr noundef %1) #21, !dbg !3840
  br label %do.body, !dbg !3841

do.body:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !dbg !3842, !srcloc !3844
  %call = call zeroext i1 @__preempt_count_dec_and_test() #21, !dbg !3845
  %lnot = xor i1 %call, true, !dbg !3845
  %lnot1 = xor i1 %lnot, true, !dbg !3845
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3845
  %conv2 = sext i32 %lnot.ext to i64, !dbg !3845
  %expval = call i64 @llvm.expect.i64(i64 %conv2, i64 0), !dbg !3845
  %tobool = icmp ne i64 %expval, 0, !dbg !3845
  br i1 %tobool, label %if.then, label %if.end, !dbg !3842

if.then:                                          ; preds = %do.body
  br label %do.body3, !dbg !3845

do.body3:                                         ; preds = %if.then
  %2 = call i64 @llvm.read_register.i64(metadata !417), !dbg !3847
  %3 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %2) #20, !dbg !3847, !srcloc !3849
  call void @llvm.write_register.i64(metadata !417, i64 %3), !dbg !3847
  br label %do.end, !dbg !3847

do.end:                                           ; preds = %do.body3
  br label %if.end, !dbg !3847

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4, !dbg !3842

do.end4:                                          ; preds = %if.end
  ret void, !dbg !3850
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_restore(i64 noundef %flags) #3 align 16 !dbg !3851 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3855, metadata !DIExpression()), !dbg !3856
  %0 = load i64, ptr %flags.addr, align 8, !dbg !3857
  %call = call i32 @arch_irqs_disabled_flags(i64 noundef %0) #21, !dbg !3859
  %tobool = icmp ne i32 %call, 0, !dbg !3859
  br i1 %tobool, label %if.end, label %if.then, !dbg !3860

if.then:                                          ; preds = %entry
  call void @arch_local_irq_enable() #21, !dbg !3861
  br label %if.end, !dbg !3861

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3862
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit_unlock(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !3863 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3867, metadata !DIExpression()), !dbg !3869
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3868, metadata !DIExpression()), !dbg !3870
  br label %do.body, !dbg !3871

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3872

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3874
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3875
  %div = sdiv i64 %1, 64, !dbg !3875
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3876
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #21, !dbg !3877
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3878
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3879
  call void @arch_clear_bit_unlock(i64 noundef %2, ptr noundef %3) #21, !dbg !3880
  ret void, !dbg !3881
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !3882 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3884, metadata !DIExpression()), !dbg !3886
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3885, metadata !DIExpression()), !dbg !3887
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3888
  %1 = load i64, ptr %size.addr, align 8, !dbg !3889
  %conv = trunc i64 %1 to i32, !dbg !3889
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #21, !dbg !3890
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3891
  %3 = load i64, ptr %size.addr, align 8, !dbg !3891
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #21, !dbg !3891
  ret void, !dbg !3892
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit_unlock(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !3893 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3895, metadata !DIExpression()), !dbg !3897
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3896, metadata !DIExpression()), !dbg !3898
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !dbg !3899, !srcloc !3900
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3901
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3902
  call void @arch_clear_bit(i64 noundef %0, ptr noundef %1) #21, !dbg !3903
  ret void, !dbg !3904
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !3905 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3907, metadata !DIExpression()), !dbg !3909
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3908, metadata !DIExpression()), !dbg !3910
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3911
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3913
  br i1 %1, label %if.then, label %if.else, !dbg !3914

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !3915
  %3 = load i64, ptr %nr.addr, align 8, !dbg !3915
  %shr = ashr i64 %3, 3, !dbg !3915
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !3915
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3917
  %and = and i64 %4, 7, !dbg !3917
  %sh_prom = trunc i64 %and to i32, !dbg !3917
  %shl = shl i32 1, %sh_prom, !dbg !3917
  %not = xor i32 %shl, -1, !dbg !3918
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #20, !dbg !3919, !srcloc !3920
  br label %if.end, !dbg !3921

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3922
  %6 = load i64, ptr %nr.addr, align 8, !dbg !3924
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #20, !dbg !3925, !srcloc !3926
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3927
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #3 align 16 !dbg !3928 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3932, metadata !DIExpression()), !dbg !3933
  %0 = load i64, ptr %flags.addr, align 8, !dbg !3934
  %and = and i64 %0, 512, !dbg !3935
  %tobool = icmp ne i64 %and, 0, !dbg !3936
  %lnot = xor i1 %tobool, true, !dbg !3936
  %lnot.ext = zext i1 %lnot to i32, !dbg !3936
  ret i32 %lnot.ext, !dbg !3937
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #3 align 16 !dbg !3938 {
entry:
  call void @native_irq_enable() #21, !dbg !3939
  ret void, !dbg !3940
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #3 align 16 !dbg !3941 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !dbg !3942, !srcloc !3943
  ret void, !dbg !3944
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rhashtable_rehash_attach(ptr noundef %ht, ptr noundef %old_tbl, ptr noundef %new_tbl) #0 align 16 !dbg !3945 {
entry:
  %retval = alloca i32, align 4
  %ht.addr = alloca ptr, align 8
  %old_tbl.addr = alloca ptr, align 8
  %new_tbl.addr = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ret = alloca ptr, align 8
  %__old = alloca ptr, align 8
  %__new = alloca ptr, align 8
  %__ptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !3949, metadata !DIExpression()), !dbg !3960
  store ptr %old_tbl, ptr %old_tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_tbl.addr, metadata !3950, metadata !DIExpression()), !dbg !3961
  store ptr %new_tbl, ptr %new_tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_tbl.addr, metadata !3951, metadata !DIExpression()), !dbg !3962
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #20, !dbg !3963
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !3952, metadata !DIExpression()), !dbg !3963
  %0 = load ptr, ptr %old_tbl.addr, align 8, !dbg !3963
  %future_tbl = getelementptr inbounds %struct.bucket_table, ptr %0, i32 0, i32 5, !dbg !3963
  store ptr %future_tbl, ptr %__ai_ptr, align 8, !dbg !3963
  br label %do.body, !dbg !3963

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3964

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3964

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %__ai_ptr, align 8, !dbg !3963
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 8) #21, !dbg !3963
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #20, !dbg !3966
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !3955, metadata !DIExpression()), !dbg !3966
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #20, !dbg !3966
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !3957, metadata !DIExpression()), !dbg !3966
  store ptr null, ptr %__old, align 8, !dbg !3966
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #20, !dbg !3966
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !3958, metadata !DIExpression()), !dbg !3966
  %2 = load ptr, ptr %new_tbl.addr, align 8, !dbg !3966
  store ptr %2, ptr %__new, align 8, !dbg !3966
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #20, !dbg !3966
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3959, metadata !DIExpression()), !dbg !3966
  %3 = load ptr, ptr %__ai_ptr, align 8, !dbg !3966
  store ptr %3, ptr %__ptr, align 8, !dbg !3966
  %4 = load ptr, ptr %__ptr, align 8, !dbg !3966
  %5 = load ptr, ptr %__new, align 8, !dbg !3966
  %6 = load ptr, ptr %__old, align 8, !dbg !3966
  %7 = call ptr asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %4, ptr %5, ptr %6, ptr elementtype(i64) %4) #20, !dbg !3966, !srcloc !3967
  store ptr %7, ptr %__ret, align 8, !dbg !3966
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #20, !dbg !3966
  %8 = load ptr, ptr %__ret, align 8, !dbg !3966
  store ptr %8, ptr %tmp1, align 8, !dbg !3966
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #20, !dbg !3963
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #20, !dbg !3963
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #20, !dbg !3963
  %9 = load ptr, ptr %tmp1, align 8, !dbg !3966
  store ptr %9, ptr %tmp, align 8, !dbg !3963
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #20, !dbg !3968
  %10 = load ptr, ptr %tmp, align 8, !dbg !3963
  %cmp = icmp ne ptr %10, null, !dbg !3969
  br i1 %cmp, label %if.then, label %if.end, !dbg !3970

if.then:                                          ; preds = %do.end
  store i32 -17, ptr %retval, align 4, !dbg !3971
  br label %return, !dbg !3971

if.end:                                           ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !3972
  br label %return, !dbg !3972

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, ptr %retval, align 4, !dbg !3973
  ret i32 %11, !dbg !3973
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3974 dso_local void @__rcu_read_unlock() #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3975 dso_local void @_raw_spin_lock(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !3979 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3983, metadata !DIExpression()), !dbg !3986
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3984, metadata !DIExpression()), !dbg !3987
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3985, metadata !DIExpression()), !dbg !3988
  %0 = load ptr, ptr %new.addr, align 8, !dbg !3989
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !3991
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3992
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #21, !dbg !3993
  br i1 %call, label %if.end, label %if.then, !dbg !3994

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !3995

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !3996
  %4 = load ptr, ptr %next.addr, align 8, !dbg !3997
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !3998
  store ptr %3, ptr %prev1, align 8, !dbg !3999
  %5 = load ptr, ptr %next.addr, align 8, !dbg !4000
  %6 = load ptr, ptr %new.addr, align 8, !dbg !4001
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !4002
  store ptr %5, ptr %next2, align 8, !dbg !4003
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !4004
  %8 = load ptr, ptr %new.addr, align 8, !dbg !4005
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !4006
  store ptr %7, ptr %prev3, align 8, !dbg !4007
  br label %do.body, !dbg !4008

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !4009

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !4011

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4009

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !4013
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !4013
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !4013
  store volatile ptr %9, ptr %next6, align 8, !dbg !4013
  br label %do.end7, !dbg !4013

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !4009

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !4015
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !4016 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4020, metadata !DIExpression()), !dbg !4023
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4021, metadata !DIExpression()), !dbg !4024
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4022, metadata !DIExpression()), !dbg !4025
  ret i1 true, !dbg !4026
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4027 dso_local void @_raw_spin_unlock(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #4 align 16 !dbg !4028 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4030, metadata !DIExpression()), !dbg !4031
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4032
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #21, !dbg !4034
  br i1 %call, label %if.end, label %if.then, !dbg !4035

if.then:                                          ; preds = %entry
  br label %return, !dbg !4036

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4037
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4038
  %2 = load ptr, ptr %prev, align 8, !dbg !4038
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !4039
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !4040
  %4 = load ptr, ptr %next, align 8, !dbg !4040
  call void @__list_del(ptr noundef %2, ptr noundef %4) #21, !dbg !4041
  br label %return, !dbg !4042

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4042
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #4 align 16 !dbg !4043 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4047, metadata !DIExpression()), !dbg !4048
  ret i1 true, !dbg !4049
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !4050 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4052, metadata !DIExpression()), !dbg !4054
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4053, metadata !DIExpression()), !dbg !4055
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !4056
  %1 = load ptr, ptr %next.addr, align 8, !dbg !4057
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4058
  store ptr %0, ptr %prev1, align 8, !dbg !4059
  br label %do.body, !dbg !4060

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !4061

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !4063

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !4061

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !4065
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !4065
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !4065
  store volatile ptr %2, ptr %next4, align 8, !dbg !4065
  br label %do.end5, !dbg !4065

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !4061

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !4067
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls(i32 noundef %x) #3 align 16 !dbg !4068 {
entry:
  %x.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !4072, metadata !DIExpression()), !dbg !4074
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #20, !dbg !4075
  call void @llvm.dbg.declare(metadata ptr %r, metadata !4073, metadata !DIExpression()), !dbg !4076
  %0 = load i32, ptr %x.addr, align 4, !dbg !4077
  %1 = call i32 asm "bsrl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 -1) #24, !dbg !4078, !srcloc !4079
  store i32 %1, ptr %r, align 4, !dbg !4078
  %2 = load i32, ptr %r, align 4, !dbg !4080
  %add = add i32 %2, 1, !dbg !4081
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #20, !dbg !4082
  ret i32 %add, !dbg !4083
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls_long(i64 noundef %l) #4 align 16 !dbg !4084 {
entry:
  %l.addr = alloca i64, align 8
  store i64 %l, ptr %l.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !4088, metadata !DIExpression()), !dbg !4089
  %0 = load i64, ptr %l.addr, align 8, !dbg !4090
  %call = call i32 @fls64(i64 noundef %0) #21, !dbg !4091
  ret i32 %call, !dbg !4092
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls64(i64 noundef %x) #3 align 16 !dbg !4093 {
entry:
  %x.addr = alloca i64, align 8
  %bitpos = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !4097, metadata !DIExpression()), !dbg !4099
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitpos) #20, !dbg !4100
  call void @llvm.dbg.declare(metadata ptr %bitpos, metadata !4098, metadata !DIExpression()), !dbg !4101
  store i32 -1, ptr %bitpos, align 4, !dbg !4101
  %0 = load i32, ptr %bitpos, align 4, !dbg !4102
  %1 = load i64, ptr %x.addr, align 8, !dbg !4103
  %2 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %1, i32 %0) #24, !dbg !4102, !srcloc !4104
  store i32 %2, ptr %bitpos, align 4, !dbg !4102
  %3 = load i32, ptr %bitpos, align 4, !dbg !4105
  %add = add i32 %3, 1, !dbg !4106
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitpos) #20, !dbg !4107
  ret i32 %add, !dbg !4108
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__get_unaligned_cpu32(ptr noundef %p) #4 align 16 !dbg !4109 {
entry:
  %p.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4113, metadata !DIExpression()), !dbg !4115
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #20, !dbg !4116
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !4114, metadata !DIExpression()), !dbg !4117
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4118
  store ptr %0, ptr %ptr, align 8, !dbg !4117
  %1 = load ptr, ptr %ptr, align 8, !dbg !4119
  %x = getelementptr inbounds %struct.__una_u32, ptr %1, i32 0, i32 0, !dbg !4120
  %2 = load i32, ptr %x, align 1, !dbg !4120
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #20, !dbg !4121
  ret i32 %2, !dbg !4122
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kvzalloc(i64 noundef %size, i32 noundef %flags) #15 align 16 !dbg !4123 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4127, metadata !DIExpression()), !dbg !4129
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4128, metadata !DIExpression()), !dbg !4130
  %0 = load i64, ptr %size.addr, align 8, !dbg !4131
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4132
  %or = or i32 %1, 256, !dbg !4133
  %call = call noalias ptr @kvmalloc(i64 noundef %0, i32 noundef %or) #23, !dbg !4134
  ret ptr %call, !dbg !4135
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_add(i64 noundef %addend1, i64 noundef %addend2) #4 align 16 !dbg !4136 {
entry:
  %retval = alloca i64, align 8
  %addend1.addr = alloca i64, align 8
  %addend2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addend1, ptr %addend1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend1.addr, metadata !4141, metadata !DIExpression()), !dbg !4144
  store i64 %addend2, ptr %addend2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend2.addr, metadata !4142, metadata !DIExpression()), !dbg !4145
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #20, !dbg !4146
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !4143, metadata !DIExpression()), !dbg !4147
  %0 = load i64, ptr %addend1.addr, align 8, !dbg !4148
  %1 = load i64, ptr %addend2.addr, align 8, !dbg !4148
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1), !dbg !4148
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !4148
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !4148
  store i64 %4, ptr %bytes, align 8, !dbg !4148
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #21, !dbg !4148
  br i1 %call, label %if.then, label %if.end, !dbg !4150

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !4151
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4151

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !4152
  store i64 %5, ptr %retval, align 8, !dbg !4153
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4153

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #20, !dbg !4154
  %6 = load i64, ptr %retval, align 8, !dbg !4154
  ret i64 %6, !dbg !4154
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_mul(i64 noundef %factor1, i64 noundef %factor2) #4 align 16 !dbg !4155 {
entry:
  %retval = alloca i64, align 8
  %factor1.addr = alloca i64, align 8
  %factor2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %factor1, ptr %factor1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor1.addr, metadata !4157, metadata !DIExpression()), !dbg !4160
  store i64 %factor2, ptr %factor2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor2.addr, metadata !4158, metadata !DIExpression()), !dbg !4161
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #20, !dbg !4162
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !4159, metadata !DIExpression()), !dbg !4163
  %0 = load i64, ptr %factor1.addr, align 8, !dbg !4164
  %1 = load i64, ptr %factor2.addr, align 8, !dbg !4164
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !4164
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !4164
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !4164
  store i64 %4, ptr %bytes, align 8, !dbg !4164
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #21, !dbg !4164
  br i1 %call, label %if.then, label %if.end, !dbg !4166

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !4167
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4167

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !4168
  store i64 %5, ptr %retval, align 8, !dbg !4169
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4169

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #20, !dbg !4170
  %6 = load i64, ptr %retval, align 8, !dbg !4170
  ret i64 %6, !dbg !4170
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @nested_bucket_table_alloc(ptr noundef %ht, i64 noundef %nbuckets, i32 noundef %gfp) #0 align 16 !dbg !4171 {
entry:
  %retval = alloca ptr, align 8
  %ht.addr = alloca ptr, align 8
  %nbuckets.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  %shift = alloca i32, align 4
  %tbl = alloca ptr, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !4173, metadata !DIExpression()), !dbg !4179
  store i64 %nbuckets, ptr %nbuckets.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbuckets.addr, metadata !4174, metadata !DIExpression()), !dbg !4180
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !4175, metadata !DIExpression()), !dbg !4181
  call void @llvm.lifetime.start.p0(i64 4, ptr %shift) #20, !dbg !4182
  call void @llvm.dbg.declare(metadata ptr %shift, metadata !4176, metadata !DIExpression()), !dbg !4183
  store i32 9, ptr %shift, align 4, !dbg !4183
  call void @llvm.lifetime.start.p0(i64 8, ptr %tbl) #20, !dbg !4184
  call void @llvm.dbg.declare(metadata ptr %tbl, metadata !4177, metadata !DIExpression()), !dbg !4185
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #20, !dbg !4186
  call void @llvm.dbg.declare(metadata ptr %size, metadata !4178, metadata !DIExpression()), !dbg !4187
  %0 = load i64, ptr %nbuckets.addr, align 8, !dbg !4188
  %cmp = icmp ult i64 %0, 1024, !dbg !4190
  br i1 %cmp, label %if.then, label %if.end, !dbg !4191

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4192
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4192

if.end:                                           ; preds = %entry
  store i64 72, ptr %size, align 8, !dbg !4193
  %1 = load i64, ptr %size, align 8, !dbg !4194
  %2 = load i32, ptr %gfp.addr, align 4, !dbg !4195
  %call = call noalias ptr @kzalloc(i64 noundef %1, i32 noundef %2) #23, !dbg !4196
  store ptr %call, ptr %tbl, align 8, !dbg !4197
  %3 = load ptr, ptr %tbl, align 8, !dbg !4198
  %tobool = icmp ne ptr %3, null, !dbg !4198
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !4200

if.then1:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !4201
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4201

if.end2:                                          ; preds = %if.end
  %4 = load ptr, ptr %ht.addr, align 8, !dbg !4202
  %5 = load ptr, ptr %tbl, align 8, !dbg !4204
  %buckets = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 8, !dbg !4205
  %arraydecay = getelementptr inbounds [0 x ptr], ptr %buckets, i64 0, i64 0, !dbg !4204
  %call3 = call ptr @nested_table_alloc(ptr noundef %4, ptr noundef %arraydecay, i1 noundef zeroext false) #21, !dbg !4206
  %tobool4 = icmp ne ptr %call3, null, !dbg !4206
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4207

if.then5:                                         ; preds = %if.end2
  %6 = load ptr, ptr %tbl, align 8, !dbg !4208
  call void @kfree(ptr noundef %6) #21, !dbg !4210
  store ptr null, ptr %retval, align 8, !dbg !4211
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4211

if.end6:                                          ; preds = %if.end2
  %7 = load i64, ptr %nbuckets.addr, align 8, !dbg !4212
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !4212
  br i1 %8, label %cond.true, label %cond.false9, !dbg !4212

cond.true:                                        ; preds = %if.end6
  %9 = load i64, ptr %nbuckets.addr, align 8, !dbg !4212
  %cmp7 = icmp ult i64 %9, 2, !dbg !4212
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4212

cond.true8:                                       ; preds = %cond.true
  br label %cond.end, !dbg !4212

cond.false:                                       ; preds = %cond.true
  %10 = load i64, ptr %nbuckets.addr, align 8, !dbg !4212
  %11 = call i64 @llvm.ctlz.i64(i64 %10, i1 true), !dbg !4212
  %cast = trunc i64 %11 to i32, !dbg !4212
  %sub = sub i32 63, %cast, !dbg !4212
  br label %cond.end, !dbg !4212

cond.end:                                         ; preds = %cond.false, %cond.true8
  %cond = phi i32 [ 0, %cond.true8 ], [ %sub, %cond.false ], !dbg !4212
  br label %cond.end11, !dbg !4212

cond.false9:                                      ; preds = %if.end6
  %12 = load i64, ptr %nbuckets.addr, align 8, !dbg !4212
  %call10 = call i32 @__ilog2_u64(i64 noundef %12) #22, !dbg !4212
  br label %cond.end11, !dbg !4212

cond.end11:                                       ; preds = %cond.false9, %cond.end
  %cond12 = phi i32 [ %cond, %cond.end ], [ %call10, %cond.false9 ], !dbg !4212
  %sub13 = sub i32 %cond12, 1, !dbg !4213
  %rem = urem i32 %sub13, 9, !dbg !4214
  %add = add i32 %rem, 1, !dbg !4215
  %13 = load ptr, ptr %tbl, align 8, !dbg !4216
  %nest = getelementptr inbounds %struct.bucket_table, ptr %13, i32 0, i32 1, !dbg !4217
  store i32 %add, ptr %nest, align 4, !dbg !4218
  %14 = load ptr, ptr %tbl, align 8, !dbg !4219
  store ptr %14, ptr %retval, align 8, !dbg !4220
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4220

cleanup:                                          ; preds = %cond.end11, %if.then5, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #20, !dbg !4221
  call void @llvm.lifetime.end.p0(i64 8, ptr %tbl) #20, !dbg !4221
  call void @llvm.lifetime.end.p0(i64 4, ptr %shift) #20, !dbg !4221
  %15 = load ptr, ptr %retval, align 8, !dbg !4221
  ret ptr %15, !dbg !4221
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_head_init(ptr noundef %rhp) #4 align 16 !dbg !4222 {
entry:
  %rhp.addr = alloca ptr, align 8
  store ptr %rhp, ptr %rhp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rhp.addr, metadata !4224, metadata !DIExpression()), !dbg !4225
  %0 = load ptr, ptr %rhp.addr, align 8, !dbg !4226
  %func = getelementptr inbounds %struct.callback_head, ptr %0, i32 0, i32 1, !dbg !4227
  store ptr inttoptr (i64 -1 to ptr), ptr %func, align 8, !dbg !4228
  ret void, !dbg !4229
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4230 dso_local i32 @get_random_u32() #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kvmalloc(i64 noundef %size, i32 noundef %flags) #15 align 16 !dbg !4234 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4236, metadata !DIExpression()), !dbg !4238
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4237, metadata !DIExpression()), !dbg !4239
  %0 = load i64, ptr %size.addr, align 8, !dbg !4240
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4241
  %call = call noalias ptr @kvmalloc_node(i64 noundef %0, i32 noundef %1, i32 noundef -1) #23, !dbg !4242
  ret ptr %call, !dbg !4243
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4244 dso_local noalias ptr @kvmalloc_node(i64 noundef, i32 noundef, i32 noundef) #16

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #4 align 16 !dbg !4247 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !4251, metadata !DIExpression()), !dbg !4252
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !4253, !range !803, !noundef !80
  %tobool = trunc i8 %0 to i1, !dbg !4253
  %lnot = xor i1 %tobool, true, !dbg !4253
  %lnot1 = xor i1 %lnot, true, !dbg !4253
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4253
  %conv = sext i32 %lnot.ext to i64, !dbg !4253
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4253
  %tobool2 = icmp ne i64 %expval, 0, !dbg !4253
  ret i1 %tobool2, !dbg !4254
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #15 align 16 !dbg !4255 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4257, metadata !DIExpression()), !dbg !4259
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4258, metadata !DIExpression()), !dbg !4260
  %0 = load i64, ptr %size.addr, align 8, !dbg !4261
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4262
  %or = or i32 %1, 256, !dbg !4263
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #23, !dbg !4264
  ret ptr %call, !dbg !4265
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4266 dso_local void @kfree(ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i32 @__ilog2_u64(i64 noundef %n) #9 align 16 !dbg !4269 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4273, metadata !DIExpression()), !dbg !4274
  %0 = load i64, ptr %n.addr, align 8, !dbg !4275
  %call = call i32 @fls64(i64 noundef %0) #21, !dbg !4276
  %sub = sub i32 %call, 1, !dbg !4277
  ret i32 %sub, !dbg !4278
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #17 align 16 !dbg !4279 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4281, metadata !DIExpression()), !dbg !4286
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4282, metadata !DIExpression()), !dbg !4287
  %0 = load i64, ptr %size.addr, align 8, !dbg !4288
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4289
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4290

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4291
  %tobool = icmp ne i64 %2, 0, !dbg !4291
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4292

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #20, !dbg !4293
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4283, metadata !DIExpression()), !dbg !4294
  %3 = load i64, ptr %size.addr, align 8, !dbg !4295
  %cmp = icmp ugt i64 %3, 8192, !dbg !4297
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4298

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4299
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4300
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #23, !dbg !4301
  store ptr %call, ptr %retval, align 8, !dbg !4302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4302

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4303
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #21, !dbg !4303
  store i32 %call2, ptr %index, align 4, !dbg !4304
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4305
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4306
  %9 = ptrtoint ptr %8 to i64, !dbg !4306
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #21, !dbg !4307
  %idxprom = zext i32 %call3 to i64, !dbg !4308
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4308
  %10 = load i32, ptr %index, align 4, !dbg !4309
  %idxprom4 = zext i32 %10 to i64, !dbg !4308
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4308
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4308
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4310
  %13 = load i64, ptr %size.addr, align 8, !dbg !4311
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #25, !dbg !4312
  store ptr %call6, ptr %retval, align 8, !dbg !4313
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4313

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #20, !dbg !4314
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4315
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4316
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #23, !dbg !4317
  store ptr %call8, ptr %retval, align 8, !dbg !4318
  br label %return, !dbg !4318

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4319
  ret ptr %16, !dbg !4319
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4320 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #16

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #3 align 16 !dbg !4321 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4325, metadata !DIExpression()), !dbg !4327
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4326, metadata !DIExpression()), !dbg !4328
  %0 = load i64, ptr %size.addr, align 8, !dbg !4329
  %tobool = icmp ne i64 %0, 0, !dbg !4329
  br i1 %tobool, label %if.end, label %if.then, !dbg !4331

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4332
  br label %return, !dbg !4332

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4333
  %cmp = icmp ule i64 %1, 8, !dbg !4335
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4336

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4337
  br label %return, !dbg !4337

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4338
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4340
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4341

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4342
  %cmp4 = icmp ule i64 %3, 96, !dbg !4343
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4344

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4345
  br label %return, !dbg !4345

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4346
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4348
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4349

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4350
  %cmp9 = icmp ule i64 %5, 192, !dbg !4351
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4352

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4353
  br label %return, !dbg !4353

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4354
  %cmp12 = icmp ule i64 %6, 8, !dbg !4356
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4357

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4358
  br label %return, !dbg !4358

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4359
  %cmp15 = icmp ule i64 %7, 16, !dbg !4361
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4362

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4363
  br label %return, !dbg !4363

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4364
  %cmp18 = icmp ule i64 %8, 32, !dbg !4366
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4367

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4368
  br label %return, !dbg !4368

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4369
  %cmp21 = icmp ule i64 %9, 64, !dbg !4371
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4372

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4373
  br label %return, !dbg !4373

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4374
  %cmp24 = icmp ule i64 %10, 128, !dbg !4376
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4377

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !4378
  br label %return, !dbg !4378

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !4379
  %cmp27 = icmp ule i64 %11, 256, !dbg !4381
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4382

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !4383
  br label %return, !dbg !4383

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !4384
  %cmp30 = icmp ule i64 %12, 512, !dbg !4386
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !4387

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !4388
  br label %return, !dbg !4388

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !4389
  %cmp33 = icmp ule i64 %13, 1024, !dbg !4391
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !4392

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !4393
  br label %return, !dbg !4393

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !4394
  %cmp36 = icmp ule i64 %14, 2048, !dbg !4396
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4397

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !4398
  br label %return, !dbg !4398

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !4399
  %cmp39 = icmp ule i64 %15, 4096, !dbg !4401
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !4402

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !4403
  br label %return, !dbg !4403

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !4404
  %cmp42 = icmp ule i64 %16, 8192, !dbg !4406
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !4407

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !4408
  br label %return, !dbg !4408

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !4409
  %cmp45 = icmp ule i64 %17, 16384, !dbg !4411
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4412

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !4413
  br label %return, !dbg !4413

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !4414
  %cmp48 = icmp ule i64 %18, 32768, !dbg !4416
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4417

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !4418
  br label %return, !dbg !4418

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4419
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4421
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4422

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4423
  br label %return, !dbg !4423

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4424
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4426
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4427

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4428
  br label %return, !dbg !4428

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4429
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4431
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4432

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4433
  br label %return, !dbg !4433

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4434
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4436
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4437

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4438
  br label %return, !dbg !4438

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4439
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4441
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4442

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4443
  br label %return, !dbg !4443

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4444
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4446
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4447

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4448
  br label %return, !dbg !4448

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4449, !range !803, !noundef !80
  %tobool69 = trunc i8 %25 to i1, !dbg !4449
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4451

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4452

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #26, !dbg !4453, !srcloc !4456
  unreachable, !dbg !4453

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4457

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4458

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4459

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4461

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4459

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #20, !dbg !4463, !srcloc !4465
  br label %do.end75, !dbg !4463

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4459

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4466
  br label %return, !dbg !4466

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4467
  ret i32 %26, !dbg !4467
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4468 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #18

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #3 align 16 !dbg !4474 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4478, metadata !DIExpression()), !dbg !4480
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !4479, metadata !DIExpression()), !dbg !4481
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4482
  %and = and i32 %0, 17, !dbg !4482
  %cmp = icmp eq i32 %and, 0, !dbg !4482
  %lnot = xor i1 %cmp, true, !dbg !4482
  %lnot1 = xor i1 %lnot, true, !dbg !4482
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4482
  %conv = sext i32 %lnot.ext to i64, !dbg !4482
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4482
  %tobool = icmp ne i64 %expval, 0, !dbg !4482
  br i1 %tobool, label %if.then, label %if.end, !dbg !4484

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4485
  br label %return, !dbg !4485

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4486
  %and2 = and i32 %1, 1, !dbg !4488
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4488
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4489

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !4490
  br label %return, !dbg !4490

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4491
  br label %return, !dbg !4491

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4493
  ret i32 %2, !dbg !4493
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4494 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #16

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4495 dso_local void @__compiletime_assert_173() #19

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #3 align 16 !dbg !4496 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4498, metadata !DIExpression()), !dbg !4500
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4499, metadata !DIExpression()), !dbg !4501
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4502
  %1 = load i32, ptr %i.addr, align 4, !dbg !4503
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #21, !dbg !4504
  ret void, !dbg !4505
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #3 align 16 !dbg !4506 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4508, metadata !DIExpression()), !dbg !4510
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4509, metadata !DIExpression()), !dbg !4511
  br label %do.body, !dbg !4512

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !4513
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4513
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !4513
  store volatile i32 %0, ptr %counter, align 4, !dbg !4513
  br label %do.end, !dbg !4513

do.end:                                           ; preds = %do.body
  ret void, !dbg !4515
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rhashtable_last_table(ptr noundef %ht, ptr noundef %tbl) #0 align 16 !dbg !4516 {
entry:
  %ht.addr = alloca ptr, align 8
  %tbl.addr = alloca ptr, align 8
  %new_tbl = alloca ptr, align 8
  %__UNIQUE_ID_rcu326 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !4520, metadata !DIExpression()), !dbg !4526
  store ptr %tbl, ptr %tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tbl.addr, metadata !4521, metadata !DIExpression()), !dbg !4527
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_tbl) #20, !dbg !4528
  call void @llvm.dbg.declare(metadata ptr %new_tbl, metadata !4522, metadata !DIExpression()), !dbg !4529
  br label %do.body, !dbg !4530

do.body:                                          ; preds = %do.cond6, %entry
  %0 = load ptr, ptr %tbl.addr, align 8, !dbg !4531
  store ptr %0, ptr %new_tbl, align 8, !dbg !4532
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu326) #20, !dbg !4533
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu326, metadata !4523, metadata !DIExpression()), !dbg !4533
  br label %do.body1, !dbg !4534

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !4536

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !4536

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %tbl.addr, align 8, !dbg !4534
  %future_tbl = getelementptr inbounds %struct.bucket_table, ptr %1, i32 0, i32 5, !dbg !4534
  %2 = load volatile ptr, ptr %future_tbl, align 16, !dbg !4534
  store ptr %2, ptr %tmp, align 8, !dbg !4536
  %3 = load ptr, ptr %tmp, align 8, !dbg !4534
  store ptr %3, ptr %__UNIQUE_ID_rcu326, align 8, !dbg !4533
  br label %do.body2, !dbg !4533

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !4538

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !4538

do.end4:                                          ; preds = %do.cond3
  %4 = load ptr, ptr %__UNIQUE_ID_rcu326, align 8, !dbg !4533
  store ptr %4, ptr %tmp5, align 8, !dbg !4538
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu326) #20, !dbg !4540
  %5 = load ptr, ptr %tmp5, align 8, !dbg !4533
  store ptr %5, ptr %tbl.addr, align 8, !dbg !4541
  br label %do.cond6, !dbg !4542

do.cond6:                                         ; preds = %do.end4
  %6 = load ptr, ptr %tbl.addr, align 8, !dbg !4543
  %tobool = icmp ne ptr %6, null, !dbg !4542
  br i1 %tobool, label %do.body, label %do.end7, !dbg !4542, !llvm.loop !4544

do.end7:                                          ; preds = %do.cond6
  %7 = load ptr, ptr %new_tbl, align 8, !dbg !4546
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_tbl) #20, !dbg !4547
  ret ptr %7, !dbg !4548
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rhashtable_rehash_alloc(ptr noundef %ht, ptr noundef %old_tbl, i32 noundef %size) #0 align 16 !dbg !4549 {
entry:
  %retval = alloca i32, align 4
  %ht.addr = alloca ptr, align 8
  %old_tbl.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %new_tbl = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !4553, metadata !DIExpression()), !dbg !4558
  store ptr %old_tbl, ptr %old_tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_tbl.addr, metadata !4554, metadata !DIExpression()), !dbg !4559
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4555, metadata !DIExpression()), !dbg !4560
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_tbl) #20, !dbg !4561
  call void @llvm.dbg.declare(metadata ptr %new_tbl, metadata !4556, metadata !DIExpression()), !dbg !4562
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #20, !dbg !4563
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4557, metadata !DIExpression()), !dbg !4564
  %0 = load ptr, ptr %ht.addr, align 8, !dbg !4565
  %1 = load i32, ptr %size.addr, align 4, !dbg !4566
  %conv = zext i32 %1 to i64, !dbg !4566
  %call = call ptr @bucket_table_alloc(ptr noundef %0, i64 noundef %conv, i32 noundef 3264) #21, !dbg !4567
  store ptr %call, ptr %new_tbl, align 8, !dbg !4568
  %2 = load ptr, ptr %new_tbl, align 8, !dbg !4569
  %cmp = icmp eq ptr %2, null, !dbg !4571
  br i1 %cmp, label %if.then, label %if.end, !dbg !4572

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4573
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4573

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ht.addr, align 8, !dbg !4574
  %4 = load ptr, ptr %old_tbl.addr, align 8, !dbg !4575
  %5 = load ptr, ptr %new_tbl, align 8, !dbg !4576
  %call2 = call i32 @rhashtable_rehash_attach(ptr noundef %3, ptr noundef %4, ptr noundef %5) #21, !dbg !4577
  store i32 %call2, ptr %err, align 4, !dbg !4578
  %6 = load i32, ptr %err, align 4, !dbg !4579
  %tobool = icmp ne i32 %6, 0, !dbg !4579
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !4581

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %new_tbl, align 8, !dbg !4582
  call void @bucket_table_free(ptr noundef %7) #21, !dbg !4583
  br label %if.end4, !dbg !4583

if.end4:                                          ; preds = %if.then3, %if.end
  %8 = load i32, ptr %err, align 4, !dbg !4584
  store i32 %8, ptr %retval, align 4, !dbg !4585
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4585

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #20, !dbg !4586
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_tbl) #20, !dbg !4586
  %9 = load i32, ptr %retval, align 4, !dbg !4586
  ret i32 %9, !dbg !4586
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rht_shrink_below_30(ptr noundef %ht, ptr noundef %tbl) #4 align 16 !dbg !4587 {
entry:
  %ht.addr = alloca ptr, align 8
  %tbl.addr = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !4589, metadata !DIExpression()), !dbg !4591
  store ptr %tbl, ptr %tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tbl.addr, metadata !4590, metadata !DIExpression()), !dbg !4592
  %0 = load ptr, ptr %ht.addr, align 8, !dbg !4593
  %nelems = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 8, !dbg !4594
  %call = call i32 @atomic_read(ptr noundef %nelems) #21, !dbg !4595
  %1 = load ptr, ptr %tbl.addr, align 8, !dbg !4596
  %size = getelementptr inbounds %struct.bucket_table, ptr %1, i32 0, i32 0, !dbg !4597
  %2 = load i32, ptr %size, align 64, !dbg !4597
  %mul = mul i32 %2, 3, !dbg !4598
  %div = udiv i32 %mul, 10, !dbg !4599
  %cmp = icmp ult i32 %call, %div, !dbg !4600
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4601

land.rhs:                                         ; preds = %entry
  %3 = load ptr, ptr %tbl.addr, align 8, !dbg !4602
  %size1 = getelementptr inbounds %struct.bucket_table, ptr %3, i32 0, i32 0, !dbg !4603
  %4 = load i32, ptr %size1, align 64, !dbg !4603
  %5 = load ptr, ptr %ht.addr, align 8, !dbg !4604
  %p = getelementptr inbounds %struct.rhashtable, ptr %5, i32 0, i32 3, !dbg !4605
  %min_size = getelementptr inbounds %struct.rhashtable_params, ptr %p, i32 0, i32 5, !dbg !4606
  %6 = load i16, ptr %min_size, align 4, !dbg !4606
  %conv = zext i16 %6 to i32, !dbg !4604
  %cmp2 = icmp ugt i32 %4, %conv, !dbg !4607
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ], !dbg !4608
  ret i1 %7, !dbg !4609
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rhashtable_shrink(ptr noundef %ht) #0 align 16 !dbg !4610 {
entry:
  %retval = alloca i32, align 4
  %ht.addr = alloca ptr, align 8
  %old_tbl = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %nelems = alloca i32, align 4
  %size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp51 = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !4614, metadata !DIExpression()), !dbg !4618
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_tbl) #20, !dbg !4619
  call void @llvm.dbg.declare(metadata ptr %old_tbl, metadata !4615, metadata !DIExpression()), !dbg !4620
  br label %do.body, !dbg !4621

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4623

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4623

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %ht.addr, align 8, !dbg !4621
  %tbl = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 0, !dbg !4621
  %1 = load ptr, ptr %tbl, align 8, !dbg !4621
  store ptr %1, ptr %tmp, align 8, !dbg !4623
  %2 = load ptr, ptr %tmp, align 8, !dbg !4621
  store ptr %2, ptr %old_tbl, align 8, !dbg !4620
  call void @llvm.lifetime.start.p0(i64 4, ptr %nelems) #20, !dbg !4625
  call void @llvm.dbg.declare(metadata ptr %nelems, metadata !4616, metadata !DIExpression()), !dbg !4626
  %3 = load ptr, ptr %ht.addr, align 8, !dbg !4627
  %nelems1 = getelementptr inbounds %struct.rhashtable, ptr %3, i32 0, i32 8, !dbg !4628
  %call = call i32 @atomic_read(ptr noundef %nelems1) #21, !dbg !4629
  store i32 %call, ptr %nelems, align 4, !dbg !4626
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #20, !dbg !4630
  call void @llvm.dbg.declare(metadata ptr %size, metadata !4617, metadata !DIExpression()), !dbg !4631
  store i32 0, ptr %size, align 4, !dbg !4631
  %4 = load i32, ptr %nelems, align 4, !dbg !4632
  %tobool = icmp ne i32 %4, 0, !dbg !4632
  br i1 %tobool, label %if.then, label %if.end, !dbg !4634

if.then:                                          ; preds = %do.end
  %5 = load i32, ptr %nelems, align 4, !dbg !4635
  %mul = mul i32 %5, 3, !dbg !4635
  %div = udiv i32 %mul, 2, !dbg !4635
  %6 = call i1 @llvm.is.constant.i32(i32 %div), !dbg !4635
  br i1 %6, label %cond.true, label %cond.false27, !dbg !4635

cond.true:                                        ; preds = %if.then
  %7 = load i32, ptr %nelems, align 4, !dbg !4635
  %mul2 = mul i32 %7, 3, !dbg !4635
  %div3 = udiv i32 %mul2, 2, !dbg !4635
  %cmp = icmp eq i32 %div3, 1, !dbg !4635
  br i1 %cmp, label %cond.true4, label %cond.false, !dbg !4635

cond.true4:                                       ; preds = %cond.true
  br label %cond.end25, !dbg !4635

cond.false:                                       ; preds = %cond.true
  %8 = load i32, ptr %nelems, align 4, !dbg !4635
  %mul5 = mul i32 %8, 3, !dbg !4635
  %div6 = udiv i32 %mul5, 2, !dbg !4635
  %sub = sub i32 %div6, 1, !dbg !4635
  %9 = call i1 @llvm.is.constant.i32(i32 %sub), !dbg !4635
  br i1 %9, label %cond.true7, label %cond.false18, !dbg !4635

cond.true7:                                       ; preds = %cond.false
  %10 = load i32, ptr %nelems, align 4, !dbg !4635
  %mul8 = mul i32 %10, 3, !dbg !4635
  %div9 = udiv i32 %mul8, 2, !dbg !4635
  %sub10 = sub i32 %div9, 1, !dbg !4635
  %cmp11 = icmp ult i32 %sub10, 2, !dbg !4635
  br i1 %cmp11, label %cond.true12, label %cond.false13, !dbg !4635

cond.true12:                                      ; preds = %cond.true7
  br label %cond.end, !dbg !4635

cond.false13:                                     ; preds = %cond.true7
  %11 = load i32, ptr %nelems, align 4, !dbg !4635
  %mul14 = mul i32 %11, 3, !dbg !4635
  %div15 = udiv i32 %mul14, 2, !dbg !4635
  %sub16 = sub i32 %div15, 1, !dbg !4635
  %conv = zext i32 %sub16 to i64, !dbg !4635
  %12 = call i64 @llvm.ctlz.i64(i64 %conv, i1 true), !dbg !4635
  %cast = trunc i64 %12 to i32, !dbg !4635
  %sub17 = sub i32 63, %cast, !dbg !4635
  br label %cond.end, !dbg !4635

cond.end:                                         ; preds = %cond.false13, %cond.true12
  %cond = phi i32 [ 0, %cond.true12 ], [ %sub17, %cond.false13 ], !dbg !4635
  br label %cond.end23, !dbg !4635

cond.false18:                                     ; preds = %cond.false
  %13 = load i32, ptr %nelems, align 4, !dbg !4635
  %mul19 = mul i32 %13, 3, !dbg !4635
  %div20 = udiv i32 %mul19, 2, !dbg !4635
  %sub21 = sub i32 %div20, 1, !dbg !4635
  %call22 = call i32 @__ilog2_u32(i32 noundef %sub21) #22, !dbg !4635
  br label %cond.end23, !dbg !4635

cond.end23:                                       ; preds = %cond.false18, %cond.end
  %cond24 = phi i32 [ %cond, %cond.end ], [ %call22, %cond.false18 ], !dbg !4635
  %add = add i32 %cond24, 1, !dbg !4635
  %sh_prom = zext i32 %add to i64, !dbg !4635
  %shl = shl i64 1, %sh_prom, !dbg !4635
  br label %cond.end25, !dbg !4635

cond.end25:                                       ; preds = %cond.end23, %cond.true4
  %cond26 = phi i64 [ 1, %cond.true4 ], [ %shl, %cond.end23 ], !dbg !4635
  br label %cond.end32, !dbg !4635

cond.false27:                                     ; preds = %if.then
  %14 = load i32, ptr %nelems, align 4, !dbg !4635
  %mul28 = mul i32 %14, 3, !dbg !4635
  %div29 = udiv i32 %mul28, 2, !dbg !4635
  %conv30 = zext i32 %div29 to i64, !dbg !4635
  %call31 = call i64 @__roundup_pow_of_two(i64 noundef %conv30) #22, !dbg !4635
  br label %cond.end32, !dbg !4635

cond.end32:                                       ; preds = %cond.false27, %cond.end25
  %cond33 = phi i64 [ %cond26, %cond.end25 ], [ %call31, %cond.false27 ], !dbg !4635
  %conv34 = trunc i64 %cond33 to i32, !dbg !4635
  store i32 %conv34, ptr %size, align 4, !dbg !4636
  br label %if.end, !dbg !4637

if.end:                                           ; preds = %cond.end32, %do.end
  %15 = load i32, ptr %size, align 4, !dbg !4638
  %16 = load ptr, ptr %ht.addr, align 8, !dbg !4640
  %p = getelementptr inbounds %struct.rhashtable, ptr %16, i32 0, i32 3, !dbg !4641
  %min_size = getelementptr inbounds %struct.rhashtable_params, ptr %p, i32 0, i32 5, !dbg !4642
  %17 = load i16, ptr %min_size, align 4, !dbg !4642
  %conv35 = zext i16 %17 to i32, !dbg !4640
  %cmp36 = icmp ult i32 %15, %conv35, !dbg !4643
  br i1 %cmp36, label %if.then38, label %if.end42, !dbg !4644

if.then38:                                        ; preds = %if.end
  %18 = load ptr, ptr %ht.addr, align 8, !dbg !4645
  %p39 = getelementptr inbounds %struct.rhashtable, ptr %18, i32 0, i32 3, !dbg !4646
  %min_size40 = getelementptr inbounds %struct.rhashtable_params, ptr %p39, i32 0, i32 5, !dbg !4647
  %19 = load i16, ptr %min_size40, align 4, !dbg !4647
  %conv41 = zext i16 %19 to i32, !dbg !4645
  store i32 %conv41, ptr %size, align 4, !dbg !4648
  br label %if.end42, !dbg !4649

if.end42:                                         ; preds = %if.then38, %if.end
  %20 = load ptr, ptr %old_tbl, align 8, !dbg !4650
  %size43 = getelementptr inbounds %struct.bucket_table, ptr %20, i32 0, i32 0, !dbg !4652
  %21 = load i32, ptr %size43, align 64, !dbg !4652
  %22 = load i32, ptr %size, align 4, !dbg !4653
  %cmp44 = icmp ule i32 %21, %22, !dbg !4654
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !4655

if.then46:                                        ; preds = %if.end42
  store i32 0, ptr %retval, align 4, !dbg !4656
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4656

if.end47:                                         ; preds = %if.end42
  br label %do.body48, !dbg !4657

do.body48:                                        ; preds = %if.end47
  br label %do.cond49, !dbg !4660

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !4660

do.end50:                                         ; preds = %do.cond49
  %23 = load ptr, ptr %old_tbl, align 8, !dbg !4657
  %future_tbl = getelementptr inbounds %struct.bucket_table, ptr %23, i32 0, i32 5, !dbg !4657
  %24 = load ptr, ptr %future_tbl, align 16, !dbg !4657
  store ptr %24, ptr %tmp51, align 8, !dbg !4660
  %25 = load ptr, ptr %tmp51, align 8, !dbg !4657
  %tobool52 = icmp ne ptr %25, null, !dbg !4662
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !4663

if.then53:                                        ; preds = %do.end50
  store i32 -17, ptr %retval, align 4, !dbg !4664
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4664

if.end54:                                         ; preds = %do.end50
  %26 = load ptr, ptr %ht.addr, align 8, !dbg !4665
  %27 = load ptr, ptr %old_tbl, align 8, !dbg !4666
  %28 = load i32, ptr %size, align 4, !dbg !4667
  %call55 = call i32 @rhashtable_rehash_alloc(ptr noundef %26, ptr noundef %27, i32 noundef %28) #21, !dbg !4668
  store i32 %call55, ptr %retval, align 4, !dbg !4669
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4669

cleanup:                                          ; preds = %if.end54, %if.then53, %if.then46
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #20, !dbg !4670
  call void @llvm.lifetime.end.p0(i64 4, ptr %nelems) #20, !dbg !4670
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_tbl) #20, !dbg !4670
  %29 = load i32, ptr %retval, align 4, !dbg !4670
  ret i32 %29, !dbg !4670
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rhashtable_rehash_table(ptr noundef %ht) #0 align 16 !dbg !4671 {
entry:
  %retval = alloca i32, align 4
  %ht.addr = alloca ptr, align 8
  %old_tbl = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %new_tbl = alloca ptr, align 8
  %walker = alloca ptr, align 8
  %old_hash = alloca i32, align 4
  %err = alloca i32, align 4
  %tmp4 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %_r_a_p__v = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp48 = alloca ptr, align 8
  %__mptr55 = alloca ptr, align 8
  %tmp58 = alloca ptr, align 8
  %tmp65 = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !4673, metadata !DIExpression()), !dbg !4687
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_tbl) #20, !dbg !4688
  call void @llvm.dbg.declare(metadata ptr %old_tbl, metadata !4674, metadata !DIExpression()), !dbg !4689
  br label %do.body, !dbg !4690

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4692

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4692

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %ht.addr, align 8, !dbg !4690
  %tbl = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 0, !dbg !4690
  %1 = load ptr, ptr %tbl, align 8, !dbg !4690
  store ptr %1, ptr %tmp, align 8, !dbg !4692
  %2 = load ptr, ptr %tmp, align 8, !dbg !4690
  store ptr %2, ptr %old_tbl, align 8, !dbg !4689
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_tbl) #20, !dbg !4694
  call void @llvm.dbg.declare(metadata ptr %new_tbl, metadata !4675, metadata !DIExpression()), !dbg !4695
  call void @llvm.lifetime.start.p0(i64 8, ptr %walker) #20, !dbg !4696
  call void @llvm.dbg.declare(metadata ptr %walker, metadata !4676, metadata !DIExpression()), !dbg !4697
  call void @llvm.lifetime.start.p0(i64 4, ptr %old_hash) #20, !dbg !4698
  call void @llvm.dbg.declare(metadata ptr %old_hash, metadata !4677, metadata !DIExpression()), !dbg !4699
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #20, !dbg !4700
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4678, metadata !DIExpression()), !dbg !4701
  br label %do.body1, !dbg !4702

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !4704

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !4704

do.end3:                                          ; preds = %do.cond2
  %3 = load ptr, ptr %old_tbl, align 8, !dbg !4702
  %future_tbl = getelementptr inbounds %struct.bucket_table, ptr %3, i32 0, i32 5, !dbg !4702
  %4 = load ptr, ptr %future_tbl, align 16, !dbg !4702
  store ptr %4, ptr %tmp4, align 8, !dbg !4704
  %5 = load ptr, ptr %tmp4, align 8, !dbg !4702
  store ptr %5, ptr %new_tbl, align 8, !dbg !4706
  %6 = load ptr, ptr %new_tbl, align 8, !dbg !4707
  %tobool = icmp ne ptr %6, null, !dbg !4707
  br i1 %tobool, label %if.end, label %if.then, !dbg !4709

if.then:                                          ; preds = %do.end3
  store i32 0, ptr %retval, align 4, !dbg !4710
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4710

if.end:                                           ; preds = %do.end3
  store i32 0, ptr %old_hash, align 4, !dbg !4711
  br label %for.cond, !dbg !4713

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, ptr %old_hash, align 4, !dbg !4714
  %8 = load ptr, ptr %old_tbl, align 8, !dbg !4716
  %size = getelementptr inbounds %struct.bucket_table, ptr %8, i32 0, i32 0, !dbg !4717
  %9 = load i32, ptr %size, align 64, !dbg !4717
  %cmp = icmp ult i32 %7, %9, !dbg !4718
  br i1 %cmp, label %for.body, label %for.end, !dbg !4719

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %ht.addr, align 8, !dbg !4720
  %11 = load i32, ptr %old_hash, align 4, !dbg !4722
  %call = call i32 @rhashtable_rehash_chain(ptr noundef %10, i32 noundef %11) #21, !dbg !4723
  store i32 %call, ptr %err, align 4, !dbg !4724
  %12 = load i32, ptr %err, align 4, !dbg !4725
  %tobool5 = icmp ne i32 %12, 0, !dbg !4725
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !4727

if.then6:                                         ; preds = %for.body
  %13 = load i32, ptr %err, align 4, !dbg !4728
  store i32 %13, ptr %retval, align 4, !dbg !4729
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4729

if.end7:                                          ; preds = %for.body
  call void @__might_resched(ptr noundef @.str.2, i32 noundef 331, i32 noundef 0) #21, !dbg !4730
  %call9 = call i32 @_cond_resched() #21, !dbg !4730
  store i32 %call9, ptr %tmp8, align 4, !dbg !4730
  %14 = load i32, ptr %tmp8, align 4, !dbg !4730
  br label %for.inc, !dbg !4732

for.inc:                                          ; preds = %if.end7
  %15 = load i32, ptr %old_hash, align 4, !dbg !4733
  %inc = add i32 %15, 1, !dbg !4733
  store i32 %inc, ptr %old_hash, align 4, !dbg !4733
  br label %for.cond, !dbg !4734, !llvm.loop !4735

for.end:                                          ; preds = %for.cond
  br label %do.body10, !dbg !4737

do.body10:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #20, !dbg !4738
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !4679, metadata !DIExpression()), !dbg !4738
  %16 = load ptr, ptr %new_tbl, align 8, !dbg !4738
  %17 = ptrtoint ptr %16 to i64, !dbg !4738
  store i64 %17, ptr %_r_a_p__v, align 8, !dbg !4738
  br i1 false, label %land.lhs.true, label %if.else, !dbg !4739

land.lhs.true:                                    ; preds = %do.body10
  %18 = load i64, ptr %_r_a_p__v, align 8, !dbg !4739
  %cmp11 = icmp eq i64 %18, 0, !dbg !4739
  br i1 %cmp11, label %if.then12, label %if.else, !dbg !4738

if.then12:                                        ; preds = %land.lhs.true
  br label %do.body13, !dbg !4739

do.body13:                                        ; preds = %if.then12
  br label %do.body14, !dbg !4741

do.body14:                                        ; preds = %do.body13
  br label %do.cond15, !dbg !4743

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !4743

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !4741

do.body17:                                        ; preds = %do.end16
  %19 = load i64, ptr %_r_a_p__v, align 8, !dbg !4745
  %20 = inttoptr i64 %19 to ptr, !dbg !4745
  %21 = load ptr, ptr %ht.addr, align 8, !dbg !4745
  %tbl18 = getelementptr inbounds %struct.rhashtable, ptr %21, i32 0, i32 0, !dbg !4745
  store volatile ptr %20, ptr %tbl18, align 8, !dbg !4745
  br label %do.cond19, !dbg !4745

do.cond19:                                        ; preds = %do.body17
  br label %do.end20, !dbg !4745

do.end20:                                         ; preds = %do.cond19
  br label %do.cond21, !dbg !4741

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !4741

do.end22:                                         ; preds = %do.cond21
  br label %if.end45, !dbg !4741

if.else:                                          ; preds = %land.lhs.true, %do.body10
  br label %do.body23, !dbg !4739

do.body23:                                        ; preds = %if.else
  br label %do.body24, !dbg !4747

do.body24:                                        ; preds = %do.body23
  br label %do.cond25, !dbg !4749

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !4749

do.end26:                                         ; preds = %do.cond25
  br label %do.body27, !dbg !4747

do.body27:                                        ; preds = %do.end26
  br label %do.body28, !dbg !4751

do.body28:                                        ; preds = %do.body27
  br label %do.cond29, !dbg !4753

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !4753

do.end30:                                         ; preds = %do.cond29
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !dbg !4751, !srcloc !4755
  br label %do.body31, !dbg !4751

do.body31:                                        ; preds = %do.end30
  br label %do.body32, !dbg !4756

do.body32:                                        ; preds = %do.body31
  br label %do.cond33, !dbg !4758

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !4758

do.end34:                                         ; preds = %do.cond33
  br label %do.body35, !dbg !4756

do.body35:                                        ; preds = %do.end34
  %22 = load i64, ptr %_r_a_p__v, align 8, !dbg !4760
  %23 = inttoptr i64 %22 to ptr, !dbg !4760
  %24 = load ptr, ptr %ht.addr, align 8, !dbg !4760
  %tbl36 = getelementptr inbounds %struct.rhashtable, ptr %24, i32 0, i32 0, !dbg !4760
  store volatile ptr %23, ptr %tbl36, align 8, !dbg !4760
  br label %do.cond37, !dbg !4760

do.cond37:                                        ; preds = %do.body35
  br label %do.end38, !dbg !4760

do.end38:                                         ; preds = %do.cond37
  br label %do.cond39, !dbg !4756

do.cond39:                                        ; preds = %do.end38
  br label %do.end40, !dbg !4756

do.end40:                                         ; preds = %do.cond39
  br label %do.cond41, !dbg !4751

do.cond41:                                        ; preds = %do.end40
  br label %do.end42, !dbg !4751

do.end42:                                         ; preds = %do.cond41
  br label %do.cond43, !dbg !4747

do.cond43:                                        ; preds = %do.end42
  br label %do.end44, !dbg !4747

do.end44:                                         ; preds = %do.cond43
  br label %if.end45

if.end45:                                         ; preds = %do.end44, %do.end22
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #20, !dbg !4737
  br label %do.cond46, !dbg !4738

do.cond46:                                        ; preds = %if.end45
  br label %do.end47, !dbg !4738

do.end47:                                         ; preds = %do.cond46
  %25 = load ptr, ptr %ht.addr, align 8, !dbg !4762
  %lock = getelementptr inbounds %struct.rhashtable, ptr %25, i32 0, i32 7, !dbg !4763
  call void @spin_lock(ptr noundef %lock) #21, !dbg !4764
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #20, !dbg !4765
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4681, metadata !DIExpression()), !dbg !4765
  %26 = load ptr, ptr %old_tbl, align 8, !dbg !4765
  %walkers = getelementptr inbounds %struct.bucket_table, ptr %26, i32 0, i32 3, !dbg !4765
  %next = getelementptr inbounds %struct.list_head, ptr %walkers, i32 0, i32 0, !dbg !4765
  %27 = load ptr, ptr %next, align 16, !dbg !4765
  store ptr %27, ptr %__mptr, align 8, !dbg !4765
  %28 = load ptr, ptr %__mptr, align 8, !dbg !4765
  %add.ptr = getelementptr i8, ptr %28, i64 0, !dbg !4765
  store ptr %add.ptr, ptr %tmp48, align 8, !dbg !4765
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #20, !dbg !4766
  %29 = load ptr, ptr %tmp48, align 8, !dbg !4765
  store ptr %29, ptr %walker, align 8, !dbg !4766
  br label %for.cond49, !dbg !4766

for.cond49:                                       ; preds = %for.inc54, %do.end47
  %30 = load ptr, ptr %walker, align 8, !dbg !4767
  %list = getelementptr inbounds %struct.rhashtable_walker, ptr %30, i32 0, i32 0, !dbg !4767
  %31 = load ptr, ptr %old_tbl, align 8, !dbg !4767
  %walkers50 = getelementptr inbounds %struct.bucket_table, ptr %31, i32 0, i32 3, !dbg !4767
  %cmp51 = icmp eq ptr %list, %walkers50, !dbg !4767
  %lnot = xor i1 %cmp51, true, !dbg !4767
  br i1 %lnot, label %for.body52, label %for.end60, !dbg !4766

for.body52:                                       ; preds = %for.cond49
  %32 = load ptr, ptr %walker, align 8, !dbg !4768
  %tbl53 = getelementptr inbounds %struct.rhashtable_walker, ptr %32, i32 0, i32 1, !dbg !4769
  store ptr null, ptr %tbl53, align 8, !dbg !4770
  br label %for.inc54, !dbg !4768

for.inc54:                                        ; preds = %for.body52
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr55) #20, !dbg !4771
  call void @llvm.dbg.declare(metadata ptr %__mptr55, metadata !4684, metadata !DIExpression()), !dbg !4771
  %33 = load ptr, ptr %walker, align 8, !dbg !4771
  %list56 = getelementptr inbounds %struct.rhashtable_walker, ptr %33, i32 0, i32 0, !dbg !4771
  %next57 = getelementptr inbounds %struct.list_head, ptr %list56, i32 0, i32 0, !dbg !4771
  %34 = load ptr, ptr %next57, align 8, !dbg !4771
  store ptr %34, ptr %__mptr55, align 8, !dbg !4771
  %35 = load ptr, ptr %__mptr55, align 8, !dbg !4771
  %add.ptr59 = getelementptr i8, ptr %35, i64 0, !dbg !4771
  store ptr %add.ptr59, ptr %tmp58, align 8, !dbg !4771
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr55) #20, !dbg !4767
  %36 = load ptr, ptr %tmp58, align 8, !dbg !4771
  store ptr %36, ptr %walker, align 8, !dbg !4767
  br label %for.cond49, !dbg !4767, !llvm.loop !4772

for.end60:                                        ; preds = %for.cond49
  %37 = load ptr, ptr %old_tbl, align 8, !dbg !4774
  %rcu = getelementptr inbounds %struct.bucket_table, ptr %37, i32 0, i32 4, !dbg !4775
  call void @call_rcu(ptr noundef %rcu, ptr noundef @bucket_table_free_rcu) #21, !dbg !4776
  %38 = load ptr, ptr %ht.addr, align 8, !dbg !4777
  %lock61 = getelementptr inbounds %struct.rhashtable, ptr %38, i32 0, i32 7, !dbg !4778
  call void @spin_unlock(ptr noundef %lock61) #21, !dbg !4779
  br label %do.body62, !dbg !4780

do.body62:                                        ; preds = %for.end60
  br label %do.cond63, !dbg !4782

do.cond63:                                        ; preds = %do.body62
  br label %do.end64, !dbg !4782

do.end64:                                         ; preds = %do.cond63
  %39 = load ptr, ptr %new_tbl, align 8, !dbg !4780
  %future_tbl66 = getelementptr inbounds %struct.bucket_table, ptr %39, i32 0, i32 5, !dbg !4780
  %40 = load ptr, ptr %future_tbl66, align 16, !dbg !4780
  store ptr %40, ptr %tmp65, align 8, !dbg !4782
  %41 = load ptr, ptr %tmp65, align 8, !dbg !4780
  %tobool67 = icmp ne ptr %41, null, !dbg !4784
  %42 = zext i1 %tobool67 to i64, !dbg !4784
  %cond = select i1 %tobool67, i32 -11, i32 0, !dbg !4784
  store i32 %cond, ptr %retval, align 4, !dbg !4785
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4785

cleanup:                                          ; preds = %do.end64, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #20, !dbg !4786
  call void @llvm.lifetime.end.p0(i64 4, ptr %old_hash) #20, !dbg !4786
  call void @llvm.lifetime.end.p0(i64 8, ptr %walker) #20, !dbg !4786
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_tbl) #20, !dbg !4786
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_tbl) #20, !dbg !4786
  %43 = load i32, ptr %retval, align 4, !dbg !4786
  ret i32 %43, !dbg !4786
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rhashtable_rehash_chain(ptr noundef %ht, i32 noundef %old_hash) #0 align 16 !dbg !4787 {
entry:
  %retval = alloca i32, align 4
  %ht.addr = alloca ptr, align 8
  %old_hash.addr = alloca i32, align 4
  %old_tbl = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %bkt = alloca ptr, align 8
  %flags = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !4791, metadata !DIExpression()), !dbg !4797
  store i32 %old_hash, ptr %old_hash.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old_hash.addr, metadata !4792, metadata !DIExpression()), !dbg !4798
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_tbl) #20, !dbg !4799
  call void @llvm.dbg.declare(metadata ptr %old_tbl, metadata !4793, metadata !DIExpression()), !dbg !4800
  br label %do.body, !dbg !4801

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4803

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4803

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %ht.addr, align 8, !dbg !4801
  %tbl = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 0, !dbg !4801
  %1 = load ptr, ptr %tbl, align 8, !dbg !4801
  store ptr %1, ptr %tmp, align 8, !dbg !4803
  %2 = load ptr, ptr %tmp, align 8, !dbg !4801
  store ptr %2, ptr %old_tbl, align 8, !dbg !4800
  call void @llvm.lifetime.start.p0(i64 8, ptr %bkt) #20, !dbg !4805
  call void @llvm.dbg.declare(metadata ptr %bkt, metadata !4794, metadata !DIExpression()), !dbg !4806
  %3 = load ptr, ptr %old_tbl, align 8, !dbg !4807
  %4 = load i32, ptr %old_hash.addr, align 4, !dbg !4808
  %call = call ptr @rht_bucket_var(ptr noundef %3, i32 noundef %4) #21, !dbg !4809
  store ptr %call, ptr %bkt, align 8, !dbg !4806
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #20, !dbg !4810
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4795, metadata !DIExpression()), !dbg !4811
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #20, !dbg !4812
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4796, metadata !DIExpression()), !dbg !4813
  %5 = load ptr, ptr %bkt, align 8, !dbg !4814
  %tobool = icmp ne ptr %5, null, !dbg !4814
  br i1 %tobool, label %if.end, label %if.then, !dbg !4816

if.then:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !4817
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4817

if.end:                                           ; preds = %do.end
  %6 = load ptr, ptr %old_tbl, align 8, !dbg !4818
  %7 = load ptr, ptr %bkt, align 8, !dbg !4819
  %call1 = call i64 @rht_lock(ptr noundef %6, ptr noundef %7) #21, !dbg !4820
  store i64 %call1, ptr %flags, align 8, !dbg !4821
  br label %while.cond, !dbg !4822

while.cond:                                       ; preds = %while.body, %if.end
  %8 = load ptr, ptr %ht.addr, align 8, !dbg !4823
  %9 = load ptr, ptr %bkt, align 8, !dbg !4824
  %10 = load i32, ptr %old_hash.addr, align 4, !dbg !4825
  %call2 = call i32 @rhashtable_rehash_one(ptr noundef %8, ptr noundef %9, i32 noundef %10) #21, !dbg !4826
  store i32 %call2, ptr %err, align 4, !dbg !4827
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4828
  %lnot = xor i1 %tobool3, true, !dbg !4828
  br i1 %lnot, label %while.body, label %while.end, !dbg !4822

while.body:                                       ; preds = %while.cond
  br label %while.cond, !dbg !4822, !llvm.loop !4829

while.end:                                        ; preds = %while.cond
  %11 = load i32, ptr %err, align 4, !dbg !4831
  %cmp = icmp eq i32 %11, -2, !dbg !4833
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !4834

if.then4:                                         ; preds = %while.end
  store i32 0, ptr %err, align 4, !dbg !4835
  br label %if.end5, !dbg !4836

if.end5:                                          ; preds = %if.then4, %while.end
  %12 = load ptr, ptr %old_tbl, align 8, !dbg !4837
  %13 = load ptr, ptr %bkt, align 8, !dbg !4838
  %14 = load i64, ptr %flags, align 8, !dbg !4839
  call void @rht_unlock(ptr noundef %12, ptr noundef %13, i64 noundef %14) #21, !dbg !4840
  %15 = load i32, ptr %err, align 4, !dbg !4841
  store i32 %15, ptr %retval, align 4, !dbg !4842
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4842

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #20, !dbg !4843
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #20, !dbg !4843
  call void @llvm.lifetime.end.p0(i64 8, ptr %bkt) #20, !dbg !4843
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_tbl) #20, !dbg !4843
  %16 = load i32, ptr %retval, align 4, !dbg !4843
  ret i32 %16, !dbg !4843
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4844 dso_local void @call_rcu(ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rhashtable_rehash_one(ptr noundef %ht, ptr noundef %bkt, i32 noundef %old_hash) #0 align 16 !dbg !4847 {
entry:
  %ht.addr = alloca ptr, align 8
  %bkt.addr = alloca ptr, align 8
  %old_hash.addr = alloca i32, align 4
  %old_tbl = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %new_tbl = alloca ptr, align 8
  %err = alloca i32, align 4
  %head = alloca ptr, align 8
  %next = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %pprev = alloca ptr, align 8
  %new_hash = alloca i32, align 4
  %flags = alloca i64, align 8
  %tmp7 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !4851, metadata !DIExpression()), !dbg !4867
  store ptr %bkt, ptr %bkt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bkt.addr, metadata !4852, metadata !DIExpression()), !dbg !4868
  store i32 %old_hash, ptr %old_hash.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old_hash.addr, metadata !4853, metadata !DIExpression()), !dbg !4869
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_tbl) #20, !dbg !4870
  call void @llvm.dbg.declare(metadata ptr %old_tbl, metadata !4854, metadata !DIExpression()), !dbg !4871
  br label %do.body, !dbg !4872

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4874

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4874

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %ht.addr, align 8, !dbg !4872
  %tbl = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 0, !dbg !4872
  %1 = load ptr, ptr %tbl, align 8, !dbg !4872
  store ptr %1, ptr %tmp, align 8, !dbg !4874
  %2 = load ptr, ptr %tmp, align 8, !dbg !4872
  store ptr %2, ptr %old_tbl, align 8, !dbg !4871
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_tbl) #20, !dbg !4876
  call void @llvm.dbg.declare(metadata ptr %new_tbl, metadata !4855, metadata !DIExpression()), !dbg !4877
  %3 = load ptr, ptr %ht.addr, align 8, !dbg !4878
  %4 = load ptr, ptr %old_tbl, align 8, !dbg !4879
  %call = call ptr @rhashtable_last_table(ptr noundef %3, ptr noundef %4) #21, !dbg !4880
  store ptr %call, ptr %new_tbl, align 8, !dbg !4877
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #20, !dbg !4881
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4856, metadata !DIExpression()), !dbg !4882
  store i32 -11, ptr %err, align 4, !dbg !4882
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #20, !dbg !4883
  call void @llvm.dbg.declare(metadata ptr %head, metadata !4857, metadata !DIExpression()), !dbg !4884
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #20, !dbg !4883
  call void @llvm.dbg.declare(metadata ptr %next, metadata !4858, metadata !DIExpression()), !dbg !4885
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #20, !dbg !4883
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !4859, metadata !DIExpression()), !dbg !4886
  call void @llvm.lifetime.start.p0(i64 8, ptr %pprev) #20, !dbg !4887
  call void @llvm.dbg.declare(metadata ptr %pprev, metadata !4860, metadata !DIExpression()), !dbg !4888
  store ptr null, ptr %pprev, align 8, !dbg !4888
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_hash) #20, !dbg !4889
  call void @llvm.dbg.declare(metadata ptr %new_hash, metadata !4861, metadata !DIExpression()), !dbg !4890
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #20, !dbg !4891
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4862, metadata !DIExpression()), !dbg !4892
  %5 = load ptr, ptr %new_tbl, align 8, !dbg !4893
  %nest = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 1, !dbg !4895
  %6 = load i32, ptr %nest, align 4, !dbg !4895
  %tobool = icmp ne i32 %6, 0, !dbg !4893
  br i1 %tobool, label %if.then, label %if.end, !dbg !4896

if.then:                                          ; preds = %do.end
  br label %out, !dbg !4897

if.end:                                           ; preds = %do.end
  store i32 -2, ptr %err, align 4, !dbg !4898
  %7 = load ptr, ptr %bkt.addr, align 8, !dbg !4899
  %8 = load ptr, ptr %old_tbl, align 8, !dbg !4899
  %9 = load i32, ptr %old_hash.addr, align 4, !dbg !4899
  %call2 = call ptr @rht_ptr(ptr noundef %7, ptr noundef %8, i32 noundef %9) #21, !dbg !4899
  store ptr %call2, ptr %entry1, align 8, !dbg !4899
  br label %for.cond, !dbg !4899

for.cond:                                         ; preds = %do.end15, %if.end
  %10 = load ptr, ptr %entry1, align 8, !dbg !4901
  %call3 = call zeroext i1 @rht_is_a_nulls(ptr noundef %10) #21, !dbg !4901
  %lnot = xor i1 %call3, true, !dbg !4901
  br i1 %lnot, label %for.body, label %for.end, !dbg !4899

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %err, align 4, !dbg !4903
  br label %do.body4, !dbg !4905

do.body4:                                         ; preds = %for.body
  br label %do.cond5, !dbg !4907

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !4907

do.end6:                                          ; preds = %do.cond5
  %11 = load ptr, ptr %entry1, align 8, !dbg !4905
  %next8 = getelementptr inbounds %struct.rhash_head, ptr %11, i32 0, i32 0, !dbg !4905
  %12 = load ptr, ptr %next8, align 8, !dbg !4905
  store ptr %12, ptr %tmp7, align 8, !dbg !4907
  %13 = load ptr, ptr %tmp7, align 8, !dbg !4905
  store ptr %13, ptr %next, align 8, !dbg !4909
  %14 = load ptr, ptr %next, align 8, !dbg !4910
  %call9 = call zeroext i1 @rht_is_a_nulls(ptr noundef %14) #21, !dbg !4912
  br i1 %call9, label %if.then10, label %if.end11, !dbg !4913

if.then10:                                        ; preds = %do.end6
  br label %for.end, !dbg !4914

if.end11:                                         ; preds = %do.end6
  %15 = load ptr, ptr %entry1, align 8, !dbg !4915
  %next12 = getelementptr inbounds %struct.rhash_head, ptr %15, i32 0, i32 0, !dbg !4916
  store ptr %next12, ptr %pprev, align 8, !dbg !4917
  br label %for.inc, !dbg !4918

for.inc:                                          ; preds = %if.end11
  br label %do.body13, !dbg !4919

do.body13:                                        ; preds = %for.inc
  br label %do.cond14, !dbg !4921

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !4921

do.end15:                                         ; preds = %do.cond14
  %16 = load ptr, ptr %entry1, align 8, !dbg !4919
  %next17 = getelementptr inbounds %struct.rhash_head, ptr %16, i32 0, i32 0, !dbg !4919
  %17 = load ptr, ptr %next17, align 8, !dbg !4919
  store ptr %17, ptr %tmp16, align 8, !dbg !4921
  %18 = load ptr, ptr %tmp16, align 8, !dbg !4919
  store ptr %18, ptr %entry1, align 8, !dbg !4901
  br label %for.cond, !dbg !4901, !llvm.loop !4923

for.end:                                          ; preds = %if.then10, %for.cond
  %19 = load i32, ptr %err, align 4, !dbg !4925
  %tobool18 = icmp ne i32 %19, 0, !dbg !4925
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !4927

if.then19:                                        ; preds = %for.end
  br label %out, !dbg !4928

if.end20:                                         ; preds = %for.end
  %20 = load ptr, ptr %ht.addr, align 8, !dbg !4929
  %21 = load ptr, ptr %new_tbl, align 8, !dbg !4930
  %22 = load ptr, ptr %entry1, align 8, !dbg !4931
  %call21 = call i32 @head_hashfn(ptr noundef %20, ptr noundef %21, ptr noundef %22) #21, !dbg !4932
  store i32 %call21, ptr %new_hash, align 4, !dbg !4933
  %23 = load ptr, ptr %new_tbl, align 8, !dbg !4934
  %24 = load ptr, ptr %new_tbl, align 8, !dbg !4935
  %buckets = getelementptr inbounds %struct.bucket_table, ptr %24, i32 0, i32 8, !dbg !4936
  %25 = load i32, ptr %new_hash, align 4, !dbg !4937
  %idxprom = zext i32 %25 to i64, !dbg !4935
  %arrayidx = getelementptr [0 x ptr], ptr %buckets, i64 0, i64 %idxprom, !dbg !4935
  %call22 = call i64 @rht_lock_nested(ptr noundef %23, ptr noundef %arrayidx, i32 noundef 1) #21, !dbg !4938
  store i64 %call22, ptr %flags, align 8, !dbg !4939
  %26 = load ptr, ptr %new_tbl, align 8, !dbg !4940
  %buckets23 = getelementptr inbounds %struct.bucket_table, ptr %26, i32 0, i32 8, !dbg !4941
  %arraydecay = getelementptr inbounds [0 x ptr], ptr %buckets23, i64 0, i64 0, !dbg !4940
  %27 = load i32, ptr %new_hash, align 4, !dbg !4942
  %idx.ext = zext i32 %27 to i64, !dbg !4943
  %add.ptr = getelementptr ptr, ptr %arraydecay, i64 %idx.ext, !dbg !4943
  %28 = load ptr, ptr %new_tbl, align 8, !dbg !4944
  %29 = load i32, ptr %new_hash, align 4, !dbg !4945
  %call24 = call ptr @rht_ptr(ptr noundef %add.ptr, ptr noundef %28, i32 noundef %29) #21, !dbg !4946
  store ptr %call24, ptr %head, align 8, !dbg !4947
  br label %do.body25, !dbg !4948

do.body25:                                        ; preds = %if.end20
  br label %do.body26, !dbg !4949

do.body26:                                        ; preds = %do.body25
  br label %do.body27, !dbg !4951

do.body27:                                        ; preds = %do.body26
  br label %do.cond28, !dbg !4953

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !4953

do.end29:                                         ; preds = %do.cond28
  br label %do.body30, !dbg !4951

do.body30:                                        ; preds = %do.end29
  %30 = load ptr, ptr %head, align 8, !dbg !4955
  %31 = load ptr, ptr %entry1, align 8, !dbg !4955
  %next31 = getelementptr inbounds %struct.rhash_head, ptr %31, i32 0, i32 0, !dbg !4955
  store volatile ptr %30, ptr %next31, align 8, !dbg !4955
  br label %do.cond32, !dbg !4955

do.cond32:                                        ; preds = %do.body30
  br label %do.end33, !dbg !4955

do.end33:                                         ; preds = %do.cond32
  br label %do.cond34, !dbg !4951

do.cond34:                                        ; preds = %do.end33
  br label %do.end35, !dbg !4951

do.end35:                                         ; preds = %do.cond34
  br label %do.cond36, !dbg !4949

do.cond36:                                        ; preds = %do.end35
  br label %do.end37, !dbg !4949

do.end37:                                         ; preds = %do.cond36
  %32 = load ptr, ptr %new_tbl, align 8, !dbg !4957
  %33 = load ptr, ptr %new_tbl, align 8, !dbg !4958
  %buckets38 = getelementptr inbounds %struct.bucket_table, ptr %33, i32 0, i32 8, !dbg !4959
  %34 = load i32, ptr %new_hash, align 4, !dbg !4960
  %idxprom39 = zext i32 %34 to i64, !dbg !4958
  %arrayidx40 = getelementptr [0 x ptr], ptr %buckets38, i64 0, i64 %idxprom39, !dbg !4958
  %35 = load ptr, ptr %entry1, align 8, !dbg !4961
  %36 = load i64, ptr %flags, align 8, !dbg !4962
  call void @rht_assign_unlock(ptr noundef %32, ptr noundef %arrayidx40, ptr noundef %35, i64 noundef %36) #21, !dbg !4963
  %37 = load ptr, ptr %pprev, align 8, !dbg !4964
  %tobool41 = icmp ne ptr %37, null, !dbg !4964
  br i1 %tobool41, label %if.then42, label %if.else78, !dbg !4965

if.then42:                                        ; preds = %do.end37
  br label %do.body43, !dbg !4966

do.body43:                                        ; preds = %if.then42
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #20, !dbg !4967
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !4863, metadata !DIExpression()), !dbg !4967
  %38 = load ptr, ptr %next, align 8, !dbg !4967
  %39 = ptrtoint ptr %38 to i64, !dbg !4967
  store i64 %39, ptr %_r_a_p__v, align 8, !dbg !4967
  br i1 false, label %land.lhs.true, label %if.else, !dbg !4968

land.lhs.true:                                    ; preds = %do.body43
  %40 = load i64, ptr %_r_a_p__v, align 8, !dbg !4968
  %cmp = icmp eq i64 %40, 0, !dbg !4968
  br i1 %cmp, label %if.then44, label %if.else, !dbg !4967

if.then44:                                        ; preds = %land.lhs.true
  br label %do.body45, !dbg !4968

do.body45:                                        ; preds = %if.then44
  br label %do.body46, !dbg !4970

do.body46:                                        ; preds = %do.body45
  br label %do.cond47, !dbg !4972

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !4972

do.end48:                                         ; preds = %do.cond47
  br label %do.body49, !dbg !4970

do.body49:                                        ; preds = %do.end48
  %41 = load i64, ptr %_r_a_p__v, align 8, !dbg !4974
  %42 = inttoptr i64 %41 to ptr, !dbg !4974
  %43 = load ptr, ptr %pprev, align 8, !dbg !4974
  store volatile ptr %42, ptr %43, align 8, !dbg !4974
  br label %do.cond50, !dbg !4974

do.cond50:                                        ; preds = %do.body49
  br label %do.end51, !dbg !4974

do.end51:                                         ; preds = %do.cond50
  br label %do.cond52, !dbg !4970

do.cond52:                                        ; preds = %do.end51
  br label %do.end53, !dbg !4970

do.end53:                                         ; preds = %do.cond52
  br label %if.end75, !dbg !4970

if.else:                                          ; preds = %land.lhs.true, %do.body43
  br label %do.body54, !dbg !4968

do.body54:                                        ; preds = %if.else
  br label %do.body55, !dbg !4976

do.body55:                                        ; preds = %do.body54
  br label %do.cond56, !dbg !4978

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !4978

do.end57:                                         ; preds = %do.cond56
  br label %do.body58, !dbg !4976

do.body58:                                        ; preds = %do.end57
  br label %do.body59, !dbg !4980

do.body59:                                        ; preds = %do.body58
  br label %do.cond60, !dbg !4982

do.cond60:                                        ; preds = %do.body59
  br label %do.end61, !dbg !4982

do.end61:                                         ; preds = %do.cond60
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !dbg !4980, !srcloc !4984
  br label %do.body62, !dbg !4980

do.body62:                                        ; preds = %do.end61
  br label %do.body63, !dbg !4985

do.body63:                                        ; preds = %do.body62
  br label %do.cond64, !dbg !4987

do.cond64:                                        ; preds = %do.body63
  br label %do.end65, !dbg !4987

do.end65:                                         ; preds = %do.cond64
  br label %do.body66, !dbg !4985

do.body66:                                        ; preds = %do.end65
  %44 = load i64, ptr %_r_a_p__v, align 8, !dbg !4989
  %45 = inttoptr i64 %44 to ptr, !dbg !4989
  %46 = load ptr, ptr %pprev, align 8, !dbg !4989
  store volatile ptr %45, ptr %46, align 8, !dbg !4989
  br label %do.cond67, !dbg !4989

do.cond67:                                        ; preds = %do.body66
  br label %do.end68, !dbg !4989

do.end68:                                         ; preds = %do.cond67
  br label %do.cond69, !dbg !4985

do.cond69:                                        ; preds = %do.end68
  br label %do.end70, !dbg !4985

do.end70:                                         ; preds = %do.cond69
  br label %do.cond71, !dbg !4980

do.cond71:                                        ; preds = %do.end70
  br label %do.end72, !dbg !4980

do.end72:                                         ; preds = %do.cond71
  br label %do.cond73, !dbg !4976

do.cond73:                                        ; preds = %do.end72
  br label %do.end74, !dbg !4976

do.end74:                                         ; preds = %do.cond73
  br label %if.end75

if.end75:                                         ; preds = %do.end74, %do.end53
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #20, !dbg !4966
  br label %do.cond76, !dbg !4967

do.cond76:                                        ; preds = %if.end75
  br label %do.end77, !dbg !4967

do.end77:                                         ; preds = %do.cond76
  br label %if.end79, !dbg !4967

if.else78:                                        ; preds = %do.end37
  %47 = load ptr, ptr %bkt.addr, align 8, !dbg !4991
  %48 = load ptr, ptr %next, align 8, !dbg !4992
  call void @rht_assign_locked(ptr noundef %47, ptr noundef %48) #21, !dbg !4993
  br label %if.end79

if.end79:                                         ; preds = %if.else78, %do.end77
  br label %out, !dbg !4964

out:                                              ; preds = %if.end79, %if.then19, %if.then
  call void @llvm.dbg.label(metadata !4866), !dbg !4994
  %49 = load i32, ptr %err, align 4, !dbg !4995
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #20, !dbg !4996
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_hash) #20, !dbg !4996
  call void @llvm.lifetime.end.p0(i64 8, ptr %pprev) #20, !dbg !4996
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #20, !dbg !4996
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #20, !dbg !4996
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #20, !dbg !4996
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #20, !dbg !4996
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_tbl) #20, !dbg !4996
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_tbl) #20, !dbg !4996
  ret i32 %49, !dbg !4997
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @head_hashfn(ptr noundef %ht, ptr noundef %tbl, ptr noundef %he) #0 align 16 !dbg !4998 {
entry:
  %ht.addr = alloca ptr, align 8
  %tbl.addr = alloca ptr, align 8
  %he.addr = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !5002, metadata !DIExpression()), !dbg !5005
  store ptr %tbl, ptr %tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tbl.addr, metadata !5003, metadata !DIExpression()), !dbg !5006
  store ptr %he, ptr %he.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %he.addr, metadata !5004, metadata !DIExpression()), !dbg !5007
  %0 = load ptr, ptr %ht.addr, align 8, !dbg !5008
  %1 = load ptr, ptr %tbl.addr, align 8, !dbg !5009
  %2 = load ptr, ptr %he.addr, align 8, !dbg !5010
  %3 = load ptr, ptr %ht.addr, align 8, !dbg !5011
  %p = getelementptr inbounds %struct.rhashtable, ptr %3, i32 0, i32 3, !dbg !5012
  %call = call i32 @rht_head_hashfn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef byval(%struct.rhashtable_params) align 8 %p) #21, !dbg !5013
  ret i32 %call, !dbg !5014
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rht_lock_nested(ptr noundef %tbl, ptr noundef %bucket, i32 noundef %subclass) #4 align 16 !dbg !5015 {
entry:
  %tbl.addr = alloca ptr, align 8
  %bucket.addr = alloca ptr, align 8
  %subclass.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %tbl, ptr %tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tbl.addr, metadata !5019, metadata !DIExpression()), !dbg !5028
  store ptr %bucket, ptr %bucket.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bucket.addr, metadata !5020, metadata !DIExpression()), !dbg !5029
  store i32 %subclass, ptr %subclass.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %subclass.addr, metadata !5021, metadata !DIExpression()), !dbg !5030
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #20, !dbg !5031
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5022, metadata !DIExpression()), !dbg !5032
  br label %do.body, !dbg !5033

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5034

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #20, !dbg !5035
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5023, metadata !DIExpression()), !dbg !5035
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #20, !dbg !5035
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5027, metadata !DIExpression()), !dbg !5035
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5035
  %conv = zext i1 %cmp to i32, !dbg !5035
  store i32 1, ptr %tmp, align 4, !dbg !5035
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #20, !dbg !5036
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #20, !dbg !5036
  %0 = load i32, ptr %tmp, align 4, !dbg !5035
  %call = call i64 @arch_local_irq_save() #21, !dbg !5036
  store i64 %call, ptr %flags, align 8, !dbg !5036
  br label %do.cond, !dbg !5036

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5036

do.end:                                           ; preds = %do.cond
  br label %do.cond2, !dbg !5034

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !5034

do.end3:                                          ; preds = %do.cond2
  %1 = load ptr, ptr %bucket.addr, align 8, !dbg !5037
  call void @bit_spin_lock(i32 noundef 0, ptr noundef %1) #21, !dbg !5038
  br label %do.body4, !dbg !5039

do.body4:                                         ; preds = %do.end3
  br label %do.cond5, !dbg !5040

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5040

do.end6:                                          ; preds = %do.cond5
  %2 = load i64, ptr %flags, align 8, !dbg !5042
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #20, !dbg !5043
  ret i64 %2, !dbg !5044
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj, i64 noundef %flags) #4 align 16 !dbg !396 {
entry:
  %tbl.addr = alloca ptr, align 8
  %bkt.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %_r_a_p__v = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %tbl, ptr %tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tbl.addr, metadata !400, metadata !DIExpression()), !dbg !5045
  store ptr %bkt, ptr %bkt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bkt.addr, metadata !401, metadata !DIExpression()), !dbg !5046
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !402, metadata !DIExpression()), !dbg !5047
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !403, metadata !DIExpression()), !dbg !5048
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !5049
  %call = call zeroext i1 @rht_is_a_nulls(ptr noundef %0) #21, !dbg !5051
  br i1 %call, label %if.then, label %if.end, !dbg !5052

if.then:                                          ; preds = %entry
  store ptr null, ptr %obj.addr, align 8, !dbg !5053
  br label %if.end, !dbg !5054

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !5055

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !5056

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !5058

do.body1:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #20, !dbg !5059
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !404, metadata !DIExpression()), !dbg !5059
  %1 = load ptr, ptr %obj.addr, align 8, !dbg !5059
  %2 = ptrtoint ptr %1 to i64, !dbg !5059
  store i64 %2, ptr %_r_a_p__v, align 8, !dbg !5059
  br i1 false, label %land.lhs.true, label %if.else, !dbg !5060

land.lhs.true:                                    ; preds = %do.body1
  %3 = load i64, ptr %_r_a_p__v, align 8, !dbg !5060
  %cmp = icmp eq i64 %3, 0, !dbg !5060
  br i1 %cmp, label %if.then2, label %if.else, !dbg !5059

if.then2:                                         ; preds = %land.lhs.true
  br label %do.body3, !dbg !5060

do.body3:                                         ; preds = %if.then2
  br label %do.body4, !dbg !5062

do.body4:                                         ; preds = %do.body3
  br label %do.cond, !dbg !5064

do.cond:                                          ; preds = %do.body4
  br label %do.end5, !dbg !5064

do.end5:                                          ; preds = %do.cond
  br label %do.body6, !dbg !5062

do.body6:                                         ; preds = %do.end5
  %4 = load i64, ptr %_r_a_p__v, align 8, !dbg !5066
  %5 = inttoptr i64 %4 to ptr, !dbg !5066
  %6 = load ptr, ptr %bkt.addr, align 8, !dbg !5066
  store volatile ptr %5, ptr %6, align 8, !dbg !5066
  br label %do.cond7, !dbg !5066

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !5066

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !5062

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !5062

do.end10:                                         ; preds = %do.cond9
  br label %if.end32, !dbg !5062

if.else:                                          ; preds = %land.lhs.true, %do.body1
  br label %do.body11, !dbg !5060

do.body11:                                        ; preds = %if.else
  br label %do.body12, !dbg !5068

do.body12:                                        ; preds = %do.body11
  br label %do.cond13, !dbg !5070

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5070

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !5068

do.body15:                                        ; preds = %do.end14
  br label %do.body16, !dbg !5072

do.body16:                                        ; preds = %do.body15
  br label %do.cond17, !dbg !5074

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !5074

do.end18:                                         ; preds = %do.cond17
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !dbg !5072, !srcloc !5076
  br label %do.body19, !dbg !5072

do.body19:                                        ; preds = %do.end18
  br label %do.body20, !dbg !5077

do.body20:                                        ; preds = %do.body19
  br label %do.cond21, !dbg !5079

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !5079

do.end22:                                         ; preds = %do.cond21
  br label %do.body23, !dbg !5077

do.body23:                                        ; preds = %do.end22
  %7 = load i64, ptr %_r_a_p__v, align 8, !dbg !5081
  %8 = inttoptr i64 %7 to ptr, !dbg !5081
  %9 = load ptr, ptr %bkt.addr, align 8, !dbg !5081
  store volatile ptr %8, ptr %9, align 8, !dbg !5081
  br label %do.cond24, !dbg !5081

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !5081

do.end25:                                         ; preds = %do.cond24
  br label %do.cond26, !dbg !5077

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !5077

do.end27:                                         ; preds = %do.cond26
  br label %do.cond28, !dbg !5072

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !5072

do.end29:                                         ; preds = %do.cond28
  br label %do.cond30, !dbg !5068

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !5068

do.end31:                                         ; preds = %do.cond30
  br label %if.end32

if.end32:                                         ; preds = %do.end31, %do.end10
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #20, !dbg !5058
  br label %do.end34, !dbg !5059

do.end34:                                         ; preds = %if.end32
  br label %do.body35, !dbg !5083

do.body35:                                        ; preds = %do.end34
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !dbg !5084, !srcloc !5086
  %call36 = call zeroext i1 @__preempt_count_dec_and_test() #21, !dbg !5087
  %lnot = xor i1 %call36, true, !dbg !5087
  %lnot37 = xor i1 %lnot, true, !dbg !5087
  %lnot.ext = zext i1 %lnot37 to i32, !dbg !5087
  %conv = sext i32 %lnot.ext to i64, !dbg !5087
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5087
  %tobool = icmp ne i64 %expval, 0, !dbg !5087
  br i1 %tobool, label %if.then38, label %if.end42, !dbg !5084

if.then38:                                        ; preds = %do.body35
  br label %do.body39, !dbg !5087

do.body39:                                        ; preds = %if.then38
  %10 = call i64 @llvm.read_register.i64(metadata !417), !dbg !5089
  %11 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %10) #20, !dbg !5089, !srcloc !5091
  call void @llvm.write_register.i64(metadata !417, i64 %11), !dbg !5089
  br label %do.end41, !dbg !5089

do.end41:                                         ; preds = %do.body39
  br label %if.end42, !dbg !5089

if.end42:                                         ; preds = %do.end41, %do.body35
  br label %do.end44, !dbg !5084

do.end44:                                         ; preds = %if.end42
  br label %do.body45, !dbg !5092

do.body45:                                        ; preds = %do.end44
  br label %do.body46, !dbg !5093

do.body46:                                        ; preds = %do.body45
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #20, !dbg !5094
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !406, metadata !DIExpression()), !dbg !5094
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #20, !dbg !5094
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !410, metadata !DIExpression()), !dbg !5094
  %cmp47 = icmp eq ptr %__dummy, %__dummy2, !dbg !5094
  %conv48 = zext i1 %cmp47 to i32, !dbg !5094
  store i32 1, ptr %tmp, align 4, !dbg !5094
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #20, !dbg !5095
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #20, !dbg !5095
  %12 = load i32, ptr %tmp, align 4, !dbg !5094
  br label %do.body49, !dbg !5095

do.body49:                                        ; preds = %do.body46
  br label %do.end51, !dbg !5096

do.end51:                                         ; preds = %do.body49
  %13 = load i64, ptr %flags.addr, align 8, !dbg !5095
  call void @arch_local_irq_restore(i64 noundef %13) #21, !dbg !5095
  br label %do.end53, !dbg !5095

do.end53:                                         ; preds = %do.end51
  br label %do.end55, !dbg !5093

do.end55:                                         ; preds = %do.end53
  ret void, !dbg !5098
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @nested_bucket_table_free(ptr noundef %tbl) #0 align 16 !dbg !5099 {
entry:
  %tbl.addr = alloca ptr, align 8
  %size = alloca i32, align 4
  %len = alloca i32, align 4
  %ntbl = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %tbl, ptr %tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tbl.addr, metadata !5101, metadata !DIExpression()), !dbg !5106
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #20, !dbg !5107
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5102, metadata !DIExpression()), !dbg !5108
  %0 = load ptr, ptr %tbl.addr, align 8, !dbg !5109
  %size1 = getelementptr inbounds %struct.bucket_table, ptr %0, i32 0, i32 0, !dbg !5110
  %1 = load i32, ptr %size1, align 64, !dbg !5110
  %2 = load ptr, ptr %tbl.addr, align 8, !dbg !5111
  %nest = getelementptr inbounds %struct.bucket_table, ptr %2, i32 0, i32 1, !dbg !5112
  %3 = load i32, ptr %nest, align 4, !dbg !5112
  %shr = lshr i32 %1, %3, !dbg !5113
  store i32 %shr, ptr %size, align 4, !dbg !5108
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #20, !dbg !5114
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5103, metadata !DIExpression()), !dbg !5115
  %4 = load ptr, ptr %tbl.addr, align 8, !dbg !5116
  %nest2 = getelementptr inbounds %struct.bucket_table, ptr %4, i32 0, i32 1, !dbg !5117
  %5 = load i32, ptr %nest2, align 4, !dbg !5117
  %shl = shl i32 1, %5, !dbg !5118
  store i32 %shl, ptr %len, align 4, !dbg !5115
  call void @llvm.lifetime.start.p0(i64 8, ptr %ntbl) #20, !dbg !5119
  call void @llvm.dbg.declare(metadata ptr %ntbl, metadata !5104, metadata !DIExpression()), !dbg !5120
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #20, !dbg !5121
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5105, metadata !DIExpression()), !dbg !5122
  %6 = load ptr, ptr %tbl.addr, align 8, !dbg !5123
  %call = call ptr @nested_table_top(ptr noundef %6) #21, !dbg !5124
  store ptr %call, ptr %ntbl, align 8, !dbg !5125
  store i32 0, ptr %i, align 4, !dbg !5126
  br label %for.cond, !dbg !5128

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, ptr %i, align 4, !dbg !5129
  %8 = load i32, ptr %len, align 4, !dbg !5131
  %cmp = icmp ult i32 %7, %8, !dbg !5132
  br i1 %cmp, label %for.body, label %for.end, !dbg !5133

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %ntbl, align 8, !dbg !5134
  %10 = load i32, ptr %i, align 4, !dbg !5135
  %idx.ext = zext i32 %10 to i64, !dbg !5136
  %add.ptr = getelementptr %union.nested_table, ptr %9, i64 %idx.ext, !dbg !5136
  %11 = load i32, ptr %size, align 4, !dbg !5137
  call void @nested_table_free(ptr noundef %add.ptr, i32 noundef %11) #21, !dbg !5138
  br label %for.inc, !dbg !5138

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !dbg !5139
  %inc = add i32 %12, 1, !dbg !5139
  store i32 %inc, ptr %i, align 4, !dbg !5139
  br label %for.cond, !dbg !5140, !llvm.loop !5141

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %ntbl, align 8, !dbg !5143
  call void @kfree(ptr noundef %13) #21, !dbg !5144
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #20, !dbg !5145
  call void @llvm.lifetime.end.p0(i64 8, ptr %ntbl) #20, !dbg !5145
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #20, !dbg !5145
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #20, !dbg !5145
  ret void, !dbg !5145
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5146 dso_local void @kvfree(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @nested_table_free(ptr noundef %ntbl, i32 noundef %size) #0 align 16 !dbg !5147 {
entry:
  %ntbl.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %shift = alloca i32, align 4
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ntbl, ptr %ntbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ntbl.addr, metadata !5151, metadata !DIExpression()), !dbg !5156
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5152, metadata !DIExpression()), !dbg !5157
  call void @llvm.lifetime.start.p0(i64 4, ptr %shift) #20, !dbg !5158
  call void @llvm.dbg.declare(metadata ptr %shift, metadata !5153, metadata !DIExpression()), !dbg !5159
  store i32 9, ptr %shift, align 4, !dbg !5159
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #20, !dbg !5160
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5154, metadata !DIExpression()), !dbg !5161
  store i32 512, ptr %len, align 4, !dbg !5161
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #20, !dbg !5162
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5155, metadata !DIExpression()), !dbg !5163
  br label %do.body, !dbg !5164

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5166

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5166

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %ntbl.addr, align 8, !dbg !5164
  %1 = load ptr, ptr %0, align 8, !dbg !5164
  store ptr %1, ptr %tmp, align 8, !dbg !5166
  %2 = load ptr, ptr %tmp, align 8, !dbg !5164
  store ptr %2, ptr %ntbl.addr, align 8, !dbg !5168
  %3 = load ptr, ptr %ntbl.addr, align 8, !dbg !5169
  %tobool = icmp ne ptr %3, null, !dbg !5169
  br i1 %tobool, label %if.end, label %if.then, !dbg !5171

if.then:                                          ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5172

if.end:                                           ; preds = %do.end
  %4 = load i32, ptr %size.addr, align 4, !dbg !5173
  %cmp = icmp ugt i32 %4, 512, !dbg !5175
  br i1 %cmp, label %if.then1, label %if.end3, !dbg !5176

if.then1:                                         ; preds = %if.end
  %5 = load i32, ptr %size.addr, align 4, !dbg !5177
  %shr = lshr i32 %5, 9, !dbg !5177
  store i32 %shr, ptr %size.addr, align 4, !dbg !5177
  store i32 0, ptr %i, align 4, !dbg !5179
  br label %for.cond, !dbg !5181

for.cond:                                         ; preds = %for.inc, %if.then1
  %6 = load i32, ptr %i, align 4, !dbg !5182
  %cmp2 = icmp ult i32 %6, 512, !dbg !5184
  br i1 %cmp2, label %for.body, label %for.end, !dbg !5185

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %ntbl.addr, align 8, !dbg !5186
  %8 = load i32, ptr %i, align 4, !dbg !5187
  %idx.ext = zext i32 %8 to i64, !dbg !5188
  %add.ptr = getelementptr %union.nested_table, ptr %7, i64 %idx.ext, !dbg !5188
  %9 = load i32, ptr %size.addr, align 4, !dbg !5189
  call void @nested_table_free(ptr noundef %add.ptr, i32 noundef %9) #21, !dbg !5190
  br label %for.inc, !dbg !5190

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !dbg !5191
  %inc = add i32 %10, 1, !dbg !5191
  store i32 %inc, ptr %i, align 4, !dbg !5191
  br label %for.cond, !dbg !5192, !llvm.loop !5193

for.end:                                          ; preds = %for.cond
  br label %if.end3, !dbg !5195

if.end3:                                          ; preds = %for.end, %if.end
  %11 = load ptr, ptr %ntbl.addr, align 8, !dbg !5196
  call void @kfree(ptr noundef %11) #21, !dbg !5197
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5198
  br label %cleanup, !dbg !5198

cleanup:                                          ; preds = %if.end3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #20, !dbg !5198
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #20, !dbg !5198
  call void @llvm.lifetime.end.p0(i64 4, ptr %shift) #20, !dbg !5198
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5198

unreachable:                                      ; preds = %cleanup
  unreachable
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #13 = { nocallback nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #18 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #19 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #20 = { nounwind }
attributes #21 = { noredzone }
attributes #22 = { noredzone nounwind willreturn memory(none) }
attributes #23 = { noredzone allocsize(0) }
attributes #24 = { nounwind memory(read) }
attributes #25 = { noredzone allocsize(2) }
attributes #26 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!417}
!llvm.module.flags = !{!418, !419, !420, !421, !422, !423, !424, !425}
!llvm.ident = !{!426}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rhashtable_insert_slow354", scope: !2, file: !3, line: 646, type: !48, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.rhashtable.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/rhashtable\22 -D KBUILD_BASENAME=\22rhashtable\22 -D KBUILD_MODNAME=\22rhashtable\22 -D __KBUILD_MODNAME=kmod_rhashtable -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/rhashtable.ll lib/rhashtable.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !47, globals: !280, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/rhashtable.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f30f920c326ce9034c3a54073dce92a5")
!4 = !{!5, !32, !37}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 30, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!9 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!10 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!11 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!12 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!13 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!14 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!15 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!16 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!17 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!18 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!19 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!20 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!21 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!22 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!23 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!24 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!25 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!26 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!27 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!28 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!29 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!30 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!31 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 10, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "false", value: 0)
!36 = !DIEnumerator(name: "true", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !38, line: 364, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!39 = !{!40, !41, !42, !43, !44, !45, !46}
!40 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!41 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!42 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!43 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!44 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!45 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!46 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!47 = !{!48, !49, !87, !90, !93, !98, !103, !106, !109, !110, !111, !112, !117, !120, !121, !122, !124, !56, !125, !126, !83, !127, !128, !130, !133, !136, !138, !139, !144, !146, !148, !149, !152, !153, !159, !163, !164, !165, !275}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bucket_table", file: !51, line: 76, size: 512, elements: !52)
!51 = !DIFile(filename: "./include/linux/rhashtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c4991a7d2ccf0c9e17b9d27df1f08d3")
!52 = !{!53, !54, !55, !60, !67, !76, !77, !81}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !50, file: !51, line: 77, baseType: !7, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "nest", scope: !50, file: !51, line: 78, baseType: !7, size: 32, offset: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "hash_rnd", scope: !50, file: !51, line: 79, baseType: !56, size: 32, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !57, line: 21, baseType: !58)
!57 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !59, line: 27, baseType: !7)
!59 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!60 = !DIDerivedType(tag: DW_TAG_member, name: "walkers", scope: !50, file: !51, line: 80, baseType: !61, size: 128, offset: 128)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !62, line: 190, size: 128, elements: !63)
!62 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!63 = !{!64, !66}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !61, file: !62, line: 191, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !61, file: !62, line: 191, baseType: !65, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !50, file: !51, line: 81, baseType: !68, size: 128, align: 64, offset: 256)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !62, line: 232, size: 128, align: 64, elements: !69)
!69 = !{!70, !72}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !68, file: !62, line: 233, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !68, file: !62, line: 234, baseType: !73, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !71}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "future_tbl", scope: !50, file: !51, line: 83, baseType: !49, size: 64, offset: 384)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !50, file: !51, line: 85, baseType: !78, offset: 448)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !79, line: 211, elements: !80)
!79 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!80 = !{}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !50, file: !51, line: 87, baseType: !82, align: 512, offset: 512)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, elements: !85)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_lock_head", file: !51, line: 47, elements: !80)
!85 = !{!86}
!86 = !DISubrange(count: -1)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !49)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !95, line: 17, size: 64, elements: !96)
!95 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!96 = !{!97}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !94, file: !95, line: 18, baseType: !93, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !95, line: 21, size: 128, elements: !100)
!100 = !{!101, !102}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !99, file: !95, line: 22, baseType: !94, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !99, file: !95, line: 23, baseType: !98, size: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !98)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !57, line: 19, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !59, line: 24, baseType: !108)
!108 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !62, line: 154, baseType: !7)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!111 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "nested_table", file: !3, line: 32, size: 64, elements: !114)
!114 = !{!115, !116}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !113, file: !3, line: 33, baseType: !112, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "bucket", scope: !113, file: !3, line: 34, baseType: !83, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !112)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !62, line: 42, baseType: !111)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!124 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!127 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !83)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !124)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !135)
!135 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !127)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !57, line: 23, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !59, line: 31, baseType: !143)
!143 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !65)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !73)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "rcu_callback_t", file: !62, line: 238, baseType: !73)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__una_u32", file: !156, line: 7, size: 32, elements: !157)
!156 = !DIFile(filename: "./include/linux/unaligned/packed_struct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b314e2aed1a5593b28899e171e87b0c0")
!157 = !{!158}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !155, file: !156, line: 7, baseType: !56, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !62, line: 61, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !161, line: 72, baseType: !162)
!161 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !161, line: 16, baseType: !111)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhashtable", file: !95, line: 81, size: 1088, elements: !167)
!167 = !{!168, !169, !170, !171, !202, !203, !223, !265, !274}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "tbl", scope: !166, file: !95, line: 82, baseType: !49, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !166, file: !95, line: 83, baseType: !7, size: 32, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "max_elems", scope: !166, file: !95, line: 84, baseType: !7, size: 32, offset: 96)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !166, file: !95, line: 85, baseType: !172, size: 320, offset: 128)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhashtable_params", file: !95, line: 56, size: 320, elements: !173)
!173 = !{!174, !175, !176, !177, !178, !179, !180, !183, !190, !192}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nelem_hint", scope: !172, file: !95, line: 57, baseType: !106, size: 16)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !172, file: !95, line: 58, baseType: !106, size: 16, offset: 16)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "key_offset", scope: !172, file: !95, line: 59, baseType: !106, size: 16, offset: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "head_offset", scope: !172, file: !95, line: 60, baseType: !106, size: 16, offset: 48)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !172, file: !95, line: 61, baseType: !7, size: 32, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "min_size", scope: !172, file: !95, line: 62, baseType: !106, size: 16, offset: 96)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "automatic_shrinking", scope: !172, file: !95, line: 63, baseType: !181, size: 8, offset: 112)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !62, line: 35, baseType: !182)
!182 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "hashfn", scope: !172, file: !95, line: 64, baseType: !184, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "rht_hashfn_t", file: !95, line: 38, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!56, !188, !56, !56}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "obj_hashfn", scope: !172, file: !95, line: 65, baseType: !191, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "rht_obj_hashfn_t", file: !95, line: 39, baseType: !185)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "obj_cmpfn", scope: !172, file: !95, line: 66, baseType: !193, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "rht_obj_cmpfn_t", file: !95, line: 40, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!124, !197, !188}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhashtable_compare_arg", file: !95, line: 33, size: 128, elements: !199)
!199 = !{!200, !201}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !198, file: !95, line: 34, baseType: !165, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !198, file: !95, line: 35, baseType: !188, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "rhlist", scope: !166, file: !95, line: 86, baseType: !181, size: 8, offset: 448)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "run_work", scope: !166, file: !95, line: 87, baseType: !204, size: 256, offset: 512)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !6, line: 98, size: 256, elements: !205)
!205 = !{!206, !216, !217}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !204, file: !6, line: 99, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !208, line: 13, baseType: !209)
!208 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !62, line: 181, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !62, line: 179, size: 64, elements: !211)
!211 = !{!212}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !210, file: !62, line: 180, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !57, line: 22, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !59, line: 30, baseType: !215)
!215 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !204, file: !6, line: 100, baseType: !61, size: 128, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !204, file: !6, line: 101, baseType: !218, size: 64, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !6, line: 21, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !222}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !166, file: !95, line: 88, baseType: !224, size: 256, offset: 768)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !225, line: 66, size: 256, elements: !226)
!225 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!226 = !{!227, !228, !259, !264}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !224, file: !225, line: 67, baseType: !207, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !224, file: !225, line: 68, baseType: !229, size: 32, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !230, line: 23, baseType: !231)
!230 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !230, line: 14, size: 32, elements: !232)
!232 = !{!233}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !231, file: !230, line: 15, baseType: !234, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !235, line: 44, baseType: !236)
!235 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !235, line: 14, size: 32, elements: !237)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, scope: !236, file: !235, line: 15, baseType: !239, size: 32)
!239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !236, file: !235, line: 15, size: 32, elements: !240)
!240 = !{!241, !246, !254}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !239, file: !235, line: 16, baseType: !242, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !62, line: 174, baseType: !243)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !62, line: 172, size: 32, elements: !244)
!244 = !{!245}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !243, file: !62, line: 173, baseType: !124, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, scope: !239, file: !235, line: 24, baseType: !247, size: 16)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !239, file: !235, line: 24, size: 16, elements: !248)
!248 = !{!249, !253}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !247, file: !235, line: 25, baseType: !250, size: 8)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !57, line: 17, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !59, line: 21, baseType: !252)
!252 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !247, file: !235, line: 26, baseType: !250, size: 8, offset: 8)
!254 = !DIDerivedType(tag: DW_TAG_member, scope: !239, file: !235, line: 28, baseType: !255, size: 32)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !239, file: !235, line: 28, size: 32, elements: !256)
!256 = !{!257, !258}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !255, file: !235, line: 29, baseType: !106, size: 16)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !255, file: !235, line: 30, baseType: !106, size: 16, offset: 16)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !224, file: !225, line: 70, baseType: !260, size: 32, offset: 96)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !261, line: 15, size: 32, elements: !262)
!261 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!262 = !{!263}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !260, file: !261, line: 20, baseType: !242, size: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !224, file: !225, line: 72, baseType: !61, size: 128, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !166, file: !95, line: 89, baseType: !266, size: 32, offset: 1024)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !267, line: 29, baseType: !268)
!267 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !267, line: 17, size: 32, elements: !269)
!269 = !{!270}
!270 = !DIDerivedType(tag: DW_TAG_member, scope: !268, file: !267, line: 18, baseType: !271, size: 32)
!271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !268, file: !267, line: 18, size: 32, elements: !272)
!272 = !{!273}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !271, file: !267, line: 19, baseType: !231, size: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "nelems", scope: !166, file: !95, line: 90, baseType: !242, size: 32, offset: 1056)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhashtable_walker", file: !95, line: 106, size: 192, elements: !277)
!277 = !{!278, !279}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !276, file: !95, line: 107, baseType: !61, size: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tbl", scope: !276, file: !95, line: 108, baseType: !49, size: 64, offset: 128)
!280 = !{!0, !281, !283, !285, !287, !289, !291, !293, !314, !319, !321, !323, !325, !330, !332, !334, !336, !347, !349, !351, !360, !366, !372, !384, !389, !394, !411}
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rhashtable_walk_enter355", scope: !2, file: !3, line: 683, type: !48, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rhashtable_walk_exit356", scope: !2, file: !3, line: 698, type: !48, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rhashtable_walk_start_check365", scope: !2, file: !3, line: 779, type: !48, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rhashtable_walk_next376", scope: !2, file: !3, line: 891, type: !48, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rhashtable_walk_peek377", scope: !2, file: !3, line: 925, type: !48, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rhashtable_walk_stop378", scope: !2, file: !3, line: 956, type: !48, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(name: "__key", scope: !295, file: !3, line: 1030, type: !313, isLocal: true, isDefinition: true)
!295 = distinct !DISubprogram(name: "rhashtable_init", scope: !3, file: !3, line: 1019, type: !296, scopeLine: 1021, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !300)
!296 = !DISubroutineType(types: !297)
!297 = !{!124, !165, !298}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!300 = !{!301, !302, !303, !304, !305, !307, !308, !312}
!301 = !DILocalVariable(name: "ht", arg: 1, scope: !295, file: !3, line: 1019, type: !165)
!302 = !DILocalVariable(name: "params", arg: 2, scope: !295, file: !3, line: 1020, type: !298)
!303 = !DILocalVariable(name: "tbl", scope: !295, file: !3, line: 1022, type: !49)
!304 = !DILocalVariable(name: "size", scope: !295, file: !3, line: 1023, type: !159)
!305 = !DILocalVariable(name: "__UNIQUE_ID___x383", scope: !306, file: !3, line: 1046, type: !106)
!306 = distinct !DILexicalBlock(scope: !295, file: !3, line: 1046, column: 19)
!307 = !DILocalVariable(name: "__UNIQUE_ID___y384", scope: !306, file: !3, line: 1046, type: !106)
!308 = !DILocalVariable(name: "__UNIQUE_ID___x385", scope: !309, file: !3, line: 1067, type: !106)
!309 = distinct !DILexicalBlock(scope: !310, file: !3, line: 1067, column: 10)
!310 = distinct !DILexicalBlock(scope: !311, file: !3, line: 1066, column: 29)
!311 = distinct !DILexicalBlock(scope: !295, file: !3, line: 1066, column: 6)
!312 = !DILocalVariable(name: "__UNIQUE_ID___y386", scope: !309, file: !3, line: 1067, type: !106)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !79, line: 206, elements: !80)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1030, type: !316, isLocal: true, isDefinition: true)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 88, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 11)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(name: "__key", scope: !295, file: !3, line: 1075, type: !313, isLocal: true, isDefinition: true)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rhashtable_init388", scope: !2, file: !3, line: 1079, type: !48, isLocal: true, isDefinition: true)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rhltable_init389", scope: !2, file: !3, line: 1098, type: !48, isLocal: true, isDefinition: true)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1150, type: !327, isLocal: true, isDefinition: true)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 136, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 17)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rhashtable_free_and_destroy390", scope: !2, file: !3, line: 1170, type: !48, isLocal: true, isDefinition: true)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rhashtable_destroy391", scope: !2, file: !3, line: 1176, type: !48, isLocal: true, isDefinition: true)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___rht_bucket_nested396", scope: !2, file: !3, line: 1205, type: !48, isLocal: true, isDefinition: true)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(name: "rhnull", scope: !338, file: !3, line: 1210, type: !83, isLocal: true, isDefinition: true)
!338 = distinct !DISubprogram(name: "rht_bucket_nested", scope: !3, file: !3, line: 1207, type: !339, scopeLine: 1209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !344)
!339 = !DISubroutineType(types: !340)
!340 = !{!341, !342, !7}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!344 = !{!345, !346}
!345 = !DILocalVariable(name: "tbl", arg: 1, scope: !338, file: !3, line: 1208, type: !342)
!346 = !DILocalVariable(name: "hash", arg: 2, scope: !338, file: !3, line: 1208, type: !7)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rht_bucket_nested397", scope: !2, file: !3, line: 1216, type: !48, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rht_bucket_nested_insert398", scope: !2, file: !3, line: 1245, type: !48, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule176", scope: !353, file: !354, line: 28, type: !48, isLocal: true, isDefinition: true)
!353 = distinct !DISubprogram(name: "bit_spin_lock", scope: !354, file: !354, line: 16, type: !355, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !357)
!354 = !DIFile(filename: "./include/linux/bit_spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfd00aa32204721413e67de4980ca03")
!355 = !DISubroutineType(types: !356)
!356 = !{null, !124, !120}
!357 = !{!358, !359}
!358 = !DILocalVariable(name: "bitnum", arg: 1, scope: !353, file: !354, line: 16, type: !124)
!359 = !DILocalVariable(name: "addr", arg: 2, scope: !353, file: !354, line: 16, type: !120)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule178", scope: !362, file: !354, line: 65, type: !48, isLocal: true, isDefinition: true)
!362 = distinct !DISubprogram(name: "bit_spin_unlock", scope: !354, file: !354, line: 57, type: !355, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !363)
!363 = !{!364, !365}
!364 = !DILocalVariable(name: "bitnum", arg: 1, scope: !362, file: !354, line: 57, type: !124)
!365 = !DILocalVariable(name: "addr", arg: 2, scope: !362, file: !354, line: 57, type: !120)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !368, line: 1090, type: !369, isLocal: true, isDefinition: true)
!368 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 200, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 25)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(name: "__key", scope: !374, file: !3, line: 182, type: !313, isLocal: true, isDefinition: true)
!374 = distinct !DISubprogram(name: "bucket_table_alloc", scope: !3, file: !3, line: 175, type: !375, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !377)
!375 = !DISubroutineType(types: !376)
!376 = !{!49, !165, !159, !109}
!377 = !{!378, !379, !380, !381, !382, !383}
!378 = !DILocalVariable(name: "ht", arg: 1, scope: !374, file: !3, line: 175, type: !165)
!379 = !DILocalVariable(name: "nbuckets", arg: 2, scope: !374, file: !3, line: 176, type: !159)
!380 = !DILocalVariable(name: "gfp", arg: 3, scope: !374, file: !3, line: 177, type: !109)
!381 = !DILocalVariable(name: "tbl", scope: !374, file: !3, line: 179, type: !49)
!382 = !DILocalVariable(name: "size", scope: !374, file: !3, line: 180, type: !159)
!383 = !DILocalVariable(name: "i", scope: !374, file: !3, line: 181, type: !124)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !3, line: 196, type: !386, isLocal: true, isDefinition: true)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 144, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 18)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !38, line: 480, type: !391, isLocal: true, isDefinition: true)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 168, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 21)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule285", scope: !396, file: !51, line: 410, type: !48, isLocal: true, isDefinition: true)
!396 = distinct !DISubprogram(name: "rht_assign_unlock", scope: !51, file: !51, line: 401, type: !397, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !399)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !49, !341, !93, !111}
!399 = !{!400, !401, !402, !403, !404, !406, !410}
!400 = !DILocalVariable(name: "tbl", arg: 1, scope: !396, file: !51, line: 401, type: !49)
!401 = !DILocalVariable(name: "bkt", arg: 2, scope: !396, file: !51, line: 402, type: !341)
!402 = !DILocalVariable(name: "obj", arg: 3, scope: !396, file: !51, line: 403, type: !93)
!403 = !DILocalVariable(name: "flags", arg: 4, scope: !396, file: !51, line: 404, type: !111)
!404 = !DILocalVariable(name: "_r_a_p__v", scope: !405, file: !51, line: 409, type: !121)
!405 = distinct !DILexicalBlock(scope: !396, file: !51, line: 409, column: 2)
!406 = !DILocalVariable(name: "__dummy", scope: !407, file: !51, line: 412, type: !111)
!407 = distinct !DILexicalBlock(scope: !408, file: !51, line: 412, column: 2)
!408 = distinct !DILexicalBlock(scope: !409, file: !51, line: 412, column: 2)
!409 = distinct !DILexicalBlock(scope: !396, file: !51, line: 412, column: 2)
!410 = !DILocalVariable(name: "__dummy2", scope: !407, file: !51, line: 412, type: !111)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__cond_resched144", scope: !413, file: !414, line: 2104, type: !48, isLocal: true, isDefinition: true)
!413 = distinct !DISubprogram(name: "_cond_resched", scope: !414, file: !414, line: 2102, type: !415, scopeLine: 2103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!414 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!415 = !DISubroutineType(types: !416)
!416 = !{!124}
!417 = !{!"rsp"}
!418 = !{i32 7, !"Dwarf Version", i32 5}
!419 = !{i32 2, !"Debug Info Version", i32 3}
!420 = !{i32 1, !"wchar_size", i32 2}
!421 = !{i32 8, !"cf-protection-branch", i32 1}
!422 = !{i32 4, !"function_return_thunk_extern", i32 1}
!423 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!424 = !{i32 1, !"Code Model", i32 2}
!425 = !{i32 1, !"override-stack-alignment", i32 8}
!426 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!427 = distinct !DISubprogram(name: "rhashtable_insert_slow", scope: !3, file: !3, line: 633, type: !428, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !430)
!428 = !DISubroutineType(types: !429)
!429 = !{!48, !165, !188, !93}
!430 = !{!431, !432, !433, !434}
!431 = !DILocalVariable(name: "ht", arg: 1, scope: !427, file: !3, line: 633, type: !165)
!432 = !DILocalVariable(name: "key", arg: 2, scope: !427, file: !3, line: 633, type: !188)
!433 = !DILocalVariable(name: "obj", arg: 3, scope: !427, file: !3, line: 634, type: !93)
!434 = !DILocalVariable(name: "data", scope: !427, file: !3, line: 636, type: !48)
!435 = !DILocation(line: 633, column: 49, scope: !427)
!436 = !DILocation(line: 633, column: 65, scope: !427)
!437 = !DILocation(line: 634, column: 28, scope: !427)
!438 = !DILocation(line: 636, column: 2, scope: !427)
!439 = !DILocation(line: 636, column: 8, scope: !427)
!440 = !DILocation(line: 638, column: 2, scope: !427)
!441 = !DILocation(line: 639, column: 3, scope: !442)
!442 = distinct !DILexicalBlock(scope: !427, file: !3, line: 638, column: 5)
!443 = !DILocation(line: 640, column: 32, scope: !442)
!444 = !DILocation(line: 640, column: 36, scope: !442)
!445 = !DILocation(line: 640, column: 41, scope: !442)
!446 = !DILocation(line: 640, column: 10, scope: !442)
!447 = !DILocation(line: 640, column: 8, scope: !442)
!448 = !DILocation(line: 641, column: 3, scope: !442)
!449 = !DILocation(line: 642, column: 2, scope: !442)
!450 = !DILocation(line: 642, column: 19, scope: !427)
!451 = !DILocation(line: 642, column: 11, scope: !427)
!452 = !DILocation(line: 642, column: 25, scope: !427)
!453 = distinct !{!453, !440, !454, !455, !456}
!454 = !DILocation(line: 642, column: 35, scope: !427)
!455 = !{!"llvm.loop.mustprogress"}
!456 = !{!"llvm.loop.unroll.disable"}
!457 = !DILocation(line: 644, column: 9, scope: !427)
!458 = !DILocation(line: 645, column: 1, scope: !427)
!459 = !DILocation(line: 644, column: 2, scope: !427)
!460 = distinct !DISubprogram(name: "rcu_read_lock", scope: !368, file: !368, line: 782, type: !461, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!461 = !DISubroutineType(types: !462)
!462 = !{null}
!463 = !DILocation(line: 784, column: 2, scope: !460)
!464 = !DILocation(line: 786, column: 2, scope: !460)
!465 = !DILocation(line: 786, column: 2, scope: !466)
!466 = distinct !DILexicalBlock(scope: !460, file: !368, line: 786, column: 2)
!467 = !DILocation(line: 787, column: 2, scope: !460)
!468 = !DILocation(line: 787, column: 2, scope: !469)
!469 = distinct !DILexicalBlock(scope: !460, file: !368, line: 787, column: 2)
!470 = !DILocation(line: 789, column: 1, scope: !460)
!471 = distinct !DISubprogram(name: "rhashtable_try_insert", scope: !3, file: !3, line: 590, type: !428, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !472)
!472 = !{!473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !484, !488}
!473 = !DILocalVariable(name: "ht", arg: 1, scope: !471, file: !3, line: 590, type: !165)
!474 = !DILocalVariable(name: "key", arg: 2, scope: !471, file: !3, line: 590, type: !188)
!475 = !DILocalVariable(name: "obj", arg: 3, scope: !471, file: !3, line: 591, type: !93)
!476 = !DILocalVariable(name: "new_tbl", scope: !471, file: !3, line: 593, type: !49)
!477 = !DILocalVariable(name: "tbl", scope: !471, file: !3, line: 594, type: !49)
!478 = !DILocalVariable(name: "bkt", scope: !471, file: !3, line: 595, type: !341)
!479 = !DILocalVariable(name: "flags", scope: !471, file: !3, line: 596, type: !111)
!480 = !DILocalVariable(name: "hash", scope: !471, file: !3, line: 597, type: !7)
!481 = !DILocalVariable(name: "data", scope: !471, file: !3, line: 598, type: !48)
!482 = !DILocalVariable(name: "__UNIQUE_ID_rcu348", scope: !483, file: !3, line: 600, type: !49)
!483 = distinct !DILexicalBlock(scope: !471, file: !3, line: 600, column: 12)
!484 = !DILocalVariable(name: "__UNIQUE_ID_rcu350", scope: !485, file: !3, line: 605, type: !49)
!485 = distinct !DILexicalBlock(scope: !486, file: !3, line: 605, column: 7)
!486 = distinct !DILexicalBlock(scope: !487, file: !3, line: 605, column: 7)
!487 = distinct !DILexicalBlock(scope: !471, file: !3, line: 602, column: 5)
!488 = !DILocalVariable(name: "__UNIQUE_ID_rcu352", scope: !489, file: !3, line: 611, type: !49)
!489 = distinct !DILexicalBlock(scope: !490, file: !3, line: 611, column: 14)
!490 = distinct !DILexicalBlock(scope: !491, file: !3, line: 610, column: 20)
!491 = distinct !DILexicalBlock(scope: !487, file: !3, line: 610, column: 7)
!492 = !DILocation(line: 590, column: 55, scope: !471)
!493 = !DILocation(line: 590, column: 71, scope: !471)
!494 = !DILocation(line: 591, column: 27, scope: !471)
!495 = !DILocation(line: 593, column: 2, scope: !471)
!496 = !DILocation(line: 593, column: 23, scope: !471)
!497 = !DILocation(line: 594, column: 2, scope: !471)
!498 = !DILocation(line: 594, column: 23, scope: !471)
!499 = !DILocation(line: 595, column: 2, scope: !471)
!500 = !DILocation(line: 595, column: 33, scope: !471)
!501 = !DILocation(line: 596, column: 2, scope: !471)
!502 = !DILocation(line: 596, column: 16, scope: !471)
!503 = !DILocation(line: 597, column: 2, scope: !471)
!504 = !DILocation(line: 597, column: 15, scope: !471)
!505 = !DILocation(line: 598, column: 2, scope: !471)
!506 = !DILocation(line: 598, column: 8, scope: !471)
!507 = !DILocation(line: 600, column: 12, scope: !483)
!508 = !DILocation(line: 600, column: 12, scope: !509)
!509 = distinct !DILexicalBlock(scope: !483, file: !3, line: 600, column: 12)
!510 = !DILocation(line: 600, column: 12, scope: !511)
!511 = distinct !DILexicalBlock(scope: !509, file: !3, line: 600, column: 12)
!512 = !DILocation(line: 600, column: 12, scope: !513)
!513 = distinct !DILexicalBlock(scope: !483, file: !3, line: 600, column: 12)
!514 = !DILocation(line: 600, column: 12, scope: !471)
!515 = !DILocation(line: 600, column: 10, scope: !471)
!516 = !DILocation(line: 602, column: 2, scope: !471)
!517 = !DILocation(line: 603, column: 9, scope: !487)
!518 = !DILocation(line: 603, column: 7, scope: !487)
!519 = !DILocation(line: 604, column: 26, scope: !487)
!520 = !DILocation(line: 604, column: 30, scope: !487)
!521 = !DILocation(line: 604, column: 35, scope: !487)
!522 = !DILocation(line: 604, column: 40, scope: !487)
!523 = !DILocation(line: 604, column: 44, scope: !487)
!524 = !DILocation(line: 604, column: 10, scope: !487)
!525 = !DILocation(line: 604, column: 8, scope: !487)
!526 = !DILocation(line: 605, column: 7, scope: !485)
!527 = !DILocation(line: 605, column: 7, scope: !528)
!528 = distinct !DILexicalBlock(scope: !485, file: !3, line: 605, column: 7)
!529 = !DILocation(line: 605, column: 7, scope: !530)
!530 = distinct !DILexicalBlock(scope: !528, file: !3, line: 605, column: 7)
!531 = !DILocation(line: 605, column: 7, scope: !486)
!532 = !DILocation(line: 605, column: 7, scope: !487)
!533 = !DILocation(line: 607, column: 25, scope: !486)
!534 = !DILocation(line: 607, column: 30, scope: !486)
!535 = !DILocation(line: 607, column: 10, scope: !486)
!536 = !DILocation(line: 607, column: 8, scope: !486)
!537 = !DILocation(line: 607, column: 4, scope: !486)
!538 = !DILocation(line: 609, column: 28, scope: !486)
!539 = !DILocation(line: 609, column: 32, scope: !486)
!540 = !DILocation(line: 609, column: 37, scope: !486)
!541 = !DILocation(line: 609, column: 10, scope: !486)
!542 = !DILocation(line: 609, column: 8, scope: !486)
!543 = !DILocation(line: 610, column: 7, scope: !491)
!544 = !DILocation(line: 610, column: 11, scope: !491)
!545 = !DILocation(line: 610, column: 7, scope: !487)
!546 = !DILocation(line: 611, column: 14, scope: !489)
!547 = !DILocation(line: 611, column: 14, scope: !548)
!548 = distinct !DILexicalBlock(scope: !489, file: !3, line: 611, column: 14)
!549 = !DILocation(line: 611, column: 14, scope: !550)
!550 = distinct !DILexicalBlock(scope: !548, file: !3, line: 611, column: 14)
!551 = !DILocation(line: 611, column: 14, scope: !552)
!552 = distinct !DILexicalBlock(scope: !489, file: !3, line: 611, column: 14)
!553 = !DILocation(line: 611, column: 14, scope: !490)
!554 = !DILocation(line: 611, column: 12, scope: !490)
!555 = !DILocation(line: 612, column: 11, scope: !490)
!556 = !DILocation(line: 612, column: 9, scope: !490)
!557 = !DILocation(line: 613, column: 3, scope: !490)
!558 = !DILocation(line: 614, column: 21, scope: !559)
!559 = distinct !DILexicalBlock(scope: !491, file: !3, line: 613, column: 10)
!560 = !DILocation(line: 614, column: 26, scope: !559)
!561 = !DILocation(line: 614, column: 12, scope: !559)
!562 = !DILocation(line: 614, column: 10, scope: !559)
!563 = !DILocation(line: 615, column: 33, scope: !559)
!564 = !DILocation(line: 615, column: 37, scope: !559)
!565 = !DILocation(line: 615, column: 42, scope: !559)
!566 = !DILocation(line: 616, column: 12, scope: !559)
!567 = !DILocation(line: 616, column: 18, scope: !559)
!568 = !DILocation(line: 616, column: 23, scope: !559)
!569 = !DILocation(line: 615, column: 11, scope: !559)
!570 = !DILocation(line: 615, column: 9, scope: !559)
!571 = !DILocation(line: 617, column: 36, scope: !559)
!572 = !DILocation(line: 617, column: 40, scope: !559)
!573 = !DILocation(line: 617, column: 45, scope: !559)
!574 = !DILocation(line: 618, column: 8, scope: !559)
!575 = !DILocation(line: 618, column: 14, scope: !559)
!576 = !DILocation(line: 618, column: 19, scope: !559)
!577 = !DILocation(line: 617, column: 14, scope: !559)
!578 = !DILocation(line: 617, column: 12, scope: !559)
!579 = !DILocation(line: 619, column: 16, scope: !580)
!580 = distinct !DILexicalBlock(scope: !559, file: !3, line: 619, column: 8)
!581 = !DILocation(line: 619, column: 8, scope: !580)
!582 = !DILocation(line: 619, column: 25, scope: !580)
!583 = !DILocation(line: 619, column: 8, scope: !559)
!584 = !DILocation(line: 620, column: 21, scope: !580)
!585 = !DILocation(line: 620, column: 12, scope: !580)
!586 = !DILocation(line: 620, column: 10, scope: !580)
!587 = !DILocation(line: 620, column: 5, scope: !580)
!588 = !DILocation(line: 622, column: 15, scope: !559)
!589 = !DILocation(line: 622, column: 20, scope: !559)
!590 = !DILocation(line: 622, column: 25, scope: !559)
!591 = !DILocation(line: 622, column: 4, scope: !559)
!592 = !DILocation(line: 624, column: 2, scope: !487)
!593 = !DILocation(line: 624, column: 27, scope: !471)
!594 = !DILocation(line: 624, column: 12, scope: !471)
!595 = !DILocation(line: 624, column: 11, scope: !471)
!596 = distinct !{!596, !516, !597, !455, !456}
!597 = !DILocation(line: 624, column: 35, scope: !471)
!598 = !DILocation(line: 626, column: 14, scope: !599)
!599 = distinct !DILexicalBlock(scope: !471, file: !3, line: 626, column: 6)
!600 = !DILocation(line: 626, column: 6, scope: !599)
!601 = !DILocation(line: 626, column: 20, scope: !599)
!602 = !DILocation(line: 626, column: 6, scope: !471)
!603 = !DILocation(line: 627, column: 43, scope: !599)
!604 = !DILocation(line: 627, column: 47, scope: !599)
!605 = !DILocation(line: 627, column: 18, scope: !599)
!606 = !DILocation(line: 627, column: 10, scope: !599)
!607 = !DILocation(line: 627, column: 8, scope: !599)
!608 = !DILocation(line: 627, column: 3, scope: !599)
!609 = !DILocation(line: 630, column: 9, scope: !471)
!610 = !DILocation(line: 631, column: 1, scope: !471)
!611 = !DILocation(line: 630, column: 2, scope: !471)
!612 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !368, file: !368, line: 813, type: !461, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!613 = !DILocation(line: 815, column: 2, scope: !612)
!614 = !DILocation(line: 815, column: 2, scope: !615)
!615 = distinct !DILexicalBlock(scope: !612, file: !368, line: 815, column: 2)
!616 = !DILocation(line: 818, column: 2, scope: !612)
!617 = !DILocation(line: 819, column: 2, scope: !612)
!618 = !DILocation(line: 819, column: 2, scope: !619)
!619 = distinct !DILexicalBlock(scope: !612, file: !368, line: 819, column: 2)
!620 = !DILocation(line: 820, column: 1, scope: !612)
!621 = distinct !DISubprogram(name: "PTR_ERR", scope: !622, file: !622, line: 49, type: !623, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !625)
!622 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!623 = !DISubroutineType(types: !624)
!624 = !{!127, !188}
!625 = !{!626}
!626 = !DILocalVariable(name: "ptr", arg: 1, scope: !621, file: !622, line: 49, type: !188)
!627 = !DILocation(line: 49, column: 61, scope: !621)
!628 = !DILocation(line: 51, column: 16, scope: !621)
!629 = !DILocation(line: 51, column: 9, scope: !621)
!630 = !DILocation(line: 51, column: 2, scope: !621)
!631 = distinct !DISubprogram(name: "rhashtable_walk_enter", scope: !3, file: !3, line: 669, type: !632, scopeLine: 670, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !644)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !165, !634}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhashtable_iter", file: !95, line: 120, size: 512, elements: !636)
!636 = !{!637, !638, !639, !640, !641, !642, !643}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !635, file: !95, line: 121, baseType: !165, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !635, file: !95, line: 122, baseType: !93, size: 64, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !635, file: !95, line: 123, baseType: !98, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "walker", scope: !635, file: !95, line: 124, baseType: !276, size: 192, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !635, file: !95, line: 125, baseType: !7, size: 32, offset: 384)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !635, file: !95, line: 126, baseType: !7, size: 32, offset: 416)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "end_of_table", scope: !635, file: !95, line: 127, baseType: !181, size: 8, offset: 448)
!644 = !{!645, !646}
!645 = !DILocalVariable(name: "ht", arg: 1, scope: !631, file: !3, line: 669, type: !165)
!646 = !DILocalVariable(name: "iter", arg: 2, scope: !631, file: !3, line: 669, type: !634)
!647 = !DILocation(line: 669, column: 47, scope: !631)
!648 = !DILocation(line: 669, column: 75, scope: !631)
!649 = !DILocation(line: 671, column: 13, scope: !631)
!650 = !DILocation(line: 671, column: 2, scope: !631)
!651 = !DILocation(line: 671, column: 8, scope: !631)
!652 = !DILocation(line: 671, column: 11, scope: !631)
!653 = !DILocation(line: 672, column: 2, scope: !631)
!654 = !DILocation(line: 672, column: 8, scope: !631)
!655 = !DILocation(line: 672, column: 10, scope: !631)
!656 = !DILocation(line: 673, column: 2, scope: !631)
!657 = !DILocation(line: 673, column: 8, scope: !631)
!658 = !DILocation(line: 673, column: 13, scope: !631)
!659 = !DILocation(line: 674, column: 2, scope: !631)
!660 = !DILocation(line: 674, column: 8, scope: !631)
!661 = !DILocation(line: 674, column: 13, scope: !631)
!662 = !DILocation(line: 675, column: 2, scope: !631)
!663 = !DILocation(line: 675, column: 8, scope: !631)
!664 = !DILocation(line: 675, column: 21, scope: !631)
!665 = !DILocation(line: 677, column: 13, scope: !631)
!666 = !DILocation(line: 677, column: 17, scope: !631)
!667 = !DILocation(line: 677, column: 2, scope: !631)
!668 = !DILocation(line: 679, column: 3, scope: !669)
!669 = distinct !DILexicalBlock(scope: !631, file: !3, line: 679, column: 3)
!670 = !DILocation(line: 679, column: 3, scope: !671)
!671 = distinct !DILexicalBlock(scope: !669, file: !3, line: 679, column: 3)
!672 = !DILocation(line: 678, column: 2, scope: !631)
!673 = !DILocation(line: 678, column: 8, scope: !631)
!674 = !DILocation(line: 678, column: 15, scope: !631)
!675 = !DILocation(line: 678, column: 19, scope: !631)
!676 = !DILocation(line: 680, column: 12, scope: !631)
!677 = !DILocation(line: 680, column: 18, scope: !631)
!678 = !DILocation(line: 680, column: 25, scope: !631)
!679 = !DILocation(line: 680, column: 32, scope: !631)
!680 = !DILocation(line: 680, column: 38, scope: !631)
!681 = !DILocation(line: 680, column: 45, scope: !631)
!682 = !DILocation(line: 680, column: 50, scope: !631)
!683 = !DILocation(line: 680, column: 2, scope: !631)
!684 = !DILocation(line: 681, column: 15, scope: !631)
!685 = !DILocation(line: 681, column: 19, scope: !631)
!686 = !DILocation(line: 681, column: 2, scope: !631)
!687 = !DILocation(line: 682, column: 1, scope: !631)
!688 = distinct !DISubprogram(name: "spin_lock", scope: !689, file: !689, line: 349, type: !690, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !693)
!689 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!690 = !DISubroutineType(types: !691)
!691 = !{null, !692}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!693 = !{!694}
!694 = !DILocalVariable(name: "lock", arg: 1, scope: !688, file: !689, line: 349, type: !692)
!695 = !DILocation(line: 349, column: 51, scope: !688)
!696 = !DILocation(line: 351, column: 2, scope: !688)
!697 = !DILocation(line: 352, column: 1, scope: !688)
!698 = distinct !DISubprogram(name: "list_add", scope: !699, file: !699, line: 167, type: !700, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !702)
!699 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!700 = !DISubroutineType(types: !701)
!701 = !{null, !65, !65}
!702 = !{!703, !704}
!703 = !DILocalVariable(name: "new", arg: 1, scope: !698, file: !699, line: 167, type: !65)
!704 = !DILocalVariable(name: "head", arg: 2, scope: !698, file: !699, line: 167, type: !65)
!705 = !DILocation(line: 167, column: 47, scope: !698)
!706 = !DILocation(line: 167, column: 70, scope: !698)
!707 = !DILocation(line: 169, column: 13, scope: !698)
!708 = !DILocation(line: 169, column: 18, scope: !698)
!709 = !DILocation(line: 169, column: 24, scope: !698)
!710 = !DILocation(line: 169, column: 30, scope: !698)
!711 = !DILocation(line: 169, column: 2, scope: !698)
!712 = !DILocation(line: 170, column: 1, scope: !698)
!713 = distinct !DISubprogram(name: "spin_unlock", scope: !689, file: !689, line: 389, type: !690, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !714)
!714 = !{!715}
!715 = !DILocalVariable(name: "lock", arg: 1, scope: !713, file: !689, line: 389, type: !692)
!716 = !DILocation(line: 389, column: 53, scope: !713)
!717 = !DILocation(line: 391, column: 2, scope: !713)
!718 = !DILocation(line: 392, column: 1, scope: !713)
!719 = distinct !DISubprogram(name: "rhashtable_walk_exit", scope: !3, file: !3, line: 691, type: !720, scopeLine: 692, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !722)
!720 = !DISubroutineType(types: !721)
!721 = !{null, !634}
!722 = !{!723}
!723 = !DILocalVariable(name: "iter", arg: 1, scope: !719, file: !3, line: 691, type: !634)
!724 = !DILocation(line: 691, column: 51, scope: !719)
!725 = !DILocation(line: 693, column: 13, scope: !719)
!726 = !DILocation(line: 693, column: 19, scope: !719)
!727 = !DILocation(line: 693, column: 23, scope: !719)
!728 = !DILocation(line: 693, column: 2, scope: !719)
!729 = !DILocation(line: 694, column: 6, scope: !730)
!730 = distinct !DILexicalBlock(scope: !719, file: !3, line: 694, column: 6)
!731 = !DILocation(line: 694, column: 12, scope: !730)
!732 = !DILocation(line: 694, column: 19, scope: !730)
!733 = !DILocation(line: 694, column: 6, scope: !719)
!734 = !DILocation(line: 695, column: 13, scope: !730)
!735 = !DILocation(line: 695, column: 19, scope: !730)
!736 = !DILocation(line: 695, column: 26, scope: !730)
!737 = !DILocation(line: 695, column: 3, scope: !730)
!738 = !DILocation(line: 696, column: 15, scope: !719)
!739 = !DILocation(line: 696, column: 21, scope: !719)
!740 = !DILocation(line: 696, column: 25, scope: !719)
!741 = !DILocation(line: 696, column: 2, scope: !719)
!742 = !DILocation(line: 697, column: 1, scope: !719)
!743 = distinct !DISubprogram(name: "list_del", scope: !699, file: !699, line: 227, type: !744, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !746)
!744 = !DISubroutineType(types: !745)
!745 = !{null, !65}
!746 = !{!747}
!747 = !DILocalVariable(name: "entry", arg: 1, scope: !743, file: !699, line: 227, type: !65)
!748 = !DILocation(line: 227, column: 47, scope: !743)
!749 = !DILocation(line: 229, column: 19, scope: !743)
!750 = !DILocation(line: 229, column: 2, scope: !743)
!751 = !DILocation(line: 230, column: 2, scope: !743)
!752 = !DILocation(line: 230, column: 9, scope: !743)
!753 = !DILocation(line: 230, column: 14, scope: !743)
!754 = !DILocation(line: 231, column: 2, scope: !743)
!755 = !DILocation(line: 231, column: 9, scope: !743)
!756 = !DILocation(line: 231, column: 14, scope: !743)
!757 = !DILocation(line: 232, column: 1, scope: !743)
!758 = distinct !DISubprogram(name: "rhashtable_walk_start_check", scope: !3, file: !3, line: 718, type: !759, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !761)
!759 = !DISubroutineType(types: !760)
!760 = !{!124, !634}
!761 = !{!762, !763, !764, !765, !769, !772, !773, !777, !780, !781, !782, !788, !791, !793}
!762 = !DILocalVariable(name: "iter", arg: 1, scope: !758, file: !3, line: 718, type: !634)
!763 = !DILocalVariable(name: "ht", scope: !758, file: !3, line: 721, type: !165)
!764 = !DILocalVariable(name: "rhlist", scope: !758, file: !3, line: 722, type: !181)
!765 = !DILocalVariable(name: "__UNIQUE_ID_rcu357", scope: !766, file: !3, line: 734, type: !49)
!766 = distinct !DILexicalBlock(scope: !767, file: !3, line: 734, column: 22)
!767 = distinct !DILexicalBlock(scope: !768, file: !3, line: 733, column: 25)
!768 = distinct !DILexicalBlock(scope: !758, file: !3, line: 733, column: 6)
!769 = !DILocalVariable(name: "p", scope: !770, file: !3, line: 745, type: !93)
!770 = distinct !DILexicalBlock(scope: !771, file: !3, line: 740, column: 26)
!771 = distinct !DILexicalBlock(scope: !758, file: !3, line: 740, column: 6)
!772 = !DILocalVariable(name: "skip", scope: !770, file: !3, line: 746, type: !124)
!773 = !DILocalVariable(name: "__UNIQUE_ID_rcu359", scope: !774, file: !3, line: 747, type: !93)
!774 = distinct !DILexicalBlock(scope: !775, file: !3, line: 747, column: 3)
!775 = distinct !DILexicalBlock(scope: !776, file: !3, line: 747, column: 3)
!776 = distinct !DILexicalBlock(scope: !770, file: !3, line: 747, column: 3)
!777 = !DILocalVariable(name: "p", scope: !778, file: !3, line: 759, type: !93)
!778 = distinct !DILexicalBlock(scope: !779, file: !3, line: 755, column: 32)
!779 = distinct !DILexicalBlock(scope: !771, file: !3, line: 755, column: 13)
!780 = !DILocalVariable(name: "list", scope: !778, file: !3, line: 760, type: !98)
!781 = !DILocalVariable(name: "skip", scope: !778, file: !3, line: 761, type: !124)
!782 = !DILocalVariable(name: "__mptr", scope: !783, file: !3, line: 763, type: !48)
!783 = distinct !DILexicalBlock(scope: !784, file: !3, line: 763, column: 16)
!784 = distinct !DILexicalBlock(scope: !785, file: !3, line: 763, column: 4)
!785 = distinct !DILexicalBlock(scope: !786, file: !3, line: 762, column: 53)
!786 = distinct !DILexicalBlock(scope: !787, file: !3, line: 762, column: 3)
!787 = distinct !DILexicalBlock(scope: !778, file: !3, line: 762, column: 3)
!788 = !DILocalVariable(name: "__UNIQUE_ID_rcu363", scope: !789, file: !3, line: 765, type: !98)
!789 = distinct !DILexicalBlock(scope: !790, file: !3, line: 765, column: 16)
!790 = distinct !DILexicalBlock(scope: !784, file: !3, line: 763, column: 4)
!791 = !DILocalVariable(name: "__UNIQUE_ID_rcu361", scope: !792, file: !3, line: 762, type: !93)
!792 = distinct !DILexicalBlock(scope: !786, file: !3, line: 762, column: 3)
!793 = !DILabel(scope: !758, name: "found", file: !3, line: 776)
!794 = !DILocation(line: 718, column: 57, scope: !758)
!795 = !DILocation(line: 721, column: 2, scope: !758)
!796 = !DILocation(line: 721, column: 21, scope: !758)
!797 = !DILocation(line: 721, column: 26, scope: !758)
!798 = !DILocation(line: 721, column: 32, scope: !758)
!799 = !DILocation(line: 722, column: 2, scope: !758)
!800 = !DILocation(line: 722, column: 7, scope: !758)
!801 = !DILocation(line: 722, column: 16, scope: !758)
!802 = !DILocation(line: 722, column: 20, scope: !758)
!803 = !{i8 0, i8 2}
!804 = !DILocation(line: 724, column: 2, scope: !758)
!805 = !DILocation(line: 726, column: 13, scope: !758)
!806 = !DILocation(line: 726, column: 17, scope: !758)
!807 = !DILocation(line: 726, column: 2, scope: !758)
!808 = !DILocation(line: 727, column: 6, scope: !809)
!809 = distinct !DILexicalBlock(scope: !758, file: !3, line: 727, column: 6)
!810 = !DILocation(line: 727, column: 12, scope: !809)
!811 = !DILocation(line: 727, column: 19, scope: !809)
!812 = !DILocation(line: 727, column: 6, scope: !758)
!813 = !DILocation(line: 728, column: 13, scope: !809)
!814 = !DILocation(line: 728, column: 19, scope: !809)
!815 = !DILocation(line: 728, column: 26, scope: !809)
!816 = !DILocation(line: 728, column: 3, scope: !809)
!817 = !DILocation(line: 729, column: 15, scope: !758)
!818 = !DILocation(line: 729, column: 19, scope: !758)
!819 = !DILocation(line: 729, column: 2, scope: !758)
!820 = !DILocation(line: 731, column: 6, scope: !821)
!821 = distinct !DILexicalBlock(scope: !758, file: !3, line: 731, column: 6)
!822 = !DILocation(line: 731, column: 12, scope: !821)
!823 = !DILocation(line: 731, column: 6, scope: !758)
!824 = !DILocation(line: 732, column: 3, scope: !821)
!825 = !DILocation(line: 733, column: 7, scope: !768)
!826 = !DILocation(line: 733, column: 13, scope: !768)
!827 = !DILocation(line: 733, column: 20, scope: !768)
!828 = !DILocation(line: 733, column: 6, scope: !758)
!829 = !DILocation(line: 734, column: 22, scope: !766)
!830 = !DILocation(line: 734, column: 22, scope: !831)
!831 = distinct !DILexicalBlock(scope: !766, file: !3, line: 734, column: 22)
!832 = !DILocation(line: 734, column: 22, scope: !833)
!833 = distinct !DILexicalBlock(scope: !831, file: !3, line: 734, column: 22)
!834 = !DILocation(line: 734, column: 22, scope: !835)
!835 = distinct !DILexicalBlock(scope: !766, file: !3, line: 734, column: 22)
!836 = !DILocation(line: 734, column: 22, scope: !767)
!837 = !DILocation(line: 734, column: 3, scope: !767)
!838 = !DILocation(line: 734, column: 9, scope: !767)
!839 = !DILocation(line: 734, column: 16, scope: !767)
!840 = !DILocation(line: 734, column: 20, scope: !767)
!841 = !DILocation(line: 735, column: 3, scope: !767)
!842 = !DILocation(line: 735, column: 9, scope: !767)
!843 = !DILocation(line: 735, column: 14, scope: !767)
!844 = !DILocation(line: 736, column: 3, scope: !767)
!845 = !DILocation(line: 736, column: 9, scope: !767)
!846 = !DILocation(line: 736, column: 14, scope: !767)
!847 = !DILocation(line: 737, column: 3, scope: !767)
!848 = !DILocation(line: 740, column: 6, scope: !771)
!849 = !DILocation(line: 740, column: 12, scope: !771)
!850 = !DILocation(line: 740, column: 14, scope: !771)
!851 = !DILocation(line: 740, column: 18, scope: !771)
!852 = !DILocation(line: 740, column: 6, scope: !758)
!853 = !DILocation(line: 745, column: 3, scope: !770)
!854 = !DILocation(line: 745, column: 22, scope: !770)
!855 = !DILocation(line: 746, column: 3, scope: !770)
!856 = !DILocation(line: 746, column: 7, scope: !770)
!857 = !DILocation(line: 747, column: 3, scope: !858)
!858 = distinct !DILexicalBlock(scope: !776, file: !3, line: 747, column: 3)
!859 = !{i64 2154214550}
!860 = !DILocation(line: 747, column: 3, scope: !776)
!861 = !DILocation(line: 747, column: 3, scope: !775)
!862 = !DILocation(line: 748, column: 8, scope: !863)
!863 = distinct !DILexicalBlock(scope: !775, file: !3, line: 747, column: 53)
!864 = !DILocation(line: 749, column: 8, scope: !865)
!865 = distinct !DILexicalBlock(scope: !863, file: !3, line: 749, column: 8)
!866 = !DILocation(line: 749, column: 13, scope: !865)
!867 = !DILocation(line: 749, column: 19, scope: !865)
!868 = !DILocation(line: 749, column: 10, scope: !865)
!869 = !DILocation(line: 749, column: 8, scope: !863)
!870 = !DILocation(line: 750, column: 18, scope: !871)
!871 = distinct !DILexicalBlock(scope: !865, file: !3, line: 749, column: 22)
!872 = !DILocation(line: 750, column: 5, scope: !871)
!873 = !DILocation(line: 750, column: 11, scope: !871)
!874 = !DILocation(line: 750, column: 16, scope: !871)
!875 = !DILocation(line: 751, column: 5, scope: !871)
!876 = !DILocation(line: 753, column: 3, scope: !863)
!877 = !DILocation(line: 747, column: 3, scope: !774)
!878 = !DILocation(line: 747, column: 3, scope: !879)
!879 = distinct !DILexicalBlock(scope: !774, file: !3, line: 747, column: 3)
!880 = !DILocation(line: 747, column: 3, scope: !881)
!881 = distinct !DILexicalBlock(scope: !879, file: !3, line: 747, column: 3)
!882 = distinct !{!882, !860, !883, !455, !456}
!883 = !DILocation(line: 753, column: 3, scope: !776)
!884 = !DILocation(line: 754, column: 3, scope: !770)
!885 = !DILocation(line: 754, column: 9, scope: !770)
!886 = !DILocation(line: 754, column: 11, scope: !770)
!887 = !DILocation(line: 755, column: 2, scope: !771)
!888 = !DILocation(line: 755, column: 2, scope: !770)
!889 = !DILocation(line: 755, column: 13, scope: !779)
!890 = !DILocation(line: 755, column: 19, scope: !779)
!891 = !DILocation(line: 755, column: 21, scope: !779)
!892 = !DILocation(line: 755, column: 24, scope: !779)
!893 = !DILocation(line: 755, column: 13, scope: !771)
!894 = !DILocation(line: 759, column: 3, scope: !778)
!895 = !DILocation(line: 759, column: 22, scope: !778)
!896 = !DILocation(line: 760, column: 3, scope: !778)
!897 = !DILocation(line: 760, column: 23, scope: !778)
!898 = !DILocation(line: 761, column: 3, scope: !778)
!899 = !DILocation(line: 761, column: 7, scope: !778)
!900 = !DILocation(line: 762, column: 3, scope: !901)
!901 = distinct !DILexicalBlock(scope: !787, file: !3, line: 762, column: 3)
!902 = !{i64 2154217959}
!903 = !DILocation(line: 762, column: 3, scope: !787)
!904 = !DILocation(line: 762, column: 3, scope: !786)
!905 = !DILocation(line: 763, column: 16, scope: !783)
!906 = !DILocation(line: 763, column: 16, scope: !784)
!907 = !DILocation(line: 763, column: 14, scope: !784)
!908 = !DILocation(line: 763, column: 9, scope: !784)
!909 = !DILocation(line: 764, column: 9, scope: !790)
!910 = !DILocation(line: 763, column: 4, scope: !784)
!911 = !DILocation(line: 766, column: 9, scope: !912)
!912 = distinct !DILexicalBlock(scope: !790, file: !3, line: 765, column: 45)
!913 = !DILocation(line: 767, column: 9, scope: !914)
!914 = distinct !DILexicalBlock(scope: !912, file: !3, line: 767, column: 9)
!915 = !DILocation(line: 767, column: 17, scope: !914)
!916 = !DILocation(line: 767, column: 23, scope: !914)
!917 = !DILocation(line: 767, column: 14, scope: !914)
!918 = !DILocation(line: 767, column: 9, scope: !912)
!919 = !DILocation(line: 768, column: 16, scope: !920)
!920 = distinct !DILexicalBlock(scope: !914, file: !3, line: 767, column: 29)
!921 = !DILocation(line: 768, column: 6, scope: !920)
!922 = !DILocation(line: 768, column: 12, scope: !920)
!923 = !DILocation(line: 768, column: 14, scope: !920)
!924 = !DILocation(line: 769, column: 19, scope: !920)
!925 = !DILocation(line: 769, column: 6, scope: !920)
!926 = !DILocation(line: 769, column: 12, scope: !920)
!927 = !DILocation(line: 769, column: 17, scope: !920)
!928 = !DILocation(line: 770, column: 6, scope: !920)
!929 = !DILocation(line: 772, column: 4, scope: !912)
!930 = !DILocation(line: 765, column: 16, scope: !789)
!931 = !DILocation(line: 765, column: 16, scope: !932)
!932 = distinct !DILexicalBlock(scope: !789, file: !3, line: 765, column: 16)
!933 = !DILocation(line: 765, column: 16, scope: !934)
!934 = distinct !DILexicalBlock(scope: !932, file: !3, line: 765, column: 16)
!935 = !DILocation(line: 765, column: 16, scope: !936)
!936 = distinct !DILexicalBlock(scope: !789, file: !3, line: 765, column: 16)
!937 = !DILocation(line: 765, column: 16, scope: !790)
!938 = !DILocation(line: 765, column: 14, scope: !790)
!939 = !DILocation(line: 763, column: 4, scope: !790)
!940 = distinct !{!940, !910, !941, !455, !456}
!941 = !DILocation(line: 772, column: 4, scope: !784)
!942 = !DILocation(line: 773, column: 3, scope: !785)
!943 = !DILocation(line: 762, column: 3, scope: !792)
!944 = !DILocation(line: 762, column: 3, scope: !945)
!945 = distinct !DILexicalBlock(scope: !792, file: !3, line: 762, column: 3)
!946 = !DILocation(line: 762, column: 3, scope: !947)
!947 = distinct !DILexicalBlock(scope: !945, file: !3, line: 762, column: 3)
!948 = distinct !{!948, !903, !949, !455, !456}
!949 = !DILocation(line: 773, column: 3, scope: !787)
!950 = !DILocation(line: 774, column: 3, scope: !778)
!951 = !DILocation(line: 774, column: 9, scope: !778)
!952 = !DILocation(line: 774, column: 11, scope: !778)
!953 = !DILocation(line: 775, column: 2, scope: !779)
!954 = !DILocation(line: 775, column: 2, scope: !778)
!955 = !DILocation(line: 776, column: 1, scope: !758)
!956 = !DILocation(line: 777, column: 2, scope: !758)
!957 = !DILocation(line: 778, column: 1, scope: !758)
!958 = distinct !DISubprogram(name: "rht_ptr_rcu", scope: !51, file: !51, line: 373, type: !959, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !963)
!959 = !DISubroutineType(types: !960)
!960 = !{!93, !961}
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!963 = !{!964, !965}
!964 = !DILocalVariable(name: "bkt", arg: 1, scope: !958, file: !51, line: 374, type: !961)
!965 = !DILocalVariable(name: "__UNIQUE_ID_rcu277", scope: !966, file: !51, line: 376, type: !83)
!966 = distinct !DILexicalBlock(scope: !958, file: !51, line: 376, column: 19)
!967 = !DILocation(line: 374, column: 39, scope: !958)
!968 = !DILocation(line: 376, column: 19, scope: !966)
!969 = !DILocation(line: 376, column: 19, scope: !970)
!970 = distinct !DILexicalBlock(scope: !966, file: !51, line: 376, column: 19)
!971 = !DILocation(line: 376, column: 19, scope: !972)
!972 = distinct !DILexicalBlock(scope: !970, file: !51, line: 376, column: 19)
!973 = !DILocation(line: 376, column: 19, scope: !974)
!974 = distinct !DILexicalBlock(scope: !966, file: !51, line: 376, column: 19)
!975 = !DILocation(line: 376, column: 19, scope: !958)
!976 = !DILocation(line: 376, column: 42, scope: !958)
!977 = !DILocation(line: 376, column: 9, scope: !958)
!978 = !DILocation(line: 376, column: 2, scope: !958)
!979 = distinct !DISubprogram(name: "rht_bucket", scope: !51, file: !51, line: 286, type: !980, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !982)
!980 = !DISubroutineType(types: !981)
!981 = !{!961, !342, !7}
!982 = !{!983, !984}
!983 = !DILocalVariable(name: "tbl", arg: 1, scope: !979, file: !51, line: 287, type: !342)
!984 = !DILocalVariable(name: "hash", arg: 2, scope: !979, file: !51, line: 287, type: !7)
!985 = !DILocation(line: 287, column: 29, scope: !979)
!986 = !DILocation(line: 287, column: 47, scope: !979)
!987 = !DILocation(line: 289, column: 9, scope: !979)
!988 = !DILocation(line: 289, column: 49, scope: !979)
!989 = !DILocation(line: 289, column: 54, scope: !979)
!990 = !DILocation(line: 289, column: 31, scope: !979)
!991 = !DILocation(line: 290, column: 11, scope: !979)
!992 = !DILocation(line: 290, column: 16, scope: !979)
!993 = !DILocation(line: 290, column: 24, scope: !979)
!994 = !DILocation(line: 289, column: 2, scope: !979)
!995 = distinct !DISubprogram(name: "rht_is_a_nulls", scope: !51, file: !51, line: 108, type: !996, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1000)
!996 = !DISubroutineType(types: !997)
!997 = !{!181, !998}
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!1000 = !{!1001}
!1001 = !DILocalVariable(name: "ptr", arg: 1, scope: !995, file: !51, line: 108, type: !998)
!1002 = !DILocation(line: 108, column: 60, scope: !995)
!1003 = !DILocation(line: 110, column: 26, scope: !995)
!1004 = !DILocation(line: 110, column: 10, scope: !995)
!1005 = !DILocation(line: 110, column: 30, scope: !995)
!1006 = !DILocation(line: 110, column: 9, scope: !995)
!1007 = !DILocation(line: 110, column: 2, scope: !995)
!1008 = distinct !DISubprogram(name: "rhashtable_walk_next", scope: !3, file: !3, line: 863, type: !1009, scopeLine: 864, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1011)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!48, !634}
!1011 = !{!1012, !1013, !1014, !1015, !1016, !1017, !1022, !1025}
!1012 = !DILocalVariable(name: "iter", arg: 1, scope: !1008, file: !3, line: 863, type: !634)
!1013 = !DILocalVariable(name: "list", scope: !1008, file: !3, line: 865, type: !98)
!1014 = !DILocalVariable(name: "ht", scope: !1008, file: !3, line: 866, type: !165)
!1015 = !DILocalVariable(name: "p", scope: !1008, file: !3, line: 867, type: !93)
!1016 = !DILocalVariable(name: "rhlist", scope: !1008, file: !3, line: 868, type: !181)
!1017 = !DILocalVariable(name: "__UNIQUE_ID_rcu372", scope: !1018, file: !3, line: 871, type: !98)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 871, column: 27)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 871, column: 7)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 870, column: 9)
!1021 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 870, column: 6)
!1022 = !DILocalVariable(name: "__UNIQUE_ID_rcu374", scope: !1023, file: !3, line: 872, type: !93)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 872, column: 8)
!1024 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 871, column: 57)
!1025 = !DILocalVariable(name: "__mptr", scope: !1026, file: !3, line: 873, type: !48)
!1026 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 873, column: 11)
!1027 = !DILocation(line: 863, column: 52, scope: !1008)
!1028 = !DILocation(line: 865, column: 2, scope: !1008)
!1029 = !DILocation(line: 865, column: 22, scope: !1008)
!1030 = !DILocation(line: 865, column: 29, scope: !1008)
!1031 = !DILocation(line: 865, column: 35, scope: !1008)
!1032 = !DILocation(line: 866, column: 2, scope: !1008)
!1033 = !DILocation(line: 866, column: 21, scope: !1008)
!1034 = !DILocation(line: 866, column: 26, scope: !1008)
!1035 = !DILocation(line: 866, column: 32, scope: !1008)
!1036 = !DILocation(line: 867, column: 2, scope: !1008)
!1037 = !DILocation(line: 867, column: 21, scope: !1008)
!1038 = !DILocation(line: 867, column: 25, scope: !1008)
!1039 = !DILocation(line: 867, column: 31, scope: !1008)
!1040 = !DILocation(line: 868, column: 2, scope: !1008)
!1041 = !DILocation(line: 868, column: 7, scope: !1008)
!1042 = !DILocation(line: 868, column: 16, scope: !1008)
!1043 = !DILocation(line: 868, column: 20, scope: !1008)
!1044 = !DILocation(line: 870, column: 6, scope: !1021)
!1045 = !DILocation(line: 870, column: 6, scope: !1008)
!1046 = !DILocation(line: 871, column: 8, scope: !1019)
!1047 = !DILocation(line: 871, column: 15, scope: !1019)
!1048 = !DILocation(line: 871, column: 27, scope: !1018)
!1049 = !DILocation(line: 871, column: 27, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 871, column: 27)
!1051 = !DILocation(line: 871, column: 27, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 871, column: 27)
!1053 = !DILocation(line: 871, column: 27, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 871, column: 27)
!1055 = !DILocation(line: 871, column: 27, scope: !1019)
!1056 = !DILocation(line: 871, column: 25, scope: !1019)
!1057 = !DILocation(line: 871, column: 7, scope: !1020)
!1058 = !DILocation(line: 872, column: 8, scope: !1023)
!1059 = !DILocation(line: 872, column: 8, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 872, column: 8)
!1061 = !DILocation(line: 872, column: 8, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 872, column: 8)
!1063 = !DILocation(line: 872, column: 8, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 872, column: 8)
!1065 = !DILocation(line: 872, column: 8, scope: !1024)
!1066 = !DILocation(line: 872, column: 6, scope: !1024)
!1067 = !DILocation(line: 873, column: 11, scope: !1026)
!1068 = !DILocation(line: 873, column: 11, scope: !1024)
!1069 = !DILocation(line: 873, column: 9, scope: !1024)
!1070 = !DILocation(line: 874, column: 3, scope: !1024)
!1071 = !DILocation(line: 875, column: 23, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 875, column: 7)
!1073 = !DILocation(line: 875, column: 8, scope: !1072)
!1074 = !DILocation(line: 875, column: 7, scope: !1020)
!1075 = !DILocation(line: 876, column: 4, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 875, column: 27)
!1077 = !DILocation(line: 876, column: 10, scope: !1076)
!1078 = !DILocation(line: 876, column: 14, scope: !1076)
!1079 = !DILocation(line: 877, column: 14, scope: !1076)
!1080 = !DILocation(line: 877, column: 4, scope: !1076)
!1081 = !DILocation(line: 877, column: 10, scope: !1076)
!1082 = !DILocation(line: 877, column: 12, scope: !1076)
!1083 = !DILocation(line: 878, column: 17, scope: !1076)
!1084 = !DILocation(line: 878, column: 4, scope: !1076)
!1085 = !DILocation(line: 878, column: 10, scope: !1076)
!1086 = !DILocation(line: 878, column: 15, scope: !1076)
!1087 = !DILocation(line: 879, column: 19, scope: !1076)
!1088 = !DILocation(line: 879, column: 23, scope: !1076)
!1089 = !DILocation(line: 879, column: 33, scope: !1076)
!1090 = !DILocation(line: 879, column: 39, scope: !1076)
!1091 = !DILocation(line: 879, column: 47, scope: !1076)
!1092 = !DILocation(line: 879, column: 11, scope: !1076)
!1093 = !DILocation(line: 879, column: 4, scope: !1076)
!1094 = !DILocation(line: 885, column: 3, scope: !1020)
!1095 = !DILocation(line: 885, column: 9, scope: !1020)
!1096 = !DILocation(line: 885, column: 14, scope: !1020)
!1097 = !DILocation(line: 886, column: 3, scope: !1020)
!1098 = !DILocation(line: 886, column: 9, scope: !1020)
!1099 = !DILocation(line: 886, column: 13, scope: !1020)
!1100 = !DILocation(line: 887, column: 2, scope: !1020)
!1101 = !DILocation(line: 889, column: 37, scope: !1008)
!1102 = !DILocation(line: 889, column: 9, scope: !1008)
!1103 = !DILocation(line: 889, column: 2, scope: !1008)
!1104 = !DILocation(line: 890, column: 1, scope: !1008)
!1105 = distinct !DISubprogram(name: "rht_obj", scope: !51, file: !51, line: 113, type: !1106, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1110)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!48, !1108, !998}
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!1110 = !{!1111, !1112}
!1111 = !DILocalVariable(name: "ht", arg: 1, scope: !1105, file: !51, line: 113, type: !1108)
!1112 = !DILocalVariable(name: "he", arg: 2, scope: !1105, file: !51, line: 114, type: !998)
!1113 = !DILocation(line: 113, column: 54, scope: !1105)
!1114 = !DILocation(line: 114, column: 33, scope: !1105)
!1115 = !DILocation(line: 116, column: 17, scope: !1105)
!1116 = !DILocation(line: 116, column: 22, scope: !1105)
!1117 = !DILocation(line: 116, column: 26, scope: !1105)
!1118 = !DILocation(line: 116, column: 28, scope: !1105)
!1119 = !DILocation(line: 116, column: 20, scope: !1105)
!1120 = !DILocation(line: 116, column: 2, scope: !1105)
!1121 = distinct !DISubprogram(name: "__rhashtable_walk_find_next", scope: !3, file: !3, line: 791, type: !1009, scopeLine: 792, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1122)
!1122 = !{!1123, !1124, !1125, !1126, !1127, !1128, !1129, !1133, !1140, !1143, !1145, !1146}
!1123 = !DILocalVariable(name: "iter", arg: 1, scope: !1121, file: !3, line: 791, type: !634)
!1124 = !DILocalVariable(name: "tbl", scope: !1121, file: !3, line: 793, type: !49)
!1125 = !DILocalVariable(name: "list", scope: !1121, file: !3, line: 794, type: !98)
!1126 = !DILocalVariable(name: "ht", scope: !1121, file: !3, line: 795, type: !165)
!1127 = !DILocalVariable(name: "p", scope: !1121, file: !3, line: 796, type: !93)
!1128 = !DILocalVariable(name: "rhlist", scope: !1121, file: !3, line: 797, type: !181)
!1129 = !DILocalVariable(name: "skip", scope: !1130, file: !3, line: 803, type: !124)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 802, column: 47)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 802, column: 2)
!1132 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 802, column: 2)
!1133 = !DILocalVariable(name: "__mptr", scope: !1134, file: !3, line: 807, type: !48)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 807, column: 12)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 806, column: 16)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 806, column: 8)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 805, column: 40)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 805, column: 3)
!1139 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 805, column: 3)
!1140 = !DILocalVariable(name: "__UNIQUE_ID_rcu368", scope: !1141, file: !3, line: 813, type: !98)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 813, column: 13)
!1142 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 809, column: 8)
!1143 = !DILocalVariable(name: "__UNIQUE_ID_rcu366", scope: !1144, file: !3, line: 805, type: !93)
!1144 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 805, column: 3)
!1145 = !DILabel(scope: !1130, name: "next", file: !3, line: 823)
!1146 = !DILocalVariable(name: "__UNIQUE_ID_rcu370", scope: !1147, file: !3, line: 839, type: !49)
!1147 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 839, column: 21)
!1148 = !DILocation(line: 791, column: 66, scope: !1121)
!1149 = !DILocation(line: 793, column: 2, scope: !1121)
!1150 = !DILocation(line: 793, column: 23, scope: !1121)
!1151 = !DILocation(line: 793, column: 29, scope: !1121)
!1152 = !DILocation(line: 793, column: 35, scope: !1121)
!1153 = !DILocation(line: 793, column: 42, scope: !1121)
!1154 = !DILocation(line: 794, column: 2, scope: !1121)
!1155 = !DILocation(line: 794, column: 22, scope: !1121)
!1156 = !DILocation(line: 794, column: 29, scope: !1121)
!1157 = !DILocation(line: 794, column: 35, scope: !1121)
!1158 = !DILocation(line: 795, column: 2, scope: !1121)
!1159 = !DILocation(line: 795, column: 21, scope: !1121)
!1160 = !DILocation(line: 795, column: 26, scope: !1121)
!1161 = !DILocation(line: 795, column: 32, scope: !1121)
!1162 = !DILocation(line: 796, column: 2, scope: !1121)
!1163 = !DILocation(line: 796, column: 21, scope: !1121)
!1164 = !DILocation(line: 796, column: 25, scope: !1121)
!1165 = !DILocation(line: 796, column: 31, scope: !1121)
!1166 = !DILocation(line: 797, column: 2, scope: !1121)
!1167 = !DILocation(line: 797, column: 7, scope: !1121)
!1168 = !DILocation(line: 797, column: 16, scope: !1121)
!1169 = !DILocation(line: 797, column: 20, scope: !1121)
!1170 = !DILocation(line: 799, column: 7, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 799, column: 6)
!1172 = !DILocation(line: 799, column: 6, scope: !1121)
!1173 = !DILocation(line: 800, column: 3, scope: !1171)
!1174 = !DILocation(line: 802, column: 2, scope: !1121)
!1175 = !DILocation(line: 802, column: 9, scope: !1131)
!1176 = !DILocation(line: 802, column: 15, scope: !1131)
!1177 = !DILocation(line: 802, column: 22, scope: !1131)
!1178 = !DILocation(line: 802, column: 27, scope: !1131)
!1179 = !DILocation(line: 802, column: 20, scope: !1131)
!1180 = !DILocation(line: 802, column: 2, scope: !1132)
!1181 = !DILocation(line: 803, column: 3, scope: !1130)
!1182 = !DILocation(line: 803, column: 7, scope: !1130)
!1183 = !DILocation(line: 803, column: 14, scope: !1130)
!1184 = !DILocation(line: 803, column: 20, scope: !1130)
!1185 = !DILocation(line: 805, column: 3, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 805, column: 3)
!1187 = !{i64 2154232280}
!1188 = !DILocation(line: 805, column: 3, scope: !1139)
!1189 = !DILocation(line: 805, column: 3, scope: !1138)
!1190 = !DILocation(line: 806, column: 8, scope: !1136)
!1191 = !DILocation(line: 806, column: 8, scope: !1137)
!1192 = !DILocation(line: 807, column: 12, scope: !1134)
!1193 = !DILocation(line: 807, column: 12, scope: !1135)
!1194 = !DILocation(line: 807, column: 10, scope: !1135)
!1195 = !DILocation(line: 809, column: 5, scope: !1135)
!1196 = !DILocation(line: 810, column: 11, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 810, column: 10)
!1198 = !DILocation(line: 810, column: 10, scope: !1142)
!1199 = !DILocation(line: 811, column: 7, scope: !1197)
!1200 = !DILocation(line: 812, column: 10, scope: !1142)
!1201 = !DILocation(line: 813, column: 13, scope: !1141)
!1202 = !DILocation(line: 813, column: 13, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 813, column: 13)
!1204 = !DILocation(line: 813, column: 13, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 813, column: 13)
!1206 = !DILocation(line: 813, column: 13, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 813, column: 13)
!1208 = !DILocation(line: 813, column: 13, scope: !1142)
!1209 = !DILocation(line: 813, column: 11, scope: !1142)
!1210 = !DILocation(line: 814, column: 5, scope: !1142)
!1211 = !DILocation(line: 814, column: 14, scope: !1135)
!1212 = distinct !{!1212, !1195, !1213, !455, !456}
!1213 = !DILocation(line: 814, column: 18, scope: !1135)
!1214 = !DILocation(line: 816, column: 5, scope: !1135)
!1215 = !DILocation(line: 818, column: 9, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 818, column: 8)
!1217 = !DILocation(line: 818, column: 8, scope: !1137)
!1218 = !DILocation(line: 819, column: 5, scope: !1216)
!1219 = !DILocation(line: 820, column: 8, scope: !1137)
!1220 = !DILocation(line: 821, column: 3, scope: !1137)
!1221 = !DILocation(line: 805, column: 3, scope: !1144)
!1222 = !DILocation(line: 805, column: 3, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 805, column: 3)
!1224 = !DILocation(line: 805, column: 3, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 805, column: 3)
!1226 = distinct !{!1226, !1188, !1227, !455, !456}
!1227 = !DILocation(line: 821, column: 3, scope: !1139)
!1228 = !DILocation(line: 823, column: 1, scope: !1130)
!1229 = !DILocation(line: 824, column: 23, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 824, column: 7)
!1231 = !DILocation(line: 824, column: 8, scope: !1230)
!1232 = !DILocation(line: 824, column: 7, scope: !1130)
!1233 = !DILocation(line: 825, column: 4, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 824, column: 27)
!1235 = !DILocation(line: 825, column: 10, scope: !1234)
!1236 = !DILocation(line: 825, column: 14, scope: !1234)
!1237 = !DILocation(line: 826, column: 14, scope: !1234)
!1238 = !DILocation(line: 826, column: 4, scope: !1234)
!1239 = !DILocation(line: 826, column: 10, scope: !1234)
!1240 = !DILocation(line: 826, column: 12, scope: !1234)
!1241 = !DILocation(line: 827, column: 17, scope: !1234)
!1242 = !DILocation(line: 827, column: 4, scope: !1234)
!1243 = !DILocation(line: 827, column: 10, scope: !1234)
!1244 = !DILocation(line: 827, column: 15, scope: !1234)
!1245 = !DILocation(line: 828, column: 19, scope: !1234)
!1246 = !DILocation(line: 828, column: 23, scope: !1234)
!1247 = !DILocation(line: 828, column: 33, scope: !1234)
!1248 = !DILocation(line: 828, column: 39, scope: !1234)
!1249 = !DILocation(line: 828, column: 47, scope: !1234)
!1250 = !DILocation(line: 828, column: 11, scope: !1234)
!1251 = !DILocation(line: 828, column: 4, scope: !1234)
!1252 = !DILocation(line: 831, column: 3, scope: !1130)
!1253 = !DILocation(line: 831, column: 9, scope: !1130)
!1254 = !DILocation(line: 831, column: 14, scope: !1130)
!1255 = !DILocation(line: 832, column: 2, scope: !1131)
!1256 = !DILocation(line: 832, column: 2, scope: !1130)
!1257 = !DILocation(line: 802, column: 33, scope: !1131)
!1258 = !DILocation(line: 802, column: 39, scope: !1131)
!1259 = !DILocation(line: 802, column: 43, scope: !1131)
!1260 = !DILocation(line: 802, column: 2, scope: !1131)
!1261 = distinct !{!1261, !1180, !1262, !455, !456}
!1262 = !DILocation(line: 832, column: 2, scope: !1132)
!1263 = !DILocation(line: 834, column: 2, scope: !1121)
!1264 = !DILocation(line: 834, column: 8, scope: !1121)
!1265 = !DILocation(line: 834, column: 10, scope: !1121)
!1266 = !DILocation(line: 837, column: 2, scope: !1121)
!1267 = !DILocation(line: 837, column: 2, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 837, column: 2)
!1269 = !DILocation(line: 837, column: 2, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 837, column: 2)
!1271 = !DILocation(line: 837, column: 2, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 837, column: 2)
!1273 = !DILocation(line: 837, column: 2, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 837, column: 2)
!1275 = !{i64 2154240425}
!1276 = !DILocation(line: 839, column: 21, scope: !1147)
!1277 = !DILocation(line: 839, column: 21, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 839, column: 21)
!1279 = !DILocation(line: 839, column: 21, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 839, column: 21)
!1281 = !DILocation(line: 839, column: 21, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 839, column: 21)
!1283 = !DILocation(line: 839, column: 21, scope: !1121)
!1284 = !DILocation(line: 839, column: 2, scope: !1121)
!1285 = !DILocation(line: 839, column: 8, scope: !1121)
!1286 = !DILocation(line: 839, column: 15, scope: !1121)
!1287 = !DILocation(line: 839, column: 19, scope: !1121)
!1288 = !DILocation(line: 840, column: 6, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 840, column: 6)
!1290 = !DILocation(line: 840, column: 12, scope: !1289)
!1291 = !DILocation(line: 840, column: 19, scope: !1289)
!1292 = !DILocation(line: 840, column: 6, scope: !1121)
!1293 = !DILocation(line: 841, column: 3, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 840, column: 24)
!1295 = !DILocation(line: 841, column: 9, scope: !1294)
!1296 = !DILocation(line: 841, column: 14, scope: !1294)
!1297 = !DILocation(line: 842, column: 3, scope: !1294)
!1298 = !DILocation(line: 842, column: 9, scope: !1294)
!1299 = !DILocation(line: 842, column: 14, scope: !1294)
!1300 = !DILocation(line: 843, column: 10, scope: !1294)
!1301 = !DILocation(line: 843, column: 3, scope: !1294)
!1302 = !DILocation(line: 845, column: 3, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 844, column: 9)
!1304 = !DILocation(line: 845, column: 9, scope: !1303)
!1305 = !DILocation(line: 845, column: 22, scope: !1303)
!1306 = !DILocation(line: 848, column: 2, scope: !1121)
!1307 = !DILocation(line: 849, column: 1, scope: !1121)
!1308 = distinct !DISubprogram(name: "rhashtable_walk_peek", scope: !3, file: !3, line: 902, type: !1009, scopeLine: 903, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1309)
!1309 = !{!1310, !1311, !1312, !1313}
!1310 = !DILocalVariable(name: "iter", arg: 1, scope: !1308, file: !3, line: 902, type: !634)
!1311 = !DILocalVariable(name: "list", scope: !1308, file: !3, line: 904, type: !98)
!1312 = !DILocalVariable(name: "ht", scope: !1308, file: !3, line: 905, type: !165)
!1313 = !DILocalVariable(name: "p", scope: !1308, file: !3, line: 906, type: !93)
!1314 = !DILocation(line: 902, column: 52, scope: !1308)
!1315 = !DILocation(line: 904, column: 2, scope: !1308)
!1316 = !DILocation(line: 904, column: 22, scope: !1308)
!1317 = !DILocation(line: 904, column: 29, scope: !1308)
!1318 = !DILocation(line: 904, column: 35, scope: !1308)
!1319 = !DILocation(line: 905, column: 2, scope: !1308)
!1320 = !DILocation(line: 905, column: 21, scope: !1308)
!1321 = !DILocation(line: 905, column: 26, scope: !1308)
!1322 = !DILocation(line: 905, column: 32, scope: !1308)
!1323 = !DILocation(line: 906, column: 2, scope: !1308)
!1324 = !DILocation(line: 906, column: 21, scope: !1308)
!1325 = !DILocation(line: 906, column: 25, scope: !1308)
!1326 = !DILocation(line: 906, column: 31, scope: !1308)
!1327 = !DILocation(line: 908, column: 6, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 908, column: 6)
!1329 = !DILocation(line: 908, column: 6, scope: !1308)
!1330 = !DILocation(line: 909, column: 18, scope: !1328)
!1331 = !DILocation(line: 909, column: 22, scope: !1328)
!1332 = !DILocation(line: 909, column: 26, scope: !1328)
!1333 = !DILocation(line: 909, column: 36, scope: !1328)
!1334 = !DILocation(line: 909, column: 42, scope: !1328)
!1335 = !DILocation(line: 909, column: 50, scope: !1328)
!1336 = !DILocation(line: 909, column: 10, scope: !1328)
!1337 = !DILocation(line: 909, column: 3, scope: !1328)
!1338 = !DILocation(line: 913, column: 6, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 913, column: 6)
!1340 = !DILocation(line: 913, column: 12, scope: !1339)
!1341 = !DILocation(line: 913, column: 6, scope: !1308)
!1342 = !DILocation(line: 920, column: 3, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 913, column: 18)
!1344 = !DILocation(line: 920, column: 9, scope: !1343)
!1345 = !DILocation(line: 920, column: 13, scope: !1343)
!1346 = !DILocation(line: 921, column: 2, scope: !1343)
!1347 = !DILocation(line: 923, column: 37, scope: !1308)
!1348 = !DILocation(line: 923, column: 9, scope: !1308)
!1349 = !DILocation(line: 923, column: 2, scope: !1308)
!1350 = !DILocation(line: 924, column: 1, scope: !1308)
!1351 = distinct !DISubprogram(name: "rhashtable_walk_stop", scope: !3, file: !3, line: 934, type: !720, scopeLine: 936, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1352)
!1352 = !{!1353, !1354, !1355, !1356}
!1353 = !DILocalVariable(name: "iter", arg: 1, scope: !1351, file: !3, line: 934, type: !634)
!1354 = !DILocalVariable(name: "ht", scope: !1351, file: !3, line: 937, type: !165)
!1355 = !DILocalVariable(name: "tbl", scope: !1351, file: !3, line: 938, type: !49)
!1356 = !DILabel(scope: !1351, name: "out", file: !3, line: 953)
!1357 = !DILocation(line: 934, column: 51, scope: !1351)
!1358 = !DILocation(line: 937, column: 2, scope: !1351)
!1359 = !DILocation(line: 937, column: 21, scope: !1351)
!1360 = !DILocation(line: 938, column: 2, scope: !1351)
!1361 = !DILocation(line: 938, column: 23, scope: !1351)
!1362 = !DILocation(line: 938, column: 29, scope: !1351)
!1363 = !DILocation(line: 938, column: 35, scope: !1351)
!1364 = !DILocation(line: 938, column: 42, scope: !1351)
!1365 = !DILocation(line: 940, column: 7, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 940, column: 6)
!1367 = !DILocation(line: 940, column: 6, scope: !1351)
!1368 = !DILocation(line: 941, column: 3, scope: !1366)
!1369 = !DILocation(line: 943, column: 7, scope: !1351)
!1370 = !DILocation(line: 943, column: 13, scope: !1351)
!1371 = !DILocation(line: 943, column: 5, scope: !1351)
!1372 = !DILocation(line: 945, column: 13, scope: !1351)
!1373 = !DILocation(line: 945, column: 17, scope: !1351)
!1374 = !DILocation(line: 945, column: 2, scope: !1351)
!1375 = !DILocation(line: 946, column: 31, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 946, column: 6)
!1377 = !DILocation(line: 946, column: 36, scope: !1376)
!1378 = !DILocation(line: 946, column: 6, scope: !1376)
!1379 = !DILocation(line: 946, column: 6, scope: !1351)
!1380 = !DILocation(line: 948, column: 3, scope: !1376)
!1381 = !DILocation(line: 948, column: 9, scope: !1376)
!1382 = !DILocation(line: 948, column: 16, scope: !1376)
!1383 = !DILocation(line: 948, column: 20, scope: !1376)
!1384 = !DILocation(line: 950, column: 13, scope: !1376)
!1385 = !DILocation(line: 950, column: 19, scope: !1376)
!1386 = !DILocation(line: 950, column: 26, scope: !1376)
!1387 = !DILocation(line: 950, column: 33, scope: !1376)
!1388 = !DILocation(line: 950, column: 38, scope: !1376)
!1389 = !DILocation(line: 950, column: 3, scope: !1376)
!1390 = !DILocation(line: 951, column: 15, scope: !1351)
!1391 = !DILocation(line: 951, column: 19, scope: !1351)
!1392 = !DILocation(line: 951, column: 2, scope: !1351)
!1393 = !DILocation(line: 953, column: 1, scope: !1351)
!1394 = !DILocation(line: 954, column: 2, scope: !1351)
!1395 = !DILocation(line: 955, column: 1, scope: !1351)
!1396 = distinct !DISubprogram(name: "rcu_head_after_call_rcu", scope: !368, file: !368, line: 1084, type: !1397, scopeLine: 1085, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1399)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!181, !71, !152}
!1399 = !{!1400, !1401, !1402, !1403, !1405}
!1400 = !DILocalVariable(name: "rhp", arg: 1, scope: !1396, file: !368, line: 1084, type: !71)
!1401 = !DILocalVariable(name: "f", arg: 2, scope: !1396, file: !368, line: 1084, type: !152)
!1402 = !DILocalVariable(name: "func", scope: !1396, file: !368, line: 1086, type: !152)
!1403 = !DILocalVariable(name: "__ret_warn_on", scope: !1404, file: !368, line: 1090, type: !124)
!1404 = distinct !DILexicalBlock(scope: !1396, file: !368, line: 1090, column: 2)
!1405 = !DILocalVariable(name: "__flags", scope: !1406, file: !368, line: 1090, type: !124)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !368, line: 1090, column: 2)
!1407 = distinct !DILexicalBlock(scope: !1404, file: !368, line: 1090, column: 2)
!1408 = !DILocation(line: 1084, column: 42, scope: !1396)
!1409 = !DILocation(line: 1084, column: 62, scope: !1396)
!1410 = !DILocation(line: 1086, column: 2, scope: !1396)
!1411 = !DILocation(line: 1086, column: 17, scope: !1396)
!1412 = !DILocation(line: 1086, column: 24, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1396, file: !368, line: 1086, column: 24)
!1414 = !DILocation(line: 1086, column: 24, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1413, file: !368, line: 1086, column: 24)
!1416 = !DILocation(line: 1088, column: 6, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1396, file: !368, line: 1088, column: 6)
!1418 = !DILocation(line: 1088, column: 14, scope: !1417)
!1419 = !DILocation(line: 1088, column: 11, scope: !1417)
!1420 = !DILocation(line: 1088, column: 6, scope: !1396)
!1421 = !DILocation(line: 1089, column: 3, scope: !1417)
!1422 = !DILocation(line: 1090, column: 2, scope: !1404)
!1423 = !DILocation(line: 1090, column: 2, scope: !1407)
!1424 = !DILocation(line: 1090, column: 2, scope: !1406)
!1425 = !DILocation(line: 1090, column: 2, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1406, file: !368, line: 1090, column: 2)
!1427 = !DILocation(line: 1090, column: 2, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1406, file: !368, line: 1090, column: 2)
!1429 = !{i64 2149725861, i64 2149725890, i64 2149725936, i64 2149725994, i64 2149726048, i64 2149726102, i64 2149726157, i64 2149726188, i64 2149726496, i64 2149726502, i64 2149726549, i64 2149726572, i64 2149726598}
!1430 = !DILocation(line: 1090, column: 2, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1406, file: !368, line: 1090, column: 2)
!1432 = !DILocation(line: 1090, column: 2, scope: !1396)
!1433 = !DILocation(line: 1091, column: 2, scope: !1396)
!1434 = !DILocation(line: 1092, column: 1, scope: !1396)
!1435 = distinct !DISubprogram(name: "bucket_table_free_rcu", scope: !3, file: !3, line: 117, type: !74, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1436)
!1436 = !{!1437, !1438}
!1437 = !DILocalVariable(name: "head", arg: 1, scope: !1435, file: !3, line: 117, type: !71)
!1438 = !DILocalVariable(name: "__mptr", scope: !1439, file: !3, line: 119, type: !48)
!1439 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 119, column: 20)
!1440 = !DILocation(line: 117, column: 52, scope: !1435)
!1441 = !DILocation(line: 119, column: 20, scope: !1439)
!1442 = !DILocation(line: 119, column: 20, scope: !1435)
!1443 = !DILocation(line: 119, column: 2, scope: !1435)
!1444 = !DILocation(line: 120, column: 1, scope: !1435)
!1445 = !DILocation(line: 1019, column: 40, scope: !295)
!1446 = !DILocation(line: 1020, column: 39, scope: !295)
!1447 = !DILocation(line: 1022, column: 2, scope: !295)
!1448 = !DILocation(line: 1022, column: 23, scope: !295)
!1449 = !DILocation(line: 1023, column: 2, scope: !295)
!1450 = !DILocation(line: 1023, column: 9, scope: !295)
!1451 = !DILocation(line: 1025, column: 8, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !295, file: !3, line: 1025, column: 6)
!1453 = !DILocation(line: 1025, column: 16, scope: !1452)
!1454 = !DILocation(line: 1025, column: 24, scope: !1452)
!1455 = !DILocation(line: 1025, column: 28, scope: !1452)
!1456 = !DILocation(line: 1025, column: 36, scope: !1452)
!1457 = !DILocation(line: 1025, column: 48, scope: !1452)
!1458 = !DILocation(line: 1026, column: 7, scope: !1452)
!1459 = !DILocation(line: 1026, column: 15, scope: !1452)
!1460 = !DILocation(line: 1026, column: 26, scope: !1452)
!1461 = !DILocation(line: 1026, column: 30, scope: !1452)
!1462 = !DILocation(line: 1026, column: 38, scope: !1452)
!1463 = !DILocation(line: 1025, column: 6, scope: !295)
!1464 = !DILocation(line: 1027, column: 3, scope: !1452)
!1465 = !DILocation(line: 1029, column: 9, scope: !295)
!1466 = !DILocation(line: 1029, column: 2, scope: !295)
!1467 = !DILocation(line: 1030, column: 2, scope: !295)
!1468 = !DILocation(line: 1030, column: 2, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !295, file: !3, line: 1030, column: 2)
!1470 = !DILocation(line: 1031, column: 2, scope: !295)
!1471 = !DILocation(line: 1031, column: 2, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !295, file: !3, line: 1031, column: 2)
!1473 = !DILocation(line: 1032, column: 10, scope: !295)
!1474 = !DILocation(line: 1032, column: 14, scope: !295)
!1475 = !DILocation(line: 1032, column: 17, scope: !295)
!1476 = !DILocation(line: 1032, column: 2, scope: !295)
!1477 = !DILocation(line: 1034, column: 6, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !295, file: !3, line: 1034, column: 6)
!1479 = !DILocation(line: 1034, column: 14, scope: !1478)
!1480 = !DILocation(line: 1034, column: 6, scope: !295)
!1481 = !DILocation(line: 1035, column: 20, scope: !1478)
!1482 = !DILocation(line: 1035, column: 3, scope: !1478)
!1483 = !DILocation(line: 1035, column: 7, scope: !1478)
!1484 = !DILocation(line: 1035, column: 9, scope: !1478)
!1485 = !DILocation(line: 1035, column: 18, scope: !1478)
!1486 = !DILocation(line: 1038, column: 2, scope: !295)
!1487 = !DILocation(line: 1038, column: 6, scope: !295)
!1488 = !DILocation(line: 1038, column: 16, scope: !295)
!1489 = !DILocation(line: 1040, column: 6, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !295, file: !3, line: 1040, column: 6)
!1491 = !DILocation(line: 1040, column: 14, scope: !1490)
!1492 = !DILocation(line: 1040, column: 6, scope: !295)
!1493 = !DILocation(line: 1041, column: 20, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 1040, column: 24)
!1495 = !DILocation(line: 1041, column: 3, scope: !1494)
!1496 = !DILocation(line: 1041, column: 7, scope: !1494)
!1497 = !DILocation(line: 1041, column: 9, scope: !1494)
!1498 = !DILocation(line: 1041, column: 18, scope: !1494)
!1499 = !DILocation(line: 1042, column: 7, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 1042, column: 7)
!1501 = !DILocation(line: 1042, column: 11, scope: !1500)
!1502 = !DILocation(line: 1042, column: 13, scope: !1500)
!1503 = !DILocation(line: 1042, column: 24, scope: !1500)
!1504 = !DILocation(line: 1042, column: 28, scope: !1500)
!1505 = !DILocation(line: 1042, column: 38, scope: !1500)
!1506 = !DILocation(line: 1042, column: 22, scope: !1500)
!1507 = !DILocation(line: 1042, column: 7, scope: !1494)
!1508 = !DILocation(line: 1043, column: 20, scope: !1500)
!1509 = !DILocation(line: 1043, column: 24, scope: !1500)
!1510 = !DILocation(line: 1043, column: 26, scope: !1500)
!1511 = !DILocation(line: 1043, column: 35, scope: !1500)
!1512 = !DILocation(line: 1043, column: 4, scope: !1500)
!1513 = !DILocation(line: 1043, column: 8, scope: !1500)
!1514 = !DILocation(line: 1043, column: 18, scope: !1500)
!1515 = !DILocation(line: 1044, column: 2, scope: !1494)
!1516 = !DILocation(line: 1046, column: 19, scope: !306)
!1517 = !DILocation(line: 1046, column: 19, scope: !295)
!1518 = !DILocation(line: 1046, column: 2, scope: !295)
!1519 = !DILocation(line: 1046, column: 6, scope: !295)
!1520 = !DILocation(line: 1046, column: 8, scope: !295)
!1521 = !DILocation(line: 1046, column: 17, scope: !295)
!1522 = !DILocation(line: 1048, column: 33, scope: !295)
!1523 = !DILocation(line: 1048, column: 37, scope: !295)
!1524 = !DILocation(line: 1048, column: 9, scope: !295)
!1525 = !DILocation(line: 1048, column: 7, scope: !295)
!1526 = !DILocation(line: 1050, column: 16, scope: !295)
!1527 = !DILocation(line: 1050, column: 20, scope: !295)
!1528 = !DILocation(line: 1050, column: 22, scope: !295)
!1529 = !DILocation(line: 1050, column: 2, scope: !295)
!1530 = !DILocation(line: 1050, column: 6, scope: !295)
!1531 = !DILocation(line: 1050, column: 14, scope: !295)
!1532 = !DILocation(line: 1051, column: 7, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !295, file: !3, line: 1051, column: 6)
!1534 = !DILocation(line: 1051, column: 15, scope: !1533)
!1535 = !DILocation(line: 1051, column: 6, scope: !295)
!1536 = !DILocation(line: 1052, column: 3, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 1051, column: 23)
!1538 = !DILocation(line: 1052, column: 7, scope: !1537)
!1539 = !DILocation(line: 1052, column: 9, scope: !1537)
!1540 = !DILocation(line: 1052, column: 16, scope: !1537)
!1541 = !DILocation(line: 1054, column: 9, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 1054, column: 7)
!1543 = !DILocation(line: 1054, column: 13, scope: !1542)
!1544 = !DILocation(line: 1054, column: 21, scope: !1542)
!1545 = !DILocation(line: 1054, column: 7, scope: !1537)
!1546 = !DILocation(line: 1055, column: 4, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 1054, column: 43)
!1548 = !DILocation(line: 1055, column: 8, scope: !1547)
!1549 = !DILocation(line: 1055, column: 16, scope: !1547)
!1550 = !DILocation(line: 1056, column: 4, scope: !1547)
!1551 = !DILocation(line: 1056, column: 8, scope: !1547)
!1552 = !DILocation(line: 1056, column: 10, scope: !1547)
!1553 = !DILocation(line: 1056, column: 17, scope: !1547)
!1554 = !DILocation(line: 1057, column: 3, scope: !1547)
!1555 = !DILocation(line: 1058, column: 2, scope: !1537)
!1556 = !DILocation(line: 1065, column: 27, scope: !295)
!1557 = !DILocation(line: 1065, column: 31, scope: !295)
!1558 = !DILocation(line: 1065, column: 8, scope: !295)
!1559 = !DILocation(line: 1065, column: 6, scope: !295)
!1560 = !DILocation(line: 1066, column: 6, scope: !311)
!1561 = !DILocation(line: 1066, column: 6, scope: !295)
!1562 = !DILocation(line: 1067, column: 10, scope: !309)
!1563 = !DILocation(line: 1067, column: 10, scope: !310)
!1564 = !DILocation(line: 1067, column: 8, scope: !310)
!1565 = !DILocation(line: 1068, column: 28, scope: !310)
!1566 = !DILocation(line: 1068, column: 32, scope: !310)
!1567 = !DILocation(line: 1068, column: 9, scope: !310)
!1568 = !DILocation(line: 1068, column: 7, scope: !310)
!1569 = !DILocation(line: 1069, column: 2, scope: !310)
!1570 = !DILocation(line: 1071, column: 14, scope: !295)
!1571 = !DILocation(line: 1071, column: 18, scope: !295)
!1572 = !DILocation(line: 1071, column: 2, scope: !295)
!1573 = !DILocation(line: 1073, column: 2, scope: !295)
!1574 = !DILocation(line: 1073, column: 2, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !295, file: !3, line: 1073, column: 2)
!1576 = !DILocation(line: 1073, column: 2, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 1073, column: 2)
!1578 = !DILocation(line: 1073, column: 2, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 1073, column: 2)
!1580 = !DILocation(line: 1073, column: 2, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 1073, column: 2)
!1582 = !DILocation(line: 1075, column: 2, scope: !295)
!1583 = !DILocation(line: 1075, column: 2, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !295, file: !3, line: 1075, column: 2)
!1585 = !DILocation(line: 1075, column: 2, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 1075, column: 2)
!1587 = !DILocation(line: 1077, column: 2, scope: !295)
!1588 = !DILocation(line: 1078, column: 1, scope: !295)
!1589 = !DISubprogram(name: "__mutex_init", scope: !225, file: !225, line: 121, type: !1590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null, !1592, !1593, !1595}
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!1596 = distinct !DISubprogram(name: "spinlock_check", scope: !689, file: !689, line: 324, type: !1597, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1600)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!1599, !692}
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!1600 = !{!1601}
!1601 = !DILocalVariable(name: "lock", arg: 1, scope: !1596, file: !689, line: 324, type: !692)
!1602 = !DILocation(line: 324, column: 67, scope: !1596)
!1603 = !DILocation(line: 326, column: 10, scope: !1596)
!1604 = !DILocation(line: 326, column: 16, scope: !1596)
!1605 = !DILocation(line: 326, column: 2, scope: !1596)
!1606 = distinct !DISubprogram(name: "__ilog2_u32", scope: !1607, file: !1607, line: 22, type: !1608, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1610)
!1607 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c147744b0ec822ab26cfdb78fa4c3998")
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!124, !56}
!1610 = !{!1611}
!1611 = !DILocalVariable(name: "n", arg: 1, scope: !1606, file: !1607, line: 22, type: !56)
!1612 = !DILocation(line: 22, column: 21, scope: !1606)
!1613 = !DILocation(line: 24, column: 13, scope: !1606)
!1614 = !DILocation(line: 24, column: 9, scope: !1606)
!1615 = !DILocation(line: 24, column: 16, scope: !1606)
!1616 = !DILocation(line: 24, column: 2, scope: !1606)
!1617 = distinct !DISubprogram(name: "__roundup_pow_of_two", scope: !1607, file: !1607, line: 55, type: !1618, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1620)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!111, !111}
!1620 = !{!1621}
!1621 = !DILocalVariable(name: "n", arg: 1, scope: !1617, file: !1607, line: 55, type: !111)
!1622 = !DILocation(line: 55, column: 50, scope: !1617)
!1623 = !DILocation(line: 57, column: 25, scope: !1617)
!1624 = !DILocation(line: 57, column: 27, scope: !1617)
!1625 = !DILocation(line: 57, column: 16, scope: !1617)
!1626 = !DILocation(line: 57, column: 13, scope: !1617)
!1627 = !DILocation(line: 57, column: 2, scope: !1617)
!1628 = distinct !DISubprogram(name: "__rounddown_pow_of_two", scope: !1607, file: !1607, line: 65, type: !1618, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1629)
!1629 = !{!1630}
!1630 = !DILocalVariable(name: "n", arg: 1, scope: !1628, file: !1607, line: 65, type: !111)
!1631 = !DILocation(line: 65, column: 52, scope: !1628)
!1632 = !DILocation(line: 67, column: 26, scope: !1628)
!1633 = !DILocation(line: 67, column: 17, scope: !1628)
!1634 = !DILocation(line: 67, column: 29, scope: !1628)
!1635 = !DILocation(line: 67, column: 13, scope: !1628)
!1636 = !DILocation(line: 67, column: 2, scope: !1628)
!1637 = distinct !DISubprogram(name: "rounded_hashtable_size", scope: !3, file: !3, line: 958, type: !1638, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1640)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!159, !298}
!1640 = !{!1641, !1642, !1643, !1646, !1647, !1649}
!1641 = !DILocalVariable(name: "params", arg: 1, scope: !1637, file: !3, line: 958, type: !298)
!1642 = !DILocalVariable(name: "retsize", scope: !1637, file: !3, line: 960, type: !159)
!1643 = !DILocalVariable(name: "__UNIQUE_ID___x379", scope: !1644, file: !3, line: 963, type: !111)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 963, column: 13)
!1645 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 962, column: 6)
!1646 = !DILocalVariable(name: "__UNIQUE_ID___y380", scope: !1644, file: !3, line: 963, type: !111)
!1647 = !DILocalVariable(name: "__UNIQUE_ID___x381", scope: !1648, file: !3, line: 966, type: !111)
!1648 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 966, column: 13)
!1649 = !DILocalVariable(name: "__UNIQUE_ID___y382", scope: !1648, file: !3, line: 966, type: !111)
!1650 = !DILocation(line: 958, column: 70, scope: !1637)
!1651 = !DILocation(line: 960, column: 2, scope: !1637)
!1652 = !DILocation(line: 960, column: 9, scope: !1637)
!1653 = !DILocation(line: 962, column: 6, scope: !1645)
!1654 = !DILocation(line: 962, column: 14, scope: !1645)
!1655 = !DILocation(line: 962, column: 6, scope: !1637)
!1656 = !DILocation(line: 963, column: 13, scope: !1644)
!1657 = !DILocation(line: 963, column: 13, scope: !1645)
!1658 = !DILocation(line: 963, column: 11, scope: !1645)
!1659 = !DILocation(line: 963, column: 3, scope: !1645)
!1660 = !DILocation(line: 966, column: 13, scope: !1648)
!1661 = !DILocation(line: 966, column: 13, scope: !1645)
!1662 = !DILocation(line: 966, column: 11, scope: !1645)
!1663 = !DILocation(line: 969, column: 9, scope: !1637)
!1664 = !DILocation(line: 970, column: 1, scope: !1637)
!1665 = !DILocation(line: 969, column: 2, scope: !1637)
!1666 = distinct !DISubprogram(name: "jhash", scope: !1667, file: !1667, line: 70, type: !186, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1668)
!1667 = !DIFile(filename: "./include/linux/jhash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca86fa12155f71794da0bd26a93ce792")
!1668 = !{!1669, !1670, !1671, !1672, !1673, !1674, !1675}
!1669 = !DILocalVariable(name: "key", arg: 1, scope: !1666, file: !1667, line: 70, type: !188)
!1670 = !DILocalVariable(name: "length", arg: 2, scope: !1666, file: !1667, line: 70, type: !56)
!1671 = !DILocalVariable(name: "initval", arg: 3, scope: !1666, file: !1667, line: 70, type: !56)
!1672 = !DILocalVariable(name: "a", scope: !1666, file: !1667, line: 72, type: !56)
!1673 = !DILocalVariable(name: "b", scope: !1666, file: !1667, line: 72, type: !56)
!1674 = !DILocalVariable(name: "c", scope: !1666, file: !1667, line: 72, type: !56)
!1675 = !DILocalVariable(name: "k", scope: !1666, file: !1667, line: 73, type: !1676)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!1678 = !DILocation(line: 70, column: 37, scope: !1666)
!1679 = !DILocation(line: 70, column: 46, scope: !1666)
!1680 = !DILocation(line: 70, column: 58, scope: !1666)
!1681 = !DILocation(line: 72, column: 2, scope: !1666)
!1682 = !DILocation(line: 72, column: 6, scope: !1666)
!1683 = !DILocation(line: 72, column: 9, scope: !1666)
!1684 = !DILocation(line: 72, column: 12, scope: !1666)
!1685 = !DILocation(line: 73, column: 2, scope: !1666)
!1686 = !DILocation(line: 73, column: 12, scope: !1666)
!1687 = !DILocation(line: 73, column: 16, scope: !1666)
!1688 = !DILocation(line: 76, column: 30, scope: !1666)
!1689 = !DILocation(line: 76, column: 28, scope: !1666)
!1690 = !DILocation(line: 76, column: 39, scope: !1666)
!1691 = !DILocation(line: 76, column: 37, scope: !1666)
!1692 = !DILocation(line: 76, column: 12, scope: !1666)
!1693 = !DILocation(line: 76, column: 8, scope: !1666)
!1694 = !DILocation(line: 76, column: 4, scope: !1666)
!1695 = !DILocation(line: 79, column: 2, scope: !1666)
!1696 = !DILocation(line: 79, column: 9, scope: !1666)
!1697 = !DILocation(line: 79, column: 16, scope: !1666)
!1698 = !DILocation(line: 80, column: 30, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1666, file: !1667, line: 79, column: 22)
!1700 = !DILocation(line: 80, column: 8, scope: !1699)
!1701 = !DILocation(line: 80, column: 5, scope: !1699)
!1702 = !DILocation(line: 81, column: 30, scope: !1699)
!1703 = !DILocation(line: 81, column: 32, scope: !1699)
!1704 = !DILocation(line: 81, column: 8, scope: !1699)
!1705 = !DILocation(line: 81, column: 5, scope: !1699)
!1706 = !DILocation(line: 82, column: 30, scope: !1699)
!1707 = !DILocation(line: 82, column: 32, scope: !1699)
!1708 = !DILocation(line: 82, column: 8, scope: !1699)
!1709 = !DILocation(line: 82, column: 5, scope: !1699)
!1710 = !DILocation(line: 83, column: 3, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1699, file: !1667, line: 83, column: 3)
!1712 = !DILocation(line: 84, column: 10, scope: !1699)
!1713 = !DILocation(line: 85, column: 5, scope: !1699)
!1714 = distinct !{!1714, !1695, !1715, !455, !456}
!1715 = !DILocation(line: 86, column: 2, scope: !1666)
!1716 = !DILocation(line: 88, column: 10, scope: !1666)
!1717 = !DILocation(line: 88, column: 2, scope: !1666)
!1718 = !DILocation(line: 89, column: 21, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1666, file: !1667, line: 88, column: 18)
!1720 = !DILocation(line: 89, column: 16, scope: !1719)
!1721 = !DILocation(line: 89, column: 26, scope: !1719)
!1722 = !DILocation(line: 89, column: 13, scope: !1719)
!1723 = !DILocation(line: 89, column: 11, scope: !1719)
!1724 = !DILocation(line: 90, column: 21, scope: !1719)
!1725 = !DILocation(line: 90, column: 16, scope: !1719)
!1726 = !DILocation(line: 90, column: 26, scope: !1719)
!1727 = !DILocation(line: 90, column: 13, scope: !1719)
!1728 = !DILocation(line: 90, column: 11, scope: !1719)
!1729 = !DILocation(line: 91, column: 21, scope: !1719)
!1730 = !DILocation(line: 91, column: 16, scope: !1719)
!1731 = !DILocation(line: 91, column: 25, scope: !1719)
!1732 = !DILocation(line: 91, column: 13, scope: !1719)
!1733 = !DILocation(line: 91, column: 11, scope: !1719)
!1734 = !DILocation(line: 92, column: 16, scope: !1719)
!1735 = !DILocation(line: 92, column: 13, scope: !1719)
!1736 = !DILocation(line: 92, column: 11, scope: !1719)
!1737 = !DILocation(line: 93, column: 21, scope: !1719)
!1738 = !DILocation(line: 93, column: 16, scope: !1719)
!1739 = !DILocation(line: 93, column: 25, scope: !1719)
!1740 = !DILocation(line: 93, column: 13, scope: !1719)
!1741 = !DILocation(line: 93, column: 11, scope: !1719)
!1742 = !DILocation(line: 94, column: 21, scope: !1719)
!1743 = !DILocation(line: 94, column: 16, scope: !1719)
!1744 = !DILocation(line: 94, column: 25, scope: !1719)
!1745 = !DILocation(line: 94, column: 13, scope: !1719)
!1746 = !DILocation(line: 94, column: 11, scope: !1719)
!1747 = !DILocation(line: 95, column: 21, scope: !1719)
!1748 = !DILocation(line: 95, column: 16, scope: !1719)
!1749 = !DILocation(line: 95, column: 25, scope: !1719)
!1750 = !DILocation(line: 95, column: 13, scope: !1719)
!1751 = !DILocation(line: 95, column: 11, scope: !1719)
!1752 = !DILocation(line: 96, column: 16, scope: !1719)
!1753 = !DILocation(line: 96, column: 13, scope: !1719)
!1754 = !DILocation(line: 96, column: 11, scope: !1719)
!1755 = !DILocation(line: 97, column: 21, scope: !1719)
!1756 = !DILocation(line: 97, column: 16, scope: !1719)
!1757 = !DILocation(line: 97, column: 25, scope: !1719)
!1758 = !DILocation(line: 97, column: 13, scope: !1719)
!1759 = !DILocation(line: 97, column: 11, scope: !1719)
!1760 = !DILocation(line: 98, column: 21, scope: !1719)
!1761 = !DILocation(line: 98, column: 16, scope: !1719)
!1762 = !DILocation(line: 98, column: 25, scope: !1719)
!1763 = !DILocation(line: 98, column: 13, scope: !1719)
!1764 = !DILocation(line: 98, column: 11, scope: !1719)
!1765 = !DILocation(line: 99, column: 21, scope: !1719)
!1766 = !DILocation(line: 99, column: 16, scope: !1719)
!1767 = !DILocation(line: 99, column: 25, scope: !1719)
!1768 = !DILocation(line: 99, column: 13, scope: !1719)
!1769 = !DILocation(line: 99, column: 11, scope: !1719)
!1770 = !DILocation(line: 100, column: 16, scope: !1719)
!1771 = !DILocation(line: 100, column: 13, scope: !1719)
!1772 = !DILocation(line: 101, column: 4, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1719, file: !1667, line: 101, column: 4)
!1774 = !DILocation(line: 102, column: 4, scope: !1719)
!1775 = !DILocation(line: 107, column: 9, scope: !1666)
!1776 = !DILocation(line: 108, column: 1, scope: !1666)
!1777 = !DILocation(line: 107, column: 2, scope: !1666)
!1778 = distinct !DISubprogram(name: "rhashtable_jhash2", scope: !3, file: !3, line: 972, type: !186, scopeLine: 973, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1779)
!1779 = !{!1780, !1781, !1782}
!1780 = !DILocalVariable(name: "key", arg: 1, scope: !1778, file: !3, line: 972, type: !188)
!1781 = !DILocalVariable(name: "length", arg: 2, scope: !1778, file: !3, line: 972, type: !56)
!1782 = !DILocalVariable(name: "seed", arg: 3, scope: !1778, file: !3, line: 972, type: !56)
!1783 = !DILocation(line: 972, column: 42, scope: !1778)
!1784 = !DILocation(line: 972, column: 51, scope: !1778)
!1785 = !DILocation(line: 972, column: 63, scope: !1778)
!1786 = !DILocation(line: 974, column: 16, scope: !1778)
!1787 = !DILocation(line: 974, column: 21, scope: !1778)
!1788 = !DILocation(line: 974, column: 29, scope: !1778)
!1789 = !DILocation(line: 974, column: 9, scope: !1778)
!1790 = !DILocation(line: 974, column: 2, scope: !1778)
!1791 = !DILocation(line: 175, column: 67, scope: !374)
!1792 = !DILocation(line: 176, column: 20, scope: !374)
!1793 = !DILocation(line: 177, column: 19, scope: !374)
!1794 = !DILocation(line: 179, column: 2, scope: !374)
!1795 = !DILocation(line: 179, column: 23, scope: !374)
!1796 = !DILocation(line: 180, column: 2, scope: !374)
!1797 = !DILocation(line: 180, column: 9, scope: !374)
!1798 = !DILocation(line: 181, column: 2, scope: !374)
!1799 = !DILocation(line: 181, column: 6, scope: !374)
!1800 = !DILocation(line: 184, column: 17, scope: !374)
!1801 = !DILocation(line: 184, column: 54, scope: !374)
!1802 = !DILocation(line: 184, column: 8, scope: !374)
!1803 = !DILocation(line: 184, column: 6, scope: !374)
!1804 = !DILocation(line: 186, column: 9, scope: !374)
!1805 = !DILocation(line: 186, column: 7, scope: !374)
!1806 = !DILocation(line: 188, column: 6, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !374, file: !3, line: 188, column: 6)
!1808 = !DILocation(line: 188, column: 10, scope: !1807)
!1809 = !DILocation(line: 188, column: 18, scope: !1807)
!1810 = !DILocation(line: 188, column: 22, scope: !1807)
!1811 = !DILocation(line: 188, column: 26, scope: !1807)
!1812 = !DILocation(line: 188, column: 43, scope: !1807)
!1813 = !DILocation(line: 188, column: 6, scope: !374)
!1814 = !DILocation(line: 189, column: 35, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1807, file: !3, line: 188, column: 58)
!1816 = !DILocation(line: 189, column: 39, scope: !1815)
!1817 = !DILocation(line: 189, column: 49, scope: !1815)
!1818 = !DILocation(line: 189, column: 9, scope: !1815)
!1819 = !DILocation(line: 189, column: 7, scope: !1815)
!1820 = !DILocation(line: 190, column: 12, scope: !1815)
!1821 = !DILocation(line: 191, column: 2, scope: !1815)
!1822 = !DILocation(line: 193, column: 6, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !374, file: !3, line: 193, column: 6)
!1824 = !DILocation(line: 193, column: 10, scope: !1823)
!1825 = !DILocation(line: 193, column: 6, scope: !374)
!1826 = !DILocation(line: 194, column: 3, scope: !1823)
!1827 = !DILocation(line: 196, column: 2, scope: !374)
!1828 = !DILocation(line: 196, column: 2, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !374, file: !3, line: 196, column: 2)
!1830 = !DILocation(line: 198, column: 14, scope: !374)
!1831 = !DILocation(line: 198, column: 2, scope: !374)
!1832 = !DILocation(line: 198, column: 7, scope: !374)
!1833 = !DILocation(line: 198, column: 12, scope: !374)
!1834 = !DILocation(line: 200, column: 17, scope: !374)
!1835 = !DILocation(line: 200, column: 22, scope: !374)
!1836 = !DILocation(line: 200, column: 2, scope: !374)
!1837 = !DILocation(line: 201, column: 18, scope: !374)
!1838 = !DILocation(line: 201, column: 23, scope: !374)
!1839 = !DILocation(line: 201, column: 2, scope: !374)
!1840 = !DILocation(line: 203, column: 18, scope: !374)
!1841 = !DILocation(line: 203, column: 2, scope: !374)
!1842 = !DILocation(line: 203, column: 7, scope: !374)
!1843 = !DILocation(line: 203, column: 16, scope: !374)
!1844 = !DILocation(line: 205, column: 9, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !374, file: !3, line: 205, column: 2)
!1846 = !DILocation(line: 205, column: 7, scope: !1845)
!1847 = !DILocation(line: 205, column: 14, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1845, file: !3, line: 205, column: 2)
!1849 = !DILocation(line: 205, column: 18, scope: !1848)
!1850 = !DILocation(line: 205, column: 16, scope: !1848)
!1851 = !DILocation(line: 205, column: 2, scope: !1845)
!1852 = !DILocation(line: 206, column: 3, scope: !1848)
!1853 = !DILocation(line: 205, column: 29, scope: !1848)
!1854 = !DILocation(line: 205, column: 2, scope: !1848)
!1855 = distinct !{!1855, !1851, !1856, !455, !456}
!1856 = !DILocation(line: 206, column: 3, scope: !1845)
!1857 = !DILocation(line: 208, column: 9, scope: !374)
!1858 = !DILocation(line: 208, column: 2, scope: !374)
!1859 = !DILocation(line: 209, column: 1, scope: !374)
!1860 = distinct !DISubprogram(name: "atomic_set", scope: !1861, file: !1861, line: 65, type: !1862, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1865)
!1861 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!1862 = !DISubroutineType(types: !1863)
!1863 = !{null, !1864, !124}
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!1865 = !{!1866, !1867}
!1866 = !DILocalVariable(name: "v", arg: 1, scope: !1860, file: !1861, line: 65, type: !1864)
!1867 = !DILocalVariable(name: "i", arg: 2, scope: !1860, file: !1861, line: 65, type: !124)
!1868 = !DILocation(line: 65, column: 22, scope: !1860)
!1869 = !DILocation(line: 65, column: 29, scope: !1860)
!1870 = !DILocation(line: 67, column: 26, scope: !1860)
!1871 = !DILocation(line: 67, column: 2, scope: !1860)
!1872 = !DILocation(line: 68, column: 17, scope: !1860)
!1873 = !DILocation(line: 68, column: 20, scope: !1860)
!1874 = !DILocation(line: 68, column: 2, scope: !1860)
!1875 = !DILocation(line: 69, column: 1, scope: !1860)
!1876 = distinct !DISubprogram(name: "__init_work", scope: !6, file: !6, line: 263, type: !1877, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1879)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{null, !222, !124}
!1879 = !{!1880, !1881}
!1880 = !DILocalVariable(name: "work", arg: 1, scope: !1876, file: !6, line: 263, type: !222)
!1881 = !DILocalVariable(name: "onstack", arg: 2, scope: !1876, file: !6, line: 263, type: !124)
!1882 = !DILocation(line: 263, column: 52, scope: !1876)
!1883 = !DILocation(line: 263, column: 62, scope: !1876)
!1884 = !DILocation(line: 263, column: 73, scope: !1876)
!1885 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !699, file: !699, line: 35, type: !744, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1886)
!1886 = !{!1887}
!1887 = !DILocalVariable(name: "list", arg: 1, scope: !1885, file: !699, line: 35, type: !65)
!1888 = !DILocation(line: 35, column: 53, scope: !1885)
!1889 = !DILocation(line: 37, column: 2, scope: !1885)
!1890 = !DILocation(line: 37, column: 2, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1885, file: !699, line: 37, column: 2)
!1892 = !DILocation(line: 37, column: 2, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1891, file: !699, line: 37, column: 2)
!1894 = !DILocation(line: 37, column: 2, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1891, file: !699, line: 37, column: 2)
!1896 = !DILocation(line: 38, column: 2, scope: !1885)
!1897 = !DILocation(line: 38, column: 2, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1885, file: !699, line: 38, column: 2)
!1899 = !DILocation(line: 38, column: 2, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1898, file: !699, line: 38, column: 2)
!1901 = !DILocation(line: 38, column: 2, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1898, file: !699, line: 38, column: 2)
!1903 = !DILocation(line: 39, column: 1, scope: !1885)
!1904 = distinct !DISubprogram(name: "rht_deferred_worker", scope: !3, file: !3, line: 410, type: !220, scopeLine: 411, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1905)
!1905 = !{!1906, !1907, !1908, !1909, !1910, !1912}
!1906 = !DILocalVariable(name: "work", arg: 1, scope: !1904, file: !3, line: 410, type: !222)
!1907 = !DILocalVariable(name: "ht", scope: !1904, file: !3, line: 412, type: !165)
!1908 = !DILocalVariable(name: "tbl", scope: !1904, file: !3, line: 413, type: !49)
!1909 = !DILocalVariable(name: "err", scope: !1904, file: !3, line: 414, type: !124)
!1910 = !DILocalVariable(name: "__mptr", scope: !1911, file: !3, line: 416, type: !48)
!1911 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 416, column: 7)
!1912 = !DILocalVariable(name: "nerr", scope: !1913, file: !3, line: 430, type: !124)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !3, line: 429, column: 30)
!1914 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 429, column: 6)
!1915 = !DILocation(line: 410, column: 53, scope: !1904)
!1916 = !DILocation(line: 412, column: 2, scope: !1904)
!1917 = !DILocation(line: 412, column: 21, scope: !1904)
!1918 = !DILocation(line: 413, column: 2, scope: !1904)
!1919 = !DILocation(line: 413, column: 23, scope: !1904)
!1920 = !DILocation(line: 414, column: 2, scope: !1904)
!1921 = !DILocation(line: 414, column: 6, scope: !1904)
!1922 = !DILocation(line: 416, column: 7, scope: !1911)
!1923 = !DILocation(line: 416, column: 7, scope: !1904)
!1924 = !DILocation(line: 416, column: 5, scope: !1904)
!1925 = !DILocation(line: 417, column: 14, scope: !1904)
!1926 = !DILocation(line: 417, column: 18, scope: !1904)
!1927 = !DILocation(line: 417, column: 2, scope: !1904)
!1928 = !DILocation(line: 419, column: 8, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 419, column: 8)
!1930 = !DILocation(line: 419, column: 8, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 419, column: 8)
!1932 = !DILocation(line: 419, column: 6, scope: !1904)
!1933 = !DILocation(line: 420, column: 30, scope: !1904)
!1934 = !DILocation(line: 420, column: 34, scope: !1904)
!1935 = !DILocation(line: 420, column: 8, scope: !1904)
!1936 = !DILocation(line: 420, column: 6, scope: !1904)
!1937 = !DILocation(line: 422, column: 24, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 422, column: 6)
!1939 = !DILocation(line: 422, column: 28, scope: !1938)
!1940 = !DILocation(line: 422, column: 6, scope: !1938)
!1941 = !DILocation(line: 422, column: 6, scope: !1904)
!1942 = !DILocation(line: 423, column: 33, scope: !1938)
!1943 = !DILocation(line: 423, column: 37, scope: !1938)
!1944 = !DILocation(line: 423, column: 42, scope: !1938)
!1945 = !DILocation(line: 423, column: 47, scope: !1938)
!1946 = !DILocation(line: 423, column: 52, scope: !1938)
!1947 = !DILocation(line: 423, column: 9, scope: !1938)
!1948 = !DILocation(line: 423, column: 7, scope: !1938)
!1949 = !DILocation(line: 423, column: 3, scope: !1938)
!1950 = !DILocation(line: 424, column: 11, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 424, column: 11)
!1952 = !DILocation(line: 424, column: 15, scope: !1951)
!1953 = !DILocation(line: 424, column: 17, scope: !1951)
!1954 = !DILocation(line: 424, column: 37, scope: !1951)
!1955 = !DILocation(line: 424, column: 60, scope: !1951)
!1956 = !DILocation(line: 424, column: 64, scope: !1951)
!1957 = !DILocation(line: 424, column: 40, scope: !1951)
!1958 = !DILocation(line: 424, column: 11, scope: !1938)
!1959 = !DILocation(line: 425, column: 27, scope: !1951)
!1960 = !DILocation(line: 425, column: 9, scope: !1951)
!1961 = !DILocation(line: 425, column: 7, scope: !1951)
!1962 = !DILocation(line: 425, column: 3, scope: !1951)
!1963 = !DILocation(line: 426, column: 11, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1951, file: !3, line: 426, column: 11)
!1965 = !DILocation(line: 426, column: 16, scope: !1964)
!1966 = !DILocation(line: 426, column: 11, scope: !1951)
!1967 = !DILocation(line: 427, column: 33, scope: !1964)
!1968 = !DILocation(line: 427, column: 37, scope: !1964)
!1969 = !DILocation(line: 427, column: 42, scope: !1964)
!1970 = !DILocation(line: 427, column: 47, scope: !1964)
!1971 = !DILocation(line: 427, column: 9, scope: !1964)
!1972 = !DILocation(line: 427, column: 7, scope: !1964)
!1973 = !DILocation(line: 427, column: 3, scope: !1964)
!1974 = !DILocation(line: 429, column: 7, scope: !1914)
!1975 = !DILocation(line: 429, column: 11, scope: !1914)
!1976 = !DILocation(line: 429, column: 14, scope: !1914)
!1977 = !DILocation(line: 429, column: 18, scope: !1914)
!1978 = !DILocation(line: 429, column: 6, scope: !1904)
!1979 = !DILocation(line: 430, column: 3, scope: !1913)
!1980 = !DILocation(line: 430, column: 7, scope: !1913)
!1981 = !DILocation(line: 432, column: 34, scope: !1913)
!1982 = !DILocation(line: 432, column: 10, scope: !1913)
!1983 = !DILocation(line: 432, column: 8, scope: !1913)
!1984 = !DILocation(line: 433, column: 9, scope: !1913)
!1985 = !DILocation(line: 433, column: 16, scope: !1913)
!1986 = !DILocation(line: 433, column: 7, scope: !1913)
!1987 = !DILocation(line: 434, column: 2, scope: !1914)
!1988 = !DILocation(line: 434, column: 2, scope: !1913)
!1989 = !DILocation(line: 436, column: 16, scope: !1904)
!1990 = !DILocation(line: 436, column: 20, scope: !1904)
!1991 = !DILocation(line: 436, column: 2, scope: !1904)
!1992 = !DILocation(line: 438, column: 6, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 438, column: 6)
!1994 = !DILocation(line: 438, column: 6, scope: !1904)
!1995 = !DILocation(line: 439, column: 18, scope: !1993)
!1996 = !DILocation(line: 439, column: 22, scope: !1993)
!1997 = !DILocation(line: 439, column: 3, scope: !1993)
!1998 = !DILocation(line: 440, column: 1, scope: !1904)
!1999 = distinct !DISubprogram(name: "rhltable_init", scope: !3, file: !3, line: 1090, type: !2000, scopeLine: 1091, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2006)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!124, !2002, !298}
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhltable", file: !95, line: 97, size: 1088, elements: !2004)
!2004 = !{!2005}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !2003, file: !95, line: 98, baseType: !166, size: 1088)
!2006 = !{!2007, !2008, !2009}
!2007 = !DILocalVariable(name: "hlt", arg: 1, scope: !1999, file: !3, line: 1090, type: !2002)
!2008 = !DILocalVariable(name: "params", arg: 2, scope: !1999, file: !3, line: 1090, type: !298)
!2009 = !DILocalVariable(name: "err", scope: !1999, file: !3, line: 1092, type: !124)
!2010 = !DILocation(line: 1090, column: 36, scope: !1999)
!2011 = !DILocation(line: 1090, column: 73, scope: !1999)
!2012 = !DILocation(line: 1092, column: 2, scope: !1999)
!2013 = !DILocation(line: 1092, column: 6, scope: !1999)
!2014 = !DILocation(line: 1094, column: 25, scope: !1999)
!2015 = !DILocation(line: 1094, column: 30, scope: !1999)
!2016 = !DILocation(line: 1094, column: 34, scope: !1999)
!2017 = !DILocation(line: 1094, column: 8, scope: !1999)
!2018 = !DILocation(line: 1094, column: 6, scope: !1999)
!2019 = !DILocation(line: 1095, column: 2, scope: !1999)
!2020 = !DILocation(line: 1095, column: 7, scope: !1999)
!2021 = !DILocation(line: 1095, column: 10, scope: !1999)
!2022 = !DILocation(line: 1095, column: 17, scope: !1999)
!2023 = !DILocation(line: 1096, column: 9, scope: !1999)
!2024 = !DILocation(line: 1097, column: 1, scope: !1999)
!2025 = !DILocation(line: 1096, column: 2, scope: !1999)
!2026 = distinct !DISubprogram(name: "rhashtable_free_and_destroy", scope: !3, file: !3, line: 1134, type: !2027, scopeLine: 1137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2032)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{null, !165, !2029, !48}
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{null, !48, !48}
!2032 = !{!2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2046}
!2033 = !DILocalVariable(name: "ht", arg: 1, scope: !2026, file: !3, line: 1134, type: !165)
!2034 = !DILocalVariable(name: "free_fn", arg: 2, scope: !2026, file: !3, line: 1135, type: !2029)
!2035 = !DILocalVariable(name: "arg", arg: 3, scope: !2026, file: !3, line: 1136, type: !48)
!2036 = !DILocalVariable(name: "tbl", scope: !2026, file: !3, line: 1138, type: !49)
!2037 = !DILocalVariable(name: "next_tbl", scope: !2026, file: !3, line: 1138, type: !49)
!2038 = !DILocalVariable(name: "i", scope: !2026, file: !3, line: 1139, type: !7)
!2039 = !DILabel(scope: !2026, name: "restart", file: !3, line: 1145)
!2040 = !DILocalVariable(name: "pos", scope: !2041, file: !3, line: 1148, type: !93)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 1147, column: 35)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !3, line: 1147, column: 3)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !3, line: 1147, column: 3)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 1146, column: 15)
!2045 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 1146, column: 6)
!2046 = !DILocalVariable(name: "next", scope: !2041, file: !3, line: 1148, type: !93)
!2047 = !DILocation(line: 1134, column: 53, scope: !2026)
!2048 = !DILocation(line: 1135, column: 13, scope: !2026)
!2049 = !DILocation(line: 1136, column: 12, scope: !2026)
!2050 = !DILocation(line: 1138, column: 2, scope: !2026)
!2051 = !DILocation(line: 1138, column: 23, scope: !2026)
!2052 = !DILocation(line: 1138, column: 29, scope: !2026)
!2053 = !DILocation(line: 1139, column: 2, scope: !2026)
!2054 = !DILocation(line: 1139, column: 15, scope: !2026)
!2055 = !DILocation(line: 1141, column: 20, scope: !2026)
!2056 = !DILocation(line: 1141, column: 24, scope: !2026)
!2057 = !DILocation(line: 1141, column: 2, scope: !2026)
!2058 = !DILocation(line: 1143, column: 14, scope: !2026)
!2059 = !DILocation(line: 1143, column: 18, scope: !2026)
!2060 = !DILocation(line: 1143, column: 2, scope: !2026)
!2061 = !DILocation(line: 1144, column: 8, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 1144, column: 8)
!2063 = !DILocation(line: 1144, column: 8, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 1144, column: 8)
!2065 = !DILocation(line: 1144, column: 6, scope: !2026)
!2066 = !DILocation(line: 1144, column: 2, scope: !2026)
!2067 = !DILocation(line: 1145, column: 1, scope: !2026)
!2068 = !DILocation(line: 1146, column: 6, scope: !2045)
!2069 = !DILocation(line: 1146, column: 6, scope: !2026)
!2070 = !DILocation(line: 1147, column: 10, scope: !2043)
!2071 = !DILocation(line: 1147, column: 8, scope: !2043)
!2072 = !DILocation(line: 1147, column: 15, scope: !2042)
!2073 = !DILocation(line: 1147, column: 19, scope: !2042)
!2074 = !DILocation(line: 1147, column: 24, scope: !2042)
!2075 = !DILocation(line: 1147, column: 17, scope: !2042)
!2076 = !DILocation(line: 1147, column: 3, scope: !2043)
!2077 = !DILocation(line: 1148, column: 4, scope: !2041)
!2078 = !DILocation(line: 1148, column: 23, scope: !2041)
!2079 = !DILocation(line: 1148, column: 29, scope: !2041)
!2080 = !DILocation(line: 1150, column: 4, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 1150, column: 4)
!2082 = !DILocation(line: 1151, column: 44, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 1151, column: 4)
!2084 = !DILocation(line: 1151, column: 49, scope: !2083)
!2085 = !DILocation(line: 1151, column: 33, scope: !2083)
!2086 = !DILocation(line: 1151, column: 15, scope: !2083)
!2087 = !DILocation(line: 1151, column: 13, scope: !2083)
!2088 = !DILocation(line: 1152, column: 32, scope: !2083)
!2089 = !DILocation(line: 1152, column: 17, scope: !2083)
!2090 = !DILocation(line: 1152, column: 16, scope: !2083)
!2091 = !DILocation(line: 1153, column: 6, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 1153, column: 6)
!2093 = !DILocation(line: 1153, column: 6, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2092, file: !3, line: 1153, column: 6)
!2095 = !DILocation(line: 1152, column: 14, scope: !2083)
!2096 = !DILocation(line: 1151, column: 9, scope: !2083)
!2097 = !DILocation(line: 1154, column: 25, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 1151, column: 4)
!2099 = !DILocation(line: 1154, column: 10, scope: !2098)
!2100 = !DILocation(line: 1154, column: 9, scope: !2098)
!2101 = !DILocation(line: 1151, column: 4, scope: !2083)
!2102 = !DILocation(line: 1158, column: 25, scope: !2098)
!2103 = !DILocation(line: 1158, column: 29, scope: !2098)
!2104 = !DILocation(line: 1158, column: 34, scope: !2098)
!2105 = !DILocation(line: 1158, column: 43, scope: !2098)
!2106 = !DILocation(line: 1158, column: 5, scope: !2098)
!2107 = !DILocation(line: 1155, column: 15, scope: !2098)
!2108 = !DILocation(line: 1155, column: 13, scope: !2098)
!2109 = !DILocation(line: 1156, column: 32, scope: !2098)
!2110 = !DILocation(line: 1156, column: 17, scope: !2098)
!2111 = !DILocation(line: 1156, column: 16, scope: !2098)
!2112 = !DILocation(line: 1157, column: 6, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 1157, column: 6)
!2114 = !DILocation(line: 1157, column: 6, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 1157, column: 6)
!2116 = !DILocation(line: 1156, column: 14, scope: !2098)
!2117 = !DILocation(line: 1151, column: 4, scope: !2098)
!2118 = distinct !{!2118, !2101, !2119, !455, !456}
!2119 = !DILocation(line: 1158, column: 46, scope: !2083)
!2120 = !DILocation(line: 1159, column: 3, scope: !2042)
!2121 = !DILocation(line: 1159, column: 3, scope: !2041)
!2122 = !DILocation(line: 1147, column: 31, scope: !2042)
!2123 = !DILocation(line: 1147, column: 3, scope: !2042)
!2124 = distinct !{!2124, !2076, !2125, !455, !456}
!2125 = !DILocation(line: 1159, column: 3, scope: !2043)
!2126 = !DILocation(line: 1160, column: 2, scope: !2044)
!2127 = !DILocation(line: 1162, column: 13, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 1162, column: 13)
!2129 = !DILocation(line: 1162, column: 13, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 1162, column: 13)
!2131 = !DILocation(line: 1162, column: 11, scope: !2026)
!2132 = !DILocation(line: 1163, column: 20, scope: !2026)
!2133 = !DILocation(line: 1163, column: 2, scope: !2026)
!2134 = !DILocation(line: 1164, column: 6, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 1164, column: 6)
!2136 = !DILocation(line: 1164, column: 6, scope: !2026)
!2137 = !DILocation(line: 1165, column: 9, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2135, file: !3, line: 1164, column: 16)
!2139 = !DILocation(line: 1165, column: 7, scope: !2138)
!2140 = !DILocation(line: 1166, column: 3, scope: !2138)
!2141 = !DILocation(line: 1168, column: 16, scope: !2026)
!2142 = !DILocation(line: 1168, column: 20, scope: !2026)
!2143 = !DILocation(line: 1168, column: 2, scope: !2026)
!2144 = !DILocation(line: 1169, column: 1, scope: !2026)
!2145 = !DISubprogram(name: "cancel_work_sync", scope: !6, file: !6, line: 515, type: !2146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!181, !222}
!2148 = !DISubprogram(name: "mutex_lock", scope: !225, file: !225, line: 227, type: !2149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{null, !1592}
!2151 = distinct !DISubprogram(name: "__might_resched", scope: !2152, file: !2152, line: 184, type: !2153, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2155)
!2152 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!2153 = !DISubroutineType(types: !2154)
!2154 = !{null, !1593, !124, !7}
!2155 = !{!2156, !2157, !2158}
!2156 = !DILocalVariable(name: "file", arg: 1, scope: !2151, file: !2152, line: 184, type: !1593)
!2157 = !DILocalVariable(name: "line", arg: 2, scope: !2151, file: !2152, line: 184, type: !124)
!2158 = !DILocalVariable(name: "offsets", arg: 3, scope: !2151, file: !2152, line: 185, type: !7)
!2159 = !DILocation(line: 184, column: 50, scope: !2151)
!2160 = !DILocation(line: 184, column: 60, scope: !2151)
!2161 = !DILocation(line: 185, column: 23, scope: !2151)
!2162 = !DILocation(line: 185, column: 34, scope: !2151)
!2163 = !DILocation(line: 2104, column: 9, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !413, file: !414, line: 2104, column: 9)
!2165 = !DILocation(line: 2104, column: 9, scope: !413)
!2166 = !DILocation(line: 2104, column: 2, scope: !413)
!2167 = distinct !DISubprogram(name: "rht_ptr_exclusive", scope: !51, file: !51, line: 387, type: !959, scopeLine: 389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2168)
!2168 = !{!2169}
!2169 = !DILocalVariable(name: "bkt", arg: 1, scope: !2167, file: !51, line: 388, type: !961)
!2170 = !DILocation(line: 388, column: 39, scope: !2167)
!2171 = !DILocation(line: 390, column: 19, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2167, file: !51, line: 390, column: 19)
!2173 = !DILocation(line: 390, column: 19, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2172, file: !51, line: 390, column: 19)
!2175 = !DILocation(line: 390, column: 55, scope: !2167)
!2176 = !DILocation(line: 390, column: 9, scope: !2167)
!2177 = !DILocation(line: 390, column: 2, scope: !2167)
!2178 = distinct !DISubprogram(name: "rhashtable_free_one", scope: !3, file: !3, line: 1100, type: !2179, scopeLine: 1103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2181)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{null, !165, !93, !2029, !48}
!2181 = !{!2182, !2183, !2184, !2185, !2186, !2187}
!2182 = !DILocalVariable(name: "ht", arg: 1, scope: !2178, file: !3, line: 1100, type: !165)
!2183 = !DILocalVariable(name: "obj", arg: 2, scope: !2178, file: !3, line: 1100, type: !93)
!2184 = !DILocalVariable(name: "free_fn", arg: 3, scope: !2178, file: !3, line: 1101, type: !2029)
!2185 = !DILocalVariable(name: "arg", arg: 4, scope: !2178, file: !3, line: 1102, type: !48)
!2186 = !DILocalVariable(name: "list", scope: !2178, file: !3, line: 1104, type: !98)
!2187 = !DILocalVariable(name: "__mptr", scope: !2188, file: !3, line: 1111, type: !48)
!2188 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 1111, column: 9)
!2189 = !DILocation(line: 1100, column: 52, scope: !2178)
!2190 = !DILocation(line: 1100, column: 75, scope: !2178)
!2191 = !DILocation(line: 1101, column: 12, scope: !2178)
!2192 = !DILocation(line: 1102, column: 11, scope: !2178)
!2193 = !DILocation(line: 1104, column: 2, scope: !2178)
!2194 = !DILocation(line: 1104, column: 22, scope: !2178)
!2195 = !DILocation(line: 1106, column: 7, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 1106, column: 6)
!2197 = !DILocation(line: 1106, column: 11, scope: !2196)
!2198 = !DILocation(line: 1106, column: 6, scope: !2178)
!2199 = !DILocation(line: 1107, column: 3, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 1106, column: 19)
!2201 = !DILocation(line: 1107, column: 19, scope: !2200)
!2202 = !DILocation(line: 1107, column: 23, scope: !2200)
!2203 = !DILocation(line: 1107, column: 11, scope: !2200)
!2204 = !DILocation(line: 1107, column: 29, scope: !2200)
!2205 = !DILocation(line: 1108, column: 3, scope: !2200)
!2206 = !DILocation(line: 1111, column: 9, scope: !2188)
!2207 = !DILocation(line: 1111, column: 9, scope: !2178)
!2208 = !DILocation(line: 1111, column: 7, scope: !2178)
!2209 = !DILocation(line: 1112, column: 2, scope: !2178)
!2210 = !DILocation(line: 1113, column: 10, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 1112, column: 5)
!2212 = !DILocation(line: 1113, column: 16, scope: !2211)
!2213 = !DILocation(line: 1113, column: 7, scope: !2211)
!2214 = !DILocation(line: 1114, column: 10, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2211, file: !3, line: 1114, column: 10)
!2216 = !DILocation(line: 1114, column: 10, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2215, file: !3, line: 1114, column: 10)
!2218 = !DILocation(line: 1114, column: 8, scope: !2211)
!2219 = !DILocation(line: 1115, column: 3, scope: !2211)
!2220 = !DILocation(line: 1115, column: 19, scope: !2211)
!2221 = !DILocation(line: 1115, column: 23, scope: !2211)
!2222 = !DILocation(line: 1115, column: 11, scope: !2211)
!2223 = !DILocation(line: 1115, column: 29, scope: !2211)
!2224 = !DILocation(line: 1116, column: 2, scope: !2211)
!2225 = !DILocation(line: 1116, column: 11, scope: !2178)
!2226 = distinct !{!2226, !2209, !2227, !455, !456}
!2227 = !DILocation(line: 1116, column: 15, scope: !2178)
!2228 = !DILocation(line: 1117, column: 1, scope: !2178)
!2229 = distinct !DISubprogram(name: "bucket_table_free", scope: !3, file: !3, line: 109, type: !2230, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2232)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{null, !342}
!2232 = !{!2233}
!2233 = !DILocalVariable(name: "tbl", arg: 1, scope: !2229, file: !3, line: 109, type: !342)
!2234 = !DILocation(line: 109, column: 58, scope: !2229)
!2235 = !DILocation(line: 111, column: 6, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2229, file: !3, line: 111, column: 6)
!2237 = !DILocation(line: 111, column: 11, scope: !2236)
!2238 = !DILocation(line: 111, column: 6, scope: !2229)
!2239 = !DILocation(line: 112, column: 28, scope: !2236)
!2240 = !DILocation(line: 112, column: 3, scope: !2236)
!2241 = !DILocation(line: 114, column: 9, scope: !2229)
!2242 = !DILocation(line: 114, column: 2, scope: !2229)
!2243 = !DILocation(line: 115, column: 1, scope: !2229)
!2244 = !DISubprogram(name: "mutex_unlock", scope: !225, file: !225, line: 246, type: !2149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2245 = distinct !DISubprogram(name: "rhashtable_destroy", scope: !3, file: !3, line: 1172, type: !2246, scopeLine: 1173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2248)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{null, !165}
!2248 = !{!2249}
!2249 = !DILocalVariable(name: "ht", arg: 1, scope: !2245, file: !3, line: 1172, type: !165)
!2250 = !DILocation(line: 1172, column: 44, scope: !2245)
!2251 = !DILocation(line: 1174, column: 37, scope: !2245)
!2252 = !DILocation(line: 1174, column: 9, scope: !2245)
!2253 = !DILocation(line: 1174, column: 2, scope: !2245)
!2254 = distinct !DISubprogram(name: "__rht_bucket_nested", scope: !3, file: !3, line: 1178, type: !339, scopeLine: 1180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2255)
!2255 = !{!2256, !2257, !2258, !2260, !2261, !2262, !2263, !2264, !2266}
!2256 = !DILocalVariable(name: "tbl", arg: 1, scope: !2254, file: !3, line: 1179, type: !342)
!2257 = !DILocalVariable(name: "hash", arg: 2, scope: !2254, file: !3, line: 1179, type: !7)
!2258 = !DILocalVariable(name: "shift", scope: !2254, file: !3, line: 1181, type: !2259)
!2259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2260 = !DILocalVariable(name: "index", scope: !2254, file: !3, line: 1182, type: !7)
!2261 = !DILocalVariable(name: "size", scope: !2254, file: !3, line: 1183, type: !7)
!2262 = !DILocalVariable(name: "subhash", scope: !2254, file: !3, line: 1184, type: !7)
!2263 = !DILocalVariable(name: "ntbl", scope: !2254, file: !3, line: 1185, type: !112)
!2264 = !DILocalVariable(name: "__UNIQUE_ID_rcu392", scope: !2265, file: !3, line: 1188, type: !112)
!2265 = distinct !DILexicalBlock(scope: !2254, file: !3, line: 1188, column: 9)
!2266 = !DILocalVariable(name: "__UNIQUE_ID_rcu394", scope: !2267, file: !3, line: 1193, type: !112)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 1193, column: 10)
!2268 = distinct !DILexicalBlock(scope: !2254, file: !3, line: 1191, column: 38)
!2269 = !DILocation(line: 1179, column: 29, scope: !2254)
!2270 = !DILocation(line: 1179, column: 47, scope: !2254)
!2271 = !DILocation(line: 1181, column: 2, scope: !2254)
!2272 = !DILocation(line: 1181, column: 21, scope: !2254)
!2273 = !DILocation(line: 1182, column: 2, scope: !2254)
!2274 = !DILocation(line: 1182, column: 15, scope: !2254)
!2275 = !DILocation(line: 1182, column: 23, scope: !2254)
!2276 = !DILocation(line: 1182, column: 37, scope: !2254)
!2277 = !DILocation(line: 1182, column: 42, scope: !2254)
!2278 = !DILocation(line: 1182, column: 34, scope: !2254)
!2279 = !DILocation(line: 1182, column: 48, scope: !2254)
!2280 = !DILocation(line: 1182, column: 28, scope: !2254)
!2281 = !DILocation(line: 1183, column: 2, scope: !2254)
!2282 = !DILocation(line: 1183, column: 15, scope: !2254)
!2283 = !DILocation(line: 1183, column: 22, scope: !2254)
!2284 = !DILocation(line: 1183, column: 27, scope: !2254)
!2285 = !DILocation(line: 1183, column: 35, scope: !2254)
!2286 = !DILocation(line: 1183, column: 40, scope: !2254)
!2287 = !DILocation(line: 1183, column: 32, scope: !2254)
!2288 = !DILocation(line: 1184, column: 2, scope: !2254)
!2289 = !DILocation(line: 1184, column: 15, scope: !2254)
!2290 = !DILocation(line: 1184, column: 25, scope: !2254)
!2291 = !DILocation(line: 1185, column: 2, scope: !2254)
!2292 = !DILocation(line: 1185, column: 22, scope: !2254)
!2293 = !DILocation(line: 1187, column: 26, scope: !2254)
!2294 = !DILocation(line: 1187, column: 9, scope: !2254)
!2295 = !DILocation(line: 1187, column: 7, scope: !2254)
!2296 = !DILocation(line: 1188, column: 9, scope: !2265)
!2297 = !DILocation(line: 1188, column: 9, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2265, file: !3, line: 1188, column: 9)
!2299 = !DILocation(line: 1188, column: 9, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 1188, column: 9)
!2301 = !DILocation(line: 1188, column: 9, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2265, file: !3, line: 1188, column: 9)
!2303 = !DILocation(line: 1188, column: 9, scope: !2254)
!2304 = !DILocation(line: 1188, column: 7, scope: !2254)
!2305 = !DILocation(line: 1189, column: 14, scope: !2254)
!2306 = !DILocation(line: 1189, column: 19, scope: !2254)
!2307 = !DILocation(line: 1189, column: 10, scope: !2254)
!2308 = !DILocation(line: 1191, column: 2, scope: !2254)
!2309 = !DILocation(line: 1191, column: 9, scope: !2254)
!2310 = !DILocation(line: 1191, column: 14, scope: !2254)
!2311 = !DILocation(line: 1191, column: 17, scope: !2254)
!2312 = !DILocation(line: 1191, column: 22, scope: !2254)
!2313 = !DILocation(line: 0, scope: !2254)
!2314 = !DILocation(line: 1192, column: 11, scope: !2268)
!2315 = !DILocation(line: 1192, column: 19, scope: !2268)
!2316 = !DILocation(line: 1192, column: 9, scope: !2268)
!2317 = !DILocation(line: 1193, column: 10, scope: !2267)
!2318 = !DILocation(line: 1193, column: 10, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 1193, column: 10)
!2320 = !DILocation(line: 1193, column: 10, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2319, file: !3, line: 1193, column: 10)
!2322 = !DILocation(line: 1193, column: 10, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 1193, column: 10)
!2324 = !DILocation(line: 1193, column: 10, scope: !2268)
!2325 = !DILocation(line: 1193, column: 8, scope: !2268)
!2326 = !DILocation(line: 1195, column: 8, scope: !2268)
!2327 = !DILocation(line: 1196, column: 11, scope: !2268)
!2328 = distinct !{!2328, !2308, !2329, !455, !456}
!2329 = !DILocation(line: 1197, column: 2, scope: !2254)
!2330 = !DILocation(line: 1199, column: 7, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2254, file: !3, line: 1199, column: 6)
!2332 = !DILocation(line: 1199, column: 6, scope: !2254)
!2333 = !DILocation(line: 1200, column: 3, scope: !2331)
!2334 = !DILocation(line: 1202, column: 10, scope: !2254)
!2335 = !DILocation(line: 1202, column: 15, scope: !2254)
!2336 = !DILocation(line: 1202, column: 2, scope: !2254)
!2337 = !DILocation(line: 1204, column: 1, scope: !2254)
!2338 = distinct !DISubprogram(name: "nested_table_top", scope: !3, file: !3, line: 66, type: !2339, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2341)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!112, !342}
!2341 = !{!2342}
!2342 = !DILocalVariable(name: "tbl", arg: 1, scope: !2338, file: !3, line: 67, type: !342)
!2343 = !DILocation(line: 67, column: 29, scope: !2338)
!2344 = !DILocation(line: 72, column: 17, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 72, column: 17)
!2346 = !DILocation(line: 72, column: 17, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2345, file: !3, line: 72, column: 17)
!2348 = !DILocation(line: 72, column: 2, scope: !2338)
!2349 = !DILocation(line: 1208, column: 29, scope: !338)
!2350 = !DILocation(line: 1208, column: 47, scope: !338)
!2351 = !DILocation(line: 1212, column: 7, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !338, file: !3, line: 1212, column: 6)
!2353 = !DILocation(line: 1212, column: 6, scope: !338)
!2354 = !DILocation(line: 1213, column: 3, scope: !2352)
!2355 = !DILocation(line: 1214, column: 29, scope: !338)
!2356 = !DILocation(line: 1214, column: 34, scope: !338)
!2357 = !DILocation(line: 1214, column: 9, scope: !338)
!2358 = !DILocation(line: 1214, column: 2, scope: !338)
!2359 = distinct !DISubprogram(name: "rht_bucket_nested_insert", scope: !3, file: !3, line: 1218, type: !2360, scopeLine: 1220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2362)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!341, !165, !49, !7}
!2362 = !{!2363, !2364, !2365, !2366, !2367, !2368, !2369}
!2363 = !DILocalVariable(name: "ht", arg: 1, scope: !2359, file: !3, line: 1219, type: !165)
!2364 = !DILocalVariable(name: "tbl", arg: 2, scope: !2359, file: !3, line: 1219, type: !49)
!2365 = !DILocalVariable(name: "hash", arg: 3, scope: !2359, file: !3, line: 1219, type: !7)
!2366 = !DILocalVariable(name: "shift", scope: !2359, file: !3, line: 1221, type: !2259)
!2367 = !DILocalVariable(name: "index", scope: !2359, file: !3, line: 1222, type: !7)
!2368 = !DILocalVariable(name: "size", scope: !2359, file: !3, line: 1223, type: !7)
!2369 = !DILocalVariable(name: "ntbl", scope: !2359, file: !3, line: 1224, type: !112)
!2370 = !DILocation(line: 1219, column: 21, scope: !2359)
!2371 = !DILocation(line: 1219, column: 46, scope: !2359)
!2372 = !DILocation(line: 1219, column: 64, scope: !2359)
!2373 = !DILocation(line: 1221, column: 2, scope: !2359)
!2374 = !DILocation(line: 1221, column: 21, scope: !2359)
!2375 = !DILocation(line: 1222, column: 2, scope: !2359)
!2376 = !DILocation(line: 1222, column: 15, scope: !2359)
!2377 = !DILocation(line: 1222, column: 23, scope: !2359)
!2378 = !DILocation(line: 1222, column: 37, scope: !2359)
!2379 = !DILocation(line: 1222, column: 42, scope: !2359)
!2380 = !DILocation(line: 1222, column: 34, scope: !2359)
!2381 = !DILocation(line: 1222, column: 48, scope: !2359)
!2382 = !DILocation(line: 1222, column: 28, scope: !2359)
!2383 = !DILocation(line: 1223, column: 2, scope: !2359)
!2384 = !DILocation(line: 1223, column: 15, scope: !2359)
!2385 = !DILocation(line: 1223, column: 22, scope: !2359)
!2386 = !DILocation(line: 1223, column: 27, scope: !2359)
!2387 = !DILocation(line: 1223, column: 35, scope: !2359)
!2388 = !DILocation(line: 1223, column: 40, scope: !2359)
!2389 = !DILocation(line: 1223, column: 32, scope: !2359)
!2390 = !DILocation(line: 1224, column: 2, scope: !2359)
!2391 = !DILocation(line: 1224, column: 22, scope: !2359)
!2392 = !DILocation(line: 1226, column: 26, scope: !2359)
!2393 = !DILocation(line: 1226, column: 9, scope: !2359)
!2394 = !DILocation(line: 1226, column: 7, scope: !2359)
!2395 = !DILocation(line: 1227, column: 11, scope: !2359)
!2396 = !DILocation(line: 1227, column: 16, scope: !2359)
!2397 = !DILocation(line: 1227, column: 7, scope: !2359)
!2398 = !DILocation(line: 1228, column: 28, scope: !2359)
!2399 = !DILocation(line: 1228, column: 33, scope: !2359)
!2400 = !DILocation(line: 1228, column: 38, scope: !2359)
!2401 = !DILocation(line: 1229, column: 7, scope: !2359)
!2402 = !DILocation(line: 1229, column: 12, scope: !2359)
!2403 = !DILocation(line: 1228, column: 9, scope: !2359)
!2404 = !DILocation(line: 1228, column: 7, scope: !2359)
!2405 = !DILocation(line: 1231, column: 2, scope: !2359)
!2406 = !DILocation(line: 1231, column: 9, scope: !2359)
!2407 = !DILocation(line: 1231, column: 14, scope: !2359)
!2408 = !DILocation(line: 1231, column: 17, scope: !2359)
!2409 = !DILocation(line: 1231, column: 22, scope: !2359)
!2410 = !DILocation(line: 0, scope: !2359)
!2411 = !DILocation(line: 1232, column: 11, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2359, file: !3, line: 1231, column: 38)
!2413 = !DILocation(line: 1232, column: 16, scope: !2412)
!2414 = !DILocation(line: 1232, column: 9, scope: !2412)
!2415 = !DILocation(line: 1233, column: 8, scope: !2412)
!2416 = !DILocation(line: 1234, column: 8, scope: !2412)
!2417 = !DILocation(line: 1235, column: 29, scope: !2412)
!2418 = !DILocation(line: 1235, column: 34, scope: !2412)
!2419 = !DILocation(line: 1235, column: 39, scope: !2412)
!2420 = !DILocation(line: 1236, column: 8, scope: !2412)
!2421 = !DILocation(line: 1236, column: 13, scope: !2412)
!2422 = !DILocation(line: 1235, column: 10, scope: !2412)
!2423 = !DILocation(line: 1235, column: 8, scope: !2412)
!2424 = distinct !{!2424, !2405, !2425, !455, !456}
!2425 = !DILocation(line: 1237, column: 2, scope: !2359)
!2426 = !DILocation(line: 1239, column: 7, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2359, file: !3, line: 1239, column: 6)
!2428 = !DILocation(line: 1239, column: 6, scope: !2359)
!2429 = !DILocation(line: 1240, column: 3, scope: !2427)
!2430 = !DILocation(line: 1242, column: 10, scope: !2359)
!2431 = !DILocation(line: 1242, column: 15, scope: !2359)
!2432 = !DILocation(line: 1242, column: 2, scope: !2359)
!2433 = !DILocation(line: 1244, column: 1, scope: !2359)
!2434 = distinct !DISubprogram(name: "nested_table_alloc", scope: !3, file: !3, line: 122, type: !2435, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2437)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!112, !165, !163, !181}
!2437 = !{!2438, !2439, !2440, !2441, !2442, !2443, !2445, !2448, !2450, !2451, !2452, !2453}
!2438 = !DILocalVariable(name: "ht", arg: 1, scope: !2434, file: !3, line: 122, type: !165)
!2439 = !DILocalVariable(name: "prev", arg: 2, scope: !2434, file: !3, line: 123, type: !163)
!2440 = !DILocalVariable(name: "leaf", arg: 3, scope: !2434, file: !3, line: 124, type: !181)
!2441 = !DILocalVariable(name: "ntbl", scope: !2434, file: !3, line: 126, type: !112)
!2442 = !DILocalVariable(name: "i", scope: !2434, file: !3, line: 127, type: !124)
!2443 = !DILocalVariable(name: "__UNIQUE_ID_rcu322", scope: !2444, file: !3, line: 129, type: !112)
!2444 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 129, column: 9)
!2445 = !DILocalVariable(name: "__ai_ptr", scope: !2446, file: !3, line: 140, type: !163)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !3, line: 140, column: 6)
!2447 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 140, column: 6)
!2448 = !DILocalVariable(name: "__ret", scope: !2449, file: !3, line: 140, type: !112)
!2449 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 140, column: 6)
!2450 = !DILocalVariable(name: "__old", scope: !2449, file: !3, line: 140, type: !112)
!2451 = !DILocalVariable(name: "__new", scope: !2449, file: !3, line: 140, type: !112)
!2452 = !DILocalVariable(name: "__ptr", scope: !2449, file: !3, line: 140, type: !139)
!2453 = !DILocalVariable(name: "__UNIQUE_ID_rcu324", scope: !2454, file: !3, line: 144, type: !112)
!2454 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 144, column: 9)
!2455 = !DILocation(line: 122, column: 66, scope: !2434)
!2456 = !DILocation(line: 123, column: 39, scope: !2434)
!2457 = !DILocation(line: 124, column: 17, scope: !2434)
!2458 = !DILocation(line: 126, column: 2, scope: !2434)
!2459 = !DILocation(line: 126, column: 22, scope: !2434)
!2460 = !DILocation(line: 127, column: 2, scope: !2434)
!2461 = !DILocation(line: 127, column: 6, scope: !2434)
!2462 = !DILocation(line: 129, column: 9, scope: !2444)
!2463 = !DILocation(line: 129, column: 9, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 129, column: 9)
!2465 = !DILocation(line: 129, column: 9, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2464, file: !3, line: 129, column: 9)
!2467 = !DILocation(line: 129, column: 9, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 129, column: 9)
!2469 = !DILocation(line: 129, column: 9, scope: !2434)
!2470 = !DILocation(line: 129, column: 7, scope: !2434)
!2471 = !DILocation(line: 130, column: 6, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 130, column: 6)
!2473 = !DILocation(line: 130, column: 6, scope: !2434)
!2474 = !DILocation(line: 131, column: 10, scope: !2472)
!2475 = !DILocation(line: 131, column: 3, scope: !2472)
!2476 = !DILocation(line: 133, column: 9, scope: !2434)
!2477 = !DILocation(line: 133, column: 7, scope: !2434)
!2478 = !DILocation(line: 135, column: 6, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 135, column: 6)
!2480 = !DILocation(line: 135, column: 11, scope: !2479)
!2481 = !DILocation(line: 135, column: 14, scope: !2479)
!2482 = !DILocation(line: 135, column: 6, scope: !2434)
!2483 = !DILocation(line: 136, column: 10, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 136, column: 3)
!2485 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 135, column: 20)
!2486 = !DILocation(line: 136, column: 8, scope: !2484)
!2487 = !DILocation(line: 136, column: 15, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 136, column: 3)
!2489 = !DILocation(line: 136, column: 17, scope: !2488)
!2490 = !DILocation(line: 136, column: 3, scope: !2484)
!2491 = !DILocation(line: 137, column: 4, scope: !2488)
!2492 = !DILocation(line: 136, column: 49, scope: !2488)
!2493 = !DILocation(line: 136, column: 3, scope: !2488)
!2494 = distinct !{!2494, !2490, !2495, !455, !456}
!2495 = !DILocation(line: 137, column: 4, scope: !2484)
!2496 = !DILocation(line: 138, column: 2, scope: !2485)
!2497 = !DILocation(line: 140, column: 6, scope: !2446)
!2498 = !DILocation(line: 140, column: 6, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 140, column: 6)
!2500 = !DILocation(line: 140, column: 6, scope: !2449)
!2501 = !{i64 2154118835, i64 2154118874, i64 2154118895, i64 2154118932, i64 2154118955, i64 2154118964}
!2502 = !DILocation(line: 140, column: 6, scope: !2447)
!2503 = !DILocation(line: 140, column: 55, scope: !2447)
!2504 = !DILocation(line: 140, column: 6, scope: !2434)
!2505 = !DILocation(line: 141, column: 10, scope: !2447)
!2506 = !DILocation(line: 141, column: 3, scope: !2447)
!2507 = !DILocation(line: 143, column: 8, scope: !2434)
!2508 = !DILocation(line: 143, column: 2, scope: !2434)
!2509 = !DILocation(line: 144, column: 9, scope: !2454)
!2510 = !DILocation(line: 144, column: 9, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 144, column: 9)
!2512 = !DILocation(line: 144, column: 9, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 144, column: 9)
!2514 = !DILocation(line: 144, column: 9, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 144, column: 9)
!2516 = !DILocation(line: 144, column: 9, scope: !2434)
!2517 = !DILocation(line: 144, column: 2, scope: !2434)
!2518 = !DILocation(line: 145, column: 1, scope: !2434)
!2519 = !DISubprogram(name: "__rcu_read_lock", scope: !368, file: !368, line: 74, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2520 = distinct !DISubprogram(name: "rht_head_hashfn", scope: !51, file: !51, line: 164, type: !2521, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2523)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!7, !165, !342, !998, !299}
!2523 = !{!2524, !2525, !2526, !2527, !2528}
!2524 = !DILocalVariable(name: "ht", arg: 1, scope: !2520, file: !51, line: 165, type: !165)
!2525 = !DILocalVariable(name: "tbl", arg: 2, scope: !2520, file: !51, line: 165, type: !342)
!2526 = !DILocalVariable(name: "he", arg: 3, scope: !2520, file: !51, line: 166, type: !998)
!2527 = !DILocalVariable(name: "params", arg: 4, scope: !2520, file: !51, line: 166, type: !299)
!2528 = !DILocalVariable(name: "ptr", scope: !2520, file: !51, line: 168, type: !1593)
!2529 = !DILocation(line: 165, column: 21, scope: !2520)
!2530 = !DILocation(line: 165, column: 52, scope: !2520)
!2531 = !DILocation(line: 166, column: 27, scope: !2520)
!2532 = !DILocation(line: 166, column: 62, scope: !2520)
!2533 = !DILocation(line: 168, column: 2, scope: !2520)
!2534 = !DILocation(line: 168, column: 14, scope: !2520)
!2535 = !DILocation(line: 168, column: 28, scope: !2520)
!2536 = !DILocation(line: 168, column: 32, scope: !2520)
!2537 = !DILocation(line: 168, column: 20, scope: !2520)
!2538 = !DILocation(line: 170, column: 9, scope: !2520)
!2539 = !DILocation(line: 171, column: 26, scope: !2520)
!2540 = !DILocation(line: 171, column: 38, scope: !2520)
!2541 = !DILocation(line: 171, column: 49, scope: !2520)
!2542 = !DILocation(line: 171, column: 61, scope: !2520)
!2543 = !DILocation(line: 171, column: 54, scope: !2520)
!2544 = !DILocation(line: 172, column: 12, scope: !2520)
!2545 = !DILocation(line: 172, column: 16, scope: !2520)
!2546 = !DILocation(line: 172, column: 18, scope: !2520)
!2547 = !DILocation(line: 173, column: 14, scope: !2520)
!2548 = !DILocation(line: 173, column: 19, scope: !2520)
!2549 = !DILocation(line: 171, column: 31, scope: !2520)
!2550 = !DILocation(line: 171, column: 9, scope: !2520)
!2551 = !DILocation(line: 174, column: 24, scope: !2520)
!2552 = !DILocation(line: 174, column: 28, scope: !2520)
!2553 = !DILocation(line: 174, column: 33, scope: !2520)
!2554 = !DILocation(line: 174, column: 46, scope: !2520)
!2555 = !DILocation(line: 174, column: 39, scope: !2520)
!2556 = !DILocation(line: 174, column: 37, scope: !2520)
!2557 = !DILocation(line: 174, column: 9, scope: !2520)
!2558 = !DILocation(line: 175, column: 1, scope: !2520)
!2559 = !DILocation(line: 170, column: 2, scope: !2520)
!2560 = distinct !DISubprogram(name: "rht_bucket_var", scope: !51, file: !51, line: 293, type: !2561, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2563)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!341, !49, !7}
!2563 = !{!2564, !2565}
!2564 = !DILocalVariable(name: "tbl", arg: 1, scope: !2560, file: !51, line: 294, type: !49)
!2565 = !DILocalVariable(name: "hash", arg: 2, scope: !2560, file: !51, line: 294, type: !7)
!2566 = !DILocation(line: 294, column: 23, scope: !2560)
!2567 = !DILocation(line: 294, column: 41, scope: !2560)
!2568 = !DILocation(line: 296, column: 9, scope: !2560)
!2569 = !DILocation(line: 296, column: 51, scope: !2560)
!2570 = !DILocation(line: 296, column: 56, scope: !2560)
!2571 = !DILocation(line: 296, column: 31, scope: !2560)
!2572 = !DILocation(line: 297, column: 11, scope: !2560)
!2573 = !DILocation(line: 297, column: 16, scope: !2560)
!2574 = !DILocation(line: 297, column: 24, scope: !2560)
!2575 = !DILocation(line: 296, column: 2, scope: !2560)
!2576 = distinct !DISubprogram(name: "rht_bucket_insert", scope: !51, file: !51, line: 300, type: !2360, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2577)
!2577 = !{!2578, !2579, !2580}
!2578 = !DILocalVariable(name: "ht", arg: 1, scope: !2576, file: !51, line: 301, type: !165)
!2579 = !DILocalVariable(name: "tbl", arg: 2, scope: !2576, file: !51, line: 301, type: !49)
!2580 = !DILocalVariable(name: "hash", arg: 3, scope: !2576, file: !51, line: 301, type: !7)
!2581 = !DILocation(line: 301, column: 21, scope: !2576)
!2582 = !DILocation(line: 301, column: 46, scope: !2576)
!2583 = !DILocation(line: 301, column: 64, scope: !2576)
!2584 = !DILocation(line: 303, column: 9, scope: !2576)
!2585 = !DILocation(line: 303, column: 56, scope: !2576)
!2586 = !DILocation(line: 303, column: 60, scope: !2576)
!2587 = !DILocation(line: 303, column: 65, scope: !2576)
!2588 = !DILocation(line: 303, column: 31, scope: !2576)
!2589 = !DILocation(line: 304, column: 11, scope: !2576)
!2590 = !DILocation(line: 304, column: 16, scope: !2576)
!2591 = !DILocation(line: 304, column: 24, scope: !2576)
!2592 = !DILocation(line: 303, column: 2, scope: !2576)
!2593 = distinct !DISubprogram(name: "ERR_PTR", scope: !622, file: !622, line: 39, type: !2594, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2596)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!48, !127}
!2596 = !{!2597}
!2597 = !DILocalVariable(name: "error", arg: 1, scope: !2593, file: !622, line: 39, type: !127)
!2598 = !DILocation(line: 39, column: 48, scope: !2593)
!2599 = !DILocation(line: 41, column: 18, scope: !2593)
!2600 = !DILocation(line: 41, column: 9, scope: !2593)
!2601 = !DILocation(line: 41, column: 2, scope: !2593)
!2602 = distinct !DISubprogram(name: "rht_lock", scope: !51, file: !51, line: 326, type: !2603, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2605)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!111, !49, !341}
!2605 = !{!2606, !2607, !2608, !2609, !2613}
!2606 = !DILocalVariable(name: "tbl", arg: 1, scope: !2602, file: !51, line: 326, type: !49)
!2607 = !DILocalVariable(name: "bkt", arg: 2, scope: !2602, file: !51, line: 327, type: !341)
!2608 = !DILocalVariable(name: "flags", scope: !2602, file: !51, line: 329, type: !111)
!2609 = !DILocalVariable(name: "__dummy", scope: !2610, file: !51, line: 331, type: !111)
!2610 = distinct !DILexicalBlock(scope: !2611, file: !51, line: 331, column: 2)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !51, line: 331, column: 2)
!2612 = distinct !DILexicalBlock(scope: !2602, file: !51, line: 331, column: 2)
!2613 = !DILocalVariable(name: "__dummy2", scope: !2610, file: !51, line: 331, type: !111)
!2614 = !DILocation(line: 326, column: 59, scope: !2602)
!2615 = !DILocation(line: 327, column: 41, scope: !2602)
!2616 = !DILocation(line: 329, column: 2, scope: !2602)
!2617 = !DILocation(line: 329, column: 16, scope: !2602)
!2618 = !DILocation(line: 331, column: 2, scope: !2602)
!2619 = !DILocation(line: 331, column: 2, scope: !2612)
!2620 = !DILocation(line: 331, column: 2, scope: !2610)
!2621 = !DILocation(line: 331, column: 2, scope: !2611)
!2622 = !DILocation(line: 332, column: 36, scope: !2602)
!2623 = !DILocation(line: 332, column: 2, scope: !2602)
!2624 = !DILocation(line: 333, column: 2, scope: !2602)
!2625 = !DILocation(line: 333, column: 2, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2602, file: !51, line: 333, column: 2)
!2627 = !DILocation(line: 334, column: 9, scope: !2602)
!2628 = !DILocation(line: 335, column: 1, scope: !2602)
!2629 = !DILocation(line: 334, column: 2, scope: !2602)
!2630 = distinct !DISubprogram(name: "rhashtable_lookup_one", scope: !3, file: !3, line: 490, type: !2631, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2633)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!48, !165, !341, !49, !7, !188, !93}
!2633 = !{!2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2643, !2644, !2645, !2649, !2650, !2652, !2654}
!2634 = !DILocalVariable(name: "ht", arg: 1, scope: !2630, file: !3, line: 490, type: !165)
!2635 = !DILocalVariable(name: "bkt", arg: 2, scope: !2630, file: !3, line: 491, type: !341)
!2636 = !DILocalVariable(name: "tbl", arg: 3, scope: !2630, file: !3, line: 492, type: !49)
!2637 = !DILocalVariable(name: "hash", arg: 4, scope: !2630, file: !3, line: 492, type: !7)
!2638 = !DILocalVariable(name: "key", arg: 5, scope: !2630, file: !3, line: 493, type: !188)
!2639 = !DILocalVariable(name: "obj", arg: 6, scope: !2630, file: !3, line: 493, type: !93)
!2640 = !DILocalVariable(name: "arg", scope: !2630, file: !3, line: 495, type: !198)
!2641 = !DILocalVariable(name: "pprev", scope: !2630, file: !3, line: 499, type: !2642)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!2643 = !DILocalVariable(name: "head", scope: !2630, file: !3, line: 500, type: !93)
!2644 = !DILocalVariable(name: "elasticity", scope: !2630, file: !3, line: 501, type: !124)
!2645 = !DILocalVariable(name: "list", scope: !2646, file: !3, line: 505, type: !98)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 504, column: 62)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !3, line: 504, column: 2)
!2648 = distinct !DILexicalBlock(scope: !2630, file: !3, line: 504, column: 2)
!2649 = !DILocalVariable(name: "plist", scope: !2646, file: !3, line: 506, type: !98)
!2650 = !DILocalVariable(name: "__mptr", scope: !2651, file: !3, line: 520, type: !48)
!2651 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 520, column: 10)
!2652 = !DILocalVariable(name: "__mptr", scope: !2653, file: !3, line: 521, type: !48)
!2653 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 521, column: 11)
!2654 = !DILocalVariable(name: "_r_a_p__v", scope: !2655, file: !3, line: 527, type: !121)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 527, column: 4)
!2656 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 526, column: 7)
!2657 = !DILocation(line: 490, column: 55, scope: !2630)
!2658 = !DILocation(line: 491, column: 39, scope: !2630)
!2659 = !DILocation(line: 492, column: 29, scope: !2630)
!2660 = !DILocation(line: 492, column: 47, scope: !2630)
!2661 = !DILocation(line: 493, column: 20, scope: !2630)
!2662 = !DILocation(line: 493, column: 44, scope: !2630)
!2663 = !DILocation(line: 495, column: 2, scope: !2630)
!2664 = !DILocation(line: 495, column: 32, scope: !2630)
!2665 = !DILocation(line: 495, column: 38, scope: !2630)
!2666 = !DILocation(line: 496, column: 9, scope: !2630)
!2667 = !DILocation(line: 497, column: 10, scope: !2630)
!2668 = !DILocation(line: 499, column: 2, scope: !2630)
!2669 = !DILocation(line: 499, column: 28, scope: !2630)
!2670 = !DILocation(line: 500, column: 2, scope: !2630)
!2671 = !DILocation(line: 500, column: 21, scope: !2630)
!2672 = !DILocation(line: 501, column: 2, scope: !2630)
!2673 = !DILocation(line: 501, column: 6, scope: !2630)
!2674 = !DILocation(line: 503, column: 13, scope: !2630)
!2675 = !DILocation(line: 504, column: 2, scope: !2648)
!2676 = !DILocation(line: 504, column: 2, scope: !2647)
!2677 = !DILocation(line: 505, column: 3, scope: !2646)
!2678 = !DILocation(line: 505, column: 23, scope: !2646)
!2679 = !DILocation(line: 506, column: 3, scope: !2646)
!2680 = !DILocation(line: 506, column: 23, scope: !2646)
!2681 = !DILocation(line: 508, column: 13, scope: !2646)
!2682 = !DILocation(line: 509, column: 8, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 509, column: 7)
!2684 = !DILocation(line: 509, column: 12, scope: !2683)
!2685 = !DILocation(line: 510, column: 8, scope: !2683)
!2686 = !DILocation(line: 510, column: 12, scope: !2683)
!2687 = !DILocation(line: 510, column: 14, scope: !2683)
!2688 = !DILocation(line: 509, column: 7, scope: !2646)
!2689 = !DILocation(line: 511, column: 8, scope: !2683)
!2690 = !DILocation(line: 511, column: 12, scope: !2683)
!2691 = !DILocation(line: 511, column: 14, scope: !2683)
!2692 = !DILocation(line: 511, column: 38, scope: !2683)
!2693 = !DILocation(line: 511, column: 42, scope: !2683)
!2694 = !DILocation(line: 511, column: 30, scope: !2683)
!2695 = !DILocation(line: 512, column: 41, scope: !2683)
!2696 = !DILocation(line: 512, column: 45, scope: !2683)
!2697 = !DILocation(line: 512, column: 33, scope: !2683)
!2698 = !DILocation(line: 512, column: 8, scope: !2683)
!2699 = !DILocation(line: 513, column: 13, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2683, file: !3, line: 512, column: 54)
!2701 = !DILocation(line: 513, column: 19, scope: !2700)
!2702 = !DILocation(line: 513, column: 10, scope: !2700)
!2703 = !DILocation(line: 514, column: 4, scope: !2700)
!2704 = !DILocation(line: 517, column: 8, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 517, column: 7)
!2706 = !DILocation(line: 517, column: 12, scope: !2705)
!2707 = !DILocation(line: 517, column: 7, scope: !2646)
!2708 = !DILocation(line: 518, column: 19, scope: !2705)
!2709 = !DILocation(line: 518, column: 23, scope: !2705)
!2710 = !DILocation(line: 518, column: 11, scope: !2705)
!2711 = !DILocation(line: 518, column: 4, scope: !2705)
!2712 = !DILocation(line: 520, column: 10, scope: !2651)
!2713 = !DILocation(line: 520, column: 10, scope: !2646)
!2714 = !DILocation(line: 520, column: 8, scope: !2646)
!2715 = !DILocation(line: 521, column: 11, scope: !2653)
!2716 = !DILocation(line: 521, column: 11, scope: !2646)
!2717 = !DILocation(line: 521, column: 9, scope: !2646)
!2718 = !DILocation(line: 523, column: 3, scope: !2646)
!2719 = !DILocation(line: 523, column: 3, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 523, column: 3)
!2721 = !DILocation(line: 523, column: 3, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2720, file: !3, line: 523, column: 3)
!2723 = !DILocation(line: 523, column: 3, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 523, column: 3)
!2725 = !DILocation(line: 523, column: 3, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 523, column: 3)
!2727 = !DILocation(line: 524, column: 10, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 524, column: 10)
!2729 = !DILocation(line: 524, column: 10, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 524, column: 10)
!2731 = !DILocation(line: 524, column: 8, scope: !2646)
!2732 = !DILocation(line: 525, column: 3, scope: !2646)
!2733 = !DILocation(line: 525, column: 3, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 525, column: 3)
!2735 = !DILocation(line: 525, column: 3, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2734, file: !3, line: 525, column: 3)
!2737 = !DILocation(line: 525, column: 3, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 525, column: 3)
!2739 = !DILocation(line: 525, column: 3, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 525, column: 3)
!2741 = !DILocation(line: 526, column: 7, scope: !2656)
!2742 = !DILocation(line: 526, column: 7, scope: !2646)
!2743 = !DILocation(line: 527, column: 4, scope: !2656)
!2744 = !DILocation(line: 527, column: 4, scope: !2655)
!2745 = !DILocation(line: 527, column: 4, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 527, column: 4)
!2747 = !DILocation(line: 527, column: 4, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 527, column: 4)
!2749 = !DILocation(line: 527, column: 4, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2748, file: !3, line: 527, column: 4)
!2751 = !DILocation(line: 527, column: 4, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2748, file: !3, line: 527, column: 4)
!2753 = !DILocation(line: 527, column: 4, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 527, column: 4)
!2755 = !DILocation(line: 527, column: 4, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2754, file: !3, line: 527, column: 4)
!2757 = !DILocation(line: 527, column: 4, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2754, file: !3, line: 527, column: 4)
!2759 = !DILocation(line: 527, column: 4, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2758, file: !3, line: 527, column: 4)
!2761 = !{i64 2154181142}
!2762 = !DILocation(line: 527, column: 4, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2758, file: !3, line: 527, column: 4)
!2764 = !DILocation(line: 527, column: 4, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 527, column: 4)
!2766 = !DILocation(line: 527, column: 4, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 527, column: 4)
!2768 = !DILocation(line: 530, column: 22, scope: !2656)
!2769 = !DILocation(line: 530, column: 27, scope: !2656)
!2770 = !DILocation(line: 530, column: 4, scope: !2656)
!2771 = !DILocation(line: 532, column: 3, scope: !2646)
!2772 = !DILocation(line: 533, column: 2, scope: !2647)
!2773 = !DILocation(line: 504, column: 2, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 504, column: 2)
!2775 = !DILocation(line: 504, column: 2, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 504, column: 2)
!2777 = distinct !{!2777, !2675, !2778, !455, !456}
!2778 = !DILocation(line: 533, column: 2, scope: !2648)
!2779 = !DILocation(line: 535, column: 6, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2630, file: !3, line: 535, column: 6)
!2781 = !DILocation(line: 535, column: 17, scope: !2780)
!2782 = !DILocation(line: 535, column: 6, scope: !2630)
!2783 = !DILocation(line: 536, column: 10, scope: !2780)
!2784 = !DILocation(line: 536, column: 3, scope: !2780)
!2785 = !DILocation(line: 538, column: 9, scope: !2630)
!2786 = !DILocation(line: 538, column: 2, scope: !2630)
!2787 = !DILocation(line: 539, column: 1, scope: !2630)
!2788 = distinct !DISubprogram(name: "rhashtable_insert_one", scope: !3, file: !3, line: 541, type: !2789, scopeLine: 545, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2791)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!49, !165, !341, !49, !7, !93, !48}
!2791 = !{!2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2802, !2805}
!2792 = !DILocalVariable(name: "ht", arg: 1, scope: !2788, file: !3, line: 542, type: !165)
!2793 = !DILocalVariable(name: "bkt", arg: 2, scope: !2788, file: !3, line: 542, type: !341)
!2794 = !DILocalVariable(name: "tbl", arg: 3, scope: !2788, file: !3, line: 543, type: !49)
!2795 = !DILocalVariable(name: "hash", arg: 4, scope: !2788, file: !3, line: 543, type: !7)
!2796 = !DILocalVariable(name: "obj", arg: 5, scope: !2788, file: !3, line: 543, type: !93)
!2797 = !DILocalVariable(name: "data", arg: 6, scope: !2788, file: !3, line: 544, type: !48)
!2798 = !DILocalVariable(name: "new_tbl", scope: !2788, file: !3, line: 546, type: !49)
!2799 = !DILocalVariable(name: "head", scope: !2788, file: !3, line: 547, type: !93)
!2800 = !DILocalVariable(name: "__UNIQUE_ID_rcu344", scope: !2801, file: !3, line: 555, type: !49)
!2801 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 555, column: 12)
!2802 = !DILocalVariable(name: "list", scope: !2803, file: !3, line: 572, type: !98)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !3, line: 571, column: 18)
!2804 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 571, column: 6)
!2805 = !DILocalVariable(name: "__mptr", scope: !2806, file: !3, line: 574, type: !48)
!2806 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 574, column: 10)
!2807 = !DILocation(line: 542, column: 21, scope: !2788)
!2808 = !DILocation(line: 542, column: 56, scope: !2788)
!2809 = !DILocation(line: 543, column: 23, scope: !2788)
!2810 = !DILocation(line: 543, column: 41, scope: !2788)
!2811 = !DILocation(line: 543, column: 66, scope: !2788)
!2812 = !DILocation(line: 544, column: 8, scope: !2788)
!2813 = !DILocation(line: 546, column: 2, scope: !2788)
!2814 = !DILocation(line: 546, column: 23, scope: !2788)
!2815 = !DILocation(line: 547, column: 2, scope: !2788)
!2816 = !DILocation(line: 547, column: 21, scope: !2788)
!2817 = !DILocation(line: 549, column: 22, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 549, column: 6)
!2819 = !DILocation(line: 549, column: 7, scope: !2818)
!2820 = !DILocation(line: 549, column: 6, scope: !2788)
!2821 = !DILocation(line: 550, column: 10, scope: !2818)
!2822 = !DILocation(line: 550, column: 3, scope: !2818)
!2823 = !DILocation(line: 552, column: 14, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 552, column: 6)
!2825 = !DILocation(line: 552, column: 6, scope: !2824)
!2826 = !DILocation(line: 552, column: 20, scope: !2824)
!2827 = !DILocation(line: 552, column: 31, scope: !2824)
!2828 = !DILocation(line: 552, column: 42, scope: !2824)
!2829 = !DILocation(line: 552, column: 34, scope: !2824)
!2830 = !DILocation(line: 552, column: 48, scope: !2824)
!2831 = !DILocation(line: 552, column: 6, scope: !2788)
!2832 = !DILocation(line: 553, column: 19, scope: !2824)
!2833 = !DILocation(line: 553, column: 10, scope: !2824)
!2834 = !DILocation(line: 553, column: 3, scope: !2824)
!2835 = !DILocation(line: 555, column: 12, scope: !2801)
!2836 = !DILocation(line: 555, column: 12, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2801, file: !3, line: 555, column: 12)
!2838 = !DILocation(line: 555, column: 12, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2837, file: !3, line: 555, column: 12)
!2840 = !DILocation(line: 555, column: 12, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2801, file: !3, line: 555, column: 12)
!2842 = !DILocation(line: 555, column: 12, scope: !2788)
!2843 = !DILocation(line: 555, column: 10, scope: !2788)
!2844 = !DILocation(line: 556, column: 6, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 556, column: 6)
!2846 = !DILocation(line: 556, column: 6, scope: !2788)
!2847 = !DILocation(line: 557, column: 10, scope: !2845)
!2848 = !DILocation(line: 557, column: 3, scope: !2845)
!2849 = !DILocation(line: 559, column: 14, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 559, column: 6)
!2851 = !DILocation(line: 559, column: 6, scope: !2850)
!2852 = !DILocation(line: 559, column: 20, scope: !2850)
!2853 = !DILocation(line: 559, column: 6, scope: !2788)
!2854 = !DILocation(line: 560, column: 19, scope: !2850)
!2855 = !DILocation(line: 560, column: 10, scope: !2850)
!2856 = !DILocation(line: 560, column: 3, scope: !2850)
!2857 = !DILocation(line: 562, column: 6, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 562, column: 6)
!2859 = !DILocation(line: 562, column: 6, scope: !2788)
!2860 = !DILocation(line: 563, column: 10, scope: !2858)
!2861 = !DILocation(line: 563, column: 3, scope: !2858)
!2862 = !DILocation(line: 565, column: 6, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 565, column: 6)
!2864 = !DILocation(line: 565, column: 6, scope: !2788)
!2865 = !DILocation(line: 566, column: 10, scope: !2863)
!2866 = !DILocation(line: 566, column: 3, scope: !2863)
!2867 = !DILocation(line: 568, column: 17, scope: !2788)
!2868 = !DILocation(line: 568, column: 22, scope: !2788)
!2869 = !DILocation(line: 568, column: 27, scope: !2788)
!2870 = !DILocation(line: 568, column: 9, scope: !2788)
!2871 = !DILocation(line: 568, column: 7, scope: !2788)
!2872 = !DILocation(line: 570, column: 2, scope: !2788)
!2873 = !DILocation(line: 570, column: 2, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 570, column: 2)
!2875 = !DILocation(line: 570, column: 2, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 570, column: 2)
!2877 = !DILocation(line: 570, column: 2, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 570, column: 2)
!2879 = !DILocation(line: 570, column: 2, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 570, column: 2)
!2881 = !DILocation(line: 571, column: 6, scope: !2804)
!2882 = !DILocation(line: 571, column: 10, scope: !2804)
!2883 = !DILocation(line: 571, column: 6, scope: !2788)
!2884 = !DILocation(line: 572, column: 3, scope: !2803)
!2885 = !DILocation(line: 572, column: 23, scope: !2803)
!2886 = !DILocation(line: 574, column: 10, scope: !2806)
!2887 = !DILocation(line: 574, column: 10, scope: !2803)
!2888 = !DILocation(line: 574, column: 8, scope: !2803)
!2889 = !DILocation(line: 575, column: 3, scope: !2803)
!2890 = !DILocation(line: 575, column: 3, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 575, column: 3)
!2892 = !DILocation(line: 575, column: 3, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2891, file: !3, line: 575, column: 3)
!2894 = !DILocation(line: 575, column: 3, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 575, column: 3)
!2896 = !DILocation(line: 575, column: 3, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 575, column: 3)
!2898 = !DILocation(line: 576, column: 2, scope: !2804)
!2899 = !DILocation(line: 576, column: 2, scope: !2803)
!2900 = !DILocation(line: 581, column: 20, scope: !2788)
!2901 = !DILocation(line: 581, column: 25, scope: !2788)
!2902 = !DILocation(line: 581, column: 2, scope: !2788)
!2903 = !DILocation(line: 583, column: 14, scope: !2788)
!2904 = !DILocation(line: 583, column: 18, scope: !2788)
!2905 = !DILocation(line: 583, column: 2, scope: !2788)
!2906 = !DILocation(line: 584, column: 24, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 584, column: 6)
!2908 = !DILocation(line: 584, column: 28, scope: !2907)
!2909 = !DILocation(line: 584, column: 6, scope: !2907)
!2910 = !DILocation(line: 584, column: 6, scope: !2788)
!2911 = !DILocation(line: 585, column: 18, scope: !2907)
!2912 = !DILocation(line: 585, column: 22, scope: !2907)
!2913 = !DILocation(line: 585, column: 3, scope: !2907)
!2914 = !DILocation(line: 587, column: 2, scope: !2788)
!2915 = !DILocation(line: 588, column: 1, scope: !2788)
!2916 = distinct !DISubprogram(name: "ERR_CAST", scope: !622, file: !622, line: 82, type: !2917, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2919)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!48, !188}
!2919 = !{!2920}
!2920 = !DILocalVariable(name: "ptr", arg: 1, scope: !2916, file: !622, line: 82, type: !188)
!2921 = !DILocation(line: 82, column: 64, scope: !2916)
!2922 = !DILocation(line: 85, column: 18, scope: !2916)
!2923 = !DILocation(line: 85, column: 2, scope: !2916)
!2924 = distinct !DISubprogram(name: "rht_unlock", scope: !51, file: !51, line: 349, type: !2925, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2927)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{null, !49, !341, !111}
!2927 = !{!2928, !2929, !2930, !2931, !2935}
!2928 = !DILocalVariable(name: "tbl", arg: 1, scope: !2924, file: !51, line: 349, type: !49)
!2929 = !DILocalVariable(name: "bkt", arg: 2, scope: !2924, file: !51, line: 350, type: !341)
!2930 = !DILocalVariable(name: "flags", arg: 3, scope: !2924, file: !51, line: 351, type: !111)
!2931 = !DILocalVariable(name: "__dummy", scope: !2932, file: !51, line: 355, type: !111)
!2932 = distinct !DILexicalBlock(scope: !2933, file: !51, line: 355, column: 2)
!2933 = distinct !DILexicalBlock(scope: !2934, file: !51, line: 355, column: 2)
!2934 = distinct !DILexicalBlock(scope: !2924, file: !51, line: 355, column: 2)
!2935 = !DILocalVariable(name: "__dummy2", scope: !2932, file: !51, line: 355, type: !111)
!2936 = !DILocation(line: 349, column: 52, scope: !2924)
!2937 = !DILocation(line: 350, column: 41, scope: !2924)
!2938 = !DILocation(line: 351, column: 24, scope: !2924)
!2939 = !DILocation(line: 353, column: 2, scope: !2924)
!2940 = !DILocation(line: 353, column: 2, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2924, file: !51, line: 353, column: 2)
!2942 = !DILocation(line: 354, column: 38, scope: !2924)
!2943 = !DILocation(line: 354, column: 2, scope: !2924)
!2944 = !DILocation(line: 355, column: 2, scope: !2924)
!2945 = !DILocation(line: 355, column: 2, scope: !2934)
!2946 = !DILocation(line: 355, column: 2, scope: !2932)
!2947 = !DILocation(line: 355, column: 2, scope: !2933)
!2948 = !DILocation(line: 355, column: 2, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2933, file: !51, line: 355, column: 2)
!2950 = !DILocation(line: 356, column: 1, scope: !2924)
!2951 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !622, file: !622, line: 70, type: !2952, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2954)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!181, !188}
!2954 = !{!2955}
!2955 = !DILocalVariable(name: "ptr", arg: 1, scope: !2951, file: !622, line: 70, type: !188)
!2956 = !DILocation(line: 70, column: 68, scope: !2951)
!2957 = !DILocation(line: 72, column: 9, scope: !2951)
!2958 = !DILocation(line: 72, column: 24, scope: !2951)
!2959 = !DILocation(line: 72, column: 27, scope: !2951)
!2960 = !DILocation(line: 72, column: 2, scope: !2951)
!2961 = distinct !DISubprogram(name: "rhashtable_insert_rehash", scope: !3, file: !3, line: 442, type: !2962, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2964)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!124, !165, !49}
!2964 = !{!2965, !2966, !2967, !2968, !2969, !2970, !2971, !2973, !2974}
!2965 = !DILocalVariable(name: "ht", arg: 1, scope: !2961, file: !3, line: 442, type: !165)
!2966 = !DILocalVariable(name: "tbl", arg: 2, scope: !2961, file: !3, line: 443, type: !49)
!2967 = !DILocalVariable(name: "old_tbl", scope: !2961, file: !3, line: 445, type: !49)
!2968 = !DILocalVariable(name: "new_tbl", scope: !2961, file: !3, line: 446, type: !49)
!2969 = !DILocalVariable(name: "size", scope: !2961, file: !3, line: 447, type: !7)
!2970 = !DILocalVariable(name: "err", scope: !2961, file: !3, line: 448, type: !124)
!2971 = !DILocalVariable(name: "__UNIQUE_ID_rcu335", scope: !2972, file: !3, line: 450, type: !49)
!2972 = distinct !DILexicalBlock(scope: !2961, file: !3, line: 450, column: 12)
!2973 = !DILabel(scope: !2961, name: "fail", file: !3, line: 478)
!2974 = !DILocalVariable(name: "__UNIQUE_ID_rcu337", scope: !2975, file: !3, line: 480, type: !49)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !3, line: 480, column: 6)
!2976 = distinct !DILexicalBlock(scope: !2961, file: !3, line: 480, column: 6)
!2977 = !DILocation(line: 442, column: 56, scope: !2961)
!2978 = !DILocation(line: 443, column: 30, scope: !2961)
!2979 = !DILocation(line: 445, column: 2, scope: !2961)
!2980 = !DILocation(line: 445, column: 23, scope: !2961)
!2981 = !DILocation(line: 446, column: 2, scope: !2961)
!2982 = !DILocation(line: 446, column: 23, scope: !2961)
!2983 = !DILocation(line: 447, column: 2, scope: !2961)
!2984 = !DILocation(line: 447, column: 15, scope: !2961)
!2985 = !DILocation(line: 448, column: 2, scope: !2961)
!2986 = !DILocation(line: 448, column: 6, scope: !2961)
!2987 = !DILocation(line: 450, column: 12, scope: !2972)
!2988 = !DILocation(line: 450, column: 12, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2972, file: !3, line: 450, column: 12)
!2990 = !DILocation(line: 450, column: 12, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 450, column: 12)
!2992 = !DILocation(line: 450, column: 12, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2972, file: !3, line: 450, column: 12)
!2994 = !DILocation(line: 450, column: 12, scope: !2961)
!2995 = !DILocation(line: 450, column: 10, scope: !2961)
!2996 = !DILocation(line: 452, column: 9, scope: !2961)
!2997 = !DILocation(line: 452, column: 14, scope: !2961)
!2998 = !DILocation(line: 452, column: 7, scope: !2961)
!2999 = !DILocation(line: 454, column: 6, scope: !2961)
!3000 = !DILocation(line: 456, column: 24, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2961, file: !3, line: 456, column: 6)
!3002 = !DILocation(line: 456, column: 28, scope: !3001)
!3003 = !DILocation(line: 456, column: 6, scope: !3001)
!3004 = !DILocation(line: 456, column: 6, scope: !2961)
!3005 = !DILocation(line: 457, column: 8, scope: !3001)
!3006 = !DILocation(line: 457, column: 3, scope: !3001)
!3007 = !DILocation(line: 459, column: 11, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 459, column: 11)
!3009 = !DILocation(line: 459, column: 22, scope: !3008)
!3010 = !DILocation(line: 459, column: 19, scope: !3008)
!3011 = !DILocation(line: 459, column: 11, scope: !3001)
!3012 = !DILocation(line: 460, column: 3, scope: !3008)
!3013 = !DILocation(line: 462, column: 6, scope: !2961)
!3014 = !DILocation(line: 464, column: 31, scope: !2961)
!3015 = !DILocation(line: 464, column: 35, scope: !2961)
!3016 = !DILocation(line: 464, column: 12, scope: !2961)
!3017 = !DILocation(line: 464, column: 10, scope: !2961)
!3018 = !DILocation(line: 465, column: 6, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !2961, file: !3, line: 465, column: 6)
!3020 = !DILocation(line: 465, column: 14, scope: !3019)
!3021 = !DILocation(line: 465, column: 6, scope: !2961)
!3022 = !DILocation(line: 466, column: 3, scope: !3019)
!3023 = !DILocation(line: 468, column: 33, scope: !2961)
!3024 = !DILocation(line: 468, column: 37, scope: !2961)
!3025 = !DILocation(line: 468, column: 42, scope: !2961)
!3026 = !DILocation(line: 468, column: 8, scope: !2961)
!3027 = !DILocation(line: 468, column: 6, scope: !2961)
!3028 = !DILocation(line: 469, column: 6, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !2961, file: !3, line: 469, column: 6)
!3030 = !DILocation(line: 469, column: 6, scope: !2961)
!3031 = !DILocation(line: 470, column: 21, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3029, file: !3, line: 469, column: 11)
!3033 = !DILocation(line: 470, column: 3, scope: !3032)
!3034 = !DILocation(line: 471, column: 7, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 471, column: 7)
!3036 = !DILocation(line: 471, column: 11, scope: !3035)
!3037 = !DILocation(line: 471, column: 7, scope: !3032)
!3038 = !DILocation(line: 472, column: 8, scope: !3035)
!3039 = !DILocation(line: 472, column: 4, scope: !3035)
!3040 = !DILocation(line: 473, column: 2, scope: !3032)
!3041 = !DILocation(line: 474, column: 18, scope: !3029)
!3042 = !DILocation(line: 474, column: 22, scope: !3029)
!3043 = !DILocation(line: 474, column: 3, scope: !3029)
!3044 = !DILocation(line: 476, column: 9, scope: !2961)
!3045 = !DILocation(line: 476, column: 2, scope: !2961)
!3046 = !DILocation(line: 478, column: 1, scope: !2961)
!3047 = !DILocation(line: 480, column: 6, scope: !2975)
!3048 = !DILocation(line: 480, column: 6, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 480, column: 6)
!3050 = !DILocation(line: 480, column: 6, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 480, column: 6)
!3052 = !DILocation(line: 480, column: 6, scope: !2976)
!3053 = !DILocation(line: 480, column: 6, scope: !2961)
!3054 = !DILocation(line: 481, column: 3, scope: !2976)
!3055 = !DILocation(line: 484, column: 6, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !2961, file: !3, line: 484, column: 6)
!3057 = !DILocation(line: 484, column: 10, scope: !3056)
!3058 = !DILocation(line: 484, column: 6, scope: !2961)
!3059 = !DILocation(line: 485, column: 18, scope: !3056)
!3060 = !DILocation(line: 485, column: 22, scope: !3056)
!3061 = !DILocation(line: 485, column: 3, scope: !3056)
!3062 = !DILocation(line: 487, column: 9, scope: !2961)
!3063 = !DILocation(line: 487, column: 2, scope: !2961)
!3064 = !DILocation(line: 488, column: 1, scope: !2961)
!3065 = distinct !DISubprogram(name: "rht_bucket_index", scope: !51, file: !51, line: 119, type: !3066, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3068)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!7, !342, !7}
!3068 = !{!3069, !3070}
!3069 = !DILocalVariable(name: "tbl", arg: 1, scope: !3065, file: !51, line: 119, type: !342)
!3070 = !DILocalVariable(name: "hash", arg: 2, scope: !3065, file: !51, line: 120, type: !7)
!3071 = !DILocation(line: 119, column: 72, scope: !3065)
!3072 = !DILocation(line: 120, column: 23, scope: !3065)
!3073 = !DILocation(line: 122, column: 9, scope: !3065)
!3074 = !DILocation(line: 122, column: 17, scope: !3065)
!3075 = !DILocation(line: 122, column: 22, scope: !3065)
!3076 = !DILocation(line: 122, column: 27, scope: !3065)
!3077 = !DILocation(line: 122, column: 14, scope: !3065)
!3078 = !DILocation(line: 122, column: 2, scope: !3065)
!3079 = distinct !DISubprogram(name: "rht_key_hashfn", scope: !51, file: !51, line: 155, type: !3080, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3082)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!7, !165, !342, !188, !299}
!3082 = !{!3083, !3084, !3085, !3086, !3087}
!3083 = !DILocalVariable(name: "ht", arg: 1, scope: !3079, file: !51, line: 156, type: !165)
!3084 = !DILocalVariable(name: "tbl", arg: 2, scope: !3079, file: !51, line: 156, type: !342)
!3085 = !DILocalVariable(name: "key", arg: 3, scope: !3079, file: !51, line: 157, type: !188)
!3086 = !DILocalVariable(name: "params", arg: 4, scope: !3079, file: !51, line: 157, type: !299)
!3087 = !DILocalVariable(name: "hash", scope: !3079, file: !51, line: 159, type: !7)
!3088 = !DILocation(line: 156, column: 21, scope: !3079)
!3089 = !DILocation(line: 156, column: 52, scope: !3079)
!3090 = !DILocation(line: 157, column: 14, scope: !3079)
!3091 = !DILocation(line: 157, column: 50, scope: !3079)
!3092 = !DILocation(line: 159, column: 2, scope: !3079)
!3093 = !DILocation(line: 159, column: 15, scope: !3079)
!3094 = !DILocation(line: 159, column: 39, scope: !3079)
!3095 = !DILocation(line: 159, column: 43, scope: !3079)
!3096 = !DILocation(line: 159, column: 56, scope: !3079)
!3097 = !DILocation(line: 159, column: 61, scope: !3079)
!3098 = !DILocation(line: 159, column: 22, scope: !3079)
!3099 = !DILocation(line: 161, column: 26, scope: !3079)
!3100 = !DILocation(line: 161, column: 31, scope: !3079)
!3101 = !DILocation(line: 161, column: 9, scope: !3079)
!3102 = !DILocation(line: 162, column: 1, scope: !3079)
!3103 = !DILocation(line: 161, column: 2, scope: !3079)
!3104 = distinct !DISubprogram(name: "rht_key_get_hash", scope: !51, file: !51, line: 125, type: !3105, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3107)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!7, !165, !188, !299, !7}
!3107 = !{!3108, !3109, !3110, !3111, !3112, !3113, !3117}
!3108 = !DILocalVariable(name: "ht", arg: 1, scope: !3104, file: !51, line: 125, type: !165)
!3109 = !DILocalVariable(name: "key", arg: 2, scope: !3104, file: !51, line: 126, type: !188)
!3110 = !DILocalVariable(name: "params", arg: 3, scope: !3104, file: !51, line: 126, type: !299)
!3111 = !DILocalVariable(name: "hash_rnd", arg: 4, scope: !3104, file: !51, line: 127, type: !7)
!3112 = !DILocalVariable(name: "hash", scope: !3104, file: !51, line: 129, type: !7)
!3113 = !DILocalVariable(name: "key_len", scope: !3114, file: !51, line: 135, type: !7)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !51, line: 134, column: 27)
!3115 = distinct !DILexicalBlock(scope: !3116, file: !51, line: 134, column: 11)
!3116 = distinct !DILexicalBlock(scope: !3104, file: !51, line: 132, column: 6)
!3117 = !DILocalVariable(name: "key_len", scope: !3118, file: !51, line: 144, type: !7)
!3118 = distinct !DILexicalBlock(scope: !3115, file: !51, line: 143, column: 9)
!3119 = !DILocation(line: 125, column: 64, scope: !3104)
!3120 = !DILocation(line: 126, column: 14, scope: !3104)
!3121 = !DILocation(line: 126, column: 50, scope: !3104)
!3122 = !DILocation(line: 127, column: 15, scope: !3104)
!3123 = !DILocation(line: 129, column: 2, scope: !3104)
!3124 = !DILocation(line: 129, column: 15, scope: !3104)
!3125 = !DILocation(line: 132, column: 35, scope: !3116)
!3126 = !DILocation(line: 132, column: 7, scope: !3116)
!3127 = !DILocation(line: 132, column: 6, scope: !3104)
!3128 = !DILocation(line: 133, column: 10, scope: !3116)
!3129 = !DILocation(line: 133, column: 14, scope: !3116)
!3130 = !DILocation(line: 133, column: 16, scope: !3116)
!3131 = !DILocation(line: 133, column: 23, scope: !3116)
!3132 = !DILocation(line: 133, column: 28, scope: !3116)
!3133 = !DILocation(line: 133, column: 32, scope: !3116)
!3134 = !DILocation(line: 133, column: 41, scope: !3116)
!3135 = !DILocation(line: 133, column: 8, scope: !3116)
!3136 = !DILocation(line: 133, column: 3, scope: !3116)
!3137 = !DILocation(line: 134, column: 18, scope: !3115)
!3138 = !DILocation(line: 134, column: 11, scope: !3115)
!3139 = !DILocation(line: 134, column: 11, scope: !3116)
!3140 = !DILocation(line: 135, column: 3, scope: !3114)
!3141 = !DILocation(line: 135, column: 16, scope: !3114)
!3142 = !DILocation(line: 135, column: 33, scope: !3114)
!3143 = !DILocation(line: 135, column: 26, scope: !3114)
!3144 = !DILocation(line: 137, column: 14, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3114, file: !51, line: 137, column: 7)
!3146 = !DILocation(line: 137, column: 7, scope: !3145)
!3147 = !DILocation(line: 137, column: 7, scope: !3114)
!3148 = !DILocation(line: 138, column: 18, scope: !3145)
!3149 = !DILocation(line: 138, column: 25, scope: !3145)
!3150 = !DILocation(line: 138, column: 30, scope: !3145)
!3151 = !DILocation(line: 138, column: 39, scope: !3145)
!3152 = !DILocation(line: 138, column: 11, scope: !3145)
!3153 = !DILocation(line: 138, column: 9, scope: !3145)
!3154 = !DILocation(line: 138, column: 4, scope: !3145)
!3155 = !DILocation(line: 139, column: 12, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3145, file: !51, line: 139, column: 12)
!3157 = !DILocation(line: 139, column: 20, scope: !3156)
!3158 = !DILocation(line: 139, column: 12, scope: !3145)
!3159 = !DILocation(line: 140, column: 17, scope: !3156)
!3160 = !DILocation(line: 140, column: 22, scope: !3156)
!3161 = !DILocation(line: 140, column: 31, scope: !3156)
!3162 = !DILocation(line: 140, column: 11, scope: !3156)
!3163 = !DILocation(line: 140, column: 9, scope: !3156)
!3164 = !DILocation(line: 140, column: 4, scope: !3156)
!3165 = !DILocation(line: 142, column: 18, scope: !3156)
!3166 = !DILocation(line: 142, column: 23, scope: !3156)
!3167 = !DILocation(line: 142, column: 31, scope: !3156)
!3168 = !DILocation(line: 142, column: 46, scope: !3156)
!3169 = !DILocation(line: 142, column: 11, scope: !3156)
!3170 = !DILocation(line: 142, column: 9, scope: !3156)
!3171 = !DILocation(line: 143, column: 2, scope: !3115)
!3172 = !DILocation(line: 143, column: 2, scope: !3114)
!3173 = !DILocation(line: 144, column: 3, scope: !3118)
!3174 = !DILocation(line: 144, column: 16, scope: !3118)
!3175 = !DILocation(line: 144, column: 26, scope: !3118)
!3176 = !DILocation(line: 144, column: 30, scope: !3118)
!3177 = !DILocation(line: 144, column: 32, scope: !3118)
!3178 = !DILocation(line: 146, column: 14, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3118, file: !51, line: 146, column: 7)
!3180 = !DILocation(line: 146, column: 7, scope: !3179)
!3181 = !DILocation(line: 146, column: 7, scope: !3118)
!3182 = !DILocation(line: 147, column: 18, scope: !3179)
!3183 = !DILocation(line: 147, column: 25, scope: !3179)
!3184 = !DILocation(line: 147, column: 30, scope: !3179)
!3185 = !DILocation(line: 147, column: 39, scope: !3179)
!3186 = !DILocation(line: 147, column: 11, scope: !3179)
!3187 = !DILocation(line: 147, column: 9, scope: !3179)
!3188 = !DILocation(line: 147, column: 4, scope: !3179)
!3189 = !DILocation(line: 149, column: 17, scope: !3179)
!3190 = !DILocation(line: 149, column: 22, scope: !3179)
!3191 = !DILocation(line: 149, column: 31, scope: !3179)
!3192 = !DILocation(line: 149, column: 11, scope: !3179)
!3193 = !DILocation(line: 149, column: 9, scope: !3179)
!3194 = !DILocation(line: 150, column: 2, scope: !3115)
!3195 = !DILocation(line: 152, column: 9, scope: !3104)
!3196 = !DILocation(line: 153, column: 1, scope: !3104)
!3197 = !DILocation(line: 152, column: 2, scope: !3104)
!3198 = distinct !DISubprogram(name: "jhash2", scope: !1667, file: !1667, line: 117, type: !3199, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3203)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!56, !3201, !56, !56}
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!3203 = !{!3204, !3205, !3206, !3207, !3208, !3209}
!3204 = !DILocalVariable(name: "k", arg: 1, scope: !3198, file: !1667, line: 117, type: !3201)
!3205 = !DILocalVariable(name: "length", arg: 2, scope: !3198, file: !1667, line: 117, type: !56)
!3206 = !DILocalVariable(name: "initval", arg: 3, scope: !3198, file: !1667, line: 117, type: !56)
!3207 = !DILocalVariable(name: "a", scope: !3198, file: !1667, line: 119, type: !56)
!3208 = !DILocalVariable(name: "b", scope: !3198, file: !1667, line: 119, type: !56)
!3209 = !DILocalVariable(name: "c", scope: !3198, file: !1667, line: 119, type: !56)
!3210 = !DILocation(line: 117, column: 37, scope: !3198)
!3211 = !DILocation(line: 117, column: 44, scope: !3198)
!3212 = !DILocation(line: 117, column: 56, scope: !3198)
!3213 = !DILocation(line: 119, column: 2, scope: !3198)
!3214 = !DILocation(line: 119, column: 6, scope: !3198)
!3215 = !DILocation(line: 119, column: 9, scope: !3198)
!3216 = !DILocation(line: 119, column: 12, scope: !3198)
!3217 = !DILocation(line: 122, column: 31, scope: !3198)
!3218 = !DILocation(line: 122, column: 37, scope: !3198)
!3219 = !DILocation(line: 122, column: 28, scope: !3198)
!3220 = !DILocation(line: 122, column: 44, scope: !3198)
!3221 = !DILocation(line: 122, column: 42, scope: !3198)
!3222 = !DILocation(line: 122, column: 12, scope: !3198)
!3223 = !DILocation(line: 122, column: 8, scope: !3198)
!3224 = !DILocation(line: 122, column: 4, scope: !3198)
!3225 = !DILocation(line: 125, column: 2, scope: !3198)
!3226 = !DILocation(line: 125, column: 9, scope: !3198)
!3227 = !DILocation(line: 125, column: 16, scope: !3198)
!3228 = !DILocation(line: 126, column: 8, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3198, file: !1667, line: 125, column: 21)
!3230 = !DILocation(line: 126, column: 5, scope: !3229)
!3231 = !DILocation(line: 127, column: 8, scope: !3229)
!3232 = !DILocation(line: 127, column: 5, scope: !3229)
!3233 = !DILocation(line: 128, column: 8, scope: !3229)
!3234 = !DILocation(line: 128, column: 5, scope: !3229)
!3235 = !DILocation(line: 129, column: 3, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3229, file: !1667, line: 129, column: 3)
!3237 = !DILocation(line: 130, column: 10, scope: !3229)
!3238 = !DILocation(line: 131, column: 5, scope: !3229)
!3239 = distinct !{!3239, !3225, !3240, !455, !456}
!3240 = !DILocation(line: 132, column: 2, scope: !3198)
!3241 = !DILocation(line: 135, column: 10, scope: !3198)
!3242 = !DILocation(line: 135, column: 2, scope: !3198)
!3243 = !DILocation(line: 136, column: 15, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3198, file: !1667, line: 135, column: 18)
!3245 = !DILocation(line: 136, column: 12, scope: !3244)
!3246 = !DILocation(line: 136, column: 10, scope: !3244)
!3247 = !DILocation(line: 137, column: 15, scope: !3244)
!3248 = !DILocation(line: 137, column: 12, scope: !3244)
!3249 = !DILocation(line: 137, column: 10, scope: !3244)
!3250 = !DILocation(line: 138, column: 15, scope: !3244)
!3251 = !DILocation(line: 138, column: 12, scope: !3244)
!3252 = !DILocation(line: 139, column: 3, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3244, file: !1667, line: 139, column: 3)
!3254 = !DILocation(line: 140, column: 3, scope: !3244)
!3255 = !DILocation(line: 145, column: 9, scope: !3198)
!3256 = !DILocation(line: 146, column: 1, scope: !3198)
!3257 = !DILocation(line: 145, column: 2, scope: !3198)
!3258 = distinct !DISubprogram(name: "rol32", scope: !3259, file: !3259, line: 125, type: !3260, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3262)
!3259 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!58, !58, !7}
!3262 = !{!3263, !3264}
!3263 = !DILocalVariable(name: "word", arg: 1, scope: !3258, file: !3259, line: 125, type: !58)
!3264 = !DILocalVariable(name: "shift", arg: 2, scope: !3258, file: !3259, line: 125, type: !7)
!3265 = !DILocation(line: 125, column: 33, scope: !3258)
!3266 = !DILocation(line: 125, column: 52, scope: !3258)
!3267 = !DILocation(line: 127, column: 10, scope: !3258)
!3268 = !DILocation(line: 127, column: 19, scope: !3258)
!3269 = !DILocation(line: 127, column: 25, scope: !3258)
!3270 = !DILocation(line: 127, column: 15, scope: !3258)
!3271 = !DILocation(line: 127, column: 35, scope: !3258)
!3272 = !DILocation(line: 127, column: 46, scope: !3258)
!3273 = !DILocation(line: 127, column: 45, scope: !3258)
!3274 = !DILocation(line: 127, column: 53, scope: !3258)
!3275 = !DILocation(line: 127, column: 40, scope: !3258)
!3276 = !DILocation(line: 127, column: 32, scope: !3258)
!3277 = !DILocation(line: 127, column: 2, scope: !3258)
!3278 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !3279, file: !3279, line: 101, type: !3280, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3282)
!3279 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!111}
!3282 = !{!3283}
!3283 = !DILocalVariable(name: "flags", scope: !3278, file: !3279, line: 103, type: !111)
!3284 = !DILocation(line: 103, column: 2, scope: !3278)
!3285 = !DILocation(line: 103, column: 16, scope: !3278)
!3286 = !DILocation(line: 103, column: 24, scope: !3278)
!3287 = !DILocation(line: 104, column: 2, scope: !3278)
!3288 = !DILocation(line: 105, column: 9, scope: !3278)
!3289 = !DILocation(line: 106, column: 1, scope: !3278)
!3290 = !DILocation(line: 105, column: 2, scope: !3278)
!3291 = !DILocation(line: 16, column: 38, scope: !353)
!3292 = !DILocation(line: 16, column: 61, scope: !353)
!3293 = !DILocation(line: 25, column: 2, scope: !353)
!3294 = !DILocation(line: 25, column: 2, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !353, file: !354, line: 25, column: 2)
!3296 = !{i64 2152103677}
!3297 = !DILocation(line: 27, column: 2, scope: !353)
!3298 = !DILocation(line: 27, column: 9, scope: !353)
!3299 = !DILocation(line: 28, column: 3, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !353, file: !354, line: 27, column: 56)
!3301 = !DILocation(line: 28, column: 3, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3300, file: !354, line: 28, column: 3)
!3303 = !{i64 2152103886}
!3304 = !DILocation(line: 28, column: 3, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3302, file: !354, line: 28, column: 3)
!3306 = !DILocation(line: 28, column: 3, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3305, file: !354, line: 28, column: 3)
!3308 = !{i64 2152104068}
!3309 = !DILocation(line: 29, column: 3, scope: !3300)
!3310 = !DILocation(line: 30, column: 4, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3300, file: !354, line: 29, column: 6)
!3312 = !DILocation(line: 31, column: 3, scope: !3311)
!3313 = !DILocation(line: 31, column: 12, scope: !3300)
!3314 = distinct !{!3314, !3309, !3315, !455, !456}
!3315 = !DILocation(line: 31, column: 34, scope: !3300)
!3316 = !DILocation(line: 32, column: 3, scope: !3300)
!3317 = !DILocation(line: 32, column: 3, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3300, file: !354, line: 32, column: 3)
!3319 = !{i64 2152106189}
!3320 = distinct !{!3320, !3297, !3321, !455, !456}
!3321 = !DILocation(line: 33, column: 2, scope: !353)
!3322 = !DILocation(line: 36, column: 1, scope: !353)
!3323 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !3279, file: !3279, line: 65, type: !3280, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3324 = !DILocation(line: 67, column: 9, scope: !3323)
!3325 = !DILocation(line: 67, column: 2, scope: !3323)
!3326 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !3279, file: !3279, line: 70, type: !461, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3327 = !DILocation(line: 72, column: 2, scope: !3326)
!3328 = !DILocation(line: 73, column: 1, scope: !3326)
!3329 = distinct !DISubprogram(name: "native_save_fl", scope: !3279, file: !3279, line: 17, type: !3280, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3330)
!3330 = !{!3331}
!3331 = !DILocalVariable(name: "flags", scope: !3329, file: !3279, line: 19, type: !111)
!3332 = !DILocation(line: 19, column: 2, scope: !3329)
!3333 = !DILocation(line: 19, column: 16, scope: !3329)
!3334 = !DILocation(line: 26, column: 2, scope: !3329)
!3335 = !{i64 1453362, i64 1453383}
!3336 = !DILocation(line: 32, column: 9, scope: !3329)
!3337 = !DILocation(line: 33, column: 1, scope: !3329)
!3338 = !DILocation(line: 32, column: 2, scope: !3329)
!3339 = distinct !DISubprogram(name: "native_irq_disable", scope: !3279, file: !3279, line: 35, type: !461, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3340 = !DILocation(line: 37, column: 2, scope: !3339)
!3341 = !{i64 1453566}
!3342 = !DILocation(line: 38, column: 1, scope: !3339)
!3343 = distinct !DISubprogram(name: "__preempt_count_add", scope: !3344, file: !3344, line: 78, type: !3345, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3347)
!3344 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!3345 = !DISubroutineType(types: !3346)
!3346 = !{null, !124}
!3347 = !{!3348, !3349, !3352}
!3348 = !DILocalVariable(name: "val", arg: 1, scope: !3343, file: !3344, line: 78, type: !124)
!3349 = !DILocalVariable(name: "pao_ID__", scope: !3350, file: !3344, line: 80, type: !3351)
!3350 = distinct !DILexicalBlock(scope: !3343, file: !3344, line: 80, column: 2)
!3351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!3352 = !DILocalVariable(name: "pto_val__", scope: !3353, file: !3344, line: 80, type: !56)
!3353 = distinct !DILexicalBlock(scope: !3354, file: !3344, line: 80, column: 2)
!3354 = distinct !DILexicalBlock(scope: !3355, file: !3344, line: 80, column: 2)
!3355 = distinct !DILexicalBlock(scope: !3350, file: !3344, line: 80, column: 2)
!3356 = !DILocation(line: 78, column: 53, scope: !3343)
!3357 = !DILocation(line: 80, column: 2, scope: !3343)
!3358 = !DILocation(line: 80, column: 2, scope: !3350)
!3359 = !DILocation(line: 80, column: 2, scope: !3355)
!3360 = !DILocation(line: 80, column: 2, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3355, file: !3344, line: 80, column: 2)
!3362 = !{i64 2149618712}
!3363 = !DILocation(line: 80, column: 2, scope: !3354)
!3364 = !DILocation(line: 80, column: 2, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3354, file: !3344, line: 80, column: 2)
!3366 = !{i64 2149619007}
!3367 = !DILocation(line: 80, column: 2, scope: !3353)
!3368 = !{i64 2149619712}
!3369 = !DILocation(line: 81, column: 1, scope: !3343)
!3370 = distinct !DISubprogram(name: "test_and_set_bit_lock", scope: !3371, file: !3371, line: 55, type: !3372, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3376)
!3371 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3803e7a2bd2f2f2af55c89b50b84591")
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!181, !127, !3374}
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !111)
!3376 = !{!3377, !3378}
!3377 = !DILocalVariable(name: "nr", arg: 1, scope: !3370, file: !3371, line: 55, type: !127)
!3378 = !DILocalVariable(name: "addr", arg: 2, scope: !3370, file: !3371, line: 55, type: !3374)
!3379 = !DILocation(line: 55, column: 47, scope: !3370)
!3380 = !DILocation(line: 55, column: 75, scope: !3370)
!3381 = !DILocation(line: 57, column: 31, scope: !3370)
!3382 = !DILocation(line: 57, column: 38, scope: !3370)
!3383 = !DILocation(line: 57, column: 36, scope: !3370)
!3384 = !DILocation(line: 57, column: 2, scope: !3370)
!3385 = !DILocation(line: 58, column: 36, scope: !3370)
!3386 = !DILocation(line: 58, column: 40, scope: !3370)
!3387 = !DILocation(line: 58, column: 9, scope: !3370)
!3388 = !DILocation(line: 58, column: 2, scope: !3370)
!3389 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !3344, file: !3344, line: 93, type: !3390, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3392)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!181}
!3392 = !{!3393}
!3393 = !DILocalVariable(name: "c", scope: !3394, file: !3344, line: 95, type: !181)
!3394 = distinct !DILexicalBlock(scope: !3389, file: !3344, line: 95, column: 9)
!3395 = !DILocation(line: 95, column: 9, scope: !3394)
!3396 = !{i64 2149623068, i64 2149623161}
!3397 = !DILocation(line: 95, column: 9, scope: !3389)
!3398 = !DILocation(line: 95, column: 2, scope: !3389)
!3399 = distinct !DISubprogram(name: "cpu_relax", scope: !3400, file: !3400, line: 16, type: !461, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3400 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!3401 = !DILocation(line: 18, column: 2, scope: !3399)
!3402 = !DILocation(line: 19, column: 1, scope: !3399)
!3403 = distinct !DISubprogram(name: "const_test_bit", scope: !3404, file: !3404, line: 166, type: !3405, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3409)
!3404 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!181, !111, !3407}
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3375)
!3409 = !{!3410, !3411, !3412, !3413, !3414}
!3410 = !DILocalVariable(name: "nr", arg: 1, scope: !3403, file: !3404, line: 166, type: !111)
!3411 = !DILocalVariable(name: "addr", arg: 2, scope: !3403, file: !3404, line: 166, type: !3407)
!3412 = !DILocalVariable(name: "p", scope: !3403, file: !3404, line: 168, type: !122)
!3413 = !DILocalVariable(name: "mask", scope: !3403, file: !3404, line: 169, type: !111)
!3414 = !DILocalVariable(name: "val", scope: !3403, file: !3404, line: 170, type: !111)
!3415 = !DILocation(line: 166, column: 30, scope: !3403)
!3416 = !DILocation(line: 166, column: 64, scope: !3403)
!3417 = !DILocation(line: 168, column: 2, scope: !3403)
!3418 = !DILocation(line: 168, column: 23, scope: !3403)
!3419 = !DILocation(line: 168, column: 50, scope: !3403)
!3420 = !DILocation(line: 168, column: 57, scope: !3403)
!3421 = !DILocation(line: 168, column: 55, scope: !3403)
!3422 = !DILocation(line: 169, column: 2, scope: !3403)
!3423 = !DILocation(line: 169, column: 16, scope: !3403)
!3424 = !DILocation(line: 169, column: 23, scope: !3403)
!3425 = !DILocation(line: 170, column: 2, scope: !3403)
!3426 = !DILocation(line: 170, column: 16, scope: !3403)
!3427 = !DILocation(line: 170, column: 23, scope: !3403)
!3428 = !DILocation(line: 170, column: 22, scope: !3403)
!3429 = !DILocation(line: 172, column: 12, scope: !3403)
!3430 = !DILocation(line: 172, column: 18, scope: !3403)
!3431 = !DILocation(line: 172, column: 16, scope: !3403)
!3432 = !DILocation(line: 172, column: 10, scope: !3403)
!3433 = !DILocation(line: 172, column: 9, scope: !3403)
!3434 = !DILocation(line: 173, column: 1, scope: !3403)
!3435 = !DILocation(line: 172, column: 2, scope: !3403)
!3436 = distinct !DISubprogram(name: "_test_bit", scope: !3437, file: !3437, line: 139, type: !3405, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3438)
!3437 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!3438 = !{!3439, !3440}
!3439 = !DILocalVariable(name: "nr", arg: 1, scope: !3436, file: !3437, line: 139, type: !111)
!3440 = !DILocalVariable(name: "addr", arg: 2, scope: !3436, file: !3437, line: 139, type: !3407)
!3441 = !DILocation(line: 139, column: 25, scope: !3436)
!3442 = !DILocation(line: 139, column: 59, scope: !3436)
!3443 = !DILocation(line: 141, column: 25, scope: !3436)
!3444 = !DILocation(line: 141, column: 32, scope: !3436)
!3445 = !DILocation(line: 141, column: 30, scope: !3436)
!3446 = !DILocation(line: 141, column: 2, scope: !3436)
!3447 = !DILocation(line: 142, column: 23, scope: !3436)
!3448 = !DILocation(line: 142, column: 27, scope: !3436)
!3449 = !DILocation(line: 142, column: 9, scope: !3436)
!3450 = !DILocation(line: 142, column: 2, scope: !3436)
!3451 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !3452, file: !3452, line: 94, type: !3453, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3458)
!3452 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!3453 = !DISubroutineType(types: !3454)
!3454 = !{null, !3455, !159}
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3457)
!3457 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3458 = !{!3459, !3460}
!3459 = !DILocalVariable(name: "v", arg: 1, scope: !3451, file: !3452, line: 94, type: !3455)
!3460 = !DILocalVariable(name: "size", arg: 2, scope: !3451, file: !3452, line: 94, type: !159)
!3461 = !DILocation(line: 94, column: 79, scope: !3451)
!3462 = !DILocation(line: 94, column: 89, scope: !3451)
!3463 = !DILocation(line: 96, column: 20, scope: !3451)
!3464 = !DILocation(line: 96, column: 23, scope: !3451)
!3465 = !DILocation(line: 96, column: 2, scope: !3451)
!3466 = !DILocation(line: 97, column: 2, scope: !3451)
!3467 = !DILocation(line: 98, column: 1, scope: !3451)
!3468 = distinct !DISubprogram(name: "arch_test_and_set_bit_lock", scope: !3469, file: !3469, line: 142, type: !3372, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3470)
!3469 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!3470 = !{!3471, !3472}
!3471 = !DILocalVariable(name: "nr", arg: 1, scope: !3468, file: !3469, line: 142, type: !127)
!3472 = !DILocalVariable(name: "addr", arg: 2, scope: !3468, file: !3469, line: 142, type: !3374)
!3473 = !DILocation(line: 142, column: 33, scope: !3468)
!3474 = !DILocation(line: 142, column: 61, scope: !3468)
!3475 = !DILocation(line: 144, column: 31, scope: !3468)
!3476 = !DILocation(line: 144, column: 35, scope: !3468)
!3477 = !DILocation(line: 144, column: 9, scope: !3468)
!3478 = !DILocation(line: 144, column: 2, scope: !3468)
!3479 = distinct !DISubprogram(name: "kasan_check_write", scope: !3480, file: !3480, line: 44, type: !3481, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3483)
!3480 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!181, !3455, !7}
!3483 = !{!3484, !3485}
!3484 = !DILocalVariable(name: "p", arg: 1, scope: !3479, file: !3480, line: 44, type: !3455)
!3485 = !DILocalVariable(name: "size", arg: 2, scope: !3479, file: !3480, line: 44, type: !7)
!3486 = !DILocation(line: 44, column: 59, scope: !3479)
!3487 = !DILocation(line: 44, column: 75, scope: !3479)
!3488 = !DILocation(line: 46, column: 2, scope: !3479)
!3489 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3490, file: !3490, line: 229, type: !3491, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3493)
!3490 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!3491 = !DISubroutineType(types: !3492)
!3492 = !{null, !3455, !159, !124}
!3493 = !{!3494, !3495, !3496}
!3494 = !DILocalVariable(name: "ptr", arg: 1, scope: !3489, file: !3490, line: 229, type: !3455)
!3495 = !DILocalVariable(name: "size", arg: 2, scope: !3489, file: !3490, line: 229, type: !159)
!3496 = !DILocalVariable(name: "type", arg: 3, scope: !3489, file: !3490, line: 230, type: !124)
!3497 = !DILocation(line: 229, column: 60, scope: !3489)
!3498 = !DILocation(line: 229, column: 72, scope: !3489)
!3499 = !DILocation(line: 230, column: 15, scope: !3489)
!3500 = !DILocation(line: 230, column: 23, scope: !3489)
!3501 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !3469, file: !3469, line: 136, type: !3372, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3502)
!3502 = !{!3503, !3504, !3505}
!3503 = !DILocalVariable(name: "nr", arg: 1, scope: !3501, file: !3469, line: 136, type: !127)
!3504 = !DILocalVariable(name: "addr", arg: 2, scope: !3501, file: !3469, line: 136, type: !3374)
!3505 = !DILocalVariable(name: "c", scope: !3506, file: !3469, line: 138, type: !181)
!3506 = distinct !DILexicalBlock(scope: !3501, file: !3469, line: 138, column: 9)
!3507 = !DILocation(line: 136, column: 28, scope: !3501)
!3508 = !DILocation(line: 136, column: 56, scope: !3501)
!3509 = !DILocation(line: 138, column: 9, scope: !3506)
!3510 = !{i64 2148391709, i64 2148391748, i64 2148391769, i64 2148391806, i64 2148391829, i64 2148391838, i64 2148391941}
!3511 = !DILocation(line: 138, column: 9, scope: !3501)
!3512 = !DILocation(line: 138, column: 2, scope: !3501)
!3513 = distinct !DISubprogram(name: "rep_nop", scope: !3400, file: !3400, line: 11, type: !461, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3514 = !DILocation(line: 13, column: 2, scope: !3513)
!3515 = !{i64 2087498}
!3516 = !DILocation(line: 14, column: 1, scope: !3513)
!3517 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !3452, file: !3452, line: 66, type: !3453, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3518)
!3518 = !{!3519, !3520}
!3519 = !DILocalVariable(name: "v", arg: 1, scope: !3517, file: !3452, line: 66, type: !3455)
!3520 = !DILocalVariable(name: "size", arg: 2, scope: !3517, file: !3452, line: 66, type: !159)
!3521 = !DILocation(line: 66, column: 73, scope: !3517)
!3522 = !DILocation(line: 66, column: 83, scope: !3517)
!3523 = !DILocation(line: 68, column: 19, scope: !3517)
!3524 = !DILocation(line: 68, column: 22, scope: !3517)
!3525 = !DILocation(line: 68, column: 2, scope: !3517)
!3526 = !DILocation(line: 69, column: 2, scope: !3517)
!3527 = !DILocation(line: 70, column: 1, scope: !3517)
!3528 = distinct !DISubprogram(name: "arch_test_bit", scope: !3469, file: !3469, line: 237, type: !3405, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3529)
!3529 = !{!3530, !3531}
!3530 = !DILocalVariable(name: "nr", arg: 1, scope: !3528, file: !3469, line: 237, type: !111)
!3531 = !DILocalVariable(name: "addr", arg: 2, scope: !3528, file: !3469, line: 237, type: !3407)
!3532 = !DILocation(line: 237, column: 29, scope: !3528)
!3533 = !DILocation(line: 237, column: 63, scope: !3528)
!3534 = !DILocation(line: 239, column: 30, scope: !3528)
!3535 = !DILocation(line: 239, column: 9, scope: !3528)
!3536 = !DILocation(line: 239, column: 54, scope: !3528)
!3537 = !DILocation(line: 239, column: 58, scope: !3528)
!3538 = !DILocation(line: 239, column: 36, scope: !3528)
!3539 = !DILocation(line: 240, column: 26, scope: !3528)
!3540 = !DILocation(line: 240, column: 30, scope: !3528)
!3541 = !DILocation(line: 240, column: 8, scope: !3528)
!3542 = !DILocation(line: 239, column: 2, scope: !3528)
!3543 = distinct !DISubprogram(name: "kasan_check_read", scope: !3480, file: !3480, line: 40, type: !3481, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3544)
!3544 = !{!3545, !3546}
!3545 = !DILocalVariable(name: "p", arg: 1, scope: !3543, file: !3480, line: 40, type: !3455)
!3546 = !DILocalVariable(name: "size", arg: 2, scope: !3543, file: !3480, line: 40, type: !7)
!3547 = !DILocation(line: 40, column: 58, scope: !3543)
!3548 = !DILocation(line: 40, column: 74, scope: !3543)
!3549 = !DILocation(line: 42, column: 2, scope: !3543)
!3550 = distinct !DISubprogram(name: "constant_test_bit", scope: !3469, file: !3469, line: 204, type: !3551, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3553)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!181, !127, !3407}
!3553 = !{!3554, !3555}
!3554 = !DILocalVariable(name: "nr", arg: 1, scope: !3550, file: !3469, line: 204, type: !127)
!3555 = !DILocalVariable(name: "addr", arg: 2, scope: !3550, file: !3469, line: 204, type: !3407)
!3556 = !DILocation(line: 204, column: 52, scope: !3550)
!3557 = !DILocation(line: 204, column: 86, scope: !3550)
!3558 = !DILocation(line: 206, column: 19, scope: !3550)
!3559 = !DILocation(line: 206, column: 22, scope: !3550)
!3560 = !DILocation(line: 206, column: 15, scope: !3550)
!3561 = !DILocation(line: 207, column: 4, scope: !3550)
!3562 = !DILocation(line: 207, column: 9, scope: !3550)
!3563 = !DILocation(line: 207, column: 12, scope: !3550)
!3564 = !DILocation(line: 206, column: 44, scope: !3550)
!3565 = !DILocation(line: 207, column: 37, scope: !3550)
!3566 = !DILocation(line: 206, column: 2, scope: !3550)
!3567 = distinct !DISubprogram(name: "variable_test_bit", scope: !3469, file: !3469, line: 224, type: !3551, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3568)
!3568 = !{!3569, !3570, !3571}
!3569 = !DILocalVariable(name: "nr", arg: 1, scope: !3567, file: !3469, line: 224, type: !127)
!3570 = !DILocalVariable(name: "addr", arg: 2, scope: !3567, file: !3469, line: 224, type: !3407)
!3571 = !DILocalVariable(name: "oldbit", scope: !3567, file: !3469, line: 226, type: !181)
!3572 = !DILocation(line: 224, column: 52, scope: !3567)
!3573 = !DILocation(line: 224, column: 86, scope: !3567)
!3574 = !DILocation(line: 226, column: 2, scope: !3567)
!3575 = !DILocation(line: 226, column: 7, scope: !3567)
!3576 = !DILocation(line: 231, column: 33, scope: !3567)
!3577 = !DILocation(line: 231, column: 46, scope: !3567)
!3578 = !DILocation(line: 228, column: 2, scope: !3567)
!3579 = !{i64 2148398870, i64 2148398944}
!3580 = !DILocation(line: 233, column: 9, scope: !3567)
!3581 = !DILocation(line: 234, column: 1, scope: !3567)
!3582 = !DILocation(line: 233, column: 2, scope: !3567)
!3583 = distinct !DISubprogram(name: "rht_ptr", scope: !51, file: !51, line: 379, type: !3584, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3586)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!93, !961, !49, !7}
!3586 = !{!3587, !3588, !3589}
!3587 = !DILocalVariable(name: "bkt", arg: 1, scope: !3583, file: !51, line: 380, type: !961)
!3588 = !DILocalVariable(name: "tbl", arg: 2, scope: !3583, file: !51, line: 381, type: !49)
!3589 = !DILocalVariable(name: "hash", arg: 3, scope: !3583, file: !51, line: 382, type: !7)
!3590 = !DILocation(line: 380, column: 39, scope: !3583)
!3591 = !DILocation(line: 381, column: 23, scope: !3583)
!3592 = !DILocation(line: 382, column: 15, scope: !3583)
!3593 = !DILocation(line: 384, column: 19, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3583, file: !51, line: 384, column: 19)
!3595 = !DILocation(line: 384, column: 19, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3594, file: !51, line: 384, column: 19)
!3597 = !DILocation(line: 384, column: 60, scope: !3583)
!3598 = !DILocation(line: 384, column: 9, scope: !3583)
!3599 = !DILocation(line: 384, column: 2, scope: !3583)
!3600 = distinct !DISubprogram(name: "rhashtable_compare", scope: !51, file: !51, line: 579, type: !195, scopeLine: 581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3601)
!3601 = !{!3602, !3603, !3604, !3605}
!3602 = !DILocalVariable(name: "arg", arg: 1, scope: !3600, file: !51, line: 579, type: !197)
!3603 = !DILocalVariable(name: "obj", arg: 2, scope: !3600, file: !51, line: 580, type: !188)
!3604 = !DILocalVariable(name: "ht", scope: !3600, file: !51, line: 582, type: !165)
!3605 = !DILocalVariable(name: "ptr", scope: !3600, file: !51, line: 583, type: !1593)
!3606 = !DILocation(line: 579, column: 69, scope: !3600)
!3607 = !DILocation(line: 580, column: 22, scope: !3600)
!3608 = !DILocation(line: 582, column: 2, scope: !3600)
!3609 = !DILocation(line: 582, column: 21, scope: !3600)
!3610 = !DILocation(line: 582, column: 26, scope: !3600)
!3611 = !DILocation(line: 582, column: 31, scope: !3600)
!3612 = !DILocation(line: 583, column: 2, scope: !3600)
!3613 = !DILocation(line: 583, column: 14, scope: !3600)
!3614 = !DILocation(line: 583, column: 20, scope: !3600)
!3615 = !DILocation(line: 585, column: 16, scope: !3600)
!3616 = !DILocation(line: 585, column: 22, scope: !3600)
!3617 = !DILocation(line: 585, column: 26, scope: !3600)
!3618 = !DILocation(line: 585, column: 28, scope: !3600)
!3619 = !DILocation(line: 585, column: 20, scope: !3600)
!3620 = !DILocation(line: 585, column: 40, scope: !3600)
!3621 = !DILocation(line: 585, column: 45, scope: !3600)
!3622 = !DILocation(line: 585, column: 50, scope: !3600)
!3623 = !DILocation(line: 585, column: 54, scope: !3600)
!3624 = !DILocation(line: 585, column: 56, scope: !3600)
!3625 = !DILocation(line: 585, column: 9, scope: !3600)
!3626 = !DILocation(line: 586, column: 1, scope: !3600)
!3627 = !DILocation(line: 585, column: 2, scope: !3600)
!3628 = distinct !DISubprogram(name: "rht_assign_locked", scope: !51, file: !51, line: 393, type: !3629, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3631)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{null, !341, !93}
!3631 = !{!3632, !3633, !3634}
!3632 = !DILocalVariable(name: "bkt", arg: 1, scope: !3628, file: !51, line: 393, type: !341)
!3633 = !DILocalVariable(name: "obj", arg: 2, scope: !3628, file: !51, line: 394, type: !93)
!3634 = !DILocalVariable(name: "_r_a_p__v", scope: !3635, file: !51, line: 398, type: !121)
!3635 = distinct !DILexicalBlock(scope: !3628, file: !51, line: 398, column: 2)
!3636 = !DILocation(line: 393, column: 69, scope: !3628)
!3637 = !DILocation(line: 394, column: 29, scope: !3628)
!3638 = !DILocation(line: 396, column: 21, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3628, file: !51, line: 396, column: 6)
!3640 = !DILocation(line: 396, column: 6, scope: !3639)
!3641 = !DILocation(line: 396, column: 6, scope: !3628)
!3642 = !DILocation(line: 397, column: 7, scope: !3639)
!3643 = !DILocation(line: 397, column: 3, scope: !3639)
!3644 = !DILocation(line: 398, column: 2, scope: !3628)
!3645 = !DILocation(line: 398, column: 2, scope: !3635)
!3646 = !DILocation(line: 398, column: 2, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3635, file: !51, line: 398, column: 2)
!3648 = !DILocation(line: 398, column: 2, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3647, file: !51, line: 398, column: 2)
!3650 = !DILocation(line: 398, column: 2, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3649, file: !51, line: 398, column: 2)
!3652 = !DILocation(line: 398, column: 2, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3649, file: !51, line: 398, column: 2)
!3654 = !DILocation(line: 398, column: 2, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3647, file: !51, line: 398, column: 2)
!3656 = !DILocation(line: 398, column: 2, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3655, file: !51, line: 398, column: 2)
!3658 = !DILocation(line: 398, column: 2, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3655, file: !51, line: 398, column: 2)
!3660 = !DILocation(line: 398, column: 2, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3659, file: !51, line: 398, column: 2)
!3662 = !{i64 2153998356}
!3663 = !DILocation(line: 398, column: 2, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3659, file: !51, line: 398, column: 2)
!3665 = !DILocation(line: 398, column: 2, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3664, file: !51, line: 398, column: 2)
!3667 = !DILocation(line: 398, column: 2, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3664, file: !51, line: 398, column: 2)
!3669 = !DILocation(line: 399, column: 1, scope: !3628)
!3670 = distinct !DISubprogram(name: "__rht_ptr", scope: !51, file: !51, line: 358, type: !3671, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3673)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!93, !83, !961}
!3673 = !{!3674, !3675}
!3674 = !DILocalVariable(name: "p", arg: 1, scope: !3670, file: !51, line: 359, type: !83)
!3675 = !DILocalVariable(name: "bkt", arg: 2, scope: !3670, file: !51, line: 359, type: !961)
!3676 = !DILocation(line: 359, column: 26, scope: !3670)
!3677 = !DILocation(line: 359, column: 66, scope: !3670)
!3678 = !DILocation(line: 362, column: 19, scope: !3670)
!3679 = !DILocation(line: 362, column: 4, scope: !3670)
!3680 = !DILocation(line: 362, column: 21, scope: !3670)
!3681 = !DILocation(line: 363, column: 19, scope: !3670)
!3682 = !DILocation(line: 363, column: 4, scope: !3670)
!3683 = !DILocation(line: 361, column: 9, scope: !3670)
!3684 = !DILocation(line: 361, column: 2, scope: !3670)
!3685 = !DISubprogram(name: "memcmp", scope: !3686, file: !3686, line: 196, type: !3687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3686 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!124, !188, !188, !160}
!3689 = distinct !DISubprogram(name: "rht_grow_above_max", scope: !51, file: !51, line: 220, type: !3690, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3692)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!181, !1108, !342}
!3692 = !{!3693, !3694}
!3693 = !DILocalVariable(name: "ht", arg: 1, scope: !3689, file: !51, line: 220, type: !1108)
!3694 = !DILocalVariable(name: "tbl", arg: 2, scope: !3689, file: !51, line: 221, type: !342)
!3695 = !DILocation(line: 220, column: 64, scope: !3689)
!3696 = !DILocation(line: 221, column: 38, scope: !3689)
!3697 = !DILocation(line: 223, column: 22, scope: !3689)
!3698 = !DILocation(line: 223, column: 26, scope: !3689)
!3699 = !DILocation(line: 223, column: 9, scope: !3689)
!3700 = !DILocation(line: 223, column: 37, scope: !3689)
!3701 = !DILocation(line: 223, column: 41, scope: !3689)
!3702 = !DILocation(line: 223, column: 34, scope: !3689)
!3703 = !DILocation(line: 223, column: 2, scope: !3689)
!3704 = distinct !DISubprogram(name: "rht_grow_above_100", scope: !51, file: !51, line: 208, type: !3690, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3705)
!3705 = !{!3706, !3707}
!3706 = !DILocalVariable(name: "ht", arg: 1, scope: !3704, file: !51, line: 208, type: !1108)
!3707 = !DILocalVariable(name: "tbl", arg: 2, scope: !3704, file: !51, line: 209, type: !342)
!3708 = !DILocation(line: 208, column: 64, scope: !3704)
!3709 = !DILocation(line: 209, column: 38, scope: !3704)
!3710 = !DILocation(line: 211, column: 22, scope: !3704)
!3711 = !DILocation(line: 211, column: 26, scope: !3704)
!3712 = !DILocation(line: 211, column: 9, scope: !3704)
!3713 = !DILocation(line: 211, column: 36, scope: !3704)
!3714 = !DILocation(line: 211, column: 41, scope: !3704)
!3715 = !DILocation(line: 211, column: 34, scope: !3704)
!3716 = !DILocation(line: 211, column: 46, scope: !3704)
!3717 = !DILocation(line: 212, column: 5, scope: !3704)
!3718 = !DILocation(line: 212, column: 9, scope: !3704)
!3719 = !DILocation(line: 212, column: 11, scope: !3704)
!3720 = !DILocation(line: 212, column: 20, scope: !3704)
!3721 = !DILocation(line: 212, column: 23, scope: !3704)
!3722 = !DILocation(line: 212, column: 28, scope: !3704)
!3723 = !DILocation(line: 212, column: 35, scope: !3704)
!3724 = !DILocation(line: 212, column: 39, scope: !3704)
!3725 = !DILocation(line: 212, column: 41, scope: !3704)
!3726 = !DILocation(line: 212, column: 33, scope: !3704)
!3727 = !DILocation(line: 0, scope: !3704)
!3728 = !DILocation(line: 211, column: 2, scope: !3704)
!3729 = distinct !DISubprogram(name: "atomic_inc", scope: !1861, file: !1861, line: 433, type: !3730, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3732)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{null, !1864}
!3732 = !{!3733}
!3733 = !DILocalVariable(name: "v", arg: 1, scope: !3729, file: !1861, line: 433, type: !1864)
!3734 = !DILocation(line: 433, column: 22, scope: !3729)
!3735 = !DILocation(line: 435, column: 31, scope: !3729)
!3736 = !DILocation(line: 435, column: 2, scope: !3729)
!3737 = !DILocation(line: 436, column: 17, scope: !3729)
!3738 = !DILocation(line: 436, column: 2, scope: !3729)
!3739 = !DILocation(line: 437, column: 1, scope: !3729)
!3740 = distinct !DISubprogram(name: "rht_grow_above_75", scope: !51, file: !51, line: 182, type: !3690, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3741)
!3741 = !{!3742, !3743}
!3742 = !DILocalVariable(name: "ht", arg: 1, scope: !3740, file: !51, line: 182, type: !1108)
!3743 = !DILocalVariable(name: "tbl", arg: 2, scope: !3740, file: !51, line: 183, type: !342)
!3744 = !DILocation(line: 182, column: 63, scope: !3740)
!3745 = !DILocation(line: 183, column: 37, scope: !3740)
!3746 = !DILocation(line: 186, column: 22, scope: !3740)
!3747 = !DILocation(line: 186, column: 26, scope: !3740)
!3748 = !DILocation(line: 186, column: 9, scope: !3740)
!3749 = !DILocation(line: 186, column: 37, scope: !3740)
!3750 = !DILocation(line: 186, column: 42, scope: !3740)
!3751 = !DILocation(line: 186, column: 47, scope: !3740)
!3752 = !DILocation(line: 186, column: 51, scope: !3740)
!3753 = !DILocation(line: 186, column: 34, scope: !3740)
!3754 = !DILocation(line: 186, column: 56, scope: !3740)
!3755 = !DILocation(line: 187, column: 11, scope: !3740)
!3756 = !DILocation(line: 187, column: 15, scope: !3740)
!3757 = !DILocation(line: 187, column: 17, scope: !3740)
!3758 = !DILocation(line: 187, column: 26, scope: !3740)
!3759 = !DILocation(line: 187, column: 29, scope: !3740)
!3760 = !DILocation(line: 187, column: 34, scope: !3740)
!3761 = !DILocation(line: 187, column: 41, scope: !3740)
!3762 = !DILocation(line: 187, column: 45, scope: !3740)
!3763 = !DILocation(line: 187, column: 47, scope: !3740)
!3764 = !DILocation(line: 187, column: 39, scope: !3740)
!3765 = !DILocation(line: 0, scope: !3740)
!3766 = !DILocation(line: 186, column: 2, scope: !3740)
!3767 = distinct !DISubprogram(name: "schedule_work", scope: !6, file: !6, line: 621, type: !2146, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3768)
!3768 = !{!3769}
!3769 = !DILocalVariable(name: "work", arg: 1, scope: !3767, file: !6, line: 621, type: !222)
!3770 = !DILocation(line: 621, column: 54, scope: !3767)
!3771 = !DILocation(line: 623, column: 20, scope: !3767)
!3772 = !DILocation(line: 623, column: 31, scope: !3767)
!3773 = !DILocation(line: 623, column: 9, scope: !3767)
!3774 = !DILocation(line: 623, column: 2, scope: !3767)
!3775 = distinct !DISubprogram(name: "atomic_read", scope: !1861, file: !1861, line: 30, type: !3776, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3780)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!124, !3778}
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!3780 = !{!3781}
!3781 = !DILocalVariable(name: "v", arg: 1, scope: !3775, file: !1861, line: 30, type: !3778)
!3782 = !DILocation(line: 30, column: 29, scope: !3775)
!3783 = !DILocation(line: 32, column: 25, scope: !3775)
!3784 = !DILocation(line: 32, column: 2, scope: !3775)
!3785 = !DILocation(line: 33, column: 25, scope: !3775)
!3786 = !DILocation(line: 33, column: 9, scope: !3775)
!3787 = !DILocation(line: 33, column: 2, scope: !3775)
!3788 = distinct !DISubprogram(name: "raw_atomic_read", scope: !3789, file: !3789, line: 442, type: !3776, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3790)
!3789 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!3790 = !{!3791}
!3791 = !DILocalVariable(name: "v", arg: 1, scope: !3788, file: !3789, line: 442, type: !3778)
!3792 = !DILocation(line: 442, column: 33, scope: !3788)
!3793 = !DILocation(line: 444, column: 26, scope: !3788)
!3794 = !DILocation(line: 444, column: 9, scope: !3788)
!3795 = !DILocation(line: 444, column: 2, scope: !3788)
!3796 = distinct !DISubprogram(name: "arch_atomic_read", scope: !3797, file: !3797, line: 17, type: !3776, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3798)
!3797 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!3798 = !{!3799}
!3799 = !DILocalVariable(name: "v", arg: 1, scope: !3796, file: !3797, line: 17, type: !3778)
!3800 = !DILocation(line: 17, column: 61, scope: !3796)
!3801 = !DILocation(line: 23, column: 9, scope: !3796)
!3802 = !DILocation(line: 23, column: 2, scope: !3796)
!3803 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !3789, file: !3789, line: 976, type: !3730, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3804)
!3804 = !{!3805}
!3805 = !DILocalVariable(name: "v", arg: 1, scope: !3803, file: !3789, line: 976, type: !1864)
!3806 = !DILocation(line: 976, column: 26, scope: !3803)
!3807 = !DILocation(line: 979, column: 18, scope: !3803)
!3808 = !DILocation(line: 979, column: 2, scope: !3803)
!3809 = !DILocation(line: 983, column: 1, scope: !3803)
!3810 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !3797, file: !3797, line: 51, type: !3730, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3811)
!3811 = !{!3812}
!3812 = !DILocalVariable(name: "v", arg: 1, scope: !3810, file: !3797, line: 51, type: !1864)
!3813 = !DILocation(line: 51, column: 55, scope: !3810)
!3814 = !DILocation(line: 54, column: 16, scope: !3810)
!3815 = !DILocation(line: 54, column: 19, scope: !3810)
!3816 = !DILocation(line: 53, column: 2, scope: !3810)
!3817 = !{i64 2147790604, i64 2147790643, i64 2147790664, i64 2147790701, i64 2147790724, i64 2147790594}
!3818 = !DILocation(line: 55, column: 1, scope: !3810)
!3819 = distinct !DISubprogram(name: "queue_work", scope: !6, file: !6, line: 559, type: !3820, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3824)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!181, !3822, !222}
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !6, line: 18, flags: DIFlagFwdDecl)
!3824 = !{!3825, !3826}
!3825 = !DILocalVariable(name: "wq", arg: 1, scope: !3819, file: !6, line: 559, type: !3822)
!3826 = !DILocalVariable(name: "work", arg: 2, scope: !3819, file: !6, line: 560, type: !222)
!3827 = !DILocation(line: 559, column: 56, scope: !3819)
!3828 = !DILocation(line: 560, column: 30, scope: !3819)
!3829 = !DILocation(line: 562, column: 41, scope: !3819)
!3830 = !DILocation(line: 562, column: 45, scope: !3819)
!3831 = !DILocation(line: 562, column: 9, scope: !3819)
!3832 = !DILocation(line: 562, column: 2, scope: !3819)
!3833 = !DISubprogram(name: "queue_work_on", scope: !6, file: !6, line: 496, type: !3834, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!181, !124, !3822, !222}
!3836 = !DILocation(line: 57, column: 40, scope: !362)
!3837 = !DILocation(line: 57, column: 63, scope: !362)
!3838 = !DILocation(line: 63, column: 19, scope: !362)
!3839 = !DILocation(line: 63, column: 27, scope: !362)
!3840 = !DILocation(line: 63, column: 2, scope: !362)
!3841 = !DILocation(line: 65, column: 2, scope: !362)
!3842 = !DILocation(line: 65, column: 2, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !362, file: !354, line: 65, column: 2)
!3844 = !{i64 2152108800}
!3845 = !DILocation(line: 65, column: 2, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3843, file: !354, line: 65, column: 2)
!3847 = !DILocation(line: 65, column: 2, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3846, file: !354, line: 65, column: 2)
!3849 = !{i64 2152108982}
!3850 = !DILocation(line: 67, column: 1, scope: !362)
!3851 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !3279, file: !3279, line: 132, type: !3852, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3854)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{null, !111}
!3854 = !{!3855}
!3855 = !DILocalVariable(name: "flags", arg: 1, scope: !3851, file: !3279, line: 132, type: !111)
!3856 = !DILocation(line: 132, column: 66, scope: !3851)
!3857 = !DILocation(line: 134, column: 32, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3851, file: !3279, line: 134, column: 6)
!3859 = !DILocation(line: 134, column: 7, scope: !3858)
!3860 = !DILocation(line: 134, column: 6, scope: !3851)
!3861 = !DILocation(line: 135, column: 3, scope: !3858)
!3862 = !DILocation(line: 136, column: 1, scope: !3851)
!3863 = distinct !DISubprogram(name: "clear_bit_unlock", scope: !3371, file: !3371, line: 23, type: !3864, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3866)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{null, !127, !3374}
!3866 = !{!3867, !3868}
!3867 = !DILocalVariable(name: "nr", arg: 1, scope: !3863, file: !3371, line: 23, type: !127)
!3868 = !DILocalVariable(name: "addr", arg: 2, scope: !3863, file: !3371, line: 23, type: !3374)
!3869 = !DILocation(line: 23, column: 42, scope: !3863)
!3870 = !DILocation(line: 23, column: 70, scope: !3863)
!3871 = !DILocation(line: 25, column: 2, scope: !3863)
!3872 = !DILocation(line: 25, column: 2, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3863, file: !3371, line: 25, column: 2)
!3874 = !DILocation(line: 26, column: 26, scope: !3863)
!3875 = !DILocation(line: 26, column: 33, scope: !3863)
!3876 = !DILocation(line: 26, column: 31, scope: !3863)
!3877 = !DILocation(line: 26, column: 2, scope: !3863)
!3878 = !DILocation(line: 27, column: 24, scope: !3863)
!3879 = !DILocation(line: 27, column: 28, scope: !3863)
!3880 = !DILocation(line: 27, column: 2, scope: !3863)
!3881 = !DILocation(line: 28, column: 1, scope: !3863)
!3882 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !3452, file: !3452, line: 80, type: !3453, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3883)
!3883 = !{!3884, !3885}
!3884 = !DILocalVariable(name: "v", arg: 1, scope: !3882, file: !3452, line: 80, type: !3455)
!3885 = !DILocalVariable(name: "size", arg: 2, scope: !3882, file: !3452, line: 80, type: !159)
!3886 = !DILocation(line: 80, column: 74, scope: !3882)
!3887 = !DILocation(line: 80, column: 84, scope: !3882)
!3888 = !DILocation(line: 82, column: 20, scope: !3882)
!3889 = !DILocation(line: 82, column: 23, scope: !3882)
!3890 = !DILocation(line: 82, column: 2, scope: !3882)
!3891 = !DILocation(line: 83, column: 2, scope: !3882)
!3892 = !DILocation(line: 84, column: 1, scope: !3882)
!3893 = distinct !DISubprogram(name: "arch_clear_bit_unlock", scope: !3469, file: !3469, line: 85, type: !3864, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3894)
!3894 = !{!3895, !3896}
!3895 = !DILocalVariable(name: "nr", arg: 1, scope: !3893, file: !3469, line: 85, type: !127)
!3896 = !DILocalVariable(name: "addr", arg: 2, scope: !3893, file: !3469, line: 85, type: !3374)
!3897 = !DILocation(line: 85, column: 28, scope: !3893)
!3898 = !DILocation(line: 85, column: 56, scope: !3893)
!3899 = !DILocation(line: 87, column: 2, scope: !3893)
!3900 = !{i64 2148387393}
!3901 = !DILocation(line: 88, column: 17, scope: !3893)
!3902 = !DILocation(line: 88, column: 21, scope: !3893)
!3903 = !DILocation(line: 88, column: 2, scope: !3893)
!3904 = !DILocation(line: 89, column: 1, scope: !3893)
!3905 = distinct !DISubprogram(name: "arch_clear_bit", scope: !3469, file: !3469, line: 72, type: !3864, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3906)
!3906 = !{!3907, !3908}
!3907 = !DILocalVariable(name: "nr", arg: 1, scope: !3905, file: !3469, line: 72, type: !127)
!3908 = !DILocalVariable(name: "addr", arg: 2, scope: !3905, file: !3469, line: 72, type: !3374)
!3909 = !DILocation(line: 72, column: 21, scope: !3905)
!3910 = !DILocation(line: 72, column: 49, scope: !3905)
!3911 = !DILocation(line: 74, column: 27, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3905, file: !3469, line: 74, column: 6)
!3913 = !DILocation(line: 74, column: 6, scope: !3912)
!3914 = !DILocation(line: 74, column: 6, scope: !3905)
!3915 = !DILocation(line: 76, column: 6, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3912, file: !3469, line: 74, column: 32)
!3917 = !DILocation(line: 77, column: 13, scope: !3916)
!3918 = !DILocation(line: 77, column: 12, scope: !3916)
!3919 = !DILocation(line: 75, column: 3, scope: !3916)
!3920 = !{i64 2148386546, i64 2148386585, i64 2148386606, i64 2148386643, i64 2148386666, i64 2148386536}
!3921 = !DILocation(line: 78, column: 2, scope: !3916)
!3922 = !DILocation(line: 80, column: 8, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3912, file: !3469, line: 78, column: 9)
!3924 = !DILocation(line: 80, column: 32, scope: !3923)
!3925 = !DILocation(line: 79, column: 3, scope: !3923)
!3926 = !{i64 2148386831, i64 2148386870, i64 2148386891, i64 2148386928, i64 2148386951, i64 2148386821}
!3927 = !DILocation(line: 82, column: 1, scope: !3905)
!3928 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !3279, file: !3279, line: 120, type: !3929, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3931)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!124, !111}
!3931 = !{!3932}
!3932 = !DILocalVariable(name: "flags", arg: 1, scope: !3928, file: !3279, line: 120, type: !111)
!3933 = !DILocation(line: 120, column: 67, scope: !3928)
!3934 = !DILocation(line: 122, column: 11, scope: !3928)
!3935 = !DILocation(line: 122, column: 17, scope: !3928)
!3936 = !DILocation(line: 122, column: 9, scope: !3928)
!3937 = !DILocation(line: 122, column: 2, scope: !3928)
!3938 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !3279, file: !3279, line: 75, type: !461, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3939 = !DILocation(line: 77, column: 2, scope: !3938)
!3940 = !DILocation(line: 78, column: 1, scope: !3938)
!3941 = distinct !DISubprogram(name: "native_irq_enable", scope: !3279, file: !3279, line: 40, type: !461, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3942 = !DILocation(line: 42, column: 2, scope: !3941)
!3943 = !{i64 1453658}
!3944 = !DILocation(line: 43, column: 1, scope: !3941)
!3945 = distinct !DISubprogram(name: "rhashtable_rehash_attach", scope: !3, file: !3, line: 298, type: !3946, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3948)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!124, !165, !49, !49}
!3948 = !{!3949, !3950, !3951, !3952, !3955, !3957, !3958, !3959}
!3949 = !DILocalVariable(name: "ht", arg: 1, scope: !3945, file: !3, line: 298, type: !165)
!3950 = !DILocalVariable(name: "old_tbl", arg: 2, scope: !3945, file: !3, line: 299, type: !49)
!3951 = !DILocalVariable(name: "new_tbl", arg: 3, scope: !3945, file: !3, line: 300, type: !49)
!3952 = !DILocalVariable(name: "__ai_ptr", scope: !3953, file: !3, line: 308, type: !138)
!3953 = distinct !DILexicalBlock(scope: !3954, file: !3, line: 308, column: 6)
!3954 = distinct !DILexicalBlock(scope: !3945, file: !3, line: 308, column: 6)
!3955 = !DILocalVariable(name: "__ret", scope: !3956, file: !3, line: 308, type: !49)
!3956 = distinct !DILexicalBlock(scope: !3953, file: !3, line: 308, column: 6)
!3957 = !DILocalVariable(name: "__old", scope: !3956, file: !3, line: 308, type: !49)
!3958 = !DILocalVariable(name: "__new", scope: !3956, file: !3, line: 308, type: !49)
!3959 = !DILocalVariable(name: "__ptr", scope: !3956, file: !3, line: 308, type: !139)
!3960 = !DILocation(line: 298, column: 56, scope: !3945)
!3961 = !DILocation(line: 299, column: 30, scope: !3945)
!3962 = !DILocation(line: 300, column: 30, scope: !3945)
!3963 = !DILocation(line: 308, column: 6, scope: !3953)
!3964 = !DILocation(line: 308, column: 6, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3953, file: !3, line: 308, column: 6)
!3966 = !DILocation(line: 308, column: 6, scope: !3956)
!3967 = !{i64 2154143844, i64 2154143883, i64 2154143904, i64 2154143941, i64 2154143964, i64 2154143973}
!3968 = !DILocation(line: 308, column: 6, scope: !3954)
!3969 = !DILocation(line: 309, column: 16, scope: !3954)
!3970 = !DILocation(line: 308, column: 6, scope: !3945)
!3971 = !DILocation(line: 310, column: 3, scope: !3954)
!3972 = !DILocation(line: 312, column: 2, scope: !3945)
!3973 = !DILocation(line: 313, column: 1, scope: !3945)
!3974 = !DISubprogram(name: "__rcu_read_unlock", scope: !368, file: !368, line: 75, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3975 = !DISubprogram(name: "_raw_spin_lock", scope: !3976, file: !3976, line: 22, type: !3977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3976 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!3977 = !DISubroutineType(types: !3978)
!3978 = !{null, !1599}
!3979 = distinct !DISubprogram(name: "__list_add", scope: !699, file: !699, line: 146, type: !3980, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3982)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{null, !65, !65, !65}
!3982 = !{!3983, !3984, !3985}
!3983 = !DILocalVariable(name: "new", arg: 1, scope: !3979, file: !699, line: 146, type: !65)
!3984 = !DILocalVariable(name: "prev", arg: 2, scope: !3979, file: !699, line: 147, type: !65)
!3985 = !DILocalVariable(name: "next", arg: 3, scope: !3979, file: !699, line: 148, type: !65)
!3986 = !DILocation(line: 146, column: 49, scope: !3979)
!3987 = !DILocation(line: 147, column: 28, scope: !3979)
!3988 = !DILocation(line: 148, column: 28, scope: !3979)
!3989 = !DILocation(line: 150, column: 24, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3979, file: !699, line: 150, column: 6)
!3991 = !DILocation(line: 150, column: 29, scope: !3990)
!3992 = !DILocation(line: 150, column: 35, scope: !3990)
!3993 = !DILocation(line: 150, column: 7, scope: !3990)
!3994 = !DILocation(line: 150, column: 6, scope: !3979)
!3995 = !DILocation(line: 151, column: 3, scope: !3990)
!3996 = !DILocation(line: 153, column: 15, scope: !3979)
!3997 = !DILocation(line: 153, column: 2, scope: !3979)
!3998 = !DILocation(line: 153, column: 8, scope: !3979)
!3999 = !DILocation(line: 153, column: 13, scope: !3979)
!4000 = !DILocation(line: 154, column: 14, scope: !3979)
!4001 = !DILocation(line: 154, column: 2, scope: !3979)
!4002 = !DILocation(line: 154, column: 7, scope: !3979)
!4003 = !DILocation(line: 154, column: 12, scope: !3979)
!4004 = !DILocation(line: 155, column: 14, scope: !3979)
!4005 = !DILocation(line: 155, column: 2, scope: !3979)
!4006 = !DILocation(line: 155, column: 7, scope: !3979)
!4007 = !DILocation(line: 155, column: 12, scope: !3979)
!4008 = !DILocation(line: 156, column: 2, scope: !3979)
!4009 = !DILocation(line: 156, column: 2, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !3979, file: !699, line: 156, column: 2)
!4011 = !DILocation(line: 156, column: 2, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !4010, file: !699, line: 156, column: 2)
!4013 = !DILocation(line: 156, column: 2, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !4010, file: !699, line: 156, column: 2)
!4015 = !DILocation(line: 157, column: 1, scope: !3979)
!4016 = distinct !DISubprogram(name: "__list_add_valid", scope: !699, file: !699, line: 128, type: !4017, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4019)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!181, !65, !65, !65}
!4019 = !{!4020, !4021, !4022}
!4020 = !DILocalVariable(name: "new", arg: 1, scope: !4016, file: !699, line: 128, type: !65)
!4021 = !DILocalVariable(name: "prev", arg: 2, scope: !4016, file: !699, line: 129, type: !65)
!4022 = !DILocalVariable(name: "next", arg: 3, scope: !4016, file: !699, line: 130, type: !65)
!4023 = !DILocation(line: 128, column: 55, scope: !4016)
!4024 = !DILocation(line: 129, column: 23, scope: !4016)
!4025 = !DILocation(line: 130, column: 23, scope: !4016)
!4026 = !DILocation(line: 132, column: 2, scope: !4016)
!4027 = !DISubprogram(name: "_raw_spin_unlock", scope: !3976, file: !3976, line: 39, type: !3977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4028 = distinct !DISubprogram(name: "__list_del_entry", scope: !699, file: !699, line: 213, type: !744, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4029)
!4029 = !{!4030}
!4030 = !DILocalVariable(name: "entry", arg: 1, scope: !4028, file: !699, line: 213, type: !65)
!4031 = !DILocation(line: 213, column: 55, scope: !4028)
!4032 = !DILocation(line: 215, column: 30, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !4028, file: !699, line: 215, column: 6)
!4034 = !DILocation(line: 215, column: 7, scope: !4033)
!4035 = !DILocation(line: 215, column: 6, scope: !4028)
!4036 = !DILocation(line: 216, column: 3, scope: !4033)
!4037 = !DILocation(line: 218, column: 13, scope: !4028)
!4038 = !DILocation(line: 218, column: 20, scope: !4028)
!4039 = !DILocation(line: 218, column: 26, scope: !4028)
!4040 = !DILocation(line: 218, column: 33, scope: !4028)
!4041 = !DILocation(line: 218, column: 2, scope: !4028)
!4042 = !DILocation(line: 219, column: 1, scope: !4028)
!4043 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !699, file: !699, line: 134, type: !4044, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4046)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!181, !65}
!4046 = !{!4047}
!4047 = !DILocalVariable(name: "entry", arg: 1, scope: !4043, file: !699, line: 134, type: !65)
!4048 = !DILocation(line: 134, column: 61, scope: !4043)
!4049 = !DILocation(line: 136, column: 2, scope: !4043)
!4050 = distinct !DISubprogram(name: "__list_del", scope: !699, file: !699, line: 193, type: !700, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4051)
!4051 = !{!4052, !4053}
!4052 = !DILocalVariable(name: "prev", arg: 1, scope: !4050, file: !699, line: 193, type: !65)
!4053 = !DILocalVariable(name: "next", arg: 2, scope: !4050, file: !699, line: 193, type: !65)
!4054 = !DILocation(line: 193, column: 50, scope: !4050)
!4055 = !DILocation(line: 193, column: 75, scope: !4050)
!4056 = !DILocation(line: 195, column: 15, scope: !4050)
!4057 = !DILocation(line: 195, column: 2, scope: !4050)
!4058 = !DILocation(line: 195, column: 8, scope: !4050)
!4059 = !DILocation(line: 195, column: 13, scope: !4050)
!4060 = !DILocation(line: 196, column: 2, scope: !4050)
!4061 = !DILocation(line: 196, column: 2, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4050, file: !699, line: 196, column: 2)
!4063 = !DILocation(line: 196, column: 2, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4062, file: !699, line: 196, column: 2)
!4065 = !DILocation(line: 196, column: 2, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4062, file: !699, line: 196, column: 2)
!4067 = !DILocation(line: 197, column: 1, scope: !4050)
!4068 = distinct !DISubprogram(name: "fls", scope: !3469, file: !3469, line: 359, type: !4069, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4071)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!124, !7}
!4071 = !{!4072, !4073}
!4072 = !DILocalVariable(name: "x", arg: 1, scope: !4068, file: !3469, line: 359, type: !7)
!4073 = !DILocalVariable(name: "r", scope: !4068, file: !3469, line: 361, type: !124)
!4074 = !DILocation(line: 359, column: 45, scope: !4068)
!4075 = !DILocation(line: 361, column: 2, scope: !4068)
!4076 = !DILocation(line: 361, column: 6, scope: !4068)
!4077 = !DILocation(line: 375, column: 14, scope: !4068)
!4078 = !DILocation(line: 373, column: 2, scope: !4068)
!4079 = !{i64 899854}
!4080 = !DILocation(line: 386, column: 9, scope: !4068)
!4081 = !DILocation(line: 386, column: 11, scope: !4068)
!4082 = !DILocation(line: 387, column: 1, scope: !4068)
!4083 = !DILocation(line: 386, column: 2, scope: !4068)
!4084 = distinct !DISubprogram(name: "fls_long", scope: !3259, file: !3259, line: 204, type: !4085, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4087)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!7, !111}
!4087 = !{!4088}
!4088 = !DILocalVariable(name: "l", arg: 1, scope: !4084, file: !3259, line: 204, type: !111)
!4089 = !DILocation(line: 204, column: 47, scope: !4084)
!4090 = !DILocation(line: 208, column: 15, scope: !4084)
!4091 = !DILocation(line: 208, column: 9, scope: !4084)
!4092 = !DILocation(line: 208, column: 2, scope: !4084)
!4093 = distinct !DISubprogram(name: "fls64", scope: !3469, file: !3469, line: 401, type: !4094, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4096)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!124, !142}
!4096 = !{!4097, !4098}
!4097 = !DILocalVariable(name: "x", arg: 1, scope: !4093, file: !3469, line: 401, type: !142)
!4098 = !DILocalVariable(name: "bitpos", scope: !4093, file: !3469, line: 403, type: !124)
!4099 = !DILocation(line: 401, column: 40, scope: !4093)
!4100 = !DILocation(line: 403, column: 2, scope: !4093)
!4101 = !DILocation(line: 403, column: 6, scope: !4093)
!4102 = !DILocation(line: 409, column: 2, scope: !4093)
!4103 = !DILocation(line: 411, column: 14, scope: !4093)
!4104 = !{i64 900820}
!4105 = !DILocation(line: 412, column: 9, scope: !4093)
!4106 = !DILocation(line: 412, column: 16, scope: !4093)
!4107 = !DILocation(line: 413, column: 1, scope: !4093)
!4108 = !DILocation(line: 412, column: 2, scope: !4093)
!4109 = distinct !DISubprogram(name: "__get_unaligned_cpu32", scope: !156, file: !156, line: 16, type: !4110, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4112)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!56, !188}
!4112 = !{!4113, !4114}
!4113 = !DILocalVariable(name: "p", arg: 1, scope: !4109, file: !156, line: 16, type: !188)
!4114 = !DILocalVariable(name: "ptr", scope: !4109, file: !156, line: 18, type: !153)
!4115 = !DILocation(line: 16, column: 53, scope: !4109)
!4116 = !DILocation(line: 18, column: 2, scope: !4109)
!4117 = !DILocation(line: 18, column: 26, scope: !4109)
!4118 = !DILocation(line: 18, column: 58, scope: !4109)
!4119 = !DILocation(line: 19, column: 9, scope: !4109)
!4120 = !DILocation(line: 19, column: 14, scope: !4109)
!4121 = !DILocation(line: 20, column: 1, scope: !4109)
!4122 = !DILocation(line: 19, column: 2, scope: !4109)
!4123 = distinct !DISubprogram(name: "kvzalloc", scope: !38, file: !38, line: 744, type: !4124, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4126)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!48, !159, !109}
!4126 = !{!4127, !4128}
!4127 = !DILocalVariable(name: "size", arg: 1, scope: !4123, file: !38, line: 744, type: !159)
!4128 = !DILocalVariable(name: "flags", arg: 2, scope: !4123, file: !38, line: 744, type: !109)
!4129 = !DILocation(line: 744, column: 53, scope: !4123)
!4130 = !DILocation(line: 744, column: 65, scope: !4123)
!4131 = !DILocation(line: 746, column: 18, scope: !4123)
!4132 = !DILocation(line: 746, column: 24, scope: !4123)
!4133 = !DILocation(line: 746, column: 30, scope: !4123)
!4134 = !DILocation(line: 746, column: 9, scope: !4123)
!4135 = !DILocation(line: 746, column: 2, scope: !4123)
!4136 = distinct !DISubprogram(name: "size_add", scope: !4137, file: !4137, line: 208, type: !4138, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4140)
!4137 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!159, !159, !159}
!4140 = !{!4141, !4142, !4143}
!4141 = !DILocalVariable(name: "addend1", arg: 1, scope: !4136, file: !4137, line: 208, type: !159)
!4142 = !DILocalVariable(name: "addend2", arg: 2, scope: !4136, file: !4137, line: 208, type: !159)
!4143 = !DILocalVariable(name: "bytes", scope: !4136, file: !4137, line: 210, type: !159)
!4144 = !DILocation(line: 208, column: 51, scope: !4136)
!4145 = !DILocation(line: 208, column: 67, scope: !4136)
!4146 = !DILocation(line: 210, column: 2, scope: !4136)
!4147 = !DILocation(line: 210, column: 9, scope: !4136)
!4148 = !DILocation(line: 212, column: 6, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4136, file: !4137, line: 212, column: 6)
!4150 = !DILocation(line: 212, column: 6, scope: !4136)
!4151 = !DILocation(line: 213, column: 3, scope: !4149)
!4152 = !DILocation(line: 215, column: 9, scope: !4136)
!4153 = !DILocation(line: 215, column: 2, scope: !4136)
!4154 = !DILocation(line: 216, column: 1, scope: !4136)
!4155 = distinct !DISubprogram(name: "size_mul", scope: !4137, file: !4137, line: 189, type: !4138, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4156)
!4156 = !{!4157, !4158, !4159}
!4157 = !DILocalVariable(name: "factor1", arg: 1, scope: !4155, file: !4137, line: 189, type: !159)
!4158 = !DILocalVariable(name: "factor2", arg: 2, scope: !4155, file: !4137, line: 189, type: !159)
!4159 = !DILocalVariable(name: "bytes", scope: !4155, file: !4137, line: 191, type: !159)
!4160 = !DILocation(line: 189, column: 51, scope: !4155)
!4161 = !DILocation(line: 189, column: 67, scope: !4155)
!4162 = !DILocation(line: 191, column: 2, scope: !4155)
!4163 = !DILocation(line: 191, column: 9, scope: !4155)
!4164 = !DILocation(line: 193, column: 6, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4155, file: !4137, line: 193, column: 6)
!4166 = !DILocation(line: 193, column: 6, scope: !4155)
!4167 = !DILocation(line: 194, column: 3, scope: !4165)
!4168 = !DILocation(line: 196, column: 9, scope: !4155)
!4169 = !DILocation(line: 196, column: 2, scope: !4155)
!4170 = !DILocation(line: 197, column: 1, scope: !4155)
!4171 = distinct !DISubprogram(name: "nested_bucket_table_alloc", scope: !3, file: !3, line: 147, type: !375, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4172)
!4172 = !{!4173, !4174, !4175, !4176, !4177, !4178}
!4173 = !DILocalVariable(name: "ht", arg: 1, scope: !4171, file: !3, line: 147, type: !165)
!4174 = !DILocalVariable(name: "nbuckets", arg: 2, scope: !4171, file: !3, line: 148, type: !159)
!4175 = !DILocalVariable(name: "gfp", arg: 3, scope: !4171, file: !3, line: 149, type: !109)
!4176 = !DILocalVariable(name: "shift", scope: !4171, file: !3, line: 151, type: !2259)
!4177 = !DILocalVariable(name: "tbl", scope: !4171, file: !3, line: 152, type: !49)
!4178 = !DILocalVariable(name: "size", scope: !4171, file: !3, line: 153, type: !159)
!4179 = !DILocation(line: 147, column: 74, scope: !4171)
!4180 = !DILocation(line: 148, column: 20, scope: !4171)
!4181 = !DILocation(line: 149, column: 19, scope: !4171)
!4182 = !DILocation(line: 151, column: 2, scope: !4171)
!4183 = !DILocation(line: 151, column: 21, scope: !4171)
!4184 = !DILocation(line: 152, column: 2, scope: !4171)
!4185 = !DILocation(line: 152, column: 23, scope: !4171)
!4186 = !DILocation(line: 153, column: 2, scope: !4171)
!4187 = !DILocation(line: 153, column: 9, scope: !4171)
!4188 = !DILocation(line: 155, column: 6, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4171, file: !3, line: 155, column: 6)
!4190 = !DILocation(line: 155, column: 15, scope: !4189)
!4191 = !DILocation(line: 155, column: 6, scope: !4171)
!4192 = !DILocation(line: 156, column: 3, scope: !4189)
!4193 = !DILocation(line: 158, column: 7, scope: !4171)
!4194 = !DILocation(line: 160, column: 16, scope: !4171)
!4195 = !DILocation(line: 160, column: 22, scope: !4171)
!4196 = !DILocation(line: 160, column: 8, scope: !4171)
!4197 = !DILocation(line: 160, column: 6, scope: !4171)
!4198 = !DILocation(line: 161, column: 7, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4171, file: !3, line: 161, column: 6)
!4200 = !DILocation(line: 161, column: 6, scope: !4171)
!4201 = !DILocation(line: 162, column: 3, scope: !4199)
!4202 = !DILocation(line: 164, column: 26, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4171, file: !3, line: 164, column: 6)
!4204 = !DILocation(line: 164, column: 59, scope: !4203)
!4205 = !DILocation(line: 164, column: 64, scope: !4203)
!4206 = !DILocation(line: 164, column: 7, scope: !4203)
!4207 = !DILocation(line: 164, column: 6, scope: !4171)
!4208 = !DILocation(line: 166, column: 9, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4203, file: !3, line: 165, column: 13)
!4210 = !DILocation(line: 166, column: 3, scope: !4209)
!4211 = !DILocation(line: 167, column: 3, scope: !4209)
!4212 = !DILocation(line: 170, column: 15, scope: !4171)
!4213 = !DILocation(line: 170, column: 31, scope: !4171)
!4214 = !DILocation(line: 170, column: 36, scope: !4171)
!4215 = !DILocation(line: 170, column: 44, scope: !4171)
!4216 = !DILocation(line: 170, column: 2, scope: !4171)
!4217 = !DILocation(line: 170, column: 7, scope: !4171)
!4218 = !DILocation(line: 170, column: 12, scope: !4171)
!4219 = !DILocation(line: 172, column: 9, scope: !4171)
!4220 = !DILocation(line: 172, column: 2, scope: !4171)
!4221 = !DILocation(line: 173, column: 1, scope: !4171)
!4222 = distinct !DISubprogram(name: "rcu_head_init", scope: !368, file: !368, line: 1065, type: !74, scopeLine: 1066, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4223)
!4223 = !{!4224}
!4224 = !DILocalVariable(name: "rhp", arg: 1, scope: !4222, file: !368, line: 1065, type: !71)
!4225 = !DILocation(line: 1065, column: 51, scope: !4222)
!4226 = !DILocation(line: 1067, column: 2, scope: !4222)
!4227 = !DILocation(line: 1067, column: 7, scope: !4222)
!4228 = !DILocation(line: 1067, column: 12, scope: !4222)
!4229 = !DILocation(line: 1068, column: 1, scope: !4222)
!4230 = !DISubprogram(name: "get_random_u32", scope: !4231, file: !4231, line: 42, type: !4232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4231 = !DIFile(filename: "./include/linux/random.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ff56c5c661379ff0da8775246644d01")
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!56}
!4234 = distinct !DISubprogram(name: "kvmalloc", scope: !38, file: !38, line: 736, type: !4124, scopeLine: 737, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4235)
!4235 = !{!4236, !4237}
!4236 = !DILocalVariable(name: "size", arg: 1, scope: !4234, file: !38, line: 736, type: !159)
!4237 = !DILocalVariable(name: "flags", arg: 2, scope: !4234, file: !38, line: 736, type: !109)
!4238 = !DILocation(line: 736, column: 53, scope: !4234)
!4239 = !DILocation(line: 736, column: 65, scope: !4234)
!4240 = !DILocation(line: 738, column: 23, scope: !4234)
!4241 = !DILocation(line: 738, column: 29, scope: !4234)
!4242 = !DILocation(line: 738, column: 9, scope: !4234)
!4243 = !DILocation(line: 738, column: 2, scope: !4234)
!4244 = !DISubprogram(name: "kvmalloc_node", scope: !38, file: !38, line: 735, type: !4245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!48, !159, !109, !124}
!4247 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4137, file: !4137, line: 51, type: !4248, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4250)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!181, !181}
!4250 = !{!4251}
!4251 = !DILocalVariable(name: "overflow", arg: 1, scope: !4247, file: !4137, line: 51, type: !181)
!4252 = !DILocation(line: 51, column: 60, scope: !4247)
!4253 = !DILocation(line: 53, column: 9, scope: !4247)
!4254 = !DILocation(line: 53, column: 2, scope: !4247)
!4255 = distinct !DISubprogram(name: "kzalloc", scope: !38, file: !38, line: 719, type: !4124, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4256)
!4256 = !{!4257, !4258}
!4257 = !DILocalVariable(name: "size", arg: 1, scope: !4255, file: !38, line: 719, type: !159)
!4258 = !DILocalVariable(name: "flags", arg: 2, scope: !4255, file: !38, line: 719, type: !109)
!4259 = !DILocation(line: 719, column: 52, scope: !4255)
!4260 = !DILocation(line: 719, column: 64, scope: !4255)
!4261 = !DILocation(line: 721, column: 17, scope: !4255)
!4262 = !DILocation(line: 721, column: 23, scope: !4255)
!4263 = !DILocation(line: 721, column: 29, scope: !4255)
!4264 = !DILocation(line: 721, column: 9, scope: !4255)
!4265 = !DILocation(line: 721, column: 2, scope: !4255)
!4266 = !DISubprogram(name: "kfree", scope: !38, file: !38, line: 227, type: !4267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{null, !188}
!4269 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1607, file: !1607, line: 30, type: !4270, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4272)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!124, !141}
!4272 = !{!4273}
!4273 = !DILocalVariable(name: "n", arg: 1, scope: !4269, file: !1607, line: 30, type: !141)
!4274 = !DILocation(line: 30, column: 21, scope: !4269)
!4275 = !DILocation(line: 32, column: 15, scope: !4269)
!4276 = !DILocation(line: 32, column: 9, scope: !4269)
!4277 = !DILocation(line: 32, column: 18, scope: !4269)
!4278 = !DILocation(line: 32, column: 2, scope: !4269)
!4279 = distinct !DISubprogram(name: "kmalloc", scope: !38, file: !38, line: 591, type: !4124, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4280)
!4280 = !{!4281, !4282, !4283}
!4281 = !DILocalVariable(name: "size", arg: 1, scope: !4279, file: !38, line: 591, type: !159)
!4282 = !DILocalVariable(name: "flags", arg: 2, scope: !4279, file: !38, line: 591, type: !109)
!4283 = !DILocalVariable(name: "index", scope: !4284, file: !38, line: 594, type: !7)
!4284 = distinct !DILexicalBlock(scope: !4285, file: !38, line: 593, column: 42)
!4285 = distinct !DILexicalBlock(scope: !4279, file: !38, line: 593, column: 6)
!4286 = !DILocation(line: 591, column: 61, scope: !4279)
!4287 = !DILocation(line: 591, column: 73, scope: !4279)
!4288 = !DILocation(line: 593, column: 27, scope: !4285)
!4289 = !DILocation(line: 593, column: 6, scope: !4285)
!4290 = !DILocation(line: 593, column: 33, scope: !4285)
!4291 = !DILocation(line: 593, column: 36, scope: !4285)
!4292 = !DILocation(line: 593, column: 6, scope: !4279)
!4293 = !DILocation(line: 594, column: 3, scope: !4284)
!4294 = !DILocation(line: 594, column: 16, scope: !4284)
!4295 = !DILocation(line: 596, column: 7, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4284, file: !38, line: 596, column: 7)
!4297 = !DILocation(line: 596, column: 12, scope: !4296)
!4298 = !DILocation(line: 596, column: 7, scope: !4284)
!4299 = !DILocation(line: 597, column: 25, scope: !4296)
!4300 = !DILocation(line: 597, column: 31, scope: !4296)
!4301 = !DILocation(line: 597, column: 11, scope: !4296)
!4302 = !DILocation(line: 597, column: 4, scope: !4296)
!4303 = !DILocation(line: 599, column: 11, scope: !4284)
!4304 = !DILocation(line: 599, column: 9, scope: !4284)
!4305 = !DILocation(line: 601, column: 33, scope: !4284)
!4306 = !DILocation(line: 601, column: 40, scope: !4284)
!4307 = !DILocation(line: 601, column: 20, scope: !4284)
!4308 = !DILocation(line: 601, column: 5, scope: !4284)
!4309 = !DILocation(line: 601, column: 51, scope: !4284)
!4310 = !DILocation(line: 602, column: 5, scope: !4284)
!4311 = !DILocation(line: 602, column: 12, scope: !4284)
!4312 = !DILocation(line: 600, column: 10, scope: !4284)
!4313 = !DILocation(line: 600, column: 3, scope: !4284)
!4314 = !DILocation(line: 603, column: 2, scope: !4285)
!4315 = !DILocation(line: 604, column: 19, scope: !4279)
!4316 = !DILocation(line: 604, column: 25, scope: !4279)
!4317 = !DILocation(line: 604, column: 9, scope: !4279)
!4318 = !DILocation(line: 604, column: 2, scope: !4279)
!4319 = !DILocation(line: 605, column: 1, scope: !4279)
!4320 = !DISubprogram(name: "kmalloc_large", scope: !38, file: !38, line: 531, type: !4124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4321 = distinct !DISubprogram(name: "__kmalloc_index", scope: !38, file: !38, line: 444, type: !4322, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4324)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{!7, !159, !181}
!4324 = !{!4325, !4326}
!4325 = !DILocalVariable(name: "size", arg: 1, scope: !4321, file: !38, line: 444, type: !159)
!4326 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4321, file: !38, line: 445, type: !181)
!4327 = !DILocation(line: 444, column: 60, scope: !4321)
!4328 = !DILocation(line: 445, column: 16, scope: !4321)
!4329 = !DILocation(line: 447, column: 7, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4321, file: !38, line: 447, column: 6)
!4331 = !DILocation(line: 447, column: 6, scope: !4321)
!4332 = !DILocation(line: 448, column: 3, scope: !4330)
!4333 = !DILocation(line: 450, column: 6, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4321, file: !38, line: 450, column: 6)
!4335 = !DILocation(line: 450, column: 11, scope: !4334)
!4336 = !DILocation(line: 450, column: 6, scope: !4321)
!4337 = !DILocation(line: 451, column: 3, scope: !4334)
!4338 = !DILocation(line: 453, column: 32, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4321, file: !38, line: 453, column: 6)
!4340 = !DILocation(line: 453, column: 37, scope: !4339)
!4341 = !DILocation(line: 453, column: 42, scope: !4339)
!4342 = !DILocation(line: 453, column: 45, scope: !4339)
!4343 = !DILocation(line: 453, column: 50, scope: !4339)
!4344 = !DILocation(line: 453, column: 6, scope: !4321)
!4345 = !DILocation(line: 454, column: 3, scope: !4339)
!4346 = !DILocation(line: 455, column: 32, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4321, file: !38, line: 455, column: 6)
!4348 = !DILocation(line: 455, column: 37, scope: !4347)
!4349 = !DILocation(line: 455, column: 43, scope: !4347)
!4350 = !DILocation(line: 455, column: 46, scope: !4347)
!4351 = !DILocation(line: 455, column: 51, scope: !4347)
!4352 = !DILocation(line: 455, column: 6, scope: !4321)
!4353 = !DILocation(line: 456, column: 3, scope: !4347)
!4354 = !DILocation(line: 457, column: 6, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4321, file: !38, line: 457, column: 6)
!4356 = !DILocation(line: 457, column: 11, scope: !4355)
!4357 = !DILocation(line: 457, column: 6, scope: !4321)
!4358 = !DILocation(line: 457, column: 26, scope: !4355)
!4359 = !DILocation(line: 458, column: 6, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4321, file: !38, line: 458, column: 6)
!4361 = !DILocation(line: 458, column: 11, scope: !4360)
!4362 = !DILocation(line: 458, column: 6, scope: !4321)
!4363 = !DILocation(line: 458, column: 26, scope: !4360)
!4364 = !DILocation(line: 459, column: 6, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4321, file: !38, line: 459, column: 6)
!4366 = !DILocation(line: 459, column: 11, scope: !4365)
!4367 = !DILocation(line: 459, column: 6, scope: !4321)
!4368 = !DILocation(line: 459, column: 26, scope: !4365)
!4369 = !DILocation(line: 460, column: 6, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4321, file: !38, line: 460, column: 6)
!4371 = !DILocation(line: 460, column: 11, scope: !4370)
!4372 = !DILocation(line: 460, column: 6, scope: !4321)
!4373 = !DILocation(line: 460, column: 26, scope: !4370)
!4374 = !DILocation(line: 461, column: 6, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4321, file: !38, line: 461, column: 6)
!4376 = !DILocation(line: 461, column: 11, scope: !4375)
!4377 = !DILocation(line: 461, column: 6, scope: !4321)
!4378 = !DILocation(line: 461, column: 26, scope: !4375)
!4379 = !DILocation(line: 462, column: 6, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4321, file: !38, line: 462, column: 6)
!4381 = !DILocation(line: 462, column: 11, scope: !4380)
!4382 = !DILocation(line: 462, column: 6, scope: !4321)
!4383 = !DILocation(line: 462, column: 26, scope: !4380)
!4384 = !DILocation(line: 463, column: 6, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4321, file: !38, line: 463, column: 6)
!4386 = !DILocation(line: 463, column: 11, scope: !4385)
!4387 = !DILocation(line: 463, column: 6, scope: !4321)
!4388 = !DILocation(line: 463, column: 26, scope: !4385)
!4389 = !DILocation(line: 464, column: 6, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4321, file: !38, line: 464, column: 6)
!4391 = !DILocation(line: 464, column: 11, scope: !4390)
!4392 = !DILocation(line: 464, column: 6, scope: !4321)
!4393 = !DILocation(line: 464, column: 26, scope: !4390)
!4394 = !DILocation(line: 465, column: 6, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4321, file: !38, line: 465, column: 6)
!4396 = !DILocation(line: 465, column: 11, scope: !4395)
!4397 = !DILocation(line: 465, column: 6, scope: !4321)
!4398 = !DILocation(line: 465, column: 26, scope: !4395)
!4399 = !DILocation(line: 466, column: 6, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4321, file: !38, line: 466, column: 6)
!4401 = !DILocation(line: 466, column: 11, scope: !4400)
!4402 = !DILocation(line: 466, column: 6, scope: !4321)
!4403 = !DILocation(line: 466, column: 26, scope: !4400)
!4404 = !DILocation(line: 467, column: 6, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4321, file: !38, line: 467, column: 6)
!4406 = !DILocation(line: 467, column: 11, scope: !4405)
!4407 = !DILocation(line: 467, column: 6, scope: !4321)
!4408 = !DILocation(line: 467, column: 26, scope: !4405)
!4409 = !DILocation(line: 468, column: 6, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4321, file: !38, line: 468, column: 6)
!4411 = !DILocation(line: 468, column: 11, scope: !4410)
!4412 = !DILocation(line: 468, column: 6, scope: !4321)
!4413 = !DILocation(line: 468, column: 26, scope: !4410)
!4414 = !DILocation(line: 469, column: 6, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4321, file: !38, line: 469, column: 6)
!4416 = !DILocation(line: 469, column: 11, scope: !4415)
!4417 = !DILocation(line: 469, column: 6, scope: !4321)
!4418 = !DILocation(line: 469, column: 26, scope: !4415)
!4419 = !DILocation(line: 470, column: 6, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4321, file: !38, line: 470, column: 6)
!4421 = !DILocation(line: 470, column: 11, scope: !4420)
!4422 = !DILocation(line: 470, column: 6, scope: !4321)
!4423 = !DILocation(line: 470, column: 26, scope: !4420)
!4424 = !DILocation(line: 471, column: 6, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4321, file: !38, line: 471, column: 6)
!4426 = !DILocation(line: 471, column: 11, scope: !4425)
!4427 = !DILocation(line: 471, column: 6, scope: !4321)
!4428 = !DILocation(line: 471, column: 26, scope: !4425)
!4429 = !DILocation(line: 472, column: 6, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4321, file: !38, line: 472, column: 6)
!4431 = !DILocation(line: 472, column: 11, scope: !4430)
!4432 = !DILocation(line: 472, column: 6, scope: !4321)
!4433 = !DILocation(line: 472, column: 26, scope: !4430)
!4434 = !DILocation(line: 473, column: 6, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4321, file: !38, line: 473, column: 6)
!4436 = !DILocation(line: 473, column: 11, scope: !4435)
!4437 = !DILocation(line: 473, column: 6, scope: !4321)
!4438 = !DILocation(line: 473, column: 26, scope: !4435)
!4439 = !DILocation(line: 474, column: 6, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4321, file: !38, line: 474, column: 6)
!4441 = !DILocation(line: 474, column: 11, scope: !4440)
!4442 = !DILocation(line: 474, column: 6, scope: !4321)
!4443 = !DILocation(line: 474, column: 27, scope: !4440)
!4444 = !DILocation(line: 475, column: 6, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4321, file: !38, line: 475, column: 6)
!4446 = !DILocation(line: 475, column: 11, scope: !4445)
!4447 = !DILocation(line: 475, column: 6, scope: !4321)
!4448 = !DILocation(line: 475, column: 32, scope: !4445)
!4449 = !DILocation(line: 477, column: 50, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4321, file: !38, line: 477, column: 6)
!4451 = !DILocation(line: 477, column: 6, scope: !4321)
!4452 = !DILocation(line: 478, column: 3, scope: !4450)
!4453 = !DILocation(line: 478, column: 3, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4455, file: !38, line: 478, column: 3)
!4455 = distinct !DILexicalBlock(scope: !4450, file: !38, line: 478, column: 3)
!4456 = !{i32 -2143039527}
!4457 = !DILocation(line: 478, column: 3, scope: !4455)
!4458 = !DILocation(line: 480, column: 3, scope: !4450)
!4459 = !DILocation(line: 480, column: 3, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4450, file: !38, line: 480, column: 3)
!4461 = !DILocation(line: 480, column: 3, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4460, file: !38, line: 480, column: 3)
!4463 = !DILocation(line: 480, column: 3, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4460, file: !38, line: 480, column: 3)
!4465 = !{i64 2151927972, i64 2151928001, i64 2151928047, i64 2151928105, i64 2151928159, i64 2151928213, i64 2151928268, i64 2151928299}
!4466 = !DILocation(line: 483, column: 2, scope: !4321)
!4467 = !DILocation(line: 484, column: 1, scope: !4321)
!4468 = !DISubprogram(name: "kmalloc_trace", scope: !38, file: !38, line: 525, type: !4469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!48, !4471, !109, !159}
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4473, line: 11, flags: DIFlagFwdDecl)
!4473 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!4474 = distinct !DISubprogram(name: "kmalloc_type", scope: !38, file: !38, line: 401, type: !4475, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4477)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{!37, !109, !111}
!4477 = !{!4478, !4479}
!4478 = !DILocalVariable(name: "flags", arg: 1, scope: !4474, file: !38, line: 401, type: !109)
!4479 = !DILocalVariable(name: "caller", arg: 2, scope: !4474, file: !38, line: 401, type: !111)
!4480 = !DILocation(line: 401, column: 67, scope: !4474)
!4481 = !DILocation(line: 401, column: 88, scope: !4474)
!4482 = !DILocation(line: 407, column: 6, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4474, file: !38, line: 407, column: 6)
!4484 = !DILocation(line: 407, column: 6, scope: !4474)
!4485 = !DILocation(line: 413, column: 3, scope: !4483)
!4486 = !DILocation(line: 423, column: 38, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4474, file: !38, line: 423, column: 6)
!4488 = !DILocation(line: 423, column: 44, scope: !4487)
!4489 = !DILocation(line: 423, column: 6, scope: !4474)
!4490 = !DILocation(line: 424, column: 3, scope: !4487)
!4491 = !DILocation(line: 426, column: 3, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4474, file: !38, line: 425, column: 6)
!4493 = !DILocation(line: 429, column: 1, scope: !4474)
!4494 = !DISubprogram(name: "__kmalloc", scope: !38, file: !38, line: 488, type: !4124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4495 = !DISubprogram(name: "__compiletime_assert_173", scope: !38, file: !38, line: 478, type: !461, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4496 = distinct !DISubprogram(name: "raw_atomic_set", scope: !3789, file: !3789, line: 488, type: !1862, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4497)
!4497 = !{!4498, !4499}
!4498 = !DILocalVariable(name: "v", arg: 1, scope: !4496, file: !3789, line: 488, type: !1864)
!4499 = !DILocalVariable(name: "i", arg: 2, scope: !4496, file: !3789, line: 488, type: !124)
!4500 = !DILocation(line: 488, column: 26, scope: !4496)
!4501 = !DILocation(line: 488, column: 33, scope: !4496)
!4502 = !DILocation(line: 490, column: 18, scope: !4496)
!4503 = !DILocation(line: 490, column: 21, scope: !4496)
!4504 = !DILocation(line: 490, column: 2, scope: !4496)
!4505 = !DILocation(line: 491, column: 1, scope: !4496)
!4506 = distinct !DISubprogram(name: "arch_atomic_set", scope: !3797, file: !3797, line: 26, type: !1862, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4507)
!4507 = !{!4508, !4509}
!4508 = !DILocalVariable(name: "v", arg: 1, scope: !4506, file: !3797, line: 26, type: !1864)
!4509 = !DILocalVariable(name: "i", arg: 2, scope: !4506, file: !3797, line: 26, type: !124)
!4510 = !DILocation(line: 26, column: 55, scope: !4506)
!4511 = !DILocation(line: 26, column: 62, scope: !4506)
!4512 = !DILocation(line: 28, column: 2, scope: !4506)
!4513 = !DILocation(line: 28, column: 2, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4506, file: !3797, line: 28, column: 2)
!4515 = !DILocation(line: 29, column: 1, scope: !4506)
!4516 = distinct !DISubprogram(name: "rhashtable_last_table", scope: !3, file: !3, line: 211, type: !4517, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4519)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!49, !165, !49}
!4519 = !{!4520, !4521, !4522, !4523}
!4520 = !DILocalVariable(name: "ht", arg: 1, scope: !4516, file: !3, line: 211, type: !165)
!4521 = !DILocalVariable(name: "tbl", arg: 2, scope: !4516, file: !3, line: 212, type: !49)
!4522 = !DILocalVariable(name: "new_tbl", scope: !4516, file: !3, line: 214, type: !49)
!4523 = !DILocalVariable(name: "__UNIQUE_ID_rcu326", scope: !4524, file: !3, line: 218, type: !49)
!4524 = distinct !DILexicalBlock(scope: !4525, file: !3, line: 218, column: 9)
!4525 = distinct !DILexicalBlock(scope: !4516, file: !3, line: 216, column: 5)
!4526 = !DILocation(line: 211, column: 70, scope: !4516)
!4527 = !DILocation(line: 212, column: 30, scope: !4516)
!4528 = !DILocation(line: 214, column: 2, scope: !4516)
!4529 = !DILocation(line: 214, column: 23, scope: !4516)
!4530 = !DILocation(line: 216, column: 2, scope: !4516)
!4531 = !DILocation(line: 217, column: 13, scope: !4525)
!4532 = !DILocation(line: 217, column: 11, scope: !4525)
!4533 = !DILocation(line: 218, column: 9, scope: !4524)
!4534 = !DILocation(line: 218, column: 9, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 218, column: 9)
!4536 = !DILocation(line: 218, column: 9, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4535, file: !3, line: 218, column: 9)
!4538 = !DILocation(line: 218, column: 9, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 218, column: 9)
!4540 = !DILocation(line: 218, column: 9, scope: !4525)
!4541 = !DILocation(line: 218, column: 7, scope: !4525)
!4542 = !DILocation(line: 219, column: 2, scope: !4525)
!4543 = !DILocation(line: 219, column: 11, scope: !4516)
!4544 = distinct !{!4544, !4530, !4545, !455, !456}
!4545 = !DILocation(line: 219, column: 14, scope: !4516)
!4546 = !DILocation(line: 221, column: 9, scope: !4516)
!4547 = !DILocation(line: 222, column: 1, scope: !4516)
!4548 = !DILocation(line: 221, column: 2, scope: !4516)
!4549 = distinct !DISubprogram(name: "rhashtable_rehash_alloc", scope: !3, file: !3, line: 354, type: !4550, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4552)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!124, !165, !49, !7}
!4552 = !{!4553, !4554, !4555, !4556, !4557}
!4553 = !DILocalVariable(name: "ht", arg: 1, scope: !4549, file: !3, line: 354, type: !165)
!4554 = !DILocalVariable(name: "old_tbl", arg: 2, scope: !4549, file: !3, line: 355, type: !49)
!4555 = !DILocalVariable(name: "size", arg: 3, scope: !4549, file: !3, line: 356, type: !7)
!4556 = !DILocalVariable(name: "new_tbl", scope: !4549, file: !3, line: 358, type: !49)
!4557 = !DILocalVariable(name: "err", scope: !4549, file: !3, line: 359, type: !124)
!4558 = !DILocation(line: 354, column: 55, scope: !4549)
!4559 = !DILocation(line: 355, column: 29, scope: !4549)
!4560 = !DILocation(line: 356, column: 21, scope: !4549)
!4561 = !DILocation(line: 358, column: 2, scope: !4549)
!4562 = !DILocation(line: 358, column: 23, scope: !4549)
!4563 = !DILocation(line: 359, column: 2, scope: !4549)
!4564 = !DILocation(line: 359, column: 6, scope: !4549)
!4565 = !DILocation(line: 363, column: 31, scope: !4549)
!4566 = !DILocation(line: 363, column: 35, scope: !4549)
!4567 = !DILocation(line: 363, column: 12, scope: !4549)
!4568 = !DILocation(line: 363, column: 10, scope: !4549)
!4569 = !DILocation(line: 364, column: 6, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4549, file: !3, line: 364, column: 6)
!4571 = !DILocation(line: 364, column: 14, scope: !4570)
!4572 = !DILocation(line: 364, column: 6, scope: !4549)
!4573 = !DILocation(line: 365, column: 3, scope: !4570)
!4574 = !DILocation(line: 367, column: 33, scope: !4549)
!4575 = !DILocation(line: 367, column: 37, scope: !4549)
!4576 = !DILocation(line: 367, column: 46, scope: !4549)
!4577 = !DILocation(line: 367, column: 8, scope: !4549)
!4578 = !DILocation(line: 367, column: 6, scope: !4549)
!4579 = !DILocation(line: 368, column: 6, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4549, file: !3, line: 368, column: 6)
!4581 = !DILocation(line: 368, column: 6, scope: !4549)
!4582 = !DILocation(line: 369, column: 21, scope: !4580)
!4583 = !DILocation(line: 369, column: 3, scope: !4580)
!4584 = !DILocation(line: 371, column: 9, scope: !4549)
!4585 = !DILocation(line: 371, column: 2, scope: !4549)
!4586 = !DILocation(line: 372, column: 1, scope: !4549)
!4587 = distinct !DISubprogram(name: "rht_shrink_below_30", scope: !51, file: !51, line: 195, type: !3690, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4588)
!4588 = !{!4589, !4590}
!4589 = !DILocalVariable(name: "ht", arg: 1, scope: !4587, file: !51, line: 195, type: !1108)
!4590 = !DILocalVariable(name: "tbl", arg: 2, scope: !4587, file: !51, line: 196, type: !342)
!4591 = !DILocation(line: 195, column: 65, scope: !4587)
!4592 = !DILocation(line: 196, column: 39, scope: !4587)
!4593 = !DILocation(line: 199, column: 22, scope: !4587)
!4594 = !DILocation(line: 199, column: 26, scope: !4587)
!4595 = !DILocation(line: 199, column: 9, scope: !4587)
!4596 = !DILocation(line: 199, column: 37, scope: !4587)
!4597 = !DILocation(line: 199, column: 42, scope: !4587)
!4598 = !DILocation(line: 199, column: 47, scope: !4587)
!4599 = !DILocation(line: 199, column: 51, scope: !4587)
!4600 = !DILocation(line: 199, column: 34, scope: !4587)
!4601 = !DILocation(line: 199, column: 57, scope: !4587)
!4602 = !DILocation(line: 200, column: 9, scope: !4587)
!4603 = !DILocation(line: 200, column: 14, scope: !4587)
!4604 = !DILocation(line: 200, column: 21, scope: !4587)
!4605 = !DILocation(line: 200, column: 25, scope: !4587)
!4606 = !DILocation(line: 200, column: 27, scope: !4587)
!4607 = !DILocation(line: 200, column: 19, scope: !4587)
!4608 = !DILocation(line: 0, scope: !4587)
!4609 = !DILocation(line: 199, column: 2, scope: !4587)
!4610 = distinct !DISubprogram(name: "rhashtable_shrink", scope: !3, file: !3, line: 390, type: !4611, scopeLine: 391, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4613)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!124, !165}
!4613 = !{!4614, !4615, !4616, !4617}
!4614 = !DILocalVariable(name: "ht", arg: 1, scope: !4610, file: !3, line: 390, type: !165)
!4615 = !DILocalVariable(name: "old_tbl", scope: !4610, file: !3, line: 392, type: !49)
!4616 = !DILocalVariable(name: "nelems", scope: !4610, file: !3, line: 393, type: !7)
!4617 = !DILocalVariable(name: "size", scope: !4610, file: !3, line: 394, type: !7)
!4618 = !DILocation(line: 390, column: 49, scope: !4610)
!4619 = !DILocation(line: 392, column: 2, scope: !4610)
!4620 = !DILocation(line: 392, column: 23, scope: !4610)
!4621 = !DILocation(line: 392, column: 33, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4610, file: !3, line: 392, column: 33)
!4623 = !DILocation(line: 392, column: 33, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4622, file: !3, line: 392, column: 33)
!4625 = !DILocation(line: 393, column: 2, scope: !4610)
!4626 = !DILocation(line: 393, column: 15, scope: !4610)
!4627 = !DILocation(line: 393, column: 37, scope: !4610)
!4628 = !DILocation(line: 393, column: 41, scope: !4610)
!4629 = !DILocation(line: 393, column: 24, scope: !4610)
!4630 = !DILocation(line: 394, column: 2, scope: !4610)
!4631 = !DILocation(line: 394, column: 15, scope: !4610)
!4632 = !DILocation(line: 396, column: 6, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4610, file: !3, line: 396, column: 6)
!4634 = !DILocation(line: 396, column: 6, scope: !4610)
!4635 = !DILocation(line: 397, column: 10, scope: !4633)
!4636 = !DILocation(line: 397, column: 8, scope: !4633)
!4637 = !DILocation(line: 397, column: 3, scope: !4633)
!4638 = !DILocation(line: 398, column: 6, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4610, file: !3, line: 398, column: 6)
!4640 = !DILocation(line: 398, column: 13, scope: !4639)
!4641 = !DILocation(line: 398, column: 17, scope: !4639)
!4642 = !DILocation(line: 398, column: 19, scope: !4639)
!4643 = !DILocation(line: 398, column: 11, scope: !4639)
!4644 = !DILocation(line: 398, column: 6, scope: !4610)
!4645 = !DILocation(line: 399, column: 10, scope: !4639)
!4646 = !DILocation(line: 399, column: 14, scope: !4639)
!4647 = !DILocation(line: 399, column: 16, scope: !4639)
!4648 = !DILocation(line: 399, column: 8, scope: !4639)
!4649 = !DILocation(line: 399, column: 3, scope: !4639)
!4650 = !DILocation(line: 401, column: 6, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4610, file: !3, line: 401, column: 6)
!4652 = !DILocation(line: 401, column: 15, scope: !4651)
!4653 = !DILocation(line: 401, column: 23, scope: !4651)
!4654 = !DILocation(line: 401, column: 20, scope: !4651)
!4655 = !DILocation(line: 401, column: 6, scope: !4610)
!4656 = !DILocation(line: 402, column: 3, scope: !4651)
!4657 = !DILocation(line: 404, column: 6, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 404, column: 6)
!4659 = distinct !DILexicalBlock(scope: !4610, file: !3, line: 404, column: 6)
!4660 = !DILocation(line: 404, column: 6, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 404, column: 6)
!4662 = !DILocation(line: 404, column: 6, scope: !4659)
!4663 = !DILocation(line: 404, column: 6, scope: !4610)
!4664 = !DILocation(line: 405, column: 3, scope: !4659)
!4665 = !DILocation(line: 407, column: 33, scope: !4610)
!4666 = !DILocation(line: 407, column: 37, scope: !4610)
!4667 = !DILocation(line: 407, column: 46, scope: !4610)
!4668 = !DILocation(line: 407, column: 9, scope: !4610)
!4669 = !DILocation(line: 407, column: 2, scope: !4610)
!4670 = !DILocation(line: 408, column: 1, scope: !4610)
!4671 = distinct !DISubprogram(name: "rhashtable_rehash_table", scope: !3, file: !3, line: 315, type: !4611, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4672)
!4672 = !{!4673, !4674, !4675, !4676, !4677, !4678, !4679, !4681, !4684}
!4673 = !DILocalVariable(name: "ht", arg: 1, scope: !4671, file: !3, line: 315, type: !165)
!4674 = !DILocalVariable(name: "old_tbl", scope: !4671, file: !3, line: 317, type: !49)
!4675 = !DILocalVariable(name: "new_tbl", scope: !4671, file: !3, line: 318, type: !49)
!4676 = !DILocalVariable(name: "walker", scope: !4671, file: !3, line: 319, type: !275)
!4677 = !DILocalVariable(name: "old_hash", scope: !4671, file: !3, line: 320, type: !7)
!4678 = !DILocalVariable(name: "err", scope: !4671, file: !3, line: 321, type: !124)
!4679 = !DILocalVariable(name: "_r_a_p__v", scope: !4680, file: !3, line: 335, type: !121)
!4680 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 335, column: 2)
!4681 = !DILocalVariable(name: "__mptr", scope: !4682, file: !3, line: 338, type: !48)
!4682 = distinct !DILexicalBlock(scope: !4683, file: !3, line: 338, column: 2)
!4683 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 338, column: 2)
!4684 = !DILocalVariable(name: "__mptr", scope: !4685, file: !3, line: 338, type: !48)
!4685 = distinct !DILexicalBlock(scope: !4686, file: !3, line: 338, column: 2)
!4686 = distinct !DILexicalBlock(scope: !4683, file: !3, line: 338, column: 2)
!4687 = !DILocation(line: 315, column: 55, scope: !4671)
!4688 = !DILocation(line: 317, column: 2, scope: !4671)
!4689 = !DILocation(line: 317, column: 23, scope: !4671)
!4690 = !DILocation(line: 317, column: 33, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 317, column: 33)
!4692 = !DILocation(line: 317, column: 33, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4691, file: !3, line: 317, column: 33)
!4694 = !DILocation(line: 318, column: 2, scope: !4671)
!4695 = !DILocation(line: 318, column: 23, scope: !4671)
!4696 = !DILocation(line: 319, column: 2, scope: !4671)
!4697 = !DILocation(line: 319, column: 28, scope: !4671)
!4698 = !DILocation(line: 320, column: 2, scope: !4671)
!4699 = !DILocation(line: 320, column: 15, scope: !4671)
!4700 = !DILocation(line: 321, column: 2, scope: !4671)
!4701 = !DILocation(line: 321, column: 6, scope: !4671)
!4702 = !DILocation(line: 323, column: 12, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 323, column: 12)
!4704 = !DILocation(line: 323, column: 12, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4703, file: !3, line: 323, column: 12)
!4706 = !DILocation(line: 323, column: 10, scope: !4671)
!4707 = !DILocation(line: 324, column: 7, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 324, column: 6)
!4709 = !DILocation(line: 324, column: 6, scope: !4671)
!4710 = !DILocation(line: 325, column: 3, scope: !4708)
!4711 = !DILocation(line: 327, column: 16, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 327, column: 2)
!4713 = !DILocation(line: 327, column: 7, scope: !4712)
!4714 = !DILocation(line: 327, column: 21, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4712, file: !3, line: 327, column: 2)
!4716 = !DILocation(line: 327, column: 32, scope: !4715)
!4717 = !DILocation(line: 327, column: 41, scope: !4715)
!4718 = !DILocation(line: 327, column: 30, scope: !4715)
!4719 = !DILocation(line: 327, column: 2, scope: !4712)
!4720 = !DILocation(line: 328, column: 33, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 327, column: 59)
!4722 = !DILocation(line: 328, column: 37, scope: !4721)
!4723 = !DILocation(line: 328, column: 9, scope: !4721)
!4724 = !DILocation(line: 328, column: 7, scope: !4721)
!4725 = !DILocation(line: 329, column: 7, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4721, file: !3, line: 329, column: 7)
!4727 = !DILocation(line: 329, column: 7, scope: !4721)
!4728 = !DILocation(line: 330, column: 11, scope: !4726)
!4729 = !DILocation(line: 330, column: 4, scope: !4726)
!4730 = !DILocation(line: 331, column: 3, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4721, file: !3, line: 331, column: 3)
!4732 = !DILocation(line: 332, column: 2, scope: !4721)
!4733 = !DILocation(line: 327, column: 55, scope: !4715)
!4734 = !DILocation(line: 327, column: 2, scope: !4715)
!4735 = distinct !{!4735, !4719, !4736, !455, !456}
!4736 = !DILocation(line: 332, column: 2, scope: !4712)
!4737 = !DILocation(line: 335, column: 2, scope: !4671)
!4738 = !DILocation(line: 335, column: 2, scope: !4680)
!4739 = !DILocation(line: 335, column: 2, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4680, file: !3, line: 335, column: 2)
!4741 = !DILocation(line: 335, column: 2, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4740, file: !3, line: 335, column: 2)
!4743 = !DILocation(line: 335, column: 2, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4742, file: !3, line: 335, column: 2)
!4745 = !DILocation(line: 335, column: 2, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4742, file: !3, line: 335, column: 2)
!4747 = !DILocation(line: 335, column: 2, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4740, file: !3, line: 335, column: 2)
!4749 = !DILocation(line: 335, column: 2, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 335, column: 2)
!4751 = !DILocation(line: 335, column: 2, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 335, column: 2)
!4753 = !DILocation(line: 335, column: 2, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4752, file: !3, line: 335, column: 2)
!4755 = !{i64 2154149888}
!4756 = !DILocation(line: 335, column: 2, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4752, file: !3, line: 335, column: 2)
!4758 = !DILocation(line: 335, column: 2, scope: !4759)
!4759 = distinct !DILexicalBlock(scope: !4757, file: !3, line: 335, column: 2)
!4760 = !DILocation(line: 335, column: 2, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4757, file: !3, line: 335, column: 2)
!4762 = !DILocation(line: 337, column: 13, scope: !4671)
!4763 = !DILocation(line: 337, column: 17, scope: !4671)
!4764 = !DILocation(line: 337, column: 2, scope: !4671)
!4765 = !DILocation(line: 338, column: 2, scope: !4682)
!4766 = !DILocation(line: 338, column: 2, scope: !4683)
!4767 = !DILocation(line: 338, column: 2, scope: !4686)
!4768 = !DILocation(line: 339, column: 3, scope: !4686)
!4769 = !DILocation(line: 339, column: 11, scope: !4686)
!4770 = !DILocation(line: 339, column: 15, scope: !4686)
!4771 = !DILocation(line: 338, column: 2, scope: !4685)
!4772 = distinct !{!4772, !4766, !4773, !455, !456}
!4773 = !DILocation(line: 339, column: 17, scope: !4683)
!4774 = !DILocation(line: 348, column: 12, scope: !4671)
!4775 = !DILocation(line: 348, column: 21, scope: !4671)
!4776 = !DILocation(line: 348, column: 2, scope: !4671)
!4777 = !DILocation(line: 349, column: 15, scope: !4671)
!4778 = !DILocation(line: 349, column: 19, scope: !4671)
!4779 = !DILocation(line: 349, column: 2, scope: !4671)
!4780 = !DILocation(line: 351, column: 9, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 351, column: 9)
!4782 = !DILocation(line: 351, column: 9, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4781, file: !3, line: 351, column: 9)
!4784 = !DILocation(line: 351, column: 9, scope: !4671)
!4785 = !DILocation(line: 351, column: 2, scope: !4671)
!4786 = !DILocation(line: 352, column: 1, scope: !4671)
!4787 = distinct !DISubprogram(name: "rhashtable_rehash_chain", scope: !3, file: !3, line: 276, type: !4788, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4790)
!4788 = !DISubroutineType(types: !4789)
!4789 = !{!124, !165, !7}
!4790 = !{!4791, !4792, !4793, !4794, !4795, !4796}
!4791 = !DILocalVariable(name: "ht", arg: 1, scope: !4787, file: !3, line: 276, type: !165)
!4792 = !DILocalVariable(name: "old_hash", arg: 2, scope: !4787, file: !3, line: 277, type: !7)
!4793 = !DILocalVariable(name: "old_tbl", scope: !4787, file: !3, line: 279, type: !49)
!4794 = !DILocalVariable(name: "bkt", scope: !4787, file: !3, line: 280, type: !341)
!4795 = !DILocalVariable(name: "flags", scope: !4787, file: !3, line: 281, type: !111)
!4796 = !DILocalVariable(name: "err", scope: !4787, file: !3, line: 282, type: !124)
!4797 = !DILocation(line: 276, column: 55, scope: !4787)
!4798 = !DILocation(line: 277, column: 22, scope: !4787)
!4799 = !DILocation(line: 279, column: 2, scope: !4787)
!4800 = !DILocation(line: 279, column: 23, scope: !4787)
!4801 = !DILocation(line: 279, column: 33, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4787, file: !3, line: 279, column: 33)
!4803 = !DILocation(line: 279, column: 33, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 279, column: 33)
!4805 = !DILocation(line: 280, column: 2, scope: !4787)
!4806 = !DILocation(line: 280, column: 33, scope: !4787)
!4807 = !DILocation(line: 280, column: 54, scope: !4787)
!4808 = !DILocation(line: 280, column: 63, scope: !4787)
!4809 = !DILocation(line: 280, column: 39, scope: !4787)
!4810 = !DILocation(line: 281, column: 2, scope: !4787)
!4811 = !DILocation(line: 281, column: 16, scope: !4787)
!4812 = !DILocation(line: 282, column: 2, scope: !4787)
!4813 = !DILocation(line: 282, column: 6, scope: !4787)
!4814 = !DILocation(line: 284, column: 7, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4787, file: !3, line: 284, column: 6)
!4816 = !DILocation(line: 284, column: 6, scope: !4787)
!4817 = !DILocation(line: 285, column: 3, scope: !4815)
!4818 = !DILocation(line: 286, column: 19, scope: !4787)
!4819 = !DILocation(line: 286, column: 28, scope: !4787)
!4820 = !DILocation(line: 286, column: 10, scope: !4787)
!4821 = !DILocation(line: 286, column: 8, scope: !4787)
!4822 = !DILocation(line: 288, column: 2, scope: !4787)
!4823 = !DILocation(line: 288, column: 39, scope: !4787)
!4824 = !DILocation(line: 288, column: 43, scope: !4787)
!4825 = !DILocation(line: 288, column: 48, scope: !4787)
!4826 = !DILocation(line: 288, column: 17, scope: !4787)
!4827 = !DILocation(line: 288, column: 15, scope: !4787)
!4828 = !DILocation(line: 288, column: 9, scope: !4787)
!4829 = distinct !{!4829, !4822, !4830, !455, !456}
!4830 = !DILocation(line: 289, column: 3, scope: !4787)
!4831 = !DILocation(line: 291, column: 6, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4787, file: !3, line: 291, column: 6)
!4833 = !DILocation(line: 291, column: 10, scope: !4832)
!4834 = !DILocation(line: 291, column: 6, scope: !4787)
!4835 = !DILocation(line: 292, column: 7, scope: !4832)
!4836 = !DILocation(line: 292, column: 3, scope: !4832)
!4837 = !DILocation(line: 293, column: 13, scope: !4787)
!4838 = !DILocation(line: 293, column: 22, scope: !4787)
!4839 = !DILocation(line: 293, column: 27, scope: !4787)
!4840 = !DILocation(line: 293, column: 2, scope: !4787)
!4841 = !DILocation(line: 295, column: 9, scope: !4787)
!4842 = !DILocation(line: 295, column: 2, scope: !4787)
!4843 = !DILocation(line: 296, column: 1, scope: !4787)
!4844 = !DISubprogram(name: "call_rcu", scope: !368, file: !368, line: 42, type: !4845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4845 = !DISubroutineType(types: !4846)
!4846 = !{null, !71, !152}
!4847 = distinct !DISubprogram(name: "rhashtable_rehash_one", scope: !3, file: !3, line: 224, type: !4848, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4850)
!4848 = !DISubroutineType(types: !4849)
!4849 = !{!124, !165, !341, !7}
!4850 = !{!4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4866}
!4851 = !DILocalVariable(name: "ht", arg: 1, scope: !4847, file: !3, line: 224, type: !165)
!4852 = !DILocalVariable(name: "bkt", arg: 2, scope: !4847, file: !3, line: 225, type: !341)
!4853 = !DILocalVariable(name: "old_hash", arg: 3, scope: !4847, file: !3, line: 226, type: !7)
!4854 = !DILocalVariable(name: "old_tbl", scope: !4847, file: !3, line: 228, type: !49)
!4855 = !DILocalVariable(name: "new_tbl", scope: !4847, file: !3, line: 229, type: !49)
!4856 = !DILocalVariable(name: "err", scope: !4847, file: !3, line: 230, type: !124)
!4857 = !DILocalVariable(name: "head", scope: !4847, file: !3, line: 231, type: !93)
!4858 = !DILocalVariable(name: "next", scope: !4847, file: !3, line: 231, type: !93)
!4859 = !DILocalVariable(name: "entry", scope: !4847, file: !3, line: 231, type: !93)
!4860 = !DILocalVariable(name: "pprev", scope: !4847, file: !3, line: 232, type: !2642)
!4861 = !DILocalVariable(name: "new_hash", scope: !4847, file: !3, line: 233, type: !7)
!4862 = !DILocalVariable(name: "flags", scope: !4847, file: !3, line: 234, type: !111)
!4863 = !DILocalVariable(name: "_r_a_p__v", scope: !4864, file: !3, line: 267, type: !121)
!4864 = distinct !DILexicalBlock(scope: !4865, file: !3, line: 267, column: 3)
!4865 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 266, column: 6)
!4866 = !DILabel(scope: !4847, name: "out", file: !3, line: 272)
!4867 = !DILocation(line: 224, column: 53, scope: !4847)
!4868 = !DILocation(line: 225, column: 37, scope: !4847)
!4869 = !DILocation(line: 226, column: 19, scope: !4847)
!4870 = !DILocation(line: 228, column: 2, scope: !4847)
!4871 = !DILocation(line: 228, column: 23, scope: !4847)
!4872 = !DILocation(line: 228, column: 33, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 228, column: 33)
!4874 = !DILocation(line: 228, column: 33, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4873, file: !3, line: 228, column: 33)
!4876 = !DILocation(line: 229, column: 2, scope: !4847)
!4877 = !DILocation(line: 229, column: 23, scope: !4847)
!4878 = !DILocation(line: 229, column: 55, scope: !4847)
!4879 = !DILocation(line: 229, column: 59, scope: !4847)
!4880 = !DILocation(line: 229, column: 33, scope: !4847)
!4881 = !DILocation(line: 230, column: 2, scope: !4847)
!4882 = !DILocation(line: 230, column: 6, scope: !4847)
!4883 = !DILocation(line: 231, column: 2, scope: !4847)
!4884 = !DILocation(line: 231, column: 21, scope: !4847)
!4885 = !DILocation(line: 231, column: 28, scope: !4847)
!4886 = !DILocation(line: 231, column: 35, scope: !4847)
!4887 = !DILocation(line: 232, column: 2, scope: !4847)
!4888 = !DILocation(line: 232, column: 28, scope: !4847)
!4889 = !DILocation(line: 233, column: 2, scope: !4847)
!4890 = !DILocation(line: 233, column: 15, scope: !4847)
!4891 = !DILocation(line: 234, column: 2, scope: !4847)
!4892 = !DILocation(line: 234, column: 16, scope: !4847)
!4893 = !DILocation(line: 236, column: 6, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 236, column: 6)
!4895 = !DILocation(line: 236, column: 15, scope: !4894)
!4896 = !DILocation(line: 236, column: 6, scope: !4847)
!4897 = !DILocation(line: 237, column: 3, scope: !4894)
!4898 = !DILocation(line: 239, column: 6, scope: !4847)
!4899 = !DILocation(line: 241, column: 2, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 241, column: 2)
!4901 = !DILocation(line: 241, column: 2, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4900, file: !3, line: 241, column: 2)
!4903 = !DILocation(line: 243, column: 7, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4902, file: !3, line: 242, column: 25)
!4905 = !DILocation(line: 244, column: 10, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !4904, file: !3, line: 244, column: 10)
!4907 = !DILocation(line: 244, column: 10, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4906, file: !3, line: 244, column: 10)
!4909 = !DILocation(line: 244, column: 8, scope: !4904)
!4910 = !DILocation(line: 246, column: 22, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4904, file: !3, line: 246, column: 7)
!4912 = !DILocation(line: 246, column: 7, scope: !4911)
!4913 = !DILocation(line: 246, column: 7, scope: !4904)
!4914 = !DILocation(line: 247, column: 4, scope: !4911)
!4915 = !DILocation(line: 249, column: 12, scope: !4904)
!4916 = !DILocation(line: 249, column: 19, scope: !4904)
!4917 = !DILocation(line: 249, column: 9, scope: !4904)
!4918 = !DILocation(line: 250, column: 2, scope: !4904)
!4919 = !DILocation(line: 241, column: 2, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4902, file: !3, line: 241, column: 2)
!4921 = !DILocation(line: 241, column: 2, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4920, file: !3, line: 241, column: 2)
!4923 = distinct !{!4923, !4899, !4924, !455, !456}
!4924 = !DILocation(line: 250, column: 2, scope: !4900)
!4925 = !DILocation(line: 252, column: 6, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 252, column: 6)
!4927 = !DILocation(line: 252, column: 6, scope: !4847)
!4928 = !DILocation(line: 253, column: 3, scope: !4926)
!4929 = !DILocation(line: 255, column: 25, scope: !4847)
!4930 = !DILocation(line: 255, column: 29, scope: !4847)
!4931 = !DILocation(line: 255, column: 38, scope: !4847)
!4932 = !DILocation(line: 255, column: 13, scope: !4847)
!4933 = !DILocation(line: 255, column: 11, scope: !4847)
!4934 = !DILocation(line: 257, column: 26, scope: !4847)
!4935 = !DILocation(line: 257, column: 36, scope: !4847)
!4936 = !DILocation(line: 257, column: 45, scope: !4847)
!4937 = !DILocation(line: 257, column: 53, scope: !4847)
!4938 = !DILocation(line: 257, column: 10, scope: !4847)
!4939 = !DILocation(line: 257, column: 8, scope: !4847)
!4940 = !DILocation(line: 260, column: 17, scope: !4847)
!4941 = !DILocation(line: 260, column: 26, scope: !4847)
!4942 = !DILocation(line: 260, column: 36, scope: !4847)
!4943 = !DILocation(line: 260, column: 34, scope: !4847)
!4944 = !DILocation(line: 260, column: 46, scope: !4847)
!4945 = !DILocation(line: 260, column: 55, scope: !4847)
!4946 = !DILocation(line: 260, column: 9, scope: !4847)
!4947 = !DILocation(line: 260, column: 7, scope: !4847)
!4948 = !DILocation(line: 262, column: 2, scope: !4847)
!4949 = !DILocation(line: 262, column: 2, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 262, column: 2)
!4951 = !DILocation(line: 262, column: 2, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4950, file: !3, line: 262, column: 2)
!4953 = !DILocation(line: 262, column: 2, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4952, file: !3, line: 262, column: 2)
!4955 = !DILocation(line: 262, column: 2, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4952, file: !3, line: 262, column: 2)
!4957 = !DILocation(line: 264, column: 20, scope: !4847)
!4958 = !DILocation(line: 264, column: 30, scope: !4847)
!4959 = !DILocation(line: 264, column: 39, scope: !4847)
!4960 = !DILocation(line: 264, column: 47, scope: !4847)
!4961 = !DILocation(line: 264, column: 58, scope: !4847)
!4962 = !DILocation(line: 264, column: 65, scope: !4847)
!4963 = !DILocation(line: 264, column: 2, scope: !4847)
!4964 = !DILocation(line: 266, column: 6, scope: !4865)
!4965 = !DILocation(line: 266, column: 6, scope: !4847)
!4966 = !DILocation(line: 267, column: 3, scope: !4865)
!4967 = !DILocation(line: 267, column: 3, scope: !4864)
!4968 = !DILocation(line: 267, column: 3, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4864, file: !3, line: 267, column: 3)
!4970 = !DILocation(line: 267, column: 3, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4969, file: !3, line: 267, column: 3)
!4972 = !DILocation(line: 267, column: 3, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4971, file: !3, line: 267, column: 3)
!4974 = !DILocation(line: 267, column: 3, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4971, file: !3, line: 267, column: 3)
!4976 = !DILocation(line: 267, column: 3, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4969, file: !3, line: 267, column: 3)
!4978 = !DILocation(line: 267, column: 3, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4977, file: !3, line: 267, column: 3)
!4980 = !DILocation(line: 267, column: 3, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4977, file: !3, line: 267, column: 3)
!4982 = !DILocation(line: 267, column: 3, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4981, file: !3, line: 267, column: 3)
!4984 = !{i64 2154138591}
!4985 = !DILocation(line: 267, column: 3, scope: !4986)
!4986 = distinct !DILexicalBlock(scope: !4981, file: !3, line: 267, column: 3)
!4987 = !DILocation(line: 267, column: 3, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 267, column: 3)
!4989 = !DILocation(line: 267, column: 3, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 267, column: 3)
!4991 = !DILocation(line: 270, column: 21, scope: !4865)
!4992 = !DILocation(line: 270, column: 26, scope: !4865)
!4993 = !DILocation(line: 270, column: 3, scope: !4865)
!4994 = !DILocation(line: 272, column: 1, scope: !4847)
!4995 = !DILocation(line: 273, column: 9, scope: !4847)
!4996 = !DILocation(line: 274, column: 1, scope: !4847)
!4997 = !DILocation(line: 273, column: 2, scope: !4847)
!4998 = distinct !DISubprogram(name: "head_hashfn", scope: !3, file: !3, line: 37, type: !4999, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5001)
!4999 = !DISubroutineType(types: !5000)
!5000 = !{!56, !165, !342, !998}
!5001 = !{!5002, !5003, !5004}
!5002 = !DILocalVariable(name: "ht", arg: 1, scope: !4998, file: !3, line: 37, type: !165)
!5003 = !DILocalVariable(name: "tbl", arg: 2, scope: !4998, file: !3, line: 38, type: !342)
!5004 = !DILocalVariable(name: "he", arg: 3, scope: !4998, file: !3, line: 39, type: !998)
!5005 = !DILocation(line: 37, column: 43, scope: !4998)
!5006 = !DILocation(line: 38, column: 37, scope: !4998)
!5007 = !DILocation(line: 39, column: 35, scope: !4998)
!5008 = !DILocation(line: 41, column: 25, scope: !4998)
!5009 = !DILocation(line: 41, column: 29, scope: !4998)
!5010 = !DILocation(line: 41, column: 34, scope: !4998)
!5011 = !DILocation(line: 41, column: 38, scope: !4998)
!5012 = !DILocation(line: 41, column: 42, scope: !4998)
!5013 = !DILocation(line: 41, column: 9, scope: !4998)
!5014 = !DILocation(line: 41, column: 2, scope: !4998)
!5015 = distinct !DISubprogram(name: "rht_lock_nested", scope: !51, file: !51, line: 337, type: !5016, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5018)
!5016 = !DISubroutineType(types: !5017)
!5017 = !{!111, !49, !341, !7}
!5018 = !{!5019, !5020, !5021, !5022, !5023, !5027}
!5019 = !DILocalVariable(name: "tbl", arg: 1, scope: !5015, file: !51, line: 337, type: !49)
!5020 = !DILocalVariable(name: "bucket", arg: 2, scope: !5015, file: !51, line: 338, type: !341)
!5021 = !DILocalVariable(name: "subclass", arg: 3, scope: !5015, file: !51, line: 339, type: !7)
!5022 = !DILocalVariable(name: "flags", scope: !5015, file: !51, line: 341, type: !111)
!5023 = !DILocalVariable(name: "__dummy", scope: !5024, file: !51, line: 343, type: !111)
!5024 = distinct !DILexicalBlock(scope: !5025, file: !51, line: 343, column: 2)
!5025 = distinct !DILexicalBlock(scope: !5026, file: !51, line: 343, column: 2)
!5026 = distinct !DILexicalBlock(scope: !5015, file: !51, line: 343, column: 2)
!5027 = !DILocalVariable(name: "__dummy2", scope: !5024, file: !51, line: 343, type: !111)
!5028 = !DILocation(line: 337, column: 66, scope: !5015)
!5029 = !DILocation(line: 338, column: 37, scope: !5015)
!5030 = !DILocation(line: 339, column: 19, scope: !5015)
!5031 = !DILocation(line: 341, column: 2, scope: !5015)
!5032 = !DILocation(line: 341, column: 16, scope: !5015)
!5033 = !DILocation(line: 343, column: 2, scope: !5015)
!5034 = !DILocation(line: 343, column: 2, scope: !5026)
!5035 = !DILocation(line: 343, column: 2, scope: !5024)
!5036 = !DILocation(line: 343, column: 2, scope: !5025)
!5037 = !DILocation(line: 344, column: 36, scope: !5015)
!5038 = !DILocation(line: 344, column: 2, scope: !5015)
!5039 = !DILocation(line: 345, column: 2, scope: !5015)
!5040 = !DILocation(line: 345, column: 2, scope: !5041)
!5041 = distinct !DILexicalBlock(scope: !5015, file: !51, line: 345, column: 2)
!5042 = !DILocation(line: 346, column: 9, scope: !5015)
!5043 = !DILocation(line: 347, column: 1, scope: !5015)
!5044 = !DILocation(line: 346, column: 2, scope: !5015)
!5045 = !DILocation(line: 401, column: 59, scope: !396)
!5046 = !DILocation(line: 402, column: 41, scope: !396)
!5047 = !DILocation(line: 403, column: 29, scope: !396)
!5048 = !DILocation(line: 404, column: 24, scope: !396)
!5049 = !DILocation(line: 406, column: 21, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !396, file: !51, line: 406, column: 6)
!5051 = !DILocation(line: 406, column: 6, scope: !5050)
!5052 = !DILocation(line: 406, column: 6, scope: !396)
!5053 = !DILocation(line: 407, column: 7, scope: !5050)
!5054 = !DILocation(line: 407, column: 3, scope: !5050)
!5055 = !DILocation(line: 408, column: 2, scope: !396)
!5056 = !DILocation(line: 408, column: 2, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !396, file: !51, line: 408, column: 2)
!5058 = !DILocation(line: 409, column: 2, scope: !396)
!5059 = !DILocation(line: 409, column: 2, scope: !405)
!5060 = !DILocation(line: 409, column: 2, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !405, file: !51, line: 409, column: 2)
!5062 = !DILocation(line: 409, column: 2, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5061, file: !51, line: 409, column: 2)
!5064 = !DILocation(line: 409, column: 2, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5063, file: !51, line: 409, column: 2)
!5066 = !DILocation(line: 409, column: 2, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5063, file: !51, line: 409, column: 2)
!5068 = !DILocation(line: 409, column: 2, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !5061, file: !51, line: 409, column: 2)
!5070 = !DILocation(line: 409, column: 2, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5069, file: !51, line: 409, column: 2)
!5072 = !DILocation(line: 409, column: 2, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !5069, file: !51, line: 409, column: 2)
!5074 = !DILocation(line: 409, column: 2, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5073, file: !51, line: 409, column: 2)
!5076 = !{i64 2154005368}
!5077 = !DILocation(line: 409, column: 2, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5073, file: !51, line: 409, column: 2)
!5079 = !DILocation(line: 409, column: 2, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5078, file: !51, line: 409, column: 2)
!5081 = !DILocation(line: 409, column: 2, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !5078, file: !51, line: 409, column: 2)
!5083 = !DILocation(line: 410, column: 2, scope: !396)
!5084 = !DILocation(line: 410, column: 2, scope: !5085)
!5085 = distinct !DILexicalBlock(scope: !396, file: !51, line: 410, column: 2)
!5086 = !{i64 2154007670}
!5087 = !DILocation(line: 410, column: 2, scope: !5088)
!5088 = distinct !DILexicalBlock(scope: !5085, file: !51, line: 410, column: 2)
!5089 = !DILocation(line: 410, column: 2, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !5088, file: !51, line: 410, column: 2)
!5091 = !{i64 2154007852}
!5092 = !DILocation(line: 412, column: 2, scope: !396)
!5093 = !DILocation(line: 412, column: 2, scope: !409)
!5094 = !DILocation(line: 412, column: 2, scope: !407)
!5095 = !DILocation(line: 412, column: 2, scope: !408)
!5096 = !DILocation(line: 412, column: 2, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !408, file: !51, line: 412, column: 2)
!5098 = !DILocation(line: 413, column: 1, scope: !396)
!5099 = distinct !DISubprogram(name: "nested_bucket_table_free", scope: !3, file: !3, line: 94, type: !2230, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5100)
!5100 = !{!5101, !5102, !5103, !5104, !5105}
!5101 = !DILocalVariable(name: "tbl", arg: 1, scope: !5099, file: !3, line: 94, type: !342)
!5102 = !DILocalVariable(name: "size", scope: !5099, file: !3, line: 96, type: !7)
!5103 = !DILocalVariable(name: "len", scope: !5099, file: !3, line: 97, type: !7)
!5104 = !DILocalVariable(name: "ntbl", scope: !5099, file: !3, line: 98, type: !112)
!5105 = !DILocalVariable(name: "i", scope: !5099, file: !3, line: 99, type: !7)
!5106 = !DILocation(line: 94, column: 65, scope: !5099)
!5107 = !DILocation(line: 96, column: 2, scope: !5099)
!5108 = !DILocation(line: 96, column: 15, scope: !5099)
!5109 = !DILocation(line: 96, column: 22, scope: !5099)
!5110 = !DILocation(line: 96, column: 27, scope: !5099)
!5111 = !DILocation(line: 96, column: 35, scope: !5099)
!5112 = !DILocation(line: 96, column: 40, scope: !5099)
!5113 = !DILocation(line: 96, column: 32, scope: !5099)
!5114 = !DILocation(line: 97, column: 2, scope: !5099)
!5115 = !DILocation(line: 97, column: 15, scope: !5099)
!5116 = !DILocation(line: 97, column: 26, scope: !5099)
!5117 = !DILocation(line: 97, column: 31, scope: !5099)
!5118 = !DILocation(line: 97, column: 23, scope: !5099)
!5119 = !DILocation(line: 98, column: 2, scope: !5099)
!5120 = !DILocation(line: 98, column: 22, scope: !5099)
!5121 = !DILocation(line: 99, column: 2, scope: !5099)
!5122 = !DILocation(line: 99, column: 15, scope: !5099)
!5123 = !DILocation(line: 101, column: 26, scope: !5099)
!5124 = !DILocation(line: 101, column: 9, scope: !5099)
!5125 = !DILocation(line: 101, column: 7, scope: !5099)
!5126 = !DILocation(line: 103, column: 9, scope: !5127)
!5127 = distinct !DILexicalBlock(scope: !5099, file: !3, line: 103, column: 2)
!5128 = !DILocation(line: 103, column: 7, scope: !5127)
!5129 = !DILocation(line: 103, column: 14, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5127, file: !3, line: 103, column: 2)
!5131 = !DILocation(line: 103, column: 18, scope: !5130)
!5132 = !DILocation(line: 103, column: 16, scope: !5130)
!5133 = !DILocation(line: 103, column: 2, scope: !5127)
!5134 = !DILocation(line: 104, column: 21, scope: !5130)
!5135 = !DILocation(line: 104, column: 28, scope: !5130)
!5136 = !DILocation(line: 104, column: 26, scope: !5130)
!5137 = !DILocation(line: 104, column: 31, scope: !5130)
!5138 = !DILocation(line: 104, column: 3, scope: !5130)
!5139 = !DILocation(line: 103, column: 24, scope: !5130)
!5140 = !DILocation(line: 103, column: 2, scope: !5130)
!5141 = distinct !{!5141, !5133, !5142, !455, !456}
!5142 = !DILocation(line: 104, column: 35, scope: !5127)
!5143 = !DILocation(line: 106, column: 8, scope: !5099)
!5144 = !DILocation(line: 106, column: 2, scope: !5099)
!5145 = !DILocation(line: 107, column: 1, scope: !5099)
!5146 = !DISubprogram(name: "kvfree", scope: !38, file: !38, line: 766, type: !4267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5147 = distinct !DISubprogram(name: "nested_table_free", scope: !3, file: !3, line: 75, type: !5148, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5150)
!5148 = !DISubroutineType(types: !5149)
!5149 = !{null, !112, !7}
!5150 = !{!5151, !5152, !5153, !5154, !5155}
!5151 = !DILocalVariable(name: "ntbl", arg: 1, scope: !5147, file: !3, line: 75, type: !112)
!5152 = !DILocalVariable(name: "size", arg: 2, scope: !5147, file: !3, line: 75, type: !7)
!5153 = !DILocalVariable(name: "shift", scope: !5147, file: !3, line: 77, type: !2259)
!5154 = !DILocalVariable(name: "len", scope: !5147, file: !3, line: 78, type: !2259)
!5155 = !DILocalVariable(name: "i", scope: !5147, file: !3, line: 79, type: !7)
!5156 = !DILocation(line: 75, column: 51, scope: !5147)
!5157 = !DILocation(line: 75, column: 70, scope: !5147)
!5158 = !DILocation(line: 77, column: 2, scope: !5147)
!5159 = !DILocation(line: 77, column: 21, scope: !5147)
!5160 = !DILocation(line: 78, column: 2, scope: !5147)
!5161 = !DILocation(line: 78, column: 21, scope: !5147)
!5162 = !DILocation(line: 79, column: 2, scope: !5147)
!5163 = !DILocation(line: 79, column: 15, scope: !5147)
!5164 = !DILocation(line: 81, column: 9, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 81, column: 9)
!5166 = !DILocation(line: 81, column: 9, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 81, column: 9)
!5168 = !DILocation(line: 81, column: 7, scope: !5147)
!5169 = !DILocation(line: 82, column: 7, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 82, column: 6)
!5171 = !DILocation(line: 82, column: 6, scope: !5147)
!5172 = !DILocation(line: 83, column: 3, scope: !5170)
!5173 = !DILocation(line: 85, column: 6, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 85, column: 6)
!5175 = !DILocation(line: 85, column: 11, scope: !5174)
!5176 = !DILocation(line: 85, column: 6, scope: !5147)
!5177 = !DILocation(line: 86, column: 8, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5174, file: !3, line: 85, column: 18)
!5179 = !DILocation(line: 87, column: 10, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5178, file: !3, line: 87, column: 3)
!5181 = !DILocation(line: 87, column: 8, scope: !5180)
!5182 = !DILocation(line: 87, column: 15, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5180, file: !3, line: 87, column: 3)
!5184 = !DILocation(line: 87, column: 17, scope: !5183)
!5185 = !DILocation(line: 87, column: 3, scope: !5180)
!5186 = !DILocation(line: 88, column: 22, scope: !5183)
!5187 = !DILocation(line: 88, column: 29, scope: !5183)
!5188 = !DILocation(line: 88, column: 27, scope: !5183)
!5189 = !DILocation(line: 88, column: 32, scope: !5183)
!5190 = !DILocation(line: 88, column: 4, scope: !5183)
!5191 = !DILocation(line: 87, column: 25, scope: !5183)
!5192 = !DILocation(line: 87, column: 3, scope: !5183)
!5193 = distinct !{!5193, !5185, !5194, !455, !456}
!5194 = !DILocation(line: 88, column: 36, scope: !5180)
!5195 = !DILocation(line: 89, column: 2, scope: !5178)
!5196 = !DILocation(line: 91, column: 8, scope: !5147)
!5197 = !DILocation(line: 91, column: 2, scope: !5147)
!5198 = !DILocation(line: 92, column: 1, scope: !5147)
