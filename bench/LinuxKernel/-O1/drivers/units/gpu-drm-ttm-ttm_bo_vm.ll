; ModuleID = 'drivers/gpu/drm/ttm/ttm_bo_vm.c'
source_filename = "drivers/gpu/drm/ttm/ttm_bo_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_bo_vm_reserve: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_bo_vm_reserve ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_bo_vm_fault_reserved: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_bo_vm_fault_reserved ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_bo_vm_dummy_page: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_bo_vm_dummy_page ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_bo_vm_fault: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_bo_vm_fault ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_bo_vm_open: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_bo_vm_open ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_bo_vm_close: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_bo_vm_close ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_bo_vm_access: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_bo_vm_access ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_bo_mmap_obj: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_bo_mmap_obj ; .previous"

%struct.ttm_operation_ctx = type { i8, i8, i8, i8, i8, ptr, i64 }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.27 }
%struct.atomic_t = type { i32 }
%union.anon.27 = type { i64 }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, ptr, i32, i32, %struct.work_struct, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i64, i32, ptr, ptr, ptr, %struct.dma_resv, %struct.anon.15, ptr, %struct.list_head, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.13, %struct.qspinlock }
%union.anon.13 = type { %struct.atomic_t }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.drm_mm_node = type { i64, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.15 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.vm_fault = type { %struct.anon.16, i32, ptr, ptr, %union.anon.17, ptr, ptr, ptr, ptr, ptr }
%struct.anon.16 = type { ptr, i32, i64, i64, i64 }
%union.anon.17 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_area_struct = type { %union.anon.18, ptr, %struct.pgprot, %union.anon.20, i32, ptr, i8, %struct.anon.21, %struct.list_head, ptr, ptr, i64, ptr, ptr, %struct.atomic64_t, ptr, %struct.vm_userfaultfd_ctx }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i64, i64 }
%struct.pgprot = type { i64 }
%union.anon.20 = type { i64 }
%struct.anon.21 = type { %struct.rb_node, i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.ttm_tt = type { ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.mm_struct = type { %struct.anon.24, [0 x i64] }
%struct.anon.24 = type { %struct.anon.25, %struct.maple_tree, ptr, i64, i64, i64, i64, i64, ptr, %struct.atomic_t, %struct.atomic_t, ptr, i64, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [52 x i64], [4 x %struct.percpu_counter], ptr, %struct.mm_context_t, i64, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.uprobes_state, %struct.atomic64_t, %struct.work_struct, [48 x i8] }
%struct.anon.25 = type { %struct.atomic_t, [60 x i8] }
%struct.maple_tree = type { %union.anon.26, i32, ptr }
%union.anon.26 = type { %struct.spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.seqcount = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_context_t = type { i64, %struct.atomic64_t, i64, %struct.rw_semaphore, ptr, i64, %struct.mutex, ptr, ptr, %struct.atomic_t, i16, i16 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.ttm_resource = type { i64, i64, i32, i32, %struct.ttm_bus_placement, ptr, %struct.list_head }
%struct.ttm_bus_placement = type { ptr, i64, i8, i32 }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.ttm_resource_manager = type { i8, i8, ptr, i64, ptr, %struct.spinlock, ptr, [4 x %struct.list_head], i64 }
%struct.ttm_pool = type { ptr, i32, i8, i8, [3 x %struct.anon.22] }
%struct.anon.22 = type { [11 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.ttm_device_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.23, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.23 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.vma_lock = type { %struct.rw_semaphore }

@__UNIQUE_ID___addressable_ttm_bo_vm_reserve327 = internal global ptr @ttm_bo_vm_reserve, section ".discard.addressable", align 8, !dbg !0
@__const.ttm_bo_vm_fault_reserved.ctx = private unnamed_addr constant %struct.ttm_operation_ctx { i8 1, i8 0, i8 0, i8 0, i8 1, ptr null, i64 0 }, align 8
@vmemmap_base = external dso_local global i64, align 8
@__UNIQUE_ID___addressable_ttm_bo_vm_fault_reserved328 = internal global ptr @ttm_bo_vm_fault_reserved, section ".discard.addressable", align 8, !dbg !5477
@.str = private unnamed_addr constant [26 x i8] c"ttm_bo_release_dummy_page\00", align 1, !dbg !5479
@__UNIQUE_ID___addressable_ttm_bo_vm_dummy_page329 = internal global ptr @ttm_bo_vm_dummy_page, section ".discard.addressable", align 8, !dbg !5484
@__UNIQUE_ID___addressable_ttm_bo_vm_fault330 = internal global ptr @ttm_bo_vm_fault, section ".discard.addressable", align 8, !dbg !5486
@.str.1 = private unnamed_addr constant [32 x i8] c"drivers/gpu/drm/ttm/ttm_bo_vm.c\00", align 1, !dbg !5488
@__UNIQUE_ID___addressable_ttm_bo_vm_open331 = internal global ptr @ttm_bo_vm_open, section ".discard.addressable", align 8, !dbg !5490
@__UNIQUE_ID___addressable_ttm_bo_vm_close332 = internal global ptr @ttm_bo_vm_close, section ".discard.addressable", align 8, !dbg !5492
@__UNIQUE_ID___addressable_ttm_bo_vm_access335 = internal global ptr @ttm_bo_vm_access, section ".discard.addressable", align 8, !dbg !5494
@ttm_bo_vm_ops = internal constant %struct.vm_operations_struct { ptr @ttm_bo_vm_open, ptr @ttm_bo_vm_close, ptr null, ptr null, ptr null, ptr @ttm_bo_vm_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ttm_bo_vm_access, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5503
@__UNIQUE_ID___addressable_ttm_bo_mmap_obj336 = internal global ptr @ttm_bo_mmap_obj, section ".discard.addressable", align 8, !dbg !5496
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"include/drm/ttm/ttm_bo.h\00", align 1, !dbg !5498
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID___addressable_ttm_bo_vm_reserve327, ptr @__UNIQUE_ID___addressable_ttm_bo_vm_fault_reserved328, ptr @__UNIQUE_ID___addressable_ttm_bo_vm_dummy_page329, ptr @__UNIQUE_ID___addressable_ttm_bo_vm_fault330, ptr @__UNIQUE_ID___addressable_ttm_bo_vm_open331, ptr @__UNIQUE_ID___addressable_ttm_bo_vm_close332, ptr @__UNIQUE_ID___addressable_ttm_bo_vm_access335, ptr @__UNIQUE_ID___addressable_ttm_bo_mmap_obj336], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ttm_bo_vm_reserve(ptr noundef %bo, ptr noundef %vmf) #0 align 16 !dbg !5514 {
entry:
  %retval = alloca i32, align 4
  %bo.addr = alloca ptr, align 8
  %vmf.addr = alloca ptr, align 8
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !5518, metadata !DIExpression()), !dbg !5520
  store ptr %vmf, ptr %vmf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vmf.addr, metadata !5519, metadata !DIExpression()), !dbg !5521
  %0 = load ptr, ptr %bo.addr, align 8, !dbg !5522
  %base = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 0, !dbg !5522
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %base, i32 0, i32 9, !dbg !5522
  %1 = load ptr, ptr %resv, align 8, !dbg !5522
  %call = call zeroext i1 @dma_resv_trylock(ptr noundef %1) #8, !dbg !5522
  %lnot = xor i1 %call, true, !dbg !5522
  %lnot1 = xor i1 %lnot, true, !dbg !5522
  %lnot2 = xor i1 %lnot1, true, !dbg !5522
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5522
  %conv = sext i32 %lnot.ext to i64, !dbg !5522
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5522
  %tobool = icmp ne i64 %expval, 0, !dbg !5522
  br i1 %tobool, label %if.then, label %if.end23, !dbg !5524

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %vmf.addr, align 8, !dbg !5525
  %flags = getelementptr inbounds %struct.vm_fault, ptr %2, i32 0, i32 1, !dbg !5528
  %3 = load i32, ptr %flags, align 8, !dbg !5528
  %call3 = call zeroext i1 @fault_flag_allow_retry_first(i32 noundef %3) #8, !dbg !5529
  br i1 %call3, label %if.then4, label %if.end16, !dbg !5530

if.then4:                                         ; preds = %if.then
  %4 = load ptr, ptr %vmf.addr, align 8, !dbg !5531
  %flags5 = getelementptr inbounds %struct.vm_fault, ptr %4, i32 0, i32 1, !dbg !5534
  %5 = load i32, ptr %flags5, align 8, !dbg !5534
  %and = and i32 %5, 8, !dbg !5535
  %tobool6 = icmp ne i32 %and, 0, !dbg !5535
  br i1 %tobool6, label %if.end15, label %if.then7, !dbg !5536

if.then7:                                         ; preds = %if.then4
  %6 = load ptr, ptr %bo.addr, align 8, !dbg !5537
  call void @ttm_bo_get(ptr noundef %6) #8, !dbg !5539
  %7 = load ptr, ptr %vmf.addr, align 8, !dbg !5540
  %8 = getelementptr inbounds %struct.vm_fault, ptr %7, i32 0, i32 0, !dbg !5541
  %vma = getelementptr inbounds %struct.anon.16, ptr %8, i32 0, i32 0, !dbg !5541
  %9 = load ptr, ptr %vma, align 8, !dbg !5541
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %9, i32 0, i32 1, !dbg !5542
  %10 = load ptr, ptr %vm_mm, align 8, !dbg !5542
  call void @mmap_read_unlock(ptr noundef %10) #8, !dbg !5543
  %11 = load ptr, ptr %bo.addr, align 8, !dbg !5544
  %base8 = getelementptr inbounds %struct.ttm_buffer_object, ptr %11, i32 0, i32 0, !dbg !5546
  %resv9 = getelementptr inbounds %struct.drm_gem_object, ptr %base8, i32 0, i32 9, !dbg !5547
  %12 = load ptr, ptr %resv9, align 8, !dbg !5547
  %call10 = call i32 @dma_resv_lock_interruptible(ptr noundef %12, ptr noundef null) #8, !dbg !5548
  %tobool11 = icmp ne i32 %call10, 0, !dbg !5548
  br i1 %tobool11, label %if.end, label %if.then12, !dbg !5549

if.then12:                                        ; preds = %if.then7
  %13 = load ptr, ptr %bo.addr, align 8, !dbg !5550
  %base13 = getelementptr inbounds %struct.ttm_buffer_object, ptr %13, i32 0, i32 0, !dbg !5551
  %resv14 = getelementptr inbounds %struct.drm_gem_object, ptr %base13, i32 0, i32 9, !dbg !5552
  %14 = load ptr, ptr %resv14, align 8, !dbg !5552
  call void @dma_resv_unlock(ptr noundef %14) #8, !dbg !5553
  br label %if.end, !dbg !5553

if.end:                                           ; preds = %if.then12, %if.then7
  %15 = load ptr, ptr %bo.addr, align 8, !dbg !5554
  call void @ttm_bo_put(ptr noundef %15) #8, !dbg !5555
  br label %if.end15, !dbg !5556

if.end15:                                         ; preds = %if.end, %if.then4
  store i32 1024, ptr %retval, align 4, !dbg !5557
  br label %return, !dbg !5557

if.end16:                                         ; preds = %if.then
  %16 = load ptr, ptr %bo.addr, align 8, !dbg !5558
  %base17 = getelementptr inbounds %struct.ttm_buffer_object, ptr %16, i32 0, i32 0, !dbg !5560
  %resv18 = getelementptr inbounds %struct.drm_gem_object, ptr %base17, i32 0, i32 9, !dbg !5561
  %17 = load ptr, ptr %resv18, align 8, !dbg !5561
  %call19 = call i32 @dma_resv_lock_interruptible(ptr noundef %17, ptr noundef null) #8, !dbg !5562
  %tobool20 = icmp ne i32 %call19, 0, !dbg !5562
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !5563

if.then21:                                        ; preds = %if.end16
  store i32 256, ptr %retval, align 4, !dbg !5564
  br label %return, !dbg !5564

if.end22:                                         ; preds = %if.end16
  br label %if.end23, !dbg !5565

if.end23:                                         ; preds = %if.end22, %entry
  %18 = load ptr, ptr %bo.addr, align 8, !dbg !5566
  %ttm = getelementptr inbounds %struct.ttm_buffer_object, ptr %18, i32 0, i32 7, !dbg !5568
  %19 = load ptr, ptr %ttm, align 8, !dbg !5568
  %tobool24 = icmp ne ptr %19, null, !dbg !5566
  br i1 %tobool24, label %land.lhs.true, label %if.end39, !dbg !5569

land.lhs.true:                                    ; preds = %if.end23
  %20 = load ptr, ptr %bo.addr, align 8, !dbg !5570
  %ttm25 = getelementptr inbounds %struct.ttm_buffer_object, ptr %20, i32 0, i32 7, !dbg !5571
  %21 = load ptr, ptr %ttm25, align 8, !dbg !5571
  %page_flags = getelementptr inbounds %struct.ttm_tt, ptr %21, i32 0, i32 1, !dbg !5572
  %22 = load i32, ptr %page_flags, align 8, !dbg !5572
  %conv26 = zext i32 %22 to i64, !dbg !5570
  %and27 = and i64 %conv26, 4, !dbg !5573
  %tobool28 = icmp ne i64 %and27, 0, !dbg !5573
  br i1 %tobool28, label %if.then29, label %if.end39, !dbg !5574

if.then29:                                        ; preds = %land.lhs.true
  %23 = load ptr, ptr %bo.addr, align 8, !dbg !5575
  %ttm30 = getelementptr inbounds %struct.ttm_buffer_object, ptr %23, i32 0, i32 7, !dbg !5578
  %24 = load ptr, ptr %ttm30, align 8, !dbg !5578
  %page_flags31 = getelementptr inbounds %struct.ttm_tt, ptr %24, i32 0, i32 1, !dbg !5579
  %25 = load i32, ptr %page_flags31, align 8, !dbg !5579
  %conv32 = zext i32 %25 to i64, !dbg !5575
  %and33 = and i64 %conv32, 8, !dbg !5580
  %tobool34 = icmp ne i64 %and33, 0, !dbg !5580
  br i1 %tobool34, label %if.end38, label %if.then35, !dbg !5581

if.then35:                                        ; preds = %if.then29
  %26 = load ptr, ptr %bo.addr, align 8, !dbg !5582
  %base36 = getelementptr inbounds %struct.ttm_buffer_object, ptr %26, i32 0, i32 0, !dbg !5584
  %resv37 = getelementptr inbounds %struct.drm_gem_object, ptr %base36, i32 0, i32 9, !dbg !5585
  %27 = load ptr, ptr %resv37, align 8, !dbg !5585
  call void @dma_resv_unlock(ptr noundef %27) #8, !dbg !5586
  store i32 2, ptr %retval, align 4, !dbg !5587
  br label %return, !dbg !5587

if.end38:                                         ; preds = %if.then29
  br label %if.end39, !dbg !5588

if.end39:                                         ; preds = %if.end38, %land.lhs.true, %if.end23
  store i32 0, ptr %retval, align 4, !dbg !5589
  br label %return, !dbg !5589

return:                                           ; preds = %if.end39, %if.then35, %if.then21, %if.end15
  %28 = load i32, ptr %retval, align 4, !dbg !5590
  ret i32 %28, !dbg !5590
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dma_resv_trylock(ptr noundef %obj) #2 align 16 !dbg !5591 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !5595, metadata !DIExpression()), !dbg !5596
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !5597
  %lock = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 0, !dbg !5598
  %call = call i32 @ww_mutex_trylock(ptr noundef %lock, ptr noundef null) #8, !dbg !5599
  %tobool = icmp ne i32 %call, 0, !dbg !5599
  ret i1 %tobool, !dbg !5600
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @fault_flag_allow_retry_first(i32 noundef %flags) #2 align 16 !dbg !5601 {
entry:
  %flags.addr = alloca i32, align 4
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5605, metadata !DIExpression()), !dbg !5606
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5607
  %and = and i32 %0, 4, !dbg !5608
  %tobool = icmp ne i32 %and, 0, !dbg !5608
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5609

land.rhs:                                         ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5610
  %and1 = and i32 %1, 32, !dbg !5611
  %tobool2 = icmp ne i32 %and1, 0, !dbg !5612
  %lnot = xor i1 %tobool2, true, !dbg !5612
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !5613
  ret i1 %2, !dbg !5614
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_bo_get(ptr noundef %bo) #2 align 16 !dbg !5615 {
entry:
  %bo.addr = alloca ptr, align 8
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !5617, metadata !DIExpression()), !dbg !5618
  %0 = load ptr, ptr %bo.addr, align 8, !dbg !5619
  %kref = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 5, !dbg !5620
  call void @kref_get(ptr noundef %kref) #8, !dbg !5621
  ret void, !dbg !5622
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmap_read_unlock(ptr noundef %mm) #2 align 16 !dbg !5623 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5628, metadata !DIExpression()), !dbg !5629
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !5630
  call void @__mmap_lock_trace_released(ptr noundef %0, i1 noundef zeroext false) #8, !dbg !5631
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !5632
  %2 = getelementptr inbounds %struct.mm_struct, ptr %1, i32 0, i32 0, !dbg !5633
  %mmap_lock = getelementptr inbounds %struct.anon.24, ptr %2, i32 0, i32 16, !dbg !5633
  call void @up_read(ptr noundef %mmap_lock) #8, !dbg !5634
  ret void, !dbg !5635
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dma_resv_lock_interruptible(ptr noundef %obj, ptr noundef %ctx) #2 align 16 !dbg !5636 {
entry:
  %obj.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !5640, metadata !DIExpression()), !dbg !5642
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !5641, metadata !DIExpression()), !dbg !5643
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !5644
  %lock = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 0, !dbg !5645
  %1 = load ptr, ptr %ctx.addr, align 8, !dbg !5646
  %call = call i32 @ww_mutex_lock_interruptible(ptr noundef %lock, ptr noundef %1) #8, !dbg !5647
  ret i32 %call, !dbg !5648
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_resv_unlock(ptr noundef %obj) #2 align 16 !dbg !5649 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !5653, metadata !DIExpression()), !dbg !5654
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !5655
  call void @dma_resv_reset_max_fences(ptr noundef %0) #8, !dbg !5656
  %1 = load ptr, ptr %obj.addr, align 8, !dbg !5657
  %lock = getelementptr inbounds %struct.dma_resv, ptr %1, i32 0, i32 0, !dbg !5658
  call void @ww_mutex_unlock(ptr noundef %lock) #8, !dbg !5659
  ret void, !dbg !5660
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5661 dso_local void @ttm_bo_put(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ttm_bo_vm_fault_reserved(ptr noundef %vmf, i64 %prot.coerce, i64 noundef %num_prefault) #0 align 16 !dbg !5662 {
entry:
  %retval = alloca i32, align 4
  %prot = alloca %struct.pgprot, align 8
  %vmf.addr = alloca ptr, align 8
  %num_prefault.addr = alloca i64, align 8
  %vma = alloca ptr, align 8
  %bo = alloca ptr, align 8
  %bdev = alloca ptr, align 8
  %page_offset = alloca i64, align 8
  %page_last = alloca i64, align 8
  %pfn = alloca i64, align 8
  %ttm = alloca ptr, align 8
  %page = alloca ptr, align 8
  %err = alloca i32, align 4
  %i = alloca i64, align 8
  %ret = alloca i32, align 4
  %address = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.pgprot, align 8
  %ctx = alloca %struct.ttm_operation_ctx, align 8
  %tmp62 = alloca i32, align 4
  %.compoundliteral = alloca %struct.pgprot, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0
  store i64 %prot.coerce, ptr %coerce.dive, align 8
  store ptr %vmf, ptr %vmf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vmf.addr, metadata !5666, metadata !DIExpression()), !dbg !5684
  call void @llvm.dbg.declare(metadata ptr %prot, metadata !5667, metadata !DIExpression()), !dbg !5685
  store i64 %num_prefault, ptr %num_prefault.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num_prefault.addr, metadata !5668, metadata !DIExpression()), !dbg !5686
  call void @llvm.lifetime.start.p0(i64 8, ptr %vma) #9, !dbg !5687
  call void @llvm.dbg.declare(metadata ptr %vma, metadata !5669, metadata !DIExpression()), !dbg !5688
  %0 = load ptr, ptr %vmf.addr, align 8, !dbg !5689
  %1 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 0, !dbg !5690
  %vma1 = getelementptr inbounds %struct.anon.16, ptr %1, i32 0, i32 0, !dbg !5690
  %2 = load ptr, ptr %vma1, align 8, !dbg !5690
  store ptr %2, ptr %vma, align 8, !dbg !5688
  call void @llvm.lifetime.start.p0(i64 8, ptr %bo) #9, !dbg !5691
  call void @llvm.dbg.declare(metadata ptr %bo, metadata !5670, metadata !DIExpression()), !dbg !5692
  %3 = load ptr, ptr %vma, align 8, !dbg !5693
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 13, !dbg !5694
  %4 = load ptr, ptr %vm_private_data, align 8, !dbg !5694
  store ptr %4, ptr %bo, align 8, !dbg !5692
  call void @llvm.lifetime.start.p0(i64 8, ptr %bdev) #9, !dbg !5695
  call void @llvm.dbg.declare(metadata ptr %bdev, metadata !5671, metadata !DIExpression()), !dbg !5696
  %5 = load ptr, ptr %bo, align 8, !dbg !5697
  %bdev2 = getelementptr inbounds %struct.ttm_buffer_object, ptr %5, i32 0, i32 1, !dbg !5698
  %6 = load ptr, ptr %bdev2, align 8, !dbg !5698
  store ptr %6, ptr %bdev, align 8, !dbg !5696
  call void @llvm.lifetime.start.p0(i64 8, ptr %page_offset) #9, !dbg !5699
  call void @llvm.dbg.declare(metadata ptr %page_offset, metadata !5672, metadata !DIExpression()), !dbg !5700
  call void @llvm.lifetime.start.p0(i64 8, ptr %page_last) #9, !dbg !5701
  call void @llvm.dbg.declare(metadata ptr %page_last, metadata !5673, metadata !DIExpression()), !dbg !5702
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfn) #9, !dbg !5703
  call void @llvm.dbg.declare(metadata ptr %pfn, metadata !5674, metadata !DIExpression()), !dbg !5704
  call void @llvm.lifetime.start.p0(i64 8, ptr %ttm) #9, !dbg !5705
  call void @llvm.dbg.declare(metadata ptr %ttm, metadata !5675, metadata !DIExpression()), !dbg !5706
  store ptr null, ptr %ttm, align 8, !dbg !5706
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #9, !dbg !5707
  call void @llvm.dbg.declare(metadata ptr %page, metadata !5676, metadata !DIExpression()), !dbg !5708
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #9, !dbg !5709
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5677, metadata !DIExpression()), !dbg !5710
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9, !dbg !5711
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5678, metadata !DIExpression()), !dbg !5712
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !5713
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5679, metadata !DIExpression()), !dbg !5714
  store i32 256, ptr %ret, align 4, !dbg !5714
  call void @llvm.lifetime.start.p0(i64 8, ptr %address) #9, !dbg !5715
  call void @llvm.dbg.declare(metadata ptr %address, metadata !5680, metadata !DIExpression()), !dbg !5716
  %7 = load ptr, ptr %vmf.addr, align 8, !dbg !5717
  %8 = getelementptr inbounds %struct.vm_fault, ptr %7, i32 0, i32 0, !dbg !5718
  %address3 = getelementptr inbounds %struct.anon.16, ptr %8, i32 0, i32 3, !dbg !5718
  %9 = load i64, ptr %address3, align 8, !dbg !5718
  store i64 %9, ptr %address, align 8, !dbg !5716
  %10 = load ptr, ptr %bo, align 8, !dbg !5719
  %11 = load ptr, ptr %vmf.addr, align 8, !dbg !5720
  %call = call i32 @ttm_bo_vm_fault_idle(ptr noundef %10, ptr noundef %11) #8, !dbg !5721
  store i32 %call, ptr %ret, align 4, !dbg !5722
  %12 = load i32, ptr %ret, align 4, !dbg !5723
  %cmp = icmp ne i32 %12, 0, !dbg !5723
  %lnot = xor i1 %cmp, true, !dbg !5723
  %lnot4 = xor i1 %lnot, true, !dbg !5723
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5723
  %conv = sext i32 %lnot.ext to i64, !dbg !5723
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5723
  %tobool = icmp ne i64 %expval, 0, !dbg !5723
  br i1 %tobool, label %if.then, label %if.end, !dbg !5725

if.then:                                          ; preds = %entry
  %13 = load i32, ptr %ret, align 4, !dbg !5726
  store i32 %13, ptr %retval, align 4, !dbg !5727
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup131, !dbg !5727

if.end:                                           ; preds = %entry
  %14 = load ptr, ptr %bdev, align 8, !dbg !5728
  %15 = load ptr, ptr %bo, align 8, !dbg !5729
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %15, i32 0, i32 6, !dbg !5730
  %16 = load ptr, ptr %resource, align 8, !dbg !5730
  %call5 = call i32 @ttm_mem_io_reserve(ptr noundef %14, ptr noundef %16) #8, !dbg !5731
  store i32 %call5, ptr %err, align 4, !dbg !5732
  %17 = load i32, ptr %err, align 4, !dbg !5733
  %cmp6 = icmp ne i32 %17, 0, !dbg !5733
  %lnot8 = xor i1 %cmp6, true, !dbg !5733
  %lnot10 = xor i1 %lnot8, true, !dbg !5733
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !5733
  %conv12 = sext i32 %lnot.ext11 to i64, !dbg !5733
  %expval13 = call i64 @llvm.expect.i64(i64 %conv12, i64 0), !dbg !5733
  %tobool14 = icmp ne i64 %expval13, 0, !dbg !5733
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5735

if.then15:                                        ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5736
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup131, !dbg !5736

if.end16:                                         ; preds = %if.end
  %18 = load i64, ptr %address, align 8, !dbg !5737
  %19 = load ptr, ptr %vma, align 8, !dbg !5738
  %20 = getelementptr inbounds %struct.vm_area_struct, ptr %19, i32 0, i32 0, !dbg !5739
  %vm_start = getelementptr inbounds %struct.anon.19, ptr %20, i32 0, i32 0, !dbg !5739
  %21 = load i64, ptr %vm_start, align 8, !dbg !5739
  %sub = sub i64 %18, %21, !dbg !5740
  %shr = lshr i64 %sub, 12, !dbg !5741
  %22 = load ptr, ptr %vma, align 8, !dbg !5742
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %22, i32 0, i32 11, !dbg !5743
  %23 = load i64, ptr %vm_pgoff, align 8, !dbg !5743
  %add = add i64 %shr, %23, !dbg !5744
  %24 = load ptr, ptr %bo, align 8, !dbg !5745
  %base = getelementptr inbounds %struct.ttm_buffer_object, ptr %24, i32 0, i32 0, !dbg !5746
  %vma_node = getelementptr inbounds %struct.drm_gem_object, ptr %base, i32 0, i32 4, !dbg !5747
  %call17 = call i64 @drm_vma_node_start(ptr noundef %vma_node) #8, !dbg !5748
  %sub18 = sub i64 %add, %call17, !dbg !5749
  store i64 %sub18, ptr %page_offset, align 8, !dbg !5750
  %25 = load ptr, ptr %vma, align 8, !dbg !5751
  %call19 = call i64 @vma_pages(ptr noundef %25) #8, !dbg !5752
  %26 = load ptr, ptr %vma, align 8, !dbg !5753
  %vm_pgoff20 = getelementptr inbounds %struct.vm_area_struct, ptr %26, i32 0, i32 11, !dbg !5754
  %27 = load i64, ptr %vm_pgoff20, align 8, !dbg !5754
  %add21 = add i64 %call19, %27, !dbg !5755
  %28 = load ptr, ptr %bo, align 8, !dbg !5756
  %base22 = getelementptr inbounds %struct.ttm_buffer_object, ptr %28, i32 0, i32 0, !dbg !5757
  %vma_node23 = getelementptr inbounds %struct.drm_gem_object, ptr %base22, i32 0, i32 4, !dbg !5758
  %call24 = call i64 @drm_vma_node_start(ptr noundef %vma_node23) #8, !dbg !5759
  %sub25 = sub i64 %add21, %call24, !dbg !5760
  store i64 %sub25, ptr %page_last, align 8, !dbg !5761
  %29 = load i64, ptr %page_offset, align 8, !dbg !5762
  %30 = load ptr, ptr %bo, align 8, !dbg !5762
  %base26 = getelementptr inbounds %struct.ttm_buffer_object, ptr %30, i32 0, i32 0, !dbg !5762
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %base26, i32 0, i32 5, !dbg !5762
  %31 = load i64, ptr %size, align 8, !dbg !5762
  %add27 = add i64 %31, 4096, !dbg !5762
  %sub28 = sub i64 %add27, 1, !dbg !5762
  %shr29 = lshr i64 %sub28, 12, !dbg !5762
  %cmp30 = icmp uge i64 %29, %shr29, !dbg !5762
  %lnot32 = xor i1 %cmp30, true, !dbg !5762
  %lnot34 = xor i1 %lnot32, true, !dbg !5762
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !5762
  %conv36 = sext i32 %lnot.ext35 to i64, !dbg !5762
  %expval37 = call i64 @llvm.expect.i64(i64 %conv36, i64 0), !dbg !5762
  %tobool38 = icmp ne i64 %expval37, 0, !dbg !5762
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !5764

if.then39:                                        ; preds = %if.end16
  store i32 2, ptr %retval, align 4, !dbg !5765
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup131, !dbg !5765

if.end40:                                         ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9, !dbg !5766
  %32 = load ptr, ptr %bo, align 8, !dbg !5767
  %33 = load ptr, ptr %bo, align 8, !dbg !5768
  %resource41 = getelementptr inbounds %struct.ttm_buffer_object, ptr %33, i32 0, i32 6, !dbg !5769
  %34 = load ptr, ptr %resource41, align 8, !dbg !5769
  %coerce.dive42 = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0, !dbg !5766
  %35 = load i64, ptr %coerce.dive42, align 8, !dbg !5766
  %call43 = call i64 @ttm_io_prot(ptr noundef %32, ptr noundef %34, i64 %35) #8, !dbg !5766
  %coerce.dive44 = getelementptr inbounds %struct.pgprot, ptr %tmp, i32 0, i32 0, !dbg !5766
  store i64 %call43, ptr %coerce.dive44, align 8, !dbg !5766
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %prot, ptr align 8 %tmp, i64 8, i1 false), !dbg !5766
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9, !dbg !5766
  %36 = load ptr, ptr %bo, align 8, !dbg !5770
  %resource45 = getelementptr inbounds %struct.ttm_buffer_object, ptr %36, i32 0, i32 6, !dbg !5771
  %37 = load ptr, ptr %resource45, align 8, !dbg !5771
  %bus = getelementptr inbounds %struct.ttm_resource, ptr %37, i32 0, i32 4, !dbg !5772
  %is_iomem = getelementptr inbounds %struct.ttm_bus_placement, ptr %bus, i32 0, i32 2, !dbg !5773
  %38 = load i8, ptr %is_iomem, align 8, !dbg !5773, !range !5774, !noundef !1156
  %tobool46 = trunc i8 %38 to i1, !dbg !5773
  br i1 %tobool46, label %if.else, label %if.then47, !dbg !5775

if.then47:                                        ; preds = %if.end40
  call void @llvm.lifetime.start.p0(i64 24, ptr %ctx) #9, !dbg !5776
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !5681, metadata !DIExpression()), !dbg !5777
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ctx, ptr align 8 @__const.ttm_bo_vm_fault_reserved.ctx, i64 24, i1 false), !dbg !5777
  %39 = load ptr, ptr %bo, align 8, !dbg !5778
  %ttm48 = getelementptr inbounds %struct.ttm_buffer_object, ptr %39, i32 0, i32 7, !dbg !5779
  %40 = load ptr, ptr %ttm48, align 8, !dbg !5779
  store ptr %40, ptr %ttm, align 8, !dbg !5780
  %41 = load ptr, ptr %bdev, align 8, !dbg !5781
  %42 = load ptr, ptr %bo, align 8, !dbg !5782
  %ttm49 = getelementptr inbounds %struct.ttm_buffer_object, ptr %42, i32 0, i32 7, !dbg !5783
  %43 = load ptr, ptr %ttm49, align 8, !dbg !5783
  %call50 = call i32 @ttm_tt_populate(ptr noundef %41, ptr noundef %43, ptr noundef %ctx) #8, !dbg !5784
  store i32 %call50, ptr %err, align 4, !dbg !5785
  %44 = load i32, ptr %err, align 4, !dbg !5786
  %tobool51 = icmp ne i32 %44, 0, !dbg !5786
  br i1 %tobool51, label %if.then52, label %if.end63, !dbg !5788

if.then52:                                        ; preds = %if.then47
  %45 = load i32, ptr %err, align 4, !dbg !5789
  %cmp53 = icmp eq i32 %45, -4, !dbg !5792
  br i1 %cmp53, label %if.then60, label %lor.lhs.false, !dbg !5793

lor.lhs.false:                                    ; preds = %if.then52
  %46 = load i32, ptr %err, align 4, !dbg !5794
  %cmp55 = icmp eq i32 %46, -512, !dbg !5795
  br i1 %cmp55, label %if.then60, label %lor.lhs.false57, !dbg !5796

lor.lhs.false57:                                  ; preds = %lor.lhs.false
  %47 = load i32, ptr %err, align 4, !dbg !5797
  %cmp58 = icmp eq i32 %47, -11, !dbg !5798
  br i1 %cmp58, label %if.then60, label %if.end61, !dbg !5799

if.then60:                                        ; preds = %lor.lhs.false57, %lor.lhs.false, %if.then52
  store i32 256, ptr %retval, align 4, !dbg !5800
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5800

if.end61:                                         ; preds = %lor.lhs.false57
  store i32 0, ptr %tmp62, align 4, !dbg !5801
  %48 = load i32, ptr %tmp62, align 4, !dbg !5804
  store i32 2, ptr %retval, align 4, !dbg !5805
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5805

if.end63:                                         ; preds = %if.then47
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5806
  br label %cleanup, !dbg !5806

cleanup:                                          ; preds = %if.end63, %if.end61, %if.then60
  call void @llvm.lifetime.end.p0(i64 24, ptr %ctx) #9, !dbg !5806
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup131 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end66, !dbg !5807

if.else:                                          ; preds = %if.end40
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !5808
  %pgprot64 = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0, !dbg !5808
  %49 = load i64, ptr %pgprot64, align 8, !dbg !5808
  %call65 = call i64 @cc_mkdec(i64 noundef %49) #8, !dbg !5808
  store i64 %call65, ptr %pgprot, align 8, !dbg !5808
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %prot, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !5808
  br label %if.end66

if.end66:                                         ; preds = %if.else, %cleanup.cont
  store i64 0, ptr %i, align 8, !dbg !5810
  br label %for.cond, !dbg !5812

for.cond:                                         ; preds = %for.inc, %if.end66
  %50 = load i64, ptr %i, align 8, !dbg !5813
  %51 = load i64, ptr %num_prefault.addr, align 8, !dbg !5815
  %cmp67 = icmp ult i64 %50, %51, !dbg !5816
  br i1 %cmp67, label %for.body, label %for.end, !dbg !5817

for.body:                                         ; preds = %for.cond
  %52 = load ptr, ptr %bo, align 8, !dbg !5818
  %resource69 = getelementptr inbounds %struct.ttm_buffer_object, ptr %52, i32 0, i32 6, !dbg !5821
  %53 = load ptr, ptr %resource69, align 8, !dbg !5821
  %bus70 = getelementptr inbounds %struct.ttm_resource, ptr %53, i32 0, i32 4, !dbg !5822
  %is_iomem71 = getelementptr inbounds %struct.ttm_bus_placement, ptr %bus70, i32 0, i32 2, !dbg !5823
  %54 = load i8, ptr %is_iomem71, align 8, !dbg !5823, !range !5774, !noundef !1156
  %tobool72 = trunc i8 %54 to i1, !dbg !5823
  br i1 %tobool72, label %if.then73, label %if.else75, !dbg !5824

if.then73:                                        ; preds = %for.body
  %55 = load ptr, ptr %bo, align 8, !dbg !5825
  %56 = load i64, ptr %page_offset, align 8, !dbg !5827
  %call74 = call i64 @ttm_bo_io_mem_pfn(ptr noundef %55, i64 noundef %56) #8, !dbg !5828
  store i64 %call74, ptr %pfn, align 8, !dbg !5829
  br label %if.end101, !dbg !5830

if.else75:                                        ; preds = %for.body
  %57 = load ptr, ptr %ttm, align 8, !dbg !5831
  %pages = getelementptr inbounds %struct.ttm_tt, ptr %57, i32 0, i32 0, !dbg !5833
  %58 = load ptr, ptr %pages, align 8, !dbg !5833
  %59 = load i64, ptr %page_offset, align 8, !dbg !5834
  %arrayidx = getelementptr ptr, ptr %58, i64 %59, !dbg !5831
  %60 = load ptr, ptr %arrayidx, align 8, !dbg !5831
  store ptr %60, ptr %page, align 8, !dbg !5835
  %61 = load ptr, ptr %page, align 8, !dbg !5836
  %tobool76 = icmp ne ptr %61, null, !dbg !5836
  br i1 %tobool76, label %land.end, label %land.rhs, !dbg !5836

land.rhs:                                         ; preds = %if.else75
  %62 = load i64, ptr %i, align 8, !dbg !5836
  %cmp77 = icmp eq i64 %62, 0, !dbg !5836
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else75
  %63 = phi i1 [ false, %if.else75 ], [ %cmp77, %land.rhs ], !dbg !5838
  %lnot79 = xor i1 %63, true, !dbg !5836
  %lnot81 = xor i1 %lnot79, true, !dbg !5836
  %lnot.ext82 = zext i1 %lnot81 to i32, !dbg !5836
  %conv83 = sext i32 %lnot.ext82 to i64, !dbg !5836
  %expval84 = call i64 @llvm.expect.i64(i64 %conv83, i64 0), !dbg !5836
  %tobool85 = icmp ne i64 %expval84, 0, !dbg !5836
  br i1 %tobool85, label %if.then86, label %if.else87, !dbg !5839

if.then86:                                        ; preds = %land.end
  store i32 1, ptr %retval, align 4, !dbg !5840
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup131, !dbg !5840

if.else87:                                        ; preds = %land.end
  %64 = load ptr, ptr %page, align 8, !dbg !5842
  %tobool88 = icmp ne ptr %64, null, !dbg !5842
  %lnot89 = xor i1 %tobool88, true, !dbg !5842
  %lnot91 = xor i1 %lnot89, true, !dbg !5842
  %lnot93 = xor i1 %lnot91, true, !dbg !5842
  %lnot.ext94 = zext i1 %lnot93 to i32, !dbg !5842
  %conv95 = sext i32 %lnot.ext94 to i64, !dbg !5842
  %expval96 = call i64 @llvm.expect.i64(i64 %conv95, i64 0), !dbg !5842
  %tobool97 = icmp ne i64 %expval96, 0, !dbg !5842
  br i1 %tobool97, label %if.then98, label %if.end99, !dbg !5844

if.then98:                                        ; preds = %if.else87
  br label %for.end, !dbg !5845

if.end99:                                         ; preds = %if.else87
  br label %if.end100

if.end100:                                        ; preds = %if.end99
  %65 = load ptr, ptr %page, align 8, !dbg !5847
  %66 = load i64, ptr @vmemmap_base, align 8, !dbg !5847
  %67 = inttoptr i64 %66 to ptr, !dbg !5847
  %sub.ptr.lhs.cast = ptrtoint ptr %65 to i64, !dbg !5847
  %sub.ptr.rhs.cast = ptrtoint ptr %67 to i64, !dbg !5847
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5847
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !5847
  store i64 %sub.ptr.div, ptr %pfn, align 8, !dbg !5848
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.then73
  %68 = load ptr, ptr %vma, align 8, !dbg !5849
  %69 = load i64, ptr %address, align 8, !dbg !5850
  %70 = load i64, ptr %pfn, align 8, !dbg !5851
  %coerce.dive102 = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0, !dbg !5852
  %71 = load i64, ptr %coerce.dive102, align 8, !dbg !5852
  %call103 = call i32 @vmf_insert_pfn_prot(ptr noundef %68, i64 noundef %69, i64 noundef %70, i64 %71) #8, !dbg !5852
  store i32 %call103, ptr %ret, align 4, !dbg !5853
  %72 = load i32, ptr %ret, align 4, !dbg !5854
  %and = and i32 %72, 2163, !dbg !5854
  %tobool104 = icmp ne i32 %and, 0, !dbg !5854
  %lnot105 = xor i1 %tobool104, true, !dbg !5854
  %lnot107 = xor i1 %lnot105, true, !dbg !5854
  %lnot.ext108 = zext i1 %lnot107 to i32, !dbg !5854
  %conv109 = sext i32 %lnot.ext108 to i64, !dbg !5854
  %expval110 = call i64 @llvm.expect.i64(i64 %conv109, i64 0), !dbg !5854
  %tobool111 = icmp ne i64 %expval110, 0, !dbg !5854
  br i1 %tobool111, label %if.then112, label %if.end117, !dbg !5856

if.then112:                                       ; preds = %if.end101
  %73 = load i64, ptr %i, align 8, !dbg !5857
  %cmp113 = icmp eq i64 %73, 0, !dbg !5860
  br i1 %cmp113, label %if.then115, label %if.else116, !dbg !5861

if.then115:                                       ; preds = %if.then112
  store i32 256, ptr %retval, align 4, !dbg !5862
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup131, !dbg !5862

if.else116:                                       ; preds = %if.then112
  br label %for.end, !dbg !5863

if.end117:                                        ; preds = %if.end101
  %74 = load i64, ptr %address, align 8, !dbg !5864
  %add118 = add i64 %74, 4096, !dbg !5864
  store i64 %add118, ptr %address, align 8, !dbg !5864
  %75 = load i64, ptr %page_offset, align 8, !dbg !5865
  %inc = add i64 %75, 1, !dbg !5865
  store i64 %inc, ptr %page_offset, align 8, !dbg !5865
  %76 = load i64, ptr %page_last, align 8, !dbg !5865
  %cmp119 = icmp uge i64 %inc, %76, !dbg !5865
  %lnot121 = xor i1 %cmp119, true, !dbg !5865
  %lnot123 = xor i1 %lnot121, true, !dbg !5865
  %lnot.ext124 = zext i1 %lnot123 to i32, !dbg !5865
  %conv125 = sext i32 %lnot.ext124 to i64, !dbg !5865
  %expval126 = call i64 @llvm.expect.i64(i64 %conv125, i64 0), !dbg !5865
  %tobool127 = icmp ne i64 %expval126, 0, !dbg !5865
  br i1 %tobool127, label %if.then128, label %if.end129, !dbg !5867

if.then128:                                       ; preds = %if.end117
  br label %for.end, !dbg !5868

if.end129:                                        ; preds = %if.end117
  br label %for.inc, !dbg !5869

for.inc:                                          ; preds = %if.end129
  %77 = load i64, ptr %i, align 8, !dbg !5870
  %inc130 = add i64 %77, 1, !dbg !5870
  store i64 %inc130, ptr %i, align 8, !dbg !5870
  br label %for.cond, !dbg !5871, !llvm.loop !5872

for.end:                                          ; preds = %if.then128, %if.else116, %if.then98, %for.cond
  %78 = load i32, ptr %ret, align 4, !dbg !5876
  store i32 %78, ptr %retval, align 4, !dbg !5877
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup131, !dbg !5877

cleanup131:                                       ; preds = %for.end, %if.then115, %if.then86, %cleanup, %if.then39, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %address) #9, !dbg !5878
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !5878
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9, !dbg !5878
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #9, !dbg !5878
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #9, !dbg !5878
  call void @llvm.lifetime.end.p0(i64 8, ptr %ttm) #9, !dbg !5878
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfn) #9, !dbg !5878
  call void @llvm.lifetime.end.p0(i64 8, ptr %page_last) #9, !dbg !5878
  call void @llvm.lifetime.end.p0(i64 8, ptr %page_offset) #9, !dbg !5878
  call void @llvm.lifetime.end.p0(i64 8, ptr %bdev) #9, !dbg !5878
  call void @llvm.lifetime.end.p0(i64 8, ptr %bo) #9, !dbg !5878
  call void @llvm.lifetime.end.p0(i64 8, ptr %vma) #9, !dbg !5878
  %79 = load i32, ptr %retval, align 4, !dbg !5878
  ret i32 %79, !dbg !5878
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ttm_bo_vm_fault_idle(ptr noundef %bo, ptr noundef %vmf) #0 align 16 !dbg !5879 {
entry:
  %retval = alloca i32, align 4
  %bo.addr = alloca ptr, align 8
  %vmf.addr = alloca ptr, align 8
  %err = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !5881, metadata !DIExpression()), !dbg !5884
  store ptr %vmf, ptr %vmf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vmf.addr, metadata !5882, metadata !DIExpression()), !dbg !5885
  call void @llvm.lifetime.start.p0(i64 8, ptr %err) #9, !dbg !5886
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5883, metadata !DIExpression()), !dbg !5887
  store i64 0, ptr %err, align 8, !dbg !5887
  %0 = load ptr, ptr %bo.addr, align 8, !dbg !5888
  %base = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 0, !dbg !5890
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %base, i32 0, i32 9, !dbg !5891
  %1 = load ptr, ptr %resv, align 8, !dbg !5891
  %call = call zeroext i1 @dma_resv_test_signaled(ptr noundef %1, i32 noundef 0) #8, !dbg !5892
  br i1 %call, label %if.then, label %if.end, !dbg !5893

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5894
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5894

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %vmf.addr, align 8, !dbg !5895
  %flags = getelementptr inbounds %struct.vm_fault, ptr %2, i32 0, i32 1, !dbg !5897
  %3 = load i32, ptr %flags, align 8, !dbg !5897
  %call1 = call zeroext i1 @fault_flag_allow_retry_first(i32 noundef %3) #8, !dbg !5898
  br i1 %call1, label %if.then2, label %if.end11, !dbg !5899

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %vmf.addr, align 8, !dbg !5900
  %flags3 = getelementptr inbounds %struct.vm_fault, ptr %4, i32 0, i32 1, !dbg !5903
  %5 = load i32, ptr %flags3, align 8, !dbg !5903
  %and = and i32 %5, 8, !dbg !5904
  %tobool = icmp ne i32 %and, 0, !dbg !5904
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !5905

if.then4:                                         ; preds = %if.then2
  store i32 1024, ptr %retval, align 4, !dbg !5906
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5906

if.end5:                                          ; preds = %if.then2
  %6 = load ptr, ptr %bo.addr, align 8, !dbg !5907
  call void @ttm_bo_get(ptr noundef %6) #8, !dbg !5908
  %7 = load ptr, ptr %vmf.addr, align 8, !dbg !5909
  %8 = getelementptr inbounds %struct.vm_fault, ptr %7, i32 0, i32 0, !dbg !5910
  %vma = getelementptr inbounds %struct.anon.16, ptr %8, i32 0, i32 0, !dbg !5910
  %9 = load ptr, ptr %vma, align 8, !dbg !5910
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %9, i32 0, i32 1, !dbg !5911
  %10 = load ptr, ptr %vm_mm, align 8, !dbg !5911
  call void @mmap_read_unlock(ptr noundef %10) #8, !dbg !5912
  %11 = load ptr, ptr %bo.addr, align 8, !dbg !5913
  %base6 = getelementptr inbounds %struct.ttm_buffer_object, ptr %11, i32 0, i32 0, !dbg !5914
  %resv7 = getelementptr inbounds %struct.drm_gem_object, ptr %base6, i32 0, i32 9, !dbg !5915
  %12 = load ptr, ptr %resv7, align 8, !dbg !5915
  %call8 = call i64 @dma_resv_wait_timeout(ptr noundef %12, i32 noundef 0, i1 noundef zeroext true, i64 noundef 9223372036854775807) #8, !dbg !5916
  %13 = load ptr, ptr %bo.addr, align 8, !dbg !5917
  %base9 = getelementptr inbounds %struct.ttm_buffer_object, ptr %13, i32 0, i32 0, !dbg !5918
  %resv10 = getelementptr inbounds %struct.drm_gem_object, ptr %base9, i32 0, i32 9, !dbg !5919
  %14 = load ptr, ptr %resv10, align 8, !dbg !5919
  call void @dma_resv_unlock(ptr noundef %14) #8, !dbg !5920
  %15 = load ptr, ptr %bo.addr, align 8, !dbg !5921
  call void @ttm_bo_put(ptr noundef %15) #8, !dbg !5922
  store i32 1024, ptr %retval, align 4, !dbg !5923
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5923

if.end11:                                         ; preds = %if.end
  %16 = load ptr, ptr %bo.addr, align 8, !dbg !5924
  %base12 = getelementptr inbounds %struct.ttm_buffer_object, ptr %16, i32 0, i32 0, !dbg !5925
  %resv13 = getelementptr inbounds %struct.drm_gem_object, ptr %base12, i32 0, i32 9, !dbg !5926
  %17 = load ptr, ptr %resv13, align 8, !dbg !5926
  %call14 = call i64 @dma_resv_wait_timeout(ptr noundef %17, i32 noundef 0, i1 noundef zeroext true, i64 noundef 9223372036854775807) #8, !dbg !5927
  store i64 %call14, ptr %err, align 8, !dbg !5928
  %18 = load i64, ptr %err, align 8, !dbg !5929
  %cmp = icmp slt i64 %18, 0, !dbg !5929
  %lnot = xor i1 %cmp, true, !dbg !5929
  %lnot15 = xor i1 %lnot, true, !dbg !5929
  %lnot.ext = zext i1 %lnot15 to i32, !dbg !5929
  %conv = sext i32 %lnot.ext to i64, !dbg !5929
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5929
  %tobool16 = icmp ne i64 %expval, 0, !dbg !5929
  br i1 %tobool16, label %if.then17, label %if.end20, !dbg !5931

if.then17:                                        ; preds = %if.end11
  %19 = load i64, ptr %err, align 8, !dbg !5932
  %cmp18 = icmp ne i64 %19, -512, !dbg !5934
  %20 = zext i1 %cmp18 to i64, !dbg !5935
  %cond = select i1 %cmp18, i32 2, i32 256, !dbg !5935
  store i32 %cond, ptr %retval, align 4, !dbg !5936
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5936

if.end20:                                         ; preds = %if.end11
  store i32 0, ptr %retval, align 4, !dbg !5937
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5937

cleanup:                                          ; preds = %if.end20, %if.then17, %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %err) #9, !dbg !5938
  %21 = load i32, ptr %retval, align 4, !dbg !5938
  ret i32 %21, !dbg !5938
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5939 dso_local i32 @ttm_mem_io_reserve(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @drm_vma_node_start(ptr noundef %node) #2 align 16 !dbg !5940 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5946, metadata !DIExpression()), !dbg !5947
  %0 = load ptr, ptr %node.addr, align 8, !dbg !5948
  %vm_node = getelementptr inbounds %struct.drm_vma_offset_node, ptr %0, i32 0, i32 1, !dbg !5949
  %start = getelementptr inbounds %struct.drm_mm_node, ptr %vm_node, i32 0, i32 1, !dbg !5950
  %1 = load i64, ptr %start, align 8, !dbg !5950
  ret i64 %1, !dbg !5951
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @vma_pages(ptr noundef %vma) #2 align 16 !dbg !5952 {
entry:
  %vma.addr = alloca ptr, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !5954, metadata !DIExpression()), !dbg !5955
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !5956
  %1 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 0, !dbg !5957
  %vm_end = getelementptr inbounds %struct.anon.19, ptr %1, i32 0, i32 1, !dbg !5957
  %2 = load i64, ptr %vm_end, align 8, !dbg !5957
  %3 = load ptr, ptr %vma.addr, align 8, !dbg !5958
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 0, !dbg !5959
  %vm_start = getelementptr inbounds %struct.anon.19, ptr %4, i32 0, i32 0, !dbg !5959
  %5 = load i64, ptr %vm_start, align 8, !dbg !5959
  %sub = sub i64 %2, %5, !dbg !5960
  %shr = lshr i64 %sub, 12, !dbg !5961
  ret i64 %shr, !dbg !5962
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5963 dso_local i64 @ttm_io_prot(ptr noundef, ptr noundef, i64) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5966 dso_local i32 @ttm_tt_populate(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cc_mkdec(i64 noundef %val) #2 align 16 !dbg !5967 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5972, metadata !DIExpression()), !dbg !5973
  %0 = load i64, ptr %val.addr, align 8, !dbg !5974
  ret i64 %0, !dbg !5975
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ttm_bo_io_mem_pfn(ptr noundef %bo, i64 noundef %page_offset) #0 align 16 !dbg !5976 {
entry:
  %retval = alloca i64, align 8
  %bo.addr = alloca ptr, align 8
  %page_offset.addr = alloca i64, align 8
  %bdev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !5978, metadata !DIExpression()), !dbg !5981
  store i64 %page_offset, ptr %page_offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page_offset.addr, metadata !5979, metadata !DIExpression()), !dbg !5982
  call void @llvm.lifetime.start.p0(i64 8, ptr %bdev) #9, !dbg !5983
  call void @llvm.dbg.declare(metadata ptr %bdev, metadata !5980, metadata !DIExpression()), !dbg !5984
  %0 = load ptr, ptr %bo.addr, align 8, !dbg !5985
  %bdev1 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1, !dbg !5986
  %1 = load ptr, ptr %bdev1, align 8, !dbg !5986
  store ptr %1, ptr %bdev, align 8, !dbg !5984
  %2 = load ptr, ptr %bdev, align 8, !dbg !5987
  %funcs = getelementptr inbounds %struct.ttm_device, ptr %2, i32 0, i32 1, !dbg !5989
  %3 = load ptr, ptr %funcs, align 8, !dbg !5989
  %io_mem_pfn = getelementptr inbounds %struct.ttm_device_funcs, ptr %3, i32 0, i32 11, !dbg !5990
  %4 = load ptr, ptr %io_mem_pfn, align 8, !dbg !5990
  %tobool = icmp ne ptr %4, null, !dbg !5987
  br i1 %tobool, label %if.then, label %if.end, !dbg !5991

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %bdev, align 8, !dbg !5992
  %funcs2 = getelementptr inbounds %struct.ttm_device, ptr %5, i32 0, i32 1, !dbg !5993
  %6 = load ptr, ptr %funcs2, align 8, !dbg !5993
  %io_mem_pfn3 = getelementptr inbounds %struct.ttm_device_funcs, ptr %6, i32 0, i32 11, !dbg !5994
  %7 = load ptr, ptr %io_mem_pfn3, align 8, !dbg !5994
  %8 = load ptr, ptr %bo.addr, align 8, !dbg !5995
  %9 = load i64, ptr %page_offset.addr, align 8, !dbg !5996
  %call = call i64 %7(ptr noundef %8, i64 noundef %9) #8, !dbg !5992
  store i64 %call, ptr %retval, align 8, !dbg !5997
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5997

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %bo.addr, align 8, !dbg !5998
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %10, i32 0, i32 6, !dbg !5999
  %11 = load ptr, ptr %resource, align 8, !dbg !5999
  %bus = getelementptr inbounds %struct.ttm_resource, ptr %11, i32 0, i32 4, !dbg !6000
  %offset = getelementptr inbounds %struct.ttm_bus_placement, ptr %bus, i32 0, i32 1, !dbg !6001
  %12 = load i64, ptr %offset, align 8, !dbg !6001
  %shr = lshr i64 %12, 12, !dbg !6002
  %13 = load i64, ptr %page_offset.addr, align 8, !dbg !6003
  %add = add i64 %shr, %13, !dbg !6004
  store i64 %add, ptr %retval, align 8, !dbg !6005
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6005

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bdev) #9, !dbg !6006
  %14 = load i64, ptr %retval, align 8, !dbg !6006
  ret i64 %14, !dbg !6006
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6007 dso_local i32 @vmf_insert_pfn_prot(ptr noundef, i64 noundef, i64 noundef, i64) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ttm_bo_vm_dummy_page(ptr noundef %vmf, i64 %prot.coerce) #0 align 16 !dbg !6010 {
entry:
  %retval = alloca i32, align 4
  %prot = alloca %struct.pgprot, align 8
  %vmf.addr = alloca ptr, align 8
  %vma = alloca ptr, align 8
  %bo = alloca ptr, align 8
  %ddev = alloca ptr, align 8
  %ret = alloca i32, align 4
  %address = alloca i64, align 8
  %pfn = alloca i64, align 8
  %page = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0
  store i64 %prot.coerce, ptr %coerce.dive, align 8
  store ptr %vmf, ptr %vmf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vmf.addr, metadata !6014, metadata !DIExpression()), !dbg !6023
  call void @llvm.dbg.declare(metadata ptr %prot, metadata !6015, metadata !DIExpression()), !dbg !6024
  call void @llvm.lifetime.start.p0(i64 8, ptr %vma) #9, !dbg !6025
  call void @llvm.dbg.declare(metadata ptr %vma, metadata !6016, metadata !DIExpression()), !dbg !6026
  %0 = load ptr, ptr %vmf.addr, align 8, !dbg !6027
  %1 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 0, !dbg !6028
  %vma1 = getelementptr inbounds %struct.anon.16, ptr %1, i32 0, i32 0, !dbg !6028
  %2 = load ptr, ptr %vma1, align 8, !dbg !6028
  store ptr %2, ptr %vma, align 8, !dbg !6026
  call void @llvm.lifetime.start.p0(i64 8, ptr %bo) #9, !dbg !6029
  call void @llvm.dbg.declare(metadata ptr %bo, metadata !6017, metadata !DIExpression()), !dbg !6030
  %3 = load ptr, ptr %vma, align 8, !dbg !6031
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 13, !dbg !6032
  %4 = load ptr, ptr %vm_private_data, align 8, !dbg !6032
  store ptr %4, ptr %bo, align 8, !dbg !6030
  call void @llvm.lifetime.start.p0(i64 8, ptr %ddev) #9, !dbg !6033
  call void @llvm.dbg.declare(metadata ptr %ddev, metadata !6018, metadata !DIExpression()), !dbg !6034
  %5 = load ptr, ptr %bo, align 8, !dbg !6035
  %base = getelementptr inbounds %struct.ttm_buffer_object, ptr %5, i32 0, i32 0, !dbg !6036
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %base, i32 0, i32 2, !dbg !6037
  %6 = load ptr, ptr %dev, align 8, !dbg !6037
  store ptr %6, ptr %ddev, align 8, !dbg !6034
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !6038
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6019, metadata !DIExpression()), !dbg !6039
  store i32 256, ptr %ret, align 4, !dbg !6039
  call void @llvm.lifetime.start.p0(i64 8, ptr %address) #9, !dbg !6040
  call void @llvm.dbg.declare(metadata ptr %address, metadata !6020, metadata !DIExpression()), !dbg !6041
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfn) #9, !dbg !6042
  call void @llvm.dbg.declare(metadata ptr %pfn, metadata !6021, metadata !DIExpression()), !dbg !6043
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #9, !dbg !6044
  call void @llvm.dbg.declare(metadata ptr %page, metadata !6022, metadata !DIExpression()), !dbg !6045
  %call = call ptr @alloc_pages(i32 noundef 3520, i32 noundef 0) #8, !dbg !6046
  store ptr %call, ptr %page, align 8, !dbg !6047
  %7 = load ptr, ptr %page, align 8, !dbg !6048
  %tobool = icmp ne ptr %7, null, !dbg !6048
  br i1 %tobool, label %if.end, label %if.then, !dbg !6050

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !6051
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6051

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %ddev, align 8, !dbg !6052
  %9 = load ptr, ptr %page, align 8, !dbg !6052
  %call2 = call i32 @__drmm_add_action_or_reset(ptr noundef %8, ptr noundef @ttm_bo_release_dummy_page, ptr noundef %9, ptr noundef @.str) #8, !dbg !6052
  %tobool3 = icmp ne i32 %call2, 0, !dbg !6052
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6054

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6055
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6055

if.end5:                                          ; preds = %if.end
  %10 = load ptr, ptr %page, align 8, !dbg !6056
  %11 = load i64, ptr @vmemmap_base, align 8, !dbg !6056
  %12 = inttoptr i64 %11 to ptr, !dbg !6056
  %sub.ptr.lhs.cast = ptrtoint ptr %10 to i64, !dbg !6056
  %sub.ptr.rhs.cast = ptrtoint ptr %12 to i64, !dbg !6056
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !6056
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !6056
  store i64 %sub.ptr.div, ptr %pfn, align 8, !dbg !6057
  %13 = load ptr, ptr %vma, align 8, !dbg !6058
  %14 = getelementptr inbounds %struct.vm_area_struct, ptr %13, i32 0, i32 0, !dbg !6060
  %vm_start = getelementptr inbounds %struct.anon.19, ptr %14, i32 0, i32 0, !dbg !6060
  %15 = load i64, ptr %vm_start, align 8, !dbg !6060
  store i64 %15, ptr %address, align 8, !dbg !6061
  br label %for.cond, !dbg !6062

for.cond:                                         ; preds = %for.inc, %if.end5
  %16 = load i64, ptr %address, align 8, !dbg !6063
  %17 = load ptr, ptr %vma, align 8, !dbg !6065
  %18 = getelementptr inbounds %struct.vm_area_struct, ptr %17, i32 0, i32 0, !dbg !6066
  %vm_end = getelementptr inbounds %struct.anon.19, ptr %18, i32 0, i32 1, !dbg !6066
  %19 = load i64, ptr %vm_end, align 8, !dbg !6066
  %cmp = icmp ult i64 %16, %19, !dbg !6067
  br i1 %cmp, label %for.body, label %for.end, !dbg !6068

for.body:                                         ; preds = %for.cond
  %20 = load ptr, ptr %vma, align 8, !dbg !6069
  %21 = load i64, ptr %address, align 8, !dbg !6070
  %22 = load i64, ptr %pfn, align 8, !dbg !6071
  %coerce.dive6 = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0, !dbg !6072
  %23 = load i64, ptr %coerce.dive6, align 8, !dbg !6072
  %call7 = call i32 @vmf_insert_pfn_prot(ptr noundef %20, i64 noundef %21, i64 noundef %22, i64 %23) #8, !dbg !6072
  store i32 %call7, ptr %ret, align 4, !dbg !6073
  br label %for.inc, !dbg !6074

for.inc:                                          ; preds = %for.body
  %24 = load i64, ptr %address, align 8, !dbg !6075
  %add = add i64 %24, 4096, !dbg !6075
  store i64 %add, ptr %address, align 8, !dbg !6075
  br label %for.cond, !dbg !6076, !llvm.loop !6077

for.end:                                          ; preds = %for.cond
  %25 = load i32, ptr %ret, align 4, !dbg !6079
  store i32 %25, ptr %retval, align 4, !dbg !6080
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6080

cleanup:                                          ; preds = %for.end, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #9, !dbg !6081
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfn) #9, !dbg !6081
  call void @llvm.lifetime.end.p0(i64 8, ptr %address) #9, !dbg !6081
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !6081
  call void @llvm.lifetime.end.p0(i64 8, ptr %ddev) #9, !dbg !6081
  call void @llvm.lifetime.end.p0(i64 8, ptr %bo) #9, !dbg !6081
  call void @llvm.lifetime.end.p0(i64 8, ptr %vma) #9, !dbg !6081
  %26 = load i32, ptr %retval, align 4, !dbg !6081
  ret i32 %26, !dbg !6081
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6082 dso_local ptr @alloc_pages(i32 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6086 dso_local i32 @__drmm_add_action_or_reset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_bo_release_dummy_page(ptr noundef %dev, ptr noundef %res) #0 align 16 !dbg !6094 {
entry:
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %dummy_page = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6096, metadata !DIExpression()), !dbg !6099
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6097, metadata !DIExpression()), !dbg !6100
  call void @llvm.lifetime.start.p0(i64 8, ptr %dummy_page) #9, !dbg !6101
  call void @llvm.dbg.declare(metadata ptr %dummy_page, metadata !6098, metadata !DIExpression()), !dbg !6102
  %0 = load ptr, ptr %res.addr, align 8, !dbg !6103
  store ptr %0, ptr %dummy_page, align 8, !dbg !6102
  %1 = load ptr, ptr %dummy_page, align 8, !dbg !6104
  call void @__free_pages(ptr noundef %1, i32 noundef 0) #8, !dbg !6104
  call void @llvm.lifetime.end.p0(i64 8, ptr %dummy_page) #9, !dbg !6105
  ret void, !dbg !6105
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ttm_bo_vm_fault(ptr noundef %vmf) #0 align 16 !dbg !6106 {
entry:
  %retval = alloca i32, align 4
  %vmf.addr = alloca ptr, align 8
  %vma = alloca ptr, align 8
  %prot = alloca %struct.pgprot, align 8
  %bo = alloca ptr, align 8
  %ddev = alloca ptr, align 8
  %ret = alloca i32, align 4
  %idx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vmf, ptr %vmf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vmf.addr, metadata !6108, metadata !DIExpression()), !dbg !6115
  call void @llvm.lifetime.start.p0(i64 8, ptr %vma) #9, !dbg !6116
  call void @llvm.dbg.declare(metadata ptr %vma, metadata !6109, metadata !DIExpression()), !dbg !6117
  %0 = load ptr, ptr %vmf.addr, align 8, !dbg !6118
  %1 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 0, !dbg !6119
  %vma1 = getelementptr inbounds %struct.anon.16, ptr %1, i32 0, i32 0, !dbg !6119
  %2 = load ptr, ptr %vma1, align 8, !dbg !6119
  store ptr %2, ptr %vma, align 8, !dbg !6117
  call void @llvm.lifetime.start.p0(i64 8, ptr %prot) #9, !dbg !6120
  call void @llvm.dbg.declare(metadata ptr %prot, metadata !6110, metadata !DIExpression()), !dbg !6121
  call void @llvm.lifetime.start.p0(i64 8, ptr %bo) #9, !dbg !6122
  call void @llvm.dbg.declare(metadata ptr %bo, metadata !6111, metadata !DIExpression()), !dbg !6123
  %3 = load ptr, ptr %vma, align 8, !dbg !6124
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 13, !dbg !6125
  %4 = load ptr, ptr %vm_private_data, align 8, !dbg !6125
  store ptr %4, ptr %bo, align 8, !dbg !6123
  call void @llvm.lifetime.start.p0(i64 8, ptr %ddev) #9, !dbg !6126
  call void @llvm.dbg.declare(metadata ptr %ddev, metadata !6112, metadata !DIExpression()), !dbg !6127
  %5 = load ptr, ptr %bo, align 8, !dbg !6128
  %base = getelementptr inbounds %struct.ttm_buffer_object, ptr %5, i32 0, i32 0, !dbg !6129
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %base, i32 0, i32 2, !dbg !6130
  %6 = load ptr, ptr %dev, align 8, !dbg !6130
  store ptr %6, ptr %ddev, align 8, !dbg !6127
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !6131
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6113, metadata !DIExpression()), !dbg !6132
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #9, !dbg !6133
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !6114, metadata !DIExpression()), !dbg !6134
  %7 = load ptr, ptr %bo, align 8, !dbg !6135
  %8 = load ptr, ptr %vmf.addr, align 8, !dbg !6136
  %call = call i32 @ttm_bo_vm_reserve(ptr noundef %7, ptr noundef %8) #8, !dbg !6137
  store i32 %call, ptr %ret, align 4, !dbg !6138
  %9 = load i32, ptr %ret, align 4, !dbg !6139
  %tobool = icmp ne i32 %9, 0, !dbg !6139
  br i1 %tobool, label %if.then, label %if.end, !dbg !6141

if.then:                                          ; preds = %entry
  %10 = load i32, ptr %ret, align 4, !dbg !6142
  store i32 %10, ptr %retval, align 4, !dbg !6143
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6143

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %vma, align 8, !dbg !6144
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %11, i32 0, i32 2, !dbg !6145
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %prot, ptr align 8 %vm_page_prot, i64 8, i1 false), !dbg !6145
  %12 = load ptr, ptr %ddev, align 8, !dbg !6146
  %call2 = call zeroext i1 @drm_dev_enter(ptr noundef %12, ptr noundef %idx) #8, !dbg !6148
  br i1 %call2, label %if.then3, label %if.else, !dbg !6149

if.then3:                                         ; preds = %if.end
  %13 = load ptr, ptr %vmf.addr, align 8, !dbg !6150
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0, !dbg !6152
  %14 = load i64, ptr %coerce.dive, align 8, !dbg !6152
  %call4 = call i32 @ttm_bo_vm_fault_reserved(ptr noundef %13, i64 %14, i64 noundef 16) #8, !dbg !6152
  store i32 %call4, ptr %ret, align 4, !dbg !6153
  %15 = load i32, ptr %idx, align 4, !dbg !6154
  call void @drm_dev_exit(i32 noundef %15) #8, !dbg !6155
  br label %if.end7, !dbg !6156

if.else:                                          ; preds = %if.end
  %16 = load ptr, ptr %vmf.addr, align 8, !dbg !6157
  %coerce.dive5 = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0, !dbg !6159
  %17 = load i64, ptr %coerce.dive5, align 8, !dbg !6159
  %call6 = call i32 @ttm_bo_vm_dummy_page(ptr noundef %16, i64 %17) #8, !dbg !6159
  store i32 %call6, ptr %ret, align 4, !dbg !6160
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %18 = load i32, ptr %ret, align 4, !dbg !6161
  %cmp = icmp eq i32 %18, 1024, !dbg !6163
  br i1 %cmp, label %land.lhs.true, label %if.end10, !dbg !6164

land.lhs.true:                                    ; preds = %if.end7
  %19 = load ptr, ptr %vmf.addr, align 8, !dbg !6165
  %flags = getelementptr inbounds %struct.vm_fault, ptr %19, i32 0, i32 1, !dbg !6166
  %20 = load i32, ptr %flags, align 8, !dbg !6166
  %and = and i32 %20, 8, !dbg !6167
  %tobool8 = icmp ne i32 %and, 0, !dbg !6167
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !6168

if.then9:                                         ; preds = %land.lhs.true
  %21 = load i32, ptr %ret, align 4, !dbg !6169
  store i32 %21, ptr %retval, align 4, !dbg !6170
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6170

if.end10:                                         ; preds = %land.lhs.true, %if.end7
  %22 = load ptr, ptr %bo, align 8, !dbg !6171
  %base11 = getelementptr inbounds %struct.ttm_buffer_object, ptr %22, i32 0, i32 0, !dbg !6172
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %base11, i32 0, i32 9, !dbg !6173
  %23 = load ptr, ptr %resv, align 8, !dbg !6173
  call void @dma_resv_unlock(ptr noundef %23) #8, !dbg !6174
  %24 = load i32, ptr %ret, align 4, !dbg !6175
  store i32 %24, ptr %retval, align 4, !dbg !6176
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6176

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #9, !dbg !6177
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !6177
  call void @llvm.lifetime.end.p0(i64 8, ptr %ddev) #9, !dbg !6177
  call void @llvm.lifetime.end.p0(i64 8, ptr %bo) #9, !dbg !6177
  call void @llvm.lifetime.end.p0(i64 8, ptr %prot) #9, !dbg !6177
  call void @llvm.lifetime.end.p0(i64 8, ptr %vma) #9, !dbg !6177
  %25 = load i32, ptr %retval, align 4, !dbg !6177
  ret i32 %25, !dbg !6177
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6178 dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6181 dso_local void @drm_dev_exit(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ttm_bo_vm_open(ptr noundef %vma) #0 align 16 !dbg !6182 {
entry:
  %vma.addr = alloca ptr, align 8
  %bo = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6184, metadata !DIExpression()), !dbg !6191
  call void @llvm.lifetime.start.p0(i64 8, ptr %bo) #9, !dbg !6192
  call void @llvm.dbg.declare(metadata ptr %bo, metadata !6185, metadata !DIExpression()), !dbg !6193
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !6194
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 13, !dbg !6195
  %1 = load ptr, ptr %vm_private_data, align 8, !dbg !6195
  store ptr %1, ptr %bo, align 8, !dbg !6193
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !6196
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6186, metadata !DIExpression()), !dbg !6196
  %2 = load ptr, ptr %bo, align 8, !dbg !6196
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %2, i32 0, i32 1, !dbg !6196
  %3 = load ptr, ptr %bdev, align 8, !dbg !6196
  %dev_mapping = getelementptr inbounds %struct.ttm_device, ptr %3, i32 0, i32 8, !dbg !6196
  %4 = load ptr, ptr %dev_mapping, align 8, !dbg !6196
  %5 = load ptr, ptr %vma.addr, align 8, !dbg !6196
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %5, i32 0, i32 12, !dbg !6196
  %6 = load ptr, ptr %vm_file, align 8, !dbg !6196
  %f_mapping = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 17, !dbg !6196
  %7 = load ptr, ptr %f_mapping, align 8, !dbg !6196
  %cmp = icmp ne ptr %4, %7, !dbg !6196
  %lnot = xor i1 %cmp, true, !dbg !6196
  %lnot1 = xor i1 %lnot, true, !dbg !6196
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6196
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6196
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !6197
  %tobool = icmp ne i32 %8, 0, !dbg !6197
  %lnot2 = xor i1 %tobool, true, !dbg !6197
  %lnot4 = xor i1 %lnot2, true, !dbg !6197
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !6197
  %conv = sext i32 %lnot.ext5 to i64, !dbg !6197
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6197
  %tobool6 = icmp ne i64 %expval, 0, !dbg !6197
  br i1 %tobool6, label %if.then, label %if.end, !dbg !6196

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6197

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !6198
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6188, metadata !DIExpression()), !dbg !6198
  store i32 2305, ptr %__flags, align 4, !dbg !6198
  br label %do.body7, !dbg !6198

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !6199

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !6199

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !6198

do.body8:                                         ; preds = %do.end
  %9 = load i32, ptr %__flags, align 4, !dbg !6201
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 354, i32 %9, i64 12) #9, !dbg !6201, !srcloc !6203
  br label %do.cond9, !dbg !6201

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !6201

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !6198

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !6204

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6204

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !6197
  br label %do.cond14, !dbg !6198

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !6198

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !6198

if.end:                                           ; preds = %do.end15, %entry
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !6196
  %tobool16 = icmp ne i32 %10, 0, !dbg !6196
  %lnot17 = xor i1 %tobool16, true, !dbg !6196
  %lnot19 = xor i1 %lnot17, true, !dbg !6196
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !6196
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !6196
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !6196
  store i64 %expval22, ptr %tmp, align 8, !dbg !6197
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !6206
  %11 = load i64, ptr %tmp, align 8, !dbg !6196
  %12 = load ptr, ptr %bo, align 8, !dbg !6207
  call void @ttm_bo_get(ptr noundef %12) #8, !dbg !6208
  call void @llvm.lifetime.end.p0(i64 8, ptr %bo) #9, !dbg !6209
  ret void, !dbg !6209
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ttm_bo_vm_close(ptr noundef %vma) #0 align 16 !dbg !6210 {
entry:
  %vma.addr = alloca ptr, align 8
  %bo = alloca ptr, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6212, metadata !DIExpression()), !dbg !6214
  call void @llvm.lifetime.start.p0(i64 8, ptr %bo) #9, !dbg !6215
  call void @llvm.dbg.declare(metadata ptr %bo, metadata !6213, metadata !DIExpression()), !dbg !6216
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !6217
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 13, !dbg !6218
  %1 = load ptr, ptr %vm_private_data, align 8, !dbg !6218
  store ptr %1, ptr %bo, align 8, !dbg !6216
  %2 = load ptr, ptr %bo, align 8, !dbg !6219
  call void @ttm_bo_put(ptr noundef %2) #8, !dbg !6220
  %3 = load ptr, ptr %vma.addr, align 8, !dbg !6221
  %vm_private_data1 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 13, !dbg !6222
  store ptr null, ptr %vm_private_data1, align 8, !dbg !6223
  call void @llvm.lifetime.end.p0(i64 8, ptr %bo) #9, !dbg !6224
  ret void, !dbg !6224
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ttm_bo_vm_access(ptr noundef %vma, i64 noundef %addr, ptr noundef %buf, i32 noundef %len, i32 noundef %write) #0 align 16 !dbg !6225 {
entry:
  %retval = alloca i32, align 4
  %vma.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %write.addr = alloca i32, align 4
  %bo = alloca ptr, align 8
  %offset = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6227, metadata !DIExpression()), !dbg !6235
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6228, metadata !DIExpression()), !dbg !6236
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6229, metadata !DIExpression()), !dbg !6237
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6230, metadata !DIExpression()), !dbg !6238
  store i32 %write, ptr %write.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6231, metadata !DIExpression()), !dbg !6239
  call void @llvm.lifetime.start.p0(i64 8, ptr %bo) #9, !dbg !6240
  call void @llvm.dbg.declare(metadata ptr %bo, metadata !6232, metadata !DIExpression()), !dbg !6241
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !6242
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 13, !dbg !6243
  %1 = load ptr, ptr %vm_private_data, align 8, !dbg !6243
  store ptr %1, ptr %bo, align 8, !dbg !6241
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #9, !dbg !6244
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !6233, metadata !DIExpression()), !dbg !6245
  %2 = load i64, ptr %addr.addr, align 8, !dbg !6246
  %3 = load ptr, ptr %vma.addr, align 8, !dbg !6247
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 0, !dbg !6248
  %vm_start = getelementptr inbounds %struct.anon.19, ptr %4, i32 0, i32 0, !dbg !6248
  %5 = load i64, ptr %vm_start, align 8, !dbg !6248
  %sub = sub i64 %2, %5, !dbg !6249
  %6 = load ptr, ptr %vma.addr, align 8, !dbg !6250
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %6, i32 0, i32 11, !dbg !6251
  %7 = load i64, ptr %vm_pgoff, align 8, !dbg !6251
  %8 = load ptr, ptr %bo, align 8, !dbg !6252
  %base = getelementptr inbounds %struct.ttm_buffer_object, ptr %8, i32 0, i32 0, !dbg !6253
  %vma_node = getelementptr inbounds %struct.drm_gem_object, ptr %base, i32 0, i32 4, !dbg !6254
  %call = call i64 @drm_vma_node_start(ptr noundef %vma_node) #8, !dbg !6255
  %sub1 = sub i64 %7, %call, !dbg !6256
  %shl = shl i64 %sub1, 12, !dbg !6257
  %add = add i64 %sub, %shl, !dbg !6258
  store i64 %add, ptr %offset, align 8, !dbg !6245
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !6259
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6234, metadata !DIExpression()), !dbg !6260
  %9 = load i32, ptr %len.addr, align 4, !dbg !6261
  %cmp = icmp slt i32 %9, 1, !dbg !6263
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6264

lor.lhs.false:                                    ; preds = %entry
  %10 = load i64, ptr %offset, align 8, !dbg !6265
  %11 = load i32, ptr %len.addr, align 4, !dbg !6266
  %conv = sext i32 %11 to i64, !dbg !6266
  %add2 = add i64 %10, %conv, !dbg !6267
  %12 = load ptr, ptr %bo, align 8, !dbg !6268
  %base3 = getelementptr inbounds %struct.ttm_buffer_object, ptr %12, i32 0, i32 0, !dbg !6269
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %base3, i32 0, i32 5, !dbg !6270
  %13 = load i64, ptr %size, align 8, !dbg !6270
  %cmp4 = icmp ugt i64 %add2, %13, !dbg !6271
  br i1 %cmp4, label %if.then, label %if.end, !dbg !6272

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -5, ptr %retval, align 4, !dbg !6273
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6273

if.end:                                           ; preds = %lor.lhs.false
  %14 = load ptr, ptr %bo, align 8, !dbg !6274
  %call6 = call i32 @ttm_bo_reserve(ptr noundef %14, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef null) #8, !dbg !6275
  store i32 %call6, ptr %ret, align 4, !dbg !6276
  %15 = load i32, ptr %ret, align 4, !dbg !6277
  %tobool = icmp ne i32 %15, 0, !dbg !6277
  br i1 %tobool, label %if.then7, label %if.end8, !dbg !6279

if.then7:                                         ; preds = %if.end
  %16 = load i32, ptr %ret, align 4, !dbg !6280
  store i32 %16, ptr %retval, align 4, !dbg !6281
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6281

if.end8:                                          ; preds = %if.end
  %17 = load ptr, ptr %bo, align 8, !dbg !6282
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %17, i32 0, i32 6, !dbg !6283
  %18 = load ptr, ptr %resource, align 8, !dbg !6283
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %18, i32 0, i32 2, !dbg !6284
  %19 = load i32, ptr %mem_type, align 8, !dbg !6284
  switch i32 %19, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
  ], !dbg !6285

sw.bb:                                            ; preds = %if.end8
  br label %sw.bb9, !dbg !6286

sw.bb9:                                           ; preds = %if.end8, %sw.bb
  %20 = load ptr, ptr %bo, align 8, !dbg !6287
  %21 = load i64, ptr %offset, align 8, !dbg !6289
  %22 = load ptr, ptr %buf.addr, align 8, !dbg !6290
  %23 = load i32, ptr %len.addr, align 4, !dbg !6291
  %24 = load i32, ptr %write.addr, align 4, !dbg !6292
  %call10 = call i32 @ttm_bo_vm_access_kmap(ptr noundef %20, i64 noundef %21, ptr noundef %22, i32 noundef %23, i32 noundef %24) #8, !dbg !6293
  store i32 %call10, ptr %ret, align 4, !dbg !6294
  br label %sw.epilog, !dbg !6295

sw.default:                                       ; preds = %if.end8
  %25 = load ptr, ptr %bo, align 8, !dbg !6296
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %25, i32 0, i32 1, !dbg !6298
  %26 = load ptr, ptr %bdev, align 8, !dbg !6298
  %funcs = getelementptr inbounds %struct.ttm_device, ptr %26, i32 0, i32 1, !dbg !6299
  %27 = load ptr, ptr %funcs, align 8, !dbg !6299
  %access_memory = getelementptr inbounds %struct.ttm_device_funcs, ptr %27, i32 0, i32 12, !dbg !6300
  %28 = load ptr, ptr %access_memory, align 8, !dbg !6300
  %tobool11 = icmp ne ptr %28, null, !dbg !6296
  br i1 %tobool11, label %if.then12, label %if.else, !dbg !6301

if.then12:                                        ; preds = %sw.default
  %29 = load ptr, ptr %bo, align 8, !dbg !6302
  %bdev13 = getelementptr inbounds %struct.ttm_buffer_object, ptr %29, i32 0, i32 1, !dbg !6303
  %30 = load ptr, ptr %bdev13, align 8, !dbg !6303
  %funcs14 = getelementptr inbounds %struct.ttm_device, ptr %30, i32 0, i32 1, !dbg !6304
  %31 = load ptr, ptr %funcs14, align 8, !dbg !6304
  %access_memory15 = getelementptr inbounds %struct.ttm_device_funcs, ptr %31, i32 0, i32 12, !dbg !6305
  %32 = load ptr, ptr %access_memory15, align 8, !dbg !6305
  %33 = load ptr, ptr %bo, align 8, !dbg !6306
  %34 = load i64, ptr %offset, align 8, !dbg !6307
  %35 = load ptr, ptr %buf.addr, align 8, !dbg !6308
  %36 = load i32, ptr %len.addr, align 4, !dbg !6309
  %37 = load i32, ptr %write.addr, align 4, !dbg !6310
  %call16 = call i32 %32(ptr noundef %33, i64 noundef %34, ptr noundef %35, i32 noundef %36, i32 noundef %37) #8, !dbg !6302
  store i32 %call16, ptr %ret, align 4, !dbg !6311
  br label %if.end17, !dbg !6312

if.else:                                          ; preds = %sw.default
  store i32 -5, ptr %ret, align 4, !dbg !6313
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then12
  br label %sw.epilog, !dbg !6314

sw.epilog:                                        ; preds = %if.end17, %sw.bb9
  %38 = load ptr, ptr %bo, align 8, !dbg !6315
  call void @ttm_bo_unreserve(ptr noundef %38) #8, !dbg !6316
  %39 = load i32, ptr %ret, align 4, !dbg !6317
  store i32 %39, ptr %retval, align 4, !dbg !6318
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6318

cleanup:                                          ; preds = %sw.epilog, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !6319
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #9, !dbg !6319
  call void @llvm.lifetime.end.p0(i64 8, ptr %bo) #9, !dbg !6319
  %40 = load i32, ptr %retval, align 4, !dbg !6319
  ret i32 %40, !dbg !6319
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ttm_bo_reserve(ptr noundef %bo, i1 noundef zeroext %interruptible, i1 noundef zeroext %no_wait, ptr noundef %ticket) #2 align 16 !dbg !6320 {
entry:
  %retval = alloca i32, align 4
  %bo.addr = alloca ptr, align 8
  %interruptible.addr = alloca i8, align 1
  %no_wait.addr = alloca i8, align 1
  %ticket.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %success = alloca i8, align 1
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !6324, metadata !DIExpression()), !dbg !6338
  %frombool = zext i1 %interruptible to i8
  store i8 %frombool, ptr %interruptible.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %interruptible.addr, metadata !6325, metadata !DIExpression()), !dbg !6339
  %frombool1 = zext i1 %no_wait to i8
  store i8 %frombool1, ptr %no_wait.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %no_wait.addr, metadata !6326, metadata !DIExpression()), !dbg !6340
  store ptr %ticket, ptr %ticket.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ticket.addr, metadata !6327, metadata !DIExpression()), !dbg !6341
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !6342
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6328, metadata !DIExpression()), !dbg !6343
  store i32 0, ptr %ret, align 4, !dbg !6343
  %0 = load i8, ptr %no_wait.addr, align 1, !dbg !6344, !range !5774, !noundef !1156
  %tobool = trunc i8 %0 to i1, !dbg !6344
  br i1 %tobool, label %if.then, label %if.end33, !dbg !6345

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #9, !dbg !6346
  call void @llvm.dbg.declare(metadata ptr %success, metadata !6329, metadata !DIExpression()), !dbg !6347
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !6348
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6332, metadata !DIExpression()), !dbg !6348
  %1 = load ptr, ptr %ticket.addr, align 8, !dbg !6348
  %tobool2 = icmp ne ptr %1, null, !dbg !6348
  %lnot = xor i1 %tobool2, true, !dbg !6348
  %lnot3 = xor i1 %lnot, true, !dbg !6348
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6348
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6348
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !6349
  %tobool4 = icmp ne i32 %2, 0, !dbg !6349
  %lnot5 = xor i1 %tobool4, true, !dbg !6349
  %lnot7 = xor i1 %lnot5, true, !dbg !6349
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !6349
  %conv = sext i32 %lnot.ext8 to i64, !dbg !6349
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6349
  %tobool9 = icmp ne i64 %expval, 0, !dbg !6349
  br i1 %tobool9, label %if.then10, label %if.end, !dbg !6348

if.then10:                                        ; preds = %if.then
  br label %do.body, !dbg !6349

do.body:                                          ; preds = %if.then10
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !6350
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6335, metadata !DIExpression()), !dbg !6350
  store i32 2305, ptr %__flags, align 4, !dbg !6350
  br label %do.body11, !dbg !6350

do.body11:                                        ; preds = %do.body
  br label %do.cond, !dbg !6351

do.cond:                                          ; preds = %do.body11
  br label %do.end, !dbg !6351

do.end:                                           ; preds = %do.cond
  br label %do.body12, !dbg !6350

do.body12:                                        ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !6353
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 247, i32 %3, i64 12) #9, !dbg !6353, !srcloc !6355
  br label %do.cond13, !dbg !6353

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6353

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !6350

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !6356

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !6356

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !6349
  br label %do.cond18, !dbg !6350

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !6350

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !6350

if.end:                                           ; preds = %do.end19, %if.then
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !6348
  %tobool20 = icmp ne i32 %4, 0, !dbg !6348
  %lnot21 = xor i1 %tobool20, true, !dbg !6348
  %lnot23 = xor i1 %lnot21, true, !dbg !6348
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !6348
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !6348
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !6348
  store i64 %expval26, ptr %tmp, align 8, !dbg !6349
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !6358
  %5 = load i64, ptr %tmp, align 8, !dbg !6348
  %tobool27 = icmp ne i64 %5, 0, !dbg !6358
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !6359

if.then28:                                        ; preds = %if.end
  store i32 -16, ptr %retval, align 4, !dbg !6360
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6360

if.end29:                                         ; preds = %if.end
  %6 = load ptr, ptr %bo.addr, align 8, !dbg !6361
  %base = getelementptr inbounds %struct.ttm_buffer_object, ptr %6, i32 0, i32 0, !dbg !6362
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %base, i32 0, i32 9, !dbg !6363
  %7 = load ptr, ptr %resv, align 8, !dbg !6363
  %call = call zeroext i1 @dma_resv_trylock(ptr noundef %7) #8, !dbg !6364
  %frombool30 = zext i1 %call to i8, !dbg !6365
  store i8 %frombool30, ptr %success, align 1, !dbg !6365
  %8 = load i8, ptr %success, align 1, !dbg !6366, !range !5774, !noundef !1156
  %tobool31 = trunc i8 %8 to i1, !dbg !6366
  %9 = zext i1 %tobool31 to i64, !dbg !6366
  %cond = select i1 %tobool31, i32 0, i32 -16, !dbg !6366
  store i32 %cond, ptr %retval, align 4, !dbg !6367
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6367

cleanup:                                          ; preds = %if.end29, %if.then28
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #9, !dbg !6368
  br label %cleanup46

if.end33:                                         ; preds = %entry
  %10 = load i8, ptr %interruptible.addr, align 1, !dbg !6369, !range !5774, !noundef !1156
  %tobool34 = trunc i8 %10 to i1, !dbg !6369
  br i1 %tobool34, label %if.then35, label %if.else, !dbg !6371

if.then35:                                        ; preds = %if.end33
  %11 = load ptr, ptr %bo.addr, align 8, !dbg !6372
  %base36 = getelementptr inbounds %struct.ttm_buffer_object, ptr %11, i32 0, i32 0, !dbg !6373
  %resv37 = getelementptr inbounds %struct.drm_gem_object, ptr %base36, i32 0, i32 9, !dbg !6374
  %12 = load ptr, ptr %resv37, align 8, !dbg !6374
  %13 = load ptr, ptr %ticket.addr, align 8, !dbg !6375
  %call38 = call i32 @dma_resv_lock_interruptible(ptr noundef %12, ptr noundef %13) #8, !dbg !6376
  store i32 %call38, ptr %ret, align 4, !dbg !6377
  br label %if.end42, !dbg !6378

if.else:                                          ; preds = %if.end33
  %14 = load ptr, ptr %bo.addr, align 8, !dbg !6379
  %base39 = getelementptr inbounds %struct.ttm_buffer_object, ptr %14, i32 0, i32 0, !dbg !6380
  %resv40 = getelementptr inbounds %struct.drm_gem_object, ptr %base39, i32 0, i32 9, !dbg !6381
  %15 = load ptr, ptr %resv40, align 8, !dbg !6381
  %16 = load ptr, ptr %ticket.addr, align 8, !dbg !6382
  %call41 = call i32 @dma_resv_lock(ptr noundef %15, ptr noundef %16) #8, !dbg !6383
  store i32 %call41, ptr %ret, align 4, !dbg !6384
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then35
  %17 = load i32, ptr %ret, align 4, !dbg !6385
  %cmp = icmp eq i32 %17, -4, !dbg !6387
  br i1 %cmp, label %if.then44, label %if.end45, !dbg !6388

if.then44:                                        ; preds = %if.end42
  store i32 -512, ptr %retval, align 4, !dbg !6389
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup46, !dbg !6389

if.end45:                                         ; preds = %if.end42
  %18 = load i32, ptr %ret, align 4, !dbg !6390
  store i32 %18, ptr %retval, align 4, !dbg !6391
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup46, !dbg !6391

cleanup46:                                        ; preds = %if.end45, %if.then44, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !6392
  %19 = load i32, ptr %retval, align 4, !dbg !6392
  ret i32 %19, !dbg !6392
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ttm_bo_vm_access_kmap(ptr noundef %bo, i64 noundef %offset, ptr noundef %buf, i32 noundef %len, i32 noundef %write) #0 align 16 !dbg !6393 {
entry:
  %retval = alloca i32, align 4
  %bo.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %write.addr = alloca i32, align 4
  %page = alloca i64, align 8
  %bytes_left = alloca i64, align 8
  %ret = alloca i32, align 4
  %bytes = alloca i64, align 8
  %__UNIQUE_ID___x333 = alloca i64, align 8
  %__UNIQUE_ID___y334 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %map = alloca %struct.ttm_bo_kmap_obj, align 8
  %ptr = alloca ptr, align 8
  %is_iomem = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp25 = alloca i64, align 8
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !6397, metadata !DIExpression()), !dbg !6418
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6398, metadata !DIExpression()), !dbg !6419
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6399, metadata !DIExpression()), !dbg !6420
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6400, metadata !DIExpression()), !dbg !6421
  store i32 %write, ptr %write.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6401, metadata !DIExpression()), !dbg !6422
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #9, !dbg !6423
  call void @llvm.dbg.declare(metadata ptr %page, metadata !6402, metadata !DIExpression()), !dbg !6424
  %0 = load i64, ptr %offset.addr, align 8, !dbg !6425
  %shr = lshr i64 %0, 12, !dbg !6426
  store i64 %shr, ptr %page, align 8, !dbg !6424
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes_left) #9, !dbg !6427
  call void @llvm.dbg.declare(metadata ptr %bytes_left, metadata !6403, metadata !DIExpression()), !dbg !6428
  %1 = load i32, ptr %len.addr, align 4, !dbg !6429
  %conv = sext i32 %1 to i64, !dbg !6429
  store i64 %conv, ptr %bytes_left, align 8, !dbg !6428
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !6430
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6404, metadata !DIExpression()), !dbg !6431
  %2 = load i64, ptr %page, align 8, !dbg !6432
  %shl = shl i64 %2, 12, !dbg !6433
  %3 = load i64, ptr %offset.addr, align 8, !dbg !6434
  %sub = sub i64 %3, %shl, !dbg !6434
  store i64 %sub, ptr %offset.addr, align 8, !dbg !6434
  br label %do.body, !dbg !6435

do.body:                                          ; preds = %do.cond41, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #9, !dbg !6436
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6405, metadata !DIExpression()), !dbg !6437
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x333) #9, !dbg !6438
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x333, metadata !6407, metadata !DIExpression()), !dbg !6438
  %4 = load i64, ptr %bytes_left, align 8, !dbg !6438
  store i64 %4, ptr %__UNIQUE_ID___x333, align 8, !dbg !6438
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y334) #9, !dbg !6438
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y334, metadata !6409, metadata !DIExpression()), !dbg !6438
  %5 = load i64, ptr %offset.addr, align 8, !dbg !6438
  %sub1 = sub i64 4096, %5, !dbg !6438
  store i64 %sub1, ptr %__UNIQUE_ID___y334, align 8, !dbg !6438
  %6 = load i64, ptr %__UNIQUE_ID___x333, align 8, !dbg !6438
  %7 = load i64, ptr %__UNIQUE_ID___y334, align 8, !dbg !6438
  %cmp = icmp ult i64 %6, %7, !dbg !6438
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6438

cond.true:                                        ; preds = %do.body
  %8 = load i64, ptr %__UNIQUE_ID___x333, align 8, !dbg !6438
  br label %cond.end, !dbg !6438

cond.false:                                       ; preds = %do.body
  %9 = load i64, ptr %__UNIQUE_ID___y334, align 8, !dbg !6438
  br label %cond.end, !dbg !6438

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ %9, %cond.false ], !dbg !6438
  store i64 %cond, ptr %tmp, align 8, !dbg !6438
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y334) #9, !dbg !6439
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x333) #9, !dbg !6439
  %10 = load i64, ptr %tmp, align 8, !dbg !6438
  store i64 %10, ptr %bytes, align 8, !dbg !6437
  call void @llvm.lifetime.start.p0(i64 32, ptr %map) #9, !dbg !6440
  call void @llvm.dbg.declare(metadata ptr %map, metadata !6410, metadata !DIExpression()), !dbg !6441
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #9, !dbg !6442
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !6411, metadata !DIExpression()), !dbg !6443
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_iomem) #9, !dbg !6444
  call void @llvm.dbg.declare(metadata ptr %is_iomem, metadata !6412, metadata !DIExpression()), !dbg !6445
  %11 = load ptr, ptr %bo.addr, align 8, !dbg !6446
  %12 = load i64, ptr %page, align 8, !dbg !6447
  %call = call i32 @ttm_bo_kmap(ptr noundef %11, i64 noundef %12, i64 noundef 1, ptr noundef %map) #8, !dbg !6448
  store i32 %call, ptr %ret, align 4, !dbg !6449
  %13 = load i32, ptr %ret, align 4, !dbg !6450
  %tobool = icmp ne i32 %13, 0, !dbg !6450
  br i1 %tobool, label %if.then, label %if.end, !dbg !6452

if.then:                                          ; preds = %cond.end
  %14 = load i32, ptr %ret, align 4, !dbg !6453
  store i32 %14, ptr %retval, align 4, !dbg !6454
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6454

if.end:                                           ; preds = %cond.end
  %call3 = call ptr @ttm_kmap_obj_virtual(ptr noundef %map, ptr noundef %is_iomem) #8, !dbg !6455
  %15 = load i64, ptr %offset.addr, align 8, !dbg !6456
  %add.ptr = getelementptr i8, ptr %call3, i64 %15, !dbg !6457
  store ptr %add.ptr, ptr %ptr, align 8, !dbg !6458
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !6459
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6413, metadata !DIExpression()), !dbg !6459
  %16 = load i8, ptr %is_iomem, align 1, !dbg !6459, !range !5774, !noundef !1156
  %tobool4 = trunc i8 %16 to i1, !dbg !6459
  %lnot = xor i1 %tobool4, true, !dbg !6459
  %lnot5 = xor i1 %lnot, true, !dbg !6459
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6459
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6459
  %17 = load i32, ptr %__ret_warn_on, align 4, !dbg !6460
  %tobool6 = icmp ne i32 %17, 0, !dbg !6460
  %lnot7 = xor i1 %tobool6, true, !dbg !6460
  %lnot9 = xor i1 %lnot7, true, !dbg !6460
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !6460
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !6460
  %expval = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !6460
  %tobool12 = icmp ne i64 %expval, 0, !dbg !6460
  br i1 %tobool12, label %if.then13, label %if.end24, !dbg !6459

if.then13:                                        ; preds = %if.end
  br label %do.body14, !dbg !6460

do.body14:                                        ; preds = %if.then13
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !6461
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6415, metadata !DIExpression()), !dbg !6461
  store i32 2307, ptr %__flags, align 4, !dbg !6461
  br label %do.body15, !dbg !6461

do.body15:                                        ; preds = %do.body14
  br label %do.cond, !dbg !6462

do.cond:                                          ; preds = %do.body15
  br label %do.end, !dbg !6462

do.end:                                           ; preds = %do.cond
  br label %do.body16, !dbg !6461

do.body16:                                        ; preds = %do.end
  %18 = load i32, ptr %__flags, align 4, !dbg !6464
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 392, i32 %18, i64 12) #9, !dbg !6464, !srcloc !6466
  br label %do.cond17, !dbg !6464

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !6464

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !6461

do.body19:                                        ; preds = %do.end18
  br label %do.cond20, !dbg !6467

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !6467

do.end21:                                         ; preds = %do.cond20
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !6460
  br label %do.cond22, !dbg !6461

do.cond22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !6461

do.end23:                                         ; preds = %do.cond22
  br label %if.end24, !dbg !6461

if.end24:                                         ; preds = %do.end23, %if.end
  %19 = load i32, ptr %__ret_warn_on, align 4, !dbg !6459
  %tobool26 = icmp ne i32 %19, 0, !dbg !6459
  %lnot27 = xor i1 %tobool26, true, !dbg !6459
  %lnot29 = xor i1 %lnot27, true, !dbg !6459
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !6459
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !6459
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !6459
  store i64 %expval32, ptr %tmp25, align 8, !dbg !6460
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !6469
  %20 = load i64, ptr %tmp25, align 8, !dbg !6459
  %21 = load i32, ptr %write.addr, align 4, !dbg !6470
  %tobool33 = icmp ne i32 %21, 0, !dbg !6470
  br i1 %tobool33, label %if.then34, label %if.else, !dbg !6472

if.then34:                                        ; preds = %if.end24
  %22 = load ptr, ptr %ptr, align 8, !dbg !6473
  %23 = load ptr, ptr %buf.addr, align 8, !dbg !6474
  %24 = load i64, ptr %bytes, align 8, !dbg !6475
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %22, ptr align 1 %23, i64 %24, i1 false), !dbg !6476
  br label %if.end35, !dbg !6476

if.else:                                          ; preds = %if.end24
  %25 = load ptr, ptr %buf.addr, align 8, !dbg !6477
  %26 = load ptr, ptr %ptr, align 8, !dbg !6478
  %27 = load i64, ptr %bytes, align 8, !dbg !6479
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %26, i64 %27, i1 false), !dbg !6480
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then34
  call void @ttm_bo_kunmap(ptr noundef %map) #8, !dbg !6481
  %28 = load i64, ptr %page, align 8, !dbg !6482
  %inc = add i64 %28, 1, !dbg !6482
  store i64 %inc, ptr %page, align 8, !dbg !6482
  %29 = load i64, ptr %bytes, align 8, !dbg !6483
  %30 = load ptr, ptr %buf.addr, align 8, !dbg !6484
  %add.ptr36 = getelementptr i8, ptr %30, i64 %29, !dbg !6484
  store ptr %add.ptr36, ptr %buf.addr, align 8, !dbg !6484
  %31 = load i64, ptr %bytes, align 8, !dbg !6485
  %32 = load i64, ptr %bytes_left, align 8, !dbg !6486
  %sub37 = sub i64 %32, %31, !dbg !6486
  store i64 %sub37, ptr %bytes_left, align 8, !dbg !6486
  store i64 0, ptr %offset.addr, align 8, !dbg !6487
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6488
  br label %cleanup, !dbg !6488

cleanup:                                          ; preds = %if.end35, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_iomem) #9, !dbg !6488
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #9, !dbg !6488
  call void @llvm.lifetime.end.p0(i64 32, ptr %map) #9, !dbg !6488
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #9, !dbg !6488
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup44 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond41, !dbg !6489

do.cond41:                                        ; preds = %cleanup.cont
  %33 = load i64, ptr %bytes_left, align 8, !dbg !6490
  %tobool42 = icmp ne i64 %33, 0, !dbg !6489
  br i1 %tobool42, label %do.body, label %do.end43, !dbg !6489, !llvm.loop !6491

do.end43:                                         ; preds = %do.cond41
  %34 = load i32, ptr %len.addr, align 4, !dbg !6493
  store i32 %34, ptr %retval, align 4, !dbg !6494
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !6494

cleanup44:                                        ; preds = %do.end43, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !6495
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes_left) #9, !dbg !6495
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #9, !dbg !6495
  %35 = load i32, ptr %retval, align 4, !dbg !6495
  ret i32 %35, !dbg !6495
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_bo_unreserve(ptr noundef %bo) #2 align 16 !dbg !6496 {
entry:
  %bo.addr = alloca ptr, align 8
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !6498, metadata !DIExpression()), !dbg !6499
  %0 = load ptr, ptr %bo.addr, align 8, !dbg !6500
  call void @ttm_bo_move_to_lru_tail_unlocked(ptr noundef %0) #8, !dbg !6501
  %1 = load ptr, ptr %bo.addr, align 8, !dbg !6502
  %base = getelementptr inbounds %struct.ttm_buffer_object, ptr %1, i32 0, i32 0, !dbg !6503
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %base, i32 0, i32 9, !dbg !6504
  %2 = load ptr, ptr %resv, align 8, !dbg !6504
  call void @dma_resv_unlock(ptr noundef %2) #8, !dbg !6505
  ret void, !dbg !6506
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ttm_bo_mmap_obj(ptr noundef %vma, ptr noundef %bo) #0 align 16 !dbg !6507 {
entry:
  %retval = alloca i32, align 4
  %vma.addr = alloca ptr, align 8
  %bo.addr = alloca ptr, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6511, metadata !DIExpression()), !dbg !6513
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !6512, metadata !DIExpression()), !dbg !6514
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !6515
  %1 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 3, !dbg !6517
  %2 = load i64, ptr %1, align 8, !dbg !6517
  %call = call zeroext i1 @is_cow_mapping(i64 noundef %2) #8, !dbg !6518
  br i1 %call, label %if.then, label %if.end, !dbg !6519

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6520
  br label %return, !dbg !6520

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %bo.addr, align 8, !dbg !6521
  call void @ttm_bo_get(ptr noundef %3) #8, !dbg !6522
  %4 = load ptr, ptr %vma.addr, align 8, !dbg !6523
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 10, !dbg !6525
  %5 = load ptr, ptr %vm_ops, align 8, !dbg !6525
  %tobool = icmp ne ptr %5, null, !dbg !6523
  br i1 %tobool, label %if.end3, label %if.then1, !dbg !6526

if.then1:                                         ; preds = %if.end
  %6 = load ptr, ptr %vma.addr, align 8, !dbg !6527
  %vm_ops2 = getelementptr inbounds %struct.vm_area_struct, ptr %6, i32 0, i32 10, !dbg !6528
  store ptr @ttm_bo_vm_ops, ptr %vm_ops2, align 8, !dbg !6529
  br label %if.end3, !dbg !6527

if.end3:                                          ; preds = %if.then1, %if.end
  %7 = load ptr, ptr %bo.addr, align 8, !dbg !6530
  %8 = load ptr, ptr %vma.addr, align 8, !dbg !6531
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 13, !dbg !6532
  store ptr %7, ptr %vm_private_data, align 8, !dbg !6533
  %9 = load ptr, ptr %vma.addr, align 8, !dbg !6534
  call void @vm_flags_set(ptr noundef %9, i64 noundef 67388416) #8, !dbg !6535
  store i32 0, ptr %retval, align 4, !dbg !6536
  br label %return, !dbg !6536

return:                                           ; preds = %if.end3, %if.then
  %10 = load i32, ptr %retval, align 4, !dbg !6537
  ret i32 %10, !dbg !6537
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_cow_mapping(i64 noundef %flags) #2 align 16 !dbg !6538 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6542, metadata !DIExpression()), !dbg !6543
  %0 = load i64, ptr %flags.addr, align 8, !dbg !6544
  %and = and i64 %0, 40, !dbg !6545
  %cmp = icmp eq i64 %and, 32, !dbg !6546
  ret i1 %cmp, !dbg !6547
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vm_flags_set(ptr noundef %vma, i64 noundef %flags) #2 align 16 !dbg !6548 {
entry:
  %vma.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6552, metadata !DIExpression()), !dbg !6554
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6553, metadata !DIExpression()), !dbg !6555
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !6556
  call void @vma_start_write(ptr noundef %0) #8, !dbg !6557
  %1 = load i64, ptr %flags.addr, align 8, !dbg !6558
  %2 = load ptr, ptr %vma.addr, align 8, !dbg !6559
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 3, !dbg !6559
  %4 = load i64, ptr %3, align 8, !dbg !6560
  %or = or i64 %4, %1, !dbg !6560
  store i64 %or, ptr %3, align 8, !dbg !6560
  ret void, !dbg !6561
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6562 dso_local i32 @ww_mutex_trylock(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_get(ptr noundef %kref) #2 align 16 !dbg !6566 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !6571, metadata !DIExpression()), !dbg !6572
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !6573
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !6574
  call void @refcount_inc(ptr noundef %refcount) #8, !dbg !6575
  ret void, !dbg !6576
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #2 align 16 !dbg !6577 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6582, metadata !DIExpression()), !dbg !6583
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6584
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #8, !dbg !6585
  ret void, !dbg !6586
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !6587 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6591, metadata !DIExpression()), !dbg !6593
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6592, metadata !DIExpression()), !dbg !6594
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6595
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6596
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #8, !dbg !6597
  ret void, !dbg !6598
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !6599 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6603, metadata !DIExpression()), !dbg !6607
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6604, metadata !DIExpression()), !dbg !6608
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6605, metadata !DIExpression()), !dbg !6609
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #9, !dbg !6610
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6606, metadata !DIExpression()), !dbg !6611
  %0 = load i32, ptr %i.addr, align 4, !dbg !6612
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6613
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6614
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #8, !dbg !6615
  store i32 %call, ptr %old, align 4, !dbg !6611
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6616
  %tobool = icmp ne ptr %2, null, !dbg !6616
  br i1 %tobool, label %if.then, label %if.end, !dbg !6618

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6619
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6620
  store i32 %3, ptr %4, align 4, !dbg !6621
  br label %if.end, !dbg !6622

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !6623
  %tobool1 = icmp ne i32 %5, 0, !dbg !6623
  %lnot = xor i1 %tobool1, true, !dbg !6623
  %lnot2 = xor i1 %lnot, true, !dbg !6623
  %lnot3 = xor i1 %lnot2, true, !dbg !6623
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6623
  %conv = sext i32 %lnot.ext to i64, !dbg !6623
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6623
  %tobool4 = icmp ne i64 %expval, 0, !dbg !6623
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !6625

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !6626
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #8, !dbg !6627
  br label %if.end18, !dbg !6627

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !6628
  %cmp = icmp slt i32 %7, 0, !dbg !6628
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6628

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !6628
  %9 = load i32, ptr %i.addr, align 4, !dbg !6628
  %add = add i32 %8, %9, !dbg !6628
  %cmp7 = icmp slt i32 %add, 0, !dbg !6628
  br label %lor.end, !dbg !6628

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !6628
  %lnot11 = xor i1 %lnot9, true, !dbg !6628
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !6628
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !6628
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !6628
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !6628
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6630

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !6631
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #8, !dbg !6632
  br label %if.end17, !dbg !6632

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #9, !dbg !6633
  ret void, !dbg !6633
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !6634 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6640, metadata !DIExpression()), !dbg !6642
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6641, metadata !DIExpression()), !dbg !6643
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6644
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #8, !dbg !6645
  %1 = load i32, ptr %i.addr, align 4, !dbg !6646
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6647
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #8, !dbg !6648
  ret i32 %call, !dbg !6649
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6650 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !6653 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6661, metadata !DIExpression()), !dbg !6663
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6662, metadata !DIExpression()), !dbg !6664
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6665
  %1 = load i64, ptr %size.addr, align 8, !dbg !6666
  %conv = trunc i64 %1 to i32, !dbg !6666
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #8, !dbg !6667
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6668
  %3 = load i64, ptr %size.addr, align 8, !dbg !6668
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #8, !dbg !6668
  ret void, !dbg !6669
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !6670 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6673, metadata !DIExpression()), !dbg !6675
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6674, metadata !DIExpression()), !dbg !6676
  %0 = load i32, ptr %i.addr, align 4, !dbg !6677
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6678
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #8, !dbg !6679
  ret i32 %call, !dbg !6680
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !6681 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6686, metadata !DIExpression()), !dbg !6688
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6687, metadata !DIExpression()), !dbg !6689
  ret i1 true, !dbg !6690
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #2 align 16 !dbg !6691 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6696, metadata !DIExpression()), !dbg !6699
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6697, metadata !DIExpression()), !dbg !6700
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6698, metadata !DIExpression()), !dbg !6701
  ret void, !dbg !6702
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !6703 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6706, metadata !DIExpression()), !dbg !6710
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6707, metadata !DIExpression()), !dbg !6711
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #9, !dbg !6712
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6708, metadata !DIExpression()), !dbg !6712
  %0 = load i32, ptr %i.addr, align 4, !dbg !6712
  store i32 %0, ptr %__ret, align 4, !dbg !6712
  %1 = load i32, ptr %__ret, align 4, !dbg !6712
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6712
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6712
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #9, !dbg !6712, !srcloc !6713
  store i32 %3, ptr %__ret, align 4, !dbg !6712
  %4 = load i32, ptr %__ret, align 4, !dbg !6712
  store i32 %4, ptr %tmp, align 4, !dbg !6712
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #9, !dbg !6714
  %5 = load i32, ptr %tmp, align 4, !dbg !6712
  ret i32 %5, !dbg !6715
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__mmap_lock_trace_released(ptr noundef %mm, i1 noundef zeroext %write) #2 align 16 !dbg !6716 {
entry:
  %mm.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6720, metadata !DIExpression()), !dbg !6722
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6721, metadata !DIExpression()), !dbg !6723
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1)) #8, !dbg !6724
  br i1 %call, label %if.then, label %if.end, !dbg !6726

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6727
  %1 = load i8, ptr %write.addr, align 1, !dbg !6728, !range !5774, !noundef !1156
  %tobool = trunc i8 %1 to i1, !dbg !6728
  call void @__mmap_lock_do_trace_released(ptr noundef %0, i1 noundef zeroext %tobool) #8, !dbg !6729
  br label %if.end, !dbg !6729

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6730
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6731 dso_local void @up_read(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #7 align 16 !dbg !6735 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6751, metadata !DIExpression()), !dbg !6752
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6753
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #8, !dbg !6754
  ret i1 %call, !dbg !6755
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6756 dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #7 align 16 !dbg !6757 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6762, metadata !DIExpression()), !dbg !6765
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !6763, metadata !DIExpression()), !dbg !6766
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6767
  %1 = load i8, ptr %branch.addr, align 1, !dbg !6768, !range !5774, !noundef !1156
  %tobool = trunc i8 %1 to i1, !dbg !6768
  %conv = zext i1 %tobool to i32, !dbg !6768
  %or = or i32 2, %conv, !dbg !6769
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #9
          to label %asm.fallthrough [label %l_yes], !dbg !6770, !srcloc !6771

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6772
  br label %return, !dbg !6772

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !6764), !dbg !6773
  store i1 true, ptr %retval, align 1, !dbg !6774
  br label %return, !dbg !6774

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !6775
  ret i1 %2, !dbg !6775
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6776 dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_resv_reset_max_fences(ptr noundef %obj) #2 align 16 !dbg !6777 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !6779, metadata !DIExpression()), !dbg !6780
  ret void, !dbg !6781
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6782 dso_local void @ww_mutex_unlock(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6785 dso_local zeroext i1 @dma_resv_test_signaled(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6788 dso_local i64 @dma_resv_wait_timeout(ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6791 dso_local void @__free_pages(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dma_resv_lock(ptr noundef %obj, ptr noundef %ctx) #2 align 16 !dbg !6794 {
entry:
  %obj.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !6796, metadata !DIExpression()), !dbg !6798
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6797, metadata !DIExpression()), !dbg !6799
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !6800
  %lock = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 0, !dbg !6801
  %1 = load ptr, ptr %ctx.addr, align 8, !dbg !6802
  %call = call i32 @ww_mutex_lock(ptr noundef %lock, ptr noundef %1) #8, !dbg !6803
  ret i32 %call, !dbg !6804
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6805 dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6806 dso_local i32 @ttm_bo_kmap(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ttm_kmap_obj_virtual(ptr noundef %map, ptr noundef %is_iomem) #2 align 16 !dbg !6810 {
entry:
  %map.addr = alloca ptr, align 8
  %is_iomem.addr = alloca ptr, align 8
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !6814, metadata !DIExpression()), !dbg !6816
  store ptr %is_iomem, ptr %is_iomem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %is_iomem.addr, metadata !6815, metadata !DIExpression()), !dbg !6817
  %0 = load ptr, ptr %map.addr, align 8, !dbg !6818
  %bo_kmap_type = getelementptr inbounds %struct.ttm_bo_kmap_obj, ptr %0, i32 0, i32 2, !dbg !6819
  %1 = load i32, ptr %bo_kmap_type, align 8, !dbg !6819
  %and = and i32 %1, 128, !dbg !6820
  %tobool = icmp ne i32 %and, 0, !dbg !6821
  %lnot = xor i1 %tobool, true, !dbg !6821
  %lnot1 = xor i1 %lnot, true, !dbg !6822
  %2 = load ptr, ptr %is_iomem.addr, align 8, !dbg !6823
  %frombool = zext i1 %lnot1 to i8, !dbg !6824
  store i8 %frombool, ptr %2, align 1, !dbg !6824
  %3 = load ptr, ptr %map.addr, align 8, !dbg !6825
  %virtual = getelementptr inbounds %struct.ttm_bo_kmap_obj, ptr %3, i32 0, i32 0, !dbg !6826
  %4 = load ptr, ptr %virtual, align 8, !dbg !6826
  ret ptr %4, !dbg !6827
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6828 dso_local void @ttm_bo_kunmap(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_bo_move_to_lru_tail_unlocked(ptr noundef %bo) #2 align 16 !dbg !6831 {
entry:
  %bo.addr = alloca ptr, align 8
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !6833, metadata !DIExpression()), !dbg !6834
  %0 = load ptr, ptr %bo.addr, align 8, !dbg !6835
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1, !dbg !6836
  %1 = load ptr, ptr %bdev, align 8, !dbg !6836
  %lru_lock = getelementptr inbounds %struct.ttm_device, ptr %1, i32 0, i32 6, !dbg !6837
  call void @spin_lock(ptr noundef %lru_lock) #8, !dbg !6838
  %2 = load ptr, ptr %bo.addr, align 8, !dbg !6839
  call void @ttm_bo_move_to_lru_tail(ptr noundef %2) #8, !dbg !6840
  %3 = load ptr, ptr %bo.addr, align 8, !dbg !6841
  %bdev1 = getelementptr inbounds %struct.ttm_buffer_object, ptr %3, i32 0, i32 1, !dbg !6842
  %4 = load ptr, ptr %bdev1, align 8, !dbg !6842
  %lru_lock2 = getelementptr inbounds %struct.ttm_device, ptr %4, i32 0, i32 6, !dbg !6843
  call void @spin_unlock(ptr noundef %lru_lock2) #8, !dbg !6844
  ret void, !dbg !6845
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #7 align 16 !dbg !6846 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6851, metadata !DIExpression()), !dbg !6852
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6853
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6853
  call void @_raw_spin_lock(ptr noundef %1) #8, !dbg !6853
  ret void, !dbg !6854
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6855 dso_local void @ttm_bo_move_to_lru_tail(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #7 align 16 !dbg !6856 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6858, metadata !DIExpression()), !dbg !6859
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6860
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6860
  call void @_raw_spin_unlock(ptr noundef %1) #8, !dbg !6860
  ret void, !dbg !6861
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6862 dso_local void @_raw_spin_lock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6867 dso_local void @_raw_spin_unlock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vma_start_write(ptr noundef %vma) #2 align 16 !dbg !6868 {
entry:
  %vma.addr = alloca ptr, align 8
  %mm_lock_seq = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6870, metadata !DIExpression()), !dbg !6872
  call void @llvm.lifetime.start.p0(i64 4, ptr %mm_lock_seq) #9, !dbg !6873
  call void @llvm.dbg.declare(metadata ptr %mm_lock_seq, metadata !6871, metadata !DIExpression()), !dbg !6874
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !6875
  %call = call zeroext i1 @__is_vma_write_locked(ptr noundef %0, ptr noundef %mm_lock_seq) #8, !dbg !6877
  br i1 %call, label %if.then, label %if.end, !dbg !6878

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6879

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %vma.addr, align 8, !dbg !6880
  %vm_lock = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 5, !dbg !6881
  %2 = load ptr, ptr %vm_lock, align 8, !dbg !6881
  %lock = getelementptr inbounds %struct.vma_lock, ptr %2, i32 0, i32 0, !dbg !6882
  call void @down_write(ptr noundef %lock) #8, !dbg !6883
  br label %do.body, !dbg !6884

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !6885

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !6887

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6887

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !6885

do.body2:                                         ; preds = %do.end
  %3 = load i32, ptr %mm_lock_seq, align 4, !dbg !6889
  %4 = load ptr, ptr %vma.addr, align 8, !dbg !6889
  %vm_lock_seq = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 4, !dbg !6889
  store volatile i32 %3, ptr %vm_lock_seq, align 8, !dbg !6889
  br label %do.cond3, !dbg !6889

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !6889

do.end4:                                          ; preds = %do.cond3
  br label %do.cond5, !dbg !6885

do.cond5:                                         ; preds = %do.end4
  br label %do.end6, !dbg !6885

do.end6:                                          ; preds = %do.cond5
  %5 = load ptr, ptr %vma.addr, align 8, !dbg !6891
  %vm_lock7 = getelementptr inbounds %struct.vm_area_struct, ptr %5, i32 0, i32 5, !dbg !6892
  %6 = load ptr, ptr %vm_lock7, align 8, !dbg !6892
  %lock8 = getelementptr inbounds %struct.vma_lock, ptr %6, i32 0, i32 0, !dbg !6893
  call void @up_write(ptr noundef %lock8) #8, !dbg !6894
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6895
  br label %cleanup, !dbg !6895

cleanup:                                          ; preds = %do.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %mm_lock_seq) #9, !dbg !6895
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6895

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__is_vma_write_locked(ptr noundef %vma, ptr noundef %mm_lock_seq) #0 align 16 !dbg !6896 {
entry:
  %vma.addr = alloca ptr, align 8
  %mm_lock_seq.addr = alloca ptr, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6900, metadata !DIExpression()), !dbg !6902
  store ptr %mm_lock_seq, ptr %mm_lock_seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm_lock_seq.addr, metadata !6901, metadata !DIExpression()), !dbg !6903
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !6904
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1, !dbg !6905
  %1 = load ptr, ptr %vm_mm, align 8, !dbg !6905
  call void @mmap_assert_write_locked(ptr noundef %1) #8, !dbg !6906
  %2 = load ptr, ptr %vma.addr, align 8, !dbg !6907
  %vm_mm1 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 1, !dbg !6908
  %3 = load ptr, ptr %vm_mm1, align 8, !dbg !6908
  %4 = getelementptr inbounds %struct.mm_struct, ptr %3, i32 0, i32 0, !dbg !6909
  %mm_lock_seq2 = getelementptr inbounds %struct.anon.24, ptr %4, i32 0, i32 18, !dbg !6909
  %5 = load i32, ptr %mm_lock_seq2, align 8, !dbg !6909
  %6 = load ptr, ptr %mm_lock_seq.addr, align 8, !dbg !6910
  store i32 %5, ptr %6, align 4, !dbg !6911
  %7 = load ptr, ptr %vma.addr, align 8, !dbg !6912
  %vm_lock_seq = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 4, !dbg !6913
  %8 = load i32, ptr %vm_lock_seq, align 8, !dbg !6913
  %9 = load ptr, ptr %mm_lock_seq.addr, align 8, !dbg !6914
  %10 = load i32, ptr %9, align 4, !dbg !6915
  %cmp = icmp eq i32 %8, %10, !dbg !6916
  ret i1 %cmp, !dbg !6917
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6918 dso_local void @down_write(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6919 dso_local void @up_write(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmap_assert_write_locked(ptr noundef %mm) #2 align 16 !dbg !6920 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6922, metadata !DIExpression()), !dbg !6923
  br label %do.body, !dbg !6924

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6925
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !6925
  %mmap_lock = getelementptr inbounds %struct.anon.24, ptr %1, i32 0, i32 16, !dbg !6925
  br label %do.end, !dbg !6925

do.end:                                           ; preds = %do.body
  ret void, !dbg !6927
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5505, !5506, !5507, !5508, !5509, !5510, !5511, !5512}
!llvm.ident = !{!5513}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_bo_vm_reserve327", scope: !2, file: !3, line: 161, type: !205, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/ttm/.ttm_bo_vm.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/ttm/ttm\22 -D KBUILD_BASENAME=\22ttm_bo_vm\22 -D KBUILD_MODNAME=\22ttm\22 -D __KBUILD_MODNAME=kmod_ttm -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/ttm/ttm_bo_vm.ll drivers/gpu/drm/ttm/ttm_bo_vm.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5471, globals: !5476, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/ttm/ttm_bo_vm.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a2dd7c4f2dcd7f373f95264abb721ad4")
!4 = !{!5, !13, !18, !26, !34, !50, !56, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !148, !153, !159, !165, !181, !186, !194, !201}
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
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !57, line: 65, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!58 = !{!59, !60}
!59 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!60 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !62, line: 16, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "TT_NONE", value: 0)
!65 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!66 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !68, line: 51, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!71 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!72 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!73 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !75, line: 15, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!76 = !{!77, !78, !79, !80}
!77 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!78 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!79 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!80 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !82, line: 26, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!83 = !{!84, !85, !86}
!84 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!85 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!86 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !88, line: 45, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!91 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!92 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !94, line: 487, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!97 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!98 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!99 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !101, line: 620, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!102 = !{!103, !104, !105, !106, !107}
!103 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!104 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!105 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!106 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!107 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !101, line: 597, baseType: !109, size: 32, elements: !110)
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !{!111, !112, !113, !114, !115}
!111 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!112 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!113 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!114 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!115 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !94, line: 547, baseType: !7, size: 32, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124}
!118 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!119 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!120 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!121 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!122 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!123 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!124 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !94, line: 564, baseType: !7, size: 32, elements: !126)
!126 = !{!127, !128, !129}
!127 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!128 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!129 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !94, line: 577, baseType: !7, size: 32, elements: !131)
!131 = !{!132, !133, !134}
!132 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!133 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!134 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !94, line: 503, baseType: !7, size: 32, elements: !136)
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!138 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!139 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!140 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "switch_power_state", file: !142, line: 30, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/drm/drm_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9743f4a84c342e86d9e79f688e9c49c5")
!143 = !{!144, !145, !146, !147}
!144 = !DIEnumerator(name: "DRM_SWITCH_POWER_ON", value: 0)
!145 = !DIEnumerator(name: "DRM_SWITCH_POWER_OFF", value: 1)
!146 = !DIEnumerator(name: "DRM_SWITCH_POWER_CHANGING", value: 2)
!147 = !DIEnumerator(name: "DRM_SWITCH_POWER_DYNAMIC_OFF", value: 3)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_gem_object_status", file: !149, line: 61, baseType: !7, size: 32, elements: !150)
!149 = !DIFile(filename: "./include/drm/drm_gem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5db19977067e41c640c8fecb4e671923")
!150 = !{!151, !152}
!151 = !DIEnumerator(name: "DRM_GEM_OBJECT_RESIDENT", value: 1)
!152 = !DIEnumerator(name: "DRM_GEM_OBJECT_PURGEABLE", value: 2)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ttm_caching", file: !154, line: 33, baseType: !7, size: 32, elements: !155)
!154 = !DIFile(filename: "./include/drm/ttm/ttm_caching.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "19c2ae3004d13ae67685208908fb2e14")
!155 = !{!156, !157, !158}
!156 = !DIEnumerator(name: "ttm_uncached", value: 0)
!157 = !DIEnumerator(name: "ttm_write_combined", value: 1)
!158 = !DIEnumerator(name: "ttm_cached", value: 2)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ttm_bo_type", file: !160, line: 67, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/drm/ttm/ttm_bo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2f81fca0b8181781f1c758cd81feeff")
!161 = !{!162, !163, !164}
!162 = !DIEnumerator(name: "ttm_bo_type_device", value: 0)
!163 = !DIEnumerator(name: "ttm_bo_type_kernel", value: 1)
!164 = !DIEnumerator(name: "ttm_bo_type_sg", value: 2)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vm_fault_reason", file: !35, line: 1211, baseType: !7, size: 32, elements: !166)
!166 = !{!167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180}
!167 = !DIEnumerator(name: "VM_FAULT_OOM", value: 1)
!168 = !DIEnumerator(name: "VM_FAULT_SIGBUS", value: 2)
!169 = !DIEnumerator(name: "VM_FAULT_MAJOR", value: 4)
!170 = !DIEnumerator(name: "VM_FAULT_HWPOISON", value: 16)
!171 = !DIEnumerator(name: "VM_FAULT_HWPOISON_LARGE", value: 32)
!172 = !DIEnumerator(name: "VM_FAULT_SIGSEGV", value: 64)
!173 = !DIEnumerator(name: "VM_FAULT_NOPAGE", value: 256)
!174 = !DIEnumerator(name: "VM_FAULT_LOCKED", value: 512)
!175 = !DIEnumerator(name: "VM_FAULT_RETRY", value: 1024)
!176 = !DIEnumerator(name: "VM_FAULT_FALLBACK", value: 2048)
!177 = !DIEnumerator(name: "VM_FAULT_DONE_COW", value: 4096)
!178 = !DIEnumerator(name: "VM_FAULT_NEEDDSYNC", value: 8192)
!179 = !DIEnumerator(name: "VM_FAULT_COMPLETED", value: 16384)
!180 = !DIEnumerator(name: "VM_FAULT_HINDEX_MASK", value: 983040)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !182, line: 10, baseType: !7, size: 32, elements: !183)
!182 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!183 = !{!184, !185}
!184 = !DIEnumerator(name: "false", value: 0)
!185 = !DIEnumerator(name: "true", value: 1)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !187, line: 119, baseType: !7, size: 32, elements: !188)
!187 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!188 = !{!189, !190, !191, !192, !193}
!189 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!190 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!191 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!192 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!193 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!194 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_resv_usage", file: !195, line: 71, baseType: !7, size: 32, elements: !196)
!195 = !DIFile(filename: "./include/linux/dma-resv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "33eb7b47491fa42a2c4bcb5c661d5780")
!196 = !{!197, !198, !199, !200}
!197 = !DIEnumerator(name: "DMA_RESV_USAGE_KERNEL", value: 0)
!198 = !DIEnumerator(name: "DMA_RESV_USAGE_WRITE", value: 1)
!199 = !DIEnumerator(name: "DMA_RESV_USAGE_READ", value: 2)
!200 = !DIEnumerator(name: "DMA_RESV_USAGE_BOOKKEEP", value: 3)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !202, file: !160, line: 154, baseType: !7, size: 32, elements: !5466)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_bo_kmap_obj", file: !160, line: 151, size: 256, elements: !203)
!203 = !{!204, !206, !4203, !4204}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "virtual", scope: !202, file: !160, line: 152, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !202, file: !160, line: 153, baseType: !207, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !35, line: 74, size: 512, align: 128, elements: !209)
!209 = !{!210, !212, !4197, !4202}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !208, file: !35, line: 75, baseType: !211, size: 64)
!211 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!212 = !DIDerivedType(tag: DW_TAG_member, scope: !208, file: !35, line: 83, baseType: !213, size: 320, offset: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !208, file: !35, line: 83, size: 320, elements: !214)
!214 = !{!215, !4103, !4117, !4121, !4196}
!215 = !DIDerivedType(tag: DW_TAG_member, scope: !213, file: !35, line: 84, baseType: !216, size: 320)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !213, file: !35, line: 84, size: 320, elements: !217)
!217 = !{!218, !235, !4097, !4102}
!218 = !DIDerivedType(tag: DW_TAG_member, scope: !216, file: !35, line: 90, baseType: !219, size: 128)
!219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !216, file: !35, line: 90, size: 128, elements: !220)
!220 = !{!221, !228, !233, !234}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !219, file: !35, line: 91, baseType: !222, size: 128)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !223, line: 190, size: 128, elements: !224)
!223 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!224 = !{!225, !227}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !222, file: !223, line: 191, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !222, file: !223, line: 191, baseType: !226, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, scope: !219, file: !35, line: 94, baseType: !229, size: 128)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !219, file: !35, line: 94, size: 128, elements: !230)
!230 = !{!231, !232}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !229, file: !35, line: 96, baseType: !205, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !229, file: !35, line: 98, baseType: !7, size: 32, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !219, file: !35, line: 102, baseType: !222, size: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !219, file: !35, line: 103, baseType: !222, size: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !216, file: !35, line: 106, baseType: !236, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !238)
!238 = !{!239, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !4091, !4092, !4093, !4094, !4095, !4096}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !237, file: !14, line: 473, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !242)
!242 = !{!243, !246, !247, !256, !257, !264, !265, !268, !269, !3926, !3927, !3928, !3929, !3930, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3970, !3973, !3974, !3975, !3984, !3985, !3986, !3987}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !241, file: !14, line: 642, baseType: !244, size: 16)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !223, line: 24, baseType: !245)
!245 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !241, file: !14, line: 643, baseType: !245, size: 16, offset: 16)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !241, file: !14, line: 644, baseType: !248, size: 32, offset: 32)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !249, line: 23, baseType: !250)
!249 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !249, line: 21, size: 32, elements: !251)
!251 = !{!252}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !250, file: !249, line: 22, baseType: !253, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !223, line: 37, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !255, line: 49, baseType: !7)
!255 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!256 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !241, file: !14, line: 645, baseType: !222, size: 128, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !241, file: !14, line: 646, baseType: !258, size: 32, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !249, line: 28, baseType: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !249, line: 26, size: 32, elements: !260)
!260 = !{!261}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !259, file: !249, line: 27, baseType: !262, size: 32)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !223, line: 38, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !255, line: 50, baseType: !7)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !241, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !241, file: !14, line: 650, baseType: !266, size: 64, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !241, file: !14, line: 651, baseType: !266, size: 64, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !241, file: !14, line: 654, baseType: !270, size: 64, offset: 384)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !273)
!273 = !{!274, !3754, !3764, !3768, !3772, !3776, !3780, !3784, !3788, !3792, !3796, !3797, !3801, !3805, !3842, !3871, !3875, !3881, !3885, !3889, !3893, !3897, !3901, !3907, !3911}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !272, file: !14, line: 1967, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!278, !240, !278, !7}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !280, line: 82, size: 1536, elements: !281)
!280 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!281 = !{!282, !283, !293, !301, !302, !325, !326, !330, !381, !3737, !3738, !3739, !3740, !3746, !3747, !3748}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !279, file: !280, line: 84, baseType: !7, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !279, file: !280, line: 85, baseType: !284, size: 32, offset: 32)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !285, line: 275, baseType: !286)
!285 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !285, line: 275, size: 32, elements: !287)
!287 = !{!288}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !286, file: !285, line: 275, baseType: !289, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !285, line: 69, baseType: !290)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !285, line: 64, size: 32, elements: !291)
!291 = !{!292}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !290, file: !285, line: 65, baseType: !7, size: 32)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !279, file: !280, line: 86, baseType: !294, size: 128, offset: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !295, line: 38, size: 128, elements: !296)
!295 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!296 = !{!297, !299}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !294, file: !295, line: 39, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !294, file: !295, line: 39, baseType: !300, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !279, file: !280, line: 87, baseType: !278, size: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !279, file: !280, line: 88, baseType: !303, size: 128, offset: 256)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !280, line: 49, size: 128, elements: !304)
!304 = !{!305, !321}
!305 = !DIDerivedType(tag: DW_TAG_member, scope: !303, file: !280, line: 50, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !303, file: !280, line: 50, size: 64, elements: !307)
!307 = !{!308, !317}
!308 = !DIDerivedType(tag: DW_TAG_member, scope: !306, file: !280, line: 51, baseType: !309, size: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !306, file: !280, line: 51, size: 64, elements: !310)
!310 = !{!311, !316}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !309, file: !280, line: 52, baseType: !312, size: 32)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !313, line: 21, baseType: !314)
!313 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !315, line: 27, baseType: !7)
!315 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!316 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !309, file: !280, line: 52, baseType: !312, size: 32, offset: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !306, file: !280, line: 54, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !313, line: 23, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !315, line: 31, baseType: !320)
!320 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !303, file: !280, line: 56, baseType: !322, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!324 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !279, file: !280, line: 89, baseType: !240, size: 64, offset: 384)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !279, file: !280, line: 91, baseType: !327, size: 256, offset: 448)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 256, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !279, file: !280, line: 94, baseType: !331, size: 64, offset: 704)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !332, line: 25, size: 64, elements: !333)
!332 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_member, scope: !331, file: !332, line: 26, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !331, file: !332, line: 26, size: 64, elements: !336)
!336 = !{!337, !338}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !335, file: !332, line: 28, baseType: !319, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, scope: !335, file: !332, line: 30, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !335, file: !332, line: 30, size: 64, elements: !340)
!340 = !{!341, !380}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !339, file: !332, line: 31, baseType: !342, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !343, line: 29, baseType: !344)
!343 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !343, line: 17, size: 32, elements: !345)
!345 = !{!346}
!346 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !343, line: 18, baseType: !347, size: 32)
!347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !343, line: 18, size: 32, elements: !348)
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !347, file: !343, line: 19, baseType: !350, size: 32)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !351, line: 14, size: 32, elements: !352)
!351 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !350, file: !351, line: 15, baseType: !354, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !355, line: 44, baseType: !356)
!355 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !355, line: 14, size: 32, elements: !357)
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, scope: !356, file: !355, line: 15, baseType: !359, size: 32)
!359 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !356, file: !355, line: 15, size: 32, elements: !360)
!360 = !{!361, !366, !373}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !359, file: !355, line: 16, baseType: !362, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !223, line: 174, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !223, line: 172, size: 32, elements: !364)
!364 = !{!365}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !363, file: !223, line: 173, baseType: !109, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, scope: !359, file: !355, line: 24, baseType: !367, size: 16)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !359, file: !355, line: 24, size: 16, elements: !368)
!368 = !{!369, !372}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !367, file: !355, line: 25, baseType: !370, size: 8)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !313, line: 17, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !315, line: 21, baseType: !324)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !367, file: !355, line: 26, baseType: !370, size: 8, offset: 8)
!373 = !DIDerivedType(tag: DW_TAG_member, scope: !359, file: !355, line: 28, baseType: !374, size: 32)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !359, file: !355, line: 28, size: 32, elements: !375)
!375 = !{!376, !379}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !374, file: !355, line: 29, baseType: !377, size: 16)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !313, line: 19, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !315, line: 24, baseType: !245)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !374, file: !355, line: 30, baseType: !377, size: 16, offset: 16)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !339, file: !332, line: 32, baseType: !109, size: 32, offset: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !279, file: !280, line: 95, baseType: !382, size: 64, offset: 768)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !280, line: 128, size: 1024, align: 512, elements: !385)
!385 = !{!386, !390, !391, !398, !407, !411, !415, !419, !420, !424, !429, !3727, !3731}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !384, file: !280, line: 129, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{!109, !278, !7}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !384, file: !280, line: 130, baseType: !387, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !384, file: !280, line: 131, baseType: !392, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{!109, !395, !397}
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !384, file: !280, line: 132, baseType: !399, size: 64, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!109, !395, !7, !402, !405}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!404 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !384, file: !280, line: 134, baseType: !408, size: 64, offset: 256)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!109, !395}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !384, file: !280, line: 135, baseType: !412, size: 64, offset: 320)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!109, !278}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !384, file: !280, line: 136, baseType: !416, size: 64, offset: 384)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !278}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !384, file: !280, line: 137, baseType: !416, size: 64, offset: 448)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !384, file: !280, line: 138, baseType: !421, size: 64, offset: 512)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !278, !240}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !384, file: !280, line: 139, baseType: !425, size: 64, offset: 576)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!428, !278, !428, !109}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !384, file: !280, line: 140, baseType: !430, size: 64, offset: 640)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!433, !3726}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !435, line: 70, size: 256, elements: !436)
!435 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!436 = !{!437, !438, !3722, !3723}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !434, file: !435, line: 71, baseType: !278, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !434, file: !435, line: 72, baseType: !439, size: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !441)
!441 = !{!442, !443, !446, !447, !448, !452, !2103, !2237, !2277, !2362, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2379, !2383, !2384, !2387, !2390, !2393, !2396, !2397, !2398, !2439, !3655, !3656, !3657, !3658, !3659, !3660, !3663, !3665, !3672, !3673, !3674, !3675, !3676, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !440, file: !14, line: 1191, baseType: !222, size: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !440, file: !14, line: 1192, baseType: !444, size: 32, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !223, line: 21, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !223, line: 18, baseType: !312)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !440, file: !14, line: 1193, baseType: !324, size: 8, offset: 160)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !440, file: !14, line: 1194, baseType: !211, size: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !440, file: !14, line: 1195, baseType: !449, size: 64, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !223, line: 52, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !255, line: 88, baseType: !451)
!451 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !440, file: !14, line: 1196, baseType: !453, size: 64, offset: 320)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !455)
!455 = !{!456, !457, !458, !464, !468, !472, !476, !2091, !2092, !2093, !2095, !2096, !2097, !2099, !2100, !2101, !2102}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !454, file: !14, line: 2367, baseType: !402, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !454, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !454, file: !14, line: 2376, baseType: !459, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!109, !462}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !435, line: 21, flags: DIFlagFwdDecl)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !454, file: !14, line: 2377, baseType: !465, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !467)
!467 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !454, file: !14, line: 2378, baseType: !469, size: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!278, !453, !109, !402, !205}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !454, file: !14, line: 2380, baseType: !473, size: 64, offset: 320)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !439}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !454, file: !14, line: 2381, baseType: !477, size: 64, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !479)
!479 = !{!480, !481, !482, !486, !1747, !1773, !1774, !1775, !1776, !1780, !1783, !1784, !1785, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1853, !1857, !1877, !1895, !1896, !1897, !1898, !1907, !1930, !1931, !1934, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1948, !1949, !2049, !2057, !2058, !2059, !2061, !2065, !2066, !2070, !2071, !2072, !2073, !2075, !2076, !2077, !2084, !2085, !2086, !2090}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !478, file: !6, line: 403, baseType: !5, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !478, file: !6, line: 406, baseType: !222, size: 128, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !478, file: !6, line: 409, baseType: !483, size: 448, offset: 192)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 448, elements: !484)
!484 = !{!485}
!485 = !DISubrange(count: 56)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !478, file: !6, line: 417, baseType: !487, size: 768, offset: 640)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !488)
!488 = !{!489, !1730, !1731, !1732, !1735}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !487, file: !6, line: 46, baseType: !490, size: 512)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !491, line: 64, size: 512, elements: !492)
!491 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!492 = !{!493, !494, !495, !497, !543, !1625, !1720, !1725, !1726, !1727, !1728, !1729}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !490, file: !491, line: 65, baseType: !402, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !490, file: !491, line: 66, baseType: !222, size: 128, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !490, file: !491, line: 67, baseType: !496, size: 64, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !490, file: !491, line: 68, baseType: !498, size: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !491, line: 168, size: 768, elements: !500)
!500 = !{!501, !502, !503, !504}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !499, file: !491, line: 169, baseType: !222, size: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !499, file: !491, line: 170, baseType: !342, size: 32, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !499, file: !491, line: 171, baseType: !490, size: 512, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !499, file: !491, line: 172, baseType: !505, size: 64, offset: 704)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !507)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !491, line: 133, size: 192, elements: !508)
!508 = !{!509, !516, !521}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !507, file: !491, line: 134, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!109, !514}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !507, file: !491, line: 135, baseType: !517, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!402, !514}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !507, file: !491, line: 136, baseType: !522, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!109, !514, !526}
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !491, line: 125, size: 20736, elements: !528)
!528 = !{!529, !533, !537, !538, !542}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !527, file: !491, line: 126, baseType: !530, size: 192)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 192, elements: !531)
!531 = !{!532}
!532 = !DISubrange(count: 3)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !527, file: !491, line: 127, baseType: !534, size: 4096, offset: 192)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 4096, elements: !535)
!535 = !{!536}
!536 = !DISubrange(count: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !527, file: !491, line: 128, baseType: !109, size: 32, offset: 4288)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !527, file: !491, line: 129, baseType: !539, size: 16384, offset: 4320)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 16384, elements: !540)
!540 = !{!541}
!541 = !DISubrange(count: 2048)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !527, file: !491, line: 130, baseType: !109, size: 32, offset: 20704)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !490, file: !491, line: 69, baseType: !544, size: 64, offset: 320)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !546)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !491, line: 116, size: 384, elements: !547)
!547 = !{!548, !552, !578, !1584, !1615, !1619}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !546, file: !491, line: 117, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !496}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !546, file: !491, line: 118, baseType: !553, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !556, line: 254, size: 128, elements: !557)
!556 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!557 = !{!558, !571}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !555, file: !556, line: 255, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!562, !496, !566, !428}
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !223, line: 66, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !255, line: 73, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !255, line: 15, baseType: !565)
!565 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !556, line: 30, size: 128, elements: !568)
!568 = !{!569, !570}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !567, file: !556, line: 31, baseType: !402, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !567, file: !556, line: 32, baseType: !244, size: 16, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !555, file: !556, line: 256, baseType: !572, size: 64, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!562, !496, !566, !402, !575}
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !223, line: 61, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !255, line: 72, baseType: !577)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !255, line: 16, baseType: !211)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !546, file: !491, line: 119, baseType: !579, size: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !582)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !556, line: 84, size: 320, elements: !583)
!583 = !{!584, !585, !589, !1580, !1582}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !582, file: !556, line: 85, baseType: !402, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !582, file: !556, line: 86, baseType: !586, size: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!244, !496, !566, !109}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !582, file: !556, line: 88, baseType: !590, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!244, !496, !593, !109}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !556, line: 175, size: 512, elements: !595)
!595 = !{!596, !597, !598, !599, !603, !1575, !1576}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !594, file: !556, line: 176, baseType: !567, size: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !594, file: !556, line: 177, baseType: !575, size: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !594, file: !556, line: 178, baseType: !205, size: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !594, file: !556, line: 179, baseType: !600, size: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!236}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !594, file: !556, line: 180, baseType: !604, size: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!562, !607, !496, !593, !428, !449, !575}
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !609)
!609 = !{!610, !629, !630, !632, !641, !654, !655, !656, !727, !939, !948, !954, !955, !1565, !1566, !1567, !1568, !1570, !1571, !1574}
!610 = !DIDerivedType(tag: DW_TAG_member, scope: !608, file: !14, line: 995, baseType: !611, size: 128)
!611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !608, file: !14, line: 995, size: 128, elements: !612)
!612 = !{!613, !619, !628}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !611, file: !14, line: 996, baseType: !614, size: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !615, line: 60, size: 64, elements: !616)
!615 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!616 = !{!617}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !614, file: !615, line: 61, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !611, file: !14, line: 997, baseType: !620, size: 128, align: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !223, line: 232, size: 128, align: 64, elements: !621)
!621 = !{!622, !624}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !620, file: !223, line: 233, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !620, file: !223, line: 234, baseType: !625, size: 64, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !623}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !611, file: !14, line: 998, baseType: !7, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !608, file: !14, line: 1005, baseType: !342, size: 32, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !608, file: !14, line: 1006, baseType: !631, size: 32, offset: 160)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !223, line: 156, baseType: !7)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !608, file: !14, line: 1007, baseType: !633, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !634, line: 13, baseType: !635)
!634 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !223, line: 181, baseType: !636)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !223, line: 179, size: 64, elements: !637)
!637 = !{!638}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !636, file: !223, line: 180, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !313, line: 22, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !315, line: 30, baseType: !451)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !608, file: !14, line: 1008, baseType: !642, size: 256, offset: 256)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !643, line: 66, size: 256, elements: !644)
!643 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!644 = !{!645, !646, !648, !653}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !642, file: !643, line: 67, baseType: !633, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !642, file: !643, line: 68, baseType: !647, size: 32, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !351, line: 23, baseType: !350)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !642, file: !643, line: 70, baseType: !649, size: 32, offset: 96)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !650, line: 15, size: 32, elements: !651)
!650 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!651 = !{!652}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !649, file: !650, line: 20, baseType: !362, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !642, file: !643, line: 72, baseType: !222, size: 128, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !608, file: !14, line: 1009, baseType: !449, size: 64, offset: 512)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !608, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !608, file: !14, line: 1011, baseType: !657, size: 256, offset: 640)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !658)
!658 = !{!659, !680, !723, !724, !725, !726}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !657, file: !14, line: 949, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !661, line: 34, baseType: !662)
!661 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !661, line: 25, size: 64, elements: !663)
!663 = !{!664}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !662, file: !661, line: 26, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !666, line: 27, baseType: !667)
!666 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !666, line: 13, size: 64, elements: !668)
!668 = !{!669, !679}
!669 = !DIDerivedType(tag: DW_TAG_member, scope: !667, file: !666, line: 14, baseType: !670, size: 32)
!670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !667, file: !666, line: 14, size: 32, elements: !671)
!671 = !{!672, !673}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !670, file: !666, line: 15, baseType: !362, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, scope: !670, file: !666, line: 16, baseType: !674, size: 32)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !670, file: !666, line: 16, size: 32, elements: !675)
!675 = !{!676, !677}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !674, file: !666, line: 18, baseType: !370, size: 8)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !674, file: !666, line: 19, baseType: !678, size: 24, offset: 8)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 24, elements: !531)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !667, file: !666, line: 26, baseType: !354, size: 32, offset: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !657, file: !14, line: 950, baseType: !681, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !683)
!683 = !{!684, !689, !690, !691, !704, !705, !712, !713}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !682, file: !19, line: 61, baseType: !685, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !187, line: 113, baseType: !686)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !187, line: 111, size: 32, elements: !687)
!687 = !{!688}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !686, file: !187, line: 112, baseType: !362, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !682, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !682, file: !19, line: 63, baseType: !342, size: 32, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !682, file: !19, line: 65, baseType: !692, size: 256, offset: 128)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !693, size: 256, elements: !702)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !223, line: 194, size: 64, elements: !694)
!694 = !{!695}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !693, file: !223, line: 195, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !223, line: 198, size: 128, elements: !698)
!698 = !{!699, !700}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !697, file: !223, line: 199, baseType: !696, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !697, file: !223, line: 199, baseType: !701, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!702 = !{!703}
!703 = !DISubrange(count: 4)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !682, file: !19, line: 66, baseType: !693, size: 64, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !682, file: !19, line: 68, baseType: !706, size: 192, offset: 448)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !707, line: 41, baseType: !708)
!707 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !707, line: 37, size: 192, elements: !709)
!709 = !{!710, !711}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !708, file: !707, line: 38, baseType: !342, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !708, file: !707, line: 39, baseType: !222, size: 128, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !682, file: !19, line: 69, baseType: !620, size: 128, align: 64, offset: 640)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !682, file: !19, line: 70, baseType: !714, offset: 768)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !715, elements: !721)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !716)
!716 = !{!717, !718}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !715, file: !19, line: 55, baseType: !109, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !715, file: !19, line: 56, baseType: !719, size: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!721 = !{!722}
!722 = !DISubrange(count: -1)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !657, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !657, file: !14, line: 952, baseType: !248, size: 32, offset: 160)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !657, file: !14, line: 952, baseType: !248, size: 32, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !657, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !608, file: !14, line: 1012, baseType: !728, size: 64, offset: 896)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !730)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !731, line: 110, size: 1472, elements: !732)
!731 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!732 = !{!733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !749, !750, !751, !752, !753, !754, !884, !885, !886, !887, !888, !919, !922, !926, !934}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !730, file: !731, line: 111, baseType: !633, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !730, file: !731, line: 112, baseType: !248, size: 32, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !730, file: !731, line: 113, baseType: !258, size: 32, offset: 96)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !730, file: !731, line: 114, baseType: !248, size: 32, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !730, file: !731, line: 115, baseType: !258, size: 32, offset: 160)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !730, file: !731, line: 116, baseType: !248, size: 32, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !730, file: !731, line: 117, baseType: !258, size: 32, offset: 224)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !730, file: !731, line: 118, baseType: !248, size: 32, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !730, file: !731, line: 119, baseType: !258, size: 32, offset: 288)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !730, file: !731, line: 120, baseType: !7, size: 32, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !730, file: !731, line: 121, baseType: !744, size: 64, offset: 384)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !745, line: 24, baseType: !746)
!745 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !745, line: 24, size: 64, elements: !747)
!747 = !{!748}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !746, file: !745, line: 24, baseType: !318, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !730, file: !731, line: 122, baseType: !744, size: 64, offset: 448)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !730, file: !731, line: 123, baseType: !744, size: 64, offset: 512)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !730, file: !731, line: 124, baseType: !744, size: 64, offset: 576)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !730, file: !731, line: 125, baseType: !744, size: 64, offset: 640)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !730, file: !731, line: 127, baseType: !324, size: 8, offset: 704)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !730, file: !731, line: 129, baseType: !755, size: 64, offset: 768)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !757, line: 195, size: 1728, elements: !758)
!757 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!758 = !{!759, !760, !765, !777, !786, !789, !790, !797, !798, !799, !800, !803, !804, !805, !807, !808, !848, !869}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !756, file: !757, line: 196, baseType: !685, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !756, file: !757, line: 197, baseType: !761, size: 32, offset: 32)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !757, line: 28, baseType: !762)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !223, line: 104, baseType: !763)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !313, line: 20, baseType: !764)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !315, line: 26, baseType: !109)
!765 = !DIDerivedType(tag: DW_TAG_member, scope: !756, file: !757, line: 198, baseType: !766, size: 192, offset: 64)
!766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !756, file: !757, line: 198, size: 192, elements: !767)
!767 = !{!768, !769}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !766, file: !757, line: 199, baseType: !222, size: 128)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !766, file: !757, line: 200, baseType: !770, size: 192, align: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !771, line: 5, size: 192, align: 64, elements: !772)
!771 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!772 = !{!773, !774, !776}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !770, file: !771, line: 6, baseType: !211, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !770, file: !771, line: 7, baseType: !775, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !770, file: !771, line: 8, baseType: !775, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !756, file: !757, line: 205, baseType: !778, size: 320, offset: 256)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !779, line: 48, size: 320, elements: !780)
!779 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!780 = !{!781, !782, !783, !784, !785}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !778, file: !779, line: 49, baseType: !633, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !778, file: !779, line: 55, baseType: !633, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !778, file: !779, line: 57, baseType: !649, size: 32, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !778, file: !779, line: 59, baseType: !647, size: 32, offset: 160)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !778, file: !779, line: 60, baseType: !222, size: 128, offset: 192)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !756, file: !757, line: 206, baseType: !787, size: 64, offset: 576)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !757, line: 206, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !756, file: !757, line: 207, baseType: !205, size: 64, offset: 640)
!790 = !DIDerivedType(tag: DW_TAG_member, scope: !756, file: !757, line: 208, baseType: !791, size: 64, offset: 704)
!791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !756, file: !757, line: 208, size: 64, elements: !792)
!792 = !{!793, !796}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !791, file: !757, line: 209, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !795, line: 8, baseType: !640)
!795 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!796 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !791, file: !757, line: 210, baseType: !794, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !756, file: !757, line: 212, baseType: !794, size: 64, offset: 768)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !756, file: !757, line: 213, baseType: !248, size: 32, offset: 832)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !756, file: !757, line: 214, baseType: !258, size: 32, offset: 864)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !756, file: !757, line: 215, baseType: !801, size: 32, offset: 896)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !757, line: 31, baseType: !802)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !223, line: 110, baseType: !312)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !756, file: !757, line: 216, baseType: !245, size: 16, offset: 928)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !756, file: !757, line: 217, baseType: !245, size: 16, offset: 944)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !756, file: !757, line: 221, baseType: !806, size: 16, offset: 960)
!806 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !756, file: !757, line: 228, baseType: !211, size: 64, offset: 1024)
!808 = !DIDerivedType(tag: DW_TAG_member, scope: !756, file: !757, line: 245, baseType: !809, size: 320, offset: 1088)
!809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !756, file: !757, line: 245, size: 320, elements: !810)
!810 = !{!811, !840}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !809, file: !757, line: 246, baseType: !812, size: 320)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !757, line: 114, size: 320, elements: !813)
!813 = !{!814, !815, !827, !830, !839}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !812, file: !757, line: 116, baseType: !211, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, scope: !812, file: !757, line: 117, baseType: !816, size: 64, offset: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !812, file: !757, line: 117, size: 64, elements: !817)
!817 = !{!818, !826}
!818 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !757, line: 118, baseType: !819, size: 64)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !816, file: !757, line: 118, size: 64, elements: !820)
!820 = !{!821, !822}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !819, file: !757, line: 120, baseType: !377, size: 16)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !819, file: !757, line: 121, baseType: !823, size: 48, offset: 16)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 48, elements: !824)
!824 = !{!825}
!825 = !DISubrange(count: 6)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !816, file: !757, line: 127, baseType: !211, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !812, file: !757, line: 129, baseType: !828, size: 64, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !757, line: 102, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !812, file: !757, line: 130, baseType: !831, size: 64, offset: 192)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !757, line: 108, size: 192, elements: !833)
!833 = !{!834, !835, !836}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !832, file: !757, line: 109, baseType: !620, size: 128, align: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !832, file: !757, line: 110, baseType: !685, size: 32, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !832, file: !757, line: 111, baseType: !837, size: 8, offset: 160)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !223, line: 35, baseType: !838)
!838 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !812, file: !757, line: 131, baseType: !402, size: 64, offset: 256)
!840 = !DIDerivedType(tag: DW_TAG_member, scope: !809, file: !757, line: 247, baseType: !841, size: 320)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !809, file: !757, line: 247, size: 320, elements: !842)
!842 = !{!843, !844, !845, !846, !847}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !841, file: !757, line: 248, baseType: !211, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !841, file: !757, line: 249, baseType: !211, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !841, file: !757, line: 250, baseType: !828, size: 64, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !841, file: !757, line: 251, baseType: !831, size: 64, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !841, file: !757, line: 252, baseType: !428, size: 64, offset: 256)
!848 = !DIDerivedType(tag: DW_TAG_member, scope: !756, file: !757, line: 260, baseType: !849, size: 256, offset: 1408)
!849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !756, file: !757, line: 260, size: 256, elements: !850)
!850 = !{!851, !857}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !849, file: !757, line: 261, baseType: !852, size: 256)
!852 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !757, line: 134, size: 256, elements: !853)
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !852, file: !757, line: 135, baseType: !205, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !852, file: !757, line: 136, baseType: !856, size: 256)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 256, elements: !702)
!857 = !DIDerivedType(tag: DW_TAG_member, scope: !849, file: !757, line: 262, baseType: !858, size: 256)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !849, file: !757, line: 262, size: 256, elements: !859)
!859 = !{!860, !861}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !858, file: !757, line: 264, baseType: !222, size: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !858, file: !757, line: 265, baseType: !862, size: 128, offset: 128)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !863, line: 22, size: 128, elements: !864)
!863 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!864 = !{!865, !868}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !862, file: !863, line: 23, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !863, line: 23, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !862, file: !863, line: 24, baseType: !211, size: 64, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !756, file: !757, line: 280, baseType: !870, size: 64, offset: 1664)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !757, line: 176, size: 192, elements: !872)
!872 = !{!873, !882, !883}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !871, file: !757, line: 177, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !757, line: 171, baseType: !875)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!109, !755, !878, !880, !755}
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !829)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !852)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !871, file: !757, line: 178, baseType: !755, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !871, file: !757, line: 179, baseType: !828, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !730, file: !731, line: 130, baseType: !755, size: 64, offset: 832)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !730, file: !731, line: 131, baseType: !755, size: 64, offset: 896)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !730, file: !731, line: 132, baseType: !755, size: 64, offset: 960)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !730, file: !731, line: 135, baseType: !205, size: 64, offset: 1024)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !730, file: !731, line: 137, baseType: !889, size: 64, offset: 1088)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !891, line: 14, size: 1088, elements: !892)
!891 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!892 = !{!893, !894, !903, !904, !905, !906, !907, !908}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !890, file: !891, line: 15, baseType: !685, size: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !890, file: !891, line: 17, baseType: !895, size: 320, offset: 64)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !896, line: 22, size: 320, elements: !897)
!896 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!897 = !{!898, !899, !900, !901}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !895, file: !896, line: 23, baseType: !647, size: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !895, file: !896, line: 24, baseType: !639, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !895, file: !896, line: 26, baseType: !222, size: 128, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !895, file: !896, line: 28, baseType: !902, size: 64, offset: 256)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !890, file: !891, line: 19, baseType: !211, size: 64, offset: 384)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !890, file: !891, line: 20, baseType: !633, size: 64, offset: 448)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !890, file: !891, line: 23, baseType: !697, size: 128, offset: 512)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !890, file: !891, line: 24, baseType: !248, size: 32, offset: 640)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !890, file: !891, line: 29, baseType: !633, size: 64, offset: 704)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !890, file: !891, line: 36, baseType: !909, size: 320, offset: 768)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !910, line: 15, size: 320, elements: !911)
!910 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!911 = !{!912, !913, !914, !915, !916, !917, !918}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !909, file: !910, line: 16, baseType: !647, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !909, file: !910, line: 18, baseType: !109, size: 32, offset: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !909, file: !910, line: 19, baseType: !109, size: 32, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !909, file: !910, line: 20, baseType: !109, size: 32, offset: 96)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !909, file: !910, line: 21, baseType: !109, size: 32, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !909, file: !910, line: 22, baseType: !211, size: 64, offset: 192)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !909, file: !910, line: 23, baseType: !211, size: 64, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !730, file: !731, line: 138, baseType: !920, size: 64, offset: 1152)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !249, line: 18, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !730, file: !731, line: 139, baseType: !923, size: 64, offset: 1216)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !925, line: 16, flags: DIFlagFwdDecl)
!925 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!926 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !730, file: !731, line: 140, baseType: !927, size: 64, offset: 1280)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !731, line: 25, size: 64, elements: !929)
!929 = !{!930, !931, !932}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !928, file: !731, line: 26, baseType: !362, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !928, file: !731, line: 27, baseType: !109, size: 32, offset: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !928, file: !731, line: 28, baseType: !933, offset: 64)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, elements: !721)
!934 = !DIDerivedType(tag: DW_TAG_member, scope: !730, file: !731, line: 142, baseType: !935, size: 128, offset: 1344)
!935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !730, file: !731, line: 142, size: 128, elements: !936)
!936 = !{!937, !938}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !935, file: !731, line: 143, baseType: !109, size: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !935, file: !731, line: 144, baseType: !620, size: 128, align: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !608, file: !14, line: 1013, baseType: !940, size: 256, offset: 960)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !941)
!941 = !{!942, !943, !944, !945, !946, !947}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !940, file: !14, line: 971, baseType: !211, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !940, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !940, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !940, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !940, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !940, file: !14, line: 976, baseType: !449, size: 64, offset: 192)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !608, file: !14, line: 1014, baseType: !949, size: 128, offset: 1216)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !950, line: 8, size: 128, elements: !951)
!950 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!951 = !{!952, !953}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !949, file: !950, line: 9, baseType: !433, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !949, file: !950, line: 10, baseType: !278, size: 64, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !608, file: !14, line: 1015, baseType: !240, size: 64, offset: 1344)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !608, file: !14, line: 1016, baseType: !956, size: 64, offset: 1408)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !958)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !959)
!959 = !{!960, !961, !965, !970, !974, !1085, !1086, !1092, !1105, !1113, !1117, !1118, !1449, !1450, !1454, !1459, !1460, !1464, !1468, !1474, !1475, !1479, !1480, !1486, !1490, !1494, !1500, !1504, !1546, !1550, !1554, !1555, !1561}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !958, file: !14, line: 1915, baseType: !477, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !958, file: !14, line: 1916, baseType: !962, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{!449, !607, !449, !109}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !958, file: !14, line: 1917, baseType: !966, size: 64, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{!562, !607, !428, !575, !969}
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !958, file: !14, line: 1918, baseType: !971, size: 64, offset: 192)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{!562, !607, !402, !575, !969}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !958, file: !14, line: 1919, baseType: !975, size: 64, offset: 256)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{!562, !978, !1083}
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !980)
!980 = !{!981, !982, !983, !987, !988, !989, !990}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !979, file: !14, line: 374, baseType: !607, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !979, file: !14, line: 375, baseType: !449, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !979, file: !14, line: 376, baseType: !984, size: 64, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{null, !978, !565}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !979, file: !14, line: 377, baseType: !205, size: 64, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !979, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !979, file: !14, line: 379, baseType: !377, size: 16, offset: 288)
!990 = !DIDerivedType(tag: DW_TAG_member, scope: !979, file: !14, line: 380, baseType: !991, size: 64, offset: 320)
!991 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !979, file: !14, line: 380, size: 64, elements: !992)
!992 = !{!993, !1079}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !991, file: !14, line: 386, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !996, line: 998, size: 448, elements: !997)
!996 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!997 = !{!998, !1065, !1066}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !995, file: !996, line: 999, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !35, line: 293, size: 1536, elements: !1001)
!1001 = !{!1002, !1032, !1046}
!1002 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !35, line: 295, baseType: !1003, size: 512)
!1003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1000, file: !35, line: 295, size: 512, elements: !1004)
!1004 = !{!1005, !1031}
!1005 = !DIDerivedType(tag: DW_TAG_member, scope: !1003, file: !35, line: 296, baseType: !1006, size: 448)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1003, file: !35, line: 296, size: 448, elements: !1007)
!1007 = !{!1008, !1009, !1018, !1019, !1020, !1029, !1030}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1006, file: !35, line: 298, baseType: !211, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, scope: !1006, file: !35, line: 299, baseType: !1010, size: 128, offset: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1006, file: !35, line: 299, size: 128, elements: !1011)
!1011 = !{!1012, !1013}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1010, file: !35, line: 300, baseType: !222, size: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, scope: !1010, file: !35, line: 302, baseType: !1014, size: 128)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1010, file: !35, line: 302, size: 128, elements: !1015)
!1015 = !{!1016, !1017}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1014, file: !35, line: 303, baseType: !205, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1014, file: !35, line: 305, baseType: !7, size: 32, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1006, file: !35, line: 310, baseType: !236, size: 64, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1006, file: !35, line: 311, baseType: !211, size: 64, offset: 256)
!1020 = !DIDerivedType(tag: DW_TAG_member, scope: !1006, file: !35, line: 312, baseType: !1021, size: 64, offset: 320)
!1021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1006, file: !35, line: 312, size: 64, elements: !1022)
!1022 = !{!1023, !1024}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1021, file: !35, line: 313, baseType: !205, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1021, file: !35, line: 314, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !35, line: 257, baseType: !1026)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 255, size: 64, elements: !1027)
!1027 = !{!1028}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1026, file: !35, line: 256, baseType: !211, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1006, file: !35, line: 316, baseType: !362, size: 32, offset: 384)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1006, file: !35, line: 317, baseType: !362, size: 32, offset: 416)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1003, file: !35, line: 323, baseType: !208, size: 512, align: 128)
!1032 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !35, line: 325, baseType: !1033, size: 512, offset: 512)
!1033 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1000, file: !35, line: 325, size: 512, elements: !1034)
!1034 = !{!1035, !1045}
!1035 = !DIDerivedType(tag: DW_TAG_member, scope: !1033, file: !35, line: 326, baseType: !1036, size: 320)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1033, file: !35, line: 326, size: 320, elements: !1037)
!1037 = !{!1038, !1039, !1040, !1041, !1042, !1043, !1044}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1036, file: !35, line: 327, baseType: !211, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1036, file: !35, line: 328, baseType: !211, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1036, file: !35, line: 329, baseType: !211, size: 64, offset: 128)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1036, file: !35, line: 331, baseType: !362, size: 32, offset: 192)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1036, file: !35, line: 332, baseType: !362, size: 32, offset: 224)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1036, file: !35, line: 333, baseType: !362, size: 32, offset: 256)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1036, file: !35, line: 335, baseType: !7, size: 32, offset: 288)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1033, file: !35, line: 339, baseType: !208, size: 512, align: 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !35, line: 341, baseType: !1047, size: 512, offset: 1024)
!1047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1000, file: !35, line: 341, size: 512, elements: !1048)
!1048 = !{!1049, !1058, !1064}
!1049 = !DIDerivedType(tag: DW_TAG_member, scope: !1047, file: !35, line: 342, baseType: !1050, size: 384)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1047, file: !35, line: 342, size: 384, elements: !1051)
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1057}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1050, file: !35, line: 343, baseType: !211, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1050, file: !35, line: 344, baseType: !211, size: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1050, file: !35, line: 346, baseType: !205, size: 64, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1050, file: !35, line: 347, baseType: !205, size: 64, offset: 192)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1050, file: !35, line: 348, baseType: !205, size: 64, offset: 256)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1050, file: !35, line: 349, baseType: !205, size: 64, offset: 320)
!1058 = !DIDerivedType(tag: DW_TAG_member, scope: !1047, file: !35, line: 352, baseType: !1059, size: 256)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1047, file: !35, line: 352, size: 256, elements: !1060)
!1060 = !{!1061, !1062, !1063}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1059, file: !35, line: 353, baseType: !211, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1059, file: !35, line: 354, baseType: !211, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1059, file: !35, line: 356, baseType: !222, size: 128, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1047, file: !35, line: 359, baseType: !208, size: 512, align: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !995, file: !996, line: 1000, baseType: !109, size: 32, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !995, file: !996, line: 1001, baseType: !1067, size: 320, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !707, line: 14, baseType: !1068)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !707, line: 30, size: 320, elements: !1069)
!1069 = !{!1070, !1071, !1072, !1078}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1068, file: !707, line: 31, baseType: !7, size: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1068, file: !707, line: 32, baseType: !205, size: 64, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1068, file: !707, line: 33, baseType: !1073, size: 64, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !707, line: 16, baseType: !1074)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!109, !1077, !7, !109, !205}
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1068, file: !707, line: 34, baseType: !222, size: 128, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !991, file: !14, line: 395, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!562, !205}
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !958, file: !14, line: 1920, baseType: !975, size: 64, offset: 320)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !958, file: !14, line: 1921, baseType: !1087, size: 64, offset: 384)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!109, !978, !1090, !7}
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !958, file: !14, line: 1923, baseType: !1093, size: 64, offset: 448)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!109, !607, !1096}
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1098)
!1098 = !{!1099, !1104}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1097, file: !14, line: 1859, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1101)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!837, !1096, !402, !109, !449, !318, !7}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1097, file: !14, line: 1860, baseType: !449, size: 64, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !958, file: !14, line: 1924, baseType: !1106, size: 64, offset: 512)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!1109, !607, !1111}
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1110, line: 59, baseType: !7)
!1110 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !14, line: 61, flags: DIFlagFwdDecl)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !958, file: !14, line: 1925, baseType: !1114, size: 64, offset: 576)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!565, !607, !7, !211}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !958, file: !14, line: 1926, baseType: !1114, size: 64, offset: 640)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !958, file: !14, line: 1927, baseType: !1119, size: 64, offset: 704)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!109, !607, !1122}
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !35, line: 625, size: 1344, elements: !1124)
!1124 = !{!1125, !1134, !1303, !1309, !1316, !1317, !1322, !1323, !1328, !1329, !1332, !1442, !1443, !1444, !1445, !1446, !1447}
!1125 = !DIDerivedType(tag: DW_TAG_member, scope: !1123, file: !35, line: 628, baseType: !1126, size: 128)
!1126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1123, file: !35, line: 628, size: 128, elements: !1127)
!1127 = !{!1128, !1133}
!1128 = !DIDerivedType(tag: DW_TAG_member, scope: !1126, file: !35, line: 629, baseType: !1129, size: 128)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1126, file: !35, line: 629, size: 128, elements: !1130)
!1130 = !{!1131, !1132}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1129, file: !35, line: 631, baseType: !211, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1129, file: !35, line: 632, baseType: !211, size: 64, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1126, file: !35, line: 635, baseType: !620, size: 128, align: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1123, file: !35, line: 639, baseType: !1135, size: 64, offset: 128)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !35, line: 733, size: 10240, elements: !1137)
!1137 = !{!1138, !1301}
!1138 = !DIDerivedType(tag: DW_TAG_member, scope: !1136, file: !35, line: 734, baseType: !1139, size: 10240)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1136, file: !35, line: 734, size: 10240, elements: !1140)
!1140 = !{!1141, !1145, !1159, !1163, !1164, !1165, !1166, !1167, !1168, !1177, !1178, !1179, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1218, !1220, !1223, !1270, !1271, !1272, !1275, !1276, !1277, !1280, !1281, !1282, !1288, !1289}
!1141 = !DIDerivedType(tag: DW_TAG_member, scope: !1139, file: !35, line: 739, baseType: !1142, size: 512, align: 512)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1139, file: !35, line: 739, size: 512, align: 512, elements: !1143)
!1143 = !{!1144}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1142, file: !35, line: 747, baseType: !362, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1139, file: !35, line: 750, baseType: !1146, size: 128, offset: 512)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1147, line: 218, size: 128, elements: !1148)
!1147 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1148 = !{!1149, !1157, !1158}
!1149 = !DIDerivedType(tag: DW_TAG_member, scope: !1146, file: !1147, line: 219, baseType: !1150, size: 32)
!1150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1146, file: !1147, line: 219, size: 32, elements: !1151)
!1151 = !{!1152, !1153}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1150, file: !1147, line: 220, baseType: !342, size: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1150, file: !1147, line: 221, baseType: !1154)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1147, line: 197, baseType: !1155)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1147, line: 197, elements: !1156)
!1156 = !{}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1146, file: !1147, line: 223, baseType: !7, size: 32, offset: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1146, file: !1147, line: 224, baseType: !205, size: 64, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1139, file: !35, line: 752, baseType: !1160, size: 64, offset: 640)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!211, !607, !211, !211, !211, !211}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1139, file: !35, line: 756, baseType: !211, size: 64, offset: 704)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1139, file: !35, line: 757, baseType: !211, size: 64, offset: 768)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1139, file: !35, line: 760, baseType: !211, size: 64, offset: 832)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1139, file: !35, line: 761, baseType: !211, size: 64, offset: 896)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1139, file: !35, line: 763, baseType: !211, size: 64, offset: 960)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1139, file: !35, line: 764, baseType: !1169, size: 64, offset: 1024)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1171, line: 299, baseType: !1172)
!1171 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1171, line: 299, size: 64, elements: !1173)
!1173 = !{!1174}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1172, file: !1171, line: 299, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1176, line: 18, baseType: !211)
!1176 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1139, file: !35, line: 773, baseType: !362, size: 32, offset: 1088)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1139, file: !35, line: 785, baseType: !362, size: 32, offset: 1120)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1139, file: !35, line: 795, baseType: !1180, size: 64, offset: 1152)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !35, line: 726, size: 128, elements: !1182)
!1182 = !{!1183, !1184}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1181, file: !35, line: 727, baseType: !318, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1181, file: !35, line: 728, baseType: !109, size: 32, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1139, file: !35, line: 801, baseType: !211, size: 64, offset: 1216)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1139, file: !35, line: 804, baseType: !633, size: 64, offset: 1280)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1139, file: !35, line: 806, baseType: !109, size: 32, offset: 1344)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1139, file: !35, line: 808, baseType: !342, size: 32, offset: 1376)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1139, file: !35, line: 823, baseType: !778, size: 320, offset: 1408)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1139, file: !35, line: 825, baseType: !222, size: 128, offset: 1728)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1139, file: !35, line: 845, baseType: !109, size: 32, offset: 1856)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1139, file: !35, line: 849, baseType: !211, size: 64, offset: 1920)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1139, file: !35, line: 850, baseType: !211, size: 64, offset: 1984)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1139, file: !35, line: 852, baseType: !211, size: 64, offset: 2048)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1139, file: !35, line: 853, baseType: !211, size: 64, offset: 2112)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1139, file: !35, line: 854, baseType: !635, size: 64, offset: 2176)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1139, file: !35, line: 855, baseType: !211, size: 64, offset: 2240)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1139, file: !35, line: 856, baseType: !211, size: 64, offset: 2304)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1139, file: !35, line: 857, baseType: !211, size: 64, offset: 2368)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1139, file: !35, line: 858, baseType: !211, size: 64, offset: 2432)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1139, file: !35, line: 865, baseType: !289, size: 32, offset: 2496)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1139, file: !35, line: 867, baseType: !342, size: 32, offset: 2528)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1139, file: !35, line: 869, baseType: !211, size: 64, offset: 2560)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1139, file: !35, line: 869, baseType: !211, size: 64, offset: 2624)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1139, file: !35, line: 869, baseType: !211, size: 64, offset: 2688)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1139, file: !35, line: 869, baseType: !211, size: 64, offset: 2752)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1139, file: !35, line: 870, baseType: !211, size: 64, offset: 2816)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1139, file: !35, line: 870, baseType: !211, size: 64, offset: 2880)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1139, file: !35, line: 870, baseType: !211, size: 64, offset: 2944)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1139, file: !35, line: 871, baseType: !211, size: 64, offset: 3008)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1139, file: !35, line: 871, baseType: !211, size: 64, offset: 3072)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1139, file: !35, line: 871, baseType: !211, size: 64, offset: 3136)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1139, file: !35, line: 871, baseType: !211, size: 64, offset: 3200)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1139, file: !35, line: 873, baseType: !1215, size: 3328, offset: 3264)
!1215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 3328, elements: !1216)
!1216 = !{!1217}
!1217 = !DISubrange(count: 52)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1139, file: !35, line: 875, baseType: !1219, size: 1280, offset: 6592)
!1219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !895, size: 1280, elements: !702)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1139, file: !35, line: 877, baseType: !1221, size: 64, offset: 7872)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !35, line: 877, flags: DIFlagFwdDecl)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1139, file: !35, line: 880, baseType: !1224, size: 1088, offset: 7936)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1225, line: 72, baseType: !1226)
!1225 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1225, line: 23, size: 1088, elements: !1227)
!1227 = !{!1228, !1229, !1230, !1231, !1232, !1235, !1236, !1237, !1238, !1265, !1266, !1267}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1226, file: !1225, line: 28, baseType: !318, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1226, file: !1225, line: 38, baseType: !635, size: 64, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1226, file: !1225, line: 40, baseType: !211, size: 64, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1226, file: !1225, line: 43, baseType: !778, size: 320, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1226, file: !1225, line: 44, baseType: !1233, size: 64, offset: 512)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1225, line: 44, flags: DIFlagFwdDecl)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1226, file: !1225, line: 48, baseType: !211, size: 64, offset: 576)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1226, file: !1225, line: 59, baseType: !642, size: 256, offset: 640)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1226, file: !1225, line: 60, baseType: !205, size: 64, offset: 896)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1226, file: !1225, line: 61, baseType: !1239, size: 64, offset: 960)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1241)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1242, line: 13, size: 1216, elements: !1243)
!1242 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1243 = !{!1244, !1245, !1246, !1247, !1248, !1249, !1250, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1241, file: !1242, line: 14, baseType: !205, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1241, file: !1242, line: 15, baseType: !211, size: 64, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1241, file: !1242, line: 17, baseType: !211, size: 64, offset: 128)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1241, file: !1242, line: 17, baseType: !211, size: 64, offset: 192)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1241, file: !1242, line: 18, baseType: !211, size: 64, offset: 256)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1241, file: !1242, line: 18, baseType: !211, size: 64, offset: 320)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1241, file: !1242, line: 19, baseType: !1251, size: 64, offset: 384)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1241, file: !1242, line: 21, baseType: !565, size: 64, offset: 448)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1241, file: !1242, line: 23, baseType: !565, size: 64, offset: 512)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1241, file: !1242, line: 24, baseType: !565, size: 64, offset: 576)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1241, file: !1242, line: 25, baseType: !565, size: 64, offset: 640)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1241, file: !1242, line: 26, baseType: !565, size: 64, offset: 704)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1241, file: !1242, line: 27, baseType: !565, size: 64, offset: 768)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1241, file: !1242, line: 28, baseType: !565, size: 64, offset: 832)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1241, file: !1242, line: 29, baseType: !565, size: 64, offset: 896)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1241, file: !1242, line: 30, baseType: !565, size: 64, offset: 960)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1241, file: !1242, line: 31, baseType: !565, size: 64, offset: 1024)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1241, file: !1242, line: 32, baseType: !565, size: 64, offset: 1088)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1241, file: !1242, line: 33, baseType: !565, size: 64, offset: 1152)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1226, file: !1225, line: 63, baseType: !362, size: 32, offset: 1024)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1226, file: !1225, line: 69, baseType: !377, size: 16, offset: 1056)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1226, file: !1225, line: 70, baseType: !1268, size: 16, offset: 1072)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !313, line: 18, baseType: !1269)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !315, line: 23, baseType: !806)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1139, file: !35, line: 882, baseType: !211, size: 64, offset: 9024)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1139, file: !35, line: 885, baseType: !342, size: 32, offset: 9088)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1139, file: !35, line: 886, baseType: !1273, size: 64, offset: 9152)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !35, line: 732, flags: DIFlagFwdDecl)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1139, file: !35, line: 901, baseType: !920, size: 64, offset: 9216)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1139, file: !35, line: 904, baseType: !607, size: 64, offset: 9280)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1139, file: !35, line: 906, baseType: !1278, size: 64, offset: 9344)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !35, line: 906, flags: DIFlagFwdDecl)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1139, file: !35, line: 930, baseType: !362, size: 32, offset: 9408)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1139, file: !35, line: 933, baseType: !362, size: 32, offset: 9440)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1139, file: !35, line: 935, baseType: !1283, size: 64, offset: 9472)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !1284)
!1284 = !{!1285}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1283, file: !68, line: 104, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1139, file: !35, line: 940, baseType: !633, size: 64, offset: 9536)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1139, file: !35, line: 942, baseType: !1290, size: 256, offset: 9600)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1291, line: 98, size: 256, elements: !1292)
!1291 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1292 = !{!1293, !1294, !1295}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1290, file: !1291, line: 99, baseType: !633, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1290, file: !1291, line: 100, baseType: !222, size: 128, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1290, file: !1291, line: 101, baseType: !1296, size: 64, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1291, line: 21, baseType: !1297)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{null, !1300}
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1136, file: !35, line: 986, baseType: !1302, offset: 10240)
!1302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, elements: !721)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1123, file: !35, line: 640, baseType: !1304, size: 64, offset: 192)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1171, line: 297, baseType: !1305)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1171, line: 297, size: 64, elements: !1306)
!1306 = !{!1307}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1305, file: !1171, line: 297, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1176, line: 19, baseType: !211)
!1309 = !DIDerivedType(tag: DW_TAG_member, scope: !1123, file: !35, line: 646, baseType: !1310, size: 64, offset: 256)
!1310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1123, file: !35, line: 646, size: 64, elements: !1311)
!1311 = !{!1312, !1315}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1310, file: !35, line: 647, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1314)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !35, line: 542, baseType: !211)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1310, file: !35, line: 648, baseType: !1314, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1123, file: !35, line: 666, baseType: !109, size: 32, offset: 320)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1123, file: !35, line: 667, baseType: !1318, size: 64, offset: 384)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !35, line: 579, size: 320, elements: !1320)
!1320 = !{!1321}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1319, file: !35, line: 580, baseType: !778, size: 320)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1123, file: !35, line: 670, baseType: !837, size: 8, offset: 448)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1123, file: !35, line: 681, baseType: !1324, size: 256, offset: 512)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1123, file: !35, line: 678, size: 256, elements: !1325)
!1325 = !{!1326, !1327}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1324, file: !35, line: 679, baseType: !770, size: 192, align: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1324, file: !35, line: 680, baseType: !211, size: 64, offset: 192)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1123, file: !35, line: 689, baseType: !222, size: 128, offset: 768)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1123, file: !35, line: 691, baseType: !1330, size: 64, offset: 896)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !35, line: 691, flags: DIFlagFwdDecl)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1123, file: !35, line: 694, baseType: !1333, size: 64, offset: 960)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1335)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1336, line: 563, size: 1024, elements: !1337)
!1336 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1337 = !{!1338, !1342, !1343, !1347, !1351, !1355, !1405, !1409, !1413, !1417, !1418, !1419, !1423, !1427, !1434, !1438}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1335, file: !1336, line: 564, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{null, !1122}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1335, file: !1336, line: 569, baseType: !1339, size: 64, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1335, file: !1336, line: 571, baseType: !1344, size: 64, offset: 128)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!109, !1122, !211}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1335, file: !1336, line: 572, baseType: !1348, size: 64, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!109, !1122}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1335, file: !1336, line: 578, baseType: !1352, size: 64, offset: 256)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!109, !1122, !211, !211, !211}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1335, file: !1336, line: 580, baseType: !1356, size: 64, offset: 320)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!1359, !1360}
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !35, line: 1184, baseType: !7)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1336, line: 512, size: 896, elements: !1362)
!1362 = !{!1363, !1372, !1373, !1380, !1387, !1397, !1398, !1399, !1401, !1403}
!1363 = !DIDerivedType(tag: DW_TAG_member, scope: !1361, file: !1336, line: 513, baseType: !1364, size: 320)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1361, file: !1336, line: 513, size: 320, elements: !1365)
!1365 = !{!1366, !1367, !1369, !1370, !1371}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1364, file: !1336, line: 514, baseType: !1122, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1364, file: !1336, line: 515, baseType: !1368, size: 32, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !223, line: 154, baseType: !7)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1364, file: !1336, line: 516, baseType: !211, size: 64, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1364, file: !1336, line: 517, baseType: !211, size: 64, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1364, file: !1336, line: 518, baseType: !211, size: 64, offset: 256)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1361, file: !1336, line: 520, baseType: !34, size: 32, offset: 320)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1361, file: !1336, line: 522, baseType: !1374, size: 64, offset: 384)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1176, line: 22, baseType: !1376)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1176, line: 22, size: 64, elements: !1377)
!1377 = !{!1378}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1376, file: !1176, line: 22, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1176, line: 15, baseType: !211)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1361, file: !1336, line: 524, baseType: !1381, size: 64, offset: 448)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1171, line: 372, baseType: !1383)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1171, line: 372, size: 64, elements: !1384)
!1384 = !{!1385}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1383, file: !1171, line: 372, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1176, line: 16, baseType: !211)
!1387 = !DIDerivedType(tag: DW_TAG_member, scope: !1361, file: !1336, line: 527, baseType: !1388, size: 64, offset: 512)
!1388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1361, file: !1336, line: 527, size: 64, elements: !1389)
!1389 = !{!1390, !1396}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1388, file: !1336, line: 528, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1176, line: 21, baseType: !1392)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1176, line: 21, size: 64, elements: !1393)
!1393 = !{!1394}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1392, file: !1176, line: 21, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1176, line: 14, baseType: !211)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1388, file: !1336, line: 529, baseType: !1375, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1361, file: !1336, line: 534, baseType: !207, size: 64, offset: 576)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1361, file: !1336, line: 535, baseType: !207, size: 64, offset: 640)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1361, file: !1336, line: 541, baseType: !1400, size: 64, offset: 704)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1361, file: !1336, line: 545, baseType: !1402, size: 64, offset: 768)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1361, file: !1336, line: 549, baseType: !1404, size: 64, offset: 832)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1171, line: 520, baseType: !207)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1335, file: !1336, line: 581, baseType: !1406, size: 64, offset: 384)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!1359, !1360, !7}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1335, file: !1336, line: 582, baseType: !1410, size: 64, offset: 448)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!1359, !1360, !211, !211}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1335, file: !1336, line: 584, baseType: !1414, size: 64, offset: 512)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!211, !1122}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1335, file: !1336, line: 588, baseType: !1356, size: 64, offset: 576)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1335, file: !1336, line: 591, baseType: !1356, size: 64, offset: 640)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1335, file: !1336, line: 597, baseType: !1420, size: 64, offset: 704)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!109, !1122, !211, !205, !109, !109}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1335, file: !1336, line: 603, baseType: !1424, size: 64, offset: 768)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!402, !1122}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1335, file: !1336, line: 613, baseType: !1428, size: 64, offset: 832)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!109, !1122, !1431}
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1433, line: 54, flags: DIFlagFwdDecl)
!1433 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1335, file: !1336, line: 625, baseType: !1435, size: 64, offset: 896)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!1431, !1122, !211}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1335, file: !1336, line: 633, baseType: !1439, size: 64, offset: 960)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!207, !1122, !211}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1123, file: !35, line: 697, baseType: !211, size: 64, offset: 1024)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1123, file: !35, line: 699, baseType: !607, size: 64, offset: 1088)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1123, file: !35, line: 700, baseType: !205, size: 64, offset: 1152)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1123, file: !35, line: 711, baseType: !633, size: 64, offset: 1216)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1123, file: !35, line: 717, baseType: !1431, size: 64, offset: 1280)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1123, file: !35, line: 722, baseType: !1448, offset: 1344)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !35, line: 570, elements: !1156)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !958, file: !14, line: 1928, baseType: !211, size: 64, offset: 768)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !958, file: !14, line: 1929, baseType: !1451, size: 64, offset: 832)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!109, !240, !607}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !958, file: !14, line: 1930, baseType: !1455, size: 64, offset: 896)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!109, !607, !1458}
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !205)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !958, file: !14, line: 1931, baseType: !1451, size: 64, offset: 960)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !958, file: !14, line: 1932, baseType: !1461, size: 64, offset: 1024)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!109, !607, !449, !449, !109}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !958, file: !14, line: 1933, baseType: !1465, size: 64, offset: 1088)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!109, !109, !607, !109}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !958, file: !14, line: 1934, baseType: !1469, size: 64, offset: 1152)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!109, !607, !109, !1472}
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !958, file: !14, line: 1935, baseType: !1160, size: 64, offset: 1216)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !958, file: !14, line: 1936, baseType: !1476, size: 64, offset: 1280)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!109, !109}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !958, file: !14, line: 1937, baseType: !1469, size: 64, offset: 1344)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !958, file: !14, line: 1938, baseType: !1481, size: 64, offset: 1408)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!562, !1484, !607, !969, !575, !7}
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1433, line: 59, flags: DIFlagFwdDecl)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !958, file: !14, line: 1939, baseType: !1487, size: 64, offset: 1472)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!562, !607, !969, !1484, !575, !7}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !958, file: !14, line: 1940, baseType: !1491, size: 64, offset: 1536)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{null, !607}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !958, file: !14, line: 1941, baseType: !1495, size: 64, offset: 1600)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!109, !607, !109, !1498, !1499}
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !958, file: !14, line: 1942, baseType: !1501, size: 64, offset: 1664)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!565, !607, !109, !449, !449}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !958, file: !14, line: 1944, baseType: !1505, size: 64, offset: 1728)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{null, !1508, !607}
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1510, line: 17, size: 960, elements: !1511)
!1510 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1511 = !{!1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1541, !1542, !1545}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1509, file: !1510, line: 18, baseType: !428, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1509, file: !1510, line: 19, baseType: !575, size: 64, offset: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1509, file: !1510, line: 20, baseType: !575, size: 64, offset: 128)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1509, file: !1510, line: 21, baseType: !575, size: 64, offset: 192)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1509, file: !1510, line: 22, baseType: !575, size: 64, offset: 256)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1509, file: !1510, line: 23, baseType: !449, size: 64, offset: 320)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1509, file: !1510, line: 24, baseType: !449, size: 64, offset: 384)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1509, file: !1510, line: 25, baseType: !642, size: 256, offset: 448)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1509, file: !1510, line: 26, baseType: !1521, size: 64, offset: 704)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1523)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1510, line: 32, size: 256, elements: !1524)
!1524 = !{!1525, !1529, !1533, !1537}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1523, file: !1510, line: 33, baseType: !1526, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!205, !1508, !969}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1523, file: !1510, line: 34, baseType: !1530, size: 64, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{null, !1508, !205}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1523, file: !1510, line: 35, baseType: !1534, size: 64, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!205, !1508, !205, !969}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1523, file: !1510, line: 36, baseType: !1538, size: 64, offset: 192)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!109, !1508, !205}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1509, file: !1510, line: 27, baseType: !109, size: 32, offset: 768)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1509, file: !1510, line: 28, baseType: !1543, size: 64, offset: 832)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !608)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1509, file: !1510, line: 29, baseType: !205, size: 64, offset: 896)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !958, file: !14, line: 1948, baseType: !1547, size: 64, offset: 1792)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!562, !607, !449, !607, !449, !575, !7}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !958, file: !14, line: 1950, baseType: !1551, size: 64, offset: 1856)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!449, !607, !449, !607, !449, !449, !7}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !958, file: !14, line: 1953, baseType: !1461, size: 64, offset: 1920)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !958, file: !14, line: 1954, baseType: !1556, size: 64, offset: 1984)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!109, !1559, !7}
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !958, file: !14, line: 1955, baseType: !1562, size: 64, offset: 2048)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!109, !1559, !1090, !7}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !608, file: !14, line: 1018, baseType: !318, size: 64, offset: 1472)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !608, file: !14, line: 1020, baseType: !205, size: 64, offset: 1536)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !608, file: !14, line: 1023, baseType: !205, size: 64, offset: 1600)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !608, file: !14, line: 1027, baseType: !1569, size: 64, offset: 1664)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !608, file: !14, line: 1029, baseType: !236, size: 64, offset: 1728)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !608, file: !14, line: 1030, baseType: !1572, size: 32, offset: 1792)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1573, line: 8, baseType: !312)
!1573 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !608, file: !14, line: 1031, baseType: !1572, size: 32, offset: 1824)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !594, file: !556, line: 182, baseType: !604, size: 64, offset: 384)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !594, file: !556, line: 184, baseType: !1577, size: 64, offset: 448)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!109, !607, !496, !593, !1122}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !582, file: !556, line: 90, baseType: !1581, size: 64, offset: 192)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !582, file: !556, line: 91, baseType: !1583, size: 64, offset: 256)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !546, file: !491, line: 120, baseType: !1585, size: 64, offset: 192)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!1588, !514}
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1590)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !1591)
!1591 = !{!1592, !1593, !1597, !1601, !1607, !1611}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1590, file: !82, line: 40, baseType: !81, size: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1590, file: !82, line: 41, baseType: !1594, size: 64, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!837}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1590, file: !82, line: 42, baseType: !1598, size: 64, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!205}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1590, file: !82, line: 43, baseType: !1602, size: 64, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!1251, !1605}
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1590, file: !82, line: 44, baseType: !1608, size: 64, offset: 256)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!1251}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1590, file: !82, line: 45, baseType: !1612, size: 64, offset: 320)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{null, !205}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !546, file: !491, line: 121, baseType: !1616, size: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!1251, !514}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !546, file: !491, line: 122, baseType: !1620, size: 64, offset: 320)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{null, !514, !1623, !1624}
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !490, file: !491, line: 70, baseType: !1626, size: 64, offset: 384)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1628, line: 190, size: 1152, elements: !1629)
!1628 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1629 = !{!1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1712, !1713, !1714, !1715, !1716, !1719}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1627, file: !1628, line: 191, baseType: !362, size: 32)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1627, file: !1628, line: 192, baseType: !362, size: 32, offset: 32)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1627, file: !1628, line: 202, baseType: !1626, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1627, file: !1628, line: 203, baseType: !402, size: 64, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1627, file: !1628, line: 205, baseType: !770, size: 192, align: 64, offset: 192)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1627, file: !1628, line: 207, baseType: !1251, size: 64, offset: 384)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1627, file: !1628, line: 208, baseType: !7, size: 32, offset: 448)
!1637 = !DIDerivedType(tag: DW_TAG_member, scope: !1627, file: !1628, line: 209, baseType: !1638, size: 256, offset: 512)
!1638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1627, file: !1628, line: 209, size: 256, elements: !1639)
!1639 = !{!1640, !1652, !1656}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1638, file: !1628, line: 210, baseType: !1641, size: 256)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1628, line: 153, size: 256, elements: !1642)
!1642 = !{!1643, !1644, !1648, !1651}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1641, file: !1628, line: 154, baseType: !211, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1641, file: !1628, line: 156, baseType: !1645, size: 64, offset: 64)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !771, line: 12, size: 64, elements: !1646)
!1646 = !{!1647}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1645, file: !771, line: 13, baseType: !775, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1641, file: !1628, line: 162, baseType: !1649, size: 64, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1628, line: 162, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1641, file: !1628, line: 167, baseType: !211, size: 64, offset: 192)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1638, file: !1628, line: 211, baseType: !1653, size: 64)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1628, line: 170, size: 64, elements: !1654)
!1654 = !{!1655}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1653, file: !1628, line: 171, baseType: !1626, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1638, file: !1628, line: 212, baseType: !1657, size: 256)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1628, line: 174, size: 256, elements: !1658)
!1658 = !{!1659, !1707, !1710, !1711}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1657, file: !1628, line: 175, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1662)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1628, line: 271, size: 768, elements: !1663)
!1663 = !{!1664, !1684, !1688, !1689, !1690, !1691, !1692, !1696, !1697, !1698, !1699, !1703}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1662, file: !1628, line: 276, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!109, !1668}
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1628, line: 251, size: 1216, elements: !1670)
!1670 = !{!1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1669, file: !1628, line: 253, baseType: !1626, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1669, file: !1628, line: 254, baseType: !607, size: 64, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1669, file: !1628, line: 255, baseType: !1508, size: 64, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1669, file: !1628, line: 256, baseType: !205, size: 64, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1669, file: !1628, line: 259, baseType: !642, size: 256, offset: 256)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1669, file: !1628, line: 260, baseType: !642, size: 256, offset: 512)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1669, file: !1628, line: 261, baseType: !109, size: 32, offset: 768)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1669, file: !1628, line: 262, baseType: !222, size: 128, offset: 832)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1669, file: !1628, line: 263, baseType: !428, size: 64, offset: 960)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1669, file: !1628, line: 265, baseType: !575, size: 64, offset: 1024)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1669, file: !1628, line: 266, baseType: !837, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1669, file: !1628, line: 267, baseType: !837, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1669, file: !1628, line: 268, baseType: !1333, size: 64, offset: 1152)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1662, file: !1628, line: 277, baseType: !1685, size: 64, offset: 64)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{null, !1668}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1662, file: !1628, line: 290, baseType: !1538, size: 64, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1662, file: !1628, line: 292, baseType: !1526, size: 64, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1662, file: !1628, line: 293, baseType: !1534, size: 64, offset: 256)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1662, file: !1628, line: 294, baseType: !1530, size: 64, offset: 320)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1662, file: !1628, line: 296, baseType: !1693, size: 64, offset: 384)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!562, !1668, !428, !575, !449}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1662, file: !1628, line: 306, baseType: !575, size: 64, offset: 448)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1662, file: !1628, line: 313, baseType: !837, size: 8, offset: 512)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1662, file: !1628, line: 314, baseType: !1693, size: 64, offset: 576)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1662, file: !1628, line: 317, baseType: !1700, size: 64, offset: 640)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!1109, !1668, !1111}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1662, file: !1628, line: 320, baseType: !1704, size: 64, offset: 704)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!109, !1668, !1122}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1657, file: !1628, line: 176, baseType: !1708, size: 64, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1628, line: 35, flags: DIFlagFwdDecl)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1657, file: !1628, line: 177, baseType: !449, size: 64, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1657, file: !1628, line: 178, baseType: !1626, size: 64, offset: 192)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1627, file: !1628, line: 215, baseType: !205, size: 64, offset: 768)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1627, file: !1628, line: 221, baseType: !318, size: 64, offset: 832)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1627, file: !1628, line: 223, baseType: !245, size: 16, offset: 896)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1627, file: !1628, line: 224, baseType: !244, size: 16, offset: 912)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1627, file: !1628, line: 225, baseType: !1717, size: 64, offset: 960)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1628, line: 36, flags: DIFlagFwdDecl)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1627, file: !1628, line: 227, baseType: !620, size: 128, align: 64, offset: 1024)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !490, file: !491, line: 71, baseType: !1721, size: 32, offset: 448)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1722, line: 19, size: 32, elements: !1723)
!1722 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1723 = !{!1724}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1721, file: !1722, line: 20, baseType: !685, size: 32)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !490, file: !491, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !490, file: !491, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !490, file: !491, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !490, file: !491, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !490, file: !491, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !487, file: !6, line: 47, baseType: !477, size: 64, offset: 512)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !487, file: !6, line: 48, baseType: !496, size: 64, offset: 576)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !487, file: !6, line: 49, baseType: !1733, size: 64, offset: 640)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !487, file: !6, line: 50, baseType: !1736, size: 64, offset: 704)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1738, line: 26, size: 256, elements: !1739)
!1738 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1739 = !{!1740, !1741}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1737, file: !1738, line: 27, baseType: !7, size: 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1737, file: !1738, line: 28, baseType: !1742, size: 192, offset: 64)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1743, line: 43, size: 192, elements: !1744)
!1743 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1744 = !{!1745, !1746}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1742, file: !1743, line: 44, baseType: !647, size: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1742, file: !1743, line: 45, baseType: !222, size: 128, offset: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !478, file: !6, line: 418, baseType: !1748, size: 64, offset: 1408)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !1750)
!1750 = !{!1751, !1752, !1757, !1761, !1765, !1769}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1749, file: !6, line: 54, baseType: !567, size: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1749, file: !6, line: 55, baseType: !1753, size: 64, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!562, !1748, !1756, !428}
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1749, file: !6, line: 57, baseType: !1758, size: 64, offset: 192)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!562, !1748, !1756, !402, !575}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1749, file: !6, line: 59, baseType: !1762, size: 64, offset: 256)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{null, !477, !402}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1749, file: !6, line: 60, baseType: !1766, size: 64, offset: 320)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!109, !477}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1749, file: !6, line: 61, baseType: !1770, size: 64, offset: 384)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{null, !477}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !478, file: !6, line: 419, baseType: !402, size: 64, offset: 1472)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !478, file: !6, line: 420, baseType: !402, size: 64, offset: 1536)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !478, file: !6, line: 421, baseType: !496, size: 64, offset: 1600)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !478, file: !6, line: 424, baseType: !1777, size: 64, offset: 1664)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1779)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !478, file: !6, line: 425, baseType: !1781, size: 64, offset: 1728)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !763)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !478, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !478, file: !6, line: 435, baseType: !642, size: 256, offset: 1856)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !478, file: !6, line: 437, baseType: !1786, size: 64, offset: 2112)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1788, line: 69, size: 320, elements: !1789)
!1788 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1789 = !{!1790, !1791, !1792, !1809, !1811, !1815, !1816}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1787, file: !1788, line: 70, baseType: !402, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1787, file: !1788, line: 71, baseType: !477, size: 64, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1787, file: !1788, line: 72, baseType: !1793, size: 64, offset: 128)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1795)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1788, line: 47, size: 256, elements: !1796)
!1796 = !{!1797, !1798, !1804, !1808}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1795, file: !1788, line: 49, baseType: !7, size: 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1795, file: !1788, line: 51, baseType: !1799, size: 64, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!109, !402, !1802}
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1787)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1795, file: !1788, line: 53, baseType: !1805, size: 64, offset: 128)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!109, !428, !1802}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1795, file: !1788, line: 55, baseType: !1612, size: 64, offset: 192)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1787, file: !1788, line: 73, baseType: !1810, size: 16, offset: 192)
!1810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1787, file: !1788, line: 74, baseType: !1812, size: 8, offset: 208)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !313, line: 16, baseType: !1813)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !315, line: 20, baseType: !1814)
!1814 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1787, file: !1788, line: 75, baseType: !370, size: 8, offset: 216)
!1816 = !DIDerivedType(tag: DW_TAG_member, scope: !1787, file: !1788, line: 76, baseType: !1817, size: 64, offset: 256)
!1817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1787, file: !1788, line: 76, size: 64, elements: !1818)
!1818 = !{!1819, !1820, !1827}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1817, file: !1788, line: 77, baseType: !205, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1817, file: !1788, line: 78, baseType: !1821, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1823)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1788, line: 86, size: 128, elements: !1824)
!1824 = !{!1825, !1826}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1823, file: !1788, line: 87, baseType: !7, size: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1823, file: !1788, line: 88, baseType: !428, size: 64, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1817, file: !1788, line: 79, baseType: !1828, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1830)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1788, line: 92, size: 256, elements: !1831)
!1831 = !{!1832, !1833, !1834, !1836, !1837}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1830, file: !1788, line: 94, baseType: !7, size: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1830, file: !1788, line: 95, baseType: !7, size: 32, offset: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1830, file: !1788, line: 96, baseType: !1835, size: 64, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1830, file: !1788, line: 97, baseType: !1793, size: 64, offset: 128)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1830, file: !1788, line: 98, baseType: !205, size: 64, offset: 192)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !478, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !478, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !478, file: !6, line: 442, baseType: !1777, size: 64, offset: 2240)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !478, file: !6, line: 443, baseType: !1781, size: 64, offset: 2304)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !478, file: !6, line: 444, baseType: !837, size: 8, offset: 2368)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !478, file: !6, line: 451, baseType: !837, size: 8, offset: 2376)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !478, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !478, file: !6, line: 455, baseType: !1846, size: 64, offset: 2432)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1848, line: 23, size: 96, elements: !1849)
!1848 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1849 = !{!1850, !1851, !1852}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1847, file: !1848, line: 24, baseType: !109, size: 32)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1847, file: !1848, line: 24, baseType: !109, size: 32, offset: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1847, file: !1848, line: 24, baseType: !109, size: 32, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !478, file: !6, line: 458, baseType: !1854, size: 64, offset: 2496)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!109}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !478, file: !6, line: 460, baseType: !1858, size: 4032, align: 512, offset: 2560)
!1858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1859, size: 4032, elements: !1875)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !1860)
!1860 = !{!1861, !1862, !1863}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1859, file: !6, line: 363, baseType: !205, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1859, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1859, file: !6, line: 367, baseType: !1864, size: 448, offset: 128)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !1865)
!1865 = !{!1866, !1867}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1864, file: !6, line: 320, baseType: !477, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1864, file: !6, line: 321, baseType: !1868, size: 384, offset: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1869, line: 40, size: 384, elements: !1870)
!1869 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1870 = !{!1871}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1868, file: !1869, line: 41, baseType: !1872, size: 384, align: 64)
!1872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, size: 384, align: 64, elements: !1873)
!1873 = !{!1874}
!1874 = !DISubrange(count: 2)
!1875 = !{!1876}
!1876 = !DISubrange(count: 7)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !478, file: !6, line: 463, baseType: !1878, size: 192, offset: 6592)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1879, line: 8, size: 192, elements: !1880)
!1879 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1880 = !{!1881, !1882, !1884}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1878, file: !1879, line: 10, baseType: !7, size: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1878, file: !1879, line: 11, baseType: !1883, size: 64, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1878, file: !1879, line: 12, baseType: !1885, size: 64, offset: 128)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1887, line: 59, size: 48, elements: !1888)
!1887 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1888 = !{!1889, !1890, !1891, !1892, !1893, !1894}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1886, file: !1887, line: 60, baseType: !1268, size: 16)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1886, file: !1887, line: 61, baseType: !1268, size: 16, offset: 16)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1886, file: !1887, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1886, file: !1887, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1886, file: !1887, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1886, file: !1887, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !478, file: !6, line: 465, baseType: !211, size: 64, offset: 6784)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !478, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !478, file: !6, line: 470, baseType: !222, size: 128, offset: 6912)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !478, file: !6, line: 471, baseType: !1899, size: 64, offset: 7040)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1901, line: 33, size: 96, elements: !1902)
!1901 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1902 = !{!1903, !1904, !1905, !1906}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1900, file: !1901, line: 37, baseType: !109, size: 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1900, file: !1901, line: 43, baseType: !109, size: 32, offset: 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1900, file: !1901, line: 45, baseType: !245, size: 16, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1900, file: !1901, line: 47, baseType: !245, size: 16, offset: 80)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !478, file: !6, line: 476, baseType: !1908, size: 64, offset: 7104)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !1910)
!1910 = !{!1911, !1927, !1928, !1929}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1909, file: !6, line: 379, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1914, line: 204, baseType: !1915)
!1914 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1914, line: 197, size: 192, elements: !1916)
!1916 = !{!1917, !1919, !1920, !1921, !1923, !1925}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1915, file: !1914, line: 198, baseType: !1918, size: 32)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1914, line: 21, baseType: !314)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1915, file: !1914, line: 199, baseType: !324, size: 8, offset: 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1915, file: !1914, line: 200, baseType: !324, size: 8, offset: 40)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1915, file: !1914, line: 201, baseType: !1922, size: 16, offset: 48)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1914, line: 17, baseType: !378)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1915, file: !1914, line: 202, baseType: !1924, size: 64, offset: 64)
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1914, line: 16, baseType: !319)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1915, file: !1914, line: 203, baseType: !1926, size: 64, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1914, line: 22, baseType: !319)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1909, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1909, file: !6, line: 381, baseType: !428, size: 64, offset: 128)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1909, file: !6, line: 382, baseType: !428, size: 64, offset: 192)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !478, file: !6, line: 477, baseType: !1909, size: 256, offset: 7168)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !478, file: !6, line: 480, baseType: !1932, size: 64, offset: 7424)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !478, file: !6, line: 483, baseType: !1935, size: 64, offset: 7488)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !478, file: !6, line: 488, baseType: !428, size: 64, offset: 7552)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !478, file: !6, line: 492, baseType: !205, size: 64, offset: 7616)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !478, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !478, file: !6, line: 495, baseType: !205, size: 64, offset: 7744)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !478, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !478, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !478, file: !6, line: 500, baseType: !1944, size: 64, offset: 7872)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1946, line: 45, baseType: !1947)
!1946 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !478, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !478, file: !6, line: 504, baseType: !1950, size: 64, offset: 8000)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1953, line: 96, size: 192, elements: !1954)
!1953 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1954 = !{!1955, !1956, !2010, !2013}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1952, file: !1953, line: 97, baseType: !7, size: 32)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1952, file: !1953, line: 98, baseType: !1957, size: 64, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1953, line: 24, size: 3072, elements: !1959)
!1959 = !{!1960, !1962, !1963, !1964, !1965, !1979, !1980, !1981, !1982, !1994, !1995, !1996, !2007, !2008, !2009}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1958, file: !1953, line: 26, baseType: !1961, size: 128)
!1961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 128, elements: !1873)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1958, file: !1953, line: 27, baseType: !1961, size: 128, offset: 128)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1958, file: !1953, line: 28, baseType: !109, size: 32, offset: 256)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1958, file: !1953, line: 31, baseType: !342, size: 32, align: 512, offset: 512)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1958, file: !1953, line: 32, baseType: !1966, size: 960, offset: 576)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1967, line: 206, size: 960, elements: !1968)
!1967 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1968 = !{!1969, !1970, !1973, !1975, !1976, !1978}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1966, file: !1967, line: 207, baseType: !623, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1966, file: !1967, line: 208, baseType: !1971, size: 256, offset: 64)
!1971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1972, size: 256, elements: !702)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1966, file: !1967, line: 209, baseType: !1974, size: 256, offset: 320)
!1974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 256, elements: !702)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1966, file: !1967, line: 213, baseType: !565, size: 64, offset: 576)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1966, file: !1967, line: 215, baseType: !1977, size: 256, offset: 640)
!1977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 256, elements: !702)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1966, file: !1967, line: 216, baseType: !370, size: 8, offset: 896)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1958, file: !1953, line: 33, baseType: !211, size: 64, offset: 1536)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1958, file: !1953, line: 34, baseType: !211, size: 64, offset: 1600)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1958, file: !1953, line: 35, baseType: !837, size: 8, offset: 1664)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1958, file: !1953, line: 36, baseType: !1983, size: 320, offset: 1728)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1984, line: 11, size: 320, elements: !1985)
!1984 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1985 = !{!1986, !1987, !1988, !1993}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1983, file: !1984, line: 16, baseType: !697, size: 128)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1983, file: !1984, line: 17, baseType: !211, size: 64, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1983, file: !1984, line: 18, baseType: !1989, size: 64, offset: 192)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{null, !1992}
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1983, file: !1984, line: 19, baseType: !312, size: 32, offset: 256)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1958, file: !1953, line: 37, baseType: !1290, size: 256, offset: 2048)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1958, file: !1953, line: 38, baseType: !620, size: 128, align: 64, offset: 2304)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1958, file: !1953, line: 39, baseType: !1997, size: 64, offset: 2432)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1953, line: 49, size: 768, elements: !1999)
!1999 = !{!2000, !2001, !2002, !2003, !2004, !2005, !2006}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1998, file: !1953, line: 50, baseType: !342, size: 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1998, file: !1953, line: 51, baseType: !1974, size: 256, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1998, file: !1953, line: 53, baseType: !1974, size: 256, offset: 320)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1998, file: !1953, line: 54, baseType: !211, size: 64, offset: 576)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1998, file: !1953, line: 55, baseType: !1997, size: 64, offset: 640)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1998, file: !1953, line: 56, baseType: !109, size: 32, offset: 704)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1998, file: !1953, line: 57, baseType: !109, size: 32, offset: 736)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1958, file: !1953, line: 40, baseType: !211, size: 64, offset: 2496)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1958, file: !1953, line: 42, baseType: !109, size: 32, offset: 2560)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1958, file: !1953, line: 43, baseType: !1951, size: 64, offset: 2624)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1952, file: !1953, line: 99, baseType: !2011, offset: 128)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2012, line: 211, elements: !1156)
!2012 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1952, file: !1953, line: 100, baseType: !2014, size: 64, offset: 128)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1953, line: 63, size: 3008, elements: !2016)
!2016 = !{!2017, !2018, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2048}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2015, file: !1953, line: 64, baseType: !1997, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2015, file: !1953, line: 65, baseType: !2019, size: 192, offset: 64)
!2019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1997, size: 192, elements: !531)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2015, file: !1953, line: 67, baseType: !109, size: 32, offset: 256)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2015, file: !1953, line: 68, baseType: !642, size: 256, offset: 320)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2015, file: !1953, line: 69, baseType: !342, size: 32, offset: 576)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2015, file: !1953, line: 70, baseType: !642, size: 256, offset: 640)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2015, file: !1953, line: 71, baseType: !211, size: 64, offset: 896)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2015, file: !1953, line: 72, baseType: !211, size: 64, offset: 960)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2015, file: !1953, line: 73, baseType: !211, size: 64, offset: 1024)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2015, file: !1953, line: 74, baseType: !211, size: 64, offset: 1088)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2015, file: !1953, line: 75, baseType: !211, size: 64, offset: 1152)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2015, file: !1953, line: 76, baseType: !211, size: 64, offset: 1216)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2015, file: !1953, line: 77, baseType: !211, size: 64, offset: 1280)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2015, file: !1953, line: 78, baseType: !211, size: 64, offset: 1344)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2015, file: !1953, line: 79, baseType: !837, size: 8, offset: 1408)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2015, file: !1953, line: 80, baseType: !211, size: 64, offset: 1472)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2015, file: !1953, line: 81, baseType: !642, size: 256, offset: 1536)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2015, file: !1953, line: 82, baseType: !1737, size: 256, offset: 1792)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2015, file: !1953, line: 84, baseType: !362, size: 32, offset: 2048)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2015, file: !1953, line: 87, baseType: !211, size: 64, offset: 2112)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2015, file: !1953, line: 88, baseType: !211, size: 64, offset: 2176)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2015, file: !1953, line: 89, baseType: !2040, size: 704, offset: 2240)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1291, line: 111, size: 704, elements: !2041)
!2041 = !{!2042, !2043, !2044, !2047}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2040, file: !1291, line: 112, baseType: !1290, size: 256)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2040, file: !1291, line: 113, baseType: !1983, size: 320, offset: 256)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2040, file: !1291, line: 116, baseType: !2045, size: 64, offset: 576)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1291, line: 18, flags: DIFlagFwdDecl)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2040, file: !1291, line: 117, baseType: !109, size: 32, offset: 640)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2015, file: !1953, line: 90, baseType: !1951, size: 64, offset: 2944)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !478, file: !6, line: 515, baseType: !2050, size: 64, offset: 8064)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2052, line: 117, size: 128, elements: !2053)
!2052 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2053 = !{!2054, !2055, !2056}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2051, file: !2052, line: 118, baseType: !763, size: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2051, file: !2052, line: 119, baseType: !763, size: 32, offset: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2051, file: !2052, line: 120, baseType: !565, size: 64, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !478, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !478, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !478, file: !6, line: 520, baseType: !2060, size: 64, offset: 8192)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !478, file: !6, line: 523, baseType: !2062, size: 64, offset: 8256)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !478, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !478, file: !6, line: 525, baseType: !2067, size: 64, offset: 8384)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !478, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !478, file: !6, line: 533, baseType: !205, size: 64, offset: 8512)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !478, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !478, file: !6, line: 535, baseType: !2074, size: 64, offset: 8640)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !478, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !478, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !478, file: !6, line: 540, baseType: !2078, size: 64, offset: 8768)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2080, line: 32, size: 64, elements: !2081)
!2080 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2081 = !{!2082, !2083}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2079, file: !2080, line: 33, baseType: !763, size: 32)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2079, file: !2080, line: 34, baseType: !763, size: 32, offset: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !478, file: !6, line: 563, baseType: !222, size: 128, offset: 8832)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !478, file: !6, line: 565, baseType: !222, size: 128, offset: 8960)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !478, file: !6, line: 568, baseType: !2087, size: 64, offset: 9088)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{null}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !478, file: !6, line: 570, baseType: !362, size: 32, offset: 9152)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !454, file: !14, line: 2382, baseType: !453, size: 64, offset: 448)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !454, file: !14, line: 2383, baseType: !693, size: 64, offset: 512)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !454, file: !14, line: 2385, baseType: !2094, offset: 576)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2012, line: 206, elements: !1156)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !454, file: !14, line: 2386, baseType: !2094, offset: 576)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !454, file: !14, line: 2387, baseType: !2094, offset: 576)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !454, file: !14, line: 2388, baseType: !2098, offset: 576)
!2098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2094, elements: !531)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !454, file: !14, line: 2390, baseType: !2094, offset: 576)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !454, file: !14, line: 2391, baseType: !2094, offset: 576)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !454, file: !14, line: 2392, baseType: !2094, offset: 576)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !454, file: !14, line: 2393, baseType: !2094, offset: 576)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !440, file: !14, line: 1197, baseType: !2104, size: 64, offset: 384)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2106)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !2107)
!2107 = !{!2108, !2112, !2116, !2117, !2121, !2127, !2131, !2132, !2133, !2137, !2141, !2145, !2146, !2147, !2153, !2157, !2158, !2162, !2163, !2164, !2165, !2169, !2173, !2220, !2235, !2236}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2106, file: !14, line: 2058, baseType: !2109, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!240, !439}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2106, file: !14, line: 2059, baseType: !2113, size: 64, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{null, !240}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2106, file: !14, line: 2060, baseType: !2113, size: 64, offset: 128)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2106, file: !14, line: 2062, baseType: !2118, size: 64, offset: 192)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{null, !240, !109}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2106, file: !14, line: 2063, baseType: !2122, size: 64, offset: 256)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!109, !240, !2125}
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2106, file: !14, line: 2064, baseType: !2128, size: 64, offset: 320)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!109, !240}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2106, file: !14, line: 2065, baseType: !2113, size: 64, offset: 384)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2106, file: !14, line: 2066, baseType: !473, size: 64, offset: 448)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2106, file: !14, line: 2067, baseType: !2134, size: 64, offset: 512)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!109, !439, !109}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2106, file: !14, line: 2068, baseType: !2138, size: 64, offset: 576)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!109, !439, !13}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2106, file: !14, line: 2069, baseType: !2142, size: 64, offset: 640)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!109, !439}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2106, file: !14, line: 2070, baseType: !2138, size: 64, offset: 704)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2106, file: !14, line: 2071, baseType: !2142, size: 64, offset: 768)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2106, file: !14, line: 2072, baseType: !2148, size: 64, offset: 832)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!109, !278, !2151}
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2106, file: !14, line: 2073, baseType: !2154, size: 64, offset: 896)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!109, !439, !1883, !428}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2106, file: !14, line: 2074, baseType: !473, size: 64, offset: 960)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2106, file: !14, line: 2076, baseType: !2159, size: 64, offset: 1024)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!109, !1508, !278}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2106, file: !14, line: 2077, baseType: !2159, size: 64, offset: 1088)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2106, file: !14, line: 2078, baseType: !2159, size: 64, offset: 1152)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2106, file: !14, line: 2079, baseType: !2159, size: 64, offset: 1216)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2106, file: !14, line: 2081, baseType: !2166, size: 64, offset: 1280)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!562, !439, !109, !428, !575, !449}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2106, file: !14, line: 2082, baseType: !2170, size: 64, offset: 1344)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!562, !439, !109, !402, !575, !449}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2106, file: !14, line: 2083, baseType: !2174, size: 64, offset: 1408)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!2177, !240}
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !51, line: 296, size: 1664, elements: !2180)
!2180 = !{!2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2205, !2206, !2207}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2179, file: !51, line: 297, baseType: !697, size: 128)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2179, file: !51, line: 298, baseType: !222, size: 128, offset: 128)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2179, file: !51, line: 299, baseType: !222, size: 128, offset: 256)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2179, file: !51, line: 300, baseType: !222, size: 128, offset: 384)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2179, file: !51, line: 301, baseType: !642, size: 256, offset: 512)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2179, file: !51, line: 302, baseType: !342, size: 32, offset: 768)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2179, file: !51, line: 303, baseType: !362, size: 32, offset: 800)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2179, file: !51, line: 304, baseType: !439, size: 64, offset: 832)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2179, file: !51, line: 305, baseType: !2190, size: 64, offset: 896)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !51, line: 68, size: 64, elements: !2191)
!2191 = !{!2192, !2204}
!2192 = !DIDerivedType(tag: DW_TAG_member, scope: !2190, file: !51, line: 69, baseType: !2193, size: 32)
!2193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2190, file: !51, line: 69, size: 32, elements: !2194)
!2194 = !{!2195, !2196, !2197}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2193, file: !51, line: 70, baseType: !248, size: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2193, file: !51, line: 71, baseType: !258, size: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2193, file: !51, line: 72, baseType: !2198, size: 32)
!2198 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2199, line: 24, baseType: !2200)
!2199 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2199, line: 22, size: 32, elements: !2201)
!2201 = !{!2202}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2200, file: !2199, line: 23, baseType: !2203, size: 32)
!2203 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2199, line: 20, baseType: !254)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2190, file: !51, line: 74, baseType: !50, size: 32, offset: 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2179, file: !51, line: 306, baseType: !449, size: 64, offset: 960)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2179, file: !51, line: 307, baseType: !211, size: 64, offset: 1024)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2179, file: !51, line: 308, baseType: !2208, size: 576, offset: 1088)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !51, line: 205, size: 576, elements: !2209)
!2209 = !{!2210, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2208, file: !51, line: 206, baseType: !2211, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !51, line: 66, baseType: !451)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2208, file: !51, line: 207, baseType: !2211, size: 64, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2208, file: !51, line: 208, baseType: !2211, size: 64, offset: 128)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2208, file: !51, line: 209, baseType: !2211, size: 64, offset: 192)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2208, file: !51, line: 210, baseType: !2211, size: 64, offset: 256)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2208, file: !51, line: 211, baseType: !2211, size: 64, offset: 320)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2208, file: !51, line: 212, baseType: !2211, size: 64, offset: 384)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2208, file: !51, line: 213, baseType: !794, size: 64, offset: 448)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2208, file: !51, line: 214, baseType: !794, size: 64, offset: 512)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2106, file: !14, line: 2085, baseType: !2221, size: 64, offset: 1472)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!565, !439, !2224}
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2226, line: 15, size: 256, elements: !2227)
!2226 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2227 = !{!2228, !2229, !2230, !2231, !2232}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2225, file: !2226, line: 16, baseType: !1368, size: 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2225, file: !2226, line: 19, baseType: !109, size: 32, offset: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2225, file: !2226, line: 26, baseType: !211, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2225, file: !2226, line: 33, baseType: !211, size: 64, offset: 128)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2225, file: !2226, line: 36, baseType: !2233, size: 64, offset: 192)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !35, line: 33, flags: DIFlagFwdDecl)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2106, file: !14, line: 2087, baseType: !2221, size: 64, offset: 1536)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2106, file: !14, line: 2089, baseType: !473, size: 64, offset: 1600)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !440, file: !14, line: 1198, baseType: !2238, size: 64, offset: 448)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2240)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !51, line: 324, size: 704, elements: !2241)
!2241 = !{!2242, !2246, !2250, !2254, !2255, !2256, !2257, !2258, !2263, !2268, !2272}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2240, file: !51, line: 325, baseType: !2243, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!109, !2178}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2240, file: !51, line: 326, baseType: !2247, size: 64, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!2178, !439, !109}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2240, file: !51, line: 327, baseType: !2251, size: 64, offset: 128)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{null, !2178}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2240, file: !51, line: 328, baseType: !2243, size: 64, offset: 192)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2240, file: !51, line: 329, baseType: !2243, size: 64, offset: 256)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2240, file: !51, line: 330, baseType: !2243, size: 64, offset: 320)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2240, file: !51, line: 331, baseType: !2134, size: 64, offset: 384)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2240, file: !51, line: 334, baseType: !2259, size: 64, offset: 448)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!2262, !240}
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2240, file: !51, line: 335, baseType: !2264, size: 64, offset: 512)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!109, !240, !2267}
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2240, file: !51, line: 337, baseType: !2269, size: 64, offset: 576)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!109, !240, !2262}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2240, file: !51, line: 339, baseType: !2273, size: 64, offset: 640)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!109, !439, !2276}
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !440, file: !14, line: 1199, baseType: !2278, size: 64, offset: 512)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2280)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !51, line: 430, size: 704, elements: !2281)
!2281 = !{!2282, !2288, !2289, !2293, !2294, !2295, !2310, !2333, !2337, !2338, !2361}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2280, file: !51, line: 431, baseType: !2283, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!109, !439, !109, !109, !2286}
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !949)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2280, file: !51, line: 432, baseType: !2134, size: 64, offset: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2280, file: !51, line: 433, baseType: !2290, size: 64, offset: 128)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!109, !439, !7}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2280, file: !51, line: 434, baseType: !2290, size: 64, offset: 192)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2280, file: !51, line: 435, baseType: !2134, size: 64, offset: 256)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2280, file: !51, line: 436, baseType: !2296, size: 64, offset: 320)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!109, !439, !109, !2299}
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !51, line: 417, size: 256, elements: !2301)
!2301 = !{!2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2300, file: !51, line: 418, baseType: !109, size: 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2300, file: !51, line: 419, baseType: !7, size: 32, offset: 32)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2300, file: !51, line: 420, baseType: !7, size: 32, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2300, file: !51, line: 422, baseType: !7, size: 32, offset: 96)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2300, file: !51, line: 423, baseType: !7, size: 32, offset: 128)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2300, file: !51, line: 424, baseType: !7, size: 32, offset: 160)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2300, file: !51, line: 425, baseType: !7, size: 32, offset: 192)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2300, file: !51, line: 426, baseType: !7, size: 32, offset: 224)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2280, file: !51, line: 437, baseType: !2311, size: 64, offset: 384)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!109, !439, !2190, !2314}
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !51, line: 345, size: 960, elements: !2316)
!2316 = !{!2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2315, file: !51, line: 346, baseType: !109, size: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2315, file: !51, line: 347, baseType: !318, size: 64, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2315, file: !51, line: 348, baseType: !318, size: 64, offset: 128)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2315, file: !51, line: 349, baseType: !318, size: 64, offset: 192)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2315, file: !51, line: 350, baseType: !318, size: 64, offset: 256)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2315, file: !51, line: 351, baseType: !318, size: 64, offset: 320)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2315, file: !51, line: 352, baseType: !318, size: 64, offset: 384)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2315, file: !51, line: 353, baseType: !639, size: 64, offset: 448)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2315, file: !51, line: 355, baseType: !639, size: 64, offset: 512)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2315, file: !51, line: 356, baseType: !109, size: 32, offset: 576)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2315, file: !51, line: 357, baseType: !109, size: 32, offset: 608)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2315, file: !51, line: 358, baseType: !318, size: 64, offset: 640)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2315, file: !51, line: 359, baseType: !318, size: 64, offset: 704)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2315, file: !51, line: 360, baseType: !318, size: 64, offset: 768)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2315, file: !51, line: 361, baseType: !639, size: 64, offset: 832)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2315, file: !51, line: 362, baseType: !109, size: 32, offset: 896)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2280, file: !51, line: 438, baseType: !2334, size: 64, offset: 448)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!109, !439, !2276, !2314}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2280, file: !51, line: 440, baseType: !2311, size: 64, offset: 512)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2280, file: !51, line: 441, baseType: !2339, size: 64, offset: 576)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!109, !439, !2342}
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !51, line: 411, size: 1408, elements: !2344)
!2344 = !{!2345, !2346}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2343, file: !51, line: 412, baseType: !7, size: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2343, file: !51, line: 413, baseType: !2347, size: 1344, offset: 64)
!2347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2348, size: 1344, elements: !531)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !51, line: 397, size: 448, elements: !2349)
!2349 = !{!2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2360}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2348, file: !51, line: 398, baseType: !7, size: 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2348, file: !51, line: 399, baseType: !7, size: 32, offset: 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2348, file: !51, line: 401, baseType: !7, size: 32, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2348, file: !51, line: 402, baseType: !7, size: 32, offset: 96)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2348, file: !51, line: 403, baseType: !7, size: 32, offset: 128)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2348, file: !51, line: 404, baseType: !7, size: 32, offset: 160)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2348, file: !51, line: 405, baseType: !7, size: 32, offset: 192)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2348, file: !51, line: 406, baseType: !320, size: 64, offset: 256)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2348, file: !51, line: 407, baseType: !2359, size: 64, offset: 320)
!2359 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !223, line: 132, baseType: !318)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2348, file: !51, line: 408, baseType: !2359, size: 64, offset: 384)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2280, file: !51, line: 442, baseType: !2290, size: 64, offset: 640)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !440, file: !14, line: 1200, baseType: !2363, size: 64, offset: 576)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2365)
!2365 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !440, file: !14, line: 1201, baseType: !211, size: 64, offset: 640)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !440, file: !14, line: 1202, baseType: !211, size: 64, offset: 704)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !440, file: !14, line: 1203, baseType: !211, size: 64, offset: 768)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !440, file: !14, line: 1204, baseType: !278, size: 64, offset: 832)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !440, file: !14, line: 1205, baseType: !778, size: 320, offset: 896)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !440, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !440, file: !14, line: 1207, baseType: !362, size: 32, offset: 1248)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !440, file: !14, line: 1209, baseType: !205, size: 64, offset: 1280)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !440, file: !14, line: 1211, baseType: !2375, size: 64, offset: 1344)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2378)
!2378 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !440, file: !14, line: 1223, baseType: !2380, size: 64, offset: 1408)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !295, line: 34, size: 64, elements: !2381)
!2381 = !{!2382}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2380, file: !295, line: 35, baseType: !298, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !440, file: !14, line: 1224, baseType: !222, size: 128, offset: 1472)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !440, file: !14, line: 1225, baseType: !2385, size: 64, offset: 1600)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !440, file: !14, line: 1226, baseType: !2388, size: 64, offset: 1664)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !440, file: !14, line: 1227, baseType: !2391, size: 64, offset: 1728)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !440, file: !14, line: 1228, baseType: !2394, size: 64, offset: 1792)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !440, file: !14, line: 1229, baseType: !697, size: 128, offset: 1856)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !440, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !440, file: !14, line: 1231, baseType: !2399, size: 2496, offset: 2048)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !51, line: 521, size: 2496, elements: !2400)
!2400 = !{!2401, !2402, !2403, !2405, !2437}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2399, file: !51, line: 522, baseType: !7, size: 32)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2399, file: !51, line: 523, baseType: !778, size: 320, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2399, file: !51, line: 524, baseType: !2404, size: 192, offset: 384)
!2404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 192, elements: !531)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2399, file: !51, line: 525, baseType: !2406, size: 1728, offset: 576)
!2406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2407, size: 1728, elements: !531)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !51, line: 222, size: 576, elements: !2408)
!2408 = !{!2409, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2407, file: !51, line: 223, baseType: !2410, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !51, line: 445, size: 256, elements: !2412)
!2412 = !{!2413, !2414, !2427, !2428}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2411, file: !51, line: 446, baseType: !109, size: 32)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2411, file: !51, line: 447, baseType: !2415, size: 64, offset: 64)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2417)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !51, line: 312, size: 512, elements: !2418)
!2418 = !{!2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2417, file: !51, line: 313, baseType: !2134, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2417, file: !51, line: 314, baseType: !2134, size: 64, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2417, file: !51, line: 315, baseType: !2134, size: 64, offset: 128)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2417, file: !51, line: 316, baseType: !2134, size: 64, offset: 192)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2417, file: !51, line: 317, baseType: !2243, size: 64, offset: 256)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2417, file: !51, line: 318, baseType: !2243, size: 64, offset: 320)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2417, file: !51, line: 319, baseType: !2243, size: 64, offset: 384)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2417, file: !51, line: 320, baseType: !2273, size: 64, offset: 448)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2411, file: !51, line: 448, baseType: !477, size: 64, offset: 128)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2411, file: !51, line: 449, baseType: !2410, size: 64, offset: 192)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2407, file: !51, line: 224, baseType: !109, size: 32, offset: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2407, file: !51, line: 226, baseType: !222, size: 128, offset: 128)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2407, file: !51, line: 227, baseType: !211, size: 64, offset: 256)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2407, file: !51, line: 228, baseType: !7, size: 32, offset: 320)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2407, file: !51, line: 229, baseType: !7, size: 32, offset: 352)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2407, file: !51, line: 230, baseType: !2211, size: 64, offset: 384)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2407, file: !51, line: 231, baseType: !2211, size: 64, offset: 448)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2407, file: !51, line: 232, baseType: !205, size: 64, offset: 512)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2399, file: !51, line: 526, baseType: !2438, size: 192, offset: 2304)
!2438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2415, size: 192, elements: !531)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !440, file: !14, line: 1233, baseType: !2440, size: 2368, offset: 4544)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !2441)
!2441 = !{!2442, !2443, !2444}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2440, file: !14, line: 1185, baseType: !245, size: 16)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2440, file: !14, line: 1186, baseType: !245, size: 16, offset: 16)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2440, file: !14, line: 1187, baseType: !2445, size: 2304, offset: 64)
!2445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2446, size: 2304, elements: !531)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2447, line: 12, size: 768, elements: !2448)
!2447 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2448 = !{!2449, !2457, !2458, !3653, !3654}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2446, file: !2447, line: 13, baseType: !2450, size: 384)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2451, line: 17, size: 384, elements: !2452)
!2451 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2452 = !{!2453, !2454, !2455, !2456}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2450, file: !2451, line: 18, baseType: !109, size: 32)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2450, file: !2451, line: 19, baseType: !109, size: 32, offset: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2450, file: !2451, line: 20, baseType: !706, size: 192, offset: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2450, file: !2451, line: 22, baseType: !620, size: 128, align: 64, offset: 256)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2446, file: !2447, line: 14, baseType: !1835, size: 64, offset: 384)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2446, file: !2447, line: 15, baseType: !2459, size: 64, offset: 448)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2460, line: 16, size: 64, elements: !2461)
!2460 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2461 = !{!2462}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2459, file: !2460, line: 17, baseType: !2463, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1433, line: 746, size: 58368, elements: !2465)
!2465 = !{!2466, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2546, !2557, !2649, !2653, !2656, !2687, !2688, !2689, !2690, !2701, !2703, !2704, !2705, !2706, !2707, !2708, !2719, !2720, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2737, !2738, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2826, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2874, !2880, !2881, !2882, !2883, !2884, !2888, !2891, !2898, !2903, !2906, !2909, !2912, !2915, !3053, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3091, !3092, !3093, !3102, !3110, !3111, !3112, !3113, !3114, !3119, !3120, !3121, !3125, !3126, !3129, !3132, !3135, !3143, !3146, !3147, !3233, !3234, !3235, !3236, !3237, !3243, !3244, !3245, !3246, !3249, !3250, !3253, !3256, !3257, !3260, !3261, !3262, !3265, !3266, !3267, !3268, !3269, !3270, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3302, !3303, !3309, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3321, !3393, !3395, !3396, !3397, !3398, !3399, !3400, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3430, !3431, !3432}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2464, file: !1433, line: 752, baseType: !2467, size: 192)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2468, line: 56, size: 192, elements: !2469)
!2468 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2469 = !{!2470, !2471, !2472, !2473}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2467, file: !2468, line: 57, baseType: !211, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2467, file: !2468, line: 58, baseType: !211, size: 64, offset: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2467, file: !2468, line: 59, baseType: !312, size: 32, offset: 128)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2467, file: !2468, line: 61, baseType: !312, size: 32, offset: 160)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2464, file: !1433, line: 754, baseType: !7, size: 32, offset: 192)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2464, file: !1433, line: 767, baseType: !205, size: 64, offset: 256)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2464, file: !1433, line: 768, baseType: !685, size: 32, offset: 320)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2464, file: !1433, line: 770, baseType: !7, size: 32, offset: 352)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2464, file: !1433, line: 771, baseType: !7, size: 32, offset: 384)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2464, file: !1433, line: 774, baseType: !109, size: 32, offset: 416)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2464, file: !1433, line: 775, baseType: !2481, size: 128, offset: 448)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2482, line: 58, size: 128, elements: !2483)
!2482 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2483 = !{!2484, !2485, !2490, !2491}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2481, file: !2482, line: 59, baseType: !614, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, scope: !2481, file: !2482, line: 60, baseType: !2486, size: 32, offset: 64)
!2486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2481, file: !2482, line: 60, size: 32, elements: !2487)
!2487 = !{!2488, !2489}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2486, file: !2482, line: 61, baseType: !7, size: 32)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2486, file: !2482, line: 62, baseType: !362, size: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2481, file: !2482, line: 65, baseType: !377, size: 16, offset: 96)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2481, file: !2482, line: 65, baseType: !377, size: 16, offset: 112)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2464, file: !1433, line: 776, baseType: !7, size: 32, offset: 576)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2464, file: !1433, line: 777, baseType: !211, size: 64, offset: 640)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2464, file: !1433, line: 778, baseType: !2463, size: 64, offset: 704)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2464, file: !1433, line: 787, baseType: !109, size: 32, offset: 768)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2464, file: !1433, line: 788, baseType: !109, size: 32, offset: 800)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2464, file: !1433, line: 790, baseType: !109, size: 32, offset: 832)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2464, file: !1433, line: 792, baseType: !109, size: 32, offset: 864)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2464, file: !1433, line: 793, baseType: !109, size: 32, offset: 896)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2464, file: !1433, line: 794, baseType: !109, size: 32, offset: 928)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2464, file: !1433, line: 795, baseType: !7, size: 32, offset: 960)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2464, file: !1433, line: 797, baseType: !2503, size: 2048, offset: 1024)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1433, line: 551, size: 2048, elements: !2504)
!2504 = !{!2505, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2525, !2528, !2529, !2530}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2503, file: !1433, line: 553, baseType: !2506, size: 128)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1433, line: 411, size: 128, elements: !2507)
!2507 = !{!2508, !2509}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2506, file: !1433, line: 412, baseType: !211, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2506, file: !1433, line: 413, baseType: !312, size: 32, offset: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2503, file: !1433, line: 554, baseType: !770, size: 192, align: 64, offset: 128)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2503, file: !1433, line: 555, baseType: !318, size: 64, offset: 320)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2503, file: !1433, line: 556, baseType: !318, size: 64, offset: 384)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2503, file: !1433, line: 558, baseType: !222, size: 128, offset: 448)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2503, file: !1433, line: 559, baseType: !7, size: 32, offset: 576)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2503, file: !1433, line: 561, baseType: !318, size: 64, offset: 640)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2503, file: !1433, line: 562, baseType: !318, size: 64, offset: 704)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2503, file: !1433, line: 563, baseType: !318, size: 64, offset: 768)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2503, file: !1433, line: 564, baseType: !318, size: 64, offset: 832)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2503, file: !1433, line: 565, baseType: !639, size: 64, offset: 896)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2503, file: !1433, line: 566, baseType: !318, size: 64, offset: 960)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2503, file: !1433, line: 568, baseType: !318, size: 64, offset: 1024)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2503, file: !1433, line: 571, baseType: !109, size: 32, offset: 1088)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2503, file: !1433, line: 572, baseType: !2524, size: 64, offset: 1152)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2503, file: !1433, line: 574, baseType: !2526, size: 64, offset: 1216)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1433, line: 49, flags: DIFlagFwdDecl)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2503, file: !1433, line: 576, baseType: !2526, size: 64, offset: 1280)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2503, file: !1433, line: 578, baseType: !211, size: 64, offset: 1344)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2503, file: !1433, line: 588, baseType: !2531, size: 512, align: 512, offset: 1536)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1433, line: 497, size: 512, align: 512, elements: !2532)
!2532 = !{!2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2531, file: !1433, line: 498, baseType: !318, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2531, file: !1433, line: 499, baseType: !318, size: 64, offset: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2531, file: !1433, line: 500, baseType: !318, size: 64, offset: 128)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2531, file: !1433, line: 501, baseType: !312, size: 32, offset: 192)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2531, file: !1433, line: 502, baseType: !312, size: 32, offset: 224)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2531, file: !1433, line: 503, baseType: !211, size: 64, offset: 256)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2531, file: !1433, line: 504, baseType: !211, size: 64, offset: 320)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2531, file: !1433, line: 505, baseType: !211, size: 64, offset: 384)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2531, file: !1433, line: 506, baseType: !2542, size: 64, align: 64, offset: 448)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1433, line: 445, size: 64, align: 64, elements: !2543)
!2543 = !{!2544, !2545}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2542, file: !1433, line: 446, baseType: !7, size: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2542, file: !1433, line: 447, baseType: !7, size: 32, offset: 32)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2464, file: !1433, line: 798, baseType: !2547, size: 384, offset: 3072)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1433, line: 592, size: 384, elements: !2548)
!2548 = !{!2549, !2550, !2551, !2552, !2553, !2554, !2555}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2547, file: !1433, line: 593, baseType: !222, size: 128)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2547, file: !1433, line: 594, baseType: !211, size: 64, offset: 128)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2547, file: !1433, line: 595, baseType: !211, size: 64, offset: 192)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2547, file: !1433, line: 596, baseType: !7, size: 32, offset: 256)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2547, file: !1433, line: 597, baseType: !245, size: 16, offset: 288)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2547, file: !1433, line: 598, baseType: !245, size: 16, offset: 304)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2547, file: !1433, line: 600, baseType: !2556, size: 64, offset: 320)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2464, file: !1433, line: 799, baseType: !2558, size: 1792, offset: 3456)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1433, line: 610, size: 1792, elements: !2559)
!2559 = !{!2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2646, !2647}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2558, file: !1433, line: 611, baseType: !770, size: 192, align: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2558, file: !1433, line: 618, baseType: !318, size: 64, offset: 192)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2558, file: !1433, line: 619, baseType: !318, size: 64, offset: 256)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2558, file: !1433, line: 620, baseType: !318, size: 64, offset: 320)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2558, file: !1433, line: 621, baseType: !318, size: 64, offset: 384)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2558, file: !1433, line: 622, baseType: !318, size: 64, offset: 448)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2558, file: !1433, line: 629, baseType: !639, size: 64, offset: 512)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2558, file: !1433, line: 630, baseType: !318, size: 64, offset: 576)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2558, file: !1433, line: 631, baseType: !7, size: 32, offset: 640)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2558, file: !1433, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2558, file: !1433, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2558, file: !1433, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2558, file: !1433, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2558, file: !1433, line: 662, baseType: !2574, size: 512, offset: 704)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !57, line: 118, size: 512, elements: !2575)
!2575 = !{!2576, !2584, !2585, !2590, !2642, !2643, !2644, !2645}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2574, file: !57, line: 119, baseType: !2577, size: 256)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2578, line: 9, size: 256, elements: !2579)
!2578 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2579 = !{!2580, !2581}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2577, file: !2578, line: 10, baseType: !770, size: 192, align: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2577, file: !2578, line: 11, baseType: !2582, size: 64, offset: 192)
!2582 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2583, line: 29, baseType: !639)
!2583 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2574, file: !57, line: 120, baseType: !2582, size: 64, offset: 256)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2574, file: !57, line: 121, baseType: !2586, size: 64, offset: 320)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!56, !2589}
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2574, file: !57, line: 122, baseType: !2591, size: 64, offset: 384)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !57, line: 159, size: 512, align: 512, elements: !2593)
!2593 = !{!2594, !2619, !2620, !2623, !2628, !2629, !2637, !2641}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2592, file: !57, line: 160, baseType: !2595, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !57, line: 215, size: 4608, align: 512, elements: !2597)
!2597 = !{!2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2596, file: !57, line: 216, baseType: !647, size: 32)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2596, file: !57, line: 217, baseType: !7, size: 32, offset: 32)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2596, file: !57, line: 218, baseType: !7, size: 32, offset: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2596, file: !57, line: 219, baseType: !7, size: 32, offset: 96)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2596, file: !57, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2596, file: !57, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2596, file: !57, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2596, file: !57, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2596, file: !57, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2596, file: !57, line: 226, baseType: !7, size: 32, offset: 160)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2596, file: !57, line: 227, baseType: !245, size: 16, offset: 192)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2596, file: !57, line: 228, baseType: !245, size: 16, offset: 208)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2596, file: !57, line: 229, baseType: !7, size: 32, offset: 224)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2596, file: !57, line: 235, baseType: !2582, size: 64, offset: 256)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2596, file: !57, line: 236, baseType: !2589, size: 64, offset: 320)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2596, file: !57, line: 237, baseType: !2582, size: 64, offset: 384)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2596, file: !57, line: 238, baseType: !2589, size: 64, offset: 448)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2596, file: !57, line: 239, baseType: !2616, size: 4096, align: 512, offset: 512)
!2616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2592, size: 4096, align: 512, elements: !2617)
!2617 = !{!2618}
!2618 = !DISubrange(count: 8)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2592, file: !57, line: 161, baseType: !7, size: 32, offset: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2592, file: !57, line: 162, baseType: !2621, size: 32, offset: 96)
!2621 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !223, line: 32, baseType: !2622)
!2622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !255, line: 96, baseType: !109)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2592, file: !57, line: 163, baseType: !2624, size: 32, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !285, line: 274, baseType: !2625)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !285, line: 274, size: 32, elements: !2626)
!2626 = !{!2627}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2625, file: !285, line: 274, baseType: !289, size: 32)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2592, file: !57, line: 164, baseType: !2589, size: 64, offset: 192)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2592, file: !57, line: 165, baseType: !2630, size: 128, offset: 256)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2578, line: 14, size: 128, elements: !2631)
!2631 = !{!2632}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2630, file: !2578, line: 15, baseType: !2633, size: 128)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !771, line: 26, size: 128, elements: !2634)
!2634 = !{!2635, !2636}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2633, file: !771, line: 27, baseType: !1645, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2633, file: !771, line: 28, baseType: !775, size: 64, offset: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2592, file: !57, line: 166, baseType: !2638, size: 64, offset: 384)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!2582}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2592, file: !57, line: 167, baseType: !2582, size: 64, offset: 448)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2574, file: !57, line: 123, baseType: !370, size: 8, offset: 448)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2574, file: !57, line: 124, baseType: !370, size: 8, offset: 456)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2574, file: !57, line: 125, baseType: !370, size: 8, offset: 464)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2574, file: !57, line: 126, baseType: !370, size: 8, offset: 472)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2558, file: !1433, line: 671, baseType: !2574, size: 512, offset: 1216)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2558, file: !1433, line: 679, baseType: !2648, size: 64, offset: 1728)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2464, file: !1433, line: 800, baseType: !2650, size: 64, offset: 5248)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2652)
!2652 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1433, line: 800, flags: DIFlagFwdDecl)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2464, file: !1433, line: 809, baseType: !2654, size: 64, offset: 5312)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1433, line: 70, flags: DIFlagFwdDecl)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2464, file: !1433, line: 825, baseType: !2657, size: 2048, align: 512, offset: 5632)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1433, line: 509, size: 2048, align: 512, elements: !2658)
!2658 = !{!2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2657, file: !1433, line: 511, baseType: !318, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2657, file: !1433, line: 512, baseType: !318, size: 64, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2657, file: !1433, line: 513, baseType: !318, size: 64, offset: 128)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2657, file: !1433, line: 514, baseType: !318, size: 64, offset: 192)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2657, file: !1433, line: 515, baseType: !318, size: 64, offset: 256)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2657, file: !1433, line: 516, baseType: !318, size: 64, offset: 320)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2657, file: !1433, line: 518, baseType: !318, size: 64, offset: 384)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2657, file: !1433, line: 519, baseType: !318, size: 64, offset: 448)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2657, file: !1433, line: 520, baseType: !639, size: 64, offset: 512)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2657, file: !1433, line: 522, baseType: !318, size: 64, offset: 576)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2657, file: !1433, line: 523, baseType: !318, size: 64, offset: 640)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2657, file: !1433, line: 524, baseType: !639, size: 64, offset: 704)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2657, file: !1433, line: 526, baseType: !639, size: 64, offset: 768)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2657, file: !1433, line: 527, baseType: !318, size: 64, offset: 832)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2657, file: !1433, line: 529, baseType: !318, size: 64, offset: 896)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2657, file: !1433, line: 530, baseType: !318, size: 64, offset: 960)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2657, file: !1433, line: 531, baseType: !318, size: 64, offset: 1024)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2657, file: !1433, line: 532, baseType: !318, size: 64, offset: 1088)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2657, file: !1433, line: 533, baseType: !318, size: 64, offset: 1152)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2657, file: !1433, line: 535, baseType: !318, size: 64, offset: 1216)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2657, file: !1433, line: 536, baseType: !318, size: 64, offset: 1280)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2657, file: !1433, line: 537, baseType: !318, size: 64, offset: 1344)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2657, file: !1433, line: 538, baseType: !318, size: 64, offset: 1408)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2657, file: !1433, line: 539, baseType: !318, size: 64, offset: 1472)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2657, file: !1433, line: 540, baseType: !318, size: 64, offset: 1536)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2657, file: !1433, line: 541, baseType: !318, size: 64, offset: 1600)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2657, file: !1433, line: 542, baseType: !318, size: 64, offset: 1664)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2657, file: !1433, line: 543, baseType: !318, size: 64, offset: 1728)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2464, file: !1433, line: 833, baseType: !7, size: 32, offset: 7680)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2464, file: !1433, line: 836, baseType: !7, size: 32, offset: 7712)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2464, file: !1433, line: 837, baseType: !109, size: 32, offset: 7744)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2464, file: !1433, line: 838, baseType: !2691, size: 64, offset: 7808)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2693)
!2693 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2694, line: 19, baseType: !2695)
!2694 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2694, line: 19, size: 64, elements: !2696)
!2696 = !{!2697}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2695, file: !2694, line: 19, baseType: !2698, size: 64)
!2698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 64, elements: !2699)
!2699 = !{!2700}
!2700 = !DISubrange(count: 1)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2464, file: !1433, line: 839, baseType: !2702, size: 64, offset: 7872)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2464, file: !1433, line: 840, baseType: !2693, size: 64, offset: 7936)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2464, file: !1433, line: 841, baseType: !205, size: 64, offset: 8000)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2464, file: !1433, line: 843, baseType: !245, size: 16, offset: 8064)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2464, file: !1433, line: 845, baseType: !245, size: 16, offset: 8080)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2464, file: !1433, line: 848, baseType: !109, size: 32, offset: 8096)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2464, file: !1433, line: 849, baseType: !2709, size: 32, offset: 8128)
!2709 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1433, line: 718, size: 32, elements: !2710)
!2710 = !{!2711, !2718}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2709, file: !1433, line: 724, baseType: !2712, size: 32)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2709, file: !1433, line: 719, size: 32, elements: !2713)
!2713 = !{!2714, !2715, !2716, !2717}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2712, file: !1433, line: 720, baseType: !370, size: 8)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2712, file: !1433, line: 721, baseType: !370, size: 8, offset: 8)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2712, file: !1433, line: 722, baseType: !370, size: 8, offset: 16)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2712, file: !1433, line: 723, baseType: !370, size: 8, offset: 24)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2709, file: !1433, line: 725, baseType: !312, size: 32)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2464, file: !1433, line: 850, baseType: !222, size: 128, offset: 8192)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2464, file: !1433, line: 851, baseType: !2721, size: 64, offset: 8320)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1433, line: 60, flags: DIFlagFwdDecl)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2464, file: !1433, line: 855, baseType: !211, size: 64, offset: 8384)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2464, file: !1433, line: 856, baseType: !370, size: 8, offset: 8448)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2464, file: !1433, line: 857, baseType: !370, size: 8, offset: 8456)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2464, file: !1433, line: 858, baseType: !109, size: 32, offset: 8480)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2464, file: !1433, line: 859, baseType: !222, size: 128, offset: 8512)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2464, file: !1433, line: 860, baseType: !109, size: 32, offset: 8640)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2464, file: !1433, line: 861, baseType: !222, size: 128, offset: 8704)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2464, file: !1433, line: 873, baseType: !2731, size: 256, offset: 8832)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1433, line: 376, size: 256, elements: !2732)
!2732 = !{!2733, !2734, !2735, !2736}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2731, file: !1433, line: 381, baseType: !211, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2731, file: !1433, line: 384, baseType: !320, size: 64, offset: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2731, file: !1433, line: 389, baseType: !320, size: 64, offset: 128)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2731, file: !1433, line: 392, baseType: !320, size: 64, offset: 192)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2464, file: !1433, line: 875, baseType: !222, size: 128, offset: 9088)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2464, file: !1433, line: 877, baseType: !2739, size: 320, offset: 9216)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2740, line: 86, size: 320, elements: !2741)
!2740 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2741 = !{!2742, !2743, !2744}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2739, file: !2740, line: 87, baseType: !109, size: 32)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2739, file: !2740, line: 88, baseType: !222, size: 128, offset: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2739, file: !2740, line: 89, baseType: !222, size: 128, offset: 192)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2464, file: !1433, line: 878, baseType: !770, size: 192, align: 64, offset: 9536)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2464, file: !1433, line: 881, baseType: !1135, size: 64, offset: 9728)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2464, file: !1433, line: 882, baseType: !1135, size: 64, offset: 9792)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2464, file: !1433, line: 884, baseType: !109, size: 32, offset: 9856)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2464, file: !1433, line: 885, baseType: !109, size: 32, offset: 9888)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2464, file: !1433, line: 886, baseType: !109, size: 32, offset: 9920)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2464, file: !1433, line: 888, baseType: !109, size: 32, offset: 9952)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2464, file: !1433, line: 890, baseType: !211, size: 64, offset: 9984)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2464, file: !1433, line: 893, baseType: !7, size: 32, offset: 10048)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2464, file: !1433, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2464, file: !1433, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2464, file: !1433, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2464, file: !1433, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2464, file: !1433, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2464, file: !1433, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2464, file: !1433, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2464, file: !1433, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2464, file: !1433, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2464, file: !1433, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2464, file: !1433, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2464, file: !1433, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2464, file: !1433, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2464, file: !1433, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2464, file: !1433, line: 969, baseType: !211, size: 64, offset: 10176)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2464, file: !1433, line: 971, baseType: !2770, size: 448, offset: 10240)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2771)
!2771 = !{!2772, !2773, !2778}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2770, file: !62, line: 26, baseType: !211, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2770, file: !62, line: 27, baseType: !2774, size: 64, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!565, !2777}
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, scope: !2770, file: !62, line: 28, baseType: !2779, size: 320, offset: 128)
!2779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2770, file: !62, line: 28, size: 320, elements: !2780)
!2780 = !{!2781, !2791, !2816}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2779, file: !62, line: 37, baseType: !2782, size: 320)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2779, file: !62, line: 30, size: 320, elements: !2783)
!2783 = !{!2784, !2786, !2787, !2788, !2789, !2790}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2782, file: !62, line: 31, baseType: !2785, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2782, file: !62, line: 32, baseType: !312, size: 32, offset: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2782, file: !62, line: 33, baseType: !312, size: 32, offset: 96)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2782, file: !62, line: 34, baseType: !312, size: 32, offset: 128)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2782, file: !62, line: 35, baseType: !318, size: 64, offset: 192)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2782, file: !62, line: 36, baseType: !2785, size: 64, offset: 256)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2779, file: !62, line: 47, baseType: !2792, size: 192)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2779, file: !62, line: 39, size: 192, elements: !2793)
!2793 = !{!2794, !2795, !2796, !2815}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2792, file: !62, line: 40, baseType: !2621, size: 32)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2792, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2796 = !DIDerivedType(tag: DW_TAG_member, scope: !2792, file: !62, line: 42, baseType: !2797, size: 64, offset: 64)
!2797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2792, file: !62, line: 42, size: 64, elements: !2798)
!2798 = !{!2799, !2807}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2797, file: !62, line: 43, baseType: !2800, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2802, line: 7, size: 128, elements: !2803)
!2802 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2803 = !{!2804, !2806}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2801, file: !2802, line: 8, baseType: !2805, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !255, line: 93, baseType: !451)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2801, file: !2802, line: 9, baseType: !451, size: 64, offset: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2797, file: !62, line: 44, baseType: !2808, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2810, line: 7, size: 64, elements: !2811)
!2810 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2811 = !{!2812, !2814}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2809, file: !2810, line: 8, baseType: !2813, size: 32)
!2813 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2810, line: 5, baseType: !763)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2809, file: !2810, line: 9, baseType: !763, size: 32, offset: 32)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2792, file: !62, line: 46, baseType: !318, size: 64, offset: 128)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2779, file: !62, line: 55, baseType: !2817, size: 256)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2779, file: !62, line: 49, size: 256, elements: !2818)
!2818 = !{!2819, !2822, !2823, !2824, !2825}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2817, file: !62, line: 50, baseType: !2820, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2817, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2817, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2817, file: !62, line: 53, baseType: !211, size: 64, offset: 128)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2817, file: !62, line: 54, baseType: !211, size: 64, offset: 192)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2464, file: !1433, line: 973, baseType: !2827, size: 32, offset: 10688)
!2827 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !223, line: 27, baseType: !2828)
!2828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !255, line: 28, baseType: !109)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2464, file: !1433, line: 974, baseType: !2827, size: 32, offset: 10720)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2464, file: !1433, line: 978, baseType: !211, size: 64, offset: 10752)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2464, file: !1433, line: 987, baseType: !2463, size: 64, offset: 10816)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2464, file: !1433, line: 990, baseType: !2463, size: 64, offset: 10880)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2464, file: !1433, line: 995, baseType: !222, size: 128, offset: 10944)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2464, file: !1433, line: 996, baseType: !222, size: 128, offset: 11072)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2464, file: !1433, line: 997, baseType: !2463, size: 64, offset: 11200)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2464, file: !1433, line: 1005, baseType: !222, size: 128, offset: 11264)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2464, file: !1433, line: 1006, baseType: !222, size: 128, offset: 11392)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2464, file: !1433, line: 1009, baseType: !681, size: 64, offset: 11520)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2464, file: !1433, line: 1010, baseType: !2840, size: 512, offset: 11584)
!2840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !697, size: 512, elements: !702)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2464, file: !1433, line: 1011, baseType: !222, size: 128, offset: 12096)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2464, file: !1433, line: 1012, baseType: !222, size: 128, offset: 12224)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2464, file: !1433, line: 1014, baseType: !1736, size: 64, offset: 12352)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2464, file: !1433, line: 1017, baseType: !1883, size: 64, offset: 12416)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2464, file: !1433, line: 1020, baseType: !1883, size: 64, offset: 12480)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2464, file: !1433, line: 1023, baseType: !205, size: 64, offset: 12544)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2464, file: !1433, line: 1025, baseType: !318, size: 64, offset: 12608)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2464, file: !1433, line: 1026, baseType: !318, size: 64, offset: 12672)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2464, file: !1433, line: 1031, baseType: !318, size: 64, offset: 12736)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2464, file: !1433, line: 1032, baseType: !2851, size: 192, offset: 12800)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1433, line: 324, size: 192, elements: !2852)
!2852 = !{!2853, !2854, !2855}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2851, file: !1433, line: 326, baseType: !318, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2851, file: !1433, line: 327, baseType: !318, size: 64, offset: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2851, file: !1433, line: 328, baseType: !647, size: 32, offset: 128)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2464, file: !1433, line: 1041, baseType: !211, size: 64, offset: 12992)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2464, file: !1433, line: 1042, baseType: !211, size: 64, offset: 13056)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2464, file: !1433, line: 1045, baseType: !318, size: 64, offset: 13120)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2464, file: !1433, line: 1048, baseType: !318, size: 64, offset: 13184)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2464, file: !1433, line: 1051, baseType: !211, size: 64, offset: 13248)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2464, file: !1433, line: 1052, baseType: !211, size: 64, offset: 13312)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2464, file: !1433, line: 1055, baseType: !2863, size: 640, offset: 13376)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2864, line: 132, size: 640, elements: !2865)
!2864 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2865 = !{!2866, !2872, !2873}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2863, file: !2864, line: 133, baseType: !2867, size: 576)
!2867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2868, size: 576, elements: !531)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2864, line: 117, size: 192, elements: !2869)
!2869 = !{!2870, !2871}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2868, file: !2864, line: 118, baseType: !318, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2868, file: !2864, line: 119, baseType: !2630, size: 128, offset: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2863, file: !2864, line: 134, baseType: !7, size: 32, offset: 576)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2863, file: !2864, line: 135, baseType: !7, size: 32, offset: 608)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2464, file: !1433, line: 1058, baseType: !2875, size: 448, offset: 14016)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2864, line: 144, size: 448, elements: !2876)
!2876 = !{!2877, !2878, !2879}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2875, file: !2864, line: 145, baseType: !620, size: 128, align: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2875, file: !2864, line: 146, baseType: !642, size: 256, offset: 128)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2875, file: !2864, line: 147, baseType: !7, size: 32, offset: 384)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2464, file: !1433, line: 1064, baseType: !728, size: 64, offset: 14464)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2464, file: !1433, line: 1067, baseType: !728, size: 64, offset: 14528)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2464, file: !1433, line: 1070, baseType: !728, size: 64, offset: 14592)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2464, file: !1433, line: 1074, baseType: !755, size: 64, offset: 14656)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2464, file: !1433, line: 1084, baseType: !2885, size: 128, offset: 14720)
!2885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 128, elements: !2886)
!2886 = !{!2887}
!2887 = !DISubrange(count: 16)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2464, file: !1433, line: 1086, baseType: !2889, size: 64, offset: 14848)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1433, line: 55, flags: DIFlagFwdDecl)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2464, file: !1433, line: 1089, baseType: !2892, size: 64, offset: 14912)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2893, line: 12, size: 64, elements: !2894)
!2893 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2894 = !{!2895}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2892, file: !2893, line: 13, baseType: !2896, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2893, line: 8, flags: DIFlagFwdDecl)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2464, file: !1433, line: 1090, baseType: !2899, size: 128, offset: 14976)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2900, line: 13, size: 128, elements: !2901)
!2900 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2901 = !{!2902}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2899, file: !2900, line: 14, baseType: !222, size: 128)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2464, file: !1433, line: 1097, baseType: !2904, size: 64, offset: 15104)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1433, line: 50, flags: DIFlagFwdDecl)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2464, file: !1433, line: 1100, baseType: !2907, size: 64, offset: 15168)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1433, line: 1100, flags: DIFlagFwdDecl)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2464, file: !1433, line: 1103, baseType: !2910, size: 64, offset: 15232)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1433, line: 53, flags: DIFlagFwdDecl)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2464, file: !1433, line: 1107, baseType: !2913, size: 64, offset: 15296)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1433, line: 56, flags: DIFlagFwdDecl)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2464, file: !1433, line: 1110, baseType: !2916, size: 64, offset: 15360)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2918, line: 93, size: 8768, elements: !2919)
!2918 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2919 = !{!2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2967, !2976, !2977, !2979, !2980, !2981, !2984, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3022, !3023, !3030, !3040, !3043, !3044, !3047, !3048, !3049, !3050, !3051, !3052}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2917, file: !2918, line: 94, baseType: !685, size: 32)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2917, file: !2918, line: 95, baseType: !362, size: 32, offset: 32)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2917, file: !2918, line: 96, baseType: !109, size: 32, offset: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2917, file: !2918, line: 97, baseType: !109, size: 32, offset: 96)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2917, file: !2918, line: 98, baseType: !222, size: 128, offset: 128)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2917, file: !2918, line: 100, baseType: !706, size: 192, offset: 256)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2917, file: !2918, line: 103, baseType: !2463, size: 64, offset: 448)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2917, file: !2918, line: 106, baseType: !2928, size: 192, offset: 512)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !925, line: 32, size: 192, elements: !2929)
!2929 = !{!2930, !2931}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2928, file: !925, line: 33, baseType: !222, size: 128)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2928, file: !925, line: 34, baseType: !2932, size: 64, offset: 128)
!2932 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2933, line: 25, baseType: !2934)
!2933 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2933, line: 23, size: 64, elements: !2935)
!2935 = !{!2936}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2934, file: !2933, line: 24, baseType: !2698, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2917, file: !2918, line: 109, baseType: !693, size: 64, offset: 704)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2917, file: !2918, line: 112, baseType: !109, size: 32, offset: 768)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2917, file: !2918, line: 114, baseType: !109, size: 32, offset: 800)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2917, file: !2918, line: 115, baseType: !2463, size: 64, offset: 832)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2917, file: !2918, line: 118, baseType: !109, size: 32, offset: 896)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2917, file: !2918, line: 119, baseType: !7, size: 32, offset: 928)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2917, file: !2918, line: 121, baseType: !2944, size: 64, offset: 960)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2918, line: 80, size: 448, elements: !2946)
!2946 = !{!2947, !2948, !2954}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2945, file: !2918, line: 81, baseType: !362, size: 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2945, file: !2918, line: 82, baseType: !2949, size: 128, offset: 64)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2918, line: 75, size: 128, elements: !2950)
!2950 = !{!2951, !2952}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2949, file: !2918, line: 76, baseType: !2463, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2949, file: !2918, line: 77, baseType: !2953, size: 64, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2945, file: !2918, line: 83, baseType: !1737, size: 256, offset: 192)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2917, file: !2918, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2917, file: !2918, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2917, file: !2918, line: 138, baseType: !7, size: 32, offset: 1056)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2917, file: !2918, line: 139, baseType: !222, size: 128, offset: 1088)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2917, file: !2918, line: 142, baseType: !2574, size: 512, offset: 1216)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2917, file: !2918, line: 143, baseType: !2582, size: 64, offset: 1728)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2917, file: !2918, line: 150, baseType: !2962, size: 256, offset: 1792)
!2962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2963, size: 256, elements: !1873)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2918, line: 38, size: 128, elements: !2964)
!2964 = !{!2965, !2966}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2963, file: !2918, line: 39, baseType: !318, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2963, file: !2918, line: 40, baseType: !318, size: 64, offset: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2917, file: !2918, line: 156, baseType: !2968, size: 192, offset: 2048)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2918, line: 66, size: 192, elements: !2969)
!2969 = !{!2970}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2968, file: !2918, line: 67, baseType: !2971, size: 192)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2918, line: 47, size: 192, elements: !2972)
!2972 = !{!2973, !2974, !2975}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2971, file: !2918, line: 48, baseType: !635, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2971, file: !2918, line: 49, baseType: !635, size: 64, offset: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2971, file: !2918, line: 50, baseType: !635, size: 64, offset: 128)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2917, file: !2918, line: 160, baseType: !2863, size: 640, offset: 2240)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2917, file: !2918, line: 163, baseType: !2978, size: 256, offset: 2880)
!2978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !681, size: 256, elements: !702)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2917, file: !2918, line: 169, baseType: !681, size: 64, offset: 3136)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2917, file: !2918, line: 172, baseType: !109, size: 32, offset: 3200)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2917, file: !2918, line: 174, baseType: !2982, size: 64, offset: 3264)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2918, line: 174, flags: DIFlagFwdDecl)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2917, file: !2918, line: 185, baseType: !2985, size: 64, offset: 3328)
!2985 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !285, line: 860, baseType: !2986)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !285, line: 853, size: 64, elements: !2987)
!2987 = !{!2988, !2989}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2986, file: !285, line: 858, baseType: !284, size: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2986, file: !285, line: 859, baseType: !342, size: 32, offset: 32)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2917, file: !2918, line: 186, baseType: !318, size: 64, offset: 3392)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2917, file: !2918, line: 186, baseType: !318, size: 64, offset: 3456)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2917, file: !2918, line: 186, baseType: !318, size: 64, offset: 3520)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2917, file: !2918, line: 186, baseType: !318, size: 64, offset: 3584)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2917, file: !2918, line: 187, baseType: !318, size: 64, offset: 3648)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2917, file: !2918, line: 188, baseType: !318, size: 64, offset: 3712)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2917, file: !2918, line: 189, baseType: !2851, size: 192, offset: 3776)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2917, file: !2918, line: 190, baseType: !211, size: 64, offset: 3968)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2917, file: !2918, line: 190, baseType: !211, size: 64, offset: 4032)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2917, file: !2918, line: 190, baseType: !211, size: 64, offset: 4096)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2917, file: !2918, line: 190, baseType: !211, size: 64, offset: 4160)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2917, file: !2918, line: 191, baseType: !211, size: 64, offset: 4224)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2917, file: !2918, line: 191, baseType: !211, size: 64, offset: 4288)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2917, file: !2918, line: 191, baseType: !211, size: 64, offset: 4352)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2917, file: !2918, line: 191, baseType: !211, size: 64, offset: 4416)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2917, file: !2918, line: 192, baseType: !211, size: 64, offset: 4480)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2917, file: !2918, line: 192, baseType: !211, size: 64, offset: 4544)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2917, file: !2918, line: 192, baseType: !211, size: 64, offset: 4608)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2917, file: !2918, line: 192, baseType: !211, size: 64, offset: 4672)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2917, file: !2918, line: 193, baseType: !211, size: 64, offset: 4736)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2917, file: !2918, line: 193, baseType: !211, size: 64, offset: 4800)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2917, file: !2918, line: 194, baseType: !3012, size: 448, offset: 4864)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3013, line: 12, size: 448, elements: !3014)
!3013 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3014 = !{!3015, !3016, !3017, !3018, !3019, !3020, !3021}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3012, file: !3013, line: 15, baseType: !318, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3012, file: !3013, line: 17, baseType: !318, size: 64, offset: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3012, file: !3013, line: 19, baseType: !318, size: 64, offset: 128)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3012, file: !3013, line: 21, baseType: !318, size: 64, offset: 192)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3012, file: !3013, line: 29, baseType: !318, size: 64, offset: 256)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3012, file: !3013, line: 35, baseType: !318, size: 64, offset: 320)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3012, file: !3013, line: 44, baseType: !318, size: 64, offset: 384)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2917, file: !2918, line: 202, baseType: !320, size: 64, offset: 5312)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2917, file: !2918, line: 213, baseType: !3024, size: 2048, offset: 5376)
!3024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3025, size: 2048, elements: !2886)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3026, line: 43, size: 128, elements: !3027)
!3026 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3027 = !{!3028, !3029}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3025, file: !3026, line: 44, baseType: !577, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3025, file: !3026, line: 45, baseType: !577, size: 64, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2917, file: !2918, line: 216, baseType: !3031, size: 448, offset: 7424)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2918, line: 30, size: 448, elements: !3032)
!3032 = !{!3033, !3034, !3035, !3036, !3037, !3038, !3039}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3031, file: !2918, line: 31, baseType: !109, size: 32)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3031, file: !2918, line: 32, baseType: !565, size: 64, offset: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3031, file: !2918, line: 33, baseType: !211, size: 64, offset: 128)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3031, file: !2918, line: 34, baseType: !318, size: 64, offset: 192)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3031, file: !2918, line: 34, baseType: !318, size: 64, offset: 256)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3031, file: !2918, line: 35, baseType: !211, size: 64, offset: 320)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3031, file: !2918, line: 35, baseType: !211, size: 64, offset: 384)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2917, file: !2918, line: 219, baseType: !3041, size: 64, offset: 7872)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2918, line: 219, flags: DIFlagFwdDecl)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2917, file: !2918, line: 222, baseType: !7, size: 32, offset: 7936)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2917, file: !2918, line: 223, baseType: !3045, size: 64, offset: 8000)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2918, line: 223, flags: DIFlagFwdDecl)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2917, file: !2918, line: 230, baseType: !837, size: 8, offset: 8064)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2917, file: !2918, line: 231, baseType: !806, size: 16, offset: 8080)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2917, file: !2918, line: 232, baseType: !806, size: 16, offset: 8096)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2917, file: !2918, line: 234, baseType: !1135, size: 64, offset: 8128)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2917, file: !2918, line: 237, baseType: !642, size: 256, offset: 8192)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2917, file: !2918, line: 243, baseType: !778, size: 320, offset: 8448)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2464, file: !1433, line: 1111, baseType: !3054, size: 64, offset: 15424)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2918, line: 20, size: 16640, elements: !3056)
!3056 = !{!3057, !3058, !3059, !3060}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3055, file: !2918, line: 21, baseType: !342, size: 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3055, file: !2918, line: 22, baseType: !685, size: 32, offset: 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3055, file: !2918, line: 23, baseType: !706, size: 192, offset: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3055, file: !2918, line: 24, baseType: !3061, size: 16384, offset: 256)
!3061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3062, size: 16384, elements: !535)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !925, line: 51, size: 256, elements: !3063)
!3063 = !{!3064}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3062, file: !925, line: 52, baseType: !3065, size: 256)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !925, line: 37, size: 256, elements: !3066)
!3066 = !{!3067, !3074, !3075, !3079}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3065, file: !925, line: 39, baseType: !3068, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3069, line: 83, baseType: !3070)
!3069 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3069, line: 82, baseType: !3072)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{null, !109}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3065, file: !925, line: 40, baseType: !211, size: 64, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3065, file: !925, line: 46, baseType: !3076, size: 64, offset: 128)
!3076 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3069, line: 86, baseType: !3077)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3069, line: 85, baseType: !2088)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3065, file: !925, line: 48, baseType: !2932, size: 64, offset: 192)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2464, file: !1433, line: 1112, baseType: !2932, size: 64, offset: 15488)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2464, file: !1433, line: 1113, baseType: !2932, size: 64, offset: 15552)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2464, file: !1433, line: 1115, baseType: !2932, size: 64, offset: 15616)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2464, file: !1433, line: 1116, baseType: !2928, size: 192, offset: 15680)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2464, file: !1433, line: 1117, baseType: !211, size: 64, offset: 15872)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2464, file: !1433, line: 1118, baseType: !575, size: 64, offset: 15936)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2464, file: !1433, line: 1119, baseType: !7, size: 32, offset: 16000)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2464, file: !1433, line: 1121, baseType: !623, size: 64, offset: 16064)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2464, file: !1433, line: 1125, baseType: !3089, size: 64, offset: 16128)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1433, line: 43, flags: DIFlagFwdDecl)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2464, file: !1433, line: 1127, baseType: !248, size: 32, offset: 16192)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2464, file: !1433, line: 1128, baseType: !7, size: 32, offset: 16224)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2464, file: !1433, line: 1130, baseType: !3094, size: 128, offset: 16256)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3095, line: 37, size: 128, elements: !3096)
!3095 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3096 = !{!3097, !3098, !3099}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3094, file: !3095, line: 38, baseType: !109, size: 32)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3094, file: !3095, line: 39, baseType: !362, size: 32, offset: 32)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3094, file: !3095, line: 40, baseType: !3100, size: 64, offset: 64)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3095, line: 24, flags: DIFlagFwdDecl)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2464, file: !1433, line: 1131, baseType: !3103, size: 256, offset: 16384)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3104, line: 12, size: 256, elements: !3105)
!3104 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3105 = !{!3106, !3107, !3108, !3109}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3103, file: !3104, line: 13, baseType: !428, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3103, file: !3104, line: 14, baseType: !211, size: 64, offset: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3103, file: !3104, line: 15, baseType: !211, size: 64, offset: 128)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3103, file: !3104, line: 16, baseType: !837, size: 8, offset: 192)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2464, file: !1433, line: 1134, baseType: !318, size: 64, offset: 16640)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2464, file: !1433, line: 1135, baseType: !318, size: 64, offset: 16704)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2464, file: !1433, line: 1138, baseType: !342, size: 32, offset: 16768)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2464, file: !1433, line: 1141, baseType: !647, size: 32, offset: 16800)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2464, file: !1433, line: 1143, baseType: !3115, size: 64, offset: 16832)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1433, line: 735, size: 64, elements: !3116)
!3116 = !{!3117}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3115, file: !1433, line: 736, baseType: !3118, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2464, file: !1433, line: 1147, baseType: !2633, size: 128, offset: 16896)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2464, file: !1433, line: 1149, baseType: !2463, size: 64, offset: 17024)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2464, file: !1433, line: 1151, baseType: !3122, size: 64, offset: 17088)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !3124, line: 64, flags: DIFlagFwdDecl)
!3124 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3b60a10bef9e89c790a516317bab43b")
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2464, file: !1433, line: 1188, baseType: !205, size: 64, offset: 17152)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2464, file: !1433, line: 1191, baseType: !3127, size: 64, offset: 17216)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1433, line: 44, flags: DIFlagFwdDecl)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2464, file: !1433, line: 1194, baseType: !3130, size: 64, offset: 17280)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1433, line: 45, flags: DIFlagFwdDecl)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2464, file: !1433, line: 1197, baseType: !3133, size: 64, offset: 17344)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1433, line: 61, flags: DIFlagFwdDecl)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2464, file: !1433, line: 1199, baseType: !3136, size: 64, offset: 17408)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3138, line: 99, size: 128, elements: !3139)
!3138 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3139 = !{!3140, !3141, !3142}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3137, file: !3138, line: 100, baseType: !633, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3137, file: !3138, line: 101, baseType: !362, size: 32, offset: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3137, file: !3138, line: 103, baseType: !245, size: 16, offset: 96)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2464, file: !1433, line: 1202, baseType: !3144, size: 64, offset: 17472)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1433, line: 48, flags: DIFlagFwdDecl)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2464, file: !1433, line: 1205, baseType: !211, size: 64, offset: 17536)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2464, file: !1433, line: 1206, baseType: !3148, size: 64, offset: 17600)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !925, line: 14, baseType: !3150)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !925, line: 12, size: 384, elements: !3151)
!3151 = !{!3152}
!3152 = !DIDerivedType(tag: DW_TAG_member, scope: !3150, file: !925, line: 13, baseType: !3153, size: 384)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3150, file: !925, line: 13, size: 384, elements: !3154)
!3154 = !{!3155, !3156, !3157, !3158}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3153, file: !925, line: 13, baseType: !109, size: 32)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3153, file: !925, line: 13, baseType: !109, size: 32, offset: 32)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3153, file: !925, line: 13, baseType: !109, size: 32, offset: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3153, file: !925, line: 13, baseType: !3159, size: 256, offset: 128)
!3159 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3160, line: 37, size: 256, elements: !3161)
!3160 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3161 = !{!3162, !3167, !3180, !3186, !3195, !3222, !3227}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3159, file: !3160, line: 42, baseType: !3163, size: 64)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3159, file: !3160, line: 39, size: 64, elements: !3164)
!3164 = !{!3165, !3166}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3163, file: !3160, line: 40, baseType: !2828, size: 32)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3163, file: !3160, line: 41, baseType: !254, size: 32, offset: 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3159, file: !3160, line: 50, baseType: !3168, size: 192)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3159, file: !3160, line: 45, size: 192, elements: !3169)
!3169 = !{!3170, !3172, !3173, !3179}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3168, file: !3160, line: 46, baseType: !3171, size: 32)
!3171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !255, line: 95, baseType: !109)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3168, file: !3160, line: 47, baseType: !109, size: 32, offset: 32)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3168, file: !3160, line: 48, baseType: !3174, size: 64, offset: 64)
!3174 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3160, line: 11, baseType: !3175)
!3175 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3160, line: 8, size: 64, elements: !3176)
!3176 = !{!3177, !3178}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3175, file: !3160, line: 9, baseType: !109, size: 32)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3175, file: !3160, line: 10, baseType: !205, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3168, file: !3160, line: 49, baseType: !109, size: 32, offset: 128)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3159, file: !3160, line: 57, baseType: !3181, size: 128)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3159, file: !3160, line: 53, size: 128, elements: !3182)
!3182 = !{!3183, !3184, !3185}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3181, file: !3160, line: 54, baseType: !2828, size: 32)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3181, file: !3160, line: 55, baseType: !254, size: 32, offset: 32)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3181, file: !3160, line: 56, baseType: !3174, size: 64, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3159, file: !3160, line: 66, baseType: !3187, size: 256)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3159, file: !3160, line: 60, size: 256, elements: !3188)
!3188 = !{!3189, !3190, !3191, !3192, !3194}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3187, file: !3160, line: 61, baseType: !2828, size: 32)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3187, file: !3160, line: 62, baseType: !254, size: 32, offset: 32)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3187, file: !3160, line: 63, baseType: !109, size: 32, offset: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3187, file: !3160, line: 64, baseType: !3193, size: 64, offset: 128)
!3193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !255, line: 94, baseType: !564)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3187, file: !3160, line: 65, baseType: !3193, size: 64, offset: 192)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3159, file: !3160, line: 105, baseType: !3196, size: 256)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3159, file: !3160, line: 69, size: 256, elements: !3197)
!3197 = !{!3198, !3199}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3196, file: !3160, line: 70, baseType: !205, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, scope: !3196, file: !3160, line: 79, baseType: !3200, size: 192, offset: 64)
!3200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3196, file: !3160, line: 79, size: 192, elements: !3201)
!3201 = !{!3202, !3203, !3204, !3211, !3216}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3200, file: !3160, line: 81, baseType: !109, size: 32)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3200, file: !3160, line: 86, baseType: !806, size: 16)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3200, file: !3160, line: 92, baseType: !3205, size: 192)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3200, file: !3160, line: 88, size: 192, elements: !3206)
!3206 = !{!3207, !3209, !3210}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3205, file: !3160, line: 89, baseType: !3208, size: 64)
!3208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 64, elements: !2617)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3205, file: !3160, line: 90, baseType: !205, size: 64, offset: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3205, file: !3160, line: 91, baseType: !205, size: 64, offset: 128)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3200, file: !3160, line: 97, baseType: !3212, size: 96)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3200, file: !3160, line: 94, size: 96, elements: !3213)
!3213 = !{!3214, !3215}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3212, file: !3160, line: 95, baseType: !3208, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3212, file: !3160, line: 96, baseType: !314, size: 32, offset: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3200, file: !3160, line: 103, baseType: !3217, size: 128)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3200, file: !3160, line: 99, size: 128, elements: !3218)
!3218 = !{!3219, !3220, !3221}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3217, file: !3160, line: 100, baseType: !211, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3217, file: !3160, line: 101, baseType: !314, size: 32, offset: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3217, file: !3160, line: 102, baseType: !314, size: 32, offset: 96)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3159, file: !3160, line: 111, baseType: !3223, size: 128)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3159, file: !3160, line: 108, size: 128, elements: !3224)
!3224 = !{!3225, !3226}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3223, file: !3160, line: 109, baseType: !565, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3223, file: !3160, line: 110, baseType: !109, size: 32, offset: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3159, file: !3160, line: 118, baseType: !3228, size: 128)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3159, file: !3160, line: 114, size: 128, elements: !3229)
!3229 = !{!3230, !3231, !3232}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3228, file: !3160, line: 115, baseType: !205, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3228, file: !3160, line: 116, baseType: !109, size: 32, offset: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3228, file: !3160, line: 117, baseType: !7, size: 32, offset: 96)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2464, file: !1433, line: 1208, baseType: !3012, size: 448, offset: 17664)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2464, file: !1433, line: 1215, baseType: !318, size: 64, offset: 18112)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2464, file: !1433, line: 1217, baseType: !318, size: 64, offset: 18176)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2464, file: !1433, line: 1219, baseType: !318, size: 64, offset: 18240)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2464, file: !1433, line: 1223, baseType: !3238, size: 64, offset: 18304)
!3238 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3239, line: 99, baseType: !3240)
!3239 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3239, line: 99, size: 64, elements: !3241)
!3241 = !{!3242}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3240, file: !3239, line: 99, baseType: !2698, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2464, file: !1433, line: 1225, baseType: !284, size: 32, offset: 18368)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2464, file: !1433, line: 1226, baseType: !109, size: 32, offset: 18400)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2464, file: !1433, line: 1227, baseType: !109, size: 32, offset: 18432)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2464, file: !1433, line: 1231, baseType: !3247, size: 64, offset: 18496)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1433, line: 1231, flags: DIFlagFwdDecl)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2464, file: !1433, line: 1233, baseType: !222, size: 128, offset: 18560)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2464, file: !1433, line: 1240, baseType: !3251, size: 64, offset: 18688)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1433, line: 62, flags: DIFlagFwdDecl)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2464, file: !1433, line: 1242, baseType: !3254, size: 64, offset: 18752)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1433, line: 1242, flags: DIFlagFwdDecl)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2464, file: !1433, line: 1244, baseType: !222, size: 128, offset: 18816)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2464, file: !1433, line: 1245, baseType: !3258, size: 64, offset: 18944)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1433, line: 51, flags: DIFlagFwdDecl)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2464, file: !1433, line: 1246, baseType: !642, size: 256, offset: 19008)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2464, file: !1433, line: 1247, baseType: !7, size: 32, offset: 19264)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2464, file: !1433, line: 1250, baseType: !3263, size: 64, offset: 19328)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1433, line: 57, flags: DIFlagFwdDecl)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2464, file: !1433, line: 1251, baseType: !642, size: 256, offset: 19392)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2464, file: !1433, line: 1252, baseType: !222, size: 128, offset: 19648)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2464, file: !1433, line: 1259, baseType: !1431, size: 64, offset: 19776)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2464, file: !1433, line: 1260, baseType: !806, size: 16, offset: 19840)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2464, file: !1433, line: 1261, baseType: !806, size: 16, offset: 19856)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2464, file: !1433, line: 1314, baseType: !3271, size: 64, offset: 19904)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3273, line: 62, size: 256, align: 256, elements: !3274)
!3273 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3274 = !{!3275, !3276, !3277, !3278, !3279, !3280, !3281}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3272, file: !3273, line: 75, baseType: !314, size: 32)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3272, file: !3273, line: 90, baseType: !314, size: 32, offset: 32)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3272, file: !3273, line: 112, baseType: !319, size: 64, offset: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3272, file: !3273, line: 132, baseType: !314, size: 32, offset: 128)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3272, file: !3273, line: 140, baseType: !314, size: 32, offset: 160)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3272, file: !3273, line: 149, baseType: !314, size: 32, offset: 192)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3272, file: !3273, line: 154, baseType: !3282, offset: 224)
!3282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, elements: !721)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2464, file: !1433, line: 1315, baseType: !312, size: 32, offset: 19968)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2464, file: !1433, line: 1316, baseType: !312, size: 32, offset: 20000)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2464, file: !1433, line: 1321, baseType: !211, size: 64, offset: 20032)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2464, file: !1433, line: 1325, baseType: !109, size: 32, offset: 20096)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2464, file: !1433, line: 1326, baseType: !109, size: 32, offset: 20128)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2464, file: !1433, line: 1327, baseType: !109, size: 32, offset: 20160)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2464, file: !1433, line: 1328, baseType: !109, size: 32, offset: 20192)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2464, file: !1433, line: 1329, baseType: !620, size: 128, align: 64, offset: 20224)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2464, file: !1433, line: 1332, baseType: !3292, size: 128, offset: 20352)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3293, line: 51, size: 128, elements: !3294)
!3293 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3294 = !{!3295, !3300, !3301}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3292, file: !3293, line: 60, baseType: !3296, size: 64)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3297, line: 7, size: 64, elements: !3298)
!3297 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3298 = !{!3299}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3296, file: !3297, line: 12, baseType: !2695, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3292, file: !3293, line: 63, baseType: !837, size: 8, offset: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3292, file: !3293, line: 70, baseType: !837, size: 8, offset: 72)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2464, file: !1433, line: 1335, baseType: !1484, size: 64, offset: 20480)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2464, file: !1433, line: 1337, baseType: !3304, size: 128, offset: 20544)
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3293, line: 39, size: 128, elements: !3305)
!3305 = !{!3306, !3307, !3308}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3304, file: !3293, line: 40, baseType: !207, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3304, file: !3293, line: 42, baseType: !314, size: 32, offset: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3304, file: !3293, line: 43, baseType: !314, size: 32, offset: 96)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2464, file: !1433, line: 1340, baseType: !3310, size: 64, offset: 20672)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1433, line: 69, flags: DIFlagFwdDecl)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2464, file: !1433, line: 1351, baseType: !109, size: 32, offset: 20736)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2464, file: !1433, line: 1352, baseType: !109, size: 32, offset: 20768)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2464, file: !1433, line: 1354, baseType: !211, size: 64, offset: 20800)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2464, file: !1433, line: 1364, baseType: !318, size: 64, offset: 20864)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2464, file: !1433, line: 1365, baseType: !318, size: 64, offset: 20928)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2464, file: !1433, line: 1412, baseType: !211, size: 64, offset: 20992)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2464, file: !1433, line: 1453, baseType: !3319, size: 64, offset: 21056)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1433, line: 1453, flags: DIFlagFwdDecl)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2464, file: !1433, line: 1457, baseType: !3322, size: 64, offset: 21120)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3324)
!3324 = !{!3325, !3326, !3345, !3348, !3349, !3382, !3392}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3323, file: !68, line: 62, baseType: !67, size: 32)
!3326 = !DIDerivedType(tag: DW_TAG_member, scope: !3323, file: !68, line: 64, baseType: !3327, size: 192, offset: 64)
!3327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3323, file: !68, line: 64, size: 192, elements: !3328)
!3328 = !{!3329, !3340}
!3329 = !DIDerivedType(tag: DW_TAG_member, scope: !3327, file: !68, line: 65, baseType: !3330, size: 192)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3327, file: !68, line: 65, size: 192, elements: !3331)
!3331 = !{!3332, !3339}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3330, file: !68, line: 66, baseType: !3333, size: 128)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3334, line: 50, size: 128, elements: !3335)
!3334 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3335 = !{!3336, !3337, !3338}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3333, file: !3334, line: 52, baseType: !211, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3333, file: !3334, line: 54, baseType: !7, size: 32, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3333, file: !3334, line: 55, baseType: !7, size: 32, offset: 96)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3330, file: !68, line: 67, baseType: !211, size: 64, offset: 128)
!3340 = !DIDerivedType(tag: DW_TAG_member, scope: !3327, file: !68, line: 70, baseType: !3341, size: 192)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3327, file: !68, line: 70, size: 192, elements: !3342)
!3342 = !{!3343, !3344}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3341, file: !68, line: 71, baseType: !620, size: 128, align: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3341, file: !68, line: 72, baseType: !211, size: 64, offset: 128)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3323, file: !68, line: 76, baseType: !3346, size: 64, offset: 256)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3323, file: !68, line: 77, baseType: !211, size: 64, offset: 320)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3323, file: !68, line: 79, baseType: !3350, size: 64, offset: 384)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3334, line: 25, size: 256, elements: !3352)
!3352 = !{!3353, !3359, !3363}
!3353 = !DIDerivedType(tag: DW_TAG_member, scope: !3351, file: !3334, line: 26, baseType: !3354, size: 128)
!3354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3351, file: !3334, line: 26, size: 128, elements: !3355)
!3355 = !{!3356, !3358}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3354, file: !3334, line: 27, baseType: !3357, size: 128)
!3357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 128, elements: !2886)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3354, file: !3334, line: 28, baseType: !3357, size: 128)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3351, file: !3334, line: 31, baseType: !3360, size: 64, offset: 128)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3362)
!3362 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3334, line: 23, flags: DIFlagFwdDecl)
!3363 = !DIDerivedType(tag: DW_TAG_member, scope: !3351, file: !3334, line: 33, baseType: !3364, size: 64, offset: 192)
!3364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3351, file: !3334, line: 33, size: 64, elements: !3365)
!3365 = !{!3366, !3372, !3377}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3364, file: !3334, line: 38, baseType: !3367, size: 64)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3364, file: !3334, line: 34, size: 64, elements: !3368)
!3368 = !{!3369, !3370, !3371}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3367, file: !3334, line: 35, baseType: !763, size: 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3367, file: !3334, line: 36, baseType: !370, size: 8, offset: 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3367, file: !3334, line: 37, baseType: !370, size: 8, offset: 40)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3364, file: !3334, line: 42, baseType: !3373, size: 16)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3364, file: !3334, line: 39, size: 16, elements: !3374)
!3374 = !{!3375, !3376}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3373, file: !3334, line: 40, baseType: !370, size: 8)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3373, file: !3334, line: 41, baseType: !370, size: 8, offset: 8)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3364, file: !3334, line: 46, baseType: !3378, size: 16)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3364, file: !3334, line: 43, size: 16, elements: !3379)
!3379 = !{!3380, !3381}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3378, file: !3334, line: 44, baseType: !370, size: 8)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3378, file: !3334, line: 45, baseType: !370, size: 8, offset: 8)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3323, file: !68, line: 81, baseType: !3383, size: 64, offset: 448)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3385)
!3385 = !{!3386, !3387, !3388, !3389, !3390, !3391}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3384, file: !68, line: 86, baseType: !3346, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3384, file: !68, line: 87, baseType: !211, size: 64, offset: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3384, file: !68, line: 88, baseType: !211, size: 64, offset: 128)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3384, file: !68, line: 89, baseType: !211, size: 64, offset: 192)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3384, file: !68, line: 90, baseType: !837, size: 8, offset: 256)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3384, file: !68, line: 92, baseType: !3383, size: 64, offset: 320)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3323, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2464, file: !1433, line: 1463, baseType: !3394, offset: 21184)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1433, line: 739, elements: !1156)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2464, file: !1433, line: 1470, baseType: !620, size: 128, align: 64, offset: 21184)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2464, file: !1433, line: 1471, baseType: !685, size: 32, offset: 21312)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2464, file: !1433, line: 1472, baseType: !109, size: 32, offset: 21344)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2464, file: !1433, line: 1474, baseType: !2463, size: 64, offset: 21376)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2464, file: !1433, line: 1475, baseType: !1983, size: 320, offset: 21440)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2464, file: !1433, line: 1478, baseType: !3401, size: 64, offset: 21760)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3403, line: 49, size: 512, elements: !3404)
!3403 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3404 = !{!3405, !3406, !3407, !3408, !3409, !3411, !3412, !3413, !3415}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3402, file: !3403, line: 50, baseType: !3401, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3402, file: !3403, line: 51, baseType: !205, size: 64, offset: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3402, file: !3403, line: 52, baseType: !211, size: 64, offset: 128)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3402, file: !3403, line: 53, baseType: !211, size: 64, offset: 192)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3402, file: !3403, line: 54, baseType: !3410, size: 64, offset: 256)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3402, file: !3403, line: 56, baseType: !7, size: 32, offset: 320)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3402, file: !3403, line: 58, baseType: !7, size: 32, offset: 352)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3402, file: !3403, line: 59, baseType: !3414, size: 64, offset: 384)
!3414 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !223, line: 159, baseType: !318)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3402, file: !3403, line: 60, baseType: !1251, size: 64, offset: 448)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2464, file: !1433, line: 1482, baseType: !685, size: 32, offset: 21824)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2464, file: !1433, line: 1489, baseType: !205, size: 64, offset: 21888)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2464, file: !1433, line: 1504, baseType: !205, size: 64, offset: 21952)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2464, file: !1433, line: 1505, baseType: !319, size: 64, offset: 22016)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2464, file: !1433, line: 1506, baseType: !318, size: 64, offset: 22080)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2464, file: !1433, line: 1507, baseType: !319, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2464, file: !1433, line: 1508, baseType: !319, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2464, file: !1433, line: 1509, baseType: !319, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2464, file: !1433, line: 1510, baseType: !620, size: 128, align: 64, offset: 22208)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2464, file: !1433, line: 1511, baseType: !109, size: 32, offset: 22336)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2464, file: !1433, line: 1515, baseType: !3427, size: 64, offset: 22400)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !615, line: 56, size: 64, elements: !3428)
!3428 = !{!3429}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3427, file: !615, line: 57, baseType: !618, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2464, file: !1433, line: 1518, baseType: !3427, size: 64, offset: 22464)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2464, file: !1433, line: 1528, baseType: !620, size: 128, align: 64, offset: 22528)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2464, file: !1433, line: 1552, baseType: !3433, size: 35328, offset: 23040)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3434, line: 430, size: 35328, elements: !3435)
!3434 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3435 = !{!3436, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3465, !3466, !3467, !3468, !3469, !3470, !3473, !3474, !3475, !3476}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3433, file: !3434, line: 432, baseType: !3437, size: 192)
!3437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3438, size: 192, elements: !531)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3439, line: 16, size: 64, elements: !3440)
!3439 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3440 = !{!3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3438, file: !3439, line: 17, baseType: !377, size: 16)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3438, file: !3439, line: 18, baseType: !377, size: 16, offset: 16)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3438, file: !3439, line: 19, baseType: !377, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3438, file: !3439, line: 19, baseType: !377, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3438, file: !3439, line: 19, baseType: !377, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3438, file: !3439, line: 19, baseType: !377, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3438, file: !3439, line: 19, baseType: !377, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3438, file: !3439, line: 20, baseType: !377, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3438, file: !3439, line: 20, baseType: !377, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3438, file: !3439, line: 20, baseType: !377, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3438, file: !3439, line: 20, baseType: !377, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3438, file: !3439, line: 20, baseType: !377, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3438, file: !3439, line: 20, baseType: !377, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3433, file: !3434, line: 436, baseType: !211, size: 64, offset: 192)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3433, file: !3434, line: 440, baseType: !245, size: 16, offset: 256)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3433, file: !3434, line: 441, baseType: !245, size: 16, offset: 272)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3433, file: !3434, line: 442, baseType: !245, size: 16, offset: 288)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3433, file: !3434, line: 443, baseType: !245, size: 16, offset: 304)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3433, file: !3434, line: 447, baseType: !211, size: 64, offset: 320)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3433, file: !3434, line: 448, baseType: !211, size: 64, offset: 384)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3433, file: !3434, line: 459, baseType: !3462, size: 256, offset: 448)
!3462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3463, size: 256, elements: !702)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3434, line: 428, flags: DIFlagFwdDecl)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3433, file: !3434, line: 461, baseType: !211, size: 64, offset: 704)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3433, file: !3434, line: 463, baseType: !211, size: 64, offset: 768)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3433, file: !3434, line: 465, baseType: !211, size: 64, offset: 832)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3433, file: !3434, line: 466, baseType: !211, size: 64, offset: 896)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3433, file: !3434, line: 467, baseType: !211, size: 64, offset: 960)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3433, file: !3434, line: 473, baseType: !3471, size: 64, offset: 1024)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3434, line: 10, flags: DIFlagFwdDecl)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3433, file: !3434, line: 480, baseType: !211, size: 64, offset: 1088)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3433, file: !3434, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3433, file: !3434, line: 491, baseType: !312, size: 32, offset: 1184)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3433, file: !3434, line: 501, baseType: !3477, size: 33792, offset: 1536)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3478, line: 448, size: 33792, elements: !3479)
!3478 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3479 = !{!3480, !3481, !3482, !3644, !3645, !3651, !3652}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3477, file: !3478, line: 461, baseType: !7, size: 32)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3477, file: !3478, line: 468, baseType: !211, size: 64, offset: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3477, file: !3478, line: 476, baseType: !3483, size: 64, offset: 128)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3478, line: 356, size: 33280, align: 512, elements: !3485)
!3485 = !{!3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3484, file: !3478, line: 358, baseType: !7, size: 32)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3484, file: !3478, line: 361, baseType: !7, size: 32, offset: 32)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3484, file: !3478, line: 364, baseType: !318, size: 64, offset: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3484, file: !3478, line: 367, baseType: !318, size: 64, offset: 128)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3484, file: !3478, line: 370, baseType: !318, size: 64, offset: 192)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3484, file: !3478, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3484, file: !3478, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3484, file: !3478, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3484, file: !3478, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3484, file: !3478, line: 397, baseType: !3496, size: 32768, offset: 512)
!3496 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3478, line: 348, size: 32768, elements: !3497)
!3497 = !{!3498, !3513, !3550, !3627, !3640}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3496, file: !3478, line: 349, baseType: !3499, size: 896)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3478, line: 12, size: 896, elements: !3500)
!3500 = !{!3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3512}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3499, file: !3478, line: 13, baseType: !312, size: 32)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3499, file: !3478, line: 14, baseType: !312, size: 32, offset: 32)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3499, file: !3478, line: 15, baseType: !312, size: 32, offset: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3499, file: !3478, line: 16, baseType: !312, size: 32, offset: 96)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3499, file: !3478, line: 17, baseType: !312, size: 32, offset: 128)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3499, file: !3478, line: 18, baseType: !312, size: 32, offset: 160)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3499, file: !3478, line: 19, baseType: !312, size: 32, offset: 192)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3499, file: !3478, line: 22, baseType: !3509, size: 640, offset: 224)
!3509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 640, elements: !3510)
!3510 = !{!3511}
!3511 = !DISubrange(count: 20)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3499, file: !3478, line: 25, baseType: !312, size: 32, offset: 864)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3496, file: !3478, line: 350, baseType: !3514, size: 4096, align: 128)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3478, line: 34, size: 4096, align: 128, elements: !3515)
!3515 = !{!3516, !3517, !3518, !3519, !3520, !3535, !3536, !3537, !3539, !3541, !3545}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3514, file: !3478, line: 35, baseType: !377, size: 16)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3514, file: !3478, line: 36, baseType: !377, size: 16, offset: 16)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3514, file: !3478, line: 37, baseType: !377, size: 16, offset: 32)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3514, file: !3478, line: 38, baseType: !377, size: 16, offset: 48)
!3520 = !DIDerivedType(tag: DW_TAG_member, scope: !3514, file: !3478, line: 39, baseType: !3521, size: 128, offset: 64)
!3521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3514, file: !3478, line: 39, size: 128, elements: !3522)
!3522 = !{!3523, !3528}
!3523 = !DIDerivedType(tag: DW_TAG_member, scope: !3521, file: !3478, line: 40, baseType: !3524, size: 128)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3521, file: !3478, line: 40, size: 128, elements: !3525)
!3525 = !{!3526, !3527}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3524, file: !3478, line: 41, baseType: !318, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3524, file: !3478, line: 42, baseType: !318, size: 64, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, scope: !3521, file: !3478, line: 44, baseType: !3529, size: 128)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3521, file: !3478, line: 44, size: 128, elements: !3530)
!3530 = !{!3531, !3532, !3533, !3534}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3529, file: !3478, line: 45, baseType: !312, size: 32)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3529, file: !3478, line: 46, baseType: !312, size: 32, offset: 32)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3529, file: !3478, line: 47, baseType: !312, size: 32, offset: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3529, file: !3478, line: 48, baseType: !312, size: 32, offset: 96)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3514, file: !3478, line: 51, baseType: !312, size: 32, offset: 192)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3514, file: !3478, line: 52, baseType: !312, size: 32, offset: 224)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3514, file: !3478, line: 55, baseType: !3538, size: 1024, offset: 256)
!3538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 1024, elements: !328)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3514, file: !3478, line: 58, baseType: !3540, size: 2048, offset: 1280)
!3540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 2048, elements: !535)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3514, file: !3478, line: 60, baseType: !3542, size: 384, offset: 3328)
!3542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 384, elements: !3543)
!3543 = !{!3544}
!3544 = !DISubrange(count: 12)
!3545 = !DIDerivedType(tag: DW_TAG_member, scope: !3514, file: !3478, line: 62, baseType: !3546, size: 384, offset: 3712)
!3546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3514, file: !3478, line: 62, size: 384, elements: !3547)
!3547 = !{!3548, !3549}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3546, file: !3478, line: 63, baseType: !3542, size: 384)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3546, file: !3478, line: 64, baseType: !3542, size: 384)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3496, file: !3478, line: 351, baseType: !3551, size: 1088)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3478, line: 79, size: 1088, elements: !3552)
!3552 = !{!3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3626}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3551, file: !3478, line: 80, baseType: !312, size: 32)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3551, file: !3478, line: 81, baseType: !312, size: 32, offset: 32)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3551, file: !3478, line: 82, baseType: !312, size: 32, offset: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3551, file: !3478, line: 83, baseType: !312, size: 32, offset: 96)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3551, file: !3478, line: 84, baseType: !312, size: 32, offset: 128)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3551, file: !3478, line: 85, baseType: !312, size: 32, offset: 160)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3551, file: !3478, line: 86, baseType: !312, size: 32, offset: 192)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3551, file: !3478, line: 88, baseType: !3509, size: 640, offset: 224)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3551, file: !3478, line: 89, baseType: !370, size: 8, offset: 864)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3551, file: !3478, line: 90, baseType: !370, size: 8, offset: 872)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3551, file: !3478, line: 91, baseType: !370, size: 8, offset: 880)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3551, file: !3478, line: 92, baseType: !370, size: 8, offset: 888)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3551, file: !3478, line: 93, baseType: !370, size: 8, offset: 896)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3551, file: !3478, line: 94, baseType: !370, size: 8, offset: 904)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3551, file: !3478, line: 95, baseType: !3568, size: 64, offset: 960)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3570, line: 11, size: 128, elements: !3571)
!3570 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3571 = !{!3572, !3573}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3569, file: !3570, line: 12, baseType: !565, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3569, file: !3570, line: 13, baseType: !3574, size: 64, offset: 64)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3576, line: 103, size: 1344, elements: !3577)
!3576 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3577 = !{!3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3606, !3607, !3608}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3575, file: !3576, line: 109, baseType: !211, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3575, file: !3576, line: 110, baseType: !211, size: 64, offset: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3575, file: !3576, line: 111, baseType: !211, size: 64, offset: 128)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3575, file: !3576, line: 112, baseType: !211, size: 64, offset: 192)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3575, file: !3576, line: 113, baseType: !211, size: 64, offset: 256)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3575, file: !3576, line: 114, baseType: !211, size: 64, offset: 320)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3575, file: !3576, line: 117, baseType: !211, size: 64, offset: 384)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3575, file: !3576, line: 118, baseType: !211, size: 64, offset: 448)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3575, file: !3576, line: 119, baseType: !211, size: 64, offset: 512)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3575, file: !3576, line: 120, baseType: !211, size: 64, offset: 576)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3575, file: !3576, line: 121, baseType: !211, size: 64, offset: 640)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3575, file: !3576, line: 122, baseType: !211, size: 64, offset: 704)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3575, file: !3576, line: 123, baseType: !211, size: 64, offset: 768)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3575, file: !3576, line: 124, baseType: !211, size: 64, offset: 832)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3575, file: !3576, line: 125, baseType: !211, size: 64, offset: 896)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3575, file: !3576, line: 139, baseType: !211, size: 64, offset: 960)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3575, file: !3576, line: 142, baseType: !211, size: 64, offset: 1024)
!3595 = !DIDerivedType(tag: DW_TAG_member, scope: !3575, file: !3576, line: 144, baseType: !3596, size: 64, offset: 1088)
!3596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3575, file: !3576, line: 144, size: 64, elements: !3597)
!3597 = !{!3598, !3599, !3600}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3596, file: !3576, line: 146, baseType: !377, size: 16)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3596, file: !3576, line: 148, baseType: !318, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3596, file: !3576, line: 150, baseType: !3601, size: 64)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3576, line: 59, size: 64, elements: !3602)
!3602 = !{!3603, !3604, !3605}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3601, file: !3576, line: 61, baseType: !318, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3601, file: !3576, line: 63, baseType: !318, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3601, file: !3576, line: 65, baseType: !318, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3575, file: !3576, line: 153, baseType: !211, size: 64, offset: 1152)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3575, file: !3576, line: 154, baseType: !211, size: 64, offset: 1216)
!3608 = !DIDerivedType(tag: DW_TAG_member, scope: !3575, file: !3576, line: 156, baseType: !3609, size: 64, offset: 1280)
!3609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3575, file: !3576, line: 156, size: 64, elements: !3610)
!3610 = !{!3611, !3612, !3613}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3609, file: !3576, line: 158, baseType: !377, size: 16)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3609, file: !3576, line: 160, baseType: !318, size: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3609, file: !3576, line: 162, baseType: !3614, size: 64)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3576, line: 69, size: 64, elements: !3615)
!3615 = !{!3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3614, file: !3576, line: 71, baseType: !318, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3614, file: !3576, line: 73, baseType: !318, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3614, file: !3576, line: 75, baseType: !318, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3614, file: !3576, line: 77, baseType: !318, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3614, file: !3576, line: 80, baseType: !318, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3614, file: !3576, line: 83, baseType: !318, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3614, file: !3576, line: 86, baseType: !318, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3614, file: !3576, line: 88, baseType: !318, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3614, file: !3576, line: 93, baseType: !318, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3614, file: !3576, line: 100, baseType: !318, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3551, file: !3478, line: 96, baseType: !312, size: 32, offset: 1024)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3496, file: !3478, line: 352, baseType: !3628, size: 4608, align: 512)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3478, line: 333, size: 4608, align: 512, elements: !3629)
!3629 = !{!3630, !3631, !3638}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3628, file: !3478, line: 334, baseType: !3514, size: 4096, align: 128)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3628, file: !3478, line: 335, baseType: !3632, size: 512, offset: 4096)
!3632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3478, line: 312, size: 512, elements: !3633)
!3633 = !{!3634, !3635, !3636}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3632, file: !3478, line: 313, baseType: !318, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3632, file: !3478, line: 314, baseType: !318, size: 64, offset: 64)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3632, file: !3478, line: 315, baseType: !3637, size: 384, offset: 128)
!3637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 384, elements: !824)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3628, file: !3478, line: 336, baseType: !3639, offset: 4608)
!3639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, elements: !721)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3496, file: !3478, line: 353, baseType: !3641, size: 32768)
!3641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 32768, elements: !3642)
!3642 = !{!3643}
!3643 = !DISubrange(count: 4096)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3477, file: !3478, line: 484, baseType: !3483, size: 64, offset: 192)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3477, file: !3478, line: 491, baseType: !3646, size: 128, offset: 256)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3478, line: 404, size: 128, elements: !3647)
!3647 = !{!3648, !3649, !3650}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3646, file: !3478, line: 424, baseType: !318, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3646, file: !3478, line: 432, baseType: !7, size: 32, offset: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3646, file: !3478, line: 440, baseType: !7, size: 32, offset: 96)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3477, file: !3478, line: 498, baseType: !3646, size: 128, offset: 384)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3477, file: !3478, line: 508, baseType: !3484, size: 33280, align: 512, offset: 512)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2446, file: !2447, line: 16, baseType: !706, size: 192, offset: 512)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2446, file: !2447, line: 17, baseType: !362, size: 32, offset: 704)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !440, file: !14, line: 1240, baseType: !205, size: 64, offset: 6912)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !440, file: !14, line: 1243, baseType: !312, size: 32, offset: 6976)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !440, file: !14, line: 1245, baseType: !794, size: 64, offset: 7040)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !440, file: !14, line: 1246, baseType: !794, size: 64, offset: 7104)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !440, file: !14, line: 1248, baseType: !314, size: 32, offset: 7168)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !440, file: !14, line: 1249, baseType: !3661, size: 64, offset: 7232)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !440, file: !14, line: 1252, baseType: !3664, size: 256, offset: 7296)
!3664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 256, elements: !328)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !440, file: !14, line: 1253, baseType: !3666, size: 128, offset: 7552)
!3666 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3667, line: 21, baseType: !3668)
!3667 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3667, line: 19, size: 128, elements: !3669)
!3669 = !{!3670}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3668, file: !3667, line: 20, baseType: !3671, size: 128)
!3671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 128, elements: !2886)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !440, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !440, file: !14, line: 1261, baseType: !642, size: 256, offset: 7744)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !440, file: !14, line: 1267, baseType: !402, size: 64, offset: 8000)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !440, file: !14, line: 1269, baseType: !382, size: 64, offset: 8064)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !440, file: !14, line: 1271, baseType: !3677, size: 448, offset: 8128)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2226, line: 63, size: 448, elements: !3678)
!3678 = !{!3679, !3684, !3685, !3686, !3687, !3688, !3689}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3677, file: !2226, line: 64, baseType: !3680, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!211, !3683, !2224}
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3677, file: !2226, line: 66, baseType: !3680, size: 64, offset: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3677, file: !2226, line: 69, baseType: !565, size: 64, offset: 128)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3677, file: !2226, line: 70, baseType: !109, size: 32, offset: 192)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3677, file: !2226, line: 71, baseType: !7, size: 32, offset: 224)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3677, file: !2226, line: 74, baseType: !222, size: 128, offset: 256)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3677, file: !2226, line: 85, baseType: !3690, size: 64, offset: 384)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !440, file: !14, line: 1274, baseType: !633, size: 64, offset: 8576)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !440, file: !14, line: 1280, baseType: !633, size: 64, offset: 8640)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !440, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !440, file: !14, line: 1286, baseType: !1572, size: 32, offset: 8736)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !440, file: !14, line: 1289, baseType: !2045, size: 64, offset: 8768)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !440, file: !14, line: 1290, baseType: !693, size: 64, offset: 8832)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !440, file: !14, line: 1297, baseType: !920, size: 64, offset: 8896)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !440, file: !14, line: 1304, baseType: !3699, size: 64, offset: 8960)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3700, line: 49, size: 64, elements: !3701)
!3700 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3701 = !{!3702}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3699, file: !3700, line: 50, baseType: !3703, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3700, line: 41, size: 512, align: 512, elements: !3705)
!3705 = !{!3706, !3707, !3712}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3704, file: !3700, line: 43, baseType: !342, size: 32)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3704, file: !3700, line: 45, baseType: !3708, size: 192, offset: 64)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3700, line: 29, size: 192, elements: !3709)
!3709 = !{!3710, !3711}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3708, file: !3700, line: 30, baseType: !222, size: 128)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3708, file: !3700, line: 32, baseType: !565, size: 64, offset: 128)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3704, file: !3700, line: 46, baseType: !565, size: 64, offset: 256)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !440, file: !14, line: 1305, baseType: !3699, size: 64, offset: 9024)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !440, file: !14, line: 1306, baseType: !620, size: 128, align: 64, offset: 9088)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !440, file: !14, line: 1307, baseType: !1290, size: 256, offset: 9216)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !440, file: !14, line: 1309, baseType: !642, size: 256, offset: 9472)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !440, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !440, file: !14, line: 1317, baseType: !342, size: 32, align: 512, offset: 10240)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !440, file: !14, line: 1318, baseType: !222, size: 128, offset: 10304)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !440, file: !14, line: 1320, baseType: !342, size: 32, offset: 10432)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !440, file: !14, line: 1321, baseType: !222, size: 128, offset: 10496)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !434, file: !435, line: 73, baseType: !109, size: 32, offset: 128)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !434, file: !435, line: 74, baseType: !3724, size: 64, offset: 192)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !745, line: 42, flags: DIFlagFwdDecl)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !384, file: !280, line: 141, baseType: !3728, size: 64, offset: 704)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!109, !2286, !837}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !384, file: !280, line: 142, baseType: !3732, size: 64, offset: 768)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!278, !278, !3735}
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !279, file: !280, line: 96, baseType: !439, size: 64, offset: 832)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !279, file: !280, line: 97, baseType: !211, size: 64, offset: 896)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !279, file: !280, line: 98, baseType: !205, size: 64, offset: 960)
!3740 = !DIDerivedType(tag: DW_TAG_member, scope: !279, file: !280, line: 100, baseType: !3741, size: 128, offset: 1024)
!3741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !279, file: !280, line: 100, size: 128, elements: !3742)
!3742 = !{!3743, !3744}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3741, file: !280, line: 101, baseType: !222, size: 128)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3741, file: !280, line: 102, baseType: !3745, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !279, file: !280, line: 104, baseType: !222, size: 128, offset: 1152)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !279, file: !280, line: 105, baseType: !222, size: 128, offset: 1280)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !279, file: !280, line: 113, baseType: !3749, size: 128, offset: 1408)
!3749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !279, file: !280, line: 109, size: 128, elements: !3750)
!3750 = !{!3751, !3752, !3753}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3749, file: !280, line: 110, baseType: !697, size: 128)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3749, file: !280, line: 111, baseType: !294, size: 128)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3749, file: !280, line: 112, baseType: !620, size: 128, align: 64)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !272, file: !14, line: 1968, baseType: !3755, size: 64, offset: 64)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!402, !278, !240, !3758}
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3760, line: 10, size: 128, elements: !3761)
!3760 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3761 = !{!3762, !3763}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3759, file: !3760, line: 11, baseType: !1612, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3759, file: !3760, line: 12, baseType: !205, size: 64, offset: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !272, file: !14, line: 1969, baseType: !3765, size: 64, offset: 128)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!109, !3724, !240, !109}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !272, file: !14, line: 1970, baseType: !3769, size: 64, offset: 192)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!266, !240, !109, !837}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !272, file: !14, line: 1972, baseType: !3773, size: 64, offset: 256)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!109, !278, !428, !109}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !272, file: !14, line: 1974, baseType: !3777, size: 64, offset: 320)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!109, !3724, !240, !278, !244, !837}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !272, file: !14, line: 1976, baseType: !3781, size: 64, offset: 384)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!109, !278, !240, !278}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !272, file: !14, line: 1977, baseType: !3785, size: 64, offset: 448)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!109, !240, !278}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !272, file: !14, line: 1978, baseType: !3789, size: 64, offset: 512)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!109, !3724, !240, !278, !402}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !272, file: !14, line: 1980, baseType: !3793, size: 64, offset: 576)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!109, !3724, !240, !278, !244}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !272, file: !14, line: 1982, baseType: !3785, size: 64, offset: 640)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !272, file: !14, line: 1983, baseType: !3798, size: 64, offset: 704)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!109, !3724, !240, !278, !244, !444}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !272, file: !14, line: 1985, baseType: !3802, size: 64, offset: 768)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!109, !3724, !240, !278, !240, !278, !7}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !272, file: !14, line: 1987, baseType: !3806, size: 64, offset: 832)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!109, !3724, !278, !3809}
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3811)
!3811 = !{!3812, !3813, !3814, !3824, !3833, !3834, !3839, !3840, !3841}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3810, file: !14, line: 227, baseType: !7, size: 32)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3810, file: !14, line: 228, baseType: !244, size: 16, offset: 32)
!3814 = !DIDerivedType(tag: DW_TAG_member, scope: !3810, file: !14, line: 241, baseType: !3815, size: 32, offset: 64)
!3815 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3810, file: !14, line: 241, size: 32, elements: !3816)
!3816 = !{!3817, !3818}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3815, file: !14, line: 242, baseType: !248, size: 32)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3815, file: !14, line: 243, baseType: !3819, size: 32)
!3819 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3820, line: 16, baseType: !3821)
!3820 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3820, line: 14, size: 32, elements: !3822)
!3822 = !{!3823}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3821, file: !3820, line: 15, baseType: !253, size: 32)
!3824 = !DIDerivedType(tag: DW_TAG_member, scope: !3810, file: !14, line: 245, baseType: !3825, size: 32, offset: 96)
!3825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3810, file: !14, line: 245, size: 32, elements: !3826)
!3826 = !{!3827, !3828}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3825, file: !14, line: 246, baseType: !258, size: 32)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3825, file: !14, line: 247, baseType: !3829, size: 32)
!3829 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3820, line: 20, baseType: !3830)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3820, line: 18, size: 32, elements: !3831)
!3831 = !{!3832}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3830, file: !3820, line: 19, baseType: !262, size: 32)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3810, file: !14, line: 249, baseType: !449, size: 64, offset: 128)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3810, file: !14, line: 250, baseType: !3835, size: 128, offset: 192)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !795, line: 13, size: 128, elements: !3836)
!3836 = !{!3837, !3838}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3835, file: !795, line: 14, baseType: !794, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3835, file: !795, line: 15, baseType: !565, size: 64, offset: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3810, file: !14, line: 251, baseType: !3835, size: 128, offset: 320)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3810, file: !14, line: 252, baseType: !3835, size: 128, offset: 448)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3810, file: !14, line: 259, baseType: !607, size: 64, offset: 576)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !272, file: !14, line: 1988, baseType: !3843, size: 64, offset: 896)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!109, !3724, !2286, !3846, !312, !7}
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3848, line: 22, size: 1280, elements: !3849)
!3848 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3849 = !{!3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3847, file: !3848, line: 23, baseType: !312, size: 32)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3847, file: !3848, line: 24, baseType: !244, size: 16, offset: 32)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3847, file: !3848, line: 25, baseType: !7, size: 32, offset: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3847, file: !3848, line: 26, baseType: !802, size: 32, offset: 96)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3847, file: !3848, line: 27, baseType: !318, size: 64, offset: 128)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3847, file: !3848, line: 28, baseType: !318, size: 64, offset: 192)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3847, file: !3848, line: 41, baseType: !318, size: 64, offset: 256)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3847, file: !3848, line: 42, baseType: !444, size: 32, offset: 320)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3847, file: !3848, line: 43, baseType: !444, size: 32, offset: 352)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3847, file: !3848, line: 44, baseType: !248, size: 32, offset: 384)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3847, file: !3848, line: 45, baseType: !258, size: 32, offset: 416)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3847, file: !3848, line: 46, baseType: !449, size: 64, offset: 448)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3847, file: !3848, line: 47, baseType: !3835, size: 128, offset: 512)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3847, file: !3848, line: 48, baseType: !3835, size: 128, offset: 640)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3847, file: !3848, line: 49, baseType: !3835, size: 128, offset: 768)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3847, file: !3848, line: 50, baseType: !3835, size: 128, offset: 896)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3847, file: !3848, line: 51, baseType: !318, size: 64, offset: 1024)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3847, file: !3848, line: 52, baseType: !318, size: 64, offset: 1088)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3847, file: !3848, line: 53, baseType: !312, size: 32, offset: 1152)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3847, file: !3848, line: 54, baseType: !312, size: 32, offset: 1184)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3847, file: !3848, line: 55, baseType: !318, size: 64, offset: 1216)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !272, file: !14, line: 1990, baseType: !3872, size: 64, offset: 960)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!562, !278, !428, !575}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !272, file: !14, line: 1991, baseType: !3876, size: 64, offset: 1024)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!109, !240, !3879, !318, !318}
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !272, file: !14, line: 1993, baseType: !3882, size: 64, offset: 1088)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!109, !240, !109}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !272, file: !14, line: 1994, baseType: !3886, size: 64, offset: 1152)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!109, !240, !278, !607, !7, !244}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !272, file: !14, line: 1997, baseType: !3890, size: 64, offset: 1216)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!109, !3724, !240, !607, !244}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !272, file: !14, line: 1999, baseType: !3894, size: 64, offset: 1280)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!266, !3724, !278, !109}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !272, file: !14, line: 2001, baseType: !3898, size: 64, offset: 1344)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!109, !3724, !278, !266, !109}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !272, file: !14, line: 2003, baseType: !3902, size: 64, offset: 1408)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!109, !3724, !278, !3905}
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !272, file: !14, line: 2005, baseType: !3908, size: 64, offset: 1472)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!109, !278, !3905}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !272, file: !14, line: 2006, baseType: !3912, size: 64, offset: 1536)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!3915, !240}
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3917)
!3917 = !{!3918, !3925}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3916, file: !14, line: 3193, baseType: !3919, size: 128)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3920, line: 296, size: 128, elements: !3921)
!3920 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3921 = !{!3922, !3923, !3924}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3919, file: !3920, line: 297, baseType: !342, size: 32)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3919, file: !3920, line: 299, baseType: !1368, size: 32, offset: 32)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3919, file: !3920, line: 300, baseType: !205, size: 64, offset: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3916, file: !14, line: 3194, baseType: !312, size: 32, offset: 128)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !241, file: !14, line: 655, baseType: !439, size: 64, offset: 448)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !241, file: !14, line: 656, baseType: !236, size: 64, offset: 512)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !241, file: !14, line: 659, baseType: !205, size: 64, offset: 576)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !241, file: !14, line: 663, baseType: !211, size: 64, offset: 640)
!3930 = !DIDerivedType(tag: DW_TAG_member, scope: !241, file: !14, line: 671, baseType: !3931, size: 32, offset: 704)
!3931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !241, file: !14, line: 671, size: 32, elements: !3932)
!3932 = !{!3933, !3935}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3931, file: !14, line: 672, baseType: !3934, size: 32)
!3934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3931, file: !14, line: 673, baseType: !7, size: 32)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !241, file: !14, line: 675, baseType: !444, size: 32, offset: 736)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !241, file: !14, line: 676, baseType: !449, size: 64, offset: 768)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !241, file: !14, line: 677, baseType: !3835, size: 128, offset: 832)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !241, file: !14, line: 678, baseType: !3835, size: 128, offset: 960)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !241, file: !14, line: 679, baseType: !3835, size: 128, offset: 1088)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !241, file: !14, line: 680, baseType: !342, size: 32, offset: 1216)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !241, file: !14, line: 681, baseType: !245, size: 16, offset: 1248)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !241, file: !14, line: 682, baseType: !370, size: 8, offset: 1264)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !241, file: !14, line: 683, baseType: !370, size: 8, offset: 1272)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !241, file: !14, line: 684, baseType: !2359, size: 64, offset: 1280)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !241, file: !14, line: 691, baseType: !211, size: 64, offset: 1344)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !241, file: !14, line: 692, baseType: !778, size: 320, offset: 1408)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !241, file: !14, line: 694, baseType: !211, size: 64, offset: 1728)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !241, file: !14, line: 695, baseType: !211, size: 64, offset: 1792)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !241, file: !14, line: 697, baseType: !697, size: 128, offset: 1856)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !241, file: !14, line: 698, baseType: !222, size: 128, offset: 1984)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !241, file: !14, line: 707, baseType: !222, size: 128, offset: 2112)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !241, file: !14, line: 708, baseType: !222, size: 128, offset: 2240)
!3954 = !DIDerivedType(tag: DW_TAG_member, scope: !241, file: !14, line: 709, baseType: !3955, size: 128, offset: 2368)
!3955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !241, file: !14, line: 709, size: 128, elements: !3956)
!3956 = !{!3957, !3958}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3955, file: !14, line: 710, baseType: !693, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3955, file: !14, line: 711, baseType: !620, size: 128, align: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !241, file: !14, line: 713, baseType: !635, size: 64, offset: 2496)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !241, file: !14, line: 714, baseType: !635, size: 64, offset: 2560)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !241, file: !14, line: 715, baseType: !362, size: 32, offset: 2624)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !241, file: !14, line: 716, baseType: !362, size: 32, offset: 2656)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !241, file: !14, line: 717, baseType: !362, size: 32, offset: 2688)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !241, file: !14, line: 719, baseType: !362, size: 32, offset: 2720)
!3965 = !DIDerivedType(tag: DW_TAG_member, scope: !241, file: !14, line: 721, baseType: !3966, size: 64, offset: 2752)
!3966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !241, file: !14, line: 721, size: 64, elements: !3967)
!3967 = !{!3968, !3969}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3966, file: !14, line: 722, baseType: !956, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3966, file: !14, line: 723, baseType: !2113, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !241, file: !14, line: 725, baseType: !3971, size: 64, offset: 2816)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !241, file: !14, line: 726, baseType: !237, size: 1536, align: 64, offset: 2880)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !241, file: !14, line: 727, baseType: !222, size: 128, offset: 4416)
!3975 = !DIDerivedType(tag: DW_TAG_member, scope: !241, file: !14, line: 728, baseType: !3976, size: 64, offset: 4544)
!3976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !241, file: !14, line: 728, size: 64, elements: !3977)
!3977 = !{!3978, !3979, !3982, !3983}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3976, file: !14, line: 729, baseType: !1484, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3976, file: !14, line: 730, baseType: !3980, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3976, file: !14, line: 731, baseType: !428, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3976, file: !14, line: 732, baseType: !7, size: 32)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !241, file: !14, line: 735, baseType: !314, size: 32, offset: 4608)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !241, file: !14, line: 738, baseType: !314, size: 32, offset: 4640)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !241, file: !14, line: 739, baseType: !3661, size: 64, offset: 4672)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !241, file: !14, line: 750, baseType: !205, size: 64, offset: 4736)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !237, file: !14, line: 474, baseType: !3919, size: 128, offset: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !237, file: !14, line: 475, baseType: !778, size: 320, offset: 192)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !237, file: !14, line: 476, baseType: !1368, size: 32, offset: 512)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !237, file: !14, line: 477, baseType: !362, size: 32, offset: 544)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !237, file: !14, line: 482, baseType: !2633, size: 128, offset: 576)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !237, file: !14, line: 483, baseType: !211, size: 64, offset: 704)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !237, file: !14, line: 484, baseType: !211, size: 64, offset: 768)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !237, file: !14, line: 485, baseType: !3996, size: 64, offset: 832)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3998)
!3998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3999)
!3999 = !{!4000, !4004, !4008, !4012, !4016, !4032, !4036, !4040, !4045, !4049, !4053, !4057, !4058, !4062, !4066, !4070, !4075, !4079, !4086, !4087}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3998, file: !14, line: 405, baseType: !4001, size: 64)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!109, !207, !2125}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3998, file: !14, line: 406, baseType: !4005, size: 64, offset: 64)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!109, !607, !999}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3998, file: !14, line: 409, baseType: !4009, size: 64, offset: 128)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{!109, !236, !2125}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3998, file: !14, line: 412, baseType: !4013, size: 64, offset: 192)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!837, !236, !999}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3998, file: !14, line: 414, baseType: !4017, size: 64, offset: 256)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{null, !4020}
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !996, line: 1276, size: 448, elements: !4022)
!4022 = !{!4023, !4024, !4025, !4027, !4028, !4029, !4030, !4031}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4021, file: !996, line: 1277, baseType: !607, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4021, file: !996, line: 1278, baseType: !236, size: 64, offset: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !4021, file: !996, line: 1279, baseType: !4026, size: 64, offset: 128)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !4021, file: !996, line: 1281, baseType: !211, size: 64, offset: 192)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !4021, file: !996, line: 1282, baseType: !7, size: 32, offset: 256)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !4021, file: !996, line: 1283, baseType: !7, size: 32, offset: 288)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !4021, file: !996, line: 1284, baseType: !837, size: 8, offset: 320)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !4021, file: !996, line: 1285, baseType: !211, size: 64, offset: 384)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3998, file: !14, line: 416, baseType: !4033, size: 64, offset: 320)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!109, !607, !236, !449, !7, !3410, !1499}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3998, file: !14, line: 419, baseType: !4037, size: 64, offset: 384)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!109, !607, !236, !449, !7, !7, !207, !205}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3998, file: !14, line: 424, baseType: !4041, size: 64, offset: 448)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!4044, !236, !4044}
!4044 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !223, line: 131, baseType: !318)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3998, file: !14, line: 425, baseType: !4046, size: 64, offset: 512)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{null, !999, !575, !575}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3998, file: !14, line: 426, baseType: !4050, size: 64, offset: 576)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!837, !999, !1368}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3998, file: !14, line: 427, baseType: !4054, size: 64, offset: 640)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{null, !999}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3998, file: !14, line: 428, baseType: !975, size: 64, offset: 704)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3998, file: !14, line: 433, baseType: !4059, size: 64, offset: 768)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!109, !236, !999, !999, !74}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3998, file: !14, line: 435, baseType: !4063, size: 64, offset: 832)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!109, !999}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3998, file: !14, line: 436, baseType: !4067, size: 64, offset: 896)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!837, !999, !575, !575}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3998, file: !14, line: 438, baseType: !4071, size: 64, offset: 960)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{null, !999, !4074, !4074}
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3998, file: !14, line: 439, baseType: !4076, size: 64, offset: 1024)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!109, !236, !207}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3998, file: !14, line: 442, baseType: !4080, size: 64, offset: 1088)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!109, !4083, !607, !4085}
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3998, file: !14, line: 444, baseType: !1491, size: 64, offset: 1152)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3998, file: !14, line: 445, baseType: !4088, size: 64, offset: 1216)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!109, !978, !1083}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !237, file: !14, line: 486, baseType: !211, size: 64, offset: 896)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !237, file: !14, line: 487, baseType: !778, size: 320, offset: 960)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !237, file: !14, line: 488, baseType: !1572, size: 32, offset: 1280)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !237, file: !14, line: 489, baseType: !342, size: 32, offset: 1312)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !237, file: !14, line: 490, baseType: !222, size: 128, offset: 1344)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !237, file: !14, line: 491, baseType: !205, size: 64, offset: 1472)
!4097 = !DIDerivedType(tag: DW_TAG_member, scope: !216, file: !35, line: 107, baseType: !4098, size: 64, offset: 192)
!4098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !216, file: !35, line: 107, size: 64, elements: !4099)
!4099 = !{!4100, !4101}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4098, file: !35, line: 108, baseType: !211, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !4098, file: !35, line: 109, baseType: !211, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !216, file: !35, line: 117, baseType: !211, size: 64, offset: 256)
!4103 = !DIDerivedType(tag: DW_TAG_member, scope: !213, file: !35, line: 119, baseType: !4104, size: 320)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !213, file: !35, line: 119, size: 320, elements: !4105)
!4105 = !{!4106, !4107, !4110, !4111, !4112}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !4104, file: !35, line: 124, baseType: !211, size: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !4104, file: !35, line: 125, baseType: !4108, size: 64, offset: 64)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !35, line: 125, flags: DIFlagFwdDecl)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !4104, file: !35, line: 126, baseType: !211, size: 64, offset: 128)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !4104, file: !35, line: 127, baseType: !211, size: 64, offset: 192)
!4112 = !DIDerivedType(tag: DW_TAG_member, scope: !4104, file: !35, line: 128, baseType: !4113, size: 64, offset: 256)
!4113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4104, file: !35, line: 128, size: 64, elements: !4114)
!4114 = !{!4115, !4116}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !4113, file: !35, line: 133, baseType: !211, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !4113, file: !35, line: 138, baseType: !633, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, scope: !213, file: !35, line: 141, baseType: !4118, size: 64)
!4118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !213, file: !35, line: 141, size: 64, elements: !4119)
!4119 = !{!4120}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !4118, file: !35, line: 142, baseType: !211, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, scope: !213, file: !35, line: 144, baseType: !4122, size: 128)
!4122 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !213, file: !35, line: 144, size: 128, elements: !4123)
!4123 = !{!4124, !4195}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !4122, file: !35, line: 146, baseType: !4125, size: 64)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !27, line: 126, size: 1216, elements: !4127)
!4127 = !{!4128, !4138, !4159, !4160, !4161, !4162, !4163, !4177, !4178, !4179}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !4126, file: !27, line: 127, baseType: !4129, size: 384)
!4129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !27, line: 21, size: 384, elements: !4130)
!4130 = !{!4131, !4132, !4134, !4135, !4136, !4137}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !4129, file: !27, line: 22, baseType: !211, size: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !4129, file: !27, line: 23, baseType: !4133, size: 64, offset: 64)
!4133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !4129, file: !27, line: 24, baseType: !4133, size: 64, offset: 128)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4129, file: !27, line: 25, baseType: !211, size: 64, offset: 192)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !4129, file: !27, line: 26, baseType: !211, size: 64, offset: 256)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4129, file: !27, line: 27, baseType: !211, size: 64, offset: 320)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4126, file: !27, line: 128, baseType: !4139, size: 128, offset: 384)
!4139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !4140, line: 105, size: 128, elements: !4141)
!4140 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!4141 = !{!4142, !4143}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !4139, file: !4140, line: 110, baseType: !211, size: 64)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4139, file: !4140, line: 118, baseType: !4144, size: 64, offset: 64)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !4140, line: 95, size: 448, elements: !4146)
!4146 = !{!4147, !4148, !4154, !4155, !4156, !4157, !4158}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4145, file: !4140, line: 96, baseType: !633, size: 64)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4145, file: !4140, line: 97, baseType: !4149, size: 64, offset: 64)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !4140, line: 60, baseType: !4151)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{null, !4153}
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !4145, file: !4140, line: 98, baseType: !4149, size: 64, offset: 128)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !4145, file: !4140, line: 99, baseType: !837, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !4145, file: !4140, line: 100, baseType: !837, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4145, file: !4140, line: 101, baseType: !620, size: 128, align: 64, offset: 256)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4145, file: !4140, line: 102, baseType: !4153, size: 64, offset: 384)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4126, file: !27, line: 129, baseType: !1737, size: 256, offset: 512)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4126, file: !27, line: 130, baseType: !26, size: 32, offset: 768)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4126, file: !27, line: 131, baseType: !7, size: 32, offset: 800)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !4126, file: !27, line: 132, baseType: !211, size: 64, offset: 832)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4126, file: !27, line: 133, baseType: !4164, size: 64, offset: 896)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4166)
!4166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !27, line: 77, size: 192, elements: !4167)
!4167 = !{!4168, !4172, !4173}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !4166, file: !27, line: 83, baseType: !4169, size: 64)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{null, !207}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !4166, file: !27, line: 89, baseType: !1356, size: 64, offset: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !4166, file: !27, line: 100, baseType: !4174, size: 64, offset: 128)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!109, !4125, !211, !211, !109}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4126, file: !27, line: 134, baseType: !205, size: 64, offset: 960)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !4126, file: !27, line: 135, baseType: !109, size: 32, offset: 1024)
!4179 = !DIDerivedType(tag: DW_TAG_member, scope: !4126, file: !27, line: 136, baseType: !4180, size: 128, offset: 1088)
!4180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4126, file: !27, line: 136, size: 128, elements: !4181)
!4181 = !{!4182, !4188}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4180, file: !27, line: 137, baseType: !4183, size: 128)
!4183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !4184, line: 6, size: 128, elements: !4185)
!4184 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!4185 = !{!4186, !4187}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4183, file: !4184, line: 7, baseType: !318, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4183, file: !4184, line: 8, baseType: !318, size: 64, offset: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, scope: !4180, file: !27, line: 138, baseType: !4189)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4180, file: !27, line: 138, elements: !4190)
!4190 = !{!4191, !4193}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !4189, file: !27, line: 138, baseType: !4192)
!4192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4189, file: !27, line: 138, elements: !1156)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4189, file: !27, line: 138, baseType: !4194)
!4194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4183, elements: !721)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !4122, file: !35, line: 147, baseType: !205, size: 64, offset: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !213, file: !35, line: 161, baseType: !620, size: 128, align: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, scope: !208, file: !35, line: 164, baseType: !4198, size: 32, offset: 384)
!4198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !208, file: !35, line: 164, size: 32, elements: !4199)
!4199 = !{!4200, !4201}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4198, file: !35, line: 169, baseType: !362, size: 32)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !4198, file: !35, line: 177, baseType: !7, size: 32)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !208, file: !35, line: 181, baseType: !362, size: 32, offset: 416)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "bo_kmap_type", scope: !202, file: !160, line: 159, baseType: !201, size: 32, offset: 128)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "bo", scope: !202, file: !160, line: 160, baseType: !4205, size: 64, offset: 192)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_buffer_object", file: !160, line: 98, size: 3712, elements: !4207)
!4207 = !{!4208, !5212, !5444, !5445, !5446, !5447, !5448, !5449, !5450, !5451, !5462, !5463, !5464, !5465}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4206, file: !160, line: 99, baseType: !4209, size: 2816)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object", file: !149, line: 264, size: 2816, elements: !4210)
!4210 = !{!4211, !4212, !4213, !5114, !5115, !5122, !5123, !5124, !5125, !5126, !5134, !5135, !5139, !5203, !5204}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4209, file: !149, line: 274, baseType: !1721, size: 32)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "handle_count", scope: !4209, file: !149, line: 287, baseType: !7, size: 32, offset: 32)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4209, file: !149, line: 292, baseType: !4214, size: 64, offset: 64)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !142, line: 50, size: 12736, elements: !4216)
!4216 = !{!4217, !4218, !4219, !4670, !4676, !4811, !4812, !4813, !4814, !4815, !4816, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !5066, !5067, !5068, !5105, !5108, !5109, !5112, !5113}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !4215, file: !142, line: 52, baseType: !109, size: 32)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4215, file: !142, line: 55, baseType: !1721, size: 32, offset: 32)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4215, file: !142, line: 58, baseType: !4220, size: 64, offset: 64)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !4222)
!4222 = !{!4223, !4224, !4225, !4228, !4229, !4282, !4352, !4353, !4354, !4355, !4356, !4363, !4455, !4468, !4478, !4482, !4484, !4485, !4486, !4490, !4497, !4498, !4501, !4504, !4508, !4612, !4613, !4614, !4615, !4616, !4617, !4647, !4648, !4649, !4652, !4655, !4664, !4665, !4666, !4667, !4668, !4669}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4221, file: !94, line: 706, baseType: !490, size: 512)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4221, file: !94, line: 707, baseType: !4220, size: 64, offset: 512)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4221, file: !94, line: 709, baseType: !4226, size: 64, offset: 576)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4221, file: !94, line: 711, baseType: !402, size: 64, offset: 640)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4221, file: !94, line: 712, baseType: !4230, size: 64, offset: 704)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4232)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4233)
!4233 = !{!4234, !4235, !4236, !4242, !4247, !4251}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4232, file: !94, line: 90, baseType: !402, size: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4232, file: !94, line: 91, baseType: !579, size: 64, offset: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4232, file: !94, line: 92, baseType: !4237, size: 64, offset: 128)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!109, !4240, !526}
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4221)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4232, file: !94, line: 93, baseType: !4243, size: 64, offset: 192)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!428, !4240, !4246, !1623, !1624}
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4232, file: !94, line: 95, baseType: !4248, size: 64, offset: 256)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{null, !4220}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4232, file: !94, line: 97, baseType: !4252, size: 64, offset: 320)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4254)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4255)
!4255 = !{!4256, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4254, file: !101, line: 287, baseType: !4257, size: 64)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!109, !4220}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4254, file: !101, line: 288, baseType: !4248, size: 64, offset: 64)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4254, file: !101, line: 289, baseType: !4257, size: 64, offset: 128)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4254, file: !101, line: 290, baseType: !4257, size: 64, offset: 192)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4254, file: !101, line: 291, baseType: !4257, size: 64, offset: 256)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4254, file: !101, line: 292, baseType: !4257, size: 64, offset: 320)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4254, file: !101, line: 293, baseType: !4257, size: 64, offset: 384)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4254, file: !101, line: 294, baseType: !4257, size: 64, offset: 448)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4254, file: !101, line: 295, baseType: !4257, size: 64, offset: 512)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4254, file: !101, line: 296, baseType: !4257, size: 64, offset: 576)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4254, file: !101, line: 297, baseType: !4257, size: 64, offset: 640)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4254, file: !101, line: 298, baseType: !4257, size: 64, offset: 704)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4254, file: !101, line: 299, baseType: !4257, size: 64, offset: 768)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4254, file: !101, line: 300, baseType: !4257, size: 64, offset: 832)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4254, file: !101, line: 301, baseType: !4257, size: 64, offset: 896)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4254, file: !101, line: 302, baseType: !4257, size: 64, offset: 960)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4254, file: !101, line: 303, baseType: !4257, size: 64, offset: 1024)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4254, file: !101, line: 304, baseType: !4257, size: 64, offset: 1088)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4254, file: !101, line: 305, baseType: !4257, size: 64, offset: 1152)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4254, file: !101, line: 306, baseType: !4257, size: 64, offset: 1216)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4254, file: !101, line: 307, baseType: !4257, size: 64, offset: 1280)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4254, file: !101, line: 308, baseType: !4257, size: 64, offset: 1344)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4254, file: !101, line: 309, baseType: !4257, size: 64, offset: 1408)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4221, file: !94, line: 714, baseType: !4283, size: 64, offset: 768)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4285)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4286, line: 80, size: 1344, elements: !4287)
!4286 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4287 = !{!4288, !4289, !4290, !4291, !4292, !4293, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4351}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4285, file: !4286, line: 81, baseType: !402, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4285, file: !4286, line: 82, baseType: !402, size: 64, offset: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4285, file: !4286, line: 83, baseType: !579, size: 64, offset: 128)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4285, file: !4286, line: 84, baseType: !579, size: 64, offset: 192)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4285, file: !4286, line: 85, baseType: !579, size: 64, offset: 256)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4285, file: !4286, line: 87, baseType: !4294, size: 64, offset: 320)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!109, !4220, !4297}
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4299)
!4299 = !{!4300, !4301, !4302, !4303, !4304, !4305, !4306, !4310, !4314, !4315, !4316, !4317, !4318, !4326, !4327, !4328, !4329, !4330, !4331}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4298, file: !88, line: 97, baseType: !402, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4298, file: !88, line: 98, baseType: !4283, size: 64, offset: 64)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4298, file: !88, line: 100, baseType: !477, size: 64, offset: 128)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4298, file: !88, line: 101, baseType: !402, size: 64, offset: 192)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4298, file: !88, line: 103, baseType: !837, size: 8, offset: 256)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4298, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4298, file: !88, line: 106, baseType: !4307, size: 64, offset: 320)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4309)
!4309 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !88, line: 106, flags: DIFlagFwdDecl)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4298, file: !88, line: 107, baseType: !4311, size: 64, offset: 384)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4313)
!4313 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !88, line: 107, flags: DIFlagFwdDecl)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4298, file: !88, line: 109, baseType: !4257, size: 64, offset: 448)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4298, file: !88, line: 110, baseType: !4248, size: 64, offset: 512)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4298, file: !88, line: 111, baseType: !4257, size: 64, offset: 576)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4298, file: !88, line: 112, baseType: !4248, size: 64, offset: 640)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4298, file: !88, line: 113, baseType: !4319, size: 64, offset: 704)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{!109, !4220, !4322}
!4322 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4323)
!4323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4324)
!4324 = !{!4325}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4323, file: !101, line: 59, baseType: !109, size: 32)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4298, file: !88, line: 114, baseType: !4257, size: 64, offset: 768)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4298, file: !88, line: 115, baseType: !579, size: 64, offset: 832)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4298, file: !88, line: 116, baseType: !579, size: 64, offset: 896)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4298, file: !88, line: 118, baseType: !4252, size: 64, offset: 960)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4298, file: !88, line: 119, baseType: !4248, size: 64, offset: 1024)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4298, file: !88, line: 121, baseType: !4332, size: 64, offset: 1088)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4285, file: !4286, line: 88, baseType: !4237, size: 64, offset: 384)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4285, file: !4286, line: 89, baseType: !4257, size: 64, offset: 448)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4285, file: !4286, line: 90, baseType: !4248, size: 64, offset: 512)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4285, file: !4286, line: 91, baseType: !4248, size: 64, offset: 576)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4285, file: !4286, line: 92, baseType: !4248, size: 64, offset: 640)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4285, file: !4286, line: 94, baseType: !4257, size: 64, offset: 704)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4285, file: !4286, line: 95, baseType: !4257, size: 64, offset: 768)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4285, file: !4286, line: 97, baseType: !4319, size: 64, offset: 832)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4285, file: !4286, line: 98, baseType: !4257, size: 64, offset: 896)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4285, file: !4286, line: 100, baseType: !4257, size: 64, offset: 960)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4285, file: !4286, line: 102, baseType: !4257, size: 64, offset: 1024)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4285, file: !4286, line: 103, baseType: !4248, size: 64, offset: 1088)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4285, file: !4286, line: 105, baseType: !4252, size: 64, offset: 1152)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4285, file: !4286, line: 107, baseType: !4348, size: 64, offset: 1216)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4350)
!4350 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4286, line: 107, flags: DIFlagFwdDecl)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4285, file: !4286, line: 109, baseType: !837, size: 8, offset: 1280)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4221, file: !94, line: 715, baseType: !4297, size: 64, offset: 832)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4221, file: !94, line: 717, baseType: !205, size: 64, offset: 896)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4221, file: !94, line: 719, baseType: !205, size: 64, offset: 960)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4221, file: !94, line: 721, baseType: !642, size: 256, offset: 1024)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4221, file: !94, line: 725, baseType: !4357, size: 448, offset: 1280)
!4357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4358)
!4358 = !{!4359, !4360, !4361, !4362}
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4357, file: !94, line: 518, baseType: !222, size: 128)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4357, file: !94, line: 519, baseType: !222, size: 128, offset: 128)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4357, file: !94, line: 520, baseType: !222, size: 128, offset: 256)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4357, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4221, file: !94, line: 726, baseType: !4364, size: 2496, offset: 1728)
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4365)
!4365 = !{!4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4448, !4452}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4364, file: !101, line: 664, baseType: !4322, size: 32)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4364, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4364, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4364, file: !101, line: 667, baseType: !837, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4364, file: !101, line: 668, baseType: !837, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4364, file: !101, line: 669, baseType: !837, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4364, file: !101, line: 670, baseType: !837, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4364, file: !101, line: 671, baseType: !837, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4364, file: !101, line: 672, baseType: !837, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4364, file: !101, line: 673, baseType: !837, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4364, file: !101, line: 674, baseType: !837, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4364, file: !101, line: 675, baseType: !312, size: 32, offset: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4364, file: !101, line: 676, baseType: !342, size: 32, offset: 96)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4364, file: !101, line: 678, baseType: !222, size: 128, offset: 128)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4364, file: !101, line: 679, baseType: !1737, size: 256, offset: 256)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4364, file: !101, line: 680, baseType: !4382, size: 64, offset: 512)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4384, line: 43, size: 1536, elements: !4385)
!4384 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4385 = !{!4386, !4387, !4388, !4389, !4390, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4383, file: !4384, line: 44, baseType: !402, size: 64)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4383, file: !4384, line: 45, baseType: !109, size: 32, offset: 64)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4383, file: !4384, line: 46, baseType: !222, size: 128, offset: 128)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4383, file: !4384, line: 47, baseType: !342, size: 32, offset: 256)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4383, file: !4384, line: 48, baseType: !4391, size: 64, offset: 320)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4383, file: !4384, line: 49, baseType: !1983, size: 320, offset: 384)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4383, file: !4384, line: 50, baseType: !211, size: 64, offset: 704)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4383, file: !4384, line: 51, baseType: !2582, size: 64, offset: 768)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4383, file: !4384, line: 52, baseType: !2582, size: 64, offset: 832)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4383, file: !4384, line: 53, baseType: !2582, size: 64, offset: 896)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4383, file: !4384, line: 54, baseType: !2582, size: 64, offset: 960)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4383, file: !4384, line: 55, baseType: !2582, size: 64, offset: 1024)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4383, file: !4384, line: 56, baseType: !211, size: 64, offset: 1088)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4383, file: !4384, line: 57, baseType: !211, size: 64, offset: 1152)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4383, file: !4384, line: 58, baseType: !211, size: 64, offset: 1216)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4383, file: !4384, line: 59, baseType: !211, size: 64, offset: 1280)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4383, file: !4384, line: 60, baseType: !211, size: 64, offset: 1344)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4383, file: !4384, line: 61, baseType: !4220, size: 64, offset: 1408)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4383, file: !4384, line: 62, baseType: !837, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4383, file: !4384, line: 63, baseType: !837, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4364, file: !101, line: 681, baseType: !837, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4364, file: !101, line: 682, baseType: !837, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4364, file: !101, line: 683, baseType: !837, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4364, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4364, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4364, file: !101, line: 690, baseType: !2574, size: 512, offset: 640)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4364, file: !101, line: 691, baseType: !318, size: 64, offset: 1152)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4364, file: !101, line: 692, baseType: !1290, size: 256, offset: 1216)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4364, file: !101, line: 693, baseType: !706, size: 192, offset: 1472)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4364, file: !101, line: 694, baseType: !4391, size: 64, offset: 1664)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4364, file: !101, line: 695, baseType: !362, size: 32, offset: 1728)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4364, file: !101, line: 696, baseType: !362, size: 32, offset: 1760)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4364, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4364, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4364, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4364, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4364, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4364, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4364, file: !101, line: 703, baseType: !837, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4364, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4364, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4364, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4364, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4364, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4364, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4364, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4364, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4364, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4364, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4364, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4364, file: !101, line: 715, baseType: !318, size: 64, offset: 2048)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4364, file: !101, line: 716, baseType: !318, size: 64, offset: 2112)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4364, file: !101, line: 717, baseType: !318, size: 64, offset: 2176)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4364, file: !101, line: 718, baseType: !318, size: 64, offset: 2240)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4364, file: !101, line: 720, baseType: !4443, size: 64, offset: 2304)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4445)
!4445 = !{!4446, !4447}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4444, file: !101, line: 633, baseType: !342, size: 32)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4444, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4364, file: !101, line: 721, baseType: !4449, size: 64, offset: 2368)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{null, !4220, !763}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4364, file: !101, line: 722, baseType: !4453, size: 64, offset: 2432)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4221, file: !94, line: 727, baseType: !4456, size: 64, offset: 4224)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4458)
!4458 = !{!4459, !4460, !4461, !4465, !4466, !4467}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4457, file: !101, line: 743, baseType: !4254, size: 1472)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4457, file: !101, line: 744, baseType: !4257, size: 64, offset: 1472)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4457, file: !101, line: 745, baseType: !4462, size: 64, offset: 1536)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{null, !4220, !837}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4457, file: !101, line: 746, baseType: !4257, size: 64, offset: 1600)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4457, file: !101, line: 747, baseType: !4248, size: 64, offset: 1664)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4457, file: !101, line: 748, baseType: !4248, size: 64, offset: 1728)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4221, file: !94, line: 736, baseType: !4469, size: 128, offset: 4288)
!4469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4470)
!4470 = !{!4471, !4475}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4469, file: !94, line: 531, baseType: !4472, size: 64)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4474, line: 13, flags: DIFlagFwdDecl)
!4474 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4469, file: !94, line: 532, baseType: !4476, size: 64, offset: 64)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4221, file: !94, line: 738, baseType: !4479, size: 64, offset: 4416)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4481)
!4481 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4221, file: !94, line: 740, baseType: !4483, size: 64, offset: 4480)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4221, file: !94, line: 741, baseType: !318, size: 64, offset: 4544)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4221, file: !94, line: 746, baseType: !318, size: 64, offset: 4608)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4221, file: !94, line: 747, baseType: !4487, size: 64, offset: 4672)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4489)
!4489 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4221, file: !94, line: 749, baseType: !4491, size: 64, offset: 4736)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4493)
!4493 = !{!4494, !4495, !4496}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4492, file: !94, line: 433, baseType: !7, size: 32)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4492, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4492, file: !94, line: 435, baseType: !211, size: 64, offset: 64)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4221, file: !94, line: 751, baseType: !222, size: 128, offset: 4800)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4221, file: !94, line: 762, baseType: !4499, size: 64, offset: 4928)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4221, file: !94, line: 770, baseType: !4502, offset: 4992)
!4502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4503, line: 5, elements: !1156)
!4503 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4221, file: !94, line: 772, baseType: !4505, size: 64, offset: 4992)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4507, line: 18, flags: DIFlagFwdDecl)
!4507 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4221, file: !94, line: 773, baseType: !4509, size: 64, offset: 5056)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4511, line: 41, size: 512, elements: !4512)
!4511 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4512 = !{!4513, !4514, !4608, !4609, !4610, !4611}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4510, file: !4511, line: 42, baseType: !4509, size: 64)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4510, file: !4511, line: 43, baseType: !4515, size: 64, offset: 64)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4517)
!4517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4511, line: 125, size: 1408, elements: !4518)
!4518 = !{!4519, !4523, !4527, !4533, !4537, !4538, !4543, !4547, !4551, !4555, !4559, !4560, !4564, !4568, !4572, !4583, !4584, !4585, !4586, !4596, !4600, !4604}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4517, file: !4511, line: 126, baseType: !4520, size: 64)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4521 = !DISubroutineType(types: !4522)
!4522 = !{!4509, !4509}
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4517, file: !4511, line: 127, baseType: !4524, size: 64, offset: 64)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = !DISubroutineType(types: !4526)
!4526 = !{null, !4509}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4517, file: !4511, line: 128, baseType: !4528, size: 64, offset: 128)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{!837, !4531}
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4510)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4517, file: !4511, line: 129, baseType: !4534, size: 64, offset: 192)
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = !DISubroutineType(types: !4536)
!4536 = !{!1251, !4531, !4240}
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4517, file: !4511, line: 131, baseType: !4528, size: 64, offset: 256)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4517, file: !4511, line: 133, baseType: !4539, size: 64, offset: 320)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!4542, !4531}
!4542 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4511, line: 132, flags: DIFlagFwdDecl)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4517, file: !4511, line: 134, baseType: !4544, size: 64, offset: 384)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = !DISubroutineType(types: !4546)
!4546 = !{!837, !4531, !402}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4517, file: !4511, line: 136, baseType: !4548, size: 64, offset: 448)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{!109, !4531, !402, !7, !205, !575}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4517, file: !4511, line: 141, baseType: !4552, size: 64, offset: 512)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!109, !4531, !402, !2060, !575}
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4517, file: !4511, line: 144, baseType: !4556, size: 64, offset: 576)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4557 = !DISubroutineType(types: !4558)
!4558 = !{!402, !4531}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4517, file: !4511, line: 145, baseType: !4556, size: 64, offset: 640)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4517, file: !4511, line: 146, baseType: !4561, size: 64, offset: 704)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!4509, !4531}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4517, file: !4511, line: 148, baseType: !4565, size: 64, offset: 768)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{!4509, !4531, !4509}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4517, file: !4511, line: 151, baseType: !4569, size: 64, offset: 832)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!4509, !4531, !402}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4517, file: !4511, line: 153, baseType: !4573, size: 64, offset: 896)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = !DISubroutineType(types: !4575)
!4575 = !{!109, !4531, !402, !402, !7, !7, !4576}
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4511, line: 94, size: 640, elements: !4578)
!4578 = !{!4579, !4580, !4581}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4577, file: !4511, line: 95, baseType: !4509, size: 64)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4577, file: !4511, line: 96, baseType: !7, size: 32, offset: 64)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4577, file: !4511, line: 97, baseType: !4582, size: 512, offset: 128)
!4582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 512, elements: !2617)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4517, file: !4511, line: 158, baseType: !4565, size: 64, offset: 960)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4517, file: !4511, line: 161, baseType: !4561, size: 64, offset: 1024)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4517, file: !4511, line: 163, baseType: !4520, size: 64, offset: 1088)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4517, file: !4511, line: 164, baseType: !4587, size: 64, offset: 1152)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{!109, !4531, !4590}
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4511, line: 73, size: 128, elements: !4592)
!4592 = !{!4593, !4594, !4595}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4591, file: !4511, line: 74, baseType: !7, size: 32)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4591, file: !4511, line: 75, baseType: !7, size: 32, offset: 32)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4591, file: !4511, line: 76, baseType: !4531, size: 64, offset: 64)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4517, file: !4511, line: 166, baseType: !4597, size: 64, offset: 1216)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!205, !4509, !109}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4517, file: !4511, line: 167, baseType: !4601, size: 64, offset: 1280)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!109, !4531, !7}
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4517, file: !4511, line: 168, baseType: !4605, size: 64, offset: 1344)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DISubroutineType(types: !4607)
!4607 = !{!109, !4509}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4510, file: !4511, line: 44, baseType: !4220, size: 64, offset: 128)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4510, file: !4511, line: 45, baseType: !222, size: 128, offset: 192)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4510, file: !4511, line: 46, baseType: !222, size: 128, offset: 320)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4510, file: !4511, line: 47, baseType: !370, size: 8, offset: 448)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4221, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4221, file: !94, line: 778, baseType: !444, size: 32, offset: 5152)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4221, file: !94, line: 779, baseType: !312, size: 32, offset: 5184)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4221, file: !94, line: 781, baseType: !342, size: 32, offset: 5216)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4221, file: !94, line: 782, baseType: !222, size: 128, offset: 5248)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4221, file: !94, line: 784, baseType: !4618, size: 64, offset: 5376)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4620)
!4620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4621, line: 52, size: 768, elements: !4622)
!4621 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4622 = !{!4623, !4624, !4625, !4626, !4627, !4631, !4635, !4636, !4637, !4638, !4642, !4646}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4620, file: !4621, line: 53, baseType: !402, size: 64)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4620, file: !4621, line: 55, baseType: !579, size: 64, offset: 64)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4620, file: !4621, line: 56, baseType: !579, size: 64, offset: 128)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4620, file: !4621, line: 58, baseType: !4237, size: 64, offset: 192)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4620, file: !4621, line: 59, baseType: !4628, size: 64, offset: 256)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{!428, !4240, !4246}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4620, file: !4621, line: 61, baseType: !4632, size: 64, offset: 320)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{null, !4618}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4620, file: !4621, line: 62, baseType: !4248, size: 64, offset: 384)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4620, file: !4621, line: 64, baseType: !4257, size: 64, offset: 448)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4620, file: !4621, line: 66, baseType: !1588, size: 64, offset: 512)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4620, file: !4621, line: 67, baseType: !4639, size: 64, offset: 576)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!1251, !4240}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4620, file: !4621, line: 69, baseType: !4643, size: 64, offset: 640)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{null, !4240, !1623, !1624}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4620, file: !4621, line: 71, baseType: !4252, size: 64, offset: 704)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4221, file: !94, line: 785, baseType: !579, size: 64, offset: 5440)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4221, file: !94, line: 787, baseType: !4248, size: 64, offset: 5504)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4221, file: !94, line: 788, baseType: !4650, size: 64, offset: 5568)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4221, file: !94, line: 789, baseType: !4653, size: 64, offset: 5632)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4221, file: !94, line: 791, baseType: !4656, size: 64, offset: 5696)
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4658)
!4658 = !{!4659, !4660, !4661, !4662, !4663}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4657, file: !94, line: 598, baseType: !116, size: 32)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4657, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4657, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4657, file: !94, line: 601, baseType: !837, size: 8, offset: 96)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4657, file: !94, line: 602, baseType: !837, size: 8, offset: 104)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4221, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4221, file: !94, line: 795, baseType: !837, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4221, file: !94, line: 796, baseType: !837, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4221, file: !94, line: 797, baseType: !837, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4221, file: !94, line: 798, baseType: !837, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4221, file: !94, line: 799, baseType: !837, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !4215, file: !142, line: 73, baseType: !4671, size: 256, offset: 128)
!4671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4215, file: !142, line: 66, size: 256, elements: !4672)
!4672 = !{!4673, !4674, !4675}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4671, file: !142, line: 68, baseType: !222, size: 128)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !4671, file: !142, line: 70, baseType: !205, size: 64, offset: 128)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4671, file: !142, line: 72, baseType: !342, size: 32, offset: 192)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4215, file: !142, line: 76, baseType: !4677, size: 64, offset: 384)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4679)
!4679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !4680, line: 178, size: 1664, elements: !4681)
!4680 = !DIFile(filename: "./include/drm/drm_drv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1f945ad2d8b16ba8834948006e1f4f23")
!4681 = !{!4682, !4686, !4693, !4697, !4701, !4702, !4703, !4707, !4708, !4714, !4719, !4723, !4728, !4734, !4742, !4757, !4763, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4809, !4810}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !4679, file: !4680, line: 195, baseType: !4683, size: 64)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!109, !4214, !211}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4679, file: !4680, line: 215, baseType: !4687, size: 64, offset: 64)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!109, !4214, !4690}
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !4692, line: 44, flags: DIFlagFwdDecl)
!4692 = !DIFile(filename: "./include/drm/drm_vma_manager.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5483318cd9ffeb7eed8e930be54b2ae2")
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "postclose", scope: !4679, file: !4680, line: 229, baseType: !4694, size: 64, offset: 128)
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = !DISubroutineType(types: !4696)
!4696 = !{null, !4214, !4690}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "lastclose", scope: !4679, file: !4680, line: 257, baseType: !4698, size: 64, offset: 192)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{null, !4214}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "unload", scope: !4679, file: !4680, line: 274, baseType: !4698, size: 64, offset: 256)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4679, file: !4680, line: 286, baseType: !4698, size: 64, offset: 320)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "master_set", scope: !4679, file: !4680, line: 293, baseType: !4704, size: 64, offset: 384)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{null, !4214, !4690, !837}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "master_drop", scope: !4679, file: !4680, line: 300, baseType: !4694, size: 64, offset: 448)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_init", scope: !4679, file: !4680, line: 307, baseType: !4709, size: 64, offset: 512)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = !DISubroutineType(types: !4711)
!4711 = !{null, !4712}
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !142, line: 13, flags: DIFlagFwdDecl)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "gem_create_object", scope: !4679, file: !4680, line: 316, baseType: !4715, size: 64, offset: 576)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DISubroutineType(types: !4717)
!4717 = !{!4718, !4214, !575}
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "prime_handle_to_fd", scope: !4679, file: !4680, line: 324, baseType: !4720, size: 64, offset: 640)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{!109, !4214, !4690, !802, !802, !1883}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "prime_fd_to_handle", scope: !4679, file: !4680, line: 331, baseType: !4724, size: 64, offset: 704)
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = !DISubroutineType(types: !4726)
!4726 = !{!109, !4214, !4690, !109, !4727}
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_import", scope: !4679, file: !4680, line: 341, baseType: !4729, size: 64, offset: 768)
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{!4718, !4214, !4732}
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4733, size: 64)
!4733 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf", file: !149, line: 121, flags: DIFlagFwdDecl)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_import_sg_table", scope: !4679, file: !4680, line: 349, baseType: !4735, size: 64, offset: 832)
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{!4718, !4214, !4738, !4740}
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_attachment", file: !149, line: 364, flags: DIFlagFwdDecl)
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !149, line: 153, flags: DIFlagFwdDecl)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_create", scope: !4679, file: !4680, line: 375, baseType: !4743, size: 64, offset: 896)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = !DISubroutineType(types: !4745)
!4745 = !{!109, !4690, !4214, !4746}
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_create_dumb", file: !4748, line: 1036, size: 256, elements: !4749)
!4748 = !DIFile(filename: "./include/uapi/drm/drm_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "357a7211aa80668185b31e7330dddd63")
!4749 = !{!4750, !4751, !4752, !4753, !4754, !4755, !4756}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4747, file: !4748, line: 1037, baseType: !314, size: 32)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4747, file: !4748, line: 1038, baseType: !314, size: 32, offset: 32)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !4747, file: !4748, line: 1039, baseType: !314, size: 32, offset: 64)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4747, file: !4748, line: 1040, baseType: !314, size: 32, offset: 96)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !4747, file: !4748, line: 1042, baseType: !314, size: 32, offset: 128)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "pitch", scope: !4747, file: !4748, line: 1043, baseType: !314, size: 32, offset: 160)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4747, file: !4748, line: 1044, baseType: !319, size: 64, offset: 192)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_map_offset", scope: !4679, file: !4680, line: 393, baseType: !4758, size: 64, offset: 960)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!109, !4690, !4214, !802, !4761}
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4762 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !223, line: 113, baseType: !318)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4679, file: !4680, line: 402, baseType: !4764, size: 64, offset: 1024)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{null, !4767, !4690}
!4767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4768, size: 64)
!4768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !4769, line: 76, size: 256, elements: !4770)
!4769 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!4770 = !{!4771, !4792, !4796, !4797}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "printfn", scope: !4768, file: !4769, line: 78, baseType: !4772, size: 64)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = !DISubroutineType(types: !4774)
!4774 = !{null, !4767, !4775}
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !4777, line: 79, size: 128, elements: !4778)
!4777 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4778 = !{!4779, !4780}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !4776, file: !4777, line: 80, baseType: !402, size: 64)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !4776, file: !4777, line: 81, baseType: !4781, size: 64, offset: 64)
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4782 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4783, line: 5, baseType: !4784)
!4783 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!4784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !4785)
!4785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4786, size: 192, elements: !2699)
!4786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4787)
!4787 = !{!4788, !4789, !4790, !4791}
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4786, file: !3, baseType: !7, size: 32)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4786, file: !3, baseType: !7, size: 32, offset: 32)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4786, file: !3, baseType: !205, size: 64, offset: 64)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4786, file: !3, baseType: !205, size: 64, offset: 128)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "puts", scope: !4768, file: !4769, line: 79, baseType: !4793, size: 64, offset: 64)
!4793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4794, size: 64)
!4794 = !DISubroutineType(types: !4795)
!4795 = !{null, !4767, !402}
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4768, file: !4769, line: 80, baseType: !205, size: 64, offset: 128)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !4768, file: !4769, line: 81, baseType: !402, size: 64, offset: 192)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !4679, file: !4680, line: 405, baseType: !109, size: 32, offset: 1088)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4679, file: !4680, line: 407, baseType: !109, size: 32, offset: 1120)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "patchlevel", scope: !4679, file: !4680, line: 409, baseType: !109, size: 32, offset: 1152)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4679, file: !4680, line: 411, baseType: !428, size: 64, offset: 1216)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4679, file: !4680, line: 413, baseType: !428, size: 64, offset: 1280)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !4679, file: !4680, line: 415, baseType: !428, size: 64, offset: 1344)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !4679, file: !4680, line: 423, baseType: !312, size: 32, offset: 1408)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "ioctls", scope: !4679, file: !4680, line: 433, baseType: !4806, size: 64, offset: 1472)
!4806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4807, size: 64)
!4807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4808)
!4808 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_ioctl_desc", file: !4680, line: 433, flags: DIFlagFwdDecl)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "num_ioctls", scope: !4679, file: !4680, line: 435, baseType: !109, size: 32, offset: 1536)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4679, file: !4680, line: 444, baseType: !956, size: 64, offset: 1600)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !4215, file: !142, line: 88, baseType: !205, size: 64, offset: 448)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4215, file: !142, line: 98, baseType: !4712, size: 64, offset: 512)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !4215, file: !142, line: 107, baseType: !4712, size: 64, offset: 576)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !4215, file: !142, line: 110, baseType: !4712, size: 64, offset: 640)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4215, file: !142, line: 117, baseType: !837, size: 8, offset: 704)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !4215, file: !142, line: 125, baseType: !4817, size: 64, offset: 768)
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !4819, line: 65, size: 1280, elements: !4820)
!4819 = !DIFile(filename: "./include/drm/drm_auth.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10e944a391afc2612335b30db18d0dee")
!4820 = !{!4821, !4822, !4823, !4824, !4825, !4832, !4833, !4834, !4835, !4836, !4837, !4838}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4818, file: !4819, line: 66, baseType: !1721, size: 32)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4818, file: !4819, line: 67, baseType: !4214, size: 64, offset: 64)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !4818, file: !4819, line: 72, baseType: !428, size: 64, offset: 128)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "unique_len", scope: !4818, file: !4819, line: 77, baseType: !109, size: 32, offset: 192)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "magic_map", scope: !4818, file: !4819, line: 82, baseType: !4826, size: 192, offset: 256)
!4826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4827, line: 19, size: 192, elements: !4828)
!4827 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!4828 = !{!4829, !4830, !4831}
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4826, file: !4827, line: 20, baseType: !3919, size: 128)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4826, file: !4827, line: 21, baseType: !7, size: 32, offset: 128)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4826, file: !4827, line: 22, baseType: !7, size: 32, offset: 160)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !4818, file: !4819, line: 83, baseType: !205, size: 64, offset: 448)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "lessor", scope: !4818, file: !4819, line: 99, baseType: !4817, size: 64, offset: 512)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_id", scope: !4818, file: !4819, line: 107, baseType: !109, size: 32, offset: 576)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_list", scope: !4818, file: !4819, line: 116, baseType: !222, size: 128, offset: 640)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "lessees", scope: !4818, file: !4819, line: 128, baseType: !222, size: 128, offset: 768)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "leases", scope: !4818, file: !4819, line: 139, baseType: !4826, size: 192, offset: 896)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_idr", scope: !4818, file: !4819, line: 147, baseType: !4826, size: 192, offset: 1088)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !4215, file: !142, line: 135, baseType: !312, size: 32, offset: 832)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !4215, file: !142, line: 143, baseType: !837, size: 8, offset: 864)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !4215, file: !142, line: 146, baseType: !240, size: 64, offset: 896)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !4215, file: !142, line: 149, baseType: !428, size: 64, offset: 960)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !4215, file: !142, line: 159, baseType: !642, size: 256, offset: 1024)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !4215, file: !142, line: 166, baseType: !642, size: 256, offset: 1280)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !4215, file: !142, line: 174, baseType: !362, size: 32, offset: 1536)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !4215, file: !142, line: 177, baseType: !642, size: 256, offset: 1600)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !4215, file: !142, line: 183, baseType: !222, size: 128, offset: 1856)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !4215, file: !142, line: 191, baseType: !222, size: 128, offset: 1984)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !4215, file: !142, line: 198, baseType: !642, size: 256, offset: 2112)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !4215, file: !142, line: 205, baseType: !222, size: 128, offset: 2368)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !4215, file: !142, line: 220, baseType: !837, size: 8, offset: 2496)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !4215, file: !142, line: 230, baseType: !4853, size: 64, offset: 2560)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !142, line: 15, flags: DIFlagFwdDecl)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !4215, file: !142, line: 237, baseType: !342, size: 32, offset: 2624)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !4215, file: !142, line: 242, baseType: !342, size: 32, offset: 2656)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !4215, file: !142, line: 265, baseType: !312, size: 32, offset: 2688)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !4215, file: !142, line: 268, baseType: !222, size: 128, offset: 2752)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !4215, file: !142, line: 276, baseType: !342, size: 32, offset: 2880)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !4215, file: !142, line: 279, baseType: !7, size: 32, offset: 2912)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !4215, file: !142, line: 282, baseType: !4862, size: 8704, offset: 2944)
!4862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !4863, line: 375, size: 8704, elements: !4864)
!4863 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3fe2bd3e9391801689324df8a16c9607")
!4864 = !{!4865, !4866, !4885, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4862, file: !4863, line: 386, baseType: !642, size: 256)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !4862, file: !4863, line: 396, baseType: !4867, size: 448, offset: 256)
!4867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !4868, line: 85, size: 448, elements: !4869)
!4868 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90e902ea14584677125d9e33023828e6")
!4869 = !{!4870, !4884}
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4867, file: !4868, line: 89, baseType: !4871, size: 320)
!4871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !4872, line: 47, size: 320, elements: !4873)
!4872 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!4873 = !{!4874, !4875}
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4871, file: !4872, line: 48, baseType: !642, size: 256)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4871, file: !4872, line: 49, baseType: !4876, size: 64, offset: 256)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !4872, line: 55, size: 192, elements: !4878)
!4878 = !{!4879, !4880, !4881, !4882, !4883}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4877, file: !4872, line: 56, baseType: !2463, size: 64)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !4877, file: !4872, line: 57, baseType: !211, size: 64, offset: 64)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !4877, file: !4872, line: 58, baseType: !7, size: 32, offset: 128)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !4877, file: !4872, line: 59, baseType: !245, size: 16, offset: 160)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !4877, file: !4872, line: 60, baseType: !245, size: 16, offset: 176)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4867, file: !4868, line: 95, baseType: !222, size: 128, offset: 320)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !4862, file: !4863, line: 406, baseType: !4886, size: 64, offset: 704)
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4887, size: 64)
!4887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !4868, line: 46, size: 512, elements: !4888)
!4888 = !{!4889, !4890, !4892, !4895, !4896, !4897}
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !4887, file: !4868, line: 48, baseType: !4877, size: 192)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !4887, file: !4868, line: 55, baseType: !4891, size: 64, offset: 192)
!4891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "stack_depot", scope: !4887, file: !4868, line: 61, baseType: !4893, size: 32, offset: 256)
!4893 = !DIDerivedType(tag: DW_TAG_typedef, name: "depot_stack_handle_t", file: !4894, line: 27, baseType: !312)
!4894 = !DIFile(filename: "./include/linux/stackdepot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "787fdf2c1a48da25b4d7ecc2db077a40")
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !4887, file: !4868, line: 66, baseType: !222, size: 128, offset: 320)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !4887, file: !4868, line: 71, baseType: !837, size: 8, offset: 448)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !4887, file: !4868, line: 74, baseType: !837, size: 8, offset: 456)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !4862, file: !4863, line: 414, baseType: !642, size: 256, offset: 768)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !4862, file: !4863, line: 422, baseType: !4826, size: 192, offset: 1024)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !4862, file: !4863, line: 430, baseType: !4826, size: 192, offset: 1216)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !4862, file: !4863, line: 433, baseType: !642, size: 256, offset: 1408)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !4862, file: !4863, line: 435, baseType: !109, size: 32, offset: 1664)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !4862, file: !4863, line: 437, baseType: !222, size: 128, offset: 1728)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !4862, file: !4863, line: 443, baseType: !342, size: 32, offset: 1856)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !4862, file: !4863, line: 448, baseType: !109, size: 32, offset: 1888)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !4862, file: !4863, line: 452, baseType: !4907, size: 128, offset: 1920)
!4907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !4827, line: 246, size: 128, elements: !4908)
!4908 = !{!4909}
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4907, file: !4827, line: 247, baseType: !3919, size: 128)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !4862, file: !4863, line: 460, baseType: !222, size: 128, offset: 2048)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !4862, file: !4863, line: 470, baseType: !3427, size: 64, offset: 2176)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !4862, file: !4863, line: 474, baseType: !1290, size: 256, offset: 2240)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !4862, file: !4863, line: 482, baseType: !109, size: 32, offset: 2496)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !4862, file: !4863, line: 490, baseType: !222, size: 128, offset: 2560)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !4862, file: !4863, line: 499, baseType: !109, size: 32, offset: 2688)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !4862, file: !4863, line: 506, baseType: !222, size: 128, offset: 2752)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !4862, file: !4863, line: 514, baseType: !109, size: 32, offset: 2880)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !4862, file: !4863, line: 521, baseType: !222, size: 128, offset: 2944)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !4862, file: !4863, line: 530, baseType: !222, size: 128, offset: 3072)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !4862, file: !4863, line: 539, baseType: !222, size: 128, offset: 3200)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !4862, file: !4863, line: 541, baseType: !109, size: 32, offset: 3328)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !4862, file: !4863, line: 541, baseType: !109, size: 32, offset: 3360)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !4862, file: !4863, line: 542, baseType: !109, size: 32, offset: 3392)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !4862, file: !4863, line: 542, baseType: !109, size: 32, offset: 3424)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4862, file: !4863, line: 543, baseType: !4926, size: 64, offset: 3456)
!4926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4927, size: 64)
!4927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4928)
!4928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !4863, line: 47, size: 576, elements: !4929)
!4929 = !{!4930, !4951, !4958, !4959, !4967, !4973, !4977, !4981, !4985}
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !4928, file: !4863, line: 83, baseType: !4931, size: 64)
!4931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4932, size: 64)
!4932 = !DISubroutineType(types: !4933)
!4933 = !{!4934, !4214, !4690, !4936}
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !4863, line: 83, flags: DIFlagFwdDecl)
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4937, size: 64)
!4937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4938)
!4938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !4748, line: 703, size: 832, elements: !4939)
!4939 = !{!4940, !4941, !4942, !4943, !4944, !4945, !4947, !4948, !4949}
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !4938, file: !4748, line: 705, baseType: !314, size: 32)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4938, file: !4748, line: 707, baseType: !314, size: 32, offset: 32)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4938, file: !4748, line: 709, baseType: !314, size: 32, offset: 64)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !4938, file: !4748, line: 714, baseType: !314, size: 32, offset: 96)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4938, file: !4748, line: 719, baseType: !314, size: 32, offset: 128)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !4938, file: !4748, line: 725, baseType: !4946, size: 128, offset: 160)
!4946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 128, elements: !702)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !4938, file: !4748, line: 727, baseType: !4946, size: 128, offset: 288)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !4938, file: !4748, line: 729, baseType: !4946, size: 128, offset: 416)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !4938, file: !4748, line: 735, baseType: !4950, size: 256, offset: 576)
!4950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 256, elements: !702)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !4928, file: !4863, line: 98, baseType: !4952, size: 64, offset: 64)
!4952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4953, size: 64)
!4953 = !DISubroutineType(types: !4954)
!4954 = !{!4955, !4936}
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!4956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4957)
!4957 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !4863, line: 38, flags: DIFlagFwdDecl)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !4928, file: !4863, line: 114, baseType: !4698, size: 64, offset: 128)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !4928, file: !4863, line: 124, baseType: !4960, size: 64, offset: 192)
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4961, size: 64)
!4961 = !DISubroutineType(types: !4962)
!4962 = !{!4963, !4214, !4964}
!4963 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_status", file: !4863, line: 124, flags: DIFlagFwdDecl)
!4964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4965, size: 64)
!4965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4966)
!4966 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !4863, line: 39, flags: DIFlagFwdDecl)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !4928, file: !4863, line: 201, baseType: !4968, size: 64, offset: 256)
!4968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4969, size: 64)
!4969 = !DISubroutineType(types: !4970)
!4970 = !{!109, !4214, !4971}
!4971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4972, size: 64)
!4972 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !4863, line: 36, flags: DIFlagFwdDecl)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !4928, file: !4863, line: 283, baseType: !4974, size: 64, offset: 320)
!4974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4975, size: 64)
!4975 = !DISubroutineType(types: !4976)
!4976 = !{!109, !4214, !4971, !837}
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !4928, file: !4863, line: 302, baseType: !4978, size: 64, offset: 384)
!4978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4979, size: 64)
!4979 = !DISubroutineType(types: !4980)
!4980 = !{!4971, !4214}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !4928, file: !4863, line: 323, baseType: !4982, size: 64, offset: 448)
!4982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4983, size: 64)
!4983 = !DISubroutineType(types: !4984)
!4984 = !{null, !4971}
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !4928, file: !4863, line: 338, baseType: !4982, size: 64, offset: 512)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !4862, file: !4863, line: 546, baseType: !837, size: 8, offset: 3520)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !4862, file: !4863, line: 547, baseType: !837, size: 8, offset: 3528)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !4862, file: !4863, line: 548, baseType: !837, size: 8, offset: 3536)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !4862, file: !4863, line: 549, baseType: !2040, size: 704, offset: 3584)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !4862, file: !4863, line: 557, baseType: !642, size: 256, offset: 4288)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !4862, file: !4863, line: 565, baseType: !222, size: 128, offset: 4544)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !4862, file: !4863, line: 573, baseType: !4993, size: 64, offset: 4672)
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !4863, line: 573, flags: DIFlagFwdDecl)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !4862, file: !4863, line: 578, baseType: !4993, size: 64, offset: 4736)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !4862, file: !4863, line: 583, baseType: !4993, size: 64, offset: 4800)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !4862, file: !4863, line: 589, baseType: !4993, size: 64, offset: 4864)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !4862, file: !4863, line: 594, baseType: !4993, size: 64, offset: 4928)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !4862, file: !4863, line: 599, baseType: !4993, size: 64, offset: 4992)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !4862, file: !4863, line: 604, baseType: !4993, size: 64, offset: 5056)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !4862, file: !4863, line: 609, baseType: !4993, size: 64, offset: 5120)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !4862, file: !4863, line: 614, baseType: !4993, size: 64, offset: 5184)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !4862, file: !4863, line: 619, baseType: !4993, size: 64, offset: 5248)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !4862, file: !4863, line: 624, baseType: !4993, size: 64, offset: 5312)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !4862, file: !4863, line: 629, baseType: !4993, size: 64, offset: 5376)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !4862, file: !4863, line: 634, baseType: !4993, size: 64, offset: 5440)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !4862, file: !4863, line: 639, baseType: !4993, size: 64, offset: 5504)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !4862, file: !4863, line: 644, baseType: !4993, size: 64, offset: 5568)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !4862, file: !4863, line: 649, baseType: !4993, size: 64, offset: 5632)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !4862, file: !4863, line: 655, baseType: !4993, size: 64, offset: 5696)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !4862, file: !4863, line: 660, baseType: !4993, size: 64, offset: 5760)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !4862, file: !4863, line: 669, baseType: !4993, size: 64, offset: 5824)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !4862, file: !4863, line: 675, baseType: !4993, size: 64, offset: 5888)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !4862, file: !4863, line: 681, baseType: !4993, size: 64, offset: 5952)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !4862, file: !4863, line: 686, baseType: !4993, size: 64, offset: 6016)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !4862, file: !4863, line: 692, baseType: !4993, size: 64, offset: 6080)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !4862, file: !4863, line: 697, baseType: !4993, size: 64, offset: 6144)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !4862, file: !4863, line: 703, baseType: !4993, size: 64, offset: 6208)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !4862, file: !4863, line: 709, baseType: !4993, size: 64, offset: 6272)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !4862, file: !4863, line: 714, baseType: !4993, size: 64, offset: 6336)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_tv_mode_property", scope: !4862, file: !4863, line: 722, baseType: !4993, size: 64, offset: 6400)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !4862, file: !4863, line: 728, baseType: !4993, size: 64, offset: 6464)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !4862, file: !4863, line: 734, baseType: !4993, size: 64, offset: 6528)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !4862, file: !4863, line: 739, baseType: !4993, size: 64, offset: 6592)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !4862, file: !4863, line: 744, baseType: !4993, size: 64, offset: 6656)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !4862, file: !4863, line: 749, baseType: !4993, size: 64, offset: 6720)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !4862, file: !4863, line: 754, baseType: !4993, size: 64, offset: 6784)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !4862, file: !4863, line: 759, baseType: !4993, size: 64, offset: 6848)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !4862, file: !4863, line: 764, baseType: !4993, size: 64, offset: 6912)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !4862, file: !4863, line: 769, baseType: !4993, size: 64, offset: 6976)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !4862, file: !4863, line: 774, baseType: !4993, size: 64, offset: 7040)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !4862, file: !4863, line: 778, baseType: !4993, size: 64, offset: 7104)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !4862, file: !4863, line: 784, baseType: !4993, size: 64, offset: 7168)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !4862, file: !4863, line: 789, baseType: !4993, size: 64, offset: 7232)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !4862, file: !4863, line: 794, baseType: !4993, size: 64, offset: 7296)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !4862, file: !4863, line: 799, baseType: !4993, size: 64, offset: 7360)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !4862, file: !4863, line: 804, baseType: !4993, size: 64, offset: 7424)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !4862, file: !4863, line: 810, baseType: !4993, size: 64, offset: 7488)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !4862, file: !4863, line: 816, baseType: !4993, size: 64, offset: 7552)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !4862, file: !4863, line: 821, baseType: !4993, size: 64, offset: 7616)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !4862, file: !4863, line: 827, baseType: !4993, size: 64, offset: 7680)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !4862, file: !4863, line: 832, baseType: !4993, size: 64, offset: 7744)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !4862, file: !4863, line: 839, baseType: !4993, size: 64, offset: 7808)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !4862, file: !4863, line: 846, baseType: !4993, size: 64, offset: 7872)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !4862, file: !4863, line: 853, baseType: !4993, size: 64, offset: 7936)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !4862, file: !4863, line: 861, baseType: !4993, size: 64, offset: 8000)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !4862, file: !4863, line: 869, baseType: !4993, size: 64, offset: 8064)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !4862, file: !4863, line: 876, baseType: !4993, size: 64, offset: 8128)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !4862, file: !4863, line: 882, baseType: !4993, size: 64, offset: 8192)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !4862, file: !4863, line: 888, baseType: !4993, size: 64, offset: 8256)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !4862, file: !4863, line: 891, baseType: !802, size: 32, offset: 8320)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !4862, file: !4863, line: 891, baseType: !802, size: 32, offset: 8352)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !4862, file: !4863, line: 899, baseType: !837, size: 8, offset: 8384)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !4862, file: !4863, line: 913, baseType: !837, size: 8, offset: 8392)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !4862, file: !4863, line: 919, baseType: !837, size: 8, offset: 8400)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "fb_modifiers_not_supported", scope: !4862, file: !4863, line: 929, baseType: !837, size: 8, offset: 8408)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !4862, file: !4863, line: 937, baseType: !837, size: 8, offset: 8416)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !4862, file: !4863, line: 943, baseType: !4993, size: 64, offset: 8448)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !4862, file: !4863, line: 946, baseType: !802, size: 32, offset: 8512)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !4862, file: !4863, line: 946, baseType: !802, size: 32, offset: 8544)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !4862, file: !4863, line: 955, baseType: !4971, size: 64, offset: 8576)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4862, file: !4863, line: 957, baseType: !5063, size: 64, offset: 8640)
!5063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5064, size: 64)
!5064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5065)
!5065 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !4863, line: 957, flags: DIFlagFwdDecl)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !4215, file: !142, line: 285, baseType: !642, size: 256, offset: 11648)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !4215, file: !142, line: 288, baseType: !4826, size: 192, offset: 11904)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !4215, file: !142, line: 291, baseType: !5069, size: 64, offset: 12096)
!5069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5070, size: 64)
!5070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !4692, line: 59, size: 1984, elements: !5071)
!5071 = !{!5072, !5073}
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !5070, file: !4692, line: 60, baseType: !660, size: 64)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "vm_addr_space_mm", scope: !5070, file: !4692, line: 61, baseType: !5074, size: 1920, offset: 64)
!5074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm", file: !5075, line: 190, size: 1920, elements: !5076)
!5075 = !DIFile(filename: "./include/drm/drm_mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84c90dff9a569f9267103742808582e0")
!5076 = !{!5077, !5099, !5100, !5101, !5102, !5103, !5104}
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "color_adjust", scope: !5074, file: !5075, line: 200, baseType: !5078, size: 64)
!5078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5079, size: 64)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{null, !5081, !211, !4483, !4483}
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5083)
!5083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm_node", file: !5075, line: 157, size: 1344, elements: !5084)
!5084 = !{!5085, !5086, !5087, !5088, !5090, !5091, !5092, !5093, !5094, !5095, !5096, !5097, !5098}
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !5083, file: !5075, line: 159, baseType: !211, size: 64)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5083, file: !5075, line: 161, baseType: !318, size: 64, offset: 64)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5083, file: !5075, line: 163, baseType: !318, size: 64, offset: 128)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !5083, file: !5075, line: 165, baseType: !5089, size: 64, offset: 192)
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5074, size: 64)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !5083, file: !5075, line: 166, baseType: !222, size: 128, offset: 256)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !5083, file: !5075, line: 167, baseType: !222, size: 128, offset: 384)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5083, file: !5075, line: 168, baseType: !770, size: 192, align: 64, offset: 512)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_size", scope: !5083, file: !5075, line: 169, baseType: !770, size: 192, align: 64, offset: 704)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_addr", scope: !5083, file: !5075, line: 170, baseType: !770, size: 192, align: 64, offset: 896)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "__subtree_last", scope: !5083, file: !5075, line: 171, baseType: !318, size: 64, offset: 1088)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "hole_size", scope: !5083, file: !5075, line: 172, baseType: !318, size: 64, offset: 1152)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_max_hole", scope: !5083, file: !5075, line: 173, baseType: !318, size: 64, offset: 1216)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5083, file: !5075, line: 174, baseType: !211, size: 64, offset: 1280)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !5074, file: !5075, line: 206, baseType: !222, size: 128, offset: 64)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "head_node", scope: !5074, file: !5075, line: 209, baseType: !5083, size: 1344, offset: 192)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "interval_tree", scope: !5074, file: !5075, line: 211, baseType: !2633, size: 128, offset: 1536)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "holes_size", scope: !5074, file: !5075, line: 212, baseType: !2633, size: 128, offset: 1664)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "holes_addr", scope: !5074, file: !5075, line: 213, baseType: !1645, size: 64, offset: 1792)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "scan_active", scope: !5074, file: !5075, line: 215, baseType: !211, size: 64, offset: 1856)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !4215, file: !142, line: 294, baseType: !5106, size: 64, offset: 12160)
!5106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5107, size: 64)
!5107 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !142, line: 17, flags: DIFlagFwdDecl)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !4215, file: !142, line: 304, baseType: !141, size: 32, offset: 12224)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !4215, file: !142, line: 312, baseType: !5110, size: 64, offset: 12288)
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 64)
!5111 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !142, line: 18, flags: DIFlagFwdDecl)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !4215, file: !142, line: 319, baseType: !642, size: 256, offset: 12352)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !4215, file: !142, line: 327, baseType: !222, size: 128, offset: 12608)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "filp", scope: !4209, file: !149, line: 302, baseType: !607, size: 64, offset: 128)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "vma_node", scope: !4209, file: !149, line: 314, baseType: !5116, size: 1536, offset: 192)
!5116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_node", file: !4692, line: 52, size: 1536, elements: !5117)
!5117 = !{!5118, !5119, !5120, !5121}
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !5116, file: !4692, line: 53, baseType: !660, size: 64)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "vm_node", scope: !5116, file: !4692, line: 54, baseType: !5083, size: 1344, offset: 64)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "vm_files", scope: !5116, file: !4692, line: 55, baseType: !1645, size: 64, offset: 1408)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "driver_private", scope: !5116, file: !4692, line: 56, baseType: !205, size: 64, offset: 1472)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4209, file: !149, line: 322, baseType: !575, size: 64, offset: 1728)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4209, file: !149, line: 331, baseType: !109, size: 32, offset: 1792)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "dma_buf", scope: !4209, file: !149, line: 344, baseType: !4732, size: 64, offset: 1856)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "import_attach", scope: !4209, file: !149, line: 364, baseType: !4738, size: 64, offset: 1920)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !4209, file: !149, line: 373, baseType: !5127, size: 64, offset: 1984)
!5127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5128, size: 64)
!5128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv", file: !195, line: 155, size: 384, elements: !5129)
!5129 = !{!5130, !5131}
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5128, file: !195, line: 166, baseType: !4871, size: 320)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "fences", scope: !5128, file: !195, line: 178, baseType: !5132, size: 64, offset: 320)
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5133, size: 64)
!5133 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv_list", file: !195, line: 50, flags: DIFlagFwdDecl)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "_resv", scope: !4209, file: !149, line: 382, baseType: !5128, size: 384, offset: 2048)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "gpuva", scope: !4209, file: !149, line: 398, baseType: !5136, size: 128, offset: 2432)
!5136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4209, file: !149, line: 392, size: 128, elements: !5137)
!5137 = !{!5138}
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5136, file: !149, line: 393, baseType: !222, size: 128)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4209, file: !149, line: 409, baseType: !5140, size: 64, offset: 2560)
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5141, size: 64)
!5141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5142)
!5142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object_funcs", file: !149, line: 69, size: 896, elements: !5143)
!5143 = !{!5144, !5148, !5152, !5156, !5162, !5166, !5170, !5171, !5175, !5189, !5193, !5197, !5198, !5202}
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5142, file: !149, line: 77, baseType: !5145, size: 64)
!5145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5146, size: 64)
!5146 = !DISubroutineType(types: !5147)
!5147 = !{null, !4718}
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5142, file: !149, line: 86, baseType: !5149, size: 64, offset: 64)
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5150, size: 64)
!5150 = !DISubroutineType(types: !5151)
!5151 = !{!109, !4718, !4690}
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !5142, file: !149, line: 95, baseType: !5153, size: 64, offset: 128)
!5153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5154, size: 64)
!5154 = !DISubroutineType(types: !5155)
!5155 = !{null, !4718, !4690}
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "print_info", scope: !5142, file: !149, line: 110, baseType: !5157, size: 64, offset: 192)
!5157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5158, size: 64)
!5158 = !DISubroutineType(types: !5159)
!5159 = !{null, !4767, !7, !5160}
!5160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5161, size: 64)
!5161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4209)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "export", scope: !5142, file: !149, line: 121, baseType: !5163, size: 64, offset: 256)
!5163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5164, size: 64)
!5164 = !DISubroutineType(types: !5165)
!5165 = !{!4732, !4718, !109}
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !5142, file: !149, line: 130, baseType: !5167, size: 64, offset: 320)
!5167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5168, size: 64)
!5168 = !DISubroutineType(types: !5169)
!5169 = !{!109, !4718}
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "unpin", scope: !5142, file: !149, line: 139, baseType: !5145, size: 64, offset: 384)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "get_sg_table", scope: !5142, file: !149, line: 153, baseType: !5172, size: 64, offset: 448)
!5172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5173, size: 64)
!5173 = !DISubroutineType(types: !5174)
!5174 = !{!4740, !4718}
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "vmap", scope: !5142, file: !149, line: 163, baseType: !5176, size: 64, offset: 512)
!5176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5177, size: 64)
!5177 = !DISubroutineType(types: !5178)
!5178 = !{!109, !4718, !5179}
!5179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5180, size: 64)
!5180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iosys_map", file: !5181, line: 109, size: 128, elements: !5182)
!5181 = !DIFile(filename: "./include/linux/iosys-map.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c97d7374529d1c22dbeacc3bfd30605")
!5182 = !{!5183, !5188}
!5183 = !DIDerivedType(tag: DW_TAG_member, scope: !5180, file: !5181, line: 110, baseType: !5184, size: 64)
!5184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5180, file: !5181, line: 110, size: 64, elements: !5185)
!5185 = !{!5186, !5187}
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr_iomem", scope: !5184, file: !5181, line: 111, baseType: !205, size: 64)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5184, file: !5181, line: 112, baseType: !205, size: 64)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "is_iomem", scope: !5180, file: !5181, line: 114, baseType: !837, size: 8, offset: 64)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "vunmap", scope: !5142, file: !149, line: 173, baseType: !5190, size: 64, offset: 576)
!5190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5191, size: 64)
!5191 = !DISubroutineType(types: !5192)
!5192 = !{null, !4718, !5179}
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5142, file: !149, line: 186, baseType: !5194, size: 64, offset: 640)
!5194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5195, size: 64)
!5195 = !DISubroutineType(types: !5196)
!5196 = !{!109, !4718, !1122}
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "evict", scope: !5142, file: !149, line: 196, baseType: !5167, size: 64, offset: 704)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5142, file: !149, line: 209, baseType: !5199, size: 64, offset: 768)
!5199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5200, size: 64)
!5200 = !DISubroutineType(types: !5201)
!5201 = !{!148, !4718}
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !5142, file: !149, line: 218, baseType: !1333, size: 64, offset: 832)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "lru_node", scope: !4209, file: !149, line: 416, baseType: !222, size: 128, offset: 2624)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4209, file: !149, line: 423, baseType: !5205, size: 64, offset: 2752)
!5205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5206, size: 64)
!5206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_lru", file: !149, line: 230, size: 256, elements: !5207)
!5207 = !{!5208, !5210, !5211}
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5206, file: !149, line: 238, baseType: !5209, size: 64)
!5209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5206, file: !149, line: 246, baseType: !565, size: 64, offset: 64)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5206, file: !149, line: 253, baseType: !222, size: 128, offset: 128)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !4206, file: !160, line: 104, baseType: !5213, size: 64, offset: 2816)
!5213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5214, size: 64)
!5214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_device", file: !5215, line: 215, size: 16960, elements: !5216)
!5215 = !DIFile(filename: "./include/drm/ttm/ttm_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "318d87bc69ff4bc10378351ef0b91aca")
!5216 = !{!5217, !5218, !5327, !5412, !5414, !5415, !5440, !5441, !5442, !5443}
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !5214, file: !5215, line: 220, baseType: !222, size: 128)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5214, file: !5215, line: 226, baseType: !5219, size: 64, offset: 128)
!5219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5220, size: 64)
!5220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5221)
!5221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_device_funcs", file: !5215, line: 61, size: 896, elements: !5222)
!5222 = !{!5223, !5240, !5254, !5258, !5259, !5272, !5283, !5305, !5309, !5310, !5314, !5318, !5322, !5326}
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "ttm_tt_create", scope: !5221, file: !5215, line: 73, baseType: !5224, size: 64)
!5224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5225, size: 64)
!5225 = !DISubroutineType(types: !5226)
!5226 = !{!5227, !4205, !802}
!5227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5228, size: 64)
!5228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_tt", file: !5229, line: 46, size: 384, elements: !5230)
!5229 = !DIFile(filename: "./include/drm/ttm/ttm_tt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a8611f3b3c85a1444200cb28e58947d5")
!5230 = !{!5231, !5232, !5233, !5234, !5235, !5238, !5239}
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5228, file: !5229, line: 48, baseType: !3410, size: 64)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "page_flags", scope: !5228, file: !5229, line: 99, baseType: !802, size: 32, offset: 64)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "num_pages", scope: !5228, file: !5229, line: 101, baseType: !802, size: 32, offset: 96)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !5228, file: !5229, line: 103, baseType: !4740, size: 64, offset: 128)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !5228, file: !5229, line: 105, baseType: !5236, size: 64, offset: 192)
!5236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5237, size: 64)
!5237 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !223, line: 149, baseType: !318)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "swap_storage", scope: !5228, file: !5229, line: 107, baseType: !607, size: 64, offset: 256)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !5228, file: !5229, line: 112, baseType: !153, size: 32, offset: 320)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "ttm_tt_populate", scope: !5221, file: !5215, line: 85, baseType: !5241, size: 64, offset: 64)
!5241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5242, size: 64)
!5242 = !DISubroutineType(types: !5243)
!5243 = !{!109, !5213, !5227, !5244}
!5244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5245, size: 64)
!5245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_operation_ctx", file: !160, line: 178, size: 192, elements: !5246)
!5246 = !{!5247, !5248, !5249, !5250, !5251, !5252, !5253}
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !5245, file: !160, line: 179, baseType: !837, size: 8)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "no_wait_gpu", scope: !5245, file: !160, line: 180, baseType: !837, size: 8, offset: 8)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_retry_mayfail", scope: !5245, file: !160, line: 181, baseType: !837, size: 8, offset: 16)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "allow_res_evict", scope: !5245, file: !160, line: 182, baseType: !837, size: 8, offset: 24)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "force_alloc", scope: !5245, file: !160, line: 183, baseType: !837, size: 8, offset: 32)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !5245, file: !160, line: 184, baseType: !5127, size: 64, offset: 64)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_moved", scope: !5245, file: !160, line: 185, baseType: !4762, size: 64, offset: 128)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "ttm_tt_unpopulate", scope: !5221, file: !5215, line: 96, baseType: !5255, size: 64, offset: 128)
!5255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5256, size: 64)
!5256 = !DISubroutineType(types: !5257)
!5257 = !{null, !5213, !5227}
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "ttm_tt_destroy", scope: !5221, file: !5215, line: 108, baseType: !5255, size: 64, offset: 192)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "eviction_valuable", scope: !5221, file: !5215, line: 119, baseType: !5260, size: 64, offset: 256)
!5260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5261, size: 64)
!5261 = !DISubroutineType(types: !5262)
!5262 = !{!837, !4205, !5263}
!5263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5264, size: 64)
!5264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5265)
!5265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_place", file: !5266, line: 77, size: 128, elements: !5267)
!5266 = !DIFile(filename: "./include/drm/ttm/ttm_placement.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f863dfb010ab9adca021a04ffe4a884")
!5267 = !{!5268, !5269, !5270, !5271}
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "fpfn", scope: !5265, file: !5266, line: 78, baseType: !7, size: 32)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "lpfn", scope: !5265, file: !5266, line: 79, baseType: !7, size: 32, offset: 32)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "mem_type", scope: !5265, file: !5266, line: 80, baseType: !802, size: 32, offset: 64)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5265, file: !5266, line: 81, baseType: !802, size: 32, offset: 96)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "evict_flags", scope: !5221, file: !5215, line: 133, baseType: !5273, size: 64, offset: 320)
!5273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5274, size: 64)
!5274 = !DISubroutineType(types: !5275)
!5275 = !{null, !4205, !5276}
!5276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5277, size: 64)
!5277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_placement", file: !5266, line: 94, size: 256, elements: !5278)
!5278 = !{!5279, !5280, !5281, !5282}
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "num_placement", scope: !5277, file: !5266, line: 95, baseType: !7, size: 32)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !5277, file: !5266, line: 96, baseType: !5263, size: 64, offset: 64)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "num_busy_placement", scope: !5277, file: !5266, line: 97, baseType: !7, size: 32, offset: 128)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "busy_placement", scope: !5277, file: !5266, line: 98, baseType: !5263, size: 64, offset: 192)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "move", scope: !5221, file: !5215, line: 149, baseType: !5284, size: 64, offset: 384)
!5284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5285, size: 64)
!5285 = !DISubroutineType(types: !5286)
!5286 = !{!109, !4205, !837, !5244, !5287, !5304}
!5287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5288, size: 64)
!5288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_resource", file: !5289, line: 209, size: 576, elements: !5290)
!5289 = !DIFile(filename: "./include/drm/ttm/ttm_resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9381c1bbd30ebfc9159e3e67f7545347")
!5290 = !{!5291, !5292, !5293, !5294, !5295, !5302, !5303}
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5288, file: !5289, line: 210, baseType: !211, size: 64)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5288, file: !5289, line: 211, baseType: !575, size: 64, offset: 64)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "mem_type", scope: !5288, file: !5289, line: 212, baseType: !802, size: 32, offset: 128)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !5288, file: !5289, line: 213, baseType: !802, size: 32, offset: 160)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5288, file: !5289, line: 214, baseType: !5296, size: 192, offset: 192)
!5296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_bus_placement", file: !5289, line: 189, size: 192, elements: !5297)
!5297 = !{!5298, !5299, !5300, !5301}
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5296, file: !5289, line: 190, baseType: !205, size: 64)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5296, file: !5289, line: 191, baseType: !3414, size: 64, offset: 64)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "is_iomem", scope: !5296, file: !5289, line: 192, baseType: !837, size: 8, offset: 128)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !5296, file: !5289, line: 193, baseType: !153, size: 32, offset: 160)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "bo", scope: !5288, file: !5289, line: 215, baseType: !4205, size: 64, offset: 384)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5288, file: !5289, line: 220, baseType: !222, size: 128, offset: 448)
!5304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5265, size: 64)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "delete_mem_notify", scope: !5221, file: !5215, line: 157, baseType: !5306, size: 64, offset: 448)
!5306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5307, size: 64)
!5307 = !DISubroutineType(types: !5308)
!5308 = !{null, !4205}
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "swap_notify", scope: !5221, file: !5215, line: 162, baseType: !5306, size: 64, offset: 512)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "io_mem_reserve", scope: !5221, file: !5215, line: 170, baseType: !5311, size: 64, offset: 576)
!5311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5312, size: 64)
!5312 = !DISubroutineType(types: !5313)
!5313 = !{!109, !5213, !5287}
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "io_mem_free", scope: !5221, file: !5215, line: 172, baseType: !5315, size: 64, offset: 640)
!5315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5316, size: 64)
!5316 = !DISubroutineType(types: !5317)
!5317 = !{null, !5213, !5287}
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "io_mem_pfn", scope: !5221, file: !5215, line: 181, baseType: !5319, size: 64, offset: 704)
!5319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5320, size: 64)
!5320 = !DISubroutineType(types: !5321)
!5321 = !{!211, !4205, !211}
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "access_memory", scope: !5221, file: !5215, line: 198, baseType: !5323, size: 64, offset: 768)
!5323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5324, size: 64)
!5324 = !DISubroutineType(types: !5325)
!5325 = !{!109, !4205, !211, !205, !109, !109}
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "release_notify", scope: !5221, file: !5215, line: 209, baseType: !5306, size: 64, offset: 832)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "sysman", scope: !5214, file: !5215, line: 232, baseType: !5328, size: 960, offset: 192)
!5328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_resource_manager", file: !5289, line: 151, size: 960, elements: !5329)
!5329 = !{!5330, !5331, !5332, !5333, !5334, !5358, !5359, !5409, !5411}
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "use_type", scope: !5328, file: !5289, line: 155, baseType: !837, size: 8)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "use_tt", scope: !5328, file: !5289, line: 156, baseType: !837, size: 8, offset: 8)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !5328, file: !5289, line: 157, baseType: !5213, size: 64, offset: 64)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5328, file: !5289, line: 158, baseType: !4762, size: 64, offset: 128)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5328, file: !5289, line: 159, baseType: !5335, size: 64, offset: 192)
!5335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5336, size: 64)
!5336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5337)
!5337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_resource_manager_func", file: !5289, line: 52, size: 320, elements: !5338)
!5338 = !{!5339, !5345, !5349, !5353, !5354}
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5337, file: !5289, line: 74, baseType: !5340, size: 64)
!5340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5341, size: 64)
!5341 = !DISubroutineType(types: !5342)
!5342 = !{!109, !5343, !4205, !5263, !5344}
!5343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5328, size: 64)
!5344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5287, size: 64)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5337, file: !5289, line: 88, baseType: !5346, size: 64, offset: 64)
!5346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5347, size: 64)
!5347 = !DISubroutineType(types: !5348)
!5348 = !{null, !5343, !5287}
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "intersects", scope: !5337, file: !5289, line: 102, baseType: !5350, size: 64, offset: 128)
!5350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5351, size: 64)
!5351 = !DISubroutineType(types: !5352)
!5352 = !{!837, !5343, !5287, !5263, !575}
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !5337, file: !5289, line: 118, baseType: !5350, size: 64, offset: 192)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !5337, file: !5289, line: 133, baseType: !5355, size: 64, offset: 256)
!5355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5356, size: 64)
!5356 = !DISubroutineType(types: !5357)
!5357 = !{null, !5343, !4767}
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "move_lock", scope: !5328, file: !5289, line: 160, baseType: !342, size: 32, offset: 256)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "move", scope: !5328, file: !5289, line: 165, baseType: !5360, size: 64, offset: 320)
!5360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5361, size: 64)
!5361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !5362, line: 65, size: 512, elements: !5363)
!5362 = !DIFile(filename: "./include/linux/dma-fence.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "250a5e28e66b96be11f66b71d72fa176")
!5363 = !{!5364, !5365, !5398, !5404, !5405, !5406, !5407, !5408}
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5361, file: !5362, line: 66, baseType: !1402, size: 64)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5361, file: !5362, line: 67, baseType: !5366, size: 64, offset: 64)
!5366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5367, size: 64)
!5367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5368)
!5368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !5362, line: 125, size: 640, elements: !5369)
!5369 = !{!5370, !5371, !5375, !5376, !5380, !5381, !5385, !5389, !5393, !5394}
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !5368, file: !5362, line: 132, baseType: !837, size: 8)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !5368, file: !5362, line: 143, baseType: !5372, size: 64, offset: 64)
!5372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5373, size: 64)
!5373 = !DISubroutineType(types: !5374)
!5374 = !{!402, !5360}
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !5368, file: !5362, line: 155, baseType: !5372, size: 64, offset: 128)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !5368, file: !5362, line: 192, baseType: !5377, size: 64, offset: 192)
!5377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5378, size: 64)
!5378 = !DISubroutineType(types: !5379)
!5379 = !{!837, !5360}
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !5368, file: !5362, line: 209, baseType: !5377, size: 64, offset: 256)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !5368, file: !5362, line: 227, baseType: !5382, size: 64, offset: 320)
!5382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5383, size: 64)
!5383 = !DISubroutineType(types: !5384)
!5384 = !{!565, !5360, !837, !565}
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5368, file: !5362, line: 238, baseType: !5386, size: 64, offset: 384)
!5386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5387, size: 64)
!5387 = !DISubroutineType(types: !5388)
!5388 = !{null, !5360}
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !5368, file: !5362, line: 248, baseType: !5390, size: 64, offset: 448)
!5390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5391, size: 64)
!5391 = !DISubroutineType(types: !5392)
!5392 = !{null, !5360, !428, !109}
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !5368, file: !5362, line: 258, baseType: !5390, size: 64, offset: 512)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "set_deadline", scope: !5368, file: !5362, line: 279, baseType: !5395, size: 64, offset: 576)
!5395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5396, size: 64)
!5396 = !DISubroutineType(types: !5397)
!5397 = !{null, !5360, !2582}
!5398 = !DIDerivedType(tag: DW_TAG_member, scope: !5361, file: !5362, line: 84, baseType: !5399, size: 128, offset: 128)
!5399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5361, file: !5362, line: 84, size: 128, elements: !5400)
!5400 = !{!5401, !5402, !5403}
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !5399, file: !5362, line: 85, baseType: !222, size: 128)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !5399, file: !5362, line: 87, baseType: !2582, size: 64)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5399, file: !5362, line: 89, baseType: !620, size: 128, align: 64)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !5361, file: !5362, line: 91, baseType: !318, size: 64, offset: 256)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !5361, file: !5362, line: 92, baseType: !318, size: 64, offset: 320)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5361, file: !5362, line: 93, baseType: !211, size: 64, offset: 384)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5361, file: !5362, line: 94, baseType: !1721, size: 32, offset: 448)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !5361, file: !5362, line: 95, baseType: !109, size: 32, offset: 480)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5328, file: !5289, line: 170, baseType: !5410, size: 512, offset: 384)
!5410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 512, elements: !702)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !5328, file: !5289, line: 176, baseType: !4762, size: 64, offset: 896)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "man_drv", scope: !5214, file: !5215, line: 237, baseType: !5413, size: 512, offset: 1152)
!5413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5343, size: 512, elements: !2617)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "vma_manager", scope: !5214, file: !5215, line: 242, baseType: !5069, size: 64, offset: 1664)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !5214, file: !5215, line: 247, baseType: !5416, size: 14912, offset: 1728)
!5416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_pool", file: !5417, line: 69, size: 14912, elements: !5418)
!5417 = !DIFile(filename: "./include/drm/ttm/ttm_pool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6613193a1a6bffece87937e591b2c286")
!5418 = !{!5419, !5420, !5421, !5422, !5423}
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5416, file: !5417, line: 70, baseType: !4220, size: 64)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !5416, file: !5417, line: 71, baseType: !109, size: 32, offset: 64)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "use_dma_alloc", scope: !5416, file: !5417, line: 73, baseType: !837, size: 8, offset: 96)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "use_dma32", scope: !5416, file: !5417, line: 74, baseType: !837, size: 8, offset: 104)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !5416, file: !5417, line: 78, baseType: !5424, size: 14784, offset: 128)
!5424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5425, size: 14784, elements: !531)
!5425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5416, file: !5417, line: 76, size: 4928, elements: !5426)
!5426 = !{!5427}
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "orders", scope: !5425, file: !5417, line: 77, baseType: !5428, size: 4928)
!5428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5429, size: 4928, elements: !5438)
!5429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_pool_type", file: !5417, line: 49, size: 448, elements: !5430)
!5430 = !{!5431, !5433, !5434, !5435, !5436, !5437}
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !5429, file: !5417, line: 50, baseType: !5432, size: 64)
!5432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5416, size: 64)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !5429, file: !5417, line: 51, baseType: !7, size: 32, offset: 64)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !5429, file: !5417, line: 52, baseType: !153, size: 32, offset: 96)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "shrinker_list", scope: !5429, file: !5417, line: 54, baseType: !222, size: 128, offset: 128)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5429, file: !5417, line: 56, baseType: !342, size: 32, offset: 256)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5429, file: !5417, line: 57, baseType: !222, size: 128, offset: 320)
!5438 = !{!5439}
!5439 = !DISubrange(count: 11)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "lru_lock", scope: !5214, file: !5215, line: 252, baseType: !342, size: 32, offset: 16640)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !5214, file: !5215, line: 257, baseType: !222, size: 128, offset: 16704)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "dev_mapping", scope: !5214, file: !5215, line: 263, baseType: !236, size: 64, offset: 16832)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5214, file: !5215, line: 268, baseType: !2045, size: 64, offset: 16896)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4206, file: !160, line: 105, baseType: !159, size: 32, offset: 2880)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "page_alignment", scope: !4206, file: !160, line: 106, baseType: !802, size: 32, offset: 2912)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4206, file: !160, line: 107, baseType: !5306, size: 64, offset: 2944)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4206, file: !160, line: 112, baseType: !1721, size: 32, offset: 3008)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4206, file: !160, line: 117, baseType: !5287, size: 64, offset: 3072)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "ttm", scope: !4206, file: !160, line: 118, baseType: !5227, size: 64, offset: 3136)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "deleted", scope: !4206, file: !160, line: 119, baseType: !837, size: 8, offset: 3200)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_move", scope: !4206, file: !160, line: 120, baseType: !5452, size: 64, offset: 3264)
!5452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5453, size: 64)
!5453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_lru_bulk_move", file: !5289, line: 255, size: 4096, elements: !5454)
!5454 = !{!5455}
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !5453, file: !5289, line: 256, baseType: !5456, size: 4096)
!5456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5457, size: 4096, elements: !5461)
!5457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_lru_bulk_move_pos", file: !5289, line: 242, size: 128, elements: !5458)
!5458 = !{!5459, !5460}
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5457, file: !5289, line: 243, baseType: !5287, size: 64)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !5457, file: !5289, line: 244, baseType: !5287, size: 64, offset: 64)
!5461 = !{!2618, !703}
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4206, file: !160, line: 121, baseType: !7, size: 32, offset: 3328)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !4206, file: !160, line: 122, baseType: !7, size: 32, offset: 3360)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_delete", scope: !4206, file: !160, line: 128, baseType: !1290, size: 256, offset: 3392)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !4206, file: !160, line: 135, baseType: !4740, size: 64, offset: 3648)
!5466 = !{!5467, !5468, !5469, !5470}
!5467 = !DIEnumerator(name: "ttm_bo_map_iomap", value: 129)
!5468 = !DIEnumerator(name: "ttm_bo_map_vmap", value: 2)
!5469 = !DIEnumerator(name: "ttm_bo_map_kmap", value: 3)
!5470 = !DIEnumerator(name: "ttm_bo_map_premapped", value: 132)
!5471 = !{!205, !211, !207, !1368, !565, !5472, !5474}
!5472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5473, size: 64)
!5473 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !223, line: 108, baseType: !370)
!5474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5475, size: 64)
!5475 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !109)
!5476 = !{!0, !5477, !5479, !5484, !5486, !5488, !5490, !5492, !5494, !5496, !5498, !5503}
!5477 = !DIGlobalVariableExpression(var: !5478, expr: !DIExpression())
!5478 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_bo_vm_fault_reserved328", scope: !2, file: !3, line: 282, type: !205, isLocal: true, isDefinition: true)
!5479 = !DIGlobalVariableExpression(var: !5480, expr: !DIExpression())
!5480 = distinct !DIGlobalVariable(scope: null, file: !3, line: 307, type: !5481, isLocal: true, isDefinition: true)
!5481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 208, elements: !5482)
!5482 = !{!5483}
!5483 = !DISubrange(count: 26)
!5484 = !DIGlobalVariableExpression(var: !5485, expr: !DIExpression())
!5485 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_bo_vm_dummy_page329", scope: !2, file: !3, line: 319, type: !205, isLocal: true, isDefinition: true)
!5486 = !DIGlobalVariableExpression(var: !5487, expr: !DIExpression())
!5487 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_bo_vm_fault330", scope: !2, file: !3, line: 348, type: !205, isLocal: true, isDefinition: true)
!5488 = !DIGlobalVariableExpression(var: !5489, expr: !DIExpression())
!5489 = distinct !DIGlobalVariable(scope: null, file: !3, line: 354, type: !3664, isLocal: true, isDefinition: true)
!5490 = !DIGlobalVariableExpression(var: !5491, expr: !DIExpression())
!5491 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_bo_vm_open331", scope: !2, file: !3, line: 358, type: !205, isLocal: true, isDefinition: true)
!5492 = !DIGlobalVariableExpression(var: !5493, expr: !DIExpression())
!5493 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_bo_vm_close332", scope: !2, file: !3, line: 367, type: !205, isLocal: true, isDefinition: true)
!5494 = !DIGlobalVariableExpression(var: !5495, expr: !DIExpression())
!5495 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_bo_vm_access335", scope: !2, file: !3, line: 442, type: !205, isLocal: true, isDefinition: true)
!5496 = !DIGlobalVariableExpression(var: !5497, expr: !DIExpression())
!5497 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_bo_mmap_obj336", scope: !2, file: !3, line: 484, type: !205, isLocal: true, isDefinition: true)
!5498 = !DIGlobalVariableExpression(var: !5499, expr: !DIExpression())
!5499 = distinct !DIGlobalVariable(scope: null, file: !160, line: 247, type: !5500, isLocal: true, isDefinition: true)
!5500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 200, elements: !5501)
!5501 = !{!5502}
!5502 = !DISubrange(count: 25)
!5503 = !DIGlobalVariableExpression(var: !5504, expr: !DIExpression())
!5504 = distinct !DIGlobalVariable(name: "ttm_bo_vm_ops", scope: !2, file: !3, line: 444, type: !1334, isLocal: true, isDefinition: true)
!5505 = !{i32 7, !"Dwarf Version", i32 5}
!5506 = !{i32 2, !"Debug Info Version", i32 3}
!5507 = !{i32 1, !"wchar_size", i32 2}
!5508 = !{i32 8, !"cf-protection-branch", i32 1}
!5509 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5510 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5511 = !{i32 1, !"Code Model", i32 2}
!5512 = !{i32 1, !"override-stack-alignment", i32 8}
!5513 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5514 = distinct !DISubprogram(name: "ttm_bo_vm_reserve", scope: !3, file: !3, line: 116, type: !5515, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5517)
!5515 = !DISubroutineType(types: !5516)
!5516 = !{!1359, !4205, !1360}
!5517 = !{!5518, !5519}
!5518 = !DILocalVariable(name: "bo", arg: 1, scope: !5514, file: !3, line: 116, type: !4205)
!5519 = !DILocalVariable(name: "vmf", arg: 2, scope: !5514, file: !3, line: 117, type: !1360)
!5520 = !DILocation(line: 116, column: 56, scope: !5514)
!5521 = !DILocation(line: 117, column: 26, scope: !5514)
!5522 = !DILocation(line: 125, column: 6, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5514, file: !3, line: 125, column: 6)
!5524 = !DILocation(line: 125, column: 6, scope: !5514)
!5525 = !DILocation(line: 131, column: 36, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 131, column: 7)
!5527 = distinct !DILexicalBlock(scope: !5523, file: !3, line: 125, column: 50)
!5528 = !DILocation(line: 131, column: 41, scope: !5526)
!5529 = !DILocation(line: 131, column: 7, scope: !5526)
!5530 = !DILocation(line: 131, column: 7, scope: !5527)
!5531 = !DILocation(line: 132, column: 10, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 132, column: 8)
!5533 = distinct !DILexicalBlock(scope: !5526, file: !3, line: 131, column: 49)
!5534 = !DILocation(line: 132, column: 15, scope: !5532)
!5535 = !DILocation(line: 132, column: 21, scope: !5532)
!5536 = !DILocation(line: 132, column: 8, scope: !5533)
!5537 = !DILocation(line: 133, column: 16, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5532, file: !3, line: 132, column: 49)
!5539 = !DILocation(line: 133, column: 5, scope: !5538)
!5540 = !DILocation(line: 134, column: 22, scope: !5538)
!5541 = !DILocation(line: 134, column: 27, scope: !5538)
!5542 = !DILocation(line: 134, column: 32, scope: !5538)
!5543 = !DILocation(line: 134, column: 5, scope: !5538)
!5544 = !DILocation(line: 135, column: 38, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 135, column: 9)
!5546 = !DILocation(line: 135, column: 42, scope: !5545)
!5547 = !DILocation(line: 135, column: 47, scope: !5545)
!5548 = !DILocation(line: 135, column: 10, scope: !5545)
!5549 = !DILocation(line: 135, column: 9, scope: !5538)
!5550 = !DILocation(line: 137, column: 22, scope: !5545)
!5551 = !DILocation(line: 137, column: 26, scope: !5545)
!5552 = !DILocation(line: 137, column: 31, scope: !5545)
!5553 = !DILocation(line: 137, column: 6, scope: !5545)
!5554 = !DILocation(line: 138, column: 16, scope: !5538)
!5555 = !DILocation(line: 138, column: 5, scope: !5538)
!5556 = !DILocation(line: 139, column: 4, scope: !5538)
!5557 = !DILocation(line: 141, column: 4, scope: !5533)
!5558 = !DILocation(line: 144, column: 35, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 144, column: 7)
!5560 = !DILocation(line: 144, column: 39, scope: !5559)
!5561 = !DILocation(line: 144, column: 44, scope: !5559)
!5562 = !DILocation(line: 144, column: 7, scope: !5559)
!5563 = !DILocation(line: 144, column: 7, scope: !5527)
!5564 = !DILocation(line: 145, column: 4, scope: !5559)
!5565 = !DILocation(line: 146, column: 2, scope: !5527)
!5566 = !DILocation(line: 152, column: 6, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5514, file: !3, line: 152, column: 6)
!5568 = !DILocation(line: 152, column: 10, scope: !5567)
!5569 = !DILocation(line: 152, column: 14, scope: !5567)
!5570 = !DILocation(line: 152, column: 18, scope: !5567)
!5571 = !DILocation(line: 152, column: 22, scope: !5567)
!5572 = !DILocation(line: 152, column: 27, scope: !5567)
!5573 = !DILocation(line: 152, column: 38, scope: !5567)
!5574 = !DILocation(line: 152, column: 6, scope: !5514)
!5575 = !DILocation(line: 153, column: 9, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5577, file: !3, line: 153, column: 7)
!5577 = distinct !DILexicalBlock(scope: !5567, file: !3, line: 152, column: 63)
!5578 = !DILocation(line: 153, column: 13, scope: !5576)
!5579 = !DILocation(line: 153, column: 18, scope: !5576)
!5580 = !DILocation(line: 153, column: 29, scope: !5576)
!5581 = !DILocation(line: 153, column: 7, scope: !5577)
!5582 = !DILocation(line: 154, column: 20, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5576, file: !3, line: 153, column: 63)
!5584 = !DILocation(line: 154, column: 24, scope: !5583)
!5585 = !DILocation(line: 154, column: 29, scope: !5583)
!5586 = !DILocation(line: 154, column: 4, scope: !5583)
!5587 = !DILocation(line: 155, column: 4, scope: !5583)
!5588 = !DILocation(line: 157, column: 2, scope: !5577)
!5589 = !DILocation(line: 159, column: 2, scope: !5514)
!5590 = !DILocation(line: 160, column: 1, scope: !5514)
!5591 = distinct !DISubprogram(name: "dma_resv_trylock", scope: !195, file: !195, line: 422, type: !5592, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5594)
!5592 = !DISubroutineType(types: !5593)
!5593 = !{!837, !5127}
!5594 = !{!5595}
!5595 = !DILocalVariable(name: "obj", arg: 1, scope: !5591, file: !195, line: 422, type: !5127)
!5596 = !DILocation(line: 422, column: 67, scope: !5591)
!5597 = !DILocation(line: 424, column: 27, scope: !5591)
!5598 = !DILocation(line: 424, column: 32, scope: !5591)
!5599 = !DILocation(line: 424, column: 9, scope: !5591)
!5600 = !DILocation(line: 424, column: 2, scope: !5591)
!5601 = distinct !DISubprogram(name: "fault_flag_allow_retry_first", scope: !1336, file: !1336, line: 483, type: !5602, scopeLine: 484, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5604)
!5602 = !DISubroutineType(types: !5603)
!5603 = !{!837, !34}
!5604 = !{!5605}
!5605 = !DILocalVariable(name: "flags", arg: 1, scope: !5601, file: !1336, line: 483, type: !34)
!5606 = !DILocation(line: 483, column: 65, scope: !5601)
!5607 = !DILocation(line: 485, column: 10, scope: !5601)
!5608 = !DILocation(line: 485, column: 16, scope: !5601)
!5609 = !DILocation(line: 485, column: 42, scope: !5601)
!5610 = !DILocation(line: 486, column: 9, scope: !5601)
!5611 = !DILocation(line: 486, column: 15, scope: !5601)
!5612 = !DILocation(line: 486, column: 7, scope: !5601)
!5613 = !DILocation(line: 0, scope: !5601)
!5614 = !DILocation(line: 485, column: 2, scope: !5601)
!5615 = distinct !DISubprogram(name: "ttm_bo_get", scope: !160, file: !160, line: 193, type: !5307, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5616)
!5616 = !{!5617}
!5617 = !DILocalVariable(name: "bo", arg: 1, scope: !5615, file: !160, line: 193, type: !4205)
!5618 = !DILocation(line: 193, column: 57, scope: !5615)
!5619 = !DILocation(line: 195, column: 12, scope: !5615)
!5620 = !DILocation(line: 195, column: 16, scope: !5615)
!5621 = !DILocation(line: 195, column: 2, scope: !5615)
!5622 = !DILocation(line: 196, column: 1, scope: !5615)
!5623 = distinct !DISubprogram(name: "mmap_read_unlock", scope: !5624, file: !5624, line: 170, type: !5625, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5627)
!5624 = !DIFile(filename: "./include/linux/mmap_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd03efe98da879092694cad0501d32bc")
!5625 = !DISubroutineType(types: !5626)
!5626 = !{null, !1135}
!5627 = !{!5628}
!5628 = !DILocalVariable(name: "mm", arg: 1, scope: !5623, file: !5624, line: 170, type: !1135)
!5629 = !DILocation(line: 170, column: 55, scope: !5623)
!5630 = !DILocation(line: 172, column: 29, scope: !5623)
!5631 = !DILocation(line: 172, column: 2, scope: !5623)
!5632 = !DILocation(line: 173, column: 11, scope: !5623)
!5633 = !DILocation(line: 173, column: 15, scope: !5623)
!5634 = !DILocation(line: 173, column: 2, scope: !5623)
!5635 = !DILocation(line: 174, column: 1, scope: !5623)
!5636 = distinct !DISubprogram(name: "dma_resv_lock_interruptible", scope: !195, file: !195, line: 369, type: !5637, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5639)
!5637 = !DISubroutineType(types: !5638)
!5638 = !{!109, !5127, !4876}
!5639 = !{!5640, !5641}
!5640 = !DILocalVariable(name: "obj", arg: 1, scope: !5636, file: !195, line: 369, type: !5127)
!5641 = !DILocalVariable(name: "ctx", arg: 2, scope: !5636, file: !195, line: 370, type: !4876)
!5642 = !DILocation(line: 369, column: 64, scope: !5636)
!5643 = !DILocation(line: 370, column: 35, scope: !5636)
!5644 = !DILocation(line: 372, column: 38, scope: !5636)
!5645 = !DILocation(line: 372, column: 43, scope: !5636)
!5646 = !DILocation(line: 372, column: 49, scope: !5636)
!5647 = !DILocation(line: 372, column: 9, scope: !5636)
!5648 = !DILocation(line: 372, column: 2, scope: !5636)
!5649 = distinct !DISubprogram(name: "dma_resv_unlock", scope: !195, file: !195, line: 461, type: !5650, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5652)
!5650 = !DISubroutineType(types: !5651)
!5651 = !{null, !5127}
!5652 = !{!5653}
!5653 = !DILocalVariable(name: "obj", arg: 1, scope: !5649, file: !195, line: 461, type: !5127)
!5654 = !DILocation(line: 461, column: 53, scope: !5649)
!5655 = !DILocation(line: 463, column: 28, scope: !5649)
!5656 = !DILocation(line: 463, column: 2, scope: !5649)
!5657 = !DILocation(line: 464, column: 19, scope: !5649)
!5658 = !DILocation(line: 464, column: 24, scope: !5649)
!5659 = !DILocation(line: 464, column: 2, scope: !5649)
!5660 = !DILocation(line: 465, column: 1, scope: !5649)
!5661 = !DISubprogram(name: "ttm_bo_put", scope: !160, file: !160, line: 355, type: !5307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5662 = distinct !DISubprogram(name: "ttm_bo_vm_fault_reserved", scope: !3, file: !3, line: 181, type: !5663, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5665)
!5663 = !DISubroutineType(types: !5664)
!5664 = !{!1359, !1360, !1304, !211}
!5665 = !{!5666, !5667, !5668, !5669, !5670, !5671, !5672, !5673, !5674, !5675, !5676, !5677, !5678, !5679, !5680, !5681}
!5666 = !DILocalVariable(name: "vmf", arg: 1, scope: !5662, file: !3, line: 181, type: !1360)
!5667 = !DILocalVariable(name: "prot", arg: 2, scope: !5662, file: !3, line: 182, type: !1304)
!5668 = !DILocalVariable(name: "num_prefault", arg: 3, scope: !5662, file: !3, line: 183, type: !211)
!5669 = !DILocalVariable(name: "vma", scope: !5662, file: !3, line: 185, type: !1122)
!5670 = !DILocalVariable(name: "bo", scope: !5662, file: !3, line: 186, type: !4205)
!5671 = !DILocalVariable(name: "bdev", scope: !5662, file: !3, line: 187, type: !5213)
!5672 = !DILocalVariable(name: "page_offset", scope: !5662, file: !3, line: 188, type: !211)
!5673 = !DILocalVariable(name: "page_last", scope: !5662, file: !3, line: 189, type: !211)
!5674 = !DILocalVariable(name: "pfn", scope: !5662, file: !3, line: 190, type: !211)
!5675 = !DILocalVariable(name: "ttm", scope: !5662, file: !3, line: 191, type: !5227)
!5676 = !DILocalVariable(name: "page", scope: !5662, file: !3, line: 192, type: !207)
!5677 = !DILocalVariable(name: "err", scope: !5662, file: !3, line: 193, type: !109)
!5678 = !DILocalVariable(name: "i", scope: !5662, file: !3, line: 194, type: !211)
!5679 = !DILocalVariable(name: "ret", scope: !5662, file: !3, line: 195, type: !1359)
!5680 = !DILocalVariable(name: "address", scope: !5662, file: !3, line: 196, type: !211)
!5681 = !DILocalVariable(name: "ctx", scope: !5682, file: !3, line: 220, type: !5245)
!5682 = distinct !DILexicalBlock(scope: !5683, file: !3, line: 219, column: 35)
!5683 = distinct !DILexicalBlock(scope: !5662, file: !3, line: 219, column: 6)
!5684 = !DILocation(line: 181, column: 54, scope: !5662)
!5685 = !DILocation(line: 182, column: 18, scope: !5662)
!5686 = !DILocation(line: 183, column: 17, scope: !5662)
!5687 = !DILocation(line: 185, column: 2, scope: !5662)
!5688 = !DILocation(line: 185, column: 25, scope: !5662)
!5689 = !DILocation(line: 185, column: 31, scope: !5662)
!5690 = !DILocation(line: 185, column: 36, scope: !5662)
!5691 = !DILocation(line: 186, column: 2, scope: !5662)
!5692 = !DILocation(line: 186, column: 28, scope: !5662)
!5693 = !DILocation(line: 186, column: 33, scope: !5662)
!5694 = !DILocation(line: 186, column: 38, scope: !5662)
!5695 = !DILocation(line: 187, column: 2, scope: !5662)
!5696 = !DILocation(line: 187, column: 21, scope: !5662)
!5697 = !DILocation(line: 187, column: 28, scope: !5662)
!5698 = !DILocation(line: 187, column: 32, scope: !5662)
!5699 = !DILocation(line: 188, column: 2, scope: !5662)
!5700 = !DILocation(line: 188, column: 16, scope: !5662)
!5701 = !DILocation(line: 189, column: 2, scope: !5662)
!5702 = !DILocation(line: 189, column: 16, scope: !5662)
!5703 = !DILocation(line: 190, column: 2, scope: !5662)
!5704 = !DILocation(line: 190, column: 16, scope: !5662)
!5705 = !DILocation(line: 191, column: 2, scope: !5662)
!5706 = !DILocation(line: 191, column: 17, scope: !5662)
!5707 = !DILocation(line: 192, column: 2, scope: !5662)
!5708 = !DILocation(line: 192, column: 15, scope: !5662)
!5709 = !DILocation(line: 193, column: 2, scope: !5662)
!5710 = !DILocation(line: 193, column: 6, scope: !5662)
!5711 = !DILocation(line: 194, column: 2, scope: !5662)
!5712 = !DILocation(line: 194, column: 10, scope: !5662)
!5713 = !DILocation(line: 195, column: 2, scope: !5662)
!5714 = !DILocation(line: 195, column: 13, scope: !5662)
!5715 = !DILocation(line: 196, column: 2, scope: !5662)
!5716 = !DILocation(line: 196, column: 16, scope: !5662)
!5717 = !DILocation(line: 196, column: 26, scope: !5662)
!5718 = !DILocation(line: 196, column: 31, scope: !5662)
!5719 = !DILocation(line: 202, column: 29, scope: !5662)
!5720 = !DILocation(line: 202, column: 33, scope: !5662)
!5721 = !DILocation(line: 202, column: 8, scope: !5662)
!5722 = !DILocation(line: 202, column: 6, scope: !5662)
!5723 = !DILocation(line: 203, column: 6, scope: !5724)
!5724 = distinct !DILexicalBlock(scope: !5662, file: !3, line: 203, column: 6)
!5725 = !DILocation(line: 203, column: 6, scope: !5662)
!5726 = !DILocation(line: 204, column: 10, scope: !5724)
!5727 = !DILocation(line: 204, column: 3, scope: !5724)
!5728 = !DILocation(line: 206, column: 27, scope: !5662)
!5729 = !DILocation(line: 206, column: 33, scope: !5662)
!5730 = !DILocation(line: 206, column: 37, scope: !5662)
!5731 = !DILocation(line: 206, column: 8, scope: !5662)
!5732 = !DILocation(line: 206, column: 6, scope: !5662)
!5733 = !DILocation(line: 207, column: 6, scope: !5734)
!5734 = distinct !DILexicalBlock(scope: !5662, file: !3, line: 207, column: 6)
!5735 = !DILocation(line: 207, column: 6, scope: !5662)
!5736 = !DILocation(line: 208, column: 3, scope: !5734)
!5737 = !DILocation(line: 210, column: 18, scope: !5662)
!5738 = !DILocation(line: 210, column: 28, scope: !5662)
!5739 = !DILocation(line: 210, column: 33, scope: !5662)
!5740 = !DILocation(line: 210, column: 26, scope: !5662)
!5741 = !DILocation(line: 210, column: 43, scope: !5662)
!5742 = !DILocation(line: 211, column: 3, scope: !5662)
!5743 = !DILocation(line: 211, column: 8, scope: !5662)
!5744 = !DILocation(line: 210, column: 58, scope: !5662)
!5745 = !DILocation(line: 211, column: 39, scope: !5662)
!5746 = !DILocation(line: 211, column: 43, scope: !5662)
!5747 = !DILocation(line: 211, column: 48, scope: !5662)
!5748 = !DILocation(line: 211, column: 19, scope: !5662)
!5749 = !DILocation(line: 211, column: 17, scope: !5662)
!5750 = !DILocation(line: 210, column: 14, scope: !5662)
!5751 = !DILocation(line: 212, column: 24, scope: !5662)
!5752 = !DILocation(line: 212, column: 14, scope: !5662)
!5753 = !DILocation(line: 212, column: 31, scope: !5662)
!5754 = !DILocation(line: 212, column: 36, scope: !5662)
!5755 = !DILocation(line: 212, column: 29, scope: !5662)
!5756 = !DILocation(line: 213, column: 23, scope: !5662)
!5757 = !DILocation(line: 213, column: 27, scope: !5662)
!5758 = !DILocation(line: 213, column: 32, scope: !5662)
!5759 = !DILocation(line: 213, column: 3, scope: !5662)
!5760 = !DILocation(line: 212, column: 45, scope: !5662)
!5761 = !DILocation(line: 212, column: 12, scope: !5662)
!5762 = !DILocation(line: 215, column: 6, scope: !5763)
!5763 = distinct !DILexicalBlock(scope: !5662, file: !3, line: 215, column: 6)
!5764 = !DILocation(line: 215, column: 6, scope: !5662)
!5765 = !DILocation(line: 216, column: 3, scope: !5763)
!5766 = !DILocation(line: 218, column: 9, scope: !5662)
!5767 = !DILocation(line: 218, column: 21, scope: !5662)
!5768 = !DILocation(line: 218, column: 25, scope: !5662)
!5769 = !DILocation(line: 218, column: 29, scope: !5662)
!5770 = !DILocation(line: 219, column: 7, scope: !5683)
!5771 = !DILocation(line: 219, column: 11, scope: !5683)
!5772 = !DILocation(line: 219, column: 21, scope: !5683)
!5773 = !DILocation(line: 219, column: 25, scope: !5683)
!5774 = !{i8 0, i8 2}
!5775 = !DILocation(line: 219, column: 6, scope: !5662)
!5776 = !DILocation(line: 220, column: 3, scope: !5682)
!5777 = !DILocation(line: 220, column: 28, scope: !5682)
!5778 = !DILocation(line: 226, column: 9, scope: !5682)
!5779 = !DILocation(line: 226, column: 13, scope: !5682)
!5780 = !DILocation(line: 226, column: 7, scope: !5682)
!5781 = !DILocation(line: 227, column: 25, scope: !5682)
!5782 = !DILocation(line: 227, column: 31, scope: !5682)
!5783 = !DILocation(line: 227, column: 35, scope: !5682)
!5784 = !DILocation(line: 227, column: 9, scope: !5682)
!5785 = !DILocation(line: 227, column: 7, scope: !5682)
!5786 = !DILocation(line: 228, column: 7, scope: !5787)
!5787 = distinct !DILexicalBlock(scope: !5682, file: !3, line: 228, column: 7)
!5788 = !DILocation(line: 228, column: 7, scope: !5682)
!5789 = !DILocation(line: 229, column: 8, scope: !5790)
!5790 = distinct !DILexicalBlock(scope: !5791, file: !3, line: 229, column: 8)
!5791 = distinct !DILexicalBlock(scope: !5787, file: !3, line: 228, column: 12)
!5792 = !DILocation(line: 229, column: 12, scope: !5790)
!5793 = !DILocation(line: 229, column: 22, scope: !5790)
!5794 = !DILocation(line: 229, column: 25, scope: !5790)
!5795 = !DILocation(line: 229, column: 29, scope: !5790)
!5796 = !DILocation(line: 229, column: 45, scope: !5790)
!5797 = !DILocation(line: 230, column: 8, scope: !5790)
!5798 = !DILocation(line: 230, column: 12, scope: !5790)
!5799 = !DILocation(line: 229, column: 8, scope: !5791)
!5800 = !DILocation(line: 231, column: 5, scope: !5790)
!5801 = !DILocation(line: 233, column: 4, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5803, file: !3, line: 233, column: 4)
!5803 = distinct !DILexicalBlock(scope: !5791, file: !3, line: 233, column: 4)
!5804 = !DILocation(line: 233, column: 4, scope: !5803)
!5805 = !DILocation(line: 234, column: 4, scope: !5791)
!5806 = !DILocation(line: 236, column: 2, scope: !5683)
!5807 = !DILocation(line: 236, column: 2, scope: !5682)
!5808 = !DILocation(line: 238, column: 10, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5683, file: !3, line: 236, column: 9)
!5810 = !DILocation(line: 245, column: 9, scope: !5811)
!5811 = distinct !DILexicalBlock(scope: !5662, file: !3, line: 245, column: 2)
!5812 = !DILocation(line: 245, column: 7, scope: !5811)
!5813 = !DILocation(line: 245, column: 14, scope: !5814)
!5814 = distinct !DILexicalBlock(scope: !5811, file: !3, line: 245, column: 2)
!5815 = !DILocation(line: 245, column: 18, scope: !5814)
!5816 = !DILocation(line: 245, column: 16, scope: !5814)
!5817 = !DILocation(line: 245, column: 2, scope: !5811)
!5818 = !DILocation(line: 246, column: 7, scope: !5819)
!5819 = distinct !DILexicalBlock(scope: !5820, file: !3, line: 246, column: 7)
!5820 = distinct !DILexicalBlock(scope: !5814, file: !3, line: 245, column: 37)
!5821 = !DILocation(line: 246, column: 11, scope: !5819)
!5822 = !DILocation(line: 246, column: 21, scope: !5819)
!5823 = !DILocation(line: 246, column: 25, scope: !5819)
!5824 = !DILocation(line: 246, column: 7, scope: !5820)
!5825 = !DILocation(line: 247, column: 28, scope: !5826)
!5826 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 246, column: 35)
!5827 = !DILocation(line: 247, column: 32, scope: !5826)
!5828 = !DILocation(line: 247, column: 10, scope: !5826)
!5829 = !DILocation(line: 247, column: 8, scope: !5826)
!5830 = !DILocation(line: 248, column: 3, scope: !5826)
!5831 = !DILocation(line: 249, column: 11, scope: !5832)
!5832 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 248, column: 10)
!5833 = !DILocation(line: 249, column: 16, scope: !5832)
!5834 = !DILocation(line: 249, column: 22, scope: !5832)
!5835 = !DILocation(line: 249, column: 9, scope: !5832)
!5836 = !DILocation(line: 250, column: 8, scope: !5837)
!5837 = distinct !DILexicalBlock(scope: !5832, file: !3, line: 250, column: 8)
!5838 = !DILocation(line: 0, scope: !5837)
!5839 = !DILocation(line: 250, column: 8, scope: !5832)
!5840 = !DILocation(line: 251, column: 5, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5837, file: !3, line: 250, column: 35)
!5842 = !DILocation(line: 252, column: 15, scope: !5843)
!5843 = distinct !DILexicalBlock(scope: !5837, file: !3, line: 252, column: 15)
!5844 = !DILocation(line: 252, column: 15, scope: !5837)
!5845 = !DILocation(line: 253, column: 5, scope: !5846)
!5846 = distinct !DILexicalBlock(scope: !5843, file: !3, line: 252, column: 32)
!5847 = !DILocation(line: 255, column: 10, scope: !5832)
!5848 = !DILocation(line: 255, column: 8, scope: !5832)
!5849 = !DILocation(line: 266, column: 29, scope: !5820)
!5850 = !DILocation(line: 266, column: 34, scope: !5820)
!5851 = !DILocation(line: 266, column: 43, scope: !5820)
!5852 = !DILocation(line: 266, column: 9, scope: !5820)
!5853 = !DILocation(line: 266, column: 7, scope: !5820)
!5854 = !DILocation(line: 269, column: 7, scope: !5855)
!5855 = distinct !DILexicalBlock(scope: !5820, file: !3, line: 269, column: 7)
!5856 = !DILocation(line: 269, column: 7, scope: !5820)
!5857 = !DILocation(line: 270, column: 8, scope: !5858)
!5858 = distinct !DILexicalBlock(scope: !5859, file: !3, line: 270, column: 8)
!5859 = distinct !DILexicalBlock(scope: !5855, file: !3, line: 269, column: 41)
!5860 = !DILocation(line: 270, column: 10, scope: !5858)
!5861 = !DILocation(line: 270, column: 8, scope: !5859)
!5862 = !DILocation(line: 271, column: 5, scope: !5858)
!5863 = !DILocation(line: 273, column: 5, scope: !5858)
!5864 = !DILocation(line: 276, column: 11, scope: !5820)
!5865 = !DILocation(line: 277, column: 7, scope: !5866)
!5866 = distinct !DILexicalBlock(scope: !5820, file: !3, line: 277, column: 7)
!5867 = !DILocation(line: 277, column: 7, scope: !5820)
!5868 = !DILocation(line: 278, column: 4, scope: !5866)
!5869 = !DILocation(line: 279, column: 2, scope: !5820)
!5870 = !DILocation(line: 245, column: 32, scope: !5814)
!5871 = !DILocation(line: 245, column: 2, scope: !5814)
!5872 = distinct !{!5872, !5817, !5873, !5874, !5875}
!5873 = !DILocation(line: 279, column: 2, scope: !5811)
!5874 = !{!"llvm.loop.mustprogress"}
!5875 = !{!"llvm.loop.unroll.disable"}
!5876 = !DILocation(line: 280, column: 9, scope: !5662)
!5877 = !DILocation(line: 280, column: 2, scope: !5662)
!5878 = !DILocation(line: 281, column: 1, scope: !5662)
!5879 = distinct !DISubprogram(name: "ttm_bo_vm_fault_idle", scope: !3, file: !3, line: 41, type: !5515, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5880)
!5880 = !{!5881, !5882, !5883}
!5881 = !DILocalVariable(name: "bo", arg: 1, scope: !5879, file: !3, line: 41, type: !4205)
!5882 = !DILocalVariable(name: "vmf", arg: 2, scope: !5879, file: !3, line: 42, type: !1360)
!5883 = !DILocalVariable(name: "err", scope: !5879, file: !3, line: 44, type: !565)
!5884 = !DILocation(line: 41, column: 66, scope: !5879)
!5885 = !DILocation(line: 42, column: 22, scope: !5879)
!5886 = !DILocation(line: 44, column: 2, scope: !5879)
!5887 = !DILocation(line: 44, column: 7, scope: !5879)
!5888 = !DILocation(line: 49, column: 29, scope: !5889)
!5889 = distinct !DILexicalBlock(scope: !5879, file: !3, line: 49, column: 6)
!5890 = !DILocation(line: 49, column: 33, scope: !5889)
!5891 = !DILocation(line: 49, column: 38, scope: !5889)
!5892 = !DILocation(line: 49, column: 6, scope: !5889)
!5893 = !DILocation(line: 49, column: 6, scope: !5879)
!5894 = !DILocation(line: 50, column: 3, scope: !5889)
!5895 = !DILocation(line: 57, column: 35, scope: !5896)
!5896 = distinct !DILexicalBlock(scope: !5879, file: !3, line: 57, column: 6)
!5897 = !DILocation(line: 57, column: 40, scope: !5896)
!5898 = !DILocation(line: 57, column: 6, scope: !5896)
!5899 = !DILocation(line: 57, column: 6, scope: !5879)
!5900 = !DILocation(line: 58, column: 7, scope: !5901)
!5901 = distinct !DILexicalBlock(scope: !5902, file: !3, line: 58, column: 7)
!5902 = distinct !DILexicalBlock(scope: !5896, file: !3, line: 57, column: 48)
!5903 = !DILocation(line: 58, column: 12, scope: !5901)
!5904 = !DILocation(line: 58, column: 18, scope: !5901)
!5905 = !DILocation(line: 58, column: 7, scope: !5902)
!5906 = !DILocation(line: 59, column: 4, scope: !5901)
!5907 = !DILocation(line: 61, column: 14, scope: !5902)
!5908 = !DILocation(line: 61, column: 3, scope: !5902)
!5909 = !DILocation(line: 62, column: 20, scope: !5902)
!5910 = !DILocation(line: 62, column: 25, scope: !5902)
!5911 = !DILocation(line: 62, column: 30, scope: !5902)
!5912 = !DILocation(line: 62, column: 3, scope: !5902)
!5913 = !DILocation(line: 63, column: 31, scope: !5902)
!5914 = !DILocation(line: 63, column: 35, scope: !5902)
!5915 = !DILocation(line: 63, column: 40, scope: !5902)
!5916 = !DILocation(line: 63, column: 9, scope: !5902)
!5917 = !DILocation(line: 66, column: 19, scope: !5902)
!5918 = !DILocation(line: 66, column: 23, scope: !5902)
!5919 = !DILocation(line: 66, column: 28, scope: !5902)
!5920 = !DILocation(line: 66, column: 3, scope: !5902)
!5921 = !DILocation(line: 67, column: 14, scope: !5902)
!5922 = !DILocation(line: 67, column: 3, scope: !5902)
!5923 = !DILocation(line: 68, column: 3, scope: !5902)
!5924 = !DILocation(line: 74, column: 30, scope: !5879)
!5925 = !DILocation(line: 74, column: 34, scope: !5879)
!5926 = !DILocation(line: 74, column: 39, scope: !5879)
!5927 = !DILocation(line: 74, column: 8, scope: !5879)
!5928 = !DILocation(line: 74, column: 6, scope: !5879)
!5929 = !DILocation(line: 76, column: 6, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5879, file: !3, line: 76, column: 6)
!5931 = !DILocation(line: 76, column: 6, scope: !5879)
!5932 = !DILocation(line: 77, column: 11, scope: !5933)
!5933 = distinct !DILexicalBlock(scope: !5930, file: !3, line: 76, column: 25)
!5934 = !DILocation(line: 77, column: 15, scope: !5933)
!5935 = !DILocation(line: 77, column: 10, scope: !5933)
!5936 = !DILocation(line: 77, column: 3, scope: !5933)
!5937 = !DILocation(line: 81, column: 2, scope: !5879)
!5938 = !DILocation(line: 82, column: 1, scope: !5879)
!5939 = !DISubprogram(name: "ttm_mem_io_reserve", scope: !160, file: !160, line: 406, type: !5312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5940 = distinct !DISubprogram(name: "drm_vma_node_start", scope: !4692, file: !4692, line: 169, type: !5941, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5945)
!5941 = !DISubroutineType(types: !5942)
!5942 = !{!211, !5943}
!5943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5944, size: 64)
!5944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5116)
!5945 = !{!5946}
!5946 = !DILocalVariable(name: "node", arg: 1, scope: !5940, file: !4692, line: 169, type: !5943)
!5947 = !DILocation(line: 169, column: 82, scope: !5940)
!5948 = !DILocation(line: 171, column: 9, scope: !5940)
!5949 = !DILocation(line: 171, column: 15, scope: !5940)
!5950 = !DILocation(line: 171, column: 23, scope: !5940)
!5951 = !DILocation(line: 171, column: 2, scope: !5940)
!5952 = distinct !DISubprogram(name: "vma_pages", scope: !1336, file: !1336, line: 3418, type: !1415, scopeLine: 3419, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5953)
!5953 = !{!5954}
!5954 = !DILocalVariable(name: "vma", arg: 1, scope: !5952, file: !1336, line: 3418, type: !1122)
!5955 = !DILocation(line: 3418, column: 62, scope: !5952)
!5956 = !DILocation(line: 3420, column: 10, scope: !5952)
!5957 = !DILocation(line: 3420, column: 15, scope: !5952)
!5958 = !DILocation(line: 3420, column: 24, scope: !5952)
!5959 = !DILocation(line: 3420, column: 29, scope: !5952)
!5960 = !DILocation(line: 3420, column: 22, scope: !5952)
!5961 = !DILocation(line: 3420, column: 39, scope: !5952)
!5962 = !DILocation(line: 3420, column: 2, scope: !5952)
!5963 = !DISubprogram(name: "ttm_io_prot", scope: !160, file: !160, line: 423, type: !5964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5964 = !DISubroutineType(types: !5965)
!5965 = !{!1304, !4205, !5287, !1304}
!5966 = !DISubprogram(name: "ttm_tt_populate", scope: !5229, file: !5229, line: 202, type: !5242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5967 = distinct !DISubprogram(name: "cc_mkdec", scope: !5968, file: !5968, line: 35, type: !5969, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5971)
!5968 = !DIFile(filename: "./arch/x86/include/asm/coco.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "86b21b242eb5d608419a067ab7dfc6d8")
!5969 = !DISubroutineType(types: !5970)
!5970 = !{!318, !318}
!5971 = !{!5972}
!5972 = !DILocalVariable(name: "val", arg: 1, scope: !5967, file: !5968, line: 35, type: !318)
!5973 = !DILocation(line: 35, column: 32, scope: !5967)
!5974 = !DILocation(line: 37, column: 9, scope: !5967)
!5975 = !DILocation(line: 37, column: 2, scope: !5967)
!5976 = distinct !DISubprogram(name: "ttm_bo_io_mem_pfn", scope: !3, file: !3, line: 84, type: !5320, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5977)
!5977 = !{!5978, !5979, !5980}
!5978 = !DILocalVariable(name: "bo", arg: 1, scope: !5976, file: !3, line: 84, type: !4205)
!5979 = !DILocalVariable(name: "page_offset", arg: 2, scope: !5976, file: !3, line: 85, type: !211)
!5980 = !DILocalVariable(name: "bdev", scope: !5976, file: !3, line: 87, type: !5213)
!5981 = !DILocation(line: 84, column: 66, scope: !5976)
!5982 = !DILocation(line: 85, column: 26, scope: !5976)
!5983 = !DILocation(line: 87, column: 2, scope: !5976)
!5984 = !DILocation(line: 87, column: 21, scope: !5976)
!5985 = !DILocation(line: 87, column: 28, scope: !5976)
!5986 = !DILocation(line: 87, column: 32, scope: !5976)
!5987 = !DILocation(line: 89, column: 6, scope: !5988)
!5988 = distinct !DILexicalBlock(scope: !5976, file: !3, line: 89, column: 6)
!5989 = !DILocation(line: 89, column: 12, scope: !5988)
!5990 = !DILocation(line: 89, column: 19, scope: !5988)
!5991 = !DILocation(line: 89, column: 6, scope: !5976)
!5992 = !DILocation(line: 90, column: 10, scope: !5988)
!5993 = !DILocation(line: 90, column: 16, scope: !5988)
!5994 = !DILocation(line: 90, column: 23, scope: !5988)
!5995 = !DILocation(line: 90, column: 34, scope: !5988)
!5996 = !DILocation(line: 90, column: 38, scope: !5988)
!5997 = !DILocation(line: 90, column: 3, scope: !5988)
!5998 = !DILocation(line: 92, column: 10, scope: !5976)
!5999 = !DILocation(line: 92, column: 14, scope: !5976)
!6000 = !DILocation(line: 92, column: 24, scope: !5976)
!6001 = !DILocation(line: 92, column: 28, scope: !5976)
!6002 = !DILocation(line: 92, column: 35, scope: !5976)
!6003 = !DILocation(line: 92, column: 52, scope: !5976)
!6004 = !DILocation(line: 92, column: 50, scope: !5976)
!6005 = !DILocation(line: 92, column: 2, scope: !5976)
!6006 = !DILocation(line: 93, column: 1, scope: !5976)
!6007 = !DISubprogram(name: "vmf_insert_pfn_prot", scope: !1336, file: !1336, line: 3477, type: !6008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6008 = !DISubroutineType(types: !6009)
!6009 = !{!1359, !1122, !211, !211, !1304}
!6010 = distinct !DISubprogram(name: "ttm_bo_vm_dummy_page", scope: !3, file: !3, line: 291, type: !6011, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6013)
!6011 = !DISubroutineType(types: !6012)
!6012 = !{!1359, !1360, !1304}
!6013 = !{!6014, !6015, !6016, !6017, !6018, !6019, !6020, !6021, !6022}
!6014 = !DILocalVariable(name: "vmf", arg: 1, scope: !6010, file: !3, line: 291, type: !1360)
!6015 = !DILocalVariable(name: "prot", arg: 2, scope: !6010, file: !3, line: 291, type: !1304)
!6016 = !DILocalVariable(name: "vma", scope: !6010, file: !3, line: 293, type: !1122)
!6017 = !DILocalVariable(name: "bo", scope: !6010, file: !3, line: 294, type: !4205)
!6018 = !DILocalVariable(name: "ddev", scope: !6010, file: !3, line: 295, type: !4214)
!6019 = !DILocalVariable(name: "ret", scope: !6010, file: !3, line: 296, type: !1359)
!6020 = !DILocalVariable(name: "address", scope: !6010, file: !3, line: 297, type: !211)
!6021 = !DILocalVariable(name: "pfn", scope: !6010, file: !3, line: 298, type: !211)
!6022 = !DILocalVariable(name: "page", scope: !6010, file: !3, line: 299, type: !207)
!6023 = !DILocation(line: 291, column: 50, scope: !6010)
!6024 = !DILocation(line: 291, column: 64, scope: !6010)
!6025 = !DILocation(line: 293, column: 2, scope: !6010)
!6026 = !DILocation(line: 293, column: 25, scope: !6010)
!6027 = !DILocation(line: 293, column: 31, scope: !6010)
!6028 = !DILocation(line: 293, column: 36, scope: !6010)
!6029 = !DILocation(line: 294, column: 2, scope: !6010)
!6030 = !DILocation(line: 294, column: 28, scope: !6010)
!6031 = !DILocation(line: 294, column: 33, scope: !6010)
!6032 = !DILocation(line: 294, column: 38, scope: !6010)
!6033 = !DILocation(line: 295, column: 2, scope: !6010)
!6034 = !DILocation(line: 295, column: 21, scope: !6010)
!6035 = !DILocation(line: 295, column: 28, scope: !6010)
!6036 = !DILocation(line: 295, column: 32, scope: !6010)
!6037 = !DILocation(line: 295, column: 37, scope: !6010)
!6038 = !DILocation(line: 296, column: 2, scope: !6010)
!6039 = !DILocation(line: 296, column: 13, scope: !6010)
!6040 = !DILocation(line: 297, column: 2, scope: !6010)
!6041 = !DILocation(line: 297, column: 16, scope: !6010)
!6042 = !DILocation(line: 298, column: 2, scope: !6010)
!6043 = !DILocation(line: 298, column: 16, scope: !6010)
!6044 = !DILocation(line: 299, column: 2, scope: !6010)
!6045 = !DILocation(line: 299, column: 15, scope: !6010)
!6046 = !DILocation(line: 302, column: 9, scope: !6010)
!6047 = !DILocation(line: 302, column: 7, scope: !6010)
!6048 = !DILocation(line: 303, column: 7, scope: !6049)
!6049 = distinct !DILexicalBlock(scope: !6010, file: !3, line: 303, column: 6)
!6050 = !DILocation(line: 303, column: 6, scope: !6010)
!6051 = !DILocation(line: 304, column: 3, scope: !6049)
!6052 = !DILocation(line: 307, column: 6, scope: !6053)
!6053 = distinct !DILexicalBlock(scope: !6010, file: !3, line: 307, column: 6)
!6054 = !DILocation(line: 307, column: 6, scope: !6010)
!6055 = !DILocation(line: 308, column: 3, scope: !6053)
!6056 = !DILocation(line: 310, column: 8, scope: !6010)
!6057 = !DILocation(line: 310, column: 6, scope: !6010)
!6058 = !DILocation(line: 313, column: 17, scope: !6059)
!6059 = distinct !DILexicalBlock(scope: !6010, file: !3, line: 313, column: 2)
!6060 = !DILocation(line: 313, column: 22, scope: !6059)
!6061 = !DILocation(line: 313, column: 15, scope: !6059)
!6062 = !DILocation(line: 313, column: 7, scope: !6059)
!6063 = !DILocation(line: 313, column: 32, scope: !6064)
!6064 = distinct !DILexicalBlock(scope: !6059, file: !3, line: 313, column: 2)
!6065 = !DILocation(line: 313, column: 42, scope: !6064)
!6066 = !DILocation(line: 313, column: 47, scope: !6064)
!6067 = !DILocation(line: 313, column: 40, scope: !6064)
!6068 = !DILocation(line: 313, column: 2, scope: !6059)
!6069 = !DILocation(line: 315, column: 29, scope: !6064)
!6070 = !DILocation(line: 315, column: 34, scope: !6064)
!6071 = !DILocation(line: 315, column: 43, scope: !6064)
!6072 = !DILocation(line: 315, column: 9, scope: !6064)
!6073 = !DILocation(line: 315, column: 7, scope: !6064)
!6074 = !DILocation(line: 315, column: 3, scope: !6064)
!6075 = !DILocation(line: 314, column: 15, scope: !6064)
!6076 = !DILocation(line: 313, column: 2, scope: !6064)
!6077 = distinct !{!6077, !6068, !6078, !5874, !5875}
!6078 = !DILocation(line: 315, column: 52, scope: !6059)
!6079 = !DILocation(line: 317, column: 9, scope: !6010)
!6080 = !DILocation(line: 317, column: 2, scope: !6010)
!6081 = !DILocation(line: 318, column: 1, scope: !6010)
!6082 = !DISubprogram(name: "alloc_pages", scope: !6083, file: !6083, line: 264, type: !6084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6083 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9839e6e1390b3a0e2df74dd95101fbc5")
!6084 = !DISubroutineType(types: !6085)
!6085 = !{!207, !1368, !7}
!6086 = !DISubprogram(name: "__drmm_add_action_or_reset", scope: !6087, file: !6087, line: 44, type: !6088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6087 = !DIFile(filename: "./include/drm/drm_managed.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2765e45efba520130e79a6037b825728")
!6088 = !DISubroutineType(types: !6089)
!6089 = !{!109, !4214, !6090, !205, !402}
!6090 = !DIDerivedType(tag: DW_TAG_typedef, name: "drmres_release_t", file: !6087, line: 13, baseType: !6091)
!6091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6092, size: 64)
!6092 = !DISubroutineType(types: !6093)
!6093 = !{null, !4214, !205}
!6094 = distinct !DISubprogram(name: "ttm_bo_release_dummy_page", scope: !3, file: !3, line: 284, type: !6092, scopeLine: 285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6095)
!6095 = !{!6096, !6097, !6098}
!6096 = !DILocalVariable(name: "dev", arg: 1, scope: !6094, file: !3, line: 284, type: !4214)
!6097 = !DILocalVariable(name: "res", arg: 2, scope: !6094, file: !3, line: 284, type: !205)
!6098 = !DILocalVariable(name: "dummy_page", scope: !6094, file: !3, line: 286, type: !207)
!6099 = !DILocation(line: 284, column: 58, scope: !6094)
!6100 = !DILocation(line: 284, column: 69, scope: !6094)
!6101 = !DILocation(line: 286, column: 2, scope: !6094)
!6102 = !DILocation(line: 286, column: 15, scope: !6094)
!6103 = !DILocation(line: 286, column: 43, scope: !6094)
!6104 = !DILocation(line: 288, column: 2, scope: !6094)
!6105 = !DILocation(line: 289, column: 1, scope: !6094)
!6106 = distinct !DISubprogram(name: "ttm_bo_vm_fault", scope: !3, file: !3, line: 321, type: !1357, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6107)
!6107 = !{!6108, !6109, !6110, !6111, !6112, !6113, !6114}
!6108 = !DILocalVariable(name: "vmf", arg: 1, scope: !6106, file: !3, line: 321, type: !1360)
!6109 = !DILocalVariable(name: "vma", scope: !6106, file: !3, line: 323, type: !1122)
!6110 = !DILocalVariable(name: "prot", scope: !6106, file: !3, line: 324, type: !1304)
!6111 = !DILocalVariable(name: "bo", scope: !6106, file: !3, line: 325, type: !4205)
!6112 = !DILocalVariable(name: "ddev", scope: !6106, file: !3, line: 326, type: !4214)
!6113 = !DILocalVariable(name: "ret", scope: !6106, file: !3, line: 327, type: !1359)
!6114 = !DILocalVariable(name: "idx", scope: !6106, file: !3, line: 328, type: !109)
!6115 = !DILocation(line: 321, column: 45, scope: !6106)
!6116 = !DILocation(line: 323, column: 2, scope: !6106)
!6117 = !DILocation(line: 323, column: 25, scope: !6106)
!6118 = !DILocation(line: 323, column: 31, scope: !6106)
!6119 = !DILocation(line: 323, column: 36, scope: !6106)
!6120 = !DILocation(line: 324, column: 2, scope: !6106)
!6121 = !DILocation(line: 324, column: 11, scope: !6106)
!6122 = !DILocation(line: 325, column: 2, scope: !6106)
!6123 = !DILocation(line: 325, column: 28, scope: !6106)
!6124 = !DILocation(line: 325, column: 33, scope: !6106)
!6125 = !DILocation(line: 325, column: 38, scope: !6106)
!6126 = !DILocation(line: 326, column: 2, scope: !6106)
!6127 = !DILocation(line: 326, column: 21, scope: !6106)
!6128 = !DILocation(line: 326, column: 28, scope: !6106)
!6129 = !DILocation(line: 326, column: 32, scope: !6106)
!6130 = !DILocation(line: 326, column: 37, scope: !6106)
!6131 = !DILocation(line: 327, column: 2, scope: !6106)
!6132 = !DILocation(line: 327, column: 13, scope: !6106)
!6133 = !DILocation(line: 328, column: 2, scope: !6106)
!6134 = !DILocation(line: 328, column: 6, scope: !6106)
!6135 = !DILocation(line: 330, column: 26, scope: !6106)
!6136 = !DILocation(line: 330, column: 30, scope: !6106)
!6137 = !DILocation(line: 330, column: 8, scope: !6106)
!6138 = !DILocation(line: 330, column: 6, scope: !6106)
!6139 = !DILocation(line: 331, column: 6, scope: !6140)
!6140 = distinct !DILexicalBlock(scope: !6106, file: !3, line: 331, column: 6)
!6141 = !DILocation(line: 331, column: 6, scope: !6106)
!6142 = !DILocation(line: 332, column: 10, scope: !6140)
!6143 = !DILocation(line: 332, column: 3, scope: !6140)
!6144 = !DILocation(line: 334, column: 9, scope: !6106)
!6145 = !DILocation(line: 334, column: 14, scope: !6106)
!6146 = !DILocation(line: 335, column: 20, scope: !6147)
!6147 = distinct !DILexicalBlock(scope: !6106, file: !3, line: 335, column: 6)
!6148 = !DILocation(line: 335, column: 6, scope: !6147)
!6149 = !DILocation(line: 335, column: 6, scope: !6106)
!6150 = !DILocation(line: 336, column: 34, scope: !6151)
!6151 = distinct !DILexicalBlock(scope: !6147, file: !3, line: 335, column: 33)
!6152 = !DILocation(line: 336, column: 9, scope: !6151)
!6153 = !DILocation(line: 336, column: 7, scope: !6151)
!6154 = !DILocation(line: 337, column: 16, scope: !6151)
!6155 = !DILocation(line: 337, column: 3, scope: !6151)
!6156 = !DILocation(line: 338, column: 2, scope: !6151)
!6157 = !DILocation(line: 339, column: 30, scope: !6158)
!6158 = distinct !DILexicalBlock(scope: !6147, file: !3, line: 338, column: 9)
!6159 = !DILocation(line: 339, column: 9, scope: !6158)
!6160 = !DILocation(line: 339, column: 7, scope: !6158)
!6161 = !DILocation(line: 341, column: 6, scope: !6162)
!6162 = distinct !DILexicalBlock(scope: !6106, file: !3, line: 341, column: 6)
!6163 = !DILocation(line: 341, column: 10, scope: !6162)
!6164 = !DILocation(line: 341, column: 28, scope: !6162)
!6165 = !DILocation(line: 341, column: 33, scope: !6162)
!6166 = !DILocation(line: 341, column: 38, scope: !6162)
!6167 = !DILocation(line: 341, column: 44, scope: !6162)
!6168 = !DILocation(line: 341, column: 6, scope: !6106)
!6169 = !DILocation(line: 342, column: 10, scope: !6162)
!6170 = !DILocation(line: 342, column: 3, scope: !6162)
!6171 = !DILocation(line: 344, column: 18, scope: !6106)
!6172 = !DILocation(line: 344, column: 22, scope: !6106)
!6173 = !DILocation(line: 344, column: 27, scope: !6106)
!6174 = !DILocation(line: 344, column: 2, scope: !6106)
!6175 = !DILocation(line: 346, column: 9, scope: !6106)
!6176 = !DILocation(line: 346, column: 2, scope: !6106)
!6177 = !DILocation(line: 347, column: 1, scope: !6106)
!6178 = !DISubprogram(name: "drm_dev_enter", scope: !4680, file: !4680, line: 508, type: !6179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6179 = !DISubroutineType(types: !6180)
!6180 = !{!837, !4214, !1883}
!6181 = !DISubprogram(name: "drm_dev_exit", scope: !4680, file: !4680, line: 509, type: !3072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6182 = distinct !DISubprogram(name: "ttm_bo_vm_open", scope: !3, file: !3, line: 350, type: !1340, scopeLine: 351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6183)
!6183 = !{!6184, !6185, !6186, !6188}
!6184 = !DILocalVariable(name: "vma", arg: 1, scope: !6182, file: !3, line: 350, type: !1122)
!6185 = !DILocalVariable(name: "bo", scope: !6182, file: !3, line: 352, type: !4205)
!6186 = !DILocalVariable(name: "__ret_warn_on", scope: !6187, file: !3, line: 354, type: !109)
!6187 = distinct !DILexicalBlock(scope: !6182, file: !3, line: 354, column: 2)
!6188 = !DILocalVariable(name: "__flags", scope: !6189, file: !3, line: 354, type: !109)
!6189 = distinct !DILexicalBlock(scope: !6190, file: !3, line: 354, column: 2)
!6190 = distinct !DILexicalBlock(scope: !6187, file: !3, line: 354, column: 2)
!6191 = !DILocation(line: 350, column: 44, scope: !6182)
!6192 = !DILocation(line: 352, column: 2, scope: !6182)
!6193 = !DILocation(line: 352, column: 28, scope: !6182)
!6194 = !DILocation(line: 352, column: 33, scope: !6182)
!6195 = !DILocation(line: 352, column: 38, scope: !6182)
!6196 = !DILocation(line: 354, column: 2, scope: !6187)
!6197 = !DILocation(line: 354, column: 2, scope: !6190)
!6198 = !DILocation(line: 354, column: 2, scope: !6189)
!6199 = !DILocation(line: 354, column: 2, scope: !6200)
!6200 = distinct !DILexicalBlock(scope: !6189, file: !3, line: 354, column: 2)
!6201 = !DILocation(line: 354, column: 2, scope: !6202)
!6202 = distinct !DILexicalBlock(scope: !6189, file: !3, line: 354, column: 2)
!6203 = !{i64 2155249047, i64 2155249076, i64 2155249122, i64 2155249180, i64 2155249234, i64 2155249288, i64 2155249343, i64 2155249374, i64 2155249682, i64 2155249688, i64 2155249735, i64 2155249758, i64 2155249784}
!6204 = !DILocation(line: 354, column: 2, scope: !6205)
!6205 = distinct !DILexicalBlock(scope: !6189, file: !3, line: 354, column: 2)
!6206 = !DILocation(line: 354, column: 2, scope: !6182)
!6207 = !DILocation(line: 356, column: 13, scope: !6182)
!6208 = !DILocation(line: 356, column: 2, scope: !6182)
!6209 = !DILocation(line: 357, column: 1, scope: !6182)
!6210 = distinct !DISubprogram(name: "ttm_bo_vm_close", scope: !3, file: !3, line: 360, type: !1340, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6211)
!6211 = !{!6212, !6213}
!6212 = !DILocalVariable(name: "vma", arg: 1, scope: !6210, file: !3, line: 360, type: !1122)
!6213 = !DILocalVariable(name: "bo", scope: !6210, file: !3, line: 362, type: !4205)
!6214 = !DILocation(line: 360, column: 45, scope: !6210)
!6215 = !DILocation(line: 362, column: 2, scope: !6210)
!6216 = !DILocation(line: 362, column: 28, scope: !6210)
!6217 = !DILocation(line: 362, column: 33, scope: !6210)
!6218 = !DILocation(line: 362, column: 38, scope: !6210)
!6219 = !DILocation(line: 364, column: 13, scope: !6210)
!6220 = !DILocation(line: 364, column: 2, scope: !6210)
!6221 = !DILocation(line: 365, column: 2, scope: !6210)
!6222 = !DILocation(line: 365, column: 7, scope: !6210)
!6223 = !DILocation(line: 365, column: 23, scope: !6210)
!6224 = !DILocation(line: 366, column: 1, scope: !6210)
!6225 = distinct !DISubprogram(name: "ttm_bo_vm_access", scope: !3, file: !3, line: 408, type: !1421, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6226)
!6226 = !{!6227, !6228, !6229, !6230, !6231, !6232, !6233, !6234}
!6227 = !DILocalVariable(name: "vma", arg: 1, scope: !6225, file: !3, line: 408, type: !1122)
!6228 = !DILocalVariable(name: "addr", arg: 2, scope: !6225, file: !3, line: 408, type: !211)
!6229 = !DILocalVariable(name: "buf", arg: 3, scope: !6225, file: !3, line: 409, type: !205)
!6230 = !DILocalVariable(name: "len", arg: 4, scope: !6225, file: !3, line: 409, type: !109)
!6231 = !DILocalVariable(name: "write", arg: 5, scope: !6225, file: !3, line: 409, type: !109)
!6232 = !DILocalVariable(name: "bo", scope: !6225, file: !3, line: 411, type: !4205)
!6233 = !DILocalVariable(name: "offset", scope: !6225, file: !3, line: 412, type: !211)
!6234 = !DILocalVariable(name: "ret", scope: !6225, file: !3, line: 415, type: !109)
!6235 = !DILocation(line: 408, column: 45, scope: !6225)
!6236 = !DILocation(line: 408, column: 64, scope: !6225)
!6237 = !DILocation(line: 409, column: 14, scope: !6225)
!6238 = !DILocation(line: 409, column: 23, scope: !6225)
!6239 = !DILocation(line: 409, column: 32, scope: !6225)
!6240 = !DILocation(line: 411, column: 2, scope: !6225)
!6241 = !DILocation(line: 411, column: 28, scope: !6225)
!6242 = !DILocation(line: 411, column: 33, scope: !6225)
!6243 = !DILocation(line: 411, column: 38, scope: !6225)
!6244 = !DILocation(line: 412, column: 2, scope: !6225)
!6245 = !DILocation(line: 412, column: 16, scope: !6225)
!6246 = !DILocation(line: 412, column: 26, scope: !6225)
!6247 = !DILocation(line: 412, column: 34, scope: !6225)
!6248 = !DILocation(line: 412, column: 39, scope: !6225)
!6249 = !DILocation(line: 412, column: 32, scope: !6225)
!6250 = !DILocation(line: 413, column: 5, scope: !6225)
!6251 = !DILocation(line: 413, column: 10, scope: !6225)
!6252 = !DILocation(line: 413, column: 41, scope: !6225)
!6253 = !DILocation(line: 413, column: 45, scope: !6225)
!6254 = !DILocation(line: 413, column: 50, scope: !6225)
!6255 = !DILocation(line: 413, column: 21, scope: !6225)
!6256 = !DILocation(line: 413, column: 19, scope: !6225)
!6257 = !DILocation(line: 414, column: 4, scope: !6225)
!6258 = !DILocation(line: 412, column: 48, scope: !6225)
!6259 = !DILocation(line: 415, column: 2, scope: !6225)
!6260 = !DILocation(line: 415, column: 6, scope: !6225)
!6261 = !DILocation(line: 417, column: 6, scope: !6262)
!6262 = distinct !DILexicalBlock(scope: !6225, file: !3, line: 417, column: 6)
!6263 = !DILocation(line: 417, column: 10, scope: !6262)
!6264 = !DILocation(line: 417, column: 14, scope: !6262)
!6265 = !DILocation(line: 417, column: 18, scope: !6262)
!6266 = !DILocation(line: 417, column: 27, scope: !6262)
!6267 = !DILocation(line: 417, column: 25, scope: !6262)
!6268 = !DILocation(line: 417, column: 34, scope: !6262)
!6269 = !DILocation(line: 417, column: 38, scope: !6262)
!6270 = !DILocation(line: 417, column: 43, scope: !6262)
!6271 = !DILocation(line: 417, column: 32, scope: !6262)
!6272 = !DILocation(line: 417, column: 6, scope: !6225)
!6273 = !DILocation(line: 418, column: 3, scope: !6262)
!6274 = !DILocation(line: 420, column: 23, scope: !6225)
!6275 = !DILocation(line: 420, column: 8, scope: !6225)
!6276 = !DILocation(line: 420, column: 6, scope: !6225)
!6277 = !DILocation(line: 421, column: 6, scope: !6278)
!6278 = distinct !DILexicalBlock(scope: !6225, file: !3, line: 421, column: 6)
!6279 = !DILocation(line: 421, column: 6, scope: !6225)
!6280 = !DILocation(line: 422, column: 10, scope: !6278)
!6281 = !DILocation(line: 422, column: 3, scope: !6278)
!6282 = !DILocation(line: 424, column: 10, scope: !6225)
!6283 = !DILocation(line: 424, column: 14, scope: !6225)
!6284 = !DILocation(line: 424, column: 24, scope: !6225)
!6285 = !DILocation(line: 424, column: 2, scope: !6225)
!6286 = !DILocation(line: 424, column: 34, scope: !6225)
!6287 = !DILocation(line: 428, column: 31, scope: !6288)
!6288 = distinct !DILexicalBlock(scope: !6225, file: !3, line: 424, column: 34)
!6289 = !DILocation(line: 428, column: 35, scope: !6288)
!6290 = !DILocation(line: 428, column: 43, scope: !6288)
!6291 = !DILocation(line: 428, column: 48, scope: !6288)
!6292 = !DILocation(line: 428, column: 53, scope: !6288)
!6293 = !DILocation(line: 428, column: 9, scope: !6288)
!6294 = !DILocation(line: 428, column: 7, scope: !6288)
!6295 = !DILocation(line: 429, column: 3, scope: !6288)
!6296 = !DILocation(line: 431, column: 7, scope: !6297)
!6297 = distinct !DILexicalBlock(scope: !6288, file: !3, line: 431, column: 7)
!6298 = !DILocation(line: 431, column: 11, scope: !6297)
!6299 = !DILocation(line: 431, column: 17, scope: !6297)
!6300 = !DILocation(line: 431, column: 24, scope: !6297)
!6301 = !DILocation(line: 431, column: 7, scope: !6288)
!6302 = !DILocation(line: 432, column: 10, scope: !6297)
!6303 = !DILocation(line: 432, column: 14, scope: !6297)
!6304 = !DILocation(line: 432, column: 20, scope: !6297)
!6305 = !DILocation(line: 432, column: 27, scope: !6297)
!6306 = !DILocation(line: 433, column: 5, scope: !6297)
!6307 = !DILocation(line: 433, column: 9, scope: !6297)
!6308 = !DILocation(line: 433, column: 17, scope: !6297)
!6309 = !DILocation(line: 433, column: 22, scope: !6297)
!6310 = !DILocation(line: 433, column: 27, scope: !6297)
!6311 = !DILocation(line: 432, column: 8, scope: !6297)
!6312 = !DILocation(line: 432, column: 4, scope: !6297)
!6313 = !DILocation(line: 435, column: 8, scope: !6297)
!6314 = !DILocation(line: 436, column: 2, scope: !6288)
!6315 = !DILocation(line: 438, column: 19, scope: !6225)
!6316 = !DILocation(line: 438, column: 2, scope: !6225)
!6317 = !DILocation(line: 440, column: 9, scope: !6225)
!6318 = !DILocation(line: 440, column: 2, scope: !6225)
!6319 = !DILocation(line: 441, column: 1, scope: !6225)
!6320 = distinct !DISubprogram(name: "ttm_bo_reserve", scope: !160, file: !160, line: 238, type: !6321, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6323)
!6321 = !DISubroutineType(types: !6322)
!6322 = !{!109, !4205, !837, !837, !4876}
!6323 = !{!6324, !6325, !6326, !6327, !6328, !6329, !6332, !6335}
!6324 = !DILocalVariable(name: "bo", arg: 1, scope: !6320, file: !160, line: 238, type: !4205)
!6325 = !DILocalVariable(name: "interruptible", arg: 2, scope: !6320, file: !160, line: 239, type: !837)
!6326 = !DILocalVariable(name: "no_wait", arg: 3, scope: !6320, file: !160, line: 239, type: !837)
!6327 = !DILocalVariable(name: "ticket", arg: 4, scope: !6320, file: !160, line: 240, type: !4876)
!6328 = !DILocalVariable(name: "ret", scope: !6320, file: !160, line: 242, type: !109)
!6329 = !DILocalVariable(name: "success", scope: !6330, file: !160, line: 245, type: !837)
!6330 = distinct !DILexicalBlock(scope: !6331, file: !160, line: 244, column: 15)
!6331 = distinct !DILexicalBlock(scope: !6320, file: !160, line: 244, column: 6)
!6332 = !DILocalVariable(name: "__ret_warn_on", scope: !6333, file: !160, line: 247, type: !109)
!6333 = distinct !DILexicalBlock(scope: !6334, file: !160, line: 247, column: 7)
!6334 = distinct !DILexicalBlock(scope: !6330, file: !160, line: 247, column: 7)
!6335 = !DILocalVariable(name: "__flags", scope: !6336, file: !160, line: 247, type: !109)
!6336 = distinct !DILexicalBlock(scope: !6337, file: !160, line: 247, column: 7)
!6337 = distinct !DILexicalBlock(scope: !6333, file: !160, line: 247, column: 7)
!6338 = !DILocation(line: 238, column: 60, scope: !6320)
!6339 = !DILocation(line: 239, column: 11, scope: !6320)
!6340 = !DILocation(line: 239, column: 31, scope: !6320)
!6341 = !DILocation(line: 240, column: 29, scope: !6320)
!6342 = !DILocation(line: 242, column: 2, scope: !6320)
!6343 = !DILocation(line: 242, column: 6, scope: !6320)
!6344 = !DILocation(line: 244, column: 6, scope: !6331)
!6345 = !DILocation(line: 244, column: 6, scope: !6320)
!6346 = !DILocation(line: 245, column: 3, scope: !6330)
!6347 = !DILocation(line: 245, column: 8, scope: !6330)
!6348 = !DILocation(line: 247, column: 7, scope: !6333)
!6349 = !DILocation(line: 247, column: 7, scope: !6337)
!6350 = !DILocation(line: 247, column: 7, scope: !6336)
!6351 = !DILocation(line: 247, column: 7, scope: !6352)
!6352 = distinct !DILexicalBlock(scope: !6336, file: !160, line: 247, column: 7)
!6353 = !DILocation(line: 247, column: 7, scope: !6354)
!6354 = distinct !DILexicalBlock(scope: !6336, file: !160, line: 247, column: 7)
!6355 = !{i64 2154865439, i64 2154865468, i64 2154865514, i64 2154865572, i64 2154865626, i64 2154865680, i64 2154865735, i64 2154865766, i64 2154866074, i64 2154866080, i64 2154866127, i64 2154866150, i64 2154866176}
!6356 = !DILocation(line: 247, column: 7, scope: !6357)
!6357 = distinct !DILexicalBlock(scope: !6336, file: !160, line: 247, column: 7)
!6358 = !DILocation(line: 247, column: 7, scope: !6334)
!6359 = !DILocation(line: 247, column: 7, scope: !6330)
!6360 = !DILocation(line: 248, column: 4, scope: !6334)
!6361 = !DILocation(line: 250, column: 30, scope: !6330)
!6362 = !DILocation(line: 250, column: 34, scope: !6330)
!6363 = !DILocation(line: 250, column: 39, scope: !6330)
!6364 = !DILocation(line: 250, column: 13, scope: !6330)
!6365 = !DILocation(line: 250, column: 11, scope: !6330)
!6366 = !DILocation(line: 251, column: 10, scope: !6330)
!6367 = !DILocation(line: 251, column: 3, scope: !6330)
!6368 = !DILocation(line: 252, column: 2, scope: !6331)
!6369 = !DILocation(line: 254, column: 6, scope: !6370)
!6370 = distinct !DILexicalBlock(scope: !6320, file: !160, line: 254, column: 6)
!6371 = !DILocation(line: 254, column: 6, scope: !6320)
!6372 = !DILocation(line: 255, column: 37, scope: !6370)
!6373 = !DILocation(line: 255, column: 41, scope: !6370)
!6374 = !DILocation(line: 255, column: 46, scope: !6370)
!6375 = !DILocation(line: 255, column: 52, scope: !6370)
!6376 = !DILocation(line: 255, column: 9, scope: !6370)
!6377 = !DILocation(line: 255, column: 7, scope: !6370)
!6378 = !DILocation(line: 255, column: 3, scope: !6370)
!6379 = !DILocation(line: 257, column: 23, scope: !6370)
!6380 = !DILocation(line: 257, column: 27, scope: !6370)
!6381 = !DILocation(line: 257, column: 32, scope: !6370)
!6382 = !DILocation(line: 257, column: 38, scope: !6370)
!6383 = !DILocation(line: 257, column: 9, scope: !6370)
!6384 = !DILocation(line: 257, column: 7, scope: !6370)
!6385 = !DILocation(line: 258, column: 6, scope: !6386)
!6386 = distinct !DILexicalBlock(scope: !6320, file: !160, line: 258, column: 6)
!6387 = !DILocation(line: 258, column: 10, scope: !6386)
!6388 = !DILocation(line: 258, column: 6, scope: !6320)
!6389 = !DILocation(line: 259, column: 3, scope: !6386)
!6390 = !DILocation(line: 260, column: 9, scope: !6320)
!6391 = !DILocation(line: 260, column: 2, scope: !6320)
!6392 = !DILocation(line: 261, column: 1, scope: !6320)
!6393 = distinct !DISubprogram(name: "ttm_bo_vm_access_kmap", scope: !3, file: !3, line: 369, type: !6394, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6396)
!6394 = !DISubroutineType(types: !6395)
!6395 = !{!109, !4205, !211, !5472, !109, !109}
!6396 = !{!6397, !6398, !6399, !6400, !6401, !6402, !6403, !6404, !6405, !6407, !6409, !6410, !6411, !6412, !6413, !6415}
!6397 = !DILocalVariable(name: "bo", arg: 1, scope: !6393, file: !3, line: 369, type: !4205)
!6398 = !DILocalVariable(name: "offset", arg: 2, scope: !6393, file: !3, line: 370, type: !211)
!6399 = !DILocalVariable(name: "buf", arg: 3, scope: !6393, file: !3, line: 371, type: !5472)
!6400 = !DILocalVariable(name: "len", arg: 4, scope: !6393, file: !3, line: 371, type: !109)
!6401 = !DILocalVariable(name: "write", arg: 5, scope: !6393, file: !3, line: 371, type: !109)
!6402 = !DILocalVariable(name: "page", scope: !6393, file: !3, line: 373, type: !211)
!6403 = !DILocalVariable(name: "bytes_left", scope: !6393, file: !3, line: 374, type: !211)
!6404 = !DILocalVariable(name: "ret", scope: !6393, file: !3, line: 375, type: !109)
!6405 = !DILocalVariable(name: "bytes", scope: !6406, file: !3, line: 382, type: !211)
!6406 = distinct !DILexicalBlock(scope: !6393, file: !3, line: 381, column: 5)
!6407 = !DILocalVariable(name: "__UNIQUE_ID___x333", scope: !6408, file: !3, line: 382, type: !211)
!6408 = distinct !DILexicalBlock(scope: !6406, file: !3, line: 382, column: 25)
!6409 = !DILocalVariable(name: "__UNIQUE_ID___y334", scope: !6408, file: !3, line: 382, type: !211)
!6410 = !DILocalVariable(name: "map", scope: !6406, file: !3, line: 383, type: !202)
!6411 = !DILocalVariable(name: "ptr", scope: !6406, file: !3, line: 384, type: !205)
!6412 = !DILocalVariable(name: "is_iomem", scope: !6406, file: !3, line: 385, type: !837)
!6413 = !DILocalVariable(name: "__ret_warn_on", scope: !6414, file: !3, line: 392, type: !109)
!6414 = distinct !DILexicalBlock(scope: !6406, file: !3, line: 392, column: 3)
!6415 = !DILocalVariable(name: "__flags", scope: !6416, file: !3, line: 392, type: !109)
!6416 = distinct !DILexicalBlock(scope: !6417, file: !3, line: 392, column: 3)
!6417 = distinct !DILexicalBlock(scope: !6414, file: !3, line: 392, column: 3)
!6418 = !DILocation(line: 369, column: 60, scope: !6393)
!6419 = !DILocation(line: 370, column: 20, scope: !6393)
!6420 = !DILocation(line: 371, column: 15, scope: !6393)
!6421 = !DILocation(line: 371, column: 24, scope: !6393)
!6422 = !DILocation(line: 371, column: 33, scope: !6393)
!6423 = !DILocation(line: 373, column: 2, scope: !6393)
!6424 = !DILocation(line: 373, column: 16, scope: !6393)
!6425 = !DILocation(line: 373, column: 23, scope: !6393)
!6426 = !DILocation(line: 373, column: 30, scope: !6393)
!6427 = !DILocation(line: 374, column: 2, scope: !6393)
!6428 = !DILocation(line: 374, column: 16, scope: !6393)
!6429 = !DILocation(line: 374, column: 29, scope: !6393)
!6430 = !DILocation(line: 375, column: 2, scope: !6393)
!6431 = !DILocation(line: 375, column: 6, scope: !6393)
!6432 = !DILocation(line: 380, column: 12, scope: !6393)
!6433 = !DILocation(line: 380, column: 17, scope: !6393)
!6434 = !DILocation(line: 380, column: 9, scope: !6393)
!6435 = !DILocation(line: 381, column: 2, scope: !6393)
!6436 = !DILocation(line: 382, column: 3, scope: !6406)
!6437 = !DILocation(line: 382, column: 17, scope: !6406)
!6438 = !DILocation(line: 382, column: 25, scope: !6408)
!6439 = !DILocation(line: 382, column: 25, scope: !6406)
!6440 = !DILocation(line: 383, column: 3, scope: !6406)
!6441 = !DILocation(line: 383, column: 26, scope: !6406)
!6442 = !DILocation(line: 384, column: 3, scope: !6406)
!6443 = !DILocation(line: 384, column: 9, scope: !6406)
!6444 = !DILocation(line: 385, column: 3, scope: !6406)
!6445 = !DILocation(line: 385, column: 8, scope: !6406)
!6446 = !DILocation(line: 387, column: 21, scope: !6406)
!6447 = !DILocation(line: 387, column: 25, scope: !6406)
!6448 = !DILocation(line: 387, column: 9, scope: !6406)
!6449 = !DILocation(line: 387, column: 7, scope: !6406)
!6450 = !DILocation(line: 388, column: 7, scope: !6451)
!6451 = distinct !DILexicalBlock(scope: !6406, file: !3, line: 388, column: 7)
!6452 = !DILocation(line: 388, column: 7, scope: !6406)
!6453 = !DILocation(line: 389, column: 11, scope: !6451)
!6454 = !DILocation(line: 389, column: 4, scope: !6451)
!6455 = !DILocation(line: 391, column: 20, scope: !6406)
!6456 = !DILocation(line: 391, column: 60, scope: !6406)
!6457 = !DILocation(line: 391, column: 58, scope: !6406)
!6458 = !DILocation(line: 391, column: 7, scope: !6406)
!6459 = !DILocation(line: 392, column: 3, scope: !6414)
!6460 = !DILocation(line: 392, column: 3, scope: !6417)
!6461 = !DILocation(line: 392, column: 3, scope: !6416)
!6462 = !DILocation(line: 392, column: 3, scope: !6463)
!6463 = distinct !DILexicalBlock(scope: !6416, file: !3, line: 392, column: 3)
!6464 = !DILocation(line: 392, column: 3, scope: !6465)
!6465 = distinct !DILexicalBlock(scope: !6416, file: !3, line: 392, column: 3)
!6466 = !{i64 2155263477, i64 2155263506, i64 2155263552, i64 2155263610, i64 2155263664, i64 2155263718, i64 2155263773, i64 2155263804, i64 2155264112, i64 2155264118, i64 2155264165, i64 2155264188, i64 2155264214}
!6467 = !DILocation(line: 392, column: 3, scope: !6468)
!6468 = distinct !DILexicalBlock(scope: !6416, file: !3, line: 392, column: 3)
!6469 = !DILocation(line: 392, column: 3, scope: !6406)
!6470 = !DILocation(line: 393, column: 7, scope: !6471)
!6471 = distinct !DILexicalBlock(scope: !6406, file: !3, line: 393, column: 7)
!6472 = !DILocation(line: 393, column: 7, scope: !6406)
!6473 = !DILocation(line: 394, column: 11, scope: !6471)
!6474 = !DILocation(line: 394, column: 16, scope: !6471)
!6475 = !DILocation(line: 394, column: 21, scope: !6471)
!6476 = !DILocation(line: 394, column: 4, scope: !6471)
!6477 = !DILocation(line: 396, column: 11, scope: !6471)
!6478 = !DILocation(line: 396, column: 16, scope: !6471)
!6479 = !DILocation(line: 396, column: 21, scope: !6471)
!6480 = !DILocation(line: 396, column: 4, scope: !6471)
!6481 = !DILocation(line: 397, column: 3, scope: !6406)
!6482 = !DILocation(line: 399, column: 7, scope: !6406)
!6483 = !DILocation(line: 400, column: 10, scope: !6406)
!6484 = !DILocation(line: 400, column: 7, scope: !6406)
!6485 = !DILocation(line: 401, column: 17, scope: !6406)
!6486 = !DILocation(line: 401, column: 14, scope: !6406)
!6487 = !DILocation(line: 402, column: 10, scope: !6406)
!6488 = !DILocation(line: 403, column: 2, scope: !6393)
!6489 = !DILocation(line: 403, column: 2, scope: !6406)
!6490 = !DILocation(line: 403, column: 11, scope: !6393)
!6491 = distinct !{!6491, !6435, !6492, !5874, !5875}
!6492 = !DILocation(line: 403, column: 21, scope: !6393)
!6493 = !DILocation(line: 405, column: 9, scope: !6393)
!6494 = !DILocation(line: 405, column: 2, scope: !6393)
!6495 = !DILocation(line: 406, column: 1, scope: !6393)
!6496 = distinct !DISubprogram(name: "ttm_bo_unreserve", scope: !160, file: !160, line: 326, type: !5307, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6497)
!6497 = !{!6498}
!6498 = !DILocalVariable(name: "bo", arg: 1, scope: !6496, file: !160, line: 326, type: !4205)
!6499 = !DILocation(line: 326, column: 63, scope: !6496)
!6500 = !DILocation(line: 328, column: 35, scope: !6496)
!6501 = !DILocation(line: 328, column: 2, scope: !6496)
!6502 = !DILocation(line: 329, column: 18, scope: !6496)
!6503 = !DILocation(line: 329, column: 22, scope: !6496)
!6504 = !DILocation(line: 329, column: 27, scope: !6496)
!6505 = !DILocation(line: 329, column: 2, scope: !6496)
!6506 = !DILocation(line: 330, column: 1, scope: !6496)
!6507 = distinct !DISubprogram(name: "ttm_bo_mmap_obj", scope: !3, file: !3, line: 459, type: !6508, scopeLine: 460, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6510)
!6508 = !DISubroutineType(types: !6509)
!6509 = !{!109, !1122, !4205}
!6510 = !{!6511, !6512}
!6511 = !DILocalVariable(name: "vma", arg: 1, scope: !6507, file: !3, line: 459, type: !1122)
!6512 = !DILocalVariable(name: "bo", arg: 2, scope: !6507, file: !3, line: 459, type: !4205)
!6513 = !DILocation(line: 459, column: 44, scope: !6507)
!6514 = !DILocation(line: 459, column: 75, scope: !6507)
!6515 = !DILocation(line: 462, column: 21, scope: !6516)
!6516 = distinct !DILexicalBlock(scope: !6507, file: !3, line: 462, column: 6)
!6517 = !DILocation(line: 462, column: 26, scope: !6516)
!6518 = !DILocation(line: 462, column: 6, scope: !6516)
!6519 = !DILocation(line: 462, column: 6, scope: !6507)
!6520 = !DILocation(line: 463, column: 3, scope: !6516)
!6521 = !DILocation(line: 465, column: 13, scope: !6507)
!6522 = !DILocation(line: 465, column: 2, scope: !6507)
!6523 = !DILocation(line: 471, column: 7, scope: !6524)
!6524 = distinct !DILexicalBlock(scope: !6507, file: !3, line: 471, column: 6)
!6525 = !DILocation(line: 471, column: 12, scope: !6524)
!6526 = !DILocation(line: 471, column: 6, scope: !6507)
!6527 = !DILocation(line: 472, column: 3, scope: !6524)
!6528 = !DILocation(line: 472, column: 8, scope: !6524)
!6529 = !DILocation(line: 472, column: 15, scope: !6524)
!6530 = !DILocation(line: 479, column: 25, scope: !6507)
!6531 = !DILocation(line: 479, column: 2, scope: !6507)
!6532 = !DILocation(line: 479, column: 7, scope: !6507)
!6533 = !DILocation(line: 479, column: 23, scope: !6507)
!6534 = !DILocation(line: 481, column: 15, scope: !6507)
!6535 = !DILocation(line: 481, column: 2, scope: !6507)
!6536 = !DILocation(line: 482, column: 2, scope: !6507)
!6537 = !DILocation(line: 483, column: 1, scope: !6507)
!6538 = distinct !DISubprogram(name: "is_cow_mapping", scope: !1336, file: !1336, line: 1592, type: !6539, scopeLine: 1593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6541)
!6539 = !DISubroutineType(types: !6540)
!6540 = !{!837, !1314}
!6541 = !{!6542}
!6542 = !DILocalVariable(name: "flags", arg: 1, scope: !6538, file: !1336, line: 1592, type: !1314)
!6543 = !DILocation(line: 1592, column: 46, scope: !6538)
!6544 = !DILocation(line: 1594, column: 10, scope: !6538)
!6545 = !DILocation(line: 1594, column: 16, scope: !6538)
!6546 = !DILocation(line: 1594, column: 45, scope: !6538)
!6547 = !DILocation(line: 1594, column: 2, scope: !6538)
!6548 = distinct !DISubprogram(name: "vm_flags_set", scope: !1336, file: !1336, line: 844, type: !6549, scopeLine: 846, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6551)
!6549 = !DISubroutineType(types: !6550)
!6550 = !{null, !1122, !1314}
!6551 = !{!6552, !6553}
!6552 = !DILocalVariable(name: "vma", arg: 1, scope: !6548, file: !1336, line: 844, type: !1122)
!6553 = !DILocalVariable(name: "flags", arg: 2, scope: !6548, file: !1336, line: 845, type: !1314)
!6554 = !DILocation(line: 844, column: 56, scope: !6548)
!6555 = !DILocation(line: 845, column: 16, scope: !6548)
!6556 = !DILocation(line: 847, column: 18, scope: !6548)
!6557 = !DILocation(line: 847, column: 2, scope: !6548)
!6558 = !DILocation(line: 848, column: 37, scope: !6548)
!6559 = !DILocation(line: 848, column: 2, scope: !6548)
!6560 = !DILocation(line: 848, column: 34, scope: !6548)
!6561 = !DILocation(line: 849, column: 1, scope: !6548)
!6562 = !DISubprogram(name: "ww_mutex_trylock", scope: !4872, file: !4872, line: 340, type: !6563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6563 = !DISubroutineType(types: !6564)
!6564 = !{!109, !6565, !4876}
!6565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!6566 = distinct !DISubprogram(name: "kref_get", scope: !1722, file: !1722, line: 43, type: !6567, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6570)
!6567 = !DISubroutineType(types: !6568)
!6568 = !{null, !6569}
!6569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!6570 = !{!6571}
!6571 = !DILocalVariable(name: "kref", arg: 1, scope: !6566, file: !1722, line: 43, type: !6569)
!6572 = !DILocation(line: 43, column: 42, scope: !6566)
!6573 = !DILocation(line: 45, column: 16, scope: !6566)
!6574 = !DILocation(line: 45, column: 22, scope: !6566)
!6575 = !DILocation(line: 45, column: 2, scope: !6566)
!6576 = !DILocation(line: 46, column: 1, scope: !6566)
!6577 = distinct !DISubprogram(name: "refcount_inc", scope: !187, file: !187, line: 265, type: !6578, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6581)
!6578 = !DISubroutineType(types: !6579)
!6579 = !{null, !6580}
!6580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!6581 = !{!6582}
!6582 = !DILocalVariable(name: "r", arg: 1, scope: !6577, file: !187, line: 265, type: !6580)
!6583 = !DILocation(line: 265, column: 45, scope: !6577)
!6584 = !DILocation(line: 267, column: 17, scope: !6577)
!6585 = !DILocation(line: 267, column: 2, scope: !6577)
!6586 = !DILocation(line: 268, column: 1, scope: !6577)
!6587 = distinct !DISubprogram(name: "__refcount_inc", scope: !187, file: !187, line: 248, type: !6588, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6590)
!6588 = !DISubroutineType(types: !6589)
!6589 = !{null, !6580, !1883}
!6590 = !{!6591, !6592}
!6591 = !DILocalVariable(name: "r", arg: 1, scope: !6587, file: !187, line: 248, type: !6580)
!6592 = !DILocalVariable(name: "oldp", arg: 2, scope: !6587, file: !187, line: 248, type: !1883)
!6593 = !DILocation(line: 248, column: 47, scope: !6587)
!6594 = !DILocation(line: 248, column: 55, scope: !6587)
!6595 = !DILocation(line: 250, column: 20, scope: !6587)
!6596 = !DILocation(line: 250, column: 23, scope: !6587)
!6597 = !DILocation(line: 250, column: 2, scope: !6587)
!6598 = !DILocation(line: 251, column: 1, scope: !6587)
!6599 = distinct !DISubprogram(name: "__refcount_add", scope: !187, file: !187, line: 191, type: !6600, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6602)
!6600 = !DISubroutineType(types: !6601)
!6601 = !{null, !109, !6580, !1883}
!6602 = !{!6603, !6604, !6605, !6606}
!6603 = !DILocalVariable(name: "i", arg: 1, scope: !6599, file: !187, line: 191, type: !109)
!6604 = !DILocalVariable(name: "r", arg: 2, scope: !6599, file: !187, line: 191, type: !6580)
!6605 = !DILocalVariable(name: "oldp", arg: 3, scope: !6599, file: !187, line: 191, type: !1883)
!6606 = !DILocalVariable(name: "old", scope: !6599, file: !187, line: 193, type: !109)
!6607 = !DILocation(line: 191, column: 39, scope: !6599)
!6608 = !DILocation(line: 191, column: 54, scope: !6599)
!6609 = !DILocation(line: 191, column: 62, scope: !6599)
!6610 = !DILocation(line: 193, column: 2, scope: !6599)
!6611 = !DILocation(line: 193, column: 6, scope: !6599)
!6612 = !DILocation(line: 193, column: 37, scope: !6599)
!6613 = !DILocation(line: 193, column: 41, scope: !6599)
!6614 = !DILocation(line: 193, column: 44, scope: !6599)
!6615 = !DILocation(line: 193, column: 12, scope: !6599)
!6616 = !DILocation(line: 195, column: 6, scope: !6617)
!6617 = distinct !DILexicalBlock(scope: !6599, file: !187, line: 195, column: 6)
!6618 = !DILocation(line: 195, column: 6, scope: !6599)
!6619 = !DILocation(line: 196, column: 11, scope: !6617)
!6620 = !DILocation(line: 196, column: 4, scope: !6617)
!6621 = !DILocation(line: 196, column: 9, scope: !6617)
!6622 = !DILocation(line: 196, column: 3, scope: !6617)
!6623 = !DILocation(line: 198, column: 6, scope: !6624)
!6624 = distinct !DILexicalBlock(scope: !6599, file: !187, line: 198, column: 6)
!6625 = !DILocation(line: 198, column: 6, scope: !6599)
!6626 = !DILocation(line: 199, column: 26, scope: !6624)
!6627 = !DILocation(line: 199, column: 3, scope: !6624)
!6628 = !DILocation(line: 200, column: 11, scope: !6629)
!6629 = distinct !DILexicalBlock(scope: !6624, file: !187, line: 200, column: 11)
!6630 = !DILocation(line: 200, column: 11, scope: !6624)
!6631 = !DILocation(line: 201, column: 26, scope: !6629)
!6632 = !DILocation(line: 201, column: 3, scope: !6629)
!6633 = !DILocation(line: 202, column: 1, scope: !6599)
!6634 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !6635, file: !6635, line: 250, type: !6636, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6639)
!6635 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6636 = !DISubroutineType(types: !6637)
!6637 = !{!109, !109, !6638}
!6638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!6639 = !{!6640, !6641}
!6640 = !DILocalVariable(name: "i", arg: 1, scope: !6634, file: !6635, line: 250, type: !109)
!6641 = !DILocalVariable(name: "v", arg: 2, scope: !6634, file: !6635, line: 250, type: !6638)
!6642 = !DILocation(line: 250, column: 30, scope: !6634)
!6643 = !DILocation(line: 250, column: 43, scope: !6634)
!6644 = !DILocation(line: 252, column: 31, scope: !6634)
!6645 = !DILocation(line: 252, column: 2, scope: !6634)
!6646 = !DILocation(line: 253, column: 38, scope: !6634)
!6647 = !DILocation(line: 253, column: 41, scope: !6634)
!6648 = !DILocation(line: 253, column: 9, scope: !6634)
!6649 = !DILocation(line: 253, column: 2, scope: !6634)
!6650 = !DISubprogram(name: "refcount_warn_saturate", scope: !187, file: !187, line: 127, type: !6651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6651 = !DISubroutineType(types: !6652)
!6652 = !{null, !6580, !186}
!6653 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6654, file: !6654, line: 94, type: !6655, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6660)
!6654 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6655 = !DISubroutineType(types: !6656)
!6656 = !{null, !6657, !575}
!6657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6658, size: 64)
!6658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6659)
!6659 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6660 = !{!6661, !6662}
!6661 = !DILocalVariable(name: "v", arg: 1, scope: !6653, file: !6654, line: 94, type: !6657)
!6662 = !DILocalVariable(name: "size", arg: 2, scope: !6653, file: !6654, line: 94, type: !575)
!6663 = !DILocation(line: 94, column: 79, scope: !6653)
!6664 = !DILocation(line: 94, column: 89, scope: !6653)
!6665 = !DILocation(line: 96, column: 20, scope: !6653)
!6666 = !DILocation(line: 96, column: 23, scope: !6653)
!6667 = !DILocation(line: 96, column: 2, scope: !6653)
!6668 = !DILocation(line: 97, column: 2, scope: !6653)
!6669 = !DILocation(line: 98, column: 1, scope: !6653)
!6670 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !6671, file: !6671, line: 731, type: !6636, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6672)
!6671 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6672 = !{!6673, !6674}
!6673 = !DILocalVariable(name: "i", arg: 1, scope: !6670, file: !6671, line: 731, type: !109)
!6674 = !DILocalVariable(name: "v", arg: 2, scope: !6670, file: !6671, line: 731, type: !6638)
!6675 = !DILocation(line: 731, column: 34, scope: !6670)
!6676 = !DILocation(line: 731, column: 47, scope: !6670)
!6677 = !DILocation(line: 736, column: 31, scope: !6670)
!6678 = !DILocation(line: 736, column: 34, scope: !6670)
!6679 = !DILocation(line: 736, column: 9, scope: !6670)
!6680 = !DILocation(line: 736, column: 2, scope: !6670)
!6681 = distinct !DISubprogram(name: "kasan_check_write", scope: !6682, file: !6682, line: 44, type: !6683, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6685)
!6682 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6683 = !DISubroutineType(types: !6684)
!6684 = !{!837, !6657, !7}
!6685 = !{!6686, !6687}
!6686 = !DILocalVariable(name: "p", arg: 1, scope: !6681, file: !6682, line: 44, type: !6657)
!6687 = !DILocalVariable(name: "size", arg: 2, scope: !6681, file: !6682, line: 44, type: !7)
!6688 = !DILocation(line: 44, column: 59, scope: !6681)
!6689 = !DILocation(line: 44, column: 75, scope: !6681)
!6690 = !DILocation(line: 46, column: 2, scope: !6681)
!6691 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6692, file: !6692, line: 229, type: !6693, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6695)
!6692 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6693 = !DISubroutineType(types: !6694)
!6694 = !{null, !6657, !575, !109}
!6695 = !{!6696, !6697, !6698}
!6696 = !DILocalVariable(name: "ptr", arg: 1, scope: !6691, file: !6692, line: 229, type: !6657)
!6697 = !DILocalVariable(name: "size", arg: 2, scope: !6691, file: !6692, line: 229, type: !575)
!6698 = !DILocalVariable(name: "type", arg: 3, scope: !6691, file: !6692, line: 230, type: !109)
!6699 = !DILocation(line: 229, column: 60, scope: !6691)
!6700 = !DILocation(line: 229, column: 72, scope: !6691)
!6701 = !DILocation(line: 230, column: 15, scope: !6691)
!6702 = !DILocation(line: 230, column: 23, scope: !6691)
!6703 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !6704, file: !6704, line: 95, type: !6636, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6705)
!6704 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6705 = !{!6706, !6707, !6708}
!6706 = !DILocalVariable(name: "i", arg: 1, scope: !6703, file: !6704, line: 95, type: !109)
!6707 = !DILocalVariable(name: "v", arg: 2, scope: !6703, file: !6704, line: 95, type: !6638)
!6708 = !DILocalVariable(name: "__ret", scope: !6709, file: !6704, line: 97, type: !109)
!6709 = distinct !DILexicalBlock(scope: !6703, file: !6704, line: 97, column: 9)
!6710 = !DILocation(line: 95, column: 54, scope: !6703)
!6711 = !DILocation(line: 95, column: 67, scope: !6703)
!6712 = !DILocation(line: 97, column: 9, scope: !6709)
!6713 = !{i64 2148858989, i64 2148859028, i64 2148859049, i64 2148859086, i64 2148859109, i64 2148859118}
!6714 = !DILocation(line: 97, column: 9, scope: !6703)
!6715 = !DILocation(line: 97, column: 2, scope: !6703)
!6716 = distinct !DISubprogram(name: "__mmap_lock_trace_released", scope: !5624, file: !5624, line: 39, type: !6717, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6719)
!6717 = !DISubroutineType(types: !6718)
!6718 = !{null, !1135, !837}
!6719 = !{!6720, !6721}
!6720 = !DILocalVariable(name: "mm", arg: 1, scope: !6716, file: !5624, line: 39, type: !1135)
!6721 = !DILocalVariable(name: "write", arg: 2, scope: !6716, file: !5624, line: 39, type: !837)
!6722 = !DILocation(line: 39, column: 65, scope: !6716)
!6723 = !DILocation(line: 39, column: 74, scope: !6716)
!6724 = !DILocation(line: 41, column: 6, scope: !6725)
!6725 = distinct !DILexicalBlock(scope: !6716, file: !5624, line: 41, column: 6)
!6726 = !DILocation(line: 41, column: 6, scope: !6716)
!6727 = !DILocation(line: 42, column: 33, scope: !6725)
!6728 = !DILocation(line: 42, column: 37, scope: !6725)
!6729 = !DILocation(line: 42, column: 3, scope: !6725)
!6730 = !DILocation(line: 43, column: 1, scope: !6716)
!6731 = !DISubprogram(name: "up_read", scope: !779, file: !779, line: 198, type: !6732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6732 = !DISubroutineType(types: !6733)
!6733 = !{null, !6734}
!6734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!6735 = distinct !DISubprogram(name: "static_key_false", scope: !2052, file: !2052, line: 205, type: !6736, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6750)
!6736 = !DISubroutineType(types: !6737)
!6737 = !{!837, !6738}
!6738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6739, size: 64)
!6739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2052, line: 85, size: 128, elements: !6740)
!6740 = !{!6741, !6742}
!6741 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6739, file: !2052, line: 86, baseType: !362, size: 32)
!6742 = !DIDerivedType(tag: DW_TAG_member, scope: !6739, file: !2052, line: 101, baseType: !6743, size: 64, offset: 64)
!6743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6739, file: !2052, line: 101, size: 64, elements: !6744)
!6744 = !{!6745, !6746, !6747}
!6745 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6743, file: !2052, line: 102, baseType: !211, size: 64)
!6746 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !6743, file: !2052, line: 103, baseType: !2050, size: 64)
!6747 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6743, file: !2052, line: 104, baseType: !6748, size: 64)
!6748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6749, size: 64)
!6749 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2052, line: 104, flags: DIFlagFwdDecl)
!6750 = !{!6751}
!6751 = !DILocalVariable(name: "key", arg: 1, scope: !6735, file: !2052, line: 205, type: !6738)
!6752 = !DILocation(line: 205, column: 65, scope: !6735)
!6753 = !DILocation(line: 207, column: 28, scope: !6735)
!6754 = !DILocation(line: 207, column: 9, scope: !6735)
!6755 = !DILocation(line: 207, column: 2, scope: !6735)
!6756 = !DISubprogram(name: "__mmap_lock_do_trace_released", scope: !5624, file: !5624, line: 23, type: !6717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6757 = distinct !DISubprogram(name: "arch_static_branch", scope: !6758, file: !6758, line: 25, type: !6759, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6761)
!6758 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!6759 = !DISubroutineType(types: !6760)
!6760 = !{!837, !6738, !837}
!6761 = !{!6762, !6763, !6764}
!6762 = !DILocalVariable(name: "key", arg: 1, scope: !6757, file: !6758, line: 25, type: !6738)
!6763 = !DILocalVariable(name: "branch", arg: 2, scope: !6757, file: !6758, line: 25, type: !837)
!6764 = !DILabel(scope: !6757, name: "l_yes", file: !6758, line: 33)
!6765 = !DILocation(line: 25, column: 67, scope: !6757)
!6766 = !DILocation(line: 25, column: 77, scope: !6757)
!6767 = !DILocation(line: 30, column: 13, scope: !6757)
!6768 = !DILocation(line: 30, column: 28, scope: !6757)
!6769 = !DILocation(line: 30, column: 26, scope: !6757)
!6770 = !DILocation(line: 27, column: 2, scope: !6757)
!6771 = !{i64 1089625, i64 1089669, i64 2148574352, i64 2148574373, i64 2148574399, i64 2148574432, i64 2148574466, i64 2148574490}
!6772 = !DILocation(line: 32, column: 2, scope: !6757)
!6773 = !DILocation(line: 33, column: 1, scope: !6757)
!6774 = !DILocation(line: 34, column: 2, scope: !6757)
!6775 = !DILocation(line: 35, column: 1, scope: !6757)
!6776 = !DISubprogram(name: "ww_mutex_lock_interruptible", scope: !4872, file: !4872, line: 266, type: !6563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6777 = distinct !DISubprogram(name: "dma_resv_reset_max_fences", scope: !195, file: !195, line: 317, type: !5650, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6778)
!6778 = !{!6779}
!6779 = !DILocalVariable(name: "obj", arg: 1, scope: !6777, file: !195, line: 317, type: !5127)
!6780 = !DILocation(line: 317, column: 63, scope: !6777)
!6781 = !DILocation(line: 317, column: 69, scope: !6777)
!6782 = !DISubprogram(name: "ww_mutex_unlock", scope: !4872, file: !4872, line: 338, type: !6783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6783 = !DISubroutineType(types: !6784)
!6784 = !{null, !6565}
!6785 = !DISubprogram(name: "dma_resv_test_signaled", scope: !195, file: !195, line: 484, type: !6786, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6786 = !DISubroutineType(types: !6787)
!6787 = !{!837, !5127, !194}
!6788 = !DISubprogram(name: "dma_resv_wait_timeout", scope: !195, file: !195, line: 480, type: !6789, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6789 = !DISubroutineType(types: !6790)
!6790 = !{!565, !5127, !194, !837, !211}
!6791 = !DISubprogram(name: "__free_pages", scope: !6083, file: !6083, line: 302, type: !6792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6792 = !DISubroutineType(types: !6793)
!6793 = !{null, !207, !7}
!6794 = distinct !DISubprogram(name: "dma_resv_lock", scope: !195, file: !195, line: 342, type: !5637, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6795)
!6795 = !{!6796, !6797}
!6796 = !DILocalVariable(name: "obj", arg: 1, scope: !6794, file: !195, line: 342, type: !5127)
!6797 = !DILocalVariable(name: "ctx", arg: 2, scope: !6794, file: !195, line: 343, type: !4876)
!6798 = !DILocation(line: 342, column: 50, scope: !6794)
!6799 = !DILocation(line: 343, column: 28, scope: !6794)
!6800 = !DILocation(line: 345, column: 24, scope: !6794)
!6801 = !DILocation(line: 345, column: 29, scope: !6794)
!6802 = !DILocation(line: 345, column: 35, scope: !6794)
!6803 = !DILocation(line: 345, column: 9, scope: !6794)
!6804 = !DILocation(line: 345, column: 2, scope: !6794)
!6805 = !DISubprogram(name: "ww_mutex_lock", scope: !4872, file: !4872, line: 234, type: !6563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6806 = !DISubprogram(name: "ttm_bo_kmap", scope: !160, file: !160, line: 370, type: !6807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6807 = !DISubroutineType(types: !6808)
!6808 = !{!109, !4205, !211, !211, !6809}
!6809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!6810 = distinct !DISubprogram(name: "ttm_kmap_obj_virtual", scope: !160, file: !160, line: 343, type: !6811, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6813)
!6811 = !DISubroutineType(types: !6812)
!6812 = !{!205, !6809, !4074}
!6813 = !{!6814, !6815}
!6814 = !DILocalVariable(name: "map", arg: 1, scope: !6810, file: !160, line: 343, type: !6809)
!6815 = !DILocalVariable(name: "is_iomem", arg: 2, scope: !6810, file: !160, line: 344, type: !4074)
!6816 = !DILocation(line: 343, column: 66, scope: !6810)
!6817 = !DILocation(line: 344, column: 13, scope: !6810)
!6818 = !DILocation(line: 346, column: 17, scope: !6810)
!6819 = !DILocation(line: 346, column: 22, scope: !6810)
!6820 = !DILocation(line: 346, column: 35, scope: !6810)
!6821 = !DILocation(line: 346, column: 15, scope: !6810)
!6822 = !DILocation(line: 346, column: 14, scope: !6810)
!6823 = !DILocation(line: 346, column: 3, scope: !6810)
!6824 = !DILocation(line: 346, column: 12, scope: !6810)
!6825 = !DILocation(line: 347, column: 9, scope: !6810)
!6826 = !DILocation(line: 347, column: 14, scope: !6810)
!6827 = !DILocation(line: 347, column: 2, scope: !6810)
!6828 = !DISubprogram(name: "ttm_bo_kunmap", scope: !160, file: !160, line: 372, type: !6829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6829 = !DISubroutineType(types: !6830)
!6830 = !{null, !6809}
!6831 = distinct !DISubprogram(name: "ttm_bo_move_to_lru_tail_unlocked", scope: !160, file: !160, line: 291, type: !5307, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6832)
!6832 = !{!6833}
!6833 = !DILocalVariable(name: "bo", arg: 1, scope: !6831, file: !160, line: 291, type: !4205)
!6834 = !DILocation(line: 291, column: 60, scope: !6831)
!6835 = !DILocation(line: 293, column: 13, scope: !6831)
!6836 = !DILocation(line: 293, column: 17, scope: !6831)
!6837 = !DILocation(line: 293, column: 23, scope: !6831)
!6838 = !DILocation(line: 293, column: 2, scope: !6831)
!6839 = !DILocation(line: 294, column: 26, scope: !6831)
!6840 = !DILocation(line: 294, column: 2, scope: !6831)
!6841 = !DILocation(line: 295, column: 15, scope: !6831)
!6842 = !DILocation(line: 295, column: 19, scope: !6831)
!6843 = !DILocation(line: 295, column: 25, scope: !6831)
!6844 = !DILocation(line: 295, column: 2, scope: !6831)
!6845 = !DILocation(line: 296, column: 1, scope: !6831)
!6846 = distinct !DISubprogram(name: "spin_lock", scope: !6847, file: !6847, line: 349, type: !6848, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6850)
!6847 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6848 = !DISubroutineType(types: !6849)
!6849 = !{null, !1402}
!6850 = !{!6851}
!6851 = !DILocalVariable(name: "lock", arg: 1, scope: !6846, file: !6847, line: 349, type: !1402)
!6852 = !DILocation(line: 349, column: 51, scope: !6846)
!6853 = !DILocation(line: 351, column: 2, scope: !6846)
!6854 = !DILocation(line: 352, column: 1, scope: !6846)
!6855 = !DISubprogram(name: "ttm_bo_move_to_lru_tail", scope: !160, file: !160, line: 288, type: !5307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6856 = distinct !DISubprogram(name: "spin_unlock", scope: !6847, file: !6847, line: 389, type: !6848, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6857)
!6857 = !{!6858}
!6858 = !DILocalVariable(name: "lock", arg: 1, scope: !6856, file: !6847, line: 389, type: !1402)
!6859 = !DILocation(line: 389, column: 53, scope: !6856)
!6860 = !DILocation(line: 391, column: 2, scope: !6856)
!6861 = !DILocation(line: 392, column: 1, scope: !6856)
!6862 = !DISubprogram(name: "_raw_spin_lock", scope: !6863, file: !6863, line: 22, type: !6864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6863 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6864 = !DISubroutineType(types: !6865)
!6865 = !{null, !6866}
!6866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!6867 = !DISubprogram(name: "_raw_spin_unlock", scope: !6863, file: !6863, line: 39, type: !6864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6868 = distinct !DISubprogram(name: "vma_start_write", scope: !1336, file: !1336, line: 715, type: !1340, scopeLine: 716, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6869)
!6869 = !{!6870, !6871}
!6870 = !DILocalVariable(name: "vma", arg: 1, scope: !6868, file: !1336, line: 715, type: !1122)
!6871 = !DILocalVariable(name: "mm_lock_seq", scope: !6868, file: !1336, line: 717, type: !109)
!6872 = !DILocation(line: 715, column: 59, scope: !6868)
!6873 = !DILocation(line: 717, column: 2, scope: !6868)
!6874 = !DILocation(line: 717, column: 6, scope: !6868)
!6875 = !DILocation(line: 719, column: 28, scope: !6876)
!6876 = distinct !DILexicalBlock(scope: !6868, file: !1336, line: 719, column: 6)
!6877 = !DILocation(line: 719, column: 6, scope: !6876)
!6878 = !DILocation(line: 719, column: 6, scope: !6868)
!6879 = !DILocation(line: 720, column: 3, scope: !6876)
!6880 = !DILocation(line: 722, column: 14, scope: !6868)
!6881 = !DILocation(line: 722, column: 19, scope: !6868)
!6882 = !DILocation(line: 722, column: 28, scope: !6868)
!6883 = !DILocation(line: 722, column: 2, scope: !6868)
!6884 = !DILocation(line: 729, column: 2, scope: !6868)
!6885 = !DILocation(line: 729, column: 2, scope: !6886)
!6886 = distinct !DILexicalBlock(scope: !6868, file: !1336, line: 729, column: 2)
!6887 = !DILocation(line: 729, column: 2, scope: !6888)
!6888 = distinct !DILexicalBlock(scope: !6886, file: !1336, line: 729, column: 2)
!6889 = !DILocation(line: 729, column: 2, scope: !6890)
!6890 = distinct !DILexicalBlock(scope: !6886, file: !1336, line: 729, column: 2)
!6891 = !DILocation(line: 730, column: 12, scope: !6868)
!6892 = !DILocation(line: 730, column: 17, scope: !6868)
!6893 = !DILocation(line: 730, column: 26, scope: !6868)
!6894 = !DILocation(line: 730, column: 2, scope: !6868)
!6895 = !DILocation(line: 731, column: 1, scope: !6868)
!6896 = distinct !DISubprogram(name: "__is_vma_write_locked", scope: !1336, file: !1336, line: 698, type: !6897, scopeLine: 699, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6899)
!6897 = !DISubroutineType(types: !6898)
!6898 = !{!837, !1122, !1883}
!6899 = !{!6900, !6901}
!6900 = !DILocalVariable(name: "vma", arg: 1, scope: !6896, file: !1336, line: 698, type: !1122)
!6901 = !DILocalVariable(name: "mm_lock_seq", arg: 2, scope: !6896, file: !1336, line: 698, type: !1883)
!6902 = !DILocation(line: 698, column: 58, scope: !6896)
!6903 = !DILocation(line: 698, column: 68, scope: !6896)
!6904 = !DILocation(line: 700, column: 27, scope: !6896)
!6905 = !DILocation(line: 700, column: 32, scope: !6896)
!6906 = !DILocation(line: 700, column: 2, scope: !6896)
!6907 = !DILocation(line: 706, column: 17, scope: !6896)
!6908 = !DILocation(line: 706, column: 22, scope: !6896)
!6909 = !DILocation(line: 706, column: 29, scope: !6896)
!6910 = !DILocation(line: 706, column: 3, scope: !6896)
!6911 = !DILocation(line: 706, column: 15, scope: !6896)
!6912 = !DILocation(line: 707, column: 10, scope: !6896)
!6913 = !DILocation(line: 707, column: 15, scope: !6896)
!6914 = !DILocation(line: 707, column: 31, scope: !6896)
!6915 = !DILocation(line: 707, column: 30, scope: !6896)
!6916 = !DILocation(line: 707, column: 27, scope: !6896)
!6917 = !DILocation(line: 707, column: 2, scope: !6896)
!6918 = !DISubprogram(name: "down_write", scope: !779, file: !779, line: 187, type: !6732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6919 = !DISubprogram(name: "up_write", scope: !779, file: !779, line: 203, type: !6732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6920 = distinct !DISubprogram(name: "mmap_assert_write_locked", scope: !5624, file: !5624, line: 69, type: !5625, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6921)
!6921 = !{!6922}
!6922 = !DILocalVariable(name: "mm", arg: 1, scope: !6920, file: !5624, line: 69, type: !1135)
!6923 = !DILocation(line: 69, column: 63, scope: !6920)
!6924 = !DILocation(line: 71, column: 2, scope: !6920)
!6925 = !DILocation(line: 71, column: 2, scope: !6926)
!6926 = distinct !DILexicalBlock(scope: !6920, file: !5624, line: 71, column: 2)
!6927 = !DILocation(line: 73, column: 1, scope: !6920)
