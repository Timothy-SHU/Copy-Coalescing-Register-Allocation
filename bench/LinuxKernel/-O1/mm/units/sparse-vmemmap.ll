; ModuleID = 'mm/sparse-vmemmap.c'
source_filename = "mm/sparse-vmemmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.anon.13, [0 x i64] }
%struct.anon.13 = type { %struct.anon.14, %struct.maple_tree, ptr, i64, i64, i64, i64, i64, ptr, %struct.atomic_t, %struct.atomic_t, ptr, i64, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [52 x i64], [4 x %struct.percpu_counter], ptr, %struct.mm_context_t, i64, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.uprobes_state, %struct.atomic64_t, %struct.work_struct, [48 x i8] }
%struct.anon.14 = type { %struct.atomic_t, [60 x i8] }
%struct.maple_tree = type { %union.anon.15, i32, ptr }
%union.anon.15 = type { %struct.spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.seqcount = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_context_t = type { i64, %struct.atomic64_t, i64, %struct.rw_semaphore, ptr, i64, %struct.mutex, ptr, ptr, %struct.atomic_t, i16, i16 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.atomic64_t = type { i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.nodemask_t = type { [1 x i64] }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.36 }
%union.anon.36 = type { i64 }
%struct.cpuinfo_x86 = type { %union.anon.37, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.39, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.37 = type { i32 }
%union.anon.39 = type { i64, [88 x i8] }
%struct.vmem_altmap = type { i64, i64, i64, i64, i64, i64 }
%struct.pte_t = type { i64 }
%struct.pgprot = type { i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.p4d_t = type { i64 }
%struct.pgd_t = type { i64 }
%struct.page = type { i64, %union.anon.16, %union.anon.25, %struct.atomic_t, [8 x i8] }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %union.anon.18, ptr, %union.anon.20, i64 }
%union.anon.18 = type { %struct.list_head }
%union.anon.20 = type { i64 }
%union.anon.25 = type { %struct.atomic_t }
%struct.anon.23 = type { i64 }
%struct.folio = type { %union.anon.26, %union.anon.31, %union.anon.33 }
%union.anon.26 = type { %struct.page }
%union.anon.31 = type { %struct.page }
%union.anon.33 = type { %struct.page }
%struct.dev_pagemap = type { %struct.vmem_altmap, %struct.percpu_ref, %struct.completion, i32, i32, i64, ptr, ptr, i32, %union.anon.40 }
%struct.percpu_ref = type { i64, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%union.anon.40 = type { %struct.range }
%struct.range = type { i64, i64 }
%struct.anon.41 = type { %struct.anon.42, [0 x %struct.range] }
%struct.anon.42 = type {}

@vmemmap_alloc_block.warned = internal global i8 0, align 1, !dbg !0
@.str = private unnamed_addr constant [32 x i8] c"vmemmap alloc failure: order:%u\00", align 1, !dbg !3508
@page_offset_base = external dso_local global i64, align 8
@vmemmap_verify.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !3510
@.str.1 = private unnamed_addr constant [44 x i8] c"\014[%lx-%lx] potential offnode page_structs\0A\00", align 1, !dbg !3529
@vmemmap_base = external dso_local global i64, align 8
@__default_kernel_pte_mask = external dso_local global i64, align 8
@init_mm = external dso_local global %struct.mm_struct, align 64
@.str.2 = private unnamed_addr constant [20 x i8] c"mm/sparse-vmemmap.c\00", align 1, !dbg !3534
@numa_node = external dso_local global i32, section ".data..percpu", align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"\014%pGg allocation from offline node %d\0A\00", align 1, !dbg !3537
@node_states = external dso_local global [6 x %struct.nodemask_t], align 16
@phys_base = external dso_local global i64, align 8
@altmap_alloc_block_buf.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !3543
@.str.4 = private unnamed_addr constant [55 x i8] c"\014%s: allocations must be multiple of PAGE_SIZE (%ld)\0A\00", align 1, !dbg !3563
@__func__.altmap_alloc_block_buf = private unnamed_addr constant [23 x i8] c"altmap_alloc_block_buf\00", align 1, !dbg !3568
@hugetlb_optimize_vmemmap_key = external dso_local global %struct.static_key_false, align 8
@__supported_pte_mask = external dso_local global i64, align 8
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@ptrs_per_p4d = external dso_local global i32, align 4
@pgdir_shift = external dso_local global i32, align 4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden ptr @vmemmap_alloc_block(i64 noundef %size, i32 noundef %node) #0 section ".init.text" align 16 !dbg !2 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %node.addr = alloca i32, align 4
  %gfp_mask = alloca i32, align 4
  %order = alloca i32, align 4
  %page = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3574, metadata !DIExpression()), !dbg !3590
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !3575, metadata !DIExpression()), !dbg !3591
  %call = call zeroext i1 @slab_is_available() #15, !dbg !3592
  br i1 %call, label %if.then, label %if.else, !dbg !3593

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %gfp_mask) #16, !dbg !3594
  call void @llvm.dbg.declare(metadata ptr %gfp_mask, metadata !3576, metadata !DIExpression()), !dbg !3595
  store i32 27840, ptr %gfp_mask, align 4, !dbg !3595
  call void @llvm.lifetime.start.p0(i64 4, ptr %order) #16, !dbg !3596
  call void @llvm.dbg.declare(metadata ptr %order, metadata !3579, metadata !DIExpression()), !dbg !3597
  %0 = load i64, ptr %size.addr, align 8, !dbg !3598
  %call1 = call i32 @get_order(i64 noundef %0) #17, !dbg !3599
  store i32 %call1, ptr %order, align 4, !dbg !3597
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #16, !dbg !3600
  call void @llvm.dbg.declare(metadata ptr %page, metadata !3580, metadata !DIExpression()), !dbg !3601
  %1 = load i32, ptr %node.addr, align 4, !dbg !3602
  %2 = load i32, ptr %gfp_mask, align 4, !dbg !3603
  %3 = load i32, ptr %order, align 4, !dbg !3604
  %call2 = call ptr @alloc_pages_node(i32 noundef %1, i32 noundef %2, i32 noundef %3) #15, !dbg !3605
  store ptr %call2, ptr %page, align 8, !dbg !3606
  %4 = load ptr, ptr %page, align 8, !dbg !3607
  %tobool = icmp ne ptr %4, null, !dbg !3607
  br i1 %tobool, label %if.then3, label %if.end, !dbg !3609

if.then3:                                         ; preds = %if.then
  %5 = load ptr, ptr %page, align 8, !dbg !3610
  %call4 = call ptr @lowmem_page_address(ptr noundef %5) #15, !dbg !3610
  store ptr %call4, ptr %retval, align 8, !dbg !3611
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3611

if.end:                                           ; preds = %if.then
  %6 = load i8, ptr @vmemmap_alloc_block.warned, align 1, !dbg !3612, !range !3614, !noundef !425
  %tobool5 = trunc i8 %6 to i1, !dbg !3612
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !3615

if.then6:                                         ; preds = %if.end
  %7 = load i32, ptr %gfp_mask, align 4, !dbg !3616
  %and = and i32 %7, -8193, !dbg !3618
  %8 = load i32, ptr %order, align 4, !dbg !3619
  call void (i32, ptr, ptr, ...) @warn_alloc(i32 noundef %and, ptr noundef null, ptr noundef @.str, i32 noundef %8) #15, !dbg !3620
  store i8 1, ptr @vmemmap_alloc_block.warned, align 1, !dbg !3621
  br label %if.end7, !dbg !3622

if.end7:                                          ; preds = %if.then6, %if.end
  store ptr null, ptr %retval, align 8, !dbg !3623
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3623

cleanup:                                          ; preds = %if.end7, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #16, !dbg !3624
  call void @llvm.lifetime.end.p0(i64 4, ptr %order) #16, !dbg !3624
  call void @llvm.lifetime.end.p0(i64 4, ptr %gfp_mask) #16, !dbg !3624
  br label %return

if.else:                                          ; preds = %entry
  %9 = load i32, ptr %node.addr, align 4, !dbg !3625
  %10 = load i64, ptr %size.addr, align 8, !dbg !3626
  %11 = load i64, ptr %size.addr, align 8, !dbg !3627
  %12 = load i64, ptr @page_offset_base, align 8, !dbg !3628
  %add = add i64 16777216, %12, !dbg !3628
  %13 = inttoptr i64 %add to ptr, !dbg !3628
  %14 = ptrtoint ptr %13 to i64, !dbg !3628
  %call10 = call i64 @__phys_addr_nodebug(i64 noundef %14) #15, !dbg !3628
  %call11 = call ptr @__earlyonly_bootmem_alloc(i32 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %call10) #15, !dbg !3629
  store ptr %call11, ptr %retval, align 8, !dbg !3630
  br label %return, !dbg !3630

return:                                           ; preds = %if.else, %cleanup
  %15 = load ptr, ptr %retval, align 8, !dbg !3631
  ret ptr %15, !dbg !3631
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3632 dso_local zeroext i1 @slab_is_available() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i32 @get_order(i64 noundef %size) #4 align 16 !dbg !3636 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3641, metadata !DIExpression()), !dbg !3642
  %0 = load i64, ptr %size.addr, align 8, !dbg !3643
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3645
  br i1 %1, label %if.then, label %if.end14, !dbg !3646

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3647
  %tobool = icmp ne i64 %2, 0, !dbg !3647
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3650

if.then1:                                         ; preds = %if.then
  store i32 52, ptr %retval, align 4, !dbg !3651
  br label %return, !dbg !3651

if.end:                                           ; preds = %if.then
  %3 = load i64, ptr %size.addr, align 8, !dbg !3652
  %cmp = icmp ult i64 %3, 4096, !dbg !3654
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3655

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !3656
  br label %return, !dbg !3656

if.end3:                                          ; preds = %if.end
  %4 = load i64, ptr %size.addr, align 8, !dbg !3657
  %sub = sub i64 %4, 1, !dbg !3657
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3657
  br i1 %5, label %cond.true, label %cond.false9, !dbg !3657

cond.true:                                        ; preds = %if.end3
  %6 = load i64, ptr %size.addr, align 8, !dbg !3657
  %sub4 = sub i64 %6, 1, !dbg !3657
  %cmp5 = icmp ult i64 %sub4, 2, !dbg !3657
  br i1 %cmp5, label %cond.true6, label %cond.false, !dbg !3657

cond.true6:                                       ; preds = %cond.true
  br label %cond.end, !dbg !3657

cond.false:                                       ; preds = %cond.true
  %7 = load i64, ptr %size.addr, align 8, !dbg !3657
  %sub7 = sub i64 %7, 1, !dbg !3657
  %8 = call i64 @llvm.ctlz.i64(i64 %sub7, i1 true), !dbg !3657
  %cast = trunc i64 %8 to i32, !dbg !3657
  %sub8 = sub i32 63, %cast, !dbg !3657
  br label %cond.end, !dbg !3657

cond.end:                                         ; preds = %cond.false, %cond.true6
  %cond = phi i32 [ 0, %cond.true6 ], [ %sub8, %cond.false ], !dbg !3657
  br label %cond.end11, !dbg !3657

cond.false9:                                      ; preds = %if.end3
  %9 = load i64, ptr %size.addr, align 8, !dbg !3657
  %sub10 = sub i64 %9, 1, !dbg !3657
  %call = call i32 @__ilog2_u64(i64 noundef %sub10) #17, !dbg !3657
  br label %cond.end11, !dbg !3657

cond.end11:                                       ; preds = %cond.false9, %cond.end
  %cond12 = phi i32 [ %cond, %cond.end ], [ %call, %cond.false9 ], !dbg !3657
  %sub13 = sub i32 %cond12, 12, !dbg !3658
  %add = add i32 %sub13, 1, !dbg !3659
  store i32 %add, ptr %retval, align 4, !dbg !3660
  br label %return, !dbg !3660

if.end14:                                         ; preds = %entry
  %10 = load i64, ptr %size.addr, align 8, !dbg !3661
  %dec = add i64 %10, -1, !dbg !3661
  store i64 %dec, ptr %size.addr, align 8, !dbg !3661
  %11 = load i64, ptr %size.addr, align 8, !dbg !3662
  %shr = lshr i64 %11, 12, !dbg !3662
  store i64 %shr, ptr %size.addr, align 8, !dbg !3662
  %12 = load i64, ptr %size.addr, align 8, !dbg !3663
  %call15 = call i32 @fls64(i64 noundef %12) #15, !dbg !3664
  store i32 %call15, ptr %retval, align 4, !dbg !3665
  br label %return, !dbg !3665

return:                                           ; preds = %if.end14, %cond.end11, %if.then2, %if.then1
  %13 = load i32, ptr %retval, align 4, !dbg !3666
  ret i32 %13, !dbg !3666
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_pages_node(i32 noundef %nid, i32 noundef %gfp_mask, i32 noundef %order) #5 align 16 !dbg !3667 {
entry:
  %nid.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !3671, metadata !DIExpression()), !dbg !3674
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !3672, metadata !DIExpression()), !dbg !3675
  store i32 %order, ptr %order.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !3673, metadata !DIExpression()), !dbg !3676
  %0 = load i32, ptr %nid.addr, align 4, !dbg !3677
  %cmp = icmp eq i32 %0, -1, !dbg !3679
  br i1 %cmp, label %if.then, label %if.end, !dbg !3680

if.then:                                          ; preds = %entry
  %call = call i32 @numa_mem_id() #15, !dbg !3681
  store i32 %call, ptr %nid.addr, align 4, !dbg !3682
  br label %if.end, !dbg !3683

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %nid.addr, align 4, !dbg !3684
  %2 = load i32, ptr %gfp_mask.addr, align 4, !dbg !3685
  %3 = load i32, ptr %order.addr, align 4, !dbg !3686
  %call1 = call ptr @__alloc_pages_node(i32 noundef %1, i32 noundef %2, i32 noundef %3) #15, !dbg !3687
  ret ptr %call1, !dbg !3688
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lowmem_page_address(ptr noundef %page) #6 align 16 !dbg !3689 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !3693, metadata !DIExpression()), !dbg !3694
  %0 = load ptr, ptr %page.addr, align 8, !dbg !3695
  %1 = load i64, ptr @vmemmap_base, align 8, !dbg !3695
  %2 = inttoptr i64 %1 to ptr, !dbg !3695
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !3695
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64, !dbg !3695
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3695
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !3695
  %shl = shl i64 %sub.ptr.div, 12, !dbg !3695
  %3 = load i64, ptr @page_offset_base, align 8, !dbg !3695
  %add = add i64 %shl, %3, !dbg !3695
  %4 = inttoptr i64 %add to ptr, !dbg !3695
  ret ptr %4, !dbg !3696
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3697 dso_local void @warn_alloc(i32 noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__earlyonly_bootmem_alloc(i32 noundef %node, i64 noundef %size, i64 noundef %align, i64 noundef %goal) #7 section ".ref.text" align 16 !dbg !3701 {
entry:
  %node.addr = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  %goal.addr = alloca i64, align 8
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !3705, metadata !DIExpression()), !dbg !3709
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3706, metadata !DIExpression()), !dbg !3710
  store i64 %align, ptr %align.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !3707, metadata !DIExpression()), !dbg !3711
  store i64 %goal, ptr %goal.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %goal.addr, metadata !3708, metadata !DIExpression()), !dbg !3712
  %0 = load i64, ptr %size.addr, align 8, !dbg !3713
  %1 = load i64, ptr %align.addr, align 8, !dbg !3714
  %2 = load i64, ptr %goal.addr, align 8, !dbg !3715
  %3 = load i32, ptr %node.addr, align 4, !dbg !3716
  %call = call ptr @memblock_alloc_try_nid_raw(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef 0, i32 noundef %3) #15, !dbg !3717
  ret ptr %call, !dbg !3718
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__phys_addr_nodebug(i64 noundef %x) #6 align 16 !dbg !3719 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !3724, metadata !DIExpression()), !dbg !3726
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #16, !dbg !3727
  call void @llvm.dbg.declare(metadata ptr %y, metadata !3725, metadata !DIExpression()), !dbg !3728
  %0 = load i64, ptr %x.addr, align 8, !dbg !3729
  %sub = sub i64 %0, -2147483648, !dbg !3730
  store i64 %sub, ptr %y, align 8, !dbg !3728
  %1 = load i64, ptr %y, align 8, !dbg !3731
  %2 = load i64, ptr %x.addr, align 8, !dbg !3732
  %3 = load i64, ptr %y, align 8, !dbg !3733
  %cmp = icmp ugt i64 %2, %3, !dbg !3734
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3735

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr @phys_base, align 8, !dbg !3736
  br label %cond.end, !dbg !3735

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr @page_offset_base, align 8, !dbg !3737
  %sub1 = sub i64 -2147483648, %5, !dbg !3738
  br label %cond.end, !dbg !3735

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !3735
  %add = add i64 %1, %cond, !dbg !3739
  store i64 %add, ptr %x.addr, align 8, !dbg !3740
  %6 = load i64, ptr %x.addr, align 8, !dbg !3741
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #16, !dbg !3742
  ret i64 %6, !dbg !3743
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden ptr @vmemmap_alloc_block_buf(i64 noundef %size, i32 noundef %node, ptr noundef %altmap) #0 section ".init.text" align 16 !dbg !3744 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %node.addr = alloca i32, align 4
  %altmap.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3748, metadata !DIExpression()), !dbg !3752
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !3749, metadata !DIExpression()), !dbg !3753
  store ptr %altmap, ptr %altmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %altmap.addr, metadata !3750, metadata !DIExpression()), !dbg !3754
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #16, !dbg !3755
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !3751, metadata !DIExpression()), !dbg !3756
  %0 = load ptr, ptr %altmap.addr, align 8, !dbg !3757
  %tobool = icmp ne ptr %0, null, !dbg !3757
  br i1 %tobool, label %if.then, label %if.end, !dbg !3759

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !3760
  %2 = load ptr, ptr %altmap.addr, align 8, !dbg !3761
  %call = call ptr @altmap_alloc_block_buf(i64 noundef %1, ptr noundef %2) #18, !dbg !3762
  store ptr %call, ptr %retval, align 8, !dbg !3763
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3763

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %size.addr, align 8, !dbg !3764
  %call1 = call ptr @sparse_buffer_alloc(i64 noundef %3) #15, !dbg !3765
  store ptr %call1, ptr %ptr, align 8, !dbg !3766
  %4 = load ptr, ptr %ptr, align 8, !dbg !3767
  %tobool2 = icmp ne ptr %4, null, !dbg !3767
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !3769

if.then3:                                         ; preds = %if.end
  %5 = load i64, ptr %size.addr, align 8, !dbg !3770
  %6 = load i32, ptr %node.addr, align 4, !dbg !3771
  %call4 = call ptr @vmemmap_alloc_block(i64 noundef %5, i32 noundef %6) #18, !dbg !3772
  store ptr %call4, ptr %ptr, align 8, !dbg !3773
  br label %if.end5, !dbg !3774

if.end5:                                          ; preds = %if.then3, %if.end
  %7 = load ptr, ptr %ptr, align 8, !dbg !3775
  store ptr %7, ptr %retval, align 8, !dbg !3776
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3776

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #16, !dbg !3777
  %8 = load ptr, ptr %retval, align 8, !dbg !3777
  ret ptr %8, !dbg !3777
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal ptr @altmap_alloc_block_buf(i64 noundef %size, ptr noundef %altmap) #0 section ".init.text" align 16 !dbg !3545 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %altmap.addr = alloca ptr, align 8
  %pfn = alloca i64, align 8
  %nr_pfns = alloca i64, align 8
  %nr_align = alloca i64, align 8
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %tmp19 = alloca i32, align 4
  %tmp21 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp43 = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3550, metadata !DIExpression()), !dbg !3778
  store ptr %altmap, ptr %altmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %altmap.addr, metadata !3551, metadata !DIExpression()), !dbg !3779
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfn) #16, !dbg !3780
  call void @llvm.dbg.declare(metadata ptr %pfn, metadata !3552, metadata !DIExpression()), !dbg !3781
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr_pfns) #16, !dbg !3780
  call void @llvm.dbg.declare(metadata ptr %nr_pfns, metadata !3553, metadata !DIExpression()), !dbg !3782
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr_align) #16, !dbg !3780
  call void @llvm.dbg.declare(metadata ptr %nr_align, metadata !3554, metadata !DIExpression()), !dbg !3783
  %0 = load i64, ptr %size.addr, align 8, !dbg !3784
  %and = and i64 %0, 4095, !dbg !3785
  %tobool = icmp ne i64 %and, 0, !dbg !3785
  br i1 %tobool, label %if.then, label %if.end29, !dbg !3786

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #16, !dbg !3787
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !3555, metadata !DIExpression()), !dbg !3787
  store i8 1, ptr %__ret_do_once, align 1, !dbg !3787
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #16, !dbg !3788
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !3559, metadata !DIExpression()), !dbg !3788
  %1 = load i8, ptr %__ret_do_once, align 1, !dbg !3788, !range !3614, !noundef !425
  %tobool1 = trunc i8 %1 to i1, !dbg !3788
  %lnot = xor i1 %tobool1, true, !dbg !3788
  %lnot2 = xor i1 %lnot, true, !dbg !3788
  %frombool = zext i1 %lnot2 to i8, !dbg !3788
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !3788
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #16, !dbg !3788
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !3562, metadata !DIExpression()), !dbg !3788
  store i8 0, ptr %__ret_once, align 1, !dbg !3788
  %2 = load i8, ptr %__ret_cond, align 1, !dbg !3789, !range !3614, !noundef !425
  %tobool3 = trunc i8 %2 to i1, !dbg !3789
  br i1 %tobool3, label %land.rhs, label %land.end, !dbg !3789

land.rhs:                                         ; preds = %if.then
  %3 = load i8, ptr @altmap_alloc_block_buf.__already_done, align 1, !dbg !3789, !range !3614, !noundef !425
  %tobool4 = trunc i8 %3 to i1, !dbg !3789
  %lnot5 = xor i1 %tobool4, true, !dbg !3789
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %4 = phi i1 [ false, %if.then ], [ %lnot5, %land.rhs ], !dbg !3791
  %lnot6 = xor i1 %4, true, !dbg !3789
  %lnot7 = xor i1 %lnot6, true, !dbg !3789
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !3789
  %conv = sext i32 %lnot.ext to i64, !dbg !3789
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3789
  %tobool8 = icmp ne i64 %expval, 0, !dbg !3789
  br i1 %tobool8, label %if.then9, label %if.end, !dbg !3788

if.then9:                                         ; preds = %land.end
  store i8 1, ptr @altmap_alloc_block_buf.__already_done, align 1, !dbg !3792
  store i8 1, ptr %__ret_once, align 1, !dbg !3792
  br label %if.end, !dbg !3792

if.end:                                           ; preds = %if.then9, %land.end
  %5 = load i8, ptr %__ret_once, align 1, !dbg !3788, !range !3614, !noundef !425
  %tobool10 = trunc i8 %5 to i1, !dbg !3788
  %lnot11 = xor i1 %tobool10, true, !dbg !3788
  %lnot13 = xor i1 %lnot11, true, !dbg !3788
  %lnot.ext14 = zext i1 %lnot13 to i32, !dbg !3788
  %conv15 = sext i32 %lnot.ext14 to i64, !dbg !3788
  %expval16 = call i64 @llvm.expect.i64(i64 %conv15, i64 0), !dbg !3788
  store i64 %expval16, ptr %tmp, align 8, !dbg !3789
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #16, !dbg !3794
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #16, !dbg !3794
  %6 = load i64, ptr %tmp, align 8, !dbg !3788
  %tobool17 = icmp ne i64 %6, 0, !dbg !3794
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !3787

if.then18:                                        ; preds = %if.end
  br label %do.body, !dbg !3795

do.body:                                          ; preds = %if.then18
  br label %do.cond, !dbg !3797

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3797

do.end:                                           ; preds = %do.cond
  %7 = load i64, ptr %size.addr, align 8, !dbg !3795
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, ptr noundef @__func__.altmap_alloc_block_buf, i64 noundef %7) #18, !dbg !3795
  store i32 %call, ptr %tmp19, align 4, !dbg !3797
  %8 = load i32, ptr %tmp19, align 4, !dbg !3795
  br label %if.end20, !dbg !3794

if.end20:                                         ; preds = %do.end, %if.end
  %9 = load i8, ptr %__ret_do_once, align 1, !dbg !3787, !range !3614, !noundef !425
  %tobool22 = trunc i8 %9 to i1, !dbg !3787
  %lnot23 = xor i1 %tobool22, true, !dbg !3787
  %lnot25 = xor i1 %lnot23, true, !dbg !3787
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !3787
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !3787
  %expval28 = call i64 @llvm.expect.i64(i64 %conv27, i64 0), !dbg !3787
  store i64 %expval28, ptr %tmp21, align 8, !dbg !3794
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #16, !dbg !3799
  %10 = load i64, ptr %tmp21, align 8, !dbg !3787
  store ptr null, ptr %retval, align 8, !dbg !3800
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3800

if.end29:                                         ; preds = %entry
  %11 = load ptr, ptr %altmap.addr, align 8, !dbg !3801
  %call30 = call i64 @vmem_altmap_next_pfn(ptr noundef %11) #18, !dbg !3802
  store i64 %call30, ptr %pfn, align 8, !dbg !3803
  %12 = load i64, ptr %size.addr, align 8, !dbg !3804
  %shr = lshr i64 %12, 12, !dbg !3805
  store i64 %shr, ptr %nr_pfns, align 8, !dbg !3806
  %call31 = call i64 @find_first_bit(ptr noundef %nr_pfns, i64 noundef 64) #15, !dbg !3807
  %shl = shl i64 1, %call31, !dbg !3808
  store i64 %shl, ptr %nr_align, align 8, !dbg !3809
  %13 = load i64, ptr %pfn, align 8, !dbg !3810
  %14 = load i64, ptr %nr_align, align 8, !dbg !3810
  %sub = sub i64 %14, 1, !dbg !3810
  %add = add i64 %13, %sub, !dbg !3810
  %15 = load i64, ptr %nr_align, align 8, !dbg !3810
  %sub32 = sub i64 %15, 1, !dbg !3810
  %not = xor i64 %sub32, -1, !dbg !3810
  %and33 = and i64 %add, %not, !dbg !3810
  %16 = load i64, ptr %pfn, align 8, !dbg !3811
  %sub34 = sub i64 %and33, %16, !dbg !3812
  store i64 %sub34, ptr %nr_align, align 8, !dbg !3813
  %17 = load i64, ptr %nr_pfns, align 8, !dbg !3814
  %18 = load i64, ptr %nr_align, align 8, !dbg !3816
  %add35 = add i64 %17, %18, !dbg !3817
  %19 = load ptr, ptr %altmap.addr, align 8, !dbg !3818
  %call36 = call i64 @vmem_altmap_nr_free(ptr noundef %19) #18, !dbg !3819
  %cmp = icmp ugt i64 %add35, %call36, !dbg !3820
  br i1 %cmp, label %if.then38, label %if.end39, !dbg !3821

if.then38:                                        ; preds = %if.end29
  store ptr null, ptr %retval, align 8, !dbg !3822
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3822

if.end39:                                         ; preds = %if.end29
  %20 = load i64, ptr %nr_pfns, align 8, !dbg !3823
  %21 = load ptr, ptr %altmap.addr, align 8, !dbg !3824
  %alloc = getelementptr inbounds %struct.vmem_altmap, ptr %21, i32 0, i32 5, !dbg !3825
  %22 = load i64, ptr %alloc, align 8, !dbg !3826
  %add40 = add i64 %22, %20, !dbg !3826
  store i64 %add40, ptr %alloc, align 8, !dbg !3826
  %23 = load i64, ptr %nr_align, align 8, !dbg !3827
  %24 = load ptr, ptr %altmap.addr, align 8, !dbg !3828
  %align = getelementptr inbounds %struct.vmem_altmap, ptr %24, i32 0, i32 4, !dbg !3829
  %25 = load i64, ptr %align, align 8, !dbg !3830
  %add41 = add i64 %25, %23, !dbg !3830
  store i64 %add41, ptr %align, align 8, !dbg !3830
  %26 = load i64, ptr %nr_align, align 8, !dbg !3831
  %27 = load i64, ptr %pfn, align 8, !dbg !3832
  %add42 = add i64 %27, %26, !dbg !3832
  store i64 %add42, ptr %pfn, align 8, !dbg !3832
  store i32 0, ptr %tmp43, align 4, !dbg !3833
  %28 = load i32, ptr %tmp43, align 4, !dbg !3836
  %29 = load i64, ptr %pfn, align 8, !dbg !3837
  %shl44 = shl i64 %29, 12, !dbg !3837
  %30 = load i64, ptr @page_offset_base, align 8, !dbg !3837
  %add45 = add i64 %shl44, %30, !dbg !3837
  %31 = inttoptr i64 %add45 to ptr, !dbg !3837
  store ptr %31, ptr %retval, align 8, !dbg !3838
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3838

cleanup:                                          ; preds = %if.end39, %if.then38, %if.end20
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr_align) #16, !dbg !3839
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr_pfns) #16, !dbg !3839
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfn) #16, !dbg !3839
  %32 = load ptr, ptr %retval, align 8, !dbg !3839
  ret ptr %32, !dbg !3839
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3840 dso_local ptr @sparse_buffer_alloc(i64 noundef) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @vmemmap_verify(ptr noundef %pte, i32 noundef %node, i64 noundef %start, i64 noundef %end) #0 section ".init.text" align 16 !dbg !3512 {
entry:
  %pte.addr = alloca ptr, align 8
  %node.addr = alloca i32, align 4
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %pfn = alloca i64, align 8
  %agg.tmp = alloca %struct.pte_t, align 8
  %actual_node = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %tmp22 = alloca i32, align 4
  %tmp25 = alloca i64, align 8
  store ptr %pte, ptr %pte.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pte.addr, metadata !3516, metadata !DIExpression()), !dbg !3843
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !3517, metadata !DIExpression()), !dbg !3844
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !3518, metadata !DIExpression()), !dbg !3845
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !3519, metadata !DIExpression()), !dbg !3846
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfn) #16, !dbg !3847
  call void @llvm.dbg.declare(metadata ptr %pfn, metadata !3520, metadata !DIExpression()), !dbg !3848
  %0 = load ptr, ptr %pte.addr, align 8, !dbg !3849
  %call = call i64 @ptep_get(ptr noundef %0) #15, !dbg !3850
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %agg.tmp, i32 0, i32 0, !dbg !3850
  store i64 %call, ptr %coerce.dive, align 8, !dbg !3850
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %agg.tmp, i32 0, i32 0, !dbg !3851
  %1 = load i64, ptr %coerce.dive1, align 8, !dbg !3851
  %call2 = call i64 @pte_pfn(i64 %1) #15, !dbg !3851
  store i64 %call2, ptr %pfn, align 8, !dbg !3848
  call void @llvm.lifetime.start.p0(i64 4, ptr %actual_node) #16, !dbg !3852
  call void @llvm.dbg.declare(metadata ptr %actual_node, metadata !3521, metadata !DIExpression()), !dbg !3853
  %2 = load i64, ptr %pfn, align 8, !dbg !3854
  %call3 = call i32 @early_pfn_to_nid(i64 noundef %2) #18, !dbg !3855
  store i32 %call3, ptr %actual_node, align 4, !dbg !3853
  %3 = load i32, ptr %actual_node, align 4, !dbg !3856
  %4 = load i32, ptr %node.addr, align 4, !dbg !3856
  %call4 = call i32 @__node_distance(i32 noundef %3, i32 noundef %4) #15, !dbg !3856
  %cmp = icmp sgt i32 %call4, 10, !dbg !3857
  br i1 %cmp, label %if.then, label %if.end33, !dbg !3858

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #16, !dbg !3859
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !3522, metadata !DIExpression()), !dbg !3859
  store i8 1, ptr %__ret_do_once, align 1, !dbg !3859
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #16, !dbg !3860
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !3525, metadata !DIExpression()), !dbg !3860
  %5 = load i8, ptr %__ret_do_once, align 1, !dbg !3860, !range !3614, !noundef !425
  %tobool = trunc i8 %5 to i1, !dbg !3860
  %lnot = xor i1 %tobool, true, !dbg !3860
  %lnot5 = xor i1 %lnot, true, !dbg !3860
  %frombool = zext i1 %lnot5 to i8, !dbg !3860
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !3860
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #16, !dbg !3860
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !3528, metadata !DIExpression()), !dbg !3860
  store i8 0, ptr %__ret_once, align 1, !dbg !3860
  %6 = load i8, ptr %__ret_cond, align 1, !dbg !3861, !range !3614, !noundef !425
  %tobool6 = trunc i8 %6 to i1, !dbg !3861
  br i1 %tobool6, label %land.rhs, label %land.end, !dbg !3861

land.rhs:                                         ; preds = %if.then
  %7 = load i8, ptr @vmemmap_verify.__already_done, align 1, !dbg !3861, !range !3614, !noundef !425
  %tobool7 = trunc i8 %7 to i1, !dbg !3861
  %lnot8 = xor i1 %tobool7, true, !dbg !3861
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %8 = phi i1 [ false, %if.then ], [ %lnot8, %land.rhs ], !dbg !3863
  %lnot9 = xor i1 %8, true, !dbg !3861
  %lnot10 = xor i1 %lnot9, true, !dbg !3861
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !3861
  %conv = sext i32 %lnot.ext to i64, !dbg !3861
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3861
  %tobool11 = icmp ne i64 %expval, 0, !dbg !3861
  br i1 %tobool11, label %if.then12, label %if.end, !dbg !3860

if.then12:                                        ; preds = %land.end
  store i8 1, ptr @vmemmap_verify.__already_done, align 1, !dbg !3864
  store i8 1, ptr %__ret_once, align 1, !dbg !3864
  br label %if.end, !dbg !3864

if.end:                                           ; preds = %if.then12, %land.end
  %9 = load i8, ptr %__ret_once, align 1, !dbg !3860, !range !3614, !noundef !425
  %tobool13 = trunc i8 %9 to i1, !dbg !3860
  %lnot14 = xor i1 %tobool13, true, !dbg !3860
  %lnot16 = xor i1 %lnot14, true, !dbg !3860
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !3860
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !3860
  %expval19 = call i64 @llvm.expect.i64(i64 %conv18, i64 0), !dbg !3860
  store i64 %expval19, ptr %tmp, align 8, !dbg !3861
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #16, !dbg !3866
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #16, !dbg !3866
  %10 = load i64, ptr %tmp, align 8, !dbg !3860
  %tobool20 = icmp ne i64 %10, 0, !dbg !3866
  br i1 %tobool20, label %if.then21, label %if.end24, !dbg !3859

if.then21:                                        ; preds = %if.end
  br label %do.body, !dbg !3867

do.body:                                          ; preds = %if.then21
  br label %do.cond, !dbg !3869

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3869

do.end:                                           ; preds = %do.cond
  %11 = load i64, ptr %start.addr, align 8, !dbg !3867
  %12 = load i64, ptr %end.addr, align 8, !dbg !3867
  %sub = sub i64 %12, 1, !dbg !3867
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i64 noundef %11, i64 noundef %sub) #18, !dbg !3867
  store i32 %call23, ptr %tmp22, align 4, !dbg !3869
  %13 = load i32, ptr %tmp22, align 4, !dbg !3867
  br label %if.end24, !dbg !3866

if.end24:                                         ; preds = %do.end, %if.end
  %14 = load i8, ptr %__ret_do_once, align 1, !dbg !3859, !range !3614, !noundef !425
  %tobool26 = trunc i8 %14 to i1, !dbg !3859
  %lnot27 = xor i1 %tobool26, true, !dbg !3859
  %lnot29 = xor i1 %lnot27, true, !dbg !3859
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !3859
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !3859
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !3859
  store i64 %expval32, ptr %tmp25, align 8, !dbg !3866
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #16, !dbg !3871
  %15 = load i64, ptr %tmp25, align 8, !dbg !3859
  br label %if.end33, !dbg !3871

if.end33:                                         ; preds = %if.end24, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %actual_node) #16, !dbg !3872
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfn) #16, !dbg !3872
  ret void, !dbg !3872
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pte_pfn(i64 %pte.coerce) #5 align 16 !dbg !3873 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %pfn = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !3878, metadata !DIExpression()), !dbg !3880
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfn) #16, !dbg !3881
  call void @llvm.dbg.declare(metadata ptr %pfn, metadata !3879, metadata !DIExpression()), !dbg !3882
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !3883
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !3883
  %call = call i64 @native_pte_val(i64 %0) #15, !dbg !3883
  store i64 %call, ptr %pfn, align 8, !dbg !3882
  %1 = load i64, ptr %pfn, align 8, !dbg !3884
  %call2 = call i64 @protnone_mask(i64 noundef %1) #15, !dbg !3885
  %2 = load i64, ptr %pfn, align 8, !dbg !3886
  %xor = xor i64 %2, %call2, !dbg !3886
  store i64 %xor, ptr %pfn, align 8, !dbg !3886
  %3 = load i64, ptr %pfn, align 8, !dbg !3887
  %and = and i64 %3, 4503599627366400, !dbg !3888
  %shr = lshr i64 %and, 12, !dbg !3889
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfn) #16, !dbg !3890
  ret i64 %shr, !dbg !3891
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ptep_get(ptr noundef %ptep) #5 align 16 !dbg !3892 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %ptep.addr = alloca ptr, align 8
  store ptr %ptep, ptr %ptep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptep.addr, metadata !3897, metadata !DIExpression()), !dbg !3898
  br label %do.body, !dbg !3899

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3901

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %ptep.addr, align 8, !dbg !3899
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %0, i64 8, i1 true), !dbg !3899
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !3903
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !3903
  ret i64 %1, !dbg !3903
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3904 dso_local i32 @early_pfn_to_nid(i64 noundef) #8 section ".init.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3905 dso_local i32 @__node_distance(i32 noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3909 dso_local i32 @_printk(ptr noundef, ...) #8

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden ptr @vmemmap_pte_populate(ptr noundef %pmd, i64 noundef %addr, i32 noundef %node, ptr noundef %altmap, ptr noundef %reuse) #0 section ".init.text" align 16 !dbg !3912 {
entry:
  %retval = alloca ptr, align 8
  %pmd.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %node.addr = alloca i32, align 4
  %altmap.addr = alloca ptr, align 8
  %reuse.addr = alloca ptr, align 8
  %pte = alloca ptr, align 8
  %agg.tmp = alloca %struct.pte_t, align 8
  %entry4 = alloca %struct.pte_t, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.pte_t, align 8
  %.compoundliteral = alloca %struct.pgprot, align 8
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !3916, metadata !DIExpression()), !dbg !3926
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3917, metadata !DIExpression()), !dbg !3927
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !3918, metadata !DIExpression()), !dbg !3928
  store ptr %altmap, ptr %altmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %altmap.addr, metadata !3919, metadata !DIExpression()), !dbg !3929
  store ptr %reuse, ptr %reuse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %reuse.addr, metadata !3920, metadata !DIExpression()), !dbg !3930
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #16, !dbg !3931
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !3921, metadata !DIExpression()), !dbg !3932
  %0 = load ptr, ptr %pmd.addr, align 8, !dbg !3933
  %1 = load i64, ptr %addr.addr, align 8, !dbg !3934
  %call = call ptr @pte_offset_kernel(ptr noundef %0, i64 noundef %1) #15, !dbg !3935
  store ptr %call, ptr %pte, align 8, !dbg !3932
  %2 = load ptr, ptr %pte, align 8, !dbg !3936
  %call1 = call i64 @ptep_get(ptr noundef %2) #15, !dbg !3937
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %agg.tmp, i32 0, i32 0, !dbg !3937
  store i64 %call1, ptr %coerce.dive, align 8, !dbg !3937
  %coerce.dive2 = getelementptr inbounds %struct.pte_t, ptr %agg.tmp, i32 0, i32 0, !dbg !3938
  %3 = load i64, ptr %coerce.dive2, align 8, !dbg !3938
  %call3 = call i32 @pte_none(i64 %3) #15, !dbg !3938
  %tobool = icmp ne i32 %call3, 0, !dbg !3938
  br i1 %tobool, label %if.then, label %if.end17, !dbg !3939

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry4) #16, !dbg !3940
  call void @llvm.dbg.declare(metadata ptr %entry4, metadata !3922, metadata !DIExpression()), !dbg !3941
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !3942
  call void @llvm.dbg.declare(metadata ptr %p, metadata !3925, metadata !DIExpression()), !dbg !3943
  %4 = load ptr, ptr %reuse.addr, align 8, !dbg !3944
  %tobool5 = icmp ne ptr %4, null, !dbg !3944
  br i1 %tobool5, label %if.else, label %if.then6, !dbg !3946

if.then6:                                         ; preds = %if.then
  %5 = load i32, ptr %node.addr, align 4, !dbg !3947
  %6 = load ptr, ptr %altmap.addr, align 8, !dbg !3949
  %call7 = call ptr @vmemmap_alloc_block_buf(i64 noundef 4096, i32 noundef %5, ptr noundef %6) #18, !dbg !3950
  store ptr %call7, ptr %p, align 8, !dbg !3951
  %7 = load ptr, ptr %p, align 8, !dbg !3952
  %tobool8 = icmp ne ptr %7, null, !dbg !3952
  br i1 %tobool8, label %if.end, label %if.then9, !dbg !3954

if.then9:                                         ; preds = %if.then6
  store ptr null, ptr %retval, align 8, !dbg !3955
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3955

if.end:                                           ; preds = %if.then6
  br label %if.end10, !dbg !3956

if.else:                                          ; preds = %if.then
  %8 = load ptr, ptr %reuse.addr, align 8, !dbg !3957
  call void @get_page(ptr noundef %8) #15, !dbg !3959
  %9 = load ptr, ptr %reuse.addr, align 8, !dbg !3960
  %10 = load i64, ptr @vmemmap_base, align 8, !dbg !3960
  %11 = inttoptr i64 %10 to ptr, !dbg !3960
  %sub.ptr.lhs.cast = ptrtoint ptr %9 to i64, !dbg !3960
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i64, !dbg !3960
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3960
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !3960
  %shl = shl i64 %sub.ptr.div, 12, !dbg !3960
  %12 = load i64, ptr @page_offset_base, align 8, !dbg !3960
  %add = add i64 %shl, %12, !dbg !3960
  %13 = inttoptr i64 %add to ptr, !dbg !3960
  store ptr %13, ptr %p, align 8, !dbg !3961
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #16, !dbg !3962
  %14 = load ptr, ptr %p, align 8, !dbg !3963
  %15 = ptrtoint ptr %14 to i64, !dbg !3963
  %call11 = call i64 @__phys_addr_nodebug(i64 noundef %15) #15, !dbg !3963
  %shr = lshr i64 %call11, 12, !dbg !3964
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !3965
  %16 = load i64, ptr @__default_kernel_pte_mask, align 8, !dbg !3965
  %and = and i64 -9223372036854775453, %16, !dbg !3965
  store i64 %and, ptr %pgprot, align 8, !dbg !3965
  %coerce.dive12 = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !3962
  %17 = load i64, ptr %coerce.dive12, align 8, !dbg !3962
  %call13 = call i64 @pfn_pte(i64 noundef %shr, i64 %17) #15, !dbg !3962
  %coerce.dive14 = getelementptr inbounds %struct.pte_t, ptr %tmp, i32 0, i32 0, !dbg !3962
  store i64 %call13, ptr %coerce.dive14, align 8, !dbg !3962
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %entry4, ptr align 8 %tmp, i64 8, i1 false), !dbg !3962
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #16, !dbg !3962
  %18 = load i64, ptr %addr.addr, align 8, !dbg !3966
  %19 = load ptr, ptr %pte, align 8, !dbg !3966
  %coerce.dive15 = getelementptr inbounds %struct.pte_t, ptr %entry4, i32 0, i32 0, !dbg !3966
  %20 = load i64, ptr %coerce.dive15, align 8, !dbg !3966
  call void @set_ptes(ptr noundef @init_mm, i64 noundef %18, ptr noundef %19, i64 %20, i32 noundef 1) #15, !dbg !3966
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3967
  br label %cleanup, !dbg !3967

cleanup:                                          ; preds = %if.end10, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !3967
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry4) #16, !dbg !3967
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup18 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end17, !dbg !3968

if.end17:                                         ; preds = %cleanup.cont, %entry
  %21 = load ptr, ptr %pte, align 8, !dbg !3969
  store ptr %21, ptr %retval, align 8, !dbg !3970
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup18, !dbg !3970

cleanup18:                                        ; preds = %if.end17, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #16, !dbg !3971
  %22 = load ptr, ptr %retval, align 8, !dbg !3971
  ret ptr %22, !dbg !3971
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pte_offset_kernel(ptr noundef %pmd, i64 noundef %address) #5 align 16 !dbg !3972 {
entry:
  %pmd.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !3976, metadata !DIExpression()), !dbg !3978
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !3977, metadata !DIExpression()), !dbg !3979
  %0 = load ptr, ptr %pmd.addr, align 8, !dbg !3980
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %0, i32 0, i32 0, !dbg !3981
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !3981
  %call = call i64 @pmd_page_vaddr(i64 %1) #15, !dbg !3981
  %2 = inttoptr i64 %call to ptr, !dbg !3982
  %3 = load i64, ptr %address.addr, align 8, !dbg !3983
  %call1 = call i64 @pte_index(i64 noundef %3) #15, !dbg !3984
  %add.ptr = getelementptr %struct.pte_t, ptr %2, i64 %call1, !dbg !3985
  ret ptr %add.ptr, !dbg !3986
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pte_none(i64 %pte.coerce) #5 align 16 !dbg !3987 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !3991, metadata !DIExpression()), !dbg !3992
  %pte1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !3993
  %0 = load i64, ptr %pte1, align 8, !dbg !3993
  %and = and i64 %0, -97, !dbg !3994
  %tobool = icmp ne i64 %and, 0, !dbg !3995
  %lnot = xor i1 %tobool, true, !dbg !3995
  %lnot.ext = zext i1 %lnot to i32, !dbg !3995
  ret i32 %lnot.ext, !dbg !3996
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @get_page(ptr noundef %page) #5 align 16 !dbg !3997 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !3999, metadata !DIExpression()), !dbg !4000
  %0 = load ptr, ptr %page.addr, align 8, !dbg !4001
  %call = call i64 @_compound_head(ptr noundef %0) #15, !dbg !4001
  %1 = inttoptr i64 %call to ptr, !dbg !4001
  call void @folio_get(ptr noundef %1) #15, !dbg !4002
  ret void, !dbg !4003
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pfn_pte(i64 noundef %page_nr, i64 %pgprot.coerce) #5 align 16 !dbg !4004 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %pgprot = alloca %struct.pgprot, align 8
  %page_nr.addr = alloca i64, align 8
  %pfn = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0
  store i64 %pgprot.coerce, ptr %coerce.dive, align 8
  store i64 %page_nr, ptr %page_nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page_nr.addr, metadata !4008, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.declare(metadata ptr %pgprot, metadata !4009, metadata !DIExpression()), !dbg !4012
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfn) #16, !dbg !4013
  call void @llvm.dbg.declare(metadata ptr %pfn, metadata !4010, metadata !DIExpression()), !dbg !4014
  %0 = load i64, ptr %page_nr.addr, align 8, !dbg !4015
  %shl = shl i64 %0, 12, !dbg !4016
  store i64 %shl, ptr %pfn, align 8, !dbg !4014
  %pgprot1 = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0, !dbg !4017
  %1 = load i64, ptr %pgprot1, align 8, !dbg !4017
  %call = call i64 @protnone_mask(i64 noundef %1) #15, !dbg !4018
  %2 = load i64, ptr %pfn, align 8, !dbg !4019
  %xor = xor i64 %2, %call, !dbg !4019
  store i64 %xor, ptr %pfn, align 8, !dbg !4019
  %3 = load i64, ptr %pfn, align 8, !dbg !4020
  %and = and i64 %3, 4503599627366400, !dbg !4020
  store i64 %and, ptr %pfn, align 8, !dbg !4020
  %4 = load i64, ptr %pfn, align 8, !dbg !4021
  %coerce.dive2 = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0, !dbg !4021
  %5 = load i64, ptr %coerce.dive2, align 8, !dbg !4021
  %call3 = call i64 @check_pgprot(i64 %5) #15, !dbg !4021
  %or = or i64 %4, %call3, !dbg !4021
  %call4 = call i64 @native_make_pte(i64 noundef %or) #15, !dbg !4021
  %coerce.dive5 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !4021
  store i64 %call4, ptr %coerce.dive5, align 8, !dbg !4021
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfn) #16, !dbg !4022
  %coerce.dive6 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !4022
  %6 = load i64, ptr %coerce.dive6, align 8, !dbg !4022
  ret i64 %6, !dbg !4022
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_ptes(ptr noundef %mm, i64 noundef %addr, ptr noundef %ptep, i64 %pte.coerce, i32 noundef %nr) #5 align 16 !dbg !4023 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %mm.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %ptep.addr = alloca ptr, align 8
  %nr.addr = alloca i32, align 4
  %tmp = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !4027, metadata !DIExpression()), !dbg !4032
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4028, metadata !DIExpression()), !dbg !4033
  store ptr %ptep, ptr %ptep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptep.addr, metadata !4029, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !4030, metadata !DIExpression()), !dbg !4035
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4031, metadata !DIExpression()), !dbg !4036
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !4037
  %1 = load ptr, ptr %ptep.addr, align 8, !dbg !4038
  %2 = load i32, ptr %nr.addr, align 4, !dbg !4039
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !4040
  %3 = load i64, ptr %coerce.dive1, align 8, !dbg !4040
  call void @page_table_check_ptes_set(ptr noundef %0, ptr noundef %1, i64 %3, i32 noundef %2) #15, !dbg !4040
  br label %do.body, !dbg !4041

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4042

do.end:                                           ; preds = %do.body
  br label %for.cond, !dbg !4044

for.cond:                                         ; preds = %if.end, %do.end
  %4 = load ptr, ptr %ptep.addr, align 8, !dbg !4045
  %coerce.dive2 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !4045
  %5 = load i64, ptr %coerce.dive2, align 8, !dbg !4045
  call void @native_set_pte(ptr noundef %4, i64 %5) #15, !dbg !4045
  %6 = load i32, ptr %nr.addr, align 4, !dbg !4049
  %dec = add i32 %6, -1, !dbg !4049
  store i32 %dec, ptr %nr.addr, align 4, !dbg !4049
  %cmp = icmp eq i32 %dec, 0, !dbg !4051
  br i1 %cmp, label %if.then, label %if.end, !dbg !4052

if.then:                                          ; preds = %for.cond
  br label %for.end, !dbg !4053

if.end:                                           ; preds = %for.cond
  %7 = load ptr, ptr %ptep.addr, align 8, !dbg !4054
  %incdec.ptr = getelementptr %struct.pte_t, ptr %7, i32 1, !dbg !4054
  store ptr %incdec.ptr, ptr %ptep.addr, align 8, !dbg !4054
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #16, !dbg !4055
  %coerce.dive3 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !4055
  %8 = load i64, ptr %coerce.dive3, align 8, !dbg !4055
  %call = call i64 @pte_next_pfn(i64 %8) #15, !dbg !4055
  %coerce.dive4 = getelementptr inbounds %struct.pte_t, ptr %tmp, i32 0, i32 0, !dbg !4055
  store i64 %call, ptr %coerce.dive4, align 8, !dbg !4055
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pte, ptr align 8 %tmp, i64 8, i1 false), !dbg !4055
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #16, !dbg !4055
  br label %for.cond, !dbg !4056, !llvm.loop !4057

for.end:                                          ; preds = %if.then
  br label %do.body5, !dbg !4061

do.body5:                                         ; preds = %for.end
  br label %do.end6, !dbg !4062

do.end6:                                          ; preds = %do.body5
  ret void, !dbg !4064
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden ptr @vmemmap_pmd_populate(ptr noundef %pud, i64 noundef %addr, i32 noundef %node) #0 section ".init.text" align 16 !dbg !4065 {
entry:
  %retval = alloca ptr, align 8
  %pud.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %node.addr = alloca i32, align 4
  %pmd = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pud, ptr %pud.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pud.addr, metadata !4069, metadata !DIExpression()), !dbg !4076
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4070, metadata !DIExpression()), !dbg !4077
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !4071, metadata !DIExpression()), !dbg !4078
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmd) #16, !dbg !4079
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !4072, metadata !DIExpression()), !dbg !4080
  %0 = load ptr, ptr %pud.addr, align 8, !dbg !4081
  %1 = load i64, ptr %addr.addr, align 8, !dbg !4082
  %call = call ptr @pmd_offset(ptr noundef %0, i64 noundef %1) #15, !dbg !4083
  store ptr %call, ptr %pmd, align 8, !dbg !4080
  %2 = load ptr, ptr %pmd, align 8, !dbg !4084
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %2, i32 0, i32 0, !dbg !4085
  %3 = load i64, ptr %coerce.dive, align 8, !dbg !4085
  %call1 = call i32 @pmd_none(i64 %3) #15, !dbg !4085
  %tobool = icmp ne i32 %call1, 0, !dbg !4085
  br i1 %tobool, label %if.then, label %if.end5, !dbg !4086

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !4087
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4073, metadata !DIExpression()), !dbg !4088
  %4 = load i32, ptr %node.addr, align 4, !dbg !4089
  %call2 = call ptr @vmemmap_alloc_block_zero(i64 noundef 4096, i32 noundef %4) #18, !dbg !4090
  store ptr %call2, ptr %p, align 8, !dbg !4088
  %5 = load ptr, ptr %p, align 8, !dbg !4091
  %tobool3 = icmp ne ptr %5, null, !dbg !4091
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !4093

if.then4:                                         ; preds = %if.then
  store ptr null, ptr %retval, align 8, !dbg !4094
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4094

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %pmd, align 8, !dbg !4095
  %7 = load ptr, ptr %p, align 8, !dbg !4096
  call void @pmd_populate_kernel(ptr noundef @init_mm, ptr noundef %6, ptr noundef %7) #15, !dbg !4097
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4098
  br label %cleanup, !dbg !4098

cleanup:                                          ; preds = %if.end, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !4098
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup6 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end5, !dbg !4099

if.end5:                                          ; preds = %cleanup.cont, %entry
  %8 = load ptr, ptr %pmd, align 8, !dbg !4100
  store ptr %8, ptr %retval, align 8, !dbg !4101
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup6, !dbg !4101

cleanup6:                                         ; preds = %if.end5, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmd) #16, !dbg !4102
  %9 = load ptr, ptr %retval, align 8, !dbg !4102
  ret ptr %9, !dbg !4102
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pmd_offset(ptr noundef %pud, i64 noundef %address) #5 align 16 !dbg !4103 {
entry:
  %pud.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pud, ptr %pud.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pud.addr, metadata !4107, metadata !DIExpression()), !dbg !4109
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !4108, metadata !DIExpression()), !dbg !4110
  %0 = load ptr, ptr %pud.addr, align 8, !dbg !4111
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %0, i32 0, i32 0, !dbg !4112
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !4112
  %call = call ptr @pud_pgtable(i64 %1) #15, !dbg !4112
  %2 = load i64, ptr %address.addr, align 8, !dbg !4113
  %call1 = call i64 @pmd_index(i64 noundef %2) #15, !dbg !4114
  %add.ptr = getelementptr %struct.pmd_t, ptr %call, i64 %call1, !dbg !4115
  ret ptr %add.ptr, !dbg !4116
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pmd_none(i64 %pmd.coerce) #5 align 16 !dbg !4117 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %val = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !4121, metadata !DIExpression()), !dbg !4123
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !4124
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4122, metadata !DIExpression()), !dbg !4125
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !4126
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !4126
  %call = call i64 @native_pmd_val(i64 %0) #15, !dbg !4126
  store i64 %call, ptr %val, align 8, !dbg !4125
  %1 = load i64, ptr %val, align 8, !dbg !4127
  %and = and i64 %1, -97, !dbg !4128
  %cmp = icmp eq i64 %and, 0, !dbg !4129
  %conv = zext i1 %cmp to i32, !dbg !4129
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !4130
  ret i32 %conv, !dbg !4131
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal ptr @vmemmap_alloc_block_zero(i64 noundef %size, i32 noundef %node) #0 section ".init.text" align 16 !dbg !4132 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %node.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4134, metadata !DIExpression()), !dbg !4137
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !4135, metadata !DIExpression()), !dbg !4138
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !4139
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4136, metadata !DIExpression()), !dbg !4140
  %0 = load i64, ptr %size.addr, align 8, !dbg !4141
  %1 = load i32, ptr %node.addr, align 4, !dbg !4142
  %call = call ptr @vmemmap_alloc_block(i64 noundef %0, i32 noundef %1) #18, !dbg !4143
  store ptr %call, ptr %p, align 8, !dbg !4140
  %2 = load ptr, ptr %p, align 8, !dbg !4144
  %tobool = icmp ne ptr %2, null, !dbg !4144
  br i1 %tobool, label %if.end, label %if.then, !dbg !4146

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4147
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4147

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %p, align 8, !dbg !4148
  %4 = load i64, ptr %size.addr, align 8, !dbg !4149
  call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %4, i1 false), !dbg !4150
  %5 = load ptr, ptr %p, align 8, !dbg !4151
  store ptr %5, ptr %retval, align 8, !dbg !4152
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4152

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !4153
  %6 = load ptr, ptr %retval, align 8, !dbg !4153
  ret ptr %6, !dbg !4153
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pmd_populate_kernel(ptr noundef %mm, ptr noundef %pmd, ptr noundef %pte) #5 align 16 !dbg !4154 {
entry:
  %mm.addr = alloca ptr, align 8
  %pmd.addr = alloca ptr, align 8
  %pte.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.pmd_t, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !4159, metadata !DIExpression()), !dbg !4162
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !4160, metadata !DIExpression()), !dbg !4163
  store ptr %pte, ptr %pte.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pte.addr, metadata !4161, metadata !DIExpression()), !dbg !4164
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !4165
  %1 = load ptr, ptr %pte.addr, align 8, !dbg !4166
  %2 = ptrtoint ptr %1 to i64, !dbg !4166
  %call = call i64 @__phys_addr_nodebug(i64 noundef %2) #15, !dbg !4166
  %shr = lshr i64 %call, 12, !dbg !4167
  call void @paravirt_alloc_pte(ptr noundef %0, i64 noundef %shr) #15, !dbg !4168
  %3 = load ptr, ptr %pmd.addr, align 8, !dbg !4169
  %4 = load ptr, ptr %pte.addr, align 8, !dbg !4169
  %5 = ptrtoint ptr %4 to i64, !dbg !4169
  %call1 = call i64 @__phys_addr_nodebug(i64 noundef %5) #15, !dbg !4169
  %or = or i64 %call1, 103, !dbg !4169
  %call2 = call i64 @native_make_pmd(i64 noundef %or) #15, !dbg !4169
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %agg.tmp, i32 0, i32 0, !dbg !4169
  store i64 %call2, ptr %coerce.dive, align 8, !dbg !4169
  %coerce.dive3 = getelementptr inbounds %struct.pmd_t, ptr %agg.tmp, i32 0, i32 0, !dbg !4169
  %6 = load i64, ptr %coerce.dive3, align 8, !dbg !4169
  call void @native_set_pmd(ptr noundef %3, i64 %6) #15, !dbg !4169
  ret void, !dbg !4170
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define weak hidden void @pmd_init(ptr noundef %addr) #0 section ".init.text" align 16 !dbg !4171 {
entry:
  %addr.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4173, metadata !DIExpression()), !dbg !4174
  ret void, !dbg !4175
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden ptr @vmemmap_pud_populate(ptr noundef %p4d, i64 noundef %addr, i32 noundef %node) #0 section ".init.text" align 16 !dbg !4176 {
entry:
  %retval = alloca ptr, align 8
  %p4d.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %node.addr = alloca i32, align 4
  %pud = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p4d, ptr %p4d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d.addr, metadata !4180, metadata !DIExpression()), !dbg !4187
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4181, metadata !DIExpression()), !dbg !4188
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !4182, metadata !DIExpression()), !dbg !4189
  call void @llvm.lifetime.start.p0(i64 8, ptr %pud) #16, !dbg !4190
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !4183, metadata !DIExpression()), !dbg !4191
  %0 = load ptr, ptr %p4d.addr, align 8, !dbg !4192
  %1 = load i64, ptr %addr.addr, align 8, !dbg !4193
  %call = call ptr @pud_offset(ptr noundef %0, i64 noundef %1) #15, !dbg !4194
  store ptr %call, ptr %pud, align 8, !dbg !4191
  %2 = load ptr, ptr %pud, align 8, !dbg !4195
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %2, i32 0, i32 0, !dbg !4196
  %3 = load i64, ptr %coerce.dive, align 8, !dbg !4196
  %call1 = call i32 @pud_none(i64 %3) #15, !dbg !4196
  %tobool = icmp ne i32 %call1, 0, !dbg !4196
  br i1 %tobool, label %if.then, label %if.end5, !dbg !4197

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !4198
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4184, metadata !DIExpression()), !dbg !4199
  %4 = load i32, ptr %node.addr, align 4, !dbg !4200
  %call2 = call ptr @vmemmap_alloc_block_zero(i64 noundef 4096, i32 noundef %4) #18, !dbg !4201
  store ptr %call2, ptr %p, align 8, !dbg !4199
  %5 = load ptr, ptr %p, align 8, !dbg !4202
  %tobool3 = icmp ne ptr %5, null, !dbg !4202
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !4204

if.then4:                                         ; preds = %if.then
  store ptr null, ptr %retval, align 8, !dbg !4205
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4205

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %p, align 8, !dbg !4206
  call void @pmd_init(ptr noundef %6) #18, !dbg !4207
  %7 = load ptr, ptr %pud, align 8, !dbg !4208
  %8 = load ptr, ptr %p, align 8, !dbg !4209
  call void @pud_populate(ptr noundef @init_mm, ptr noundef %7, ptr noundef %8) #15, !dbg !4210
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4211
  br label %cleanup, !dbg !4211

cleanup:                                          ; preds = %if.end, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !4211
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup6 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end5, !dbg !4212

if.end5:                                          ; preds = %cleanup.cont, %entry
  %9 = load ptr, ptr %pud, align 8, !dbg !4213
  store ptr %9, ptr %retval, align 8, !dbg !4214
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup6, !dbg !4214

cleanup6:                                         ; preds = %if.end5, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %pud) #16, !dbg !4215
  %10 = load ptr, ptr %retval, align 8, !dbg !4215
  ret ptr %10, !dbg !4215
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pud_offset(ptr noundef %p4d, i64 noundef %address) #5 align 16 !dbg !4216 {
entry:
  %p4d.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %p4d, ptr %p4d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d.addr, metadata !4220, metadata !DIExpression()), !dbg !4222
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !4221, metadata !DIExpression()), !dbg !4223
  %0 = load ptr, ptr %p4d.addr, align 8, !dbg !4224
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %0, i32 0, i32 0, !dbg !4225
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !4225
  %call = call ptr @p4d_pgtable(i64 %1) #15, !dbg !4225
  %2 = load i64, ptr %address.addr, align 8, !dbg !4226
  %call1 = call i64 @pud_index(i64 noundef %2) #15, !dbg !4227
  %add.ptr = getelementptr %struct.pud_t, ptr %call, i64 %call1, !dbg !4228
  ret ptr %add.ptr, !dbg !4229
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pud_none(i64 %pud.coerce) #5 align 16 !dbg !4230 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !4234, metadata !DIExpression()), !dbg !4235
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !4236
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !4236
  %call = call i64 @native_pud_val(i64 %0) #15, !dbg !4236
  %and = and i64 %call, -97, !dbg !4237
  %cmp = icmp eq i64 %and, 0, !dbg !4238
  %conv = zext i1 %cmp to i32, !dbg !4238
  ret i32 %conv, !dbg !4239
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pud_populate(ptr noundef %mm, ptr noundef %pud, ptr noundef %pmd) #5 align 16 !dbg !4240 {
entry:
  %mm.addr = alloca ptr, align 8
  %pud.addr = alloca ptr, align 8
  %pmd.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.pud_t, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !4244, metadata !DIExpression()), !dbg !4247
  store ptr %pud, ptr %pud.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pud.addr, metadata !4245, metadata !DIExpression()), !dbg !4248
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !4246, metadata !DIExpression()), !dbg !4249
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !4250
  %1 = load ptr, ptr %pmd.addr, align 8, !dbg !4251
  %2 = ptrtoint ptr %1 to i64, !dbg !4251
  %call = call i64 @__phys_addr_nodebug(i64 noundef %2) #15, !dbg !4251
  %shr = lshr i64 %call, 12, !dbg !4252
  call void @paravirt_alloc_pmd(ptr noundef %0, i64 noundef %shr) #15, !dbg !4253
  %3 = load ptr, ptr %pud.addr, align 8, !dbg !4254
  %4 = load ptr, ptr %pmd.addr, align 8, !dbg !4254
  %5 = ptrtoint ptr %4 to i64, !dbg !4254
  %call1 = call i64 @__phys_addr_nodebug(i64 noundef %5) #15, !dbg !4254
  %or = or i64 103, %call1, !dbg !4254
  %call2 = call i64 @native_make_pud(i64 noundef %or) #15, !dbg !4254
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %agg.tmp, i32 0, i32 0, !dbg !4254
  store i64 %call2, ptr %coerce.dive, align 8, !dbg !4254
  %coerce.dive3 = getelementptr inbounds %struct.pud_t, ptr %agg.tmp, i32 0, i32 0, !dbg !4254
  %6 = load i64, ptr %coerce.dive3, align 8, !dbg !4254
  call void @native_set_pud(ptr noundef %3, i64 %6) #15, !dbg !4254
  ret void, !dbg !4255
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define weak hidden void @pud_init(ptr noundef %addr) #0 section ".init.text" align 16 !dbg !4256 {
entry:
  %addr.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4258, metadata !DIExpression()), !dbg !4259
  ret void, !dbg !4260
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden ptr @vmemmap_p4d_populate(ptr noundef %pgd, i64 noundef %addr, i32 noundef %node) #0 section ".init.text" align 16 !dbg !4261 {
entry:
  %retval = alloca ptr, align 8
  %pgd.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %node.addr = alloca i32, align 4
  %p4d = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !4265, metadata !DIExpression()), !dbg !4272
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4266, metadata !DIExpression()), !dbg !4273
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !4267, metadata !DIExpression()), !dbg !4274
  call void @llvm.lifetime.start.p0(i64 8, ptr %p4d) #16, !dbg !4275
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !4268, metadata !DIExpression()), !dbg !4276
  %0 = load ptr, ptr %pgd.addr, align 8, !dbg !4277
  %1 = load i64, ptr %addr.addr, align 8, !dbg !4278
  %call = call ptr @p4d_offset(ptr noundef %0, i64 noundef %1) #15, !dbg !4279
  store ptr %call, ptr %p4d, align 8, !dbg !4276
  %2 = load ptr, ptr %p4d, align 8, !dbg !4280
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %2, i32 0, i32 0, !dbg !4281
  %3 = load i64, ptr %coerce.dive, align 8, !dbg !4281
  %call1 = call i32 @p4d_none(i64 %3) #15, !dbg !4281
  %tobool = icmp ne i32 %call1, 0, !dbg !4281
  br i1 %tobool, label %if.then, label %if.end5, !dbg !4282

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !4283
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4269, metadata !DIExpression()), !dbg !4284
  %4 = load i32, ptr %node.addr, align 4, !dbg !4285
  %call2 = call ptr @vmemmap_alloc_block_zero(i64 noundef 4096, i32 noundef %4) #18, !dbg !4286
  store ptr %call2, ptr %p, align 8, !dbg !4284
  %5 = load ptr, ptr %p, align 8, !dbg !4287
  %tobool3 = icmp ne ptr %5, null, !dbg !4287
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !4289

if.then4:                                         ; preds = %if.then
  store ptr null, ptr %retval, align 8, !dbg !4290
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4290

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %p, align 8, !dbg !4291
  call void @pud_init(ptr noundef %6) #18, !dbg !4292
  %7 = load ptr, ptr %p4d, align 8, !dbg !4293
  %8 = load ptr, ptr %p, align 8, !dbg !4294
  call void @p4d_populate(ptr noundef @init_mm, ptr noundef %7, ptr noundef %8) #15, !dbg !4295
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4296
  br label %cleanup, !dbg !4296

cleanup:                                          ; preds = %if.end, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !4296
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup6 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end5, !dbg !4297

if.end5:                                          ; preds = %cleanup.cont, %entry
  %9 = load ptr, ptr %p4d, align 8, !dbg !4298
  store ptr %9, ptr %retval, align 8, !dbg !4299
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup6, !dbg !4299

cleanup6:                                         ; preds = %if.end5, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %p4d) #16, !dbg !4300
  %10 = load ptr, ptr %retval, align 8, !dbg !4300
  ret ptr %10, !dbg !4300
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @p4d_offset(ptr noundef %pgd, i64 noundef %address) #5 align 16 !dbg !4301 {
entry:
  %retval = alloca ptr, align 8
  %pgd.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !4305, metadata !DIExpression()), !dbg !4307
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !4306, metadata !DIExpression()), !dbg !4308
  br i1 false, label %cond.true, label %cond.false, !dbg !4309

cond.true:                                        ; preds = %entry
  br i1 false, label %if.end, label %if.then, !dbg !4310

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !4309

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !4310

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.end, label %if.then, !dbg !4310

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !4310
  br i1 %call, label %if.end, label %if.then, !dbg !4310

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #15, !dbg !4310
  br i1 %call5, label %if.end, label %if.then, !dbg !4309

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %0 = load ptr, ptr %pgd.addr, align 8, !dbg !4312
  store ptr %0, ptr %retval, align 8, !dbg !4313
  br label %return, !dbg !4313

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %1 = load ptr, ptr %pgd.addr, align 8, !dbg !4314
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %1, i32 0, i32 0, !dbg !4315
  %2 = load i64, ptr %coerce.dive, align 8, !dbg !4315
  %call6 = call i64 @pgd_page_vaddr(i64 %2) #15, !dbg !4315
  %3 = inttoptr i64 %call6 to ptr, !dbg !4316
  %4 = load i64, ptr %address.addr, align 8, !dbg !4317
  %call7 = call i64 @p4d_index(i64 noundef %4) #15, !dbg !4318
  %add.ptr = getelementptr %struct.p4d_t, ptr %3, i64 %call7, !dbg !4319
  store ptr %add.ptr, ptr %retval, align 8, !dbg !4320
  br label %return, !dbg !4320

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !4321
  ret ptr %5, !dbg !4321
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @p4d_none(i64 %p4d.coerce) #5 align 16 !dbg !4322 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !4326, metadata !DIExpression()), !dbg !4327
  %coerce.dive1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !4328
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !4328
  %call = call i64 @native_p4d_val(i64 %0) #15, !dbg !4328
  %and = and i64 %call, -97, !dbg !4329
  %cmp = icmp eq i64 %and, 0, !dbg !4330
  %conv = zext i1 %cmp to i32, !dbg !4330
  ret i32 %conv, !dbg !4331
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @p4d_populate(ptr noundef %mm, ptr noundef %p4d, ptr noundef %pud) #5 align 16 !dbg !4332 {
entry:
  %mm.addr = alloca ptr, align 8
  %p4d.addr = alloca ptr, align 8
  %pud.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.p4d_t, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !4336, metadata !DIExpression()), !dbg !4339
  store ptr %p4d, ptr %p4d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d.addr, metadata !4337, metadata !DIExpression()), !dbg !4340
  store ptr %pud, ptr %pud.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pud.addr, metadata !4338, metadata !DIExpression()), !dbg !4341
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !4342
  %1 = load ptr, ptr %pud.addr, align 8, !dbg !4343
  %2 = ptrtoint ptr %1 to i64, !dbg !4343
  %call = call i64 @__phys_addr_nodebug(i64 noundef %2) #15, !dbg !4343
  %shr = lshr i64 %call, 12, !dbg !4344
  call void @paravirt_alloc_pud(ptr noundef %0, i64 noundef %shr) #15, !dbg !4345
  %3 = load ptr, ptr %p4d.addr, align 8, !dbg !4346
  %4 = load ptr, ptr %pud.addr, align 8, !dbg !4346
  %5 = ptrtoint ptr %4 to i64, !dbg !4346
  %call1 = call i64 @__phys_addr_nodebug(i64 noundef %5) #15, !dbg !4346
  %or = or i64 103, %call1, !dbg !4346
  %call2 = call i64 @native_make_p4d(i64 noundef %or) #15, !dbg !4346
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %agg.tmp, i32 0, i32 0, !dbg !4346
  store i64 %call2, ptr %coerce.dive, align 8, !dbg !4346
  %coerce.dive3 = getelementptr inbounds %struct.p4d_t, ptr %agg.tmp, i32 0, i32 0, !dbg !4346
  %6 = load i64, ptr %coerce.dive3, align 8, !dbg !4346
  call void @native_set_p4d(ptr noundef %3, i64 %6) #15, !dbg !4346
  ret void, !dbg !4347
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden ptr @vmemmap_pgd_populate(i64 noundef %addr, i32 noundef %node) #0 section ".init.text" align 16 !dbg !4348 {
entry:
  %retval = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %node.addr = alloca i32, align 4
  %pgd = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4352, metadata !DIExpression()), !dbg !4358
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !4353, metadata !DIExpression()), !dbg !4359
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #16, !dbg !4360
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !4354, metadata !DIExpression()), !dbg !4361
  %0 = load ptr, ptr getelementptr inbounds (%struct.anon.13, ptr @init_mm, i32 0, i32 8), align 64, !dbg !4362
  %1 = load i64, ptr %addr.addr, align 8, !dbg !4362
  %call = call ptr @pgd_offset_pgd(ptr noundef %0, i64 noundef %1) #15, !dbg !4362
  store ptr %call, ptr %pgd, align 8, !dbg !4361
  %2 = load ptr, ptr %pgd, align 8, !dbg !4363
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %2, i32 0, i32 0, !dbg !4364
  %3 = load i64, ptr %coerce.dive, align 8, !dbg !4364
  %call1 = call i32 @pgd_none(i64 %3) #15, !dbg !4364
  %tobool = icmp ne i32 %call1, 0, !dbg !4364
  br i1 %tobool, label %if.then, label %if.end5, !dbg !4365

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !4366
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4355, metadata !DIExpression()), !dbg !4367
  %4 = load i32, ptr %node.addr, align 4, !dbg !4368
  %call2 = call ptr @vmemmap_alloc_block_zero(i64 noundef 4096, i32 noundef %4) #18, !dbg !4369
  store ptr %call2, ptr %p, align 8, !dbg !4367
  %5 = load ptr, ptr %p, align 8, !dbg !4370
  %tobool3 = icmp ne ptr %5, null, !dbg !4370
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !4372

if.then4:                                         ; preds = %if.then
  store ptr null, ptr %retval, align 8, !dbg !4373
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4373

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %pgd, align 8, !dbg !4374
  %7 = load ptr, ptr %p, align 8, !dbg !4375
  call void @pgd_populate(ptr noundef @init_mm, ptr noundef %6, ptr noundef %7) #15, !dbg !4376
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4377
  br label %cleanup, !dbg !4377

cleanup:                                          ; preds = %if.end, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !4377
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup6 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end5, !dbg !4378

if.end5:                                          ; preds = %cleanup.cont, %entry
  %8 = load ptr, ptr %pgd, align 8, !dbg !4379
  store ptr %8, ptr %retval, align 8, !dbg !4380
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup6, !dbg !4380

cleanup6:                                         ; preds = %if.end5, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #16, !dbg !4381
  %9 = load ptr, ptr %retval, align 8, !dbg !4381
  ret ptr %9, !dbg !4381
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pgd_offset_pgd(ptr noundef %pgd, i64 noundef %address) #5 align 16 !dbg !4382 {
entry:
  %pgd.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !4386, metadata !DIExpression()), !dbg !4388
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !4387, metadata !DIExpression()), !dbg !4389
  %0 = load ptr, ptr %pgd.addr, align 8, !dbg !4390
  %1 = load i64, ptr %address.addr, align 8, !dbg !4391
  %2 = load i32, ptr @pgdir_shift, align 4, !dbg !4391
  %sh_prom = zext i32 %2 to i64, !dbg !4391
  %shr = lshr i64 %1, %sh_prom, !dbg !4391
  %and = and i64 %shr, 511, !dbg !4391
  %add.ptr = getelementptr %struct.pgd_t, ptr %0, i64 %and, !dbg !4392
  ret ptr %add.ptr, !dbg !4393
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pgd_none(i64 %pgd.coerce) #5 align 16 !dbg !4394 {
entry:
  %retval = alloca i32, align 4
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !4398, metadata !DIExpression()), !dbg !4399
  br i1 false, label %cond.true, label %cond.false, !dbg !4400

cond.true:                                        ; preds = %entry
  br i1 false, label %if.end, label %if.then, !dbg !4401

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !4400

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !4401

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.end, label %if.then, !dbg !4401

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !4401
  br i1 %call, label %if.end, label %if.then, !dbg !4401

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #15, !dbg !4401
  br i1 %call5, label %if.end, label %if.then, !dbg !4400

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  store i32 0, ptr %retval, align 4, !dbg !4403
  br label %return, !dbg !4403

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %coerce.dive6 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !4404
  %0 = load i64, ptr %coerce.dive6, align 8, !dbg !4404
  %call7 = call i64 @native_pgd_val(i64 %0) #15, !dbg !4404
  %tobool = icmp ne i64 %call7, 0, !dbg !4405
  %lnot = xor i1 %tobool, true, !dbg !4405
  %lnot.ext = zext i1 %lnot to i32, !dbg !4405
  store i32 %lnot.ext, ptr %retval, align 4, !dbg !4406
  br label %return, !dbg !4406

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !4407
  ret i32 %1, !dbg !4407
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pgd_populate(ptr noundef %mm, ptr noundef %pgd, ptr noundef %p4d) #5 align 16 !dbg !4408 {
entry:
  %mm.addr = alloca ptr, align 8
  %pgd.addr = alloca ptr, align 8
  %p4d.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.pgd_t, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !4412, metadata !DIExpression()), !dbg !4415
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !4413, metadata !DIExpression()), !dbg !4416
  store ptr %p4d, ptr %p4d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d.addr, metadata !4414, metadata !DIExpression()), !dbg !4417
  br i1 false, label %cond.true, label %cond.false, !dbg !4418

cond.true:                                        ; preds = %entry
  br i1 false, label %if.end, label %if.then, !dbg !4419

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !4418

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !4419

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.end, label %if.then, !dbg !4419

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !4419
  br i1 %call, label %if.end, label %if.then, !dbg !4419

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #15, !dbg !4419
  br i1 %call5, label %if.end, label %if.then, !dbg !4418

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  br label %return, !dbg !4421

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !4422
  %1 = load ptr, ptr %p4d.addr, align 8, !dbg !4423
  %2 = ptrtoint ptr %1 to i64, !dbg !4423
  %call6 = call i64 @__phys_addr_nodebug(i64 noundef %2) #15, !dbg !4423
  %shr = lshr i64 %call6, 12, !dbg !4424
  call void @paravirt_alloc_p4d(ptr noundef %0, i64 noundef %shr) #15, !dbg !4425
  %3 = load ptr, ptr %pgd.addr, align 8, !dbg !4426
  %4 = load ptr, ptr %p4d.addr, align 8, !dbg !4426
  %5 = ptrtoint ptr %4 to i64, !dbg !4426
  %call7 = call i64 @__phys_addr_nodebug(i64 noundef %5) #15, !dbg !4426
  %or = or i64 103, %call7, !dbg !4426
  %call8 = call i64 @native_make_pgd(i64 noundef %or) #15, !dbg !4426
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %agg.tmp, i32 0, i32 0, !dbg !4426
  store i64 %call8, ptr %coerce.dive, align 8, !dbg !4426
  %coerce.dive9 = getelementptr inbounds %struct.pgd_t, ptr %agg.tmp, i32 0, i32 0, !dbg !4426
  %6 = load i64, ptr %coerce.dive9, align 8, !dbg !4426
  call void @native_set_pgd(ptr noundef %3, i64 %6) #15, !dbg !4426
  br label %return, !dbg !4427

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4427
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @vmemmap_populate_basepages(i64 noundef %start, i64 noundef %end, i32 noundef %node, ptr noundef %altmap) #0 section ".init.text" align 16 !dbg !4428 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %node.addr = alloca i32, align 4
  %altmap.addr = alloca ptr, align 8
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4432, metadata !DIExpression()), !dbg !4436
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !4433, metadata !DIExpression()), !dbg !4437
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !4434, metadata !DIExpression()), !dbg !4438
  store ptr %altmap, ptr %altmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %altmap.addr, metadata !4435, metadata !DIExpression()), !dbg !4439
  %0 = load i64, ptr %start.addr, align 8, !dbg !4440
  %1 = load i64, ptr %end.addr, align 8, !dbg !4441
  %2 = load i32, ptr %node.addr, align 4, !dbg !4442
  %3 = load ptr, ptr %altmap.addr, align 8, !dbg !4443
  %call = call i32 @vmemmap_populate_range(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef null) #18, !dbg !4444
  ret i32 %call, !dbg !4445
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @vmemmap_populate_range(i64 noundef %start, i64 noundef %end, i32 noundef %node, ptr noundef %altmap, ptr noundef %reuse) #0 section ".init.text" align 16 !dbg !4446 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %node.addr = alloca i32, align 4
  %altmap.addr = alloca ptr, align 8
  %reuse.addr = alloca ptr, align 8
  %addr = alloca i64, align 8
  %pte = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4450, metadata !DIExpression()), !dbg !4457
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !4451, metadata !DIExpression()), !dbg !4458
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !4452, metadata !DIExpression()), !dbg !4459
  store ptr %altmap, ptr %altmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %altmap.addr, metadata !4453, metadata !DIExpression()), !dbg !4460
  store ptr %reuse, ptr %reuse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %reuse.addr, metadata !4454, metadata !DIExpression()), !dbg !4461
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #16, !dbg !4462
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !4455, metadata !DIExpression()), !dbg !4463
  %0 = load i64, ptr %start.addr, align 8, !dbg !4464
  store i64 %0, ptr %addr, align 8, !dbg !4463
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #16, !dbg !4465
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !4456, metadata !DIExpression()), !dbg !4466
  br label %for.cond, !dbg !4467

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %addr, align 8, !dbg !4468
  %2 = load i64, ptr %end.addr, align 8, !dbg !4471
  %cmp = icmp ult i64 %1, %2, !dbg !4472
  br i1 %cmp, label %for.body, label %for.end, !dbg !4473

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %addr, align 8, !dbg !4474
  %4 = load i32, ptr %node.addr, align 4, !dbg !4476
  %5 = load ptr, ptr %altmap.addr, align 8, !dbg !4477
  %6 = load ptr, ptr %reuse.addr, align 8, !dbg !4478
  %call = call ptr @vmemmap_populate_address(i64 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #18, !dbg !4479
  store ptr %call, ptr %pte, align 8, !dbg !4480
  %7 = load ptr, ptr %pte, align 8, !dbg !4481
  %tobool = icmp ne ptr %7, null, !dbg !4481
  br i1 %tobool, label %if.end, label %if.then, !dbg !4483

if.then:                                          ; preds = %for.body
  store i32 -12, ptr %retval, align 4, !dbg !4484
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4484

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4485

for.inc:                                          ; preds = %if.end
  %8 = load i64, ptr %addr, align 8, !dbg !4486
  %add = add i64 %8, 4096, !dbg !4486
  store i64 %add, ptr %addr, align 8, !dbg !4486
  br label %for.cond, !dbg !4487, !llvm.loop !4488

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !4491
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4491

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #16, !dbg !4492
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #16, !dbg !4492
  %9 = load i32, ptr %retval, align 4, !dbg !4492
  ret i32 %9, !dbg !4492
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define weak hidden void @vmemmap_set_pmd(ptr noundef %pmd, ptr noundef %p, i32 noundef %node, i64 noundef %addr, i64 noundef %next) #0 section ".init.text" align 16 !dbg !4493 {
entry:
  %pmd.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %node.addr = alloca i32, align 4
  %addr.addr = alloca i64, align 8
  %next.addr = alloca i64, align 8
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !4497, metadata !DIExpression()), !dbg !4502
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4498, metadata !DIExpression()), !dbg !4503
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !4499, metadata !DIExpression()), !dbg !4504
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4500, metadata !DIExpression()), !dbg !4505
  store i64 %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4501, metadata !DIExpression()), !dbg !4506
  ret void, !dbg !4507
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define weak hidden i32 @vmemmap_check_pmd(ptr noundef %pmd, i32 noundef %node, i64 noundef %addr, i64 noundef %next) #0 section ".init.text" align 16 !dbg !4508 {
entry:
  %pmd.addr = alloca ptr, align 8
  %node.addr = alloca i32, align 4
  %addr.addr = alloca i64, align 8
  %next.addr = alloca i64, align 8
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !4512, metadata !DIExpression()), !dbg !4516
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !4513, metadata !DIExpression()), !dbg !4517
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4514, metadata !DIExpression()), !dbg !4518
  store i64 %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4515, metadata !DIExpression()), !dbg !4519
  ret i32 0, !dbg !4520
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @vmemmap_populate_hugepages(i64 noundef %start, i64 noundef %end, i32 noundef %node, ptr noundef %altmap) #0 section ".init.text" align 16 !dbg !4521 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %node.addr = alloca i32, align 4
  %altmap.addr = alloca ptr, align 8
  %addr = alloca i64, align 8
  %next = alloca i64, align 8
  %pgd = alloca ptr, align 8
  %p4d = alloca ptr, align 8
  %pud = alloca ptr, align 8
  %pmd = alloca ptr, align 8
  %__boundary = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %agg.tmp = alloca %struct.pmd_t, align 8
  %p = alloca ptr, align 8
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4523, metadata !DIExpression()), !dbg !4541
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !4524, metadata !DIExpression()), !dbg !4542
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !4525, metadata !DIExpression()), !dbg !4543
  store ptr %altmap, ptr %altmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %altmap.addr, metadata !4526, metadata !DIExpression()), !dbg !4544
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #16, !dbg !4545
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !4527, metadata !DIExpression()), !dbg !4546
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #16, !dbg !4547
  call void @llvm.dbg.declare(metadata ptr %next, metadata !4528, metadata !DIExpression()), !dbg !4548
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #16, !dbg !4549
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !4529, metadata !DIExpression()), !dbg !4550
  call void @llvm.lifetime.start.p0(i64 8, ptr %p4d) #16, !dbg !4551
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !4530, metadata !DIExpression()), !dbg !4552
  call void @llvm.lifetime.start.p0(i64 8, ptr %pud) #16, !dbg !4553
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !4531, metadata !DIExpression()), !dbg !4554
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmd) #16, !dbg !4555
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !4532, metadata !DIExpression()), !dbg !4556
  %0 = load i64, ptr %start.addr, align 8, !dbg !4557
  store i64 %0, ptr %addr, align 8, !dbg !4558
  br label %for.cond, !dbg !4559

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %addr, align 8, !dbg !4560
  %2 = load i64, ptr %end.addr, align 8, !dbg !4561
  %cmp = icmp ult i64 %1, %2, !dbg !4562
  br i1 %cmp, label %for.body, label %for.end, !dbg !4563

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__boundary) #16, !dbg !4564
  call void @llvm.dbg.declare(metadata ptr %__boundary, metadata !4533, metadata !DIExpression()), !dbg !4564
  %3 = load i64, ptr %addr, align 8, !dbg !4564
  %add = add i64 %3, 2097152, !dbg !4564
  %and = and i64 %add, -2097152, !dbg !4564
  store i64 %and, ptr %__boundary, align 8, !dbg !4564
  %4 = load i64, ptr %__boundary, align 8, !dbg !4564
  %sub = sub i64 %4, 1, !dbg !4564
  %5 = load i64, ptr %end.addr, align 8, !dbg !4564
  %sub1 = sub i64 %5, 1, !dbg !4564
  %cmp2 = icmp ult i64 %sub, %sub1, !dbg !4564
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !4564

cond.true:                                        ; preds = %for.body
  %6 = load i64, ptr %__boundary, align 8, !dbg !4564
  br label %cond.end, !dbg !4564

cond.false:                                       ; preds = %for.body
  %7 = load i64, ptr %end.addr, align 8, !dbg !4564
  br label %cond.end, !dbg !4564

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !4564
  store i64 %cond, ptr %tmp, align 8, !dbg !4564
  call void @llvm.lifetime.end.p0(i64 8, ptr %__boundary) #16, !dbg !4565
  %8 = load i64, ptr %tmp, align 8, !dbg !4564
  store i64 %8, ptr %next, align 8, !dbg !4566
  %9 = load i64, ptr %addr, align 8, !dbg !4567
  %10 = load i32, ptr %node.addr, align 4, !dbg !4568
  %call = call ptr @vmemmap_pgd_populate(i64 noundef %9, i32 noundef %10) #18, !dbg !4569
  store ptr %call, ptr %pgd, align 8, !dbg !4570
  %11 = load ptr, ptr %pgd, align 8, !dbg !4571
  %tobool = icmp ne ptr %11, null, !dbg !4571
  br i1 %tobool, label %if.end, label %if.then, !dbg !4573

if.then:                                          ; preds = %cond.end
  store i32 -12, ptr %retval, align 4, !dbg !4574
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !4574

if.end:                                           ; preds = %cond.end
  %12 = load ptr, ptr %pgd, align 8, !dbg !4575
  %13 = load i64, ptr %addr, align 8, !dbg !4576
  %14 = load i32, ptr %node.addr, align 4, !dbg !4577
  %call3 = call ptr @vmemmap_p4d_populate(ptr noundef %12, i64 noundef %13, i32 noundef %14) #18, !dbg !4578
  store ptr %call3, ptr %p4d, align 8, !dbg !4579
  %15 = load ptr, ptr %p4d, align 8, !dbg !4580
  %tobool4 = icmp ne ptr %15, null, !dbg !4580
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4582

if.then5:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !4583
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !4583

if.end6:                                          ; preds = %if.end
  %16 = load ptr, ptr %p4d, align 8, !dbg !4584
  %17 = load i64, ptr %addr, align 8, !dbg !4585
  %18 = load i32, ptr %node.addr, align 4, !dbg !4586
  %call7 = call ptr @vmemmap_pud_populate(ptr noundef %16, i64 noundef %17, i32 noundef %18) #18, !dbg !4587
  store ptr %call7, ptr %pud, align 8, !dbg !4588
  %19 = load ptr, ptr %pud, align 8, !dbg !4589
  %tobool8 = icmp ne ptr %19, null, !dbg !4589
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !4591

if.then9:                                         ; preds = %if.end6
  store i32 -12, ptr %retval, align 4, !dbg !4592
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !4592

if.end10:                                         ; preds = %if.end6
  %20 = load ptr, ptr %pud, align 8, !dbg !4593
  %21 = load i64, ptr %addr, align 8, !dbg !4594
  %call11 = call ptr @pmd_offset(ptr noundef %20, i64 noundef %21) #15, !dbg !4595
  store ptr %call11, ptr %pmd, align 8, !dbg !4596
  br label %do.body, !dbg !4597

do.body:                                          ; preds = %if.end10
  br label %do.cond, !dbg !4599

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4599

do.end:                                           ; preds = %do.cond
  %22 = load ptr, ptr %pmd, align 8, !dbg !4597
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %22, i64 8, i1 true), !dbg !4597
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %agg.tmp, i32 0, i32 0, !dbg !4601
  %23 = load i64, ptr %coerce.dive, align 8, !dbg !4601
  %call12 = call i32 @pmd_none(i64 %23) #15, !dbg !4601
  %tobool13 = icmp ne i32 %call12, 0, !dbg !4601
  br i1 %tobool13, label %if.then14, label %if.else22, !dbg !4602

if.then14:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !4603
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4538, metadata !DIExpression()), !dbg !4604
  %24 = load i32, ptr %node.addr, align 4, !dbg !4605
  %25 = load ptr, ptr %altmap.addr, align 8, !dbg !4606
  %call15 = call ptr @vmemmap_alloc_block_buf(i64 noundef 2097152, i32 noundef %24, ptr noundef %25) #18, !dbg !4607
  store ptr %call15, ptr %p, align 8, !dbg !4608
  %26 = load ptr, ptr %p, align 8, !dbg !4609
  %tobool16 = icmp ne ptr %26, null, !dbg !4609
  br i1 %tobool16, label %if.then17, label %if.else, !dbg !4611

if.then17:                                        ; preds = %if.then14
  %27 = load ptr, ptr %pmd, align 8, !dbg !4612
  %28 = load ptr, ptr %p, align 8, !dbg !4614
  %29 = load i32, ptr %node.addr, align 4, !dbg !4615
  %30 = load i64, ptr %addr, align 8, !dbg !4616
  %31 = load i64, ptr %next, align 8, !dbg !4617
  call void @vmemmap_set_pmd(ptr noundef %27, ptr noundef %28, i32 noundef %29, i64 noundef %30, i64 noundef %31) #18, !dbg !4618
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4619

if.else:                                          ; preds = %if.then14
  %32 = load ptr, ptr %altmap.addr, align 8, !dbg !4620
  %tobool18 = icmp ne ptr %32, null, !dbg !4620
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !4622

if.then19:                                        ; preds = %if.else
  store i32 -12, ptr %retval, align 4, !dbg !4623
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4623

if.end20:                                         ; preds = %if.else
  br label %if.end21

if.end21:                                         ; preds = %if.end20
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4625
  br label %cleanup, !dbg !4625

cleanup:                                          ; preds = %if.end21, %if.then19, %if.then17
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !4625
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup32 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end27, !dbg !4626

if.else22:                                        ; preds = %do.end
  %33 = load ptr, ptr %pmd, align 8, !dbg !4627
  %34 = load i32, ptr %node.addr, align 4, !dbg !4629
  %35 = load i64, ptr %addr, align 8, !dbg !4630
  %36 = load i64, ptr %next, align 8, !dbg !4631
  %call23 = call i32 @vmemmap_check_pmd(ptr noundef %33, i32 noundef %34, i64 noundef %35, i64 noundef %36) #18, !dbg !4632
  %tobool24 = icmp ne i32 %call23, 0, !dbg !4632
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !4633

if.then25:                                        ; preds = %if.else22
  br label %for.inc, !dbg !4634

if.end26:                                         ; preds = %if.else22
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %cleanup.cont
  %37 = load i64, ptr %addr, align 8, !dbg !4635
  %38 = load i64, ptr %next, align 8, !dbg !4637
  %39 = load i32, ptr %node.addr, align 4, !dbg !4638
  %40 = load ptr, ptr %altmap.addr, align 8, !dbg !4639
  %call28 = call i32 @vmemmap_populate_basepages(i64 noundef %37, i64 noundef %38, i32 noundef %39, ptr noundef %40) #18, !dbg !4640
  %tobool29 = icmp ne i32 %call28, 0, !dbg !4640
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !4641

if.then30:                                        ; preds = %if.end27
  store i32 -12, ptr %retval, align 4, !dbg !4642
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !4642

if.end31:                                         ; preds = %if.end27
  br label %for.inc, !dbg !4643

for.inc:                                          ; preds = %if.end31, %if.then25, %cleanup
  %41 = load i64, ptr %next, align 8, !dbg !4644
  store i64 %41, ptr %addr, align 8, !dbg !4645
  br label %for.cond, !dbg !4646, !llvm.loop !4647

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !4649
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !4649

cleanup32:                                        ; preds = %for.end, %if.then30, %cleanup, %if.then9, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmd) #16, !dbg !4650
  call void @llvm.lifetime.end.p0(i64 8, ptr %pud) #16, !dbg !4650
  call void @llvm.lifetime.end.p0(i64 8, ptr %p4d) #16, !dbg !4650
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #16, !dbg !4650
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #16, !dbg !4650
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #16, !dbg !4650
  %42 = load i32, ptr %retval, align 4, !dbg !4650
  ret i32 %42, !dbg !4650
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden ptr @__populate_section_memmap(i64 noundef %pfn, i64 noundef %nr_pages, i32 noundef %nid, ptr noundef %altmap, ptr noundef %pgmap) #0 section ".init.text" align 16 !dbg !4651 {
entry:
  %retval = alloca ptr, align 8
  %pfn.addr = alloca i64, align 8
  %nr_pages.addr = alloca i64, align 8
  %nid.addr = alloca i32, align 4
  %altmap.addr = alloca ptr, align 8
  %pgmap.addr = alloca ptr, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %r = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !4655, metadata !DIExpression()), !dbg !4669
  store i64 %nr_pages, ptr %nr_pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_pages.addr, metadata !4656, metadata !DIExpression()), !dbg !4670
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !4657, metadata !DIExpression()), !dbg !4671
  store ptr %altmap, ptr %altmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %altmap.addr, metadata !4658, metadata !DIExpression()), !dbg !4672
  store ptr %pgmap, ptr %pgmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgmap.addr, metadata !4659, metadata !DIExpression()), !dbg !4673
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #16, !dbg !4674
  call void @llvm.dbg.declare(metadata ptr %start, metadata !4660, metadata !DIExpression()), !dbg !4675
  %0 = load i64, ptr @vmemmap_base, align 8, !dbg !4676
  %1 = inttoptr i64 %0 to ptr, !dbg !4676
  %2 = load i64, ptr %pfn.addr, align 8, !dbg !4676
  %add.ptr = getelementptr %struct.page, ptr %1, i64 %2, !dbg !4676
  %3 = ptrtoint ptr %add.ptr to i64, !dbg !4677
  store i64 %3, ptr %start, align 8, !dbg !4675
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #16, !dbg !4678
  call void @llvm.dbg.declare(metadata ptr %end, metadata !4661, metadata !DIExpression()), !dbg !4679
  %4 = load i64, ptr %start, align 8, !dbg !4680
  %5 = load i64, ptr %nr_pages.addr, align 8, !dbg !4681
  %mul = mul i64 %5, 64, !dbg !4682
  %add = add i64 %4, %mul, !dbg !4683
  store i64 %add, ptr %end, align 8, !dbg !4679
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #16, !dbg !4684
  call void @llvm.dbg.declare(metadata ptr %r, metadata !4662, metadata !DIExpression()), !dbg !4685
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4686
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4663, metadata !DIExpression()), !dbg !4686
  %6 = load i64, ptr %pfn.addr, align 8, !dbg !4686
  %and = and i64 %6, 511, !dbg !4686
  %cmp = icmp eq i64 %and, 0, !dbg !4686
  br i1 %cmp, label %lor.rhs, label %lor.end, !dbg !4686

lor.rhs:                                          ; preds = %entry
  %7 = load i64, ptr %nr_pages.addr, align 8, !dbg !4686
  %and1 = and i64 %7, 511, !dbg !4686
  %cmp2 = icmp eq i64 %and1, 0, !dbg !4686
  %lnot = xor i1 %cmp2, true, !dbg !4686
  br label %lor.end, !dbg !4686

lor.end:                                          ; preds = %lor.rhs, %entry
  %8 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot3 = xor i1 %8, true, !dbg !4686
  %lnot4 = xor i1 %lnot3, true, !dbg !4686
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !4686
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4686
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !4687
  %tobool = icmp ne i32 %9, 0, !dbg !4687
  %lnot5 = xor i1 %tobool, true, !dbg !4687
  %lnot7 = xor i1 %lnot5, true, !dbg !4687
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !4687
  %conv = sext i32 %lnot.ext8 to i64, !dbg !4687
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4687
  %tobool9 = icmp ne i64 %expval, 0, !dbg !4687
  br i1 %tobool9, label %if.then, label %if.end, !dbg !4686

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !4687

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !4688
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4666, metadata !DIExpression()), !dbg !4688
  store i32 2307, ptr %__flags, align 4, !dbg !4688
  br label %do.body10, !dbg !4688

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !4689

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !4689

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !4688

do.body11:                                        ; preds = %do.end
  %10 = load i32, ptr %__flags, align 4, !dbg !4691
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 461, i32 %10, i64 12) #16, !dbg !4691, !srcloc !4693
  br label %do.cond12, !dbg !4691

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !4691

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !4688

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !4694

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !4694

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !4687
  br label %do.cond17, !dbg !4688

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !4688

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !4688

if.end:                                           ; preds = %do.end18, %lor.end
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !4686
  %tobool19 = icmp ne i32 %11, 0, !dbg !4686
  %lnot20 = xor i1 %tobool19, true, !dbg !4686
  %lnot22 = xor i1 %lnot20, true, !dbg !4686
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !4686
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !4686
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !4686
  store i64 %expval25, ptr %tmp, align 8, !dbg !4687
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4696
  %12 = load i64, ptr %tmp, align 8, !dbg !4686
  %tobool26 = icmp ne i64 %12, 0, !dbg !4696
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !4697

if.then27:                                        ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !4698
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4698

if.end28:                                         ; preds = %if.end
  %13 = load ptr, ptr %altmap.addr, align 8, !dbg !4699
  %14 = load ptr, ptr %pgmap.addr, align 8, !dbg !4701
  %call = call zeroext i1 @__vmemmap_can_optimize(ptr noundef %13, ptr noundef %14) #15, !dbg !4702
  br i1 %call, label %if.then29, label %if.else, !dbg !4703

if.then29:                                        ; preds = %if.end28
  %15 = load i64, ptr %pfn.addr, align 8, !dbg !4704
  %16 = load i64, ptr %start, align 8, !dbg !4705
  %17 = load i64, ptr %end, align 8, !dbg !4706
  %18 = load i32, ptr %nid.addr, align 4, !dbg !4707
  %19 = load ptr, ptr %pgmap.addr, align 8, !dbg !4708
  %call30 = call i32 @vmemmap_populate_compound_pages(i64 noundef %15, i64 noundef %16, i64 noundef %17, i32 noundef %18, ptr noundef %19) #18, !dbg !4709
  store i32 %call30, ptr %r, align 4, !dbg !4710
  br label %if.end32, !dbg !4711

if.else:                                          ; preds = %if.end28
  %20 = load i64, ptr %start, align 8, !dbg !4712
  %21 = load i64, ptr %end, align 8, !dbg !4713
  %22 = load i32, ptr %nid.addr, align 4, !dbg !4714
  %23 = load ptr, ptr %altmap.addr, align 8, !dbg !4715
  %call31 = call i32 @vmemmap_populate(i64 noundef %20, i64 noundef %21, i32 noundef %22, ptr noundef %23) #15, !dbg !4716
  store i32 %call31, ptr %r, align 4, !dbg !4717
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then29
  %24 = load i32, ptr %r, align 4, !dbg !4718
  %cmp33 = icmp slt i32 %24, 0, !dbg !4720
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !4721

if.then35:                                        ; preds = %if.end32
  store ptr null, ptr %retval, align 8, !dbg !4722
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4722

if.end36:                                         ; preds = %if.end32
  %25 = load i64, ptr @vmemmap_base, align 8, !dbg !4723
  %26 = inttoptr i64 %25 to ptr, !dbg !4723
  %27 = load i64, ptr %pfn.addr, align 8, !dbg !4723
  %add.ptr37 = getelementptr %struct.page, ptr %26, i64 %27, !dbg !4723
  store ptr %add.ptr37, ptr %retval, align 8, !dbg !4724
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4724

cleanup:                                          ; preds = %if.end36, %if.then35, %if.then27
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #16, !dbg !4725
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #16, !dbg !4725
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #16, !dbg !4725
  %28 = load ptr, ptr %retval, align 8, !dbg !4725
  ret ptr %28, !dbg !4725
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__vmemmap_can_optimize(ptr noundef %altmap, ptr noundef %pgmap) #5 align 16 !dbg !4726 {
entry:
  %retval = alloca i1, align 1
  %altmap.addr = alloca ptr, align 8
  %pgmap.addr = alloca ptr, align 8
  %nr_pages = alloca i64, align 8
  %nr_vmemmap_pages = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %altmap, ptr %altmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %altmap.addr, metadata !4730, metadata !DIExpression()), !dbg !4734
  store ptr %pgmap, ptr %pgmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgmap.addr, metadata !4731, metadata !DIExpression()), !dbg !4735
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr_pages) #16, !dbg !4736
  call void @llvm.dbg.declare(metadata ptr %nr_pages, metadata !4732, metadata !DIExpression()), !dbg !4737
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr_vmemmap_pages) #16, !dbg !4738
  call void @llvm.dbg.declare(metadata ptr %nr_vmemmap_pages, metadata !4733, metadata !DIExpression()), !dbg !4739
  %0 = load ptr, ptr %pgmap.addr, align 8, !dbg !4740
  %tobool = icmp ne ptr %0, null, !dbg !4740
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4742

lor.lhs.false:                                    ; preds = %entry
  %call = call zeroext i1 @is_power_of_2(i64 noundef 64) #17, !dbg !4743
  br i1 %call, label %if.end, label %if.then, !dbg !4744

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, ptr %retval, align 1, !dbg !4745
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4745

if.end:                                           ; preds = %lor.lhs.false
  %1 = load ptr, ptr %pgmap.addr, align 8, !dbg !4746
  %call1 = call i64 @pgmap_vmemmap_nr(ptr noundef %1) #15, !dbg !4747
  store i64 %call1, ptr %nr_pages, align 8, !dbg !4748
  %2 = load i64, ptr %nr_pages, align 8, !dbg !4749
  %mul = mul i64 %2, 64, !dbg !4750
  %shr = lshr i64 %mul, 12, !dbg !4751
  store i64 %shr, ptr %nr_vmemmap_pages, align 8, !dbg !4752
  %3 = load ptr, ptr %altmap.addr, align 8, !dbg !4753
  %tobool2 = icmp ne ptr %3, null, !dbg !4753
  br i1 %tobool2, label %land.end, label %land.rhs, !dbg !4754

land.rhs:                                         ; preds = %if.end
  %4 = load i64, ptr %nr_vmemmap_pages, align 8, !dbg !4755
  %cmp = icmp ugt i64 %4, 2, !dbg !4756
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %5 = phi i1 [ false, %if.end ], [ %cmp, %land.rhs ], !dbg !4757
  store i1 %5, ptr %retval, align 1, !dbg !4758
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4758

cleanup:                                          ; preds = %land.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr_vmemmap_pages) #16, !dbg !4759
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr_pages) #16, !dbg !4759
  %6 = load i1, ptr %retval, align 1, !dbg !4759
  ret i1 %6, !dbg !4759
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @vmemmap_populate_compound_pages(i64 noundef %start_pfn, i64 noundef %start, i64 noundef %end, i32 noundef %node, ptr noundef %pgmap) #0 section ".init.text" align 16 !dbg !4760 {
entry:
  %retval = alloca i32, align 4
  %start_pfn.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %node.addr = alloca i32, align 4
  %pgmap.addr = alloca ptr, align 8
  %size = alloca i64, align 8
  %addr = alloca i64, align 8
  %pte = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %agg.tmp = alloca %struct.pte_t, align 8
  %__UNIQUE_ID___x309 = alloca i64, align 8
  %__UNIQUE_ID___y310 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %next = alloca i64, align 8
  %last = alloca i64, align 8
  %agg.tmp20 = alloca %struct.pte_t, align 8
  store i64 %start_pfn, ptr %start_pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start_pfn.addr, metadata !4764, metadata !DIExpression()), !dbg !4781
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4765, metadata !DIExpression()), !dbg !4782
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !4766, metadata !DIExpression()), !dbg !4783
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !4767, metadata !DIExpression()), !dbg !4784
  store ptr %pgmap, ptr %pgmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgmap.addr, metadata !4768, metadata !DIExpression()), !dbg !4785
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #16, !dbg !4786
  call void @llvm.dbg.declare(metadata ptr %size, metadata !4769, metadata !DIExpression()), !dbg !4787
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #16, !dbg !4786
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !4770, metadata !DIExpression()), !dbg !4788
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #16, !dbg !4789
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !4771, metadata !DIExpression()), !dbg !4790
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #16, !dbg !4791
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !4772, metadata !DIExpression()), !dbg !4792
  %0 = load i64, ptr %start_pfn.addr, align 8, !dbg !4793
  %1 = load ptr, ptr %pgmap.addr, align 8, !dbg !4795
  %call = call zeroext i1 @reuse_compound_section(i64 noundef %0, ptr noundef %1) #18, !dbg !4796
  br i1 %call, label %if.then, label %if.end7, !dbg !4797

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %start.addr, align 8, !dbg !4798
  %call1 = call ptr @compound_section_tail_page(i64 noundef %2) #18, !dbg !4800
  store ptr %call1, ptr %pte, align 8, !dbg !4801
  %3 = load ptr, ptr %pte, align 8, !dbg !4802
  %tobool = icmp ne ptr %3, null, !dbg !4802
  br i1 %tobool, label %if.end, label %if.then2, !dbg !4804

if.then2:                                         ; preds = %if.then
  store i32 -12, ptr %retval, align 4, !dbg !4805
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !4805

if.end:                                           ; preds = %if.then
  %4 = load i64, ptr %start.addr, align 8, !dbg !4806
  %5 = load i64, ptr %end.addr, align 8, !dbg !4807
  %6 = load i32, ptr %node.addr, align 4, !dbg !4808
  %7 = load i64, ptr @vmemmap_base, align 8, !dbg !4809
  %8 = inttoptr i64 %7 to ptr, !dbg !4809
  %9 = load ptr, ptr %pte, align 8, !dbg !4809
  %call3 = call i64 @ptep_get(ptr noundef %9) #15, !dbg !4809
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %agg.tmp, i32 0, i32 0, !dbg !4809
  store i64 %call3, ptr %coerce.dive, align 8, !dbg !4809
  %coerce.dive4 = getelementptr inbounds %struct.pte_t, ptr %agg.tmp, i32 0, i32 0, !dbg !4809
  %10 = load i64, ptr %coerce.dive4, align 8, !dbg !4809
  %call5 = call i64 @pte_pfn(i64 %10) #15, !dbg !4809
  %add.ptr = getelementptr %struct.page, ptr %8, i64 %call5, !dbg !4809
  %call6 = call i32 @vmemmap_populate_range(i64 noundef %4, i64 noundef %5, i32 noundef %6, ptr noundef null, ptr noundef %add.ptr) #18, !dbg !4810
  store i32 %call6, ptr %retval, align 4, !dbg !4811
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !4811

if.end7:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x309) #16, !dbg !4812
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x309, metadata !4773, metadata !DIExpression()), !dbg !4812
  %11 = load i64, ptr %end.addr, align 8, !dbg !4812
  %12 = load i64, ptr %start.addr, align 8, !dbg !4812
  %sub = sub i64 %11, %12, !dbg !4812
  store i64 %sub, ptr %__UNIQUE_ID___x309, align 8, !dbg !4812
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y310) #16, !dbg !4812
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y310, metadata !4775, metadata !DIExpression()), !dbg !4812
  %13 = load ptr, ptr %pgmap.addr, align 8, !dbg !4812
  %call8 = call i64 @pgmap_vmemmap_nr(ptr noundef %13) #15, !dbg !4812
  %mul = mul i64 %call8, 64, !dbg !4812
  store i64 %mul, ptr %__UNIQUE_ID___y310, align 8, !dbg !4812
  %14 = load i64, ptr %__UNIQUE_ID___x309, align 8, !dbg !4812
  %15 = load i64, ptr %__UNIQUE_ID___y310, align 8, !dbg !4812
  %cmp = icmp ult i64 %14, %15, !dbg !4812
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4812

cond.true:                                        ; preds = %if.end7
  %16 = load i64, ptr %__UNIQUE_ID___x309, align 8, !dbg !4812
  br label %cond.end, !dbg !4812

cond.false:                                       ; preds = %if.end7
  %17 = load i64, ptr %__UNIQUE_ID___y310, align 8, !dbg !4812
  br label %cond.end, !dbg !4812

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %16, %cond.true ], [ %17, %cond.false ], !dbg !4812
  store i64 %cond, ptr %tmp, align 8, !dbg !4812
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y310) #16, !dbg !4813
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x309) #16, !dbg !4813
  %18 = load i64, ptr %tmp, align 8, !dbg !4812
  store i64 %18, ptr %size, align 8, !dbg !4814
  %19 = load i64, ptr %start.addr, align 8, !dbg !4815
  store i64 %19, ptr %addr, align 8, !dbg !4816
  br label %for.cond, !dbg !4817

for.cond:                                         ; preds = %for.inc, %cond.end
  %20 = load i64, ptr %addr, align 8, !dbg !4818
  %21 = load i64, ptr %end.addr, align 8, !dbg !4819
  %cmp9 = icmp ult i64 %20, %21, !dbg !4820
  br i1 %cmp9, label %for.body, label %for.end, !dbg !4821

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #16, !dbg !4822
  call void @llvm.dbg.declare(metadata ptr %next, metadata !4776, metadata !DIExpression()), !dbg !4823
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #16, !dbg !4822
  call void @llvm.dbg.declare(metadata ptr %last, metadata !4780, metadata !DIExpression()), !dbg !4824
  %22 = load i64, ptr %addr, align 8, !dbg !4825
  %23 = load i64, ptr %size, align 8, !dbg !4826
  %add = add i64 %22, %23, !dbg !4827
  store i64 %add, ptr %last, align 8, !dbg !4824
  %24 = load i64, ptr %addr, align 8, !dbg !4828
  %25 = load i32, ptr %node.addr, align 4, !dbg !4829
  %call10 = call ptr @vmemmap_populate_address(i64 noundef %24, i32 noundef %25, ptr noundef null, ptr noundef null) #18, !dbg !4830
  store ptr %call10, ptr %pte, align 8, !dbg !4831
  %26 = load ptr, ptr %pte, align 8, !dbg !4832
  %tobool11 = icmp ne ptr %26, null, !dbg !4832
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !4834

if.then12:                                        ; preds = %for.body
  store i32 -12, ptr %retval, align 4, !dbg !4835
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4835

if.end13:                                         ; preds = %for.body
  %27 = load i64, ptr %addr, align 8, !dbg !4836
  %add14 = add i64 %27, 4096, !dbg !4837
  store i64 %add14, ptr %next, align 8, !dbg !4838
  %28 = load i64, ptr %next, align 8, !dbg !4839
  %29 = load i32, ptr %node.addr, align 4, !dbg !4840
  %call15 = call ptr @vmemmap_populate_address(i64 noundef %28, i32 noundef %29, ptr noundef null, ptr noundef null) #18, !dbg !4841
  store ptr %call15, ptr %pte, align 8, !dbg !4842
  %30 = load ptr, ptr %pte, align 8, !dbg !4843
  %tobool16 = icmp ne ptr %30, null, !dbg !4843
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !4845

if.then17:                                        ; preds = %if.end13
  store i32 -12, ptr %retval, align 4, !dbg !4846
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4846

if.end18:                                         ; preds = %if.end13
  %31 = load i64, ptr %next, align 8, !dbg !4847
  %add19 = add i64 %31, 4096, !dbg !4847
  store i64 %add19, ptr %next, align 8, !dbg !4847
  %32 = load i64, ptr %next, align 8, !dbg !4848
  %33 = load i64, ptr %last, align 8, !dbg !4849
  %34 = load i32, ptr %node.addr, align 4, !dbg !4850
  %35 = load i64, ptr @vmemmap_base, align 8, !dbg !4851
  %36 = inttoptr i64 %35 to ptr, !dbg !4851
  %37 = load ptr, ptr %pte, align 8, !dbg !4851
  %call21 = call i64 @ptep_get(ptr noundef %37) #15, !dbg !4851
  %coerce.dive22 = getelementptr inbounds %struct.pte_t, ptr %agg.tmp20, i32 0, i32 0, !dbg !4851
  store i64 %call21, ptr %coerce.dive22, align 8, !dbg !4851
  %coerce.dive23 = getelementptr inbounds %struct.pte_t, ptr %agg.tmp20, i32 0, i32 0, !dbg !4851
  %38 = load i64, ptr %coerce.dive23, align 8, !dbg !4851
  %call24 = call i64 @pte_pfn(i64 %38) #15, !dbg !4851
  %add.ptr25 = getelementptr %struct.page, ptr %36, i64 %call24, !dbg !4851
  %call26 = call i32 @vmemmap_populate_range(i64 noundef %32, i64 noundef %33, i32 noundef %34, ptr noundef null, ptr noundef %add.ptr25) #18, !dbg !4852
  store i32 %call26, ptr %rc, align 4, !dbg !4853
  %39 = load i32, ptr %rc, align 4, !dbg !4854
  %tobool27 = icmp ne i32 %39, 0, !dbg !4854
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !4856

if.then28:                                        ; preds = %if.end18
  store i32 -12, ptr %retval, align 4, !dbg !4857
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4857

if.end29:                                         ; preds = %if.end18
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4858
  br label %cleanup, !dbg !4858

cleanup:                                          ; preds = %if.end29, %if.then28, %if.then17, %if.then12
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #16, !dbg !4858
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #16, !dbg !4858
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup32 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !4859

for.inc:                                          ; preds = %cleanup.cont
  %40 = load i64, ptr %size, align 8, !dbg !4860
  %41 = load i64, ptr %addr, align 8, !dbg !4861
  %add31 = add i64 %41, %40, !dbg !4861
  store i64 %add31, ptr %addr, align 8, !dbg !4861
  br label %for.cond, !dbg !4862, !llvm.loop !4863

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !4865
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !4865

cleanup32:                                        ; preds = %for.end, %cleanup, %if.end, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #16, !dbg !4866
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #16, !dbg !4866
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #16, !dbg !4866
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #16, !dbg !4866
  %42 = load i32, ptr %retval, align 4, !dbg !4866
  ret i32 %42, !dbg !4866
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4867 dso_local i32 @vmemmap_populate(i64 noundef, i64 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i32 @__ilog2_u64(i64 noundef %n) #4 align 16 !dbg !4868 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4873, metadata !DIExpression()), !dbg !4874
  %0 = load i64, ptr %n.addr, align 8, !dbg !4875
  %call = call i32 @fls64(i64 noundef %0) #15, !dbg !4876
  %sub = sub i32 %call, 1, !dbg !4877
  ret i32 %sub, !dbg !4878
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls64(i64 noundef %x) #6 align 16 !dbg !4879 {
entry:
  %x.addr = alloca i64, align 8
  %bitpos = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !4884, metadata !DIExpression()), !dbg !4886
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitpos) #16, !dbg !4887
  call void @llvm.dbg.declare(metadata ptr %bitpos, metadata !4885, metadata !DIExpression()), !dbg !4888
  store i32 -1, ptr %bitpos, align 4, !dbg !4888
  %0 = load i32, ptr %bitpos, align 4, !dbg !4889
  %1 = load i64, ptr %x.addr, align 8, !dbg !4890
  %2 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %1, i32 %0) #19, !dbg !4889, !srcloc !4891
  store i32 %2, ptr %bitpos, align 4, !dbg !4889
  %3 = load i32, ptr %bitpos, align 4, !dbg !4892
  %add = add i32 %3, 1, !dbg !4893
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitpos) #16, !dbg !4894
  ret i32 %add, !dbg !4895
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @numa_mem_id() #5 align 16 !dbg !4896 {
entry:
  %call = call i32 @numa_node_id() #15, !dbg !4900
  ret i32 %call, !dbg !4901
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__alloc_pages_node(i32 noundef %nid, i32 noundef %gfp_mask, i32 noundef %order) #5 align 16 !dbg !4902 {
entry:
  %nid.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !4904, metadata !DIExpression()), !dbg !4907
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !4905, metadata !DIExpression()), !dbg !4908
  store i32 %order, ptr %order.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !4906, metadata !DIExpression()), !dbg !4909
  %0 = load i32, ptr %nid.addr, align 4, !dbg !4910
  %1 = load i32, ptr %gfp_mask.addr, align 4, !dbg !4911
  call void @warn_if_node_offline(i32 noundef %0, i32 noundef %1) #15, !dbg !4912
  %2 = load i32, ptr %gfp_mask.addr, align 4, !dbg !4913
  %3 = load i32, ptr %order.addr, align 4, !dbg !4914
  %4 = load i32, ptr %nid.addr, align 4, !dbg !4915
  %call = call ptr @__alloc_pages(i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef null) #15, !dbg !4916
  ret ptr %call, !dbg !4917
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @numa_node_id() #5 align 16 !dbg !4918 {
entry:
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #16, !dbg !4926
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4920, metadata !DIExpression()), !dbg !4926
  br label %do.body, !dbg !4926

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !4927
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4922, metadata !DIExpression()), !dbg !4927
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4927
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4927
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !4926
  br label %do.cond, !dbg !4927

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4927

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #16, !dbg !4928
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4924, metadata !DIExpression()), !dbg !4928
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @numa_node) #19, !dbg !4928, !srcloc !4929
  store i32 %1, ptr %pfo_val__, align 4, !dbg !4928
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !4928
  %conv = zext i32 %2 to i64, !dbg !4928
  %conv1 = trunc i64 %conv to i32, !dbg !4928
  store i32 %conv1, ptr %tmp, align 4, !dbg !4928
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #16, !dbg !4926
  %3 = load i32, ptr %tmp, align 4, !dbg !4928
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !4926
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !4926
  store i32 %4, ptr %tmp2, align 4, !dbg !4926
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #16, !dbg !4930
  %5 = load i32, ptr %tmp2, align 4, !dbg !4926
  ret i32 %5, !dbg !4931
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @warn_if_node_offline(i32 noundef %this_node, i32 noundef %gfp_mask) #5 align 16 !dbg !4932 {
entry:
  %this_node.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %warn_gfp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %this_node, ptr %this_node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %this_node.addr, metadata !4936, metadata !DIExpression()), !dbg !4939
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !4937, metadata !DIExpression()), !dbg !4940
  call void @llvm.lifetime.start.p0(i64 4, ptr %warn_gfp) #16, !dbg !4941
  call void @llvm.dbg.declare(metadata ptr %warn_gfp, metadata !4938, metadata !DIExpression()), !dbg !4942
  %0 = load i32, ptr %gfp_mask.addr, align 4, !dbg !4943
  %and = and i32 %0, 2105344, !dbg !4944
  store i32 %and, ptr %warn_gfp, align 4, !dbg !4942
  %1 = load i32, ptr %warn_gfp, align 4, !dbg !4945
  %cmp = icmp ne i32 %1, 2105344, !dbg !4947
  br i1 %cmp, label %if.then, label %if.end, !dbg !4948

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4949

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %this_node.addr, align 4, !dbg !4950
  %call = call i32 @node_state(i32 noundef %2, i32 noundef 1) #15, !dbg !4950
  %tobool = icmp ne i32 %call, 0, !dbg !4950
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !4952

if.then1:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4953

if.end2:                                          ; preds = %if.end
  br label %do.body, !dbg !4954

do.body:                                          ; preds = %if.end2
  br label %do.cond, !dbg !4956

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4956

do.end:                                           ; preds = %do.cond
  %3 = load i32, ptr %this_node.addr, align 4, !dbg !4954
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, ptr noundef %gfp_mask.addr, i32 noundef %3) #18, !dbg !4954
  store i32 %call3, ptr %tmp, align 4, !dbg !4956
  %4 = load i32, ptr %tmp, align 4, !dbg !4954
  call void @dump_stack() #18, !dbg !4958
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4959
  br label %cleanup, !dbg !4959

cleanup:                                          ; preds = %do.end, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %warn_gfp) #16, !dbg !4959
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4959

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4960 dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @node_state(i32 noundef %node, i32 noundef %state) #5 align 16 !dbg !4963 {
entry:
  %node.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !4967, metadata !DIExpression()), !dbg !4969
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !4968, metadata !DIExpression()), !dbg !4970
  %0 = load i32, ptr %node.addr, align 4, !dbg !4971
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !4971
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !4971

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %state.addr, align 4, !dbg !4971
  %idxprom = zext i32 %2 to i64, !dbg !4971
  %arrayidx = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom, !dbg !4971
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx, i32 0, i32 0, !dbg !4971
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !4971
  %3 = ptrtoint ptr %arraydecay to i64, !dbg !4971
  %cmp = icmp ne i64 %3, 0, !dbg !4971
  %conv = zext i1 %cmp to i32, !dbg !4971
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !4971
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !4971

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load i32, ptr %state.addr, align 4, !dbg !4971
  %idxprom2 = zext i32 %5 to i64, !dbg !4971
  %arrayidx3 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom2, !dbg !4971
  %bits4 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx3, i32 0, i32 0, !dbg !4971
  %arraydecay5 = getelementptr inbounds [1 x i64], ptr %bits4, i64 0, i64 0, !dbg !4971
  %6 = ptrtoint ptr %arraydecay5 to i64, !dbg !4971
  %cmp6 = icmp ne i64 %6, 0, !dbg !4971
  br i1 %cmp6, label %land.lhs.true8, label %cond.false, !dbg !4971

land.lhs.true8:                                   ; preds = %land.lhs.true1
  %7 = load i32, ptr %state.addr, align 4, !dbg !4971
  %idxprom9 = zext i32 %7 to i64, !dbg !4971
  %arrayidx10 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom9, !dbg !4971
  %bits11 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx10, i32 0, i32 0, !dbg !4971
  %arraydecay12 = getelementptr inbounds [1 x i64], ptr %bits11, i64 0, i64 0, !dbg !4971
  %8 = load i64, ptr %arraydecay12, align 8, !dbg !4971
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !4971
  br i1 %9, label %cond.true, label %cond.false, !dbg !4971

cond.true:                                        ; preds = %land.lhs.true8
  %10 = load i32, ptr %node.addr, align 4, !dbg !4971
  %conv13 = sext i32 %10 to i64, !dbg !4971
  %11 = load i32, ptr %state.addr, align 4, !dbg !4971
  %idxprom14 = zext i32 %11 to i64, !dbg !4971
  %arrayidx15 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom14, !dbg !4971
  %bits16 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx15, i32 0, i32 0, !dbg !4971
  %arraydecay17 = getelementptr inbounds [1 x i64], ptr %bits16, i64 0, i64 0, !dbg !4971
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv13, ptr noundef %arraydecay17) #15, !dbg !4971
  %conv18 = zext i1 %call to i32, !dbg !4971
  br label %cond.end, !dbg !4971

cond.false:                                       ; preds = %land.lhs.true8, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %node.addr, align 4, !dbg !4971
  %conv19 = sext i32 %12 to i64, !dbg !4971
  %13 = load i32, ptr %state.addr, align 4, !dbg !4971
  %idxprom20 = zext i32 %13 to i64, !dbg !4971
  %arrayidx21 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom20, !dbg !4971
  %bits22 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx21, i32 0, i32 0, !dbg !4971
  %arraydecay23 = getelementptr inbounds [1 x i64], ptr %bits22, i64 0, i64 0, !dbg !4971
  %call24 = call zeroext i1 @_test_bit(i64 noundef %conv19, ptr noundef %arraydecay23) #15, !dbg !4971
  %conv25 = zext i1 %call24 to i32, !dbg !4971
  br label %cond.end, !dbg !4971

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv18, %cond.true ], [ %conv25, %cond.false ], !dbg !4971
  ret i32 %cond, !dbg !4972
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4973 dso_local void @dump_stack() #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !4974 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4979, metadata !DIExpression()), !dbg !4984
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4980, metadata !DIExpression()), !dbg !4985
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !4986
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4981, metadata !DIExpression()), !dbg !4987
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4988
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4989
  %div = udiv i64 %1, 64, !dbg !4989
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4990
  store ptr %add.ptr, ptr %p, align 8, !dbg !4987
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !4991
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4982, metadata !DIExpression()), !dbg !4992
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4993
  %rem = urem i64 %2, 64, !dbg !4993
  %shl = shl i64 1, %rem, !dbg !4993
  store i64 %shl, ptr %mask, align 8, !dbg !4992
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !4994
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4983, metadata !DIExpression()), !dbg !4995
  %3 = load ptr, ptr %p, align 8, !dbg !4996
  %4 = load i64, ptr %3, align 8, !dbg !4997
  store i64 %4, ptr %val, align 8, !dbg !4995
  %5 = load i64, ptr %val, align 8, !dbg !4998
  %6 = load i64, ptr %mask, align 8, !dbg !4999
  %and = and i64 %5, %6, !dbg !5000
  %tobool = icmp ne i64 %and, 0, !dbg !5001
  %lnot = xor i1 %tobool, true, !dbg !5001
  %lnot1 = xor i1 %lnot, true, !dbg !5002
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !5003
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !5003
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5003
  ret i1 %lnot1, !dbg !5004
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5005 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5008, metadata !DIExpression()), !dbg !5010
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5009, metadata !DIExpression()), !dbg !5011
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5012
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5013
  %div = udiv i64 %1, 64, !dbg !5013
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5014
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !5015
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5016
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5017
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !5018
  ret i1 %call, !dbg !5019
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !5020 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5028, metadata !DIExpression()), !dbg !5030
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5029, metadata !DIExpression()), !dbg !5031
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5032
  %1 = load i64, ptr %size.addr, align 8, !dbg !5033
  %conv = trunc i64 %1 to i32, !dbg !5033
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #15, !dbg !5034
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5035
  %3 = load i64, ptr %size.addr, align 8, !dbg !5035
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #15, !dbg !5035
  ret void, !dbg !5036
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5037 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5039, metadata !DIExpression()), !dbg !5041
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5040, metadata !DIExpression()), !dbg !5042
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5043
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5044
  br i1 %1, label %cond.true, label %cond.false, !dbg !5044

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5045
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5046
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !5047
  %conv = zext i1 %call to i32, !dbg !5047
  br label %cond.end, !dbg !5044

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5048
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5049
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #15, !dbg !5050
  %conv2 = zext i1 %call1 to i32, !dbg !5050
  br label %cond.end, !dbg !5044

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5044
  %tobool = icmp ne i32 %cond, 0, !dbg !5044
  ret i1 %tobool, !dbg !5051
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !5052 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5057, metadata !DIExpression()), !dbg !5059
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5058, metadata !DIExpression()), !dbg !5060
  ret i1 true, !dbg !5061
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !5062 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5067, metadata !DIExpression()), !dbg !5070
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5068, metadata !DIExpression()), !dbg !5071
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5069, metadata !DIExpression()), !dbg !5072
  ret void, !dbg !5073
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5074 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5078, metadata !DIExpression()), !dbg !5080
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5079, metadata !DIExpression()), !dbg !5081
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5082
  %and = and i64 %0, 63, !dbg !5083
  %shl = shl i64 1, %and, !dbg !5084
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5085
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5086
  %shr = ashr i64 %2, 6, !dbg !5087
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5085
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5085
  %and1 = and i64 %shl, %3, !dbg !5088
  %cmp = icmp ne i64 %and1, 0, !dbg !5089
  ret i1 %cmp, !dbg !5090
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5091 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5093, metadata !DIExpression()), !dbg !5096
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5094, metadata !DIExpression()), !dbg !5097
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #16, !dbg !5098
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5095, metadata !DIExpression()), !dbg !5099
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5100
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5101
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !5102, !srcloc !5103
  %3 = icmp ult i8 %2, 2, !dbg !5102
  call void @llvm.assume(i1 %3), !dbg !5102
  store i8 %2, ptr %oldbit, align 1, !dbg !5102
  %4 = load i8, ptr %oldbit, align 1, !dbg !5104, !range !3614, !noundef !425
  %tobool = trunc i8 %4 to i1, !dbg !5104
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #16, !dbg !5105
  ret i1 %tobool, !dbg !5106
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5107 dso_local ptr @memblock_alloc_try_nid_raw(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @vmem_altmap_next_pfn(ptr noundef %altmap) #0 section ".init.text" align 16 !dbg !5111 {
entry:
  %altmap.addr = alloca ptr, align 8
  store ptr %altmap, ptr %altmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %altmap.addr, metadata !5115, metadata !DIExpression()), !dbg !5116
  %0 = load ptr, ptr %altmap.addr, align 8, !dbg !5117
  %base_pfn = getelementptr inbounds %struct.vmem_altmap, ptr %0, i32 0, i32 0, !dbg !5118
  %1 = load i64, ptr %base_pfn, align 8, !dbg !5118
  %2 = load ptr, ptr %altmap.addr, align 8, !dbg !5119
  %reserve = getelementptr inbounds %struct.vmem_altmap, ptr %2, i32 0, i32 2, !dbg !5120
  %3 = load i64, ptr %reserve, align 8, !dbg !5120
  %add = add i64 %1, %3, !dbg !5121
  %4 = load ptr, ptr %altmap.addr, align 8, !dbg !5122
  %alloc = getelementptr inbounds %struct.vmem_altmap, ptr %4, i32 0, i32 5, !dbg !5123
  %5 = load i64, ptr %alloc, align 8, !dbg !5123
  %add1 = add i64 %add, %5, !dbg !5124
  %6 = load ptr, ptr %altmap.addr, align 8, !dbg !5125
  %align = getelementptr inbounds %struct.vmem_altmap, ptr %6, i32 0, i32 4, !dbg !5126
  %7 = load i64, ptr %align, align 8, !dbg !5126
  %add2 = add i64 %add1, %7, !dbg !5127
  ret i64 %add2, !dbg !5128
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_bit(ptr noundef %addr, i64 noundef %size) #5 align 16 !dbg !5129 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5134, metadata !DIExpression()), !dbg !5139
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5135, metadata !DIExpression()), !dbg !5140
  %0 = load i64, ptr %size.addr, align 8, !dbg !5141
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5141
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !5141

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5141
  %cmp = icmp ule i64 %2, 64, !dbg !5141
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !5141

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !5141
  %cmp2 = icmp ugt i64 %3, 0, !dbg !5141
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5142

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !5143
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5136, metadata !DIExpression()), !dbg !5144
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !5145
  %5 = load i64, ptr %4, align 8, !dbg !5146
  %6 = load i64, ptr %size.addr, align 8, !dbg !5147
  %sub = sub i64 %6, 1, !dbg !5147
  %sub3 = sub i64 63, %sub, !dbg !5147
  %shr = lshr i64 -1, %sub3, !dbg !5147
  %and = and i64 -1, %shr, !dbg !5147
  %add = add i64 0, %and, !dbg !5147
  %and4 = and i64 %5, %add, !dbg !5148
  store i64 %and4, ptr %val, align 8, !dbg !5144
  %7 = load i64, ptr %val, align 8, !dbg !5149
  %tobool = icmp ne i64 %7, 0, !dbg !5149
  br i1 %tobool, label %cond.true, label %cond.false6, !dbg !5149

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %val, align 8, !dbg !5150
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !5150
  br i1 %9, label %cond.true5, label %cond.false, !dbg !5150

cond.true5:                                       ; preds = %cond.true
  %10 = load i64, ptr %val, align 8, !dbg !5150
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !5150
  %cast = trunc i64 %11 to i32, !dbg !5150
  %conv = sext i32 %cast to i64, !dbg !5150
  br label %cond.end, !dbg !5150

cond.false:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !5150
  %call = call i64 @variable__ffs(i64 noundef %12) #15, !dbg !5150
  br label %cond.end, !dbg !5150

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false ], !dbg !5150
  br label %cond.end7, !dbg !5149

cond.false6:                                      ; preds = %if.then
  %13 = load i64, ptr %size.addr, align 8, !dbg !5151
  br label %cond.end7, !dbg !5149

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ %13, %cond.false6 ], !dbg !5149
  store i64 %cond8, ptr %retval, align 8, !dbg !5152
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !5153
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !5154
  %15 = load i64, ptr %size.addr, align 8, !dbg !5155
  %call9 = call i64 @_find_first_bit(ptr noundef %14, i64 noundef %15) #15, !dbg !5156
  store i64 %call9, ptr %retval, align 8, !dbg !5157
  br label %return, !dbg !5157

return:                                           ; preds = %if.end, %cond.end7
  %16 = load i64, ptr %retval, align 8, !dbg !5158
  ret i64 %16, !dbg !5158
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @vmem_altmap_nr_free(ptr noundef %altmap) #0 section ".init.text" align 16 !dbg !5159 {
entry:
  %retval = alloca i64, align 8
  %altmap.addr = alloca ptr, align 8
  %allocated = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %altmap, ptr %altmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %altmap.addr, metadata !5161, metadata !DIExpression()), !dbg !5163
  call void @llvm.lifetime.start.p0(i64 8, ptr %allocated) #16, !dbg !5164
  call void @llvm.dbg.declare(metadata ptr %allocated, metadata !5162, metadata !DIExpression()), !dbg !5165
  %0 = load ptr, ptr %altmap.addr, align 8, !dbg !5166
  %alloc = getelementptr inbounds %struct.vmem_altmap, ptr %0, i32 0, i32 5, !dbg !5167
  %1 = load i64, ptr %alloc, align 8, !dbg !5167
  %2 = load ptr, ptr %altmap.addr, align 8, !dbg !5168
  %align = getelementptr inbounds %struct.vmem_altmap, ptr %2, i32 0, i32 4, !dbg !5169
  %3 = load i64, ptr %align, align 8, !dbg !5169
  %add = add i64 %1, %3, !dbg !5170
  store i64 %add, ptr %allocated, align 8, !dbg !5165
  %4 = load ptr, ptr %altmap.addr, align 8, !dbg !5171
  %free = getelementptr inbounds %struct.vmem_altmap, ptr %4, i32 0, i32 3, !dbg !5173
  %5 = load i64, ptr %free, align 8, !dbg !5173
  %6 = load i64, ptr %allocated, align 8, !dbg !5174
  %cmp = icmp ugt i64 %5, %6, !dbg !5175
  br i1 %cmp, label %if.then, label %if.end, !dbg !5176

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %altmap.addr, align 8, !dbg !5177
  %free1 = getelementptr inbounds %struct.vmem_altmap, ptr %7, i32 0, i32 3, !dbg !5178
  %8 = load i64, ptr %free1, align 8, !dbg !5178
  %9 = load i64, ptr %allocated, align 8, !dbg !5179
  %sub = sub i64 %8, %9, !dbg !5180
  store i64 %sub, ptr %retval, align 8, !dbg !5181
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5181

if.end:                                           ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !5182
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5182

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %allocated) #16, !dbg !5183
  %10 = load i64, ptr %retval, align 8, !dbg !5183
  ret i64 %10, !dbg !5183
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #6 align 16 !dbg !5184 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !5186, metadata !DIExpression()), !dbg !5187
  %0 = load i64, ptr %word.addr, align 8, !dbg !5188
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #19, !dbg !5189, !srcloc !5190
  store i64 %1, ptr %word.addr, align 8, !dbg !5189
  %2 = load i64, ptr %word.addr, align 8, !dbg !5191
  ret i64 %2, !dbg !5192
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5193 dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pte_val(i64 %pte.coerce) #5 align 16 !dbg !5194 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !5198, metadata !DIExpression()), !dbg !5199
  %pte1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !5200
  %0 = load i64, ptr %pte1, align 8, !dbg !5200
  ret i64 %0, !dbg !5201
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @protnone_mask(i64 noundef %val) #5 align 16 !dbg !5202 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5207, metadata !DIExpression()), !dbg !5208
  %0 = load i64, ptr %val.addr, align 8, !dbg !5209
  %call = call zeroext i1 @__pte_needs_invert(i64 noundef %0) #15, !dbg !5210
  %1 = zext i1 %call to i64, !dbg !5210
  %cond = select i1 %call, i64 -1, i64 0, !dbg !5210
  ret i64 %cond, !dbg !5211
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__pte_needs_invert(i64 noundef %val) #5 align 16 !dbg !5212 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5216, metadata !DIExpression()), !dbg !5217
  %0 = load i64, ptr %val.addr, align 8, !dbg !5218
  %tobool = icmp ne i64 %0, 0, !dbg !5218
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5219

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %val.addr, align 8, !dbg !5220
  %and = and i64 %1, 1, !dbg !5221
  %tobool1 = icmp ne i64 %and, 0, !dbg !5222
  %lnot = xor i1 %tobool1, true, !dbg !5222
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !5223
  ret i1 %2, !dbg !5224
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_page_vaddr(i64 %pmd.coerce) #5 align 16 !dbg !5225 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !5229, metadata !DIExpression()), !dbg !5230
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !5231
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !5231
  %call = call i64 @native_pmd_val(i64 %0) #15, !dbg !5231
  %coerce.dive2 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !5231
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !5231
  %call3 = call i64 @pmd_pfn_mask(i64 %1) #15, !dbg !5231
  %and = and i64 %call, %call3, !dbg !5231
  %2 = load i64, ptr @page_offset_base, align 8, !dbg !5231
  %add = add i64 %and, %2, !dbg !5231
  %3 = inttoptr i64 %add to ptr, !dbg !5231
  %4 = ptrtoint ptr %3 to i64, !dbg !5232
  ret i64 %4, !dbg !5233
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pte_index(i64 noundef %address) #5 align 16 !dbg !5234 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !5236, metadata !DIExpression()), !dbg !5237
  %0 = load i64, ptr %address.addr, align 8, !dbg !5238
  %shr = lshr i64 %0, 12, !dbg !5239
  %and = and i64 %shr, 511, !dbg !5240
  ret i64 %and, !dbg !5241
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pmd_val(i64 %pmd.coerce) #5 align 16 !dbg !5242 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !5246, metadata !DIExpression()), !dbg !5247
  %pmd1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !5248
  %0 = load i64, ptr %pmd1, align 8, !dbg !5248
  ret i64 %0, !dbg !5249
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_pfn_mask(i64 %pmd.coerce) #5 align 16 !dbg !5250 {
entry:
  %retval = alloca i64, align 8
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !5252, metadata !DIExpression()), !dbg !5253
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !5254
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !5254
  %call = call i64 @native_pmd_val(i64 %0) #15, !dbg !5254
  %and = and i64 %call, 128, !dbg !5256
  %tobool = icmp ne i64 %and, 0, !dbg !5256
  br i1 %tobool, label %if.then, label %if.else, !dbg !5257

if.then:                                          ; preds = %entry
  store i64 4503599625273344, ptr %retval, align 8, !dbg !5258
  br label %return, !dbg !5258

if.else:                                          ; preds = %entry
  store i64 4503599627366400, ptr %retval, align 8, !dbg !5259
  br label %return, !dbg !5259

return:                                           ; preds = %if.else, %if.then
  %1 = load i64, ptr %retval, align 8, !dbg !5260
  ret i64 %1, !dbg !5260
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @folio_get(ptr noundef %folio) #5 align 16 !dbg !5261 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !5263, metadata !DIExpression()), !dbg !5264
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !5265
  call void @folio_ref_inc(ptr noundef %0) #15, !dbg !5266
  ret void, !dbg !5267
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_compound_head(ptr noundef %page) #5 align 16 !dbg !5268 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %head = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5272, metadata !DIExpression()), !dbg !5274
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #16, !dbg !5275
  call void @llvm.dbg.declare(metadata ptr %head, metadata !5273, metadata !DIExpression()), !dbg !5276
  br label %do.body, !dbg !5277

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5279

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5279

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5277
  %1 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, !dbg !5277
  %compound_head = getelementptr inbounds %struct.anon.23, ptr %1, i32 0, i32 0, !dbg !5277
  %2 = load volatile i64, ptr %compound_head, align 8, !dbg !5277
  store i64 %2, ptr %tmp, align 8, !dbg !5279
  %3 = load i64, ptr %tmp, align 8, !dbg !5277
  store i64 %3, ptr %head, align 8, !dbg !5276
  %4 = load i64, ptr %head, align 8, !dbg !5281
  %and = and i64 %4, 1, !dbg !5281
  %tobool = icmp ne i64 %and, 0, !dbg !5281
  %lnot = xor i1 %tobool, true, !dbg !5281
  %lnot1 = xor i1 %lnot, true, !dbg !5281
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5281
  %conv = sext i32 %lnot.ext to i64, !dbg !5281
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5281
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5281
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5283

if.then:                                          ; preds = %do.end
  %5 = load i64, ptr %head, align 8, !dbg !5284
  %sub = sub i64 %5, 1, !dbg !5285
  store i64 %sub, ptr %retval, align 8, !dbg !5286
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5286

if.end:                                           ; preds = %do.end
  %6 = load ptr, ptr %page.addr, align 8, !dbg !5287
  %call = call ptr @page_fixed_fake_head(ptr noundef %6) #15, !dbg !5288
  %7 = ptrtoint ptr %call to i64, !dbg !5289
  store i64 %7, ptr %retval, align 8, !dbg !5290
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5290

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #16, !dbg !5291
  %8 = load i64, ptr %retval, align 8, !dbg !5291
  ret i64 %8, !dbg !5291
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @folio_ref_inc(ptr noundef %folio) #5 align 16 !dbg !5292 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !5295, metadata !DIExpression()), !dbg !5296
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !5297
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !5298
  call void @page_ref_inc(ptr noundef %1) #15, !dbg !5299
  ret void, !dbg !5300
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @page_ref_inc(ptr noundef %page) #5 align 16 !dbg !5301 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5303, metadata !DIExpression()), !dbg !5304
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5305
  %_refcount = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3, !dbg !5306
  call void @atomic_inc(ptr noundef %_refcount) #15, !dbg !5307
  ret void, !dbg !5308
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #6 align 16 !dbg !5309 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5315, metadata !DIExpression()), !dbg !5316
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5317
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #15, !dbg !5318
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5319
  call void @raw_atomic_inc(ptr noundef %1) #15, !dbg !5320
  ret void, !dbg !5321
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !5322 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5324, metadata !DIExpression()), !dbg !5326
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5325, metadata !DIExpression()), !dbg !5327
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5328
  %1 = load i64, ptr %size.addr, align 8, !dbg !5329
  %conv = trunc i64 %1 to i32, !dbg !5329
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !5330
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5331
  %3 = load i64, ptr %size.addr, align 8, !dbg !5331
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #15, !dbg !5331
  ret void, !dbg !5332
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #6 align 16 !dbg !5333 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5336, metadata !DIExpression()), !dbg !5337
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5338
  call void @arch_atomic_inc(ptr noundef %0) #15, !dbg !5339
  ret void, !dbg !5340
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !5341 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5343, metadata !DIExpression()), !dbg !5345
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5344, metadata !DIExpression()), !dbg !5346
  ret i1 true, !dbg !5347
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #6 align 16 !dbg !5348 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5351, metadata !DIExpression()), !dbg !5352
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5353
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !5354
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #16, !dbg !5355, !srcloc !5356
  ret void, !dbg !5357
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @page_fixed_fake_head(ptr noundef %page) #6 align 16 !dbg !5358 {
entry:
  %retval = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  %head = alloca i64, align 8
  %tmp19 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5362, metadata !DIExpression()), !dbg !5369
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #16, !dbg !5370
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !5363, metadata !DIExpression()), !dbg !5370
  %call = call zeroext i1 @arch_static_branch(ptr noundef @hugetlb_optimize_vmemmap_key, i1 noundef zeroext false) #15, !dbg !5371
  %frombool = zext i1 %call to i8, !dbg !5371
  store i8 %frombool, ptr %branch, align 1, !dbg !5371
  %0 = load i8, ptr %branch, align 1, !dbg !5370, !range !3614, !noundef !425
  %tobool = trunc i8 %0 to i1, !dbg !5370
  %lnot = xor i1 %tobool, true, !dbg !5370
  %lnot1 = xor i1 %lnot, true, !dbg !5370
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5370
  %conv = sext i32 %lnot.ext to i64, !dbg !5370
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5370
  store i64 %expval, ptr %tmp, align 8, !dbg !5374
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #16, !dbg !5375
  %1 = load i64, ptr %tmp, align 8, !dbg !5370
  %tobool2 = icmp ne i64 %1, 0, !dbg !5375
  br i1 %tobool2, label %if.end, label %if.then, !dbg !5376

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %page.addr, align 8, !dbg !5377
  store ptr %2, ptr %retval, align 8, !dbg !5378
  br label %return, !dbg !5378

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !dbg !5379
  %4 = ptrtoint ptr %3 to i64, !dbg !5379
  %and = and i64 %4, 4095, !dbg !5379
  %cmp = icmp eq i64 %and, 0, !dbg !5379
  br i1 %cmp, label %land.lhs.true, label %if.end31, !dbg !5380

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %page.addr, align 8, !dbg !5381
  %flags = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 0, !dbg !5381
  %6 = ptrtoint ptr %flags to i64, !dbg !5381
  %cmp4 = icmp ne i64 %6, 0, !dbg !5381
  %conv5 = zext i1 %cmp4 to i32, !dbg !5381
  %7 = call i1 @llvm.is.constant.i32(i32 %conv5), !dbg !5381
  br i1 %7, label %land.lhs.true6, label %cond.false, !dbg !5381

land.lhs.true6:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %page.addr, align 8, !dbg !5381
  %flags7 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 0, !dbg !5381
  %9 = ptrtoint ptr %flags7 to i64, !dbg !5381
  %cmp8 = icmp ne i64 %9, 0, !dbg !5381
  br i1 %cmp8, label %land.lhs.true10, label %cond.false, !dbg !5381

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %10 = load ptr, ptr %page.addr, align 8, !dbg !5381
  %flags11 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 0, !dbg !5381
  %11 = load i64, ptr %flags11, align 16, !dbg !5381
  %12 = call i1 @llvm.is.constant.i64(i64 %11), !dbg !5381
  br i1 %12, label %cond.true, label %cond.false, !dbg !5382

cond.true:                                        ; preds = %land.lhs.true10
  %13 = load ptr, ptr %page.addr, align 8, !dbg !5381
  %flags12 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 0, !dbg !5381
  %call13 = call zeroext i1 @const_test_bit(i64 noundef 6, ptr noundef %flags12) #15, !dbg !5381
  br i1 %call13, label %if.then18, label %if.end31, !dbg !5381

cond.false:                                       ; preds = %land.lhs.true10, %land.lhs.true6, %land.lhs.true
  %14 = load ptr, ptr %page.addr, align 8, !dbg !5381
  %flags15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 0, !dbg !5381
  %call16 = call zeroext i1 @_test_bit(i64 noundef 6, ptr noundef %flags15) #15, !dbg !5381
  br i1 %call16, label %if.then18, label %if.end31, !dbg !5382

if.then18:                                        ; preds = %cond.false, %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #16, !dbg !5383
  call void @llvm.dbg.declare(metadata ptr %head, metadata !5366, metadata !DIExpression()), !dbg !5384
  br label %do.body, !dbg !5385

do.body:                                          ; preds = %if.then18
  br label %do.cond, !dbg !5387

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5387

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %page.addr, align 8, !dbg !5385
  %arrayidx = getelementptr %struct.page, ptr %15, i64 1, !dbg !5385
  %16 = getelementptr inbounds %struct.page, ptr %arrayidx, i32 0, i32 1, !dbg !5385
  %compound_head = getelementptr inbounds %struct.anon.23, ptr %16, i32 0, i32 0, !dbg !5385
  %17 = load volatile i64, ptr %compound_head, align 8, !dbg !5385
  store i64 %17, ptr %tmp19, align 8, !dbg !5387
  %18 = load i64, ptr %tmp19, align 8, !dbg !5385
  store i64 %18, ptr %head, align 8, !dbg !5384
  %19 = load i64, ptr %head, align 8, !dbg !5389
  %and20 = and i64 %19, 1, !dbg !5389
  %tobool21 = icmp ne i64 %and20, 0, !dbg !5389
  %lnot22 = xor i1 %tobool21, true, !dbg !5389
  %lnot24 = xor i1 %lnot22, true, !dbg !5389
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !5389
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !5389
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 1), !dbg !5389
  %tobool28 = icmp ne i64 %expval27, 0, !dbg !5389
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !5391

if.then29:                                        ; preds = %do.end
  %20 = load i64, ptr %head, align 8, !dbg !5392
  %sub = sub i64 %20, 1, !dbg !5393
  %21 = inttoptr i64 %sub to ptr, !dbg !5394
  store ptr %21, ptr %retval, align 8, !dbg !5395
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5395

if.end30:                                         ; preds = %do.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5396
  br label %cleanup, !dbg !5396

cleanup:                                          ; preds = %if.end30, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #16, !dbg !5396
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end31, !dbg !5397

if.end31:                                         ; preds = %cleanup.cont, %cond.false, %cond.true, %if.end
  %22 = load ptr, ptr %page.addr, align 8, !dbg !5398
  store ptr %22, ptr %retval, align 8, !dbg !5399
  br label %return, !dbg !5399

return:                                           ; preds = %if.end31, %cleanup, %if.then
  %23 = load ptr, ptr %retval, align 8, !dbg !5400
  ret ptr %23, !dbg !5400

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #6 align 16 !dbg !5401 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5425, metadata !DIExpression()), !dbg !5428
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !5426, metadata !DIExpression()), !dbg !5429
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5430
  %1 = load i8, ptr %branch.addr, align 1, !dbg !5431, !range !3614, !noundef !425
  %tobool = trunc i8 %1 to i1, !dbg !5431
  %conv = zext i1 %tobool to i32, !dbg !5431
  %or = or i32 2, %conv, !dbg !5432
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #16
          to label %asm.fallthrough [label %l_yes], !dbg !5433, !srcloc !5434

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5435
  br label %return, !dbg !5435

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !5427), !dbg !5436
  store i1 true, ptr %retval, align 1, !dbg !5437
  br label %return, !dbg !5437

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !5438
  ret i1 %2, !dbg !5438
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pte(i64 noundef %val) #5 align 16 !dbg !5439 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5443, metadata !DIExpression()), !dbg !5444
  %pte = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !5445
  %0 = load i64, ptr %val.addr, align 8, !dbg !5446
  store i64 %0, ptr %pte, align 8, !dbg !5445
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !5447
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !5447
  ret i64 %1, !dbg !5447
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @check_pgprot(i64 %pgprot.coerce) #5 align 16 !dbg !5448 {
entry:
  %pgprot = alloca %struct.pgprot, align 8
  %massaged_val = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0
  store i64 %pgprot.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgprot, metadata !5452, metadata !DIExpression()), !dbg !5454
  call void @llvm.lifetime.start.p0(i64 8, ptr %massaged_val) #16, !dbg !5455
  call void @llvm.dbg.declare(metadata ptr %massaged_val, metadata !5453, metadata !DIExpression()), !dbg !5456
  %coerce.dive1 = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0, !dbg !5457
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !5457
  %call = call i64 @massage_pgprot(i64 %0) #15, !dbg !5457
  store i64 %call, ptr %massaged_val, align 8, !dbg !5456
  %1 = load i64, ptr %massaged_val, align 8, !dbg !5458
  call void @llvm.lifetime.end.p0(i64 8, ptr %massaged_val) #16, !dbg !5459
  ret i64 %1, !dbg !5460
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @massage_pgprot(i64 %pgprot.coerce) #5 align 16 !dbg !5461 {
entry:
  %pgprot = alloca %struct.pgprot, align 8
  %protval = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0
  store i64 %pgprot.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgprot, metadata !5463, metadata !DIExpression()), !dbg !5465
  call void @llvm.lifetime.start.p0(i64 8, ptr %protval) #16, !dbg !5466
  call void @llvm.dbg.declare(metadata ptr %protval, metadata !5464, metadata !DIExpression()), !dbg !5467
  %pgprot1 = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0, !dbg !5468
  %0 = load i64, ptr %pgprot1, align 8, !dbg !5468
  store i64 %0, ptr %protval, align 8, !dbg !5467
  %1 = load i64, ptr %protval, align 8, !dbg !5469
  %and = and i64 %1, 1, !dbg !5471
  %tobool = icmp ne i64 %and, 0, !dbg !5471
  br i1 %tobool, label %if.then, label %if.end, !dbg !5472

if.then:                                          ; preds = %entry
  %2 = load i64, ptr @__supported_pte_mask, align 8, !dbg !5473
  %3 = load i64, ptr %protval, align 8, !dbg !5474
  %and2 = and i64 %3, %2, !dbg !5474
  store i64 %and2, ptr %protval, align 8, !dbg !5474
  br label %if.end, !dbg !5475

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, ptr %protval, align 8, !dbg !5476
  call void @llvm.lifetime.end.p0(i64 8, ptr %protval) #16, !dbg !5477
  ret i64 %4, !dbg !5478
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @page_table_check_ptes_set(ptr noundef %mm, ptr noundef %ptep, i64 %pte.coerce, i32 noundef %nr) #5 align 16 !dbg !5479 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %mm.addr = alloca ptr, align 8
  %ptep.addr = alloca ptr, align 8
  %nr.addr = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5484, metadata !DIExpression()), !dbg !5488
  store ptr %ptep, ptr %ptep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptep.addr, metadata !5485, metadata !DIExpression()), !dbg !5489
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !5486, metadata !DIExpression()), !dbg !5490
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5487, metadata !DIExpression()), !dbg !5491
  ret void, !dbg !5492
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_pte(ptr noundef %ptep, i64 %pte.coerce) #5 align 16 !dbg !5493 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %ptep.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  store ptr %ptep, ptr %ptep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptep.addr, metadata !5498, metadata !DIExpression()), !dbg !5500
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !5499, metadata !DIExpression()), !dbg !5501
  br label %do.body, !dbg !5502

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5503

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5505

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5503

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %ptep.addr, align 8, !dbg !5507
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %pte, i64 8, i1 true), !dbg !5507
  br label %do.end3, !dbg !5507

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5503

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !5509
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pte_next_pfn(i64 %pte.coerce) #5 align 16 !dbg !5510 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !5514, metadata !DIExpression()), !dbg !5515
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !5516
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !5516
  %call = call i64 @native_pte_val(i64 %0) #15, !dbg !5516
  %call2 = call zeroext i1 @__pte_needs_invert(i64 noundef %call) #15, !dbg !5518
  br i1 %call2, label %if.then, label %if.end, !dbg !5519

if.then:                                          ; preds = %entry
  %coerce.dive3 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !5520
  %1 = load i64, ptr %coerce.dive3, align 8, !dbg !5520
  %call4 = call i64 @native_pte_val(i64 %1) #15, !dbg !5520
  %sub = sub i64 %call4, 4096, !dbg !5520
  %call5 = call i64 @native_make_pte(i64 noundef %sub) #15, !dbg !5520
  %coerce.dive6 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !5520
  store i64 %call5, ptr %coerce.dive6, align 8, !dbg !5520
  br label %return, !dbg !5521

if.end:                                           ; preds = %entry
  %coerce.dive7 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !5522
  %2 = load i64, ptr %coerce.dive7, align 8, !dbg !5522
  %call8 = call i64 @native_pte_val(i64 %2) #15, !dbg !5522
  %add = add i64 %call8, 4096, !dbg !5522
  %call9 = call i64 @native_make_pte(i64 noundef %add) #15, !dbg !5522
  %coerce.dive10 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !5522
  store i64 %call9, ptr %coerce.dive10, align 8, !dbg !5522
  br label %return, !dbg !5523

return:                                           ; preds = %if.end, %if.then
  %coerce.dive11 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !5524
  %3 = load i64, ptr %coerce.dive11, align 8, !dbg !5524
  ret i64 %3, !dbg !5524
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pud_pgtable(i64 %pud.coerce) #5 align 16 !dbg !5525 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !5529, metadata !DIExpression()), !dbg !5530
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !5531
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !5531
  %call = call i64 @native_pud_val(i64 %0) #15, !dbg !5531
  %coerce.dive2 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !5531
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !5531
  %call3 = call i64 @pud_pfn_mask(i64 %1) #15, !dbg !5531
  %and = and i64 %call, %call3, !dbg !5531
  %2 = load i64, ptr @page_offset_base, align 8, !dbg !5531
  %add = add i64 %and, %2, !dbg !5531
  %3 = inttoptr i64 %add to ptr, !dbg !5531
  ret ptr %3, !dbg !5532
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_index(i64 noundef %address) #5 align 16 !dbg !5533 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !5535, metadata !DIExpression()), !dbg !5536
  %0 = load i64, ptr %address.addr, align 8, !dbg !5537
  %shr = lshr i64 %0, 21, !dbg !5538
  %and = and i64 %shr, 511, !dbg !5539
  ret i64 %and, !dbg !5540
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pud_val(i64 %pud.coerce) #5 align 16 !dbg !5541 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !5545, metadata !DIExpression()), !dbg !5546
  %pud1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !5547
  %0 = load i64, ptr %pud1, align 8, !dbg !5547
  ret i64 %0, !dbg !5548
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pud_pfn_mask(i64 %pud.coerce) #5 align 16 !dbg !5549 {
entry:
  %retval = alloca i64, align 8
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !5551, metadata !DIExpression()), !dbg !5552
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !5553
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !5553
  %call = call i64 @native_pud_val(i64 %0) #15, !dbg !5553
  %and = and i64 %call, 128, !dbg !5555
  %tobool = icmp ne i64 %and, 0, !dbg !5555
  br i1 %tobool, label %if.then, label %if.else, !dbg !5556

if.then:                                          ; preds = %entry
  store i64 4503598553628672, ptr %retval, align 8, !dbg !5557
  br label %return, !dbg !5557

if.else:                                          ; preds = %entry
  store i64 4503599627366400, ptr %retval, align 8, !dbg !5558
  br label %return, !dbg !5558

return:                                           ; preds = %if.else, %if.then
  %1 = load i64, ptr %retval, align 8, !dbg !5559
  ret i64 %1, !dbg !5559
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @paravirt_alloc_pte(ptr noundef %mm, i64 noundef %pfn) #5 align 16 !dbg !5560 {
entry:
  %mm.addr = alloca ptr, align 8
  %pfn.addr = alloca i64, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5564, metadata !DIExpression()), !dbg !5566
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !5565, metadata !DIExpression()), !dbg !5567
  ret void, !dbg !5568
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_pmd(ptr noundef %pmdp, i64 %pmd.coerce) #5 align 16 !dbg !5569 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %pmdp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  store ptr %pmdp, ptr %pmdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmdp.addr, metadata !5573, metadata !DIExpression()), !dbg !5575
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !5574, metadata !DIExpression()), !dbg !5576
  br label %do.body, !dbg !5577

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5578

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5580

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5578

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %pmdp.addr, align 8, !dbg !5582
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %pmd, i64 8, i1 true), !dbg !5582
  br label %do.end3, !dbg !5582

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5578

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !5584
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pmd(i64 noundef %val) #5 align 16 !dbg !5585 {
entry:
  %retval = alloca %struct.pmd_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5589, metadata !DIExpression()), !dbg !5590
  %pmd = getelementptr inbounds %struct.pmd_t, ptr %retval, i32 0, i32 0, !dbg !5591
  %0 = load i64, ptr %val.addr, align 8, !dbg !5592
  store i64 %0, ptr %pmd, align 8, !dbg !5591
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %retval, i32 0, i32 0, !dbg !5593
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !5593
  ret i64 %1, !dbg !5593
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @p4d_pgtable(i64 %p4d.coerce) #5 align 16 !dbg !5594 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !5598, metadata !DIExpression()), !dbg !5599
  %coerce.dive1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !5600
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !5600
  %call = call i64 @native_p4d_val(i64 %0) #15, !dbg !5600
  %coerce.dive2 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !5600
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !5600
  %call3 = call i64 @p4d_pfn_mask(i64 %1) #15, !dbg !5600
  %and = and i64 %call, %call3, !dbg !5600
  %2 = load i64, ptr @page_offset_base, align 8, !dbg !5600
  %add = add i64 %and, %2, !dbg !5600
  %3 = inttoptr i64 %add to ptr, !dbg !5600
  ret ptr %3, !dbg !5601
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pud_index(i64 noundef %address) #5 align 16 !dbg !5602 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !5604, metadata !DIExpression()), !dbg !5605
  %0 = load i64, ptr %address.addr, align 8, !dbg !5606
  %shr = lshr i64 %0, 30, !dbg !5607
  %and = and i64 %shr, 511, !dbg !5608
  ret i64 %and, !dbg !5609
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_p4d_val(i64 %p4d.coerce) #5 align 16 !dbg !5610 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !5614, metadata !DIExpression()), !dbg !5615
  %p4d1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !5616
  %0 = load i64, ptr %p4d1, align 8, !dbg !5616
  ret i64 %0, !dbg !5617
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @p4d_pfn_mask(i64 %p4d.coerce) #5 align 16 !dbg !5618 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !5620, metadata !DIExpression()), !dbg !5621
  ret i64 4503599627366400, !dbg !5622
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @paravirt_alloc_pmd(ptr noundef %mm, i64 noundef %pfn) #5 align 16 !dbg !5623 {
entry:
  %mm.addr = alloca ptr, align 8
  %pfn.addr = alloca i64, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5625, metadata !DIExpression()), !dbg !5627
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !5626, metadata !DIExpression()), !dbg !5628
  ret void, !dbg !5629
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_pud(ptr noundef %pudp, i64 %pud.coerce) #5 align 16 !dbg !5630 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %pudp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  store ptr %pudp, ptr %pudp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pudp.addr, metadata !5634, metadata !DIExpression()), !dbg !5636
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !5635, metadata !DIExpression()), !dbg !5637
  br label %do.body, !dbg !5638

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5639

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5641

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5639

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %pudp.addr, align 8, !dbg !5643
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %pud, i64 8, i1 true), !dbg !5643
  br label %do.end3, !dbg !5643

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5639

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !5645
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pud(i64 noundef %val) #5 align 16 !dbg !5646 {
entry:
  %retval = alloca %struct.pud_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5650, metadata !DIExpression()), !dbg !5651
  %pud = getelementptr inbounds %struct.pud_t, ptr %retval, i32 0, i32 0, !dbg !5652
  %0 = load i64, ptr %val.addr, align 8, !dbg !5653
  store i64 %0, ptr %pud, align 8, !dbg !5652
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %retval, i32 0, i32 0, !dbg !5654
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !5654
  ret i64 %1, !dbg !5654
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #6 align 16 !dbg !5655 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !5660, metadata !DIExpression()), !dbg !5663
  %0 = load i16, ptr %bit.addr, align 2, !dbg !5664
  %1 = load i16, ptr %bit.addr, align 2, !dbg !5665
  %conv = zext i16 %1 to i32, !dbg !5665
  %and = and i32 %conv, 7, !dbg !5666
  %shl = shl i32 1, %and, !dbg !5667
  %2 = load i16, ptr %bit.addr, align 2, !dbg !5668
  %conv1 = zext i16 %2 to i32, !dbg !5668
  %shr = ashr i32 %conv1, 3, !dbg !5669
  %idxprom = sext i32 %shr to i64, !dbg !5670
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !5670
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #16
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !5671, !srcloc !5672

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !5671

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !5661), !dbg !5673
  store i1 true, ptr %retval, align 1, !dbg !5674
  br label %return, !dbg !5674

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !5662), !dbg !5675
  store i1 false, ptr %retval, align 1, !dbg !5676
  br label %return, !dbg !5676

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !5677
  ret i1 %3, !dbg !5677
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pgd_page_vaddr(i64 %pgd.coerce) #5 align 16 !dbg !5678 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !5682, metadata !DIExpression()), !dbg !5683
  %coerce.dive1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !5684
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !5684
  %call = call i64 @native_pgd_val(i64 %0) #15, !dbg !5684
  %and = and i64 %call, 4503599627366400, !dbg !5684
  %1 = load i64, ptr @page_offset_base, align 8, !dbg !5684
  %add = add i64 %and, %1, !dbg !5684
  %2 = inttoptr i64 %add to ptr, !dbg !5684
  %3 = ptrtoint ptr %2 to i64, !dbg !5685
  ret i64 %3, !dbg !5686
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @p4d_index(i64 noundef %address) #5 align 16 !dbg !5687 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !5689, metadata !DIExpression()), !dbg !5690
  %0 = load i64, ptr %address.addr, align 8, !dbg !5691
  %shr = lshr i64 %0, 39, !dbg !5692
  %1 = load i32, ptr @ptrs_per_p4d, align 4, !dbg !5693
  %sub = sub i32 %1, 1, !dbg !5694
  %conv = zext i32 %sub to i64, !dbg !5695
  %and = and i64 %shr, %conv, !dbg !5696
  ret i64 %and, !dbg !5697
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pgd_val(i64 %pgd.coerce) #5 align 16 !dbg !5698 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !5702, metadata !DIExpression()), !dbg !5703
  %pgd1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !5704
  %0 = load i64, ptr %pgd1, align 8, !dbg !5704
  %and = and i64 %0, -1, !dbg !5705
  ret i64 %and, !dbg !5706
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @paravirt_alloc_pud(ptr noundef %mm, i64 noundef %pfn) #5 align 16 !dbg !5707 {
entry:
  %mm.addr = alloca ptr, align 8
  %pfn.addr = alloca i64, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5709, metadata !DIExpression()), !dbg !5711
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !5710, metadata !DIExpression()), !dbg !5712
  ret void, !dbg !5713
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_p4d(ptr noundef %p4dp, i64 %p4d.coerce) #5 align 16 !dbg !5714 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %p4dp.addr = alloca ptr, align 8
  %pgd = alloca %struct.pgd_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.pgd_t, align 8
  %tmp16 = alloca %struct.pgd_t, align 8
  %tmp25 = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  store ptr %p4dp, ptr %p4dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p4dp.addr, metadata !5718, metadata !DIExpression()), !dbg !5721
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !5719, metadata !DIExpression()), !dbg !5722
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #16, !dbg !5723
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !5720, metadata !DIExpression()), !dbg !5724
  br i1 false, label %cond.true, label %cond.false, !dbg !5725

cond.true:                                        ; preds = %entry
  br i1 false, label %if.then, label %if.end, !dbg !5726

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !5725

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !5726

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.then, label %if.end, !dbg !5726

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !5726
  br i1 %call, label %if.then, label %if.end, !dbg !5726

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #15, !dbg !5726
  br i1 %call5, label %if.then, label %if.end, !dbg !5725

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  br label %do.body, !dbg !5728

do.body:                                          ; preds = %if.then
  br label %do.body6, !dbg !5730

do.body6:                                         ; preds = %do.body
  br label %do.cond, !dbg !5732

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !5732

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !5730

do.body7:                                         ; preds = %do.end
  %0 = load ptr, ptr %p4dp.addr, align 8, !dbg !5734
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %p4d, i64 8, i1 true), !dbg !5734
  br label %do.cond8, !dbg !5734

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !5734

do.end9:                                          ; preds = %do.cond8
  br label %do.cond10, !dbg !5730

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !5730

do.end11:                                         ; preds = %do.cond10
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5736

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #16, !dbg !5737
  %coerce.dive12 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !5738
  %1 = load i64, ptr %coerce.dive12, align 8, !dbg !5738
  %call13 = call i64 @native_p4d_val(i64 %1) #15, !dbg !5738
  %call14 = call i64 @native_make_pgd(i64 noundef %call13) #15, !dbg !5737
  %coerce.dive15 = getelementptr inbounds %struct.pgd_t, ptr %tmp, i32 0, i32 0, !dbg !5737
  store i64 %call14, ptr %coerce.dive15, align 8, !dbg !5737
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pgd, ptr align 8 %tmp, i64 8, i1 false), !dbg !5737
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #16, !dbg !5737
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp16) #16, !dbg !5739
  %2 = load ptr, ptr %p4dp.addr, align 8, !dbg !5740
  %coerce.dive17 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !5739
  %3 = load i64, ptr %coerce.dive17, align 8, !dbg !5739
  %call18 = call i64 @pti_set_user_pgtbl(ptr noundef %2, i64 %3) #15, !dbg !5739
  %coerce.dive19 = getelementptr inbounds %struct.pgd_t, ptr %tmp16, i32 0, i32 0, !dbg !5739
  store i64 %call18, ptr %coerce.dive19, align 8, !dbg !5739
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pgd, ptr align 8 %tmp16, i64 8, i1 false), !dbg !5739
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp16) #16, !dbg !5739
  br label %do.body20, !dbg !5741

do.body20:                                        ; preds = %if.end
  br label %do.body21, !dbg !5742

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !5744

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !5744

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !5742

do.body24:                                        ; preds = %do.end23
  %4 = load ptr, ptr %p4dp.addr, align 8, !dbg !5746
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp25) #16, !dbg !5746
  %coerce.dive26 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !5746
  %5 = load i64, ptr %coerce.dive26, align 8, !dbg !5746
  %call27 = call i64 @native_pgd_val(i64 %5) #15, !dbg !5746
  %call28 = call i64 @native_make_p4d(i64 noundef %call27) #15, !dbg !5746
  %coerce.dive29 = getelementptr inbounds %struct.p4d_t, ptr %tmp25, i32 0, i32 0, !dbg !5746
  store volatile i64 %call28, ptr %coerce.dive29, align 8, !dbg !5746
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %tmp25, i64 8, i1 true), !dbg !5746
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp25) #16, !dbg !5746
  br label %do.cond30, !dbg !5746

do.cond30:                                        ; preds = %do.body24
  br label %do.end31, !dbg !5746

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !5742

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !5742

do.end33:                                         ; preds = %do.cond32
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5748
  br label %cleanup, !dbg !5748

cleanup:                                          ; preds = %do.end33, %do.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #16, !dbg !5748
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5748

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_p4d(i64 noundef %val) #5 align 16 !dbg !5749 {
entry:
  %retval = alloca %struct.p4d_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5753, metadata !DIExpression()), !dbg !5754
  %p4d = getelementptr inbounds %struct.p4d_t, ptr %retval, i32 0, i32 0, !dbg !5755
  %0 = load i64, ptr %val.addr, align 8, !dbg !5756
  store i64 %0, ptr %p4d, align 8, !dbg !5755
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %retval, i32 0, i32 0, !dbg !5757
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !5757
  ret i64 %1, !dbg !5757
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pgd(i64 noundef %val) #5 align 16 !dbg !5758 {
entry:
  %retval = alloca %struct.pgd_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5762, metadata !DIExpression()), !dbg !5763
  %pgd = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !5764
  %0 = load i64, ptr %val.addr, align 8, !dbg !5765
  %and = and i64 %0, -1, !dbg !5766
  store i64 %and, ptr %pgd, align 8, !dbg !5764
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !5767
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !5767
  ret i64 %1, !dbg !5767
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pti_set_user_pgtbl(ptr noundef %pgdp, i64 %pgd.coerce) #5 align 16 !dbg !5768 {
entry:
  %retval = alloca %struct.pgd_t, align 8
  %pgd = alloca %struct.pgd_t, align 8
  %pgdp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  store ptr %pgdp, ptr %pgdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgdp.addr, metadata !5772, metadata !DIExpression()), !dbg !5774
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !5773, metadata !DIExpression()), !dbg !5775
  br i1 false, label %cond.true, label %cond.false2, !dbg !5776

cond.true:                                        ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false, !dbg !5777

cond.true1:                                       ; preds = %cond.true
  br i1 true, label %if.end, label %if.then, !dbg !5777

cond.false:                                       ; preds = %cond.true
  %call = call zeroext i1 @arch_test_bit(i64 noundef 235, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !5777
  br i1 %call, label %if.end, label %if.then, !dbg !5777

cond.false2:                                      ; preds = %entry
  %call3 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 235) #15, !dbg !5777
  br i1 %call3, label %if.end, label %if.then, !dbg !5776

if.then:                                          ; preds = %cond.false2, %cond.false, %cond.true1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %pgd, i64 8, i1 false), !dbg !5779
  br label %return, !dbg !5780

if.end:                                           ; preds = %cond.false2, %cond.false, %cond.true1
  %0 = load ptr, ptr %pgdp.addr, align 8, !dbg !5781
  %coerce.dive4 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !5782
  %1 = load i64, ptr %coerce.dive4, align 8, !dbg !5782
  %call5 = call i64 @__pti_set_user_pgtbl(ptr noundef %0, i64 %1) #15, !dbg !5782
  %coerce.dive6 = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !5782
  store i64 %call5, ptr %coerce.dive6, align 8, !dbg !5782
  br label %return, !dbg !5783

return:                                           ; preds = %if.end, %if.then
  %coerce.dive7 = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !5784
  %2 = load i64, ptr %coerce.dive7, align 8, !dbg !5784
  ret i64 %2, !dbg !5784
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5785 dso_local i64 @__pti_set_user_pgtbl(ptr noundef, i64) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @paravirt_alloc_p4d(ptr noundef %mm, i64 noundef %pfn) #5 align 16 !dbg !5786 {
entry:
  %mm.addr = alloca ptr, align 8
  %pfn.addr = alloca i64, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5788, metadata !DIExpression()), !dbg !5790
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !5789, metadata !DIExpression()), !dbg !5791
  ret void, !dbg !5792
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_pgd(ptr noundef %pgdp, i64 %pgd.coerce) #5 align 16 !dbg !5793 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %pgdp.addr = alloca ptr, align 8
  %tmp = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  store ptr %pgdp, ptr %pgdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgdp.addr, metadata !5797, metadata !DIExpression()), !dbg !5799
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !5798, metadata !DIExpression()), !dbg !5800
  br label %do.body, !dbg !5801

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5802

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5804

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5802

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %pgdp.addr, align 8, !dbg !5806
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #16, !dbg !5806
  %1 = load ptr, ptr %pgdp.addr, align 8, !dbg !5806
  %coerce.dive3 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !5806
  %2 = load i64, ptr %coerce.dive3, align 8, !dbg !5806
  %call = call i64 @pti_set_user_pgtbl(ptr noundef %1, i64 %2) #15, !dbg !5806
  %coerce.dive4 = getelementptr inbounds %struct.pgd_t, ptr %tmp, i32 0, i32 0, !dbg !5806
  store volatile i64 %call, ptr %coerce.dive4, align 8, !dbg !5806
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %tmp, i64 8, i1 true), !dbg !5806
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #16, !dbg !5806
  br label %do.end5, !dbg !5806

do.end5:                                          ; preds = %do.body2
  br label %do.end6, !dbg !5802

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5808
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal ptr @vmemmap_populate_address(i64 noundef %addr, i32 noundef %node, ptr noundef %altmap, ptr noundef %reuse) #0 section ".init.text" align 16 !dbg !5809 {
entry:
  %retval = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %node.addr = alloca i32, align 4
  %altmap.addr = alloca ptr, align 8
  %reuse.addr = alloca ptr, align 8
  %pgd = alloca ptr, align 8
  %p4d = alloca ptr, align 8
  %pud = alloca ptr, align 8
  %pmd = alloca ptr, align 8
  %pte = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5813, metadata !DIExpression()), !dbg !5822
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5814, metadata !DIExpression()), !dbg !5823
  store ptr %altmap, ptr %altmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %altmap.addr, metadata !5815, metadata !DIExpression()), !dbg !5824
  store ptr %reuse, ptr %reuse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %reuse.addr, metadata !5816, metadata !DIExpression()), !dbg !5825
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #16, !dbg !5826
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !5817, metadata !DIExpression()), !dbg !5827
  call void @llvm.lifetime.start.p0(i64 8, ptr %p4d) #16, !dbg !5828
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !5818, metadata !DIExpression()), !dbg !5829
  call void @llvm.lifetime.start.p0(i64 8, ptr %pud) #16, !dbg !5830
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !5819, metadata !DIExpression()), !dbg !5831
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmd) #16, !dbg !5832
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !5820, metadata !DIExpression()), !dbg !5833
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #16, !dbg !5834
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !5821, metadata !DIExpression()), !dbg !5835
  %0 = load i64, ptr %addr.addr, align 8, !dbg !5836
  %1 = load i32, ptr %node.addr, align 4, !dbg !5837
  %call = call ptr @vmemmap_pgd_populate(i64 noundef %0, i32 noundef %1) #18, !dbg !5838
  store ptr %call, ptr %pgd, align 8, !dbg !5839
  %2 = load ptr, ptr %pgd, align 8, !dbg !5840
  %tobool = icmp ne ptr %2, null, !dbg !5840
  br i1 %tobool, label %if.end, label %if.then, !dbg !5842

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5843
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5843

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pgd, align 8, !dbg !5844
  %4 = load i64, ptr %addr.addr, align 8, !dbg !5845
  %5 = load i32, ptr %node.addr, align 4, !dbg !5846
  %call1 = call ptr @vmemmap_p4d_populate(ptr noundef %3, i64 noundef %4, i32 noundef %5) #18, !dbg !5847
  store ptr %call1, ptr %p4d, align 8, !dbg !5848
  %6 = load ptr, ptr %p4d, align 8, !dbg !5849
  %tobool2 = icmp ne ptr %6, null, !dbg !5849
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !5851

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !5852
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5852

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %p4d, align 8, !dbg !5853
  %8 = load i64, ptr %addr.addr, align 8, !dbg !5854
  %9 = load i32, ptr %node.addr, align 4, !dbg !5855
  %call5 = call ptr @vmemmap_pud_populate(ptr noundef %7, i64 noundef %8, i32 noundef %9) #18, !dbg !5856
  store ptr %call5, ptr %pud, align 8, !dbg !5857
  %10 = load ptr, ptr %pud, align 8, !dbg !5858
  %tobool6 = icmp ne ptr %10, null, !dbg !5858
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !5860

if.then7:                                         ; preds = %if.end4
  store ptr null, ptr %retval, align 8, !dbg !5861
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5861

if.end8:                                          ; preds = %if.end4
  %11 = load ptr, ptr %pud, align 8, !dbg !5862
  %12 = load i64, ptr %addr.addr, align 8, !dbg !5863
  %13 = load i32, ptr %node.addr, align 4, !dbg !5864
  %call9 = call ptr @vmemmap_pmd_populate(ptr noundef %11, i64 noundef %12, i32 noundef %13) #18, !dbg !5865
  store ptr %call9, ptr %pmd, align 8, !dbg !5866
  %14 = load ptr, ptr %pmd, align 8, !dbg !5867
  %tobool10 = icmp ne ptr %14, null, !dbg !5867
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !5869

if.then11:                                        ; preds = %if.end8
  store ptr null, ptr %retval, align 8, !dbg !5870
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5870

if.end12:                                         ; preds = %if.end8
  %15 = load ptr, ptr %pmd, align 8, !dbg !5871
  %16 = load i64, ptr %addr.addr, align 8, !dbg !5872
  %17 = load i32, ptr %node.addr, align 4, !dbg !5873
  %18 = load ptr, ptr %altmap.addr, align 8, !dbg !5874
  %19 = load ptr, ptr %reuse.addr, align 8, !dbg !5875
  %call13 = call ptr @vmemmap_pte_populate(ptr noundef %15, i64 noundef %16, i32 noundef %17, ptr noundef %18, ptr noundef %19) #18, !dbg !5876
  store ptr %call13, ptr %pte, align 8, !dbg !5877
  %20 = load ptr, ptr %pte, align 8, !dbg !5878
  %tobool14 = icmp ne ptr %20, null, !dbg !5878
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !5880

if.then15:                                        ; preds = %if.end12
  store ptr null, ptr %retval, align 8, !dbg !5881
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5881

if.end16:                                         ; preds = %if.end12
  %21 = load ptr, ptr %pte, align 8, !dbg !5882
  %22 = load i32, ptr %node.addr, align 4, !dbg !5883
  %23 = load i64, ptr %addr.addr, align 8, !dbg !5884
  %24 = load i64, ptr %addr.addr, align 8, !dbg !5885
  %add = add i64 %24, 4096, !dbg !5886
  call void @vmemmap_verify(ptr noundef %21, i32 noundef %22, i64 noundef %23, i64 noundef %add) #18, !dbg !5887
  %25 = load ptr, ptr %pte, align 8, !dbg !5888
  store ptr %25, ptr %retval, align 8, !dbg !5889
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5889

cleanup:                                          ; preds = %if.end16, %if.then15, %if.then11, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #16, !dbg !5890
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmd) #16, !dbg !5890
  call void @llvm.lifetime.end.p0(i64 8, ptr %pud) #16, !dbg !5890
  call void @llvm.lifetime.end.p0(i64 8, ptr %p4d) #16, !dbg !5890
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #16, !dbg !5890
  %26 = load ptr, ptr %retval, align 8, !dbg !5890
  ret ptr %26, !dbg !5890
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal zeroext i1 @is_power_of_2(i64 noundef %n) #14 align 16 !dbg !5891 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5895, metadata !DIExpression()), !dbg !5896
  %0 = load i64, ptr %n.addr, align 8, !dbg !5897
  %cmp = icmp ne i64 %0, 0, !dbg !5898
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5899

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8, !dbg !5900
  %2 = load i64, ptr %n.addr, align 8, !dbg !5901
  %sub = sub i64 %2, 1, !dbg !5902
  %and = and i64 %1, %sub, !dbg !5903
  %cmp1 = icmp eq i64 %and, 0, !dbg !5904
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !5905
  ret i1 %3, !dbg !5906
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pgmap_vmemmap_nr(ptr noundef %pgmap) #5 align 16 !dbg !5907 {
entry:
  %pgmap.addr = alloca ptr, align 8
  store ptr %pgmap, ptr %pgmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgmap.addr, metadata !5911, metadata !DIExpression()), !dbg !5912
  %0 = load ptr, ptr %pgmap.addr, align 8, !dbg !5913
  %vmemmap_shift = getelementptr inbounds %struct.dev_pagemap, ptr %0, i32 0, i32 5, !dbg !5914
  %1 = load i64, ptr %vmemmap_shift, align 8, !dbg !5914
  %sh_prom = trunc i64 %1 to i32, !dbg !5915
  %shl = shl i32 1, %sh_prom, !dbg !5915
  %conv = sext i32 %shl to i64, !dbg !5916
  ret i64 %conv, !dbg !5917
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal zeroext i1 @reuse_compound_section(i64 noundef %start_pfn, ptr noundef %pgmap) #0 section ".init.text" align 16 !dbg !5918 {
entry:
  %start_pfn.addr = alloca i64, align 8
  %pgmap.addr = alloca ptr, align 8
  %nr_pages = alloca i64, align 8
  %offset = alloca i64, align 8
  store i64 %start_pfn, ptr %start_pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start_pfn.addr, metadata !5922, metadata !DIExpression()), !dbg !5926
  store ptr %pgmap, ptr %pgmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgmap.addr, metadata !5923, metadata !DIExpression()), !dbg !5927
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr_pages) #16, !dbg !5928
  call void @llvm.dbg.declare(metadata ptr %nr_pages, metadata !5924, metadata !DIExpression()), !dbg !5929
  %0 = load ptr, ptr %pgmap.addr, align 8, !dbg !5930
  %call = call i64 @pgmap_vmemmap_nr(ptr noundef %0) #15, !dbg !5931
  store i64 %call, ptr %nr_pages, align 8, !dbg !5929
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #16, !dbg !5932
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !5925, metadata !DIExpression()), !dbg !5933
  %1 = load i64, ptr %start_pfn.addr, align 8, !dbg !5934
  %2 = load ptr, ptr %pgmap.addr, align 8, !dbg !5935
  %3 = getelementptr inbounds %struct.dev_pagemap, ptr %2, i32 0, i32 9, !dbg !5935
  %ranges = getelementptr inbounds %struct.anon.41, ptr %3, i32 0, i32 1, !dbg !5935
  %4 = load ptr, ptr %pgmap.addr, align 8, !dbg !5935
  %nr_range = getelementptr inbounds %struct.dev_pagemap, ptr %4, i32 0, i32 8, !dbg !5935
  %5 = load i32, ptr %nr_range, align 8, !dbg !5935
  %idxprom = sext i32 %5 to i64, !dbg !5935
  %arrayidx = getelementptr [0 x %struct.range], ptr %ranges, i64 0, i64 %idxprom, !dbg !5935
  %start = getelementptr inbounds %struct.range, ptr %arrayidx, i32 0, i32 0, !dbg !5935
  %6 = load i64, ptr %start, align 8, !dbg !5935
  %shr = lshr i64 %6, 12, !dbg !5935
  %sub = sub i64 %1, %shr, !dbg !5936
  store i64 %sub, ptr %offset, align 8, !dbg !5933
  %7 = load i64, ptr %offset, align 8, !dbg !5937
  %8 = load i64, ptr %nr_pages, align 8, !dbg !5937
  %sub1 = sub i64 %8, 1, !dbg !5937
  %and = and i64 %7, %sub1, !dbg !5937
  %cmp = icmp eq i64 %and, 0, !dbg !5937
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !5938

land.rhs:                                         ; preds = %entry
  %9 = load i64, ptr %nr_pages, align 8, !dbg !5939
  %cmp2 = icmp ugt i64 %9, 512, !dbg !5940
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %10 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ], !dbg !5941
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #16, !dbg !5942
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr_pages) #16, !dbg !5942
  ret i1 %10, !dbg !5943
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal ptr @compound_section_tail_page(i64 noundef %addr) #0 section ".init.text" align 16 !dbg !5944 {
entry:
  %retval = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %pte = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5948, metadata !DIExpression()), !dbg !5950
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #16, !dbg !5951
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !5949, metadata !DIExpression()), !dbg !5952
  %0 = load i64, ptr %addr.addr, align 8, !dbg !5953
  %sub = sub i64 %0, 4096, !dbg !5953
  store i64 %sub, ptr %addr.addr, align 8, !dbg !5953
  %1 = load i64, ptr %addr.addr, align 8, !dbg !5954
  %call = call ptr @pmd_off_k(i64 noundef %1) #15, !dbg !5955
  %2 = load i64, ptr %addr.addr, align 8, !dbg !5956
  %call1 = call ptr @pte_offset_kernel(ptr noundef %call, i64 noundef %2) #15, !dbg !5957
  store ptr %call1, ptr %pte, align 8, !dbg !5958
  %3 = load ptr, ptr %pte, align 8, !dbg !5959
  %tobool = icmp ne ptr %3, null, !dbg !5959
  br i1 %tobool, label %if.end, label %if.then, !dbg !5961

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5962
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5962

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pte, align 8, !dbg !5963
  store ptr %4, ptr %retval, align 8, !dbg !5964
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5964

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #16, !dbg !5965
  %5 = load ptr, ptr %retval, align 8, !dbg !5965
  ret ptr %5, !dbg !5965
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pmd_off_k(i64 noundef %va) #5 align 16 !dbg !5966 {
entry:
  %va.addr = alloca i64, align 8
  store i64 %va, ptr %va.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %va.addr, metadata !5970, metadata !DIExpression()), !dbg !5971
  %0 = load ptr, ptr getelementptr inbounds (%struct.anon.13, ptr @init_mm, i32 0, i32 8), align 64, !dbg !5972
  %1 = load i64, ptr %va.addr, align 8, !dbg !5972
  %call = call ptr @pgd_offset_pgd(ptr noundef %0, i64 noundef %1) #15, !dbg !5972
  %2 = load i64, ptr %va.addr, align 8, !dbg !5973
  %call1 = call ptr @p4d_offset(ptr noundef %call, i64 noundef %2) #15, !dbg !5974
  %3 = load i64, ptr %va.addr, align 8, !dbg !5975
  %call2 = call ptr @pud_offset(ptr noundef %call1, i64 noundef %3) #15, !dbg !5976
  %4 = load i64, ptr %va.addr, align 8, !dbg !5977
  %call3 = call ptr @pmd_offset(ptr noundef %call2, i64 noundef %4) #15, !dbg !5978
  ret ptr %call3, !dbg !5979
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone }
attributes #16 = { nounwind }
attributes #17 = { noredzone nounwind willreturn memory(none) }
attributes #18 = { cold noredzone }
attributes #19 = { nounwind memory(read) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588}
!llvm.ident = !{!3589}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "warned", scope: !2, file: !3, line: 55, type: !1349, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "vmemmap_alloc_block", scope: !3, file: !3, line: 49, type: !4, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3573)
!3 = !DIFile(filename: "mm/sparse-vmemmap.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0ba8d24cdf55b768c217f14692758af")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF mm/.sparse-vmemmap.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22mm/sparse-vmemmap\22 -D KBUILD_BASENAME=\22sparse_vmemmap\22 -D KBUILD_MODNAME=\22sparse_vmemmap\22 -D __KBUILD_MODNAME=kmod_sparse_vmemmap -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o mm/sparse-vmemmap.ll mm/sparse-vmemmap.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !136, globals: !3507, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !17, !23, !28, !36, !52, !58, !65, !72, !80, !85, !96}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !12, line: 2052, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!16 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !18, line: 54, baseType: !13, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!19 = !{!20, !21, !22}
!20 = !DIEnumerator(name: "USRQUOTA", value: 0)
!21 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!22 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !24, line: 65, baseType: !13, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!25 = !{!26, !27}
!26 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!27 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !29, line: 9, baseType: !13, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!30 = !{!31, !32, !33, !34, !35}
!31 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!32 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!33 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!34 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!35 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !37, line: 1325, baseType: !13, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!39 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!40 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!41 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!42 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!43 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!44 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!45 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!46 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!47 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!48 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!49 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!50 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!51 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !53, line: 16, baseType: !13, size: 32, elements: !54)
!53 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!54 = !{!55, !56, !57}
!55 = !DIEnumerator(name: "TT_NONE", value: 0)
!56 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!57 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !59, line: 51, baseType: !13, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!60 = !{!61, !62, !63, !64}
!61 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!62 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!63 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!64 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !66, line: 15, baseType: !13, size: 32, elements: !67)
!66 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!67 = !{!68, !69, !70, !71}
!68 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!69 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!70 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!71 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !73, line: 68, baseType: !13, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!74 = !{!75, !76, !77, !78, !79}
!75 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!76 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!77 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!78 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!79 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !81, line: 10, baseType: !13, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!82 = !{!83, !84}
!83 = !DIEnumerator(name: "false", value: 0)
!84 = !DIEnumerator(name: "true", value: 1)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "node_states", file: !86, line: 398, baseType: !13, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95}
!88 = !DIEnumerator(name: "N_POSSIBLE", value: 0)
!89 = !DIEnumerator(name: "N_ONLINE", value: 1)
!90 = !DIEnumerator(name: "N_NORMAL_MEMORY", value: 2)
!91 = !DIEnumerator(name: "N_HIGH_MEMORY", value: 2)
!92 = !DIEnumerator(name: "N_MEMORY", value: 3)
!93 = !DIEnumerator(name: "N_CPU", value: 4)
!94 = !DIEnumerator(name: "N_GENERIC_INITIATOR", value: 5)
!95 = !DIEnumerator(name: "NR_NODE_STATES", value: 6)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pageflags", file: !97, line: 100, baseType: !13, size: 32, elements: !98)
!97 = !DIFile(filename: "./include/linux/page-flags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "303e043415a1e5da18ffd489677b4d01")
!98 = !{!99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135}
!99 = !DIEnumerator(name: "PG_locked", value: 0)
!100 = !DIEnumerator(name: "PG_writeback", value: 1)
!101 = !DIEnumerator(name: "PG_referenced", value: 2)
!102 = !DIEnumerator(name: "PG_uptodate", value: 3)
!103 = !DIEnumerator(name: "PG_dirty", value: 4)
!104 = !DIEnumerator(name: "PG_lru", value: 5)
!105 = !DIEnumerator(name: "PG_head", value: 6)
!106 = !DIEnumerator(name: "PG_waiters", value: 7)
!107 = !DIEnumerator(name: "PG_active", value: 8)
!108 = !DIEnumerator(name: "PG_workingset", value: 9)
!109 = !DIEnumerator(name: "PG_error", value: 10)
!110 = !DIEnumerator(name: "PG_slab", value: 11)
!111 = !DIEnumerator(name: "PG_owner_priv_1", value: 12)
!112 = !DIEnumerator(name: "PG_arch_1", value: 13)
!113 = !DIEnumerator(name: "PG_reserved", value: 14)
!114 = !DIEnumerator(name: "PG_private", value: 15)
!115 = !DIEnumerator(name: "PG_private_2", value: 16)
!116 = !DIEnumerator(name: "PG_mappedtodisk", value: 17)
!117 = !DIEnumerator(name: "PG_reclaim", value: 18)
!118 = !DIEnumerator(name: "PG_swapbacked", value: 19)
!119 = !DIEnumerator(name: "PG_unevictable", value: 20)
!120 = !DIEnumerator(name: "PG_mlocked", value: 21)
!121 = !DIEnumerator(name: "PG_uncached", value: 22)
!122 = !DIEnumerator(name: "__NR_PAGEFLAGS", value: 23)
!123 = !DIEnumerator(name: "PG_readahead", value: 18)
!124 = !DIEnumerator(name: "PG_anon_exclusive", value: 17)
!125 = !DIEnumerator(name: "PG_checked", value: 12)
!126 = !DIEnumerator(name: "PG_swapcache", value: 12)
!127 = !DIEnumerator(name: "PG_fscache", value: 16)
!128 = !DIEnumerator(name: "PG_pinned", value: 12)
!129 = !DIEnumerator(name: "PG_savepinned", value: 4)
!130 = !DIEnumerator(name: "PG_foreign", value: 12)
!131 = !DIEnumerator(name: "PG_xen_remapped", value: 12)
!132 = !DIEnumerator(name: "PG_isolated", value: 18)
!133 = !DIEnumerator(name: "PG_reported", value: 3)
!134 = !DIEnumerator(name: "PG_has_hwpoisoned", value: 10)
!135 = !DIEnumerator(name: "PG_large_rmappable", value: 9)
!136 = !{!137, !6, !7, !139, !145, !1735, !3479, !490, !8, !3482, !3483, !3484, !509, !3485, !1740, !1506, !3488, !3491, !3493, !1714, !3494, !1721, !3495, !3497, !333, !3503, !1882, !3505}
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !138, line: 154, baseType: !13)
!138 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !138, line: 159, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !141, line: 23, baseType: !142)
!141 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !143, line: 31, baseType: !144)
!143 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!144 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !37, line: 74, size: 512, align: 128, elements: !147)
!147 = !{!148, !149, !3473, !3478}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !146, file: !37, line: 75, baseType: !7, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, scope: !146, file: !37, line: 83, baseType: !150, size: 320, offset: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !146, file: !37, line: 83, size: 320, elements: !151)
!151 = !{!152, !3379, !3393, !3397, !3472}
!152 = !DIDerivedType(tag: DW_TAG_member, scope: !150, file: !37, line: 84, baseType: !153, size: 320)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !150, file: !37, line: 84, size: 320, elements: !154)
!154 = !{!155, !171, !3373, !3378}
!155 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !37, line: 90, baseType: !156, size: 128)
!156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !153, file: !37, line: 90, size: 128, elements: !157)
!157 = !{!158, !164, !169, !170}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !156, file: !37, line: 91, baseType: !159, size: 128)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !138, line: 190, size: 128, elements: !160)
!160 = !{!161, !163}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !159, file: !138, line: 191, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !159, file: !138, line: 191, baseType: !162, size: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, scope: !156, file: !37, line: 94, baseType: !165, size: 128)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !156, file: !37, line: 94, size: 128, elements: !166)
!166 = !{!167, !168}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !165, file: !37, line: 96, baseType: !6, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !165, file: !37, line: 98, baseType: !13, size: 32, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !156, file: !37, line: 102, baseType: !159, size: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !156, file: !37, line: 103, baseType: !159, size: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !153, file: !37, line: 106, baseType: !172, size: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !12, line: 472, size: 1536, align: 64, elements: !174)
!174 = !{!175, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3367, !3368, !3369, !3370, !3371, !3372}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !173, file: !12, line: 473, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !12, line: 641, size: 4800, elements: !178)
!178 = !{!179, !182, !183, !192, !193, !200, !201, !204, !205, !3202, !3203, !3204, !3205, !3206, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3246, !3249, !3250, !3251, !3260, !3261, !3262, !3263}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !177, file: !12, line: 642, baseType: !180, size: 16)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !138, line: 24, baseType: !181)
!181 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !177, file: !12, line: 643, baseType: !181, size: 16, offset: 16)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !177, file: !12, line: 644, baseType: !184, size: 32, offset: 32)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !185, line: 23, baseType: !186)
!185 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !185, line: 21, size: 32, elements: !187)
!187 = !{!188}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !186, file: !185, line: 22, baseType: !189, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !138, line: 37, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !191, line: 49, baseType: !13)
!191 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!192 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !177, file: !12, line: 645, baseType: !159, size: 128, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !177, file: !12, line: 646, baseType: !194, size: 32, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !185, line: 28, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !185, line: 26, size: 32, elements: !196)
!196 = !{!197}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !195, file: !185, line: 27, baseType: !198, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !138, line: 38, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !191, line: 50, baseType: !13)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !177, file: !12, line: 647, baseType: !13, size: 32, offset: 224)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !177, file: !12, line: 650, baseType: !202, size: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !12, line: 607, flags: DIFlagFwdDecl)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !177, file: !12, line: 651, baseType: !202, size: 64, offset: 320)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !177, file: !12, line: 654, baseType: !206, size: 64, offset: 384)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !12, line: 1966, size: 2048, align: 512, elements: !209)
!209 = !{!210, !3027, !3040, !3044, !3048, !3052, !3056, !3060, !3064, !3068, !3072, !3073, !3077, !3081, !3118, !3147, !3151, !3157, !3161, !3165, !3169, !3173, !3177, !3183, !3187}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !208, file: !12, line: 1967, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!214, !176, !214, !13}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !216, line: 82, size: 1536, elements: !217)
!216 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!217 = !{!218, !219, !229, !237, !238, !256, !257, !261, !312, !3010, !3011, !3012, !3013, !3019, !3020, !3021}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !215, file: !216, line: 84, baseType: !13, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !215, file: !216, line: 85, baseType: !220, size: 32, offset: 32)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !221, line: 275, baseType: !222)
!221 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !221, line: 275, size: 32, elements: !223)
!223 = !{!224}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !222, file: !221, line: 275, baseType: !225, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !221, line: 69, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !221, line: 64, size: 32, elements: !227)
!227 = !{!228}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !226, file: !221, line: 65, baseType: !13, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !215, file: !216, line: 86, baseType: !230, size: 128, offset: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !231, line: 38, size: 128, elements: !232)
!231 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!232 = !{!233, !235}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !230, file: !231, line: 39, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !230, file: !231, line: 39, baseType: !236, size: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !215, file: !216, line: 87, baseType: !214, size: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !215, file: !216, line: 88, baseType: !239, size: 128, offset: 256)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !216, line: 49, size: 128, elements: !240)
!240 = !{!241, !252}
!241 = !DIDerivedType(tag: DW_TAG_member, scope: !239, file: !216, line: 50, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !239, file: !216, line: 50, size: 64, elements: !243)
!243 = !{!244, !251}
!244 = !DIDerivedType(tag: DW_TAG_member, scope: !242, file: !216, line: 51, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !242, file: !216, line: 51, size: 64, elements: !246)
!246 = !{!247, !250}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !245, file: !216, line: 52, baseType: !248, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !141, line: 21, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !143, line: 27, baseType: !13)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !245, file: !216, line: 52, baseType: !248, size: 32, offset: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !242, file: !216, line: 54, baseType: !140, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !239, file: !216, line: 56, baseType: !253, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!255 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !215, file: !216, line: 89, baseType: !176, size: 64, offset: 384)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !215, file: !216, line: 91, baseType: !258, size: 256, offset: 448)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 256, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !215, file: !216, line: 94, baseType: !262, size: 64, offset: 704)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !263, line: 25, size: 64, elements: !264)
!263 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!264 = !{!265}
!265 = !DIDerivedType(tag: DW_TAG_member, scope: !262, file: !263, line: 26, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !262, file: !263, line: 26, size: 64, elements: !267)
!267 = !{!268, !269}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !266, file: !263, line: 28, baseType: !142, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, scope: !266, file: !263, line: 30, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !266, file: !263, line: 30, size: 64, elements: !271)
!271 = !{!272, !311}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !270, file: !263, line: 31, baseType: !273, size: 32)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !274, line: 29, baseType: !275)
!274 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !274, line: 17, size: 32, elements: !276)
!276 = !{!277}
!277 = !DIDerivedType(tag: DW_TAG_member, scope: !275, file: !274, line: 18, baseType: !278, size: 32)
!278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !275, file: !274, line: 18, size: 32, elements: !279)
!279 = !{!280}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !278, file: !274, line: 19, baseType: !281, size: 32)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !282, line: 14, size: 32, elements: !283)
!282 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!283 = !{!284}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !281, file: !282, line: 15, baseType: !285, size: 32)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !286, line: 44, baseType: !287)
!286 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !286, line: 14, size: 32, elements: !288)
!288 = !{!289}
!289 = !DIDerivedType(tag: DW_TAG_member, scope: !287, file: !286, line: 15, baseType: !290, size: 32)
!290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !287, file: !286, line: 15, size: 32, elements: !291)
!291 = !{!292, !297, !304}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !290, file: !286, line: 16, baseType: !293, size: 32)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !138, line: 174, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 172, size: 32, elements: !295)
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !294, file: !138, line: 173, baseType: !8, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, scope: !290, file: !286, line: 24, baseType: !298, size: 16)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !290, file: !286, line: 24, size: 16, elements: !299)
!299 = !{!300, !303}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !298, file: !286, line: 25, baseType: !301, size: 8)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !141, line: 17, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !143, line: 21, baseType: !255)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !298, file: !286, line: 26, baseType: !301, size: 8, offset: 8)
!304 = !DIDerivedType(tag: DW_TAG_member, scope: !290, file: !286, line: 28, baseType: !305, size: 32)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !290, file: !286, line: 28, size: 32, elements: !306)
!306 = !{!307, !310}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !305, file: !286, line: 29, baseType: !308, size: 16)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !141, line: 19, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !143, line: 24, baseType: !181)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !305, file: !286, line: 30, baseType: !308, size: 16, offset: 16)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !270, file: !263, line: 32, baseType: !8, size: 32, offset: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !215, file: !216, line: 95, baseType: !313, size: 64, offset: 768)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !216, line: 128, size: 1024, align: 512, elements: !316)
!316 = !{!317, !321, !322, !329, !338, !342, !346, !350, !351, !355, !360, !3000, !3004}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !315, file: !216, line: 129, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!8, !214, !13}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !315, file: !216, line: 130, baseType: !318, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !315, file: !216, line: 131, baseType: !323, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!8, !326, !328}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !315, file: !216, line: 132, baseType: !330, size: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!8, !326, !13, !333, !336}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!335 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !315, file: !216, line: 134, baseType: !339, size: 64, offset: 256)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!8, !326}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !315, file: !216, line: 135, baseType: !343, size: 64, offset: 320)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!8, !214}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !315, file: !216, line: 136, baseType: !347, size: 64, offset: 384)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !214}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !315, file: !216, line: 137, baseType: !347, size: 64, offset: 448)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !315, file: !216, line: 138, baseType: !352, size: 64, offset: 512)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !214, !176}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !315, file: !216, line: 139, baseType: !356, size: 64, offset: 576)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!359, !214, !359, !8}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !315, file: !216, line: 140, baseType: !361, size: 64, offset: 640)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!364, !2999}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !366, line: 70, size: 256, elements: !367)
!366 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!367 = !{!368, !369, !2995, !2996}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !365, file: !366, line: 71, baseType: !214, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !365, file: !366, line: 72, baseType: !370, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !12, line: 1190, size: 10752, elements: !372)
!372 = !{!373, !374, !377, !378, !379, !383, !436, !603, !643, !733, !737, !738, !739, !740, !741, !750, !751, !752, !753, !758, !762, !763, !766, !769, !772, !775, !776, !777, !818, !2926, !2927, !2928, !2929, !2930, !2931, !2934, !2936, !2943, !2944, !2945, !2946, !2947, !2962, !2963, !2964, !2965, !2966, !2969, !2970, !2971, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !371, file: !12, line: 1191, baseType: !159, size: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !371, file: !12, line: 1192, baseType: !375, size: 32, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !138, line: 21, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !138, line: 18, baseType: !248)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !371, file: !12, line: 1193, baseType: !255, size: 8, offset: 160)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !371, file: !12, line: 1194, baseType: !7, size: 64, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !371, file: !12, line: 1195, baseType: !380, size: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !138, line: 52, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !191, line: 88, baseType: !382)
!382 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !371, file: !12, line: 1196, baseType: !384, size: 64, offset: 320)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !12, line: 2366, size: 576, elements: !386)
!386 = !{!387, !388, !389, !395, !399, !403, !407, !411, !412, !422, !426, !427, !428, !432, !433, !434, !435}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !385, file: !12, line: 2367, baseType: !333, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !385, file: !12, line: 2368, baseType: !8, size: 32, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !385, file: !12, line: 2376, baseType: !390, size: 64, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!8, !393}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !366, line: 21, flags: DIFlagFwdDecl)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !385, file: !12, line: 2377, baseType: !396, size: 64, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!398 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !12, line: 75, flags: DIFlagFwdDecl)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !385, file: !12, line: 2378, baseType: !400, size: 64, offset: 256)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{!214, !384, !8, !333, !6}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !385, file: !12, line: 2380, baseType: !404, size: 64, offset: 320)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{null, !370}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !385, file: !12, line: 2381, baseType: !408, size: 64, offset: 384)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !410, line: 348, flags: DIFlagFwdDecl)
!410 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!411 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !385, file: !12, line: 2382, baseType: !384, size: 64, offset: 448)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !385, file: !12, line: 2383, baseType: !413, size: 64, offset: 512)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !138, line: 194, size: 64, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !413, file: !138, line: 195, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !138, line: 198, size: 128, elements: !418)
!418 = !{!419, !420}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !417, file: !138, line: 199, baseType: !416, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !417, file: !138, line: 199, baseType: !421, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !385, file: !12, line: 2385, baseType: !423, offset: 576)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !424, line: 206, elements: !425)
!424 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!425 = !{}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !385, file: !12, line: 2386, baseType: !423, offset: 576)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !385, file: !12, line: 2387, baseType: !423, offset: 576)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !385, file: !12, line: 2388, baseType: !429, offset: 576)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 3)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !385, file: !12, line: 2390, baseType: !423, offset: 576)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !385, file: !12, line: 2391, baseType: !423, offset: 576)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !385, file: !12, line: 2392, baseType: !423, offset: 576)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !385, file: !12, line: 2393, baseType: !423, offset: 576)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !371, file: !12, line: 1197, baseType: !437, size: 64, offset: 384)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !12, line: 2057, size: 1664, elements: !440)
!440 = !{!441, !445, !449, !450, !454, !460, !464, !465, !466, !470, !474, !478, !479, !480, !486, !491, !492, !499, !500, !501, !502, !513, !517, !586, !601, !602}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !439, file: !12, line: 2058, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!176, !370}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !439, file: !12, line: 2059, baseType: !446, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !176}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !439, file: !12, line: 2060, baseType: !446, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !439, file: !12, line: 2062, baseType: !451, size: 64, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !176, !8}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !439, file: !12, line: 2063, baseType: !455, size: 64, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!8, !176, !458}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !12, line: 309, flags: DIFlagFwdDecl)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !439, file: !12, line: 2064, baseType: !461, size: 64, offset: 320)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!8, !176}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !439, file: !12, line: 2065, baseType: !446, size: 64, offset: 384)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !439, file: !12, line: 2066, baseType: !404, size: 64, offset: 448)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !439, file: !12, line: 2067, baseType: !467, size: 64, offset: 512)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!8, !370, !8}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !439, file: !12, line: 2068, baseType: !471, size: 64, offset: 576)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!8, !370, !11}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !439, file: !12, line: 2069, baseType: !475, size: 64, offset: 640)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!8, !370}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !439, file: !12, line: 2070, baseType: !471, size: 64, offset: 704)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !439, file: !12, line: 2071, baseType: !475, size: 64, offset: 768)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !439, file: !12, line: 2072, baseType: !481, size: 64, offset: 832)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!8, !214, !484}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !12, line: 62, flags: DIFlagFwdDecl)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !439, file: !12, line: 2073, baseType: !487, size: 64, offset: 896)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!8, !370, !490, !359}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !439, file: !12, line: 2074, baseType: !404, size: 64, offset: 960)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !439, file: !12, line: 2076, baseType: !493, size: 64, offset: 1024)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!8, !496, !214}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !498, line: 66, flags: DIFlagFwdDecl)
!498 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!499 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !439, file: !12, line: 2077, baseType: !493, size: 64, offset: 1088)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !439, file: !12, line: 2078, baseType: !493, size: 64, offset: 1152)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !439, file: !12, line: 2079, baseType: !493, size: 64, offset: 1216)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !439, file: !12, line: 2081, baseType: !503, size: 64, offset: 1280)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!506, !370, !8, !359, !510, !380}
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !138, line: 66, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !191, line: 73, baseType: !508)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !191, line: 15, baseType: !509)
!509 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !138, line: 61, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !191, line: 72, baseType: !512)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !191, line: 16, baseType: !7)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !439, file: !12, line: 2082, baseType: !514, size: 64, offset: 1344)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!506, !370, !8, !333, !510, !380}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !439, file: !12, line: 2083, baseType: !518, size: 64, offset: 1408)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!521, !176}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !18, line: 296, size: 1664, elements: !524)
!524 = !{!525, !526, !527, !528, !529, !550, !551, !552, !553, !569, !570, !571}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !523, file: !18, line: 297, baseType: !417, size: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !523, file: !18, line: 298, baseType: !159, size: 128, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !523, file: !18, line: 299, baseType: !159, size: 128, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !523, file: !18, line: 300, baseType: !159, size: 128, offset: 384)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !523, file: !18, line: 301, baseType: !530, size: 256, offset: 512)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !531, line: 66, size: 256, elements: !532)
!531 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!532 = !{!533, !542, !544, !549}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !530, file: !531, line: 67, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !535, line: 13, baseType: !536)
!535 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !138, line: 181, baseType: !537)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 179, size: 64, elements: !538)
!538 = !{!539}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !537, file: !138, line: 180, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !141, line: 22, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !143, line: 30, baseType: !382)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !530, file: !531, line: 68, baseType: !543, size: 32, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !282, line: 23, baseType: !281)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !530, file: !531, line: 70, baseType: !545, size: 32, offset: 96)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !546, line: 15, size: 32, elements: !547)
!546 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!547 = !{!548}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !545, file: !546, line: 20, baseType: !293, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !530, file: !531, line: 72, baseType: !159, size: 128, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !523, file: !18, line: 302, baseType: !273, size: 32, offset: 768)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !523, file: !18, line: 303, baseType: !293, size: 32, offset: 800)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !523, file: !18, line: 304, baseType: !370, size: 64, offset: 832)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !523, file: !18, line: 305, baseType: !554, size: 64, offset: 896)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !18, line: 68, size: 64, elements: !555)
!555 = !{!556, !568}
!556 = !DIDerivedType(tag: DW_TAG_member, scope: !554, file: !18, line: 69, baseType: !557, size: 32)
!557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !554, file: !18, line: 69, size: 32, elements: !558)
!558 = !{!559, !560, !561}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !557, file: !18, line: 70, baseType: !184, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !557, file: !18, line: 71, baseType: !194, size: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !557, file: !18, line: 72, baseType: !562, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !563, line: 24, baseType: !564)
!563 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !563, line: 22, size: 32, elements: !565)
!565 = !{!566}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !564, file: !563, line: 23, baseType: !567, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !563, line: 20, baseType: !190)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !554, file: !18, line: 74, baseType: !17, size: 32, offset: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !523, file: !18, line: 306, baseType: !380, size: 64, offset: 960)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !523, file: !18, line: 307, baseType: !7, size: 64, offset: 1024)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !523, file: !18, line: 308, baseType: !572, size: 576, offset: 1088)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !18, line: 205, size: 576, elements: !573)
!573 = !{!574, !576, !577, !578, !579, !580, !581, !582, !585}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !572, file: !18, line: 206, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !18, line: 66, baseType: !382)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !572, file: !18, line: 207, baseType: !575, size: 64, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !572, file: !18, line: 208, baseType: !575, size: 64, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !572, file: !18, line: 209, baseType: !575, size: 64, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !572, file: !18, line: 210, baseType: !575, size: 64, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !572, file: !18, line: 211, baseType: !575, size: 64, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !572, file: !18, line: 212, baseType: !575, size: 64, offset: 384)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !572, file: !18, line: 213, baseType: !583, size: 64, offset: 448)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !584, line: 8, baseType: !541)
!584 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!585 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !572, file: !18, line: 214, baseType: !583, size: 64, offset: 512)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !439, file: !12, line: 2085, baseType: !587, size: 64, offset: 1472)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!509, !370, !590}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !592, line: 15, size: 256, elements: !593)
!592 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!593 = !{!594, !595, !596, !597, !598}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !591, file: !592, line: 16, baseType: !137, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !591, file: !592, line: 19, baseType: !8, size: 32, offset: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !591, file: !592, line: 26, baseType: !7, size: 64, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !591, file: !592, line: 33, baseType: !7, size: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !591, file: !592, line: 36, baseType: !599, size: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !37, line: 33, flags: DIFlagFwdDecl)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !439, file: !12, line: 2087, baseType: !587, size: 64, offset: 1536)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !439, file: !12, line: 2089, baseType: !404, size: 64, offset: 1600)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !371, file: !12, line: 1198, baseType: !604, size: 64, offset: 448)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !606)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !18, line: 324, size: 704, elements: !607)
!607 = !{!608, !612, !616, !620, !621, !622, !623, !624, !629, !634, !638}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !606, file: !18, line: 325, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!8, !522}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !606, file: !18, line: 326, baseType: !613, size: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!522, !370, !8}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !606, file: !18, line: 327, baseType: !617, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{null, !522}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !606, file: !18, line: 328, baseType: !609, size: 64, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !606, file: !18, line: 329, baseType: !609, size: 64, offset: 256)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !606, file: !18, line: 330, baseType: !609, size: 64, offset: 320)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !606, file: !18, line: 331, baseType: !467, size: 64, offset: 384)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !606, file: !18, line: 334, baseType: !625, size: 64, offset: 448)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!628, !176}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !606, file: !18, line: 335, baseType: !630, size: 64, offset: 512)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!8, !176, !633}
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !606, file: !18, line: 337, baseType: !635, size: 64, offset: 576)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!8, !176, !628}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !606, file: !18, line: 339, baseType: !639, size: 64, offset: 640)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!8, !370, !642}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !371, file: !12, line: 1199, baseType: !644, size: 64, offset: 512)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !18, line: 430, size: 704, elements: !647)
!647 = !{!648, !659, !660, !664, !665, !666, !681, !704, !708, !709, !732}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !646, file: !18, line: 431, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!8, !370, !8, !8, !652}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !654)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !655, line: 8, size: 128, elements: !656)
!655 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!656 = !{!657, !658}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !654, file: !655, line: 9, baseType: !364, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !654, file: !655, line: 10, baseType: !214, size: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !646, file: !18, line: 432, baseType: !467, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !646, file: !18, line: 433, baseType: !661, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!8, !370, !13}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !646, file: !18, line: 434, baseType: !661, size: 64, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !646, file: !18, line: 435, baseType: !467, size: 64, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !646, file: !18, line: 436, baseType: !667, size: 64, offset: 320)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!8, !370, !8, !670}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !18, line: 417, size: 256, elements: !672)
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !671, file: !18, line: 418, baseType: !8, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !671, file: !18, line: 419, baseType: !13, size: 32, offset: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !671, file: !18, line: 420, baseType: !13, size: 32, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !671, file: !18, line: 422, baseType: !13, size: 32, offset: 96)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !671, file: !18, line: 423, baseType: !13, size: 32, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !671, file: !18, line: 424, baseType: !13, size: 32, offset: 160)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !671, file: !18, line: 425, baseType: !13, size: 32, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !671, file: !18, line: 426, baseType: !13, size: 32, offset: 224)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !646, file: !18, line: 437, baseType: !682, size: 64, offset: 384)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!8, !370, !554, !685}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !18, line: 345, size: 960, elements: !687)
!687 = !{!688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !686, file: !18, line: 346, baseType: !8, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !686, file: !18, line: 347, baseType: !140, size: 64, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !686, file: !18, line: 348, baseType: !140, size: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !686, file: !18, line: 349, baseType: !140, size: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !686, file: !18, line: 350, baseType: !140, size: 64, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !686, file: !18, line: 351, baseType: !140, size: 64, offset: 320)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !686, file: !18, line: 352, baseType: !140, size: 64, offset: 384)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !686, file: !18, line: 353, baseType: !540, size: 64, offset: 448)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !686, file: !18, line: 355, baseType: !540, size: 64, offset: 512)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !686, file: !18, line: 356, baseType: !8, size: 32, offset: 576)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !686, file: !18, line: 357, baseType: !8, size: 32, offset: 608)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !686, file: !18, line: 358, baseType: !140, size: 64, offset: 640)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !686, file: !18, line: 359, baseType: !140, size: 64, offset: 704)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !686, file: !18, line: 360, baseType: !140, size: 64, offset: 768)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !686, file: !18, line: 361, baseType: !540, size: 64, offset: 832)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !686, file: !18, line: 362, baseType: !8, size: 32, offset: 896)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !646, file: !18, line: 438, baseType: !705, size: 64, offset: 448)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!8, !370, !642, !685}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !646, file: !18, line: 440, baseType: !682, size: 64, offset: 512)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !646, file: !18, line: 441, baseType: !710, size: 64, offset: 576)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!8, !370, !713}
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !18, line: 411, size: 1408, elements: !715)
!715 = !{!716, !717}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !714, file: !18, line: 412, baseType: !13, size: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !714, file: !18, line: 413, baseType: !718, size: 1344, offset: 64)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !719, size: 1344, elements: !430)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !18, line: 397, size: 448, elements: !720)
!720 = !{!721, !722, !723, !724, !725, !726, !727, !728, !729, !731}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !719, file: !18, line: 398, baseType: !13, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !719, file: !18, line: 399, baseType: !13, size: 32, offset: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !719, file: !18, line: 401, baseType: !13, size: 32, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !719, file: !18, line: 402, baseType: !13, size: 32, offset: 96)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !719, file: !18, line: 403, baseType: !13, size: 32, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !719, file: !18, line: 404, baseType: !13, size: 32, offset: 160)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !719, file: !18, line: 405, baseType: !13, size: 32, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !719, file: !18, line: 406, baseType: !144, size: 64, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !719, file: !18, line: 407, baseType: !730, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !138, line: 132, baseType: !140)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !719, file: !18, line: 408, baseType: !730, size: 64, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !646, file: !18, line: 442, baseType: !661, size: 64, offset: 640)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !371, file: !12, line: 1200, baseType: !734, size: 64, offset: 576)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !736)
!736 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !12, line: 54, flags: DIFlagFwdDecl)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !371, file: !12, line: 1201, baseType: !7, size: 64, offset: 640)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !371, file: !12, line: 1202, baseType: !7, size: 64, offset: 704)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !371, file: !12, line: 1203, baseType: !7, size: 64, offset: 768)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !371, file: !12, line: 1204, baseType: !214, size: 64, offset: 832)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !371, file: !12, line: 1205, baseType: !742, size: 320, offset: 896)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !743, line: 48, size: 320, elements: !744)
!743 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!744 = !{!745, !746, !747, !748, !749}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !742, file: !743, line: 49, baseType: !534, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !742, file: !743, line: 55, baseType: !534, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !742, file: !743, line: 57, baseType: !545, size: 32, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !742, file: !743, line: 59, baseType: !543, size: 32, offset: 160)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !742, file: !743, line: 60, baseType: !159, size: 128, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !371, file: !12, line: 1206, baseType: !8, size: 32, offset: 1216)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !371, file: !12, line: 1207, baseType: !293, size: 32, offset: 1248)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !371, file: !12, line: 1209, baseType: !6, size: 64, offset: 1280)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !371, file: !12, line: 1211, baseType: !754, size: 64, offset: 1344)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !757)
!757 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !12, line: 1211, flags: DIFlagFwdDecl)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !371, file: !12, line: 1223, baseType: !759, size: 64, offset: 1408)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !231, line: 34, size: 64, elements: !760)
!760 = !{!761}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !759, file: !231, line: 35, baseType: !234, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !371, file: !12, line: 1224, baseType: !159, size: 128, offset: 1472)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !371, file: !12, line: 1225, baseType: !764, size: 64, offset: 1600)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !12, line: 1225, flags: DIFlagFwdDecl)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !371, file: !12, line: 1226, baseType: !767, size: 64, offset: 1664)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !12, line: 1226, flags: DIFlagFwdDecl)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !371, file: !12, line: 1227, baseType: !770, size: 64, offset: 1728)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !12, line: 50, flags: DIFlagFwdDecl)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !371, file: !12, line: 1228, baseType: !773, size: 64, offset: 1792)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !12, line: 1228, flags: DIFlagFwdDecl)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !371, file: !12, line: 1229, baseType: !417, size: 128, offset: 1856)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !371, file: !12, line: 1230, baseType: !13, size: 32, offset: 1984)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !371, file: !12, line: 1231, baseType: !778, size: 2496, offset: 2048)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !18, line: 521, size: 2496, elements: !779)
!779 = !{!780, !781, !782, !784, !816}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !778, file: !18, line: 522, baseType: !13, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !778, file: !18, line: 523, baseType: !742, size: 320, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !778, file: !18, line: 524, baseType: !783, size: 192, offset: 384)
!783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 192, elements: !430)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !778, file: !18, line: 525, baseType: !785, size: 1728, offset: 576)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !786, size: 1728, elements: !430)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !18, line: 222, size: 576, elements: !787)
!787 = !{!788, !808, !809, !810, !811, !812, !813, !814, !815}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !786, file: !18, line: 223, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !18, line: 445, size: 256, elements: !791)
!791 = !{!792, !793, !806, !807}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !790, file: !18, line: 446, baseType: !8, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !790, file: !18, line: 447, baseType: !794, size: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !796)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !18, line: 312, size: 512, elements: !797)
!797 = !{!798, !799, !800, !801, !802, !803, !804, !805}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !796, file: !18, line: 313, baseType: !467, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !796, file: !18, line: 314, baseType: !467, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !796, file: !18, line: 315, baseType: !467, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !796, file: !18, line: 316, baseType: !467, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !796, file: !18, line: 317, baseType: !609, size: 64, offset: 256)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !796, file: !18, line: 318, baseType: !609, size: 64, offset: 320)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !796, file: !18, line: 319, baseType: !609, size: 64, offset: 384)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !796, file: !18, line: 320, baseType: !639, size: 64, offset: 448)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !790, file: !18, line: 448, baseType: !408, size: 64, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !790, file: !18, line: 449, baseType: !789, size: 64, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !786, file: !18, line: 224, baseType: !8, size: 32, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !786, file: !18, line: 226, baseType: !159, size: 128, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !786, file: !18, line: 227, baseType: !7, size: 64, offset: 256)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !786, file: !18, line: 228, baseType: !13, size: 32, offset: 320)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !786, file: !18, line: 229, baseType: !13, size: 32, offset: 352)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !786, file: !18, line: 230, baseType: !575, size: 64, offset: 384)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !786, file: !18, line: 231, baseType: !575, size: 64, offset: 448)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !786, file: !18, line: 232, baseType: !6, size: 64, offset: 512)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !778, file: !18, line: 526, baseType: !817, size: 192, offset: 2304)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !794, size: 192, elements: !430)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !371, file: !12, line: 1233, baseType: !819, size: 2368, offset: 4544)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !12, line: 1184, size: 2368, elements: !820)
!820 = !{!821, !822, !823}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !819, file: !12, line: 1185, baseType: !181, size: 16)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !819, file: !12, line: 1186, baseType: !181, size: 16, offset: 16)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !819, file: !12, line: 1187, baseType: !824, size: 2304, offset: 64)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !825, size: 2304, elements: !430)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !826, line: 12, size: 768, elements: !827)
!826 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!827 = !{!828, !850, !852, !2924, !2925}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !825, file: !826, line: 13, baseType: !829, size: 384)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !830, line: 17, size: 384, elements: !831)
!830 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!831 = !{!832, !833, !834, !841}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !829, file: !830, line: 18, baseType: !8, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !829, file: !830, line: 19, baseType: !8, size: 32, offset: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !829, file: !830, line: 20, baseType: !835, size: 192, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !836, line: 41, baseType: !837)
!836 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !836, line: 37, size: 192, elements: !838)
!838 = !{!839, !840}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !837, file: !836, line: 38, baseType: !273, size: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !837, file: !836, line: 39, baseType: !159, size: 128, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !829, file: !830, line: 22, baseType: !842, size: 128, align: 64, offset: 256)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !138, line: 232, size: 128, align: 64, elements: !843)
!843 = !{!844, !846}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !842, file: !138, line: 233, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !842, file: !138, line: 234, baseType: !847, size: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !845}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !825, file: !826, line: 14, baseType: !851, size: 64, offset: 384)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !825, file: !826, line: 15, baseType: !853, size: 64, offset: 448)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !854, line: 16, size: 64, elements: !855)
!854 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!855 = !{!856}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !853, file: !854, line: 17, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !498, line: 746, size: 58368, elements: !859)
!859 = !{!860, !868, !869, !870, !876, !877, !878, !879, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !957, !968, !1063, !1067, !1070, !1101, !1102, !1103, !1104, !1115, !1117, !1118, !1119, !1120, !1121, !1122, !1133, !1134, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1151, !1152, !1159, !1160, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2070, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2085, !2086, !2087, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2129, !2135, !2136, !2137, !2138, !2139, !2143, !2146, !2153, !2158, !2161, !2164, !2167, !2170, !2310, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2352, !2353, !2354, !2363, !2371, !2372, !2373, !2374, !2375, !2380, !2381, !2382, !2385, !2386, !2389, !2392, !2395, !2403, !2406, !2407, !2493, !2494, !2495, !2496, !2497, !2502, !2503, !2504, !2505, !2508, !2509, !2512, !2515, !2516, !2519, !2520, !2521, !2524, !2525, !2526, !2527, !2528, !2529, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2561, !2562, !2568, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2580, !2652, !2654, !2655, !2656, !2657, !2658, !2670, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2701, !2702, !2703}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !858, file: !498, line: 752, baseType: !861, size: 192)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !862, line: 56, size: 192, elements: !863)
!862 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!863 = !{!864, !865, !866, !867}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !861, file: !862, line: 57, baseType: !7, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !861, file: !862, line: 58, baseType: !7, size: 64, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !861, file: !862, line: 59, baseType: !248, size: 32, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !861, file: !862, line: 61, baseType: !248, size: 32, offset: 160)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !858, file: !498, line: 754, baseType: !13, size: 32, offset: 192)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !858, file: !498, line: 767, baseType: !6, size: 64, offset: 256)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !858, file: !498, line: 768, baseType: !871, size: 32, offset: 320)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !872, line: 113, baseType: !873)
!872 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !872, line: 111, size: 32, elements: !874)
!874 = !{!875}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !873, file: !872, line: 112, baseType: !293, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !858, file: !498, line: 770, baseType: !13, size: 32, offset: 352)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !858, file: !498, line: 771, baseType: !13, size: 32, offset: 384)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !858, file: !498, line: 774, baseType: !8, size: 32, offset: 416)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !858, file: !498, line: 775, baseType: !880, size: 128, offset: 448)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !881, line: 58, size: 128, elements: !882)
!881 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!882 = !{!883, !889, !894, !895}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !880, file: !881, line: 59, baseType: !884, size: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !885, line: 60, size: 64, elements: !886)
!885 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!886 = !{!887}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !884, file: !885, line: 61, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, scope: !880, file: !881, line: 60, baseType: !890, size: 32, offset: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !880, file: !881, line: 60, size: 32, elements: !891)
!891 = !{!892, !893}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !890, file: !881, line: 61, baseType: !13, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !890, file: !881, line: 62, baseType: !293, size: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !880, file: !881, line: 65, baseType: !308, size: 16, offset: 96)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !880, file: !881, line: 65, baseType: !308, size: 16, offset: 112)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !858, file: !498, line: 776, baseType: !13, size: 32, offset: 576)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !858, file: !498, line: 777, baseType: !7, size: 64, offset: 640)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !858, file: !498, line: 778, baseType: !857, size: 64, offset: 704)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !858, file: !498, line: 787, baseType: !8, size: 32, offset: 768)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !858, file: !498, line: 788, baseType: !8, size: 32, offset: 800)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !858, file: !498, line: 790, baseType: !8, size: 32, offset: 832)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !858, file: !498, line: 792, baseType: !8, size: 32, offset: 864)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !858, file: !498, line: 793, baseType: !8, size: 32, offset: 896)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !858, file: !498, line: 794, baseType: !8, size: 32, offset: 928)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !858, file: !498, line: 795, baseType: !13, size: 32, offset: 960)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !858, file: !498, line: 797, baseType: !907, size: 2048, offset: 1024)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !498, line: 551, size: 2048, elements: !908)
!908 = !{!909, !914, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !936, !939, !940, !941}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !907, file: !498, line: 553, baseType: !910, size: 128)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !498, line: 411, size: 128, elements: !911)
!911 = !{!912, !913}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !910, file: !498, line: 412, baseType: !7, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !910, file: !498, line: 413, baseType: !248, size: 32, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !907, file: !498, line: 554, baseType: !915, size: 192, align: 64, offset: 128)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !916, line: 5, size: 192, align: 64, elements: !917)
!916 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!917 = !{!918, !919, !921}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !915, file: !916, line: 6, baseType: !7, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !915, file: !916, line: 7, baseType: !920, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !915, file: !916, line: 8, baseType: !920, size: 64, offset: 128)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !907, file: !498, line: 555, baseType: !140, size: 64, offset: 320)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !907, file: !498, line: 556, baseType: !140, size: 64, offset: 384)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !907, file: !498, line: 558, baseType: !159, size: 128, offset: 448)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !907, file: !498, line: 559, baseType: !13, size: 32, offset: 576)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !907, file: !498, line: 561, baseType: !140, size: 64, offset: 640)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !907, file: !498, line: 562, baseType: !140, size: 64, offset: 704)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !907, file: !498, line: 563, baseType: !140, size: 64, offset: 768)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !907, file: !498, line: 564, baseType: !140, size: 64, offset: 832)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !907, file: !498, line: 565, baseType: !540, size: 64, offset: 896)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !907, file: !498, line: 566, baseType: !140, size: 64, offset: 960)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !907, file: !498, line: 568, baseType: !140, size: 64, offset: 1024)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !907, file: !498, line: 571, baseType: !8, size: 32, offset: 1088)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !907, file: !498, line: 572, baseType: !935, size: 64, offset: 1152)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !907, file: !498, line: 574, baseType: !937, size: 64, offset: 1216)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !498, line: 49, flags: DIFlagFwdDecl)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !907, file: !498, line: 576, baseType: !937, size: 64, offset: 1280)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !907, file: !498, line: 578, baseType: !7, size: 64, offset: 1344)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !907, file: !498, line: 588, baseType: !942, size: 512, align: 512, offset: 1536)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !498, line: 497, size: 512, align: 512, elements: !943)
!943 = !{!944, !945, !946, !947, !948, !949, !950, !951, !952}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !942, file: !498, line: 498, baseType: !140, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !942, file: !498, line: 499, baseType: !140, size: 64, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !942, file: !498, line: 500, baseType: !140, size: 64, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !942, file: !498, line: 501, baseType: !248, size: 32, offset: 192)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !942, file: !498, line: 502, baseType: !248, size: 32, offset: 224)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !942, file: !498, line: 503, baseType: !7, size: 64, offset: 256)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !942, file: !498, line: 504, baseType: !7, size: 64, offset: 320)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !942, file: !498, line: 505, baseType: !7, size: 64, offset: 384)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !942, file: !498, line: 506, baseType: !953, size: 64, align: 64, offset: 448)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !498, line: 445, size: 64, align: 64, elements: !954)
!954 = !{!955, !956}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !953, file: !498, line: 446, baseType: !13, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !953, file: !498, line: 447, baseType: !13, size: 32, offset: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !858, file: !498, line: 798, baseType: !958, size: 384, offset: 3072)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !498, line: 592, size: 384, elements: !959)
!959 = !{!960, !961, !962, !963, !964, !965, !966}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !958, file: !498, line: 593, baseType: !159, size: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !958, file: !498, line: 594, baseType: !7, size: 64, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !958, file: !498, line: 595, baseType: !7, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !958, file: !498, line: 596, baseType: !13, size: 32, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !958, file: !498, line: 597, baseType: !181, size: 16, offset: 288)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !958, file: !498, line: 598, baseType: !181, size: 16, offset: 304)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !958, file: !498, line: 600, baseType: !967, size: 64, offset: 320)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !858, file: !498, line: 799, baseType: !969, size: 1792, offset: 3456)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !498, line: 610, size: 1792, elements: !970)
!970 = !{!971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !1060, !1061}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !969, file: !498, line: 611, baseType: !915, size: 192, align: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !969, file: !498, line: 618, baseType: !140, size: 64, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !969, file: !498, line: 619, baseType: !140, size: 64, offset: 256)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !969, file: !498, line: 620, baseType: !140, size: 64, offset: 320)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !969, file: !498, line: 621, baseType: !140, size: 64, offset: 384)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !969, file: !498, line: 622, baseType: !140, size: 64, offset: 448)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !969, file: !498, line: 629, baseType: !540, size: 64, offset: 512)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !969, file: !498, line: 630, baseType: !140, size: 64, offset: 576)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !969, file: !498, line: 631, baseType: !13, size: 32, offset: 640)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !969, file: !498, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !969, file: !498, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !969, file: !498, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !969, file: !498, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !969, file: !498, line: 662, baseType: !985, size: 512, offset: 704)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !24, line: 118, size: 512, elements: !986)
!986 = !{!987, !995, !996, !1001, !1056, !1057, !1058, !1059}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !985, file: !24, line: 119, baseType: !988, size: 256)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !989, line: 9, size: 256, elements: !990)
!989 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!990 = !{!991, !992}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !988, file: !989, line: 10, baseType: !915, size: 192, align: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !988, file: !989, line: 11, baseType: !993, size: 64, offset: 192)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !994, line: 29, baseType: !540)
!994 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !985, file: !24, line: 120, baseType: !993, size: 64, offset: 256)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !985, file: !24, line: 121, baseType: !997, size: 64, offset: 320)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{!23, !1000}
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !985, file: !24, line: 122, baseType: !1002, size: 64, offset: 384)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !24, line: 159, size: 512, align: 512, elements: !1004)
!1004 = !{!1005, !1030, !1031, !1034, !1039, !1040, !1051, !1055}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1003, file: !24, line: 160, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !24, line: 215, size: 4608, align: 512, elements: !1008)
!1008 = !{!1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1007, file: !24, line: 216, baseType: !543, size: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1007, file: !24, line: 217, baseType: !13, size: 32, offset: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1007, file: !24, line: 218, baseType: !13, size: 32, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1007, file: !24, line: 219, baseType: !13, size: 32, offset: 96)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1007, file: !24, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1007, file: !24, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1007, file: !24, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1007, file: !24, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1007, file: !24, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1007, file: !24, line: 226, baseType: !13, size: 32, offset: 160)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1007, file: !24, line: 227, baseType: !181, size: 16, offset: 192)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1007, file: !24, line: 228, baseType: !181, size: 16, offset: 208)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1007, file: !24, line: 229, baseType: !13, size: 32, offset: 224)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1007, file: !24, line: 235, baseType: !993, size: 64, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1007, file: !24, line: 236, baseType: !1000, size: 64, offset: 320)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1007, file: !24, line: 237, baseType: !993, size: 64, offset: 384)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1007, file: !24, line: 238, baseType: !1000, size: 64, offset: 448)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1007, file: !24, line: 239, baseType: !1027, size: 4096, align: 512, offset: 512)
!1027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1003, size: 4096, align: 512, elements: !1028)
!1028 = !{!1029}
!1029 = !DISubrange(count: 8)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1003, file: !24, line: 161, baseType: !13, size: 32, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1003, file: !24, line: 162, baseType: !1032, size: 32, offset: 96)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !138, line: 32, baseType: !1033)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !191, line: 96, baseType: !8)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1003, file: !24, line: 163, baseType: !1035, size: 32, offset: 128)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !221, line: 274, baseType: !1036)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !221, line: 274, size: 32, elements: !1037)
!1037 = !{!1038}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1036, file: !221, line: 274, baseType: !225, size: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1003, file: !24, line: 164, baseType: !1000, size: 64, offset: 192)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1003, file: !24, line: 165, baseType: !1041, size: 128, offset: 256)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !989, line: 14, size: 128, elements: !1042)
!1042 = !{!1043}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1041, file: !989, line: 15, baseType: !1044, size: 128)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !916, line: 26, size: 128, elements: !1045)
!1045 = !{!1046, !1050}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1044, file: !916, line: 27, baseType: !1047, size: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !916, line: 12, size: 64, elements: !1048)
!1048 = !{!1049}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1047, file: !916, line: 13, baseType: !920, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1044, file: !916, line: 28, baseType: !920, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1003, file: !24, line: 166, baseType: !1052, size: 64, offset: 384)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!993}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1003, file: !24, line: 167, baseType: !993, size: 64, offset: 448)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !985, file: !24, line: 123, baseType: !301, size: 8, offset: 448)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !985, file: !24, line: 124, baseType: !301, size: 8, offset: 456)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !985, file: !24, line: 125, baseType: !301, size: 8, offset: 464)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !985, file: !24, line: 126, baseType: !301, size: 8, offset: 472)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !969, file: !498, line: 671, baseType: !985, size: 512, offset: 1216)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !969, file: !498, line: 679, baseType: !1062, size: 64, offset: 1728)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !858, file: !498, line: 800, baseType: !1064, size: 64, offset: 5248)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1066)
!1066 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !498, line: 800, flags: DIFlagFwdDecl)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !858, file: !498, line: 809, baseType: !1068, size: 64, offset: 5312)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !498, line: 70, flags: DIFlagFwdDecl)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !858, file: !498, line: 825, baseType: !1071, size: 2048, align: 512, offset: 5632)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !498, line: 509, size: 2048, align: 512, elements: !1072)
!1072 = !{!1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1071, file: !498, line: 511, baseType: !140, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1071, file: !498, line: 512, baseType: !140, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1071, file: !498, line: 513, baseType: !140, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1071, file: !498, line: 514, baseType: !140, size: 64, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1071, file: !498, line: 515, baseType: !140, size: 64, offset: 256)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1071, file: !498, line: 516, baseType: !140, size: 64, offset: 320)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1071, file: !498, line: 518, baseType: !140, size: 64, offset: 384)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1071, file: !498, line: 519, baseType: !140, size: 64, offset: 448)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1071, file: !498, line: 520, baseType: !540, size: 64, offset: 512)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1071, file: !498, line: 522, baseType: !140, size: 64, offset: 576)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1071, file: !498, line: 523, baseType: !140, size: 64, offset: 640)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1071, file: !498, line: 524, baseType: !540, size: 64, offset: 704)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1071, file: !498, line: 526, baseType: !540, size: 64, offset: 768)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1071, file: !498, line: 527, baseType: !140, size: 64, offset: 832)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1071, file: !498, line: 529, baseType: !140, size: 64, offset: 896)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1071, file: !498, line: 530, baseType: !140, size: 64, offset: 960)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1071, file: !498, line: 531, baseType: !140, size: 64, offset: 1024)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1071, file: !498, line: 532, baseType: !140, size: 64, offset: 1088)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1071, file: !498, line: 533, baseType: !140, size: 64, offset: 1152)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1071, file: !498, line: 535, baseType: !140, size: 64, offset: 1216)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1071, file: !498, line: 536, baseType: !140, size: 64, offset: 1280)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1071, file: !498, line: 537, baseType: !140, size: 64, offset: 1344)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1071, file: !498, line: 538, baseType: !140, size: 64, offset: 1408)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1071, file: !498, line: 539, baseType: !140, size: 64, offset: 1472)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1071, file: !498, line: 540, baseType: !140, size: 64, offset: 1536)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1071, file: !498, line: 541, baseType: !140, size: 64, offset: 1600)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1071, file: !498, line: 542, baseType: !140, size: 64, offset: 1664)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1071, file: !498, line: 543, baseType: !140, size: 64, offset: 1728)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !858, file: !498, line: 833, baseType: !13, size: 32, offset: 7680)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !858, file: !498, line: 836, baseType: !13, size: 32, offset: 7712)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !858, file: !498, line: 837, baseType: !8, size: 32, offset: 7744)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !858, file: !498, line: 838, baseType: !1105, size: 64, offset: 7808)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1107)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1108, line: 19, baseType: !1109)
!1108 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1108, line: 19, size: 64, elements: !1110)
!1110 = !{!1111}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1109, file: !1108, line: 19, baseType: !1112, size: 64)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1113)
!1113 = !{!1114}
!1114 = !DISubrange(count: 1)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !858, file: !498, line: 839, baseType: !1116, size: 64, offset: 7872)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !858, file: !498, line: 840, baseType: !1107, size: 64, offset: 7936)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !858, file: !498, line: 841, baseType: !6, size: 64, offset: 8000)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !858, file: !498, line: 843, baseType: !181, size: 16, offset: 8064)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !858, file: !498, line: 845, baseType: !181, size: 16, offset: 8080)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !858, file: !498, line: 848, baseType: !8, size: 32, offset: 8096)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !858, file: !498, line: 849, baseType: !1123, size: 32, offset: 8128)
!1123 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !498, line: 718, size: 32, elements: !1124)
!1124 = !{!1125, !1132}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1123, file: !498, line: 724, baseType: !1126, size: 32)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1123, file: !498, line: 719, size: 32, elements: !1127)
!1127 = !{!1128, !1129, !1130, !1131}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1126, file: !498, line: 720, baseType: !301, size: 8)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1126, file: !498, line: 721, baseType: !301, size: 8, offset: 8)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1126, file: !498, line: 722, baseType: !301, size: 8, offset: 16)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1126, file: !498, line: 723, baseType: !301, size: 8, offset: 24)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1123, file: !498, line: 725, baseType: !248, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !858, file: !498, line: 850, baseType: !159, size: 128, offset: 8192)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !858, file: !498, line: 851, baseType: !1135, size: 64, offset: 8320)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !498, line: 60, flags: DIFlagFwdDecl)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !858, file: !498, line: 855, baseType: !7, size: 64, offset: 8384)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !858, file: !498, line: 856, baseType: !301, size: 8, offset: 8448)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !858, file: !498, line: 857, baseType: !301, size: 8, offset: 8456)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !858, file: !498, line: 858, baseType: !8, size: 32, offset: 8480)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !858, file: !498, line: 859, baseType: !159, size: 128, offset: 8512)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !858, file: !498, line: 860, baseType: !8, size: 32, offset: 8640)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !858, file: !498, line: 861, baseType: !159, size: 128, offset: 8704)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !858, file: !498, line: 873, baseType: !1145, size: 256, offset: 8832)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !498, line: 376, size: 256, elements: !1146)
!1146 = !{!1147, !1148, !1149, !1150}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1145, file: !498, line: 381, baseType: !7, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1145, file: !498, line: 384, baseType: !144, size: 64, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1145, file: !498, line: 389, baseType: !144, size: 64, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1145, file: !498, line: 392, baseType: !144, size: 64, offset: 192)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !858, file: !498, line: 875, baseType: !159, size: 128, offset: 9088)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !858, file: !498, line: 877, baseType: !1153, size: 320, offset: 9216)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1154, line: 86, size: 320, elements: !1155)
!1154 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1155 = !{!1156, !1157, !1158}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1153, file: !1154, line: 87, baseType: !8, size: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1153, file: !1154, line: 88, baseType: !159, size: 128, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1153, file: !1154, line: 89, baseType: !159, size: 128, offset: 192)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !858, file: !498, line: 878, baseType: !915, size: 192, align: 64, offset: 9536)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !858, file: !498, line: 881, baseType: !1161, size: 64, offset: 9728)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !37, line: 733, size: 10240, elements: !1163)
!1163 = !{!1164, !1989}
!1164 = !DIDerivedType(tag: DW_TAG_member, scope: !1162, file: !37, line: 734, baseType: !1165, size: 10240)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1162, file: !37, line: 734, size: 10240, elements: !1166)
!1166 = !{!1167, !1171, !1184, !1876, !1877, !1878, !1879, !1880, !1881, !1888, !1889, !1890, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1929, !1931, !1934, !1958, !1959, !1960, !1963, !1964, !1965, !1968, !1969, !1970, !1976, !1977}
!1167 = !DIDerivedType(tag: DW_TAG_member, scope: !1165, file: !37, line: 739, baseType: !1168, size: 512, align: 512)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1165, file: !37, line: 739, size: 512, align: 512, elements: !1169)
!1169 = !{!1170}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1168, file: !37, line: 747, baseType: !293, size: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1165, file: !37, line: 750, baseType: !1172, size: 128, offset: 512)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1173, line: 218, size: 128, elements: !1174)
!1173 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1174 = !{!1175, !1182, !1183}
!1175 = !DIDerivedType(tag: DW_TAG_member, scope: !1172, file: !1173, line: 219, baseType: !1176, size: 32)
!1176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1172, file: !1173, line: 219, size: 32, elements: !1177)
!1177 = !{!1178, !1179}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1176, file: !1173, line: 220, baseType: !273, size: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1176, file: !1173, line: 221, baseType: !1180)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1173, line: 197, baseType: !1181)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1173, line: 197, elements: !425)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1172, file: !1173, line: 223, baseType: !13, size: 32, offset: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1172, file: !1173, line: 224, baseType: !6, size: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1165, file: !37, line: 752, baseType: !1185, size: 64, offset: 640)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!7, !1188, !7, !7, !7, !7}
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !12, line: 994, size: 1856, align: 64, elements: !1190)
!1190 = !{!1191, !1197, !1198, !1200, !1201, !1202, !1203, !1204, !1256, !1451, !1460, !1461, !1462, !1866, !1867, !1868, !1869, !1871, !1872, !1875}
!1191 = !DIDerivedType(tag: DW_TAG_member, scope: !1189, file: !12, line: 995, baseType: !1192, size: 128)
!1192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1189, file: !12, line: 995, size: 128, elements: !1193)
!1193 = !{!1194, !1195, !1196}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1192, file: !12, line: 996, baseType: !884, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1192, file: !12, line: 997, baseType: !842, size: 128, align: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1192, file: !12, line: 998, baseType: !13, size: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1189, file: !12, line: 1005, baseType: !273, size: 32, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1189, file: !12, line: 1006, baseType: !1199, size: 32, offset: 160)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !138, line: 156, baseType: !13)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1189, file: !12, line: 1007, baseType: !534, size: 64, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1189, file: !12, line: 1008, baseType: !530, size: 256, offset: 256)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1189, file: !12, line: 1009, baseType: !380, size: 64, offset: 512)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1189, file: !12, line: 1010, baseType: !13, size: 32, offset: 576)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1189, file: !12, line: 1011, baseType: !1205, size: 256, offset: 640)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !12, line: 948, size: 256, elements: !1206)
!1206 = !{!1207, !1228, !1252, !1253, !1254, !1255}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1205, file: !12, line: 949, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1209, line: 34, baseType: !1210)
!1209 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1209, line: 25, size: 64, elements: !1211)
!1211 = !{!1212}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1210, file: !1209, line: 26, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1214, line: 27, baseType: !1215)
!1214 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1214, line: 13, size: 64, elements: !1216)
!1216 = !{!1217, !1227}
!1217 = !DIDerivedType(tag: DW_TAG_member, scope: !1215, file: !1214, line: 14, baseType: !1218, size: 32)
!1218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1215, file: !1214, line: 14, size: 32, elements: !1219)
!1219 = !{!1220, !1221}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1218, file: !1214, line: 15, baseType: !293, size: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !1214, line: 16, baseType: !1222, size: 32)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1218, file: !1214, line: 16, size: 32, elements: !1223)
!1223 = !{!1224, !1225}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1222, file: !1214, line: 18, baseType: !301, size: 8)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1222, file: !1214, line: 19, baseType: !1226, size: 24, offset: 8)
!1226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 24, elements: !430)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1215, file: !1214, line: 26, baseType: !285, size: 32, offset: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1205, file: !12, line: 950, baseType: !1229, size: 64, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !29, line: 59, size: 768, elements: !1231)
!1231 = !{!1232, !1233, !1234, !1235, !1239, !1240, !1241, !1242}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1230, file: !29, line: 61, baseType: !871, size: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1230, file: !29, line: 62, baseType: !13, size: 32, offset: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1230, file: !29, line: 63, baseType: !273, size: 32, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1230, file: !29, line: 65, baseType: !1236, size: 256, offset: 128)
!1236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 256, elements: !1237)
!1237 = !{!1238}
!1238 = !DISubrange(count: 4)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1230, file: !29, line: 66, baseType: !413, size: 64, offset: 384)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1230, file: !29, line: 68, baseType: !835, size: 192, offset: 448)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1230, file: !29, line: 69, baseType: !842, size: 128, align: 64, offset: 640)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1230, file: !29, line: 70, baseType: !1243, offset: 768)
!1243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1244, elements: !1250)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !29, line: 54, size: 128, elements: !1245)
!1245 = !{!1246, !1247}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1244, file: !29, line: 55, baseType: !8, size: 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1244, file: !29, line: 56, baseType: !1248, size: 64, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !29, line: 56, flags: DIFlagFwdDecl)
!1250 = !{!1251}
!1251 = !DISubrange(count: -1)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1205, file: !12, line: 951, baseType: !28, size: 32, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1205, file: !12, line: 952, baseType: !184, size: 32, offset: 160)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1205, file: !12, line: 952, baseType: !184, size: 32, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1205, file: !12, line: 953, baseType: !8, size: 32, offset: 224)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1189, file: !12, line: 1012, baseType: !1257, size: 64, offset: 896)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1259)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1260, line: 110, size: 1472, elements: !1261)
!1260 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1261 = !{!1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1278, !1279, !1280, !1281, !1282, !1283, !1396, !1397, !1398, !1399, !1400, !1431, !1434, !1438, !1446}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1259, file: !1260, line: 111, baseType: !534, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1259, file: !1260, line: 112, baseType: !184, size: 32, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1259, file: !1260, line: 113, baseType: !194, size: 32, offset: 96)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1259, file: !1260, line: 114, baseType: !184, size: 32, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1259, file: !1260, line: 115, baseType: !194, size: 32, offset: 160)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1259, file: !1260, line: 116, baseType: !184, size: 32, offset: 192)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1259, file: !1260, line: 117, baseType: !194, size: 32, offset: 224)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1259, file: !1260, line: 118, baseType: !184, size: 32, offset: 256)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1259, file: !1260, line: 119, baseType: !194, size: 32, offset: 288)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1259, file: !1260, line: 120, baseType: !13, size: 32, offset: 320)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1259, file: !1260, line: 121, baseType: !1273, size: 64, offset: 384)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1274, line: 24, baseType: !1275)
!1274 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1274, line: 24, size: 64, elements: !1276)
!1276 = !{!1277}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1275, file: !1274, line: 24, baseType: !140, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1259, file: !1260, line: 122, baseType: !1273, size: 64, offset: 448)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1259, file: !1260, line: 123, baseType: !1273, size: 64, offset: 512)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1259, file: !1260, line: 124, baseType: !1273, size: 64, offset: 576)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1259, file: !1260, line: 125, baseType: !1273, size: 64, offset: 640)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1259, file: !1260, line: 127, baseType: !255, size: 8, offset: 704)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1259, file: !1260, line: 129, baseType: !1284, size: 64, offset: 768)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1286, line: 195, size: 1728, elements: !1287)
!1286 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1287 = !{!1288, !1289, !1294, !1299, !1300, !1303, !1304, !1309, !1310, !1311, !1312, !1315, !1316, !1317, !1319, !1320, !1360, !1381}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1285, file: !1286, line: 196, baseType: !871, size: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1285, file: !1286, line: 197, baseType: !1290, size: 32, offset: 32)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1286, line: 28, baseType: !1291)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !138, line: 104, baseType: !1292)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !141, line: 20, baseType: !1293)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !143, line: 26, baseType: !8)
!1294 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !1286, line: 198, baseType: !1295, size: 192, offset: 64)
!1295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1285, file: !1286, line: 198, size: 192, elements: !1296)
!1296 = !{!1297, !1298}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1295, file: !1286, line: 199, baseType: !159, size: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1295, file: !1286, line: 200, baseType: !915, size: 192, align: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1285, file: !1286, line: 205, baseType: !742, size: 320, offset: 256)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1285, file: !1286, line: 206, baseType: !1301, size: 64, offset: 576)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1286, line: 206, flags: DIFlagFwdDecl)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1285, file: !1286, line: 207, baseType: !6, size: 64, offset: 640)
!1304 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !1286, line: 208, baseType: !1305, size: 64, offset: 704)
!1305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1285, file: !1286, line: 208, size: 64, elements: !1306)
!1306 = !{!1307, !1308}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1305, file: !1286, line: 209, baseType: !583, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1305, file: !1286, line: 210, baseType: !583, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1285, file: !1286, line: 212, baseType: !583, size: 64, offset: 768)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1285, file: !1286, line: 213, baseType: !184, size: 32, offset: 832)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1285, file: !1286, line: 214, baseType: !194, size: 32, offset: 864)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1285, file: !1286, line: 215, baseType: !1313, size: 32, offset: 896)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1286, line: 31, baseType: !1314)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !138, line: 110, baseType: !248)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1285, file: !1286, line: 216, baseType: !181, size: 16, offset: 928)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1285, file: !1286, line: 217, baseType: !181, size: 16, offset: 944)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1285, file: !1286, line: 221, baseType: !1318, size: 16, offset: 960)
!1318 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1285, file: !1286, line: 228, baseType: !7, size: 64, offset: 1024)
!1320 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !1286, line: 245, baseType: !1321, size: 320, offset: 1088)
!1321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1285, file: !1286, line: 245, size: 320, elements: !1322)
!1322 = !{!1323, !1352}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1321, file: !1286, line: 246, baseType: !1324, size: 320)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1286, line: 114, size: 320, elements: !1325)
!1325 = !{!1326, !1327, !1339, !1342, !1351}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1324, file: !1286, line: 116, baseType: !7, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, scope: !1324, file: !1286, line: 117, baseType: !1328, size: 64, offset: 64)
!1328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1324, file: !1286, line: 117, size: 64, elements: !1329)
!1329 = !{!1330, !1338}
!1330 = !DIDerivedType(tag: DW_TAG_member, scope: !1328, file: !1286, line: 118, baseType: !1331, size: 64)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1328, file: !1286, line: 118, size: 64, elements: !1332)
!1332 = !{!1333, !1334}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1331, file: !1286, line: 120, baseType: !308, size: 16)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1331, file: !1286, line: 121, baseType: !1335, size: 48, offset: 16)
!1335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 48, elements: !1336)
!1336 = !{!1337}
!1337 = !DISubrange(count: 6)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1328, file: !1286, line: 127, baseType: !7, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1324, file: !1286, line: 129, baseType: !1340, size: 64, offset: 128)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1286, line: 102, flags: DIFlagFwdDecl)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1324, file: !1286, line: 130, baseType: !1343, size: 64, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1286, line: 108, size: 192, elements: !1345)
!1345 = !{!1346, !1347, !1348}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1344, file: !1286, line: 109, baseType: !842, size: 128, align: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1344, file: !1286, line: 110, baseType: !871, size: 32, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1344, file: !1286, line: 111, baseType: !1349, size: 8, offset: 160)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !138, line: 35, baseType: !1350)
!1350 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1324, file: !1286, line: 131, baseType: !333, size: 64, offset: 256)
!1352 = !DIDerivedType(tag: DW_TAG_member, scope: !1321, file: !1286, line: 247, baseType: !1353, size: 320)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1321, file: !1286, line: 247, size: 320, elements: !1354)
!1354 = !{!1355, !1356, !1357, !1358, !1359}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1353, file: !1286, line: 248, baseType: !7, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1353, file: !1286, line: 249, baseType: !7, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1353, file: !1286, line: 250, baseType: !1340, size: 64, offset: 128)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1353, file: !1286, line: 251, baseType: !1343, size: 64, offset: 192)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1353, file: !1286, line: 252, baseType: !359, size: 64, offset: 256)
!1360 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !1286, line: 260, baseType: !1361, size: 256, offset: 1408)
!1361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1285, file: !1286, line: 260, size: 256, elements: !1362)
!1362 = !{!1363, !1369}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1361, file: !1286, line: 261, baseType: !1364, size: 256)
!1364 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1286, line: 134, size: 256, elements: !1365)
!1365 = !{!1366, !1367}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1364, file: !1286, line: 135, baseType: !6, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1364, file: !1286, line: 136, baseType: !1368, size: 256)
!1368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !1237)
!1369 = !DIDerivedType(tag: DW_TAG_member, scope: !1361, file: !1286, line: 262, baseType: !1370, size: 256)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1361, file: !1286, line: 262, size: 256, elements: !1371)
!1371 = !{!1372, !1373}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1370, file: !1286, line: 264, baseType: !159, size: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1370, file: !1286, line: 265, baseType: !1374, size: 128, offset: 128)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1375, line: 22, size: 128, elements: !1376)
!1375 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1376 = !{!1377, !1380}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1374, file: !1375, line: 23, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1375, line: 23, flags: DIFlagFwdDecl)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1374, file: !1375, line: 24, baseType: !7, size: 64, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1285, file: !1286, line: 280, baseType: !1382, size: 64, offset: 1664)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1286, line: 176, size: 192, elements: !1384)
!1384 = !{!1385, !1394, !1395}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1383, file: !1286, line: 177, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1286, line: 171, baseType: !1387)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!8, !1284, !1390, !1392, !1284}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1341)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1364)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1383, file: !1286, line: 178, baseType: !1284, size: 64, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1383, file: !1286, line: 179, baseType: !1340, size: 64, offset: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1259, file: !1260, line: 130, baseType: !1284, size: 64, offset: 832)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1259, file: !1260, line: 131, baseType: !1284, size: 64, offset: 896)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1259, file: !1260, line: 132, baseType: !1284, size: 64, offset: 960)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1259, file: !1260, line: 135, baseType: !6, size: 64, offset: 1024)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1259, file: !1260, line: 137, baseType: !1401, size: 64, offset: 1088)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1403, line: 14, size: 1088, elements: !1404)
!1403 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1404 = !{!1405, !1406, !1415, !1416, !1417, !1418, !1419, !1420}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1402, file: !1403, line: 15, baseType: !871, size: 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1402, file: !1403, line: 17, baseType: !1407, size: 320, offset: 64)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1408, line: 22, size: 320, elements: !1409)
!1408 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1409 = !{!1410, !1411, !1412, !1413}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1407, file: !1408, line: 23, baseType: !543, size: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1407, file: !1408, line: 24, baseType: !540, size: 64, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1407, file: !1408, line: 26, baseType: !159, size: 128, offset: 128)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1407, file: !1408, line: 28, baseType: !1414, size: 64, offset: 256)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1402, file: !1403, line: 19, baseType: !7, size: 64, offset: 384)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1402, file: !1403, line: 20, baseType: !534, size: 64, offset: 448)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1402, file: !1403, line: 23, baseType: !417, size: 128, offset: 512)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1402, file: !1403, line: 24, baseType: !184, size: 32, offset: 640)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1402, file: !1403, line: 29, baseType: !534, size: 64, offset: 704)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1402, file: !1403, line: 36, baseType: !1421, size: 320, offset: 768)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1422, line: 15, size: 320, elements: !1423)
!1422 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1423 = !{!1424, !1425, !1426, !1427, !1428, !1429, !1430}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1421, file: !1422, line: 16, baseType: !543, size: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1421, file: !1422, line: 18, baseType: !8, size: 32, offset: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1421, file: !1422, line: 19, baseType: !8, size: 32, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1421, file: !1422, line: 20, baseType: !8, size: 32, offset: 96)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1421, file: !1422, line: 21, baseType: !8, size: 32, offset: 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1421, file: !1422, line: 22, baseType: !7, size: 64, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1421, file: !1422, line: 23, baseType: !7, size: 64, offset: 256)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1259, file: !1260, line: 138, baseType: !1432, size: 64, offset: 1152)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !37, line: 901, flags: DIFlagFwdDecl)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1259, file: !1260, line: 139, baseType: !1435, size: 64, offset: 1216)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1437, line: 16, flags: DIFlagFwdDecl)
!1437 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1259, file: !1260, line: 140, baseType: !1439, size: 64, offset: 1280)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1260, line: 25, size: 64, elements: !1441)
!1441 = !{!1442, !1443, !1444}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1440, file: !1260, line: 26, baseType: !293, size: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1440, file: !1260, line: 27, baseType: !8, size: 32, offset: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1440, file: !1260, line: 28, baseType: !1445, offset: 64)
!1445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, elements: !1250)
!1446 = !DIDerivedType(tag: DW_TAG_member, scope: !1259, file: !1260, line: 142, baseType: !1447, size: 128, offset: 1344)
!1447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1259, file: !1260, line: 142, size: 128, elements: !1448)
!1448 = !{!1449, !1450}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1447, file: !1260, line: 143, baseType: !8, size: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1447, file: !1260, line: 144, baseType: !842, size: 128, align: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1189, file: !12, line: 1013, baseType: !1452, size: 256, offset: 960)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !12, line: 970, size: 256, elements: !1453)
!1453 = !{!1454, !1455, !1456, !1457, !1458, !1459}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1452, file: !12, line: 971, baseType: !7, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1452, file: !12, line: 972, baseType: !13, size: 32, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1452, file: !12, line: 973, baseType: !13, size: 32, offset: 96)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1452, file: !12, line: 974, baseType: !13, size: 32, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1452, file: !12, line: 975, baseType: !13, size: 32, offset: 160)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1452, file: !12, line: 976, baseType: !380, size: 64, offset: 192)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1189, file: !12, line: 1014, baseType: !654, size: 128, offset: 1216)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1189, file: !12, line: 1015, baseType: !176, size: 64, offset: 1344)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1189, file: !12, line: 1016, baseType: !1463, size: 64, offset: 1408)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1465)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !12, line: 1914, size: 2112, elements: !1466)
!1466 = !{!1467, !1468, !1472, !1477, !1481, !1592, !1593, !1599, !1612, !1620, !1624, !1625, !1788, !1789, !1793, !1798, !1799, !1803, !1807, !1813, !1814, !1818, !1819, !1825, !1829, !1833, !1839, !1843, !1847, !1851, !1855, !1856, !1862}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1465, file: !12, line: 1915, baseType: !408, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1465, file: !12, line: 1916, baseType: !1469, size: 64, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!380, !1188, !380, !8}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1465, file: !12, line: 1917, baseType: !1473, size: 64, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!506, !1188, !359, !510, !1476}
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1465, file: !12, line: 1918, baseType: !1478, size: 64, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!506, !1188, !333, !510, !1476}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1465, file: !12, line: 1919, baseType: !1482, size: 64, offset: 256)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!506, !1485, !1590}
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !12, line: 373, size: 384, elements: !1487)
!1487 = !{!1488, !1489, !1490, !1494, !1495, !1496, !1497}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1486, file: !12, line: 374, baseType: !1188, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1486, file: !12, line: 375, baseType: !380, size: 64, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1486, file: !12, line: 376, baseType: !1491, size: 64, offset: 128)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{null, !1485, !509}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1486, file: !12, line: 377, baseType: !6, size: 64, offset: 192)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1486, file: !12, line: 378, baseType: !8, size: 32, offset: 256)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1486, file: !12, line: 379, baseType: !308, size: 16, offset: 288)
!1497 = !DIDerivedType(tag: DW_TAG_member, scope: !1486, file: !12, line: 380, baseType: !1498, size: 64, offset: 320)
!1498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1486, file: !12, line: 380, size: 64, elements: !1499)
!1499 = !{!1500, !1586}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1498, file: !12, line: 386, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1503, line: 998, size: 448, elements: !1504)
!1503 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1504 = !{!1505, !1572, !1573}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1502, file: !1503, line: 999, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !37, line: 293, size: 1536, elements: !1508)
!1508 = !{!1509, !1539, !1553}
!1509 = !DIDerivedType(tag: DW_TAG_member, scope: !1507, file: !37, line: 295, baseType: !1510, size: 512)
!1510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1507, file: !37, line: 295, size: 512, elements: !1511)
!1511 = !{!1512, !1538}
!1512 = !DIDerivedType(tag: DW_TAG_member, scope: !1510, file: !37, line: 296, baseType: !1513, size: 448)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1510, file: !37, line: 296, size: 448, elements: !1514)
!1514 = !{!1515, !1516, !1525, !1526, !1527, !1536, !1537}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1513, file: !37, line: 298, baseType: !7, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, scope: !1513, file: !37, line: 299, baseType: !1517, size: 128, offset: 64)
!1517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1513, file: !37, line: 299, size: 128, elements: !1518)
!1518 = !{!1519, !1520}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1517, file: !37, line: 300, baseType: !159, size: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, scope: !1517, file: !37, line: 302, baseType: !1521, size: 128)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1517, file: !37, line: 302, size: 128, elements: !1522)
!1522 = !{!1523, !1524}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1521, file: !37, line: 303, baseType: !6, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1521, file: !37, line: 305, baseType: !13, size: 32, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1513, file: !37, line: 310, baseType: !172, size: 64, offset: 192)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1513, file: !37, line: 311, baseType: !7, size: 64, offset: 256)
!1527 = !DIDerivedType(tag: DW_TAG_member, scope: !1513, file: !37, line: 312, baseType: !1528, size: 64, offset: 320)
!1528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1513, file: !37, line: 312, size: 64, elements: !1529)
!1529 = !{!1530, !1531}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1528, file: !37, line: 313, baseType: !6, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1528, file: !37, line: 314, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !37, line: 257, baseType: !1533)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 255, size: 64, elements: !1534)
!1534 = !{!1535}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1533, file: !37, line: 256, baseType: !7, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1513, file: !37, line: 316, baseType: !293, size: 32, offset: 384)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1513, file: !37, line: 317, baseType: !293, size: 32, offset: 416)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1510, file: !37, line: 323, baseType: !146, size: 512, align: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, scope: !1507, file: !37, line: 325, baseType: !1540, size: 512, offset: 512)
!1540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1507, file: !37, line: 325, size: 512, elements: !1541)
!1541 = !{!1542, !1552}
!1542 = !DIDerivedType(tag: DW_TAG_member, scope: !1540, file: !37, line: 326, baseType: !1543, size: 320)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1540, file: !37, line: 326, size: 320, elements: !1544)
!1544 = !{!1545, !1546, !1547, !1548, !1549, !1550, !1551}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1543, file: !37, line: 327, baseType: !7, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1543, file: !37, line: 328, baseType: !7, size: 64, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1543, file: !37, line: 329, baseType: !7, size: 64, offset: 128)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1543, file: !37, line: 331, baseType: !293, size: 32, offset: 192)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1543, file: !37, line: 332, baseType: !293, size: 32, offset: 224)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1543, file: !37, line: 333, baseType: !293, size: 32, offset: 256)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1543, file: !37, line: 335, baseType: !13, size: 32, offset: 288)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1540, file: !37, line: 339, baseType: !146, size: 512, align: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, scope: !1507, file: !37, line: 341, baseType: !1554, size: 512, offset: 1024)
!1554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1507, file: !37, line: 341, size: 512, elements: !1555)
!1555 = !{!1556, !1565, !1571}
!1556 = !DIDerivedType(tag: DW_TAG_member, scope: !1554, file: !37, line: 342, baseType: !1557, size: 384)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1554, file: !37, line: 342, size: 384, elements: !1558)
!1558 = !{!1559, !1560, !1561, !1562, !1563, !1564}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1557, file: !37, line: 343, baseType: !7, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1557, file: !37, line: 344, baseType: !7, size: 64, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1557, file: !37, line: 346, baseType: !6, size: 64, offset: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1557, file: !37, line: 347, baseType: !6, size: 64, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1557, file: !37, line: 348, baseType: !6, size: 64, offset: 256)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1557, file: !37, line: 349, baseType: !6, size: 64, offset: 320)
!1565 = !DIDerivedType(tag: DW_TAG_member, scope: !1554, file: !37, line: 352, baseType: !1566, size: 256)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1554, file: !37, line: 352, size: 256, elements: !1567)
!1567 = !{!1568, !1569, !1570}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1566, file: !37, line: 353, baseType: !7, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1566, file: !37, line: 354, baseType: !7, size: 64, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1566, file: !37, line: 356, baseType: !159, size: 128, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1554, file: !37, line: 359, baseType: !146, size: 512, align: 128)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1502, file: !1503, line: 1000, baseType: !8, size: 32, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1502, file: !1503, line: 1001, baseType: !1574, size: 320, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !836, line: 14, baseType: !1575)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !836, line: 30, size: 320, elements: !1576)
!1576 = !{!1577, !1578, !1579, !1585}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1575, file: !836, line: 31, baseType: !13, size: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1575, file: !836, line: 32, baseType: !6, size: 64, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1575, file: !836, line: 33, baseType: !1580, size: 64, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !836, line: 16, baseType: !1581)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!8, !1584, !13, !8, !6}
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1575, file: !836, line: 34, baseType: !159, size: 128, offset: 192)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1498, file: !12, line: 395, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!506, !6}
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !12, line: 69, flags: DIFlagFwdDecl)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1465, file: !12, line: 1920, baseType: !1482, size: 64, offset: 320)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1465, file: !12, line: 1921, baseType: !1594, size: 64, offset: 384)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!8, !1485, !1597, !13}
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !12, line: 53, flags: DIFlagFwdDecl)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1465, file: !12, line: 1923, baseType: !1600, size: 64, offset: 448)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!8, !1188, !1603}
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !12, line: 1858, size: 128, elements: !1605)
!1605 = !{!1606, !1611}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1604, file: !12, line: 1859, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !12, line: 1855, baseType: !1608)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!1349, !1603, !333, !8, !380, !140, !13}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1604, file: !12, line: 1860, baseType: !380, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1465, file: !12, line: 1924, baseType: !1613, size: 64, offset: 512)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!1616, !1188, !1618}
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1617, line: 59, baseType: !13)
!1617 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !12, line: 61, flags: DIFlagFwdDecl)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1465, file: !12, line: 1925, baseType: !1621, size: 64, offset: 576)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!509, !1188, !13, !7}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1465, file: !12, line: 1926, baseType: !1621, size: 64, offset: 640)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1465, file: !12, line: 1927, baseType: !1626, size: 64, offset: 704)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!8, !1188, !1629}
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !37, line: 625, size: 1344, elements: !1631)
!1631 = !{!1632, !1641, !1642, !1650, !1657, !1658, !1663, !1664, !1669, !1670, !1673, !1781, !1782, !1783, !1784, !1785, !1786}
!1632 = !DIDerivedType(tag: DW_TAG_member, scope: !1630, file: !37, line: 628, baseType: !1633, size: 128)
!1633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1630, file: !37, line: 628, size: 128, elements: !1634)
!1634 = !{!1635, !1640}
!1635 = !DIDerivedType(tag: DW_TAG_member, scope: !1633, file: !37, line: 629, baseType: !1636, size: 128)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1633, file: !37, line: 629, size: 128, elements: !1637)
!1637 = !{!1638, !1639}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1636, file: !37, line: 631, baseType: !7, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1636, file: !37, line: 632, baseType: !7, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1633, file: !37, line: 635, baseType: !842, size: 128, align: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1630, file: !37, line: 639, baseType: !1161, size: 64, offset: 128)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1630, file: !37, line: 640, baseType: !1643, size: 64, offset: 192)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1644, line: 297, baseType: !1645)
!1644 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1644, line: 297, size: 64, elements: !1646)
!1646 = !{!1647}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1645, file: !1644, line: 297, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1649, line: 19, baseType: !7)
!1649 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1650 = !DIDerivedType(tag: DW_TAG_member, scope: !1630, file: !37, line: 646, baseType: !1651, size: 64, offset: 256)
!1651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1630, file: !37, line: 646, size: 64, elements: !1652)
!1652 = !{!1653, !1656}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1651, file: !37, line: 647, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1655)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !37, line: 542, baseType: !7)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1651, file: !37, line: 648, baseType: !1655, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1630, file: !37, line: 666, baseType: !8, size: 32, offset: 320)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1630, file: !37, line: 667, baseType: !1659, size: 64, offset: 384)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !37, line: 579, size: 320, elements: !1661)
!1661 = !{!1662}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1660, file: !37, line: 580, baseType: !742, size: 320)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1630, file: !37, line: 670, baseType: !1349, size: 8, offset: 448)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1630, file: !37, line: 681, baseType: !1665, size: 256, offset: 512)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1630, file: !37, line: 678, size: 256, elements: !1666)
!1666 = !{!1667, !1668}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1665, file: !37, line: 679, baseType: !915, size: 192, align: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1665, file: !37, line: 680, baseType: !7, size: 64, offset: 192)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1630, file: !37, line: 689, baseType: !159, size: 128, offset: 768)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1630, file: !37, line: 691, baseType: !1671, size: 64, offset: 896)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !37, line: 691, flags: DIFlagFwdDecl)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1630, file: !37, line: 694, baseType: !1674, size: 64, offset: 960)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1676)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1677, line: 563, size: 1024, elements: !1678)
!1677 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1678 = !{!1679, !1683, !1684, !1688, !1692, !1696, !1745, !1749, !1753, !1757, !1758, !1759, !1763, !1767, !1773, !1777}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1676, file: !1677, line: 564, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{null, !1629}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1676, file: !1677, line: 569, baseType: !1680, size: 64, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1676, file: !1677, line: 571, baseType: !1685, size: 64, offset: 128)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!8, !1629, !7}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1676, file: !1677, line: 572, baseType: !1689, size: 64, offset: 192)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!8, !1629}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1676, file: !1677, line: 578, baseType: !1693, size: 64, offset: 256)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!8, !1629, !7, !7, !7}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1676, file: !1677, line: 580, baseType: !1697, size: 64, offset: 320)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!1700, !1701}
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !37, line: 1184, baseType: !13)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1677, line: 512, size: 896, elements: !1703)
!1703 = !{!1704, !1712, !1713, !1720, !1727, !1737, !1738, !1739, !1741, !1743}
!1704 = !DIDerivedType(tag: DW_TAG_member, scope: !1702, file: !1677, line: 513, baseType: !1705, size: 320)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1702, file: !1677, line: 513, size: 320, elements: !1706)
!1706 = !{!1707, !1708, !1709, !1710, !1711}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1705, file: !1677, line: 514, baseType: !1629, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1705, file: !1677, line: 515, baseType: !137, size: 32, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1705, file: !1677, line: 516, baseType: !7, size: 64, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1705, file: !1677, line: 517, baseType: !7, size: 64, offset: 192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1705, file: !1677, line: 518, baseType: !7, size: 64, offset: 256)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1702, file: !1677, line: 520, baseType: !36, size: 32, offset: 320)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1702, file: !1677, line: 522, baseType: !1714, size: 64, offset: 384)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1649, line: 22, baseType: !1716)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1649, line: 22, size: 64, elements: !1717)
!1717 = !{!1718}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1716, file: !1649, line: 22, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1649, line: 15, baseType: !7)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1702, file: !1677, line: 524, baseType: !1721, size: 64, offset: 448)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1644, line: 372, baseType: !1723)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1644, line: 372, size: 64, elements: !1724)
!1724 = !{!1725}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1723, file: !1644, line: 372, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1649, line: 16, baseType: !7)
!1727 = !DIDerivedType(tag: DW_TAG_member, scope: !1702, file: !1677, line: 527, baseType: !1728, size: 64, offset: 512)
!1728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1702, file: !1677, line: 527, size: 64, elements: !1729)
!1729 = !{!1730, !1736}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1728, file: !1677, line: 528, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1649, line: 21, baseType: !1732)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1649, line: 21, size: 64, elements: !1733)
!1733 = !{!1734}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1732, file: !1649, line: 21, baseType: !1735, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1649, line: 14, baseType: !7)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1728, file: !1677, line: 529, baseType: !1715, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1702, file: !1677, line: 534, baseType: !145, size: 64, offset: 576)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1702, file: !1677, line: 535, baseType: !145, size: 64, offset: 640)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1702, file: !1677, line: 541, baseType: !1740, size: 64, offset: 704)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1702, file: !1677, line: 545, baseType: !1742, size: 64, offset: 768)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1702, file: !1677, line: 549, baseType: !1744, size: 64, offset: 832)
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1644, line: 520, baseType: !145)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1676, file: !1677, line: 581, baseType: !1746, size: 64, offset: 384)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!1700, !1701, !13}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1676, file: !1677, line: 582, baseType: !1750, size: 64, offset: 448)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!1700, !1701, !7, !7}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1676, file: !1677, line: 584, baseType: !1754, size: 64, offset: 512)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!7, !1629}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1676, file: !1677, line: 588, baseType: !1697, size: 64, offset: 576)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1676, file: !1677, line: 591, baseType: !1697, size: 64, offset: 640)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1676, file: !1677, line: 597, baseType: !1760, size: 64, offset: 704)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!8, !1629, !7, !6, !8, !8}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1676, file: !1677, line: 603, baseType: !1764, size: 64, offset: 768)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!333, !1629}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1676, file: !1677, line: 613, baseType: !1768, size: 64, offset: 832)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!8, !1629, !1771}
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !37, line: 717, flags: DIFlagFwdDecl)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1676, file: !1677, line: 625, baseType: !1774, size: 64, offset: 896)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!1771, !1629, !7}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1676, file: !1677, line: 633, baseType: !1778, size: 64, offset: 960)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!145, !1629, !7}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1630, file: !37, line: 697, baseType: !7, size: 64, offset: 1024)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1630, file: !37, line: 699, baseType: !1188, size: 64, offset: 1088)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1630, file: !37, line: 700, baseType: !6, size: 64, offset: 1152)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1630, file: !37, line: 711, baseType: !534, size: 64, offset: 1216)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1630, file: !37, line: 717, baseType: !1771, size: 64, offset: 1280)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1630, file: !37, line: 722, baseType: !1787, offset: 1344)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !37, line: 570, elements: !425)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1465, file: !12, line: 1928, baseType: !7, size: 64, offset: 768)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1465, file: !12, line: 1929, baseType: !1790, size: 64, offset: 832)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!8, !176, !1188}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1465, file: !12, line: 1930, baseType: !1794, size: 64, offset: 896)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!8, !1188, !1797}
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !12, line: 1061, baseType: !6)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1465, file: !12, line: 1931, baseType: !1790, size: 64, offset: 960)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1465, file: !12, line: 1932, baseType: !1800, size: 64, offset: 1024)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!8, !1188, !380, !380, !8}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1465, file: !12, line: 1933, baseType: !1804, size: 64, offset: 1088)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!8, !8, !1188, !8}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1465, file: !12, line: 1934, baseType: !1808, size: 64, offset: 1152)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!8, !1188, !8, !1811}
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !12, line: 1063, flags: DIFlagFwdDecl)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1465, file: !12, line: 1935, baseType: !1185, size: 64, offset: 1216)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1465, file: !12, line: 1936, baseType: !1815, size: 64, offset: 1280)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!8, !8}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1465, file: !12, line: 1937, baseType: !1808, size: 64, offset: 1344)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1465, file: !12, line: 1938, baseType: !1820, size: 64, offset: 1408)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!506, !1823, !1188, !1476, !510, !13}
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !498, line: 59, flags: DIFlagFwdDecl)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1465, file: !12, line: 1939, baseType: !1826, size: 64, offset: 1472)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!506, !1188, !1476, !1823, !510, !13}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1465, file: !12, line: 1940, baseType: !1830, size: 64, offset: 1536)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{null, !1188}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1465, file: !12, line: 1941, baseType: !1834, size: 64, offset: 1600)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!8, !1188, !8, !1837, !1838}
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1465, file: !12, line: 1942, baseType: !1840, size: 64, offset: 1664)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!509, !1188, !8, !380, !380}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1465, file: !12, line: 1944, baseType: !1844, size: 64, offset: 1728)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{null, !496, !1188}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1465, file: !12, line: 1948, baseType: !1848, size: 64, offset: 1792)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!506, !1188, !380, !1188, !380, !510, !13}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1465, file: !12, line: 1950, baseType: !1852, size: 64, offset: 1856)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!380, !1188, !380, !1188, !380, !380, !13}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1465, file: !12, line: 1953, baseType: !1800, size: 64, offset: 1920)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1465, file: !12, line: 1954, baseType: !1857, size: 64, offset: 1984)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!8, !1860, !13}
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !12, line: 1911, flags: DIFlagFwdDecl)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1465, file: !12, line: 1955, baseType: !1863, size: 64, offset: 2048)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!8, !1860, !1597, !13}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1189, file: !12, line: 1018, baseType: !140, size: 64, offset: 1472)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1189, file: !12, line: 1020, baseType: !6, size: 64, offset: 1536)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1189, file: !12, line: 1023, baseType: !6, size: 64, offset: 1600)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1189, file: !12, line: 1027, baseType: !1870, size: 64, offset: 1664)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1189, file: !12, line: 1029, baseType: !172, size: 64, offset: 1728)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1189, file: !12, line: 1030, baseType: !1873, size: 32, offset: 1792)
!1873 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1874, line: 8, baseType: !248)
!1874 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1189, file: !12, line: 1031, baseType: !1873, size: 32, offset: 1824)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1165, file: !37, line: 756, baseType: !7, size: 64, offset: 704)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1165, file: !37, line: 757, baseType: !7, size: 64, offset: 768)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1165, file: !37, line: 760, baseType: !7, size: 64, offset: 832)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1165, file: !37, line: 761, baseType: !7, size: 64, offset: 896)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1165, file: !37, line: 763, baseType: !7, size: 64, offset: 960)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1165, file: !37, line: 764, baseType: !1882, size: 64, offset: 1024)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1644, line: 299, baseType: !1884)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1644, line: 299, size: 64, elements: !1885)
!1885 = !{!1886}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1884, file: !1644, line: 299, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1649, line: 18, baseType: !7)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1165, file: !37, line: 773, baseType: !293, size: 32, offset: 1088)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1165, file: !37, line: 785, baseType: !293, size: 32, offset: 1120)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1165, file: !37, line: 795, baseType: !1891, size: 64, offset: 1152)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !37, line: 726, size: 128, elements: !1893)
!1893 = !{!1894, !1895}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1892, file: !37, line: 727, baseType: !140, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1892, file: !37, line: 728, baseType: !8, size: 32, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1165, file: !37, line: 801, baseType: !7, size: 64, offset: 1216)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1165, file: !37, line: 804, baseType: !534, size: 64, offset: 1280)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1165, file: !37, line: 806, baseType: !8, size: 32, offset: 1344)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1165, file: !37, line: 808, baseType: !273, size: 32, offset: 1376)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1165, file: !37, line: 823, baseType: !742, size: 320, offset: 1408)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1165, file: !37, line: 825, baseType: !159, size: 128, offset: 1728)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1165, file: !37, line: 845, baseType: !8, size: 32, offset: 1856)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1165, file: !37, line: 849, baseType: !7, size: 64, offset: 1920)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1165, file: !37, line: 850, baseType: !7, size: 64, offset: 1984)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1165, file: !37, line: 852, baseType: !7, size: 64, offset: 2048)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1165, file: !37, line: 853, baseType: !7, size: 64, offset: 2112)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1165, file: !37, line: 854, baseType: !536, size: 64, offset: 2176)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1165, file: !37, line: 855, baseType: !7, size: 64, offset: 2240)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1165, file: !37, line: 856, baseType: !7, size: 64, offset: 2304)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1165, file: !37, line: 857, baseType: !7, size: 64, offset: 2368)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1165, file: !37, line: 858, baseType: !7, size: 64, offset: 2432)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1165, file: !37, line: 865, baseType: !225, size: 32, offset: 2496)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1165, file: !37, line: 867, baseType: !273, size: 32, offset: 2528)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1165, file: !37, line: 869, baseType: !7, size: 64, offset: 2560)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1165, file: !37, line: 869, baseType: !7, size: 64, offset: 2624)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1165, file: !37, line: 869, baseType: !7, size: 64, offset: 2688)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1165, file: !37, line: 869, baseType: !7, size: 64, offset: 2752)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1165, file: !37, line: 870, baseType: !7, size: 64, offset: 2816)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1165, file: !37, line: 870, baseType: !7, size: 64, offset: 2880)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1165, file: !37, line: 870, baseType: !7, size: 64, offset: 2944)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1165, file: !37, line: 871, baseType: !7, size: 64, offset: 3008)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1165, file: !37, line: 871, baseType: !7, size: 64, offset: 3072)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1165, file: !37, line: 871, baseType: !7, size: 64, offset: 3136)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1165, file: !37, line: 871, baseType: !7, size: 64, offset: 3200)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1165, file: !37, line: 873, baseType: !1926, size: 3328, offset: 3264)
!1926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 3328, elements: !1927)
!1927 = !{!1928}
!1928 = !DISubrange(count: 52)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1165, file: !37, line: 875, baseType: !1930, size: 1280, offset: 6592)
!1930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1407, size: 1280, elements: !1237)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1165, file: !37, line: 877, baseType: !1932, size: 64, offset: 7872)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !37, line: 877, flags: DIFlagFwdDecl)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1165, file: !37, line: 880, baseType: !1935, size: 1088, offset: 7936)
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1936, line: 72, baseType: !1937)
!1936 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1936, line: 23, size: 1088, elements: !1938)
!1938 = !{!1939, !1940, !1941, !1942, !1943, !1946, !1947, !1948, !1949, !1953, !1954, !1955}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1937, file: !1936, line: 28, baseType: !140, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1937, file: !1936, line: 38, baseType: !536, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1937, file: !1936, line: 40, baseType: !7, size: 64, offset: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1937, file: !1936, line: 43, baseType: !742, size: 320, offset: 192)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1937, file: !1936, line: 44, baseType: !1944, size: 64, offset: 512)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1936, line: 44, flags: DIFlagFwdDecl)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1937, file: !1936, line: 48, baseType: !7, size: 64, offset: 576)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1937, file: !1936, line: 59, baseType: !530, size: 256, offset: 640)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1937, file: !1936, line: 60, baseType: !6, size: 64, offset: 896)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1937, file: !1936, line: 61, baseType: !1950, size: 64, offset: 960)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1952)
!1952 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1936, line: 61, flags: DIFlagFwdDecl)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1937, file: !1936, line: 63, baseType: !293, size: 32, offset: 1024)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1937, file: !1936, line: 69, baseType: !308, size: 16, offset: 1056)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1937, file: !1936, line: 70, baseType: !1956, size: 16, offset: 1072)
!1956 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !141, line: 18, baseType: !1957)
!1957 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !143, line: 23, baseType: !1318)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1165, file: !37, line: 882, baseType: !7, size: 64, offset: 9024)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1165, file: !37, line: 885, baseType: !273, size: 32, offset: 9088)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1165, file: !37, line: 886, baseType: !1961, size: 64, offset: 9152)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !37, line: 732, flags: DIFlagFwdDecl)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1165, file: !37, line: 901, baseType: !1432, size: 64, offset: 9216)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1165, file: !37, line: 904, baseType: !1188, size: 64, offset: 9280)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1165, file: !37, line: 906, baseType: !1966, size: 64, offset: 9344)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !37, line: 906, flags: DIFlagFwdDecl)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1165, file: !37, line: 930, baseType: !293, size: 32, offset: 9408)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1165, file: !37, line: 933, baseType: !293, size: 32, offset: 9440)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1165, file: !37, line: 935, baseType: !1971, size: 64, offset: 9472)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !59, line: 103, size: 64, elements: !1972)
!1972 = !{!1973}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1971, file: !59, line: 104, baseType: !1974, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !59, line: 101, flags: DIFlagFwdDecl)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1165, file: !37, line: 940, baseType: !534, size: 64, offset: 9536)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1165, file: !37, line: 942, baseType: !1978, size: 256, offset: 9600)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1979, line: 98, size: 256, elements: !1980)
!1979 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1980 = !{!1981, !1982, !1983}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1978, file: !1979, line: 99, baseType: !534, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1978, file: !1979, line: 100, baseType: !159, size: 128, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1978, file: !1979, line: 101, baseType: !1984, size: 64, offset: 192)
!1984 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1979, line: 21, baseType: !1985)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{null, !1988}
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1162, file: !37, line: 986, baseType: !1990, offset: 10240)
!1990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1250)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !858, file: !498, line: 882, baseType: !1161, size: 64, offset: 9792)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !858, file: !498, line: 884, baseType: !8, size: 32, offset: 9856)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !858, file: !498, line: 885, baseType: !8, size: 32, offset: 9888)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !858, file: !498, line: 886, baseType: !8, size: 32, offset: 9920)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !858, file: !498, line: 888, baseType: !8, size: 32, offset: 9952)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !858, file: !498, line: 890, baseType: !7, size: 64, offset: 9984)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !858, file: !498, line: 893, baseType: !13, size: 32, offset: 10048)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !858, file: !498, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !858, file: !498, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !858, file: !498, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !858, file: !498, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !858, file: !498, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !858, file: !498, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !858, file: !498, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !858, file: !498, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !858, file: !498, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !858, file: !498, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !858, file: !498, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !858, file: !498, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !858, file: !498, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !858, file: !498, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !858, file: !498, line: 969, baseType: !7, size: 64, offset: 10176)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !858, file: !498, line: 971, baseType: !2014, size: 448, offset: 10240)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !53, line: 25, size: 448, elements: !2015)
!2015 = !{!2016, !2017, !2022}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2014, file: !53, line: 26, baseType: !7, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2014, file: !53, line: 27, baseType: !2018, size: 64, offset: 64)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!509, !2021}
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, scope: !2014, file: !53, line: 28, baseType: !2023, size: 320, offset: 128)
!2023 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2014, file: !53, line: 28, size: 320, elements: !2024)
!2024 = !{!2025, !2035, !2060}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2023, file: !53, line: 37, baseType: !2026, size: 320)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !53, line: 30, size: 320, elements: !2027)
!2027 = !{!2028, !2030, !2031, !2032, !2033, !2034}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2026, file: !53, line: 31, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2026, file: !53, line: 32, baseType: !248, size: 32, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2026, file: !53, line: 33, baseType: !248, size: 32, offset: 96)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2026, file: !53, line: 34, baseType: !248, size: 32, offset: 128)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2026, file: !53, line: 35, baseType: !140, size: 64, offset: 192)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2026, file: !53, line: 36, baseType: !2029, size: 64, offset: 256)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2023, file: !53, line: 47, baseType: !2036, size: 192)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !53, line: 39, size: 192, elements: !2037)
!2037 = !{!2038, !2039, !2040, !2059}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2036, file: !53, line: 40, baseType: !1032, size: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2036, file: !53, line: 41, baseType: !52, size: 32, offset: 32)
!2040 = !DIDerivedType(tag: DW_TAG_member, scope: !2036, file: !53, line: 42, baseType: !2041, size: 64, offset: 64)
!2041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2036, file: !53, line: 42, size: 64, elements: !2042)
!2042 = !{!2043, !2051}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2041, file: !53, line: 43, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2046, line: 7, size: 128, elements: !2047)
!2046 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2047 = !{!2048, !2050}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2045, file: !2046, line: 8, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !191, line: 93, baseType: !382)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2045, file: !2046, line: 9, baseType: !382, size: 64, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2041, file: !53, line: 44, baseType: !2052, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2054, line: 7, size: 64, elements: !2055)
!2054 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2055 = !{!2056, !2058}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2053, file: !2054, line: 8, baseType: !2057, size: 32)
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2054, line: 5, baseType: !1292)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2053, file: !2054, line: 9, baseType: !1292, size: 32, offset: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2036, file: !53, line: 46, baseType: !140, size: 64, offset: 128)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2023, file: !53, line: 55, baseType: !2061, size: 256)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !53, line: 49, size: 256, elements: !2062)
!2062 = !{!2063, !2066, !2067, !2068, !2069}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2061, file: !53, line: 50, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !53, line: 14, flags: DIFlagFwdDecl)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2061, file: !53, line: 51, baseType: !8, size: 32, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2061, file: !53, line: 52, baseType: !8, size: 32, offset: 96)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2061, file: !53, line: 53, baseType: !7, size: 64, offset: 128)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2061, file: !53, line: 54, baseType: !7, size: 64, offset: 192)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !858, file: !498, line: 973, baseType: !2071, size: 32, offset: 10688)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !138, line: 27, baseType: !2072)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !191, line: 28, baseType: !8)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !858, file: !498, line: 974, baseType: !2071, size: 32, offset: 10720)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !858, file: !498, line: 978, baseType: !7, size: 64, offset: 10752)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !858, file: !498, line: 987, baseType: !857, size: 64, offset: 10816)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !858, file: !498, line: 990, baseType: !857, size: 64, offset: 10880)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !858, file: !498, line: 995, baseType: !159, size: 128, offset: 10944)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !858, file: !498, line: 996, baseType: !159, size: 128, offset: 11072)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !858, file: !498, line: 997, baseType: !857, size: 64, offset: 11200)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !858, file: !498, line: 1005, baseType: !159, size: 128, offset: 11264)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !858, file: !498, line: 1006, baseType: !159, size: 128, offset: 11392)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !858, file: !498, line: 1009, baseType: !1229, size: 64, offset: 11520)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !858, file: !498, line: 1010, baseType: !2084, size: 512, offset: 11584)
!2084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 512, elements: !1237)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !858, file: !498, line: 1011, baseType: !159, size: 128, offset: 12096)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !858, file: !498, line: 1012, baseType: !159, size: 128, offset: 12224)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !858, file: !498, line: 1014, baseType: !2088, size: 64, offset: 12352)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2090, line: 26, size: 256, elements: !2091)
!2090 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!2091 = !{!2092, !2093}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2089, file: !2090, line: 27, baseType: !13, size: 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2089, file: !2090, line: 28, baseType: !2094, size: 192, offset: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2095, line: 43, size: 192, elements: !2096)
!2095 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!2096 = !{!2097, !2098}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2094, file: !2095, line: 44, baseType: !543, size: 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2094, file: !2095, line: 45, baseType: !159, size: 128, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !858, file: !498, line: 1017, baseType: !490, size: 64, offset: 12416)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !858, file: !498, line: 1020, baseType: !490, size: 64, offset: 12480)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !858, file: !498, line: 1023, baseType: !6, size: 64, offset: 12544)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !858, file: !498, line: 1025, baseType: !140, size: 64, offset: 12608)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !858, file: !498, line: 1026, baseType: !140, size: 64, offset: 12672)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !858, file: !498, line: 1031, baseType: !140, size: 64, offset: 12736)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !858, file: !498, line: 1032, baseType: !2106, size: 192, offset: 12800)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !498, line: 324, size: 192, elements: !2107)
!2107 = !{!2108, !2109, !2110}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2106, file: !498, line: 326, baseType: !140, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2106, file: !498, line: 327, baseType: !140, size: 64, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2106, file: !498, line: 328, baseType: !543, size: 32, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !858, file: !498, line: 1041, baseType: !7, size: 64, offset: 12992)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !858, file: !498, line: 1042, baseType: !7, size: 64, offset: 13056)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !858, file: !498, line: 1045, baseType: !140, size: 64, offset: 13120)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !858, file: !498, line: 1048, baseType: !140, size: 64, offset: 13184)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !858, file: !498, line: 1051, baseType: !7, size: 64, offset: 13248)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !858, file: !498, line: 1052, baseType: !7, size: 64, offset: 13312)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !858, file: !498, line: 1055, baseType: !2118, size: 640, offset: 13376)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2119, line: 132, size: 640, elements: !2120)
!2119 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2120 = !{!2121, !2127, !2128}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2118, file: !2119, line: 133, baseType: !2122, size: 576)
!2122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2123, size: 576, elements: !430)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2119, line: 117, size: 192, elements: !2124)
!2124 = !{!2125, !2126}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2123, file: !2119, line: 118, baseType: !140, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2123, file: !2119, line: 119, baseType: !1041, size: 128, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2118, file: !2119, line: 134, baseType: !13, size: 32, offset: 576)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2118, file: !2119, line: 135, baseType: !13, size: 32, offset: 608)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !858, file: !498, line: 1058, baseType: !2130, size: 448, offset: 14016)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2119, line: 144, size: 448, elements: !2131)
!2131 = !{!2132, !2133, !2134}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2130, file: !2119, line: 145, baseType: !842, size: 128, align: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2130, file: !2119, line: 146, baseType: !530, size: 256, offset: 128)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2130, file: !2119, line: 147, baseType: !13, size: 32, offset: 384)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !858, file: !498, line: 1064, baseType: !1257, size: 64, offset: 14464)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !858, file: !498, line: 1067, baseType: !1257, size: 64, offset: 14528)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !858, file: !498, line: 1070, baseType: !1257, size: 64, offset: 14592)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !858, file: !498, line: 1074, baseType: !1284, size: 64, offset: 14656)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !858, file: !498, line: 1084, baseType: !2140, size: 128, offset: 14720)
!2140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 128, elements: !2141)
!2141 = !{!2142}
!2142 = !DISubrange(count: 16)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !858, file: !498, line: 1086, baseType: !2144, size: 64, offset: 14848)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !498, line: 55, flags: DIFlagFwdDecl)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !858, file: !498, line: 1089, baseType: !2147, size: 64, offset: 14912)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2148, line: 12, size: 64, elements: !2149)
!2148 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2149 = !{!2150}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2147, file: !2148, line: 13, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2148, line: 8, flags: DIFlagFwdDecl)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !858, file: !498, line: 1090, baseType: !2154, size: 128, offset: 14976)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2155, line: 13, size: 128, elements: !2156)
!2155 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2156 = !{!2157}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2154, file: !2155, line: 14, baseType: !159, size: 128)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !858, file: !498, line: 1097, baseType: !2159, size: 64, offset: 15104)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !498, line: 50, flags: DIFlagFwdDecl)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !858, file: !498, line: 1100, baseType: !2162, size: 64, offset: 15168)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !498, line: 1100, flags: DIFlagFwdDecl)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !858, file: !498, line: 1103, baseType: !2165, size: 64, offset: 15232)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !498, line: 53, flags: DIFlagFwdDecl)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !858, file: !498, line: 1107, baseType: !2168, size: 64, offset: 15296)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !498, line: 56, flags: DIFlagFwdDecl)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !858, file: !498, line: 1110, baseType: !2171, size: 64, offset: 15360)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2173, line: 93, size: 8768, elements: !2174)
!2173 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2174 = !{!2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2224, !2233, !2234, !2236, !2237, !2238, !2241, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2279, !2280, !2287, !2297, !2300, !2301, !2304, !2305, !2306, !2307, !2308, !2309}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2172, file: !2173, line: 94, baseType: !871, size: 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2172, file: !2173, line: 95, baseType: !293, size: 32, offset: 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2172, file: !2173, line: 96, baseType: !8, size: 32, offset: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2172, file: !2173, line: 97, baseType: !8, size: 32, offset: 96)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2172, file: !2173, line: 98, baseType: !159, size: 128, offset: 128)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2172, file: !2173, line: 100, baseType: !835, size: 192, offset: 256)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2172, file: !2173, line: 103, baseType: !857, size: 64, offset: 448)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2172, file: !2173, line: 106, baseType: !2183, size: 192, offset: 512)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1437, line: 32, size: 192, elements: !2184)
!2184 = !{!2185, !2186}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2183, file: !1437, line: 33, baseType: !159, size: 128)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2183, file: !1437, line: 34, baseType: !2187, size: 64, offset: 128)
!2187 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2188, line: 25, baseType: !2189)
!2188 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2188, line: 23, size: 64, elements: !2190)
!2190 = !{!2191}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2189, file: !2188, line: 24, baseType: !1112, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2172, file: !2173, line: 109, baseType: !413, size: 64, offset: 704)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2172, file: !2173, line: 112, baseType: !8, size: 32, offset: 768)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2172, file: !2173, line: 114, baseType: !8, size: 32, offset: 800)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2172, file: !2173, line: 115, baseType: !857, size: 64, offset: 832)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2172, file: !2173, line: 118, baseType: !8, size: 32, offset: 896)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2172, file: !2173, line: 119, baseType: !13, size: 32, offset: 928)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2172, file: !2173, line: 121, baseType: !2199, size: 64, offset: 960)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2173, line: 80, size: 448, elements: !2201)
!2201 = !{!2202, !2203, !2209}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2200, file: !2173, line: 81, baseType: !293, size: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2200, file: !2173, line: 82, baseType: !2204, size: 128, offset: 64)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2173, line: 75, size: 128, elements: !2205)
!2205 = !{!2206, !2207}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2204, file: !2173, line: 76, baseType: !857, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2204, file: !2173, line: 77, baseType: !2208, size: 64, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2200, file: !2173, line: 83, baseType: !2089, size: 256, offset: 192)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2172, file: !2173, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2172, file: !2173, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2172, file: !2173, line: 138, baseType: !13, size: 32, offset: 1056)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2172, file: !2173, line: 139, baseType: !159, size: 128, offset: 1088)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2172, file: !2173, line: 142, baseType: !985, size: 512, offset: 1216)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2172, file: !2173, line: 143, baseType: !993, size: 64, offset: 1728)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2172, file: !2173, line: 150, baseType: !2217, size: 256, offset: 1792)
!2217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2218, size: 256, elements: !2222)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2173, line: 38, size: 128, elements: !2219)
!2219 = !{!2220, !2221}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2218, file: !2173, line: 39, baseType: !140, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2218, file: !2173, line: 40, baseType: !140, size: 64, offset: 64)
!2222 = !{!2223}
!2223 = !DISubrange(count: 2)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2172, file: !2173, line: 156, baseType: !2225, size: 192, offset: 2048)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2173, line: 66, size: 192, elements: !2226)
!2226 = !{!2227}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2225, file: !2173, line: 67, baseType: !2228, size: 192)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2173, line: 47, size: 192, elements: !2229)
!2229 = !{!2230, !2231, !2232}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2228, file: !2173, line: 48, baseType: !536, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2228, file: !2173, line: 49, baseType: !536, size: 64, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2228, file: !2173, line: 50, baseType: !536, size: 64, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2172, file: !2173, line: 160, baseType: !2118, size: 640, offset: 2240)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2172, file: !2173, line: 163, baseType: !2235, size: 256, offset: 2880)
!2235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1229, size: 256, elements: !1237)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2172, file: !2173, line: 169, baseType: !1229, size: 64, offset: 3136)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2172, file: !2173, line: 172, baseType: !8, size: 32, offset: 3200)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2172, file: !2173, line: 174, baseType: !2239, size: 64, offset: 3264)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2173, line: 174, flags: DIFlagFwdDecl)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2172, file: !2173, line: 185, baseType: !2242, size: 64, offset: 3328)
!2242 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !221, line: 860, baseType: !2243)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !221, line: 853, size: 64, elements: !2244)
!2244 = !{!2245, !2246}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2243, file: !221, line: 858, baseType: !220, size: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2243, file: !221, line: 859, baseType: !273, size: 32, offset: 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2172, file: !2173, line: 186, baseType: !140, size: 64, offset: 3392)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2172, file: !2173, line: 186, baseType: !140, size: 64, offset: 3456)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2172, file: !2173, line: 186, baseType: !140, size: 64, offset: 3520)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2172, file: !2173, line: 186, baseType: !140, size: 64, offset: 3584)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2172, file: !2173, line: 187, baseType: !140, size: 64, offset: 3648)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2172, file: !2173, line: 188, baseType: !140, size: 64, offset: 3712)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2172, file: !2173, line: 189, baseType: !2106, size: 192, offset: 3776)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2172, file: !2173, line: 190, baseType: !7, size: 64, offset: 3968)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2172, file: !2173, line: 190, baseType: !7, size: 64, offset: 4032)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2172, file: !2173, line: 190, baseType: !7, size: 64, offset: 4096)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2172, file: !2173, line: 190, baseType: !7, size: 64, offset: 4160)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2172, file: !2173, line: 191, baseType: !7, size: 64, offset: 4224)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2172, file: !2173, line: 191, baseType: !7, size: 64, offset: 4288)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2172, file: !2173, line: 191, baseType: !7, size: 64, offset: 4352)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2172, file: !2173, line: 191, baseType: !7, size: 64, offset: 4416)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2172, file: !2173, line: 192, baseType: !7, size: 64, offset: 4480)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2172, file: !2173, line: 192, baseType: !7, size: 64, offset: 4544)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2172, file: !2173, line: 192, baseType: !7, size: 64, offset: 4608)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2172, file: !2173, line: 192, baseType: !7, size: 64, offset: 4672)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2172, file: !2173, line: 193, baseType: !7, size: 64, offset: 4736)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2172, file: !2173, line: 193, baseType: !7, size: 64, offset: 4800)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2172, file: !2173, line: 194, baseType: !2269, size: 448, offset: 4864)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2270, line: 12, size: 448, elements: !2271)
!2270 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2271 = !{!2272, !2273, !2274, !2275, !2276, !2277, !2278}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2269, file: !2270, line: 15, baseType: !140, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2269, file: !2270, line: 17, baseType: !140, size: 64, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2269, file: !2270, line: 19, baseType: !140, size: 64, offset: 128)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2269, file: !2270, line: 21, baseType: !140, size: 64, offset: 192)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2269, file: !2270, line: 29, baseType: !140, size: 64, offset: 256)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2269, file: !2270, line: 35, baseType: !140, size: 64, offset: 320)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2269, file: !2270, line: 44, baseType: !140, size: 64, offset: 384)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2172, file: !2173, line: 202, baseType: !144, size: 64, offset: 5312)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2172, file: !2173, line: 213, baseType: !2281, size: 2048, offset: 5376)
!2281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2282, size: 2048, elements: !2141)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2283, line: 43, size: 128, elements: !2284)
!2283 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2284 = !{!2285, !2286}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2282, file: !2283, line: 44, baseType: !512, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2282, file: !2283, line: 45, baseType: !512, size: 64, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2172, file: !2173, line: 216, baseType: !2288, size: 448, offset: 7424)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2173, line: 30, size: 448, elements: !2289)
!2289 = !{!2290, !2291, !2292, !2293, !2294, !2295, !2296}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2288, file: !2173, line: 31, baseType: !8, size: 32)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2288, file: !2173, line: 32, baseType: !509, size: 64, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2288, file: !2173, line: 33, baseType: !7, size: 64, offset: 128)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2288, file: !2173, line: 34, baseType: !140, size: 64, offset: 192)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2288, file: !2173, line: 34, baseType: !140, size: 64, offset: 256)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2288, file: !2173, line: 35, baseType: !7, size: 64, offset: 320)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2288, file: !2173, line: 35, baseType: !7, size: 64, offset: 384)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2172, file: !2173, line: 219, baseType: !2298, size: 64, offset: 7872)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2173, line: 219, flags: DIFlagFwdDecl)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2172, file: !2173, line: 222, baseType: !13, size: 32, offset: 7936)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2172, file: !2173, line: 223, baseType: !2302, size: 64, offset: 8000)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2173, line: 223, flags: DIFlagFwdDecl)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2172, file: !2173, line: 230, baseType: !1349, size: 8, offset: 8064)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2172, file: !2173, line: 231, baseType: !1318, size: 16, offset: 8080)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2172, file: !2173, line: 232, baseType: !1318, size: 16, offset: 8096)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2172, file: !2173, line: 234, baseType: !1161, size: 64, offset: 8128)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2172, file: !2173, line: 237, baseType: !530, size: 256, offset: 8192)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2172, file: !2173, line: 243, baseType: !742, size: 320, offset: 8448)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !858, file: !498, line: 1111, baseType: !2311, size: 64, offset: 15424)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2173, line: 20, size: 16640, elements: !2313)
!2313 = !{!2314, !2315, !2316, !2317}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2312, file: !2173, line: 21, baseType: !273, size: 32)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2312, file: !2173, line: 22, baseType: !871, size: 32, offset: 32)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2312, file: !2173, line: 23, baseType: !835, size: 192, offset: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2312, file: !2173, line: 24, baseType: !2318, size: 16384, offset: 256)
!2318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2319, size: 16384, elements: !2339)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1437, line: 51, size: 256, elements: !2320)
!2320 = !{!2321}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2319, file: !1437, line: 52, baseType: !2322, size: 256)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1437, line: 37, size: 256, elements: !2323)
!2323 = !{!2324, !2331, !2332, !2338}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2322, file: !1437, line: 39, baseType: !2325, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2326, line: 83, baseType: !2327)
!2326 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2326, line: 82, baseType: !2329)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{null, !8}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2322, file: !1437, line: 40, baseType: !7, size: 64, offset: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2322, file: !1437, line: 46, baseType: !2333, size: 64, offset: 128)
!2333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2326, line: 86, baseType: !2334)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2326, line: 85, baseType: !2336)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{null}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2322, file: !1437, line: 48, baseType: !2187, size: 64, offset: 192)
!2339 = !{!2340}
!2340 = !DISubrange(count: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !858, file: !498, line: 1112, baseType: !2187, size: 64, offset: 15488)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !858, file: !498, line: 1113, baseType: !2187, size: 64, offset: 15552)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !858, file: !498, line: 1115, baseType: !2187, size: 64, offset: 15616)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !858, file: !498, line: 1116, baseType: !2183, size: 192, offset: 15680)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !858, file: !498, line: 1117, baseType: !7, size: 64, offset: 15872)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !858, file: !498, line: 1118, baseType: !510, size: 64, offset: 15936)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !858, file: !498, line: 1119, baseType: !13, size: 32, offset: 16000)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !858, file: !498, line: 1121, baseType: !845, size: 64, offset: 16064)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !858, file: !498, line: 1125, baseType: !2350, size: 64, offset: 16128)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !498, line: 43, flags: DIFlagFwdDecl)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !858, file: !498, line: 1127, baseType: !184, size: 32, offset: 16192)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !858, file: !498, line: 1128, baseType: !13, size: 32, offset: 16224)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !858, file: !498, line: 1130, baseType: !2355, size: 128, offset: 16256)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2356, line: 37, size: 128, elements: !2357)
!2356 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2357 = !{!2358, !2359, !2360}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2355, file: !2356, line: 38, baseType: !8, size: 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2355, file: !2356, line: 39, baseType: !293, size: 32, offset: 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2355, file: !2356, line: 40, baseType: !2361, size: 64, offset: 64)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2356, line: 24, flags: DIFlagFwdDecl)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !858, file: !498, line: 1131, baseType: !2364, size: 256, offset: 16384)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2365, line: 12, size: 256, elements: !2366)
!2365 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2366 = !{!2367, !2368, !2369, !2370}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2364, file: !2365, line: 13, baseType: !359, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2364, file: !2365, line: 14, baseType: !7, size: 64, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2364, file: !2365, line: 15, baseType: !7, size: 64, offset: 128)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2364, file: !2365, line: 16, baseType: !1349, size: 8, offset: 192)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !858, file: !498, line: 1134, baseType: !140, size: 64, offset: 16640)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !858, file: !498, line: 1135, baseType: !140, size: 64, offset: 16704)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !858, file: !498, line: 1138, baseType: !273, size: 32, offset: 16768)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !858, file: !498, line: 1141, baseType: !543, size: 32, offset: 16800)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !858, file: !498, line: 1143, baseType: !2376, size: 64, offset: 16832)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !498, line: 735, size: 64, elements: !2377)
!2377 = !{!2378}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2376, file: !498, line: 736, baseType: !2379, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !858, file: !498, line: 1147, baseType: !1044, size: 128, offset: 16896)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !858, file: !498, line: 1149, baseType: !857, size: 64, offset: 17024)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !858, file: !498, line: 1151, baseType: !2383, size: 64, offset: 17088)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !498, line: 1151, flags: DIFlagFwdDecl)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !858, file: !498, line: 1188, baseType: !6, size: 64, offset: 17152)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !858, file: !498, line: 1191, baseType: !2387, size: 64, offset: 17216)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !498, line: 44, flags: DIFlagFwdDecl)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !858, file: !498, line: 1194, baseType: !2390, size: 64, offset: 17280)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !498, line: 45, flags: DIFlagFwdDecl)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !858, file: !498, line: 1197, baseType: !2393, size: 64, offset: 17344)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !498, line: 61, flags: DIFlagFwdDecl)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !858, file: !498, line: 1199, baseType: !2396, size: 64, offset: 17408)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2398, line: 99, size: 128, elements: !2399)
!2398 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2399 = !{!2400, !2401, !2402}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2397, file: !2398, line: 100, baseType: !534, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2397, file: !2398, line: 101, baseType: !293, size: 32, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2397, file: !2398, line: 103, baseType: !181, size: 16, offset: 96)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !858, file: !498, line: 1202, baseType: !2404, size: 64, offset: 17472)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !498, line: 48, flags: DIFlagFwdDecl)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !858, file: !498, line: 1205, baseType: !7, size: 64, offset: 17536)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !858, file: !498, line: 1206, baseType: !2408, size: 64, offset: 17600)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1437, line: 14, baseType: !2410)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1437, line: 12, size: 384, elements: !2411)
!2411 = !{!2412}
!2412 = !DIDerivedType(tag: DW_TAG_member, scope: !2410, file: !1437, line: 13, baseType: !2413, size: 384)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2410, file: !1437, line: 13, size: 384, elements: !2414)
!2414 = !{!2415, !2416, !2417, !2418}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2413, file: !1437, line: 13, baseType: !8, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2413, file: !1437, line: 13, baseType: !8, size: 32, offset: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2413, file: !1437, line: 13, baseType: !8, size: 32, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2413, file: !1437, line: 13, baseType: !2419, size: 256, offset: 128)
!2419 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2420, line: 37, size: 256, elements: !2421)
!2420 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2421 = !{!2422, !2427, !2440, !2446, !2455, !2482, !2487}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2419, file: !2420, line: 42, baseType: !2423, size: 64)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2419, file: !2420, line: 39, size: 64, elements: !2424)
!2424 = !{!2425, !2426}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2423, file: !2420, line: 40, baseType: !2072, size: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2423, file: !2420, line: 41, baseType: !190, size: 32, offset: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2419, file: !2420, line: 50, baseType: !2428, size: 192)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2419, file: !2420, line: 45, size: 192, elements: !2429)
!2429 = !{!2430, !2432, !2433, !2439}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2428, file: !2420, line: 46, baseType: !2431, size: 32)
!2431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !191, line: 95, baseType: !8)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2428, file: !2420, line: 47, baseType: !8, size: 32, offset: 32)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2428, file: !2420, line: 48, baseType: !2434, size: 64, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2420, line: 11, baseType: !2435)
!2435 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2420, line: 8, size: 64, elements: !2436)
!2436 = !{!2437, !2438}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2435, file: !2420, line: 9, baseType: !8, size: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2435, file: !2420, line: 10, baseType: !6, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2428, file: !2420, line: 49, baseType: !8, size: 32, offset: 128)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2419, file: !2420, line: 57, baseType: !2441, size: 128)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2419, file: !2420, line: 53, size: 128, elements: !2442)
!2442 = !{!2443, !2444, !2445}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2441, file: !2420, line: 54, baseType: !2072, size: 32)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2441, file: !2420, line: 55, baseType: !190, size: 32, offset: 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2441, file: !2420, line: 56, baseType: !2434, size: 64, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2419, file: !2420, line: 66, baseType: !2447, size: 256)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2419, file: !2420, line: 60, size: 256, elements: !2448)
!2448 = !{!2449, !2450, !2451, !2452, !2454}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2447, file: !2420, line: 61, baseType: !2072, size: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2447, file: !2420, line: 62, baseType: !190, size: 32, offset: 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2447, file: !2420, line: 63, baseType: !8, size: 32, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2447, file: !2420, line: 64, baseType: !2453, size: 64, offset: 128)
!2453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !191, line: 94, baseType: !508)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2447, file: !2420, line: 65, baseType: !2453, size: 64, offset: 192)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2419, file: !2420, line: 105, baseType: !2456, size: 256)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2419, file: !2420, line: 69, size: 256, elements: !2457)
!2457 = !{!2458, !2459}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2456, file: !2420, line: 70, baseType: !6, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, scope: !2456, file: !2420, line: 79, baseType: !2460, size: 192, offset: 64)
!2460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2456, file: !2420, line: 79, size: 192, elements: !2461)
!2461 = !{!2462, !2463, !2464, !2471, !2476}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2460, file: !2420, line: 81, baseType: !8, size: 32)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2460, file: !2420, line: 86, baseType: !1318, size: 16)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2460, file: !2420, line: 92, baseType: !2465, size: 192)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2460, file: !2420, line: 88, size: 192, elements: !2466)
!2466 = !{!2467, !2469, !2470}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2465, file: !2420, line: 89, baseType: !2468, size: 64)
!2468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 64, elements: !1028)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2465, file: !2420, line: 90, baseType: !6, size: 64, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2465, file: !2420, line: 91, baseType: !6, size: 64, offset: 128)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2460, file: !2420, line: 97, baseType: !2472, size: 96)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2460, file: !2420, line: 94, size: 96, elements: !2473)
!2473 = !{!2474, !2475}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2472, file: !2420, line: 95, baseType: !2468, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2472, file: !2420, line: 96, baseType: !249, size: 32, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2460, file: !2420, line: 103, baseType: !2477, size: 128)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2460, file: !2420, line: 99, size: 128, elements: !2478)
!2478 = !{!2479, !2480, !2481}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2477, file: !2420, line: 100, baseType: !7, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2477, file: !2420, line: 101, baseType: !249, size: 32, offset: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2477, file: !2420, line: 102, baseType: !249, size: 32, offset: 96)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2419, file: !2420, line: 111, baseType: !2483, size: 128)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2419, file: !2420, line: 108, size: 128, elements: !2484)
!2484 = !{!2485, !2486}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2483, file: !2420, line: 109, baseType: !509, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2483, file: !2420, line: 110, baseType: !8, size: 32, offset: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2419, file: !2420, line: 118, baseType: !2488, size: 128)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2419, file: !2420, line: 114, size: 128, elements: !2489)
!2489 = !{!2490, !2491, !2492}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2488, file: !2420, line: 115, baseType: !6, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2488, file: !2420, line: 116, baseType: !8, size: 32, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2488, file: !2420, line: 117, baseType: !13, size: 32, offset: 96)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !858, file: !498, line: 1208, baseType: !2269, size: 448, offset: 17664)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !858, file: !498, line: 1215, baseType: !140, size: 64, offset: 18112)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !858, file: !498, line: 1217, baseType: !140, size: 64, offset: 18176)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !858, file: !498, line: 1219, baseType: !140, size: 64, offset: 18240)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !858, file: !498, line: 1223, baseType: !2498, size: 64, offset: 18304)
!2498 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !86, line: 99, baseType: !2499)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !86, line: 99, size: 64, elements: !2500)
!2500 = !{!2501}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2499, file: !86, line: 99, baseType: !1112, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !858, file: !498, line: 1225, baseType: !220, size: 32, offset: 18368)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !858, file: !498, line: 1226, baseType: !8, size: 32, offset: 18400)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !858, file: !498, line: 1227, baseType: !8, size: 32, offset: 18432)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !858, file: !498, line: 1231, baseType: !2506, size: 64, offset: 18496)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !498, line: 1231, flags: DIFlagFwdDecl)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !858, file: !498, line: 1233, baseType: !159, size: 128, offset: 18560)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !858, file: !498, line: 1240, baseType: !2510, size: 64, offset: 18688)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !498, line: 62, flags: DIFlagFwdDecl)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !858, file: !498, line: 1242, baseType: !2513, size: 64, offset: 18752)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !498, line: 1242, flags: DIFlagFwdDecl)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !858, file: !498, line: 1244, baseType: !159, size: 128, offset: 18816)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !858, file: !498, line: 1245, baseType: !2517, size: 64, offset: 18944)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !498, line: 51, flags: DIFlagFwdDecl)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !858, file: !498, line: 1246, baseType: !530, size: 256, offset: 19008)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !858, file: !498, line: 1247, baseType: !13, size: 32, offset: 19264)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !858, file: !498, line: 1250, baseType: !2522, size: 64, offset: 19328)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !498, line: 57, flags: DIFlagFwdDecl)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !858, file: !498, line: 1251, baseType: !530, size: 256, offset: 19392)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !858, file: !498, line: 1252, baseType: !159, size: 128, offset: 19648)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !858, file: !498, line: 1259, baseType: !1771, size: 64, offset: 19776)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !858, file: !498, line: 1260, baseType: !1318, size: 16, offset: 19840)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !858, file: !498, line: 1261, baseType: !1318, size: 16, offset: 19856)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !858, file: !498, line: 1314, baseType: !2530, size: 64, offset: 19904)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2532, line: 62, size: 256, align: 256, elements: !2533)
!2532 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2533 = !{!2534, !2535, !2536, !2537, !2538, !2539, !2540}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2531, file: !2532, line: 75, baseType: !249, size: 32)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2531, file: !2532, line: 90, baseType: !249, size: 32, offset: 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2531, file: !2532, line: 112, baseType: !142, size: 64, offset: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2531, file: !2532, line: 132, baseType: !249, size: 32, offset: 128)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2531, file: !2532, line: 140, baseType: !249, size: 32, offset: 160)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2531, file: !2532, line: 149, baseType: !249, size: 32, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2531, file: !2532, line: 154, baseType: !2541, offset: 224)
!2541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, elements: !1250)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !858, file: !498, line: 1315, baseType: !248, size: 32, offset: 19968)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !858, file: !498, line: 1316, baseType: !248, size: 32, offset: 20000)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !858, file: !498, line: 1321, baseType: !7, size: 64, offset: 20032)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !858, file: !498, line: 1325, baseType: !8, size: 32, offset: 20096)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !858, file: !498, line: 1326, baseType: !8, size: 32, offset: 20128)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !858, file: !498, line: 1327, baseType: !8, size: 32, offset: 20160)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !858, file: !498, line: 1328, baseType: !8, size: 32, offset: 20192)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !858, file: !498, line: 1329, baseType: !842, size: 128, align: 64, offset: 20224)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !858, file: !498, line: 1332, baseType: !2551, size: 128, offset: 20352)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2552, line: 51, size: 128, elements: !2553)
!2552 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2553 = !{!2554, !2559, !2560}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2551, file: !2552, line: 60, baseType: !2555, size: 64)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2556, line: 7, size: 64, elements: !2557)
!2556 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2557 = !{!2558}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2555, file: !2556, line: 12, baseType: !1109, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2551, file: !2552, line: 63, baseType: !1349, size: 8, offset: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2551, file: !2552, line: 70, baseType: !1349, size: 8, offset: 72)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !858, file: !498, line: 1335, baseType: !1823, size: 64, offset: 20480)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !858, file: !498, line: 1337, baseType: !2563, size: 128, offset: 20544)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2552, line: 39, size: 128, elements: !2564)
!2564 = !{!2565, !2566, !2567}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2563, file: !2552, line: 40, baseType: !145, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2563, file: !2552, line: 42, baseType: !249, size: 32, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2563, file: !2552, line: 43, baseType: !249, size: 32, offset: 96)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !858, file: !498, line: 1340, baseType: !2569, size: 64, offset: 20672)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !498, line: 69, flags: DIFlagFwdDecl)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !858, file: !498, line: 1351, baseType: !8, size: 32, offset: 20736)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !858, file: !498, line: 1352, baseType: !8, size: 32, offset: 20768)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !858, file: !498, line: 1354, baseType: !7, size: 64, offset: 20800)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !858, file: !498, line: 1364, baseType: !140, size: 64, offset: 20864)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !858, file: !498, line: 1365, baseType: !140, size: 64, offset: 20928)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !858, file: !498, line: 1412, baseType: !7, size: 64, offset: 20992)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !858, file: !498, line: 1453, baseType: !2578, size: 64, offset: 21056)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !498, line: 1453, flags: DIFlagFwdDecl)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !858, file: !498, line: 1457, baseType: !2581, size: 64, offset: 21120)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !59, line: 61, size: 576, elements: !2583)
!2583 = !{!2584, !2585, !2604, !2607, !2608, !2641, !2651}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2582, file: !59, line: 62, baseType: !58, size: 32)
!2585 = !DIDerivedType(tag: DW_TAG_member, scope: !2582, file: !59, line: 64, baseType: !2586, size: 192, offset: 64)
!2586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2582, file: !59, line: 64, size: 192, elements: !2587)
!2587 = !{!2588, !2599}
!2588 = !DIDerivedType(tag: DW_TAG_member, scope: !2586, file: !59, line: 65, baseType: !2589, size: 192)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2586, file: !59, line: 65, size: 192, elements: !2590)
!2590 = !{!2591, !2598}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2589, file: !59, line: 66, baseType: !2592, size: 128)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2593, line: 50, size: 128, elements: !2594)
!2593 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2594 = !{!2595, !2596, !2597}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2592, file: !2593, line: 52, baseType: !7, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2592, file: !2593, line: 54, baseType: !13, size: 32, offset: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2592, file: !2593, line: 55, baseType: !13, size: 32, offset: 96)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2589, file: !59, line: 67, baseType: !7, size: 64, offset: 128)
!2599 = !DIDerivedType(tag: DW_TAG_member, scope: !2586, file: !59, line: 70, baseType: !2600, size: 192)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2586, file: !59, line: 70, size: 192, elements: !2601)
!2601 = !{!2602, !2603}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2600, file: !59, line: 71, baseType: !842, size: 128, align: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2600, file: !59, line: 72, baseType: !7, size: 64, offset: 128)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2582, file: !59, line: 76, baseType: !2605, size: 64, offset: 256)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !59, line: 76, flags: DIFlagFwdDecl)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2582, file: !59, line: 77, baseType: !7, size: 64, offset: 320)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2582, file: !59, line: 79, baseType: !2609, size: 64, offset: 384)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2593, line: 25, size: 256, elements: !2611)
!2611 = !{!2612, !2618, !2622}
!2612 = !DIDerivedType(tag: DW_TAG_member, scope: !2610, file: !2593, line: 26, baseType: !2613, size: 128)
!2613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2610, file: !2593, line: 26, size: 128, elements: !2614)
!2614 = !{!2615, !2617}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2613, file: !2593, line: 27, baseType: !2616, size: 128)
!2616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 128, elements: !2141)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2613, file: !2593, line: 28, baseType: !2616, size: 128)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2610, file: !2593, line: 31, baseType: !2619, size: 64, offset: 128)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2621)
!2621 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2593, line: 23, flags: DIFlagFwdDecl)
!2622 = !DIDerivedType(tag: DW_TAG_member, scope: !2610, file: !2593, line: 33, baseType: !2623, size: 64, offset: 192)
!2623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2610, file: !2593, line: 33, size: 64, elements: !2624)
!2624 = !{!2625, !2631, !2636}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2623, file: !2593, line: 38, baseType: !2626, size: 64)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2623, file: !2593, line: 34, size: 64, elements: !2627)
!2627 = !{!2628, !2629, !2630}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2626, file: !2593, line: 35, baseType: !1292, size: 32)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2626, file: !2593, line: 36, baseType: !301, size: 8, offset: 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2626, file: !2593, line: 37, baseType: !301, size: 8, offset: 40)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2623, file: !2593, line: 42, baseType: !2632, size: 16)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2623, file: !2593, line: 39, size: 16, elements: !2633)
!2633 = !{!2634, !2635}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2632, file: !2593, line: 40, baseType: !301, size: 8)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2632, file: !2593, line: 41, baseType: !301, size: 8, offset: 8)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2623, file: !2593, line: 46, baseType: !2637, size: 16)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2623, file: !2593, line: 43, size: 16, elements: !2638)
!2638 = !{!2639, !2640}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2637, file: !2593, line: 44, baseType: !301, size: 8)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2637, file: !2593, line: 45, baseType: !301, size: 8, offset: 8)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2582, file: !59, line: 81, baseType: !2642, size: 64, offset: 448)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !59, line: 85, size: 384, elements: !2644)
!2644 = !{!2645, !2646, !2647, !2648, !2649, !2650}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2643, file: !59, line: 86, baseType: !2605, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2643, file: !59, line: 87, baseType: !7, size: 64, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2643, file: !59, line: 88, baseType: !7, size: 64, offset: 128)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2643, file: !59, line: 89, baseType: !7, size: 64, offset: 192)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2643, file: !59, line: 90, baseType: !1349, size: 8, offset: 256)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2643, file: !59, line: 92, baseType: !2642, size: 64, offset: 320)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2582, file: !59, line: 82, baseType: !13, size: 32, offset: 512)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !858, file: !498, line: 1463, baseType: !2653, offset: 21184)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !498, line: 739, elements: !425)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !858, file: !498, line: 1470, baseType: !842, size: 128, align: 64, offset: 21184)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !858, file: !498, line: 1471, baseType: !871, size: 32, offset: 21312)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !858, file: !498, line: 1472, baseType: !8, size: 32, offset: 21344)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !858, file: !498, line: 1474, baseType: !857, size: 64, offset: 21376)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !858, file: !498, line: 1475, baseType: !2659, size: 320, offset: 21440)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2660, line: 11, size: 320, elements: !2661)
!2660 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2661 = !{!2662, !2663, !2664, !2669}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2659, file: !2660, line: 16, baseType: !417, size: 128)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2659, file: !2660, line: 17, baseType: !7, size: 64, offset: 128)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2659, file: !2660, line: 18, baseType: !2665, size: 64, offset: 192)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{null, !2668}
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2659, file: !2660, line: 19, baseType: !248, size: 32, offset: 256)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !858, file: !498, line: 1478, baseType: !2671, size: 64, offset: 21760)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2673, line: 49, size: 512, elements: !2674)
!2673 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2674 = !{!2675, !2676, !2677, !2678, !2679, !2681, !2682, !2683, !2684}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2672, file: !2673, line: 50, baseType: !2671, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2672, file: !2673, line: 51, baseType: !6, size: 64, offset: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2672, file: !2673, line: 52, baseType: !7, size: 64, offset: 128)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2672, file: !2673, line: 53, baseType: !7, size: 64, offset: 192)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2672, file: !2673, line: 54, baseType: !2680, size: 64, offset: 256)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2672, file: !2673, line: 56, baseType: !13, size: 32, offset: 320)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2672, file: !2673, line: 58, baseType: !13, size: 32, offset: 352)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2672, file: !2673, line: 59, baseType: !139, size: 64, offset: 384)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2672, file: !2673, line: 60, baseType: !2685, size: 64, offset: 448)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !858, file: !498, line: 1482, baseType: !871, size: 32, offset: 21824)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !858, file: !498, line: 1489, baseType: !6, size: 64, offset: 21888)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !858, file: !498, line: 1504, baseType: !6, size: 64, offset: 21952)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !858, file: !498, line: 1505, baseType: !142, size: 64, offset: 22016)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !858, file: !498, line: 1506, baseType: !140, size: 64, offset: 22080)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !858, file: !498, line: 1507, baseType: !142, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !858, file: !498, line: 1508, baseType: !142, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !858, file: !498, line: 1509, baseType: !142, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !858, file: !498, line: 1510, baseType: !842, size: 128, align: 64, offset: 22208)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !858, file: !498, line: 1511, baseType: !8, size: 32, offset: 22336)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !858, file: !498, line: 1515, baseType: !2698, size: 64, offset: 22400)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !885, line: 56, size: 64, elements: !2699)
!2699 = !{!2700}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2698, file: !885, line: 57, baseType: !888, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !858, file: !498, line: 1518, baseType: !2698, size: 64, offset: 22464)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !858, file: !498, line: 1528, baseType: !842, size: 128, align: 64, offset: 22528)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !858, file: !498, line: 1552, baseType: !2704, size: 35328, offset: 23040)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2705, line: 430, size: 35328, elements: !2706)
!2705 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2706 = !{!2707, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2736, !2737, !2738, !2739, !2740, !2741, !2744, !2745, !2746, !2747}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2704, file: !2705, line: 432, baseType: !2708, size: 192)
!2708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2709, size: 192, elements: !430)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2710, line: 16, size: 64, elements: !2711)
!2710 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2711 = !{!2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2709, file: !2710, line: 17, baseType: !308, size: 16)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2709, file: !2710, line: 18, baseType: !308, size: 16, offset: 16)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2709, file: !2710, line: 19, baseType: !308, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2709, file: !2710, line: 19, baseType: !308, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2709, file: !2710, line: 19, baseType: !308, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2709, file: !2710, line: 19, baseType: !308, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2709, file: !2710, line: 19, baseType: !308, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2709, file: !2710, line: 20, baseType: !308, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2709, file: !2710, line: 20, baseType: !308, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2709, file: !2710, line: 20, baseType: !308, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2709, file: !2710, line: 20, baseType: !308, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2709, file: !2710, line: 20, baseType: !308, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2709, file: !2710, line: 20, baseType: !308, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2704, file: !2705, line: 436, baseType: !7, size: 64, offset: 192)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2704, file: !2705, line: 440, baseType: !181, size: 16, offset: 256)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2704, file: !2705, line: 441, baseType: !181, size: 16, offset: 272)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2704, file: !2705, line: 442, baseType: !181, size: 16, offset: 288)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2704, file: !2705, line: 443, baseType: !181, size: 16, offset: 304)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2704, file: !2705, line: 447, baseType: !7, size: 64, offset: 320)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2704, file: !2705, line: 448, baseType: !7, size: 64, offset: 384)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2704, file: !2705, line: 459, baseType: !2733, size: 256, offset: 448)
!2733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2734, size: 256, elements: !1237)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2705, line: 428, flags: DIFlagFwdDecl)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2704, file: !2705, line: 461, baseType: !7, size: 64, offset: 704)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2704, file: !2705, line: 463, baseType: !7, size: 64, offset: 768)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2704, file: !2705, line: 465, baseType: !7, size: 64, offset: 832)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2704, file: !2705, line: 466, baseType: !7, size: 64, offset: 896)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2704, file: !2705, line: 467, baseType: !7, size: 64, offset: 960)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2704, file: !2705, line: 473, baseType: !2742, size: 64, offset: 1024)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2705, line: 10, flags: DIFlagFwdDecl)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2704, file: !2705, line: 480, baseType: !7, size: 64, offset: 1088)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2704, file: !2705, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2704, file: !2705, line: 491, baseType: !248, size: 32, offset: 1184)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2704, file: !2705, line: 501, baseType: !2748, size: 33792, offset: 1536)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2749, line: 448, size: 33792, elements: !2750)
!2749 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2750 = !{!2751, !2752, !2753, !2915, !2916, !2922, !2923}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2748, file: !2749, line: 461, baseType: !13, size: 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2748, file: !2749, line: 468, baseType: !7, size: 64, offset: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2748, file: !2749, line: 476, baseType: !2754, size: 64, offset: 128)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2749, line: 356, size: 33280, align: 512, elements: !2756)
!2756 = !{!2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2755, file: !2749, line: 358, baseType: !13, size: 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2755, file: !2749, line: 361, baseType: !13, size: 32, offset: 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2755, file: !2749, line: 364, baseType: !140, size: 64, offset: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2755, file: !2749, line: 367, baseType: !140, size: 64, offset: 128)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2755, file: !2749, line: 370, baseType: !140, size: 64, offset: 192)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2755, file: !2749, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2755, file: !2749, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2755, file: !2749, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2755, file: !2749, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2755, file: !2749, line: 397, baseType: !2767, size: 32768, offset: 512)
!2767 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2749, line: 348, size: 32768, elements: !2768)
!2768 = !{!2769, !2784, !2821, !2898, !2911}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2767, file: !2749, line: 349, baseType: !2770, size: 896)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2749, line: 12, size: 896, elements: !2771)
!2771 = !{!2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2783}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2770, file: !2749, line: 13, baseType: !248, size: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2770, file: !2749, line: 14, baseType: !248, size: 32, offset: 32)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2770, file: !2749, line: 15, baseType: !248, size: 32, offset: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2770, file: !2749, line: 16, baseType: !248, size: 32, offset: 96)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2770, file: !2749, line: 17, baseType: !248, size: 32, offset: 128)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2770, file: !2749, line: 18, baseType: !248, size: 32, offset: 160)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2770, file: !2749, line: 19, baseType: !248, size: 32, offset: 192)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2770, file: !2749, line: 22, baseType: !2780, size: 640, offset: 224)
!2780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 640, elements: !2781)
!2781 = !{!2782}
!2782 = !DISubrange(count: 20)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2770, file: !2749, line: 25, baseType: !248, size: 32, offset: 864)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2767, file: !2749, line: 350, baseType: !2785, size: 4096, align: 128)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2749, line: 34, size: 4096, align: 128, elements: !2786)
!2786 = !{!2787, !2788, !2789, !2790, !2791, !2806, !2807, !2808, !2810, !2812, !2816}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2785, file: !2749, line: 35, baseType: !308, size: 16)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2785, file: !2749, line: 36, baseType: !308, size: 16, offset: 16)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2785, file: !2749, line: 37, baseType: !308, size: 16, offset: 32)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2785, file: !2749, line: 38, baseType: !308, size: 16, offset: 48)
!2791 = !DIDerivedType(tag: DW_TAG_member, scope: !2785, file: !2749, line: 39, baseType: !2792, size: 128, offset: 64)
!2792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2785, file: !2749, line: 39, size: 128, elements: !2793)
!2793 = !{!2794, !2799}
!2794 = !DIDerivedType(tag: DW_TAG_member, scope: !2792, file: !2749, line: 40, baseType: !2795, size: 128)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2792, file: !2749, line: 40, size: 128, elements: !2796)
!2796 = !{!2797, !2798}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2795, file: !2749, line: 41, baseType: !140, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2795, file: !2749, line: 42, baseType: !140, size: 64, offset: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, scope: !2792, file: !2749, line: 44, baseType: !2800, size: 128)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2792, file: !2749, line: 44, size: 128, elements: !2801)
!2801 = !{!2802, !2803, !2804, !2805}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2800, file: !2749, line: 45, baseType: !248, size: 32)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2800, file: !2749, line: 46, baseType: !248, size: 32, offset: 32)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2800, file: !2749, line: 47, baseType: !248, size: 32, offset: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2800, file: !2749, line: 48, baseType: !248, size: 32, offset: 96)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2785, file: !2749, line: 51, baseType: !248, size: 32, offset: 192)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2785, file: !2749, line: 52, baseType: !248, size: 32, offset: 224)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2785, file: !2749, line: 55, baseType: !2809, size: 1024, offset: 256)
!2809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 1024, elements: !259)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2785, file: !2749, line: 58, baseType: !2811, size: 2048, offset: 1280)
!2811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 2048, elements: !2339)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2785, file: !2749, line: 60, baseType: !2813, size: 384, offset: 3328)
!2813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 384, elements: !2814)
!2814 = !{!2815}
!2815 = !DISubrange(count: 12)
!2816 = !DIDerivedType(tag: DW_TAG_member, scope: !2785, file: !2749, line: 62, baseType: !2817, size: 384, offset: 3712)
!2817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2785, file: !2749, line: 62, size: 384, elements: !2818)
!2818 = !{!2819, !2820}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2817, file: !2749, line: 63, baseType: !2813, size: 384)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2817, file: !2749, line: 64, baseType: !2813, size: 384)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2767, file: !2749, line: 351, baseType: !2822, size: 1088)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2749, line: 79, size: 1088, elements: !2823)
!2823 = !{!2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2897}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2822, file: !2749, line: 80, baseType: !248, size: 32)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2822, file: !2749, line: 81, baseType: !248, size: 32, offset: 32)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2822, file: !2749, line: 82, baseType: !248, size: 32, offset: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2822, file: !2749, line: 83, baseType: !248, size: 32, offset: 96)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2822, file: !2749, line: 84, baseType: !248, size: 32, offset: 128)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2822, file: !2749, line: 85, baseType: !248, size: 32, offset: 160)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2822, file: !2749, line: 86, baseType: !248, size: 32, offset: 192)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2822, file: !2749, line: 88, baseType: !2780, size: 640, offset: 224)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2822, file: !2749, line: 89, baseType: !301, size: 8, offset: 864)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2822, file: !2749, line: 90, baseType: !301, size: 8, offset: 872)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2822, file: !2749, line: 91, baseType: !301, size: 8, offset: 880)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2822, file: !2749, line: 92, baseType: !301, size: 8, offset: 888)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2822, file: !2749, line: 93, baseType: !301, size: 8, offset: 896)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2822, file: !2749, line: 94, baseType: !301, size: 8, offset: 904)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2822, file: !2749, line: 95, baseType: !2839, size: 64, offset: 960)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2841, line: 11, size: 128, elements: !2842)
!2841 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2842 = !{!2843, !2844}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2840, file: !2841, line: 12, baseType: !509, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2840, file: !2841, line: 13, baseType: !2845, size: 64, offset: 64)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2847, line: 103, size: 1344, elements: !2848)
!2847 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2848 = !{!2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2877, !2878, !2879}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2846, file: !2847, line: 109, baseType: !7, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2846, file: !2847, line: 110, baseType: !7, size: 64, offset: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2846, file: !2847, line: 111, baseType: !7, size: 64, offset: 128)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2846, file: !2847, line: 112, baseType: !7, size: 64, offset: 192)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2846, file: !2847, line: 113, baseType: !7, size: 64, offset: 256)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2846, file: !2847, line: 114, baseType: !7, size: 64, offset: 320)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2846, file: !2847, line: 117, baseType: !7, size: 64, offset: 384)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2846, file: !2847, line: 118, baseType: !7, size: 64, offset: 448)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2846, file: !2847, line: 119, baseType: !7, size: 64, offset: 512)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2846, file: !2847, line: 120, baseType: !7, size: 64, offset: 576)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2846, file: !2847, line: 121, baseType: !7, size: 64, offset: 640)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2846, file: !2847, line: 122, baseType: !7, size: 64, offset: 704)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2846, file: !2847, line: 123, baseType: !7, size: 64, offset: 768)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2846, file: !2847, line: 124, baseType: !7, size: 64, offset: 832)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2846, file: !2847, line: 125, baseType: !7, size: 64, offset: 896)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2846, file: !2847, line: 139, baseType: !7, size: 64, offset: 960)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2846, file: !2847, line: 142, baseType: !7, size: 64, offset: 1024)
!2866 = !DIDerivedType(tag: DW_TAG_member, scope: !2846, file: !2847, line: 144, baseType: !2867, size: 64, offset: 1088)
!2867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2846, file: !2847, line: 144, size: 64, elements: !2868)
!2868 = !{!2869, !2870, !2871}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2867, file: !2847, line: 146, baseType: !308, size: 16)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2867, file: !2847, line: 148, baseType: !140, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2867, file: !2847, line: 150, baseType: !2872, size: 64)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2847, line: 59, size: 64, elements: !2873)
!2873 = !{!2874, !2875, !2876}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2872, file: !2847, line: 61, baseType: !140, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2872, file: !2847, line: 63, baseType: !140, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2872, file: !2847, line: 65, baseType: !140, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2846, file: !2847, line: 153, baseType: !7, size: 64, offset: 1152)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2846, file: !2847, line: 154, baseType: !7, size: 64, offset: 1216)
!2879 = !DIDerivedType(tag: DW_TAG_member, scope: !2846, file: !2847, line: 156, baseType: !2880, size: 64, offset: 1280)
!2880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2846, file: !2847, line: 156, size: 64, elements: !2881)
!2881 = !{!2882, !2883, !2884}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2880, file: !2847, line: 158, baseType: !308, size: 16)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2880, file: !2847, line: 160, baseType: !140, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2880, file: !2847, line: 162, baseType: !2885, size: 64)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2847, line: 69, size: 64, elements: !2886)
!2886 = !{!2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2885, file: !2847, line: 71, baseType: !140, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2885, file: !2847, line: 73, baseType: !140, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2885, file: !2847, line: 75, baseType: !140, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2885, file: !2847, line: 77, baseType: !140, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2885, file: !2847, line: 80, baseType: !140, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2885, file: !2847, line: 83, baseType: !140, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2885, file: !2847, line: 86, baseType: !140, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2885, file: !2847, line: 88, baseType: !140, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2885, file: !2847, line: 93, baseType: !140, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2885, file: !2847, line: 100, baseType: !140, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2822, file: !2749, line: 96, baseType: !248, size: 32, offset: 1024)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2767, file: !2749, line: 352, baseType: !2899, size: 4608, align: 512)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2749, line: 333, size: 4608, align: 512, elements: !2900)
!2900 = !{!2901, !2902, !2909}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2899, file: !2749, line: 334, baseType: !2785, size: 4096, align: 128)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2899, file: !2749, line: 335, baseType: !2903, size: 512, offset: 4096)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2749, line: 312, size: 512, elements: !2904)
!2904 = !{!2905, !2906, !2907}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2903, file: !2749, line: 313, baseType: !140, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2903, file: !2749, line: 314, baseType: !140, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2903, file: !2749, line: 315, baseType: !2908, size: 384, offset: 128)
!2908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 384, elements: !1336)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2899, file: !2749, line: 336, baseType: !2910, offset: 4608)
!2910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, elements: !1250)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2767, file: !2749, line: 353, baseType: !2912, size: 32768)
!2912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 32768, elements: !2913)
!2913 = !{!2914}
!2914 = !DISubrange(count: 4096)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2748, file: !2749, line: 484, baseType: !2754, size: 64, offset: 192)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2748, file: !2749, line: 491, baseType: !2917, size: 128, offset: 256)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2749, line: 404, size: 128, elements: !2918)
!2918 = !{!2919, !2920, !2921}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2917, file: !2749, line: 424, baseType: !140, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2917, file: !2749, line: 432, baseType: !13, size: 32, offset: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2917, file: !2749, line: 440, baseType: !13, size: 32, offset: 96)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2748, file: !2749, line: 498, baseType: !2917, size: 128, offset: 384)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2748, file: !2749, line: 508, baseType: !2755, size: 33280, align: 512, offset: 512)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !825, file: !826, line: 16, baseType: !835, size: 192, offset: 512)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !825, file: !826, line: 17, baseType: !293, size: 32, offset: 704)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !371, file: !12, line: 1240, baseType: !6, size: 64, offset: 6912)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !371, file: !12, line: 1243, baseType: !248, size: 32, offset: 6976)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !371, file: !12, line: 1245, baseType: !583, size: 64, offset: 7040)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !371, file: !12, line: 1246, baseType: !583, size: 64, offset: 7104)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !371, file: !12, line: 1248, baseType: !249, size: 32, offset: 7168)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !371, file: !12, line: 1249, baseType: !2932, size: 64, offset: 7232)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !12, line: 634, flags: DIFlagFwdDecl)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !371, file: !12, line: 1252, baseType: !2935, size: 256, offset: 7296)
!2935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 256, elements: !259)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !371, file: !12, line: 1253, baseType: !2937, size: 128, offset: 7552)
!2937 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2938, line: 21, baseType: !2939)
!2938 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2938, line: 19, size: 128, elements: !2940)
!2940 = !{!2941}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2939, file: !2938, line: 20, baseType: !2942, size: 128)
!2942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 128, elements: !2141)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !371, file: !12, line: 1255, baseType: !13, size: 32, offset: 7680)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !371, file: !12, line: 1261, baseType: !530, size: 256, offset: 7744)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !371, file: !12, line: 1267, baseType: !333, size: 64, offset: 8000)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !371, file: !12, line: 1269, baseType: !313, size: 64, offset: 8064)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !371, file: !12, line: 1271, baseType: !2948, size: 448, offset: 8128)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !592, line: 63, size: 448, elements: !2949)
!2949 = !{!2950, !2955, !2956, !2957, !2958, !2959, !2960}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2948, file: !592, line: 64, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!7, !2954, !590}
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2948, file: !592, line: 66, baseType: !2951, size: 64, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2948, file: !592, line: 69, baseType: !509, size: 64, offset: 128)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2948, file: !592, line: 70, baseType: !8, size: 32, offset: 192)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2948, file: !592, line: 71, baseType: !13, size: 32, offset: 224)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2948, file: !592, line: 74, baseType: !159, size: 128, offset: 256)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2948, file: !592, line: 85, baseType: !2961, size: 64, offset: 384)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !371, file: !12, line: 1274, baseType: !534, size: 64, offset: 8576)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !371, file: !12, line: 1280, baseType: !534, size: 64, offset: 8640)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !371, file: !12, line: 1283, baseType: !8, size: 32, offset: 8704)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !371, file: !12, line: 1286, baseType: !1873, size: 32, offset: 8736)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !371, file: !12, line: 1289, baseType: !2967, size: 64, offset: 8768)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1979, line: 18, flags: DIFlagFwdDecl)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !371, file: !12, line: 1290, baseType: !413, size: 64, offset: 8832)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !371, file: !12, line: 1297, baseType: !1432, size: 64, offset: 8896)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !371, file: !12, line: 1304, baseType: !2972, size: 64, offset: 8960)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2973, line: 49, size: 64, elements: !2974)
!2973 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2974 = !{!2975}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2972, file: !2973, line: 50, baseType: !2976, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2973, line: 41, size: 512, align: 512, elements: !2978)
!2978 = !{!2979, !2980, !2985}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2977, file: !2973, line: 43, baseType: !273, size: 32)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2977, file: !2973, line: 45, baseType: !2981, size: 192, offset: 64)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2973, line: 29, size: 192, elements: !2982)
!2982 = !{!2983, !2984}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2981, file: !2973, line: 30, baseType: !159, size: 128)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2981, file: !2973, line: 32, baseType: !509, size: 64, offset: 128)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2977, file: !2973, line: 46, baseType: !509, size: 64, offset: 256)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !371, file: !12, line: 1305, baseType: !2972, size: 64, offset: 9024)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !371, file: !12, line: 1306, baseType: !842, size: 128, align: 64, offset: 9088)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !371, file: !12, line: 1307, baseType: !1978, size: 256, offset: 9216)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !371, file: !12, line: 1309, baseType: !530, size: 256, offset: 9472)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !371, file: !12, line: 1314, baseType: !8, size: 32, offset: 9728)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !371, file: !12, line: 1317, baseType: !273, size: 32, align: 512, offset: 10240)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !371, file: !12, line: 1318, baseType: !159, size: 128, offset: 10304)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !371, file: !12, line: 1320, baseType: !273, size: 32, offset: 10432)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !371, file: !12, line: 1321, baseType: !159, size: 128, offset: 10496)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !365, file: !366, line: 73, baseType: !8, size: 32, offset: 128)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !365, file: !366, line: 74, baseType: !2997, size: 64, offset: 192)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1274, line: 42, flags: DIFlagFwdDecl)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !315, file: !216, line: 141, baseType: !3001, size: 64, offset: 704)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!8, !652, !1349}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !315, file: !216, line: 142, baseType: !3005, size: 64, offset: 768)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!214, !214, !3008}
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !215, file: !216, line: 96, baseType: !370, size: 64, offset: 832)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !215, file: !216, line: 97, baseType: !7, size: 64, offset: 896)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !215, file: !216, line: 98, baseType: !6, size: 64, offset: 960)
!3013 = !DIDerivedType(tag: DW_TAG_member, scope: !215, file: !216, line: 100, baseType: !3014, size: 128, offset: 1024)
!3014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !215, file: !216, line: 100, size: 128, elements: !3015)
!3015 = !{!3016, !3017}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3014, file: !216, line: 101, baseType: !159, size: 128)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3014, file: !216, line: 102, baseType: !3018, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !215, file: !216, line: 104, baseType: !159, size: 128, offset: 1152)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !215, file: !216, line: 105, baseType: !159, size: 128, offset: 1280)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !215, file: !216, line: 113, baseType: !3022, size: 128, offset: 1408)
!3022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !215, file: !216, line: 109, size: 128, elements: !3023)
!3023 = !{!3024, !3025, !3026}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3022, file: !216, line: 110, baseType: !417, size: 128)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3022, file: !216, line: 111, baseType: !230, size: 128)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3022, file: !216, line: 112, baseType: !842, size: 128, align: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !208, file: !12, line: 1968, baseType: !3028, size: 64, offset: 64)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!333, !214, !176, !3031}
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3033, line: 10, size: 128, elements: !3034)
!3033 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3034 = !{!3035, !3039}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3032, file: !3033, line: 11, baseType: !3036, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{null, !6}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3032, file: !3033, line: 12, baseType: !6, size: 64, offset: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !208, file: !12, line: 1969, baseType: !3041, size: 64, offset: 128)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!8, !2997, !176, !8}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !208, file: !12, line: 1970, baseType: !3045, size: 64, offset: 192)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!202, !176, !8, !1349}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !208, file: !12, line: 1972, baseType: !3049, size: 64, offset: 256)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!8, !214, !359, !8}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !208, file: !12, line: 1974, baseType: !3053, size: 64, offset: 320)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!8, !2997, !176, !214, !180, !1349}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !208, file: !12, line: 1976, baseType: !3057, size: 64, offset: 384)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!8, !214, !176, !214}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !208, file: !12, line: 1977, baseType: !3061, size: 64, offset: 448)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!8, !176, !214}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !208, file: !12, line: 1978, baseType: !3065, size: 64, offset: 512)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!8, !2997, !176, !214, !333}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !208, file: !12, line: 1980, baseType: !3069, size: 64, offset: 576)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!8, !2997, !176, !214, !180}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !208, file: !12, line: 1982, baseType: !3061, size: 64, offset: 640)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !208, file: !12, line: 1983, baseType: !3074, size: 64, offset: 704)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!8, !2997, !176, !214, !180, !375}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !208, file: !12, line: 1985, baseType: !3078, size: 64, offset: 768)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!8, !2997, !176, !214, !176, !214, !13}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !208, file: !12, line: 1987, baseType: !3082, size: 64, offset: 832)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!8, !2997, !214, !3085}
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !12, line: 226, size: 640, elements: !3087)
!3087 = !{!3088, !3089, !3090, !3100, !3109, !3110, !3115, !3116, !3117}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3086, file: !12, line: 227, baseType: !13, size: 32)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3086, file: !12, line: 228, baseType: !180, size: 16, offset: 32)
!3090 = !DIDerivedType(tag: DW_TAG_member, scope: !3086, file: !12, line: 241, baseType: !3091, size: 32, offset: 64)
!3091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3086, file: !12, line: 241, size: 32, elements: !3092)
!3092 = !{!3093, !3094}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3091, file: !12, line: 242, baseType: !184, size: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3091, file: !12, line: 243, baseType: !3095, size: 32)
!3095 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3096, line: 16, baseType: !3097)
!3096 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3096, line: 14, size: 32, elements: !3098)
!3098 = !{!3099}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3097, file: !3096, line: 15, baseType: !189, size: 32)
!3100 = !DIDerivedType(tag: DW_TAG_member, scope: !3086, file: !12, line: 245, baseType: !3101, size: 32, offset: 96)
!3101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3086, file: !12, line: 245, size: 32, elements: !3102)
!3102 = !{!3103, !3104}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3101, file: !12, line: 246, baseType: !194, size: 32)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3101, file: !12, line: 247, baseType: !3105, size: 32)
!3105 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3096, line: 20, baseType: !3106)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3096, line: 18, size: 32, elements: !3107)
!3107 = !{!3108}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3106, file: !3096, line: 19, baseType: !198, size: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3086, file: !12, line: 249, baseType: !380, size: 64, offset: 128)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3086, file: !12, line: 250, baseType: !3111, size: 128, offset: 192)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !584, line: 13, size: 128, elements: !3112)
!3112 = !{!3113, !3114}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3111, file: !584, line: 14, baseType: !583, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3111, file: !584, line: 15, baseType: !509, size: 64, offset: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3086, file: !12, line: 251, baseType: !3111, size: 128, offset: 320)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3086, file: !12, line: 252, baseType: !3111, size: 128, offset: 448)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3086, file: !12, line: 259, baseType: !1188, size: 64, offset: 576)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !208, file: !12, line: 1988, baseType: !3119, size: 64, offset: 896)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!8, !2997, !652, !3122, !248, !13}
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3124, line: 22, size: 1280, elements: !3125)
!3124 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3125 = !{!3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3123, file: !3124, line: 23, baseType: !248, size: 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3123, file: !3124, line: 24, baseType: !180, size: 16, offset: 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3123, file: !3124, line: 25, baseType: !13, size: 32, offset: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3123, file: !3124, line: 26, baseType: !1314, size: 32, offset: 96)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3123, file: !3124, line: 27, baseType: !140, size: 64, offset: 128)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3123, file: !3124, line: 28, baseType: !140, size: 64, offset: 192)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3123, file: !3124, line: 41, baseType: !140, size: 64, offset: 256)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3123, file: !3124, line: 42, baseType: !375, size: 32, offset: 320)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3123, file: !3124, line: 43, baseType: !375, size: 32, offset: 352)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3123, file: !3124, line: 44, baseType: !184, size: 32, offset: 384)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3123, file: !3124, line: 45, baseType: !194, size: 32, offset: 416)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3123, file: !3124, line: 46, baseType: !380, size: 64, offset: 448)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3123, file: !3124, line: 47, baseType: !3111, size: 128, offset: 512)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3123, file: !3124, line: 48, baseType: !3111, size: 128, offset: 640)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3123, file: !3124, line: 49, baseType: !3111, size: 128, offset: 768)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3123, file: !3124, line: 50, baseType: !3111, size: 128, offset: 896)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3123, file: !3124, line: 51, baseType: !140, size: 64, offset: 1024)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3123, file: !3124, line: 52, baseType: !140, size: 64, offset: 1088)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3123, file: !3124, line: 53, baseType: !248, size: 32, offset: 1152)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3123, file: !3124, line: 54, baseType: !248, size: 32, offset: 1184)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3123, file: !3124, line: 55, baseType: !140, size: 64, offset: 1216)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !208, file: !12, line: 1990, baseType: !3148, size: 64, offset: 960)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!506, !214, !359, !510}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !208, file: !12, line: 1991, baseType: !3152, size: 64, offset: 1024)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!8, !176, !3155, !140, !140}
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !12, line: 55, flags: DIFlagFwdDecl)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !208, file: !12, line: 1993, baseType: !3158, size: 64, offset: 1088)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!8, !176, !8}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !208, file: !12, line: 1994, baseType: !3162, size: 64, offset: 1152)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!8, !176, !214, !1188, !13, !180}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !208, file: !12, line: 1997, baseType: !3166, size: 64, offset: 1216)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!8, !2997, !176, !1188, !180}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !208, file: !12, line: 1999, baseType: !3170, size: 64, offset: 1280)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!202, !2997, !214, !8}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !208, file: !12, line: 2001, baseType: !3174, size: 64, offset: 1344)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!8, !2997, !214, !202, !8}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !208, file: !12, line: 2003, baseType: !3178, size: 64, offset: 1408)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!8, !2997, !214, !3181}
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !12, line: 76, flags: DIFlagFwdDecl)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !208, file: !12, line: 2005, baseType: !3184, size: 64, offset: 1472)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!8, !214, !3181}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !208, file: !12, line: 2006, baseType: !3188, size: 64, offset: 1536)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!3191, !176}
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !12, line: 3192, size: 192, elements: !3193)
!3193 = !{!3194, !3201}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3192, file: !12, line: 3193, baseType: !3195, size: 128)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3196, line: 296, size: 128, elements: !3197)
!3196 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3197 = !{!3198, !3199, !3200}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3195, file: !3196, line: 297, baseType: !273, size: 32)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3195, file: !3196, line: 299, baseType: !137, size: 32, offset: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3195, file: !3196, line: 300, baseType: !6, size: 64, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3192, file: !12, line: 3194, baseType: !248, size: 32, offset: 128)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !177, file: !12, line: 655, baseType: !370, size: 64, offset: 448)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !177, file: !12, line: 656, baseType: !172, size: 64, offset: 512)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !177, file: !12, line: 659, baseType: !6, size: 64, offset: 576)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !177, file: !12, line: 663, baseType: !7, size: 64, offset: 640)
!3206 = !DIDerivedType(tag: DW_TAG_member, scope: !177, file: !12, line: 671, baseType: !3207, size: 32, offset: 704)
!3207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !177, file: !12, line: 671, size: 32, elements: !3208)
!3208 = !{!3209, !3211}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3207, file: !12, line: 672, baseType: !3210, size: 32)
!3210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3207, file: !12, line: 673, baseType: !13, size: 32)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !177, file: !12, line: 675, baseType: !375, size: 32, offset: 736)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !177, file: !12, line: 676, baseType: !380, size: 64, offset: 768)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !177, file: !12, line: 677, baseType: !3111, size: 128, offset: 832)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !177, file: !12, line: 678, baseType: !3111, size: 128, offset: 960)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !177, file: !12, line: 679, baseType: !3111, size: 128, offset: 1088)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !177, file: !12, line: 680, baseType: !273, size: 32, offset: 1216)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !177, file: !12, line: 681, baseType: !181, size: 16, offset: 1248)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !177, file: !12, line: 682, baseType: !301, size: 8, offset: 1264)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !177, file: !12, line: 683, baseType: !301, size: 8, offset: 1272)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !177, file: !12, line: 684, baseType: !730, size: 64, offset: 1280)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !177, file: !12, line: 691, baseType: !7, size: 64, offset: 1344)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !177, file: !12, line: 692, baseType: !742, size: 320, offset: 1408)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !177, file: !12, line: 694, baseType: !7, size: 64, offset: 1728)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !177, file: !12, line: 695, baseType: !7, size: 64, offset: 1792)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !177, file: !12, line: 697, baseType: !417, size: 128, offset: 1856)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !177, file: !12, line: 698, baseType: !159, size: 128, offset: 1984)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !177, file: !12, line: 707, baseType: !159, size: 128, offset: 2112)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !177, file: !12, line: 708, baseType: !159, size: 128, offset: 2240)
!3230 = !DIDerivedType(tag: DW_TAG_member, scope: !177, file: !12, line: 709, baseType: !3231, size: 128, offset: 2368)
!3231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !177, file: !12, line: 709, size: 128, elements: !3232)
!3232 = !{!3233, !3234}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3231, file: !12, line: 710, baseType: !413, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3231, file: !12, line: 711, baseType: !842, size: 128, align: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !177, file: !12, line: 713, baseType: !536, size: 64, offset: 2496)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !177, file: !12, line: 714, baseType: !536, size: 64, offset: 2560)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !177, file: !12, line: 715, baseType: !293, size: 32, offset: 2624)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !177, file: !12, line: 716, baseType: !293, size: 32, offset: 2656)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !177, file: !12, line: 717, baseType: !293, size: 32, offset: 2688)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !177, file: !12, line: 719, baseType: !293, size: 32, offset: 2720)
!3241 = !DIDerivedType(tag: DW_TAG_member, scope: !177, file: !12, line: 721, baseType: !3242, size: 64, offset: 2752)
!3242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !177, file: !12, line: 721, size: 64, elements: !3243)
!3243 = !{!3244, !3245}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3242, file: !12, line: 722, baseType: !1463, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3242, file: !12, line: 723, baseType: !446, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !177, file: !12, line: 725, baseType: !3247, size: 64, offset: 2816)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !12, line: 725, flags: DIFlagFwdDecl)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !177, file: !12, line: 726, baseType: !173, size: 1536, align: 64, offset: 2880)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !177, file: !12, line: 727, baseType: !159, size: 128, offset: 4416)
!3251 = !DIDerivedType(tag: DW_TAG_member, scope: !177, file: !12, line: 728, baseType: !3252, size: 64, offset: 4544)
!3252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !177, file: !12, line: 728, size: 64, elements: !3253)
!3253 = !{!3254, !3255, !3258, !3259}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3252, file: !12, line: 729, baseType: !1823, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3252, file: !12, line: 730, baseType: !3256, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !12, line: 730, flags: DIFlagFwdDecl)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3252, file: !12, line: 731, baseType: !359, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3252, file: !12, line: 732, baseType: !13, size: 32)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !177, file: !12, line: 735, baseType: !249, size: 32, offset: 4608)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !177, file: !12, line: 738, baseType: !249, size: 32, offset: 4640)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !177, file: !12, line: 739, baseType: !2932, size: 64, offset: 4672)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !177, file: !12, line: 750, baseType: !6, size: 64, offset: 4736)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !173, file: !12, line: 474, baseType: !3195, size: 128, offset: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !173, file: !12, line: 475, baseType: !742, size: 320, offset: 192)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !173, file: !12, line: 476, baseType: !137, size: 32, offset: 512)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !173, file: !12, line: 477, baseType: !293, size: 32, offset: 544)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !173, file: !12, line: 482, baseType: !1044, size: 128, offset: 576)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !173, file: !12, line: 483, baseType: !7, size: 64, offset: 704)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !173, file: !12, line: 484, baseType: !7, size: 64, offset: 768)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !173, file: !12, line: 485, baseType: !3272, size: 64, offset: 832)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3274)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !12, line: 404, size: 1280, elements: !3275)
!3275 = !{!3276, !3280, !3284, !3288, !3292, !3308, !3312, !3316, !3321, !3325, !3329, !3333, !3334, !3338, !3342, !3346, !3351, !3355, !3362, !3363}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3274, file: !12, line: 405, baseType: !3277, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!8, !145, !458}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3274, file: !12, line: 406, baseType: !3281, size: 64, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!8, !1188, !1506}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3274, file: !12, line: 409, baseType: !3285, size: 64, offset: 128)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!8, !172, !458}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3274, file: !12, line: 412, baseType: !3289, size: 64, offset: 192)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!1349, !172, !1506}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3274, file: !12, line: 414, baseType: !3293, size: 64, offset: 256)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{null, !3296}
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1503, line: 1276, size: 448, elements: !3298)
!3298 = !{!3299, !3300, !3301, !3303, !3304, !3305, !3306, !3307}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3297, file: !1503, line: 1277, baseType: !1188, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3297, file: !1503, line: 1278, baseType: !172, size: 64, offset: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !3297, file: !1503, line: 1279, baseType: !3302, size: 64, offset: 128)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !3297, file: !1503, line: 1281, baseType: !7, size: 64, offset: 192)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !3297, file: !1503, line: 1282, baseType: !13, size: 32, offset: 256)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !3297, file: !1503, line: 1283, baseType: !13, size: 32, offset: 288)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !3297, file: !1503, line: 1284, baseType: !1349, size: 8, offset: 320)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !3297, file: !1503, line: 1285, baseType: !7, size: 64, offset: 384)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3274, file: !12, line: 416, baseType: !3309, size: 64, offset: 320)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!8, !1188, !172, !380, !13, !2680, !1838}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3274, file: !12, line: 419, baseType: !3313, size: 64, offset: 384)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!8, !1188, !172, !380, !13, !13, !145, !6}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3274, file: !12, line: 424, baseType: !3317, size: 64, offset: 448)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!3320, !172, !3320}
!3320 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !138, line: 131, baseType: !140)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3274, file: !12, line: 425, baseType: !3322, size: 64, offset: 512)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{null, !1506, !510, !510}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3274, file: !12, line: 426, baseType: !3326, size: 64, offset: 576)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!1349, !1506, !137}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3274, file: !12, line: 427, baseType: !3330, size: 64, offset: 640)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{null, !1506}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3274, file: !12, line: 428, baseType: !1482, size: 64, offset: 704)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3274, file: !12, line: 433, baseType: !3335, size: 64, offset: 768)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!8, !172, !1506, !1506, !65}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3274, file: !12, line: 435, baseType: !3339, size: 64, offset: 832)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!8, !1506}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3274, file: !12, line: 436, baseType: !3343, size: 64, offset: 896)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!1349, !1506, !510, !510}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3274, file: !12, line: 438, baseType: !3347, size: 64, offset: 960)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{null, !1506, !3350, !3350}
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3274, file: !12, line: 439, baseType: !3352, size: 64, offset: 1024)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!8, !172, !145}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3274, file: !12, line: 442, baseType: !3356, size: 64, offset: 1088)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!8, !3359, !1188, !3361}
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !12, line: 66, flags: DIFlagFwdDecl)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3274, file: !12, line: 444, baseType: !1830, size: 64, offset: 1152)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3274, file: !12, line: 445, baseType: !3364, size: 64, offset: 1216)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!8, !1485, !1590}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !173, file: !12, line: 486, baseType: !7, size: 64, offset: 896)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !173, file: !12, line: 487, baseType: !742, size: 320, offset: 960)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !173, file: !12, line: 488, baseType: !1873, size: 32, offset: 1280)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !173, file: !12, line: 489, baseType: !273, size: 32, offset: 1312)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !173, file: !12, line: 490, baseType: !159, size: 128, offset: 1344)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !173, file: !12, line: 491, baseType: !6, size: 64, offset: 1472)
!3373 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !37, line: 107, baseType: !3374, size: 64, offset: 192)
!3374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !153, file: !37, line: 107, size: 64, elements: !3375)
!3375 = !{!3376, !3377}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3374, file: !37, line: 108, baseType: !7, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !3374, file: !37, line: 109, baseType: !7, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !153, file: !37, line: 117, baseType: !7, size: 64, offset: 256)
!3379 = !DIDerivedType(tag: DW_TAG_member, scope: !150, file: !37, line: 119, baseType: !3380, size: 320)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !150, file: !37, line: 119, size: 320, elements: !3381)
!3381 = !{!3382, !3383, !3386, !3387, !3388}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !3380, file: !37, line: 124, baseType: !7, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !3380, file: !37, line: 125, baseType: !3384, size: 64, offset: 64)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !37, line: 125, flags: DIFlagFwdDecl)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !3380, file: !37, line: 126, baseType: !7, size: 64, offset: 128)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3380, file: !37, line: 127, baseType: !7, size: 64, offset: 192)
!3388 = !DIDerivedType(tag: DW_TAG_member, scope: !3380, file: !37, line: 128, baseType: !3389, size: 64, offset: 256)
!3389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3380, file: !37, line: 128, size: 64, elements: !3390)
!3390 = !{!3391, !3392}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !3389, file: !37, line: 133, baseType: !7, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !3389, file: !37, line: 138, baseType: !534, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, scope: !150, file: !37, line: 141, baseType: !3394, size: 64)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !150, file: !37, line: 141, size: 64, elements: !3395)
!3395 = !{!3396}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !3394, file: !37, line: 142, baseType: !7, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, scope: !150, file: !37, line: 144, baseType: !3398, size: 128)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !150, file: !37, line: 144, size: 128, elements: !3399)
!3399 = !{!3400, !3471}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3398, file: !37, line: 146, baseType: !3401, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !73, line: 126, size: 1216, elements: !3403)
!3403 = !{!3404, !3414, !3435, !3436, !3437, !3438, !3439, !3453, !3454, !3455}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3402, file: !73, line: 127, baseType: !3405, size: 384)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !73, line: 21, size: 384, elements: !3406)
!3406 = !{!3407, !3408, !3410, !3411, !3412, !3413}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3405, file: !73, line: 22, baseType: !7, size: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3405, file: !73, line: 23, baseType: !3409, size: 64, offset: 64)
!3409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3405, file: !73, line: 24, baseType: !3409, size: 64, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3405, file: !73, line: 25, baseType: !7, size: 64, offset: 192)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3405, file: !73, line: 26, baseType: !7, size: 64, offset: 256)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3405, file: !73, line: 27, baseType: !7, size: 64, offset: 320)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3402, file: !73, line: 128, baseType: !3415, size: 128, offset: 384)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3416, line: 105, size: 128, elements: !3417)
!3416 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!3417 = !{!3418, !3419}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3415, file: !3416, line: 110, baseType: !7, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3415, file: !3416, line: 118, baseType: !3420, size: 64, offset: 64)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3416, line: 95, size: 448, elements: !3422)
!3422 = !{!3423, !3424, !3430, !3431, !3432, !3433, !3434}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3421, file: !3416, line: 96, baseType: !534, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3421, file: !3416, line: 97, baseType: !3425, size: 64, offset: 64)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3416, line: 60, baseType: !3427)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{null, !3429}
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3421, file: !3416, line: 98, baseType: !3425, size: 64, offset: 128)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3421, file: !3416, line: 99, baseType: !1349, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3421, file: !3416, line: 100, baseType: !1349, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3421, file: !3416, line: 101, baseType: !842, size: 128, align: 64, offset: 256)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3421, file: !3416, line: 102, baseType: !3429, size: 64, offset: 384)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3402, file: !73, line: 129, baseType: !2089, size: 256, offset: 512)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3402, file: !73, line: 130, baseType: !72, size: 32, offset: 768)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3402, file: !73, line: 131, baseType: !13, size: 32, offset: 800)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !3402, file: !73, line: 132, baseType: !7, size: 64, offset: 832)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3402, file: !73, line: 133, baseType: !3440, size: 64, offset: 896)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3442)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !73, line: 77, size: 192, elements: !3443)
!3443 = !{!3444, !3448, !3449}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3442, file: !73, line: 83, baseType: !3445, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{null, !145}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3442, file: !73, line: 89, baseType: !1697, size: 64, offset: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !3442, file: !73, line: 100, baseType: !3450, size: 64, offset: 128)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!8, !3401, !7, !7, !8}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3402, file: !73, line: 134, baseType: !6, size: 64, offset: 960)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3402, file: !73, line: 135, baseType: !8, size: 32, offset: 1024)
!3455 = !DIDerivedType(tag: DW_TAG_member, scope: !3402, file: !73, line: 136, baseType: !3456, size: 128, offset: 1088)
!3456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3402, file: !73, line: 136, size: 128, elements: !3457)
!3457 = !{!3458, !3464}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3456, file: !73, line: 137, baseType: !3459, size: 128)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3460, line: 6, size: 128, elements: !3461)
!3460 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!3461 = !{!3462, !3463}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3459, file: !3460, line: 7, baseType: !140, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3459, file: !3460, line: 8, baseType: !140, size: 64, offset: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, scope: !3456, file: !73, line: 138, baseType: !3465)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3456, file: !73, line: 138, elements: !3466)
!3466 = !{!3467, !3469}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !3465, file: !73, line: 138, baseType: !3468)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3465, file: !73, line: 138, elements: !425)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3465, file: !73, line: 138, baseType: !3470)
!3470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3459, elements: !1250)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3398, file: !37, line: 147, baseType: !6, size: 64, offset: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !150, file: !37, line: 161, baseType: !842, size: 128, align: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, scope: !146, file: !37, line: 164, baseType: !3474, size: 32, offset: 384)
!3474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !146, file: !37, line: 164, size: 32, elements: !3475)
!3475 = !{!3476, !3477}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3474, file: !37, line: 169, baseType: !293, size: 32)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3474, file: !37, line: 177, baseType: !13, size: 32)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !146, file: !37, line: 181, baseType: !293, size: 32, offset: 416)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3481)
!3481 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1715)
!3482 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !138, line: 42, baseType: !7)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3487)
!3487 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1731)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3490)
!3490 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1722)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4d_t", file: !1644, line: 346, baseType: !3499)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1644, line: 346, size: 64, elements: !3500)
!3500 = !{!3501}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "p4d", scope: !3499, file: !1644, line: 346, baseType: !3502, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4dval_t", file: !1649, line: 17, baseType: !7)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3498)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1883)
!3507 = !{!0, !3508, !3510, !3529, !3534, !3537, !3543, !3563, !3568}
!3508 = !DIGlobalVariableExpression(var: !3509, expr: !DIExpression())
!3509 = distinct !DIGlobalVariable(scope: null, file: !3, line: 64, type: !2935, isLocal: true, isDefinition: true)
!3510 = !DIGlobalVariableExpression(var: !3511, expr: !DIExpression())
!3511 = distinct !DIGlobalVariable(name: "__already_done", scope: !3512, file: !3, line: 140, type: !1349, isLocal: true, isDefinition: true)
!3512 = distinct !DISubprogram(name: "vmemmap_verify", scope: !3, file: !3, line: 133, type: !3513, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3515)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{null, !1740, !8, !7, !7}
!3515 = !{!3516, !3517, !3518, !3519, !3520, !3521, !3522, !3525, !3528}
!3516 = !DILocalVariable(name: "pte", arg: 1, scope: !3512, file: !3, line: 133, type: !1740)
!3517 = !DILocalVariable(name: "node", arg: 2, scope: !3512, file: !3, line: 133, type: !8)
!3518 = !DILocalVariable(name: "start", arg: 3, scope: !3512, file: !3, line: 134, type: !7)
!3519 = !DILocalVariable(name: "end", arg: 4, scope: !3512, file: !3, line: 134, type: !7)
!3520 = !DILocalVariable(name: "pfn", scope: !3512, file: !3, line: 136, type: !7)
!3521 = !DILocalVariable(name: "actual_node", scope: !3512, file: !3, line: 137, type: !8)
!3522 = !DILocalVariable(name: "__ret_do_once", scope: !3523, file: !3, line: 140, type: !1349)
!3523 = distinct !DILexicalBlock(scope: !3524, file: !3, line: 140, column: 3)
!3524 = distinct !DILexicalBlock(scope: !3512, file: !3, line: 139, column: 6)
!3525 = !DILocalVariable(name: "__ret_cond", scope: !3526, file: !3, line: 140, type: !1349)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 140, column: 3)
!3527 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 140, column: 3)
!3528 = !DILocalVariable(name: "__ret_once", scope: !3526, file: !3, line: 140, type: !1349)
!3529 = !DIGlobalVariableExpression(var: !3530, expr: !DIExpression())
!3530 = distinct !DIGlobalVariable(scope: null, file: !3, line: 140, type: !3531, isLocal: true, isDefinition: true)
!3531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 352, elements: !3532)
!3532 = !{!3533}
!3533 = !DISubrange(count: 44)
!3534 = !DIGlobalVariableExpression(var: !3535, expr: !DIExpression())
!3535 = distinct !DIGlobalVariable(scope: null, file: !3, line: 460, type: !3536, isLocal: true, isDefinition: true)
!3536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 160, elements: !2781)
!3537 = !DIGlobalVariableExpression(var: !3538, expr: !DIExpression())
!3538 = distinct !DIGlobalVariable(scope: null, file: !3539, line: 223, type: !3540, isLocal: true, isDefinition: true)
!3539 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9839e6e1390b3a0e2df74dd95101fbc5")
!3540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 320, elements: !3541)
!3541 = !{!3542}
!3542 = !DISubrange(count: 40)
!3543 = !DIGlobalVariableExpression(var: !3544, expr: !DIExpression())
!3544 = distinct !DIGlobalVariable(name: "__already_done", scope: !3545, file: !3, line: 112, type: !1349, isLocal: true, isDefinition: true)
!3545 = distinct !DISubprogram(name: "altmap_alloc_block_buf", scope: !3, file: !3, line: 106, type: !3546, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3549)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!6, !7, !3548}
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3549 = !{!3550, !3551, !3552, !3553, !3554, !3555, !3559, !3562}
!3550 = !DILocalVariable(name: "size", arg: 1, scope: !3545, file: !3, line: 106, type: !7)
!3551 = !DILocalVariable(name: "altmap", arg: 2, scope: !3545, file: !3, line: 107, type: !3548)
!3552 = !DILocalVariable(name: "pfn", scope: !3545, file: !3, line: 109, type: !7)
!3553 = !DILocalVariable(name: "nr_pfns", scope: !3545, file: !3, line: 109, type: !7)
!3554 = !DILocalVariable(name: "nr_align", scope: !3545, file: !3, line: 109, type: !7)
!3555 = !DILocalVariable(name: "__ret_do_once", scope: !3556, file: !3, line: 112, type: !1349)
!3556 = distinct !DILexicalBlock(scope: !3557, file: !3, line: 112, column: 3)
!3557 = distinct !DILexicalBlock(scope: !3558, file: !3, line: 111, column: 25)
!3558 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 111, column: 6)
!3559 = !DILocalVariable(name: "__ret_cond", scope: !3560, file: !3, line: 112, type: !1349)
!3560 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 112, column: 3)
!3561 = distinct !DILexicalBlock(scope: !3556, file: !3, line: 112, column: 3)
!3562 = !DILocalVariable(name: "__ret_once", scope: !3560, file: !3, line: 112, type: !1349)
!3563 = !DIGlobalVariableExpression(var: !3564, expr: !DIExpression())
!3564 = distinct !DIGlobalVariable(scope: null, file: !3, line: 112, type: !3565, isLocal: true, isDefinition: true)
!3565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 440, elements: !3566)
!3566 = !{!3567}
!3567 = !DISubrange(count: 55)
!3568 = !DIGlobalVariableExpression(var: !3569, expr: !DIExpression())
!3569 = distinct !DIGlobalVariable(scope: null, file: !3, line: 112, type: !3570, isLocal: true, isDefinition: true)
!3570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 184, elements: !3571)
!3571 = !{!3572}
!3572 = !DISubrange(count: 23)
!3573 = !{!3574, !3575, !3576, !3579, !3580}
!3574 = !DILocalVariable(name: "size", arg: 1, scope: !2, file: !3, line: 49, type: !7)
!3575 = !DILocalVariable(name: "node", arg: 2, scope: !2, file: !3, line: 49, type: !8)
!3576 = !DILocalVariable(name: "gfp_mask", scope: !3577, file: !3, line: 53, type: !137)
!3577 = distinct !DILexicalBlock(scope: !3578, file: !3, line: 52, column: 27)
!3578 = distinct !DILexicalBlock(scope: !2, file: !3, line: 52, column: 6)
!3579 = !DILocalVariable(name: "order", scope: !3577, file: !3, line: 54, type: !8)
!3580 = !DILocalVariable(name: "page", scope: !3577, file: !3, line: 56, type: !145)
!3581 = !{i32 7, !"Dwarf Version", i32 5}
!3582 = !{i32 2, !"Debug Info Version", i32 3}
!3583 = !{i32 1, !"wchar_size", i32 2}
!3584 = !{i32 8, !"cf-protection-branch", i32 1}
!3585 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3586 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3587 = !{i32 1, !"Code Model", i32 2}
!3588 = !{i32 1, !"override-stack-alignment", i32 8}
!3589 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3590 = !DILocation(line: 49, column: 52, scope: !2)
!3591 = !DILocation(line: 49, column: 62, scope: !2)
!3592 = !DILocation(line: 52, column: 6, scope: !3578)
!3593 = !DILocation(line: 52, column: 6, scope: !2)
!3594 = !DILocation(line: 53, column: 3, scope: !3577)
!3595 = !DILocation(line: 53, column: 9, scope: !3577)
!3596 = !DILocation(line: 54, column: 3, scope: !3577)
!3597 = !DILocation(line: 54, column: 7, scope: !3577)
!3598 = !DILocation(line: 54, column: 25, scope: !3577)
!3599 = !DILocation(line: 54, column: 15, scope: !3577)
!3600 = !DILocation(line: 56, column: 3, scope: !3577)
!3601 = !DILocation(line: 56, column: 16, scope: !3577)
!3602 = !DILocation(line: 58, column: 27, scope: !3577)
!3603 = !DILocation(line: 58, column: 33, scope: !3577)
!3604 = !DILocation(line: 58, column: 43, scope: !3577)
!3605 = !DILocation(line: 58, column: 10, scope: !3577)
!3606 = !DILocation(line: 58, column: 8, scope: !3577)
!3607 = !DILocation(line: 59, column: 7, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3577, file: !3, line: 59, column: 7)
!3609 = !DILocation(line: 59, column: 7, scope: !3577)
!3610 = !DILocation(line: 60, column: 11, scope: !3608)
!3611 = !DILocation(line: 60, column: 4, scope: !3608)
!3612 = !DILocation(line: 62, column: 8, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3577, file: !3, line: 62, column: 7)
!3614 = !{i8 0, i8 2}
!3615 = !DILocation(line: 62, column: 7, scope: !3577)
!3616 = !DILocation(line: 63, column: 15, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3613, file: !3, line: 62, column: 16)
!3618 = !DILocation(line: 63, column: 24, scope: !3617)
!3619 = !DILocation(line: 64, column: 43, scope: !3617)
!3620 = !DILocation(line: 63, column: 4, scope: !3617)
!3621 = !DILocation(line: 65, column: 11, scope: !3617)
!3622 = !DILocation(line: 66, column: 3, scope: !3617)
!3623 = !DILocation(line: 67, column: 3, scope: !3577)
!3624 = !DILocation(line: 68, column: 2, scope: !3578)
!3625 = !DILocation(line: 69, column: 36, scope: !3578)
!3626 = !DILocation(line: 69, column: 42, scope: !3578)
!3627 = !DILocation(line: 69, column: 48, scope: !3578)
!3628 = !DILocation(line: 70, column: 5, scope: !3578)
!3629 = !DILocation(line: 69, column: 10, scope: !3578)
!3630 = !DILocation(line: 69, column: 3, scope: !3578)
!3631 = !DILocation(line: 71, column: 1, scope: !2)
!3632 = !DISubprogram(name: "slab_is_available", scope: !3633, file: !3633, line: 187, type: !3634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3633 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!1349}
!3636 = distinct !DISubprogram(name: "get_order", scope: !3637, file: !3637, line: 29, type: !3638, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3640)
!3637 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6ad2a20729bf2780fb61509a4eca111b")
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!8, !7}
!3640 = !{!3641}
!3641 = !DILocalVariable(name: "size", arg: 1, scope: !3636, file: !3637, line: 29, type: !7)
!3642 = !DILocation(line: 29, column: 72, scope: !3636)
!3643 = !DILocation(line: 31, column: 27, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3636, file: !3637, line: 31, column: 6)
!3645 = !DILocation(line: 31, column: 6, scope: !3644)
!3646 = !DILocation(line: 31, column: 6, scope: !3636)
!3647 = !DILocation(line: 32, column: 8, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3649, file: !3637, line: 32, column: 7)
!3649 = distinct !DILexicalBlock(scope: !3644, file: !3637, line: 31, column: 34)
!3650 = !DILocation(line: 32, column: 7, scope: !3649)
!3651 = !DILocation(line: 33, column: 4, scope: !3648)
!3652 = !DILocation(line: 35, column: 7, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3649, file: !3637, line: 35, column: 7)
!3654 = !DILocation(line: 35, column: 12, scope: !3653)
!3655 = !DILocation(line: 35, column: 7, scope: !3649)
!3656 = !DILocation(line: 36, column: 4, scope: !3653)
!3657 = !DILocation(line: 38, column: 10, scope: !3649)
!3658 = !DILocation(line: 38, column: 28, scope: !3649)
!3659 = !DILocation(line: 38, column: 41, scope: !3649)
!3660 = !DILocation(line: 38, column: 3, scope: !3649)
!3661 = !DILocation(line: 41, column: 6, scope: !3636)
!3662 = !DILocation(line: 42, column: 7, scope: !3636)
!3663 = !DILocation(line: 46, column: 15, scope: !3636)
!3664 = !DILocation(line: 46, column: 9, scope: !3636)
!3665 = !DILocation(line: 46, column: 2, scope: !3636)
!3666 = !DILocation(line: 48, column: 1, scope: !3636)
!3667 = distinct !DISubprogram(name: "alloc_pages_node", scope: !3539, file: !3539, line: 254, type: !3668, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3670)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!145, !8, !137, !13}
!3670 = !{!3671, !3672, !3673}
!3671 = !DILocalVariable(name: "nid", arg: 1, scope: !3667, file: !3539, line: 254, type: !8)
!3672 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !3667, file: !3539, line: 254, type: !137)
!3673 = !DILocalVariable(name: "order", arg: 3, scope: !3667, file: !3539, line: 255, type: !13)
!3674 = !DILocation(line: 254, column: 49, scope: !3667)
!3675 = !DILocation(line: 254, column: 60, scope: !3667)
!3676 = !DILocation(line: 255, column: 20, scope: !3667)
!3677 = !DILocation(line: 257, column: 6, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3667, file: !3539, line: 257, column: 6)
!3679 = !DILocation(line: 257, column: 10, scope: !3678)
!3680 = !DILocation(line: 257, column: 6, scope: !3667)
!3681 = !DILocation(line: 258, column: 9, scope: !3678)
!3682 = !DILocation(line: 258, column: 7, scope: !3678)
!3683 = !DILocation(line: 258, column: 3, scope: !3678)
!3684 = !DILocation(line: 260, column: 28, scope: !3667)
!3685 = !DILocation(line: 260, column: 33, scope: !3667)
!3686 = !DILocation(line: 260, column: 43, scope: !3667)
!3687 = !DILocation(line: 260, column: 9, scope: !3667)
!3688 = !DILocation(line: 260, column: 2, scope: !3667)
!3689 = distinct !DISubprogram(name: "lowmem_page_address", scope: !1677, file: !1677, line: 2176, type: !3690, scopeLine: 2177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3692)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!6, !3491}
!3692 = !{!3693}
!3693 = !DILocalVariable(name: "page", arg: 1, scope: !3689, file: !1677, line: 2176, type: !3491)
!3694 = !DILocation(line: 2176, column: 69, scope: !3689)
!3695 = !DILocation(line: 2178, column: 9, scope: !3689)
!3696 = !DILocation(line: 2178, column: 2, scope: !3689)
!3697 = !DISubprogram(name: "warn_alloc", scope: !1677, file: !1677, line: 3182, type: !3698, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{null, !137, !3700, !333, null}
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!3701 = distinct !DISubprogram(name: "__earlyonly_bootmem_alloc", scope: !3, file: !3, line: 40, type: !3702, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3704)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!6, !8, !7, !7, !7}
!3704 = !{!3705, !3706, !3707, !3708}
!3705 = !DILocalVariable(name: "node", arg: 1, scope: !3701, file: !3, line: 40, type: !8)
!3706 = !DILocalVariable(name: "size", arg: 2, scope: !3701, file: !3, line: 41, type: !7)
!3707 = !DILocalVariable(name: "align", arg: 3, scope: !3701, file: !3, line: 42, type: !7)
!3708 = !DILocalVariable(name: "goal", arg: 4, scope: !3701, file: !3, line: 43, type: !7)
!3709 = !DILocation(line: 40, column: 51, scope: !3701)
!3710 = !DILocation(line: 41, column: 19, scope: !3701)
!3711 = !DILocation(line: 42, column: 19, scope: !3701)
!3712 = !DILocation(line: 43, column: 19, scope: !3701)
!3713 = !DILocation(line: 45, column: 36, scope: !3701)
!3714 = !DILocation(line: 45, column: 42, scope: !3701)
!3715 = !DILocation(line: 45, column: 49, scope: !3701)
!3716 = !DILocation(line: 46, column: 40, scope: !3701)
!3717 = !DILocation(line: 45, column: 9, scope: !3701)
!3718 = !DILocation(line: 45, column: 2, scope: !3701)
!3719 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !3720, file: !3720, line: 22, type: !3721, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3723)
!3720 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!7, !7}
!3723 = !{!3724, !3725}
!3724 = !DILocalVariable(name: "x", arg: 1, scope: !3719, file: !3720, line: 22, type: !7)
!3725 = !DILocalVariable(name: "y", scope: !3719, file: !3720, line: 24, type: !7)
!3726 = !DILocation(line: 22, column: 72, scope: !3719)
!3727 = !DILocation(line: 24, column: 2, scope: !3719)
!3728 = !DILocation(line: 24, column: 16, scope: !3719)
!3729 = !DILocation(line: 24, column: 20, scope: !3719)
!3730 = !DILocation(line: 24, column: 22, scope: !3719)
!3731 = !DILocation(line: 27, column: 6, scope: !3719)
!3732 = !DILocation(line: 27, column: 12, scope: !3719)
!3733 = !DILocation(line: 27, column: 16, scope: !3719)
!3734 = !DILocation(line: 27, column: 14, scope: !3719)
!3735 = !DILocation(line: 27, column: 11, scope: !3719)
!3736 = !DILocation(line: 27, column: 21, scope: !3719)
!3737 = !DILocation(line: 27, column: 55, scope: !3719)
!3738 = !DILocation(line: 27, column: 53, scope: !3719)
!3739 = !DILocation(line: 27, column: 8, scope: !3719)
!3740 = !DILocation(line: 27, column: 4, scope: !3719)
!3741 = !DILocation(line: 29, column: 9, scope: !3719)
!3742 = !DILocation(line: 30, column: 1, scope: !3719)
!3743 = !DILocation(line: 29, column: 2, scope: !3719)
!3744 = distinct !DISubprogram(name: "vmemmap_alloc_block_buf", scope: !3, file: !3, line: 77, type: !3745, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3747)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!6, !7, !8, !3548}
!3747 = !{!3748, !3749, !3750, !3751}
!3748 = !DILocalVariable(name: "size", arg: 1, scope: !3744, file: !3, line: 77, type: !7)
!3749 = !DILocalVariable(name: "node", arg: 2, scope: !3744, file: !3, line: 77, type: !8)
!3750 = !DILocalVariable(name: "altmap", arg: 3, scope: !3744, file: !3, line: 78, type: !3548)
!3751 = !DILocalVariable(name: "ptr", scope: !3744, file: !3, line: 80, type: !6)
!3752 = !DILocation(line: 77, column: 56, scope: !3744)
!3753 = !DILocation(line: 77, column: 66, scope: !3744)
!3754 = !DILocation(line: 78, column: 27, scope: !3744)
!3755 = !DILocation(line: 80, column: 2, scope: !3744)
!3756 = !DILocation(line: 80, column: 8, scope: !3744)
!3757 = !DILocation(line: 82, column: 6, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3744, file: !3, line: 82, column: 6)
!3759 = !DILocation(line: 82, column: 6, scope: !3744)
!3760 = !DILocation(line: 83, column: 33, scope: !3758)
!3761 = !DILocation(line: 83, column: 39, scope: !3758)
!3762 = !DILocation(line: 83, column: 10, scope: !3758)
!3763 = !DILocation(line: 83, column: 3, scope: !3758)
!3764 = !DILocation(line: 85, column: 28, scope: !3744)
!3765 = !DILocation(line: 85, column: 8, scope: !3744)
!3766 = !DILocation(line: 85, column: 6, scope: !3744)
!3767 = !DILocation(line: 86, column: 7, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3744, file: !3, line: 86, column: 6)
!3769 = !DILocation(line: 86, column: 6, scope: !3744)
!3770 = !DILocation(line: 87, column: 29, scope: !3768)
!3771 = !DILocation(line: 87, column: 35, scope: !3768)
!3772 = !DILocation(line: 87, column: 9, scope: !3768)
!3773 = !DILocation(line: 87, column: 7, scope: !3768)
!3774 = !DILocation(line: 87, column: 3, scope: !3768)
!3775 = !DILocation(line: 88, column: 9, scope: !3744)
!3776 = !DILocation(line: 88, column: 2, scope: !3744)
!3777 = !DILocation(line: 89, column: 1, scope: !3744)
!3778 = !DILocation(line: 106, column: 62, scope: !3545)
!3779 = !DILocation(line: 107, column: 33, scope: !3545)
!3780 = !DILocation(line: 109, column: 2, scope: !3545)
!3781 = !DILocation(line: 109, column: 16, scope: !3545)
!3782 = !DILocation(line: 109, column: 21, scope: !3545)
!3783 = !DILocation(line: 109, column: 30, scope: !3545)
!3784 = !DILocation(line: 111, column: 6, scope: !3558)
!3785 = !DILocation(line: 111, column: 11, scope: !3558)
!3786 = !DILocation(line: 111, column: 6, scope: !3545)
!3787 = !DILocation(line: 112, column: 3, scope: !3556)
!3788 = !DILocation(line: 112, column: 3, scope: !3560)
!3789 = !DILocation(line: 112, column: 3, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3560, file: !3, line: 112, column: 3)
!3791 = !DILocation(line: 0, scope: !3790)
!3792 = !DILocation(line: 112, column: 3, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3790, file: !3, line: 112, column: 3)
!3794 = !DILocation(line: 112, column: 3, scope: !3561)
!3795 = !DILocation(line: 112, column: 3, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 112, column: 3)
!3797 = !DILocation(line: 112, column: 3, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3796, file: !3, line: 112, column: 3)
!3799 = !DILocation(line: 112, column: 3, scope: !3557)
!3800 = !DILocation(line: 114, column: 3, scope: !3557)
!3801 = !DILocation(line: 117, column: 29, scope: !3545)
!3802 = !DILocation(line: 117, column: 8, scope: !3545)
!3803 = !DILocation(line: 117, column: 6, scope: !3545)
!3804 = !DILocation(line: 118, column: 12, scope: !3545)
!3805 = !DILocation(line: 118, column: 17, scope: !3545)
!3806 = !DILocation(line: 118, column: 10, scope: !3545)
!3807 = !DILocation(line: 119, column: 20, scope: !3545)
!3808 = !DILocation(line: 119, column: 17, scope: !3545)
!3809 = !DILocation(line: 119, column: 11, scope: !3545)
!3810 = !DILocation(line: 120, column: 13, scope: !3545)
!3811 = !DILocation(line: 120, column: 36, scope: !3545)
!3812 = !DILocation(line: 120, column: 34, scope: !3545)
!3813 = !DILocation(line: 120, column: 11, scope: !3545)
!3814 = !DILocation(line: 121, column: 6, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 121, column: 6)
!3816 = !DILocation(line: 121, column: 16, scope: !3815)
!3817 = !DILocation(line: 121, column: 14, scope: !3815)
!3818 = !DILocation(line: 121, column: 47, scope: !3815)
!3819 = !DILocation(line: 121, column: 27, scope: !3815)
!3820 = !DILocation(line: 121, column: 25, scope: !3815)
!3821 = !DILocation(line: 121, column: 6, scope: !3545)
!3822 = !DILocation(line: 122, column: 3, scope: !3815)
!3823 = !DILocation(line: 124, column: 19, scope: !3545)
!3824 = !DILocation(line: 124, column: 2, scope: !3545)
!3825 = !DILocation(line: 124, column: 10, scope: !3545)
!3826 = !DILocation(line: 124, column: 16, scope: !3545)
!3827 = !DILocation(line: 125, column: 19, scope: !3545)
!3828 = !DILocation(line: 125, column: 2, scope: !3545)
!3829 = !DILocation(line: 125, column: 10, scope: !3545)
!3830 = !DILocation(line: 125, column: 16, scope: !3545)
!3831 = !DILocation(line: 126, column: 9, scope: !3545)
!3832 = !DILocation(line: 126, column: 6, scope: !3545)
!3833 = !DILocation(line: 128, column: 2, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3835, file: !3, line: 128, column: 2)
!3835 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 128, column: 2)
!3836 = !DILocation(line: 128, column: 2, scope: !3835)
!3837 = !DILocation(line: 130, column: 9, scope: !3545)
!3838 = !DILocation(line: 130, column: 2, scope: !3545)
!3839 = !DILocation(line: 131, column: 1, scope: !3545)
!3840 = !DISubprogram(name: "sparse_buffer_alloc", scope: !1677, file: !1677, line: 3763, type: !3841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!6, !7}
!3843 = !DILocation(line: 133, column: 38, scope: !3512)
!3844 = !DILocation(line: 133, column: 47, scope: !3512)
!3845 = !DILocation(line: 134, column: 19, scope: !3512)
!3846 = !DILocation(line: 134, column: 40, scope: !3512)
!3847 = !DILocation(line: 136, column: 2, scope: !3512)
!3848 = !DILocation(line: 136, column: 16, scope: !3512)
!3849 = !DILocation(line: 136, column: 39, scope: !3512)
!3850 = !DILocation(line: 136, column: 30, scope: !3512)
!3851 = !DILocation(line: 136, column: 22, scope: !3512)
!3852 = !DILocation(line: 137, column: 2, scope: !3512)
!3853 = !DILocation(line: 137, column: 6, scope: !3512)
!3854 = !DILocation(line: 137, column: 37, scope: !3512)
!3855 = !DILocation(line: 137, column: 20, scope: !3512)
!3856 = !DILocation(line: 139, column: 6, scope: !3524)
!3857 = !DILocation(line: 139, column: 39, scope: !3524)
!3858 = !DILocation(line: 139, column: 6, scope: !3512)
!3859 = !DILocation(line: 140, column: 3, scope: !3523)
!3860 = !DILocation(line: 140, column: 3, scope: !3526)
!3861 = !DILocation(line: 140, column: 3, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 140, column: 3)
!3863 = !DILocation(line: 0, scope: !3862)
!3864 = !DILocation(line: 140, column: 3, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3862, file: !3, line: 140, column: 3)
!3866 = !DILocation(line: 140, column: 3, scope: !3527)
!3867 = !DILocation(line: 140, column: 3, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 140, column: 3)
!3869 = !DILocation(line: 140, column: 3, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3868, file: !3, line: 140, column: 3)
!3871 = !DILocation(line: 140, column: 3, scope: !3524)
!3872 = !DILocation(line: 142, column: 1, scope: !3512)
!3873 = distinct !DISubprogram(name: "pte_pfn", scope: !3874, file: !3874, line: 223, type: !3875, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3877)
!3874 = !DIFile(filename: "./arch/x86/include/asm/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "40a9f4cb2b1b2fff495e3ab16a522abc")
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!7, !1731}
!3877 = !{!3878, !3879}
!3878 = !DILocalVariable(name: "pte", arg: 1, scope: !3873, file: !3874, line: 223, type: !1731)
!3879 = !DILocalVariable(name: "pfn", scope: !3873, file: !3874, line: 225, type: !139)
!3880 = !DILocation(line: 223, column: 43, scope: !3873)
!3881 = !DILocation(line: 225, column: 2, scope: !3873)
!3882 = !DILocation(line: 225, column: 14, scope: !3873)
!3883 = !DILocation(line: 225, column: 20, scope: !3873)
!3884 = !DILocation(line: 226, column: 23, scope: !3873)
!3885 = !DILocation(line: 226, column: 9, scope: !3873)
!3886 = !DILocation(line: 226, column: 6, scope: !3873)
!3887 = !DILocation(line: 227, column: 10, scope: !3873)
!3888 = !DILocation(line: 227, column: 14, scope: !3873)
!3889 = !DILocation(line: 227, column: 30, scope: !3873)
!3890 = !DILocation(line: 228, column: 1, scope: !3873)
!3891 = !DILocation(line: 227, column: 2, scope: !3873)
!3892 = distinct !DISubprogram(name: "ptep_get", scope: !3893, file: !3893, line: 282, type: !3894, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3896)
!3893 = !DIFile(filename: "./include/linux/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "42556a9f65ab908dd6bd67424d19f5be")
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!1731, !1740}
!3896 = !{!3897}
!3897 = !DILocalVariable(name: "ptep", arg: 1, scope: !3892, file: !3893, line: 282, type: !1740)
!3898 = !DILocation(line: 282, column: 37, scope: !3892)
!3899 = !DILocation(line: 284, column: 9, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3892, file: !3893, line: 284, column: 9)
!3901 = !DILocation(line: 284, column: 9, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3900, file: !3893, line: 284, column: 9)
!3903 = !DILocation(line: 284, column: 2, scope: !3892)
!3904 = !DISubprogram(name: "early_pfn_to_nid", scope: !1677, file: !1677, line: 3162, type: !3638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3905 = !DISubprogram(name: "__node_distance", scope: !3906, file: !3906, line: 80, type: !3907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3906 = !DIFile(filename: "./arch/x86/include/asm/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "120eda241c1b2b25166ee71f2a584d2d")
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!8, !8, !8}
!3909 = !DISubprogram(name: "_printk", scope: !410, file: !410, line: 153, type: !3910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!8, !333, null}
!3912 = distinct !DISubprogram(name: "vmemmap_pte_populate", scope: !3, file: !3, line: 144, type: !3913, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3915)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!1740, !1714, !7, !8, !3548, !145}
!3915 = !{!3916, !3917, !3918, !3919, !3920, !3921, !3922, !3925}
!3916 = !DILocalVariable(name: "pmd", arg: 1, scope: !3912, file: !3, line: 144, type: !1714)
!3917 = !DILocalVariable(name: "addr", arg: 2, scope: !3912, file: !3, line: 144, type: !7)
!3918 = !DILocalVariable(name: "node", arg: 3, scope: !3912, file: !3, line: 144, type: !8)
!3919 = !DILocalVariable(name: "altmap", arg: 4, scope: !3912, file: !3, line: 145, type: !3548)
!3920 = !DILocalVariable(name: "reuse", arg: 5, scope: !3912, file: !3, line: 146, type: !145)
!3921 = !DILocalVariable(name: "pte", scope: !3912, file: !3, line: 148, type: !1740)
!3922 = !DILocalVariable(name: "entry", scope: !3923, file: !3, line: 150, type: !1731)
!3923 = distinct !DILexicalBlock(scope: !3924, file: !3, line: 149, column: 31)
!3924 = distinct !DILexicalBlock(scope: !3912, file: !3, line: 149, column: 6)
!3925 = !DILocalVariable(name: "p", scope: !3923, file: !3, line: 151, type: !6)
!3926 = !DILocation(line: 144, column: 47, scope: !3912)
!3927 = !DILocation(line: 144, column: 66, scope: !3912)
!3928 = !DILocation(line: 144, column: 76, scope: !3912)
!3929 = !DILocation(line: 145, column: 32, scope: !3912)
!3930 = !DILocation(line: 146, column: 25, scope: !3912)
!3931 = !DILocation(line: 148, column: 2, scope: !3912)
!3932 = !DILocation(line: 148, column: 9, scope: !3912)
!3933 = !DILocation(line: 148, column: 33, scope: !3912)
!3934 = !DILocation(line: 148, column: 38, scope: !3912)
!3935 = !DILocation(line: 148, column: 15, scope: !3912)
!3936 = !DILocation(line: 149, column: 24, scope: !3924)
!3937 = !DILocation(line: 149, column: 15, scope: !3924)
!3938 = !DILocation(line: 149, column: 6, scope: !3924)
!3939 = !DILocation(line: 149, column: 6, scope: !3912)
!3940 = !DILocation(line: 150, column: 3, scope: !3923)
!3941 = !DILocation(line: 150, column: 9, scope: !3923)
!3942 = !DILocation(line: 151, column: 3, scope: !3923)
!3943 = !DILocation(line: 151, column: 9, scope: !3923)
!3944 = !DILocation(line: 153, column: 8, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3923, file: !3, line: 153, column: 7)
!3946 = !DILocation(line: 153, column: 7, scope: !3923)
!3947 = !DILocation(line: 154, column: 43, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3945, file: !3, line: 153, column: 15)
!3949 = !DILocation(line: 154, column: 49, scope: !3948)
!3950 = !DILocation(line: 154, column: 8, scope: !3948)
!3951 = !DILocation(line: 154, column: 6, scope: !3948)
!3952 = !DILocation(line: 155, column: 9, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3948, file: !3, line: 155, column: 8)
!3954 = !DILocation(line: 155, column: 8, scope: !3948)
!3955 = !DILocation(line: 156, column: 5, scope: !3953)
!3956 = !DILocation(line: 157, column: 3, scope: !3948)
!3957 = !DILocation(line: 167, column: 13, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3945, file: !3, line: 157, column: 10)
!3959 = !DILocation(line: 167, column: 4, scope: !3958)
!3960 = !DILocation(line: 168, column: 8, scope: !3958)
!3961 = !DILocation(line: 168, column: 6, scope: !3958)
!3962 = !DILocation(line: 170, column: 11, scope: !3923)
!3963 = !DILocation(line: 170, column: 19, scope: !3923)
!3964 = !DILocation(line: 170, column: 27, scope: !3923)
!3965 = !DILocation(line: 170, column: 42, scope: !3923)
!3966 = !DILocation(line: 171, column: 3, scope: !3923)
!3967 = !DILocation(line: 172, column: 2, scope: !3924)
!3968 = !DILocation(line: 172, column: 2, scope: !3923)
!3969 = !DILocation(line: 173, column: 9, scope: !3912)
!3970 = !DILocation(line: 173, column: 2, scope: !3912)
!3971 = !DILocation(line: 174, column: 1, scope: !3912)
!3972 = distinct !DISubprogram(name: "pte_offset_kernel", scope: !3893, file: !3893, line: 92, type: !3973, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3975)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!1740, !1714, !7}
!3975 = !{!3976, !3977}
!3976 = !DILocalVariable(name: "pmd", arg: 1, scope: !3972, file: !3893, line: 92, type: !1714)
!3977 = !DILocalVariable(name: "address", arg: 2, scope: !3972, file: !3893, line: 92, type: !7)
!3978 = !DILocation(line: 92, column: 47, scope: !3972)
!3979 = !DILocation(line: 92, column: 66, scope: !3972)
!3980 = !DILocation(line: 94, column: 34, scope: !3972)
!3981 = !DILocation(line: 94, column: 18, scope: !3972)
!3982 = !DILocation(line: 94, column: 9, scope: !3972)
!3983 = !DILocation(line: 94, column: 51, scope: !3972)
!3984 = !DILocation(line: 94, column: 41, scope: !3972)
!3985 = !DILocation(line: 94, column: 39, scope: !3972)
!3986 = !DILocation(line: 94, column: 2, scope: !3972)
!3987 = distinct !DISubprogram(name: "pte_none", scope: !3874, file: !3874, line: 931, type: !3988, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3990)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!8, !1731}
!3990 = !{!3991}
!3991 = !DILocalVariable(name: "pte", arg: 1, scope: !3987, file: !3874, line: 931, type: !1731)
!3992 = !DILocation(line: 931, column: 34, scope: !3987)
!3993 = !DILocation(line: 933, column: 15, scope: !3987)
!3994 = !DILocation(line: 933, column: 19, scope: !3987)
!3995 = !DILocation(line: 933, column: 9, scope: !3987)
!3996 = !DILocation(line: 933, column: 2, scope: !3987)
!3997 = distinct !DISubprogram(name: "get_page", scope: !1677, file: !1677, line: 1451, type: !3446, scopeLine: 1452, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3998)
!3998 = !{!3999}
!3999 = !DILocalVariable(name: "page", arg: 1, scope: !3997, file: !1677, line: 1451, type: !145)
!4000 = !DILocation(line: 1451, column: 42, scope: !3997)
!4001 = !DILocation(line: 1453, column: 12, scope: !3997)
!4002 = !DILocation(line: 1453, column: 2, scope: !3997)
!4003 = !DILocation(line: 1454, column: 1, scope: !3997)
!4004 = distinct !DISubprogram(name: "pfn_pte", scope: !3874, file: !3874, line: 747, type: !4005, scopeLine: 748, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4007)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!1731, !7, !1643}
!4007 = !{!4008, !4009, !4010}
!4008 = !DILocalVariable(name: "page_nr", arg: 1, scope: !4004, file: !3874, line: 747, type: !7)
!4009 = !DILocalVariable(name: "pgprot", arg: 2, scope: !4004, file: !3874, line: 747, type: !1643)
!4010 = !DILocalVariable(name: "pfn", scope: !4004, file: !3874, line: 749, type: !139)
!4011 = !DILocation(line: 747, column: 43, scope: !4004)
!4012 = !DILocation(line: 747, column: 61, scope: !4004)
!4013 = !DILocation(line: 749, column: 2, scope: !4004)
!4014 = !DILocation(line: 749, column: 14, scope: !4004)
!4015 = !DILocation(line: 749, column: 33, scope: !4004)
!4016 = !DILocation(line: 749, column: 41, scope: !4004)
!4017 = !DILocation(line: 750, column: 23, scope: !4004)
!4018 = !DILocation(line: 750, column: 9, scope: !4004)
!4019 = !DILocation(line: 750, column: 6, scope: !4004)
!4020 = !DILocation(line: 751, column: 6, scope: !4004)
!4021 = !DILocation(line: 752, column: 9, scope: !4004)
!4022 = !DILocation(line: 753, column: 1, scope: !4004)
!4023 = distinct !DISubprogram(name: "set_ptes", scope: !3893, file: !3893, line: 231, type: !4024, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4026)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{null, !1161, !7, !1740, !1731, !13}
!4026 = !{!4027, !4028, !4029, !4030, !4031}
!4027 = !DILocalVariable(name: "mm", arg: 1, scope: !4023, file: !3893, line: 231, type: !1161)
!4028 = !DILocalVariable(name: "addr", arg: 2, scope: !4023, file: !3893, line: 231, type: !7)
!4029 = !DILocalVariable(name: "ptep", arg: 3, scope: !4023, file: !3893, line: 232, type: !1740)
!4030 = !DILocalVariable(name: "pte", arg: 4, scope: !4023, file: !3893, line: 232, type: !1731)
!4031 = !DILocalVariable(name: "nr", arg: 5, scope: !4023, file: !3893, line: 232, type: !13)
!4032 = !DILocation(line: 231, column: 47, scope: !4023)
!4033 = !DILocation(line: 231, column: 65, scope: !4023)
!4034 = !DILocation(line: 232, column: 10, scope: !4023)
!4035 = !DILocation(line: 232, column: 22, scope: !4023)
!4036 = !DILocation(line: 232, column: 40, scope: !4023)
!4037 = !DILocation(line: 234, column: 28, scope: !4023)
!4038 = !DILocation(line: 234, column: 32, scope: !4023)
!4039 = !DILocation(line: 234, column: 43, scope: !4023)
!4040 = !DILocation(line: 234, column: 2, scope: !4023)
!4041 = !DILocation(line: 236, column: 2, scope: !4023)
!4042 = !DILocation(line: 236, column: 2, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4023, file: !3893, line: 236, column: 2)
!4044 = !DILocation(line: 237, column: 2, scope: !4023)
!4045 = !DILocation(line: 238, column: 3, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4047, file: !3893, line: 237, column: 11)
!4047 = distinct !DILexicalBlock(scope: !4048, file: !3893, line: 237, column: 2)
!4048 = distinct !DILexicalBlock(scope: !4023, file: !3893, line: 237, column: 2)
!4049 = !DILocation(line: 239, column: 7, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4046, file: !3893, line: 239, column: 7)
!4051 = !DILocation(line: 239, column: 12, scope: !4050)
!4052 = !DILocation(line: 239, column: 7, scope: !4046)
!4053 = !DILocation(line: 240, column: 4, scope: !4050)
!4054 = !DILocation(line: 241, column: 7, scope: !4046)
!4055 = !DILocation(line: 242, column: 9, scope: !4046)
!4056 = !DILocation(line: 237, column: 2, scope: !4047)
!4057 = distinct !{!4057, !4058, !4059, !4060}
!4058 = !DILocation(line: 237, column: 2, scope: !4048)
!4059 = !DILocation(line: 243, column: 2, scope: !4048)
!4060 = !{!"llvm.loop.unroll.disable"}
!4061 = !DILocation(line: 244, column: 2, scope: !4023)
!4062 = !DILocation(line: 244, column: 2, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4023, file: !3893, line: 244, column: 2)
!4064 = !DILocation(line: 245, column: 1, scope: !4023)
!4065 = distinct !DISubprogram(name: "vmemmap_pmd_populate", scope: !3, file: !3, line: 187, type: !4066, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4068)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!1714, !1721, !7, !8}
!4068 = !{!4069, !4070, !4071, !4072, !4073}
!4069 = !DILocalVariable(name: "pud", arg: 1, scope: !4065, file: !3, line: 187, type: !1721)
!4070 = !DILocalVariable(name: "addr", arg: 2, scope: !4065, file: !3, line: 187, type: !7)
!4071 = !DILocalVariable(name: "node", arg: 3, scope: !4065, file: !3, line: 187, type: !8)
!4072 = !DILocalVariable(name: "pmd", scope: !4065, file: !3, line: 189, type: !1714)
!4073 = !DILocalVariable(name: "p", scope: !4074, file: !3, line: 191, type: !6)
!4074 = distinct !DILexicalBlock(scope: !4075, file: !3, line: 190, column: 22)
!4075 = distinct !DILexicalBlock(scope: !4065, file: !3, line: 190, column: 6)
!4076 = !DILocation(line: 187, column: 47, scope: !4065)
!4077 = !DILocation(line: 187, column: 66, scope: !4065)
!4078 = !DILocation(line: 187, column: 76, scope: !4065)
!4079 = !DILocation(line: 189, column: 2, scope: !4065)
!4080 = !DILocation(line: 189, column: 9, scope: !4065)
!4081 = !DILocation(line: 189, column: 26, scope: !4065)
!4082 = !DILocation(line: 189, column: 31, scope: !4065)
!4083 = !DILocation(line: 189, column: 15, scope: !4065)
!4084 = !DILocation(line: 190, column: 16, scope: !4075)
!4085 = !DILocation(line: 190, column: 6, scope: !4075)
!4086 = !DILocation(line: 190, column: 6, scope: !4065)
!4087 = !DILocation(line: 191, column: 3, scope: !4074)
!4088 = !DILocation(line: 191, column: 9, scope: !4074)
!4089 = !DILocation(line: 191, column: 49, scope: !4074)
!4090 = !DILocation(line: 191, column: 13, scope: !4074)
!4091 = !DILocation(line: 192, column: 8, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4074, file: !3, line: 192, column: 7)
!4093 = !DILocation(line: 192, column: 7, scope: !4074)
!4094 = !DILocation(line: 193, column: 4, scope: !4092)
!4095 = !DILocation(line: 194, column: 33, scope: !4074)
!4096 = !DILocation(line: 194, column: 38, scope: !4074)
!4097 = !DILocation(line: 194, column: 3, scope: !4074)
!4098 = !DILocation(line: 195, column: 2, scope: !4075)
!4099 = !DILocation(line: 195, column: 2, scope: !4074)
!4100 = !DILocation(line: 196, column: 9, scope: !4065)
!4101 = !DILocation(line: 196, column: 2, scope: !4065)
!4102 = !DILocation(line: 197, column: 1, scope: !4065)
!4103 = distinct !DISubprogram(name: "pmd_offset", scope: !3893, file: !3893, line: 121, type: !4104, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4106)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!1714, !1721, !7}
!4106 = !{!4107, !4108}
!4107 = !DILocalVariable(name: "pud", arg: 1, scope: !4103, file: !3893, line: 121, type: !1721)
!4108 = !DILocalVariable(name: "address", arg: 2, scope: !4103, file: !3893, line: 121, type: !7)
!4109 = !DILocation(line: 121, column: 40, scope: !4103)
!4110 = !DILocation(line: 121, column: 59, scope: !4103)
!4111 = !DILocation(line: 123, column: 22, scope: !4103)
!4112 = !DILocation(line: 123, column: 9, scope: !4103)
!4113 = !DILocation(line: 123, column: 39, scope: !4103)
!4114 = !DILocation(line: 123, column: 29, scope: !4103)
!4115 = !DILocation(line: 123, column: 27, scope: !4103)
!4116 = !DILocation(line: 123, column: 2, scope: !4103)
!4117 = distinct !DISubprogram(name: "pmd_none", scope: !3874, file: !3874, line: 1004, type: !4118, scopeLine: 1005, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4120)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!8, !1715}
!4120 = !{!4121, !4122}
!4121 = !DILocalVariable(name: "pmd", arg: 1, scope: !4117, file: !3874, line: 1004, type: !1715)
!4122 = !DILocalVariable(name: "val", scope: !4117, file: !3874, line: 1008, type: !7)
!4123 = !DILocation(line: 1004, column: 34, scope: !4117)
!4124 = !DILocation(line: 1008, column: 2, scope: !4117)
!4125 = !DILocation(line: 1008, column: 16, scope: !4117)
!4126 = !DILocation(line: 1008, column: 22, scope: !4117)
!4127 = !DILocation(line: 1009, column: 10, scope: !4117)
!4128 = !DILocation(line: 1009, column: 14, scope: !4117)
!4129 = !DILocation(line: 1009, column: 41, scope: !4117)
!4130 = !DILocation(line: 1010, column: 1, scope: !4117)
!4131 = !DILocation(line: 1009, column: 2, scope: !4117)
!4132 = distinct !DISubprogram(name: "vmemmap_alloc_block_zero", scope: !3, file: !3, line: 176, type: !4, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4133)
!4133 = !{!4134, !4135, !4136}
!4134 = !DILocalVariable(name: "size", arg: 1, scope: !4132, file: !3, line: 176, type: !7)
!4135 = !DILocalVariable(name: "node", arg: 2, scope: !4132, file: !3, line: 176, type: !8)
!4136 = !DILocalVariable(name: "p", scope: !4132, file: !3, line: 178, type: !6)
!4137 = !DILocation(line: 176, column: 64, scope: !4132)
!4138 = !DILocation(line: 176, column: 74, scope: !4132)
!4139 = !DILocation(line: 178, column: 2, scope: !4132)
!4140 = !DILocation(line: 178, column: 8, scope: !4132)
!4141 = !DILocation(line: 178, column: 32, scope: !4132)
!4142 = !DILocation(line: 178, column: 38, scope: !4132)
!4143 = !DILocation(line: 178, column: 12, scope: !4132)
!4144 = !DILocation(line: 180, column: 7, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 180, column: 6)
!4146 = !DILocation(line: 180, column: 6, scope: !4132)
!4147 = !DILocation(line: 181, column: 3, scope: !4145)
!4148 = !DILocation(line: 182, column: 9, scope: !4132)
!4149 = !DILocation(line: 182, column: 15, scope: !4132)
!4150 = !DILocation(line: 182, column: 2, scope: !4132)
!4151 = !DILocation(line: 184, column: 9, scope: !4132)
!4152 = !DILocation(line: 184, column: 2, scope: !4132)
!4153 = !DILocation(line: 185, column: 1, scope: !4132)
!4154 = distinct !DISubprogram(name: "pmd_populate_kernel", scope: !4155, file: !4155, line: 64, type: !4156, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4158)
!4155 = !DIFile(filename: "./arch/x86/include/asm/pgalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "93a43353e04f697ff6ff74bd20375be3")
!4156 = !DISubroutineType(types: !4157)
!4157 = !{null, !1161, !1714, !1740}
!4158 = !{!4159, !4160, !4161}
!4159 = !DILocalVariable(name: "mm", arg: 1, scope: !4154, file: !4155, line: 64, type: !1161)
!4160 = !DILocalVariable(name: "pmd", arg: 2, scope: !4154, file: !4155, line: 65, type: !1714)
!4161 = !DILocalVariable(name: "pte", arg: 3, scope: !4154, file: !4155, line: 65, type: !1740)
!4162 = !DILocation(line: 64, column: 58, scope: !4154)
!4163 = !DILocation(line: 65, column: 19, scope: !4154)
!4164 = !DILocation(line: 65, column: 31, scope: !4154)
!4165 = !DILocation(line: 67, column: 21, scope: !4154)
!4166 = !DILocation(line: 67, column: 25, scope: !4154)
!4167 = !DILocation(line: 67, column: 35, scope: !4154)
!4168 = !DILocation(line: 67, column: 2, scope: !4154)
!4169 = !DILocation(line: 68, column: 2, scope: !4154)
!4170 = !DILocation(line: 69, column: 1, scope: !4154)
!4171 = distinct !DISubprogram(name: "pmd_init", scope: !3, file: !3, line: 199, type: !3037, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4172)
!4172 = !{!4173}
!4173 = !DILocalVariable(name: "addr", arg: 1, scope: !4171, file: !3, line: 199, type: !6)
!4174 = !DILocation(line: 199, column: 38, scope: !4171)
!4175 = !DILocation(line: 201, column: 1, scope: !4171)
!4176 = distinct !DISubprogram(name: "vmemmap_pud_populate", scope: !3, file: !3, line: 203, type: !4177, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4179)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!1721, !3497, !7, !8}
!4179 = !{!4180, !4181, !4182, !4183, !4184}
!4180 = !DILocalVariable(name: "p4d", arg: 1, scope: !4176, file: !3, line: 203, type: !3497)
!4181 = !DILocalVariable(name: "addr", arg: 2, scope: !4176, file: !3, line: 203, type: !7)
!4182 = !DILocalVariable(name: "node", arg: 3, scope: !4176, file: !3, line: 203, type: !8)
!4183 = !DILocalVariable(name: "pud", scope: !4176, file: !3, line: 205, type: !1721)
!4184 = !DILocalVariable(name: "p", scope: !4185, file: !3, line: 207, type: !6)
!4185 = distinct !DILexicalBlock(scope: !4186, file: !3, line: 206, column: 22)
!4186 = distinct !DILexicalBlock(scope: !4176, file: !3, line: 206, column: 6)
!4187 = !DILocation(line: 203, column: 47, scope: !4176)
!4188 = !DILocation(line: 203, column: 66, scope: !4176)
!4189 = !DILocation(line: 203, column: 76, scope: !4176)
!4190 = !DILocation(line: 205, column: 2, scope: !4176)
!4191 = !DILocation(line: 205, column: 9, scope: !4176)
!4192 = !DILocation(line: 205, column: 26, scope: !4176)
!4193 = !DILocation(line: 205, column: 31, scope: !4176)
!4194 = !DILocation(line: 205, column: 15, scope: !4176)
!4195 = !DILocation(line: 206, column: 16, scope: !4186)
!4196 = !DILocation(line: 206, column: 6, scope: !4186)
!4197 = !DILocation(line: 206, column: 6, scope: !4176)
!4198 = !DILocation(line: 207, column: 3, scope: !4185)
!4199 = !DILocation(line: 207, column: 9, scope: !4185)
!4200 = !DILocation(line: 207, column: 49, scope: !4185)
!4201 = !DILocation(line: 207, column: 13, scope: !4185)
!4202 = !DILocation(line: 208, column: 8, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 208, column: 7)
!4204 = !DILocation(line: 208, column: 7, scope: !4185)
!4205 = !DILocation(line: 209, column: 4, scope: !4203)
!4206 = !DILocation(line: 210, column: 12, scope: !4185)
!4207 = !DILocation(line: 210, column: 3, scope: !4185)
!4208 = !DILocation(line: 211, column: 26, scope: !4185)
!4209 = !DILocation(line: 211, column: 31, scope: !4185)
!4210 = !DILocation(line: 211, column: 3, scope: !4185)
!4211 = !DILocation(line: 212, column: 2, scope: !4186)
!4212 = !DILocation(line: 212, column: 2, scope: !4185)
!4213 = !DILocation(line: 213, column: 9, scope: !4176)
!4214 = !DILocation(line: 213, column: 2, scope: !4176)
!4215 = !DILocation(line: 214, column: 1, scope: !4176)
!4216 = distinct !DISubprogram(name: "pud_offset", scope: !3893, file: !3893, line: 129, type: !4217, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4219)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!1721, !3497, !7}
!4219 = !{!4220, !4221}
!4220 = !DILocalVariable(name: "p4d", arg: 1, scope: !4216, file: !3893, line: 129, type: !3497)
!4221 = !DILocalVariable(name: "address", arg: 2, scope: !4216, file: !3893, line: 129, type: !7)
!4222 = !DILocation(line: 129, column: 40, scope: !4216)
!4223 = !DILocation(line: 129, column: 59, scope: !4216)
!4224 = !DILocation(line: 131, column: 22, scope: !4216)
!4225 = !DILocation(line: 131, column: 9, scope: !4216)
!4226 = !DILocation(line: 131, column: 39, scope: !4216)
!4227 = !DILocation(line: 131, column: 29, scope: !4216)
!4228 = !DILocation(line: 131, column: 27, scope: !4216)
!4229 = !DILocation(line: 131, column: 2, scope: !4216)
!4230 = distinct !DISubprogram(name: "pud_none", scope: !3874, file: !3874, line: 1051, type: !4231, scopeLine: 1052, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4233)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!8, !1722}
!4233 = !{!4234}
!4234 = !DILocalVariable(name: "pud", arg: 1, scope: !4230, file: !3874, line: 1051, type: !1722)
!4235 = !DILocation(line: 1051, column: 34, scope: !4230)
!4236 = !DILocation(line: 1053, column: 10, scope: !4230)
!4237 = !DILocation(line: 1053, column: 30, scope: !4230)
!4238 = !DILocation(line: 1053, column: 59, scope: !4230)
!4239 = !DILocation(line: 1053, column: 2, scope: !4230)
!4240 = distinct !DISubprogram(name: "pud_populate", scope: !4155, file: !4155, line: 99, type: !4241, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4243)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{null, !1161, !1721, !1714}
!4243 = !{!4244, !4245, !4246}
!4244 = !DILocalVariable(name: "mm", arg: 1, scope: !4240, file: !4155, line: 99, type: !1161)
!4245 = !DILocalVariable(name: "pud", arg: 2, scope: !4240, file: !4155, line: 99, type: !1721)
!4246 = !DILocalVariable(name: "pmd", arg: 3, scope: !4240, file: !4155, line: 99, type: !1714)
!4247 = !DILocation(line: 99, column: 51, scope: !4240)
!4248 = !DILocation(line: 99, column: 62, scope: !4240)
!4249 = !DILocation(line: 99, column: 74, scope: !4240)
!4250 = !DILocation(line: 101, column: 21, scope: !4240)
!4251 = !DILocation(line: 101, column: 25, scope: !4240)
!4252 = !DILocation(line: 101, column: 35, scope: !4240)
!4253 = !DILocation(line: 101, column: 2, scope: !4240)
!4254 = !DILocation(line: 102, column: 2, scope: !4240)
!4255 = !DILocation(line: 103, column: 1, scope: !4240)
!4256 = distinct !DISubprogram(name: "pud_init", scope: !3, file: !3, line: 216, type: !3037, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4257)
!4257 = !{!4258}
!4258 = !DILocalVariable(name: "addr", arg: 1, scope: !4256, file: !3, line: 216, type: !6)
!4259 = !DILocation(line: 216, column: 38, scope: !4256)
!4260 = !DILocation(line: 218, column: 1, scope: !4256)
!4261 = distinct !DISubprogram(name: "vmemmap_p4d_populate", scope: !3, file: !3, line: 220, type: !4262, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4264)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!3497, !1882, !7, !8}
!4264 = !{!4265, !4266, !4267, !4268, !4269}
!4265 = !DILocalVariable(name: "pgd", arg: 1, scope: !4261, file: !3, line: 220, type: !1882)
!4266 = !DILocalVariable(name: "addr", arg: 2, scope: !4261, file: !3, line: 220, type: !7)
!4267 = !DILocalVariable(name: "node", arg: 3, scope: !4261, file: !3, line: 220, type: !8)
!4268 = !DILocalVariable(name: "p4d", scope: !4261, file: !3, line: 222, type: !3497)
!4269 = !DILocalVariable(name: "p", scope: !4270, file: !3, line: 224, type: !6)
!4270 = distinct !DILexicalBlock(scope: !4271, file: !3, line: 223, column: 22)
!4271 = distinct !DILexicalBlock(scope: !4261, file: !3, line: 223, column: 6)
!4272 = !DILocation(line: 220, column: 47, scope: !4261)
!4273 = !DILocation(line: 220, column: 66, scope: !4261)
!4274 = !DILocation(line: 220, column: 76, scope: !4261)
!4275 = !DILocation(line: 222, column: 2, scope: !4261)
!4276 = !DILocation(line: 222, column: 9, scope: !4261)
!4277 = !DILocation(line: 222, column: 26, scope: !4261)
!4278 = !DILocation(line: 222, column: 31, scope: !4261)
!4279 = !DILocation(line: 222, column: 15, scope: !4261)
!4280 = !DILocation(line: 223, column: 16, scope: !4271)
!4281 = !DILocation(line: 223, column: 6, scope: !4271)
!4282 = !DILocation(line: 223, column: 6, scope: !4261)
!4283 = !DILocation(line: 224, column: 3, scope: !4270)
!4284 = !DILocation(line: 224, column: 9, scope: !4270)
!4285 = !DILocation(line: 224, column: 49, scope: !4270)
!4286 = !DILocation(line: 224, column: 13, scope: !4270)
!4287 = !DILocation(line: 225, column: 8, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 225, column: 7)
!4289 = !DILocation(line: 225, column: 7, scope: !4270)
!4290 = !DILocation(line: 226, column: 4, scope: !4288)
!4291 = !DILocation(line: 227, column: 12, scope: !4270)
!4292 = !DILocation(line: 227, column: 3, scope: !4270)
!4293 = !DILocation(line: 228, column: 26, scope: !4270)
!4294 = !DILocation(line: 228, column: 31, scope: !4270)
!4295 = !DILocation(line: 228, column: 3, scope: !4270)
!4296 = !DILocation(line: 229, column: 2, scope: !4271)
!4297 = !DILocation(line: 229, column: 2, scope: !4270)
!4298 = !DILocation(line: 230, column: 9, scope: !4261)
!4299 = !DILocation(line: 230, column: 2, scope: !4261)
!4300 = !DILocation(line: 231, column: 1, scope: !4261)
!4301 = distinct !DISubprogram(name: "p4d_offset", scope: !3874, file: !3874, line: 1149, type: !4302, scopeLine: 1150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4304)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!3497, !1882, !7}
!4304 = !{!4305, !4306}
!4305 = !DILocalVariable(name: "pgd", arg: 1, scope: !4301, file: !3874, line: 1149, type: !1882)
!4306 = !DILocalVariable(name: "address", arg: 2, scope: !4301, file: !3874, line: 1149, type: !7)
!4307 = !DILocation(line: 1149, column: 40, scope: !4301)
!4308 = !DILocation(line: 1149, column: 59, scope: !4301)
!4309 = !DILocation(line: 1151, column: 6, scope: !4301)
!4310 = !DILocation(line: 1151, column: 7, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4301, file: !3874, line: 1151, column: 6)
!4312 = !DILocation(line: 1152, column: 19, scope: !4311)
!4313 = !DILocation(line: 1152, column: 3, scope: !4311)
!4314 = !DILocation(line: 1153, column: 34, scope: !4301)
!4315 = !DILocation(line: 1153, column: 18, scope: !4301)
!4316 = !DILocation(line: 1153, column: 9, scope: !4301)
!4317 = !DILocation(line: 1153, column: 51, scope: !4301)
!4318 = !DILocation(line: 1153, column: 41, scope: !4301)
!4319 = !DILocation(line: 1153, column: 39, scope: !4301)
!4320 = !DILocation(line: 1153, column: 2, scope: !4301)
!4321 = !DILocation(line: 1154, column: 1, scope: !4301)
!4322 = distinct !DISubprogram(name: "p4d_none", scope: !3874, file: !3874, line: 1092, type: !4323, scopeLine: 1093, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4325)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!8, !3498}
!4325 = !{!4326}
!4326 = !DILocalVariable(name: "p4d", arg: 1, scope: !4322, file: !3874, line: 1092, type: !3498)
!4327 = !DILocation(line: 1092, column: 34, scope: !4322)
!4328 = !DILocation(line: 1094, column: 10, scope: !4322)
!4329 = !DILocation(line: 1094, column: 30, scope: !4322)
!4330 = !DILocation(line: 1094, column: 59, scope: !4322)
!4331 = !DILocation(line: 1094, column: 2, scope: !4322)
!4332 = distinct !DISubprogram(name: "p4d_populate", scope: !4155, file: !4155, line: 113, type: !4333, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4335)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{null, !1161, !3497, !1721}
!4335 = !{!4336, !4337, !4338}
!4336 = !DILocalVariable(name: "mm", arg: 1, scope: !4332, file: !4155, line: 113, type: !1161)
!4337 = !DILocalVariable(name: "p4d", arg: 2, scope: !4332, file: !4155, line: 113, type: !3497)
!4338 = !DILocalVariable(name: "pud", arg: 3, scope: !4332, file: !4155, line: 113, type: !1721)
!4339 = !DILocation(line: 113, column: 51, scope: !4332)
!4340 = !DILocation(line: 113, column: 62, scope: !4332)
!4341 = !DILocation(line: 113, column: 74, scope: !4332)
!4342 = !DILocation(line: 115, column: 21, scope: !4332)
!4343 = !DILocation(line: 115, column: 25, scope: !4332)
!4344 = !DILocation(line: 115, column: 35, scope: !4332)
!4345 = !DILocation(line: 115, column: 2, scope: !4332)
!4346 = !DILocation(line: 116, column: 2, scope: !4332)
!4347 = !DILocation(line: 117, column: 1, scope: !4332)
!4348 = distinct !DISubprogram(name: "vmemmap_pgd_populate", scope: !3, file: !3, line: 233, type: !4349, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4351)
!4349 = !DISubroutineType(types: !4350)
!4350 = !{!1882, !7, !8}
!4351 = !{!4352, !4353, !4354, !4355}
!4352 = !DILocalVariable(name: "addr", arg: 1, scope: !4348, file: !3, line: 233, type: !7)
!4353 = !DILocalVariable(name: "node", arg: 2, scope: !4348, file: !3, line: 233, type: !8)
!4354 = !DILocalVariable(name: "pgd", scope: !4348, file: !3, line: 235, type: !1882)
!4355 = !DILocalVariable(name: "p", scope: !4356, file: !3, line: 237, type: !6)
!4356 = distinct !DILexicalBlock(scope: !4357, file: !3, line: 236, column: 22)
!4357 = distinct !DILexicalBlock(scope: !4348, file: !3, line: 236, column: 6)
!4358 = !DILocation(line: 233, column: 54, scope: !4348)
!4359 = !DILocation(line: 233, column: 64, scope: !4348)
!4360 = !DILocation(line: 235, column: 2, scope: !4348)
!4361 = !DILocation(line: 235, column: 9, scope: !4348)
!4362 = !DILocation(line: 235, column: 15, scope: !4348)
!4363 = !DILocation(line: 236, column: 16, scope: !4357)
!4364 = !DILocation(line: 236, column: 6, scope: !4357)
!4365 = !DILocation(line: 236, column: 6, scope: !4348)
!4366 = !DILocation(line: 237, column: 3, scope: !4356)
!4367 = !DILocation(line: 237, column: 9, scope: !4356)
!4368 = !DILocation(line: 237, column: 49, scope: !4356)
!4369 = !DILocation(line: 237, column: 13, scope: !4356)
!4370 = !DILocation(line: 238, column: 8, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4356, file: !3, line: 238, column: 7)
!4372 = !DILocation(line: 238, column: 7, scope: !4356)
!4373 = !DILocation(line: 239, column: 4, scope: !4371)
!4374 = !DILocation(line: 240, column: 26, scope: !4356)
!4375 = !DILocation(line: 240, column: 31, scope: !4356)
!4376 = !DILocation(line: 240, column: 3, scope: !4356)
!4377 = !DILocation(line: 241, column: 2, scope: !4357)
!4378 = !DILocation(line: 241, column: 2, scope: !4356)
!4379 = !DILocation(line: 242, column: 9, scope: !4348)
!4380 = !DILocation(line: 242, column: 2, scope: !4348)
!4381 = !DILocation(line: 243, column: 1, scope: !4348)
!4382 = distinct !DISubprogram(name: "pgd_offset_pgd", scope: !3893, file: !3893, line: 136, type: !4383, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4385)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!1882, !1882, !7}
!4385 = !{!4386, !4387}
!4386 = !DILocalVariable(name: "pgd", arg: 1, scope: !4382, file: !3893, line: 136, type: !1882)
!4387 = !DILocalVariable(name: "address", arg: 2, scope: !4382, file: !3893, line: 136, type: !7)
!4388 = !DILocation(line: 136, column: 44, scope: !4382)
!4389 = !DILocation(line: 136, column: 63, scope: !4382)
!4390 = !DILocation(line: 138, column: 10, scope: !4382)
!4391 = !DILocation(line: 138, column: 16, scope: !4382)
!4392 = !DILocation(line: 138, column: 14, scope: !4382)
!4393 = !DILocation(line: 138, column: 2, scope: !4382)
!4394 = distinct !DISubprogram(name: "pgd_none", scope: !3874, file: !3874, line: 1169, type: !4395, scopeLine: 1170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4397)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{!8, !1883}
!4397 = !{!4398}
!4398 = !DILocalVariable(name: "pgd", arg: 1, scope: !4394, file: !3874, line: 1169, type: !1883)
!4399 = !DILocation(line: 1169, column: 34, scope: !4394)
!4400 = !DILocation(line: 1171, column: 6, scope: !4394)
!4401 = !DILocation(line: 1171, column: 7, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4394, file: !3874, line: 1171, column: 6)
!4403 = !DILocation(line: 1172, column: 3, scope: !4402)
!4404 = !DILocation(line: 1179, column: 10, scope: !4394)
!4405 = !DILocation(line: 1179, column: 9, scope: !4394)
!4406 = !DILocation(line: 1179, column: 2, scope: !4394)
!4407 = !DILocation(line: 1180, column: 1, scope: !4394)
!4408 = distinct !DISubprogram(name: "pgd_populate", scope: !4155, file: !4155, line: 134, type: !4409, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4411)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{null, !1161, !1882, !3497}
!4411 = !{!4412, !4413, !4414}
!4412 = !DILocalVariable(name: "mm", arg: 1, scope: !4408, file: !4155, line: 134, type: !1161)
!4413 = !DILocalVariable(name: "pgd", arg: 2, scope: !4408, file: !4155, line: 134, type: !1882)
!4414 = !DILocalVariable(name: "p4d", arg: 3, scope: !4408, file: !4155, line: 134, type: !3497)
!4415 = !DILocation(line: 134, column: 51, scope: !4408)
!4416 = !DILocation(line: 134, column: 62, scope: !4408)
!4417 = !DILocation(line: 134, column: 74, scope: !4408)
!4418 = !DILocation(line: 136, column: 6, scope: !4408)
!4419 = !DILocation(line: 136, column: 7, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4408, file: !4155, line: 136, column: 6)
!4421 = !DILocation(line: 137, column: 3, scope: !4420)
!4422 = !DILocation(line: 138, column: 21, scope: !4408)
!4423 = !DILocation(line: 138, column: 25, scope: !4408)
!4424 = !DILocation(line: 138, column: 35, scope: !4408)
!4425 = !DILocation(line: 138, column: 2, scope: !4408)
!4426 = !DILocation(line: 139, column: 2, scope: !4408)
!4427 = !DILocation(line: 140, column: 1, scope: !4408)
!4428 = distinct !DISubprogram(name: "vmemmap_populate_basepages", scope: !3, file: !3, line: 292, type: !4429, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4431)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!8, !7, !7, !8, !3548}
!4431 = !{!4432, !4433, !4434, !4435}
!4432 = !DILocalVariable(name: "start", arg: 1, scope: !4428, file: !3, line: 292, type: !7)
!4433 = !DILocalVariable(name: "end", arg: 2, scope: !4428, file: !3, line: 292, type: !7)
!4434 = !DILocalVariable(name: "node", arg: 3, scope: !4428, file: !3, line: 293, type: !8)
!4435 = !DILocalVariable(name: "altmap", arg: 4, scope: !4428, file: !3, line: 293, type: !3548)
!4436 = !DILocation(line: 292, column: 56, scope: !4428)
!4437 = !DILocation(line: 292, column: 77, scope: !4428)
!4438 = !DILocation(line: 293, column: 11, scope: !4428)
!4439 = !DILocation(line: 293, column: 37, scope: !4428)
!4440 = !DILocation(line: 295, column: 32, scope: !4428)
!4441 = !DILocation(line: 295, column: 39, scope: !4428)
!4442 = !DILocation(line: 295, column: 44, scope: !4428)
!4443 = !DILocation(line: 295, column: 50, scope: !4428)
!4444 = !DILocation(line: 295, column: 9, scope: !4428)
!4445 = !DILocation(line: 295, column: 2, scope: !4428)
!4446 = distinct !DISubprogram(name: "vmemmap_populate_range", scope: !3, file: !3, line: 275, type: !4447, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4449)
!4447 = !DISubroutineType(types: !4448)
!4448 = !{!8, !7, !7, !8, !3548, !145}
!4449 = !{!4450, !4451, !4452, !4453, !4454, !4455, !4456}
!4450 = !DILocalVariable(name: "start", arg: 1, scope: !4446, file: !3, line: 275, type: !7)
!4451 = !DILocalVariable(name: "end", arg: 2, scope: !4446, file: !3, line: 276, type: !7)
!4452 = !DILocalVariable(name: "node", arg: 3, scope: !4446, file: !3, line: 276, type: !8)
!4453 = !DILocalVariable(name: "altmap", arg: 4, scope: !4446, file: !3, line: 277, type: !3548)
!4454 = !DILocalVariable(name: "reuse", arg: 5, scope: !4446, file: !3, line: 278, type: !145)
!4455 = !DILocalVariable(name: "addr", scope: !4446, file: !3, line: 280, type: !7)
!4456 = !DILocalVariable(name: "pte", scope: !4446, file: !3, line: 281, type: !1740)
!4457 = !DILocation(line: 275, column: 59, scope: !4446)
!4458 = !DILocation(line: 276, column: 24, scope: !4446)
!4459 = !DILocation(line: 276, column: 33, scope: !4446)
!4460 = !DILocation(line: 277, column: 30, scope: !4446)
!4461 = !DILocation(line: 278, column: 23, scope: !4446)
!4462 = !DILocation(line: 280, column: 2, scope: !4446)
!4463 = !DILocation(line: 280, column: 16, scope: !4446)
!4464 = !DILocation(line: 280, column: 23, scope: !4446)
!4465 = !DILocation(line: 281, column: 2, scope: !4446)
!4466 = !DILocation(line: 281, column: 9, scope: !4446)
!4467 = !DILocation(line: 283, column: 2, scope: !4446)
!4468 = !DILocation(line: 283, column: 9, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4470, file: !3, line: 283, column: 2)
!4470 = distinct !DILexicalBlock(scope: !4446, file: !3, line: 283, column: 2)
!4471 = !DILocation(line: 283, column: 16, scope: !4469)
!4472 = !DILocation(line: 283, column: 14, scope: !4469)
!4473 = !DILocation(line: 283, column: 2, scope: !4470)
!4474 = !DILocation(line: 284, column: 34, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4469, file: !3, line: 283, column: 40)
!4476 = !DILocation(line: 284, column: 40, scope: !4475)
!4477 = !DILocation(line: 284, column: 46, scope: !4475)
!4478 = !DILocation(line: 284, column: 54, scope: !4475)
!4479 = !DILocation(line: 284, column: 9, scope: !4475)
!4480 = !DILocation(line: 284, column: 7, scope: !4475)
!4481 = !DILocation(line: 285, column: 8, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4475, file: !3, line: 285, column: 7)
!4483 = !DILocation(line: 285, column: 7, scope: !4475)
!4484 = !DILocation(line: 286, column: 4, scope: !4482)
!4485 = !DILocation(line: 287, column: 2, scope: !4475)
!4486 = !DILocation(line: 283, column: 26, scope: !4469)
!4487 = !DILocation(line: 283, column: 2, scope: !4469)
!4488 = distinct !{!4488, !4473, !4489, !4490, !4060}
!4489 = !DILocation(line: 287, column: 2, scope: !4470)
!4490 = !{!"llvm.loop.mustprogress"}
!4491 = !DILocation(line: 289, column: 2, scope: !4446)
!4492 = !DILocation(line: 290, column: 1, scope: !4446)
!4493 = distinct !DISubprogram(name: "vmemmap_set_pmd", scope: !3, file: !3, line: 298, type: !4494, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4496)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{null, !1714, !6, !8, !7, !7}
!4496 = !{!4497, !4498, !4499, !4500, !4501}
!4497 = !DILocalVariable(name: "pmd", arg: 1, scope: !4493, file: !3, line: 298, type: !1714)
!4498 = !DILocalVariable(name: "p", arg: 2, scope: !4493, file: !3, line: 298, type: !6)
!4499 = !DILocalVariable(name: "node", arg: 3, scope: !4493, file: !3, line: 298, type: !8)
!4500 = !DILocalVariable(name: "addr", arg: 4, scope: !4493, file: !3, line: 299, type: !7)
!4501 = !DILocalVariable(name: "next", arg: 5, scope: !4493, file: !3, line: 299, type: !7)
!4502 = !DILocation(line: 298, column: 46, scope: !4493)
!4503 = !DILocation(line: 298, column: 57, scope: !4493)
!4504 = !DILocation(line: 298, column: 64, scope: !4493)
!4505 = !DILocation(line: 299, column: 25, scope: !4493)
!4506 = !DILocation(line: 299, column: 45, scope: !4493)
!4507 = !DILocation(line: 301, column: 1, scope: !4493)
!4508 = distinct !DISubprogram(name: "vmemmap_check_pmd", scope: !3, file: !3, line: 303, type: !4509, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4511)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!8, !1714, !8, !7, !7}
!4511 = !{!4512, !4513, !4514, !4515}
!4512 = !DILocalVariable(name: "pmd", arg: 1, scope: !4508, file: !3, line: 303, type: !1714)
!4513 = !DILocalVariable(name: "node", arg: 2, scope: !4508, file: !3, line: 303, type: !8)
!4514 = !DILocalVariable(name: "addr", arg: 3, scope: !4508, file: !3, line: 304, type: !7)
!4515 = !DILocalVariable(name: "next", arg: 4, scope: !4508, file: !3, line: 304, type: !7)
!4516 = !DILocation(line: 303, column: 47, scope: !4508)
!4517 = !DILocation(line: 303, column: 56, scope: !4508)
!4518 = !DILocation(line: 304, column: 26, scope: !4508)
!4519 = !DILocation(line: 304, column: 46, scope: !4508)
!4520 = !DILocation(line: 306, column: 2, scope: !4508)
!4521 = distinct !DISubprogram(name: "vmemmap_populate_hugepages", scope: !3, file: !3, line: 309, type: !4429, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4522)
!4522 = !{!4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4538}
!4523 = !DILocalVariable(name: "start", arg: 1, scope: !4521, file: !3, line: 309, type: !7)
!4524 = !DILocalVariable(name: "end", arg: 2, scope: !4521, file: !3, line: 309, type: !7)
!4525 = !DILocalVariable(name: "node", arg: 3, scope: !4521, file: !3, line: 310, type: !8)
!4526 = !DILocalVariable(name: "altmap", arg: 4, scope: !4521, file: !3, line: 310, type: !3548)
!4527 = !DILocalVariable(name: "addr", scope: !4521, file: !3, line: 312, type: !7)
!4528 = !DILocalVariable(name: "next", scope: !4521, file: !3, line: 313, type: !7)
!4529 = !DILocalVariable(name: "pgd", scope: !4521, file: !3, line: 314, type: !1882)
!4530 = !DILocalVariable(name: "p4d", scope: !4521, file: !3, line: 315, type: !3497)
!4531 = !DILocalVariable(name: "pud", scope: !4521, file: !3, line: 316, type: !1721)
!4532 = !DILocalVariable(name: "pmd", scope: !4521, file: !3, line: 317, type: !1714)
!4533 = !DILocalVariable(name: "__boundary", scope: !4534, file: !3, line: 320, type: !7)
!4534 = distinct !DILexicalBlock(scope: !4535, file: !3, line: 320, column: 10)
!4535 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 319, column: 46)
!4536 = distinct !DILexicalBlock(scope: !4537, file: !3, line: 319, column: 2)
!4537 = distinct !DILexicalBlock(scope: !4521, file: !3, line: 319, column: 2)
!4538 = !DILocalVariable(name: "p", scope: !4539, file: !3, line: 336, type: !6)
!4539 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 335, column: 34)
!4540 = distinct !DILexicalBlock(scope: !4535, file: !3, line: 335, column: 7)
!4541 = !DILocation(line: 309, column: 56, scope: !4521)
!4542 = !DILocation(line: 309, column: 77, scope: !4521)
!4543 = !DILocation(line: 310, column: 11, scope: !4521)
!4544 = !DILocation(line: 310, column: 37, scope: !4521)
!4545 = !DILocation(line: 312, column: 2, scope: !4521)
!4546 = !DILocation(line: 312, column: 16, scope: !4521)
!4547 = !DILocation(line: 313, column: 2, scope: !4521)
!4548 = !DILocation(line: 313, column: 16, scope: !4521)
!4549 = !DILocation(line: 314, column: 2, scope: !4521)
!4550 = !DILocation(line: 314, column: 9, scope: !4521)
!4551 = !DILocation(line: 315, column: 2, scope: !4521)
!4552 = !DILocation(line: 315, column: 9, scope: !4521)
!4553 = !DILocation(line: 316, column: 2, scope: !4521)
!4554 = !DILocation(line: 316, column: 9, scope: !4521)
!4555 = !DILocation(line: 317, column: 2, scope: !4521)
!4556 = !DILocation(line: 317, column: 9, scope: !4521)
!4557 = !DILocation(line: 319, column: 14, scope: !4537)
!4558 = !DILocation(line: 319, column: 12, scope: !4537)
!4559 = !DILocation(line: 319, column: 7, scope: !4537)
!4560 = !DILocation(line: 319, column: 21, scope: !4536)
!4561 = !DILocation(line: 319, column: 28, scope: !4536)
!4562 = !DILocation(line: 319, column: 26, scope: !4536)
!4563 = !DILocation(line: 319, column: 2, scope: !4537)
!4564 = !DILocation(line: 320, column: 10, scope: !4534)
!4565 = !DILocation(line: 320, column: 10, scope: !4535)
!4566 = !DILocation(line: 320, column: 8, scope: !4535)
!4567 = !DILocation(line: 322, column: 30, scope: !4535)
!4568 = !DILocation(line: 322, column: 36, scope: !4535)
!4569 = !DILocation(line: 322, column: 9, scope: !4535)
!4570 = !DILocation(line: 322, column: 7, scope: !4535)
!4571 = !DILocation(line: 323, column: 8, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4535, file: !3, line: 323, column: 7)
!4573 = !DILocation(line: 323, column: 7, scope: !4535)
!4574 = !DILocation(line: 324, column: 4, scope: !4572)
!4575 = !DILocation(line: 326, column: 30, scope: !4535)
!4576 = !DILocation(line: 326, column: 35, scope: !4535)
!4577 = !DILocation(line: 326, column: 41, scope: !4535)
!4578 = !DILocation(line: 326, column: 9, scope: !4535)
!4579 = !DILocation(line: 326, column: 7, scope: !4535)
!4580 = !DILocation(line: 327, column: 8, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4535, file: !3, line: 327, column: 7)
!4582 = !DILocation(line: 327, column: 7, scope: !4535)
!4583 = !DILocation(line: 328, column: 4, scope: !4581)
!4584 = !DILocation(line: 330, column: 30, scope: !4535)
!4585 = !DILocation(line: 330, column: 35, scope: !4535)
!4586 = !DILocation(line: 330, column: 41, scope: !4535)
!4587 = !DILocation(line: 330, column: 9, scope: !4535)
!4588 = !DILocation(line: 330, column: 7, scope: !4535)
!4589 = !DILocation(line: 331, column: 8, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4535, file: !3, line: 331, column: 7)
!4591 = !DILocation(line: 331, column: 7, scope: !4535)
!4592 = !DILocation(line: 332, column: 4, scope: !4590)
!4593 = !DILocation(line: 334, column: 20, scope: !4535)
!4594 = !DILocation(line: 334, column: 25, scope: !4535)
!4595 = !DILocation(line: 334, column: 9, scope: !4535)
!4596 = !DILocation(line: 334, column: 7, scope: !4535)
!4597 = !DILocation(line: 335, column: 16, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 335, column: 16)
!4599 = !DILocation(line: 335, column: 16, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4598, file: !3, line: 335, column: 16)
!4601 = !DILocation(line: 335, column: 7, scope: !4540)
!4602 = !DILocation(line: 335, column: 7, scope: !4535)
!4603 = !DILocation(line: 336, column: 4, scope: !4539)
!4604 = !DILocation(line: 336, column: 10, scope: !4539)
!4605 = !DILocation(line: 338, column: 42, scope: !4539)
!4606 = !DILocation(line: 338, column: 48, scope: !4539)
!4607 = !DILocation(line: 338, column: 8, scope: !4539)
!4608 = !DILocation(line: 338, column: 6, scope: !4539)
!4609 = !DILocation(line: 339, column: 8, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4539, file: !3, line: 339, column: 8)
!4611 = !DILocation(line: 339, column: 8, scope: !4539)
!4612 = !DILocation(line: 340, column: 21, scope: !4613)
!4613 = distinct !DILexicalBlock(scope: !4610, file: !3, line: 339, column: 11)
!4614 = !DILocation(line: 340, column: 26, scope: !4613)
!4615 = !DILocation(line: 340, column: 29, scope: !4613)
!4616 = !DILocation(line: 340, column: 35, scope: !4613)
!4617 = !DILocation(line: 340, column: 41, scope: !4613)
!4618 = !DILocation(line: 340, column: 5, scope: !4613)
!4619 = !DILocation(line: 341, column: 5, scope: !4613)
!4620 = !DILocation(line: 342, column: 15, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4610, file: !3, line: 342, column: 15)
!4622 = !DILocation(line: 342, column: 15, scope: !4610)
!4623 = !DILocation(line: 351, column: 5, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4621, file: !3, line: 342, column: 23)
!4625 = !DILocation(line: 353, column: 3, scope: !4540)
!4626 = !DILocation(line: 353, column: 3, scope: !4539)
!4627 = !DILocation(line: 353, column: 32, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 353, column: 14)
!4629 = !DILocation(line: 353, column: 37, scope: !4628)
!4630 = !DILocation(line: 353, column: 43, scope: !4628)
!4631 = !DILocation(line: 353, column: 49, scope: !4628)
!4632 = !DILocation(line: 353, column: 14, scope: !4628)
!4633 = !DILocation(line: 353, column: 14, scope: !4540)
!4634 = !DILocation(line: 354, column: 4, scope: !4628)
!4635 = !DILocation(line: 355, column: 34, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4535, file: !3, line: 355, column: 7)
!4637 = !DILocation(line: 355, column: 40, scope: !4636)
!4638 = !DILocation(line: 355, column: 46, scope: !4636)
!4639 = !DILocation(line: 355, column: 52, scope: !4636)
!4640 = !DILocation(line: 355, column: 7, scope: !4636)
!4641 = !DILocation(line: 355, column: 7, scope: !4535)
!4642 = !DILocation(line: 356, column: 4, scope: !4636)
!4643 = !DILocation(line: 357, column: 2, scope: !4535)
!4644 = !DILocation(line: 319, column: 40, scope: !4536)
!4645 = !DILocation(line: 319, column: 38, scope: !4536)
!4646 = !DILocation(line: 319, column: 2, scope: !4536)
!4647 = distinct !{!4647, !4563, !4648, !4490, !4060}
!4648 = !DILocation(line: 357, column: 2, scope: !4537)
!4649 = !DILocation(line: 358, column: 2, scope: !4521)
!4650 = !DILocation(line: 359, column: 1, scope: !4521)
!4651 = distinct !DISubprogram(name: "__populate_section_memmap", scope: !3, file: !3, line: 452, type: !4652, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4654)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!145, !7, !7, !8, !3548, !3401}
!4654 = !{!4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4666}
!4655 = !DILocalVariable(name: "pfn", arg: 1, scope: !4651, file: !3, line: 452, type: !7)
!4656 = !DILocalVariable(name: "nr_pages", arg: 2, scope: !4651, file: !3, line: 453, type: !7)
!4657 = !DILocalVariable(name: "nid", arg: 3, scope: !4651, file: !3, line: 453, type: !8)
!4658 = !DILocalVariable(name: "altmap", arg: 4, scope: !4651, file: !3, line: 453, type: !3548)
!4659 = !DILocalVariable(name: "pgmap", arg: 5, scope: !4651, file: !3, line: 454, type: !3401)
!4660 = !DILocalVariable(name: "start", scope: !4651, file: !3, line: 456, type: !7)
!4661 = !DILocalVariable(name: "end", scope: !4651, file: !3, line: 457, type: !7)
!4662 = !DILocalVariable(name: "r", scope: !4651, file: !3, line: 458, type: !8)
!4663 = !DILocalVariable(name: "__ret_warn_on", scope: !4664, file: !3, line: 460, type: !8)
!4664 = distinct !DILexicalBlock(scope: !4665, file: !3, line: 460, column: 6)
!4665 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 460, column: 6)
!4666 = !DILocalVariable(name: "__flags", scope: !4667, file: !3, line: 460, type: !8)
!4667 = distinct !DILexicalBlock(scope: !4668, file: !3, line: 460, column: 6)
!4668 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 460, column: 6)
!4669 = !DILocation(line: 452, column: 65, scope: !4651)
!4670 = !DILocation(line: 453, column: 17, scope: !4651)
!4671 = !DILocation(line: 453, column: 31, scope: !4651)
!4672 = !DILocation(line: 453, column: 56, scope: !4651)
!4673 = !DILocation(line: 454, column: 23, scope: !4651)
!4674 = !DILocation(line: 456, column: 2, scope: !4651)
!4675 = !DILocation(line: 456, column: 16, scope: !4651)
!4676 = !DILocation(line: 456, column: 40, scope: !4651)
!4677 = !DILocation(line: 456, column: 24, scope: !4651)
!4678 = !DILocation(line: 457, column: 2, scope: !4651)
!4679 = !DILocation(line: 457, column: 16, scope: !4651)
!4680 = !DILocation(line: 457, column: 22, scope: !4651)
!4681 = !DILocation(line: 457, column: 30, scope: !4651)
!4682 = !DILocation(line: 457, column: 39, scope: !4651)
!4683 = !DILocation(line: 457, column: 28, scope: !4651)
!4684 = !DILocation(line: 458, column: 2, scope: !4651)
!4685 = !DILocation(line: 458, column: 6, scope: !4651)
!4686 = !DILocation(line: 460, column: 6, scope: !4664)
!4687 = !DILocation(line: 460, column: 6, scope: !4668)
!4688 = !DILocation(line: 460, column: 6, scope: !4667)
!4689 = !DILocation(line: 460, column: 6, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 460, column: 6)
!4691 = !DILocation(line: 460, column: 6, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 460, column: 6)
!4693 = !{i64 2154421259, i64 2154421288, i64 2154421334, i64 2154421392, i64 2154421446, i64 2154421500, i64 2154421555, i64 2154421586, i64 2154421894, i64 2154421900, i64 2154421947, i64 2154421970, i64 2154421996}
!4694 = !DILocation(line: 460, column: 6, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 460, column: 6)
!4696 = !DILocation(line: 460, column: 6, scope: !4665)
!4697 = !DILocation(line: 460, column: 6, scope: !4651)
!4698 = !DILocation(line: 462, column: 3, scope: !4665)
!4699 = !DILocation(line: 464, column: 27, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 464, column: 6)
!4701 = !DILocation(line: 464, column: 35, scope: !4700)
!4702 = !DILocation(line: 464, column: 6, scope: !4700)
!4703 = !DILocation(line: 464, column: 6, scope: !4651)
!4704 = !DILocation(line: 465, column: 39, scope: !4700)
!4705 = !DILocation(line: 465, column: 44, scope: !4700)
!4706 = !DILocation(line: 465, column: 51, scope: !4700)
!4707 = !DILocation(line: 465, column: 56, scope: !4700)
!4708 = !DILocation(line: 465, column: 61, scope: !4700)
!4709 = !DILocation(line: 465, column: 7, scope: !4700)
!4710 = !DILocation(line: 465, column: 5, scope: !4700)
!4711 = !DILocation(line: 465, column: 3, scope: !4700)
!4712 = !DILocation(line: 467, column: 24, scope: !4700)
!4713 = !DILocation(line: 467, column: 31, scope: !4700)
!4714 = !DILocation(line: 467, column: 36, scope: !4700)
!4715 = !DILocation(line: 467, column: 41, scope: !4700)
!4716 = !DILocation(line: 467, column: 7, scope: !4700)
!4717 = !DILocation(line: 467, column: 5, scope: !4700)
!4718 = !DILocation(line: 469, column: 6, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 469, column: 6)
!4720 = !DILocation(line: 469, column: 8, scope: !4719)
!4721 = !DILocation(line: 469, column: 6, scope: !4651)
!4722 = !DILocation(line: 470, column: 3, scope: !4719)
!4723 = !DILocation(line: 472, column: 9, scope: !4651)
!4724 = !DILocation(line: 472, column: 2, scope: !4651)
!4725 = !DILocation(line: 473, column: 1, scope: !4651)
!4726 = distinct !DISubprogram(name: "__vmemmap_can_optimize", scope: !1677, file: !1677, line: 3798, type: !4727, scopeLine: 3800, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4729)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!1349, !3548, !3401}
!4729 = !{!4730, !4731, !4732, !4733}
!4730 = !DILocalVariable(name: "altmap", arg: 1, scope: !4726, file: !1677, line: 3798, type: !3548)
!4731 = !DILocalVariable(name: "pgmap", arg: 2, scope: !4726, file: !1677, line: 3799, type: !3401)
!4732 = !DILocalVariable(name: "nr_pages", scope: !4726, file: !1677, line: 3801, type: !7)
!4733 = !DILocalVariable(name: "nr_vmemmap_pages", scope: !4726, file: !1677, line: 3802, type: !7)
!4734 = !DILocation(line: 3798, column: 63, scope: !4726)
!4735 = !DILocation(line: 3799, column: 28, scope: !4726)
!4736 = !DILocation(line: 3801, column: 2, scope: !4726)
!4737 = !DILocation(line: 3801, column: 16, scope: !4726)
!4738 = !DILocation(line: 3802, column: 2, scope: !4726)
!4739 = !DILocation(line: 3802, column: 16, scope: !4726)
!4740 = !DILocation(line: 3804, column: 7, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4726, file: !1677, line: 3804, column: 6)
!4742 = !DILocation(line: 3804, column: 13, scope: !4741)
!4743 = !DILocation(line: 3804, column: 17, scope: !4741)
!4744 = !DILocation(line: 3804, column: 6, scope: !4726)
!4745 = !DILocation(line: 3805, column: 3, scope: !4741)
!4746 = !DILocation(line: 3807, column: 30, scope: !4726)
!4747 = !DILocation(line: 3807, column: 13, scope: !4726)
!4748 = !DILocation(line: 3807, column: 11, scope: !4726)
!4749 = !DILocation(line: 3808, column: 23, scope: !4726)
!4750 = !DILocation(line: 3808, column: 32, scope: !4726)
!4751 = !DILocation(line: 3808, column: 55, scope: !4726)
!4752 = !DILocation(line: 3808, column: 19, scope: !4726)
!4753 = !DILocation(line: 3813, column: 10, scope: !4726)
!4754 = !DILocation(line: 3813, column: 17, scope: !4726)
!4755 = !DILocation(line: 3813, column: 21, scope: !4726)
!4756 = !DILocation(line: 3813, column: 38, scope: !4726)
!4757 = !DILocation(line: 0, scope: !4726)
!4758 = !DILocation(line: 3813, column: 2, scope: !4726)
!4759 = !DILocation(line: 3814, column: 1, scope: !4726)
!4760 = distinct !DISubprogram(name: "vmemmap_populate_compound_pages", scope: !3, file: !3, line: 399, type: !4761, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4763)
!4761 = !DISubroutineType(types: !4762)
!4762 = !{!8, !7, !7, !7, !8, !3401}
!4763 = !{!4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4775, !4776, !4780}
!4764 = !DILocalVariable(name: "start_pfn", arg: 1, scope: !4760, file: !3, line: 399, type: !7)
!4765 = !DILocalVariable(name: "start", arg: 2, scope: !4760, file: !3, line: 400, type: !7)
!4766 = !DILocalVariable(name: "end", arg: 3, scope: !4760, file: !3, line: 401, type: !7)
!4767 = !DILocalVariable(name: "node", arg: 4, scope: !4760, file: !3, line: 401, type: !8)
!4768 = !DILocalVariable(name: "pgmap", arg: 5, scope: !4760, file: !3, line: 402, type: !3401)
!4769 = !DILocalVariable(name: "size", scope: !4760, file: !3, line: 404, type: !7)
!4770 = !DILocalVariable(name: "addr", scope: !4760, file: !3, line: 404, type: !7)
!4771 = !DILocalVariable(name: "pte", scope: !4760, file: !3, line: 405, type: !1740)
!4772 = !DILocalVariable(name: "rc", scope: !4760, file: !3, line: 406, type: !8)
!4773 = !DILocalVariable(name: "__UNIQUE_ID___x309", scope: !4774, file: !3, line: 421, type: !7)
!4774 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 421, column: 9)
!4775 = !DILocalVariable(name: "__UNIQUE_ID___y310", scope: !4774, file: !3, line: 421, type: !7)
!4776 = !DILocalVariable(name: "next", scope: !4777, file: !3, line: 423, type: !7)
!4777 = distinct !DILexicalBlock(scope: !4778, file: !3, line: 422, column: 47)
!4778 = distinct !DILexicalBlock(scope: !4779, file: !3, line: 422, column: 2)
!4779 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 422, column: 2)
!4780 = !DILocalVariable(name: "last", scope: !4777, file: !3, line: 423, type: !7)
!4781 = !DILocation(line: 399, column: 68, scope: !4760)
!4782 = !DILocation(line: 400, column: 26, scope: !4760)
!4783 = !DILocation(line: 401, column: 26, scope: !4760)
!4784 = !DILocation(line: 401, column: 35, scope: !4760)
!4785 = !DILocation(line: 402, column: 32, scope: !4760)
!4786 = !DILocation(line: 404, column: 2, scope: !4760)
!4787 = !DILocation(line: 404, column: 16, scope: !4760)
!4788 = !DILocation(line: 404, column: 22, scope: !4760)
!4789 = !DILocation(line: 405, column: 2, scope: !4760)
!4790 = !DILocation(line: 405, column: 9, scope: !4760)
!4791 = !DILocation(line: 406, column: 2, scope: !4760)
!4792 = !DILocation(line: 406, column: 6, scope: !4760)
!4793 = !DILocation(line: 408, column: 29, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 408, column: 6)
!4795 = !DILocation(line: 408, column: 40, scope: !4794)
!4796 = !DILocation(line: 408, column: 6, scope: !4794)
!4797 = !DILocation(line: 408, column: 6, scope: !4760)
!4798 = !DILocation(line: 409, column: 36, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 408, column: 48)
!4800 = !DILocation(line: 409, column: 9, scope: !4799)
!4801 = !DILocation(line: 409, column: 7, scope: !4799)
!4802 = !DILocation(line: 410, column: 8, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4799, file: !3, line: 410, column: 7)
!4804 = !DILocation(line: 410, column: 7, scope: !4799)
!4805 = !DILocation(line: 411, column: 4, scope: !4803)
!4806 = !DILocation(line: 417, column: 33, scope: !4799)
!4807 = !DILocation(line: 417, column: 40, scope: !4799)
!4808 = !DILocation(line: 417, column: 45, scope: !4799)
!4809 = !DILocation(line: 418, column: 12, scope: !4799)
!4810 = !DILocation(line: 417, column: 10, scope: !4799)
!4811 = !DILocation(line: 417, column: 3, scope: !4799)
!4812 = !DILocation(line: 421, column: 9, scope: !4774)
!4813 = !DILocation(line: 421, column: 9, scope: !4760)
!4814 = !DILocation(line: 421, column: 7, scope: !4760)
!4815 = !DILocation(line: 422, column: 14, scope: !4779)
!4816 = !DILocation(line: 422, column: 12, scope: !4779)
!4817 = !DILocation(line: 422, column: 7, scope: !4779)
!4818 = !DILocation(line: 422, column: 21, scope: !4778)
!4819 = !DILocation(line: 422, column: 28, scope: !4778)
!4820 = !DILocation(line: 422, column: 26, scope: !4778)
!4821 = !DILocation(line: 422, column: 2, scope: !4779)
!4822 = !DILocation(line: 423, column: 3, scope: !4777)
!4823 = !DILocation(line: 423, column: 17, scope: !4777)
!4824 = !DILocation(line: 423, column: 23, scope: !4777)
!4825 = !DILocation(line: 423, column: 30, scope: !4777)
!4826 = !DILocation(line: 423, column: 37, scope: !4777)
!4827 = !DILocation(line: 423, column: 35, scope: !4777)
!4828 = !DILocation(line: 426, column: 34, scope: !4777)
!4829 = !DILocation(line: 426, column: 40, scope: !4777)
!4830 = !DILocation(line: 426, column: 9, scope: !4777)
!4831 = !DILocation(line: 426, column: 7, scope: !4777)
!4832 = !DILocation(line: 427, column: 8, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4777, file: !3, line: 427, column: 7)
!4834 = !DILocation(line: 427, column: 7, scope: !4777)
!4835 = !DILocation(line: 428, column: 4, scope: !4833)
!4836 = !DILocation(line: 431, column: 10, scope: !4777)
!4837 = !DILocation(line: 431, column: 15, scope: !4777)
!4838 = !DILocation(line: 431, column: 8, scope: !4777)
!4839 = !DILocation(line: 432, column: 34, scope: !4777)
!4840 = !DILocation(line: 432, column: 40, scope: !4777)
!4841 = !DILocation(line: 432, column: 9, scope: !4777)
!4842 = !DILocation(line: 432, column: 7, scope: !4777)
!4843 = !DILocation(line: 433, column: 8, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4777, file: !3, line: 433, column: 7)
!4845 = !DILocation(line: 433, column: 7, scope: !4777)
!4846 = !DILocation(line: 434, column: 4, scope: !4844)
!4847 = !DILocation(line: 440, column: 8, scope: !4777)
!4848 = !DILocation(line: 441, column: 31, scope: !4777)
!4849 = !DILocation(line: 441, column: 37, scope: !4777)
!4850 = !DILocation(line: 441, column: 43, scope: !4777)
!4851 = !DILocation(line: 442, column: 10, scope: !4777)
!4852 = !DILocation(line: 441, column: 8, scope: !4777)
!4853 = !DILocation(line: 441, column: 6, scope: !4777)
!4854 = !DILocation(line: 443, column: 7, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4777, file: !3, line: 443, column: 7)
!4856 = !DILocation(line: 443, column: 7, scope: !4777)
!4857 = !DILocation(line: 444, column: 4, scope: !4855)
!4858 = !DILocation(line: 445, column: 2, scope: !4778)
!4859 = !DILocation(line: 445, column: 2, scope: !4777)
!4860 = !DILocation(line: 422, column: 41, scope: !4778)
!4861 = !DILocation(line: 422, column: 38, scope: !4778)
!4862 = !DILocation(line: 422, column: 2, scope: !4778)
!4863 = distinct !{!4863, !4821, !4864, !4490, !4060}
!4864 = !DILocation(line: 445, column: 2, scope: !4779)
!4865 = !DILocation(line: 447, column: 2, scope: !4760)
!4866 = !DILocation(line: 448, column: 1, scope: !4760)
!4867 = !DISubprogram(name: "vmemmap_populate", scope: !1677, file: !1677, line: 3788, type: !4429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4868 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4869, file: !4869, line: 30, type: !4870, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4872)
!4869 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c147744b0ec822ab26cfdb78fa4c3998")
!4870 = !DISubroutineType(types: !4871)
!4871 = !{!8, !140}
!4872 = !{!4873}
!4873 = !DILocalVariable(name: "n", arg: 1, scope: !4868, file: !4869, line: 30, type: !140)
!4874 = !DILocation(line: 30, column: 21, scope: !4868)
!4875 = !DILocation(line: 32, column: 15, scope: !4868)
!4876 = !DILocation(line: 32, column: 9, scope: !4868)
!4877 = !DILocation(line: 32, column: 18, scope: !4868)
!4878 = !DILocation(line: 32, column: 2, scope: !4868)
!4879 = distinct !DISubprogram(name: "fls64", scope: !4880, file: !4880, line: 401, type: !4881, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4883)
!4880 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!4881 = !DISubroutineType(types: !4882)
!4882 = !{!8, !142}
!4883 = !{!4884, !4885}
!4884 = !DILocalVariable(name: "x", arg: 1, scope: !4879, file: !4880, line: 401, type: !142)
!4885 = !DILocalVariable(name: "bitpos", scope: !4879, file: !4880, line: 403, type: !8)
!4886 = !DILocation(line: 401, column: 40, scope: !4879)
!4887 = !DILocation(line: 403, column: 2, scope: !4879)
!4888 = !DILocation(line: 403, column: 6, scope: !4879)
!4889 = !DILocation(line: 409, column: 2, scope: !4879)
!4890 = !DILocation(line: 411, column: 14, scope: !4879)
!4891 = !{i64 815692}
!4892 = !DILocation(line: 412, column: 9, scope: !4879)
!4893 = !DILocation(line: 412, column: 16, scope: !4879)
!4894 = !DILocation(line: 413, column: 1, scope: !4879)
!4895 = !DILocation(line: 412, column: 2, scope: !4879)
!4896 = distinct !DISubprogram(name: "numa_mem_id", scope: !4897, file: !4897, line: 168, type: !4898, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!4897 = !DIFile(filename: "./include/linux/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cc15680d35900f366282ea60d185adfa")
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!8}
!4900 = !DILocation(line: 170, column: 9, scope: !4896)
!4901 = !DILocation(line: 170, column: 2, scope: !4896)
!4902 = distinct !DISubprogram(name: "__alloc_pages_node", scope: !3539, file: !3539, line: 232, type: !3668, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4903)
!4903 = !{!4904, !4905, !4906}
!4904 = !DILocalVariable(name: "nid", arg: 1, scope: !4902, file: !3539, line: 232, type: !8)
!4905 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !4902, file: !3539, line: 232, type: !137)
!4906 = !DILocalVariable(name: "order", arg: 3, scope: !4902, file: !3539, line: 232, type: !13)
!4907 = !DILocation(line: 232, column: 24, scope: !4902)
!4908 = !DILocation(line: 232, column: 35, scope: !4902)
!4909 = !DILocation(line: 232, column: 58, scope: !4902)
!4910 = !DILocation(line: 235, column: 23, scope: !4902)
!4911 = !DILocation(line: 235, column: 28, scope: !4902)
!4912 = !DILocation(line: 235, column: 2, scope: !4902)
!4913 = !DILocation(line: 237, column: 23, scope: !4902)
!4914 = !DILocation(line: 237, column: 33, scope: !4902)
!4915 = !DILocation(line: 237, column: 40, scope: !4902)
!4916 = !DILocation(line: 237, column: 9, scope: !4902)
!4917 = !DILocation(line: 237, column: 2, scope: !4902)
!4918 = distinct !DISubprogram(name: "numa_node_id", scope: !4897, file: !4897, line: 87, type: !4898, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4919)
!4919 = !{!4920, !4922, !4924}
!4920 = !DILocalVariable(name: "pscr_ret__", scope: !4921, file: !4897, line: 89, type: !8)
!4921 = distinct !DILexicalBlock(scope: !4918, file: !4897, line: 89, column: 9)
!4922 = !DILocalVariable(name: "__vpp_verify", scope: !4923, file: !4897, line: 89, type: !2685)
!4923 = distinct !DILexicalBlock(scope: !4921, file: !4897, line: 89, column: 9)
!4924 = !DILocalVariable(name: "pfo_val__", scope: !4925, file: !4897, line: 89, type: !248)
!4925 = distinct !DILexicalBlock(scope: !4921, file: !4897, line: 89, column: 9)
!4926 = !DILocation(line: 89, column: 9, scope: !4921)
!4927 = !DILocation(line: 89, column: 9, scope: !4923)
!4928 = !DILocation(line: 89, column: 9, scope: !4925)
!4929 = !{i64 2151401609}
!4930 = !DILocation(line: 89, column: 9, scope: !4918)
!4931 = !DILocation(line: 89, column: 2, scope: !4918)
!4932 = distinct !DISubprogram(name: "warn_if_node_offline", scope: !3539, file: !3539, line: 213, type: !4933, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4935)
!4933 = !DISubroutineType(types: !4934)
!4934 = !{null, !8, !137}
!4935 = !{!4936, !4937, !4938}
!4936 = !DILocalVariable(name: "this_node", arg: 1, scope: !4932, file: !3539, line: 213, type: !8)
!4937 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !4932, file: !3539, line: 213, type: !137)
!4938 = !DILocalVariable(name: "warn_gfp", scope: !4932, file: !3539, line: 215, type: !137)
!4939 = !DILocation(line: 213, column: 45, scope: !4932)
!4940 = !DILocation(line: 213, column: 62, scope: !4932)
!4941 = !DILocation(line: 215, column: 2, scope: !4932)
!4942 = !DILocation(line: 215, column: 8, scope: !4932)
!4943 = !DILocation(line: 215, column: 19, scope: !4932)
!4944 = !DILocation(line: 215, column: 28, scope: !4932)
!4945 = !DILocation(line: 217, column: 6, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4932, file: !3539, line: 217, column: 6)
!4947 = !DILocation(line: 217, column: 15, scope: !4946)
!4948 = !DILocation(line: 217, column: 6, scope: !4932)
!4949 = !DILocation(line: 218, column: 3, scope: !4946)
!4950 = !DILocation(line: 220, column: 6, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4932, file: !3539, line: 220, column: 6)
!4952 = !DILocation(line: 220, column: 6, scope: !4932)
!4953 = !DILocation(line: 221, column: 3, scope: !4951)
!4954 = !DILocation(line: 223, column: 2, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4932, file: !3539, line: 223, column: 2)
!4956 = !DILocation(line: 223, column: 2, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4955, file: !3539, line: 223, column: 2)
!4958 = !DILocation(line: 224, column: 2, scope: !4932)
!4959 = !DILocation(line: 225, column: 1, scope: !4932)
!4960 = !DISubprogram(name: "__alloc_pages", scope: !3539, file: !3539, line: 177, type: !4961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4961 = !DISubroutineType(types: !4962)
!4962 = !{!145, !137, !13, !8, !3700}
!4963 = distinct !DISubprogram(name: "node_state", scope: !86, file: !86, line: 421, type: !4964, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4966)
!4964 = !DISubroutineType(types: !4965)
!4965 = !{!8, !8, !85}
!4966 = !{!4967, !4968}
!4967 = !DILocalVariable(name: "node", arg: 1, scope: !4963, file: !86, line: 421, type: !8)
!4968 = !DILocalVariable(name: "state", arg: 2, scope: !4963, file: !86, line: 421, type: !85)
!4969 = !DILocation(line: 421, column: 34, scope: !4963)
!4970 = !DILocation(line: 421, column: 57, scope: !4963)
!4971 = !DILocation(line: 423, column: 9, scope: !4963)
!4972 = !DILocation(line: 423, column: 2, scope: !4963)
!4973 = !DISubprogram(name: "dump_stack", scope: !410, file: !410, line: 193, type: !2336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4974 = distinct !DISubprogram(name: "const_test_bit", scope: !4975, file: !4975, line: 166, type: !4976, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4978)
!4975 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!4976 = !DISubroutineType(types: !4977)
!4977 = !{!1349, !7, !3488}
!4978 = !{!4979, !4980, !4981, !4982, !4983}
!4979 = !DILocalVariable(name: "nr", arg: 1, scope: !4974, file: !4975, line: 166, type: !7)
!4980 = !DILocalVariable(name: "addr", arg: 2, scope: !4974, file: !4975, line: 166, type: !3488)
!4981 = !DILocalVariable(name: "p", scope: !4974, file: !4975, line: 168, type: !3483)
!4982 = !DILocalVariable(name: "mask", scope: !4974, file: !4975, line: 169, type: !7)
!4983 = !DILocalVariable(name: "val", scope: !4974, file: !4975, line: 170, type: !7)
!4984 = !DILocation(line: 166, column: 30, scope: !4974)
!4985 = !DILocation(line: 166, column: 64, scope: !4974)
!4986 = !DILocation(line: 168, column: 2, scope: !4974)
!4987 = !DILocation(line: 168, column: 23, scope: !4974)
!4988 = !DILocation(line: 168, column: 50, scope: !4974)
!4989 = !DILocation(line: 168, column: 57, scope: !4974)
!4990 = !DILocation(line: 168, column: 55, scope: !4974)
!4991 = !DILocation(line: 169, column: 2, scope: !4974)
!4992 = !DILocation(line: 169, column: 16, scope: !4974)
!4993 = !DILocation(line: 169, column: 23, scope: !4974)
!4994 = !DILocation(line: 170, column: 2, scope: !4974)
!4995 = !DILocation(line: 170, column: 16, scope: !4974)
!4996 = !DILocation(line: 170, column: 23, scope: !4974)
!4997 = !DILocation(line: 170, column: 22, scope: !4974)
!4998 = !DILocation(line: 172, column: 12, scope: !4974)
!4999 = !DILocation(line: 172, column: 18, scope: !4974)
!5000 = !DILocation(line: 172, column: 16, scope: !4974)
!5001 = !DILocation(line: 172, column: 10, scope: !4974)
!5002 = !DILocation(line: 172, column: 9, scope: !4974)
!5003 = !DILocation(line: 173, column: 1, scope: !4974)
!5004 = !DILocation(line: 172, column: 2, scope: !4974)
!5005 = distinct !DISubprogram(name: "_test_bit", scope: !5006, file: !5006, line: 139, type: !4976, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5007)
!5006 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5007 = !{!5008, !5009}
!5008 = !DILocalVariable(name: "nr", arg: 1, scope: !5005, file: !5006, line: 139, type: !7)
!5009 = !DILocalVariable(name: "addr", arg: 2, scope: !5005, file: !5006, line: 139, type: !3488)
!5010 = !DILocation(line: 139, column: 25, scope: !5005)
!5011 = !DILocation(line: 139, column: 59, scope: !5005)
!5012 = !DILocation(line: 141, column: 25, scope: !5005)
!5013 = !DILocation(line: 141, column: 32, scope: !5005)
!5014 = !DILocation(line: 141, column: 30, scope: !5005)
!5015 = !DILocation(line: 141, column: 2, scope: !5005)
!5016 = !DILocation(line: 142, column: 23, scope: !5005)
!5017 = !DILocation(line: 142, column: 27, scope: !5005)
!5018 = !DILocation(line: 142, column: 9, scope: !5005)
!5019 = !DILocation(line: 142, column: 2, scope: !5005)
!5020 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5021, file: !5021, line: 66, type: !5022, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5027)
!5021 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5022 = !DISubroutineType(types: !5023)
!5023 = !{null, !5024, !510}
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5026)
!5026 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5027 = !{!5028, !5029}
!5028 = !DILocalVariable(name: "v", arg: 1, scope: !5020, file: !5021, line: 66, type: !5024)
!5029 = !DILocalVariable(name: "size", arg: 2, scope: !5020, file: !5021, line: 66, type: !510)
!5030 = !DILocation(line: 66, column: 73, scope: !5020)
!5031 = !DILocation(line: 66, column: 83, scope: !5020)
!5032 = !DILocation(line: 68, column: 19, scope: !5020)
!5033 = !DILocation(line: 68, column: 22, scope: !5020)
!5034 = !DILocation(line: 68, column: 2, scope: !5020)
!5035 = !DILocation(line: 69, column: 2, scope: !5020)
!5036 = !DILocation(line: 70, column: 1, scope: !5020)
!5037 = distinct !DISubprogram(name: "arch_test_bit", scope: !4880, file: !4880, line: 237, type: !4976, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5038)
!5038 = !{!5039, !5040}
!5039 = !DILocalVariable(name: "nr", arg: 1, scope: !5037, file: !4880, line: 237, type: !7)
!5040 = !DILocalVariable(name: "addr", arg: 2, scope: !5037, file: !4880, line: 237, type: !3488)
!5041 = !DILocation(line: 237, column: 29, scope: !5037)
!5042 = !DILocation(line: 237, column: 63, scope: !5037)
!5043 = !DILocation(line: 239, column: 30, scope: !5037)
!5044 = !DILocation(line: 239, column: 9, scope: !5037)
!5045 = !DILocation(line: 239, column: 54, scope: !5037)
!5046 = !DILocation(line: 239, column: 58, scope: !5037)
!5047 = !DILocation(line: 239, column: 36, scope: !5037)
!5048 = !DILocation(line: 240, column: 26, scope: !5037)
!5049 = !DILocation(line: 240, column: 30, scope: !5037)
!5050 = !DILocation(line: 240, column: 8, scope: !5037)
!5051 = !DILocation(line: 239, column: 2, scope: !5037)
!5052 = distinct !DISubprogram(name: "kasan_check_read", scope: !5053, file: !5053, line: 40, type: !5054, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5056)
!5053 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5054 = !DISubroutineType(types: !5055)
!5055 = !{!1349, !5024, !13}
!5056 = !{!5057, !5058}
!5057 = !DILocalVariable(name: "p", arg: 1, scope: !5052, file: !5053, line: 40, type: !5024)
!5058 = !DILocalVariable(name: "size", arg: 2, scope: !5052, file: !5053, line: 40, type: !13)
!5059 = !DILocation(line: 40, column: 58, scope: !5052)
!5060 = !DILocation(line: 40, column: 74, scope: !5052)
!5061 = !DILocation(line: 42, column: 2, scope: !5052)
!5062 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5063, file: !5063, line: 229, type: !5064, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5066)
!5063 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5064 = !DISubroutineType(types: !5065)
!5065 = !{null, !5024, !510, !8}
!5066 = !{!5067, !5068, !5069}
!5067 = !DILocalVariable(name: "ptr", arg: 1, scope: !5062, file: !5063, line: 229, type: !5024)
!5068 = !DILocalVariable(name: "size", arg: 2, scope: !5062, file: !5063, line: 229, type: !510)
!5069 = !DILocalVariable(name: "type", arg: 3, scope: !5062, file: !5063, line: 230, type: !8)
!5070 = !DILocation(line: 229, column: 60, scope: !5062)
!5071 = !DILocation(line: 229, column: 72, scope: !5062)
!5072 = !DILocation(line: 230, column: 15, scope: !5062)
!5073 = !DILocation(line: 230, column: 23, scope: !5062)
!5074 = distinct !DISubprogram(name: "constant_test_bit", scope: !4880, file: !4880, line: 204, type: !5075, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5077)
!5075 = !DISubroutineType(types: !5076)
!5076 = !{!1349, !509, !3488}
!5077 = !{!5078, !5079}
!5078 = !DILocalVariable(name: "nr", arg: 1, scope: !5074, file: !4880, line: 204, type: !509)
!5079 = !DILocalVariable(name: "addr", arg: 2, scope: !5074, file: !4880, line: 204, type: !3488)
!5080 = !DILocation(line: 204, column: 52, scope: !5074)
!5081 = !DILocation(line: 204, column: 86, scope: !5074)
!5082 = !DILocation(line: 206, column: 19, scope: !5074)
!5083 = !DILocation(line: 206, column: 22, scope: !5074)
!5084 = !DILocation(line: 206, column: 15, scope: !5074)
!5085 = !DILocation(line: 207, column: 4, scope: !5074)
!5086 = !DILocation(line: 207, column: 9, scope: !5074)
!5087 = !DILocation(line: 207, column: 12, scope: !5074)
!5088 = !DILocation(line: 206, column: 44, scope: !5074)
!5089 = !DILocation(line: 207, column: 37, scope: !5074)
!5090 = !DILocation(line: 206, column: 2, scope: !5074)
!5091 = distinct !DISubprogram(name: "variable_test_bit", scope: !4880, file: !4880, line: 224, type: !5075, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5092)
!5092 = !{!5093, !5094, !5095}
!5093 = !DILocalVariable(name: "nr", arg: 1, scope: !5091, file: !4880, line: 224, type: !509)
!5094 = !DILocalVariable(name: "addr", arg: 2, scope: !5091, file: !4880, line: 224, type: !3488)
!5095 = !DILocalVariable(name: "oldbit", scope: !5091, file: !4880, line: 226, type: !1349)
!5096 = !DILocation(line: 224, column: 52, scope: !5091)
!5097 = !DILocation(line: 224, column: 86, scope: !5091)
!5098 = !DILocation(line: 226, column: 2, scope: !5091)
!5099 = !DILocation(line: 226, column: 7, scope: !5091)
!5100 = !DILocation(line: 231, column: 33, scope: !5091)
!5101 = !DILocation(line: 231, column: 46, scope: !5091)
!5102 = !DILocation(line: 228, column: 2, scope: !5091)
!5103 = !{i64 2148313742, i64 2148313816}
!5104 = !DILocation(line: 233, column: 9, scope: !5091)
!5105 = !DILocation(line: 234, column: 1, scope: !5091)
!5106 = !DILocation(line: 233, column: 2, scope: !5091)
!5107 = !DISubprogram(name: "memblock_alloc_try_nid_raw", scope: !5108, file: !5108, line: 419, type: !5109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5108 = !DIFile(filename: "./include/linux/memblock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee488cc8c6522cca1567fc06e1716948")
!5109 = !DISubroutineType(types: !5110)
!5110 = !{!6, !139, !139, !139, !139, !8}
!5111 = distinct !DISubprogram(name: "vmem_altmap_next_pfn", scope: !3, file: !3, line: 91, type: !5112, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5114)
!5112 = !DISubroutineType(types: !5113)
!5113 = !{!7, !3548}
!5114 = !{!5115}
!5115 = !DILocalVariable(name: "altmap", arg: 1, scope: !5111, file: !3, line: 91, type: !3548)
!5116 = !DILocation(line: 91, column: 73, scope: !5111)
!5117 = !DILocation(line: 93, column: 9, scope: !5111)
!5118 = !DILocation(line: 93, column: 17, scope: !5111)
!5119 = !DILocation(line: 93, column: 28, scope: !5111)
!5120 = !DILocation(line: 93, column: 36, scope: !5111)
!5121 = !DILocation(line: 93, column: 26, scope: !5111)
!5122 = !DILocation(line: 93, column: 46, scope: !5111)
!5123 = !DILocation(line: 93, column: 54, scope: !5111)
!5124 = !DILocation(line: 93, column: 44, scope: !5111)
!5125 = !DILocation(line: 94, column: 5, scope: !5111)
!5126 = !DILocation(line: 94, column: 13, scope: !5111)
!5127 = !DILocation(line: 94, column: 3, scope: !5111)
!5128 = !DILocation(line: 93, column: 2, scope: !5111)
!5129 = distinct !DISubprogram(name: "find_first_bit", scope: !5130, file: !5130, line: 200, type: !5131, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5133)
!5130 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!5131 = !DISubroutineType(types: !5132)
!5132 = !{!7, !3483, !7}
!5133 = !{!5134, !5135, !5136}
!5134 = !DILocalVariable(name: "addr", arg: 1, scope: !5129, file: !5130, line: 200, type: !3483)
!5135 = !DILocalVariable(name: "size", arg: 2, scope: !5129, file: !5130, line: 200, type: !7)
!5136 = !DILocalVariable(name: "val", scope: !5137, file: !5130, line: 203, type: !7)
!5137 = distinct !DILexicalBlock(scope: !5138, file: !5130, line: 202, column: 31)
!5138 = distinct !DILexicalBlock(scope: !5129, file: !5130, line: 202, column: 6)
!5139 = !DILocation(line: 200, column: 51, scope: !5129)
!5140 = !DILocation(line: 200, column: 71, scope: !5129)
!5141 = !DILocation(line: 202, column: 6, scope: !5138)
!5142 = !DILocation(line: 202, column: 6, scope: !5129)
!5143 = !DILocation(line: 203, column: 3, scope: !5137)
!5144 = !DILocation(line: 203, column: 17, scope: !5137)
!5145 = !DILocation(line: 203, column: 24, scope: !5137)
!5146 = !DILocation(line: 203, column: 23, scope: !5137)
!5147 = !DILocation(line: 203, column: 31, scope: !5137)
!5148 = !DILocation(line: 203, column: 29, scope: !5137)
!5149 = !DILocation(line: 205, column: 10, scope: !5137)
!5150 = !DILocation(line: 205, column: 16, scope: !5137)
!5151 = !DILocation(line: 205, column: 29, scope: !5137)
!5152 = !DILocation(line: 205, column: 3, scope: !5137)
!5153 = !DILocation(line: 206, column: 2, scope: !5138)
!5154 = !DILocation(line: 208, column: 25, scope: !5129)
!5155 = !DILocation(line: 208, column: 31, scope: !5129)
!5156 = !DILocation(line: 208, column: 9, scope: !5129)
!5157 = !DILocation(line: 208, column: 2, scope: !5129)
!5158 = !DILocation(line: 209, column: 1, scope: !5129)
!5159 = distinct !DISubprogram(name: "vmem_altmap_nr_free", scope: !3, file: !3, line: 97, type: !5112, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5160)
!5160 = !{!5161, !5162}
!5161 = !DILocalVariable(name: "altmap", arg: 1, scope: !5159, file: !3, line: 97, type: !3548)
!5162 = !DILocalVariable(name: "allocated", scope: !5159, file: !3, line: 99, type: !7)
!5163 = !DILocation(line: 97, column: 72, scope: !5159)
!5164 = !DILocation(line: 99, column: 2, scope: !5159)
!5165 = !DILocation(line: 99, column: 16, scope: !5159)
!5166 = !DILocation(line: 99, column: 28, scope: !5159)
!5167 = !DILocation(line: 99, column: 36, scope: !5159)
!5168 = !DILocation(line: 99, column: 44, scope: !5159)
!5169 = !DILocation(line: 99, column: 52, scope: !5159)
!5170 = !DILocation(line: 99, column: 42, scope: !5159)
!5171 = !DILocation(line: 101, column: 6, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5159, file: !3, line: 101, column: 6)
!5173 = !DILocation(line: 101, column: 14, scope: !5172)
!5174 = !DILocation(line: 101, column: 21, scope: !5172)
!5175 = !DILocation(line: 101, column: 19, scope: !5172)
!5176 = !DILocation(line: 101, column: 6, scope: !5159)
!5177 = !DILocation(line: 102, column: 10, scope: !5172)
!5178 = !DILocation(line: 102, column: 18, scope: !5172)
!5179 = !DILocation(line: 102, column: 25, scope: !5172)
!5180 = !DILocation(line: 102, column: 23, scope: !5172)
!5181 = !DILocation(line: 102, column: 3, scope: !5172)
!5182 = !DILocation(line: 103, column: 2, scope: !5159)
!5183 = !DILocation(line: 104, column: 1, scope: !5159)
!5184 = distinct !DISubprogram(name: "variable__ffs", scope: !4880, file: !4880, line: 250, type: !3721, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5185)
!5185 = !{!5186}
!5186 = !DILocalVariable(name: "word", arg: 1, scope: !5184, file: !4880, line: 250, type: !7)
!5187 = !DILocation(line: 250, column: 66, scope: !5184)
!5188 = !DILocation(line: 254, column: 11, scope: !5184)
!5189 = !DILocation(line: 252, column: 2, scope: !5184)
!5190 = !{i64 811664}
!5191 = !DILocation(line: 255, column: 9, scope: !5184)
!5192 = !DILocation(line: 255, column: 2, scope: !5184)
!5193 = !DISubprogram(name: "_find_first_bit", scope: !5130, file: !5130, line: 21, type: !5131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5194 = distinct !DISubprogram(name: "native_pte_val", scope: !1644, file: !1644, line: 478, type: !5195, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5197)
!5195 = !DISubroutineType(types: !5196)
!5196 = !{!1735, !1731}
!5197 = !{!5198}
!5198 = !DILocalVariable(name: "pte", arg: 1, scope: !5194, file: !1644, line: 478, type: !1731)
!5199 = !DILocation(line: 478, column: 45, scope: !5194)
!5200 = !DILocation(line: 480, column: 13, scope: !5194)
!5201 = !DILocation(line: 480, column: 2, scope: !5194)
!5202 = distinct !DISubprogram(name: "protnone_mask", scope: !5203, file: !5203, line: 22, type: !5204, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5206)
!5203 = !DIFile(filename: "./arch/x86/include/asm/pgtable-invert.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef882e7cb6c7c8e916706b4e150780ec")
!5204 = !DISubroutineType(types: !5205)
!5205 = !{!140, !140}
!5206 = !{!5207}
!5207 = !DILocalVariable(name: "val", arg: 1, scope: !5202, file: !5203, line: 22, type: !140)
!5208 = !DILocation(line: 22, column: 37, scope: !5202)
!5209 = !DILocation(line: 24, column: 28, scope: !5202)
!5210 = !DILocation(line: 24, column: 9, scope: !5202)
!5211 = !DILocation(line: 24, column: 2, scope: !5202)
!5212 = distinct !DISubprogram(name: "__pte_needs_invert", scope: !5203, file: !5203, line: 16, type: !5213, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5215)
!5213 = !DISubroutineType(types: !5214)
!5214 = !{!1349, !140}
!5215 = !{!5216}
!5216 = !DILocalVariable(name: "val", arg: 1, scope: !5212, file: !5203, line: 16, type: !140)
!5217 = !DILocation(line: 16, column: 43, scope: !5212)
!5218 = !DILocation(line: 18, column: 9, scope: !5212)
!5219 = !DILocation(line: 18, column: 13, scope: !5212)
!5220 = !DILocation(line: 18, column: 18, scope: !5212)
!5221 = !DILocation(line: 18, column: 22, scope: !5212)
!5222 = !DILocation(line: 18, column: 16, scope: !5212)
!5223 = !DILocation(line: 0, scope: !5212)
!5224 = !DILocation(line: 18, column: 2, scope: !5212)
!5225 = distinct !DISubprogram(name: "pmd_page_vaddr", scope: !3874, file: !3874, line: 1012, type: !5226, scopeLine: 1013, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5228)
!5226 = !DISubroutineType(types: !5227)
!5227 = !{!7, !1715}
!5228 = !{!5229}
!5229 = !DILocalVariable(name: "pmd", arg: 1, scope: !5225, file: !3874, line: 1012, type: !1715)
!5230 = !DILocation(line: 1012, column: 50, scope: !5225)
!5231 = !DILocation(line: 1014, column: 24, scope: !5225)
!5232 = !DILocation(line: 1014, column: 9, scope: !5225)
!5233 = !DILocation(line: 1014, column: 2, scope: !5225)
!5234 = distinct !DISubprogram(name: "pte_index", scope: !3893, file: !3893, line: 65, type: !3721, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5235)
!5235 = !{!5236}
!5236 = !DILocalVariable(name: "address", arg: 1, scope: !5234, file: !3893, line: 65, type: !7)
!5237 = !DILocation(line: 65, column: 53, scope: !5234)
!5238 = !DILocation(line: 67, column: 10, scope: !5234)
!5239 = !DILocation(line: 67, column: 18, scope: !5234)
!5240 = !DILocation(line: 67, column: 33, scope: !5234)
!5241 = !DILocation(line: 67, column: 2, scope: !5234)
!5242 = distinct !DISubprogram(name: "native_pmd_val", scope: !1644, file: !1644, line: 403, type: !5243, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5245)
!5243 = !DISubroutineType(types: !5244)
!5244 = !{!1719, !1715}
!5245 = !{!5246}
!5246 = !DILocalVariable(name: "pmd", arg: 1, scope: !5242, file: !1644, line: 403, type: !1715)
!5247 = !DILocation(line: 403, column: 45, scope: !5242)
!5248 = !DILocation(line: 405, column: 13, scope: !5242)
!5249 = !DILocation(line: 405, column: 2, scope: !5242)
!5250 = distinct !DISubprogram(name: "pmd_pfn_mask", scope: !1644, file: !1644, line: 455, type: !5243, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5251)
!5251 = !{!5252}
!5252 = !DILocalVariable(name: "pmd", arg: 1, scope: !5250, file: !1644, line: 455, type: !1715)
!5253 = !DILocation(line: 455, column: 43, scope: !5250)
!5254 = !DILocation(line: 457, column: 6, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !5250, file: !1644, line: 457, column: 6)
!5256 = !DILocation(line: 457, column: 26, scope: !5255)
!5257 = !DILocation(line: 457, column: 6, scope: !5250)
!5258 = !DILocation(line: 458, column: 3, scope: !5255)
!5259 = !DILocation(line: 460, column: 3, scope: !5255)
!5260 = !DILocation(line: 461, column: 1, scope: !5250)
!5261 = distinct !DISubprogram(name: "folio_get", scope: !1677, file: !1677, line: 1445, type: !3331, scopeLine: 1446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5262)
!5262 = !{!5263}
!5263 = !DILocalVariable(name: "folio", arg: 1, scope: !5261, file: !1677, line: 1445, type: !1506)
!5264 = !DILocation(line: 1445, column: 44, scope: !5261)
!5265 = !DILocation(line: 1448, column: 16, scope: !5261)
!5266 = !DILocation(line: 1448, column: 2, scope: !5261)
!5267 = !DILocation(line: 1449, column: 1, scope: !5261)
!5268 = distinct !DISubprogram(name: "_compound_head", scope: !97, file: !97, line: 244, type: !5269, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5271)
!5269 = !DISubroutineType(types: !5270)
!5270 = !{!7, !3491}
!5271 = !{!5272, !5273}
!5272 = !DILocalVariable(name: "page", arg: 1, scope: !5268, file: !97, line: 244, type: !3491)
!5273 = !DILocalVariable(name: "head", scope: !5268, file: !97, line: 246, type: !7)
!5274 = !DILocation(line: 244, column: 63, scope: !5268)
!5275 = !DILocation(line: 246, column: 2, scope: !5268)
!5276 = !DILocation(line: 246, column: 16, scope: !5268)
!5277 = !DILocation(line: 246, column: 23, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !5268, file: !97, line: 246, column: 23)
!5279 = !DILocation(line: 246, column: 23, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5278, file: !97, line: 246, column: 23)
!5281 = !DILocation(line: 248, column: 6, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5268, file: !97, line: 248, column: 6)
!5283 = !DILocation(line: 248, column: 6, scope: !5268)
!5284 = !DILocation(line: 249, column: 10, scope: !5282)
!5285 = !DILocation(line: 249, column: 15, scope: !5282)
!5286 = !DILocation(line: 249, column: 3, scope: !5282)
!5287 = !DILocation(line: 250, column: 45, scope: !5268)
!5288 = !DILocation(line: 250, column: 24, scope: !5268)
!5289 = !DILocation(line: 250, column: 9, scope: !5268)
!5290 = !DILocation(line: 250, column: 2, scope: !5268)
!5291 = !DILocation(line: 251, column: 1, scope: !5268)
!5292 = distinct !DISubprogram(name: "folio_ref_inc", scope: !5293, file: !5293, line: 163, type: !3331, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5294)
!5293 = !DIFile(filename: "./include/linux/page_ref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0ed1500ef964c39be8e0b4c715e2a9d4")
!5294 = !{!5295}
!5295 = !DILocalVariable(name: "folio", arg: 1, scope: !5292, file: !5293, line: 163, type: !1506)
!5296 = !DILocation(line: 163, column: 48, scope: !5292)
!5297 = !DILocation(line: 165, column: 16, scope: !5292)
!5298 = !DILocation(line: 165, column: 23, scope: !5292)
!5299 = !DILocation(line: 165, column: 2, scope: !5292)
!5300 = !DILocation(line: 166, column: 1, scope: !5292)
!5301 = distinct !DISubprogram(name: "page_ref_inc", scope: !5293, file: !5293, line: 156, type: !3446, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5302)
!5302 = !{!5303}
!5303 = !DILocalVariable(name: "page", arg: 1, scope: !5301, file: !5293, line: 156, type: !145)
!5304 = !DILocation(line: 156, column: 46, scope: !5301)
!5305 = !DILocation(line: 158, column: 14, scope: !5301)
!5306 = !DILocation(line: 158, column: 20, scope: !5301)
!5307 = !DILocation(line: 158, column: 2, scope: !5301)
!5308 = !DILocation(line: 161, column: 1, scope: !5301)
!5309 = distinct !DISubprogram(name: "atomic_inc", scope: !5310, file: !5310, line: 433, type: !5311, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5314)
!5310 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5311 = !DISubroutineType(types: !5312)
!5312 = !{null, !5313}
!5313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!5314 = !{!5315}
!5315 = !DILocalVariable(name: "v", arg: 1, scope: !5309, file: !5310, line: 433, type: !5313)
!5316 = !DILocation(line: 433, column: 22, scope: !5309)
!5317 = !DILocation(line: 435, column: 31, scope: !5309)
!5318 = !DILocation(line: 435, column: 2, scope: !5309)
!5319 = !DILocation(line: 436, column: 17, scope: !5309)
!5320 = !DILocation(line: 436, column: 2, scope: !5309)
!5321 = !DILocation(line: 437, column: 1, scope: !5309)
!5322 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5021, file: !5021, line: 94, type: !5022, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5323)
!5323 = !{!5324, !5325}
!5324 = !DILocalVariable(name: "v", arg: 1, scope: !5322, file: !5021, line: 94, type: !5024)
!5325 = !DILocalVariable(name: "size", arg: 2, scope: !5322, file: !5021, line: 94, type: !510)
!5326 = !DILocation(line: 94, column: 79, scope: !5322)
!5327 = !DILocation(line: 94, column: 89, scope: !5322)
!5328 = !DILocation(line: 96, column: 20, scope: !5322)
!5329 = !DILocation(line: 96, column: 23, scope: !5322)
!5330 = !DILocation(line: 96, column: 2, scope: !5322)
!5331 = !DILocation(line: 97, column: 2, scope: !5322)
!5332 = !DILocation(line: 98, column: 1, scope: !5322)
!5333 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !5334, file: !5334, line: 976, type: !5311, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5335)
!5334 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5335 = !{!5336}
!5336 = !DILocalVariable(name: "v", arg: 1, scope: !5333, file: !5334, line: 976, type: !5313)
!5337 = !DILocation(line: 976, column: 26, scope: !5333)
!5338 = !DILocation(line: 979, column: 18, scope: !5333)
!5339 = !DILocation(line: 979, column: 2, scope: !5333)
!5340 = !DILocation(line: 983, column: 1, scope: !5333)
!5341 = distinct !DISubprogram(name: "kasan_check_write", scope: !5053, file: !5053, line: 44, type: !5054, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5342)
!5342 = !{!5343, !5344}
!5343 = !DILocalVariable(name: "p", arg: 1, scope: !5341, file: !5053, line: 44, type: !5024)
!5344 = !DILocalVariable(name: "size", arg: 2, scope: !5341, file: !5053, line: 44, type: !13)
!5345 = !DILocation(line: 44, column: 59, scope: !5341)
!5346 = !DILocation(line: 44, column: 75, scope: !5341)
!5347 = !DILocation(line: 46, column: 2, scope: !5341)
!5348 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !5349, file: !5349, line: 51, type: !5311, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5350)
!5349 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!5350 = !{!5351}
!5351 = !DILocalVariable(name: "v", arg: 1, scope: !5348, file: !5349, line: 51, type: !5313)
!5352 = !DILocation(line: 51, column: 55, scope: !5348)
!5353 = !DILocation(line: 54, column: 16, scope: !5348)
!5354 = !DILocation(line: 54, column: 19, scope: !5348)
!5355 = !DILocation(line: 53, column: 2, scope: !5348)
!5356 = !{i64 2149033330, i64 2149033369, i64 2149033390, i64 2149033427, i64 2149033450, i64 2149033320}
!5357 = !DILocation(line: 55, column: 1, scope: !5348)
!5358 = distinct !DISubprogram(name: "page_fixed_fake_head", scope: !97, file: !97, line: 207, type: !5359, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5361)
!5359 = !DISubroutineType(types: !5360)
!5360 = !{!3491, !3491}
!5361 = !{!5362, !5363, !5366}
!5362 = !DILocalVariable(name: "page", arg: 1, scope: !5358, file: !97, line: 207, type: !3491)
!5363 = !DILocalVariable(name: "branch", scope: !5364, file: !97, line: 209, type: !1349)
!5364 = distinct !DILexicalBlock(scope: !5365, file: !97, line: 209, column: 7)
!5365 = distinct !DILexicalBlock(scope: !5358, file: !97, line: 209, column: 6)
!5366 = !DILocalVariable(name: "head", scope: !5367, file: !97, line: 225, type: !7)
!5367 = distinct !DILexicalBlock(scope: !5368, file: !97, line: 219, column: 39)
!5368 = distinct !DILexicalBlock(scope: !5358, file: !97, line: 218, column: 6)
!5369 = !DILocation(line: 207, column: 83, scope: !5358)
!5370 = !DILocation(line: 209, column: 7, scope: !5364)
!5371 = !DILocation(line: 209, column: 7, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5373, file: !97, line: 209, column: 7)
!5373 = distinct !DILexicalBlock(scope: !5364, file: !97, line: 209, column: 7)
!5374 = !DILocation(line: 209, column: 7, scope: !5373)
!5375 = !DILocation(line: 209, column: 7, scope: !5365)
!5376 = !DILocation(line: 209, column: 6, scope: !5358)
!5377 = !DILocation(line: 210, column: 10, scope: !5365)
!5378 = !DILocation(line: 210, column: 3, scope: !5365)
!5379 = !DILocation(line: 218, column: 6, scope: !5368)
!5380 = !DILocation(line: 218, column: 49, scope: !5368)
!5381 = !DILocation(line: 219, column: 6, scope: !5368)
!5382 = !DILocation(line: 218, column: 6, scope: !5358)
!5383 = !DILocation(line: 225, column: 3, scope: !5367)
!5384 = !DILocation(line: 225, column: 17, scope: !5367)
!5385 = !DILocation(line: 225, column: 24, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5367, file: !97, line: 225, column: 24)
!5387 = !DILocation(line: 225, column: 24, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5386, file: !97, line: 225, column: 24)
!5389 = !DILocation(line: 227, column: 7, scope: !5390)
!5390 = distinct !DILexicalBlock(scope: !5367, file: !97, line: 227, column: 7)
!5391 = !DILocation(line: 227, column: 7, scope: !5367)
!5392 = !DILocation(line: 228, column: 33, scope: !5390)
!5393 = !DILocation(line: 228, column: 38, scope: !5390)
!5394 = !DILocation(line: 228, column: 11, scope: !5390)
!5395 = !DILocation(line: 228, column: 4, scope: !5390)
!5396 = !DILocation(line: 229, column: 2, scope: !5368)
!5397 = !DILocation(line: 229, column: 2, scope: !5367)
!5398 = !DILocation(line: 230, column: 9, scope: !5358)
!5399 = !DILocation(line: 230, column: 2, scope: !5358)
!5400 = !DILocation(line: 231, column: 1, scope: !5358)
!5401 = distinct !DISubprogram(name: "arch_static_branch", scope: !5402, file: !5402, line: 25, type: !5403, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5424)
!5402 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!5403 = !DISubroutineType(types: !5404)
!5404 = !{!1349, !5405, !1349}
!5405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5406, size: 64)
!5406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !5407, line: 85, size: 128, elements: !5408)
!5407 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!5408 = !{!5409, !5410}
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5406, file: !5407, line: 86, baseType: !293, size: 32)
!5410 = !DIDerivedType(tag: DW_TAG_member, scope: !5406, file: !5407, line: 101, baseType: !5411, size: 64, offset: 64)
!5411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5406, file: !5407, line: 101, size: 64, elements: !5412)
!5412 = !{!5413, !5414, !5421}
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5411, file: !5407, line: 102, baseType: !7, size: 64)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5411, file: !5407, line: 103, baseType: !5415, size: 64)
!5415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5416, size: 64)
!5416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !5407, line: 117, size: 128, elements: !5417)
!5417 = !{!5418, !5419, !5420}
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !5416, file: !5407, line: 118, baseType: !1292, size: 32)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !5416, file: !5407, line: 119, baseType: !1292, size: 32, offset: 32)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5416, file: !5407, line: 120, baseType: !509, size: 64, offset: 64)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5411, file: !5407, line: 104, baseType: !5422, size: 64)
!5422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5423, size: 64)
!5423 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !5407, line: 104, flags: DIFlagFwdDecl)
!5424 = !{!5425, !5426, !5427}
!5425 = !DILocalVariable(name: "key", arg: 1, scope: !5401, file: !5402, line: 25, type: !5405)
!5426 = !DILocalVariable(name: "branch", arg: 2, scope: !5401, file: !5402, line: 25, type: !1349)
!5427 = !DILabel(scope: !5401, name: "l_yes", file: !5402, line: 33)
!5428 = !DILocation(line: 25, column: 67, scope: !5401)
!5429 = !DILocation(line: 25, column: 77, scope: !5401)
!5430 = !DILocation(line: 30, column: 13, scope: !5401)
!5431 = !DILocation(line: 30, column: 28, scope: !5401)
!5432 = !DILocation(line: 30, column: 26, scope: !5401)
!5433 = !DILocation(line: 27, column: 2, scope: !5401)
!5434 = !{i64 1274454, i64 1274498, i64 2148759181, i64 2148759202, i64 2148759228, i64 2148759261, i64 2148759295, i64 2148759319}
!5435 = !DILocation(line: 32, column: 2, scope: !5401)
!5436 = !DILocation(line: 33, column: 1, scope: !5401)
!5437 = !DILocation(line: 34, column: 2, scope: !5401)
!5438 = !DILocation(line: 35, column: 1, scope: !5401)
!5439 = distinct !DISubprogram(name: "native_make_pte", scope: !1644, file: !1644, line: 473, type: !5440, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5442)
!5440 = !DISubroutineType(types: !5441)
!5441 = !{!1731, !1735}
!5442 = !{!5443}
!5443 = !DILocalVariable(name: "val", arg: 1, scope: !5439, file: !1644, line: 473, type: !1735)
!5444 = !DILocation(line: 473, column: 46, scope: !5439)
!5445 = !DILocation(line: 475, column: 17, scope: !5439)
!5446 = !DILocation(line: 475, column: 26, scope: !5439)
!5447 = !DILocation(line: 475, column: 2, scope: !5439)
!5448 = distinct !DISubprogram(name: "check_pgprot", scope: !3874, file: !3874, line: 730, type: !5449, scopeLine: 731, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5451)
!5449 = !DISubroutineType(types: !5450)
!5450 = !{!1648, !1643}
!5451 = !{!5452, !5453}
!5452 = !DILocalVariable(name: "pgprot", arg: 1, scope: !5448, file: !3874, line: 730, type: !1643)
!5453 = !DILocalVariable(name: "massaged_val", scope: !5448, file: !3874, line: 732, type: !1648)
!5454 = !DILocation(line: 730, column: 49, scope: !5448)
!5455 = !DILocation(line: 732, column: 2, scope: !5448)
!5456 = !DILocation(line: 732, column: 14, scope: !5448)
!5457 = !DILocation(line: 732, column: 29, scope: !5448)
!5458 = !DILocation(line: 744, column: 9, scope: !5448)
!5459 = !DILocation(line: 745, column: 1, scope: !5448)
!5460 = !DILocation(line: 744, column: 2, scope: !5448)
!5461 = distinct !DISubprogram(name: "massage_pgprot", scope: !3874, file: !3874, line: 720, type: !5449, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5462)
!5462 = !{!5463, !5464}
!5463 = !DILocalVariable(name: "pgprot", arg: 1, scope: !5461, file: !3874, line: 720, type: !1643)
!5464 = !DILocalVariable(name: "protval", scope: !5461, file: !3874, line: 722, type: !1648)
!5465 = !DILocation(line: 720, column: 51, scope: !5461)
!5466 = !DILocation(line: 722, column: 2, scope: !5461)
!5467 = !DILocation(line: 722, column: 14, scope: !5461)
!5468 = !DILocation(line: 722, column: 24, scope: !5461)
!5469 = !DILocation(line: 724, column: 6, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5461, file: !3874, line: 724, column: 6)
!5471 = !DILocation(line: 724, column: 14, scope: !5470)
!5472 = !DILocation(line: 724, column: 6, scope: !5461)
!5473 = !DILocation(line: 725, column: 14, scope: !5470)
!5474 = !DILocation(line: 725, column: 11, scope: !5470)
!5475 = !DILocation(line: 725, column: 3, scope: !5470)
!5476 = !DILocation(line: 727, column: 9, scope: !5461)
!5477 = !DILocation(line: 728, column: 1, scope: !5461)
!5478 = !DILocation(line: 727, column: 2, scope: !5461)
!5479 = distinct !DISubprogram(name: "page_table_check_ptes_set", scope: !5480, file: !5480, line: 127, type: !5481, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5483)
!5480 = !DIFile(filename: "./include/linux/page_table_check.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f306f72d0e6fa942e3056f300d545aa2")
!5481 = !DISubroutineType(types: !5482)
!5482 = !{null, !1161, !1740, !1731, !13}
!5483 = !{!5484, !5485, !5486, !5487}
!5484 = !DILocalVariable(name: "mm", arg: 1, scope: !5479, file: !5480, line: 127, type: !1161)
!5485 = !DILocalVariable(name: "ptep", arg: 2, scope: !5479, file: !5480, line: 128, type: !1740)
!5486 = !DILocalVariable(name: "pte", arg: 3, scope: !5479, file: !5480, line: 128, type: !1731)
!5487 = !DILocalVariable(name: "nr", arg: 4, scope: !5479, file: !5480, line: 128, type: !13)
!5488 = !DILocation(line: 127, column: 64, scope: !5479)
!5489 = !DILocation(line: 128, column: 10, scope: !5479)
!5490 = !DILocation(line: 128, column: 22, scope: !5479)
!5491 = !DILocation(line: 128, column: 40, scope: !5479)
!5492 = !DILocation(line: 130, column: 1, scope: !5479)
!5493 = distinct !DISubprogram(name: "native_set_pte", scope: !5494, file: !5494, line: 65, type: !5495, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5497)
!5494 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2362587396c42a8ad932bab8fed5cb38")
!5495 = !DISubroutineType(types: !5496)
!5496 = !{null, !1740, !1731}
!5497 = !{!5498, !5499}
!5498 = !DILocalVariable(name: "ptep", arg: 1, scope: !5493, file: !5494, line: 65, type: !1740)
!5499 = !DILocalVariable(name: "pte", arg: 2, scope: !5493, file: !5494, line: 65, type: !1731)
!5500 = !DILocation(line: 65, column: 42, scope: !5493)
!5501 = !DILocation(line: 65, column: 54, scope: !5493)
!5502 = !DILocation(line: 67, column: 2, scope: !5493)
!5503 = !DILocation(line: 67, column: 2, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5493, file: !5494, line: 67, column: 2)
!5505 = !DILocation(line: 67, column: 2, scope: !5506)
!5506 = distinct !DILexicalBlock(scope: !5504, file: !5494, line: 67, column: 2)
!5507 = !DILocation(line: 67, column: 2, scope: !5508)
!5508 = distinct !DILexicalBlock(scope: !5504, file: !5494, line: 67, column: 2)
!5509 = !DILocation(line: 68, column: 1, scope: !5493)
!5510 = distinct !DISubprogram(name: "pte_next_pfn", scope: !3874, file: !3874, line: 942, type: !5511, scopeLine: 943, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5513)
!5511 = !DISubroutineType(types: !5512)
!5512 = !{!1731, !1731}
!5513 = !{!5514}
!5514 = !DILocalVariable(name: "pte", arg: 1, scope: !5510, file: !3874, line: 942, type: !1731)
!5515 = !DILocation(line: 942, column: 40, scope: !5510)
!5516 = !DILocation(line: 944, column: 25, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5510, file: !3874, line: 944, column: 6)
!5518 = !DILocation(line: 944, column: 6, scope: !5517)
!5519 = !DILocation(line: 944, column: 6, scope: !5510)
!5520 = !DILocation(line: 945, column: 10, scope: !5517)
!5521 = !DILocation(line: 945, column: 3, scope: !5517)
!5522 = !DILocation(line: 946, column: 9, scope: !5510)
!5523 = !DILocation(line: 946, column: 2, scope: !5510)
!5524 = !DILocation(line: 947, column: 1, scope: !5510)
!5525 = distinct !DISubprogram(name: "pud_pgtable", scope: !3874, file: !3874, line: 1061, type: !5526, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5528)
!5526 = !DISubroutineType(types: !5527)
!5527 = !{!1714, !1722}
!5528 = !{!5529}
!5529 = !DILocalVariable(name: "pud", arg: 1, scope: !5525, file: !3874, line: 1061, type: !1722)
!5530 = !DILocation(line: 1061, column: 40, scope: !5525)
!5531 = !DILocation(line: 1063, column: 18, scope: !5525)
!5532 = !DILocation(line: 1063, column: 2, scope: !5525)
!5533 = distinct !DISubprogram(name: "pmd_index", scope: !3893, file: !3893, line: 71, type: !3721, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5534)
!5534 = !{!5535}
!5535 = !DILocalVariable(name: "address", arg: 1, scope: !5533, file: !3893, line: 71, type: !7)
!5536 = !DILocation(line: 71, column: 53, scope: !5533)
!5537 = !DILocation(line: 73, column: 10, scope: !5533)
!5538 = !DILocation(line: 73, column: 18, scope: !5533)
!5539 = !DILocation(line: 73, column: 32, scope: !5533)
!5540 = !DILocation(line: 73, column: 2, scope: !5533)
!5541 = distinct !DISubprogram(name: "native_pud_val", scope: !1644, file: !1644, line: 379, type: !5542, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5544)
!5542 = !DISubroutineType(types: !5543)
!5543 = !{!1726, !1722}
!5544 = !{!5545}
!5545 = !DILocalVariable(name: "pud", arg: 1, scope: !5541, file: !1644, line: 379, type: !1722)
!5546 = !DILocation(line: 379, column: 45, scope: !5541)
!5547 = !DILocation(line: 381, column: 13, scope: !5541)
!5548 = !DILocation(line: 381, column: 2, scope: !5541)
!5549 = distinct !DISubprogram(name: "pud_pfn_mask", scope: !1644, file: !1644, line: 437, type: !5542, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5550)
!5550 = !{!5551}
!5551 = !DILocalVariable(name: "pud", arg: 1, scope: !5549, file: !1644, line: 437, type: !1722)
!5552 = !DILocation(line: 437, column: 43, scope: !5549)
!5553 = !DILocation(line: 439, column: 6, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5549, file: !1644, line: 439, column: 6)
!5555 = !DILocation(line: 439, column: 26, scope: !5554)
!5556 = !DILocation(line: 439, column: 6, scope: !5549)
!5557 = !DILocation(line: 440, column: 3, scope: !5554)
!5558 = !DILocation(line: 442, column: 3, scope: !5554)
!5559 = !DILocation(line: 443, column: 1, scope: !5549)
!5560 = distinct !DISubprogram(name: "paravirt_alloc_pte", scope: !4155, file: !4155, line: 20, type: !5561, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5563)
!5561 = !DISubroutineType(types: !5562)
!5562 = !{null, !1161, !7}
!5563 = !{!5564, !5565}
!5564 = !DILocalVariable(name: "mm", arg: 1, scope: !5560, file: !4155, line: 20, type: !1161)
!5565 = !DILocalVariable(name: "pfn", arg: 2, scope: !5560, file: !4155, line: 20, type: !7)
!5566 = !DILocation(line: 20, column: 57, scope: !5560)
!5567 = !DILocation(line: 20, column: 75, scope: !5560)
!5568 = !DILocation(line: 20, column: 81, scope: !5560)
!5569 = distinct !DISubprogram(name: "native_set_pmd", scope: !5494, file: !5494, line: 81, type: !5570, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5572)
!5570 = !DISubroutineType(types: !5571)
!5571 = !{null, !1714, !1715}
!5572 = !{!5573, !5574}
!5573 = !DILocalVariable(name: "pmdp", arg: 1, scope: !5569, file: !5494, line: 81, type: !1714)
!5574 = !DILocalVariable(name: "pmd", arg: 2, scope: !5569, file: !5494, line: 81, type: !1715)
!5575 = !DILocation(line: 81, column: 42, scope: !5569)
!5576 = !DILocation(line: 81, column: 54, scope: !5569)
!5577 = !DILocation(line: 83, column: 2, scope: !5569)
!5578 = !DILocation(line: 83, column: 2, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5569, file: !5494, line: 83, column: 2)
!5580 = !DILocation(line: 83, column: 2, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5579, file: !5494, line: 83, column: 2)
!5582 = !DILocation(line: 83, column: 2, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5579, file: !5494, line: 83, column: 2)
!5584 = !DILocation(line: 84, column: 1, scope: !5569)
!5585 = distinct !DISubprogram(name: "native_make_pmd", scope: !1644, file: !1644, line: 398, type: !5586, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5588)
!5586 = !DISubroutineType(types: !5587)
!5587 = !{!1715, !1719}
!5588 = !{!5589}
!5589 = !DILocalVariable(name: "val", arg: 1, scope: !5585, file: !1644, line: 398, type: !1719)
!5590 = !DILocation(line: 398, column: 46, scope: !5585)
!5591 = !DILocation(line: 400, column: 17, scope: !5585)
!5592 = !DILocation(line: 400, column: 26, scope: !5585)
!5593 = !DILocation(line: 400, column: 2, scope: !5585)
!5594 = distinct !DISubprogram(name: "p4d_pgtable", scope: !3874, file: !3874, line: 1102, type: !5595, scopeLine: 1103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5597)
!5595 = !DISubroutineType(types: !5596)
!5596 = !{!1721, !3498}
!5597 = !{!5598}
!5598 = !DILocalVariable(name: "p4d", arg: 1, scope: !5594, file: !3874, line: 1102, type: !3498)
!5599 = !DILocation(line: 1102, column: 40, scope: !5594)
!5600 = !DILocation(line: 1104, column: 18, scope: !5594)
!5601 = !DILocation(line: 1104, column: 2, scope: !5594)
!5602 = distinct !DISubprogram(name: "pud_index", scope: !3893, file: !3893, line: 79, type: !3721, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5603)
!5603 = !{!5604}
!5604 = !DILocalVariable(name: "address", arg: 1, scope: !5602, file: !3893, line: 79, type: !7)
!5605 = !DILocation(line: 79, column: 53, scope: !5602)
!5606 = !DILocation(line: 81, column: 10, scope: !5602)
!5607 = !DILocation(line: 81, column: 18, scope: !5602)
!5608 = !DILocation(line: 81, column: 32, scope: !5602)
!5609 = !DILocation(line: 81, column: 2, scope: !5602)
!5610 = distinct !DISubprogram(name: "native_p4d_val", scope: !1644, file: !1644, line: 353, type: !5611, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5613)
!5611 = !DISubroutineType(types: !5612)
!5612 = !{!3502, !3498}
!5613 = !{!5614}
!5614 = !DILocalVariable(name: "p4d", arg: 1, scope: !5610, file: !1644, line: 353, type: !3498)
!5615 = !DILocation(line: 353, column: 45, scope: !5610)
!5616 = !DILocation(line: 355, column: 13, scope: !5610)
!5617 = !DILocation(line: 355, column: 2, scope: !5610)
!5618 = distinct !DISubprogram(name: "p4d_pfn_mask", scope: !1644, file: !1644, line: 421, type: !5611, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5619)
!5619 = !{!5620}
!5620 = !DILocalVariable(name: "p4d", arg: 1, scope: !5618, file: !1644, line: 421, type: !3498)
!5621 = !DILocation(line: 421, column: 43, scope: !5618)
!5622 = !DILocation(line: 424, column: 2, scope: !5618)
!5623 = distinct !DISubprogram(name: "paravirt_alloc_pmd", scope: !4155, file: !4155, line: 21, type: !5561, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5624)
!5624 = !{!5625, !5626}
!5625 = !DILocalVariable(name: "mm", arg: 1, scope: !5623, file: !4155, line: 21, type: !1161)
!5626 = !DILocalVariable(name: "pfn", arg: 2, scope: !5623, file: !4155, line: 21, type: !7)
!5627 = !DILocation(line: 21, column: 57, scope: !5623)
!5628 = !DILocation(line: 21, column: 75, scope: !5623)
!5629 = !DILocation(line: 21, column: 81, scope: !5623)
!5630 = distinct !DISubprogram(name: "native_set_pud", scope: !5494, file: !5494, line: 117, type: !5631, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5633)
!5631 = !DISubroutineType(types: !5632)
!5632 = !{null, !1721, !1722}
!5633 = !{!5634, !5635}
!5634 = !DILocalVariable(name: "pudp", arg: 1, scope: !5630, file: !5494, line: 117, type: !1721)
!5635 = !DILocalVariable(name: "pud", arg: 2, scope: !5630, file: !5494, line: 117, type: !1722)
!5636 = !DILocation(line: 117, column: 42, scope: !5630)
!5637 = !DILocation(line: 117, column: 54, scope: !5630)
!5638 = !DILocation(line: 119, column: 2, scope: !5630)
!5639 = !DILocation(line: 119, column: 2, scope: !5640)
!5640 = distinct !DILexicalBlock(scope: !5630, file: !5494, line: 119, column: 2)
!5641 = !DILocation(line: 119, column: 2, scope: !5642)
!5642 = distinct !DILexicalBlock(scope: !5640, file: !5494, line: 119, column: 2)
!5643 = !DILocation(line: 119, column: 2, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5640, file: !5494, line: 119, column: 2)
!5645 = !DILocation(line: 120, column: 1, scope: !5630)
!5646 = distinct !DISubprogram(name: "native_make_pud", scope: !1644, file: !1644, line: 374, type: !5647, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5649)
!5647 = !DISubroutineType(types: !5648)
!5648 = !{!1722, !1719}
!5649 = !{!5650}
!5650 = !DILocalVariable(name: "val", arg: 1, scope: !5646, file: !1644, line: 374, type: !1719)
!5651 = !DILocation(line: 374, column: 46, scope: !5646)
!5652 = !DILocation(line: 376, column: 17, scope: !5646)
!5653 = !DILocation(line: 376, column: 19, scope: !5646)
!5654 = !DILocation(line: 376, column: 2, scope: !5646)
!5655 = distinct !DISubprogram(name: "_static_cpu_has", scope: !5656, file: !5656, line: 173, type: !5657, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5659)
!5656 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!5657 = !DISubroutineType(types: !5658)
!5658 = !{!1349, !308}
!5659 = !{!5660, !5661, !5662}
!5660 = !DILocalVariable(name: "bit", arg: 1, scope: !5655, file: !5656, line: 173, type: !308)
!5661 = !DILabel(scope: !5655, name: "t_yes", file: !5656, line: 187)
!5662 = !DILabel(scope: !5655, name: "t_no", file: !5656, line: 189)
!5663 = !DILocation(line: 173, column: 49, scope: !5655)
!5664 = !DILocation(line: 183, column: 24, scope: !5655)
!5665 = !DILocation(line: 184, column: 30, scope: !5655)
!5666 = !DILocation(line: 184, column: 34, scope: !5655)
!5667 = !DILocation(line: 184, column: 26, scope: !5655)
!5668 = !DILocation(line: 185, column: 70, scope: !5655)
!5669 = !DILocation(line: 185, column: 74, scope: !5655)
!5670 = !DILocation(line: 185, column: 25, scope: !5655)
!5671 = !DILocation(line: 175, column: 2, scope: !5655)
!5672 = !{i64 2149646058, i64 2149646091, i64 2149646097, i64 2149646113, i64 2149646132, i64 2149646163, i64 2149647116, i64 2149645705, i64 2149647122, i64 2149647170, i64 2149647234, i64 2149647298, i64 2149647355, i64 2149647562, i64 2149647610, i64 2149647674, i64 2149647738, i64 2149647795, i64 2149645823, i64 2149645848, i64 2149648005, i64 2149648133, i64 2149648066, i64 2149648147, i64 2149648161, i64 2149648277, i64 2149648222, i64 2149648291, i64 2149645982, i64 1124895, i64 1124935, i64 1124944, i64 1124994, i64 1125015, i64 1125035}
!5673 = !DILocation(line: 187, column: 1, scope: !5655)
!5674 = !DILocation(line: 188, column: 2, scope: !5655)
!5675 = !DILocation(line: 189, column: 1, scope: !5655)
!5676 = !DILocation(line: 190, column: 2, scope: !5655)
!5677 = !DILocation(line: 191, column: 1, scope: !5655)
!5678 = distinct !DISubprogram(name: "pgd_page_vaddr", scope: !3874, file: !3874, line: 1137, type: !5679, scopeLine: 1138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5681)
!5679 = !DISubroutineType(types: !5680)
!5680 = !{!7, !1883}
!5681 = !{!5682}
!5682 = !DILocalVariable(name: "pgd", arg: 1, scope: !5678, file: !3874, line: 1137, type: !1883)
!5683 = !DILocation(line: 1137, column: 50, scope: !5678)
!5684 = !DILocation(line: 1139, column: 24, scope: !5678)
!5685 = !DILocation(line: 1139, column: 9, scope: !5678)
!5686 = !DILocation(line: 1139, column: 2, scope: !5678)
!5687 = distinct !DISubprogram(name: "p4d_index", scope: !3874, file: !3874, line: 1124, type: !3721, scopeLine: 1125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5688)
!5688 = !{!5689}
!5689 = !DILocalVariable(name: "address", arg: 1, scope: !5687, file: !3874, line: 1124, type: !7)
!5690 = !DILocation(line: 1124, column: 53, scope: !5687)
!5691 = !DILocation(line: 1126, column: 10, scope: !5687)
!5692 = !DILocation(line: 1126, column: 18, scope: !5687)
!5693 = !DILocation(line: 1126, column: 35, scope: !5687)
!5694 = !DILocation(line: 1126, column: 48, scope: !5687)
!5695 = !DILocation(line: 1126, column: 34, scope: !5687)
!5696 = !DILocation(line: 1126, column: 32, scope: !5687)
!5697 = !DILocation(line: 1126, column: 2, scope: !5687)
!5698 = distinct !DISubprogram(name: "native_pgd_val", scope: !1644, file: !1644, line: 335, type: !5699, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5701)
!5699 = !DISubroutineType(types: !5700)
!5700 = !{!1887, !1883}
!5701 = !{!5702}
!5702 = !DILocalVariable(name: "pgd", arg: 1, scope: !5698, file: !1644, line: 335, type: !1883)
!5703 = !DILocation(line: 335, column: 45, scope: !5698)
!5704 = !DILocation(line: 337, column: 13, scope: !5698)
!5705 = !DILocation(line: 337, column: 17, scope: !5698)
!5706 = !DILocation(line: 337, column: 2, scope: !5698)
!5707 = distinct !DISubprogram(name: "paravirt_alloc_pud", scope: !4155, file: !4155, line: 24, type: !5561, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5708)
!5708 = !{!5709, !5710}
!5709 = !DILocalVariable(name: "mm", arg: 1, scope: !5707, file: !4155, line: 24, type: !1161)
!5710 = !DILocalVariable(name: "pfn", arg: 2, scope: !5707, file: !4155, line: 24, type: !7)
!5711 = !DILocation(line: 24, column: 57, scope: !5707)
!5712 = !DILocation(line: 24, column: 75, scope: !5707)
!5713 = !DILocation(line: 24, column: 81, scope: !5707)
!5714 = distinct !DISubprogram(name: "native_set_p4d", scope: !5494, file: !5494, line: 142, type: !5715, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5717)
!5715 = !DISubroutineType(types: !5716)
!5716 = !{null, !3497, !3498}
!5717 = !{!5718, !5719, !5720}
!5718 = !DILocalVariable(name: "p4dp", arg: 1, scope: !5714, file: !5494, line: 142, type: !3497)
!5719 = !DILocalVariable(name: "p4d", arg: 2, scope: !5714, file: !5494, line: 142, type: !3498)
!5720 = !DILocalVariable(name: "pgd", scope: !5714, file: !5494, line: 144, type: !1883)
!5721 = !DILocation(line: 142, column: 42, scope: !5714)
!5722 = !DILocation(line: 142, column: 54, scope: !5714)
!5723 = !DILocation(line: 144, column: 2, scope: !5714)
!5724 = !DILocation(line: 144, column: 8, scope: !5714)
!5725 = !DILocation(line: 146, column: 6, scope: !5714)
!5726 = !DILocation(line: 146, column: 6, scope: !5727)
!5727 = distinct !DILexicalBlock(scope: !5714, file: !5494, line: 146, column: 6)
!5728 = !DILocation(line: 147, column: 3, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5727, file: !5494, line: 146, column: 72)
!5730 = !DILocation(line: 147, column: 3, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5729, file: !5494, line: 147, column: 3)
!5732 = !DILocation(line: 147, column: 3, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5731, file: !5494, line: 147, column: 3)
!5734 = !DILocation(line: 147, column: 3, scope: !5735)
!5735 = distinct !DILexicalBlock(scope: !5731, file: !5494, line: 147, column: 3)
!5736 = !DILocation(line: 148, column: 3, scope: !5729)
!5737 = !DILocation(line: 151, column: 8, scope: !5714)
!5738 = !DILocation(line: 151, column: 24, scope: !5714)
!5739 = !DILocation(line: 152, column: 8, scope: !5714)
!5740 = !DILocation(line: 152, column: 36, scope: !5714)
!5741 = !DILocation(line: 153, column: 2, scope: !5714)
!5742 = !DILocation(line: 153, column: 2, scope: !5743)
!5743 = distinct !DILexicalBlock(scope: !5714, file: !5494, line: 153, column: 2)
!5744 = !DILocation(line: 153, column: 2, scope: !5745)
!5745 = distinct !DILexicalBlock(scope: !5743, file: !5494, line: 153, column: 2)
!5746 = !DILocation(line: 153, column: 2, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !5743, file: !5494, line: 153, column: 2)
!5748 = !DILocation(line: 154, column: 1, scope: !5714)
!5749 = distinct !DISubprogram(name: "native_make_p4d", scope: !1644, file: !1644, line: 348, type: !5750, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5752)
!5750 = !DISubroutineType(types: !5751)
!5751 = !{!3498, !1726}
!5752 = !{!5753}
!5753 = !DILocalVariable(name: "val", arg: 1, scope: !5749, file: !1644, line: 348, type: !1726)
!5754 = !DILocation(line: 348, column: 46, scope: !5749)
!5755 = !DILocation(line: 350, column: 17, scope: !5749)
!5756 = !DILocation(line: 350, column: 19, scope: !5749)
!5757 = !DILocation(line: 350, column: 2, scope: !5749)
!5758 = distinct !DISubprogram(name: "native_make_pgd", scope: !1644, file: !1644, line: 330, type: !5759, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5761)
!5759 = !DISubroutineType(types: !5760)
!5760 = !{!1883, !1887}
!5761 = !{!5762}
!5762 = !DILocalVariable(name: "val", arg: 1, scope: !5758, file: !1644, line: 330, type: !1887)
!5763 = !DILocation(line: 330, column: 46, scope: !5758)
!5764 = !DILocation(line: 332, column: 17, scope: !5758)
!5765 = !DILocation(line: 332, column: 19, scope: !5758)
!5766 = !DILocation(line: 332, column: 23, scope: !5758)
!5767 = !DILocation(line: 332, column: 2, scope: !5758)
!5768 = distinct !DISubprogram(name: "pti_set_user_pgtbl", scope: !3874, file: !3874, line: 903, type: !5769, scopeLine: 904, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5771)
!5769 = !DISubroutineType(types: !5770)
!5770 = !{!1883, !1882, !1883}
!5771 = !{!5772, !5773}
!5772 = !DILocalVariable(name: "pgdp", arg: 1, scope: !5768, file: !3874, line: 903, type: !1882)
!5773 = !DILocalVariable(name: "pgd", arg: 2, scope: !5768, file: !3874, line: 903, type: !1883)
!5774 = !DILocation(line: 903, column: 47, scope: !5768)
!5775 = !DILocation(line: 903, column: 59, scope: !5768)
!5776 = !DILocation(line: 905, column: 6, scope: !5768)
!5777 = !DILocation(line: 905, column: 7, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5768, file: !3874, line: 905, column: 6)
!5779 = !DILocation(line: 906, column: 10, scope: !5778)
!5780 = !DILocation(line: 906, column: 3, scope: !5778)
!5781 = !DILocation(line: 907, column: 30, scope: !5768)
!5782 = !DILocation(line: 907, column: 9, scope: !5768)
!5783 = !DILocation(line: 907, column: 2, scope: !5768)
!5784 = !DILocation(line: 908, column: 1, scope: !5768)
!5785 = !DISubprogram(name: "__pti_set_user_pgtbl", scope: !3874, file: !3874, line: 896, type: !5769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5786 = distinct !DISubprogram(name: "paravirt_alloc_p4d", scope: !4155, file: !4155, line: 25, type: !5561, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5787)
!5787 = !{!5788, !5789}
!5788 = !DILocalVariable(name: "mm", arg: 1, scope: !5786, file: !4155, line: 25, type: !1161)
!5789 = !DILocalVariable(name: "pfn", arg: 2, scope: !5786, file: !4155, line: 25, type: !7)
!5790 = !DILocation(line: 25, column: 57, scope: !5786)
!5791 = !DILocation(line: 25, column: 75, scope: !5786)
!5792 = !DILocation(line: 25, column: 81, scope: !5786)
!5793 = distinct !DISubprogram(name: "native_set_pgd", scope: !5494, file: !5494, line: 161, type: !5794, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5796)
!5794 = !DISubroutineType(types: !5795)
!5795 = !{null, !1882, !1883}
!5796 = !{!5797, !5798}
!5797 = !DILocalVariable(name: "pgdp", arg: 1, scope: !5793, file: !5494, line: 161, type: !1882)
!5798 = !DILocalVariable(name: "pgd", arg: 2, scope: !5793, file: !5494, line: 161, type: !1883)
!5799 = !DILocation(line: 161, column: 42, scope: !5793)
!5800 = !DILocation(line: 161, column: 54, scope: !5793)
!5801 = !DILocation(line: 163, column: 2, scope: !5793)
!5802 = !DILocation(line: 163, column: 2, scope: !5803)
!5803 = distinct !DILexicalBlock(scope: !5793, file: !5494, line: 163, column: 2)
!5804 = !DILocation(line: 163, column: 2, scope: !5805)
!5805 = distinct !DILexicalBlock(scope: !5803, file: !5494, line: 163, column: 2)
!5806 = !DILocation(line: 163, column: 2, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5803, file: !5494, line: 163, column: 2)
!5808 = !DILocation(line: 164, column: 1, scope: !5793)
!5809 = distinct !DISubprogram(name: "vmemmap_populate_address", scope: !3, file: !3, line: 245, type: !5810, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5812)
!5810 = !DISubroutineType(types: !5811)
!5811 = !{!1740, !7, !8, !3548, !145}
!5812 = !{!5813, !5814, !5815, !5816, !5817, !5818, !5819, !5820, !5821}
!5813 = !DILocalVariable(name: "addr", arg: 1, scope: !5809, file: !3, line: 245, type: !7)
!5814 = !DILocalVariable(name: "node", arg: 2, scope: !5809, file: !3, line: 245, type: !8)
!5815 = !DILocalVariable(name: "altmap", arg: 3, scope: !5809, file: !3, line: 246, type: !3548)
!5816 = !DILocalVariable(name: "reuse", arg: 4, scope: !5809, file: !3, line: 247, type: !145)
!5817 = !DILocalVariable(name: "pgd", scope: !5809, file: !3, line: 249, type: !1882)
!5818 = !DILocalVariable(name: "p4d", scope: !5809, file: !3, line: 250, type: !3497)
!5819 = !DILocalVariable(name: "pud", scope: !5809, file: !3, line: 251, type: !1721)
!5820 = !DILocalVariable(name: "pmd", scope: !5809, file: !3, line: 252, type: !1714)
!5821 = !DILocalVariable(name: "pte", scope: !5809, file: !3, line: 253, type: !1740)
!5822 = !DILocation(line: 245, column: 65, scope: !5809)
!5823 = !DILocation(line: 245, column: 75, scope: !5809)
!5824 = !DILocation(line: 246, column: 32, scope: !5809)
!5825 = !DILocation(line: 247, column: 25, scope: !5809)
!5826 = !DILocation(line: 249, column: 2, scope: !5809)
!5827 = !DILocation(line: 249, column: 9, scope: !5809)
!5828 = !DILocation(line: 250, column: 2, scope: !5809)
!5829 = !DILocation(line: 250, column: 9, scope: !5809)
!5830 = !DILocation(line: 251, column: 2, scope: !5809)
!5831 = !DILocation(line: 251, column: 9, scope: !5809)
!5832 = !DILocation(line: 252, column: 2, scope: !5809)
!5833 = !DILocation(line: 252, column: 9, scope: !5809)
!5834 = !DILocation(line: 253, column: 2, scope: !5809)
!5835 = !DILocation(line: 253, column: 9, scope: !5809)
!5836 = !DILocation(line: 255, column: 29, scope: !5809)
!5837 = !DILocation(line: 255, column: 35, scope: !5809)
!5838 = !DILocation(line: 255, column: 8, scope: !5809)
!5839 = !DILocation(line: 255, column: 6, scope: !5809)
!5840 = !DILocation(line: 256, column: 7, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5809, file: !3, line: 256, column: 6)
!5842 = !DILocation(line: 256, column: 6, scope: !5809)
!5843 = !DILocation(line: 257, column: 3, scope: !5841)
!5844 = !DILocation(line: 258, column: 29, scope: !5809)
!5845 = !DILocation(line: 258, column: 34, scope: !5809)
!5846 = !DILocation(line: 258, column: 40, scope: !5809)
!5847 = !DILocation(line: 258, column: 8, scope: !5809)
!5848 = !DILocation(line: 258, column: 6, scope: !5809)
!5849 = !DILocation(line: 259, column: 7, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5809, file: !3, line: 259, column: 6)
!5851 = !DILocation(line: 259, column: 6, scope: !5809)
!5852 = !DILocation(line: 260, column: 3, scope: !5850)
!5853 = !DILocation(line: 261, column: 29, scope: !5809)
!5854 = !DILocation(line: 261, column: 34, scope: !5809)
!5855 = !DILocation(line: 261, column: 40, scope: !5809)
!5856 = !DILocation(line: 261, column: 8, scope: !5809)
!5857 = !DILocation(line: 261, column: 6, scope: !5809)
!5858 = !DILocation(line: 262, column: 7, scope: !5859)
!5859 = distinct !DILexicalBlock(scope: !5809, file: !3, line: 262, column: 6)
!5860 = !DILocation(line: 262, column: 6, scope: !5809)
!5861 = !DILocation(line: 263, column: 3, scope: !5859)
!5862 = !DILocation(line: 264, column: 29, scope: !5809)
!5863 = !DILocation(line: 264, column: 34, scope: !5809)
!5864 = !DILocation(line: 264, column: 40, scope: !5809)
!5865 = !DILocation(line: 264, column: 8, scope: !5809)
!5866 = !DILocation(line: 264, column: 6, scope: !5809)
!5867 = !DILocation(line: 265, column: 7, scope: !5868)
!5868 = distinct !DILexicalBlock(scope: !5809, file: !3, line: 265, column: 6)
!5869 = !DILocation(line: 265, column: 6, scope: !5809)
!5870 = !DILocation(line: 266, column: 3, scope: !5868)
!5871 = !DILocation(line: 267, column: 29, scope: !5809)
!5872 = !DILocation(line: 267, column: 34, scope: !5809)
!5873 = !DILocation(line: 267, column: 40, scope: !5809)
!5874 = !DILocation(line: 267, column: 46, scope: !5809)
!5875 = !DILocation(line: 267, column: 54, scope: !5809)
!5876 = !DILocation(line: 267, column: 8, scope: !5809)
!5877 = !DILocation(line: 267, column: 6, scope: !5809)
!5878 = !DILocation(line: 268, column: 7, scope: !5879)
!5879 = distinct !DILexicalBlock(scope: !5809, file: !3, line: 268, column: 6)
!5880 = !DILocation(line: 268, column: 6, scope: !5809)
!5881 = !DILocation(line: 269, column: 3, scope: !5879)
!5882 = !DILocation(line: 270, column: 17, scope: !5809)
!5883 = !DILocation(line: 270, column: 22, scope: !5809)
!5884 = !DILocation(line: 270, column: 28, scope: !5809)
!5885 = !DILocation(line: 270, column: 34, scope: !5809)
!5886 = !DILocation(line: 270, column: 39, scope: !5809)
!5887 = !DILocation(line: 270, column: 2, scope: !5809)
!5888 = !DILocation(line: 272, column: 9, scope: !5809)
!5889 = !DILocation(line: 272, column: 2, scope: !5809)
!5890 = !DILocation(line: 273, column: 1, scope: !5809)
!5891 = distinct !DISubprogram(name: "is_power_of_2", scope: !4869, file: !4869, line: 45, type: !5892, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5894)
!5892 = !DISubroutineType(types: !5893)
!5893 = !{!1349, !7}
!5894 = !{!5895}
!5895 = !DILocalVariable(name: "n", arg: 1, scope: !5891, file: !4869, line: 45, type: !7)
!5896 = !DILocation(line: 45, column: 34, scope: !5891)
!5897 = !DILocation(line: 47, column: 10, scope: !5891)
!5898 = !DILocation(line: 47, column: 12, scope: !5891)
!5899 = !DILocation(line: 47, column: 17, scope: !5891)
!5900 = !DILocation(line: 47, column: 22, scope: !5891)
!5901 = !DILocation(line: 47, column: 27, scope: !5891)
!5902 = !DILocation(line: 47, column: 29, scope: !5891)
!5903 = !DILocation(line: 47, column: 24, scope: !5891)
!5904 = !DILocation(line: 47, column: 35, scope: !5891)
!5905 = !DILocation(line: 0, scope: !5891)
!5906 = !DILocation(line: 47, column: 2, scope: !5891)
!5907 = distinct !DISubprogram(name: "pgmap_vmemmap_nr", scope: !73, file: !73, line: 154, type: !5908, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5910)
!5908 = !DISubroutineType(types: !5909)
!5909 = !{!7, !3401}
!5910 = !{!5911}
!5911 = !DILocalVariable(name: "pgmap", arg: 1, scope: !5907, file: !73, line: 154, type: !3401)
!5912 = !DILocation(line: 154, column: 66, scope: !5907)
!5913 = !DILocation(line: 156, column: 14, scope: !5907)
!5914 = !DILocation(line: 156, column: 21, scope: !5907)
!5915 = !DILocation(line: 156, column: 11, scope: !5907)
!5916 = !DILocation(line: 156, column: 9, scope: !5907)
!5917 = !DILocation(line: 156, column: 2, scope: !5907)
!5918 = distinct !DISubprogram(name: "reuse_compound_section", scope: !3, file: !3, line: 372, type: !5919, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5921)
!5919 = !DISubroutineType(types: !5920)
!5920 = !{!1349, !7, !3401}
!5921 = !{!5922, !5923, !5924, !5925}
!5922 = !DILocalVariable(name: "start_pfn", arg: 1, scope: !5918, file: !3, line: 372, type: !7)
!5923 = !DILocalVariable(name: "pgmap", arg: 2, scope: !5918, file: !3, line: 373, type: !3401)
!5924 = !DILocalVariable(name: "nr_pages", scope: !5918, file: !3, line: 375, type: !7)
!5925 = !DILocalVariable(name: "offset", scope: !5918, file: !3, line: 376, type: !7)
!5926 = !DILocation(line: 372, column: 60, scope: !5918)
!5927 = !DILocation(line: 373, column: 31, scope: !5918)
!5928 = !DILocation(line: 375, column: 2, scope: !5918)
!5929 = !DILocation(line: 375, column: 16, scope: !5918)
!5930 = !DILocation(line: 375, column: 44, scope: !5918)
!5931 = !DILocation(line: 375, column: 27, scope: !5918)
!5932 = !DILocation(line: 376, column: 2, scope: !5918)
!5933 = !DILocation(line: 376, column: 16, scope: !5918)
!5934 = !DILocation(line: 376, column: 25, scope: !5918)
!5935 = !DILocation(line: 377, column: 3, scope: !5918)
!5936 = !DILocation(line: 376, column: 35, scope: !5918)
!5937 = !DILocation(line: 379, column: 10, scope: !5918)
!5938 = !DILocation(line: 379, column: 39, scope: !5918)
!5939 = !DILocation(line: 379, column: 42, scope: !5918)
!5940 = !DILocation(line: 379, column: 51, scope: !5918)
!5941 = !DILocation(line: 0, scope: !5918)
!5942 = !DILocation(line: 380, column: 1, scope: !5918)
!5943 = !DILocation(line: 379, column: 2, scope: !5918)
!5944 = distinct !DISubprogram(name: "compound_section_tail_page", scope: !3, file: !3, line: 382, type: !5945, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5947)
!5945 = !DISubroutineType(types: !5946)
!5946 = !{!1740, !7}
!5947 = !{!5948, !5949}
!5948 = !DILocalVariable(name: "addr", arg: 1, scope: !5944, file: !3, line: 382, type: !7)
!5949 = !DILocalVariable(name: "pte", scope: !5944, file: !3, line: 384, type: !1740)
!5950 = !DILocation(line: 382, column: 67, scope: !5944)
!5951 = !DILocation(line: 384, column: 2, scope: !5944)
!5952 = !DILocation(line: 384, column: 9, scope: !5944)
!5953 = !DILocation(line: 386, column: 7, scope: !5944)
!5954 = !DILocation(line: 392, column: 36, scope: !5944)
!5955 = !DILocation(line: 392, column: 26, scope: !5944)
!5956 = !DILocation(line: 392, column: 43, scope: !5944)
!5957 = !DILocation(line: 392, column: 8, scope: !5944)
!5958 = !DILocation(line: 392, column: 6, scope: !5944)
!5959 = !DILocation(line: 393, column: 7, scope: !5960)
!5960 = distinct !DILexicalBlock(scope: !5944, file: !3, line: 393, column: 6)
!5961 = !DILocation(line: 393, column: 6, scope: !5944)
!5962 = !DILocation(line: 394, column: 3, scope: !5960)
!5963 = !DILocation(line: 396, column: 9, scope: !5944)
!5964 = !DILocation(line: 396, column: 2, scope: !5944)
!5965 = !DILocation(line: 397, column: 1, scope: !5944)
!5966 = distinct !DISubprogram(name: "pmd_off_k", scope: !3893, file: !3893, line: 168, type: !5967, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5969)
!5967 = !DISubroutineType(types: !5968)
!5968 = !{!1714, !7}
!5969 = !{!5970}
!5970 = !DILocalVariable(name: "va", arg: 1, scope: !5966, file: !3893, line: 168, type: !7)
!5971 = !DILocation(line: 168, column: 46, scope: !5966)
!5972 = !DILocation(line: 170, column: 42, scope: !5966)
!5973 = !DILocation(line: 170, column: 60, scope: !5966)
!5974 = !DILocation(line: 170, column: 31, scope: !5966)
!5975 = !DILocation(line: 170, column: 65, scope: !5966)
!5976 = !DILocation(line: 170, column: 20, scope: !5966)
!5977 = !DILocation(line: 170, column: 70, scope: !5966)
!5978 = !DILocation(line: 170, column: 9, scope: !5966)
!5979 = !DILocation(line: 170, column: 2, scope: !5966)
