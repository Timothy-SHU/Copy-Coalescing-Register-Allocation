; ModuleID = 'drivers/gpu/drm/ttm/ttm_tt.c'
source_filename = "drivers/gpu/drm/ttm/ttm_tt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_tt_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_tt_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_tt_fini: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_tt_fini ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_sg_tt_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_sg_tt_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_tt_populate: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_tt_populate ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_kmap_iter_tt_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_kmap_iter_tt_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_tt_pages_limit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_tt_pages_limit ; .previous"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.atomic64_t = type { i64 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ttm_kmap_iter_ops = type { ptr, ptr, i8 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.41 }
%struct.atomic_t = type { i32 }
%union.anon.41 = type { i64 }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, ptr, i32, i32, %struct.work_struct, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i64, i32, ptr, ptr, ptr, %struct.dma_resv, %struct.anon.17, ptr, %struct.list_head, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.15, %struct.qspinlock }
%union.anon.15 = type { %struct.atomic_t }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.drm_mm_node = type { i64, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.17 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.ttm_resource_manager = type { i8, i8, ptr, i64, ptr, %struct.spinlock, ptr, [4 x %struct.list_head], i64 }
%struct.ttm_pool = type { ptr, i32, i8, i8, [3 x %struct.anon.18] }
%struct.anon.18 = type { [11 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.19, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.mutex, %struct.list_head }
%struct.anon.19 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.ttm_device_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ttm_tt = type { ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.file = type { %union.anon.20, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.20 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
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
%struct.pgprot = type { i64 }
%struct.ttm_kmap_iter_tt = type { %struct.ttm_kmap_iter, ptr, %struct.pgprot }
%struct.ttm_kmap_iter = type { ptr }
%struct.anon.33 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.42, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.43, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.44, ptr, %struct.address_space, %struct.list_head, %union.anon.45, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.42 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.43 = type { %struct.callback_head }
%union.anon.44 = type { ptr }
%union.anon.45 = type { ptr }
%struct.ttm_operation_ctx = type { i8, i8, i8, i8, i8, ptr, i64 }
%struct.iosys_map = type { %union.anon.46, i8 }
%union.anon.46 = type { ptr }

@__UNIQUE_ID_pages_limit362 = internal constant [51 x i8] c"ttm.parm=pages_limit:Limit for the allocated pages\00", section ".modinfo", align 1, !dbg !0
@__param_str_pages_limit = internal constant [16 x i8] c"ttm.pages_limit\00", align 16, !dbg !6360
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 8
@ttm_pages_limit = internal global i64 0, align 8, !dbg !6352
@__param_pages_limit = internal constant %struct.kernel_param { ptr @__param_str_pages_limit, ptr null, ptr @param_ops_ulong, i16 420, i8 -1, i8 0, %union.anon.14 { ptr @ttm_pages_limit } }, section "__param", align 8, !dbg !5587
@__UNIQUE_ID_pages_limittype363 = internal constant [31 x i8] c"ttm.parmtype=pages_limit:ulong\00", section ".modinfo", align 1, !dbg !5589
@__UNIQUE_ID_dma32_pages_limit364 = internal constant [63 x i8] c"ttm.parm=dma32_pages_limit:Limit for the allocated DMA32 pages\00", section ".modinfo", align 1, !dbg !5594
@__param_str_dma32_pages_limit = internal constant [22 x i8] c"ttm.dma32_pages_limit\00", align 16, !dbg !6363
@ttm_dma32_pages_limit = internal global i64 0, align 8, !dbg !6354
@__param_dma32_pages_limit = internal constant %struct.kernel_param { ptr @__param_str_dma32_pages_limit, ptr null, ptr @param_ops_ulong, i16 420, i8 -1, i8 0, %union.anon.14 { ptr @ttm_dma32_pages_limit } }, section "__param", align 8, !dbg !5599
@__UNIQUE_ID_dma32_pages_limittype365 = internal constant [37 x i8] c"ttm.parmtype=dma32_pages_limit:ulong\00", section ".modinfo", align 1, !dbg !5601
@.str = private unnamed_addr constant [36 x i8] c"\013[TTM] Illegal buffer object type\0A\00", align 1, !dbg !5606
@ttm_tt_create.__print_once = internal global i8 0, section ".data..read_mostly", align 1, !dbg !5611
@.str.1 = private unnamed_addr constant [36 x i8] c"[drm] TT memory decryption enabled.\00", align 1, !dbg !6315
@.str.2 = private unnamed_addr constant [29 x i8] c"drivers/gpu/drm/ttm/ttm_tt.c\00", align 1, !dbg !6317
@.str.3 = private unnamed_addr constant [38 x i8] c"\013[TTM] Failed allocating page table\0A\00", align 1, !dbg !6322
@__UNIQUE_ID___addressable_ttm_tt_init366 = internal global ptr @ttm_tt_init, section ".discard.addressable", align 8, !dbg !6327
@__UNIQUE_ID___addressable_ttm_tt_fini367 = internal global ptr @ttm_tt_fini, section ".discard.addressable", align 8, !dbg !6329
@__UNIQUE_ID___addressable_ttm_sg_tt_init368 = internal global ptr @ttm_sg_tt_init, section ".discard.addressable", align 8, !dbg !6331
@.str.4 = private unnamed_addr constant [9 x i8] c"ttm swap\00", align 1, !dbg !6333
@.str.5 = private unnamed_addr constant [40 x i8] c"\013[TTM] Failed allocating swap storage\0A\00", align 1, !dbg !6338
@ttm_pages_allocated = internal global %struct.atomic64_t zeroinitializer, align 8, !dbg !6356
@ttm_dma32_pages_allocated = internal global %struct.atomic64_t zeroinitializer, align 8, !dbg !6358
@__UNIQUE_ID___addressable_ttm_tt_populate369 = internal global ptr @ttm_tt_populate, section ".discard.addressable", align 8, !dbg !6343
@.str.6 = private unnamed_addr constant [10 x i8] c"tt_shrink\00", align 1, !dbg !6345
@ttm_debugfs_root = external dso_local global ptr, align 8
@ttm_tt_debugfs_shrink_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @ttm_tt_debugfs_shrink_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !6368
@ttm_kmap_iter_tt_ops = internal constant %struct.ttm_kmap_iter_ops { ptr @ttm_kmap_iter_tt_map_local, ptr @ttm_kmap_iter_tt_unmap_local, i8 1 }, align 8, !dbg !6373
@__default_kernel_pte_mask = external dso_local global i64, align 8
@__UNIQUE_ID___addressable_ttm_kmap_iter_tt_init371 = internal global ptr @ttm_kmap_iter_tt_init, section ".discard.addressable", align 8, !dbg !6348
@__UNIQUE_ID___addressable_ttm_tt_pages_limit372 = internal global ptr @ttm_tt_pages_limit, section ".discard.addressable", align 8, !dbg !6350
@vmemmap_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@hugetlb_optimize_vmemmap_key = external dso_local global %struct.static_key_false, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !dbg !6370
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_pages_limit362, ptr @__param_pages_limit, ptr @__UNIQUE_ID_pages_limittype363, ptr @__UNIQUE_ID_dma32_pages_limit364, ptr @__param_dma32_pages_limit, ptr @__UNIQUE_ID_dma32_pages_limittype365, ptr @__UNIQUE_ID___addressable_ttm_tt_init366, ptr @__UNIQUE_ID___addressable_ttm_tt_fini367, ptr @__UNIQUE_ID___addressable_ttm_sg_tt_init368, ptr @__UNIQUE_ID___addressable_ttm_tt_populate369, ptr @__UNIQUE_ID___addressable_ttm_kmap_iter_tt_init371, ptr @__UNIQUE_ID___addressable_ttm_tt_pages_limit372], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ttm_tt_create(ptr noundef %bo, i1 noundef zeroext %zero_alloc) #0 align 16 !dbg !5613 {
entry:
  %retval = alloca i32, align 4
  %bo.addr = alloca ptr, align 8
  %zero_alloc.addr = alloca i8, align 1
  %bdev = alloca ptr, align 8
  %ddev = alloca ptr, align 8
  %page_flags = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp80 = alloca i64, align 8
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !6305, metadata !DIExpression()), !dbg !6387
  %frombool = zext i1 %zero_alloc to i8
  store i8 %frombool, ptr %zero_alloc.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %zero_alloc.addr, metadata !6306, metadata !DIExpression()), !dbg !6388
  call void @llvm.lifetime.start.p0(i64 8, ptr %bdev) #15, !dbg !6389
  call void @llvm.dbg.declare(metadata ptr %bdev, metadata !6307, metadata !DIExpression()), !dbg !6390
  %0 = load ptr, ptr %bo.addr, align 8, !dbg !6391
  %bdev1 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1, !dbg !6392
  %1 = load ptr, ptr %bdev1, align 8, !dbg !6392
  store ptr %1, ptr %bdev, align 8, !dbg !6390
  call void @llvm.lifetime.start.p0(i64 8, ptr %ddev) #15, !dbg !6393
  call void @llvm.dbg.declare(metadata ptr %ddev, metadata !6308, metadata !DIExpression()), !dbg !6394
  %2 = load ptr, ptr %bo.addr, align 8, !dbg !6395
  %base = getelementptr inbounds %struct.ttm_buffer_object, ptr %2, i32 0, i32 0, !dbg !6396
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %base, i32 0, i32 2, !dbg !6397
  %3 = load ptr, ptr %dev, align 8, !dbg !6397
  store ptr %3, ptr %ddev, align 8, !dbg !6394
  call void @llvm.lifetime.start.p0(i64 4, ptr %page_flags) #15, !dbg !6398
  call void @llvm.dbg.declare(metadata ptr %page_flags, metadata !6309, metadata !DIExpression()), !dbg !6399
  store i32 0, ptr %page_flags, align 4, !dbg !6399
  br label %do.body, !dbg !6400

do.body:                                          ; preds = %entry
  %4 = load ptr, ptr %bo.addr, align 8, !dbg !6401
  %base2 = getelementptr inbounds %struct.ttm_buffer_object, ptr %4, i32 0, i32 0, !dbg !6401
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %base2, i32 0, i32 9, !dbg !6401
  %5 = load ptr, ptr %resv, align 8, !dbg !6401
  %lock = getelementptr inbounds %struct.dma_resv, ptr %5, i32 0, i32 0, !dbg !6401
  %base3 = getelementptr inbounds %struct.ww_mutex, ptr %lock, i32 0, i32 0, !dbg !6401
  br label %do.cond, !dbg !6401

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6401

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %bo.addr, align 8, !dbg !6403
  %ttm = getelementptr inbounds %struct.ttm_buffer_object, ptr %6, i32 0, i32 7, !dbg !6405
  %7 = load ptr, ptr %ttm, align 8, !dbg !6405
  %tobool = icmp ne ptr %7, null, !dbg !6403
  br i1 %tobool, label %if.then, label %if.end, !dbg !6406

if.then:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !6407
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6407

if.end:                                           ; preds = %do.end
  %8 = load ptr, ptr %bo.addr, align 8, !dbg !6408
  %type = getelementptr inbounds %struct.ttm_buffer_object, ptr %8, i32 0, i32 2, !dbg !6409
  %9 = load i32, ptr %type, align 8, !dbg !6409
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.epilog
    i32 2, label %sw.bb8
  ], !dbg !6410

sw.bb:                                            ; preds = %if.end
  %10 = load i8, ptr %zero_alloc.addr, align 1, !dbg !6411, !range !6414, !noundef !1144
  %tobool4 = trunc i8 %10 to i1, !dbg !6411
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !6415

if.then5:                                         ; preds = %sw.bb
  %11 = load i32, ptr %page_flags, align 4, !dbg !6416
  %conv = zext i32 %11 to i64, !dbg !6416
  %or = or i64 %conv, 2, !dbg !6416
  %conv6 = trunc i64 %or to i32, !dbg !6416
  store i32 %conv6, ptr %page_flags, align 4, !dbg !6416
  br label %if.end7, !dbg !6417

if.end7:                                          ; preds = %if.then5, %sw.bb
  br label %sw.epilog, !dbg !6418

sw.bb8:                                           ; preds = %if.end
  %12 = load i32, ptr %page_flags, align 4, !dbg !6419
  %conv9 = zext i32 %12 to i64, !dbg !6419
  %or10 = or i64 %conv9, 4, !dbg !6419
  %conv11 = trunc i64 %or10 to i32, !dbg !6419
  store i32 %conv11, ptr %page_flags, align 4, !dbg !6419
  br label %sw.epilog, !dbg !6420

sw.default:                                       ; preds = %if.end
  br label %do.body12, !dbg !6421

do.body12:                                        ; preds = %sw.default
  br label %do.cond13, !dbg !6423

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6423

do.end14:                                         ; preds = %do.cond13
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str) #16, !dbg !6421
  store i32 %call, ptr %tmp, align 4, !dbg !6423
  %13 = load i32, ptr %tmp, align 4, !dbg !6421
  store i32 -22, ptr %retval, align 4, !dbg !6425
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6425

sw.epilog:                                        ; preds = %sw.bb8, %if.end, %if.end7
  %14 = load ptr, ptr %bdev, align 8, !dbg !6426
  %pool = getelementptr inbounds %struct.ttm_device, ptr %14, i32 0, i32 5, !dbg !6428
  %use_dma_alloc = getelementptr inbounds %struct.ttm_pool, ptr %pool, i32 0, i32 2, !dbg !6429
  %15 = load i8, ptr %use_dma_alloc, align 4, !dbg !6429, !range !6414, !noundef !1144
  %tobool15 = trunc i8 %15 to i1, !dbg !6429
  br i1 %tobool15, label %land.lhs.true, label %if.end33, !dbg !6430

land.lhs.true:                                    ; preds = %sw.epilog
  %call17 = call zeroext i1 @cc_platform_has(i32 noundef 2) #17, !dbg !6431
  br i1 %call17, label %if.then19, label %if.end33, !dbg !6432

if.then19:                                        ; preds = %land.lhs.true
  %16 = load i32, ptr %page_flags, align 4, !dbg !6433
  %conv20 = zext i32 %16 to i64, !dbg !6433
  %or21 = or i64 %conv20, 16, !dbg !6433
  %conv22 = trunc i64 %or21 to i32, !dbg !6433
  store i32 %conv22, ptr %page_flags, align 4, !dbg !6433
  br label %do.body23, !dbg !6435

do.body23:                                        ; preds = %if.then19
  %17 = load i8, ptr @ttm_tt_create.__print_once, align 1, !dbg !6436, !range !6414, !noundef !1144
  %tobool24 = trunc i8 %17 to i1, !dbg !6436
  br i1 %tobool24, label %if.end30, label %if.then25, !dbg !6439

if.then25:                                        ; preds = %do.body23
  store i8 1, ptr @ttm_tt_create.__print_once, align 1, !dbg !6440
  br label %do.body26, !dbg !6442

do.body26:                                        ; preds = %if.then25
  br label %do.cond27, !dbg !6444

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !6444

do.end28:                                         ; preds = %do.cond27
  %18 = load ptr, ptr %ddev, align 8, !dbg !6442
  %dev29 = getelementptr inbounds %struct.drm_device, ptr %18, i32 0, i32 2, !dbg !6442
  %19 = load ptr, ptr %dev29, align 8, !dbg !6442
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef @.str.1) #16, !dbg !6442
  br label %if.end30, !dbg !6440

if.end30:                                         ; preds = %do.end28, %do.body23
  br label %do.cond31, !dbg !6439

do.cond31:                                        ; preds = %if.end30
  br label %do.end32, !dbg !6439

do.end32:                                         ; preds = %do.cond31
  br label %if.end33, !dbg !6446

if.end33:                                         ; preds = %do.end32, %land.lhs.true, %sw.epilog
  %20 = load ptr, ptr %bdev, align 8, !dbg !6447
  %funcs = getelementptr inbounds %struct.ttm_device, ptr %20, i32 0, i32 1, !dbg !6448
  %21 = load ptr, ptr %funcs, align 8, !dbg !6448
  %ttm_tt_create = getelementptr inbounds %struct.ttm_device_funcs, ptr %21, i32 0, i32 0, !dbg !6449
  %22 = load ptr, ptr %ttm_tt_create, align 8, !dbg !6449
  %23 = load ptr, ptr %bo.addr, align 8, !dbg !6450
  %24 = load i32, ptr %page_flags, align 4, !dbg !6451
  %call34 = call ptr %22(ptr noundef %23, i32 noundef %24) #17, !dbg !6447
  %25 = load ptr, ptr %bo.addr, align 8, !dbg !6452
  %ttm35 = getelementptr inbounds %struct.ttm_buffer_object, ptr %25, i32 0, i32 7, !dbg !6453
  store ptr %call34, ptr %ttm35, align 8, !dbg !6454
  %26 = load ptr, ptr %bo.addr, align 8, !dbg !6455
  %ttm36 = getelementptr inbounds %struct.ttm_buffer_object, ptr %26, i32 0, i32 7, !dbg !6455
  %27 = load ptr, ptr %ttm36, align 8, !dbg !6455
  %cmp = icmp eq ptr %27, null, !dbg !6455
  %lnot = xor i1 %cmp, true, !dbg !6455
  %lnot38 = xor i1 %lnot, true, !dbg !6455
  %lnot.ext = zext i1 %lnot38 to i32, !dbg !6455
  %conv39 = sext i32 %lnot.ext to i64, !dbg !6455
  %expval = call i64 @llvm.expect.i64(i64 %conv39, i64 0), !dbg !6455
  %tobool40 = icmp ne i64 %expval, 0, !dbg !6455
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !6457

if.then41:                                        ; preds = %if.end33
  store i32 -12, ptr %retval, align 4, !dbg !6458
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6458

if.end42:                                         ; preds = %if.end33
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6459
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6310, metadata !DIExpression()), !dbg !6459
  %28 = load ptr, ptr %bo.addr, align 8, !dbg !6459
  %ttm43 = getelementptr inbounds %struct.ttm_buffer_object, ptr %28, i32 0, i32 7, !dbg !6459
  %29 = load ptr, ptr %ttm43, align 8, !dbg !6459
  %page_flags44 = getelementptr inbounds %struct.ttm_tt, ptr %29, i32 0, i32 1, !dbg !6459
  %30 = load i32, ptr %page_flags44, align 8, !dbg !6459
  %conv45 = zext i32 %30 to i64, !dbg !6459
  %and = and i64 %conv45, 8, !dbg !6459
  %tobool46 = icmp ne i64 %and, 0, !dbg !6459
  br i1 %tobool46, label %land.rhs, label %land.end, !dbg !6459

land.rhs:                                         ; preds = %if.end42
  %31 = load ptr, ptr %bo.addr, align 8, !dbg !6459
  %ttm47 = getelementptr inbounds %struct.ttm_buffer_object, ptr %31, i32 0, i32 7, !dbg !6459
  %32 = load ptr, ptr %ttm47, align 8, !dbg !6459
  %page_flags48 = getelementptr inbounds %struct.ttm_tt, ptr %32, i32 0, i32 1, !dbg !6459
  %33 = load i32, ptr %page_flags48, align 8, !dbg !6459
  %conv49 = zext i32 %33 to i64, !dbg !6459
  %and50 = and i64 %conv49, 4, !dbg !6459
  %tobool51 = icmp ne i64 %and50, 0, !dbg !6459
  %lnot52 = xor i1 %tobool51, true, !dbg !6459
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end42
  %34 = phi i1 [ false, %if.end42 ], [ %lnot52, %land.rhs ], !dbg !6460
  %lnot54 = xor i1 %34, true, !dbg !6459
  %lnot56 = xor i1 %lnot54, true, !dbg !6459
  %lnot.ext57 = zext i1 %lnot56 to i32, !dbg !6459
  store i32 %lnot.ext57, ptr %__ret_warn_on, align 4, !dbg !6459
  %35 = load i32, ptr %__ret_warn_on, align 4, !dbg !6461
  %tobool58 = icmp ne i32 %35, 0, !dbg !6461
  %lnot59 = xor i1 %tobool58, true, !dbg !6461
  %lnot61 = xor i1 %lnot59, true, !dbg !6461
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !6461
  %conv63 = sext i32 %lnot.ext62 to i64, !dbg !6461
  %expval64 = call i64 @llvm.expect.i64(i64 %conv63, i64 0), !dbg !6461
  %tobool65 = icmp ne i64 %expval64, 0, !dbg !6461
  br i1 %tobool65, label %if.then66, label %if.end79, !dbg !6459

if.then66:                                        ; preds = %land.end
  br label %do.body67, !dbg !6461

do.body67:                                        ; preds = %if.then66
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !6462
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6312, metadata !DIExpression()), !dbg !6462
  store i32 2305, ptr %__flags, align 4, !dbg !6462
  br label %do.body68, !dbg !6462

do.body68:                                        ; preds = %do.body67
  br label %do.cond69, !dbg !6463

do.cond69:                                        ; preds = %do.body68
  br label %do.end70, !dbg !6463

do.end70:                                         ; preds = %do.cond69
  br label %do.body71, !dbg !6462

do.body71:                                        ; preds = %do.end70
  %36 = load i32, ptr %__flags, align 4, !dbg !6465
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 103, i32 %36, i64 12) #15, !dbg !6465, !srcloc !6467
  br label %do.cond72, !dbg !6465

do.cond72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6465

do.end73:                                         ; preds = %do.cond72
  br label %do.body74, !dbg !6462

do.body74:                                        ; preds = %do.end73
  br label %do.cond75, !dbg !6468

do.cond75:                                        ; preds = %do.body74
  br label %do.end76, !dbg !6468

do.end76:                                         ; preds = %do.cond75
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !6461
  br label %do.cond77, !dbg !6462

do.cond77:                                        ; preds = %do.end76
  br label %do.end78, !dbg !6462

do.end78:                                         ; preds = %do.cond77
  br label %if.end79, !dbg !6462

if.end79:                                         ; preds = %do.end78, %land.end
  %37 = load i32, ptr %__ret_warn_on, align 4, !dbg !6459
  %tobool81 = icmp ne i32 %37, 0, !dbg !6459
  %lnot82 = xor i1 %tobool81, true, !dbg !6459
  %lnot84 = xor i1 %lnot82, true, !dbg !6459
  %lnot.ext85 = zext i1 %lnot84 to i32, !dbg !6459
  %conv86 = sext i32 %lnot.ext85 to i64, !dbg !6459
  %expval87 = call i64 @llvm.expect.i64(i64 %conv86, i64 0), !dbg !6459
  store i64 %expval87, ptr %tmp80, align 8, !dbg !6461
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6470
  %38 = load i64, ptr %tmp80, align 8, !dbg !6459
  store i32 0, ptr %retval, align 4, !dbg !6471
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6471

cleanup:                                          ; preds = %if.end79, %if.then41, %do.end14, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %page_flags) #15, !dbg !6472
  call void @llvm.lifetime.end.p0(i64 8, ptr %ddev) #15, !dbg !6472
  call void @llvm.lifetime.end.p0(i64 8, ptr %bdev) #15, !dbg !6472
  %39 = load i32, ptr %retval, align 4, !dbg !6472
  ret i32 %39, !dbg !6472
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6473 dso_local i32 @_printk(ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cc_platform_has(i32 noundef %attr) #4 align 16 !dbg !6476 {
entry:
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6480, metadata !DIExpression()), !dbg !6481
  ret i1 false, !dbg !6482
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6483 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ttm_tt_destroy(ptr noundef %bdev, ptr noundef %ttm) #0 align 16 !dbg !6487 {
entry:
  %bdev.addr = alloca ptr, align 8
  %ttm.addr = alloca ptr, align 8
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !6489, metadata !DIExpression()), !dbg !6491
  store ptr %ttm, ptr %ttm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ttm.addr, metadata !6490, metadata !DIExpression()), !dbg !6492
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !6493
  %funcs = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 1, !dbg !6494
  %1 = load ptr, ptr %funcs, align 8, !dbg !6494
  %ttm_tt_destroy = getelementptr inbounds %struct.ttm_device_funcs, ptr %1, i32 0, i32 3, !dbg !6495
  %2 = load ptr, ptr %ttm_tt_destroy, align 8, !dbg !6495
  %3 = load ptr, ptr %bdev.addr, align 8, !dbg !6496
  %4 = load ptr, ptr %ttm.addr, align 8, !dbg !6497
  call void %2(ptr noundef %3, ptr noundef %4) #17, !dbg !6493
  ret void, !dbg !6498
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ttm_tt_init(ptr noundef %ttm, ptr noundef %bo, i32 noundef %page_flags, i32 noundef %caching, i64 noundef %extra_pages) #0 align 16 !dbg !6499 {
entry:
  %retval = alloca i32, align 4
  %ttm.addr = alloca ptr, align 8
  %bo.addr = alloca ptr, align 8
  %page_flags.addr = alloca i32, align 4
  %caching.addr = alloca i32, align 4
  %extra_pages.addr = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %ttm, ptr %ttm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ttm.addr, metadata !6503, metadata !DIExpression()), !dbg !6508
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !6504, metadata !DIExpression()), !dbg !6509
  store i32 %page_flags, ptr %page_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %page_flags.addr, metadata !6505, metadata !DIExpression()), !dbg !6510
  store i32 %caching, ptr %caching.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %caching.addr, metadata !6506, metadata !DIExpression()), !dbg !6511
  store i64 %extra_pages, ptr %extra_pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %extra_pages.addr, metadata !6507, metadata !DIExpression()), !dbg !6512
  %0 = load ptr, ptr %ttm.addr, align 8, !dbg !6513
  %1 = load ptr, ptr %bo.addr, align 8, !dbg !6514
  %2 = load i32, ptr %page_flags.addr, align 4, !dbg !6515
  %3 = load i32, ptr %caching.addr, align 4, !dbg !6516
  %4 = load i64, ptr %extra_pages.addr, align 8, !dbg !6517
  call void @ttm_tt_init_fields(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) #17, !dbg !6518
  %5 = load ptr, ptr %ttm.addr, align 8, !dbg !6519
  %call = call i32 @ttm_tt_alloc_page_directory(ptr noundef %5) #17, !dbg !6521
  %tobool = icmp ne i32 %call, 0, !dbg !6521
  br i1 %tobool, label %if.then, label %if.end, !dbg !6522

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6523

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !6526

do.end:                                           ; preds = %do.body
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #16, !dbg !6523
  store i32 %call1, ptr %tmp, align 4, !dbg !6526
  %6 = load i32, ptr %tmp, align 4, !dbg !6523
  store i32 -12, ptr %retval, align 4, !dbg !6528
  br label %return, !dbg !6528

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6529
  br label %return, !dbg !6529

return:                                           ; preds = %if.end, %do.end
  %7 = load i32, ptr %retval, align 4, !dbg !6530
  ret i32 %7, !dbg !6530
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_tt_init_fields(ptr noundef %ttm, ptr noundef %bo, i32 noundef %page_flags, i32 noundef %caching, i64 noundef %extra_pages) #0 align 16 !dbg !6531 {
entry:
  %ttm.addr = alloca ptr, align 8
  %bo.addr = alloca ptr, align 8
  %page_flags.addr = alloca i32, align 4
  %caching.addr = alloca i32, align 4
  %extra_pages.addr = alloca i64, align 8
  store ptr %ttm, ptr %ttm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ttm.addr, metadata !6535, metadata !DIExpression()), !dbg !6540
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !6536, metadata !DIExpression()), !dbg !6541
  store i32 %page_flags, ptr %page_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %page_flags.addr, metadata !6537, metadata !DIExpression()), !dbg !6542
  store i32 %caching, ptr %caching.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %caching.addr, metadata !6538, metadata !DIExpression()), !dbg !6543
  store i64 %extra_pages, ptr %extra_pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %extra_pages.addr, metadata !6539, metadata !DIExpression()), !dbg !6544
  %0 = load ptr, ptr %bo.addr, align 8, !dbg !6545
  %base = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 0, !dbg !6545
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %base, i32 0, i32 5, !dbg !6545
  %1 = load i64, ptr %size, align 8, !dbg !6545
  %add = add i64 %1, 4095, !dbg !6545
  %and = and i64 %add, -4096, !dbg !6545
  %shr = lshr i64 %and, 12, !dbg !6546
  %2 = load i64, ptr %extra_pages.addr, align 8, !dbg !6547
  %add1 = add i64 %shr, %2, !dbg !6548
  %conv = trunc i64 %add1 to i32, !dbg !6549
  %3 = load ptr, ptr %ttm.addr, align 8, !dbg !6550
  %num_pages = getelementptr inbounds %struct.ttm_tt, ptr %3, i32 0, i32 2, !dbg !6551
  store i32 %conv, ptr %num_pages, align 4, !dbg !6552
  %4 = load i32, ptr %page_flags.addr, align 4, !dbg !6553
  %5 = load ptr, ptr %ttm.addr, align 8, !dbg !6554
  %page_flags2 = getelementptr inbounds %struct.ttm_tt, ptr %5, i32 0, i32 1, !dbg !6555
  store i32 %4, ptr %page_flags2, align 8, !dbg !6556
  %6 = load ptr, ptr %ttm.addr, align 8, !dbg !6557
  %dma_address = getelementptr inbounds %struct.ttm_tt, ptr %6, i32 0, i32 4, !dbg !6558
  store ptr null, ptr %dma_address, align 8, !dbg !6559
  %7 = load ptr, ptr %ttm.addr, align 8, !dbg !6560
  %swap_storage = getelementptr inbounds %struct.ttm_tt, ptr %7, i32 0, i32 5, !dbg !6561
  store ptr null, ptr %swap_storage, align 8, !dbg !6562
  %8 = load ptr, ptr %bo.addr, align 8, !dbg !6563
  %sg = getelementptr inbounds %struct.ttm_buffer_object, ptr %8, i32 0, i32 13, !dbg !6564
  %9 = load ptr, ptr %sg, align 8, !dbg !6564
  %10 = load ptr, ptr %ttm.addr, align 8, !dbg !6565
  %sg3 = getelementptr inbounds %struct.ttm_tt, ptr %10, i32 0, i32 3, !dbg !6566
  store ptr %9, ptr %sg3, align 8, !dbg !6567
  %11 = load i32, ptr %caching.addr, align 4, !dbg !6568
  %12 = load ptr, ptr %ttm.addr, align 8, !dbg !6569
  %caching4 = getelementptr inbounds %struct.ttm_tt, ptr %12, i32 0, i32 6, !dbg !6570
  store i32 %11, ptr %caching4, align 8, !dbg !6571
  ret void, !dbg !6572
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ttm_tt_alloc_page_directory(ptr noundef %ttm) #0 align 16 !dbg !6573 {
entry:
  %retval = alloca i32, align 4
  %ttm.addr = alloca ptr, align 8
  store ptr %ttm, ptr %ttm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ttm.addr, metadata !6577, metadata !DIExpression()), !dbg !6578
  %0 = load ptr, ptr %ttm.addr, align 8, !dbg !6579
  %num_pages = getelementptr inbounds %struct.ttm_tt, ptr %0, i32 0, i32 2, !dbg !6580
  %1 = load i32, ptr %num_pages, align 4, !dbg !6580
  %conv = zext i32 %1 to i64, !dbg !6579
  %call = call noalias ptr @kvcalloc(i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #18, !dbg !6581
  %2 = load ptr, ptr %ttm.addr, align 8, !dbg !6582
  %pages = getelementptr inbounds %struct.ttm_tt, ptr %2, i32 0, i32 0, !dbg !6583
  store ptr %call, ptr %pages, align 8, !dbg !6584
  %3 = load ptr, ptr %ttm.addr, align 8, !dbg !6585
  %pages1 = getelementptr inbounds %struct.ttm_tt, ptr %3, i32 0, i32 0, !dbg !6587
  %4 = load ptr, ptr %pages1, align 8, !dbg !6587
  %tobool = icmp ne ptr %4, null, !dbg !6585
  br i1 %tobool, label %if.end, label %if.then, !dbg !6588

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6589
  br label %return, !dbg !6589

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6590
  br label %return, !dbg !6590

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !6591
  ret i32 %5, !dbg !6591
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ttm_tt_fini(ptr noundef %ttm) #0 align 16 !dbg !6592 {
entry:
  %ttm.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %ttm, ptr %ttm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ttm.addr, metadata !6596, metadata !DIExpression()), !dbg !6602
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6603
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6597, metadata !DIExpression()), !dbg !6603
  %0 = load ptr, ptr %ttm.addr, align 8, !dbg !6603
  %page_flags = getelementptr inbounds %struct.ttm_tt, ptr %0, i32 0, i32 1, !dbg !6603
  %1 = load i32, ptr %page_flags, align 8, !dbg !6603
  %conv = zext i32 %1 to i64, !dbg !6603
  %and = and i64 %conv, 32, !dbg !6603
  %tobool = icmp ne i64 %and, 0, !dbg !6603
  %lnot = xor i1 %tobool, true, !dbg !6603
  %lnot1 = xor i1 %lnot, true, !dbg !6603
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6603
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6603
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !6604
  %tobool2 = icmp ne i32 %2, 0, !dbg !6604
  %lnot3 = xor i1 %tobool2, true, !dbg !6604
  %lnot5 = xor i1 %lnot3, true, !dbg !6604
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !6604
  %conv7 = sext i32 %lnot.ext6 to i64, !dbg !6604
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !6604
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6604
  br i1 %tobool8, label %if.then, label %if.end, !dbg !6603

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6604

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !6605
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6599, metadata !DIExpression()), !dbg !6605
  store i32 2305, ptr %__flags, align 4, !dbg !6605
  br label %do.body9, !dbg !6605

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !6606

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !6606

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !6605

do.body10:                                        ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !6608
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 176, i32 %3, i64 12) #15, !dbg !6608, !srcloc !6610
  br label %do.cond11, !dbg !6608

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !6608

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !6605

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !6611

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6611

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !6604
  br label %do.cond16, !dbg !6605

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !6605

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !6605

if.end:                                           ; preds = %do.end17, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !6603
  %tobool18 = icmp ne i32 %4, 0, !dbg !6603
  %lnot19 = xor i1 %tobool18, true, !dbg !6603
  %lnot21 = xor i1 %lnot19, true, !dbg !6603
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !6603
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !6603
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !6603
  store i64 %expval24, ptr %tmp, align 8, !dbg !6604
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6613
  %5 = load i64, ptr %tmp, align 8, !dbg !6603
  %6 = load ptr, ptr %ttm.addr, align 8, !dbg !6614
  %swap_storage = getelementptr inbounds %struct.ttm_tt, ptr %6, i32 0, i32 5, !dbg !6616
  %7 = load ptr, ptr %swap_storage, align 8, !dbg !6616
  %tobool25 = icmp ne ptr %7, null, !dbg !6614
  br i1 %tobool25, label %if.then26, label %if.end28, !dbg !6617

if.then26:                                        ; preds = %if.end
  %8 = load ptr, ptr %ttm.addr, align 8, !dbg !6618
  %swap_storage27 = getelementptr inbounds %struct.ttm_tt, ptr %8, i32 0, i32 5, !dbg !6619
  %9 = load ptr, ptr %swap_storage27, align 8, !dbg !6619
  call void @fput(ptr noundef %9) #17, !dbg !6620
  br label %if.end28, !dbg !6620

if.end28:                                         ; preds = %if.then26, %if.end
  %10 = load ptr, ptr %ttm.addr, align 8, !dbg !6621
  %swap_storage29 = getelementptr inbounds %struct.ttm_tt, ptr %10, i32 0, i32 5, !dbg !6622
  store ptr null, ptr %swap_storage29, align 8, !dbg !6623
  %11 = load ptr, ptr %ttm.addr, align 8, !dbg !6624
  %pages = getelementptr inbounds %struct.ttm_tt, ptr %11, i32 0, i32 0, !dbg !6626
  %12 = load ptr, ptr %pages, align 8, !dbg !6626
  %tobool30 = icmp ne ptr %12, null, !dbg !6624
  br i1 %tobool30, label %if.then31, label %if.else, !dbg !6627

if.then31:                                        ; preds = %if.end28
  %13 = load ptr, ptr %ttm.addr, align 8, !dbg !6628
  %pages32 = getelementptr inbounds %struct.ttm_tt, ptr %13, i32 0, i32 0, !dbg !6629
  %14 = load ptr, ptr %pages32, align 8, !dbg !6629
  call void @kvfree(ptr noundef %14) #17, !dbg !6630
  br label %if.end33, !dbg !6630

if.else:                                          ; preds = %if.end28
  %15 = load ptr, ptr %ttm.addr, align 8, !dbg !6631
  %dma_address = getelementptr inbounds %struct.ttm_tt, ptr %15, i32 0, i32 4, !dbg !6632
  %16 = load ptr, ptr %dma_address, align 8, !dbg !6632
  call void @kvfree(ptr noundef %16) #17, !dbg !6633
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then31
  %17 = load ptr, ptr %ttm.addr, align 8, !dbg !6634
  %pages34 = getelementptr inbounds %struct.ttm_tt, ptr %17, i32 0, i32 0, !dbg !6635
  store ptr null, ptr %pages34, align 8, !dbg !6636
  %18 = load ptr, ptr %ttm.addr, align 8, !dbg !6637
  %dma_address35 = getelementptr inbounds %struct.ttm_tt, ptr %18, i32 0, i32 4, !dbg !6638
  store ptr null, ptr %dma_address35, align 8, !dbg !6639
  ret void, !dbg !6640
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6641 dso_local void @fput(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6643 dso_local void @kvfree(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ttm_sg_tt_init(ptr noundef %ttm, ptr noundef %bo, i32 noundef %page_flags, i32 noundef %caching) #0 align 16 !dbg !6647 {
entry:
  %retval = alloca i32, align 4
  %ttm.addr = alloca ptr, align 8
  %bo.addr = alloca ptr, align 8
  %page_flags.addr = alloca i32, align 4
  %caching.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ttm, ptr %ttm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ttm.addr, metadata !6651, metadata !DIExpression()), !dbg !6656
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !6652, metadata !DIExpression()), !dbg !6657
  store i32 %page_flags, ptr %page_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %page_flags.addr, metadata !6653, metadata !DIExpression()), !dbg !6658
  store i32 %caching, ptr %caching.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %caching.addr, metadata !6654, metadata !DIExpression()), !dbg !6659
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6660
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6655, metadata !DIExpression()), !dbg !6661
  %0 = load ptr, ptr %ttm.addr, align 8, !dbg !6662
  %1 = load ptr, ptr %bo.addr, align 8, !dbg !6663
  %2 = load i32, ptr %page_flags.addr, align 4, !dbg !6664
  %3 = load i32, ptr %caching.addr, align 4, !dbg !6665
  call void @ttm_tt_init_fields(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef 0) #17, !dbg !6666
  %4 = load i32, ptr %page_flags.addr, align 4, !dbg !6667
  %conv = zext i32 %4 to i64, !dbg !6667
  %and = and i64 %conv, 4, !dbg !6669
  %tobool = icmp ne i64 %and, 0, !dbg !6669
  br i1 %tobool, label %if.then, label %if.else, !dbg !6670

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ttm.addr, align 8, !dbg !6671
  %call = call i32 @ttm_sg_tt_alloc_page_directory(ptr noundef %5) #17, !dbg !6672
  store i32 %call, ptr %ret, align 4, !dbg !6673
  br label %if.end, !dbg !6674

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %ttm.addr, align 8, !dbg !6675
  %call1 = call i32 @ttm_dma_tt_alloc_page_directory(ptr noundef %6) #17, !dbg !6676
  store i32 %call1, ptr %ret, align 4, !dbg !6677
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, ptr %ret, align 4, !dbg !6678
  %tobool2 = icmp ne i32 %7, 0, !dbg !6678
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !6680

if.then3:                                         ; preds = %if.end
  br label %do.body, !dbg !6681

do.body:                                          ; preds = %if.then3
  br label %do.cond, !dbg !6684

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6684

do.end:                                           ; preds = %do.cond
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #16, !dbg !6681
  store i32 %call4, ptr %tmp, align 4, !dbg !6684
  %8 = load i32, ptr %tmp, align 4, !dbg !6681
  store i32 -12, ptr %retval, align 4, !dbg !6686
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6686

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6687
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6687

cleanup:                                          ; preds = %if.end5, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6688
  %9 = load i32, ptr %retval, align 4, !dbg !6688
  ret i32 %9, !dbg !6688
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ttm_sg_tt_alloc_page_directory(ptr noundef %ttm) #0 align 16 !dbg !6689 {
entry:
  %retval = alloca i32, align 4
  %ttm.addr = alloca ptr, align 8
  store ptr %ttm, ptr %ttm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ttm.addr, metadata !6691, metadata !DIExpression()), !dbg !6692
  %0 = load ptr, ptr %ttm.addr, align 8, !dbg !6693
  %num_pages = getelementptr inbounds %struct.ttm_tt, ptr %0, i32 0, i32 2, !dbg !6694
  %1 = load i32, ptr %num_pages, align 4, !dbg !6694
  %conv = zext i32 %1 to i64, !dbg !6693
  %call = call noalias ptr @kvcalloc(i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #18, !dbg !6695
  %2 = load ptr, ptr %ttm.addr, align 8, !dbg !6696
  %dma_address = getelementptr inbounds %struct.ttm_tt, ptr %2, i32 0, i32 4, !dbg !6697
  store ptr %call, ptr %dma_address, align 8, !dbg !6698
  %3 = load ptr, ptr %ttm.addr, align 8, !dbg !6699
  %dma_address1 = getelementptr inbounds %struct.ttm_tt, ptr %3, i32 0, i32 4, !dbg !6701
  %4 = load ptr, ptr %dma_address1, align 8, !dbg !6701
  %tobool = icmp ne ptr %4, null, !dbg !6699
  br i1 %tobool, label %if.end, label %if.then, !dbg !6702

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6703
  br label %return, !dbg !6703

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6704
  br label %return, !dbg !6704

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !6705
  ret i32 %5, !dbg !6705
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ttm_dma_tt_alloc_page_directory(ptr noundef %ttm) #0 align 16 !dbg !6706 {
entry:
  %retval = alloca i32, align 4
  %ttm.addr = alloca ptr, align 8
  store ptr %ttm, ptr %ttm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ttm.addr, metadata !6708, metadata !DIExpression()), !dbg !6709
  %0 = load ptr, ptr %ttm.addr, align 8, !dbg !6710
  %num_pages = getelementptr inbounds %struct.ttm_tt, ptr %0, i32 0, i32 2, !dbg !6711
  %1 = load i32, ptr %num_pages, align 4, !dbg !6711
  %conv = zext i32 %1 to i64, !dbg !6710
  %call = call noalias ptr @kvcalloc(i64 noundef %conv, i64 noundef 16, i32 noundef 3264) #18, !dbg !6712
  %2 = load ptr, ptr %ttm.addr, align 8, !dbg !6713
  %pages = getelementptr inbounds %struct.ttm_tt, ptr %2, i32 0, i32 0, !dbg !6714
  store ptr %call, ptr %pages, align 8, !dbg !6715
  %3 = load ptr, ptr %ttm.addr, align 8, !dbg !6716
  %pages1 = getelementptr inbounds %struct.ttm_tt, ptr %3, i32 0, i32 0, !dbg !6718
  %4 = load ptr, ptr %pages1, align 8, !dbg !6718
  %tobool = icmp ne ptr %4, null, !dbg !6716
  br i1 %tobool, label %if.end, label %if.then, !dbg !6719

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6720
  br label %return, !dbg !6720

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %ttm.addr, align 8, !dbg !6721
  %pages2 = getelementptr inbounds %struct.ttm_tt, ptr %5, i32 0, i32 0, !dbg !6722
  %6 = load ptr, ptr %pages2, align 8, !dbg !6722
  %7 = load ptr, ptr %ttm.addr, align 8, !dbg !6723
  %num_pages3 = getelementptr inbounds %struct.ttm_tt, ptr %7, i32 0, i32 2, !dbg !6724
  %8 = load i32, ptr %num_pages3, align 4, !dbg !6724
  %idx.ext = zext i32 %8 to i64, !dbg !6725
  %add.ptr = getelementptr ptr, ptr %6, i64 %idx.ext, !dbg !6725
  %9 = load ptr, ptr %ttm.addr, align 8, !dbg !6726
  %dma_address = getelementptr inbounds %struct.ttm_tt, ptr %9, i32 0, i32 4, !dbg !6727
  store ptr %add.ptr, ptr %dma_address, align 8, !dbg !6728
  store i32 0, ptr %retval, align 4, !dbg !6729
  br label %return, !dbg !6729

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, ptr %retval, align 4, !dbg !6730
  ret i32 %10, !dbg !6730
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ttm_tt_swapin(ptr noundef %ttm) #0 align 16 !dbg !6731 {
entry:
  %retval = alloca i32, align 4
  %ttm.addr = alloca ptr, align 8
  %swap_space = alloca ptr, align 8
  %swap_storage = alloca ptr, align 8
  %from_page = alloca ptr, align 8
  %to_page = alloca ptr, align 8
  %gfp_mask = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ttm, ptr %ttm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ttm.addr, metadata !6733, metadata !DIExpression()), !dbg !6742
  call void @llvm.lifetime.start.p0(i64 8, ptr %swap_space) #15, !dbg !6743
  call void @llvm.dbg.declare(metadata ptr %swap_space, metadata !6734, metadata !DIExpression()), !dbg !6744
  call void @llvm.lifetime.start.p0(i64 8, ptr %swap_storage) #15, !dbg !6745
  call void @llvm.dbg.declare(metadata ptr %swap_storage, metadata !6735, metadata !DIExpression()), !dbg !6746
  call void @llvm.lifetime.start.p0(i64 8, ptr %from_page) #15, !dbg !6747
  call void @llvm.dbg.declare(metadata ptr %from_page, metadata !6736, metadata !DIExpression()), !dbg !6748
  call void @llvm.lifetime.start.p0(i64 8, ptr %to_page) #15, !dbg !6749
  call void @llvm.dbg.declare(metadata ptr %to_page, metadata !6737, metadata !DIExpression()), !dbg !6750
  call void @llvm.lifetime.start.p0(i64 4, ptr %gfp_mask) #15, !dbg !6751
  call void @llvm.dbg.declare(metadata ptr %gfp_mask, metadata !6738, metadata !DIExpression()), !dbg !6752
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !6753
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6739, metadata !DIExpression()), !dbg !6754
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6753
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6740, metadata !DIExpression()), !dbg !6755
  %0 = load ptr, ptr %ttm.addr, align 8, !dbg !6756
  %swap_storage1 = getelementptr inbounds %struct.ttm_tt, ptr %0, i32 0, i32 5, !dbg !6757
  %1 = load ptr, ptr %swap_storage1, align 8, !dbg !6757
  store ptr %1, ptr %swap_storage, align 8, !dbg !6758
  br label %do.body, !dbg !6759

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %swap_storage, align 8, !dbg !6760
  %cmp = icmp eq ptr %2, null, !dbg !6760
  %lnot = xor i1 %cmp, true, !dbg !6760
  %lnot2 = xor i1 %lnot, true, !dbg !6760
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6760
  %conv = sext i32 %lnot.ext to i64, !dbg !6760
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6760
  %tobool = icmp ne i64 %expval, 0, !dbg !6760
  br i1 %tobool, label %if.then, label %if.end, !dbg !6763

if.then:                                          ; preds = %do.body
  br label %do.body3, !dbg !6760

do.body3:                                         ; preds = %if.then
  br label %do.body4, !dbg !6764

do.body4:                                         ; preds = %do.body3
  br label %do.cond, !dbg !6766

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !6766

do.end:                                           ; preds = %do.cond
  br label %do.body5, !dbg !6764

do.body5:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 220, i32 0, i64 12) #15, !dbg !6768, !srcloc !6770
  br label %do.cond6, !dbg !6768

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6768

do.end7:                                          ; preds = %do.cond6
  unreachable, !dbg !6764

do.cond8:                                         ; No predecessors!
  br label %do.end9, !dbg !6764

do.end9:                                          ; preds = %do.cond8
  br label %if.end, !dbg !6764

if.end:                                           ; preds = %do.end9, %do.body
  br label %do.cond10, !dbg !6763

do.cond10:                                        ; preds = %if.end
  br label %do.end11, !dbg !6763

do.end11:                                         ; preds = %do.cond10
  %3 = load ptr, ptr %swap_storage, align 8, !dbg !6771
  %f_mapping = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 17, !dbg !6772
  %4 = load ptr, ptr %f_mapping, align 8, !dbg !6772
  store ptr %4, ptr %swap_space, align 8, !dbg !6773
  %5 = load ptr, ptr %swap_space, align 8, !dbg !6774
  %call = call i32 @mapping_gfp_mask(ptr noundef %5) #17, !dbg !6775
  store i32 %call, ptr %gfp_mask, align 4, !dbg !6776
  store i32 0, ptr %i, align 4, !dbg !6777
  br label %for.cond, !dbg !6779

for.cond:                                         ; preds = %for.inc, %do.end11
  %6 = load i32, ptr %i, align 4, !dbg !6780
  %7 = load ptr, ptr %ttm.addr, align 8, !dbg !6782
  %num_pages = getelementptr inbounds %struct.ttm_tt, ptr %7, i32 0, i32 2, !dbg !6783
  %8 = load i32, ptr %num_pages, align 4, !dbg !6783
  %cmp12 = icmp ult i32 %6, %8, !dbg !6784
  br i1 %cmp12, label %for.body, label %for.end, !dbg !6785

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %swap_space, align 8, !dbg !6786
  %10 = load i32, ptr %i, align 4, !dbg !6788
  %conv14 = sext i32 %10 to i64, !dbg !6788
  %11 = load i32, ptr %gfp_mask, align 4, !dbg !6789
  %call15 = call ptr @shmem_read_mapping_page_gfp(ptr noundef %9, i64 noundef %conv14, i32 noundef %11) #17, !dbg !6790
  store ptr %call15, ptr %from_page, align 8, !dbg !6791
  %12 = load ptr, ptr %from_page, align 8, !dbg !6792
  %call16 = call zeroext i1 @IS_ERR(ptr noundef %12) #17, !dbg !6794
  br i1 %call16, label %if.then17, label %if.end20, !dbg !6795

if.then17:                                        ; preds = %for.body
  %13 = load ptr, ptr %from_page, align 8, !dbg !6796
  %call18 = call i64 @PTR_ERR(ptr noundef %13) #17, !dbg !6798
  %conv19 = trunc i64 %call18 to i32, !dbg !6798
  store i32 %conv19, ptr %ret, align 4, !dbg !6799
  br label %out_err, !dbg !6800

if.end20:                                         ; preds = %for.body
  %14 = load ptr, ptr %ttm.addr, align 8, !dbg !6801
  %pages = getelementptr inbounds %struct.ttm_tt, ptr %14, i32 0, i32 0, !dbg !6802
  %15 = load ptr, ptr %pages, align 8, !dbg !6802
  %16 = load i32, ptr %i, align 4, !dbg !6803
  %idxprom = sext i32 %16 to i64, !dbg !6801
  %arrayidx = getelementptr ptr, ptr %15, i64 %idxprom, !dbg !6801
  %17 = load ptr, ptr %arrayidx, align 8, !dbg !6801
  store ptr %17, ptr %to_page, align 8, !dbg !6804
  %18 = load ptr, ptr %to_page, align 8, !dbg !6805
  %cmp21 = icmp eq ptr %18, null, !dbg !6805
  %lnot23 = xor i1 %cmp21, true, !dbg !6805
  %lnot25 = xor i1 %lnot23, true, !dbg !6805
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !6805
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !6805
  %expval28 = call i64 @llvm.expect.i64(i64 %conv27, i64 0), !dbg !6805
  %tobool29 = icmp ne i64 %expval28, 0, !dbg !6805
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !6807

if.then30:                                        ; preds = %if.end20
  store i32 -12, ptr %ret, align 4, !dbg !6808
  br label %out_err, !dbg !6810

if.end31:                                         ; preds = %if.end20
  %19 = load ptr, ptr %to_page, align 8, !dbg !6811
  %20 = load ptr, ptr %from_page, align 8, !dbg !6812
  call void @copy_highpage(ptr noundef %19, ptr noundef %20) #17, !dbg !6813
  %21 = load ptr, ptr %from_page, align 8, !dbg !6814
  call void @put_page(ptr noundef %21) #17, !dbg !6815
  br label %for.inc, !dbg !6816

for.inc:                                          ; preds = %if.end31
  %22 = load i32, ptr %i, align 4, !dbg !6817
  %inc = add i32 %22, 1, !dbg !6817
  store i32 %inc, ptr %i, align 4, !dbg !6817
  br label %for.cond, !dbg !6818, !llvm.loop !6819

for.end:                                          ; preds = %for.cond
  %23 = load ptr, ptr %swap_storage, align 8, !dbg !6823
  call void @fput(ptr noundef %23) #17, !dbg !6824
  %24 = load ptr, ptr %ttm.addr, align 8, !dbg !6825
  %swap_storage32 = getelementptr inbounds %struct.ttm_tt, ptr %24, i32 0, i32 5, !dbg !6826
  store ptr null, ptr %swap_storage32, align 8, !dbg !6827
  %25 = load ptr, ptr %ttm.addr, align 8, !dbg !6828
  %page_flags = getelementptr inbounds %struct.ttm_tt, ptr %25, i32 0, i32 1, !dbg !6829
  %26 = load i32, ptr %page_flags, align 8, !dbg !6830
  %conv33 = zext i32 %26 to i64, !dbg !6830
  %and = and i64 %conv33, -2, !dbg !6830
  %conv34 = trunc i64 %and to i32, !dbg !6830
  store i32 %conv34, ptr %page_flags, align 8, !dbg !6830
  store i32 0, ptr %retval, align 4, !dbg !6831
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6831

out_err:                                          ; preds = %if.then30, %if.then17
  call void @llvm.dbg.label(metadata !6741), !dbg !6832
  %27 = load i32, ptr %ret, align 4, !dbg !6833
  store i32 %27, ptr %retval, align 4, !dbg !6834
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6834

cleanup:                                          ; preds = %out_err, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6835
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !6835
  call void @llvm.lifetime.end.p0(i64 4, ptr %gfp_mask) #15, !dbg !6835
  call void @llvm.lifetime.end.p0(i64 8, ptr %to_page) #15, !dbg !6835
  call void @llvm.lifetime.end.p0(i64 8, ptr %from_page) #15, !dbg !6835
  call void @llvm.lifetime.end.p0(i64 8, ptr %swap_storage) #15, !dbg !6835
  call void @llvm.lifetime.end.p0(i64 8, ptr %swap_space) #15, !dbg !6835
  %28 = load i32, ptr %retval, align 4, !dbg !6835
  ret i32 %28, !dbg !6835
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mapping_gfp_mask(ptr noundef %mapping) #4 align 16 !dbg !6836 {
entry:
  %mapping.addr = alloca ptr, align 8
  store ptr %mapping, ptr %mapping.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mapping.addr, metadata !6840, metadata !DIExpression()), !dbg !6841
  %0 = load ptr, ptr %mapping.addr, align 8, !dbg !6842
  %gfp_mask = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 3, !dbg !6843
  %1 = load i32, ptr %gfp_mask, align 8, !dbg !6843
  ret i32 %1, !dbg !6844
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6845 dso_local ptr @shmem_read_mapping_page_gfp(ptr noundef, i64 noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !6849 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6854, metadata !DIExpression()), !dbg !6855
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6856
  %1 = ptrtoint ptr %0 to i64, !dbg !6856
  %2 = inttoptr i64 %1 to ptr, !dbg !6856
  %3 = ptrtoint ptr %2 to i64, !dbg !6856
  %cmp = icmp uge i64 %3, -4095, !dbg !6856
  %lnot = xor i1 %cmp, true, !dbg !6856
  %lnot1 = xor i1 %lnot, true, !dbg !6856
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6856
  %conv = sext i32 %lnot.ext to i64, !dbg !6856
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6856
  %tobool = icmp ne i64 %expval, 0, !dbg !6856
  ret i1 %tobool, !dbg !6857
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !6858 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6862, metadata !DIExpression()), !dbg !6863
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6864
  %1 = ptrtoint ptr %0 to i64, !dbg !6865
  ret i64 %1, !dbg !6866
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_highpage(ptr noundef %to, ptr noundef %from) #4 align 16 !dbg !6867 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %vfrom = alloca ptr, align 8
  %vto = alloca ptr, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6872, metadata !DIExpression()), !dbg !6876
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6873, metadata !DIExpression()), !dbg !6877
  call void @llvm.lifetime.start.p0(i64 8, ptr %vfrom) #15, !dbg !6878
  call void @llvm.dbg.declare(metadata ptr %vfrom, metadata !6874, metadata !DIExpression()), !dbg !6879
  call void @llvm.lifetime.start.p0(i64 8, ptr %vto) #15, !dbg !6878
  call void @llvm.dbg.declare(metadata ptr %vto, metadata !6875, metadata !DIExpression()), !dbg !6880
  %0 = load ptr, ptr %from.addr, align 8, !dbg !6881
  %call = call ptr @kmap_local_page(ptr noundef %0) #17, !dbg !6882
  store ptr %call, ptr %vfrom, align 8, !dbg !6883
  %1 = load ptr, ptr %to.addr, align 8, !dbg !6884
  %call1 = call ptr @kmap_local_page(ptr noundef %1) #17, !dbg !6885
  store ptr %call1, ptr %vto, align 8, !dbg !6886
  %2 = load ptr, ptr %vto, align 8, !dbg !6887
  %3 = load ptr, ptr %vfrom, align 8, !dbg !6888
  call void @copy_page(ptr noundef %2, ptr noundef %3) #17, !dbg !6889
  %4 = load ptr, ptr %to.addr, align 8, !dbg !6890
  %5 = load ptr, ptr %from.addr, align 8, !dbg !6891
  call void @kmsan_copy_page_meta(ptr noundef %4, ptr noundef %5) #17, !dbg !6892
  br label %do.body, !dbg !6893

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6894

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !6896

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !6896

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %vto, align 8, !dbg !6894
  call void @__kunmap_local(ptr noundef %6) #17, !dbg !6894
  br label %do.cond3, !dbg !6894

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !6894

do.end4:                                          ; preds = %do.cond3
  br label %do.body5, !dbg !6898

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6899

do.body6:                                         ; preds = %do.body5
  br label %do.cond7, !dbg !6901

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !6901

do.end8:                                          ; preds = %do.cond7
  %7 = load ptr, ptr %vfrom, align 8, !dbg !6899
  call void @__kunmap_local(ptr noundef %7) #17, !dbg !6899
  br label %do.cond9, !dbg !6899

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6899

do.end10:                                         ; preds = %do.cond9
  call void @llvm.lifetime.end.p0(i64 8, ptr %vto) #15, !dbg !6903
  call void @llvm.lifetime.end.p0(i64 8, ptr %vfrom) #15, !dbg !6903
  ret void, !dbg !6903
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_page(ptr noundef %page) #4 align 16 !dbg !6904 {
entry:
  %page.addr = alloca ptr, align 8
  %folio = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6906, metadata !DIExpression()), !dbg !6908
  call void @llvm.lifetime.start.p0(i64 8, ptr %folio) #15, !dbg !6909
  call void @llvm.dbg.declare(metadata ptr %folio, metadata !6907, metadata !DIExpression()), !dbg !6910
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6911
  %call = call i64 @_compound_head(ptr noundef %0) #17, !dbg !6911
  %1 = inttoptr i64 %call to ptr, !dbg !6911
  store ptr %1, ptr %folio, align 8, !dbg !6910
  %2 = load ptr, ptr %folio, align 8, !dbg !6912
  %3 = getelementptr inbounds %struct.folio, ptr %2, i32 0, i32 0, !dbg !6914
  %call1 = call zeroext i1 @put_devmap_managed_page(ptr noundef %3) #17, !dbg !6915
  br i1 %call1, label %if.then, label %if.end, !dbg !6916

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6917

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %folio, align 8, !dbg !6918
  call void @folio_put(ptr noundef %4) #17, !dbg !6919
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6920
  br label %cleanup, !dbg !6920

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %folio) #15, !dbg !6920
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6920

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ttm_tt_swapout(ptr noundef %bdev, ptr noundef %ttm, i32 noundef %gfp_flags) #0 align 16 !dbg !6921 {
entry:
  %retval = alloca i32, align 4
  %bdev.addr = alloca ptr, align 8
  %ttm.addr = alloca ptr, align 8
  %gfp_flags.addr = alloca i32, align 4
  %size = alloca i64, align 8
  %swap_space = alloca ptr, align 8
  %swap_storage = alloca ptr, align 8
  %from_page = alloca ptr, align 8
  %to_page = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !6925, metadata !DIExpression()), !dbg !6936
  store ptr %ttm, ptr %ttm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ttm.addr, metadata !6926, metadata !DIExpression()), !dbg !6937
  store i32 %gfp_flags, ptr %gfp_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_flags.addr, metadata !6927, metadata !DIExpression()), !dbg !6938
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #15, !dbg !6939
  call void @llvm.dbg.declare(metadata ptr %size, metadata !6928, metadata !DIExpression()), !dbg !6940
  %0 = load ptr, ptr %ttm.addr, align 8, !dbg !6941
  %num_pages = getelementptr inbounds %struct.ttm_tt, ptr %0, i32 0, i32 2, !dbg !6942
  %1 = load i32, ptr %num_pages, align 4, !dbg !6942
  %conv = zext i32 %1 to i64, !dbg !6943
  %shl = shl i64 %conv, 12, !dbg !6944
  store i64 %shl, ptr %size, align 8, !dbg !6940
  call void @llvm.lifetime.start.p0(i64 8, ptr %swap_space) #15, !dbg !6945
  call void @llvm.dbg.declare(metadata ptr %swap_space, metadata !6929, metadata !DIExpression()), !dbg !6946
  call void @llvm.lifetime.start.p0(i64 8, ptr %swap_storage) #15, !dbg !6947
  call void @llvm.dbg.declare(metadata ptr %swap_storage, metadata !6930, metadata !DIExpression()), !dbg !6948
  call void @llvm.lifetime.start.p0(i64 8, ptr %from_page) #15, !dbg !6949
  call void @llvm.dbg.declare(metadata ptr %from_page, metadata !6931, metadata !DIExpression()), !dbg !6950
  call void @llvm.lifetime.start.p0(i64 8, ptr %to_page) #15, !dbg !6951
  call void @llvm.dbg.declare(metadata ptr %to_page, metadata !6932, metadata !DIExpression()), !dbg !6952
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !6953
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6933, metadata !DIExpression()), !dbg !6954
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6953
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6934, metadata !DIExpression()), !dbg !6955
  %2 = load i64, ptr %size, align 8, !dbg !6956
  %call = call ptr @shmem_file_setup(ptr noundef @.str.4, i64 noundef %2, i64 noundef 0) #17, !dbg !6957
  store ptr %call, ptr %swap_storage, align 8, !dbg !6958
  %3 = load ptr, ptr %swap_storage, align 8, !dbg !6959
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %3) #17, !dbg !6961
  br i1 %call1, label %if.then, label %if.end, !dbg !6962

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6963

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !6966

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6966

do.end:                                           ; preds = %do.cond
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5) #16, !dbg !6963
  store i32 %call2, ptr %tmp, align 4, !dbg !6966
  %4 = load i32, ptr %tmp, align 4, !dbg !6963
  %5 = load ptr, ptr %swap_storage, align 8, !dbg !6968
  %call3 = call i64 @PTR_ERR(ptr noundef %5) #17, !dbg !6969
  %conv4 = trunc i64 %call3 to i32, !dbg !6969
  store i32 %conv4, ptr %retval, align 4, !dbg !6970
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6970

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %swap_storage, align 8, !dbg !6971
  %f_mapping = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 17, !dbg !6972
  %7 = load ptr, ptr %f_mapping, align 8, !dbg !6972
  store ptr %7, ptr %swap_space, align 8, !dbg !6973
  %8 = load ptr, ptr %swap_space, align 8, !dbg !6974
  %call5 = call i32 @mapping_gfp_mask(ptr noundef %8) #17, !dbg !6975
  %9 = load i32, ptr %gfp_flags.addr, align 4, !dbg !6976
  %and = and i32 %9, %call5, !dbg !6976
  store i32 %and, ptr %gfp_flags.addr, align 4, !dbg !6976
  store i32 0, ptr %i, align 4, !dbg !6977
  br label %for.cond, !dbg !6979

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, ptr %i, align 4, !dbg !6980
  %11 = load ptr, ptr %ttm.addr, align 8, !dbg !6982
  %num_pages6 = getelementptr inbounds %struct.ttm_tt, ptr %11, i32 0, i32 2, !dbg !6983
  %12 = load i32, ptr %num_pages6, align 4, !dbg !6983
  %cmp = icmp ult i32 %10, %12, !dbg !6984
  br i1 %cmp, label %for.body, label %for.end, !dbg !6985

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %ttm.addr, align 8, !dbg !6986
  %pages = getelementptr inbounds %struct.ttm_tt, ptr %13, i32 0, i32 0, !dbg !6988
  %14 = load ptr, ptr %pages, align 8, !dbg !6988
  %15 = load i32, ptr %i, align 4, !dbg !6989
  %idxprom = sext i32 %15 to i64, !dbg !6986
  %arrayidx = getelementptr ptr, ptr %14, i64 %idxprom, !dbg !6986
  %16 = load ptr, ptr %arrayidx, align 8, !dbg !6986
  store ptr %16, ptr %from_page, align 8, !dbg !6990
  %17 = load ptr, ptr %from_page, align 8, !dbg !6991
  %cmp8 = icmp eq ptr %17, null, !dbg !6991
  %lnot = xor i1 %cmp8, true, !dbg !6991
  %lnot10 = xor i1 %lnot, true, !dbg !6991
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !6991
  %conv11 = sext i32 %lnot.ext to i64, !dbg !6991
  %expval = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !6991
  %tobool = icmp ne i64 %expval, 0, !dbg !6991
  br i1 %tobool, label %if.then12, label %if.end13, !dbg !6993

if.then12:                                        ; preds = %for.body
  br label %for.inc, !dbg !6994

if.end13:                                         ; preds = %for.body
  %18 = load ptr, ptr %swap_space, align 8, !dbg !6995
  %19 = load i32, ptr %i, align 4, !dbg !6996
  %conv14 = sext i32 %19 to i64, !dbg !6996
  %20 = load i32, ptr %gfp_flags.addr, align 4, !dbg !6997
  %call15 = call ptr @shmem_read_mapping_page_gfp(ptr noundef %18, i64 noundef %conv14, i32 noundef %20) #17, !dbg !6998
  store ptr %call15, ptr %to_page, align 8, !dbg !6999
  %21 = load ptr, ptr %to_page, align 8, !dbg !7000
  %call16 = call zeroext i1 @IS_ERR(ptr noundef %21) #17, !dbg !7002
  br i1 %call16, label %if.then17, label %if.end20, !dbg !7003

if.then17:                                        ; preds = %if.end13
  %22 = load ptr, ptr %to_page, align 8, !dbg !7004
  %call18 = call i64 @PTR_ERR(ptr noundef %22) #17, !dbg !7006
  %conv19 = trunc i64 %call18 to i32, !dbg !7006
  store i32 %conv19, ptr %ret, align 4, !dbg !7007
  br label %out_err, !dbg !7008

if.end20:                                         ; preds = %if.end13
  %23 = load ptr, ptr %to_page, align 8, !dbg !7009
  %24 = load ptr, ptr %from_page, align 8, !dbg !7010
  call void @copy_highpage(ptr noundef %23, ptr noundef %24) #17, !dbg !7011
  %25 = load ptr, ptr %to_page, align 8, !dbg !7012
  %call21 = call zeroext i1 @set_page_dirty(ptr noundef %25) #17, !dbg !7013
  %26 = load ptr, ptr %to_page, align 8, !dbg !7014
  call void @mark_page_accessed(ptr noundef %26) #17, !dbg !7015
  %27 = load ptr, ptr %to_page, align 8, !dbg !7016
  call void @put_page(ptr noundef %27) #17, !dbg !7017
  br label %for.inc, !dbg !7018

for.inc:                                          ; preds = %if.end20, %if.then12
  %28 = load i32, ptr %i, align 4, !dbg !7019
  %inc = add i32 %28, 1, !dbg !7019
  store i32 %inc, ptr %i, align 4, !dbg !7019
  br label %for.cond, !dbg !7020, !llvm.loop !7021

for.end:                                          ; preds = %for.cond
  %29 = load ptr, ptr %bdev.addr, align 8, !dbg !7023
  %30 = load ptr, ptr %ttm.addr, align 8, !dbg !7024
  call void @ttm_tt_unpopulate(ptr noundef %29, ptr noundef %30) #17, !dbg !7025
  %31 = load ptr, ptr %swap_storage, align 8, !dbg !7026
  %32 = load ptr, ptr %ttm.addr, align 8, !dbg !7027
  %swap_storage22 = getelementptr inbounds %struct.ttm_tt, ptr %32, i32 0, i32 5, !dbg !7028
  store ptr %31, ptr %swap_storage22, align 8, !dbg !7029
  %33 = load ptr, ptr %ttm.addr, align 8, !dbg !7030
  %page_flags = getelementptr inbounds %struct.ttm_tt, ptr %33, i32 0, i32 1, !dbg !7031
  %34 = load i32, ptr %page_flags, align 8, !dbg !7032
  %conv23 = zext i32 %34 to i64, !dbg !7032
  %or = or i64 %conv23, 1, !dbg !7032
  %conv24 = trunc i64 %or to i32, !dbg !7032
  store i32 %conv24, ptr %page_flags, align 8, !dbg !7032
  %35 = load ptr, ptr %ttm.addr, align 8, !dbg !7033
  %num_pages25 = getelementptr inbounds %struct.ttm_tt, ptr %35, i32 0, i32 2, !dbg !7034
  %36 = load i32, ptr %num_pages25, align 4, !dbg !7034
  store i32 %36, ptr %retval, align 4, !dbg !7035
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7035

out_err:                                          ; preds = %if.then17
  call void @llvm.dbg.label(metadata !6935), !dbg !7036
  %37 = load ptr, ptr %swap_storage, align 8, !dbg !7037
  call void @fput(ptr noundef %37) #17, !dbg !7038
  %38 = load i32, ptr %ret, align 4, !dbg !7039
  store i32 %38, ptr %retval, align 4, !dbg !7040
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7040

cleanup:                                          ; preds = %out_err, %for.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !7041
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !7041
  call void @llvm.lifetime.end.p0(i64 8, ptr %to_page) #15, !dbg !7041
  call void @llvm.lifetime.end.p0(i64 8, ptr %from_page) #15, !dbg !7041
  call void @llvm.lifetime.end.p0(i64 8, ptr %swap_storage) #15, !dbg !7041
  call void @llvm.lifetime.end.p0(i64 8, ptr %swap_space) #15, !dbg !7041
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #15, !dbg !7041
  %39 = load i32, ptr %retval, align 4, !dbg !7041
  ret i32 %39, !dbg !7041
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7042 dso_local ptr @shmem_file_setup(ptr noundef, i64 noundef, i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7045 dso_local zeroext i1 @set_page_dirty(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7048 dso_local void @mark_page_accessed(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ttm_tt_unpopulate(ptr noundef %bdev, ptr noundef %ttm) #0 align 16 !dbg !7049 {
entry:
  %bdev.addr = alloca ptr, align 8
  %ttm.addr = alloca ptr, align 8
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !7051, metadata !DIExpression()), !dbg !7053
  store ptr %ttm, ptr %ttm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ttm.addr, metadata !7052, metadata !DIExpression()), !dbg !7054
  %0 = load ptr, ptr %ttm.addr, align 8, !dbg !7055
  %call = call zeroext i1 @ttm_tt_is_populated(ptr noundef %0) #17, !dbg !7057
  br i1 %call, label %if.end, label %if.then, !dbg !7058

if.then:                                          ; preds = %entry
  br label %return, !dbg !7059

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %bdev.addr, align 8, !dbg !7060
  %funcs = getelementptr inbounds %struct.ttm_device, ptr %1, i32 0, i32 1, !dbg !7062
  %2 = load ptr, ptr %funcs, align 8, !dbg !7062
  %ttm_tt_unpopulate = getelementptr inbounds %struct.ttm_device_funcs, ptr %2, i32 0, i32 2, !dbg !7063
  %3 = load ptr, ptr %ttm_tt_unpopulate, align 8, !dbg !7063
  %tobool = icmp ne ptr %3, null, !dbg !7060
  br i1 %tobool, label %if.then1, label %if.else, !dbg !7064

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %bdev.addr, align 8, !dbg !7065
  %funcs2 = getelementptr inbounds %struct.ttm_device, ptr %4, i32 0, i32 1, !dbg !7066
  %5 = load ptr, ptr %funcs2, align 8, !dbg !7066
  %ttm_tt_unpopulate3 = getelementptr inbounds %struct.ttm_device_funcs, ptr %5, i32 0, i32 2, !dbg !7067
  %6 = load ptr, ptr %ttm_tt_unpopulate3, align 8, !dbg !7067
  %7 = load ptr, ptr %bdev.addr, align 8, !dbg !7068
  %8 = load ptr, ptr %ttm.addr, align 8, !dbg !7069
  call void %6(ptr noundef %7, ptr noundef %8) #17, !dbg !7065
  br label %if.end4, !dbg !7065

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %bdev.addr, align 8, !dbg !7070
  %pool = getelementptr inbounds %struct.ttm_device, ptr %9, i32 0, i32 5, !dbg !7071
  %10 = load ptr, ptr %ttm.addr, align 8, !dbg !7072
  call void @ttm_pool_free(ptr noundef %pool, ptr noundef %10) #17, !dbg !7073
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then1
  %11 = load ptr, ptr %ttm.addr, align 8, !dbg !7074
  %page_flags = getelementptr inbounds %struct.ttm_tt, ptr %11, i32 0, i32 1, !dbg !7076
  %12 = load i32, ptr %page_flags, align 8, !dbg !7076
  %conv = zext i32 %12 to i64, !dbg !7074
  %and = and i64 %conv, 4, !dbg !7077
  %tobool5 = icmp ne i64 %and, 0, !dbg !7077
  br i1 %tobool5, label %if.end14, label %if.then6, !dbg !7078

if.then6:                                         ; preds = %if.end4
  %13 = load ptr, ptr %ttm.addr, align 8, !dbg !7079
  %num_pages = getelementptr inbounds %struct.ttm_tt, ptr %13, i32 0, i32 2, !dbg !7081
  %14 = load i32, ptr %num_pages, align 4, !dbg !7081
  %conv7 = zext i32 %14 to i64, !dbg !7079
  call void @atomic_long_sub(i64 noundef %conv7, ptr noundef @ttm_pages_allocated) #17, !dbg !7082
  %15 = load ptr, ptr %bdev.addr, align 8, !dbg !7083
  %pool8 = getelementptr inbounds %struct.ttm_device, ptr %15, i32 0, i32 5, !dbg !7085
  %use_dma32 = getelementptr inbounds %struct.ttm_pool, ptr %pool8, i32 0, i32 3, !dbg !7086
  %16 = load i8, ptr %use_dma32, align 1, !dbg !7086, !range !6414, !noundef !1144
  %tobool9 = trunc i8 %16 to i1, !dbg !7086
  br i1 %tobool9, label %if.then10, label %if.end13, !dbg !7087

if.then10:                                        ; preds = %if.then6
  %17 = load ptr, ptr %ttm.addr, align 8, !dbg !7088
  %num_pages11 = getelementptr inbounds %struct.ttm_tt, ptr %17, i32 0, i32 2, !dbg !7089
  %18 = load i32, ptr %num_pages11, align 4, !dbg !7089
  %conv12 = zext i32 %18 to i64, !dbg !7088
  call void @atomic_long_sub(i64 noundef %conv12, ptr noundef @ttm_dma32_pages_allocated) #17, !dbg !7090
  br label %if.end13, !dbg !7090

if.end13:                                         ; preds = %if.then10, %if.then6
  br label %if.end14, !dbg !7091

if.end14:                                         ; preds = %if.end13, %if.end4
  %19 = load ptr, ptr %ttm.addr, align 8, !dbg !7092
  %page_flags15 = getelementptr inbounds %struct.ttm_tt, ptr %19, i32 0, i32 1, !dbg !7093
  %20 = load i32, ptr %page_flags15, align 8, !dbg !7094
  %conv16 = zext i32 %20 to i64, !dbg !7094
  %and17 = and i64 %conv16, -33, !dbg !7094
  %conv18 = trunc i64 %and17 to i32, !dbg !7094
  store i32 %conv18, ptr %page_flags15, align 8, !dbg !7094
  br label %return, !dbg !7095

return:                                           ; preds = %if.end14, %if.then
  ret void, !dbg !7095
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ttm_tt_populate(ptr noundef %bdev, ptr noundef %ttm, ptr noundef %ctx) #0 align 16 !dbg !7096 {
entry:
  %retval = alloca i32, align 4
  %bdev.addr = alloca ptr, align 8
  %ttm.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !7098, metadata !DIExpression()), !dbg !7103
  store ptr %ttm, ptr %ttm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ttm.addr, metadata !7099, metadata !DIExpression()), !dbg !7104
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !7100, metadata !DIExpression()), !dbg !7105
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !7106
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7101, metadata !DIExpression()), !dbg !7107
  %0 = load ptr, ptr %ttm.addr, align 8, !dbg !7108
  %tobool = icmp ne ptr %0, null, !dbg !7108
  br i1 %tobool, label %if.end, label %if.then, !dbg !7110

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !7111
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7111

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ttm.addr, align 8, !dbg !7112
  %call = call zeroext i1 @ttm_tt_is_populated(ptr noundef %1) #17, !dbg !7114
  br i1 %call, label %if.then1, label %if.end2, !dbg !7115

if.then1:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !7116
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7116

if.end2:                                          ; preds = %if.end
  %2 = load ptr, ptr %ttm.addr, align 8, !dbg !7117
  %page_flags = getelementptr inbounds %struct.ttm_tt, ptr %2, i32 0, i32 1, !dbg !7119
  %3 = load i32, ptr %page_flags, align 8, !dbg !7119
  %conv = zext i32 %3 to i64, !dbg !7117
  %and = and i64 %conv, 4, !dbg !7120
  %tobool3 = icmp ne i64 %and, 0, !dbg !7120
  br i1 %tobool3, label %if.end11, label %if.then4, !dbg !7121

if.then4:                                         ; preds = %if.end2
  %4 = load ptr, ptr %ttm.addr, align 8, !dbg !7122
  %num_pages = getelementptr inbounds %struct.ttm_tt, ptr %4, i32 0, i32 2, !dbg !7124
  %5 = load i32, ptr %num_pages, align 4, !dbg !7124
  %conv5 = zext i32 %5 to i64, !dbg !7122
  call void @atomic_long_add(i64 noundef %conv5, ptr noundef @ttm_pages_allocated) #17, !dbg !7125
  %6 = load ptr, ptr %bdev.addr, align 8, !dbg !7126
  %pool = getelementptr inbounds %struct.ttm_device, ptr %6, i32 0, i32 5, !dbg !7128
  %use_dma32 = getelementptr inbounds %struct.ttm_pool, ptr %pool, i32 0, i32 3, !dbg !7129
  %7 = load i8, ptr %use_dma32, align 1, !dbg !7129, !range !6414, !noundef !1144
  %tobool6 = trunc i8 %7 to i1, !dbg !7129
  br i1 %tobool6, label %if.then7, label %if.end10, !dbg !7130

if.then7:                                         ; preds = %if.then4
  %8 = load ptr, ptr %ttm.addr, align 8, !dbg !7131
  %num_pages8 = getelementptr inbounds %struct.ttm_tt, ptr %8, i32 0, i32 2, !dbg !7132
  %9 = load i32, ptr %num_pages8, align 4, !dbg !7132
  %conv9 = zext i32 %9 to i64, !dbg !7131
  call void @atomic_long_add(i64 noundef %conv9, ptr noundef @ttm_dma32_pages_allocated) #17, !dbg !7133
  br label %if.end10, !dbg !7133

if.end10:                                         ; preds = %if.then7, %if.then4
  br label %if.end11, !dbg !7134

if.end11:                                         ; preds = %if.end10, %if.end2
  br label %while.cond, !dbg !7135

while.cond:                                       ; preds = %if.end25, %if.end11
  %call12 = call i64 @atomic_long_read(ptr noundef @ttm_pages_allocated) #17, !dbg !7136
  %10 = load i64, ptr @ttm_pages_limit, align 8, !dbg !7137
  %cmp = icmp ugt i64 %call12, %10, !dbg !7138
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !7139

lor.rhs:                                          ; preds = %while.cond
  %call14 = call i64 @atomic_long_read(ptr noundef @ttm_dma32_pages_allocated) #17, !dbg !7140
  %11 = load i64, ptr @ttm_dma32_pages_limit, align 8, !dbg !7141
  %cmp15 = icmp ugt i64 %call14, %11, !dbg !7142
  br label %lor.end, !dbg !7139

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %12 = phi i1 [ true, %while.cond ], [ %cmp15, %lor.rhs ]
  br i1 %12, label %while.body, label %while.end, !dbg !7135

while.body:                                       ; preds = %lor.end
  %13 = load ptr, ptr %ctx.addr, align 8, !dbg !7143
  %call17 = call i32 @ttm_global_swapout(ptr noundef %13, i32 noundef 3264) #17, !dbg !7145
  store i32 %call17, ptr %ret, align 4, !dbg !7146
  %14 = load i32, ptr %ret, align 4, !dbg !7147
  %cmp18 = icmp eq i32 %14, 0, !dbg !7149
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !7150

if.then20:                                        ; preds = %while.body
  br label %while.end, !dbg !7151

if.end21:                                         ; preds = %while.body
  %15 = load i32, ptr %ret, align 4, !dbg !7152
  %cmp22 = icmp slt i32 %15, 0, !dbg !7154
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !7155

if.then24:                                        ; preds = %if.end21
  br label %error, !dbg !7156

if.end25:                                         ; preds = %if.end21
  br label %while.cond, !dbg !7135, !llvm.loop !7157

while.end:                                        ; preds = %if.then20, %lor.end
  %16 = load ptr, ptr %bdev.addr, align 8, !dbg !7159
  %funcs = getelementptr inbounds %struct.ttm_device, ptr %16, i32 0, i32 1, !dbg !7161
  %17 = load ptr, ptr %funcs, align 8, !dbg !7161
  %ttm_tt_populate = getelementptr inbounds %struct.ttm_device_funcs, ptr %17, i32 0, i32 1, !dbg !7162
  %18 = load ptr, ptr %ttm_tt_populate, align 8, !dbg !7162
  %tobool26 = icmp ne ptr %18, null, !dbg !7159
  br i1 %tobool26, label %if.then27, label %if.else, !dbg !7163

if.then27:                                        ; preds = %while.end
  %19 = load ptr, ptr %bdev.addr, align 8, !dbg !7164
  %funcs28 = getelementptr inbounds %struct.ttm_device, ptr %19, i32 0, i32 1, !dbg !7165
  %20 = load ptr, ptr %funcs28, align 8, !dbg !7165
  %ttm_tt_populate29 = getelementptr inbounds %struct.ttm_device_funcs, ptr %20, i32 0, i32 1, !dbg !7166
  %21 = load ptr, ptr %ttm_tt_populate29, align 8, !dbg !7166
  %22 = load ptr, ptr %bdev.addr, align 8, !dbg !7167
  %23 = load ptr, ptr %ttm.addr, align 8, !dbg !7168
  %24 = load ptr, ptr %ctx.addr, align 8, !dbg !7169
  %call30 = call i32 %21(ptr noundef %22, ptr noundef %23, ptr noundef %24) #17, !dbg !7164
  store i32 %call30, ptr %ret, align 4, !dbg !7170
  br label %if.end33, !dbg !7171

if.else:                                          ; preds = %while.end
  %25 = load ptr, ptr %bdev.addr, align 8, !dbg !7172
  %pool31 = getelementptr inbounds %struct.ttm_device, ptr %25, i32 0, i32 5, !dbg !7173
  %26 = load ptr, ptr %ttm.addr, align 8, !dbg !7174
  %27 = load ptr, ptr %ctx.addr, align 8, !dbg !7175
  %call32 = call i32 @ttm_pool_alloc(ptr noundef %pool31, ptr noundef %26, ptr noundef %27) #17, !dbg !7176
  store i32 %call32, ptr %ret, align 4, !dbg !7177
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then27
  %28 = load i32, ptr %ret, align 4, !dbg !7178
  %tobool34 = icmp ne i32 %28, 0, !dbg !7178
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !7180

if.then35:                                        ; preds = %if.end33
  br label %error, !dbg !7181

if.end36:                                         ; preds = %if.end33
  %29 = load ptr, ptr %ttm.addr, align 8, !dbg !7182
  %page_flags37 = getelementptr inbounds %struct.ttm_tt, ptr %29, i32 0, i32 1, !dbg !7183
  %30 = load i32, ptr %page_flags37, align 8, !dbg !7184
  %conv38 = zext i32 %30 to i64, !dbg !7184
  %or = or i64 %conv38, 32, !dbg !7184
  %conv39 = trunc i64 %or to i32, !dbg !7184
  store i32 %conv39, ptr %page_flags37, align 8, !dbg !7184
  %31 = load ptr, ptr %ttm.addr, align 8, !dbg !7185
  %page_flags40 = getelementptr inbounds %struct.ttm_tt, ptr %31, i32 0, i32 1, !dbg !7185
  %32 = load i32, ptr %page_flags40, align 8, !dbg !7185
  %conv41 = zext i32 %32 to i64, !dbg !7185
  %and42 = and i64 %conv41, 1, !dbg !7185
  %tobool43 = icmp ne i64 %and42, 0, !dbg !7185
  %lnot = xor i1 %tobool43, true, !dbg !7185
  %lnot44 = xor i1 %lnot, true, !dbg !7185
  %lnot.ext = zext i1 %lnot44 to i32, !dbg !7185
  %conv45 = sext i32 %lnot.ext to i64, !dbg !7185
  %expval = call i64 @llvm.expect.i64(i64 %conv45, i64 0), !dbg !7185
  %tobool46 = icmp ne i64 %expval, 0, !dbg !7185
  br i1 %tobool46, label %if.then47, label %if.end60, !dbg !7187

if.then47:                                        ; preds = %if.end36
  %33 = load ptr, ptr %ttm.addr, align 8, !dbg !7188
  %call48 = call i32 @ttm_tt_swapin(ptr noundef %33) #17, !dbg !7190
  store i32 %call48, ptr %ret, align 4, !dbg !7191
  %34 = load i32, ptr %ret, align 4, !dbg !7192
  %cmp49 = icmp ne i32 %34, 0, !dbg !7192
  %lnot51 = xor i1 %cmp49, true, !dbg !7192
  %lnot53 = xor i1 %lnot51, true, !dbg !7192
  %lnot.ext54 = zext i1 %lnot53 to i32, !dbg !7192
  %conv55 = sext i32 %lnot.ext54 to i64, !dbg !7192
  %expval56 = call i64 @llvm.expect.i64(i64 %conv55, i64 0), !dbg !7192
  %tobool57 = icmp ne i64 %expval56, 0, !dbg !7192
  br i1 %tobool57, label %if.then58, label %if.end59, !dbg !7194

if.then58:                                        ; preds = %if.then47
  %35 = load ptr, ptr %bdev.addr, align 8, !dbg !7195
  %36 = load ptr, ptr %ttm.addr, align 8, !dbg !7197
  call void @ttm_tt_unpopulate(ptr noundef %35, ptr noundef %36) #17, !dbg !7198
  %37 = load i32, ptr %ret, align 4, !dbg !7199
  store i32 %37, ptr %retval, align 4, !dbg !7200
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7200

if.end59:                                         ; preds = %if.then47
  br label %if.end60, !dbg !7201

if.end60:                                         ; preds = %if.end59, %if.end36
  store i32 0, ptr %retval, align 4, !dbg !7202
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7202

error:                                            ; preds = %if.then35, %if.then24
  call void @llvm.dbg.label(metadata !7102), !dbg !7203
  %38 = load ptr, ptr %ttm.addr, align 8, !dbg !7204
  %page_flags61 = getelementptr inbounds %struct.ttm_tt, ptr %38, i32 0, i32 1, !dbg !7206
  %39 = load i32, ptr %page_flags61, align 8, !dbg !7206
  %conv62 = zext i32 %39 to i64, !dbg !7204
  %and63 = and i64 %conv62, 4, !dbg !7207
  %tobool64 = icmp ne i64 %and63, 0, !dbg !7207
  br i1 %tobool64, label %if.end75, label %if.then65, !dbg !7208

if.then65:                                        ; preds = %error
  %40 = load ptr, ptr %ttm.addr, align 8, !dbg !7209
  %num_pages66 = getelementptr inbounds %struct.ttm_tt, ptr %40, i32 0, i32 2, !dbg !7211
  %41 = load i32, ptr %num_pages66, align 4, !dbg !7211
  %conv67 = zext i32 %41 to i64, !dbg !7209
  call void @atomic_long_sub(i64 noundef %conv67, ptr noundef @ttm_pages_allocated) #17, !dbg !7212
  %42 = load ptr, ptr %bdev.addr, align 8, !dbg !7213
  %pool68 = getelementptr inbounds %struct.ttm_device, ptr %42, i32 0, i32 5, !dbg !7215
  %use_dma3269 = getelementptr inbounds %struct.ttm_pool, ptr %pool68, i32 0, i32 3, !dbg !7216
  %43 = load i8, ptr %use_dma3269, align 1, !dbg !7216, !range !6414, !noundef !1144
  %tobool70 = trunc i8 %43 to i1, !dbg !7216
  br i1 %tobool70, label %if.then71, label %if.end74, !dbg !7217

if.then71:                                        ; preds = %if.then65
  %44 = load ptr, ptr %ttm.addr, align 8, !dbg !7218
  %num_pages72 = getelementptr inbounds %struct.ttm_tt, ptr %44, i32 0, i32 2, !dbg !7219
  %45 = load i32, ptr %num_pages72, align 4, !dbg !7219
  %conv73 = zext i32 %45 to i64, !dbg !7218
  call void @atomic_long_sub(i64 noundef %conv73, ptr noundef @ttm_dma32_pages_allocated) #17, !dbg !7220
  br label %if.end74, !dbg !7220

if.end74:                                         ; preds = %if.then71, %if.then65
  br label %if.end75, !dbg !7221

if.end75:                                         ; preds = %if.end74, %error
  %46 = load i32, ptr %ret, align 4, !dbg !7222
  store i32 %46, ptr %retval, align 4, !dbg !7223
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7223

cleanup:                                          ; preds = %if.end75, %if.end60, %if.then58, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !7224
  %47 = load i32, ptr %retval, align 4, !dbg !7224
  ret i32 %47, !dbg !7224
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ttm_tt_is_populated(ptr noundef %tt) #4 align 16 !dbg !7225 {
entry:
  %tt.addr = alloca ptr, align 8
  store ptr %tt, ptr %tt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tt.addr, metadata !7229, metadata !DIExpression()), !dbg !7230
  %0 = load ptr, ptr %tt.addr, align 8, !dbg !7231
  %page_flags = getelementptr inbounds %struct.ttm_tt, ptr %0, i32 0, i32 1, !dbg !7232
  %1 = load i32, ptr %page_flags, align 8, !dbg !7232
  %conv = zext i32 %1 to i64, !dbg !7231
  %and = and i64 %conv, 32, !dbg !7233
  %tobool = icmp ne i64 %and, 0, !dbg !7231
  ret i1 %tobool, !dbg !7234
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_add(i64 noundef %i, ptr noundef %v) #7 align 16 !dbg !7235 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7240, metadata !DIExpression()), !dbg !7242
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7241, metadata !DIExpression()), !dbg !7243
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7244
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #17, !dbg !7245
  %1 = load i64, ptr %i.addr, align 8, !dbg !7246
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7247
  call void @raw_atomic_long_add(i64 noundef %1, ptr noundef %2) #17, !dbg !7248
  ret void, !dbg !7249
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_read(ptr noundef %v) #7 align 16 !dbg !7250 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7256, metadata !DIExpression()), !dbg !7257
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7258
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #17, !dbg !7259
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7260
  %call = call i64 @raw_atomic_long_read(ptr noundef %1) #17, !dbg !7261
  ret i64 %call, !dbg !7262
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7263 dso_local i32 @ttm_global_swapout(ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7266 dso_local i32 @ttm_pool_alloc(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_sub(i64 noundef %i, ptr noundef %v) #7 align 16 !dbg !7269 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7271, metadata !DIExpression()), !dbg !7273
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7272, metadata !DIExpression()), !dbg !7274
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7275
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #17, !dbg !7276
  %1 = load i64, ptr %i.addr, align 8, !dbg !7277
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7278
  call void @raw_atomic_long_sub(i64 noundef %1, ptr noundef %2) #17, !dbg !7279
  ret void, !dbg !7280
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7281 dso_local void @ttm_pool_free(ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ttm_tt_mgr_init(i64 noundef %num_pages, i64 noundef %num_dma32_pages) #0 align 16 !dbg !7284 {
entry:
  %num_pages.addr = alloca i64, align 8
  %num_dma32_pages.addr = alloca i64, align 8
  store i64 %num_pages, ptr %num_pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num_pages.addr, metadata !7288, metadata !DIExpression()), !dbg !7290
  store i64 %num_dma32_pages, ptr %num_dma32_pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num_dma32_pages.addr, metadata !7289, metadata !DIExpression()), !dbg !7291
  %0 = load ptr, ptr @ttm_debugfs_root, align 8, !dbg !7292
  %call = call ptr @debugfs_create_file(ptr noundef @.str.6, i16 noundef zeroext 256, ptr noundef %0, ptr noundef null, ptr noundef @ttm_tt_debugfs_shrink_fops) #17, !dbg !7293
  %1 = load i64, ptr @ttm_pages_limit, align 8, !dbg !7294
  %tobool = icmp ne i64 %1, 0, !dbg !7294
  br i1 %tobool, label %if.end, label %if.then, !dbg !7296

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %num_pages.addr, align 8, !dbg !7297
  store i64 %2, ptr @ttm_pages_limit, align 8, !dbg !7298
  br label %if.end, !dbg !7299

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr @ttm_dma32_pages_limit, align 8, !dbg !7300
  %tobool1 = icmp ne i64 %3, 0, !dbg !7300
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !7302

if.then2:                                         ; preds = %if.end
  %4 = load i64, ptr %num_dma32_pages.addr, align 8, !dbg !7303
  store i64 %4, ptr @ttm_dma32_pages_limit, align 8, !dbg !7304
  br label %if.end3, !dbg !7305

if.end3:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !7306
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7307 dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @ttm_kmap_iter_tt_init(ptr noundef %iter_tt, ptr noundef %tt) #0 align 16 !dbg !7311 {
entry:
  %iter_tt.addr = alloca ptr, align 8
  %tt.addr = alloca ptr, align 8
  %tmp = alloca %struct.pgprot, align 8
  %.compoundliteral = alloca %struct.pgprot, align 8
  %.compoundliteral4 = alloca %struct.pgprot, align 8
  store ptr %iter_tt, ptr %iter_tt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter_tt.addr, metadata !7315, metadata !DIExpression()), !dbg !7317
  store ptr %tt, ptr %tt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tt.addr, metadata !7316, metadata !DIExpression()), !dbg !7318
  %0 = load ptr, ptr %iter_tt.addr, align 8, !dbg !7319
  %base = getelementptr inbounds %struct.ttm_kmap_iter_tt, ptr %0, i32 0, i32 0, !dbg !7320
  %ops = getelementptr inbounds %struct.ttm_kmap_iter, ptr %base, i32 0, i32 0, !dbg !7321
  store ptr @ttm_kmap_iter_tt_ops, ptr %ops, align 8, !dbg !7322
  %1 = load ptr, ptr %tt.addr, align 8, !dbg !7323
  %2 = load ptr, ptr %iter_tt.addr, align 8, !dbg !7324
  %tt1 = getelementptr inbounds %struct.ttm_kmap_iter_tt, ptr %2, i32 0, i32 1, !dbg !7325
  store ptr %1, ptr %tt1, align 8, !dbg !7326
  %3 = load ptr, ptr %tt.addr, align 8, !dbg !7327
  %tobool = icmp ne ptr %3, null, !dbg !7327
  br i1 %tobool, label %if.then, label %if.else, !dbg !7329

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %iter_tt.addr, align 8, !dbg !7330
  %prot = getelementptr inbounds %struct.ttm_kmap_iter_tt, ptr %4, i32 0, i32 2, !dbg !7331
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #15, !dbg !7332
  %5 = load ptr, ptr %tt.addr, align 8, !dbg !7333
  %caching = getelementptr inbounds %struct.ttm_tt, ptr %5, i32 0, i32 6, !dbg !7334
  %6 = load i32, ptr %caching, align 8, !dbg !7334
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !7335
  %7 = load i64, ptr @__default_kernel_pte_mask, align 8, !dbg !7335
  %and = and i64 -9223372036854775453, %7, !dbg !7335
  store i64 %and, ptr %pgprot, align 8, !dbg !7335
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !7332
  %8 = load i64, ptr %coerce.dive, align 8, !dbg !7332
  %call = call i64 @ttm_prot_from_caching(i32 noundef %6, i64 %8) #17, !dbg !7332
  %coerce.dive2 = getelementptr inbounds %struct.pgprot, ptr %tmp, i32 0, i32 0, !dbg !7332
  store i64 %call, ptr %coerce.dive2, align 8, !dbg !7332
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %prot, ptr align 8 %tmp, i64 8, i1 false), !dbg !7332
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #15, !dbg !7332
  br label %if.end, !dbg !7330

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %iter_tt.addr, align 8, !dbg !7336
  %prot3 = getelementptr inbounds %struct.ttm_kmap_iter_tt, ptr %9, i32 0, i32 2, !dbg !7337
  %pgprot5 = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral4, i32 0, i32 0, !dbg !7338
  %10 = load i64, ptr @__default_kernel_pte_mask, align 8, !dbg !7338
  %and6 = and i64 -9223372036854775453, %10, !dbg !7338
  store i64 %and6, ptr %pgprot5, align 8, !dbg !7338
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %prot3, ptr align 8 %.compoundliteral4, i64 8, i1 false), !dbg !7338
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load ptr, ptr %iter_tt.addr, align 8, !dbg !7339
  %base7 = getelementptr inbounds %struct.ttm_kmap_iter_tt, ptr %11, i32 0, i32 0, !dbg !7340
  ret ptr %base7, !dbg !7341
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7342 dso_local i64 @ttm_prot_from_caching(i32 noundef, i64) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @ttm_tt_pages_limit() #0 align 16 !dbg !7345 {
entry:
  %0 = load i64, ptr @ttm_pages_limit, align 8, !dbg !7348
  ret i64 %0, !dbg !7349
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kvcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !7350 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7354, metadata !DIExpression()), !dbg !7357
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7355, metadata !DIExpression()), !dbg !7358
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7356, metadata !DIExpression()), !dbg !7359
  %0 = load i64, ptr %n.addr, align 8, !dbg !7360
  %1 = load i64, ptr %size.addr, align 8, !dbg !7361
  %2 = load i32, ptr %flags.addr, align 4, !dbg !7362
  %or = or i32 %2, 256, !dbg !7363
  %call = call noalias ptr @kvmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #18, !dbg !7364
  ret ptr %call, !dbg !7365
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kvmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !7366 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7368, metadata !DIExpression()), !dbg !7372
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7369, metadata !DIExpression()), !dbg !7373
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7370, metadata !DIExpression()), !dbg !7374
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #15, !dbg !7375
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !7371, metadata !DIExpression()), !dbg !7376
  %0 = load i64, ptr %n.addr, align 8, !dbg !7377
  %1 = load i64, ptr %size.addr, align 8, !dbg !7377
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !7377
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !7377
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !7377
  store i64 %4, ptr %bytes, align 8, !dbg !7377
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !7377
  %lnot = xor i1 %call, true, !dbg !7377
  %lnot1 = xor i1 %lnot, true, !dbg !7377
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7377
  %conv = sext i32 %lnot.ext to i64, !dbg !7377
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7377
  %tobool = icmp ne i64 %expval, 0, !dbg !7377
  br i1 %tobool, label %if.then, label %if.end, !dbg !7379

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !7380
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7380

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !7381
  %6 = load i32, ptr %flags.addr, align 4, !dbg !7382
  %call2 = call noalias ptr @kvmalloc(i64 noundef %5, i32 noundef %6) #19, !dbg !7383
  store ptr %call2, ptr %retval, align 8, !dbg !7384
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7384

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #15, !dbg !7385
  %7 = load ptr, ptr %retval, align 8, !dbg !7385
  ret ptr %7, !dbg !7385
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #4 align 16 !dbg !7386 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !7391, metadata !DIExpression()), !dbg !7392
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !7393, !range !6414, !noundef !1144
  %tobool = trunc i8 %0 to i1, !dbg !7393
  %lnot = xor i1 %tobool, true, !dbg !7393
  %lnot1 = xor i1 %lnot, true, !dbg !7393
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7393
  %conv = sext i32 %lnot.ext to i64, !dbg !7393
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7393
  %tobool2 = icmp ne i64 %expval, 0, !dbg !7393
  ret i1 %tobool2, !dbg !7394
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kvmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !7395 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7399, metadata !DIExpression()), !dbg !7401
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7400, metadata !DIExpression()), !dbg !7402
  %0 = load i64, ptr %size.addr, align 8, !dbg !7403
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7404
  %call = call noalias ptr @kvmalloc_node(i64 noundef %0, i32 noundef %1, i32 noundef -1) #19, !dbg !7405
  ret ptr %call, !dbg !7406
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7407 dso_local noalias ptr @kvmalloc_node(i64 noundef, i32 noundef, i32 noundef) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kmap_local_page(ptr noundef %page) #4 align 16 !dbg !7410 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7415, metadata !DIExpression()), !dbg !7416
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7417
  %call = call ptr @lowmem_page_address(ptr noundef %0) #17, !dbg !7417
  ret ptr %call, !dbg !7418
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7419 dso_local void @copy_page(ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_copy_page_meta(ptr noundef %dst, ptr noundef %src) #4 align 16 !dbg !7423 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !7426, metadata !DIExpression()), !dbg !7428
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !7427, metadata !DIExpression()), !dbg !7429
  ret void, !dbg !7430
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__kunmap_local(ptr noundef %addr) #4 align 16 !dbg !7431 {
entry:
  %addr.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7433, metadata !DIExpression()), !dbg !7434
  ret void, !dbg !7435
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lowmem_page_address(ptr noundef %page) #7 align 16 !dbg !7436 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7440, metadata !DIExpression()), !dbg !7441
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7442
  %1 = load i64, ptr @vmemmap_base, align 8, !dbg !7442
  %2 = inttoptr i64 %1 to ptr, !dbg !7442
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !7442
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64, !dbg !7442
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !7442
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !7442
  %shl = shl i64 %sub.ptr.div, 12, !dbg !7442
  %3 = load i64, ptr @page_offset_base, align 8, !dbg !7442
  %add = add i64 %shl, %3, !dbg !7442
  %4 = inttoptr i64 %add to ptr, !dbg !7442
  ret ptr %4, !dbg !7443
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_compound_head(ptr noundef %page) #4 align 16 !dbg !7444 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %head = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7448, metadata !DIExpression()), !dbg !7450
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #15, !dbg !7451
  call void @llvm.dbg.declare(metadata ptr %head, metadata !7449, metadata !DIExpression()), !dbg !7452
  br label %do.body, !dbg !7453

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !7455

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7455

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7453
  %1 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, !dbg !7453
  %compound_head = getelementptr inbounds %struct.anon.33, ptr %1, i32 0, i32 0, !dbg !7453
  %2 = load volatile i64, ptr %compound_head, align 8, !dbg !7453
  store i64 %2, ptr %tmp, align 8, !dbg !7455
  %3 = load i64, ptr %tmp, align 8, !dbg !7453
  store i64 %3, ptr %head, align 8, !dbg !7452
  %4 = load i64, ptr %head, align 8, !dbg !7457
  %and = and i64 %4, 1, !dbg !7457
  %tobool = icmp ne i64 %and, 0, !dbg !7457
  %lnot = xor i1 %tobool, true, !dbg !7457
  %lnot1 = xor i1 %lnot, true, !dbg !7457
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7457
  %conv = sext i32 %lnot.ext to i64, !dbg !7457
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7457
  %tobool2 = icmp ne i64 %expval, 0, !dbg !7457
  br i1 %tobool2, label %if.then, label %if.end, !dbg !7459

if.then:                                          ; preds = %do.end
  %5 = load i64, ptr %head, align 8, !dbg !7460
  %sub = sub i64 %5, 1, !dbg !7461
  store i64 %sub, ptr %retval, align 8, !dbg !7462
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7462

if.end:                                           ; preds = %do.end
  %6 = load ptr, ptr %page.addr, align 8, !dbg !7463
  %call = call ptr @page_fixed_fake_head(ptr noundef %6) #17, !dbg !7464
  %7 = ptrtoint ptr %call to i64, !dbg !7465
  store i64 %7, ptr %retval, align 8, !dbg !7466
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7466

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #15, !dbg !7467
  %8 = load i64, ptr %retval, align 8, !dbg !7467
  ret i64 %8, !dbg !7467
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @put_devmap_managed_page(ptr noundef %page) #4 align 16 !dbg !7468 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7470, metadata !DIExpression()), !dbg !7471
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7472
  %call = call zeroext i1 @put_devmap_managed_page_refs(ptr noundef %0, i32 noundef 1) #17, !dbg !7473
  ret i1 %call, !dbg !7474
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @folio_put(ptr noundef %folio) #4 align 16 !dbg !7475 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !7477, metadata !DIExpression()), !dbg !7478
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !7479
  %call = call i32 @folio_put_testzero(ptr noundef %0) #17, !dbg !7481
  %tobool = icmp ne i32 %call, 0, !dbg !7481
  br i1 %tobool, label %if.then, label %if.end, !dbg !7482

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %folio.addr, align 8, !dbg !7483
  call void @__folio_put(ptr noundef %1) #17, !dbg !7484
  br label %if.end, !dbg !7484

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !7485
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @page_fixed_fake_head(ptr noundef %page) #7 align 16 !dbg !7486 {
entry:
  %retval = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  %head = alloca i64, align 8
  %tmp19 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7490, metadata !DIExpression()), !dbg !7497
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #15, !dbg !7498
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !7491, metadata !DIExpression()), !dbg !7498
  %call = call zeroext i1 @arch_static_branch(ptr noundef @hugetlb_optimize_vmemmap_key, i1 noundef zeroext false) #17, !dbg !7499
  %frombool = zext i1 %call to i8, !dbg !7499
  store i8 %frombool, ptr %branch, align 1, !dbg !7499
  %0 = load i8, ptr %branch, align 1, !dbg !7498, !range !6414, !noundef !1144
  %tobool = trunc i8 %0 to i1, !dbg !7498
  %lnot = xor i1 %tobool, true, !dbg !7498
  %lnot1 = xor i1 %lnot, true, !dbg !7498
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7498
  %conv = sext i32 %lnot.ext to i64, !dbg !7498
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7498
  store i64 %expval, ptr %tmp, align 8, !dbg !7502
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #15, !dbg !7503
  %1 = load i64, ptr %tmp, align 8, !dbg !7498
  %tobool2 = icmp ne i64 %1, 0, !dbg !7503
  br i1 %tobool2, label %if.end, label %if.then, !dbg !7504

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %page.addr, align 8, !dbg !7505
  store ptr %2, ptr %retval, align 8, !dbg !7506
  br label %return, !dbg !7506

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !dbg !7507
  %4 = ptrtoint ptr %3 to i64, !dbg !7507
  %and = and i64 %4, 4095, !dbg !7507
  %cmp = icmp eq i64 %and, 0, !dbg !7507
  br i1 %cmp, label %land.lhs.true, label %if.end31, !dbg !7508

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %page.addr, align 8, !dbg !7509
  %flags = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 0, !dbg !7509
  %6 = ptrtoint ptr %flags to i64, !dbg !7509
  %cmp4 = icmp ne i64 %6, 0, !dbg !7509
  %conv5 = zext i1 %cmp4 to i32, !dbg !7509
  %7 = call i1 @llvm.is.constant.i32(i32 %conv5), !dbg !7509
  br i1 %7, label %land.lhs.true6, label %cond.false, !dbg !7509

land.lhs.true6:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %page.addr, align 8, !dbg !7509
  %flags7 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 0, !dbg !7509
  %9 = ptrtoint ptr %flags7 to i64, !dbg !7509
  %cmp8 = icmp ne i64 %9, 0, !dbg !7509
  br i1 %cmp8, label %land.lhs.true10, label %cond.false, !dbg !7509

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %10 = load ptr, ptr %page.addr, align 8, !dbg !7509
  %flags11 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 0, !dbg !7509
  %11 = load i64, ptr %flags11, align 16, !dbg !7509
  %12 = call i1 @llvm.is.constant.i64(i64 %11), !dbg !7509
  br i1 %12, label %cond.true, label %cond.false, !dbg !7510

cond.true:                                        ; preds = %land.lhs.true10
  %13 = load ptr, ptr %page.addr, align 8, !dbg !7509
  %flags12 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 0, !dbg !7509
  %call13 = call zeroext i1 @const_test_bit(i64 noundef 6, ptr noundef %flags12) #17, !dbg !7509
  br i1 %call13, label %if.then18, label %if.end31, !dbg !7509

cond.false:                                       ; preds = %land.lhs.true10, %land.lhs.true6, %land.lhs.true
  %14 = load ptr, ptr %page.addr, align 8, !dbg !7509
  %flags15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 0, !dbg !7509
  %call16 = call zeroext i1 @_test_bit(i64 noundef 6, ptr noundef %flags15) #17, !dbg !7509
  br i1 %call16, label %if.then18, label %if.end31, !dbg !7510

if.then18:                                        ; preds = %cond.false, %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #15, !dbg !7511
  call void @llvm.dbg.declare(metadata ptr %head, metadata !7494, metadata !DIExpression()), !dbg !7512
  br label %do.body, !dbg !7513

do.body:                                          ; preds = %if.then18
  br label %do.cond, !dbg !7515

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7515

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %page.addr, align 8, !dbg !7513
  %arrayidx = getelementptr %struct.page, ptr %15, i64 1, !dbg !7513
  %16 = getelementptr inbounds %struct.page, ptr %arrayidx, i32 0, i32 1, !dbg !7513
  %compound_head = getelementptr inbounds %struct.anon.33, ptr %16, i32 0, i32 0, !dbg !7513
  %17 = load volatile i64, ptr %compound_head, align 8, !dbg !7513
  store i64 %17, ptr %tmp19, align 8, !dbg !7515
  %18 = load i64, ptr %tmp19, align 8, !dbg !7513
  store i64 %18, ptr %head, align 8, !dbg !7512
  %19 = load i64, ptr %head, align 8, !dbg !7517
  %and20 = and i64 %19, 1, !dbg !7517
  %tobool21 = icmp ne i64 %and20, 0, !dbg !7517
  %lnot22 = xor i1 %tobool21, true, !dbg !7517
  %lnot24 = xor i1 %lnot22, true, !dbg !7517
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !7517
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !7517
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 1), !dbg !7517
  %tobool28 = icmp ne i64 %expval27, 0, !dbg !7517
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !7519

if.then29:                                        ; preds = %do.end
  %20 = load i64, ptr %head, align 8, !dbg !7520
  %sub = sub i64 %20, 1, !dbg !7521
  %21 = inttoptr i64 %sub to ptr, !dbg !7522
  store ptr %21, ptr %retval, align 8, !dbg !7523
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7523

if.end30:                                         ; preds = %do.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7524
  br label %cleanup, !dbg !7524

cleanup:                                          ; preds = %if.end30, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #15, !dbg !7524
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end31, !dbg !7525

if.end31:                                         ; preds = %cleanup.cont, %cond.false, %cond.true, %if.end
  %22 = load ptr, ptr %page.addr, align 8, !dbg !7526
  store ptr %22, ptr %retval, align 8, !dbg !7527
  br label %return, !dbg !7527

return:                                           ; preds = %if.end31, %cleanup, %if.then
  %23 = load ptr, ptr %retval, align 8, !dbg !7528
  ret ptr %23, !dbg !7528

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #7 align 16 !dbg !7529 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !7546, metadata !DIExpression()), !dbg !7549
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !7547, metadata !DIExpression()), !dbg !7550
  %0 = load ptr, ptr %key.addr, align 8, !dbg !7551
  %1 = load i8, ptr %branch.addr, align 1, !dbg !7552, !range !6414, !noundef !1144
  %tobool = trunc i8 %1 to i1, !dbg !7552
  %conv = zext i1 %tobool to i32, !dbg !7552
  %or = or i32 2, %conv, !dbg !7553
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #15
          to label %asm.fallthrough [label %l_yes], !dbg !7554, !srcloc !7555

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !7556
  br label %return, !dbg !7556

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !7548), !dbg !7557
  store i1 true, ptr %retval, align 1, !dbg !7558
  br label %return, !dbg !7558

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !7559
  ret i1 %2, !dbg !7559
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #12

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !7560 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7565, metadata !DIExpression()), !dbg !7570
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7566, metadata !DIExpression()), !dbg !7571
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !7572
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7567, metadata !DIExpression()), !dbg !7573
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7574
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7575
  %div = udiv i64 %1, 64, !dbg !7575
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7576
  store ptr %add.ptr, ptr %p, align 8, !dbg !7573
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #15, !dbg !7577
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !7568, metadata !DIExpression()), !dbg !7578
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7579
  %rem = urem i64 %2, 64, !dbg !7579
  %shl = shl i64 1, %rem, !dbg !7579
  store i64 %shl, ptr %mask, align 8, !dbg !7578
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #15, !dbg !7580
  call void @llvm.dbg.declare(metadata ptr %val, metadata !7569, metadata !DIExpression()), !dbg !7581
  %3 = load ptr, ptr %p, align 8, !dbg !7582
  %4 = load i64, ptr %3, align 8, !dbg !7583
  store i64 %4, ptr %val, align 8, !dbg !7581
  %5 = load i64, ptr %val, align 8, !dbg !7584
  %6 = load i64, ptr %mask, align 8, !dbg !7585
  %and = and i64 %5, %6, !dbg !7586
  %tobool = icmp ne i64 %and, 0, !dbg !7587
  %lnot = xor i1 %tobool, true, !dbg !7587
  %lnot1 = xor i1 %lnot, true, !dbg !7588
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #15, !dbg !7589
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #15, !dbg !7589
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !7589
  ret i1 %lnot1, !dbg !7590
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !7591 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7594, metadata !DIExpression()), !dbg !7596
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7595, metadata !DIExpression()), !dbg !7597
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7598
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7599
  %div = udiv i64 %1, 64, !dbg !7599
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7600
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !7601
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7602
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7603
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !7604
  ret i1 %call, !dbg !7605
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !7606 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7614, metadata !DIExpression()), !dbg !7616
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7615, metadata !DIExpression()), !dbg !7617
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7618
  %1 = load i64, ptr %size.addr, align 8, !dbg !7619
  %conv = trunc i64 %1 to i32, !dbg !7619
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !7620
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7621
  %3 = load i64, ptr %size.addr, align 8, !dbg !7621
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !7621
  ret void, !dbg !7622
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !7623 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7626, metadata !DIExpression()), !dbg !7628
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7627, metadata !DIExpression()), !dbg !7629
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7630
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7631
  br i1 %1, label %cond.true, label %cond.false, !dbg !7631

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7632
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7633
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !7634
  %conv = zext i1 %call to i32, !dbg !7634
  br label %cond.end, !dbg !7631

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7635
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7636
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #17, !dbg !7637
  %conv2 = zext i1 %call1 to i32, !dbg !7637
  br label %cond.end, !dbg !7631

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !7631
  %tobool = icmp ne i32 %cond, 0, !dbg !7631
  ret i1 %tobool, !dbg !7638
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !7639 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7644, metadata !DIExpression()), !dbg !7646
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7645, metadata !DIExpression()), !dbg !7647
  ret i1 true, !dbg !7648
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !7649 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7654, metadata !DIExpression()), !dbg !7657
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7655, metadata !DIExpression()), !dbg !7658
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7656, metadata !DIExpression()), !dbg !7659
  ret void, !dbg !7660
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !7661 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7665, metadata !DIExpression()), !dbg !7667
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7666, metadata !DIExpression()), !dbg !7668
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7669
  %and = and i64 %0, 63, !dbg !7670
  %shl = shl i64 1, %and, !dbg !7671
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !7672
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7673
  %shr = ashr i64 %2, 6, !dbg !7674
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !7672
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !7672
  %and1 = and i64 %shl, %3, !dbg !7675
  %cmp = icmp ne i64 %and1, 0, !dbg !7676
  ret i1 %cmp, !dbg !7677
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !7678 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7680, metadata !DIExpression()), !dbg !7683
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7681, metadata !DIExpression()), !dbg !7684
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #15, !dbg !7685
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !7682, metadata !DIExpression()), !dbg !7686
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7687
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7688
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #15, !dbg !7689, !srcloc !7690
  %3 = icmp ult i8 %2, 2, !dbg !7689
  call void @llvm.assume(i1 %3), !dbg !7689
  store i8 %2, ptr %oldbit, align 1, !dbg !7689
  %4 = load i8, ptr %oldbit, align 1, !dbg !7691, !range !6414, !noundef !1144
  %tobool = trunc i8 %4 to i1, !dbg !7691
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #15, !dbg !7692
  ret i1 %tobool, !dbg !7693
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @put_devmap_managed_page_refs(ptr noundef %page, i32 noundef %refs) #4 align 16 !dbg !7694 {
entry:
  %page.addr = alloca ptr, align 8
  %refs.addr = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7698, metadata !DIExpression()), !dbg !7700
  store i32 %refs, ptr %refs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %refs.addr, metadata !7699, metadata !DIExpression()), !dbg !7701
  ret i1 false, !dbg !7702
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @folio_put_testzero(ptr noundef %folio) #4 align 16 !dbg !7703 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !7705, metadata !DIExpression()), !dbg !7706
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !7707
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !7708
  %call = call i32 @put_page_testzero(ptr noundef %1) #17, !dbg !7709
  ret i32 %call, !dbg !7710
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7711 dso_local void @__folio_put(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @put_page_testzero(ptr noundef %page) #4 align 16 !dbg !7712 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7716, metadata !DIExpression()), !dbg !7717
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7718
  %call = call i32 @page_ref_dec_and_test(ptr noundef %0) #17, !dbg !7719
  ret i32 %call, !dbg !7720
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @page_ref_dec_and_test(ptr noundef %page) #4 align 16 !dbg !7721 {
entry:
  %page.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7724, metadata !DIExpression()), !dbg !7726
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !7727
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7725, metadata !DIExpression()), !dbg !7728
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7729
  %_refcount = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3, !dbg !7730
  %call = call zeroext i1 @atomic_dec_and_test(ptr noundef %_refcount) #17, !dbg !7731
  %conv = zext i1 %call to i32, !dbg !7731
  store i32 %conv, ptr %ret, align 4, !dbg !7728
  %1 = load i32, ptr %ret, align 4, !dbg !7732
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !7733
  ret i32 %1, !dbg !7734
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_dec_and_test(ptr noundef %v) #7 align 16 !dbg !7735 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7740, metadata !DIExpression()), !dbg !7741
  br label %do.body, !dbg !7742

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7743

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7745
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !7746
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7747
  %call = call zeroext i1 @raw_atomic_dec_and_test(ptr noundef %1) #17, !dbg !7748
  ret i1 %call, !dbg !7749
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !7750 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7752, metadata !DIExpression()), !dbg !7754
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7753, metadata !DIExpression()), !dbg !7755
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7756
  %1 = load i64, ptr %size.addr, align 8, !dbg !7757
  %conv = trunc i64 %1 to i32, !dbg !7757
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !7758
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7759
  %3 = load i64, ptr %size.addr, align 8, !dbg !7759
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #17, !dbg !7759
  ret void, !dbg !7760
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_dec_and_test(ptr noundef %v) #7 align 16 !dbg !7761 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7764, metadata !DIExpression()), !dbg !7765
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7766
  %call = call zeroext i1 @arch_atomic_dec_and_test(ptr noundef %0) #17, !dbg !7767
  ret i1 %call, !dbg !7768
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !7769 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7771, metadata !DIExpression()), !dbg !7773
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7772, metadata !DIExpression()), !dbg !7774
  ret i1 true, !dbg !7775
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_dec_and_test(ptr noundef %v) #7 align 16 !dbg !7776 {
entry:
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7779, metadata !DIExpression()), !dbg !7782
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #15, !dbg !7783
  call void @llvm.dbg.declare(metadata ptr %c, metadata !7780, metadata !DIExpression()), !dbg !7783
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7783
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !7783
  %1 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #15, !dbg !7783, !srcloc !7784
  %2 = icmp ult i8 %1, 2, !dbg !7783
  call void @llvm.assume(i1 %2), !dbg !7783
  store i8 %1, ptr %c, align 1, !dbg !7783
  %3 = load i8, ptr %c, align 1, !dbg !7783, !range !6414, !noundef !1144
  %tobool = trunc i8 %3 to i1, !dbg !7783
  %frombool = zext i1 %tobool to i8, !dbg !7783
  store i8 %frombool, ptr %tmp, align 1, !dbg !7783
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #15, !dbg !7785
  %4 = load i8, ptr %tmp, align 1, !dbg !7783, !range !6414, !noundef !1144
  %tobool1 = trunc i8 %4 to i1, !dbg !7783
  ret i1 %tobool1, !dbg !7786
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_add(i64 noundef %i, ptr noundef %v) #7 align 16 !dbg !7787 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7789, metadata !DIExpression()), !dbg !7791
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7790, metadata !DIExpression()), !dbg !7792
  %0 = load i64, ptr %i.addr, align 8, !dbg !7793
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7794
  call void @raw_atomic64_add(i64 noundef %0, ptr noundef %1) #17, !dbg !7795
  ret void, !dbg !7796
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_add(i64 noundef %i, ptr noundef %v) #7 align 16 !dbg !7797 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7802, metadata !DIExpression()), !dbg !7804
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7803, metadata !DIExpression()), !dbg !7805
  %0 = load i64, ptr %i.addr, align 8, !dbg !7806
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7807
  call void @arch_atomic64_add(i64 noundef %0, ptr noundef %1) #17, !dbg !7808
  ret void, !dbg !7809
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_add(i64 noundef %i, ptr noundef %v) #7 align 16 !dbg !7810 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7813, metadata !DIExpression()), !dbg !7815
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7814, metadata !DIExpression()), !dbg !7816
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7817
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !7818
  %1 = load i64, ptr %i.addr, align 8, !dbg !7819
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7820
  %counter1 = getelementptr inbounds %struct.atomic64_t, ptr %2, i32 0, i32 0, !dbg !7821
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; addq $1,$0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %1, ptr elementtype(i64) %counter1) #15, !dbg !7822, !srcloc !7823
  ret void, !dbg !7824
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_read(ptr noundef %v) #7 align 16 !dbg !7825 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7827, metadata !DIExpression()), !dbg !7828
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7829
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #17, !dbg !7830
  ret i64 %call, !dbg !7831
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #7 align 16 !dbg !7832 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7838, metadata !DIExpression()), !dbg !7839
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7840
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #17, !dbg !7841
  ret i64 %call, !dbg !7842
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #7 align 16 !dbg !7843 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7845, metadata !DIExpression()), !dbg !7846
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7847
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !7847
  %1 = load volatile i64, ptr %counter, align 8, !dbg !7847
  ret i64 %1, !dbg !7848
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_sub(i64 noundef %i, ptr noundef %v) #7 align 16 !dbg !7849 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7851, metadata !DIExpression()), !dbg !7853
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7852, metadata !DIExpression()), !dbg !7854
  %0 = load i64, ptr %i.addr, align 8, !dbg !7855
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7856
  call void @raw_atomic64_sub(i64 noundef %0, ptr noundef %1) #17, !dbg !7857
  ret void, !dbg !7858
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_sub(i64 noundef %i, ptr noundef %v) #7 align 16 !dbg !7859 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7861, metadata !DIExpression()), !dbg !7863
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7862, metadata !DIExpression()), !dbg !7864
  %0 = load i64, ptr %i.addr, align 8, !dbg !7865
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7866
  call void @arch_atomic64_sub(i64 noundef %0, ptr noundef %1) #17, !dbg !7867
  ret void, !dbg !7868
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_sub(i64 noundef %i, ptr noundef %v) #7 align 16 !dbg !7869 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7871, metadata !DIExpression()), !dbg !7873
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7872, metadata !DIExpression()), !dbg !7874
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7875
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !7876
  %1 = load i64, ptr %i.addr, align 8, !dbg !7877
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7878
  %counter1 = getelementptr inbounds %struct.atomic64_t, ptr %2, i32 0, i32 0, !dbg !7879
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; subq $1,$0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %1, ptr elementtype(i64) %counter1) #15, !dbg !7880, !srcloc !7881
  ret void, !dbg !7882
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ttm_tt_debugfs_shrink_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !7883 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !7885, metadata !DIExpression()), !dbg !7887
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !7886, metadata !DIExpression()), !dbg !7887
  %0 = load ptr, ptr %file.addr, align 8, !dbg !7887
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !7887
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 47, !dbg !7887
  %2 = load ptr, ptr %i_private, align 8, !dbg !7887
  %call = call i32 @single_open(ptr noundef %0, ptr noundef @ttm_tt_debugfs_shrink_show, ptr noundef %2) #17, !dbg !7887
  ret i32 %call, !dbg !7887
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7888 dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ttm_tt_debugfs_shrink_show(ptr noundef %m, ptr noundef %data) #0 align 16 !dbg !7891 {
entry:
  %m.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %ctx = alloca %struct.ttm_operation_ctx, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !7893, metadata !DIExpression()), !dbg !7896
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !7894, metadata !DIExpression()), !dbg !7897
  call void @llvm.lifetime.start.p0(i64 24, ptr %ctx) #15, !dbg !7898
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !7895, metadata !DIExpression()), !dbg !7899
  call void @llvm.memset.p0.i64(ptr align 8 %ctx, i8 0, i64 24, i1 false), !dbg !7899
  %0 = load ptr, ptr %m.addr, align 8, !dbg !7900
  %call = call i32 @ttm_global_swapout(ptr noundef %ctx, i32 noundef 3264) #17, !dbg !7901
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef @.str.7, i32 noundef %call) #17, !dbg !7902
  call void @llvm.lifetime.end.p0(i64 24, ptr %ctx) #15, !dbg !7903
  ret i32 0, !dbg !7904
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7905 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_kmap_iter_tt_map_local(ptr noundef %iter, ptr noundef %dmap, i64 noundef %i) #0 align 16 !dbg !7908 {
entry:
  %iter.addr = alloca ptr, align 8
  %dmap.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  %iter_tt = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !7910, metadata !DIExpression()), !dbg !7916
  store ptr %dmap, ptr %dmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dmap.addr, metadata !7911, metadata !DIExpression()), !dbg !7917
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7912, metadata !DIExpression()), !dbg !7918
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter_tt) #15, !dbg !7919
  call void @llvm.dbg.declare(metadata ptr %iter_tt, metadata !7913, metadata !DIExpression()), !dbg !7920
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !7921
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7914, metadata !DIExpression()), !dbg !7921
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !7921
  store ptr %0, ptr %__mptr, align 8, !dbg !7921
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7921
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !7921
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7921
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !7922
  %2 = load ptr, ptr %tmp, align 8, !dbg !7921
  store ptr %2, ptr %iter_tt, align 8, !dbg !7920
  %3 = load ptr, ptr %dmap.addr, align 8, !dbg !7923
  %4 = load ptr, ptr %iter_tt, align 8, !dbg !7924
  %tt = getelementptr inbounds %struct.ttm_kmap_iter_tt, ptr %4, i32 0, i32 1, !dbg !7925
  %5 = load ptr, ptr %tt, align 8, !dbg !7925
  %pages = getelementptr inbounds %struct.ttm_tt, ptr %5, i32 0, i32 0, !dbg !7926
  %6 = load ptr, ptr %pages, align 8, !dbg !7926
  %7 = load i64, ptr %i.addr, align 8, !dbg !7927
  %arrayidx = getelementptr ptr, ptr %6, i64 %7, !dbg !7924
  %8 = load ptr, ptr %arrayidx, align 8, !dbg !7924
  %9 = load ptr, ptr %iter_tt, align 8, !dbg !7928
  %prot = getelementptr inbounds %struct.ttm_kmap_iter_tt, ptr %9, i32 0, i32 2, !dbg !7929
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0, !dbg !7930
  %10 = load i64, ptr %coerce.dive, align 8, !dbg !7930
  %call = call ptr @kmap_local_page_prot(ptr noundef %8, i64 %10) #17, !dbg !7930
  call void @iosys_map_set_vaddr(ptr noundef %3, ptr noundef %call) #17, !dbg !7931
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter_tt) #15, !dbg !7932
  ret void, !dbg !7932
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_kmap_iter_tt_unmap_local(ptr noundef %iter, ptr noundef %map) #0 align 16 !dbg !7933 {
entry:
  %iter.addr = alloca ptr, align 8
  %map.addr = alloca ptr, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !7935, metadata !DIExpression()), !dbg !7937
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !7936, metadata !DIExpression()), !dbg !7938
  br label %do.body, !dbg !7939

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !7940

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !7942

do.end:                                           ; preds = %do.body1
  %0 = load ptr, ptr %map.addr, align 8, !dbg !7940
  %1 = getelementptr inbounds %struct.iosys_map, ptr %0, i32 0, i32 0, !dbg !7940
  %2 = load ptr, ptr %1, align 8, !dbg !7940
  call void @__kunmap_local(ptr noundef %2) #17, !dbg !7940
  br label %do.end2, !dbg !7940

do.end2:                                          ; preds = %do.end
  ret void, !dbg !7944
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @iosys_map_set_vaddr(ptr noundef %map, ptr noundef %vaddr) #4 align 16 !dbg !7945 {
entry:
  %map.addr = alloca ptr, align 8
  %vaddr.addr = alloca ptr, align 8
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !7949, metadata !DIExpression()), !dbg !7951
  store ptr %vaddr, ptr %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vaddr.addr, metadata !7950, metadata !DIExpression()), !dbg !7952
  %0 = load ptr, ptr %vaddr.addr, align 8, !dbg !7953
  %1 = load ptr, ptr %map.addr, align 8, !dbg !7954
  %2 = getelementptr inbounds %struct.iosys_map, ptr %1, i32 0, i32 0, !dbg !7955
  store ptr %0, ptr %2, align 8, !dbg !7956
  %3 = load ptr, ptr %map.addr, align 8, !dbg !7957
  %is_iomem = getelementptr inbounds %struct.iosys_map, ptr %3, i32 0, i32 1, !dbg !7958
  store i8 0, ptr %is_iomem, align 8, !dbg !7959
  ret void, !dbg !7960
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kmap_local_page_prot(ptr noundef %page, i64 %prot.coerce) #4 align 16 !dbg !7961 {
entry:
  %prot = alloca %struct.pgprot, align 8
  %page.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0
  store i64 %prot.coerce, ptr %coerce.dive, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7965, metadata !DIExpression()), !dbg !7967
  call void @llvm.dbg.declare(metadata ptr %prot, metadata !7966, metadata !DIExpression()), !dbg !7968
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7969
  %call = call ptr @kmap_local_page(ptr noundef %0) #17, !dbg !7970
  ret ptr %call, !dbg !7971
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { cold noredzone }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0,1) }
attributes #19 = { noredzone allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!6378, !6379, !6380, !6381, !6382, !6383, !6384, !6385}
!llvm.ident = !{!6386}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_pages_limit362", scope: !2, file: !3, line: 49, type: !6375, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/ttm/.ttm_tt.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/ttm/ttm\22 -D KBUILD_BASENAME=\22ttm_tt\22 -D KBUILD_MODNAME=\22ttm\22 -D __KBUILD_MODNAME=kmod_ttm -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/ttm/ttm_tt.ll drivers/gpu/drm/ttm/ttm_tt.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !355, globals: !5586, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/ttm/ttm_tt.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2c9af557ede47d156ff9dc65ebbb9c49")
!4 = !{!5, !13, !22, !27, !123, !129, !145, !153, !160, !168, !173, !182, !187, !192, !198, !204, !211, !219, !226, !232, !241, !246, !251, !257, !269, !276, !283, !288, !294, !300, !310, !315}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_value_type", file: !14, line: 51, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/fs_context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "58f4e15024eca636c2bdb50c4534d2c5")
!15 = !{!16, !17, !18, !19, !20, !21}
!16 = !DIEnumerator(name: "fs_value_is_undefined", value: 0)
!17 = !DIEnumerator(name: "fs_value_is_flag", value: 1)
!18 = !DIEnumerator(name: "fs_value_is_string", value: 2)
!19 = !DIEnumerator(name: "fs_value_is_blob", value: 3)
!20 = !DIEnumerator(name: "fs_value_is_filename", value: 4)
!21 = !DIEnumerator(name: "fs_value_is_file", value: 5)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !23, line: 65, baseType: !7, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!24 = !{!25, !26}
!25 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!26 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !29, file: !28, line: 147, baseType: !7, size: 32, elements: !120)
!28 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !28, line: 135, size: 512, elements: !30)
!30 = !{!31, !35, !37, !39, !43, !44, !60, !118, !119}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !29, file: !28, line: 136, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !29, file: !28, line: 137, baseType: !36, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !29, file: !28, line: 138, baseType: !38, size: 32, offset: 128)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !29, file: !28, line: 139, baseType: !40, size: 16, offset: 160)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !41, line: 24, baseType: !42)
!41 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!42 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !29, file: !28, line: 150, baseType: !27, size: 32, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !29, file: !28, line: 151, baseType: !45, size: 64, offset: 256)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !28, line: 64, baseType: !47)
!47 = !DISubroutineType(types: !48)
!48 = !{!38, !49, !38, !36, !50, !56}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !41, line: 61, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !53, line: 72, baseType: !54)
!53 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !53, line: 16, baseType: !55)
!55 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !41, line: 52, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !53, line: 88, baseType: !59)
!59 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !29, file: !28, line: 152, baseType: !61, size: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !28, line: 117, size: 256, elements: !63)
!63 = !{!64, !69}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !62, file: !28, line: 118, baseType: !65, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !41, line: 174, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 172, size: 32, elements: !67)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !66, file: !41, line: 173, baseType: !38, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !62, file: !28, line: 119, baseType: !70, size: 192, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !71, line: 41, baseType: !72)
!71 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !71, line: 37, size: 192, elements: !73)
!73 = !{!74, !112}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !72, file: !71, line: 38, baseType: !75, size: 32)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !76, line: 29, baseType: !77)
!76 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !76, line: 17, size: 32, elements: !78)
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_member, scope: !77, file: !76, line: 18, baseType: !80, size: 32)
!80 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !77, file: !76, line: 18, size: 32, elements: !81)
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !80, file: !76, line: 19, baseType: !83, size: 32)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !84, line: 14, size: 32, elements: !85)
!84 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !83, file: !84, line: 15, baseType: !87, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !88, line: 44, baseType: !89)
!88 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !88, line: 14, size: 32, elements: !90)
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !88, line: 15, baseType: !92, size: 32)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !89, file: !88, line: 15, size: 32, elements: !93)
!93 = !{!94, !95, !105}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !92, file: !88, line: 16, baseType: !65, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, scope: !92, file: !88, line: 24, baseType: !96, size: 16)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !92, file: !88, line: 24, size: 16, elements: !97)
!97 = !{!98, !104}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !96, file: !88, line: 25, baseType: !99, size: 8)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !100, line: 17, baseType: !101)
!100 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !102, line: 21, baseType: !103)
!102 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!103 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !96, file: !88, line: 26, baseType: !99, size: 8, offset: 8)
!105 = !DIDerivedType(tag: DW_TAG_member, scope: !92, file: !88, line: 28, baseType: !106, size: 32)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !92, file: !88, line: 28, size: 32, elements: !107)
!107 = !{!108, !111}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !106, file: !88, line: 29, baseType: !109, size: 16)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !100, line: 19, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !102, line: 24, baseType: !42)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !106, file: !88, line: 30, baseType: !109, size: 16, offset: 16)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !72, file: !71, line: 39, baseType: !113, size: 128, offset: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !41, line: 190, size: 128, elements: !114)
!114 = !{!115, !117}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !113, file: !41, line: 191, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !113, file: !41, line: 191, baseType: !116, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !29, file: !28, line: 153, baseType: !36, size: 64, offset: 384)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !29, file: !28, line: 154, baseType: !36, size: 64, offset: 448)
!120 = !{!121, !122}
!121 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!122 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !124, line: 16, baseType: !7, size: 32, elements: !125)
!124 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!125 = !{!126, !127, !128}
!126 = !DIEnumerator(name: "TT_NONE", value: 0)
!127 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!128 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !130, line: 1325, baseType: !7, size: 32, elements: !131)
!130 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144}
!132 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!133 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!134 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!135 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!136 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!137 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!138 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!139 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!140 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!141 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!142 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!143 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!144 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !146, line: 68, baseType: !7, size: 32, elements: !147)
!146 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!147 = !{!148, !149, !150, !151, !152}
!148 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!149 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!150 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!151 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!152 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !154, line: 51, baseType: !7, size: 32, elements: !155)
!154 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!155 = !{!156, !157, !158, !159}
!156 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!157 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!158 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!159 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !161, line: 9, baseType: !7, size: 32, elements: !162)
!161 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!162 = !{!163, !164, !165, !166, !167}
!163 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!164 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!165 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!166 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!167 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_purpose", file: !14, line: 29, baseType: !7, size: 32, elements: !169)
!169 = !{!170, !171, !172}
!170 = !DIEnumerator(name: "FS_CONTEXT_FOR_MOUNT", value: 0)
!171 = !DIEnumerator(name: "FS_CONTEXT_FOR_SUBMOUNT", value: 1)
!172 = !DIEnumerator(name: "FS_CONTEXT_FOR_RECONFIGURE", value: 2)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_phase", file: !14, line: 38, baseType: !7, size: 32, elements: !174)
!174 = !{!175, !176, !177, !178, !179, !180, !181}
!175 = !DIEnumerator(name: "FS_CONTEXT_CREATE_PARAMS", value: 0)
!176 = !DIEnumerator(name: "FS_CONTEXT_CREATING", value: 1)
!177 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_MOUNT", value: 2)
!178 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_RECONF", value: 3)
!179 = !DIEnumerator(name: "FS_CONTEXT_RECONF_PARAMS", value: 4)
!180 = !DIEnumerator(name: "FS_CONTEXT_RECONFIGURING", value: 5)
!181 = !DIEnumerator(name: "FS_CONTEXT_FAILED", value: 6)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !183, line: 32, baseType: !7, size: 32, elements: !184)
!183 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!184 = !{!185, !186}
!185 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!186 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !188, line: 2052, baseType: !7, size: 32, elements: !189)
!188 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!189 = !{!190, !191}
!190 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!191 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !193, line: 54, baseType: !7, size: 32, elements: !194)
!193 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!194 = !{!195, !196, !197}
!195 = !DIEnumerator(name: "USRQUOTA", value: 0)
!196 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!197 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!198 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !199, line: 45, baseType: !7, size: 32, elements: !200)
!199 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!200 = !{!201, !202, !203}
!201 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!202 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!203 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !205, line: 487, baseType: !7, size: 32, elements: !206)
!205 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!206 = !{!207, !208, !209, !210}
!207 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!208 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!209 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!210 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !212, line: 620, baseType: !7, size: 32, elements: !213)
!212 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!213 = !{!214, !215, !216, !217, !218}
!214 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!215 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!216 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!217 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!218 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !212, line: 597, baseType: !38, size: 32, elements: !220)
!220 = !{!221, !222, !223, !224, !225}
!221 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!222 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!223 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!224 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!225 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !227, line: 26, baseType: !7, size: 32, elements: !228)
!227 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!228 = !{!229, !230, !231}
!229 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!230 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!231 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!232 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !205, line: 547, baseType: !7, size: 32, elements: !233)
!233 = !{!234, !235, !236, !237, !238, !239, !240}
!234 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!235 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!236 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!237 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!238 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!239 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!240 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!241 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !205, line: 564, baseType: !7, size: 32, elements: !242)
!242 = !{!243, !244, !245}
!243 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!244 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!245 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !205, line: 577, baseType: !7, size: 32, elements: !247)
!247 = !{!248, !249, !250}
!248 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!249 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!250 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!251 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !205, line: 503, baseType: !7, size: 32, elements: !252)
!252 = !{!253, !254, !255, !256}
!253 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!254 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!255 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!256 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!257 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !258, line: 44, baseType: !7, size: 32, elements: !259)
!258 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!259 = !{!260, !261, !262, !263, !264, !265, !266, !267, !268}
!260 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!261 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!262 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!263 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!264 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!265 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!266 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!267 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!268 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!269 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !270, line: 15, baseType: !7, size: 32, elements: !271)
!270 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!271 = !{!272, !273, !274, !275}
!272 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!273 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!274 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!275 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!276 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "switch_power_state", file: !277, line: 30, baseType: !7, size: 32, elements: !278)
!277 = !DIFile(filename: "./include/drm/drm_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9743f4a84c342e86d9e79f688e9c49c5")
!278 = !{!279, !280, !281, !282}
!279 = !DIEnumerator(name: "DRM_SWITCH_POWER_ON", value: 0)
!280 = !DIEnumerator(name: "DRM_SWITCH_POWER_OFF", value: 1)
!281 = !DIEnumerator(name: "DRM_SWITCH_POWER_CHANGING", value: 2)
!282 = !DIEnumerator(name: "DRM_SWITCH_POWER_DYNAMIC_OFF", value: 3)
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_gem_object_status", file: !284, line: 61, baseType: !7, size: 32, elements: !285)
!284 = !DIFile(filename: "./include/drm/drm_gem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5db19977067e41c640c8fecb4e671923")
!285 = !{!286, !287}
!286 = !DIEnumerator(name: "DRM_GEM_OBJECT_RESIDENT", value: 1)
!287 = !DIEnumerator(name: "DRM_GEM_OBJECT_PURGEABLE", value: 2)
!288 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ttm_caching", file: !289, line: 33, baseType: !7, size: 32, elements: !290)
!289 = !DIFile(filename: "./include/drm/ttm/ttm_caching.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "19c2ae3004d13ae67685208908fb2e14")
!290 = !{!291, !292, !293}
!291 = !DIEnumerator(name: "ttm_uncached", value: 0)
!292 = !DIEnumerator(name: "ttm_write_combined", value: 1)
!293 = !DIEnumerator(name: "ttm_cached", value: 2)
!294 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ttm_bo_type", file: !295, line: 67, baseType: !7, size: 32, elements: !296)
!295 = !DIFile(filename: "./include/drm/ttm/ttm_bo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2f81fca0b8181781f1c758cd81feeff")
!296 = !{!297, !298, !299}
!297 = !DIEnumerator(name: "ttm_bo_type_device", value: 0)
!298 = !DIEnumerator(name: "ttm_bo_type_kernel", value: 1)
!299 = !DIEnumerator(name: "ttm_bo_type_sg", value: 2)
!300 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cc_attr", file: !301, line: 22, baseType: !7, size: 32, elements: !302)
!301 = !DIFile(filename: "./include/linux/cc_platform.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec881fca7f8cde0abb6c64a9f159f14b")
!302 = !{!303, !304, !305, !306, !307, !308, !309}
!303 = !DIEnumerator(name: "CC_ATTR_MEM_ENCRYPT", value: 0)
!304 = !DIEnumerator(name: "CC_ATTR_HOST_MEM_ENCRYPT", value: 1)
!305 = !DIEnumerator(name: "CC_ATTR_GUEST_MEM_ENCRYPT", value: 2)
!306 = !DIEnumerator(name: "CC_ATTR_GUEST_STATE_ENCRYPT", value: 3)
!307 = !DIEnumerator(name: "CC_ATTR_GUEST_UNROLL_STRING_IO", value: 4)
!308 = !DIEnumerator(name: "CC_ATTR_GUEST_SEV_SNP", value: 5)
!309 = !DIEnumerator(name: "CC_ATTR_HOTPLUG_DISABLED", value: 6)
!310 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !311, line: 10, baseType: !7, size: 32, elements: !312)
!311 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!312 = !{!313, !314}
!313 = !DIEnumerator(name: "false", value: 0)
!314 = !DIEnumerator(name: "true", value: 1)
!315 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pageflags", file: !316, line: 100, baseType: !7, size: 32, elements: !317)
!316 = !DIFile(filename: "./include/linux/page-flags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "303e043415a1e5da18ffd489677b4d01")
!317 = !{!318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354}
!318 = !DIEnumerator(name: "PG_locked", value: 0)
!319 = !DIEnumerator(name: "PG_writeback", value: 1)
!320 = !DIEnumerator(name: "PG_referenced", value: 2)
!321 = !DIEnumerator(name: "PG_uptodate", value: 3)
!322 = !DIEnumerator(name: "PG_dirty", value: 4)
!323 = !DIEnumerator(name: "PG_lru", value: 5)
!324 = !DIEnumerator(name: "PG_head", value: 6)
!325 = !DIEnumerator(name: "PG_waiters", value: 7)
!326 = !DIEnumerator(name: "PG_active", value: 8)
!327 = !DIEnumerator(name: "PG_workingset", value: 9)
!328 = !DIEnumerator(name: "PG_error", value: 10)
!329 = !DIEnumerator(name: "PG_slab", value: 11)
!330 = !DIEnumerator(name: "PG_owner_priv_1", value: 12)
!331 = !DIEnumerator(name: "PG_arch_1", value: 13)
!332 = !DIEnumerator(name: "PG_reserved", value: 14)
!333 = !DIEnumerator(name: "PG_private", value: 15)
!334 = !DIEnumerator(name: "PG_private_2", value: 16)
!335 = !DIEnumerator(name: "PG_mappedtodisk", value: 17)
!336 = !DIEnumerator(name: "PG_reclaim", value: 18)
!337 = !DIEnumerator(name: "PG_swapbacked", value: 19)
!338 = !DIEnumerator(name: "PG_unevictable", value: 20)
!339 = !DIEnumerator(name: "PG_mlocked", value: 21)
!340 = !DIEnumerator(name: "PG_uncached", value: 22)
!341 = !DIEnumerator(name: "__NR_PAGEFLAGS", value: 23)
!342 = !DIEnumerator(name: "PG_readahead", value: 18)
!343 = !DIEnumerator(name: "PG_anon_exclusive", value: 17)
!344 = !DIEnumerator(name: "PG_checked", value: 12)
!345 = !DIEnumerator(name: "PG_swapcache", value: 12)
!346 = !DIEnumerator(name: "PG_fscache", value: 16)
!347 = !DIEnumerator(name: "PG_pinned", value: 12)
!348 = !DIEnumerator(name: "PG_savepinned", value: 4)
!349 = !DIEnumerator(name: "PG_foreign", value: 12)
!350 = !DIEnumerator(name: "PG_xen_remapped", value: 12)
!351 = !DIEnumerator(name: "PG_isolated", value: 18)
!352 = !DIEnumerator(name: "PG_reported", value: 3)
!353 = !DIEnumerator(name: "PG_has_hwpoisoned", value: 10)
!354 = !DIEnumerator(name: "PG_large_rmappable", value: 9)
!355 = !{!356, !36, !57, !821, !2075, !51, !55, !445, !3091, !2078, !3406, !5513, !5516, !5517, !5518, !5499, !5520, !5523}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !358)
!358 = !{!359, !360, !361, !365, !5199, !5225, !5226, !5227, !5228, !5232, !5235, !5236, !5237, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5303, !5307, !5325, !5342, !5343, !5344, !5345, !5354, !5377, !5378, !5381, !5384, !5385, !5386, !5387, !5388, !5389, !5390, !5395, !5396, !5475, !5483, !5484, !5485, !5486, !5490, !5491, !5495, !5496, !5497, !5498, !5500, !5501, !5502, !5509, !5510, !5511, !5512}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !357, file: !6, line: 403, baseType: !5, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !357, file: !6, line: 406, baseType: !113, size: 128, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !357, file: !6, line: 409, baseType: !362, size: 448, offset: 192)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 448, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 56)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !357, file: !6, line: 417, baseType: !366, size: 768, offset: 640)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !367)
!367 = !{!368, !5193, !5194, !5195, !5198}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !366, file: !6, line: 46, baseType: !369, size: 512)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !370, line: 64, size: 512, elements: !371)
!370 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!371 = !{!372, !373, !374, !376, !423, !5186, !5187, !5188, !5189, !5190, !5191, !5192}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !369, file: !370, line: 65, baseType: !32, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !369, file: !370, line: 66, baseType: !113, size: 128, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !369, file: !370, line: 67, baseType: !375, size: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !369, file: !370, line: 68, baseType: !377, size: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !370, line: 168, size: 768, elements: !379)
!379 = !{!380, !381, !382, !383}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !378, file: !370, line: 169, baseType: !113, size: 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !378, file: !370, line: 170, baseType: !75, size: 32, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !378, file: !370, line: 171, baseType: !369, size: 512, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !378, file: !370, line: 172, baseType: !384, size: 64, offset: 704)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !370, line: 133, size: 192, elements: !387)
!387 = !{!388, !395, !400}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !386, file: !370, line: 134, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!38, !393}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !386, file: !370, line: 135, baseType: !396, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!32, !393}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !386, file: !370, line: 136, baseType: !401, size: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!38, !393, !405}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !370, line: 125, size: 20736, elements: !407)
!407 = !{!408, !413, !417, !418, !422}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !406, file: !370, line: 126, baseType: !409, size: 192)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 192, elements: !411)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!411 = !{!412}
!412 = !DISubrange(count: 3)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !406, file: !370, line: 127, baseType: !414, size: 4096, offset: 192)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 4096, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !406, file: !370, line: 128, baseType: !38, size: 32, offset: 4288)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !406, file: !370, line: 129, baseType: !419, size: 16384, offset: 4320)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 16384, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 2048)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !406, file: !370, line: 130, baseType: !38, size: 32, offset: 20704)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !369, file: !370, line: 69, baseType: !424, size: 64, offset: 320)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !370, line: 116, size: 384, elements: !427)
!427 = !{!428, !432, !455, !5174, !5178, !5182}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !426, file: !370, line: 117, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !375}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !426, file: !370, line: 118, baseType: !433, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !436, line: 254, size: 128, elements: !437)
!436 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!437 = !{!438, !451}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !435, file: !436, line: 255, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!442, !375, !446, !410}
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !41, line: 66, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !53, line: 73, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !53, line: 15, baseType: !445)
!445 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !436, line: 30, size: 128, elements: !448)
!448 = !{!449, !450}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !447, file: !436, line: 31, baseType: !32, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !447, file: !436, line: 32, baseType: !40, size: 16, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !435, file: !436, line: 256, baseType: !452, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!442, !375, !446, !32, !51}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !426, file: !370, line: 119, baseType: !456, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !459)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !436, line: 84, size: 320, elements: !460)
!460 = !{!461, !462, !466, !5170, !5172}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !459, file: !436, line: 85, baseType: !32, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !459, file: !436, line: 86, baseType: !463, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!40, !375, !446, !38}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !459, file: !436, line: 88, baseType: !467, size: 64, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!40, !375, !470, !38}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !436, line: 175, size: 512, elements: !472)
!472 = !{!473, !474, !475, !476, !5161, !5165, !5166}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !471, file: !436, line: 176, baseType: !447, size: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !471, file: !436, line: 177, baseType: !51, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !471, file: !436, line: 178, baseType: !36, size: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !471, file: !436, line: 179, baseType: !477, size: 64, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!480}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !188, line: 472, size: 1536, align: 64, elements: !482)
!482 = !{!483, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5155, !5156, !5157, !5158, !5159, !5160}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !481, file: !188, line: 473, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !188, line: 641, size: 4800, elements: !486)
!486 = !{!487, !488, !489, !497, !498, !505, !506, !509, !510, !4945, !4946, !4947, !4948, !4949, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4989, !4992, !4993, !4994, !5003, !5004, !5005, !5006}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !485, file: !188, line: 642, baseType: !40, size: 16)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !485, file: !188, line: 643, baseType: !42, size: 16, offset: 16)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !485, file: !188, line: 644, baseType: !490, size: 32, offset: 32)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !491, line: 23, baseType: !492)
!491 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !491, line: 21, size: 32, elements: !493)
!493 = !{!494}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !492, file: !491, line: 22, baseType: !495, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !41, line: 37, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !53, line: 49, baseType: !7)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !485, file: !188, line: 645, baseType: !113, size: 128, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !485, file: !188, line: 646, baseType: !499, size: 32, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !491, line: 28, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !491, line: 26, size: 32, elements: !501)
!501 = !{!502}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !500, file: !491, line: 27, baseType: !503, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !41, line: 38, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !53, line: 50, baseType: !7)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !485, file: !188, line: 647, baseType: !7, size: 32, offset: 224)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !485, file: !188, line: 650, baseType: !507, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !188, line: 607, flags: DIFlagFwdDecl)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !485, file: !188, line: 651, baseType: !507, size: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !485, file: !188, line: 654, baseType: !511, size: 64, offset: 384)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !513)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !188, line: 1966, size: 2048, align: 512, elements: !514)
!514 = !{!515, !4779, !4789, !4793, !4797, !4801, !4805, !4809, !4813, !4817, !4821, !4822, !4826, !4830, !4867, !4896, !4900, !4906, !4910, !4914, !4918, !4922, !4926, !4932, !4936}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !513, file: !188, line: 1967, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!519, !484, !519, !7}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !521, line: 82, size: 1536, elements: !522)
!521 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!522 = !{!523, !524, !534, !542, !543, !563, !564, !568, !581, !4762, !4763, !4764, !4765, !4771, !4772, !4773}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !520, file: !521, line: 84, baseType: !7, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !520, file: !521, line: 85, baseType: !525, size: 32, offset: 32)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !526, line: 275, baseType: !527)
!526 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !526, line: 275, size: 32, elements: !528)
!528 = !{!529}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !527, file: !526, line: 275, baseType: !530, size: 32)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !526, line: 69, baseType: !531)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !526, line: 64, size: 32, elements: !532)
!532 = !{!533}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !531, file: !526, line: 65, baseType: !7, size: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !520, file: !521, line: 86, baseType: !535, size: 128, offset: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !536, line: 38, size: 128, elements: !537)
!536 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!537 = !{!538, !540}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !535, file: !536, line: 39, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !535, file: !536, line: 39, baseType: !541, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !520, file: !521, line: 87, baseType: !519, size: 64, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !520, file: !521, line: 88, baseType: !544, size: 128, offset: 256)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !521, line: 49, size: 128, elements: !545)
!545 = !{!546, !560}
!546 = !DIDerivedType(tag: DW_TAG_member, scope: !544, file: !521, line: 50, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !544, file: !521, line: 50, size: 64, elements: !548)
!548 = !{!549, !556}
!549 = !DIDerivedType(tag: DW_TAG_member, scope: !547, file: !521, line: 51, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !547, file: !521, line: 51, size: 64, elements: !551)
!551 = !{!552, !555}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !550, file: !521, line: 52, baseType: !553, size: 32)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !100, line: 21, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !102, line: 27, baseType: !7)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !550, file: !521, line: 52, baseType: !553, size: 32, offset: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !547, file: !521, line: 54, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !100, line: 23, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !102, line: 31, baseType: !559)
!559 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !544, file: !521, line: 56, baseType: !561, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !520, file: !521, line: 89, baseType: !484, size: 64, offset: 384)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !520, file: !521, line: 91, baseType: !565, size: 256, offset: 448)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 256, elements: !566)
!566 = !{!567}
!567 = !DISubrange(count: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !520, file: !521, line: 94, baseType: !569, size: 64, offset: 704)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !570, line: 25, size: 64, elements: !571)
!570 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!571 = !{!572}
!572 = !DIDerivedType(tag: DW_TAG_member, scope: !569, file: !570, line: 26, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !569, file: !570, line: 26, size: 64, elements: !574)
!574 = !{!575, !576}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !573, file: !570, line: 28, baseType: !558, size: 64, align: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, scope: !573, file: !570, line: 30, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !573, file: !570, line: 30, size: 64, elements: !578)
!578 = !{!579, !580}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !577, file: !570, line: 31, baseType: !75, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !577, file: !570, line: 32, baseType: !38, size: 32, offset: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !520, file: !521, line: 95, baseType: !582, size: 64, offset: 768)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !584)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !521, line: 128, size: 1024, align: 512, elements: !585)
!585 = !{!586, !590, !591, !598, !604, !608, !612, !616, !617, !621, !625, !4752, !4756}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !584, file: !521, line: 129, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!38, !519, !7}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !584, file: !521, line: 130, baseType: !587, size: 64, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !584, file: !521, line: 131, baseType: !592, size: 64, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!38, !595, !597}
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !584, file: !521, line: 132, baseType: !599, size: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!38, !595, !7, !32, !602}
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !584, file: !521, line: 134, baseType: !605, size: 64, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!38, !595}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !584, file: !521, line: 135, baseType: !609, size: 64, offset: 320)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!38, !519}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !584, file: !521, line: 136, baseType: !613, size: 64, offset: 384)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !519}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !584, file: !521, line: 137, baseType: !613, size: 64, offset: 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !584, file: !521, line: 138, baseType: !618, size: 64, offset: 512)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{null, !519, !484}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !584, file: !521, line: 139, baseType: !622, size: 64, offset: 576)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!410, !519, !410, !38}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !584, file: !521, line: 140, baseType: !626, size: 64, offset: 640)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!629, !4751}
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !631, line: 70, size: 256, elements: !632)
!631 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!632 = !{!633, !634, !4749, !4750}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !630, file: !631, line: 71, baseType: !519, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !630, file: !631, line: 72, baseType: !635, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !188, line: 1190, size: 10752, elements: !637)
!637 = !{!638, !639, !642, !643, !644, !645, !3703, !3855, !3895, !3980, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !4016, !4020, !4021, !4540, !4543, !4610, !4613, !4614, !4615, !4656, !4683, !4684, !4685, !4686, !4687, !4688, !4691, !4692, !4699, !4700, !4701, !4702, !4703, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !636, file: !188, line: 1191, baseType: !113, size: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !636, file: !188, line: 1192, baseType: !640, size: 32, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !41, line: 21, baseType: !641)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !41, line: 18, baseType: !553)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !636, file: !188, line: 1193, baseType: !103, size: 8, offset: 160)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !636, file: !188, line: 1194, baseType: !55, size: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !636, file: !188, line: 1195, baseType: !57, size: 64, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !636, file: !188, line: 1196, baseType: !646, size: 64, offset: 320)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !188, line: 2366, size: 576, elements: !648)
!648 = !{!649, !650, !651, !3654, !3681, !3685, !3689, !3690, !3691, !3692, !3695, !3696, !3697, !3699, !3700, !3701, !3702}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !647, file: !188, line: 2367, baseType: !32, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !647, file: !188, line: 2368, baseType: !38, size: 32, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !647, file: !188, line: 2376, baseType: !652, size: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!38, !655}
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !14, line: 90, size: 1216, elements: !657)
!657 = !{!658, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !656, file: !14, line: 91, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context_operations", file: !14, line: 115, size: 384, elements: !662)
!662 = !{!663, !667, !671, !3613, !3617, !3618}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !661, file: !14, line: 116, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !655}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !661, file: !14, line: 117, baseType: !668, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!38, !655, !655}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "parse_param", scope: !661, file: !14, line: 118, baseType: !672, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!38, !655, !675}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter", file: !14, line: 63, size: 320, elements: !677)
!677 = !{!678, !679, !680, !3611, !3612}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !676, file: !14, line: 64, baseType: !32, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !676, file: !14, line: 65, baseType: !13, size: 8, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!680 = !DIDerivedType(tag: DW_TAG_member, scope: !676, file: !14, line: 66, baseType: !681, size: 64, offset: 128)
!681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !676, file: !14, line: 66, size: 64, elements: !682)
!682 = !{!683, !684, !685, !699}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !681, file: !14, line: 67, baseType: !410, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !681, file: !14, line: 68, baseType: !36, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !681, file: !14, line: 69, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filename", file: !188, line: 2470, size: 256, elements: !688)
!688 = !{!689, !690, !691, !692, !695}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !687, file: !188, line: 2471, baseType: !32, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "uptr", scope: !687, file: !188, line: 2472, baseType: !32, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !687, file: !188, line: 2473, baseType: !65, size: 32, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "aname", scope: !687, file: !188, line: 2474, baseType: !693, size: 64, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_names", file: !188, line: 2469, flags: DIFlagFwdDecl)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !687, file: !188, line: 2475, baseType: !696, offset: 256)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, elements: !697)
!697 = !{!698}
!698 = !DISubrange(count: -1)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !681, file: !14, line: 70, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !188, line: 994, size: 1856, align: 64, elements: !702)
!702 = !{!703, !722, !723, !725, !734, !747, !748, !749, !3346, !3347, !3356, !3362, !3363, !3601, !3602, !3603, !3604, !3606, !3607, !3610}
!703 = !DIDerivedType(tag: DW_TAG_member, scope: !701, file: !188, line: 995, baseType: !704, size: 128)
!704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !701, file: !188, line: 995, size: 128, elements: !705)
!705 = !{!706, !712, !721}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !704, file: !188, line: 996, baseType: !707, size: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !708, line: 60, size: 64, elements: !709)
!708 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!709 = !{!710}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !707, file: !708, line: 61, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !704, file: !188, line: 997, baseType: !713, size: 128, align: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !41, line: 232, size: 128, align: 64, elements: !714)
!714 = !{!715, !717}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !713, file: !41, line: 233, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !713, file: !41, line: 234, baseType: !718, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !716}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !704, file: !188, line: 998, baseType: !7, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !701, file: !188, line: 1005, baseType: !75, size: 32, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !701, file: !188, line: 1006, baseType: !724, size: 32, offset: 160)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !41, line: 156, baseType: !7)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !701, file: !188, line: 1007, baseType: !726, size: 64, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !727, line: 13, baseType: !728)
!727 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !41, line: 181, baseType: !729)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 179, size: 64, elements: !730)
!730 = !{!731}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !729, file: !41, line: 180, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !100, line: 22, baseType: !733)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !102, line: 30, baseType: !59)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !701, file: !188, line: 1008, baseType: !735, size: 256, offset: 256)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !736, line: 66, size: 256, elements: !737)
!736 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!737 = !{!738, !739, !741, !746}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !735, file: !736, line: 67, baseType: !726, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !735, file: !736, line: 68, baseType: !740, size: 32, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !84, line: 23, baseType: !83)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !735, file: !736, line: 70, baseType: !742, size: 32, offset: 96)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !743, line: 15, size: 32, elements: !744)
!743 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!744 = !{!745}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !742, file: !743, line: 20, baseType: !65, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !735, file: !736, line: 72, baseType: !113, size: 128, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !701, file: !188, line: 1009, baseType: !57, size: 64, offset: 512)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !701, file: !188, line: 1010, baseType: !7, size: 32, offset: 576)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !701, file: !188, line: 1011, baseType: !750, size: 256, offset: 640)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !188, line: 948, size: 256, elements: !751)
!751 = !{!752, !773, !3342, !3343, !3344, !3345}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !750, file: !188, line: 949, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !754, line: 34, baseType: !755)
!754 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !754, line: 25, size: 64, elements: !756)
!756 = !{!757}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !755, file: !754, line: 26, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !759, line: 27, baseType: !760)
!759 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !759, line: 13, size: 64, elements: !761)
!761 = !{!762, !772}
!762 = !DIDerivedType(tag: DW_TAG_member, scope: !760, file: !759, line: 14, baseType: !763, size: 32)
!763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !760, file: !759, line: 14, size: 32, elements: !764)
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !763, file: !759, line: 15, baseType: !65, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, scope: !763, file: !759, line: 16, baseType: !767, size: 32)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !763, file: !759, line: 16, size: 32, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !767, file: !759, line: 18, baseType: !99, size: 8)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !767, file: !759, line: 19, baseType: !771, size: 24, offset: 8)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 24, elements: !411)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !760, file: !759, line: 26, baseType: !87, size: 32, offset: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !750, file: !188, line: 950, baseType: !774, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !161, line: 59, size: 768, elements: !776)
!776 = !{!777, !783, !784, !785, !798, !799, !800, !801}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !775, file: !161, line: 61, baseType: !778, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !779, line: 113, baseType: !780)
!779 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !779, line: 111, size: 32, elements: !781)
!781 = !{!782}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !780, file: !779, line: 112, baseType: !65, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !775, file: !161, line: 62, baseType: !7, size: 32, offset: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !775, file: !161, line: 63, baseType: !75, size: 32, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !775, file: !161, line: 65, baseType: !786, size: 256, offset: 128)
!786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, size: 256, elements: !796)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !41, line: 194, size: 64, elements: !788)
!788 = !{!789}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !787, file: !41, line: 195, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !41, line: 198, size: 128, elements: !792)
!792 = !{!793, !794}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !791, file: !41, line: 199, baseType: !790, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !791, file: !41, line: 199, baseType: !795, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!796 = !{!797}
!797 = !DISubrange(count: 4)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !775, file: !161, line: 66, baseType: !787, size: 64, offset: 384)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !775, file: !161, line: 68, baseType: !70, size: 192, offset: 448)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !775, file: !161, line: 69, baseType: !713, size: 128, align: 64, offset: 640)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !775, file: !161, line: 70, baseType: !802, offset: 768)
!802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !803, elements: !697)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !161, line: 54, size: 128, elements: !804)
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !803, file: !161, line: 55, baseType: !38, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !803, file: !161, line: 56, baseType: !807, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !809, line: 26, size: 1152, elements: !810)
!809 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!810 = !{!811, !825, !826, !827, !3328, !3332, !3333, !3334, !3337, !3338, !3339, !3340, !3341}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !808, file: !809, line: 27, baseType: !812, size: 192)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !813, line: 19, size: 192, elements: !814)
!813 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!814 = !{!815, !823, !824}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !812, file: !813, line: 20, baseType: !816, size: 128)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !817, line: 296, size: 128, elements: !818)
!817 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!818 = !{!819, !820, !822}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !816, file: !817, line: 297, baseType: !75, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !816, file: !817, line: 299, baseType: !821, size: 32, offset: 32)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !41, line: 154, baseType: !7)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !816, file: !817, line: 300, baseType: !36, size: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !812, file: !813, line: 21, baseType: !7, size: 32, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !812, file: !813, line: 22, baseType: !7, size: 32, offset: 160)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !808, file: !809, line: 28, baseType: !713, size: 128, align: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !808, file: !809, line: 29, baseType: !7, size: 32, offset: 320)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !808, file: !809, line: 30, baseType: !828, size: 64, offset: 384)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !830, line: 746, size: 58368, elements: !831)
!830 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!831 = !{!832, !840, !841, !842, !843, !844, !845, !846, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !919, !930, !1025, !1029, !1032, !1063, !1064, !1065, !1066, !1077, !1079, !1080, !1081, !1082, !1083, !1084, !1095, !1096, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1113, !1114, !1121, !1122, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1638, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1653, !1654, !1655, !1656, !1658, !1659, !1660, !1661, !1662, !1663, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1687, !1693, !1763, !1764, !1765, !1766, !1770, !1773, !1780, !1785, !1788, !1791, !1794, !2532, !2733, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2771, !2772, !2773, !2782, !2790, !2791, !2792, !2793, !2794, !2799, !2800, !2801, !2804, !2805, !2808, !2811, !2817, !2825, !2828, !2829, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2928, !2931, !2932, !2935, !2936, !2937, !2940, !2941, !2942, !2943, !2944, !2945, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2977, !2980, !2986, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2998, !3070, !3072, !3073, !3074, !3075, !3076, !3077, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3107, !3108, !3109}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !829, file: !830, line: 752, baseType: !833, size: 192)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !834, line: 56, size: 192, elements: !835)
!834 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!835 = !{!836, !837, !838, !839}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !833, file: !834, line: 57, baseType: !55, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !833, file: !834, line: 58, baseType: !55, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !833, file: !834, line: 59, baseType: !553, size: 32, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !833, file: !834, line: 61, baseType: !553, size: 32, offset: 160)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !829, file: !830, line: 754, baseType: !7, size: 32, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !829, file: !830, line: 767, baseType: !36, size: 64, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !829, file: !830, line: 768, baseType: !778, size: 32, offset: 320)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !829, file: !830, line: 770, baseType: !7, size: 32, offset: 352)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !829, file: !830, line: 771, baseType: !7, size: 32, offset: 384)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !829, file: !830, line: 774, baseType: !38, size: 32, offset: 416)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !829, file: !830, line: 775, baseType: !847, size: 128, offset: 448)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !848, line: 58, size: 128, elements: !849)
!848 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!849 = !{!850, !851, !856, !857}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !847, file: !848, line: 59, baseType: !707, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, scope: !847, file: !848, line: 60, baseType: !852, size: 32, offset: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !847, file: !848, line: 60, size: 32, elements: !853)
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !852, file: !848, line: 61, baseType: !7, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !852, file: !848, line: 62, baseType: !65, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !847, file: !848, line: 65, baseType: !109, size: 16, offset: 96)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !847, file: !848, line: 65, baseType: !109, size: 16, offset: 112)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !829, file: !830, line: 776, baseType: !7, size: 32, offset: 576)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !829, file: !830, line: 777, baseType: !55, size: 64, offset: 640)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !829, file: !830, line: 778, baseType: !828, size: 64, offset: 704)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !829, file: !830, line: 787, baseType: !38, size: 32, offset: 768)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !829, file: !830, line: 788, baseType: !38, size: 32, offset: 800)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !829, file: !830, line: 790, baseType: !38, size: 32, offset: 832)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !829, file: !830, line: 792, baseType: !38, size: 32, offset: 864)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !829, file: !830, line: 793, baseType: !38, size: 32, offset: 896)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !829, file: !830, line: 794, baseType: !38, size: 32, offset: 928)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !829, file: !830, line: 795, baseType: !7, size: 32, offset: 960)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !829, file: !830, line: 797, baseType: !869, size: 2048, offset: 1024)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !830, line: 551, size: 2048, elements: !870)
!870 = !{!871, !876, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !898, !901, !902, !903}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !869, file: !830, line: 553, baseType: !872, size: 128)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !830, line: 411, size: 128, elements: !873)
!873 = !{!874, !875}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !872, file: !830, line: 412, baseType: !55, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !872, file: !830, line: 413, baseType: !553, size: 32, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !869, file: !830, line: 554, baseType: !877, size: 192, align: 64, offset: 128)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !878, line: 5, size: 192, align: 64, elements: !879)
!878 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!879 = !{!880, !881, !883}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !877, file: !878, line: 6, baseType: !55, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !877, file: !878, line: 7, baseType: !882, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !877, file: !878, line: 8, baseType: !882, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !869, file: !830, line: 555, baseType: !557, size: 64, offset: 320)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !869, file: !830, line: 556, baseType: !557, size: 64, offset: 384)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !869, file: !830, line: 558, baseType: !113, size: 128, offset: 448)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !869, file: !830, line: 559, baseType: !7, size: 32, offset: 576)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !869, file: !830, line: 561, baseType: !557, size: 64, offset: 640)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !869, file: !830, line: 562, baseType: !557, size: 64, offset: 704)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !869, file: !830, line: 563, baseType: !557, size: 64, offset: 768)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !869, file: !830, line: 564, baseType: !557, size: 64, offset: 832)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !869, file: !830, line: 565, baseType: !732, size: 64, offset: 896)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !869, file: !830, line: 566, baseType: !557, size: 64, offset: 960)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !869, file: !830, line: 568, baseType: !557, size: 64, offset: 1024)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !869, file: !830, line: 571, baseType: !38, size: 32, offset: 1088)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !869, file: !830, line: 572, baseType: !897, size: 64, offset: 1152)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !869, file: !830, line: 574, baseType: !899, size: 64, offset: 1216)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !830, line: 49, flags: DIFlagFwdDecl)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !869, file: !830, line: 576, baseType: !899, size: 64, offset: 1280)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !869, file: !830, line: 578, baseType: !55, size: 64, offset: 1344)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !869, file: !830, line: 588, baseType: !904, size: 512, align: 512, offset: 1536)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !830, line: 497, size: 512, align: 512, elements: !905)
!905 = !{!906, !907, !908, !909, !910, !911, !912, !913, !914}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !904, file: !830, line: 498, baseType: !557, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !904, file: !830, line: 499, baseType: !557, size: 64, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !904, file: !830, line: 500, baseType: !557, size: 64, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !904, file: !830, line: 501, baseType: !553, size: 32, offset: 192)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !904, file: !830, line: 502, baseType: !553, size: 32, offset: 224)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !904, file: !830, line: 503, baseType: !55, size: 64, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !904, file: !830, line: 504, baseType: !55, size: 64, offset: 320)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !904, file: !830, line: 505, baseType: !55, size: 64, offset: 384)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !904, file: !830, line: 506, baseType: !915, size: 64, align: 64, offset: 448)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !830, line: 445, size: 64, align: 64, elements: !916)
!916 = !{!917, !918}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !915, file: !830, line: 446, baseType: !7, size: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !915, file: !830, line: 447, baseType: !7, size: 32, offset: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !829, file: !830, line: 798, baseType: !920, size: 384, offset: 3072)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !830, line: 592, size: 384, elements: !921)
!921 = !{!922, !923, !924, !925, !926, !927, !928}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !920, file: !830, line: 593, baseType: !113, size: 128)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !920, file: !830, line: 594, baseType: !55, size: 64, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !920, file: !830, line: 595, baseType: !55, size: 64, offset: 192)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !920, file: !830, line: 596, baseType: !7, size: 32, offset: 256)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !920, file: !830, line: 597, baseType: !42, size: 16, offset: 288)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !920, file: !830, line: 598, baseType: !42, size: 16, offset: 304)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !920, file: !830, line: 600, baseType: !929, size: 64, offset: 320)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !829, file: !830, line: 799, baseType: !931, size: 1792, offset: 3456)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !830, line: 610, size: 1792, elements: !932)
!932 = !{!933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !1022, !1023}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !931, file: !830, line: 611, baseType: !877, size: 192, align: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !931, file: !830, line: 618, baseType: !557, size: 64, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !931, file: !830, line: 619, baseType: !557, size: 64, offset: 256)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !931, file: !830, line: 620, baseType: !557, size: 64, offset: 320)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !931, file: !830, line: 621, baseType: !557, size: 64, offset: 384)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !931, file: !830, line: 622, baseType: !557, size: 64, offset: 448)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !931, file: !830, line: 629, baseType: !732, size: 64, offset: 512)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !931, file: !830, line: 630, baseType: !557, size: 64, offset: 576)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !931, file: !830, line: 631, baseType: !7, size: 32, offset: 640)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !931, file: !830, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !931, file: !830, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !931, file: !830, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !931, file: !830, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !931, file: !830, line: 662, baseType: !947, size: 512, offset: 704)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !23, line: 118, size: 512, elements: !948)
!948 = !{!949, !957, !958, !963, !1018, !1019, !1020, !1021}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !947, file: !23, line: 119, baseType: !950, size: 256)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !951, line: 9, size: 256, elements: !952)
!951 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!952 = !{!953, !954}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !950, file: !951, line: 10, baseType: !877, size: 192, align: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !950, file: !951, line: 11, baseType: !955, size: 64, offset: 192)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !956, line: 29, baseType: !732)
!956 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !947, file: !23, line: 120, baseType: !955, size: 64, offset: 256)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !947, file: !23, line: 121, baseType: !959, size: 64, offset: 320)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{!22, !962}
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !947, file: !23, line: 122, baseType: !964, size: 64, offset: 384)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !23, line: 159, size: 512, align: 512, elements: !966)
!966 = !{!967, !992, !993, !996, !1001, !1002, !1013, !1017}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !965, file: !23, line: 160, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !23, line: 215, size: 4608, align: 512, elements: !970)
!970 = !{!971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !969, file: !23, line: 216, baseType: !740, size: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !969, file: !23, line: 217, baseType: !7, size: 32, offset: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !969, file: !23, line: 218, baseType: !7, size: 32, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !969, file: !23, line: 219, baseType: !7, size: 32, offset: 96)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !969, file: !23, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !969, file: !23, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !969, file: !23, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !969, file: !23, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !969, file: !23, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !969, file: !23, line: 226, baseType: !7, size: 32, offset: 160)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !969, file: !23, line: 227, baseType: !42, size: 16, offset: 192)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !969, file: !23, line: 228, baseType: !42, size: 16, offset: 208)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !969, file: !23, line: 229, baseType: !7, size: 32, offset: 224)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !969, file: !23, line: 235, baseType: !955, size: 64, offset: 256)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !969, file: !23, line: 236, baseType: !962, size: 64, offset: 320)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !969, file: !23, line: 237, baseType: !955, size: 64, offset: 384)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !969, file: !23, line: 238, baseType: !962, size: 64, offset: 448)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !969, file: !23, line: 239, baseType: !989, size: 4096, align: 512, offset: 512)
!989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !965, size: 4096, align: 512, elements: !990)
!990 = !{!991}
!991 = !DISubrange(count: 8)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !965, file: !23, line: 161, baseType: !7, size: 32, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !965, file: !23, line: 162, baseType: !994, size: 32, offset: 96)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !41, line: 32, baseType: !995)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !53, line: 96, baseType: !38)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !965, file: !23, line: 163, baseType: !997, size: 32, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !526, line: 274, baseType: !998)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !526, line: 274, size: 32, elements: !999)
!999 = !{!1000}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !998, file: !526, line: 274, baseType: !530, size: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !965, file: !23, line: 164, baseType: !962, size: 64, offset: 192)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !965, file: !23, line: 165, baseType: !1003, size: 128, offset: 256)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !951, line: 14, size: 128, elements: !1004)
!1004 = !{!1005}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1003, file: !951, line: 15, baseType: !1006, size: 128)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !878, line: 26, size: 128, elements: !1007)
!1007 = !{!1008, !1012}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1006, file: !878, line: 27, baseType: !1009, size: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !878, line: 12, size: 64, elements: !1010)
!1010 = !{!1011}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1009, file: !878, line: 13, baseType: !882, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1006, file: !878, line: 28, baseType: !882, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !965, file: !23, line: 166, baseType: !1014, size: 64, offset: 384)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!955}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !965, file: !23, line: 167, baseType: !955, size: 64, offset: 448)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !947, file: !23, line: 123, baseType: !99, size: 8, offset: 448)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !947, file: !23, line: 124, baseType: !99, size: 8, offset: 456)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !947, file: !23, line: 125, baseType: !99, size: 8, offset: 464)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !947, file: !23, line: 126, baseType: !99, size: 8, offset: 472)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !931, file: !830, line: 671, baseType: !947, size: 512, offset: 1216)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !931, file: !830, line: 679, baseType: !1024, size: 64, offset: 1728)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !829, file: !830, line: 800, baseType: !1026, size: 64, offset: 5248)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1028)
!1028 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !830, line: 800, flags: DIFlagFwdDecl)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !829, file: !830, line: 809, baseType: !1030, size: 64, offset: 5312)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !830, line: 70, flags: DIFlagFwdDecl)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !829, file: !830, line: 825, baseType: !1033, size: 2048, align: 512, offset: 5632)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !830, line: 509, size: 2048, align: 512, elements: !1034)
!1034 = !{!1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1033, file: !830, line: 511, baseType: !557, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1033, file: !830, line: 512, baseType: !557, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1033, file: !830, line: 513, baseType: !557, size: 64, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1033, file: !830, line: 514, baseType: !557, size: 64, offset: 192)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1033, file: !830, line: 515, baseType: !557, size: 64, offset: 256)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1033, file: !830, line: 516, baseType: !557, size: 64, offset: 320)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1033, file: !830, line: 518, baseType: !557, size: 64, offset: 384)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1033, file: !830, line: 519, baseType: !557, size: 64, offset: 448)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1033, file: !830, line: 520, baseType: !732, size: 64, offset: 512)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1033, file: !830, line: 522, baseType: !557, size: 64, offset: 576)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1033, file: !830, line: 523, baseType: !557, size: 64, offset: 640)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1033, file: !830, line: 524, baseType: !732, size: 64, offset: 704)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1033, file: !830, line: 526, baseType: !732, size: 64, offset: 768)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1033, file: !830, line: 527, baseType: !557, size: 64, offset: 832)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1033, file: !830, line: 529, baseType: !557, size: 64, offset: 896)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1033, file: !830, line: 530, baseType: !557, size: 64, offset: 960)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1033, file: !830, line: 531, baseType: !557, size: 64, offset: 1024)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1033, file: !830, line: 532, baseType: !557, size: 64, offset: 1088)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1033, file: !830, line: 533, baseType: !557, size: 64, offset: 1152)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1033, file: !830, line: 535, baseType: !557, size: 64, offset: 1216)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1033, file: !830, line: 536, baseType: !557, size: 64, offset: 1280)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1033, file: !830, line: 537, baseType: !557, size: 64, offset: 1344)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1033, file: !830, line: 538, baseType: !557, size: 64, offset: 1408)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1033, file: !830, line: 539, baseType: !557, size: 64, offset: 1472)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1033, file: !830, line: 540, baseType: !557, size: 64, offset: 1536)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1033, file: !830, line: 541, baseType: !557, size: 64, offset: 1600)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1033, file: !830, line: 542, baseType: !557, size: 64, offset: 1664)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1033, file: !830, line: 543, baseType: !557, size: 64, offset: 1728)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !829, file: !830, line: 833, baseType: !7, size: 32, offset: 7680)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !829, file: !830, line: 836, baseType: !7, size: 32, offset: 7712)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !829, file: !830, line: 837, baseType: !38, size: 32, offset: 7744)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !829, file: !830, line: 838, baseType: !1067, size: 64, offset: 7808)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1069)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1070, line: 19, baseType: !1071)
!1070 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1070, line: 19, size: 64, elements: !1072)
!1072 = !{!1073}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1071, file: !1070, line: 19, baseType: !1074, size: 64)
!1074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 64, elements: !1075)
!1075 = !{!1076}
!1076 = !DISubrange(count: 1)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !829, file: !830, line: 839, baseType: !1078, size: 64, offset: 7872)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !829, file: !830, line: 840, baseType: !1069, size: 64, offset: 7936)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !829, file: !830, line: 841, baseType: !36, size: 64, offset: 8000)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !829, file: !830, line: 843, baseType: !42, size: 16, offset: 8064)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !829, file: !830, line: 845, baseType: !42, size: 16, offset: 8080)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !829, file: !830, line: 848, baseType: !38, size: 32, offset: 8096)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !829, file: !830, line: 849, baseType: !1085, size: 32, offset: 8128)
!1085 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !830, line: 718, size: 32, elements: !1086)
!1086 = !{!1087, !1094}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1085, file: !830, line: 724, baseType: !1088, size: 32)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1085, file: !830, line: 719, size: 32, elements: !1089)
!1089 = !{!1090, !1091, !1092, !1093}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1088, file: !830, line: 720, baseType: !99, size: 8)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1088, file: !830, line: 721, baseType: !99, size: 8, offset: 8)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1088, file: !830, line: 722, baseType: !99, size: 8, offset: 16)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1088, file: !830, line: 723, baseType: !99, size: 8, offset: 24)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1085, file: !830, line: 725, baseType: !553, size: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !829, file: !830, line: 850, baseType: !113, size: 128, offset: 8192)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !829, file: !830, line: 851, baseType: !1097, size: 64, offset: 8320)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !830, line: 60, flags: DIFlagFwdDecl)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !829, file: !830, line: 855, baseType: !55, size: 64, offset: 8384)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !829, file: !830, line: 856, baseType: !99, size: 8, offset: 8448)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !829, file: !830, line: 857, baseType: !99, size: 8, offset: 8456)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !829, file: !830, line: 858, baseType: !38, size: 32, offset: 8480)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !829, file: !830, line: 859, baseType: !113, size: 128, offset: 8512)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !829, file: !830, line: 860, baseType: !38, size: 32, offset: 8640)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !829, file: !830, line: 861, baseType: !113, size: 128, offset: 8704)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !829, file: !830, line: 873, baseType: !1107, size: 256, offset: 8832)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !830, line: 376, size: 256, elements: !1108)
!1108 = !{!1109, !1110, !1111, !1112}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1107, file: !830, line: 381, baseType: !55, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1107, file: !830, line: 384, baseType: !559, size: 64, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1107, file: !830, line: 389, baseType: !559, size: 64, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1107, file: !830, line: 392, baseType: !559, size: 64, offset: 192)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !829, file: !830, line: 875, baseType: !113, size: 128, offset: 9088)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !829, file: !830, line: 877, baseType: !1115, size: 320, offset: 9216)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1116, line: 86, size: 320, elements: !1117)
!1116 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1117 = !{!1118, !1119, !1120}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1115, file: !1116, line: 87, baseType: !38, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1115, file: !1116, line: 88, baseType: !113, size: 128, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1115, file: !1116, line: 89, baseType: !113, size: 128, offset: 192)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !829, file: !830, line: 878, baseType: !877, size: 192, align: 64, offset: 9536)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !829, file: !830, line: 881, baseType: !1123, size: 64, offset: 9728)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !130, line: 733, size: 10240, elements: !1125)
!1125 = !{!1126, !1557}
!1126 = !DIDerivedType(tag: DW_TAG_member, scope: !1124, file: !130, line: 734, baseType: !1127, size: 10240)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1124, file: !130, line: 734, size: 10240, elements: !1128)
!1128 = !{!1129, !1133, !1147, !1151, !1152, !1153, !1154, !1155, !1156, !1165, !1166, !1167, !1173, !1174, !1175, !1176, !1177, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1214, !1226, !1229, !1277, !1278, !1279, !1282, !1543, !1544, !1547, !1548, !1549, !1555, !1556}
!1129 = !DIDerivedType(tag: DW_TAG_member, scope: !1127, file: !130, line: 739, baseType: !1130, size: 512, align: 512)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1127, file: !130, line: 739, size: 512, align: 512, elements: !1131)
!1131 = !{!1132}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1130, file: !130, line: 747, baseType: !65, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1127, file: !130, line: 750, baseType: !1134, size: 128, offset: 512)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1135, line: 218, size: 128, elements: !1136)
!1135 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1136 = !{!1137, !1145, !1146}
!1137 = !DIDerivedType(tag: DW_TAG_member, scope: !1134, file: !1135, line: 219, baseType: !1138, size: 32)
!1138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1134, file: !1135, line: 219, size: 32, elements: !1139)
!1139 = !{!1140, !1141}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1138, file: !1135, line: 220, baseType: !75, size: 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1138, file: !1135, line: 221, baseType: !1142)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1135, line: 197, baseType: !1143)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1135, line: 197, elements: !1144)
!1144 = !{}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1134, file: !1135, line: 223, baseType: !7, size: 32, offset: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1134, file: !1135, line: 224, baseType: !36, size: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1127, file: !130, line: 752, baseType: !1148, size: 64, offset: 640)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!55, !700, !55, !55, !55, !55}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1127, file: !130, line: 756, baseType: !55, size: 64, offset: 704)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1127, file: !130, line: 757, baseType: !55, size: 64, offset: 768)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1127, file: !130, line: 760, baseType: !55, size: 64, offset: 832)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1127, file: !130, line: 761, baseType: !55, size: 64, offset: 896)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1127, file: !130, line: 763, baseType: !55, size: 64, offset: 960)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1127, file: !130, line: 764, baseType: !1157, size: 64, offset: 1024)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1159, line: 299, baseType: !1160)
!1159 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1159, line: 299, size: 64, elements: !1161)
!1161 = !{!1162}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1160, file: !1159, line: 299, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1164, line: 18, baseType: !55)
!1164 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1127, file: !130, line: 773, baseType: !65, size: 32, offset: 1088)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1127, file: !130, line: 785, baseType: !65, size: 32, offset: 1120)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1127, file: !130, line: 795, baseType: !1168, size: 64, offset: 1152)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !130, line: 726, size: 128, elements: !1170)
!1170 = !{!1171, !1172}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1169, file: !130, line: 727, baseType: !557, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1169, file: !130, line: 728, baseType: !38, size: 32, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1127, file: !130, line: 801, baseType: !55, size: 64, offset: 1216)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1127, file: !130, line: 804, baseType: !726, size: 64, offset: 1280)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1127, file: !130, line: 806, baseType: !38, size: 32, offset: 1344)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1127, file: !130, line: 808, baseType: !75, size: 32, offset: 1376)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1127, file: !130, line: 823, baseType: !1178, size: 320, offset: 1408)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1179, line: 48, size: 320, elements: !1180)
!1179 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1180 = !{!1181, !1182, !1183, !1184, !1185}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1178, file: !1179, line: 49, baseType: !726, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1178, file: !1179, line: 55, baseType: !726, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1178, file: !1179, line: 57, baseType: !742, size: 32, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1178, file: !1179, line: 59, baseType: !740, size: 32, offset: 160)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1178, file: !1179, line: 60, baseType: !113, size: 128, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1127, file: !130, line: 825, baseType: !113, size: 128, offset: 1728)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1127, file: !130, line: 845, baseType: !38, size: 32, offset: 1856)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1127, file: !130, line: 849, baseType: !55, size: 64, offset: 1920)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1127, file: !130, line: 850, baseType: !55, size: 64, offset: 1984)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1127, file: !130, line: 852, baseType: !55, size: 64, offset: 2048)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1127, file: !130, line: 853, baseType: !55, size: 64, offset: 2112)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1127, file: !130, line: 854, baseType: !728, size: 64, offset: 2176)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1127, file: !130, line: 855, baseType: !55, size: 64, offset: 2240)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1127, file: !130, line: 856, baseType: !55, size: 64, offset: 2304)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1127, file: !130, line: 857, baseType: !55, size: 64, offset: 2368)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1127, file: !130, line: 858, baseType: !55, size: 64, offset: 2432)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1127, file: !130, line: 865, baseType: !530, size: 32, offset: 2496)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1127, file: !130, line: 867, baseType: !75, size: 32, offset: 2528)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1127, file: !130, line: 869, baseType: !55, size: 64, offset: 2560)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1127, file: !130, line: 869, baseType: !55, size: 64, offset: 2624)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1127, file: !130, line: 869, baseType: !55, size: 64, offset: 2688)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1127, file: !130, line: 869, baseType: !55, size: 64, offset: 2752)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1127, file: !130, line: 870, baseType: !55, size: 64, offset: 2816)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1127, file: !130, line: 870, baseType: !55, size: 64, offset: 2880)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1127, file: !130, line: 870, baseType: !55, size: 64, offset: 2944)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1127, file: !130, line: 871, baseType: !55, size: 64, offset: 3008)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1127, file: !130, line: 871, baseType: !55, size: 64, offset: 3072)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1127, file: !130, line: 871, baseType: !55, size: 64, offset: 3136)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1127, file: !130, line: 871, baseType: !55, size: 64, offset: 3200)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1127, file: !130, line: 873, baseType: !1211, size: 3328, offset: 3264)
!1211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 3328, elements: !1212)
!1212 = !{!1213}
!1213 = !DISubrange(count: 52)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1127, file: !130, line: 875, baseType: !1215, size: 1280, offset: 6592)
!1215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1216, size: 1280, elements: !796)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1217, line: 22, size: 320, elements: !1218)
!1217 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1218 = !{!1219, !1220, !1221, !1222}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1216, file: !1217, line: 23, baseType: !740, size: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1216, file: !1217, line: 24, baseType: !732, size: 64, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1216, file: !1217, line: 26, baseType: !113, size: 128, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1216, file: !1217, line: 28, baseType: !1223, size: 64, offset: 256)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !100, line: 20, baseType: !1225)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !102, line: 26, baseType: !38)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1127, file: !130, line: 877, baseType: !1227, size: 64, offset: 7872)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !130, line: 877, flags: DIFlagFwdDecl)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1127, file: !130, line: 880, baseType: !1230, size: 1088, offset: 7936)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1231, line: 72, baseType: !1232)
!1231 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1231, line: 23, size: 1088, elements: !1233)
!1233 = !{!1234, !1235, !1236, !1237, !1238, !1241, !1242, !1243, !1244, !1271, !1272, !1273}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1232, file: !1231, line: 28, baseType: !557, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1232, file: !1231, line: 38, baseType: !728, size: 64, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1232, file: !1231, line: 40, baseType: !55, size: 64, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1232, file: !1231, line: 43, baseType: !1178, size: 320, offset: 192)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1232, file: !1231, line: 44, baseType: !1239, size: 64, offset: 512)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1231, line: 44, flags: DIFlagFwdDecl)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1232, file: !1231, line: 48, baseType: !55, size: 64, offset: 576)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1232, file: !1231, line: 59, baseType: !735, size: 256, offset: 640)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1232, file: !1231, line: 60, baseType: !36, size: 64, offset: 896)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1232, file: !1231, line: 61, baseType: !1245, size: 64, offset: 960)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1247)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1248, line: 13, size: 1216, elements: !1249)
!1248 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1249 = !{!1250, !1251, !1252, !1253, !1254, !1255, !1256, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1247, file: !1248, line: 14, baseType: !36, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1247, file: !1248, line: 15, baseType: !55, size: 64, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1247, file: !1248, line: 17, baseType: !55, size: 64, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1247, file: !1248, line: 17, baseType: !55, size: 64, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1247, file: !1248, line: 18, baseType: !55, size: 64, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1247, file: !1248, line: 18, baseType: !55, size: 64, offset: 320)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1247, file: !1248, line: 19, baseType: !1257, size: 64, offset: 384)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1247, file: !1248, line: 21, baseType: !445, size: 64, offset: 448)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1247, file: !1248, line: 23, baseType: !445, size: 64, offset: 512)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1247, file: !1248, line: 24, baseType: !445, size: 64, offset: 576)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1247, file: !1248, line: 25, baseType: !445, size: 64, offset: 640)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1247, file: !1248, line: 26, baseType: !445, size: 64, offset: 704)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1247, file: !1248, line: 27, baseType: !445, size: 64, offset: 768)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1247, file: !1248, line: 28, baseType: !445, size: 64, offset: 832)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1247, file: !1248, line: 29, baseType: !445, size: 64, offset: 896)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1247, file: !1248, line: 30, baseType: !445, size: 64, offset: 960)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1247, file: !1248, line: 31, baseType: !445, size: 64, offset: 1024)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1247, file: !1248, line: 32, baseType: !445, size: 64, offset: 1088)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1247, file: !1248, line: 33, baseType: !445, size: 64, offset: 1152)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1232, file: !1231, line: 63, baseType: !65, size: 32, offset: 1024)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1232, file: !1231, line: 69, baseType: !109, size: 16, offset: 1056)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1232, file: !1231, line: 70, baseType: !1274, size: 16, offset: 1072)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !100, line: 18, baseType: !1275)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !102, line: 23, baseType: !1276)
!1276 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1127, file: !130, line: 882, baseType: !55, size: 64, offset: 9024)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1127, file: !130, line: 885, baseType: !75, size: 32, offset: 9088)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1127, file: !130, line: 886, baseType: !1280, size: 64, offset: 9152)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !130, line: 732, flags: DIFlagFwdDecl)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1127, file: !130, line: 901, baseType: !1283, size: 64, offset: 9216)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1285, line: 68, size: 4800, elements: !1286)
!1285 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1286 = !{!1287, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1326, !1327, !1330, !1331, !1441, !1442, !1454, !1524, !1525, !1539, !1541}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1284, file: !1285, line: 69, baseType: !1288, size: 576)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1285, line: 23, size: 576, elements: !1289)
!1289 = !{!1290, !1291}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1288, file: !1285, line: 24, baseType: !553, size: 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, scope: !1288, file: !1285, line: 25, baseType: !1292, size: 512, offset: 64)
!1292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1288, file: !1285, line: 25, size: 512, elements: !1293)
!1293 = !{!1294, !1303}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1292, file: !1285, line: 26, baseType: !1295, size: 480)
!1295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1296, size: 480, elements: !1301)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1285, line: 17, size: 96, elements: !1297)
!1297 = !{!1298, !1299, !1300}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1296, file: !1285, line: 18, baseType: !553, size: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1296, file: !1285, line: 19, baseType: !553, size: 32, offset: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1296, file: !1285, line: 20, baseType: !553, size: 32, offset: 64)
!1301 = !{!1302}
!1302 = !DISubrange(count: 5)
!1303 = !DIDerivedType(tag: DW_TAG_member, scope: !1292, file: !1285, line: 27, baseType: !1304, size: 128)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1292, file: !1285, line: 27, size: 128, elements: !1305)
!1305 = !{!1306, !1308}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1304, file: !1285, line: 28, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1304, file: !1285, line: 29, baseType: !1307, size: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1284, file: !1285, line: 70, baseType: !1288, size: 576, offset: 576)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1284, file: !1285, line: 71, baseType: !1288, size: 576, offset: 1152)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1284, file: !1285, line: 72, baseType: !1283, size: 64, offset: 1728)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1284, file: !1285, line: 73, baseType: !38, size: 32, offset: 1792)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1284, file: !1285, line: 74, baseType: !490, size: 32, offset: 1824)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1284, file: !1285, line: 75, baseType: !499, size: 32, offset: 1856)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1284, file: !1285, line: 76, baseType: !1316, size: 192, offset: 1920)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1317, line: 9, size: 192, elements: !1318)
!1317 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1318 = !{!1319, !1320, !1324, !1325}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1316, file: !1317, line: 10, baseType: !726, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1316, file: !1317, line: 11, baseType: !1321, size: 64, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1323)
!1323 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1317, line: 7, flags: DIFlagFwdDecl)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1316, file: !1317, line: 12, baseType: !7, size: 32, offset: 128)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1316, file: !1317, line: 13, baseType: !778, size: 32, offset: 160)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1284, file: !1285, line: 77, baseType: !55, size: 64, offset: 2112)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1284, file: !1285, line: 80, baseType: !1328, size: 8, offset: 2176)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !41, line: 35, baseType: !1329)
!1329 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1284, file: !1285, line: 88, baseType: !113, size: 128, offset: 2240)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1284, file: !1285, line: 89, baseType: !1332, size: 64, offset: 2368)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1334, line: 195, size: 1728, elements: !1335)
!1334 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1335 = !{!1336, !1337, !1340, !1345, !1346, !1349, !1350, !1357, !1358, !1359, !1360, !1363, !1364, !1365, !1366, !1367, !1405, !1426}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1333, file: !1334, line: 196, baseType: !778, size: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1333, file: !1334, line: 197, baseType: !1338, size: 32, offset: 32)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1334, line: 28, baseType: !1339)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !41, line: 104, baseType: !1224)
!1340 = !DIDerivedType(tag: DW_TAG_member, scope: !1333, file: !1334, line: 198, baseType: !1341, size: 192, offset: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1333, file: !1334, line: 198, size: 192, elements: !1342)
!1342 = !{!1343, !1344}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1341, file: !1334, line: 199, baseType: !113, size: 128)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1341, file: !1334, line: 200, baseType: !877, size: 192, align: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1333, file: !1334, line: 205, baseType: !1178, size: 320, offset: 256)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1333, file: !1334, line: 206, baseType: !1347, size: 64, offset: 576)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1334, line: 206, flags: DIFlagFwdDecl)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1333, file: !1334, line: 207, baseType: !36, size: 64, offset: 640)
!1350 = !DIDerivedType(tag: DW_TAG_member, scope: !1333, file: !1334, line: 208, baseType: !1351, size: 64, offset: 704)
!1351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1333, file: !1334, line: 208, size: 64, elements: !1352)
!1352 = !{!1353, !1356}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1351, file: !1334, line: 209, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1355, line: 8, baseType: !733)
!1355 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1351, file: !1334, line: 210, baseType: !1354, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1333, file: !1334, line: 212, baseType: !1354, size: 64, offset: 768)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1333, file: !1334, line: 213, baseType: !490, size: 32, offset: 832)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1333, file: !1334, line: 214, baseType: !499, size: 32, offset: 864)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1333, file: !1334, line: 215, baseType: !1361, size: 32, offset: 896)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1334, line: 31, baseType: !1362)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !41, line: 110, baseType: !553)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1333, file: !1334, line: 216, baseType: !42, size: 16, offset: 928)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1333, file: !1334, line: 217, baseType: !42, size: 16, offset: 944)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1333, file: !1334, line: 221, baseType: !1276, size: 16, offset: 960)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1333, file: !1334, line: 228, baseType: !55, size: 64, offset: 1024)
!1367 = !DIDerivedType(tag: DW_TAG_member, scope: !1333, file: !1334, line: 245, baseType: !1368, size: 320, offset: 1088)
!1368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1333, file: !1334, line: 245, size: 320, elements: !1369)
!1369 = !{!1370, !1397}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1368, file: !1334, line: 246, baseType: !1371, size: 320)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1334, line: 114, size: 320, elements: !1372)
!1372 = !{!1373, !1374, !1386, !1389, !1396}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1371, file: !1334, line: 116, baseType: !55, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, scope: !1371, file: !1334, line: 117, baseType: !1375, size: 64, offset: 64)
!1375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1371, file: !1334, line: 117, size: 64, elements: !1376)
!1376 = !{!1377, !1385}
!1377 = !DIDerivedType(tag: DW_TAG_member, scope: !1375, file: !1334, line: 118, baseType: !1378, size: 64)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1375, file: !1334, line: 118, size: 64, elements: !1379)
!1379 = !{!1380, !1381}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1378, file: !1334, line: 120, baseType: !109, size: 16)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1378, file: !1334, line: 121, baseType: !1382, size: 48, offset: 16)
!1382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 48, elements: !1383)
!1383 = !{!1384}
!1384 = !DISubrange(count: 6)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1375, file: !1334, line: 127, baseType: !55, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1371, file: !1334, line: 129, baseType: !1387, size: 64, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1334, line: 102, flags: DIFlagFwdDecl)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1371, file: !1334, line: 130, baseType: !1390, size: 64, offset: 192)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1334, line: 108, size: 192, elements: !1392)
!1392 = !{!1393, !1394, !1395}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1391, file: !1334, line: 109, baseType: !713, size: 128, align: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1391, file: !1334, line: 110, baseType: !778, size: 32, offset: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1391, file: !1334, line: 111, baseType: !1328, size: 8, offset: 160)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1371, file: !1334, line: 131, baseType: !32, size: 64, offset: 256)
!1397 = !DIDerivedType(tag: DW_TAG_member, scope: !1368, file: !1334, line: 247, baseType: !1398, size: 320)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1368, file: !1334, line: 247, size: 320, elements: !1399)
!1399 = !{!1400, !1401, !1402, !1403, !1404}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1398, file: !1334, line: 248, baseType: !55, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1398, file: !1334, line: 249, baseType: !55, size: 64, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1398, file: !1334, line: 250, baseType: !1387, size: 64, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1398, file: !1334, line: 251, baseType: !1390, size: 64, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1398, file: !1334, line: 252, baseType: !410, size: 64, offset: 256)
!1405 = !DIDerivedType(tag: DW_TAG_member, scope: !1333, file: !1334, line: 260, baseType: !1406, size: 256, offset: 1408)
!1406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1333, file: !1334, line: 260, size: 256, elements: !1407)
!1407 = !{!1408, !1414}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1406, file: !1334, line: 261, baseType: !1409, size: 256)
!1409 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1334, line: 134, size: 256, elements: !1410)
!1410 = !{!1411, !1412}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1409, file: !1334, line: 135, baseType: !36, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1409, file: !1334, line: 136, baseType: !1413, size: 256)
!1413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 256, elements: !796)
!1414 = !DIDerivedType(tag: DW_TAG_member, scope: !1406, file: !1334, line: 262, baseType: !1415, size: 256)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1406, file: !1334, line: 262, size: 256, elements: !1416)
!1416 = !{!1417, !1418}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1415, file: !1334, line: 264, baseType: !113, size: 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1415, file: !1334, line: 265, baseType: !1419, size: 128, offset: 128)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1420, line: 22, size: 128, elements: !1421)
!1420 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1421 = !{!1422, !1425}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1419, file: !1420, line: 23, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1420, line: 23, flags: DIFlagFwdDecl)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1419, file: !1420, line: 24, baseType: !55, size: 64, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1333, file: !1334, line: 280, baseType: !1427, size: 64, offset: 1664)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1334, line: 176, size: 192, elements: !1429)
!1429 = !{!1430, !1439, !1440}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1428, file: !1334, line: 177, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1334, line: 171, baseType: !1432)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!38, !1332, !1435, !1437, !1332}
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1388)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1409)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1428, file: !1334, line: 178, baseType: !1332, size: 64, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1428, file: !1334, line: 179, baseType: !1387, size: 64, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1284, file: !1285, line: 90, baseType: !1178, size: 320, offset: 2432)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1284, file: !1285, line: 97, baseType: !1443, size: 256, offset: 2752)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1444, line: 98, size: 256, elements: !1445)
!1444 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1445 = !{!1446, !1447, !1448}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1443, file: !1444, line: 99, baseType: !726, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1443, file: !1444, line: 100, baseType: !113, size: 128, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1443, file: !1444, line: 101, baseType: !1449, size: 64, offset: 192)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1444, line: 21, baseType: !1450)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{null, !1453}
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1284, file: !1285, line: 99, baseType: !1455, size: 768, offset: 3008)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !28, line: 199, size: 768, elements: !1456)
!1456 = !{!1457, !1462}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1455, file: !28, line: 200, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!38, !1461}
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1455, file: !28, line: 201, baseType: !1463, size: 704, offset: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !28, line: 193, size: 704, elements: !1464)
!1464 = !{!1465, !1523}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1463, file: !28, line: 195, baseType: !1466, size: 640)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !28, line: 173, size: 640, elements: !1467)
!1467 = !{!1468, !1480, !1492, !1493, !1513, !1514, !1516, !1522}
!1468 = !DIDerivedType(tag: DW_TAG_member, scope: !1466, file: !28, line: 174, baseType: !1469, size: 192)
!1469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1466, file: !28, line: 174, size: 192, elements: !1470)
!1470 = !{!1471, !1479}
!1471 = !DIDerivedType(tag: DW_TAG_member, scope: !1469, file: !28, line: 175, baseType: !1472, size: 192)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1469, file: !28, line: 175, size: 192, elements: !1473)
!1473 = !{!1474, !1475, !1476, !1477, !1478}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1472, file: !28, line: 176, baseType: !49, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1472, file: !28, line: 177, baseType: !38, size: 32, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1472, file: !28, line: 178, baseType: !38, size: 32, offset: 96)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1472, file: !28, line: 179, baseType: !38, size: 32, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1472, file: !28, line: 180, baseType: !38, size: 32, offset: 160)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1469, file: !28, line: 182, baseType: !713, size: 128, align: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1466, file: !28, line: 184, baseType: !1481, size: 64, offset: 192)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1483, line: 26, size: 256, elements: !1484)
!1483 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1484 = !{!1485, !1486}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1482, file: !1483, line: 27, baseType: !7, size: 32)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1482, file: !1483, line: 28, baseType: !1487, size: 192, offset: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1488, line: 43, size: 192, elements: !1489)
!1488 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1489 = !{!1490, !1491}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1487, file: !1488, line: 44, baseType: !740, size: 32)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1487, file: !1488, line: 45, baseType: !113, size: 128, offset: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1466, file: !28, line: 185, baseType: !49, size: 64, offset: 256)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1466, file: !28, line: 186, baseType: !1494, size: 64, offset: 320)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !28, line: 204, size: 960, elements: !1496)
!1496 = !{!1497, !1498, !1502, !1509}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1495, file: !28, line: 205, baseType: !1455, size: 768)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1495, file: !28, line: 206, baseType: !1499, size: 64, offset: 768)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!1461, !1494}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1495, file: !28, line: 207, baseType: !1503, size: 64, offset: 832)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{null, !1506, !1507, !1508}
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1495, file: !28, line: 209, baseType: !1510, size: 64, offset: 896)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!38, !1506, !49}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1466, file: !28, line: 187, baseType: !1461, size: 64, offset: 384)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1466, file: !28, line: 188, baseType: !1515, size: 64, offset: 448)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1466, file: !28, line: 189, baseType: !1517, size: 64, offset: 512)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !28, line: 157, size: 256, elements: !1519)
!1519 = !{!1520, !1521}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1518, file: !28, line: 158, baseType: !877, size: 192, align: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1518, file: !28, line: 159, baseType: !1506, size: 64, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1466, file: !28, line: 190, baseType: !787, size: 64, offset: 576)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1463, file: !28, line: 196, baseType: !1009, size: 64, offset: 640)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1284, file: !1285, line: 100, baseType: !1506, size: 64, offset: 3776)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1284, file: !1285, line: 102, baseType: !1526, size: 64, offset: 3840)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1285, line: 107, size: 1152, elements: !1528)
!1528 = !{!1529, !1530, !1531, !1532, !1533, !1537}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1527, file: !1285, line: 108, baseType: !791, size: 128)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1527, file: !1285, line: 109, baseType: !1283, size: 64, offset: 128)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1527, file: !1285, line: 110, baseType: !490, size: 32, offset: 192)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1527, file: !1285, line: 111, baseType: !65, size: 32, offset: 224)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1527, file: !1285, line: 112, baseType: !1534, size: 640, offset: 256)
!1534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 640, elements: !1535)
!1535 = !{!1536}
!1536 = !DISubrange(count: 10)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1527, file: !1285, line: 113, baseType: !1538, size: 256, offset: 896)
!1538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 256, elements: !796)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1284, file: !1285, line: 103, baseType: !1540, size: 640, offset: 3904)
!1540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 640, elements: !1535)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1284, file: !1285, line: 104, baseType: !1542, size: 256, offset: 4544)
!1542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 256, elements: !796)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1127, file: !130, line: 904, baseType: !700, size: 64, offset: 9280)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1127, file: !130, line: 906, baseType: !1545, size: 64, offset: 9344)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !130, line: 906, flags: DIFlagFwdDecl)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1127, file: !130, line: 930, baseType: !65, size: 32, offset: 9408)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1127, file: !130, line: 933, baseType: !65, size: 32, offset: 9440)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1127, file: !130, line: 935, baseType: !1550, size: 64, offset: 9472)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !154, line: 103, size: 64, elements: !1551)
!1551 = !{!1552}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1550, file: !154, line: 104, baseType: !1553, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !154, line: 101, flags: DIFlagFwdDecl)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1127, file: !130, line: 940, baseType: !726, size: 64, offset: 9536)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1127, file: !130, line: 942, baseType: !1443, size: 256, offset: 9600)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1124, file: !130, line: 986, baseType: !1558, offset: 10240)
!1558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, elements: !697)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !829, file: !830, line: 882, baseType: !1123, size: 64, offset: 9792)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !829, file: !830, line: 884, baseType: !38, size: 32, offset: 9856)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !829, file: !830, line: 885, baseType: !38, size: 32, offset: 9888)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !829, file: !830, line: 886, baseType: !38, size: 32, offset: 9920)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !829, file: !830, line: 888, baseType: !38, size: 32, offset: 9952)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !829, file: !830, line: 890, baseType: !55, size: 64, offset: 9984)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !829, file: !830, line: 893, baseType: !7, size: 32, offset: 10048)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !829, file: !830, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !829, file: !830, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !829, file: !830, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !829, file: !830, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !829, file: !830, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !829, file: !830, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !829, file: !830, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !829, file: !830, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !829, file: !830, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !829, file: !830, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !829, file: !830, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !829, file: !830, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !829, file: !830, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !829, file: !830, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !829, file: !830, line: 969, baseType: !55, size: 64, offset: 10176)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !829, file: !830, line: 971, baseType: !1582, size: 448, offset: 10240)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !124, line: 25, size: 448, elements: !1583)
!1583 = !{!1584, !1585, !1590}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1582, file: !124, line: 26, baseType: !55, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1582, file: !124, line: 27, baseType: !1586, size: 64, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!445, !1589}
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, scope: !1582, file: !124, line: 28, baseType: !1591, size: 320, offset: 128)
!1591 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1582, file: !124, line: 28, size: 320, elements: !1592)
!1592 = !{!1593, !1603, !1628}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1591, file: !124, line: 37, baseType: !1594, size: 320)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1591, file: !124, line: 30, size: 320, elements: !1595)
!1595 = !{!1596, !1598, !1599, !1600, !1601, !1602}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1594, file: !124, line: 31, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1594, file: !124, line: 32, baseType: !553, size: 32, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1594, file: !124, line: 33, baseType: !553, size: 32, offset: 96)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1594, file: !124, line: 34, baseType: !553, size: 32, offset: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1594, file: !124, line: 35, baseType: !557, size: 64, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1594, file: !124, line: 36, baseType: !1597, size: 64, offset: 256)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1591, file: !124, line: 47, baseType: !1604, size: 192)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1591, file: !124, line: 39, size: 192, elements: !1605)
!1605 = !{!1606, !1607, !1608, !1627}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1604, file: !124, line: 40, baseType: !994, size: 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1604, file: !124, line: 41, baseType: !123, size: 32, offset: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, scope: !1604, file: !124, line: 42, baseType: !1609, size: 64, offset: 64)
!1609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1604, file: !124, line: 42, size: 64, elements: !1610)
!1610 = !{!1611, !1619}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1609, file: !124, line: 43, baseType: !1612, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1614, line: 7, size: 128, elements: !1615)
!1614 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1615 = !{!1616, !1618}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1613, file: !1614, line: 8, baseType: !1617, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !53, line: 93, baseType: !59)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1613, file: !1614, line: 9, baseType: !59, size: 64, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1609, file: !124, line: 44, baseType: !1620, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1622, line: 7, size: 64, elements: !1623)
!1622 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1623 = !{!1624, !1626}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1621, file: !1622, line: 8, baseType: !1625, size: 32)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1622, line: 5, baseType: !1224)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1621, file: !1622, line: 9, baseType: !1224, size: 32, offset: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1604, file: !124, line: 46, baseType: !557, size: 64, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1591, file: !124, line: 55, baseType: !1629, size: 256)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1591, file: !124, line: 49, size: 256, elements: !1630)
!1630 = !{!1631, !1634, !1635, !1636, !1637}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1629, file: !124, line: 50, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !124, line: 14, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1629, file: !124, line: 51, baseType: !38, size: 32, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1629, file: !124, line: 52, baseType: !38, size: 32, offset: 96)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1629, file: !124, line: 53, baseType: !55, size: 64, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1629, file: !124, line: 54, baseType: !55, size: 64, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !829, file: !830, line: 973, baseType: !1639, size: 32, offset: 10688)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !41, line: 27, baseType: !1640)
!1640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !53, line: 28, baseType: !38)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !829, file: !830, line: 974, baseType: !1639, size: 32, offset: 10720)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !829, file: !830, line: 978, baseType: !55, size: 64, offset: 10752)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !829, file: !830, line: 987, baseType: !828, size: 64, offset: 10816)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !829, file: !830, line: 990, baseType: !828, size: 64, offset: 10880)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !829, file: !830, line: 995, baseType: !113, size: 128, offset: 10944)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !829, file: !830, line: 996, baseType: !113, size: 128, offset: 11072)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !829, file: !830, line: 997, baseType: !828, size: 64, offset: 11200)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !829, file: !830, line: 1005, baseType: !113, size: 128, offset: 11264)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !829, file: !830, line: 1006, baseType: !113, size: 128, offset: 11392)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !829, file: !830, line: 1009, baseType: !774, size: 64, offset: 11520)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !829, file: !830, line: 1010, baseType: !1652, size: 512, offset: 11584)
!1652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !791, size: 512, elements: !796)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !829, file: !830, line: 1011, baseType: !113, size: 128, offset: 12096)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !829, file: !830, line: 1012, baseType: !113, size: 128, offset: 12224)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !829, file: !830, line: 1014, baseType: !1481, size: 64, offset: 12352)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !829, file: !830, line: 1017, baseType: !1657, size: 64, offset: 12416)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !829, file: !830, line: 1020, baseType: !1657, size: 64, offset: 12480)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !829, file: !830, line: 1023, baseType: !36, size: 64, offset: 12544)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !829, file: !830, line: 1025, baseType: !557, size: 64, offset: 12608)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !829, file: !830, line: 1026, baseType: !557, size: 64, offset: 12672)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !829, file: !830, line: 1031, baseType: !557, size: 64, offset: 12736)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !829, file: !830, line: 1032, baseType: !1664, size: 192, offset: 12800)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !830, line: 324, size: 192, elements: !1665)
!1665 = !{!1666, !1667, !1668}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1664, file: !830, line: 326, baseType: !557, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1664, file: !830, line: 327, baseType: !557, size: 64, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1664, file: !830, line: 328, baseType: !740, size: 32, offset: 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !829, file: !830, line: 1041, baseType: !55, size: 64, offset: 12992)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !829, file: !830, line: 1042, baseType: !55, size: 64, offset: 13056)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !829, file: !830, line: 1045, baseType: !557, size: 64, offset: 13120)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !829, file: !830, line: 1048, baseType: !557, size: 64, offset: 13184)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !829, file: !830, line: 1051, baseType: !55, size: 64, offset: 13248)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !829, file: !830, line: 1052, baseType: !55, size: 64, offset: 13312)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !829, file: !830, line: 1055, baseType: !1676, size: 640, offset: 13376)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1677, line: 132, size: 640, elements: !1678)
!1677 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1678 = !{!1679, !1685, !1686}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1676, file: !1677, line: 133, baseType: !1680, size: 576)
!1680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1681, size: 576, elements: !411)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1677, line: 117, size: 192, elements: !1682)
!1682 = !{!1683, !1684}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1681, file: !1677, line: 118, baseType: !557, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1681, file: !1677, line: 119, baseType: !1003, size: 128, offset: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1676, file: !1677, line: 134, baseType: !7, size: 32, offset: 576)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1676, file: !1677, line: 135, baseType: !7, size: 32, offset: 608)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !829, file: !830, line: 1058, baseType: !1688, size: 448, offset: 14016)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1677, line: 144, size: 448, elements: !1689)
!1689 = !{!1690, !1691, !1692}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1688, file: !1677, line: 145, baseType: !713, size: 128, align: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1688, file: !1677, line: 146, baseType: !735, size: 256, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1688, file: !1677, line: 147, baseType: !7, size: 32, offset: 384)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !829, file: !830, line: 1064, baseType: !1694, size: 64, offset: 14464)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1696)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1697, line: 110, size: 1472, elements: !1698)
!1697 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1698 = !{!1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1748, !1749, !1750, !1758}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1696, file: !1697, line: 111, baseType: !726, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1696, file: !1697, line: 112, baseType: !490, size: 32, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1696, file: !1697, line: 113, baseType: !499, size: 32, offset: 96)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1696, file: !1697, line: 114, baseType: !490, size: 32, offset: 128)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1696, file: !1697, line: 115, baseType: !499, size: 32, offset: 160)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1696, file: !1697, line: 116, baseType: !490, size: 32, offset: 192)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1696, file: !1697, line: 117, baseType: !499, size: 32, offset: 224)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1696, file: !1697, line: 118, baseType: !490, size: 32, offset: 256)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1696, file: !1697, line: 119, baseType: !499, size: 32, offset: 288)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1696, file: !1697, line: 120, baseType: !7, size: 32, offset: 320)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1696, file: !1697, line: 121, baseType: !1710, size: 64, offset: 384)
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1711, line: 24, baseType: !1712)
!1711 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1711, line: 24, size: 64, elements: !1713)
!1713 = !{!1714}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1712, file: !1711, line: 24, baseType: !557, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1696, file: !1697, line: 122, baseType: !1710, size: 64, offset: 448)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1696, file: !1697, line: 123, baseType: !1710, size: 64, offset: 512)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1696, file: !1697, line: 124, baseType: !1710, size: 64, offset: 576)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1696, file: !1697, line: 125, baseType: !1710, size: 64, offset: 640)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1696, file: !1697, line: 127, baseType: !103, size: 8, offset: 704)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1696, file: !1697, line: 129, baseType: !1332, size: 64, offset: 768)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1696, file: !1697, line: 130, baseType: !1332, size: 64, offset: 832)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1696, file: !1697, line: 131, baseType: !1332, size: 64, offset: 896)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1696, file: !1697, line: 132, baseType: !1332, size: 64, offset: 960)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1696, file: !1697, line: 135, baseType: !36, size: 64, offset: 1024)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1696, file: !1697, line: 137, baseType: !1726, size: 64, offset: 1088)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1728, line: 14, size: 1088, elements: !1729)
!1728 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1729 = !{!1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1727, file: !1728, line: 15, baseType: !778, size: 32)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1727, file: !1728, line: 17, baseType: !1216, size: 320, offset: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1727, file: !1728, line: 19, baseType: !55, size: 64, offset: 384)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1727, file: !1728, line: 20, baseType: !726, size: 64, offset: 448)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1727, file: !1728, line: 23, baseType: !791, size: 128, offset: 512)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1727, file: !1728, line: 24, baseType: !490, size: 32, offset: 640)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1727, file: !1728, line: 29, baseType: !726, size: 64, offset: 704)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1727, file: !1728, line: 36, baseType: !1738, size: 320, offset: 768)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1739, line: 15, size: 320, elements: !1740)
!1739 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1740 = !{!1741, !1742, !1743, !1744, !1745, !1746, !1747}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1738, file: !1739, line: 16, baseType: !740, size: 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1738, file: !1739, line: 18, baseType: !38, size: 32, offset: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1738, file: !1739, line: 19, baseType: !38, size: 32, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1738, file: !1739, line: 20, baseType: !38, size: 32, offset: 96)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1738, file: !1739, line: 21, baseType: !38, size: 32, offset: 128)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1738, file: !1739, line: 22, baseType: !55, size: 64, offset: 192)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1738, file: !1739, line: 23, baseType: !55, size: 64, offset: 256)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1696, file: !1697, line: 138, baseType: !1283, size: 64, offset: 1152)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1696, file: !1697, line: 139, baseType: !1526, size: 64, offset: 1216)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1696, file: !1697, line: 140, baseType: !1751, size: 64, offset: 1280)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1697, line: 25, size: 64, elements: !1753)
!1753 = !{!1754, !1755, !1756}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1752, file: !1697, line: 26, baseType: !65, size: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1752, file: !1697, line: 27, baseType: !38, size: 32, offset: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1752, file: !1697, line: 28, baseType: !1757, offset: 64)
!1757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, elements: !697)
!1758 = !DIDerivedType(tag: DW_TAG_member, scope: !1696, file: !1697, line: 142, baseType: !1759, size: 128, offset: 1344)
!1759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1696, file: !1697, line: 142, size: 128, elements: !1760)
!1760 = !{!1761, !1762}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1759, file: !1697, line: 143, baseType: !38, size: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1759, file: !1697, line: 144, baseType: !713, size: 128, align: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !829, file: !830, line: 1067, baseType: !1694, size: 64, offset: 14528)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !829, file: !830, line: 1070, baseType: !1694, size: 64, offset: 14592)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !829, file: !830, line: 1074, baseType: !1332, size: 64, offset: 14656)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !829, file: !830, line: 1084, baseType: !1767, size: 128, offset: 14720)
!1767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 128, elements: !1768)
!1768 = !{!1769}
!1769 = !DISubrange(count: 16)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !829, file: !830, line: 1086, baseType: !1771, size: 64, offset: 14848)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !830, line: 55, flags: DIFlagFwdDecl)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !829, file: !830, line: 1089, baseType: !1774, size: 64, offset: 14912)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1775, line: 12, size: 64, elements: !1776)
!1775 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1776 = !{!1777}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1774, file: !1775, line: 13, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1775, line: 8, flags: DIFlagFwdDecl)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !829, file: !830, line: 1090, baseType: !1781, size: 128, offset: 14976)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1782, line: 13, size: 128, elements: !1783)
!1782 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1783 = !{!1784}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1781, file: !1782, line: 14, baseType: !113, size: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !829, file: !830, line: 1097, baseType: !1786, size: 64, offset: 15104)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !830, line: 50, flags: DIFlagFwdDecl)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !829, file: !830, line: 1100, baseType: !1789, size: 64, offset: 15168)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !830, line: 1100, flags: DIFlagFwdDecl)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !829, file: !830, line: 1103, baseType: !1792, size: 64, offset: 15232)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !830, line: 53, flags: DIFlagFwdDecl)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !829, file: !830, line: 1107, baseType: !1795, size: 64, offset: 15296)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1797, line: 31, size: 576, elements: !1798)
!1797 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1798 = !{!1799, !1800, !1803, !1806, !1809, !1810, !1813, !1816, !1817}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1796, file: !1797, line: 32, baseType: !778, size: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1796, file: !1797, line: 33, baseType: !1801, size: 64, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1797, line: 9, flags: DIFlagFwdDecl)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1796, file: !1797, line: 34, baseType: !1804, size: 64, offset: 128)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1797, line: 10, flags: DIFlagFwdDecl)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1796, file: !1797, line: 35, baseType: !1807, size: 64, offset: 192)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1797, line: 8, flags: DIFlagFwdDecl)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1796, file: !1797, line: 36, baseType: !807, size: 64, offset: 256)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1796, file: !1797, line: 37, baseType: !1811, size: 64, offset: 320)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1334, line: 34, flags: DIFlagFwdDecl)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1796, file: !1797, line: 38, baseType: !1814, size: 64, offset: 384)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1797, line: 38, flags: DIFlagFwdDecl)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1796, file: !1797, line: 39, baseType: !1814, size: 64, offset: 448)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1796, file: !1797, line: 40, baseType: !1818, size: 64, offset: 512)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1820, line: 771, size: 384, elements: !1821)
!1820 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!1821 = !{!1822, !1823, !1824, !1825}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1819, file: !1820, line: 772, baseType: !1316, size: 192)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1819, file: !1820, line: 773, baseType: !1283, size: 64, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1819, file: !1820, line: 774, baseType: !1526, size: 64, offset: 256)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !1819, file: !1820, line: 775, baseType: !1826, size: 64, offset: 320)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1828, line: 209, size: 4736, elements: !1829)
!1828 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!1829 = !{!1830, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1827, file: !1828, line: 215, baseType: !1831, size: 896)
!1831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1832, size: 896, elements: !2336)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !1828, line: 152, size: 1600, elements: !1834)
!1834 = !{!1835, !2387, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2510}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !1833, file: !1828, line: 154, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !1828, line: 389, size: 7872, elements: !1838)
!1838 = !{!1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !2287, !2304, !2305, !2309, !2310, !2311, !2312, !2313, !2314, !2333, !2334, !2338, !2339, !2340, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2374, !2377, !2378, !2385}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1837, file: !1828, line: 391, baseType: !1833, size: 1600)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1837, file: !1828, line: 393, baseType: !55, size: 64, offset: 1600)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1837, file: !1828, line: 401, baseType: !38, size: 32, offset: 1664)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !1837, file: !1828, line: 404, baseType: !38, size: 32, offset: 1696)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !1837, file: !1828, line: 417, baseType: !38, size: 32, offset: 1728)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !1837, file: !1828, line: 418, baseType: !38, size: 32, offset: 1760)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !1837, file: !1828, line: 419, baseType: !38, size: 32, offset: 1792)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !1837, file: !1828, line: 432, baseType: !38, size: 32, offset: 1824)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !1837, file: !1828, line: 433, baseType: !38, size: 32, offset: 1856)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !1837, file: !1828, line: 434, baseType: !38, size: 32, offset: 1888)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !1837, file: !1828, line: 436, baseType: !38, size: 32, offset: 1920)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !1837, file: !1828, line: 439, baseType: !7, size: 32, offset: 1952)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1837, file: !1828, line: 441, baseType: !1852, size: 64, offset: 1984)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1854, line: 190, size: 1152, elements: !1855)
!1854 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1855 = !{!1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !2279, !2280, !2281, !2282, !2283, !2286}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1853, file: !1854, line: 191, baseType: !65, size: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1853, file: !1854, line: 192, baseType: !65, size: 32, offset: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1853, file: !1854, line: 202, baseType: !1852, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1853, file: !1854, line: 203, baseType: !32, size: 64, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1853, file: !1854, line: 205, baseType: !877, size: 192, align: 64, offset: 192)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1853, file: !1854, line: 207, baseType: !1257, size: 64, offset: 384)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1853, file: !1854, line: 208, baseType: !7, size: 32, offset: 448)
!1863 = !DIDerivedType(tag: DW_TAG_member, scope: !1853, file: !1854, line: 209, baseType: !1864, size: 256, offset: 512)
!1864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1853, file: !1854, line: 209, size: 256, elements: !1865)
!1865 = !{!1866, !1875, !1879}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1864, file: !1854, line: 210, baseType: !1867, size: 256)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1854, line: 153, size: 256, elements: !1868)
!1868 = !{!1869, !1870, !1871, !1874}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1867, file: !1854, line: 154, baseType: !55, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1867, file: !1854, line: 156, baseType: !1009, size: 64, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1867, file: !1854, line: 162, baseType: !1872, size: 64, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1854, line: 162, flags: DIFlagFwdDecl)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1867, file: !1854, line: 167, baseType: !55, size: 64, offset: 192)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1864, file: !1854, line: 211, baseType: !1876, size: 64)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1854, line: 170, size: 64, elements: !1877)
!1877 = !{!1878}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1876, file: !1854, line: 171, baseType: !1852, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1864, file: !1854, line: 212, baseType: !1880, size: 256)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1854, line: 174, size: 256, elements: !1881)
!1881 = !{!1882, !2274, !2277, !2278}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1880, file: !1854, line: 175, baseType: !1883, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1885)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1854, line: 271, size: 768, elements: !1886)
!1886 = !{!1887, !2247, !2251, !2252, !2253, !2254, !2255, !2259, !2260, !2261, !2262, !2270}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1885, file: !1854, line: 276, baseType: !1888, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!38, !1891}
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1854, line: 251, size: 1216, elements: !1893)
!1893 = !{!1894, !1895, !1896, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1892, file: !1854, line: 253, baseType: !1852, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1892, file: !1854, line: 254, baseType: !700, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1892, file: !1854, line: 255, baseType: !1897, size: 64, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1899, line: 17, size: 960, elements: !1900)
!1899 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1900 = !{!1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1930, !1931, !1934}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1898, file: !1899, line: 18, baseType: !410, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1898, file: !1899, line: 19, baseType: !51, size: 64, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1898, file: !1899, line: 20, baseType: !51, size: 64, offset: 128)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1898, file: !1899, line: 21, baseType: !51, size: 64, offset: 192)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1898, file: !1899, line: 22, baseType: !51, size: 64, offset: 256)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1898, file: !1899, line: 23, baseType: !57, size: 64, offset: 320)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1898, file: !1899, line: 24, baseType: !57, size: 64, offset: 384)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1898, file: !1899, line: 25, baseType: !735, size: 256, offset: 448)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1898, file: !1899, line: 26, baseType: !1910, size: 64, offset: 704)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1912)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1899, line: 32, size: 256, elements: !1913)
!1913 = !{!1914, !1918, !1922, !1926}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1912, file: !1899, line: 33, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!36, !1897, !56}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1912, file: !1899, line: 34, baseType: !1919, size: 64, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{null, !1897, !36}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1912, file: !1899, line: 35, baseType: !1923, size: 64, offset: 128)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!36, !1897, !36, !56}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1912, file: !1899, line: 36, baseType: !1927, size: 64, offset: 192)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!38, !1897, !36}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1898, file: !1899, line: 27, baseType: !38, size: 32, offset: 768)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1898, file: !1899, line: 28, baseType: !1932, size: 64, offset: 832)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !701)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1898, file: !1899, line: 29, baseType: !36, size: 64, offset: 896)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1892, file: !1854, line: 256, baseType: !36, size: 64, offset: 192)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1892, file: !1854, line: 259, baseType: !735, size: 256, offset: 256)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1892, file: !1854, line: 260, baseType: !735, size: 256, offset: 512)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1892, file: !1854, line: 261, baseType: !38, size: 32, offset: 768)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1892, file: !1854, line: 262, baseType: !113, size: 128, offset: 832)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1892, file: !1854, line: 263, baseType: !410, size: 64, offset: 960)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1892, file: !1854, line: 265, baseType: !51, size: 64, offset: 1024)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1892, file: !1854, line: 266, baseType: !1328, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1892, file: !1854, line: 267, baseType: !1328, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1892, file: !1854, line: 268, baseType: !1945, size: 64, offset: 1152)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1947)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1948, line: 563, size: 1024, elements: !1949)
!1948 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1949 = !{!1950, !2023, !2024, !2028, !2032, !2036, !2213, !2217, !2221, !2225, !2226, !2227, !2231, !2235, !2239, !2243}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1947, file: !1948, line: 564, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{null, !1954}
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !130, line: 625, size: 1344, elements: !1956)
!1956 = !{!1957, !1966, !1967, !1973, !1980, !1981, !1986, !1987, !1992, !1993, !1996, !1997, !1998, !1999, !2000, !2001, !2021}
!1957 = !DIDerivedType(tag: DW_TAG_member, scope: !1955, file: !130, line: 628, baseType: !1958, size: 128)
!1958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1955, file: !130, line: 628, size: 128, elements: !1959)
!1959 = !{!1960, !1965}
!1960 = !DIDerivedType(tag: DW_TAG_member, scope: !1958, file: !130, line: 629, baseType: !1961, size: 128)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1958, file: !130, line: 629, size: 128, elements: !1962)
!1962 = !{!1963, !1964}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1961, file: !130, line: 631, baseType: !55, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1961, file: !130, line: 632, baseType: !55, size: 64, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1958, file: !130, line: 635, baseType: !713, size: 128, align: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1955, file: !130, line: 639, baseType: !1123, size: 64, offset: 128)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1955, file: !130, line: 640, baseType: !1968, size: 64, offset: 192)
!1968 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1159, line: 297, baseType: !1969)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1159, line: 297, size: 64, elements: !1970)
!1970 = !{!1971}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1969, file: !1159, line: 297, baseType: !1972, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1164, line: 19, baseType: !55)
!1973 = !DIDerivedType(tag: DW_TAG_member, scope: !1955, file: !130, line: 646, baseType: !1974, size: 64, offset: 256)
!1974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1955, file: !130, line: 646, size: 64, elements: !1975)
!1975 = !{!1976, !1979}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1974, file: !130, line: 647, baseType: !1977, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1978)
!1978 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !130, line: 542, baseType: !55)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1974, file: !130, line: 648, baseType: !1978, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1955, file: !130, line: 666, baseType: !38, size: 32, offset: 320)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1955, file: !130, line: 667, baseType: !1982, size: 64, offset: 384)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !130, line: 579, size: 320, elements: !1984)
!1984 = !{!1985}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1983, file: !130, line: 580, baseType: !1178, size: 320)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1955, file: !130, line: 670, baseType: !1328, size: 8, offset: 448)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1955, file: !130, line: 681, baseType: !1988, size: 256, offset: 512)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1955, file: !130, line: 678, size: 256, elements: !1989)
!1989 = !{!1990, !1991}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1988, file: !130, line: 679, baseType: !877, size: 192, align: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1988, file: !130, line: 680, baseType: !55, size: 64, offset: 192)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1955, file: !130, line: 689, baseType: !113, size: 128, offset: 768)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1955, file: !130, line: 691, baseType: !1994, size: 64, offset: 896)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !130, line: 691, flags: DIFlagFwdDecl)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1955, file: !130, line: 694, baseType: !1945, size: 64, offset: 960)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1955, file: !130, line: 697, baseType: !55, size: 64, offset: 1024)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1955, file: !130, line: 699, baseType: !700, size: 64, offset: 1088)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1955, file: !130, line: 700, baseType: !36, size: 64, offset: 1152)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1955, file: !130, line: 711, baseType: !726, size: 64, offset: 1216)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1955, file: !130, line: 717, baseType: !2002, size: 64, offset: 1280)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !2004, line: 44, size: 256, elements: !2005)
!2004 = !DIFile(filename: "./include/linux/mempolicy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb371e8a578bad8ff65f30ddf87a2459")
!2005 = !{!2006, !2007, !2008, !2009, !2015, !2016}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2003, file: !2004, line: 45, baseType: !65, size: 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2003, file: !2004, line: 46, baseType: !42, size: 16, offset: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2003, file: !2004, line: 47, baseType: !42, size: 16, offset: 48)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !2003, file: !2004, line: 48, baseType: !2010, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2011, line: 99, baseType: !2012)
!2011 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2011, line: 99, size: 64, elements: !2013)
!2013 = !{!2014}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2012, file: !2011, line: 99, baseType: !1074, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "home_node", scope: !2003, file: !2004, line: 49, baseType: !38, size: 32, offset: 128)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !2003, file: !2004, line: 54, baseType: !2017, size: 64, offset: 192)
!2017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2003, file: !2004, line: 51, size: 64, elements: !2018)
!2018 = !{!2019, !2020}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mems_allowed", scope: !2017, file: !2004, line: 52, baseType: !2010, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "user_nodemask", scope: !2017, file: !2004, line: 53, baseType: !2010, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1955, file: !130, line: 722, baseType: !2022, offset: 1344)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !130, line: 570, elements: !1144)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1947, file: !1948, line: 569, baseType: !1951, size: 64, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1947, file: !1948, line: 571, baseType: !2025, size: 64, offset: 128)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!38, !1954, !55}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1947, file: !1948, line: 572, baseType: !2029, size: 64, offset: 192)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!38, !1954}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1947, file: !1948, line: 578, baseType: !2033, size: 64, offset: 256)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!38, !1954, !55, !55, !55}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1947, file: !1948, line: 580, baseType: !2037, size: 64, offset: 320)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!2040, !2041}
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !130, line: 1184, baseType: !7)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1948, line: 512, size: 896, elements: !2043)
!2043 = !{!2044, !2052, !2053, !2060, !2067, !2077, !2206, !2207, !2209, !2211}
!2044 = !DIDerivedType(tag: DW_TAG_member, scope: !2042, file: !1948, line: 513, baseType: !2045, size: 320)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2042, file: !1948, line: 513, size: 320, elements: !2046)
!2046 = !{!2047, !2048, !2049, !2050, !2051}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2045, file: !1948, line: 514, baseType: !1954, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2045, file: !1948, line: 515, baseType: !821, size: 32, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2045, file: !1948, line: 516, baseType: !55, size: 64, offset: 128)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2045, file: !1948, line: 517, baseType: !55, size: 64, offset: 192)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2045, file: !1948, line: 518, baseType: !55, size: 64, offset: 256)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2042, file: !1948, line: 520, baseType: !129, size: 32, offset: 320)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2042, file: !1948, line: 522, baseType: !2054, size: 64, offset: 384)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1164, line: 22, baseType: !2056)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1164, line: 22, size: 64, elements: !2057)
!2057 = !{!2058}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2056, file: !1164, line: 22, baseType: !2059, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1164, line: 15, baseType: !55)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2042, file: !1948, line: 524, baseType: !2061, size: 64, offset: 448)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1159, line: 372, baseType: !2063)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1159, line: 372, size: 64, elements: !2064)
!2064 = !{!2065}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2063, file: !1159, line: 372, baseType: !2066, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1164, line: 16, baseType: !55)
!2067 = !DIDerivedType(tag: DW_TAG_member, scope: !2042, file: !1948, line: 527, baseType: !2068, size: 64, offset: 512)
!2068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2042, file: !1948, line: 527, size: 64, elements: !2069)
!2069 = !{!2070, !2076}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2068, file: !1948, line: 528, baseType: !2071, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1164, line: 21, baseType: !2072)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1164, line: 21, size: 64, elements: !2073)
!2073 = !{!2074}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2072, file: !1164, line: 21, baseType: !2075, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1164, line: 14, baseType: !55)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2068, file: !1948, line: 529, baseType: !2055, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2042, file: !1948, line: 534, baseType: !2078, size: 64, offset: 576)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !130, line: 74, size: 512, align: 128, elements: !2080)
!2080 = !{!2081, !2082, !2200, !2205}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2079, file: !130, line: 75, baseType: !55, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, scope: !2079, file: !130, line: 83, baseType: !2083, size: 320, offset: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2079, file: !130, line: 83, size: 320, elements: !2084)
!2084 = !{!2085, !2106, !2120, !2124, !2199}
!2085 = !DIDerivedType(tag: DW_TAG_member, scope: !2083, file: !130, line: 84, baseType: !2086, size: 320)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2083, file: !130, line: 84, size: 320, elements: !2087)
!2087 = !{!2088, !2099, !2100, !2105}
!2088 = !DIDerivedType(tag: DW_TAG_member, scope: !2086, file: !130, line: 90, baseType: !2089, size: 128)
!2089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2086, file: !130, line: 90, size: 128, elements: !2090)
!2090 = !{!2091, !2092, !2097, !2098}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2089, file: !130, line: 91, baseType: !113, size: 128)
!2092 = !DIDerivedType(tag: DW_TAG_member, scope: !2089, file: !130, line: 94, baseType: !2093, size: 128)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2089, file: !130, line: 94, size: 128, elements: !2094)
!2094 = !{!2095, !2096}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2093, file: !130, line: 96, baseType: !36, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2093, file: !130, line: 98, baseType: !7, size: 32, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2089, file: !130, line: 102, baseType: !113, size: 128)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2089, file: !130, line: 103, baseType: !113, size: 128)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2086, file: !130, line: 106, baseType: !480, size: 64, offset: 128)
!2100 = !DIDerivedType(tag: DW_TAG_member, scope: !2086, file: !130, line: 107, baseType: !2101, size: 64, offset: 192)
!2101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2086, file: !130, line: 107, size: 64, elements: !2102)
!2102 = !{!2103, !2104}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2101, file: !130, line: 108, baseType: !55, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2101, file: !130, line: 109, baseType: !55, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2086, file: !130, line: 117, baseType: !55, size: 64, offset: 256)
!2106 = !DIDerivedType(tag: DW_TAG_member, scope: !2083, file: !130, line: 119, baseType: !2107, size: 320)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2083, file: !130, line: 119, size: 320, elements: !2108)
!2108 = !{!2109, !2110, !2113, !2114, !2115}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2107, file: !130, line: 124, baseType: !55, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2107, file: !130, line: 125, baseType: !2111, size: 64, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !130, line: 125, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2107, file: !130, line: 126, baseType: !55, size: 64, offset: 128)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2107, file: !130, line: 127, baseType: !55, size: 64, offset: 192)
!2115 = !DIDerivedType(tag: DW_TAG_member, scope: !2107, file: !130, line: 128, baseType: !2116, size: 64, offset: 256)
!2116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2107, file: !130, line: 128, size: 64, elements: !2117)
!2117 = !{!2118, !2119}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2116, file: !130, line: 133, baseType: !55, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2116, file: !130, line: 138, baseType: !726, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, scope: !2083, file: !130, line: 141, baseType: !2121, size: 64)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2083, file: !130, line: 141, size: 64, elements: !2122)
!2122 = !{!2123}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2121, file: !130, line: 142, baseType: !55, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, scope: !2083, file: !130, line: 144, baseType: !2125, size: 128)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2083, file: !130, line: 144, size: 128, elements: !2126)
!2126 = !{!2127, !2198}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2125, file: !130, line: 146, baseType: !2128, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !146, line: 126, size: 1216, elements: !2130)
!2130 = !{!2131, !2141, !2162, !2163, !2164, !2165, !2166, !2180, !2181, !2182}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2129, file: !146, line: 127, baseType: !2132, size: 384)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !146, line: 21, size: 384, elements: !2133)
!2133 = !{!2134, !2135, !2137, !2138, !2139, !2140}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2132, file: !146, line: 22, baseType: !55, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2132, file: !146, line: 23, baseType: !2136, size: 64, offset: 64)
!2136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2132, file: !146, line: 24, baseType: !2136, size: 64, offset: 128)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2132, file: !146, line: 25, baseType: !55, size: 64, offset: 192)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2132, file: !146, line: 26, baseType: !55, size: 64, offset: 256)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2132, file: !146, line: 27, baseType: !55, size: 64, offset: 320)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2129, file: !146, line: 128, baseType: !2142, size: 128, offset: 384)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2143, line: 105, size: 128, elements: !2144)
!2143 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2144 = !{!2145, !2146}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2142, file: !2143, line: 110, baseType: !55, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2142, file: !2143, line: 118, baseType: !2147, size: 64, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2143, line: 95, size: 448, elements: !2149)
!2149 = !{!2150, !2151, !2157, !2158, !2159, !2160, !2161}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2148, file: !2143, line: 96, baseType: !726, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2148, file: !2143, line: 97, baseType: !2152, size: 64, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2143, line: 60, baseType: !2154)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{null, !2156}
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2148, file: !2143, line: 98, baseType: !2152, size: 64, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2148, file: !2143, line: 99, baseType: !1328, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2148, file: !2143, line: 100, baseType: !1328, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2148, file: !2143, line: 101, baseType: !713, size: 128, align: 64, offset: 256)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2148, file: !2143, line: 102, baseType: !2156, size: 64, offset: 384)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2129, file: !146, line: 129, baseType: !1482, size: 256, offset: 512)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2129, file: !146, line: 130, baseType: !145, size: 32, offset: 768)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2129, file: !146, line: 131, baseType: !7, size: 32, offset: 800)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2129, file: !146, line: 132, baseType: !55, size: 64, offset: 832)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2129, file: !146, line: 133, baseType: !2167, size: 64, offset: 896)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2169)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !146, line: 77, size: 192, elements: !2170)
!2170 = !{!2171, !2175, !2176}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2169, file: !146, line: 83, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{null, !2078}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2169, file: !146, line: 89, baseType: !2037, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2169, file: !146, line: 100, baseType: !2177, size: 64, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!38, !2128, !55, !55, !38}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2129, file: !146, line: 134, baseType: !36, size: 64, offset: 960)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2129, file: !146, line: 135, baseType: !38, size: 32, offset: 1024)
!2182 = !DIDerivedType(tag: DW_TAG_member, scope: !2129, file: !146, line: 136, baseType: !2183, size: 128, offset: 1088)
!2183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2129, file: !146, line: 136, size: 128, elements: !2184)
!2184 = !{!2185, !2191}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2183, file: !146, line: 137, baseType: !2186, size: 128)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2187, line: 6, size: 128, elements: !2188)
!2187 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2188 = !{!2189, !2190}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2186, file: !2187, line: 7, baseType: !557, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2186, file: !2187, line: 8, baseType: !557, size: 64, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, scope: !2183, file: !146, line: 138, baseType: !2192)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2183, file: !146, line: 138, elements: !2193)
!2193 = !{!2194, !2196}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2192, file: !146, line: 138, baseType: !2195)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2192, file: !146, line: 138, elements: !1144)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2192, file: !146, line: 138, baseType: !2197)
!2197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2186, elements: !697)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2125, file: !130, line: 147, baseType: !36, size: 64, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2083, file: !130, line: 161, baseType: !713, size: 128, align: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, scope: !2079, file: !130, line: 164, baseType: !2201, size: 32, offset: 384)
!2201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2079, file: !130, line: 164, size: 32, elements: !2202)
!2202 = !{!2203, !2204}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2201, file: !130, line: 169, baseType: !65, size: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2201, file: !130, line: 177, baseType: !7, size: 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2079, file: !130, line: 181, baseType: !65, size: 32, offset: 416)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2042, file: !1948, line: 535, baseType: !2078, size: 64, offset: 640)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2042, file: !1948, line: 541, baseType: !2208, size: 64, offset: 704)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2042, file: !1948, line: 545, baseType: !2210, size: 64, offset: 768)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2042, file: !1948, line: 549, baseType: !2212, size: 64, offset: 832)
!2212 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1159, line: 520, baseType: !2078)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1947, file: !1948, line: 581, baseType: !2214, size: 64, offset: 384)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!2040, !2041, !7}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1947, file: !1948, line: 582, baseType: !2218, size: 64, offset: 448)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!2040, !2041, !55, !55}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1947, file: !1948, line: 584, baseType: !2222, size: 64, offset: 512)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!55, !1954}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1947, file: !1948, line: 588, baseType: !2037, size: 64, offset: 576)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1947, file: !1948, line: 591, baseType: !2037, size: 64, offset: 640)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1947, file: !1948, line: 597, baseType: !2228, size: 64, offset: 704)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!38, !1954, !55, !36, !38, !38}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1947, file: !1948, line: 603, baseType: !2232, size: 64, offset: 768)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!32, !1954}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1947, file: !1948, line: 613, baseType: !2236, size: 64, offset: 832)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!38, !1954, !2002}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1947, file: !1948, line: 625, baseType: !2240, size: 64, offset: 896)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!2002, !1954, !55}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1947, file: !1948, line: 633, baseType: !2244, size: 64, offset: 960)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!2078, !1954, !55}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1885, file: !1854, line: 277, baseType: !2248, size: 64, offset: 64)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{null, !1891}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1885, file: !1854, line: 290, baseType: !1927, size: 64, offset: 128)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1885, file: !1854, line: 292, baseType: !1915, size: 64, offset: 192)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1885, file: !1854, line: 293, baseType: !1923, size: 64, offset: 256)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1885, file: !1854, line: 294, baseType: !1919, size: 64, offset: 320)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1885, file: !1854, line: 296, baseType: !2256, size: 64, offset: 384)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!442, !1891, !410, !51, !57}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1885, file: !1854, line: 306, baseType: !51, size: 64, offset: 448)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1885, file: !1854, line: 313, baseType: !1328, size: 8, offset: 512)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1885, file: !1854, line: 314, baseType: !2256, size: 64, offset: 576)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1885, file: !1854, line: 317, baseType: !2263, size: 64, offset: 640)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!2266, !1891, !2268}
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2267, line: 59, baseType: !7)
!2267 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !188, line: 61, flags: DIFlagFwdDecl)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1885, file: !1854, line: 320, baseType: !2271, size: 64, offset: 704)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!38, !1891, !1954}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1880, file: !1854, line: 176, baseType: !2275, size: 64, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1854, line: 35, flags: DIFlagFwdDecl)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1880, file: !1854, line: 177, baseType: !57, size: 64, offset: 128)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1880, file: !1854, line: 178, baseType: !1852, size: 64, offset: 192)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1853, file: !1854, line: 215, baseType: !36, size: 64, offset: 768)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1853, file: !1854, line: 221, baseType: !557, size: 64, offset: 832)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1853, file: !1854, line: 223, baseType: !42, size: 16, offset: 896)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1853, file: !1854, line: 224, baseType: !40, size: 16, offset: 912)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1853, file: !1854, line: 225, baseType: !2284, size: 64, offset: 960)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1854, line: 36, flags: DIFlagFwdDecl)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1853, file: !1854, line: 227, baseType: !713, size: 128, align: 64, offset: 1024)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !1837, file: !1828, line: 442, baseType: !2288, size: 448, offset: 2048)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !1828, line: 138, size: 448, elements: !2289)
!2289 = !{!2290, !2291, !2292}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2288, file: !1828, line: 140, baseType: !1852, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !2288, file: !1828, line: 141, baseType: !55, size: 64, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !2288, file: !1828, line: 142, baseType: !2293, size: 320, offset: 128)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2294, line: 11, size: 320, elements: !2295)
!2294 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2295 = !{!2296, !2297, !2298, !2303}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2293, file: !2294, line: 16, baseType: !791, size: 128)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2293, file: !2294, line: 17, baseType: !55, size: 64, offset: 128)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2293, file: !2294, line: 18, baseType: !2299, size: 64, offset: 192)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{null, !2302}
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2293, file: !2294, line: 19, baseType: !553, size: 32, offset: 256)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !1837, file: !1828, line: 443, baseType: !2288, size: 448, offset: 2496)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !1837, file: !1828, line: 446, baseType: !2306, offset: 2944)
!2306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2288, elements: !2307)
!2307 = !{!2308}
!2308 = !DISubrange(count: 0)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !1837, file: !1828, line: 455, baseType: !109, size: 16, offset: 2944)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !1837, file: !1828, line: 456, baseType: !109, size: 16, offset: 2960)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !1837, file: !1828, line: 457, baseType: !109, size: 16, offset: 2976)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !1837, file: !1828, line: 458, baseType: !109, size: 16, offset: 2992)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1837, file: !1828, line: 461, baseType: !1831, size: 896, offset: 3008)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1837, file: !1828, line: 463, baseType: !2315, size: 64, offset: 3904)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !1828, line: 537, size: 41664, elements: !2317)
!2317 = !{!2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2331}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !2316, file: !1828, line: 538, baseType: !1872, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !2316, file: !1828, line: 541, baseType: !7, size: 32, offset: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !2316, file: !1828, line: 544, baseType: !38, size: 32, offset: 96)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !2316, file: !1828, line: 547, baseType: !113, size: 128, offset: 128)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2316, file: !1828, line: 548, baseType: !713, size: 128, align: 64, offset: 256)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2316, file: !1828, line: 555, baseType: !1837, size: 7872, offset: 384)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !2316, file: !1828, line: 558, baseType: !1836, size: 64, offset: 8256)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !2316, file: !1828, line: 561, baseType: !65, size: 32, offset: 8320)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2316, file: !1828, line: 564, baseType: !7, size: 32, offset: 8352)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !2316, file: !1828, line: 567, baseType: !2328, size: 32768, offset: 8384)
!2328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 32768, elements: !2329)
!2329 = !{!2330}
!2330 = !DISubrange(count: 4096)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2316, file: !1828, line: 570, baseType: !2332, size: 512, offset: 41152)
!2332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 512, elements: !415)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !1837, file: !1828, line: 469, baseType: !113, size: 128, offset: 3968)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !1837, file: !1828, line: 478, baseType: !2335, size: 1792, offset: 4096)
!2335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 1792, elements: !2336)
!2336 = !{!2337}
!2337 = !DISubrange(count: 14)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !1837, file: !1828, line: 487, baseType: !1836, size: 64, offset: 5888)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !1837, file: !1828, line: 488, baseType: !1836, size: 64, offset: 5952)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !1837, file: !1828, line: 491, baseType: !2341, size: 64, offset: 6016)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !1828, line: 327, size: 896, elements: !2343)
!2343 = !{!2344, !2347, !2357, !2358, !2359, !2360, !2361}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !2342, file: !1828, line: 332, baseType: !2345)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !2346, line: 64, elements: !1144)
!2346 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !2342, file: !1828, line: 333, baseType: !2348, size: 192)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !1828, line: 299, size: 192, elements: !2349)
!2349 = !{!2350}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !2348, file: !1828, line: 300, baseType: !2351, size: 192)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !2352, line: 17, size: 192, elements: !2353)
!2352 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!2353 = !{!2354, !2355, !2356}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2351, file: !2352, line: 18, baseType: !557, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2351, file: !2352, line: 19, baseType: !557, size: 64, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2351, file: !2352, line: 20, baseType: !559, size: 64, offset: 128)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !2342, file: !1828, line: 339, baseType: !2348, size: 192, offset: 192)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !2342, file: !1828, line: 347, baseType: !2348, size: 192, offset: 384)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !2342, file: !1828, line: 353, baseType: !2348, size: 192, offset: 576)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !2342, file: !1828, line: 366, baseType: !1836, size: 64, offset: 768)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !2342, file: !1828, line: 367, baseType: !1836, size: 64, offset: 832)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !1837, file: !1828, line: 492, baseType: !113, size: 128, offset: 6080)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !1837, file: !1828, line: 495, baseType: !2348, size: 192, offset: 6208)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !1837, file: !1828, line: 496, baseType: !2348, size: 192, offset: 6400)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1837, file: !1828, line: 497, baseType: !1664, size: 192, offset: 6592)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !1837, file: !1828, line: 503, baseType: !113, size: 128, offset: 6784)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !1837, file: !1828, line: 504, baseType: !735, size: 256, offset: 6912)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !1837, file: !1828, line: 507, baseType: !70, size: 192, offset: 7168)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !1837, file: !1828, line: 510, baseType: !1443, size: 256, offset: 7360)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !1837, file: !1828, line: 513, baseType: !2371, size: 64, offset: 7616)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !2373, line: 214, elements: !1144)
!2373 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !1837, file: !1828, line: 516, baseType: !2375, offset: 7680)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !2376, line: 76, elements: !1144)
!2376 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !1837, file: !1828, line: 519, baseType: !65, size: 32, offset: 7680)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !1837, file: !1828, line: 522, baseType: !2379, size: 128, offset: 7712)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !1828, line: 370, size: 128, elements: !2380)
!2380 = !{!2381, !2382, !2383, !2384}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2379, file: !1828, line: 372, baseType: !1328, size: 8)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !2379, file: !1828, line: 375, baseType: !38, size: 32, offset: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !2379, file: !1828, line: 380, baseType: !38, size: 32, offset: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !2379, file: !1828, line: 386, baseType: !38, size: 32, offset: 96)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !1837, file: !1828, line: 529, baseType: !2386, offset: 7872)
!2386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1836, elements: !697)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1833, file: !1828, line: 157, baseType: !2388, size: 64, offset: 64)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !1828, line: 669, size: 1984, elements: !2390)
!2390 = !{!2391, !2395, !2399, !2403, !2404, !2405, !2406, !2410, !2414, !2415, !2421, !2425, !2426, !2430, !2434, !2438, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2491, !2492}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !2389, file: !1828, line: 670, baseType: !2392, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!1832, !1832}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !2389, file: !1828, line: 671, baseType: !2396, size: 64, offset: 64)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!38, !1832}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !2389, file: !1828, line: 672, baseType: !2400, size: 64, offset: 128)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{null, !1832}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !2389, file: !1828, line: 673, baseType: !2400, size: 64, offset: 192)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !2389, file: !1828, line: 674, baseType: !2400, size: 64, offset: 256)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !2389, file: !1828, line: 675, baseType: !2400, size: 64, offset: 320)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !2389, file: !1828, line: 676, baseType: !2407, size: 64, offset: 384)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{null, !1832, !38}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !2389, file: !1828, line: 677, baseType: !2411, size: 64, offset: 448)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!38, !1897, !1832}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !2389, file: !1828, line: 679, baseType: !2411, size: 64, offset: 512)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !2389, file: !1828, line: 682, baseType: !2416, size: 64, offset: 576)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!38, !2419}
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !1828, line: 30, flags: DIFlagFwdDecl)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !2389, file: !1828, line: 683, baseType: !2422, size: 64, offset: 640)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{null, !2419}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2389, file: !1828, line: 684, baseType: !2422, size: 64, offset: 704)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !2389, file: !1828, line: 685, baseType: !2427, size: 64, offset: 768)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{null}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !2389, file: !1828, line: 686, baseType: !2431, size: 64, offset: 832)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!38, !828, !1826}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !2389, file: !1828, line: 688, baseType: !2435, size: 64, offset: 896)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{null, !828, !1826}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !2389, file: !1828, line: 689, baseType: !2439, size: 64, offset: 960)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{null, !828}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2389, file: !1828, line: 690, baseType: !2439, size: 64, offset: 1024)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2389, file: !1828, line: 691, baseType: !2439, size: 64, offset: 1088)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2389, file: !1828, line: 692, baseType: !2400, size: 64, offset: 1152)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2389, file: !1828, line: 694, baseType: !1328, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !2389, file: !1828, line: 707, baseType: !1328, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !2389, file: !1828, line: 719, baseType: !1328, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2389, file: !1828, line: 722, baseType: !38, size: 32, offset: 1248)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2389, file: !1828, line: 723, baseType: !32, size: 64, offset: 1280)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !2389, file: !1828, line: 726, baseType: !32, size: 64, offset: 1344)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2389, file: !1828, line: 729, baseType: !2315, size: 64, offset: 1408)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !2389, file: !1828, line: 732, baseType: !812, size: 192, offset: 1472)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !2389, file: !1828, line: 738, baseType: !113, size: 128, offset: 1664)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !2389, file: !1828, line: 744, baseType: !2455, size: 64, offset: 1792)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !1828, line: 580, size: 1728, elements: !2457)
!2457 = !{!2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2467, !2468, !2469, !2473, !2477, !2478, !2479, !2480, !2481, !2485, !2489, !2490}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2456, file: !1828, line: 586, baseType: !2332, size: 512)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2456, file: !1828, line: 587, baseType: !55, size: 64, offset: 512)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !2456, file: !1828, line: 593, baseType: !51, size: 64, offset: 576)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2456, file: !1828, line: 596, baseType: !7, size: 32, offset: 640)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !2456, file: !1828, line: 604, baseType: !7, size: 32, offset: 672)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2456, file: !1828, line: 610, baseType: !2388, size: 64, offset: 704)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2456, file: !1828, line: 611, baseType: !113, size: 128, offset: 768)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !2456, file: !1828, line: 612, baseType: !2466, size: 64, offset: 896)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2456, file: !1828, line: 614, baseType: !1888, size: 64, offset: 960)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2456, file: !1828, line: 615, baseType: !2248, size: 64, offset: 1024)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !2456, file: !1828, line: 621, baseType: !2470, size: 64, offset: 1088)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!557, !1832, !2455}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !2456, file: !1828, line: 625, baseType: !2474, size: 64, offset: 1152)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!732, !1832, !2455}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2456, file: !1828, line: 628, baseType: !1927, size: 64, offset: 1216)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2456, file: !1828, line: 631, baseType: !1915, size: 64, offset: 1280)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2456, file: !1828, line: 632, baseType: !1923, size: 64, offset: 1344)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2456, file: !1828, line: 633, baseType: !1919, size: 64, offset: 1408)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !2456, file: !1828, line: 640, baseType: !2482, size: 64, offset: 1472)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!38, !1832, !2455, !557}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !2456, file: !1828, line: 645, baseType: !2486, size: 64, offset: 1536)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!38, !1832, !2455, !732}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2456, file: !1828, line: 654, baseType: !2256, size: 64, offset: 1600)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2456, file: !1828, line: 657, baseType: !2263, size: 64, offset: 1664)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !2389, file: !1828, line: 745, baseType: !2455, size: 64, offset: 1856)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !2389, file: !1828, line: 754, baseType: !7, size: 32, offset: 1920)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1833, file: !1828, line: 160, baseType: !2142, size: 128, offset: 128)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1833, file: !1828, line: 163, baseType: !113, size: 128, offset: 256)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1833, file: !1828, line: 164, baseType: !113, size: 128, offset: 384)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !1833, file: !1828, line: 167, baseType: !113, size: 128, offset: 512)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1833, file: !1828, line: 173, baseType: !38, size: 32, offset: 640)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1833, file: !1828, line: 175, baseType: !7, size: 32, offset: 672)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !1833, file: !1828, line: 183, baseType: !557, size: 64, offset: 704)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !1833, file: !1828, line: 189, baseType: !65, size: 32, offset: 768)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1833, file: !1828, line: 192, baseType: !1443, size: 256, offset: 832)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !1833, file: !1828, line: 193, baseType: !2503, size: 448, offset: 1088)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1444, line: 120, size: 448, elements: !2504)
!2504 = !{!2505, !2506, !2507}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2503, file: !1444, line: 121, baseType: !1443, size: 256)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2503, file: !1444, line: 122, baseType: !713, size: 128, align: 64, offset: 256)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2503, file: !1444, line: 125, baseType: !2508, size: 64, offset: 384)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1444, line: 18, flags: DIFlagFwdDecl)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1833, file: !1828, line: 199, baseType: !1832, size: 64, offset: 1536)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1827, file: !1828, line: 218, baseType: !778, size: 32, offset: 896)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !1827, file: !1828, line: 226, baseType: !1826, size: 64, offset: 960)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !1827, file: !1828, line: 229, baseType: !1836, size: 64, offset: 1024)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1827, file: !1828, line: 232, baseType: !38, size: 32, offset: 1088)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1827, file: !1828, line: 241, baseType: !113, size: 128, offset: 1152)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !1827, file: !1828, line: 242, baseType: !113, size: 128, offset: 1280)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !1827, file: !1828, line: 243, baseType: !113, size: 128, offset: 1408)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !1827, file: !1828, line: 246, baseType: !113, size: 128, offset: 1536)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !1827, file: !1828, line: 255, baseType: !2335, size: 1792, offset: 1664)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !1827, file: !1828, line: 258, baseType: !113, size: 128, offset: 3456)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !1827, file: !1828, line: 259, baseType: !113, size: 128, offset: 3584)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !1827, file: !1828, line: 265, baseType: !791, size: 128, offset: 3712)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !1827, file: !1828, line: 271, baseType: !113, size: 128, offset: 3840)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !1827, file: !1828, line: 277, baseType: !113, size: 128, offset: 3968)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !1827, file: !1828, line: 278, baseType: !113, size: 128, offset: 4096)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !1827, file: !1828, line: 279, baseType: !113, size: 128, offset: 4224)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !1827, file: !1828, line: 288, baseType: !1836, size: 64, offset: 4352)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !1827, file: !1828, line: 289, baseType: !1836, size: 64, offset: 4416)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !1827, file: !1828, line: 290, baseType: !1826, size: 64, offset: 4480)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !1827, file: !1828, line: 293, baseType: !1328, size: 8, offset: 4544)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1827, file: !1828, line: 296, baseType: !713, size: 128, align: 64, offset: 4608)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !829, file: !830, line: 1110, baseType: !2533, size: 64, offset: 15360)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2535, line: 93, size: 8768, elements: !2536)
!2535 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2536 = !{!2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2587, !2596, !2597, !2599, !2600, !2601, !2604, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2642, !2643, !2650, !2660, !2723, !2724, !2727, !2728, !2729, !2730, !2731, !2732}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2534, file: !2535, line: 94, baseType: !778, size: 32)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2534, file: !2535, line: 95, baseType: !65, size: 32, offset: 32)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2534, file: !2535, line: 96, baseType: !38, size: 32, offset: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2534, file: !2535, line: 97, baseType: !38, size: 32, offset: 96)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2534, file: !2535, line: 98, baseType: !113, size: 128, offset: 128)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2534, file: !2535, line: 100, baseType: !70, size: 192, offset: 256)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2534, file: !2535, line: 103, baseType: !828, size: 64, offset: 448)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2534, file: !2535, line: 106, baseType: !2545, size: 192, offset: 512)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2546, line: 32, size: 192, elements: !2547)
!2546 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2547 = !{!2548, !2549}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2545, file: !2546, line: 33, baseType: !113, size: 128)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2545, file: !2546, line: 34, baseType: !2550, size: 64, offset: 128)
!2550 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2551, line: 25, baseType: !2552)
!2551 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2551, line: 23, size: 64, elements: !2553)
!2553 = !{!2554}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2552, file: !2551, line: 24, baseType: !1074, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2534, file: !2535, line: 109, baseType: !787, size: 64, offset: 704)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2534, file: !2535, line: 112, baseType: !38, size: 32, offset: 768)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2534, file: !2535, line: 114, baseType: !38, size: 32, offset: 800)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2534, file: !2535, line: 115, baseType: !828, size: 64, offset: 832)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2534, file: !2535, line: 118, baseType: !38, size: 32, offset: 896)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2534, file: !2535, line: 119, baseType: !7, size: 32, offset: 928)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2534, file: !2535, line: 121, baseType: !2562, size: 64, offset: 960)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2535, line: 80, size: 448, elements: !2564)
!2564 = !{!2565, !2566, !2572}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2563, file: !2535, line: 81, baseType: !65, size: 32)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2563, file: !2535, line: 82, baseType: !2567, size: 128, offset: 64)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2535, line: 75, size: 128, elements: !2568)
!2568 = !{!2569, !2570}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2567, file: !2535, line: 76, baseType: !828, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2567, file: !2535, line: 77, baseType: !2571, size: 64, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2563, file: !2535, line: 83, baseType: !1482, size: 256, offset: 192)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2534, file: !2535, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2534, file: !2535, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2534, file: !2535, line: 138, baseType: !7, size: 32, offset: 1056)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2534, file: !2535, line: 139, baseType: !113, size: 128, offset: 1088)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2534, file: !2535, line: 142, baseType: !947, size: 512, offset: 1216)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2534, file: !2535, line: 143, baseType: !955, size: 64, offset: 1728)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2534, file: !2535, line: 150, baseType: !2580, size: 256, offset: 1792)
!2580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2581, size: 256, elements: !2585)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2535, line: 38, size: 128, elements: !2582)
!2582 = !{!2583, !2584}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2581, file: !2535, line: 39, baseType: !557, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2581, file: !2535, line: 40, baseType: !557, size: 64, offset: 64)
!2585 = !{!2586}
!2586 = !DISubrange(count: 2)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2534, file: !2535, line: 156, baseType: !2588, size: 192, offset: 2048)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2535, line: 66, size: 192, elements: !2589)
!2589 = !{!2590}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2588, file: !2535, line: 67, baseType: !2591, size: 192)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2535, line: 47, size: 192, elements: !2592)
!2592 = !{!2593, !2594, !2595}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2591, file: !2535, line: 48, baseType: !728, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2591, file: !2535, line: 49, baseType: !728, size: 64, offset: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2591, file: !2535, line: 50, baseType: !728, size: 64, offset: 128)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2534, file: !2535, line: 160, baseType: !1676, size: 640, offset: 2240)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2534, file: !2535, line: 163, baseType: !2598, size: 256, offset: 2880)
!2598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !774, size: 256, elements: !796)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2534, file: !2535, line: 169, baseType: !774, size: 64, offset: 3136)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2534, file: !2535, line: 172, baseType: !38, size: 32, offset: 3200)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2534, file: !2535, line: 174, baseType: !2602, size: 64, offset: 3264)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2535, line: 174, flags: DIFlagFwdDecl)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2534, file: !2535, line: 185, baseType: !2605, size: 64, offset: 3328)
!2605 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !526, line: 860, baseType: !2606)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !526, line: 853, size: 64, elements: !2607)
!2607 = !{!2608, !2609}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2606, file: !526, line: 858, baseType: !525, size: 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2606, file: !526, line: 859, baseType: !75, size: 32, offset: 32)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2534, file: !2535, line: 186, baseType: !557, size: 64, offset: 3392)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2534, file: !2535, line: 186, baseType: !557, size: 64, offset: 3456)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2534, file: !2535, line: 186, baseType: !557, size: 64, offset: 3520)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2534, file: !2535, line: 186, baseType: !557, size: 64, offset: 3584)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2534, file: !2535, line: 187, baseType: !557, size: 64, offset: 3648)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2534, file: !2535, line: 188, baseType: !557, size: 64, offset: 3712)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2534, file: !2535, line: 189, baseType: !1664, size: 192, offset: 3776)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2534, file: !2535, line: 190, baseType: !55, size: 64, offset: 3968)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2534, file: !2535, line: 190, baseType: !55, size: 64, offset: 4032)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2534, file: !2535, line: 190, baseType: !55, size: 64, offset: 4096)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2534, file: !2535, line: 190, baseType: !55, size: 64, offset: 4160)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2534, file: !2535, line: 191, baseType: !55, size: 64, offset: 4224)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2534, file: !2535, line: 191, baseType: !55, size: 64, offset: 4288)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2534, file: !2535, line: 191, baseType: !55, size: 64, offset: 4352)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2534, file: !2535, line: 191, baseType: !55, size: 64, offset: 4416)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2534, file: !2535, line: 192, baseType: !55, size: 64, offset: 4480)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2534, file: !2535, line: 192, baseType: !55, size: 64, offset: 4544)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2534, file: !2535, line: 192, baseType: !55, size: 64, offset: 4608)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2534, file: !2535, line: 192, baseType: !55, size: 64, offset: 4672)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2534, file: !2535, line: 193, baseType: !55, size: 64, offset: 4736)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2534, file: !2535, line: 193, baseType: !55, size: 64, offset: 4800)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2534, file: !2535, line: 194, baseType: !2632, size: 448, offset: 4864)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2633, line: 12, size: 448, elements: !2634)
!2633 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2634 = !{!2635, !2636, !2637, !2638, !2639, !2640, !2641}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2632, file: !2633, line: 15, baseType: !557, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2632, file: !2633, line: 17, baseType: !557, size: 64, offset: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2632, file: !2633, line: 19, baseType: !557, size: 64, offset: 128)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2632, file: !2633, line: 21, baseType: !557, size: 64, offset: 192)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2632, file: !2633, line: 29, baseType: !557, size: 64, offset: 256)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2632, file: !2633, line: 35, baseType: !557, size: 64, offset: 320)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2632, file: !2633, line: 44, baseType: !557, size: 64, offset: 384)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2534, file: !2535, line: 202, baseType: !559, size: 64, offset: 5312)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2534, file: !2535, line: 213, baseType: !2644, size: 2048, offset: 5376)
!2644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2645, size: 2048, elements: !1768)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2646, line: 43, size: 128, elements: !2647)
!2646 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2647 = !{!2648, !2649}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2645, file: !2646, line: 44, baseType: !54, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2645, file: !2646, line: 45, baseType: !54, size: 64, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2534, file: !2535, line: 216, baseType: !2651, size: 448, offset: 7424)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2535, line: 30, size: 448, elements: !2652)
!2652 = !{!2653, !2654, !2655, !2656, !2657, !2658, !2659}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2651, file: !2535, line: 31, baseType: !38, size: 32)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2651, file: !2535, line: 32, baseType: !445, size: 64, offset: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2651, file: !2535, line: 33, baseType: !55, size: 64, offset: 128)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2651, file: !2535, line: 34, baseType: !557, size: 64, offset: 192)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2651, file: !2535, line: 34, baseType: !557, size: 64, offset: 256)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2651, file: !2535, line: 35, baseType: !55, size: 64, offset: 320)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2651, file: !2535, line: 35, baseType: !55, size: 64, offset: 384)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2534, file: !2535, line: 219, baseType: !2661, size: 64, offset: 7872)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2663, line: 41, size: 3456, elements: !2664)
!2663 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!2664 = !{!2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2679, !2680, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2662, file: !2663, line: 47, baseType: !110, size: 16)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2662, file: !2663, line: 48, baseType: !554, size: 32, offset: 32)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2662, file: !2663, line: 54, baseType: !101, size: 8, offset: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !2662, file: !2663, line: 55, baseType: !101, size: 8, offset: 72)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !2662, file: !2663, line: 73, baseType: !558, size: 64, align: 64, offset: 128)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !2662, file: !2663, line: 74, baseType: !558, size: 64, offset: 192)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !2662, file: !2663, line: 81, baseType: !558, size: 64, offset: 256)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !2662, file: !2663, line: 82, baseType: !558, size: 64, offset: 320)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !2662, file: !2663, line: 85, baseType: !558, size: 64, offset: 384)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !2662, file: !2663, line: 86, baseType: !558, size: 64, offset: 448)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !2662, file: !2663, line: 94, baseType: !558, size: 64, offset: 512)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !2662, file: !2663, line: 102, baseType: !558, size: 64, offset: 576)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !2662, file: !2663, line: 107, baseType: !2678, size: 256, offset: 640)
!2678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 256, elements: !566)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !2662, file: !2663, line: 108, baseType: !101, size: 8, align: 64, offset: 896)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !2662, file: !2663, line: 110, baseType: !2681, size: 24, offset: 904)
!2681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 24, elements: !411)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !2662, file: !2663, line: 111, baseType: !554, size: 32, align: 64, offset: 960)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !2662, file: !2663, line: 113, baseType: !554, size: 32, offset: 992)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !2662, file: !2663, line: 114, baseType: !554, size: 32, offset: 1024)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !2662, file: !2663, line: 115, baseType: !554, size: 32, offset: 1056)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !2662, file: !2663, line: 117, baseType: !554, size: 32, offset: 1088)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !2662, file: !2663, line: 118, baseType: !558, size: 64, align: 64, offset: 1152)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2662, file: !2663, line: 120, baseType: !558, size: 64, offset: 1216)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2662, file: !2663, line: 121, baseType: !558, size: 64, offset: 1280)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2662, file: !2663, line: 122, baseType: !558, size: 64, offset: 1344)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2662, file: !2663, line: 123, baseType: !558, size: 64, offset: 1408)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !2662, file: !2663, line: 133, baseType: !558, size: 64, offset: 1472)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !2662, file: !2663, line: 137, baseType: !558, size: 64, offset: 1536)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2662, file: !2663, line: 142, baseType: !558, size: 64, offset: 1600)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2662, file: !2663, line: 143, baseType: !558, size: 64, offset: 1664)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !2662, file: !2663, line: 146, baseType: !558, size: 64, offset: 1728)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !2662, file: !2663, line: 147, baseType: !558, size: 64, offset: 1792)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !2662, file: !2663, line: 148, baseType: !558, size: 64, offset: 1856)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !2662, file: !2663, line: 149, baseType: !558, size: 64, offset: 1920)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2662, file: !2663, line: 154, baseType: !558, size: 64, offset: 1984)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2662, file: !2663, line: 155, baseType: !558, size: 64, offset: 2048)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2662, file: !2663, line: 156, baseType: !558, size: 64, offset: 2112)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2662, file: !2663, line: 158, baseType: !558, size: 64, offset: 2176)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2662, file: !2663, line: 159, baseType: !558, size: 64, offset: 2240)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !2662, file: !2663, line: 162, baseType: !558, size: 64, offset: 2304)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !2662, file: !2663, line: 163, baseType: !558, size: 64, offset: 2368)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !2662, file: !2663, line: 164, baseType: !558, size: 64, offset: 2432)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !2662, file: !2663, line: 167, baseType: !558, size: 64, offset: 2496)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !2662, file: !2663, line: 168, baseType: !558, size: 64, offset: 2560)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !2662, file: !2663, line: 171, baseType: !558, size: 64, offset: 2624)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !2662, file: !2663, line: 172, baseType: !558, size: 64, offset: 2688)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !2662, file: !2663, line: 175, baseType: !558, size: 64, offset: 2752)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !2662, file: !2663, line: 178, baseType: !558, size: 64, offset: 2816)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !2662, file: !2663, line: 179, baseType: !558, size: 64, offset: 2880)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !2662, file: !2663, line: 182, baseType: !554, size: 32, offset: 2944)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !2662, file: !2663, line: 186, baseType: !558, size: 64, align: 64, offset: 3008)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !2662, file: !2663, line: 194, baseType: !558, size: 64, offset: 3072)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !2662, file: !2663, line: 195, baseType: !558, size: 64, offset: 3136)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !2662, file: !2663, line: 199, baseType: !558, size: 64, offset: 3200)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !2662, file: !2663, line: 200, baseType: !558, size: 64, offset: 3264)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2662, file: !2663, line: 203, baseType: !558, size: 64, offset: 3328)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !2662, file: !2663, line: 204, baseType: !558, size: 64, offset: 3392)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2534, file: !2535, line: 222, baseType: !7, size: 32, offset: 7936)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2534, file: !2535, line: 223, baseType: !2725, size: 64, offset: 8000)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2535, line: 223, flags: DIFlagFwdDecl)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2534, file: !2535, line: 230, baseType: !1328, size: 8, offset: 8064)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2534, file: !2535, line: 231, baseType: !1276, size: 16, offset: 8080)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2534, file: !2535, line: 232, baseType: !1276, size: 16, offset: 8096)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2534, file: !2535, line: 234, baseType: !1123, size: 64, offset: 8128)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2534, file: !2535, line: 237, baseType: !735, size: 256, offset: 8192)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2534, file: !2535, line: 243, baseType: !1178, size: 320, offset: 8448)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !829, file: !830, line: 1111, baseType: !2734, size: 64, offset: 15424)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2535, line: 20, size: 16640, elements: !2736)
!2736 = !{!2737, !2738, !2739, !2740}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2735, file: !2535, line: 21, baseType: !75, size: 32)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2735, file: !2535, line: 22, baseType: !778, size: 32, offset: 32)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2735, file: !2535, line: 23, baseType: !70, size: 192, offset: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2735, file: !2535, line: 24, baseType: !2741, size: 16384, offset: 256)
!2741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2742, size: 16384, elements: !415)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2546, line: 51, size: 256, elements: !2743)
!2743 = !{!2744}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2742, file: !2546, line: 52, baseType: !2745, size: 256)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2546, line: 37, size: 256, elements: !2746)
!2746 = !{!2747, !2754, !2755, !2759}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2745, file: !2546, line: 39, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2749, line: 83, baseType: !2750)
!2749 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2749, line: 82, baseType: !2752)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{null, !38}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2745, file: !2546, line: 40, baseType: !55, size: 64, offset: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2745, file: !2546, line: 46, baseType: !2756, size: 64, offset: 128)
!2756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2749, line: 86, baseType: !2757)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2749, line: 85, baseType: !2428)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2745, file: !2546, line: 48, baseType: !2550, size: 64, offset: 192)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !829, file: !830, line: 1112, baseType: !2550, size: 64, offset: 15488)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !829, file: !830, line: 1113, baseType: !2550, size: 64, offset: 15552)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !829, file: !830, line: 1115, baseType: !2550, size: 64, offset: 15616)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !829, file: !830, line: 1116, baseType: !2545, size: 192, offset: 15680)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !829, file: !830, line: 1117, baseType: !55, size: 64, offset: 15872)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !829, file: !830, line: 1118, baseType: !51, size: 64, offset: 15936)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !829, file: !830, line: 1119, baseType: !7, size: 32, offset: 16000)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !829, file: !830, line: 1121, baseType: !716, size: 64, offset: 16064)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !829, file: !830, line: 1125, baseType: !2769, size: 64, offset: 16128)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !830, line: 43, flags: DIFlagFwdDecl)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !829, file: !830, line: 1127, baseType: !490, size: 32, offset: 16192)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !829, file: !830, line: 1128, baseType: !7, size: 32, offset: 16224)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !829, file: !830, line: 1130, baseType: !2774, size: 128, offset: 16256)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2775, line: 37, size: 128, elements: !2776)
!2775 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2776 = !{!2777, !2778, !2779}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2774, file: !2775, line: 38, baseType: !38, size: 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2774, file: !2775, line: 39, baseType: !65, size: 32, offset: 32)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2774, file: !2775, line: 40, baseType: !2780, size: 64, offset: 64)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2775, line: 24, flags: DIFlagFwdDecl)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !829, file: !830, line: 1131, baseType: !2783, size: 256, offset: 16384)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2784, line: 12, size: 256, elements: !2785)
!2784 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2785 = !{!2786, !2787, !2788, !2789}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2783, file: !2784, line: 13, baseType: !410, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2783, file: !2784, line: 14, baseType: !55, size: 64, offset: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2783, file: !2784, line: 15, baseType: !55, size: 64, offset: 128)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2783, file: !2784, line: 16, baseType: !1328, size: 8, offset: 192)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !829, file: !830, line: 1134, baseType: !557, size: 64, offset: 16640)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !829, file: !830, line: 1135, baseType: !557, size: 64, offset: 16704)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !829, file: !830, line: 1138, baseType: !75, size: 32, offset: 16768)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !829, file: !830, line: 1141, baseType: !740, size: 32, offset: 16800)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !829, file: !830, line: 1143, baseType: !2795, size: 64, offset: 16832)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !830, line: 735, size: 64, elements: !2796)
!2796 = !{!2797}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2795, file: !830, line: 736, baseType: !2798, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !829, file: !830, line: 1147, baseType: !1006, size: 128, offset: 16896)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !829, file: !830, line: 1149, baseType: !828, size: 64, offset: 17024)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !829, file: !830, line: 1151, baseType: !2802, size: 64, offset: 17088)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !830, line: 1151, flags: DIFlagFwdDecl)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !829, file: !830, line: 1188, baseType: !36, size: 64, offset: 17152)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !829, file: !830, line: 1191, baseType: !2806, size: 64, offset: 17216)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !830, line: 44, flags: DIFlagFwdDecl)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !829, file: !830, line: 1194, baseType: !2809, size: 64, offset: 17280)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !830, line: 45, flags: DIFlagFwdDecl)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !829, file: !830, line: 1197, baseType: !2812, size: 64, offset: 17344)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2814, line: 155, size: 64, elements: !2815)
!2814 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!2815 = !{!2816}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !2813, file: !2814, line: 157, baseType: !55, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !829, file: !830, line: 1199, baseType: !2818, size: 64, offset: 17408)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2820, line: 99, size: 128, elements: !2821)
!2820 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2821 = !{!2822, !2823, !2824}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2819, file: !2820, line: 100, baseType: !726, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2819, file: !2820, line: 101, baseType: !65, size: 32, offset: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2819, file: !2820, line: 103, baseType: !42, size: 16, offset: 96)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !829, file: !830, line: 1202, baseType: !2826, size: 64, offset: 17472)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !830, line: 48, flags: DIFlagFwdDecl)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !829, file: !830, line: 1205, baseType: !55, size: 64, offset: 17536)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !829, file: !830, line: 1206, baseType: !2830, size: 64, offset: 17600)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2546, line: 14, baseType: !2832)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2546, line: 12, size: 384, elements: !2833)
!2833 = !{!2834}
!2834 = !DIDerivedType(tag: DW_TAG_member, scope: !2832, file: !2546, line: 13, baseType: !2835, size: 384)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2832, file: !2546, line: 13, size: 384, elements: !2836)
!2836 = !{!2837, !2838, !2839, !2840}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2835, file: !2546, line: 13, baseType: !38, size: 32)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2835, file: !2546, line: 13, baseType: !38, size: 32, offset: 32)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2835, file: !2546, line: 13, baseType: !38, size: 32, offset: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2835, file: !2546, line: 13, baseType: !2841, size: 256, offset: 128)
!2841 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2842, line: 37, size: 256, elements: !2843)
!2842 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2843 = !{!2844, !2849, !2862, !2868, !2877, !2904, !2909}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2841, file: !2842, line: 42, baseType: !2845, size: 64)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2841, file: !2842, line: 39, size: 64, elements: !2846)
!2846 = !{!2847, !2848}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2845, file: !2842, line: 40, baseType: !1640, size: 32)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2845, file: !2842, line: 41, baseType: !496, size: 32, offset: 32)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2841, file: !2842, line: 50, baseType: !2850, size: 192)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2841, file: !2842, line: 45, size: 192, elements: !2851)
!2851 = !{!2852, !2854, !2855, !2861}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2850, file: !2842, line: 46, baseType: !2853, size: 32)
!2853 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !53, line: 95, baseType: !38)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2850, file: !2842, line: 47, baseType: !38, size: 32, offset: 32)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2850, file: !2842, line: 48, baseType: !2856, size: 64, offset: 64)
!2856 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2842, line: 11, baseType: !2857)
!2857 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2842, line: 8, size: 64, elements: !2858)
!2858 = !{!2859, !2860}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2857, file: !2842, line: 9, baseType: !38, size: 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2857, file: !2842, line: 10, baseType: !36, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2850, file: !2842, line: 49, baseType: !38, size: 32, offset: 128)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2841, file: !2842, line: 57, baseType: !2863, size: 128)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2841, file: !2842, line: 53, size: 128, elements: !2864)
!2864 = !{!2865, !2866, !2867}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2863, file: !2842, line: 54, baseType: !1640, size: 32)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2863, file: !2842, line: 55, baseType: !496, size: 32, offset: 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2863, file: !2842, line: 56, baseType: !2856, size: 64, offset: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2841, file: !2842, line: 66, baseType: !2869, size: 256)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2841, file: !2842, line: 60, size: 256, elements: !2870)
!2870 = !{!2871, !2872, !2873, !2874, !2876}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2869, file: !2842, line: 61, baseType: !1640, size: 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2869, file: !2842, line: 62, baseType: !496, size: 32, offset: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2869, file: !2842, line: 63, baseType: !38, size: 32, offset: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2869, file: !2842, line: 64, baseType: !2875, size: 64, offset: 128)
!2875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !53, line: 94, baseType: !444)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2869, file: !2842, line: 65, baseType: !2875, size: 64, offset: 192)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2841, file: !2842, line: 105, baseType: !2878, size: 256)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2841, file: !2842, line: 69, size: 256, elements: !2879)
!2879 = !{!2880, !2881}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2878, file: !2842, line: 70, baseType: !36, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, scope: !2878, file: !2842, line: 79, baseType: !2882, size: 192, offset: 64)
!2882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2878, file: !2842, line: 79, size: 192, elements: !2883)
!2883 = !{!2884, !2885, !2886, !2893, !2898}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2882, file: !2842, line: 81, baseType: !38, size: 32)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2882, file: !2842, line: 86, baseType: !1276, size: 16)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2882, file: !2842, line: 92, baseType: !2887, size: 192)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2882, file: !2842, line: 88, size: 192, elements: !2888)
!2888 = !{!2889, !2891, !2892}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2887, file: !2842, line: 89, baseType: !2890, size: 64)
!2890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 64, elements: !990)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2887, file: !2842, line: 90, baseType: !36, size: 64, offset: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2887, file: !2842, line: 91, baseType: !36, size: 64, offset: 128)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2882, file: !2842, line: 97, baseType: !2894, size: 96)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2882, file: !2842, line: 94, size: 96, elements: !2895)
!2895 = !{!2896, !2897}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2894, file: !2842, line: 95, baseType: !2890, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2894, file: !2842, line: 96, baseType: !554, size: 32, offset: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2882, file: !2842, line: 103, baseType: !2899, size: 128)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2882, file: !2842, line: 99, size: 128, elements: !2900)
!2900 = !{!2901, !2902, !2903}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2899, file: !2842, line: 100, baseType: !55, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2899, file: !2842, line: 101, baseType: !554, size: 32, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2899, file: !2842, line: 102, baseType: !554, size: 32, offset: 96)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2841, file: !2842, line: 111, baseType: !2905, size: 128)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2841, file: !2842, line: 108, size: 128, elements: !2906)
!2906 = !{!2907, !2908}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2905, file: !2842, line: 109, baseType: !445, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2905, file: !2842, line: 110, baseType: !38, size: 32, offset: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2841, file: !2842, line: 118, baseType: !2910, size: 128)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2841, file: !2842, line: 114, size: 128, elements: !2911)
!2911 = !{!2912, !2913, !2914}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2910, file: !2842, line: 115, baseType: !36, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2910, file: !2842, line: 116, baseType: !38, size: 32, offset: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2910, file: !2842, line: 117, baseType: !7, size: 32, offset: 96)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !829, file: !830, line: 1208, baseType: !2632, size: 448, offset: 17664)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !829, file: !830, line: 1215, baseType: !557, size: 64, offset: 18112)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !829, file: !830, line: 1217, baseType: !557, size: 64, offset: 18176)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !829, file: !830, line: 1219, baseType: !557, size: 64, offset: 18240)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !829, file: !830, line: 1223, baseType: !2010, size: 64, offset: 18304)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !829, file: !830, line: 1225, baseType: !525, size: 32, offset: 18368)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !829, file: !830, line: 1226, baseType: !38, size: 32, offset: 18400)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !829, file: !830, line: 1227, baseType: !38, size: 32, offset: 18432)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !829, file: !830, line: 1231, baseType: !1826, size: 64, offset: 18496)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !829, file: !830, line: 1233, baseType: !113, size: 128, offset: 18560)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !829, file: !830, line: 1240, baseType: !2926, size: 64, offset: 18688)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !830, line: 62, flags: DIFlagFwdDecl)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !829, file: !830, line: 1242, baseType: !2929, size: 64, offset: 18752)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !830, line: 1242, flags: DIFlagFwdDecl)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !829, file: !830, line: 1244, baseType: !113, size: 128, offset: 18816)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !829, file: !830, line: 1245, baseType: !2933, size: 64, offset: 18944)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !830, line: 51, flags: DIFlagFwdDecl)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !829, file: !830, line: 1246, baseType: !735, size: 256, offset: 19008)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !829, file: !830, line: 1247, baseType: !7, size: 32, offset: 19264)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !829, file: !830, line: 1250, baseType: !2938, size: 64, offset: 19328)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !830, line: 57, flags: DIFlagFwdDecl)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !829, file: !830, line: 1251, baseType: !735, size: 256, offset: 19392)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !829, file: !830, line: 1252, baseType: !113, size: 128, offset: 19648)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !829, file: !830, line: 1259, baseType: !2002, size: 64, offset: 19776)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !829, file: !830, line: 1260, baseType: !1276, size: 16, offset: 19840)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !829, file: !830, line: 1261, baseType: !1276, size: 16, offset: 19856)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !829, file: !830, line: 1314, baseType: !2946, size: 64, offset: 19904)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2948, line: 62, size: 256, align: 256, elements: !2949)
!2948 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2949 = !{!2950, !2951, !2952, !2953, !2954, !2955, !2956}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2947, file: !2948, line: 75, baseType: !554, size: 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2947, file: !2948, line: 90, baseType: !554, size: 32, offset: 32)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2947, file: !2948, line: 112, baseType: !558, size: 64, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2947, file: !2948, line: 132, baseType: !554, size: 32, offset: 128)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2947, file: !2948, line: 140, baseType: !554, size: 32, offset: 160)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2947, file: !2948, line: 149, baseType: !554, size: 32, offset: 192)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2947, file: !2948, line: 154, baseType: !2957, offset: 224)
!2957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, elements: !697)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !829, file: !830, line: 1315, baseType: !553, size: 32, offset: 19968)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !829, file: !830, line: 1316, baseType: !553, size: 32, offset: 20000)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !829, file: !830, line: 1321, baseType: !55, size: 64, offset: 20032)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !829, file: !830, line: 1325, baseType: !38, size: 32, offset: 20096)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !829, file: !830, line: 1326, baseType: !38, size: 32, offset: 20128)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !829, file: !830, line: 1327, baseType: !38, size: 32, offset: 20160)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !829, file: !830, line: 1328, baseType: !38, size: 32, offset: 20192)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !829, file: !830, line: 1329, baseType: !713, size: 128, align: 64, offset: 20224)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !829, file: !830, line: 1332, baseType: !2967, size: 128, offset: 20352)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2968, line: 51, size: 128, elements: !2969)
!2968 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2969 = !{!2970, !2975, !2976}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2967, file: !2968, line: 60, baseType: !2971, size: 64)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2972, line: 7, size: 64, elements: !2973)
!2972 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2973 = !{!2974}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2971, file: !2972, line: 12, baseType: !1071, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2967, file: !2968, line: 63, baseType: !1328, size: 8, offset: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2967, file: !2968, line: 70, baseType: !1328, size: 8, offset: 72)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !829, file: !830, line: 1335, baseType: !2978, size: 64, offset: 20480)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !830, line: 59, flags: DIFlagFwdDecl)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !829, file: !830, line: 1337, baseType: !2981, size: 128, offset: 20544)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2968, line: 39, size: 128, elements: !2982)
!2982 = !{!2983, !2984, !2985}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2981, file: !2968, line: 40, baseType: !2078, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2981, file: !2968, line: 42, baseType: !554, size: 32, offset: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2981, file: !2968, line: 43, baseType: !554, size: 32, offset: 96)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !829, file: !830, line: 1340, baseType: !2987, size: 64, offset: 20672)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !830, line: 69, flags: DIFlagFwdDecl)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !829, file: !830, line: 1351, baseType: !38, size: 32, offset: 20736)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !829, file: !830, line: 1352, baseType: !38, size: 32, offset: 20768)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !829, file: !830, line: 1354, baseType: !55, size: 64, offset: 20800)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !829, file: !830, line: 1364, baseType: !557, size: 64, offset: 20864)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !829, file: !830, line: 1365, baseType: !557, size: 64, offset: 20928)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !829, file: !830, line: 1412, baseType: !55, size: 64, offset: 20992)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !829, file: !830, line: 1453, baseType: !2996, size: 64, offset: 21056)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !830, line: 1453, flags: DIFlagFwdDecl)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !829, file: !830, line: 1457, baseType: !2999, size: 64, offset: 21120)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !154, line: 61, size: 576, elements: !3001)
!3001 = !{!3002, !3003, !3022, !3025, !3026, !3059, !3069}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3000, file: !154, line: 62, baseType: !153, size: 32)
!3003 = !DIDerivedType(tag: DW_TAG_member, scope: !3000, file: !154, line: 64, baseType: !3004, size: 192, offset: 64)
!3004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3000, file: !154, line: 64, size: 192, elements: !3005)
!3005 = !{!3006, !3017}
!3006 = !DIDerivedType(tag: DW_TAG_member, scope: !3004, file: !154, line: 65, baseType: !3007, size: 192)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3004, file: !154, line: 65, size: 192, elements: !3008)
!3008 = !{!3009, !3016}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3007, file: !154, line: 66, baseType: !3010, size: 128)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3011, line: 50, size: 128, elements: !3012)
!3011 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3012 = !{!3013, !3014, !3015}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3010, file: !3011, line: 52, baseType: !55, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3010, file: !3011, line: 54, baseType: !7, size: 32, offset: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3010, file: !3011, line: 55, baseType: !7, size: 32, offset: 96)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3007, file: !154, line: 67, baseType: !55, size: 64, offset: 128)
!3017 = !DIDerivedType(tag: DW_TAG_member, scope: !3004, file: !154, line: 70, baseType: !3018, size: 192)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3004, file: !154, line: 70, size: 192, elements: !3019)
!3019 = !{!3020, !3021}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3018, file: !154, line: 71, baseType: !713, size: 128, align: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3018, file: !154, line: 72, baseType: !55, size: 64, offset: 128)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3000, file: !154, line: 76, baseType: !3023, size: 64, offset: 256)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !154, line: 76, flags: DIFlagFwdDecl)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3000, file: !154, line: 77, baseType: !55, size: 64, offset: 320)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3000, file: !154, line: 79, baseType: !3027, size: 64, offset: 384)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3011, line: 25, size: 256, elements: !3029)
!3029 = !{!3030, !3036, !3040}
!3030 = !DIDerivedType(tag: DW_TAG_member, scope: !3028, file: !3011, line: 26, baseType: !3031, size: 128)
!3031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3028, file: !3011, line: 26, size: 128, elements: !3032)
!3032 = !{!3033, !3035}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3031, file: !3011, line: 27, baseType: !3034, size: 128)
!3034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 128, elements: !1768)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3031, file: !3011, line: 28, baseType: !3034, size: 128)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3028, file: !3011, line: 31, baseType: !3037, size: 64, offset: 128)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3039)
!3039 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3011, line: 23, flags: DIFlagFwdDecl)
!3040 = !DIDerivedType(tag: DW_TAG_member, scope: !3028, file: !3011, line: 33, baseType: !3041, size: 64, offset: 192)
!3041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3028, file: !3011, line: 33, size: 64, elements: !3042)
!3042 = !{!3043, !3049, !3054}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3041, file: !3011, line: 38, baseType: !3044, size: 64)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3041, file: !3011, line: 34, size: 64, elements: !3045)
!3045 = !{!3046, !3047, !3048}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3044, file: !3011, line: 35, baseType: !1224, size: 32)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3044, file: !3011, line: 36, baseType: !99, size: 8, offset: 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3044, file: !3011, line: 37, baseType: !99, size: 8, offset: 40)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3041, file: !3011, line: 42, baseType: !3050, size: 16)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3041, file: !3011, line: 39, size: 16, elements: !3051)
!3051 = !{!3052, !3053}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3050, file: !3011, line: 40, baseType: !99, size: 8)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3050, file: !3011, line: 41, baseType: !99, size: 8, offset: 8)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3041, file: !3011, line: 46, baseType: !3055, size: 16)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3041, file: !3011, line: 43, size: 16, elements: !3056)
!3056 = !{!3057, !3058}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3055, file: !3011, line: 44, baseType: !99, size: 8)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3055, file: !3011, line: 45, baseType: !99, size: 8, offset: 8)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3000, file: !154, line: 81, baseType: !3060, size: 64, offset: 448)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !154, line: 85, size: 384, elements: !3062)
!3062 = !{!3063, !3064, !3065, !3066, !3067, !3068}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3061, file: !154, line: 86, baseType: !3023, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3061, file: !154, line: 87, baseType: !55, size: 64, offset: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3061, file: !154, line: 88, baseType: !55, size: 64, offset: 128)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3061, file: !154, line: 89, baseType: !55, size: 64, offset: 192)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3061, file: !154, line: 90, baseType: !1328, size: 8, offset: 256)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3061, file: !154, line: 92, baseType: !3060, size: 64, offset: 320)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3000, file: !154, line: 82, baseType: !7, size: 32, offset: 512)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !829, file: !830, line: 1463, baseType: !3071, offset: 21184)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !830, line: 739, elements: !1144)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !829, file: !830, line: 1470, baseType: !713, size: 128, align: 64, offset: 21184)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !829, file: !830, line: 1471, baseType: !778, size: 32, offset: 21312)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !829, file: !830, line: 1472, baseType: !38, size: 32, offset: 21344)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !829, file: !830, line: 1474, baseType: !828, size: 64, offset: 21376)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !829, file: !830, line: 1475, baseType: !2293, size: 320, offset: 21440)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !829, file: !830, line: 1478, baseType: !3078, size: 64, offset: 21760)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3080, line: 49, size: 512, elements: !3081)
!3080 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3081 = !{!3082, !3083, !3084, !3085, !3086, !3088, !3089, !3090, !3092}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3079, file: !3080, line: 50, baseType: !3078, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3079, file: !3080, line: 51, baseType: !36, size: 64, offset: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3079, file: !3080, line: 52, baseType: !55, size: 64, offset: 128)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3079, file: !3080, line: 53, baseType: !55, size: 64, offset: 192)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3079, file: !3080, line: 54, baseType: !3087, size: 64, offset: 256)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3079, file: !3080, line: 56, baseType: !7, size: 32, offset: 320)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3079, file: !3080, line: 58, baseType: !7, size: 32, offset: 352)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3079, file: !3080, line: 59, baseType: !3091, size: 64, offset: 384)
!3091 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !41, line: 159, baseType: !557)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3079, file: !3080, line: 60, baseType: !1257, size: 64, offset: 448)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !829, file: !830, line: 1482, baseType: !778, size: 32, offset: 21824)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !829, file: !830, line: 1489, baseType: !36, size: 64, offset: 21888)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !829, file: !830, line: 1504, baseType: !36, size: 64, offset: 21952)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !829, file: !830, line: 1505, baseType: !558, size: 64, offset: 22016)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !829, file: !830, line: 1506, baseType: !557, size: 64, offset: 22080)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !829, file: !830, line: 1507, baseType: !558, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !829, file: !830, line: 1508, baseType: !558, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !829, file: !830, line: 1509, baseType: !558, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !829, file: !830, line: 1510, baseType: !713, size: 128, align: 64, offset: 22208)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !829, file: !830, line: 1511, baseType: !38, size: 32, offset: 22336)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !829, file: !830, line: 1515, baseType: !3104, size: 64, offset: 22400)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !708, line: 56, size: 64, elements: !3105)
!3105 = !{!3106}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3104, file: !708, line: 57, baseType: !711, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !829, file: !830, line: 1518, baseType: !3104, size: 64, offset: 22464)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !829, file: !830, line: 1528, baseType: !713, size: 128, align: 64, offset: 22528)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !829, file: !830, line: 1552, baseType: !3110, size: 35328, offset: 23040)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3111, line: 430, size: 35328, elements: !3112)
!3111 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3112 = !{!3113, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3142, !3143, !3144, !3145, !3146, !3147, !3150, !3151, !3152, !3153}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3110, file: !3111, line: 432, baseType: !3114, size: 192)
!3114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3115, size: 192, elements: !411)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3116, line: 16, size: 64, elements: !3117)
!3116 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3117 = !{!3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3115, file: !3116, line: 17, baseType: !109, size: 16)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3115, file: !3116, line: 18, baseType: !109, size: 16, offset: 16)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3115, file: !3116, line: 19, baseType: !109, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3115, file: !3116, line: 19, baseType: !109, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3115, file: !3116, line: 19, baseType: !109, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3115, file: !3116, line: 19, baseType: !109, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3115, file: !3116, line: 19, baseType: !109, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3115, file: !3116, line: 20, baseType: !109, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3115, file: !3116, line: 20, baseType: !109, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3115, file: !3116, line: 20, baseType: !109, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3115, file: !3116, line: 20, baseType: !109, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3115, file: !3116, line: 20, baseType: !109, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3115, file: !3116, line: 20, baseType: !109, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3110, file: !3111, line: 436, baseType: !55, size: 64, offset: 192)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3110, file: !3111, line: 440, baseType: !42, size: 16, offset: 256)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3110, file: !3111, line: 441, baseType: !42, size: 16, offset: 272)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3110, file: !3111, line: 442, baseType: !42, size: 16, offset: 288)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3110, file: !3111, line: 443, baseType: !42, size: 16, offset: 304)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3110, file: !3111, line: 447, baseType: !55, size: 64, offset: 320)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3110, file: !3111, line: 448, baseType: !55, size: 64, offset: 384)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3110, file: !3111, line: 459, baseType: !3139, size: 256, offset: 448)
!3139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3140, size: 256, elements: !796)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3111, line: 428, flags: DIFlagFwdDecl)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3110, file: !3111, line: 461, baseType: !55, size: 64, offset: 704)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3110, file: !3111, line: 463, baseType: !55, size: 64, offset: 768)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3110, file: !3111, line: 465, baseType: !55, size: 64, offset: 832)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3110, file: !3111, line: 466, baseType: !55, size: 64, offset: 896)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3110, file: !3111, line: 467, baseType: !55, size: 64, offset: 960)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3110, file: !3111, line: 473, baseType: !3148, size: 64, offset: 1024)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3111, line: 10, flags: DIFlagFwdDecl)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3110, file: !3111, line: 480, baseType: !55, size: 64, offset: 1088)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3110, file: !3111, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3110, file: !3111, line: 491, baseType: !553, size: 32, offset: 1184)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3110, file: !3111, line: 501, baseType: !3154, size: 33792, offset: 1536)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3155, line: 448, size: 33792, elements: !3156)
!3155 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3156 = !{!3157, !3158, !3159, !3319, !3320, !3326, !3327}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3154, file: !3155, line: 461, baseType: !7, size: 32)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3154, file: !3155, line: 468, baseType: !55, size: 64, offset: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3154, file: !3155, line: 476, baseType: !3160, size: 64, offset: 128)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3155, line: 356, size: 33280, align: 512, elements: !3162)
!3162 = !{!3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3161, file: !3155, line: 358, baseType: !7, size: 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3161, file: !3155, line: 361, baseType: !7, size: 32, offset: 32)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3161, file: !3155, line: 364, baseType: !557, size: 64, offset: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3161, file: !3155, line: 367, baseType: !557, size: 64, offset: 128)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3161, file: !3155, line: 370, baseType: !557, size: 64, offset: 192)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3161, file: !3155, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3161, file: !3155, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3161, file: !3155, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3161, file: !3155, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3161, file: !3155, line: 397, baseType: !3173, size: 32768, offset: 512)
!3173 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3155, line: 348, size: 32768, elements: !3174)
!3174 = !{!3175, !3190, !3227, !3304, !3317}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3173, file: !3155, line: 349, baseType: !3176, size: 896)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3155, line: 12, size: 896, elements: !3177)
!3177 = !{!3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3189}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3176, file: !3155, line: 13, baseType: !553, size: 32)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3176, file: !3155, line: 14, baseType: !553, size: 32, offset: 32)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3176, file: !3155, line: 15, baseType: !553, size: 32, offset: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3176, file: !3155, line: 16, baseType: !553, size: 32, offset: 96)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3176, file: !3155, line: 17, baseType: !553, size: 32, offset: 128)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3176, file: !3155, line: 18, baseType: !553, size: 32, offset: 160)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3176, file: !3155, line: 19, baseType: !553, size: 32, offset: 192)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3176, file: !3155, line: 22, baseType: !3186, size: 640, offset: 224)
!3186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 640, elements: !3187)
!3187 = !{!3188}
!3188 = !DISubrange(count: 20)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3176, file: !3155, line: 25, baseType: !553, size: 32, offset: 864)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3173, file: !3155, line: 350, baseType: !3191, size: 4096, align: 128)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3155, line: 34, size: 4096, align: 128, elements: !3192)
!3192 = !{!3193, !3194, !3195, !3196, !3197, !3212, !3213, !3214, !3216, !3218, !3222}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3191, file: !3155, line: 35, baseType: !109, size: 16)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3191, file: !3155, line: 36, baseType: !109, size: 16, offset: 16)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3191, file: !3155, line: 37, baseType: !109, size: 16, offset: 32)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3191, file: !3155, line: 38, baseType: !109, size: 16, offset: 48)
!3197 = !DIDerivedType(tag: DW_TAG_member, scope: !3191, file: !3155, line: 39, baseType: !3198, size: 128, offset: 64)
!3198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3191, file: !3155, line: 39, size: 128, elements: !3199)
!3199 = !{!3200, !3205}
!3200 = !DIDerivedType(tag: DW_TAG_member, scope: !3198, file: !3155, line: 40, baseType: !3201, size: 128)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3198, file: !3155, line: 40, size: 128, elements: !3202)
!3202 = !{!3203, !3204}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3201, file: !3155, line: 41, baseType: !557, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3201, file: !3155, line: 42, baseType: !557, size: 64, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, scope: !3198, file: !3155, line: 44, baseType: !3206, size: 128)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3198, file: !3155, line: 44, size: 128, elements: !3207)
!3207 = !{!3208, !3209, !3210, !3211}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3206, file: !3155, line: 45, baseType: !553, size: 32)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3206, file: !3155, line: 46, baseType: !553, size: 32, offset: 32)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3206, file: !3155, line: 47, baseType: !553, size: 32, offset: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3206, file: !3155, line: 48, baseType: !553, size: 32, offset: 96)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3191, file: !3155, line: 51, baseType: !553, size: 32, offset: 192)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3191, file: !3155, line: 52, baseType: !553, size: 32, offset: 224)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3191, file: !3155, line: 55, baseType: !3215, size: 1024, offset: 256)
!3215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 1024, elements: !566)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3191, file: !3155, line: 58, baseType: !3217, size: 2048, offset: 1280)
!3217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 2048, elements: !415)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3191, file: !3155, line: 60, baseType: !3219, size: 384, offset: 3328)
!3219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 384, elements: !3220)
!3220 = !{!3221}
!3221 = !DISubrange(count: 12)
!3222 = !DIDerivedType(tag: DW_TAG_member, scope: !3191, file: !3155, line: 62, baseType: !3223, size: 384, offset: 3712)
!3223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3191, file: !3155, line: 62, size: 384, elements: !3224)
!3224 = !{!3225, !3226}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3223, file: !3155, line: 63, baseType: !3219, size: 384)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3223, file: !3155, line: 64, baseType: !3219, size: 384)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3173, file: !3155, line: 351, baseType: !3228, size: 1088)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3155, line: 79, size: 1088, elements: !3229)
!3229 = !{!3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3303}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3228, file: !3155, line: 80, baseType: !553, size: 32)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3228, file: !3155, line: 81, baseType: !553, size: 32, offset: 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3228, file: !3155, line: 82, baseType: !553, size: 32, offset: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3228, file: !3155, line: 83, baseType: !553, size: 32, offset: 96)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3228, file: !3155, line: 84, baseType: !553, size: 32, offset: 128)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3228, file: !3155, line: 85, baseType: !553, size: 32, offset: 160)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3228, file: !3155, line: 86, baseType: !553, size: 32, offset: 192)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3228, file: !3155, line: 88, baseType: !3186, size: 640, offset: 224)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3228, file: !3155, line: 89, baseType: !99, size: 8, offset: 864)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3228, file: !3155, line: 90, baseType: !99, size: 8, offset: 872)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3228, file: !3155, line: 91, baseType: !99, size: 8, offset: 880)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3228, file: !3155, line: 92, baseType: !99, size: 8, offset: 888)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3228, file: !3155, line: 93, baseType: !99, size: 8, offset: 896)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3228, file: !3155, line: 94, baseType: !99, size: 8, offset: 904)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3228, file: !3155, line: 95, baseType: !3245, size: 64, offset: 960)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3247, line: 11, size: 128, elements: !3248)
!3247 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3248 = !{!3249, !3250}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3246, file: !3247, line: 12, baseType: !445, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3246, file: !3247, line: 13, baseType: !3251, size: 64, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3253, line: 103, size: 1344, elements: !3254)
!3253 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3254 = !{!3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3283, !3284, !3285}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3252, file: !3253, line: 109, baseType: !55, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3252, file: !3253, line: 110, baseType: !55, size: 64, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3252, file: !3253, line: 111, baseType: !55, size: 64, offset: 128)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3252, file: !3253, line: 112, baseType: !55, size: 64, offset: 192)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3252, file: !3253, line: 113, baseType: !55, size: 64, offset: 256)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3252, file: !3253, line: 114, baseType: !55, size: 64, offset: 320)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3252, file: !3253, line: 117, baseType: !55, size: 64, offset: 384)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3252, file: !3253, line: 118, baseType: !55, size: 64, offset: 448)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3252, file: !3253, line: 119, baseType: !55, size: 64, offset: 512)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3252, file: !3253, line: 120, baseType: !55, size: 64, offset: 576)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3252, file: !3253, line: 121, baseType: !55, size: 64, offset: 640)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3252, file: !3253, line: 122, baseType: !55, size: 64, offset: 704)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3252, file: !3253, line: 123, baseType: !55, size: 64, offset: 768)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3252, file: !3253, line: 124, baseType: !55, size: 64, offset: 832)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3252, file: !3253, line: 125, baseType: !55, size: 64, offset: 896)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3252, file: !3253, line: 139, baseType: !55, size: 64, offset: 960)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3252, file: !3253, line: 142, baseType: !55, size: 64, offset: 1024)
!3272 = !DIDerivedType(tag: DW_TAG_member, scope: !3252, file: !3253, line: 144, baseType: !3273, size: 64, offset: 1088)
!3273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3252, file: !3253, line: 144, size: 64, elements: !3274)
!3274 = !{!3275, !3276, !3277}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3273, file: !3253, line: 146, baseType: !109, size: 16)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3273, file: !3253, line: 148, baseType: !557, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3273, file: !3253, line: 150, baseType: !3278, size: 64)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3253, line: 59, size: 64, elements: !3279)
!3279 = !{!3280, !3281, !3282}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3278, file: !3253, line: 61, baseType: !557, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3278, file: !3253, line: 63, baseType: !557, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3278, file: !3253, line: 65, baseType: !557, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3252, file: !3253, line: 153, baseType: !55, size: 64, offset: 1152)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3252, file: !3253, line: 154, baseType: !55, size: 64, offset: 1216)
!3285 = !DIDerivedType(tag: DW_TAG_member, scope: !3252, file: !3253, line: 156, baseType: !3286, size: 64, offset: 1280)
!3286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3252, file: !3253, line: 156, size: 64, elements: !3287)
!3287 = !{!3288, !3289, !3290}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3286, file: !3253, line: 158, baseType: !109, size: 16)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3286, file: !3253, line: 160, baseType: !557, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3286, file: !3253, line: 162, baseType: !3291, size: 64)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3253, line: 69, size: 64, elements: !3292)
!3292 = !{!3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3291, file: !3253, line: 71, baseType: !557, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3291, file: !3253, line: 73, baseType: !557, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3291, file: !3253, line: 75, baseType: !557, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3291, file: !3253, line: 77, baseType: !557, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3291, file: !3253, line: 80, baseType: !557, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3291, file: !3253, line: 83, baseType: !557, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3291, file: !3253, line: 86, baseType: !557, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3291, file: !3253, line: 88, baseType: !557, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3291, file: !3253, line: 93, baseType: !557, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3291, file: !3253, line: 100, baseType: !557, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3228, file: !3155, line: 96, baseType: !553, size: 32, offset: 1024)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3173, file: !3155, line: 352, baseType: !3305, size: 4608, align: 512)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3155, line: 333, size: 4608, align: 512, elements: !3306)
!3306 = !{!3307, !3308, !3315}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3305, file: !3155, line: 334, baseType: !3191, size: 4096, align: 128)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3305, file: !3155, line: 335, baseType: !3309, size: 512, offset: 4096)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3155, line: 312, size: 512, elements: !3310)
!3310 = !{!3311, !3312, !3313}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3309, file: !3155, line: 313, baseType: !557, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3309, file: !3155, line: 314, baseType: !557, size: 64, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3309, file: !3155, line: 315, baseType: !3314, size: 384, offset: 128)
!3314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !557, size: 384, elements: !1383)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3305, file: !3155, line: 336, baseType: !3316, offset: 4608)
!3316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, elements: !697)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3173, file: !3155, line: 353, baseType: !3318, size: 32768)
!3318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 32768, elements: !2329)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3154, file: !3155, line: 484, baseType: !3160, size: 64, offset: 192)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3154, file: !3155, line: 491, baseType: !3321, size: 128, offset: 256)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3155, line: 404, size: 128, elements: !3322)
!3322 = !{!3323, !3324, !3325}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3321, file: !3155, line: 424, baseType: !557, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3321, file: !3155, line: 432, baseType: !7, size: 32, offset: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3321, file: !3155, line: 440, baseType: !7, size: 32, offset: 96)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3154, file: !3155, line: 498, baseType: !3321, size: 128, offset: 384)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3154, file: !3155, line: 508, baseType: !3161, size: 33280, align: 512, offset: 512)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !808, file: !809, line: 31, baseType: !3329, size: 64, offset: 448)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3331, line: 325, flags: DIFlagFwdDecl)
!3331 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !808, file: !809, line: 32, baseType: !7, size: 32, offset: 512)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !808, file: !809, line: 33, baseType: !807, size: 64, offset: 576)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !808, file: !809, line: 35, baseType: !3335, size: 64, offset: 640)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !809, line: 17, flags: DIFlagFwdDecl)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !808, file: !809, line: 37, baseType: !1283, size: 64, offset: 704)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !808, file: !809, line: 38, baseType: !1526, size: 64, offset: 768)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !808, file: !809, line: 39, baseType: !38, size: 32, offset: 832)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !808, file: !809, line: 40, baseType: !1316, size: 192, offset: 896)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !808, file: !809, line: 42, baseType: !38, size: 32, offset: 1088)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !750, file: !188, line: 951, baseType: !160, size: 32, offset: 128)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !750, file: !188, line: 952, baseType: !490, size: 32, offset: 160)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !750, file: !188, line: 952, baseType: !490, size: 32, offset: 192)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !750, file: !188, line: 953, baseType: !38, size: 32, offset: 224)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !701, file: !188, line: 1012, baseType: !1694, size: 64, offset: 896)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !701, file: !188, line: 1013, baseType: !3348, size: 256, offset: 960)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !188, line: 970, size: 256, elements: !3349)
!3349 = !{!3350, !3351, !3352, !3353, !3354, !3355}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3348, file: !188, line: 971, baseType: !55, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3348, file: !188, line: 972, baseType: !7, size: 32, offset: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3348, file: !188, line: 973, baseType: !7, size: 32, offset: 96)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3348, file: !188, line: 974, baseType: !7, size: 32, offset: 128)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3348, file: !188, line: 975, baseType: !7, size: 32, offset: 160)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3348, file: !188, line: 976, baseType: !57, size: 64, offset: 192)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !701, file: !188, line: 1014, baseType: !3357, size: 128, offset: 1216)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !3358, line: 8, size: 128, elements: !3359)
!3358 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!3359 = !{!3360, !3361}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !3357, file: !3358, line: 9, baseType: !629, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !3357, file: !3358, line: 10, baseType: !519, size: 64, offset: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !701, file: !188, line: 1015, baseType: !484, size: 64, offset: 1344)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !701, file: !188, line: 1016, baseType: !3364, size: 64, offset: 1408)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3366)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !188, line: 1914, size: 2112, elements: !3367)
!3367 = !{!3368, !3369, !3373, !3377, !3381, !3492, !3493, !3499, !3512, !3516, !3520, !3521, !3525, !3526, !3530, !3535, !3536, !3540, !3544, !3550, !3551, !3555, !3556, !3560, !3564, !3568, !3574, !3578, !3582, !3586, !3590, !3591, !3597}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3366, file: !188, line: 1915, baseType: !356, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3366, file: !188, line: 1916, baseType: !3370, size: 64, offset: 64)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!57, !700, !57, !38}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3366, file: !188, line: 1917, baseType: !3374, size: 64, offset: 128)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!442, !700, !410, !51, !56}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3366, file: !188, line: 1918, baseType: !3378, size: 64, offset: 192)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!442, !700, !32, !51, !56}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3366, file: !188, line: 1919, baseType: !3382, size: 64, offset: 256)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!442, !3385, !3490}
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !188, line: 373, size: 384, elements: !3387)
!3387 = !{!3388, !3389, !3390, !3394, !3395, !3396, !3397}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !3386, file: !188, line: 374, baseType: !700, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !3386, file: !188, line: 375, baseType: !57, size: 64, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !3386, file: !188, line: 376, baseType: !3391, size: 64, offset: 128)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{null, !3385, !445}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3386, file: !188, line: 377, baseType: !36, size: 64, offset: 192)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !3386, file: !188, line: 378, baseType: !38, size: 32, offset: 256)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !3386, file: !188, line: 379, baseType: !109, size: 16, offset: 288)
!3397 = !DIDerivedType(tag: DW_TAG_member, scope: !3386, file: !188, line: 380, baseType: !3398, size: 64, offset: 320)
!3398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3386, file: !188, line: 380, size: 64, elements: !3399)
!3399 = !{!3400, !3486}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !3398, file: !188, line: 386, baseType: !3401, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !3403, line: 998, size: 448, elements: !3404)
!3403 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!3404 = !{!3405, !3472, !3473}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !3402, file: !3403, line: 999, baseType: !3406, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !130, line: 293, size: 1536, elements: !3408)
!3408 = !{!3409, !3439, !3453}
!3409 = !DIDerivedType(tag: DW_TAG_member, scope: !3407, file: !130, line: 295, baseType: !3410, size: 512)
!3410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3407, file: !130, line: 295, size: 512, elements: !3411)
!3411 = !{!3412, !3438}
!3412 = !DIDerivedType(tag: DW_TAG_member, scope: !3410, file: !130, line: 296, baseType: !3413, size: 448)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3410, file: !130, line: 296, size: 448, elements: !3414)
!3414 = !{!3415, !3416, !3425, !3426, !3427, !3436, !3437}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3413, file: !130, line: 298, baseType: !55, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, scope: !3413, file: !130, line: 299, baseType: !3417, size: 128, offset: 64)
!3417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3413, file: !130, line: 299, size: 128, elements: !3418)
!3418 = !{!3419, !3420}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3417, file: !130, line: 300, baseType: !113, size: 128)
!3420 = !DIDerivedType(tag: DW_TAG_member, scope: !3417, file: !130, line: 302, baseType: !3421, size: 128)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3417, file: !130, line: 302, size: 128, elements: !3422)
!3422 = !{!3423, !3424}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3421, file: !130, line: 303, baseType: !36, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3421, file: !130, line: 305, baseType: !7, size: 32, offset: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3413, file: !130, line: 310, baseType: !480, size: 64, offset: 192)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3413, file: !130, line: 311, baseType: !55, size: 64, offset: 256)
!3427 = !DIDerivedType(tag: DW_TAG_member, scope: !3413, file: !130, line: 312, baseType: !3428, size: 64, offset: 320)
!3428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3413, file: !130, line: 312, size: 64, elements: !3429)
!3429 = !{!3430, !3431}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3428, file: !130, line: 313, baseType: !36, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3428, file: !130, line: 314, baseType: !3432, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !130, line: 257, baseType: !3433)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 255, size: 64, elements: !3434)
!3434 = !{!3435}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3433, file: !130, line: 256, baseType: !55, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3413, file: !130, line: 316, baseType: !65, size: 32, offset: 384)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3413, file: !130, line: 317, baseType: !65, size: 32, offset: 416)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3410, file: !130, line: 323, baseType: !2079, size: 512, align: 128)
!3439 = !DIDerivedType(tag: DW_TAG_member, scope: !3407, file: !130, line: 325, baseType: !3440, size: 512, offset: 512)
!3440 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3407, file: !130, line: 325, size: 512, elements: !3441)
!3441 = !{!3442, !3452}
!3442 = !DIDerivedType(tag: DW_TAG_member, scope: !3440, file: !130, line: 326, baseType: !3443, size: 320)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3440, file: !130, line: 326, size: 320, elements: !3444)
!3444 = !{!3445, !3446, !3447, !3448, !3449, !3450, !3451}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3443, file: !130, line: 327, baseType: !55, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3443, file: !130, line: 328, baseType: !55, size: 64, offset: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3443, file: !130, line: 329, baseType: !55, size: 64, offset: 128)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3443, file: !130, line: 331, baseType: !65, size: 32, offset: 192)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3443, file: !130, line: 332, baseType: !65, size: 32, offset: 224)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3443, file: !130, line: 333, baseType: !65, size: 32, offset: 256)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3443, file: !130, line: 335, baseType: !7, size: 32, offset: 288)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3440, file: !130, line: 339, baseType: !2079, size: 512, align: 128)
!3453 = !DIDerivedType(tag: DW_TAG_member, scope: !3407, file: !130, line: 341, baseType: !3454, size: 512, offset: 1024)
!3454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3407, file: !130, line: 341, size: 512, elements: !3455)
!3455 = !{!3456, !3465, !3471}
!3456 = !DIDerivedType(tag: DW_TAG_member, scope: !3454, file: !130, line: 342, baseType: !3457, size: 384)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3454, file: !130, line: 342, size: 384, elements: !3458)
!3458 = !{!3459, !3460, !3461, !3462, !3463, !3464}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3457, file: !130, line: 343, baseType: !55, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3457, file: !130, line: 344, baseType: !55, size: 64, offset: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3457, file: !130, line: 346, baseType: !36, size: 64, offset: 128)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3457, file: !130, line: 347, baseType: !36, size: 64, offset: 192)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3457, file: !130, line: 348, baseType: !36, size: 64, offset: 256)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3457, file: !130, line: 349, baseType: !36, size: 64, offset: 320)
!3465 = !DIDerivedType(tag: DW_TAG_member, scope: !3454, file: !130, line: 352, baseType: !3466, size: 256)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3454, file: !130, line: 352, size: 256, elements: !3467)
!3467 = !{!3468, !3469, !3470}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3466, file: !130, line: 353, baseType: !55, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3466, file: !130, line: 354, baseType: !55, size: 64, offset: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3466, file: !130, line: 356, baseType: !113, size: 128, offset: 128)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3454, file: !130, line: 359, baseType: !2079, size: 512, align: 128)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !3402, file: !3403, line: 1000, baseType: !38, size: 32, offset: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3402, file: !3403, line: 1001, baseType: !3474, size: 320, offset: 128)
!3474 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !71, line: 14, baseType: !3475)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !71, line: 30, size: 320, elements: !3476)
!3476 = !{!3477, !3478, !3479, !3485}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3475, file: !71, line: 31, baseType: !7, size: 32)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3475, file: !71, line: 32, baseType: !36, size: 64, offset: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3475, file: !71, line: 33, baseType: !3480, size: 64, offset: 128)
!3480 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !71, line: 16, baseType: !3481)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!38, !3484, !7, !38, !36}
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3475, file: !71, line: 34, baseType: !113, size: 128, offset: 192)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !3398, file: !188, line: 395, baseType: !3487, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!442, !36}
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !188, line: 69, flags: DIFlagFwdDecl)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3366, file: !188, line: 1920, baseType: !3382, size: 64, offset: 320)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3366, file: !188, line: 1921, baseType: !3494, size: 64, offset: 384)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!38, !3385, !3497, !7}
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !188, line: 53, flags: DIFlagFwdDecl)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3366, file: !188, line: 1923, baseType: !3500, size: 64, offset: 448)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!38, !700, !3503}
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !188, line: 1858, size: 128, elements: !3505)
!3505 = !{!3506, !3511}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3504, file: !188, line: 1859, baseType: !3507, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !188, line: 1855, baseType: !3508)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!1328, !3503, !32, !38, !57, !557, !7}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3504, file: !188, line: 1860, baseType: !57, size: 64, offset: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3366, file: !188, line: 1924, baseType: !3513, size: 64, offset: 512)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!2266, !700, !2268}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3366, file: !188, line: 1925, baseType: !3517, size: 64, offset: 576)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!445, !700, !7, !55}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3366, file: !188, line: 1926, baseType: !3517, size: 64, offset: 640)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3366, file: !188, line: 1927, baseType: !3522, size: 64, offset: 704)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!38, !700, !1954}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3366, file: !188, line: 1928, baseType: !55, size: 64, offset: 768)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3366, file: !188, line: 1929, baseType: !3527, size: 64, offset: 832)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!38, !484, !700}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3366, file: !188, line: 1930, baseType: !3531, size: 64, offset: 896)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!38, !700, !3534}
!3534 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !188, line: 1061, baseType: !36)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3366, file: !188, line: 1931, baseType: !3527, size: 64, offset: 960)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3366, file: !188, line: 1932, baseType: !3537, size: 64, offset: 1024)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!38, !700, !57, !57, !38}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3366, file: !188, line: 1933, baseType: !3541, size: 64, offset: 1088)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!38, !38, !700, !38}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3366, file: !188, line: 1934, baseType: !3545, size: 64, offset: 1152)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!38, !700, !38, !3548}
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !188, line: 1063, flags: DIFlagFwdDecl)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3366, file: !188, line: 1935, baseType: !1148, size: 64, offset: 1216)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3366, file: !188, line: 1936, baseType: !3552, size: 64, offset: 1280)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!38, !38}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3366, file: !188, line: 1937, baseType: !3545, size: 64, offset: 1344)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3366, file: !188, line: 1938, baseType: !3557, size: 64, offset: 1408)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!442, !2978, !700, !56, !51, !7}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3366, file: !188, line: 1939, baseType: !3561, size: 64, offset: 1472)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!442, !700, !56, !2978, !51, !7}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3366, file: !188, line: 1940, baseType: !3565, size: 64, offset: 1536)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{null, !700}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3366, file: !188, line: 1941, baseType: !3569, size: 64, offset: 1600)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!38, !700, !38, !3572, !3573}
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3366, file: !188, line: 1942, baseType: !3575, size: 64, offset: 1664)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!445, !700, !38, !57, !57}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3366, file: !188, line: 1944, baseType: !3579, size: 64, offset: 1728)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{null, !1897, !700}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3366, file: !188, line: 1948, baseType: !3583, size: 64, offset: 1792)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!442, !700, !57, !700, !57, !51, !7}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3366, file: !188, line: 1950, baseType: !3587, size: 64, offset: 1856)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!57, !700, !57, !700, !57, !57, !7}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3366, file: !188, line: 1953, baseType: !3537, size: 64, offset: 1920)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3366, file: !188, line: 1954, baseType: !3592, size: 64, offset: 1984)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!38, !3595, !7}
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !188, line: 1911, flags: DIFlagFwdDecl)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3366, file: !188, line: 1955, baseType: !3598, size: 64, offset: 2048)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!38, !3595, !3497, !7}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !701, file: !188, line: 1018, baseType: !557, size: 64, offset: 1472)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !701, file: !188, line: 1020, baseType: !36, size: 64, offset: 1536)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !701, file: !188, line: 1023, baseType: !36, size: 64, offset: 1600)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !701, file: !188, line: 1027, baseType: !3605, size: 64, offset: 1664)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !701, file: !188, line: 1029, baseType: !480, size: 64, offset: 1728)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !701, file: !188, line: 1030, baseType: !3608, size: 32, offset: 1792)
!3608 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3609, line: 8, baseType: !553)
!3609 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !701, file: !188, line: 1031, baseType: !3608, size: 32, offset: 1824)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !676, file: !14, line: 72, baseType: !51, size: 64, offset: 192)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "dirfd", scope: !676, file: !14, line: 73, baseType: !38, size: 32, offset: 256)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "parse_monolithic", scope: !661, file: !14, line: 119, baseType: !3614, size: 64, offset: 192)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!38, !655, !36}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "get_tree", scope: !661, file: !14, line: 120, baseType: !652, size: 64, offset: 256)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "reconfigure", scope: !661, file: !14, line: 121, baseType: !652, size: 64, offset: 320)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "uapi_mutex", scope: !656, file: !14, line: 92, baseType: !735, size: 256, offset: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "fs_type", scope: !656, file: !14, line: 93, baseType: !646, size: 64, offset: 320)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "fs_private", scope: !656, file: !14, line: 94, baseType: !36, size: 64, offset: 384)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "sget_key", scope: !656, file: !14, line: 95, baseType: !36, size: 64, offset: 448)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !656, file: !14, line: 96, baseType: !519, size: 64, offset: 512)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !656, file: !14, line: 97, baseType: !1283, size: 64, offset: 576)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !656, file: !14, line: 98, baseType: !1811, size: 64, offset: 640)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !656, file: !14, line: 99, baseType: !1694, size: 64, offset: 704)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !656, file: !14, line: 100, baseType: !3628, size: 128, offset: 768)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p_log", file: !14, line: 76, size: 128, elements: !3629)
!3629 = !{!3630, !3631}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !3628, file: !14, line: 77, baseType: !32, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !3628, file: !14, line: 78, baseType: !3632, size: 64, offset: 64)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fc_log", file: !14, line: 173, size: 640, elements: !3634)
!3634 = !{!3635, !3636, !3637, !3638, !3639, !3640}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3633, file: !14, line: 174, baseType: !778, size: 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3633, file: !14, line: 175, baseType: !99, size: 8, offset: 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !3633, file: !14, line: 176, baseType: !99, size: 8, offset: 40)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !3633, file: !14, line: 177, baseType: !99, size: 8, offset: 48)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3633, file: !14, line: 178, baseType: !356, size: 64, offset: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3633, file: !14, line: 179, baseType: !3641, size: 512, offset: 128)
!3641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 512, elements: !990)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !656, file: !14, line: 101, baseType: !32, size: 64, offset: 896)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !656, file: !14, line: 102, baseType: !36, size: 64, offset: 960)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !656, file: !14, line: 103, baseType: !36, size: 64, offset: 1024)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags", scope: !656, file: !14, line: 104, baseType: !7, size: 32, offset: 1088)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags_mask", scope: !656, file: !14, line: 105, baseType: !7, size: 32, offset: 1120)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !656, file: !14, line: 106, baseType: !7, size: 32, offset: 1152)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !656, file: !14, line: 107, baseType: !168, size: 8, offset: 1184, flags: DIFlagBitField, extraData: i64 1184)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !656, file: !14, line: 108, baseType: !173, size: 8, offset: 1192, flags: DIFlagBitField, extraData: i64 1184)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !656, file: !14, line: 109, baseType: !1328, size: 1, offset: 1200, flags: DIFlagBitField, extraData: i64 1184)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !656, file: !14, line: 110, baseType: !1328, size: 1, offset: 1201, flags: DIFlagBitField, extraData: i64 1184)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "oldapi", scope: !656, file: !14, line: 111, baseType: !1328, size: 1, offset: 1202, flags: DIFlagBitField, extraData: i64 1184)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !656, file: !14, line: 112, baseType: !1328, size: 1, offset: 1203, flags: DIFlagBitField, extraData: i64 1184)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !647, file: !188, line: 2377, baseType: !3655, size: 64, offset: 192)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3657)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !3658, line: 39, size: 256, elements: !3659)
!3658 = !DIFile(filename: "./include/linux/fs_parser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a7e6f8b2e05f10a6300994e1bfb8d6d3")
!3659 = !{!3660, !3661, !3678, !3679, !3680}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3657, file: !3658, line: 40, baseType: !32, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3657, file: !3658, line: 41, baseType: !3662, size: 64, offset: 64)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_typedef, name: "fs_param_type", file: !3658, line: 22, baseType: !3664)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!38, !3666, !3655, !675, !3667}
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parse_result", file: !3658, line: 53, size: 128, elements: !3669)
!3669 = !{!3670, !3671}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "negated", scope: !3668, file: !3658, line: 54, baseType: !1328, size: 8)
!3671 = !DIDerivedType(tag: DW_TAG_member, scope: !3668, file: !3658, line: 55, baseType: !3672, size: 64, offset: 64)
!3672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3668, file: !3658, line: 55, size: 64, elements: !3673)
!3673 = !{!3674, !3675, !3676, !3677}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !3672, file: !3658, line: 56, baseType: !1328, size: 8)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "int_32", scope: !3672, file: !3658, line: 57, baseType: !38, size: 32)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "uint_32", scope: !3672, file: !3658, line: 58, baseType: !7, size: 32)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "uint_64", scope: !3672, file: !3658, line: 59, baseType: !557, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !3657, file: !3658, line: 42, baseType: !99, size: 8, offset: 128)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3657, file: !3658, line: 43, baseType: !42, size: 16, offset: 144)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3657, file: !3658, line: 47, baseType: !1257, size: 64, offset: 192)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !647, file: !188, line: 2378, baseType: !3682, size: 64, offset: 256)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!519, !646, !38, !32, !36}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !647, file: !188, line: 2380, baseType: !3686, size: 64, offset: 320)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{null, !635}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !647, file: !188, line: 2381, baseType: !356, size: 64, offset: 384)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !647, file: !188, line: 2382, baseType: !646, size: 64, offset: 448)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !647, file: !188, line: 2383, baseType: !787, size: 64, offset: 512)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !647, file: !188, line: 2385, baseType: !3693, offset: 576)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !3694, line: 206, elements: !1144)
!3694 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !647, file: !188, line: 2386, baseType: !3693, offset: 576)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !647, file: !188, line: 2387, baseType: !3693, offset: 576)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !647, file: !188, line: 2388, baseType: !3698, offset: 576)
!3698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3693, elements: !411)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !647, file: !188, line: 2390, baseType: !3693, offset: 576)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !647, file: !188, line: 2391, baseType: !3693, offset: 576)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !647, file: !188, line: 2392, baseType: !3693, offset: 576)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !647, file: !188, line: 2393, baseType: !3693, offset: 576)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !636, file: !188, line: 1197, baseType: !3704, size: 64, offset: 384)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3706)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !188, line: 2057, size: 1664, elements: !3707)
!3707 = !{!3708, !3712, !3716, !3717, !3721, !3745, !3749, !3750, !3751, !3755, !3759, !3763, !3764, !3765, !3771, !3775, !3776, !3780, !3781, !3782, !3783, !3787, !3791, !3838, !3853, !3854}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !3706, file: !188, line: 2058, baseType: !3709, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!484, !635}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !3706, file: !188, line: 2059, baseType: !3713, size: 64, offset: 64)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{null, !484}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3706, file: !188, line: 2060, baseType: !3713, size: 64, offset: 128)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !3706, file: !188, line: 2062, baseType: !3718, size: 64, offset: 192)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{null, !484, !38}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !3706, file: !188, line: 2063, baseType: !3722, size: 64, offset: 256)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!38, !484, !3725}
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !183, line: 42, size: 384, elements: !3727)
!3727 = !{!3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !3726, file: !183, line: 43, baseType: !445, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !3726, file: !183, line: 45, baseType: !445, size: 64, offset: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !3726, file: !183, line: 52, baseType: !57, size: 64, offset: 128)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !3726, file: !183, line: 53, baseType: !57, size: 64, offset: 192)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !3726, file: !183, line: 55, baseType: !182, size: 32, offset: 256)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !3726, file: !183, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !3726, file: !183, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !3726, file: !183, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !3726, file: !183, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !3726, file: !183, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !3726, file: !183, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !3726, file: !183, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !3726, file: !183, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !3726, file: !183, line: 78, baseType: !3742, size: 64, offset: 320)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !183, line: 78, flags: DIFlagFwdDecl)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !3706, file: !188, line: 2064, baseType: !3746, size: 64, offset: 320)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!38, !484}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !3706, file: !188, line: 2065, baseType: !3713, size: 64, offset: 384)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !3706, file: !188, line: 2066, baseType: !3686, size: 64, offset: 448)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !3706, file: !188, line: 2067, baseType: !3752, size: 64, offset: 512)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!38, !635, !38}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !3706, file: !188, line: 2068, baseType: !3756, size: 64, offset: 576)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!38, !635, !187}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !3706, file: !188, line: 2069, baseType: !3760, size: 64, offset: 640)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!38, !635}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !3706, file: !188, line: 2070, baseType: !3756, size: 64, offset: 704)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !3706, file: !188, line: 2071, baseType: !3760, size: 64, offset: 768)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !3706, file: !188, line: 2072, baseType: !3766, size: 64, offset: 832)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!38, !519, !3769}
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !188, line: 62, flags: DIFlagFwdDecl)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !3706, file: !188, line: 2073, baseType: !3772, size: 64, offset: 896)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!38, !635, !1657, !410}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !3706, file: !188, line: 2074, baseType: !3686, size: 64, offset: 960)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3706, file: !188, line: 2076, baseType: !3777, size: 64, offset: 1024)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!38, !1897, !519}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !3706, file: !188, line: 2077, baseType: !3777, size: 64, offset: 1088)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3706, file: !188, line: 2078, baseType: !3777, size: 64, offset: 1152)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !3706, file: !188, line: 2079, baseType: !3777, size: 64, offset: 1216)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !3706, file: !188, line: 2081, baseType: !3784, size: 64, offset: 1280)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!442, !635, !38, !410, !51, !57}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !3706, file: !188, line: 2082, baseType: !3788, size: 64, offset: 1344)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!442, !635, !38, !32, !51, !57}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !3706, file: !188, line: 2083, baseType: !3792, size: 64, offset: 1408)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!3795, !484}
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !193, line: 296, size: 1664, elements: !3798)
!3798 = !{!3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3823, !3824, !3825}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3797, file: !193, line: 297, baseType: !791, size: 128)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3797, file: !193, line: 298, baseType: !113, size: 128, offset: 128)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3797, file: !193, line: 299, baseType: !113, size: 128, offset: 256)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3797, file: !193, line: 300, baseType: !113, size: 128, offset: 384)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3797, file: !193, line: 301, baseType: !735, size: 256, offset: 512)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3797, file: !193, line: 302, baseType: !75, size: 32, offset: 768)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3797, file: !193, line: 303, baseType: !65, size: 32, offset: 800)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3797, file: !193, line: 304, baseType: !635, size: 64, offset: 832)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3797, file: !193, line: 305, baseType: !3808, size: 64, offset: 896)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !193, line: 68, size: 64, elements: !3809)
!3809 = !{!3810, !3822}
!3810 = !DIDerivedType(tag: DW_TAG_member, scope: !3808, file: !193, line: 69, baseType: !3811, size: 32)
!3811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3808, file: !193, line: 69, size: 32, elements: !3812)
!3812 = !{!3813, !3814, !3815}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3811, file: !193, line: 70, baseType: !490, size: 32)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3811, file: !193, line: 71, baseType: !499, size: 32)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3811, file: !193, line: 72, baseType: !3816, size: 32)
!3816 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3817, line: 24, baseType: !3818)
!3817 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3817, line: 22, size: 32, elements: !3819)
!3819 = !{!3820}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3818, file: !3817, line: 23, baseType: !3821, size: 32)
!3821 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3817, line: 20, baseType: !496)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3808, file: !193, line: 74, baseType: !192, size: 32, offset: 32)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3797, file: !193, line: 306, baseType: !57, size: 64, offset: 960)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3797, file: !193, line: 307, baseType: !55, size: 64, offset: 1024)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3797, file: !193, line: 308, baseType: !3826, size: 576, offset: 1088)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !193, line: 205, size: 576, elements: !3827)
!3827 = !{!3828, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3826, file: !193, line: 206, baseType: !3829, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !193, line: 66, baseType: !59)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3826, file: !193, line: 207, baseType: !3829, size: 64, offset: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3826, file: !193, line: 208, baseType: !3829, size: 64, offset: 128)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3826, file: !193, line: 209, baseType: !3829, size: 64, offset: 192)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3826, file: !193, line: 210, baseType: !3829, size: 64, offset: 256)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3826, file: !193, line: 211, baseType: !3829, size: 64, offset: 320)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3826, file: !193, line: 212, baseType: !3829, size: 64, offset: 384)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3826, file: !193, line: 213, baseType: !1354, size: 64, offset: 448)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3826, file: !193, line: 214, baseType: !1354, size: 64, offset: 512)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !3706, file: !188, line: 2085, baseType: !3839, size: 64, offset: 1472)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!445, !635, !3842}
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3844, line: 15, size: 256, elements: !3845)
!3844 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3845 = !{!3846, !3847, !3848, !3849, !3850}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3843, file: !3844, line: 16, baseType: !821, size: 32)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3843, file: !3844, line: 19, baseType: !38, size: 32, offset: 32)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3843, file: !3844, line: 26, baseType: !55, size: 64, offset: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3843, file: !3844, line: 33, baseType: !55, size: 64, offset: 128)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3843, file: !3844, line: 36, baseType: !3851, size: 64, offset: 192)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !130, line: 33, flags: DIFlagFwdDecl)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !3706, file: !188, line: 2087, baseType: !3839, size: 64, offset: 1536)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3706, file: !188, line: 2089, baseType: !3686, size: 64, offset: 1600)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !636, file: !188, line: 1198, baseType: !3856, size: 64, offset: 448)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3858)
!3858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !193, line: 324, size: 704, elements: !3859)
!3859 = !{!3860, !3864, !3868, !3872, !3873, !3874, !3875, !3876, !3881, !3886, !3890}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3858, file: !193, line: 325, baseType: !3861, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!38, !3796}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3858, file: !193, line: 326, baseType: !3865, size: 64, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!3796, !635, !38}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3858, file: !193, line: 327, baseType: !3869, size: 64, offset: 128)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{null, !3796}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3858, file: !193, line: 328, baseType: !3861, size: 64, offset: 192)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3858, file: !193, line: 329, baseType: !3861, size: 64, offset: 256)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3858, file: !193, line: 330, baseType: !3861, size: 64, offset: 320)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3858, file: !193, line: 331, baseType: !3752, size: 64, offset: 384)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3858, file: !193, line: 334, baseType: !3877, size: 64, offset: 448)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!3880, !484}
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3858, file: !193, line: 335, baseType: !3882, size: 64, offset: 512)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!38, !484, !3885}
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3858, file: !193, line: 337, baseType: !3887, size: 64, offset: 576)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!38, !484, !3880}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3858, file: !193, line: 339, baseType: !3891, size: 64, offset: 640)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!38, !635, !3894}
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !636, file: !188, line: 1199, baseType: !3896, size: 64, offset: 512)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3898)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !193, line: 430, size: 704, elements: !3899)
!3899 = !{!3900, !3906, !3907, !3911, !3912, !3913, !3928, !3951, !3955, !3956, !3979}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3898, file: !193, line: 431, baseType: !3901, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!38, !635, !38, !38, !3904}
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3357)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3898, file: !193, line: 432, baseType: !3752, size: 64, offset: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3898, file: !193, line: 433, baseType: !3908, size: 64, offset: 128)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!38, !635, !7}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3898, file: !193, line: 434, baseType: !3908, size: 64, offset: 192)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3898, file: !193, line: 435, baseType: !3752, size: 64, offset: 256)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3898, file: !193, line: 436, baseType: !3914, size: 64, offset: 320)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!38, !635, !38, !3917}
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !193, line: 417, size: 256, elements: !3919)
!3919 = !{!3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3918, file: !193, line: 418, baseType: !38, size: 32)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3918, file: !193, line: 419, baseType: !7, size: 32, offset: 32)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3918, file: !193, line: 420, baseType: !7, size: 32, offset: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3918, file: !193, line: 422, baseType: !7, size: 32, offset: 96)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3918, file: !193, line: 423, baseType: !7, size: 32, offset: 128)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3918, file: !193, line: 424, baseType: !7, size: 32, offset: 160)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3918, file: !193, line: 425, baseType: !7, size: 32, offset: 192)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3918, file: !193, line: 426, baseType: !7, size: 32, offset: 224)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3898, file: !193, line: 437, baseType: !3929, size: 64, offset: 384)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!38, !635, !3808, !3932}
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !193, line: 345, size: 960, elements: !3934)
!3934 = !{!3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3933, file: !193, line: 346, baseType: !38, size: 32)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3933, file: !193, line: 347, baseType: !557, size: 64, offset: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3933, file: !193, line: 348, baseType: !557, size: 64, offset: 128)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3933, file: !193, line: 349, baseType: !557, size: 64, offset: 192)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3933, file: !193, line: 350, baseType: !557, size: 64, offset: 256)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3933, file: !193, line: 351, baseType: !557, size: 64, offset: 320)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3933, file: !193, line: 352, baseType: !557, size: 64, offset: 384)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3933, file: !193, line: 353, baseType: !732, size: 64, offset: 448)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3933, file: !193, line: 355, baseType: !732, size: 64, offset: 512)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3933, file: !193, line: 356, baseType: !38, size: 32, offset: 576)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3933, file: !193, line: 357, baseType: !38, size: 32, offset: 608)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3933, file: !193, line: 358, baseType: !557, size: 64, offset: 640)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3933, file: !193, line: 359, baseType: !557, size: 64, offset: 704)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3933, file: !193, line: 360, baseType: !557, size: 64, offset: 768)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3933, file: !193, line: 361, baseType: !732, size: 64, offset: 832)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3933, file: !193, line: 362, baseType: !38, size: 32, offset: 896)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3898, file: !193, line: 438, baseType: !3952, size: 64, offset: 448)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!38, !635, !3894, !3932}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3898, file: !193, line: 440, baseType: !3929, size: 64, offset: 512)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3898, file: !193, line: 441, baseType: !3957, size: 64, offset: 576)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!38, !635, !3960}
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !193, line: 411, size: 1408, elements: !3962)
!3962 = !{!3963, !3964}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3961, file: !193, line: 412, baseType: !7, size: 32)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3961, file: !193, line: 413, baseType: !3965, size: 1344, offset: 64)
!3965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3966, size: 1344, elements: !411)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !193, line: 397, size: 448, elements: !3967)
!3967 = !{!3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3978}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3966, file: !193, line: 398, baseType: !7, size: 32)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3966, file: !193, line: 399, baseType: !7, size: 32, offset: 32)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3966, file: !193, line: 401, baseType: !7, size: 32, offset: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3966, file: !193, line: 402, baseType: !7, size: 32, offset: 96)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3966, file: !193, line: 403, baseType: !7, size: 32, offset: 128)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3966, file: !193, line: 404, baseType: !7, size: 32, offset: 160)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3966, file: !193, line: 405, baseType: !7, size: 32, offset: 192)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3966, file: !193, line: 406, baseType: !559, size: 64, offset: 256)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3966, file: !193, line: 407, baseType: !3977, size: 64, offset: 320)
!3977 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !41, line: 132, baseType: !557)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3966, file: !193, line: 408, baseType: !3977, size: 64, offset: 384)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3898, file: !193, line: 442, baseType: !3908, size: 64, offset: 640)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !636, file: !188, line: 1200, baseType: !3981, size: 64, offset: 576)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3983)
!3983 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !188, line: 54, flags: DIFlagFwdDecl)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !636, file: !188, line: 1201, baseType: !55, size: 64, offset: 640)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !636, file: !188, line: 1202, baseType: !55, size: 64, offset: 704)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !636, file: !188, line: 1203, baseType: !55, size: 64, offset: 768)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !636, file: !188, line: 1204, baseType: !519, size: 64, offset: 832)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !636, file: !188, line: 1205, baseType: !1178, size: 320, offset: 896)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !636, file: !188, line: 1206, baseType: !38, size: 32, offset: 1216)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !636, file: !188, line: 1207, baseType: !65, size: 32, offset: 1248)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !636, file: !188, line: 1209, baseType: !36, size: 64, offset: 1280)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !636, file: !188, line: 1211, baseType: !3993, size: 64, offset: 1344)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3996)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !3997, line: 36, size: 384, elements: !3998)
!3997 = !DIFile(filename: "./include/linux/xattr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b18c2f606ad05d87dee3d79567b8d0c")
!3998 = !{!3999, !4000, !4001, !4002, !4006, !4010}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3996, file: !3997, line: 37, baseType: !32, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !3996, file: !3997, line: 38, baseType: !32, size: 64, offset: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3996, file: !3997, line: 39, baseType: !38, size: 32, offset: 128)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3996, file: !3997, line: 40, baseType: !4003, size: 64, offset: 192)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!1328, !519}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3996, file: !3997, line: 41, baseType: !4007, size: 64, offset: 256)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!38, !3994, !519, !484, !32, !36, !51}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3996, file: !3997, line: 44, baseType: !4011, size: 64, offset: 320)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!38, !3994, !4014, !519, !484, !32, !1257, !51, !38}
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1711, line: 42, flags: DIFlagFwdDecl)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !636, file: !188, line: 1223, baseType: !4017, size: 64, offset: 1408)
!4017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !536, line: 34, size: 64, elements: !4018)
!4018 = !{!4019}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4017, file: !536, line: 35, baseType: !539, size: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !636, file: !188, line: 1224, baseType: !113, size: 128, offset: 1472)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !636, file: !188, line: 1225, baseType: !4022, size: 64, offset: 1600)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !4024, line: 40, size: 7424, elements: !4025)
!4024 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!4025 = !{!4026, !4028, !4029, !4030, !4033, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4060, !4061}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !4023, file: !4024, line: 41, baseType: !4027, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !41, line: 131, baseType: !557)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !4023, file: !4024, line: 42, baseType: !4027, size: 64, offset: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !4023, file: !4024, line: 43, baseType: !2996, size: 64, offset: 128)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !4023, file: !4024, line: 44, baseType: !4031, size: 64, offset: 192)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2820, line: 74, flags: DIFlagFwdDecl)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !4023, file: !4024, line: 45, baseType: !4034, size: 64, offset: 256)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !4024, line: 45, flags: DIFlagFwdDecl)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !4023, file: !4024, line: 46, baseType: !55, size: 64, offset: 320)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !4023, file: !4024, line: 47, baseType: !1328, size: 8, offset: 384)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !4023, file: !4024, line: 48, baseType: !99, size: 8, offset: 392)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !4023, file: !4024, line: 49, baseType: !1328, size: 8, offset: 400)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !4023, file: !4024, line: 50, baseType: !1328, size: 8, offset: 408)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !4023, file: !4024, line: 51, baseType: !640, size: 32, offset: 416)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !4023, file: !4024, line: 52, baseType: !65, size: 32, offset: 448)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !4023, file: !4024, line: 53, baseType: !75, size: 32, offset: 480)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !4023, file: !4024, line: 54, baseType: !484, size: 64, offset: 512)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !4023, file: !4024, line: 55, baseType: !36, size: 64, offset: 576)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !4023, file: !4024, line: 56, baseType: !36, size: 64, offset: 640)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !4023, file: !4024, line: 57, baseType: !4048, size: 64, offset: 704)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4050)
!4050 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !4024, line: 57, flags: DIFlagFwdDecl)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !4023, file: !4024, line: 58, baseType: !735, size: 256, offset: 768)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !4023, file: !4024, line: 60, baseType: !38, size: 32, offset: 1024)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !4023, file: !4024, line: 61, baseType: !38, size: 32, offset: 1056)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !4023, file: !4024, line: 62, baseType: !375, size: 64, offset: 1088)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !4023, file: !4024, line: 65, baseType: !735, size: 256, offset: 1152)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !4023, file: !4024, line: 66, baseType: !635, size: 64, offset: 1408)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !4023, file: !4024, line: 68, baseType: !4058, size: 64, offset: 1472)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !4024, line: 68, flags: DIFlagFwdDecl)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !4023, file: !4024, line: 72, baseType: !1328, size: 8, offset: 1536)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !4023, file: !4024, line: 77, baseType: !4062, size: 5824, offset: 1600)
!4062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !205, line: 705, size: 5824, elements: !4063)
!4063 = !{!4064, !4065, !4067, !4070, !4071, !4124, !4194, !4195, !4196, !4197, !4198, !4205, !4297, !4310, !4320, !4324, !4326, !4327, !4328, !4332, !4339, !4340, !4343, !4346, !4350, !4455, !4456, !4457, !4458, !4459, !4460, !4517, !4518, !4519, !4522, !4525, !4534, !4535, !4536, !4537, !4538, !4539}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4062, file: !205, line: 706, baseType: !369, size: 512)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4062, file: !205, line: 707, baseType: !4066, size: 64, offset: 512)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4062, file: !205, line: 709, baseType: !4068, size: 64, offset: 576)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !205, line: 37, flags: DIFlagFwdDecl)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4062, file: !205, line: 711, baseType: !32, size: 64, offset: 640)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4062, file: !205, line: 712, baseType: !4072, size: 64, offset: 704)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4074)
!4074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !205, line: 89, size: 384, elements: !4075)
!4075 = !{!4076, !4077, !4078, !4084, !4089, !4093}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4074, file: !205, line: 90, baseType: !32, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4074, file: !205, line: 91, baseType: !456, size: 64, offset: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4074, file: !205, line: 92, baseType: !4079, size: 64, offset: 128)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!38, !4082, !405}
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4062)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4074, file: !205, line: 93, baseType: !4085, size: 64, offset: 192)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!410, !4082, !4088, !1507, !1508}
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4074, file: !205, line: 95, baseType: !4090, size: 64, offset: 256)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{null, !4066}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4074, file: !205, line: 97, baseType: !4094, size: 64, offset: 320)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4096)
!4096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !212, line: 286, size: 1472, elements: !4097)
!4097 = !{!4098, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4096, file: !212, line: 287, baseType: !4099, size: 64)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!38, !4066}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4096, file: !212, line: 288, baseType: !4090, size: 64, offset: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4096, file: !212, line: 289, baseType: !4099, size: 64, offset: 128)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4096, file: !212, line: 290, baseType: !4099, size: 64, offset: 192)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4096, file: !212, line: 291, baseType: !4099, size: 64, offset: 256)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4096, file: !212, line: 292, baseType: !4099, size: 64, offset: 320)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4096, file: !212, line: 293, baseType: !4099, size: 64, offset: 384)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4096, file: !212, line: 294, baseType: !4099, size: 64, offset: 448)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4096, file: !212, line: 295, baseType: !4099, size: 64, offset: 512)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4096, file: !212, line: 296, baseType: !4099, size: 64, offset: 576)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4096, file: !212, line: 297, baseType: !4099, size: 64, offset: 640)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4096, file: !212, line: 298, baseType: !4099, size: 64, offset: 704)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4096, file: !212, line: 299, baseType: !4099, size: 64, offset: 768)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4096, file: !212, line: 300, baseType: !4099, size: 64, offset: 832)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4096, file: !212, line: 301, baseType: !4099, size: 64, offset: 896)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4096, file: !212, line: 302, baseType: !4099, size: 64, offset: 960)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4096, file: !212, line: 303, baseType: !4099, size: 64, offset: 1024)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4096, file: !212, line: 304, baseType: !4099, size: 64, offset: 1088)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4096, file: !212, line: 305, baseType: !4099, size: 64, offset: 1152)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4096, file: !212, line: 306, baseType: !4099, size: 64, offset: 1216)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4096, file: !212, line: 307, baseType: !4099, size: 64, offset: 1280)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4096, file: !212, line: 308, baseType: !4099, size: 64, offset: 1344)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4096, file: !212, line: 309, baseType: !4099, size: 64, offset: 1408)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4062, file: !205, line: 714, baseType: !4125, size: 64, offset: 768)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4127)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4128, line: 80, size: 1344, elements: !4129)
!4128 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4129 = !{!4130, !4131, !4132, !4133, !4134, !4135, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4193}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4127, file: !4128, line: 81, baseType: !32, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4127, file: !4128, line: 82, baseType: !32, size: 64, offset: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4127, file: !4128, line: 83, baseType: !456, size: 64, offset: 128)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4127, file: !4128, line: 84, baseType: !456, size: 64, offset: 192)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4127, file: !4128, line: 85, baseType: !456, size: 64, offset: 256)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4127, file: !4128, line: 87, baseType: !4136, size: 64, offset: 320)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!38, !4066, !4139}
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !199, line: 96, size: 1152, elements: !4141)
!4141 = !{!4142, !4143, !4144, !4145, !4146, !4147, !4148, !4152, !4156, !4157, !4158, !4159, !4160, !4168, !4169, !4170, !4171, !4172, !4173}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4140, file: !199, line: 97, baseType: !32, size: 64)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4140, file: !199, line: 98, baseType: !4125, size: 64, offset: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4140, file: !199, line: 100, baseType: !356, size: 64, offset: 128)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4140, file: !199, line: 101, baseType: !32, size: 64, offset: 192)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4140, file: !199, line: 103, baseType: !1328, size: 8, offset: 256)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4140, file: !199, line: 104, baseType: !198, size: 32, offset: 288)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4140, file: !199, line: 106, baseType: !4149, size: 64, offset: 320)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4151)
!4151 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !199, line: 106, flags: DIFlagFwdDecl)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4140, file: !199, line: 107, baseType: !4153, size: 64, offset: 384)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4155)
!4155 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !199, line: 107, flags: DIFlagFwdDecl)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4140, file: !199, line: 109, baseType: !4099, size: 64, offset: 448)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4140, file: !199, line: 110, baseType: !4090, size: 64, offset: 512)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4140, file: !199, line: 111, baseType: !4099, size: 64, offset: 576)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4140, file: !199, line: 112, baseType: !4090, size: 64, offset: 640)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4140, file: !199, line: 113, baseType: !4161, size: 64, offset: 704)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!38, !4066, !4164}
!4164 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !212, line: 60, baseType: !4165)
!4165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !212, line: 58, size: 32, elements: !4166)
!4166 = !{!4167}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4165, file: !212, line: 59, baseType: !38, size: 32)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4140, file: !199, line: 114, baseType: !4099, size: 64, offset: 768)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4140, file: !199, line: 115, baseType: !456, size: 64, offset: 832)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4140, file: !199, line: 116, baseType: !456, size: 64, offset: 896)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4140, file: !199, line: 118, baseType: !4094, size: 64, offset: 960)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4140, file: !199, line: 119, baseType: !4090, size: 64, offset: 1024)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4140, file: !199, line: 121, baseType: !4174, size: 64, offset: 1088)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !199, line: 121, flags: DIFlagFwdDecl)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4127, file: !4128, line: 88, baseType: !4079, size: 64, offset: 384)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4127, file: !4128, line: 89, baseType: !4099, size: 64, offset: 448)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4127, file: !4128, line: 90, baseType: !4090, size: 64, offset: 512)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4127, file: !4128, line: 91, baseType: !4090, size: 64, offset: 576)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4127, file: !4128, line: 92, baseType: !4090, size: 64, offset: 640)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4127, file: !4128, line: 94, baseType: !4099, size: 64, offset: 704)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4127, file: !4128, line: 95, baseType: !4099, size: 64, offset: 768)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4127, file: !4128, line: 97, baseType: !4161, size: 64, offset: 832)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4127, file: !4128, line: 98, baseType: !4099, size: 64, offset: 896)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4127, file: !4128, line: 100, baseType: !4099, size: 64, offset: 960)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4127, file: !4128, line: 102, baseType: !4099, size: 64, offset: 1024)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4127, file: !4128, line: 103, baseType: !4090, size: 64, offset: 1088)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4127, file: !4128, line: 105, baseType: !4094, size: 64, offset: 1152)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4127, file: !4128, line: 107, baseType: !4190, size: 64, offset: 1216)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4192)
!4192 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4128, line: 107, flags: DIFlagFwdDecl)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4127, file: !4128, line: 109, baseType: !1328, size: 8, offset: 1280)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4062, file: !205, line: 715, baseType: !4139, size: 64, offset: 832)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4062, file: !205, line: 717, baseType: !36, size: 64, offset: 896)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4062, file: !205, line: 719, baseType: !36, size: 64, offset: 960)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4062, file: !205, line: 721, baseType: !735, size: 256, offset: 1024)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4062, file: !205, line: 725, baseType: !4199, size: 448, offset: 1280)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !205, line: 517, size: 448, elements: !4200)
!4200 = !{!4201, !4202, !4203, !4204}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4199, file: !205, line: 518, baseType: !113, size: 128)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4199, file: !205, line: 519, baseType: !113, size: 128, offset: 128)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4199, file: !205, line: 520, baseType: !113, size: 128, offset: 256)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4199, file: !205, line: 521, baseType: !204, size: 32, offset: 384)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4062, file: !205, line: 726, baseType: !4206, size: 2496, offset: 1728)
!4206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !212, line: 663, size: 2496, elements: !4207)
!4207 = !{!4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4290, !4294}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4206, file: !212, line: 664, baseType: !4164, size: 32)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4206, file: !212, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4206, file: !212, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4206, file: !212, line: 667, baseType: !1328, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4206, file: !212, line: 668, baseType: !1328, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4206, file: !212, line: 669, baseType: !1328, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4206, file: !212, line: 670, baseType: !1328, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4206, file: !212, line: 671, baseType: !1328, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4206, file: !212, line: 672, baseType: !1328, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4206, file: !212, line: 673, baseType: !1328, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4206, file: !212, line: 674, baseType: !1328, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4206, file: !212, line: 675, baseType: !553, size: 32, offset: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4206, file: !212, line: 676, baseType: !75, size: 32, offset: 96)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4206, file: !212, line: 678, baseType: !113, size: 128, offset: 128)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4206, file: !212, line: 679, baseType: !1482, size: 256, offset: 256)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4206, file: !212, line: 680, baseType: !4224, size: 64, offset: 512)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4226, line: 43, size: 1536, elements: !4227)
!4226 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4227 = !{!4228, !4229, !4230, !4231, !4232, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4225, file: !4226, line: 44, baseType: !32, size: 64)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4225, file: !4226, line: 45, baseType: !38, size: 32, offset: 64)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4225, file: !4226, line: 46, baseType: !113, size: 128, offset: 128)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4225, file: !4226, line: 47, baseType: !75, size: 32, offset: 256)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4225, file: !4226, line: 48, baseType: !4233, size: 64, offset: 320)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !212, line: 629, flags: DIFlagFwdDecl)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4225, file: !4226, line: 49, baseType: !2293, size: 320, offset: 384)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4225, file: !4226, line: 50, baseType: !55, size: 64, offset: 704)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4225, file: !4226, line: 51, baseType: !955, size: 64, offset: 768)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4225, file: !4226, line: 52, baseType: !955, size: 64, offset: 832)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4225, file: !4226, line: 53, baseType: !955, size: 64, offset: 896)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4225, file: !4226, line: 54, baseType: !955, size: 64, offset: 960)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4225, file: !4226, line: 55, baseType: !955, size: 64, offset: 1024)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4225, file: !4226, line: 56, baseType: !55, size: 64, offset: 1088)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4225, file: !4226, line: 57, baseType: !55, size: 64, offset: 1152)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4225, file: !4226, line: 58, baseType: !55, size: 64, offset: 1216)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4225, file: !4226, line: 59, baseType: !55, size: 64, offset: 1280)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4225, file: !4226, line: 60, baseType: !55, size: 64, offset: 1344)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4225, file: !4226, line: 61, baseType: !4066, size: 64, offset: 1408)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4225, file: !4226, line: 62, baseType: !1328, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4225, file: !4226, line: 63, baseType: !1328, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4206, file: !212, line: 681, baseType: !1328, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4206, file: !212, line: 682, baseType: !1328, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4206, file: !212, line: 683, baseType: !1328, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4206, file: !212, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4206, file: !212, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4206, file: !212, line: 690, baseType: !947, size: 512, offset: 640)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4206, file: !212, line: 691, baseType: !557, size: 64, offset: 1152)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4206, file: !212, line: 692, baseType: !1443, size: 256, offset: 1216)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4206, file: !212, line: 693, baseType: !70, size: 192, offset: 1472)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4206, file: !212, line: 694, baseType: !4233, size: 64, offset: 1664)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4206, file: !212, line: 695, baseType: !65, size: 32, offset: 1728)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4206, file: !212, line: 696, baseType: !65, size: 32, offset: 1760)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4206, file: !212, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4206, file: !212, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4206, file: !212, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4206, file: !212, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4206, file: !212, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4206, file: !212, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4206, file: !212, line: 703, baseType: !1328, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4206, file: !212, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4206, file: !212, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4206, file: !212, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4206, file: !212, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4206, file: !212, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4206, file: !212, line: 709, baseType: !7, size: 32, offset: 1824)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4206, file: !212, line: 710, baseType: !211, size: 32, offset: 1856)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4206, file: !212, line: 711, baseType: !219, size: 32, offset: 1888)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4206, file: !212, line: 712, baseType: !219, size: 32, offset: 1920)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4206, file: !212, line: 713, baseType: !38, size: 32, offset: 1952)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4206, file: !212, line: 714, baseType: !38, size: 32, offset: 1984)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4206, file: !212, line: 715, baseType: !557, size: 64, offset: 2048)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4206, file: !212, line: 716, baseType: !557, size: 64, offset: 2112)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4206, file: !212, line: 717, baseType: !557, size: 64, offset: 2176)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4206, file: !212, line: 718, baseType: !557, size: 64, offset: 2240)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4206, file: !212, line: 720, baseType: !4285, size: 64, offset: 2304)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !212, line: 632, size: 64, elements: !4287)
!4287 = !{!4288, !4289}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4286, file: !212, line: 633, baseType: !75, size: 32)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4286, file: !212, line: 634, baseType: !7, size: 32, offset: 32)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4206, file: !212, line: 721, baseType: !4291, size: 64, offset: 2368)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{null, !4066, !1224}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4206, file: !212, line: 722, baseType: !4295, size: 64, offset: 2432)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !212, line: 722, flags: DIFlagFwdDecl)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4062, file: !205, line: 727, baseType: !4298, size: 64, offset: 4224)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !212, line: 742, size: 1792, elements: !4300)
!4300 = !{!4301, !4302, !4303, !4307, !4308, !4309}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4299, file: !212, line: 743, baseType: !4096, size: 1472)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4299, file: !212, line: 744, baseType: !4099, size: 64, offset: 1472)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4299, file: !212, line: 745, baseType: !4304, size: 64, offset: 1536)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{null, !4066, !1328}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4299, file: !212, line: 746, baseType: !4099, size: 64, offset: 1600)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4299, file: !212, line: 747, baseType: !4090, size: 64, offset: 1664)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4299, file: !212, line: 748, baseType: !4090, size: 64, offset: 1728)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4062, file: !205, line: 736, baseType: !4311, size: 128, offset: 4288)
!4311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !205, line: 529, size: 128, elements: !4312)
!4312 = !{!4313, !4317}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4311, file: !205, line: 531, baseType: !4314, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4316, line: 13, flags: DIFlagFwdDecl)
!4316 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4311, file: !205, line: 532, baseType: !4318, size: 64, offset: 64)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !205, line: 49, flags: DIFlagFwdDecl)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4062, file: !205, line: 738, baseType: !4321, size: 64, offset: 4416)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4323)
!4323 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !205, line: 738, flags: DIFlagFwdDecl)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4062, file: !205, line: 740, baseType: !4325, size: 64, offset: 4480)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4062, file: !205, line: 741, baseType: !557, size: 64, offset: 4544)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4062, file: !205, line: 746, baseType: !557, size: 64, offset: 4608)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4062, file: !205, line: 747, baseType: !4329, size: 64, offset: 4672)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4331)
!4331 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !205, line: 747, flags: DIFlagFwdDecl)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4062, file: !205, line: 749, baseType: !4333, size: 64, offset: 4736)
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !205, line: 428, size: 128, elements: !4335)
!4335 = !{!4336, !4337, !4338}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4334, file: !205, line: 433, baseType: !7, size: 32)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4334, file: !205, line: 434, baseType: !7, size: 32, offset: 32)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4334, file: !205, line: 435, baseType: !55, size: 64, offset: 64)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4062, file: !205, line: 751, baseType: !113, size: 128, offset: 4800)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4062, file: !205, line: 762, baseType: !4341, size: 64, offset: 4928)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !205, line: 762, flags: DIFlagFwdDecl)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4062, file: !205, line: 770, baseType: !4344, offset: 4992)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4345, line: 5, elements: !1144)
!4345 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4062, file: !205, line: 772, baseType: !4347, size: 64, offset: 4992)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4349, line: 18, flags: DIFlagFwdDecl)
!4349 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4062, file: !205, line: 773, baseType: !4351, size: 64, offset: 5056)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4353, line: 41, size: 512, elements: !4354)
!4353 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4354 = !{!4355, !4356, !4451, !4452, !4453, !4454}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4352, file: !4353, line: 42, baseType: !4351, size: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4352, file: !4353, line: 43, baseType: !4357, size: 64, offset: 64)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4359)
!4359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4353, line: 125, size: 1408, elements: !4360)
!4360 = !{!4361, !4365, !4369, !4375, !4379, !4380, !4385, !4389, !4393, !4398, !4402, !4403, !4407, !4411, !4415, !4426, !4427, !4428, !4429, !4439, !4443, !4447}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4359, file: !4353, line: 126, baseType: !4362, size: 64)
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{!4351, !4351}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4359, file: !4353, line: 127, baseType: !4366, size: 64, offset: 64)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{null, !4351}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4359, file: !4353, line: 128, baseType: !4370, size: 64, offset: 128)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{!1328, !4373}
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4352)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4359, file: !4353, line: 129, baseType: !4376, size: 64, offset: 192)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{!1257, !4373, !4082}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4359, file: !4353, line: 131, baseType: !4370, size: 64, offset: 256)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4359, file: !4353, line: 133, baseType: !4381, size: 64, offset: 320)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!4384, !4373}
!4384 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4353, line: 132, flags: DIFlagFwdDecl)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4359, file: !4353, line: 134, baseType: !4386, size: 64, offset: 384)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DISubroutineType(types: !4388)
!4388 = !{!1328, !4373, !32}
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4359, file: !4353, line: 136, baseType: !4390, size: 64, offset: 448)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = !DISubroutineType(types: !4392)
!4392 = !{!38, !4373, !32, !7, !36, !51}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4359, file: !4353, line: 141, baseType: !4394, size: 64, offset: 512)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{!38, !4373, !32, !4397, !51}
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4359, file: !4353, line: 144, baseType: !4399, size: 64, offset: 576)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = !DISubroutineType(types: !4401)
!4401 = !{!32, !4373}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4359, file: !4353, line: 145, baseType: !4399, size: 64, offset: 640)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4359, file: !4353, line: 146, baseType: !4404, size: 64, offset: 704)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!4351, !4373}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4359, file: !4353, line: 148, baseType: !4408, size: 64, offset: 768)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!4351, !4373, !4351}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4359, file: !4353, line: 151, baseType: !4412, size: 64, offset: 832)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{!4351, !4373, !32}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4359, file: !4353, line: 153, baseType: !4416, size: 64, offset: 896)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DISubroutineType(types: !4418)
!4418 = !{!38, !4373, !32, !32, !7, !7, !4419}
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4353, line: 94, size: 640, elements: !4421)
!4421 = !{!4422, !4423, !4424}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4420, file: !4353, line: 95, baseType: !4351, size: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4420, file: !4353, line: 96, baseType: !7, size: 32, offset: 64)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4420, file: !4353, line: 97, baseType: !4425, size: 512, offset: 128)
!4425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !557, size: 512, elements: !990)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4359, file: !4353, line: 158, baseType: !4408, size: 64, offset: 960)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4359, file: !4353, line: 161, baseType: !4404, size: 64, offset: 1024)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4359, file: !4353, line: 163, baseType: !4362, size: 64, offset: 1088)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4359, file: !4353, line: 164, baseType: !4430, size: 64, offset: 1152)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!38, !4373, !4433}
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4353, line: 73, size: 128, elements: !4435)
!4435 = !{!4436, !4437, !4438}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4434, file: !4353, line: 74, baseType: !7, size: 32)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4434, file: !4353, line: 75, baseType: !7, size: 32, offset: 32)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4434, file: !4353, line: 76, baseType: !4373, size: 64, offset: 64)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4359, file: !4353, line: 166, baseType: !4440, size: 64, offset: 1216)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!36, !4351, !38}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4359, file: !4353, line: 167, baseType: !4444, size: 64, offset: 1280)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!38, !4373, !7}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4359, file: !4353, line: 168, baseType: !4448, size: 64, offset: 1344)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{!38, !4351}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4352, file: !4353, line: 44, baseType: !4066, size: 64, offset: 128)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4352, file: !4353, line: 45, baseType: !113, size: 128, offset: 192)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4352, file: !4353, line: 46, baseType: !113, size: 128, offset: 320)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4352, file: !4353, line: 47, baseType: !99, size: 8, offset: 448)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4062, file: !205, line: 776, baseType: !38, size: 32, offset: 5120)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4062, file: !205, line: 778, baseType: !640, size: 32, offset: 5152)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4062, file: !205, line: 779, baseType: !553, size: 32, offset: 5184)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4062, file: !205, line: 781, baseType: !75, size: 32, offset: 5216)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4062, file: !205, line: 782, baseType: !113, size: 128, offset: 5248)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4062, file: !205, line: 784, baseType: !4461, size: 64, offset: 5376)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4463)
!4463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4464, line: 52, size: 768, elements: !4465)
!4464 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4465 = !{!4466, !4467, !4468, !4469, !4470, !4474, !4478, !4479, !4480, !4508, !4512, !4516}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4463, file: !4464, line: 53, baseType: !32, size: 64)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4463, file: !4464, line: 55, baseType: !456, size: 64, offset: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4463, file: !4464, line: 56, baseType: !456, size: 64, offset: 128)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4463, file: !4464, line: 58, baseType: !4079, size: 64, offset: 192)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4463, file: !4464, line: 59, baseType: !4471, size: 64, offset: 256)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{!410, !4082, !4088}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4463, file: !4464, line: 61, baseType: !4475, size: 64, offset: 320)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{null, !4461}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4463, file: !4464, line: 62, baseType: !4090, size: 64, offset: 384)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4463, file: !4464, line: 64, baseType: !4099, size: 64, offset: 448)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4463, file: !4464, line: 66, baseType: !4481, size: 64, offset: 512)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4483)
!4483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !227, line: 39, size: 384, elements: !4484)
!4484 = !{!4485, !4486, !4490, !4494, !4500, !4504}
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4483, file: !227, line: 40, baseType: !226, size: 32)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4483, file: !227, line: 41, baseType: !4487, size: 64, offset: 64)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!1328}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4483, file: !227, line: 42, baseType: !4491, size: 64, offset: 128)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!36}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4483, file: !227, line: 43, baseType: !4495, size: 64, offset: 192)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!1257, !4498}
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !227, line: 19, flags: DIFlagFwdDecl)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4483, file: !227, line: 44, baseType: !4501, size: 64, offset: 256)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!1257}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4483, file: !227, line: 45, baseType: !4505, size: 64, offset: 320)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DISubroutineType(types: !4507)
!4507 = !{null, !36}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4463, file: !4464, line: 67, baseType: !4509, size: 64, offset: 576)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = !DISubroutineType(types: !4511)
!4511 = !{!1257, !4082}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4463, file: !4464, line: 69, baseType: !4513, size: 64, offset: 640)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DISubroutineType(types: !4515)
!4515 = !{null, !4082, !1507, !1508}
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4463, file: !4464, line: 71, baseType: !4094, size: 64, offset: 704)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4062, file: !205, line: 785, baseType: !456, size: 64, offset: 5440)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4062, file: !205, line: 787, baseType: !4090, size: 64, offset: 5504)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4062, file: !205, line: 788, baseType: !4520, size: 64, offset: 5568)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4521 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !205, line: 46, flags: DIFlagFwdDecl)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4062, file: !205, line: 789, baseType: !4523, size: 64, offset: 5632)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !205, line: 48, flags: DIFlagFwdDecl)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4062, file: !205, line: 791, baseType: !4526, size: 64, offset: 5696)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !205, line: 597, size: 128, elements: !4528)
!4528 = !{!4529, !4530, !4531, !4532, !4533}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4527, file: !205, line: 598, baseType: !232, size: 32)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4527, file: !205, line: 599, baseType: !241, size: 32, offset: 32)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4527, file: !205, line: 600, baseType: !246, size: 32, offset: 64)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4527, file: !205, line: 601, baseType: !1328, size: 8, offset: 96)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4527, file: !205, line: 602, baseType: !1328, size: 8, offset: 104)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4062, file: !205, line: 793, baseType: !251, size: 32, offset: 5760)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4062, file: !205, line: 795, baseType: !1328, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4062, file: !205, line: 796, baseType: !1328, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4062, file: !205, line: 797, baseType: !1328, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4062, file: !205, line: 798, baseType: !1328, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4062, file: !205, line: 799, baseType: !1328, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !636, file: !188, line: 1226, baseType: !4541, size: 64, offset: 1664)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !188, line: 1226, flags: DIFlagFwdDecl)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !636, file: !188, line: 1227, baseType: !4544, size: 64, offset: 1728)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !258, line: 163, size: 6848, elements: !4546)
!4546 = !{!4547, !4548, !4549, !4550, !4551, !4552, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4603, !4604, !4605, !4606, !4607, !4608, !4609}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4545, file: !258, line: 164, baseType: !557, size: 64)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !4545, file: !258, line: 165, baseType: !877, size: 192, align: 64, offset: 64)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !4545, file: !258, line: 166, baseType: !113, size: 128, offset: 256)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4545, file: !258, line: 167, baseType: !55, size: 64, offset: 384)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !4545, file: !258, line: 168, baseType: !55, size: 64, offset: 448)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4545, file: !258, line: 170, baseType: !4553, size: 32, offset: 512)
!4553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4554, line: 19, size: 32, elements: !4555)
!4554 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4555 = !{!4556}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4553, file: !4554, line: 20, baseType: !778, size: 32)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !4545, file: !258, line: 171, baseType: !7, size: 32, offset: 544)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !4545, file: !258, line: 172, baseType: !7, size: 32, offset: 576)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !4545, file: !258, line: 173, baseType: !7, size: 32, offset: 608)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !4545, file: !258, line: 173, baseType: !7, size: 32, offset: 640)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !4545, file: !258, line: 179, baseType: !726, size: 64, offset: 704)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !4545, file: !258, line: 184, baseType: !55, size: 64, offset: 768)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !4545, file: !258, line: 186, baseType: !4564, size: 4672, offset: 832)
!4564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !258, line: 105, size: 4672, elements: !4565)
!4565 = !{!4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4590, !4591, !4592, !4593, !4594, !4601, !4602}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !4564, file: !258, line: 106, baseType: !4544, size: 64)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4564, file: !258, line: 108, baseType: !55, size: 64, offset: 64)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !4564, file: !258, line: 109, baseType: !55, size: 64, offset: 128)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !4564, file: !258, line: 111, baseType: !113, size: 128, offset: 192)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !4564, file: !258, line: 112, baseType: !113, size: 128, offset: 320)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !4564, file: !258, line: 113, baseType: !113, size: 128, offset: 448)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !4564, file: !258, line: 114, baseType: !113, size: 128, offset: 576)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !4564, file: !258, line: 115, baseType: !75, size: 32, offset: 704)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !4564, file: !258, line: 117, baseType: !65, size: 32, offset: 736)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4564, file: !258, line: 118, baseType: !1215, size: 1280, offset: 768)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !4564, file: !258, line: 120, baseType: !55, size: 64, offset: 2048)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !4564, file: !258, line: 121, baseType: !55, size: 64, offset: 2112)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !4564, file: !258, line: 122, baseType: !55, size: 64, offset: 2176)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !4564, file: !258, line: 123, baseType: !55, size: 64, offset: 2240)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !4564, file: !258, line: 124, baseType: !55, size: 64, offset: 2304)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !4564, file: !258, line: 132, baseType: !55, size: 64, offset: 2368)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !4564, file: !258, line: 133, baseType: !55, size: 64, offset: 2432)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !4564, file: !258, line: 135, baseType: !4584, size: 384, offset: 2496)
!4584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !4585, line: 76, size: 384, elements: !4586)
!4585 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!4586 = !{!4587, !4588, !4589}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4584, file: !4585, line: 78, baseType: !1216, size: 320)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4584, file: !4585, line: 80, baseType: !7, size: 32, offset: 320)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4584, file: !4585, line: 81, baseType: !740, size: 32, offset: 352)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !4564, file: !258, line: 136, baseType: !38, size: 32, offset: 2880)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !4564, file: !258, line: 137, baseType: !257, size: 32, offset: 2912)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !4564, file: !258, line: 139, baseType: !75, size: 32, offset: 2944)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !4564, file: !258, line: 140, baseType: !113, size: 128, offset: 3008)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !4564, file: !258, line: 141, baseType: !4595, size: 704, offset: 3136)
!4595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1444, line: 111, size: 704, elements: !4596)
!4596 = !{!4597, !4598, !4599, !4600}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4595, file: !1444, line: 112, baseType: !1443, size: 256)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4595, file: !1444, line: 113, baseType: !2293, size: 320, offset: 256)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4595, file: !1444, line: 116, baseType: !2508, size: 64, offset: 576)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4595, file: !1444, line: 117, baseType: !38, size: 32, offset: 640)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !4564, file: !258, line: 142, baseType: !4595, size: 704, offset: 3840)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !4564, file: !258, line: 144, baseType: !113, size: 128, offset: 4544)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !4545, file: !258, line: 187, baseType: !113, size: 128, offset: 5504)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !4545, file: !258, line: 193, baseType: !70, size: 192, offset: 5632)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4545, file: !258, line: 195, baseType: !4066, size: 64, offset: 5824)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4545, file: !258, line: 196, baseType: !2332, size: 512, offset: 5888)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4545, file: !258, line: 197, baseType: !4066, size: 64, offset: 6400)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !4545, file: !258, line: 199, baseType: !2293, size: 320, offset: 6464)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !4545, file: !258, line: 202, baseType: !519, size: 64, offset: 6784)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !636, file: !188, line: 1228, baseType: !4611, size: 64, offset: 1792)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !188, line: 1228, flags: DIFlagFwdDecl)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !636, file: !188, line: 1229, baseType: !791, size: 128, offset: 1856)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !636, file: !188, line: 1230, baseType: !7, size: 32, offset: 1984)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !636, file: !188, line: 1231, baseType: !4616, size: 2496, offset: 2048)
!4616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !193, line: 521, size: 2496, elements: !4617)
!4617 = !{!4618, !4619, !4620, !4622, !4654}
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4616, file: !193, line: 522, baseType: !7, size: 32)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4616, file: !193, line: 523, baseType: !1178, size: 320, offset: 64)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4616, file: !193, line: 524, baseType: !4621, size: 192, offset: 384)
!4621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 192, elements: !411)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4616, file: !193, line: 525, baseType: !4623, size: 1728, offset: 576)
!4623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4624, size: 1728, elements: !411)
!4624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !193, line: 222, size: 576, elements: !4625)
!4625 = !{!4626, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4624, file: !193, line: 223, baseType: !4627, size: 64)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !193, line: 445, size: 256, elements: !4629)
!4629 = !{!4630, !4631, !4644, !4645}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4628, file: !193, line: 446, baseType: !38, size: 32)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4628, file: !193, line: 447, baseType: !4632, size: 64, offset: 64)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4634)
!4634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !193, line: 312, size: 512, elements: !4635)
!4635 = !{!4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4634, file: !193, line: 313, baseType: !3752, size: 64)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4634, file: !193, line: 314, baseType: !3752, size: 64, offset: 64)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4634, file: !193, line: 315, baseType: !3752, size: 64, offset: 128)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4634, file: !193, line: 316, baseType: !3752, size: 64, offset: 192)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4634, file: !193, line: 317, baseType: !3861, size: 64, offset: 256)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4634, file: !193, line: 318, baseType: !3861, size: 64, offset: 320)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4634, file: !193, line: 319, baseType: !3861, size: 64, offset: 384)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4634, file: !193, line: 320, baseType: !3891, size: 64, offset: 448)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4628, file: !193, line: 448, baseType: !356, size: 64, offset: 128)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4628, file: !193, line: 449, baseType: !4627, size: 64, offset: 192)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4624, file: !193, line: 224, baseType: !38, size: 32, offset: 64)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4624, file: !193, line: 226, baseType: !113, size: 128, offset: 128)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4624, file: !193, line: 227, baseType: !55, size: 64, offset: 256)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4624, file: !193, line: 228, baseType: !7, size: 32, offset: 320)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4624, file: !193, line: 229, baseType: !7, size: 32, offset: 352)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4624, file: !193, line: 230, baseType: !3829, size: 64, offset: 384)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4624, file: !193, line: 231, baseType: !3829, size: 64, offset: 448)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4624, file: !193, line: 232, baseType: !36, size: 64, offset: 512)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4616, file: !193, line: 526, baseType: !4655, size: 192, offset: 2304)
!4655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4632, size: 192, elements: !411)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !636, file: !188, line: 1233, baseType: !4657, size: 2368, offset: 4544)
!4657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !188, line: 1184, size: 2368, elements: !4658)
!4658 = !{!4659, !4660, !4661}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4657, file: !188, line: 1185, baseType: !42, size: 16)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4657, file: !188, line: 1186, baseType: !42, size: 16, offset: 16)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4657, file: !188, line: 1187, baseType: !4662, size: 2304, offset: 64)
!4662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4663, size: 2304, elements: !411)
!4663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4664, line: 12, size: 768, elements: !4665)
!4664 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4665 = !{!4666, !4674, !4676, !4681, !4682}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4663, file: !4664, line: 13, baseType: !4667, size: 384)
!4667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4668, line: 17, size: 384, elements: !4669)
!4668 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4669 = !{!4670, !4671, !4672, !4673}
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4667, file: !4668, line: 18, baseType: !38, size: 32)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4667, file: !4668, line: 19, baseType: !38, size: 32, offset: 32)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4667, file: !4668, line: 20, baseType: !70, size: 192, offset: 64)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4667, file: !4668, line: 22, baseType: !713, size: 128, align: 64, offset: 256)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4663, file: !4664, line: 14, baseType: !4675, size: 64, offset: 384)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4663, file: !4664, line: 15, baseType: !4677, size: 64, offset: 448)
!4677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4678, line: 16, size: 64, elements: !4679)
!4678 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!4679 = !{!4680}
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4677, file: !4678, line: 17, baseType: !828, size: 64)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4663, file: !4664, line: 16, baseType: !70, size: 192, offset: 512)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4663, file: !4664, line: 17, baseType: !65, size: 32, offset: 704)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !636, file: !188, line: 1240, baseType: !36, size: 64, offset: 6912)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !636, file: !188, line: 1243, baseType: !553, size: 32, offset: 6976)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !636, file: !188, line: 1245, baseType: !1354, size: 64, offset: 7040)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !636, file: !188, line: 1246, baseType: !1354, size: 64, offset: 7104)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !636, file: !188, line: 1248, baseType: !554, size: 32, offset: 7168)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !636, file: !188, line: 1249, baseType: !4689, size: 64, offset: 7232)
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4690, size: 64)
!4690 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !188, line: 634, flags: DIFlagFwdDecl)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !636, file: !188, line: 1252, baseType: !2678, size: 256, offset: 7296)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !636, file: !188, line: 1253, baseType: !4693, size: 128, offset: 7552)
!4693 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4694, line: 21, baseType: !4695)
!4694 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4695 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4694, line: 19, size: 128, elements: !4696)
!4696 = !{!4697}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4695, file: !4694, line: 20, baseType: !4698, size: 128)
!4698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 128, elements: !1768)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !636, file: !188, line: 1255, baseType: !7, size: 32, offset: 7680)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !636, file: !188, line: 1261, baseType: !735, size: 256, offset: 7744)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !636, file: !188, line: 1267, baseType: !32, size: 64, offset: 8000)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !636, file: !188, line: 1269, baseType: !582, size: 64, offset: 8064)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !636, file: !188, line: 1271, baseType: !4704, size: 448, offset: 8128)
!4704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3844, line: 63, size: 448, elements: !4705)
!4705 = !{!4706, !4711, !4712, !4713, !4714, !4715, !4716}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4704, file: !3844, line: 64, baseType: !4707, size: 64)
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = !DISubroutineType(types: !4709)
!4709 = !{!55, !4710, !3842}
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4704, size: 64)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4704, file: !3844, line: 66, baseType: !4707, size: 64, offset: 64)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4704, file: !3844, line: 69, baseType: !445, size: 64, offset: 128)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4704, file: !3844, line: 70, baseType: !38, size: 32, offset: 192)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4704, file: !3844, line: 71, baseType: !7, size: 32, offset: 224)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4704, file: !3844, line: 74, baseType: !113, size: 128, offset: 256)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4704, file: !3844, line: 85, baseType: !4717, size: 64, offset: 384)
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !636, file: !188, line: 1274, baseType: !726, size: 64, offset: 8576)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !636, file: !188, line: 1280, baseType: !726, size: 64, offset: 8640)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !636, file: !188, line: 1283, baseType: !38, size: 32, offset: 8704)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !636, file: !188, line: 1286, baseType: !3608, size: 32, offset: 8736)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !636, file: !188, line: 1289, baseType: !2508, size: 64, offset: 8768)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !636, file: !188, line: 1290, baseType: !787, size: 64, offset: 8832)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !636, file: !188, line: 1297, baseType: !1283, size: 64, offset: 8896)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !636, file: !188, line: 1304, baseType: !4726, size: 64, offset: 8960)
!4726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4727, line: 49, size: 64, elements: !4728)
!4727 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4728 = !{!4729}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4726, file: !4727, line: 50, baseType: !4730, size: 64)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4727, line: 41, size: 512, align: 512, elements: !4732)
!4732 = !{!4733, !4734, !4739}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4731, file: !4727, line: 43, baseType: !75, size: 32)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4731, file: !4727, line: 45, baseType: !4735, size: 192, offset: 64)
!4735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4727, line: 29, size: 192, elements: !4736)
!4736 = !{!4737, !4738}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4735, file: !4727, line: 30, baseType: !113, size: 128)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4735, file: !4727, line: 32, baseType: !445, size: 64, offset: 128)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4731, file: !4727, line: 46, baseType: !445, size: 64, offset: 256)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !636, file: !188, line: 1305, baseType: !4726, size: 64, offset: 9024)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !636, file: !188, line: 1306, baseType: !713, size: 128, align: 64, offset: 9088)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !636, file: !188, line: 1307, baseType: !1443, size: 256, offset: 9216)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !636, file: !188, line: 1309, baseType: !735, size: 256, offset: 9472)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !636, file: !188, line: 1314, baseType: !38, size: 32, offset: 9728)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !636, file: !188, line: 1317, baseType: !75, size: 32, align: 512, offset: 10240)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !636, file: !188, line: 1318, baseType: !113, size: 128, offset: 10304)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !636, file: !188, line: 1320, baseType: !75, size: 32, offset: 10432)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !636, file: !188, line: 1321, baseType: !113, size: 128, offset: 10496)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !630, file: !631, line: 73, baseType: !38, size: 32, offset: 128)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !630, file: !631, line: 74, baseType: !4014, size: 64, offset: 192)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !584, file: !521, line: 141, baseType: !4753, size: 64, offset: 704)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{!38, !3904, !1328}
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !584, file: !521, line: 142, baseType: !4757, size: 64, offset: 768)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{!519, !519, !4760}
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !520, file: !521, line: 96, baseType: !635, size: 64, offset: 832)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !520, file: !521, line: 97, baseType: !55, size: 64, offset: 896)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !520, file: !521, line: 98, baseType: !36, size: 64, offset: 960)
!4765 = !DIDerivedType(tag: DW_TAG_member, scope: !520, file: !521, line: 100, baseType: !4766, size: 128, offset: 1024)
!4766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !520, file: !521, line: 100, size: 128, elements: !4767)
!4767 = !{!4768, !4769}
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4766, file: !521, line: 101, baseType: !113, size: 128)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4766, file: !521, line: 102, baseType: !4770, size: 64)
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !520, file: !521, line: 104, baseType: !113, size: 128, offset: 1152)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !520, file: !521, line: 105, baseType: !113, size: 128, offset: 1280)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !520, file: !521, line: 113, baseType: !4774, size: 128, offset: 1408)
!4774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !520, file: !521, line: 109, size: 128, elements: !4775)
!4775 = !{!4776, !4777, !4778}
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4774, file: !521, line: 110, baseType: !791, size: 128)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4774, file: !521, line: 111, baseType: !535, size: 128)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4774, file: !521, line: 112, baseType: !713, size: 128, align: 64)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !513, file: !188, line: 1968, baseType: !4780, size: 64, offset: 64)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = !DISubroutineType(types: !4782)
!4782 = !{!32, !519, !484, !4783}
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4784, size: 64)
!4784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4785, line: 10, size: 128, elements: !4786)
!4785 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4786 = !{!4787, !4788}
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4784, file: !4785, line: 11, baseType: !4505, size: 64)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4784, file: !4785, line: 12, baseType: !36, size: 64, offset: 64)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !513, file: !188, line: 1969, baseType: !4790, size: 64, offset: 128)
!4790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4791, size: 64)
!4791 = !DISubroutineType(types: !4792)
!4792 = !{!38, !4014, !484, !38}
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !513, file: !188, line: 1970, baseType: !4794, size: 64, offset: 192)
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = !DISubroutineType(types: !4796)
!4796 = !{!507, !484, !38, !1328}
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !513, file: !188, line: 1972, baseType: !4798, size: 64, offset: 256)
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4799, size: 64)
!4799 = !DISubroutineType(types: !4800)
!4800 = !{!38, !519, !410, !38}
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !513, file: !188, line: 1974, baseType: !4802, size: 64, offset: 320)
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = !DISubroutineType(types: !4804)
!4804 = !{!38, !4014, !484, !519, !40, !1328}
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !513, file: !188, line: 1976, baseType: !4806, size: 64, offset: 384)
!4806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4807, size: 64)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{!38, !519, !484, !519}
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !513, file: !188, line: 1977, baseType: !4810, size: 64, offset: 448)
!4810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4811, size: 64)
!4811 = !DISubroutineType(types: !4812)
!4812 = !{!38, !484, !519}
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !513, file: !188, line: 1978, baseType: !4814, size: 64, offset: 512)
!4814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64)
!4815 = !DISubroutineType(types: !4816)
!4816 = !{!38, !4014, !484, !519, !32}
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !513, file: !188, line: 1980, baseType: !4818, size: 64, offset: 576)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{!38, !4014, !484, !519, !40}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !513, file: !188, line: 1982, baseType: !4810, size: 64, offset: 640)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !513, file: !188, line: 1983, baseType: !4823, size: 64, offset: 704)
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = !DISubroutineType(types: !4825)
!4825 = !{!38, !4014, !484, !519, !40, !640}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !513, file: !188, line: 1985, baseType: !4827, size: 64, offset: 768)
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4828 = !DISubroutineType(types: !4829)
!4829 = !{!38, !4014, !484, !519, !484, !519, !7}
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !513, file: !188, line: 1987, baseType: !4831, size: 64, offset: 832)
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4832 = !DISubroutineType(types: !4833)
!4833 = !{!38, !4014, !519, !4834}
!4834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4835, size: 64)
!4835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !188, line: 226, size: 640, elements: !4836)
!4836 = !{!4837, !4838, !4839, !4849, !4858, !4859, !4864, !4865, !4866}
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4835, file: !188, line: 227, baseType: !7, size: 32)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4835, file: !188, line: 228, baseType: !40, size: 16, offset: 32)
!4839 = !DIDerivedType(tag: DW_TAG_member, scope: !4835, file: !188, line: 241, baseType: !4840, size: 32, offset: 64)
!4840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4835, file: !188, line: 241, size: 32, elements: !4841)
!4841 = !{!4842, !4843}
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4840, file: !188, line: 242, baseType: !490, size: 32)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4840, file: !188, line: 243, baseType: !4844, size: 32)
!4844 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4845, line: 16, baseType: !4846)
!4845 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4846 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4845, line: 14, size: 32, elements: !4847)
!4847 = !{!4848}
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4846, file: !4845, line: 15, baseType: !495, size: 32)
!4849 = !DIDerivedType(tag: DW_TAG_member, scope: !4835, file: !188, line: 245, baseType: !4850, size: 32, offset: 96)
!4850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4835, file: !188, line: 245, size: 32, elements: !4851)
!4851 = !{!4852, !4853}
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4850, file: !188, line: 246, baseType: !499, size: 32)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4850, file: !188, line: 247, baseType: !4854, size: 32)
!4854 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4845, line: 20, baseType: !4855)
!4855 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4845, line: 18, size: 32, elements: !4856)
!4856 = !{!4857}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4855, file: !4845, line: 19, baseType: !503, size: 32)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4835, file: !188, line: 249, baseType: !57, size: 64, offset: 128)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4835, file: !188, line: 250, baseType: !4860, size: 128, offset: 192)
!4860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1355, line: 13, size: 128, elements: !4861)
!4861 = !{!4862, !4863}
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4860, file: !1355, line: 14, baseType: !1354, size: 64)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4860, file: !1355, line: 15, baseType: !445, size: 64, offset: 64)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4835, file: !188, line: 251, baseType: !4860, size: 128, offset: 320)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4835, file: !188, line: 252, baseType: !4860, size: 128, offset: 448)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4835, file: !188, line: 259, baseType: !700, size: 64, offset: 576)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !513, file: !188, line: 1988, baseType: !4868, size: 64, offset: 896)
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{!38, !4014, !3904, !4871, !553, !7}
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4873, line: 22, size: 1280, elements: !4874)
!4873 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4874 = !{!4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895}
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4872, file: !4873, line: 23, baseType: !553, size: 32)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4872, file: !4873, line: 24, baseType: !40, size: 16, offset: 32)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4872, file: !4873, line: 25, baseType: !7, size: 32, offset: 64)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4872, file: !4873, line: 26, baseType: !1362, size: 32, offset: 96)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4872, file: !4873, line: 27, baseType: !557, size: 64, offset: 128)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4872, file: !4873, line: 28, baseType: !557, size: 64, offset: 192)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4872, file: !4873, line: 41, baseType: !557, size: 64, offset: 256)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4872, file: !4873, line: 42, baseType: !640, size: 32, offset: 320)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4872, file: !4873, line: 43, baseType: !640, size: 32, offset: 352)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4872, file: !4873, line: 44, baseType: !490, size: 32, offset: 384)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4872, file: !4873, line: 45, baseType: !499, size: 32, offset: 416)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4872, file: !4873, line: 46, baseType: !57, size: 64, offset: 448)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4872, file: !4873, line: 47, baseType: !4860, size: 128, offset: 512)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4872, file: !4873, line: 48, baseType: !4860, size: 128, offset: 640)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4872, file: !4873, line: 49, baseType: !4860, size: 128, offset: 768)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4872, file: !4873, line: 50, baseType: !4860, size: 128, offset: 896)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4872, file: !4873, line: 51, baseType: !557, size: 64, offset: 1024)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4872, file: !4873, line: 52, baseType: !557, size: 64, offset: 1088)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4872, file: !4873, line: 53, baseType: !553, size: 32, offset: 1152)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4872, file: !4873, line: 54, baseType: !553, size: 32, offset: 1184)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4872, file: !4873, line: 55, baseType: !557, size: 64, offset: 1216)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !513, file: !188, line: 1990, baseType: !4897, size: 64, offset: 960)
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4898, size: 64)
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!442, !519, !410, !51}
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !513, file: !188, line: 1991, baseType: !4901, size: 64, offset: 1024)
!4901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4902, size: 64)
!4902 = !DISubroutineType(types: !4903)
!4903 = !{!38, !484, !4904, !557, !557}
!4904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4905, size: 64)
!4905 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !188, line: 55, flags: DIFlagFwdDecl)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !513, file: !188, line: 1993, baseType: !4907, size: 64, offset: 1088)
!4907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4908, size: 64)
!4908 = !DISubroutineType(types: !4909)
!4909 = !{!38, !484, !38}
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !513, file: !188, line: 1994, baseType: !4911, size: 64, offset: 1152)
!4911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4912, size: 64)
!4912 = !DISubroutineType(types: !4913)
!4913 = !{!38, !484, !519, !700, !7, !40}
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !513, file: !188, line: 1997, baseType: !4915, size: 64, offset: 1216)
!4915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4916, size: 64)
!4916 = !DISubroutineType(types: !4917)
!4917 = !{!38, !4014, !484, !700, !40}
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !513, file: !188, line: 1999, baseType: !4919, size: 64, offset: 1280)
!4919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4920, size: 64)
!4920 = !DISubroutineType(types: !4921)
!4921 = !{!507, !4014, !519, !38}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !513, file: !188, line: 2001, baseType: !4923, size: 64, offset: 1344)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = !DISubroutineType(types: !4925)
!4925 = !{!38, !4014, !519, !507, !38}
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !513, file: !188, line: 2003, baseType: !4927, size: 64, offset: 1408)
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4928, size: 64)
!4928 = !DISubroutineType(types: !4929)
!4929 = !{!38, !4014, !519, !4930}
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !188, line: 76, flags: DIFlagFwdDecl)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !513, file: !188, line: 2005, baseType: !4933, size: 64, offset: 1472)
!4933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4934, size: 64)
!4934 = !DISubroutineType(types: !4935)
!4935 = !{!38, !519, !4930}
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !513, file: !188, line: 2006, baseType: !4937, size: 64, offset: 1536)
!4937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4938, size: 64)
!4938 = !DISubroutineType(types: !4939)
!4939 = !{!4940, !484}
!4940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4941, size: 64)
!4941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !188, line: 3192, size: 192, elements: !4942)
!4942 = !{!4943, !4944}
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4941, file: !188, line: 3193, baseType: !816, size: 128)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4941, file: !188, line: 3194, baseType: !553, size: 32, offset: 128)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !485, file: !188, line: 655, baseType: !635, size: 64, offset: 448)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !485, file: !188, line: 656, baseType: !480, size: 64, offset: 512)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !485, file: !188, line: 659, baseType: !36, size: 64, offset: 576)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !485, file: !188, line: 663, baseType: !55, size: 64, offset: 640)
!4949 = !DIDerivedType(tag: DW_TAG_member, scope: !485, file: !188, line: 671, baseType: !4950, size: 32, offset: 704)
!4950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !485, file: !188, line: 671, size: 32, elements: !4951)
!4951 = !{!4952, !4954}
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4950, file: !188, line: 672, baseType: !4953, size: 32)
!4953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4950, file: !188, line: 673, baseType: !7, size: 32)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !485, file: !188, line: 675, baseType: !640, size: 32, offset: 736)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !485, file: !188, line: 676, baseType: !57, size: 64, offset: 768)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !485, file: !188, line: 677, baseType: !4860, size: 128, offset: 832)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !485, file: !188, line: 678, baseType: !4860, size: 128, offset: 960)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !485, file: !188, line: 679, baseType: !4860, size: 128, offset: 1088)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !485, file: !188, line: 680, baseType: !75, size: 32, offset: 1216)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !485, file: !188, line: 681, baseType: !42, size: 16, offset: 1248)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !485, file: !188, line: 682, baseType: !99, size: 8, offset: 1264)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !485, file: !188, line: 683, baseType: !99, size: 8, offset: 1272)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !485, file: !188, line: 684, baseType: !3977, size: 64, offset: 1280)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !485, file: !188, line: 691, baseType: !55, size: 64, offset: 1344)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !485, file: !188, line: 692, baseType: !1178, size: 320, offset: 1408)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !485, file: !188, line: 694, baseType: !55, size: 64, offset: 1728)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !485, file: !188, line: 695, baseType: !55, size: 64, offset: 1792)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !485, file: !188, line: 697, baseType: !791, size: 128, offset: 1856)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !485, file: !188, line: 698, baseType: !113, size: 128, offset: 1984)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !485, file: !188, line: 707, baseType: !113, size: 128, offset: 2112)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !485, file: !188, line: 708, baseType: !113, size: 128, offset: 2240)
!4973 = !DIDerivedType(tag: DW_TAG_member, scope: !485, file: !188, line: 709, baseType: !4974, size: 128, offset: 2368)
!4974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !485, file: !188, line: 709, size: 128, elements: !4975)
!4975 = !{!4976, !4977}
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4974, file: !188, line: 710, baseType: !787, size: 64)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4974, file: !188, line: 711, baseType: !713, size: 128, align: 64)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !485, file: !188, line: 713, baseType: !728, size: 64, offset: 2496)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !485, file: !188, line: 714, baseType: !728, size: 64, offset: 2560)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !485, file: !188, line: 715, baseType: !65, size: 32, offset: 2624)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !485, file: !188, line: 716, baseType: !65, size: 32, offset: 2656)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !485, file: !188, line: 717, baseType: !65, size: 32, offset: 2688)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !485, file: !188, line: 719, baseType: !65, size: 32, offset: 2720)
!4984 = !DIDerivedType(tag: DW_TAG_member, scope: !485, file: !188, line: 721, baseType: !4985, size: 64, offset: 2752)
!4985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !485, file: !188, line: 721, size: 64, elements: !4986)
!4986 = !{!4987, !4988}
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4985, file: !188, line: 722, baseType: !3364, size: 64)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4985, file: !188, line: 723, baseType: !3713, size: 64)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !485, file: !188, line: 725, baseType: !4990, size: 64, offset: 2816)
!4990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4991, size: 64)
!4991 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !188, line: 725, flags: DIFlagFwdDecl)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !485, file: !188, line: 726, baseType: !481, size: 1536, align: 64, offset: 2880)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !485, file: !188, line: 727, baseType: !113, size: 128, offset: 4416)
!4994 = !DIDerivedType(tag: DW_TAG_member, scope: !485, file: !188, line: 728, baseType: !4995, size: 64, offset: 4544)
!4995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !485, file: !188, line: 728, size: 64, elements: !4996)
!4996 = !{!4997, !4998, !5001, !5002}
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4995, file: !188, line: 729, baseType: !2978, size: 64)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4995, file: !188, line: 730, baseType: !4999, size: 64)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !188, line: 730, flags: DIFlagFwdDecl)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4995, file: !188, line: 731, baseType: !410, size: 64)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4995, file: !188, line: 732, baseType: !7, size: 32)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !485, file: !188, line: 735, baseType: !554, size: 32, offset: 4608)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !485, file: !188, line: 738, baseType: !554, size: 32, offset: 4640)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !485, file: !188, line: 739, baseType: !4689, size: 64, offset: 4672)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !485, file: !188, line: 750, baseType: !36, size: 64, offset: 4736)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !481, file: !188, line: 474, baseType: !816, size: 128, offset: 64)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !481, file: !188, line: 475, baseType: !1178, size: 320, offset: 192)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !481, file: !188, line: 476, baseType: !821, size: 32, offset: 512)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !481, file: !188, line: 477, baseType: !65, size: 32, offset: 544)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !481, file: !188, line: 482, baseType: !1006, size: 128, offset: 576)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !481, file: !188, line: 483, baseType: !55, size: 64, offset: 704)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !481, file: !188, line: 484, baseType: !55, size: 64, offset: 768)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !481, file: !188, line: 485, baseType: !5015, size: 64, offset: 832)
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5016, size: 64)
!5016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5017)
!5017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !188, line: 404, size: 1280, elements: !5018)
!5018 = !{!5019, !5023, !5027, !5031, !5035, !5051, !5055, !5059, !5063, !5067, !5071, !5075, !5076, !5080, !5084, !5088, !5093, !5097, !5150, !5151}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5017, file: !188, line: 405, baseType: !5020, size: 64)
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5021, size: 64)
!5021 = !DISubroutineType(types: !5022)
!5022 = !{!38, !2078, !3725}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5017, file: !188, line: 406, baseType: !5024, size: 64, offset: 64)
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5025 = !DISubroutineType(types: !5026)
!5026 = !{!38, !700, !3406}
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5017, file: !188, line: 409, baseType: !5028, size: 64, offset: 128)
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5029, size: 64)
!5029 = !DISubroutineType(types: !5030)
!5030 = !{!38, !480, !3725}
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5017, file: !188, line: 412, baseType: !5032, size: 64, offset: 192)
!5032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5033, size: 64)
!5033 = !DISubroutineType(types: !5034)
!5034 = !{!1328, !480, !3406}
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5017, file: !188, line: 414, baseType: !5036, size: 64, offset: 256)
!5036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5037, size: 64)
!5037 = !DISubroutineType(types: !5038)
!5038 = !{null, !5039}
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !3403, line: 1276, size: 448, elements: !5041)
!5041 = !{!5042, !5043, !5044, !5046, !5047, !5048, !5049, !5050}
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5040, file: !3403, line: 1277, baseType: !700, size: 64)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5040, file: !3403, line: 1278, baseType: !480, size: 64, offset: 64)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !5040, file: !3403, line: 1279, baseType: !5045, size: 64, offset: 128)
!5045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !5040, file: !3403, line: 1281, baseType: !55, size: 64, offset: 192)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !5040, file: !3403, line: 1282, baseType: !7, size: 32, offset: 256)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !5040, file: !3403, line: 1283, baseType: !7, size: 32, offset: 288)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !5040, file: !3403, line: 1284, baseType: !1328, size: 8, offset: 320)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !5040, file: !3403, line: 1285, baseType: !55, size: 64, offset: 384)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5017, file: !188, line: 416, baseType: !5052, size: 64, offset: 320)
!5052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5053, size: 64)
!5053 = !DISubroutineType(types: !5054)
!5054 = !{!38, !700, !480, !57, !7, !3087, !3573}
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5017, file: !188, line: 419, baseType: !5056, size: 64, offset: 384)
!5056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5057, size: 64)
!5057 = !DISubroutineType(types: !5058)
!5058 = !{!38, !700, !480, !57, !7, !7, !2078, !36}
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5017, file: !188, line: 424, baseType: !5060, size: 64, offset: 448)
!5060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5061, size: 64)
!5061 = !DISubroutineType(types: !5062)
!5062 = !{!4027, !480, !4027}
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5017, file: !188, line: 425, baseType: !5064, size: 64, offset: 512)
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5065, size: 64)
!5065 = !DISubroutineType(types: !5066)
!5066 = !{null, !3406, !51, !51}
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5017, file: !188, line: 426, baseType: !5068, size: 64, offset: 576)
!5068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5069, size: 64)
!5069 = !DISubroutineType(types: !5070)
!5070 = !{!1328, !3406, !821}
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5017, file: !188, line: 427, baseType: !5072, size: 64, offset: 640)
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5073 = !DISubroutineType(types: !5074)
!5074 = !{null, !3406}
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5017, file: !188, line: 428, baseType: !3382, size: 64, offset: 704)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5017, file: !188, line: 433, baseType: !5077, size: 64, offset: 768)
!5077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5078, size: 64)
!5078 = !DISubroutineType(types: !5079)
!5079 = !{!38, !480, !3406, !3406, !269}
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5017, file: !188, line: 435, baseType: !5081, size: 64, offset: 832)
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = !DISubroutineType(types: !5083)
!5083 = !{!38, !3406}
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5017, file: !188, line: 436, baseType: !5085, size: 64, offset: 896)
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5086, size: 64)
!5086 = !DISubroutineType(types: !5087)
!5087 = !{!1328, !3406, !51, !51}
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5017, file: !188, line: 438, baseType: !5089, size: 64, offset: 960)
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5090, size: 64)
!5090 = !DISubroutineType(types: !5091)
!5091 = !{null, !3406, !5092, !5092}
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5017, file: !188, line: 439, baseType: !5094, size: 64, offset: 1024)
!5094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5095, size: 64)
!5095 = !DISubroutineType(types: !5096)
!5096 = !{!38, !480, !2078}
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5017, file: !188, line: 442, baseType: !5098, size: 64, offset: 1088)
!5098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5099, size: 64)
!5099 = !DISubroutineType(types: !5100)
!5100 = !{!38, !5101, !700, !5149}
!5101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5102, size: 64)
!5102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !2814, line: 282, size: 2176, elements: !5103)
!5103 = !{!5104, !5105, !5106, !5107, !5108, !5110, !5111, !5113, !5120, !5125, !5126, !5127, !5128, !5129, !5130, !5131, !5132, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5145, !5146, !5147}
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !5102, file: !2814, line: 283, baseType: !2142, size: 128)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5102, file: !2814, line: 284, baseType: !55, size: 64, offset: 128)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !5102, file: !2814, line: 285, baseType: !1276, size: 16, offset: 192)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5102, file: !2814, line: 286, baseType: !1115, size: 320, offset: 256)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5102, file: !2814, line: 287, baseType: !5109, size: 8, offset: 576)
!5109 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5102, file: !2814, line: 288, baseType: !7, size: 32, offset: 608)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !5102, file: !2814, line: 289, baseType: !5112, size: 64, offset: 640)
!5112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !5102, file: !2814, line: 290, baseType: !5114, size: 64, offset: 704)
!5114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5115, size: 64)
!5115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !2814, line: 250, size: 64, elements: !5116)
!5116 = !{!5117, !5118, !5119}
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5115, file: !2814, line: 251, baseType: !75, size: 32)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5115, file: !2814, line: 257, baseType: !7, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5115, file: !2814, line: 258, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !5102, file: !2814, line: 291, baseType: !5121, size: 128, offset: 768)
!5121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !2814, line: 274, size: 128, elements: !5122)
!5122 = !{!5123, !5124}
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5121, file: !2814, line: 275, baseType: !5115, size: 64)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5121, file: !2814, line: 276, baseType: !5115, size: 64, offset: 64)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !5102, file: !2814, line: 292, baseType: !7, size: 32, offset: 896)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !5102, file: !2814, line: 293, baseType: !7, size: 32, offset: 928)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5102, file: !2814, line: 294, baseType: !7, size: 32, offset: 960)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !5102, file: !2814, line: 295, baseType: !7, size: 32, offset: 992)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !5102, file: !2814, line: 296, baseType: !7, size: 32, offset: 1024)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !5102, file: !2814, line: 297, baseType: !7, size: 32, offset: 1056)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !5102, file: !2814, line: 298, baseType: !4675, size: 64, offset: 1088)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !5102, file: !2814, line: 299, baseType: !5133, size: 64, offset: 1152)
!5133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5134, size: 64)
!5134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !2814, line: 269, size: 96, elements: !5135)
!5135 = !{!5136, !5137}
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5134, file: !2814, line: 270, baseType: !5115, size: 64)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5134, file: !2814, line: 271, baseType: !7, size: 32, offset: 64)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !5102, file: !2814, line: 300, baseType: !1009, size: 64, offset: 1216)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !5102, file: !2814, line: 301, baseType: !4022, size: 64, offset: 1280)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !5102, file: !2814, line: 302, baseType: !700, size: 64, offset: 1344)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !5102, file: !2814, line: 303, baseType: !7, size: 32, offset: 1408)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !5102, file: !2814, line: 304, baseType: !1482, size: 256, offset: 1472)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5102, file: !2814, line: 305, baseType: !75, size: 32, offset: 1728)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !5102, file: !2814, line: 318, baseType: !75, size: 32, offset: 1760)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !5102, file: !2814, line: 322, baseType: !1443, size: 256, offset: 1792)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !5102, file: !2814, line: 323, baseType: !5121, size: 128, offset: 2048)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !5102, file: !2814, line: 324, baseType: !5148, offset: 2176)
!5148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1115, elements: !697)
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5017, file: !188, line: 444, baseType: !3565, size: 64, offset: 1152)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5017, file: !188, line: 445, baseType: !5152, size: 64, offset: 1216)
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5153, size: 64)
!5153 = !DISubroutineType(types: !5154)
!5154 = !{!38, !3385, !3490}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !481, file: !188, line: 486, baseType: !55, size: 64, offset: 896)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !481, file: !188, line: 487, baseType: !1178, size: 320, offset: 960)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !481, file: !188, line: 488, baseType: !3608, size: 32, offset: 1280)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !481, file: !188, line: 489, baseType: !75, size: 32, offset: 1312)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !481, file: !188, line: 490, baseType: !113, size: 128, offset: 1344)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !481, file: !188, line: 491, baseType: !36, size: 64, offset: 1472)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !471, file: !436, line: 180, baseType: !5162, size: 64, offset: 320)
!5162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5163, size: 64)
!5163 = !DISubroutineType(types: !5164)
!5164 = !{!442, !700, !375, !470, !410, !57, !51}
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !471, file: !436, line: 182, baseType: !5162, size: 64, offset: 384)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !471, file: !436, line: 184, baseType: !5167, size: 64, offset: 448)
!5167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5168, size: 64)
!5168 = !DISubroutineType(types: !5169)
!5169 = !{!38, !700, !375, !470, !1954}
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !459, file: !436, line: 90, baseType: !5171, size: 64, offset: 192)
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !459, file: !436, line: 91, baseType: !5173, size: 64, offset: 256)
!5173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !426, file: !370, line: 120, baseType: !5175, size: 64, offset: 192)
!5175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5176, size: 64)
!5176 = !DISubroutineType(types: !5177)
!5177 = !{!4481, !393}
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !426, file: !370, line: 121, baseType: !5179, size: 64, offset: 256)
!5179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5180, size: 64)
!5180 = !DISubroutineType(types: !5181)
!5181 = !{!1257, !393}
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !426, file: !370, line: 122, baseType: !5183, size: 64, offset: 320)
!5183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5184, size: 64)
!5184 = !DISubroutineType(types: !5185)
!5185 = !{null, !393, !1507, !1508}
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !369, file: !370, line: 70, baseType: !1852, size: 64, offset: 384)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !369, file: !370, line: 71, baseType: !4553, size: 32, offset: 448)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !369, file: !370, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !369, file: !370, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !369, file: !370, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !369, file: !370, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !369, file: !370, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !366, file: !6, line: 47, baseType: !356, size: 64, offset: 512)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !366, file: !6, line: 48, baseType: !375, size: 64, offset: 576)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !366, file: !6, line: 49, baseType: !5196, size: 64, offset: 640)
!5196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5197, size: 64)
!5197 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !366, file: !6, line: 50, baseType: !1481, size: 64, offset: 704)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !357, file: !6, line: 418, baseType: !5200, size: 64, offset: 1408)
!5200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5201, size: 64)
!5201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !5202)
!5202 = !{!5203, !5204, !5209, !5213, !5217, !5221}
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5201, file: !6, line: 54, baseType: !447, size: 128)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5201, file: !6, line: 55, baseType: !5205, size: 64, offset: 128)
!5205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5206, size: 64)
!5206 = !DISubroutineType(types: !5207)
!5207 = !{!442, !5200, !5208, !410}
!5208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5201, file: !6, line: 57, baseType: !5210, size: 64, offset: 192)
!5210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5211, size: 64)
!5211 = !DISubroutineType(types: !5212)
!5212 = !{!442, !5200, !5208, !32, !51}
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !5201, file: !6, line: 59, baseType: !5214, size: 64, offset: 256)
!5214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5215, size: 64)
!5215 = !DISubroutineType(types: !5216)
!5216 = !{null, !356, !32}
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !5201, file: !6, line: 60, baseType: !5218, size: 64, offset: 320)
!5218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5219, size: 64)
!5219 = !DISubroutineType(types: !5220)
!5220 = !{!38, !356}
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5201, file: !6, line: 61, baseType: !5222, size: 64, offset: 384)
!5222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5223, size: 64)
!5223 = !DISubroutineType(types: !5224)
!5224 = !{null, !356}
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !357, file: !6, line: 419, baseType: !32, size: 64, offset: 1472)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !357, file: !6, line: 420, baseType: !32, size: 64, offset: 1536)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !357, file: !6, line: 421, baseType: !375, size: 64, offset: 1600)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !357, file: !6, line: 424, baseType: !5229, size: 64, offset: 1664)
!5229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5230, size: 64)
!5230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5231)
!5231 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !357, file: !6, line: 425, baseType: !5233, size: 64, offset: 1728)
!5233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5234, size: 64)
!5234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1224)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !357, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !357, file: !6, line: 435, baseType: !735, size: 256, offset: 1856)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !357, file: !6, line: 437, baseType: !5238, size: 64, offset: 2112)
!5238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5239, size: 64)
!5239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !5240, line: 69, size: 320, elements: !5241)
!5240 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!5241 = !{!5242, !5243, !5244, !5261, !5263, !5266, !5267}
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5239, file: !5240, line: 70, baseType: !32, size: 64)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5239, file: !5240, line: 71, baseType: !356, size: 64, offset: 64)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5239, file: !5240, line: 72, baseType: !5245, size: 64, offset: 128)
!5245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5246, size: 64)
!5246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5247)
!5247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !5240, line: 47, size: 256, elements: !5248)
!5248 = !{!5249, !5250, !5256, !5260}
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5247, file: !5240, line: 49, baseType: !7, size: 32)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !5247, file: !5240, line: 51, baseType: !5251, size: 64, offset: 64)
!5251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5252, size: 64)
!5252 = !DISubroutineType(types: !5253)
!5253 = !{!38, !32, !5254}
!5254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5255, size: 64)
!5255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5239)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !5247, file: !5240, line: 53, baseType: !5257, size: 64, offset: 128)
!5257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5258, size: 64)
!5258 = !DISubroutineType(types: !5259)
!5259 = !{!38, !410, !5254}
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5247, file: !5240, line: 55, baseType: !4505, size: 64, offset: 192)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5239, file: !5240, line: 73, baseType: !5262, size: 16, offset: 192)
!5262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5239, file: !5240, line: 74, baseType: !5264, size: 8, offset: 208)
!5264 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !100, line: 16, baseType: !5265)
!5265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !102, line: 20, baseType: !5109)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5239, file: !5240, line: 75, baseType: !99, size: 8, offset: 216)
!5267 = !DIDerivedType(tag: DW_TAG_member, scope: !5239, file: !5240, line: 76, baseType: !5268, size: 64, offset: 256)
!5268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5239, file: !5240, line: 76, size: 64, elements: !5269)
!5269 = !{!5270, !5271, !5278}
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5268, file: !5240, line: 77, baseType: !36, size: 64)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !5268, file: !5240, line: 78, baseType: !5272, size: 64)
!5272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5273, size: 64)
!5273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5274)
!5274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !5240, line: 86, size: 128, elements: !5275)
!5275 = !{!5276, !5277}
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !5274, file: !5240, line: 87, baseType: !7, size: 32)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5274, file: !5240, line: 88, baseType: !410, size: 64, offset: 64)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !5268, file: !5240, line: 79, baseType: !5279, size: 64)
!5279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5280, size: 64)
!5280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5281)
!5281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !5240, line: 92, size: 256, elements: !5282)
!5282 = !{!5283, !5284, !5285, !5286, !5287}
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5281, file: !5240, line: 94, baseType: !7, size: 32)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !5281, file: !5240, line: 95, baseType: !7, size: 32, offset: 32)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !5281, file: !5240, line: 96, baseType: !4675, size: 64, offset: 64)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5281, file: !5240, line: 97, baseType: !5245, size: 64, offset: 128)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !5281, file: !5240, line: 98, baseType: !36, size: 64, offset: 192)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !357, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !357, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !357, file: !6, line: 442, baseType: !5229, size: 64, offset: 2240)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !357, file: !6, line: 443, baseType: !5233, size: 64, offset: 2304)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !357, file: !6, line: 444, baseType: !1328, size: 8, offset: 2368)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !357, file: !6, line: 451, baseType: !1328, size: 8, offset: 2376)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !357, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !357, file: !6, line: 455, baseType: !5296, size: 64, offset: 2432)
!5296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5297, size: 64)
!5297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !5298, line: 23, size: 96, elements: !5299)
!5298 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!5299 = !{!5300, !5301, !5302}
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5297, file: !5298, line: 24, baseType: !38, size: 32)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !5297, file: !5298, line: 24, baseType: !38, size: 32, offset: 32)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5297, file: !5298, line: 24, baseType: !38, size: 32, offset: 64)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !357, file: !6, line: 458, baseType: !5304, size: 64, offset: 2496)
!5304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5305, size: 64)
!5305 = !DISubroutineType(types: !5306)
!5306 = !{!38}
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !357, file: !6, line: 460, baseType: !5308, size: 4032, align: 512, offset: 2560)
!5308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5309, size: 4032, elements: !5323)
!5309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !5310)
!5310 = !{!5311, !5312, !5313}
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5309, file: !6, line: 363, baseType: !36, size: 64)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5309, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !5309, file: !6, line: 367, baseType: !5314, size: 448, offset: 128)
!5314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !5315)
!5315 = !{!5316, !5317}
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5314, file: !6, line: 320, baseType: !356, size: 64)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5314, file: !6, line: 321, baseType: !5318, size: 384, offset: 64)
!5318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !5319, line: 40, size: 384, elements: !5320)
!5319 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!5320 = !{!5321}
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5318, file: !5319, line: 41, baseType: !5322, size: 384, align: 64)
!5322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !877, size: 384, align: 64, elements: !2585)
!5323 = !{!5324}
!5324 = !DISubrange(count: 7)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !357, file: !6, line: 463, baseType: !5326, size: 192, offset: 6592)
!5326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !5327, line: 8, size: 192, elements: !5328)
!5327 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!5328 = !{!5329, !5330, !5331}
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !5326, file: !5327, line: 10, baseType: !7, size: 32)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !5326, file: !5327, line: 11, baseType: !1657, size: 64, offset: 64)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !5326, file: !5327, line: 12, baseType: !5332, size: 64, offset: 128)
!5332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5333, size: 64)
!5333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !5334, line: 59, size: 48, elements: !5335)
!5334 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!5335 = !{!5336, !5337, !5338, !5339, !5340, !5341}
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !5333, file: !5334, line: 60, baseType: !1274, size: 16)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !5333, file: !5334, line: 61, baseType: !1274, size: 16, offset: 16)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !5333, file: !5334, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !5333, file: !5334, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5333, file: !5334, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5333, file: !5334, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !357, file: !6, line: 465, baseType: !55, size: 64, offset: 6784)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !357, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !357, file: !6, line: 470, baseType: !113, size: 128, offset: 6912)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !357, file: !6, line: 471, baseType: !5346, size: 64, offset: 7040)
!5346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5347, size: 64)
!5347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !5348, line: 33, size: 96, elements: !5349)
!5348 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!5349 = !{!5350, !5351, !5352, !5353}
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !5347, file: !5348, line: 37, baseType: !38, size: 32)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !5347, file: !5348, line: 43, baseType: !38, size: 32, offset: 32)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !5347, file: !5348, line: 45, baseType: !42, size: 16, offset: 64)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5347, file: !5348, line: 47, baseType: !42, size: 16, offset: 80)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !357, file: !6, line: 476, baseType: !5355, size: 64, offset: 7104)
!5355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5356, size: 64)
!5356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !5357)
!5357 = !{!5358, !5374, !5375, !5376}
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !5356, file: !6, line: 379, baseType: !5359, size: 64)
!5359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5360, size: 64)
!5360 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !5361, line: 204, baseType: !5362)
!5361 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!5362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !5361, line: 197, size: 192, elements: !5363)
!5363 = !{!5364, !5366, !5367, !5368, !5370, !5372}
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !5362, file: !5361, line: 198, baseType: !5365, size: 32)
!5365 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !5361, line: 21, baseType: !554)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !5362, file: !5361, line: 199, baseType: !103, size: 8, offset: 32)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !5362, file: !5361, line: 200, baseType: !103, size: 8, offset: 40)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !5362, file: !5361, line: 201, baseType: !5369, size: 16, offset: 48)
!5369 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !5361, line: 17, baseType: !110)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !5362, file: !5361, line: 202, baseType: !5371, size: 64, offset: 64)
!5371 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !5361, line: 16, baseType: !558)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5362, file: !5361, line: 203, baseType: !5373, size: 64, offset: 128)
!5373 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !5361, line: 22, baseType: !558)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !5356, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !5356, file: !6, line: 381, baseType: !410, size: 64, offset: 128)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !5356, file: !6, line: 382, baseType: !410, size: 64, offset: 192)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !357, file: !6, line: 477, baseType: !5356, size: 256, offset: 7168)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !357, file: !6, line: 480, baseType: !5379, size: 64, offset: 7424)
!5379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5380, size: 64)
!5380 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !357, file: !6, line: 483, baseType: !5382, size: 64, offset: 7488)
!5382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5383, size: 64)
!5383 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !357, file: !6, line: 488, baseType: !410, size: 64, offset: 7552)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !357, file: !6, line: 492, baseType: !36, size: 64, offset: 7616)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !357, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !357, file: !6, line: 495, baseType: !36, size: 64, offset: 7744)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !357, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !357, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !357, file: !6, line: 500, baseType: !5391, size: 64, offset: 7872)
!5391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5392, size: 64)
!5392 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !5393, line: 45, baseType: !5394)
!5393 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!5394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !357, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !357, file: !6, line: 504, baseType: !5397, size: 64, offset: 8000)
!5397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5398, size: 64)
!5398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5399, size: 64)
!5399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !5400, line: 96, size: 192, elements: !5401)
!5400 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!5401 = !{!5402, !5403, !5445, !5447}
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !5399, file: !5400, line: 97, baseType: !7, size: 32)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !5399, file: !5400, line: 98, baseType: !5404, size: 64, offset: 64)
!5404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5405, size: 64)
!5405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !5400, line: 24, size: 3072, elements: !5406)
!5406 = !{!5407, !5409, !5410, !5411, !5412, !5425, !5426, !5427, !5428, !5429, !5430, !5431, !5442, !5443, !5444}
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !5405, file: !5400, line: 26, baseType: !5408, size: 128)
!5408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 128, elements: !2585)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !5405, file: !5400, line: 27, baseType: !5408, size: 128, offset: 128)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !5405, file: !5400, line: 28, baseType: !38, size: 32, offset: 256)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5405, file: !5400, line: 31, baseType: !75, size: 32, align: 512, offset: 512)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !5405, file: !5400, line: 32, baseType: !5413, size: 960, offset: 576)
!5413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !5414, line: 206, size: 960, elements: !5415)
!5414 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!5415 = !{!5416, !5417, !5420, !5422, !5423, !5424}
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5413, file: !5414, line: 207, baseType: !716, size: 64)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !5413, file: !5414, line: 208, baseType: !5418, size: 256, offset: 64)
!5418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5419, size: 256, elements: !796)
!5419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !5413, file: !5414, line: 209, baseType: !5421, size: 256, offset: 320)
!5421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 256, elements: !796)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5413, file: !5414, line: 213, baseType: !445, size: 64, offset: 576)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !5413, file: !5414, line: 215, baseType: !1542, size: 256, offset: 640)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5413, file: !5414, line: 216, baseType: !99, size: 8, offset: 896)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5405, file: !5400, line: 33, baseType: !55, size: 64, offset: 1536)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5405, file: !5400, line: 34, baseType: !55, size: 64, offset: 1600)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !5405, file: !5400, line: 35, baseType: !1328, size: 8, offset: 1664)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !5405, file: !5400, line: 36, baseType: !2293, size: 320, offset: 1728)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5405, file: !5400, line: 37, baseType: !1443, size: 256, offset: 2048)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !5405, file: !5400, line: 38, baseType: !713, size: 128, align: 64, offset: 2304)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !5405, file: !5400, line: 39, baseType: !5432, size: 64, offset: 2432)
!5432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5433, size: 64)
!5433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !5400, line: 49, size: 768, elements: !5434)
!5434 = !{!5435, !5436, !5437, !5438, !5439, !5440, !5441}
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5433, file: !5400, line: 50, baseType: !75, size: 32)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !5433, file: !5400, line: 51, baseType: !5421, size: 256, offset: 64)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !5433, file: !5400, line: 53, baseType: !5421, size: 256, offset: 320)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5433, file: !5400, line: 54, baseType: !55, size: 64, offset: 576)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !5433, file: !5400, line: 55, baseType: !5432, size: 64, offset: 640)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !5433, file: !5400, line: 56, baseType: !38, size: 32, offset: 704)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !5433, file: !5400, line: 57, baseType: !38, size: 32, offset: 736)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !5405, file: !5400, line: 40, baseType: !55, size: 64, offset: 2496)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5405, file: !5400, line: 42, baseType: !38, size: 32, offset: 2560)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !5405, file: !5400, line: 43, baseType: !5398, size: 64, offset: 2624)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !5399, file: !5400, line: 99, baseType: !5446, offset: 128)
!5446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !3694, line: 211, elements: !1144)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !5399, file: !5400, line: 100, baseType: !5448, size: 64, offset: 128)
!5448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5449, size: 64)
!5449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !5400, line: 63, size: 3008, elements: !5450)
!5450 = !{!5451, !5452, !5454, !5455, !5456, !5457, !5458, !5459, !5460, !5461, !5462, !5463, !5464, !5465, !5466, !5467, !5468, !5469, !5470, !5471, !5472, !5473, !5474}
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5449, file: !5400, line: 64, baseType: !5432, size: 64)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5449, file: !5400, line: 65, baseType: !5453, size: 192, offset: 64)
!5453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5432, size: 192, elements: !411)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !5449, file: !5400, line: 67, baseType: !38, size: 32, offset: 256)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !5449, file: !5400, line: 68, baseType: !735, size: 256, offset: 320)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5449, file: !5400, line: 69, baseType: !75, size: 32, offset: 576)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !5449, file: !5400, line: 70, baseType: !735, size: 256, offset: 640)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !5449, file: !5400, line: 71, baseType: !55, size: 64, offset: 896)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5449, file: !5400, line: 72, baseType: !55, size: 64, offset: 960)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5449, file: !5400, line: 73, baseType: !55, size: 64, offset: 1024)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !5449, file: !5400, line: 74, baseType: !55, size: 64, offset: 1088)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !5449, file: !5400, line: 75, baseType: !55, size: 64, offset: 1152)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !5449, file: !5400, line: 76, baseType: !55, size: 64, offset: 1216)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !5449, file: !5400, line: 77, baseType: !55, size: 64, offset: 1280)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !5449, file: !5400, line: 78, baseType: !55, size: 64, offset: 1344)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !5449, file: !5400, line: 79, baseType: !1328, size: 8, offset: 1408)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !5449, file: !5400, line: 80, baseType: !55, size: 64, offset: 1472)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !5449, file: !5400, line: 81, baseType: !735, size: 256, offset: 1536)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !5449, file: !5400, line: 82, baseType: !1482, size: 256, offset: 1792)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !5449, file: !5400, line: 84, baseType: !65, size: 32, offset: 2048)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !5449, file: !5400, line: 87, baseType: !55, size: 64, offset: 2112)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !5449, file: !5400, line: 88, baseType: !55, size: 64, offset: 2176)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5449, file: !5400, line: 89, baseType: !4595, size: 704, offset: 2240)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !5449, file: !5400, line: 90, baseType: !5398, size: 64, offset: 2944)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !357, file: !6, line: 515, baseType: !5476, size: 64, offset: 8064)
!5476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5477, size: 64)
!5477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !5478, line: 117, size: 128, elements: !5479)
!5478 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!5479 = !{!5480, !5481, !5482}
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !5477, file: !5478, line: 118, baseType: !1224, size: 32)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !5477, file: !5478, line: 119, baseType: !1224, size: 32, offset: 32)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5477, file: !5478, line: 120, baseType: !445, size: 64, offset: 64)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !357, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !357, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !357, file: !6, line: 520, baseType: !4397, size: 64, offset: 8192)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !357, file: !6, line: 523, baseType: !5487, size: 64, offset: 8256)
!5487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5488, size: 64)
!5488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5489, size: 64)
!5489 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !357, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !357, file: !6, line: 525, baseType: !5492, size: 64, offset: 8384)
!5492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5493, size: 64)
!5493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5494, size: 64)
!5494 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !357, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !357, file: !6, line: 533, baseType: !36, size: 64, offset: 8512)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !357, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !357, file: !6, line: 535, baseType: !5499, size: 64, offset: 8640)
!5499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !357, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !357, file: !6, line: 539, baseType: !38, size: 32, offset: 8736)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !357, file: !6, line: 540, baseType: !5503, size: 64, offset: 8768)
!5503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5504, size: 64)
!5504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !5505, line: 32, size: 64, elements: !5506)
!5505 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!5506 = !{!5507, !5508}
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5504, file: !5505, line: 33, baseType: !1224, size: 32)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5504, file: !5505, line: 34, baseType: !1224, size: 32, offset: 32)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !357, file: !6, line: 563, baseType: !113, size: 128, offset: 8832)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !357, file: !6, line: 565, baseType: !113, size: 128, offset: 8960)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !357, file: !6, line: 568, baseType: !2427, size: 64, offset: 9088)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !357, file: !6, line: 570, baseType: !65, size: 32, offset: 9152)
!5513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5514, size: 64)
!5514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5515)
!5515 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !55)
!5516 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !41, line: 42, baseType: !55)
!5517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!5518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5519, size: 64)
!5519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2079)
!5520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5521, size: 64)
!5521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5522)
!5522 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !59)
!5523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5524, size: 64)
!5524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_kmap_iter_tt", file: !5525, line: 121, size: 192, elements: !5526)
!5525 = !DIFile(filename: "./include/drm/ttm/ttm_tt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a8611f3b3c85a1444200cb28e58947d5")
!5526 = !{!5527, !5556, !5585}
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5524, file: !5525, line: 122, baseType: !5528, size: 64)
!5528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_kmap_iter", file: !5529, line: 57, size: 64, elements: !5530)
!5529 = !DIFile(filename: "./include/drm/ttm/ttm_kmap_iter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4ce5e03d0656acb22330349974569500")
!5530 = !{!5531}
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5528, file: !5529, line: 58, baseType: !5532, size: 64)
!5532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5533, size: 64)
!5533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5534)
!5534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_kmap_iter_ops", file: !5529, line: 21, size: 192, elements: !5535)
!5535 = !{!5536, !5551, !5555}
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "map_local", scope: !5534, file: !5529, line: 31, baseType: !5537, size: 64)
!5537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5538, size: 64)
!5538 = !DISubroutineType(types: !5539)
!5539 = !{null, !5540, !5541, !55}
!5540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5528, size: 64)
!5541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5542, size: 64)
!5542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iosys_map", file: !5543, line: 109, size: 128, elements: !5544)
!5543 = !DIFile(filename: "./include/linux/iosys-map.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c97d7374529d1c22dbeacc3bfd30605")
!5544 = !{!5545, !5550}
!5545 = !DIDerivedType(tag: DW_TAG_member, scope: !5542, file: !5543, line: 110, baseType: !5546, size: 64)
!5546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5542, file: !5543, line: 110, size: 64, elements: !5547)
!5547 = !{!5548, !5549}
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr_iomem", scope: !5546, file: !5543, line: 111, baseType: !36, size: 64)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5546, file: !5543, line: 112, baseType: !36, size: 64)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "is_iomem", scope: !5542, file: !5543, line: 114, baseType: !1328, size: 8, offset: 64)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_local", scope: !5534, file: !5529, line: 41, baseType: !5552, size: 64, offset: 64)
!5552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5553, size: 64)
!5553 = !DISubroutineType(types: !5554)
!5554 = !{null, !5540, !5541}
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "maps_tt", scope: !5534, file: !5529, line: 43, baseType: !1328, size: 8, offset: 128)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !5524, file: !5525, line: 123, baseType: !5557, size: 64, offset: 64)
!5557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5558, size: 64)
!5558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_tt", file: !5525, line: 46, size: 384, elements: !5559)
!5559 = !{!5560, !5561, !5562, !5563, !5581, !5583, !5584}
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5558, file: !5525, line: 48, baseType: !3087, size: 64)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "page_flags", scope: !5558, file: !5525, line: 99, baseType: !1362, size: 32, offset: 64)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "num_pages", scope: !5558, file: !5525, line: 101, baseType: !1362, size: 32, offset: 96)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !5558, file: !5525, line: 103, baseType: !5564, size: 64, offset: 128)
!5564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5565, size: 64)
!5565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !5566, line: 39, size: 128, elements: !5567)
!5566 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5d709d01f4c0a80a46fc78d63fc593")
!5567 = !{!5568, !5579, !5580}
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !5565, file: !5566, line: 40, baseType: !5569, size: 64)
!5569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5570, size: 64)
!5570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !5566, line: 11, size: 256, elements: !5571)
!5571 = !{!5572, !5573, !5574, !5575, !5577, !5578}
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !5570, file: !5566, line: 12, baseType: !55, size: 64)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5570, file: !5566, line: 13, baseType: !7, size: 32, offset: 64)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5570, file: !5566, line: 14, baseType: !7, size: 32, offset: 96)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !5570, file: !5566, line: 15, baseType: !5576, size: 64, offset: 128)
!5576 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !41, line: 149, baseType: !557)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !5570, file: !5566, line: 17, baseType: !7, size: 32, offset: 192)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "dma_flags", scope: !5570, file: !5566, line: 20, baseType: !7, size: 32, offset: 224)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !5565, file: !5566, line: 41, baseType: !7, size: 32, offset: 64)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !5565, file: !5566, line: 42, baseType: !7, size: 32, offset: 96)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !5558, file: !5525, line: 105, baseType: !5582, size: 64, offset: 192)
!5582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5576, size: 64)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "swap_storage", scope: !5558, file: !5525, line: 107, baseType: !700, size: 64, offset: 256)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !5558, file: !5525, line: 112, baseType: !288, size: 32, offset: 320)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "prot", scope: !5524, file: !5525, line: 124, baseType: !1968, size: 64, offset: 128)
!5586 = !{!0, !5587, !5589, !5594, !5599, !5601, !5606, !5611, !6315, !6317, !6322, !6327, !6329, !6331, !6333, !6338, !6343, !6345, !6348, !6350, !6352, !6354, !6356, !6358, !6360, !6363, !6368, !6370, !6373}
!5587 = !DIGlobalVariableExpression(var: !5588, expr: !DIExpression())
!5588 = distinct !DIGlobalVariable(name: "__param_pages_limit", scope: !2, file: !3, line: 50, type: !5255, isLocal: true, isDefinition: true, align: 64)
!5589 = !DIGlobalVariableExpression(var: !5590, expr: !DIExpression())
!5590 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_pages_limittype363", scope: !2, file: !3, line: 50, type: !5591, isLocal: true, isDefinition: true, align: 8)
!5591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 248, elements: !5592)
!5592 = !{!5593}
!5593 = !DISubrange(count: 31)
!5594 = !DIGlobalVariableExpression(var: !5595, expr: !DIExpression())
!5595 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_dma32_pages_limit364", scope: !2, file: !3, line: 54, type: !5596, isLocal: true, isDefinition: true, align: 8)
!5596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 504, elements: !5597)
!5597 = !{!5598}
!5598 = !DISubrange(count: 63)
!5599 = !DIGlobalVariableExpression(var: !5600, expr: !DIExpression())
!5600 = distinct !DIGlobalVariable(name: "__param_dma32_pages_limit", scope: !2, file: !3, line: 55, type: !5255, isLocal: true, isDefinition: true, align: 64)
!5601 = !DIGlobalVariableExpression(var: !5602, expr: !DIExpression())
!5602 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_dma32_pages_limittype365", scope: !2, file: !3, line: 55, type: !5603, isLocal: true, isDefinition: true, align: 8)
!5603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 296, elements: !5604)
!5604 = !{!5605}
!5605 = !DISubrange(count: 37)
!5606 = !DIGlobalVariableExpression(var: !5607, expr: !DIExpression())
!5607 = distinct !DIGlobalVariable(scope: null, file: !3, line: 85, type: !5608, isLocal: true, isDefinition: true)
!5608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 288, elements: !5609)
!5609 = !{!5610}
!5610 = !DISubrange(count: 36)
!5611 = !DIGlobalVariableExpression(var: !5612, expr: !DIExpression())
!5612 = distinct !DIGlobalVariable(name: "__print_once", scope: !5613, file: !3, line: 95, type: !1328, isLocal: true, isDefinition: true)
!5613 = distinct !DISubprogram(name: "ttm_tt_create", scope: !3, file: !3, line: 63, type: !5614, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6304)
!5614 = !DISubroutineType(types: !5615)
!5615 = !{!38, !5616, !1328}
!5616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5617, size: 64)
!5617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_buffer_object", file: !295, line: 98, size: 3712, elements: !5618)
!5618 = !{!5619, !6073, !6282, !6283, !6284, !6285, !6286, !6287, !6288, !6289, !6300, !6301, !6302, !6303}
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5617, file: !295, line: 99, baseType: !5620, size: 2816)
!5620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object", file: !284, line: 264, size: 2816, elements: !5621)
!5621 = !{!5622, !5623, !5624, !5948, !5949, !5956, !5957, !5958, !5961, !5964, !5973, !5974, !5978, !6064, !6065}
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5620, file: !284, line: 274, baseType: !4553, size: 32)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "handle_count", scope: !5620, file: !284, line: 287, baseType: !7, size: 32, offset: 32)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5620, file: !284, line: 292, baseType: !5625, size: 64, offset: 64)
!5625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5626, size: 64)
!5626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !277, line: 50, size: 12736, elements: !5627)
!5627 = !{!5628, !5629, !5630, !5631, !5637, !5642, !5643, !5646, !5647, !5648, !5649, !5666, !5667, !5668, !5669, !5670, !5671, !5672, !5673, !5674, !5675, !5676, !5677, !5678, !5679, !5682, !5683, !5684, !5685, !5686, !5687, !5688, !5899, !5900, !5901, !5939, !5942, !5943, !5946, !5947}
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !5626, file: !277, line: 52, baseType: !38, size: 32)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5626, file: !277, line: 55, baseType: !4553, size: 32, offset: 32)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5626, file: !277, line: 58, baseType: !4066, size: 64, offset: 64)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !5626, file: !277, line: 73, baseType: !5632, size: 256, offset: 128)
!5632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5626, file: !277, line: 66, size: 256, elements: !5633)
!5633 = !{!5634, !5635, !5636}
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !5632, file: !277, line: 68, baseType: !113, size: 128)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !5632, file: !277, line: 70, baseType: !36, size: 64, offset: 128)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5632, file: !277, line: 72, baseType: !75, size: 32, offset: 192)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5626, file: !277, line: 76, baseType: !5638, size: 64, offset: 384)
!5638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5639, size: 64)
!5639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5640)
!5640 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !5641, line: 42, flags: DIFlagFwdDecl)
!5641 = !DIFile(filename: "./include/drm/drm_legacy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0a48cbf735602b48f7f8b8e0cbee53a7")
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !5626, file: !277, line: 88, baseType: !36, size: 64, offset: 448)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !5626, file: !277, line: 98, baseType: !5644, size: 64, offset: 512)
!5644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5645, size: 64)
!5645 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !277, line: 13, flags: DIFlagFwdDecl)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !5626, file: !277, line: 107, baseType: !5644, size: 64, offset: 576)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !5626, file: !277, line: 110, baseType: !5644, size: 64, offset: 640)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !5626, file: !277, line: 117, baseType: !1328, size: 8, offset: 704)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !5626, file: !277, line: 125, baseType: !5650, size: 64, offset: 768)
!5650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5651, size: 64)
!5651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !5652, line: 65, size: 1280, elements: !5653)
!5652 = !DIFile(filename: "./include/drm/drm_auth.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10e944a391afc2612335b30db18d0dee")
!5653 = !{!5654, !5655, !5656, !5657, !5658, !5659, !5660, !5661, !5662, !5663, !5664, !5665}
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5651, file: !5652, line: 66, baseType: !4553, size: 32)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5651, file: !5652, line: 67, baseType: !5625, size: 64, offset: 64)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !5651, file: !5652, line: 72, baseType: !410, size: 64, offset: 128)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "unique_len", scope: !5651, file: !5652, line: 77, baseType: !38, size: 32, offset: 192)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "magic_map", scope: !5651, file: !5652, line: 82, baseType: !812, size: 192, offset: 256)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !5651, file: !5652, line: 83, baseType: !36, size: 64, offset: 448)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "lessor", scope: !5651, file: !5652, line: 99, baseType: !5650, size: 64, offset: 512)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_id", scope: !5651, file: !5652, line: 107, baseType: !38, size: 32, offset: 576)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_list", scope: !5651, file: !5652, line: 116, baseType: !113, size: 128, offset: 640)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "lessees", scope: !5651, file: !5652, line: 128, baseType: !113, size: 128, offset: 768)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "leases", scope: !5651, file: !5652, line: 139, baseType: !812, size: 192, offset: 896)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_idr", scope: !5651, file: !5652, line: 147, baseType: !812, size: 192, offset: 1088)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !5626, file: !277, line: 135, baseType: !553, size: 32, offset: 832)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !5626, file: !277, line: 143, baseType: !1328, size: 8, offset: 864)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !5626, file: !277, line: 146, baseType: !484, size: 64, offset: 896)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !5626, file: !277, line: 149, baseType: !410, size: 64, offset: 960)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !5626, file: !277, line: 159, baseType: !735, size: 256, offset: 1024)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !5626, file: !277, line: 166, baseType: !735, size: 256, offset: 1280)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !5626, file: !277, line: 174, baseType: !65, size: 32, offset: 1536)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !5626, file: !277, line: 177, baseType: !735, size: 256, offset: 1600)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !5626, file: !277, line: 183, baseType: !113, size: 128, offset: 1856)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !5626, file: !277, line: 191, baseType: !113, size: 128, offset: 1984)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !5626, file: !277, line: 198, baseType: !735, size: 256, offset: 2112)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !5626, file: !277, line: 205, baseType: !113, size: 128, offset: 2368)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !5626, file: !277, line: 220, baseType: !1328, size: 8, offset: 2496)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !5626, file: !277, line: 230, baseType: !5680, size: 64, offset: 2560)
!5680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5681, size: 64)
!5681 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !277, line: 15, flags: DIFlagFwdDecl)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !5626, file: !277, line: 237, baseType: !75, size: 32, offset: 2624)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !5626, file: !277, line: 242, baseType: !75, size: 32, offset: 2656)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !5626, file: !277, line: 265, baseType: !553, size: 32, offset: 2688)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !5626, file: !277, line: 268, baseType: !113, size: 128, offset: 2752)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !5626, file: !277, line: 276, baseType: !75, size: 32, offset: 2880)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !5626, file: !277, line: 279, baseType: !7, size: 32, offset: 2912)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !5626, file: !277, line: 282, baseType: !5689, size: 8704, offset: 2944)
!5689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !5690, line: 375, size: 8704, elements: !5691)
!5690 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3fe2bd3e9391801689324df8a16c9607")
!5691 = !{!5692, !5693, !5712, !5725, !5726, !5727, !5728, !5729, !5730, !5731, !5732, !5733, !5737, !5738, !5739, !5740, !5741, !5742, !5743, !5744, !5745, !5746, !5747, !5748, !5749, !5750, !5751, !5752, !5819, !5820, !5821, !5822, !5823, !5824, !5825, !5828, !5829, !5830, !5831, !5832, !5833, !5834, !5835, !5836, !5837, !5838, !5839, !5840, !5841, !5842, !5843, !5844, !5845, !5846, !5847, !5848, !5849, !5850, !5851, !5852, !5853, !5854, !5855, !5856, !5857, !5858, !5859, !5860, !5861, !5862, !5863, !5864, !5865, !5866, !5867, !5868, !5869, !5870, !5871, !5872, !5873, !5874, !5875, !5876, !5877, !5878, !5879, !5880, !5881, !5882, !5883, !5884, !5885, !5886, !5887, !5888, !5889, !5890, !5891, !5892, !5893, !5894, !5895}
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5689, file: !5690, line: 386, baseType: !735, size: 256)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !5689, file: !5690, line: 396, baseType: !5694, size: 448, offset: 256)
!5694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !5695, line: 85, size: 448, elements: !5696)
!5695 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90e902ea14584677125d9e33023828e6")
!5696 = !{!5697, !5711}
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5694, file: !5695, line: 89, baseType: !5698, size: 320)
!5698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !5699, line: 47, size: 320, elements: !5700)
!5699 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!5700 = !{!5701, !5702}
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5698, file: !5699, line: 48, baseType: !735, size: 256)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !5698, file: !5699, line: 49, baseType: !5703, size: 64, offset: 256)
!5703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5704, size: 64)
!5704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !5699, line: 55, size: 192, elements: !5705)
!5705 = !{!5706, !5707, !5708, !5709, !5710}
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5704, file: !5699, line: 56, baseType: !828, size: 64)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !5704, file: !5699, line: 57, baseType: !55, size: 64, offset: 64)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !5704, file: !5699, line: 58, baseType: !7, size: 32, offset: 128)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !5704, file: !5699, line: 59, baseType: !42, size: 16, offset: 160)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !5704, file: !5699, line: 60, baseType: !42, size: 16, offset: 176)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5694, file: !5695, line: 95, baseType: !113, size: 128, offset: 320)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !5689, file: !5690, line: 406, baseType: !5713, size: 64, offset: 704)
!5713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5714, size: 64)
!5714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !5695, line: 46, size: 512, elements: !5715)
!5715 = !{!5716, !5717, !5719, !5722, !5723, !5724}
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !5714, file: !5695, line: 48, baseType: !5704, size: 192)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !5714, file: !5695, line: 55, baseType: !5718, size: 64, offset: 192)
!5718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5694, size: 64)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "stack_depot", scope: !5714, file: !5695, line: 61, baseType: !5720, size: 32, offset: 256)
!5720 = !DIDerivedType(tag: DW_TAG_typedef, name: "depot_stack_handle_t", file: !5721, line: 27, baseType: !553)
!5721 = !DIFile(filename: "./include/linux/stackdepot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "787fdf2c1a48da25b4d7ecc2db077a40")
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !5714, file: !5695, line: 66, baseType: !113, size: 128, offset: 320)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !5714, file: !5695, line: 71, baseType: !1328, size: 8, offset: 448)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !5714, file: !5695, line: 74, baseType: !1328, size: 8, offset: 456)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !5689, file: !5690, line: 414, baseType: !735, size: 256, offset: 768)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !5689, file: !5690, line: 422, baseType: !812, size: 192, offset: 1024)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !5689, file: !5690, line: 430, baseType: !812, size: 192, offset: 1216)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !5689, file: !5690, line: 433, baseType: !735, size: 256, offset: 1408)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !5689, file: !5690, line: 435, baseType: !38, size: 32, offset: 1664)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !5689, file: !5690, line: 437, baseType: !113, size: 128, offset: 1728)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !5689, file: !5690, line: 443, baseType: !75, size: 32, offset: 1856)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !5689, file: !5690, line: 448, baseType: !38, size: 32, offset: 1888)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !5689, file: !5690, line: 452, baseType: !5734, size: 128, offset: 1920)
!5734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !813, line: 246, size: 128, elements: !5735)
!5735 = !{!5736}
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5734, file: !813, line: 247, baseType: !816, size: 128)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !5689, file: !5690, line: 460, baseType: !113, size: 128, offset: 2048)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !5689, file: !5690, line: 470, baseType: !3104, size: 64, offset: 2176)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !5689, file: !5690, line: 474, baseType: !1443, size: 256, offset: 2240)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !5689, file: !5690, line: 482, baseType: !38, size: 32, offset: 2496)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !5689, file: !5690, line: 490, baseType: !113, size: 128, offset: 2560)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !5689, file: !5690, line: 499, baseType: !38, size: 32, offset: 2688)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !5689, file: !5690, line: 506, baseType: !113, size: 128, offset: 2752)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !5689, file: !5690, line: 514, baseType: !38, size: 32, offset: 2880)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !5689, file: !5690, line: 521, baseType: !113, size: 128, offset: 2944)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !5689, file: !5690, line: 530, baseType: !113, size: 128, offset: 3072)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !5689, file: !5690, line: 539, baseType: !113, size: 128, offset: 3200)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !5689, file: !5690, line: 541, baseType: !38, size: 32, offset: 3328)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !5689, file: !5690, line: 541, baseType: !38, size: 32, offset: 3360)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !5689, file: !5690, line: 542, baseType: !38, size: 32, offset: 3392)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !5689, file: !5690, line: 542, baseType: !38, size: 32, offset: 3424)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5689, file: !5690, line: 543, baseType: !5753, size: 64, offset: 3456)
!5753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5754, size: 64)
!5754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5755)
!5755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !5690, line: 47, size: 576, elements: !5756)
!5756 = !{!5757, !5781, !5788, !5792, !5800, !5806, !5810, !5814, !5818}
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !5755, file: !5690, line: 83, baseType: !5758, size: 64)
!5758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5759, size: 64)
!5759 = !DISubroutineType(types: !5760)
!5760 = !{!5761, !5625, !5763, !5765}
!5761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5762, size: 64)
!5762 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !5690, line: 83, flags: DIFlagFwdDecl)
!5763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5764, size: 64)
!5764 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !5652, line: 35, flags: DIFlagFwdDecl)
!5765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5766, size: 64)
!5766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5767)
!5767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !5768, line: 703, size: 832, elements: !5769)
!5768 = !DIFile(filename: "./include/uapi/drm/drm_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "357a7211aa80668185b31e7330dddd63")
!5769 = !{!5770, !5771, !5772, !5773, !5774, !5775, !5777, !5778, !5779}
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !5767, file: !5768, line: 705, baseType: !554, size: 32)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5767, file: !5768, line: 707, baseType: !554, size: 32, offset: 32)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5767, file: !5768, line: 709, baseType: !554, size: 32, offset: 64)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !5767, file: !5768, line: 714, baseType: !554, size: 32, offset: 96)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5767, file: !5768, line: 719, baseType: !554, size: 32, offset: 128)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !5767, file: !5768, line: 725, baseType: !5776, size: 128, offset: 160)
!5776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !554, size: 128, elements: !796)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !5767, file: !5768, line: 727, baseType: !5776, size: 128, offset: 288)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !5767, file: !5768, line: 729, baseType: !5776, size: 128, offset: 416)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !5767, file: !5768, line: 735, baseType: !5780, size: 256, offset: 576)
!5780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 256, elements: !796)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !5755, file: !5690, line: 98, baseType: !5782, size: 64, offset: 64)
!5782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5783, size: 64)
!5783 = !DISubroutineType(types: !5784)
!5784 = !{!5785, !5765}
!5785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5786, size: 64)
!5786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5787)
!5787 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !5690, line: 38, flags: DIFlagFwdDecl)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !5755, file: !5690, line: 114, baseType: !5789, size: 64, offset: 128)
!5789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5790, size: 64)
!5790 = !DISubroutineType(types: !5791)
!5791 = !{null, !5625}
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !5755, file: !5690, line: 124, baseType: !5793, size: 64, offset: 192)
!5793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5794, size: 64)
!5794 = !DISubroutineType(types: !5795)
!5795 = !{!5796, !5625, !5797}
!5796 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_status", file: !5690, line: 124, flags: DIFlagFwdDecl)
!5797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5798, size: 64)
!5798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5799)
!5799 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !5690, line: 39, flags: DIFlagFwdDecl)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !5755, file: !5690, line: 201, baseType: !5801, size: 64, offset: 256)
!5801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5802, size: 64)
!5802 = !DISubroutineType(types: !5803)
!5803 = !{!38, !5625, !5804}
!5804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5805, size: 64)
!5805 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !5690, line: 36, flags: DIFlagFwdDecl)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !5755, file: !5690, line: 283, baseType: !5807, size: 64, offset: 320)
!5807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5808, size: 64)
!5808 = !DISubroutineType(types: !5809)
!5809 = !{!38, !5625, !5804, !1328}
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !5755, file: !5690, line: 302, baseType: !5811, size: 64, offset: 384)
!5811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5812, size: 64)
!5812 = !DISubroutineType(types: !5813)
!5813 = !{!5804, !5625}
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !5755, file: !5690, line: 323, baseType: !5815, size: 64, offset: 448)
!5815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5816, size: 64)
!5816 = !DISubroutineType(types: !5817)
!5817 = !{null, !5804}
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !5755, file: !5690, line: 338, baseType: !5815, size: 64, offset: 512)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !5689, file: !5690, line: 546, baseType: !1328, size: 8, offset: 3520)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !5689, file: !5690, line: 547, baseType: !1328, size: 8, offset: 3528)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !5689, file: !5690, line: 548, baseType: !1328, size: 8, offset: 3536)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !5689, file: !5690, line: 549, baseType: !4595, size: 704, offset: 3584)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !5689, file: !5690, line: 557, baseType: !735, size: 256, offset: 4288)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !5689, file: !5690, line: 565, baseType: !113, size: 128, offset: 4544)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !5689, file: !5690, line: 573, baseType: !5826, size: 64, offset: 4672)
!5826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5827, size: 64)
!5827 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !5690, line: 573, flags: DIFlagFwdDecl)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !5689, file: !5690, line: 578, baseType: !5826, size: 64, offset: 4736)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !5689, file: !5690, line: 583, baseType: !5826, size: 64, offset: 4800)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !5689, file: !5690, line: 589, baseType: !5826, size: 64, offset: 4864)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !5689, file: !5690, line: 594, baseType: !5826, size: 64, offset: 4928)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !5689, file: !5690, line: 599, baseType: !5826, size: 64, offset: 4992)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !5689, file: !5690, line: 604, baseType: !5826, size: 64, offset: 5056)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !5689, file: !5690, line: 609, baseType: !5826, size: 64, offset: 5120)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !5689, file: !5690, line: 614, baseType: !5826, size: 64, offset: 5184)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !5689, file: !5690, line: 619, baseType: !5826, size: 64, offset: 5248)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !5689, file: !5690, line: 624, baseType: !5826, size: 64, offset: 5312)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !5689, file: !5690, line: 629, baseType: !5826, size: 64, offset: 5376)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !5689, file: !5690, line: 634, baseType: !5826, size: 64, offset: 5440)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !5689, file: !5690, line: 639, baseType: !5826, size: 64, offset: 5504)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !5689, file: !5690, line: 644, baseType: !5826, size: 64, offset: 5568)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !5689, file: !5690, line: 649, baseType: !5826, size: 64, offset: 5632)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !5689, file: !5690, line: 655, baseType: !5826, size: 64, offset: 5696)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !5689, file: !5690, line: 660, baseType: !5826, size: 64, offset: 5760)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !5689, file: !5690, line: 669, baseType: !5826, size: 64, offset: 5824)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !5689, file: !5690, line: 675, baseType: !5826, size: 64, offset: 5888)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !5689, file: !5690, line: 681, baseType: !5826, size: 64, offset: 5952)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !5689, file: !5690, line: 686, baseType: !5826, size: 64, offset: 6016)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !5689, file: !5690, line: 692, baseType: !5826, size: 64, offset: 6080)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !5689, file: !5690, line: 697, baseType: !5826, size: 64, offset: 6144)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !5689, file: !5690, line: 703, baseType: !5826, size: 64, offset: 6208)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !5689, file: !5690, line: 709, baseType: !5826, size: 64, offset: 6272)
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !5689, file: !5690, line: 714, baseType: !5826, size: 64, offset: 6336)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_tv_mode_property", scope: !5689, file: !5690, line: 722, baseType: !5826, size: 64, offset: 6400)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !5689, file: !5690, line: 728, baseType: !5826, size: 64, offset: 6464)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !5689, file: !5690, line: 734, baseType: !5826, size: 64, offset: 6528)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !5689, file: !5690, line: 739, baseType: !5826, size: 64, offset: 6592)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !5689, file: !5690, line: 744, baseType: !5826, size: 64, offset: 6656)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !5689, file: !5690, line: 749, baseType: !5826, size: 64, offset: 6720)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !5689, file: !5690, line: 754, baseType: !5826, size: 64, offset: 6784)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !5689, file: !5690, line: 759, baseType: !5826, size: 64, offset: 6848)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !5689, file: !5690, line: 764, baseType: !5826, size: 64, offset: 6912)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !5689, file: !5690, line: 769, baseType: !5826, size: 64, offset: 6976)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !5689, file: !5690, line: 774, baseType: !5826, size: 64, offset: 7040)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !5689, file: !5690, line: 778, baseType: !5826, size: 64, offset: 7104)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !5689, file: !5690, line: 784, baseType: !5826, size: 64, offset: 7168)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !5689, file: !5690, line: 789, baseType: !5826, size: 64, offset: 7232)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !5689, file: !5690, line: 794, baseType: !5826, size: 64, offset: 7296)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !5689, file: !5690, line: 799, baseType: !5826, size: 64, offset: 7360)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !5689, file: !5690, line: 804, baseType: !5826, size: 64, offset: 7424)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !5689, file: !5690, line: 810, baseType: !5826, size: 64, offset: 7488)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !5689, file: !5690, line: 816, baseType: !5826, size: 64, offset: 7552)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !5689, file: !5690, line: 821, baseType: !5826, size: 64, offset: 7616)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !5689, file: !5690, line: 827, baseType: !5826, size: 64, offset: 7680)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !5689, file: !5690, line: 832, baseType: !5826, size: 64, offset: 7744)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !5689, file: !5690, line: 839, baseType: !5826, size: 64, offset: 7808)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !5689, file: !5690, line: 846, baseType: !5826, size: 64, offset: 7872)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !5689, file: !5690, line: 853, baseType: !5826, size: 64, offset: 7936)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !5689, file: !5690, line: 861, baseType: !5826, size: 64, offset: 8000)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !5689, file: !5690, line: 869, baseType: !5826, size: 64, offset: 8064)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !5689, file: !5690, line: 876, baseType: !5826, size: 64, offset: 8128)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !5689, file: !5690, line: 882, baseType: !5826, size: 64, offset: 8192)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !5689, file: !5690, line: 888, baseType: !5826, size: 64, offset: 8256)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !5689, file: !5690, line: 891, baseType: !1362, size: 32, offset: 8320)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !5689, file: !5690, line: 891, baseType: !1362, size: 32, offset: 8352)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !5689, file: !5690, line: 899, baseType: !1328, size: 8, offset: 8384)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !5689, file: !5690, line: 913, baseType: !1328, size: 8, offset: 8392)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !5689, file: !5690, line: 919, baseType: !1328, size: 8, offset: 8400)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "fb_modifiers_not_supported", scope: !5689, file: !5690, line: 929, baseType: !1328, size: 8, offset: 8408)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !5689, file: !5690, line: 937, baseType: !1328, size: 8, offset: 8416)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !5689, file: !5690, line: 943, baseType: !5826, size: 64, offset: 8448)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !5689, file: !5690, line: 946, baseType: !1362, size: 32, offset: 8512)
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !5689, file: !5690, line: 946, baseType: !1362, size: 32, offset: 8544)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !5689, file: !5690, line: 955, baseType: !5804, size: 64, offset: 8576)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5689, file: !5690, line: 957, baseType: !5896, size: 64, offset: 8640)
!5896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5897, size: 64)
!5897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5898)
!5898 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !5690, line: 957, flags: DIFlagFwdDecl)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !5626, file: !277, line: 285, baseType: !735, size: 256, offset: 11648)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !5626, file: !277, line: 288, baseType: !812, size: 192, offset: 11904)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !5626, file: !277, line: 291, baseType: !5902, size: 64, offset: 12096)
!5902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5903, size: 64)
!5903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !5904, line: 59, size: 1984, elements: !5905)
!5904 = !DIFile(filename: "./include/drm/drm_vma_manager.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5483318cd9ffeb7eed8e930be54b2ae2")
!5905 = !{!5906, !5907}
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !5903, file: !5904, line: 60, baseType: !753, size: 64)
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "vm_addr_space_mm", scope: !5903, file: !5904, line: 61, baseType: !5908, size: 1920, offset: 64)
!5908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm", file: !5909, line: 190, size: 1920, elements: !5910)
!5909 = !DIFile(filename: "./include/drm/drm_mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84c90dff9a569f9267103742808582e0")
!5910 = !{!5911, !5933, !5934, !5935, !5936, !5937, !5938}
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "color_adjust", scope: !5908, file: !5909, line: 200, baseType: !5912, size: 64)
!5912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5913, size: 64)
!5913 = !DISubroutineType(types: !5914)
!5914 = !{null, !5915, !55, !4325, !4325}
!5915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5916, size: 64)
!5916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5917)
!5917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm_node", file: !5909, line: 157, size: 1344, elements: !5918)
!5918 = !{!5919, !5920, !5921, !5922, !5924, !5925, !5926, !5927, !5928, !5929, !5930, !5931, !5932}
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !5917, file: !5909, line: 159, baseType: !55, size: 64)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5917, file: !5909, line: 161, baseType: !557, size: 64, offset: 64)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5917, file: !5909, line: 163, baseType: !557, size: 64, offset: 128)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !5917, file: !5909, line: 165, baseType: !5923, size: 64, offset: 192)
!5923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5908, size: 64)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !5917, file: !5909, line: 166, baseType: !113, size: 128, offset: 256)
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !5917, file: !5909, line: 167, baseType: !113, size: 128, offset: 384)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5917, file: !5909, line: 168, baseType: !877, size: 192, align: 64, offset: 512)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_size", scope: !5917, file: !5909, line: 169, baseType: !877, size: 192, align: 64, offset: 704)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_addr", scope: !5917, file: !5909, line: 170, baseType: !877, size: 192, align: 64, offset: 896)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "__subtree_last", scope: !5917, file: !5909, line: 171, baseType: !557, size: 64, offset: 1088)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "hole_size", scope: !5917, file: !5909, line: 172, baseType: !557, size: 64, offset: 1152)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_max_hole", scope: !5917, file: !5909, line: 173, baseType: !557, size: 64, offset: 1216)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5917, file: !5909, line: 174, baseType: !55, size: 64, offset: 1280)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !5908, file: !5909, line: 206, baseType: !113, size: 128, offset: 64)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "head_node", scope: !5908, file: !5909, line: 209, baseType: !5917, size: 1344, offset: 192)
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "interval_tree", scope: !5908, file: !5909, line: 211, baseType: !1006, size: 128, offset: 1536)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "holes_size", scope: !5908, file: !5909, line: 212, baseType: !1006, size: 128, offset: 1664)
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "holes_addr", scope: !5908, file: !5909, line: 213, baseType: !1009, size: 64, offset: 1792)
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "scan_active", scope: !5908, file: !5909, line: 215, baseType: !55, size: 64, offset: 1856)
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !5626, file: !277, line: 294, baseType: !5940, size: 64, offset: 12160)
!5940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5941, size: 64)
!5941 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !277, line: 17, flags: DIFlagFwdDecl)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !5626, file: !277, line: 304, baseType: !276, size: 32, offset: 12224)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !5626, file: !277, line: 312, baseType: !5944, size: 64, offset: 12288)
!5944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5945, size: 64)
!5945 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !277, line: 18, flags: DIFlagFwdDecl)
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !5626, file: !277, line: 319, baseType: !735, size: 256, offset: 12352)
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !5626, file: !277, line: 327, baseType: !113, size: 128, offset: 12608)
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "filp", scope: !5620, file: !284, line: 302, baseType: !700, size: 64, offset: 128)
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "vma_node", scope: !5620, file: !284, line: 314, baseType: !5950, size: 1536, offset: 192)
!5950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_node", file: !5904, line: 52, size: 1536, elements: !5951)
!5951 = !{!5952, !5953, !5954, !5955}
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !5950, file: !5904, line: 53, baseType: !753, size: 64)
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "vm_node", scope: !5950, file: !5904, line: 54, baseType: !5917, size: 1344, offset: 64)
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "vm_files", scope: !5950, file: !5904, line: 55, baseType: !1009, size: 64, offset: 1408)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "driver_private", scope: !5950, file: !5904, line: 56, baseType: !36, size: 64, offset: 1472)
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5620, file: !284, line: 322, baseType: !51, size: 64, offset: 1728)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5620, file: !284, line: 331, baseType: !38, size: 32, offset: 1792)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "dma_buf", scope: !5620, file: !284, line: 344, baseType: !5959, size: 64, offset: 1856)
!5959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5960, size: 64)
!5960 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf", file: !284, line: 121, flags: DIFlagFwdDecl)
!5961 = !DIDerivedType(tag: DW_TAG_member, name: "import_attach", scope: !5620, file: !284, line: 364, baseType: !5962, size: 64, offset: 1920)
!5962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5963, size: 64)
!5963 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_attachment", file: !284, line: 364, flags: DIFlagFwdDecl)
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !5620, file: !284, line: 373, baseType: !5965, size: 64, offset: 1984)
!5965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5966, size: 64)
!5966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv", file: !5967, line: 155, size: 384, elements: !5968)
!5967 = !DIFile(filename: "./include/linux/dma-resv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "33eb7b47491fa42a2c4bcb5c661d5780")
!5968 = !{!5969, !5970}
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5966, file: !5967, line: 166, baseType: !5698, size: 320)
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "fences", scope: !5966, file: !5967, line: 178, baseType: !5971, size: 64, offset: 320)
!5971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5972, size: 64)
!5972 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv_list", file: !5967, line: 50, flags: DIFlagFwdDecl)
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "_resv", scope: !5620, file: !284, line: 382, baseType: !5966, size: 384, offset: 2048)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "gpuva", scope: !5620, file: !284, line: 398, baseType: !5975, size: 128, offset: 2432)
!5975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5620, file: !284, line: 392, size: 128, elements: !5976)
!5976 = !{!5977}
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5975, file: !284, line: 393, baseType: !113, size: 128)
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5620, file: !284, line: 409, baseType: !5979, size: 64, offset: 2560)
!5979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5980, size: 64)
!5980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5981)
!5981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object_funcs", file: !284, line: 69, size: 896, elements: !5982)
!5982 = !{!5983, !5988, !5992, !5996, !6033, !6037, !6041, !6042, !6046, !6050, !6054, !6058, !6059, !6063}
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5981, file: !284, line: 77, baseType: !5984, size: 64)
!5984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5985, size: 64)
!5985 = !DISubroutineType(types: !5986)
!5986 = !{null, !5987}
!5987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5620, size: 64)
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5981, file: !284, line: 86, baseType: !5989, size: 64, offset: 64)
!5989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5990, size: 64)
!5990 = !DISubroutineType(types: !5991)
!5991 = !{!38, !5987, !5763}
!5992 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !5981, file: !284, line: 95, baseType: !5993, size: 64, offset: 128)
!5993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5994, size: 64)
!5994 = !DISubroutineType(types: !5995)
!5995 = !{null, !5987, !5763}
!5996 = !DIDerivedType(tag: DW_TAG_member, name: "print_info", scope: !5981, file: !284, line: 110, baseType: !5997, size: 64, offset: 192)
!5997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5998, size: 64)
!5998 = !DISubroutineType(types: !5999)
!5999 = !{null, !6000, !7, !6031}
!6000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6001, size: 64)
!6001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !6002, line: 76, size: 256, elements: !6003)
!6002 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!6003 = !{!6004, !6025, !6029, !6030}
!6004 = !DIDerivedType(tag: DW_TAG_member, name: "printfn", scope: !6001, file: !6002, line: 78, baseType: !6005, size: 64)
!6005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6006, size: 64)
!6006 = !DISubroutineType(types: !6007)
!6007 = !{null, !6000, !6008}
!6008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6009, size: 64)
!6009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !6010, line: 79, size: 128, elements: !6011)
!6010 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6011 = !{!6012, !6013}
!6012 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !6009, file: !6010, line: 80, baseType: !32, size: 64)
!6013 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !6009, file: !6010, line: 81, baseType: !6014, size: 64, offset: 64)
!6014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6015, size: 64)
!6015 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !6016, line: 5, baseType: !6017)
!6016 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!6017 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !6018)
!6018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6019, size: 192, elements: !1075)
!6019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !6020)
!6020 = !{!6021, !6022, !6023, !6024}
!6021 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !6019, file: !3, line: 55, baseType: !7, size: 32)
!6022 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !6019, file: !3, line: 55, baseType: !7, size: 32, offset: 32)
!6023 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !6019, file: !3, line: 55, baseType: !36, size: 64, offset: 64)
!6024 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !6019, file: !3, line: 55, baseType: !36, size: 64, offset: 128)
!6025 = !DIDerivedType(tag: DW_TAG_member, name: "puts", scope: !6001, file: !6002, line: 79, baseType: !6026, size: 64, offset: 64)
!6026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6027, size: 64)
!6027 = !DISubroutineType(types: !6028)
!6028 = !{null, !6000, !32}
!6029 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !6001, file: !6002, line: 80, baseType: !36, size: 64, offset: 128)
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !6001, file: !6002, line: 81, baseType: !32, size: 64, offset: 192)
!6031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6032, size: 64)
!6032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5620)
!6033 = !DIDerivedType(tag: DW_TAG_member, name: "export", scope: !5981, file: !284, line: 121, baseType: !6034, size: 64, offset: 256)
!6034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6035, size: 64)
!6035 = !DISubroutineType(types: !6036)
!6036 = !{!5959, !5987, !38}
!6037 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !5981, file: !284, line: 130, baseType: !6038, size: 64, offset: 320)
!6038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6039, size: 64)
!6039 = !DISubroutineType(types: !6040)
!6040 = !{!38, !5987}
!6041 = !DIDerivedType(tag: DW_TAG_member, name: "unpin", scope: !5981, file: !284, line: 139, baseType: !5984, size: 64, offset: 384)
!6042 = !DIDerivedType(tag: DW_TAG_member, name: "get_sg_table", scope: !5981, file: !284, line: 153, baseType: !6043, size: 64, offset: 448)
!6043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6044, size: 64)
!6044 = !DISubroutineType(types: !6045)
!6045 = !{!5564, !5987}
!6046 = !DIDerivedType(tag: DW_TAG_member, name: "vmap", scope: !5981, file: !284, line: 163, baseType: !6047, size: 64, offset: 512)
!6047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6048, size: 64)
!6048 = !DISubroutineType(types: !6049)
!6049 = !{!38, !5987, !5541}
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "vunmap", scope: !5981, file: !284, line: 173, baseType: !6051, size: 64, offset: 576)
!6051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6052, size: 64)
!6052 = !DISubroutineType(types: !6053)
!6053 = !{null, !5987, !5541}
!6054 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5981, file: !284, line: 186, baseType: !6055, size: 64, offset: 640)
!6055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6056, size: 64)
!6056 = !DISubroutineType(types: !6057)
!6057 = !{!38, !5987, !1954}
!6058 = !DIDerivedType(tag: DW_TAG_member, name: "evict", scope: !5981, file: !284, line: 196, baseType: !6038, size: 64, offset: 704)
!6059 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5981, file: !284, line: 209, baseType: !6060, size: 64, offset: 768)
!6060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6061, size: 64)
!6061 = !DISubroutineType(types: !6062)
!6062 = !{!283, !5987}
!6063 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !5981, file: !284, line: 218, baseType: !1945, size: 64, offset: 832)
!6064 = !DIDerivedType(tag: DW_TAG_member, name: "lru_node", scope: !5620, file: !284, line: 416, baseType: !113, size: 128, offset: 2624)
!6065 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5620, file: !284, line: 423, baseType: !6066, size: 64, offset: 2752)
!6066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6067, size: 64)
!6067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_lru", file: !284, line: 230, size: 256, elements: !6068)
!6068 = !{!6069, !6071, !6072}
!6069 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6067, file: !284, line: 238, baseType: !6070, size: 64)
!6070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!6071 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !6067, file: !284, line: 246, baseType: !445, size: 64, offset: 64)
!6072 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6067, file: !284, line: 253, baseType: !113, size: 128, offset: 128)
!6073 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !5617, file: !295, line: 104, baseType: !6074, size: 64, offset: 2816)
!6074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6075, size: 64)
!6075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_device", file: !6076, line: 215, size: 16960, elements: !6077)
!6076 = !DIFile(filename: "./include/drm/ttm/ttm_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "318d87bc69ff4bc10378351ef0b91aca")
!6077 = !{!6078, !6079, !6165, !6250, !6252, !6253, !6278, !6279, !6280, !6281}
!6078 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !6075, file: !6076, line: 220, baseType: !113, size: 128)
!6079 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !6075, file: !6076, line: 226, baseType: !6080, size: 64, offset: 128)
!6080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6081, size: 64)
!6081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6082)
!6082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_device_funcs", file: !6076, line: 61, size: 896, elements: !6083)
!6083 = !{!6084, !6088, !6103, !6107, !6108, !6116, !6122, !6143, !6147, !6148, !6152, !6156, !6160, !6164}
!6084 = !DIDerivedType(tag: DW_TAG_member, name: "ttm_tt_create", scope: !6082, file: !6076, line: 73, baseType: !6085, size: 64)
!6085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6086, size: 64)
!6086 = !DISubroutineType(types: !6087)
!6087 = !{!5557, !5616, !1362}
!6088 = !DIDerivedType(tag: DW_TAG_member, name: "ttm_tt_populate", scope: !6082, file: !6076, line: 85, baseType: !6089, size: 64, offset: 64)
!6089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6090, size: 64)
!6090 = !DISubroutineType(types: !6091)
!6091 = !{!38, !6074, !5557, !6092}
!6092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6093, size: 64)
!6093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_operation_ctx", file: !295, line: 178, size: 192, elements: !6094)
!6094 = !{!6095, !6096, !6097, !6098, !6099, !6100, !6101}
!6095 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !6093, file: !295, line: 179, baseType: !1328, size: 8)
!6096 = !DIDerivedType(tag: DW_TAG_member, name: "no_wait_gpu", scope: !6093, file: !295, line: 180, baseType: !1328, size: 8, offset: 8)
!6097 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_retry_mayfail", scope: !6093, file: !295, line: 181, baseType: !1328, size: 8, offset: 16)
!6098 = !DIDerivedType(tag: DW_TAG_member, name: "allow_res_evict", scope: !6093, file: !295, line: 182, baseType: !1328, size: 8, offset: 24)
!6099 = !DIDerivedType(tag: DW_TAG_member, name: "force_alloc", scope: !6093, file: !295, line: 183, baseType: !1328, size: 8, offset: 32)
!6100 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !6093, file: !295, line: 184, baseType: !5965, size: 64, offset: 64)
!6101 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_moved", scope: !6093, file: !295, line: 185, baseType: !6102, size: 64, offset: 128)
!6102 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !41, line: 113, baseType: !557)
!6103 = !DIDerivedType(tag: DW_TAG_member, name: "ttm_tt_unpopulate", scope: !6082, file: !6076, line: 96, baseType: !6104, size: 64, offset: 128)
!6104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6105, size: 64)
!6105 = !DISubroutineType(types: !6106)
!6106 = !{null, !6074, !5557}
!6107 = !DIDerivedType(tag: DW_TAG_member, name: "ttm_tt_destroy", scope: !6082, file: !6076, line: 108, baseType: !6104, size: 64, offset: 192)
!6108 = !DIDerivedType(tag: DW_TAG_member, name: "eviction_valuable", scope: !6082, file: !6076, line: 119, baseType: !6109, size: 64, offset: 256)
!6109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6110, size: 64)
!6110 = !DISubroutineType(types: !6111)
!6111 = !{!1328, !5616, !6112}
!6112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6113, size: 64)
!6113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6114)
!6114 = !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_place", file: !6115, line: 44, flags: DIFlagFwdDecl)
!6115 = !DIFile(filename: "./include/drm/ttm/ttm_resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9381c1bbd30ebfc9159e3e67f7545347")
!6116 = !DIDerivedType(tag: DW_TAG_member, name: "evict_flags", scope: !6082, file: !6076, line: 133, baseType: !6117, size: 64, offset: 320)
!6117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6118, size: 64)
!6118 = !DISubroutineType(types: !6119)
!6119 = !{null, !5616, !6120}
!6120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6121, size: 64)
!6121 = !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_placement", file: !6115, line: 46, flags: DIFlagFwdDecl)
!6122 = !DIDerivedType(tag: DW_TAG_member, name: "move", scope: !6082, file: !6076, line: 149, baseType: !6123, size: 64, offset: 384)
!6123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6124, size: 64)
!6124 = !DISubroutineType(types: !6125)
!6125 = !{!38, !5616, !1328, !6092, !6126, !6142}
!6126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6127, size: 64)
!6127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_resource", file: !6115, line: 209, size: 576, elements: !6128)
!6128 = !{!6129, !6130, !6131, !6132, !6133, !6140, !6141}
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !6127, file: !6115, line: 210, baseType: !55, size: 64)
!6130 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6127, file: !6115, line: 211, baseType: !51, size: 64, offset: 64)
!6131 = !DIDerivedType(tag: DW_TAG_member, name: "mem_type", scope: !6127, file: !6115, line: 212, baseType: !1362, size: 32, offset: 128)
!6132 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !6127, file: !6115, line: 213, baseType: !1362, size: 32, offset: 160)
!6133 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !6127, file: !6115, line: 214, baseType: !6134, size: 192, offset: 192)
!6134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_bus_placement", file: !6115, line: 189, size: 192, elements: !6135)
!6135 = !{!6136, !6137, !6138, !6139}
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !6134, file: !6115, line: 190, baseType: !36, size: 64)
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !6134, file: !6115, line: 191, baseType: !3091, size: 64, offset: 64)
!6138 = !DIDerivedType(tag: DW_TAG_member, name: "is_iomem", scope: !6134, file: !6115, line: 192, baseType: !1328, size: 8, offset: 128)
!6139 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !6134, file: !6115, line: 193, baseType: !288, size: 32, offset: 160)
!6140 = !DIDerivedType(tag: DW_TAG_member, name: "bo", scope: !6127, file: !6115, line: 215, baseType: !5616, size: 64, offset: 384)
!6141 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !6127, file: !6115, line: 220, baseType: !113, size: 128, offset: 448)
!6142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6114, size: 64)
!6143 = !DIDerivedType(tag: DW_TAG_member, name: "delete_mem_notify", scope: !6082, file: !6076, line: 157, baseType: !6144, size: 64, offset: 448)
!6144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6145, size: 64)
!6145 = !DISubroutineType(types: !6146)
!6146 = !{null, !5616}
!6147 = !DIDerivedType(tag: DW_TAG_member, name: "swap_notify", scope: !6082, file: !6076, line: 162, baseType: !6144, size: 64, offset: 512)
!6148 = !DIDerivedType(tag: DW_TAG_member, name: "io_mem_reserve", scope: !6082, file: !6076, line: 170, baseType: !6149, size: 64, offset: 576)
!6149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6150, size: 64)
!6150 = !DISubroutineType(types: !6151)
!6151 = !{!38, !6074, !6126}
!6152 = !DIDerivedType(tag: DW_TAG_member, name: "io_mem_free", scope: !6082, file: !6076, line: 172, baseType: !6153, size: 64, offset: 640)
!6153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6154, size: 64)
!6154 = !DISubroutineType(types: !6155)
!6155 = !{null, !6074, !6126}
!6156 = !DIDerivedType(tag: DW_TAG_member, name: "io_mem_pfn", scope: !6082, file: !6076, line: 181, baseType: !6157, size: 64, offset: 704)
!6157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6158, size: 64)
!6158 = !DISubroutineType(types: !6159)
!6159 = !{!55, !5616, !55}
!6160 = !DIDerivedType(tag: DW_TAG_member, name: "access_memory", scope: !6082, file: !6076, line: 198, baseType: !6161, size: 64, offset: 768)
!6161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6162, size: 64)
!6162 = !DISubroutineType(types: !6163)
!6163 = !{!38, !5616, !55, !36, !38, !38}
!6164 = !DIDerivedType(tag: DW_TAG_member, name: "release_notify", scope: !6082, file: !6076, line: 209, baseType: !6144, size: 64, offset: 832)
!6165 = !DIDerivedType(tag: DW_TAG_member, name: "sysman", scope: !6075, file: !6076, line: 232, baseType: !6166, size: 960, offset: 192)
!6166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_resource_manager", file: !6115, line: 151, size: 960, elements: !6167)
!6167 = !{!6168, !6169, !6170, !6171, !6172, !6196, !6197, !6247, !6249}
!6168 = !DIDerivedType(tag: DW_TAG_member, name: "use_type", scope: !6166, file: !6115, line: 155, baseType: !1328, size: 8)
!6169 = !DIDerivedType(tag: DW_TAG_member, name: "use_tt", scope: !6166, file: !6115, line: 156, baseType: !1328, size: 8, offset: 8)
!6170 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !6166, file: !6115, line: 157, baseType: !6074, size: 64, offset: 64)
!6171 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6166, file: !6115, line: 158, baseType: !6102, size: 64, offset: 128)
!6172 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !6166, file: !6115, line: 159, baseType: !6173, size: 64, offset: 192)
!6173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6174, size: 64)
!6174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6175)
!6175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_resource_manager_func", file: !6115, line: 52, size: 320, elements: !6176)
!6176 = !{!6177, !6183, !6187, !6191, !6192}
!6177 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !6175, file: !6115, line: 74, baseType: !6178, size: 64)
!6178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6179, size: 64)
!6179 = !DISubroutineType(types: !6180)
!6180 = !{!38, !6181, !5616, !6112, !6182}
!6181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6166, size: 64)
!6182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6126, size: 64)
!6183 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !6175, file: !6115, line: 88, baseType: !6184, size: 64, offset: 64)
!6184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6185, size: 64)
!6185 = !DISubroutineType(types: !6186)
!6186 = !{null, !6181, !6126}
!6187 = !DIDerivedType(tag: DW_TAG_member, name: "intersects", scope: !6175, file: !6115, line: 102, baseType: !6188, size: 64, offset: 128)
!6188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6189, size: 64)
!6189 = !DISubroutineType(types: !6190)
!6190 = !{!1328, !6181, !6126, !6112, !51}
!6191 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !6175, file: !6115, line: 118, baseType: !6188, size: 64, offset: 192)
!6192 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !6175, file: !6115, line: 133, baseType: !6193, size: 64, offset: 256)
!6193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6194, size: 64)
!6194 = !DISubroutineType(types: !6195)
!6195 = !{null, !6181, !6000}
!6196 = !DIDerivedType(tag: DW_TAG_member, name: "move_lock", scope: !6166, file: !6115, line: 160, baseType: !75, size: 32, offset: 256)
!6197 = !DIDerivedType(tag: DW_TAG_member, name: "move", scope: !6166, file: !6115, line: 165, baseType: !6198, size: 64, offset: 320)
!6198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6199, size: 64)
!6199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !6200, line: 65, size: 512, elements: !6201)
!6200 = !DIFile(filename: "./include/linux/dma-fence.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "250a5e28e66b96be11f66b71d72fa176")
!6201 = !{!6202, !6203, !6236, !6242, !6243, !6244, !6245, !6246}
!6202 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6199, file: !6200, line: 66, baseType: !2210, size: 64)
!6203 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !6199, file: !6200, line: 67, baseType: !6204, size: 64, offset: 64)
!6204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6205, size: 64)
!6205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6206)
!6206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !6200, line: 125, size: 640, elements: !6207)
!6207 = !{!6208, !6209, !6213, !6214, !6218, !6219, !6223, !6227, !6231, !6232}
!6208 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !6206, file: !6200, line: 132, baseType: !1328, size: 8)
!6209 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !6206, file: !6200, line: 143, baseType: !6210, size: 64, offset: 64)
!6210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6211, size: 64)
!6211 = !DISubroutineType(types: !6212)
!6212 = !{!32, !6198}
!6213 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !6206, file: !6200, line: 155, baseType: !6210, size: 64, offset: 128)
!6214 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !6206, file: !6200, line: 192, baseType: !6215, size: 64, offset: 192)
!6215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6216, size: 64)
!6216 = !DISubroutineType(types: !6217)
!6217 = !{!1328, !6198}
!6218 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !6206, file: !6200, line: 209, baseType: !6215, size: 64, offset: 256)
!6219 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !6206, file: !6200, line: 227, baseType: !6220, size: 64, offset: 320)
!6220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6221, size: 64)
!6221 = !DISubroutineType(types: !6222)
!6222 = !{!445, !6198, !1328, !445}
!6223 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !6206, file: !6200, line: 238, baseType: !6224, size: 64, offset: 384)
!6224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6225, size: 64)
!6225 = !DISubroutineType(types: !6226)
!6226 = !{null, !6198}
!6227 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !6206, file: !6200, line: 248, baseType: !6228, size: 64, offset: 448)
!6228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6229, size: 64)
!6229 = !DISubroutineType(types: !6230)
!6230 = !{null, !6198, !410, !38}
!6231 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !6206, file: !6200, line: 258, baseType: !6228, size: 64, offset: 512)
!6232 = !DIDerivedType(tag: DW_TAG_member, name: "set_deadline", scope: !6206, file: !6200, line: 279, baseType: !6233, size: 64, offset: 576)
!6233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6234, size: 64)
!6234 = !DISubroutineType(types: !6235)
!6235 = !{null, !6198, !955}
!6236 = !DIDerivedType(tag: DW_TAG_member, scope: !6199, file: !6200, line: 84, baseType: !6237, size: 128, offset: 128)
!6237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6199, file: !6200, line: 84, size: 128, elements: !6238)
!6238 = !{!6239, !6240, !6241}
!6239 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !6237, file: !6200, line: 85, baseType: !113, size: 128)
!6240 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !6237, file: !6200, line: 87, baseType: !955, size: 64)
!6241 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !6237, file: !6200, line: 89, baseType: !713, size: 128, align: 64)
!6242 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !6199, file: !6200, line: 91, baseType: !557, size: 64, offset: 256)
!6243 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !6199, file: !6200, line: 92, baseType: !557, size: 64, offset: 320)
!6244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6199, file: !6200, line: 93, baseType: !55, size: 64, offset: 384)
!6245 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !6199, file: !6200, line: 94, baseType: !4553, size: 32, offset: 448)
!6246 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !6199, file: !6200, line: 95, baseType: !38, size: 32, offset: 480)
!6247 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !6166, file: !6115, line: 170, baseType: !6248, size: 512, offset: 384)
!6248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 512, elements: !796)
!6249 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !6166, file: !6115, line: 176, baseType: !6102, size: 64, offset: 896)
!6250 = !DIDerivedType(tag: DW_TAG_member, name: "man_drv", scope: !6075, file: !6076, line: 237, baseType: !6251, size: 512, offset: 1152)
!6251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6181, size: 512, elements: !990)
!6252 = !DIDerivedType(tag: DW_TAG_member, name: "vma_manager", scope: !6075, file: !6076, line: 242, baseType: !5902, size: 64, offset: 1664)
!6253 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !6075, file: !6076, line: 247, baseType: !6254, size: 14912, offset: 1728)
!6254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_pool", file: !6255, line: 69, size: 14912, elements: !6256)
!6255 = !DIFile(filename: "./include/drm/ttm/ttm_pool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6613193a1a6bffece87937e591b2c286")
!6256 = !{!6257, !6258, !6259, !6260, !6261}
!6257 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !6254, file: !6255, line: 70, baseType: !4066, size: 64)
!6258 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !6254, file: !6255, line: 71, baseType: !38, size: 32, offset: 64)
!6259 = !DIDerivedType(tag: DW_TAG_member, name: "use_dma_alloc", scope: !6254, file: !6255, line: 73, baseType: !1328, size: 8, offset: 96)
!6260 = !DIDerivedType(tag: DW_TAG_member, name: "use_dma32", scope: !6254, file: !6255, line: 74, baseType: !1328, size: 8, offset: 104)
!6261 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !6254, file: !6255, line: 78, baseType: !6262, size: 14784, offset: 128)
!6262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6263, size: 14784, elements: !411)
!6263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6254, file: !6255, line: 76, size: 4928, elements: !6264)
!6264 = !{!6265}
!6265 = !DIDerivedType(tag: DW_TAG_member, name: "orders", scope: !6263, file: !6255, line: 77, baseType: !6266, size: 4928)
!6266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6267, size: 4928, elements: !6276)
!6267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_pool_type", file: !6255, line: 49, size: 448, elements: !6268)
!6268 = !{!6269, !6271, !6272, !6273, !6274, !6275}
!6269 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !6267, file: !6255, line: 50, baseType: !6270, size: 64)
!6270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6254, size: 64)
!6271 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !6267, file: !6255, line: 51, baseType: !7, size: 32, offset: 64)
!6272 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !6267, file: !6255, line: 52, baseType: !288, size: 32, offset: 96)
!6273 = !DIDerivedType(tag: DW_TAG_member, name: "shrinker_list", scope: !6267, file: !6255, line: 54, baseType: !113, size: 128, offset: 128)
!6274 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6267, file: !6255, line: 56, baseType: !75, size: 32, offset: 256)
!6275 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !6267, file: !6255, line: 57, baseType: !113, size: 128, offset: 320)
!6276 = !{!6277}
!6277 = !DISubrange(count: 11)
!6278 = !DIDerivedType(tag: DW_TAG_member, name: "lru_lock", scope: !6075, file: !6076, line: 252, baseType: !75, size: 32, offset: 16640)
!6279 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !6075, file: !6076, line: 257, baseType: !113, size: 128, offset: 16704)
!6280 = !DIDerivedType(tag: DW_TAG_member, name: "dev_mapping", scope: !6075, file: !6076, line: 263, baseType: !480, size: 64, offset: 16832)
!6281 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !6075, file: !6076, line: 268, baseType: !2508, size: 64, offset: 16896)
!6282 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5617, file: !295, line: 105, baseType: !294, size: 32, offset: 2880)
!6283 = !DIDerivedType(tag: DW_TAG_member, name: "page_alignment", scope: !5617, file: !295, line: 106, baseType: !1362, size: 32, offset: 2912)
!6284 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5617, file: !295, line: 107, baseType: !6144, size: 64, offset: 2944)
!6285 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !5617, file: !295, line: 112, baseType: !4553, size: 32, offset: 3008)
!6286 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !5617, file: !295, line: 117, baseType: !6126, size: 64, offset: 3072)
!6287 = !DIDerivedType(tag: DW_TAG_member, name: "ttm", scope: !5617, file: !295, line: 118, baseType: !5557, size: 64, offset: 3136)
!6288 = !DIDerivedType(tag: DW_TAG_member, name: "deleted", scope: !5617, file: !295, line: 119, baseType: !1328, size: 8, offset: 3200)
!6289 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_move", scope: !5617, file: !295, line: 120, baseType: !6290, size: 64, offset: 3264)
!6290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6291, size: 64)
!6291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_lru_bulk_move", file: !6115, line: 255, size: 4096, elements: !6292)
!6292 = !{!6293}
!6293 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !6291, file: !6115, line: 256, baseType: !6294, size: 4096)
!6294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6295, size: 4096, elements: !6299)
!6295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_lru_bulk_move_pos", file: !6115, line: 242, size: 128, elements: !6296)
!6296 = !{!6297, !6298}
!6297 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !6295, file: !6115, line: 243, baseType: !6126, size: 64)
!6298 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !6295, file: !6115, line: 244, baseType: !6126, size: 64, offset: 64)
!6299 = !{!991, !797}
!6300 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !5617, file: !295, line: 121, baseType: !7, size: 32, offset: 3328)
!6301 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !5617, file: !295, line: 122, baseType: !7, size: 32, offset: 3360)
!6302 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_delete", scope: !5617, file: !295, line: 128, baseType: !1443, size: 256, offset: 3392)
!6303 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !5617, file: !295, line: 135, baseType: !5564, size: 64, offset: 3648)
!6304 = !{!6305, !6306, !6307, !6308, !6309, !6310, !6312}
!6305 = !DILocalVariable(name: "bo", arg: 1, scope: !5613, file: !3, line: 63, type: !5616)
!6306 = !DILocalVariable(name: "zero_alloc", arg: 2, scope: !5613, file: !3, line: 63, type: !1328)
!6307 = !DILocalVariable(name: "bdev", scope: !5613, file: !3, line: 65, type: !6074)
!6308 = !DILocalVariable(name: "ddev", scope: !5613, file: !3, line: 66, type: !5625)
!6309 = !DILocalVariable(name: "page_flags", scope: !5613, file: !3, line: 67, type: !1362)
!6310 = !DILocalVariable(name: "__ret_warn_on", scope: !6311, file: !3, line: 102, type: !38)
!6311 = distinct !DILexicalBlock(scope: !5613, file: !3, line: 102, column: 2)
!6312 = !DILocalVariable(name: "__flags", scope: !6313, file: !3, line: 102, type: !38)
!6313 = distinct !DILexicalBlock(scope: !6314, file: !3, line: 102, column: 2)
!6314 = distinct !DILexicalBlock(scope: !6311, file: !3, line: 102, column: 2)
!6315 = !DIGlobalVariableExpression(var: !6316, expr: !DIExpression())
!6316 = distinct !DIGlobalVariable(scope: null, file: !3, line: 95, type: !5608, isLocal: true, isDefinition: true)
!6317 = !DIGlobalVariableExpression(var: !6318, expr: !DIExpression())
!6318 = distinct !DIGlobalVariable(scope: null, file: !3, line: 102, type: !6319, isLocal: true, isDefinition: true)
!6319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 232, elements: !6320)
!6320 = !{!6321}
!6321 = !DISubrange(count: 29)
!6322 = !DIGlobalVariableExpression(var: !6323, expr: !DIExpression())
!6323 = distinct !DIGlobalVariable(scope: null, file: !3, line: 167, type: !6324, isLocal: true, isDefinition: true)
!6324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 304, elements: !6325)
!6325 = !{!6326}
!6326 = !DISubrange(count: 38)
!6327 = !DIGlobalVariableExpression(var: !6328, expr: !DIExpression())
!6328 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_tt_init366", scope: !2, file: !3, line: 172, type: !36, isLocal: true, isDefinition: true)
!6329 = !DIGlobalVariableExpression(var: !6330, expr: !DIExpression())
!6330 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_tt_fini367", scope: !2, file: !3, line: 189, type: !36, isLocal: true, isDefinition: true)
!6331 = !DIGlobalVariableExpression(var: !6332, expr: !DIExpression())
!6332 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_sg_tt_init368", scope: !2, file: !3, line: 208, type: !36, isLocal: true, isDefinition: true)
!6333 = !DIGlobalVariableExpression(var: !6334, expr: !DIExpression())
!6334 = distinct !DIGlobalVariable(scope: null, file: !3, line: 272, type: !6335, isLocal: true, isDefinition: true)
!6335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 72, elements: !6336)
!6336 = !{!6337}
!6337 = !DISubrange(count: 9)
!6338 = !DIGlobalVariableExpression(var: !6339, expr: !DIExpression())
!6339 = distinct !DIGlobalVariable(scope: null, file: !3, line: 274, type: !6340, isLocal: true, isDefinition: true)
!6340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 320, elements: !6341)
!6341 = !{!6342}
!6342 = !DISubrange(count: 40)
!6343 = !DIGlobalVariableExpression(var: !6344, expr: !DIExpression())
!6344 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_tt_populate369", scope: !2, file: !3, line: 365, type: !36, isLocal: true, isDefinition: true)
!6345 = !DIGlobalVariableExpression(var: !6346, expr: !DIExpression())
!6346 = distinct !DIGlobalVariable(scope: null, file: !3, line: 410, type: !6347, isLocal: true, isDefinition: true)
!6347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 80, elements: !1535)
!6348 = !DIGlobalVariableExpression(var: !6349, expr: !DIExpression())
!6349 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_kmap_iter_tt_init371", scope: !2, file: !3, line: 464, type: !36, isLocal: true, isDefinition: true)
!6350 = !DIGlobalVariableExpression(var: !6351, expr: !DIExpression())
!6351 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_tt_pages_limit372", scope: !2, file: !3, line: 470, type: !36, isLocal: true, isDefinition: true)
!6352 = !DIGlobalVariableExpression(var: !6353, expr: !DIExpression())
!6353 = distinct !DIGlobalVariable(name: "ttm_pages_limit", scope: !2, file: !3, line: 47, type: !55, isLocal: true, isDefinition: true)
!6354 = !DIGlobalVariableExpression(var: !6355, expr: !DIExpression())
!6355 = distinct !DIGlobalVariable(name: "ttm_dma32_pages_limit", scope: !2, file: !3, line: 52, type: !55, isLocal: true, isDefinition: true)
!6356 = !DIGlobalVariableExpression(var: !6357, expr: !DIExpression())
!6357 = distinct !DIGlobalVariable(name: "ttm_pages_allocated", scope: !2, file: !3, line: 57, type: !726, isLocal: true, isDefinition: true)
!6358 = !DIGlobalVariableExpression(var: !6359, expr: !DIExpression())
!6359 = distinct !DIGlobalVariable(name: "ttm_dma32_pages_allocated", scope: !2, file: !3, line: 58, type: !726, isLocal: true, isDefinition: true)
!6360 = !DIGlobalVariableExpression(var: !6361, expr: !DIExpression())
!6361 = distinct !DIGlobalVariable(name: "__param_str_pages_limit", scope: !2, file: !3, line: 50, type: !6362, isLocal: true, isDefinition: true)
!6362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 128, elements: !1768)
!6363 = !DIGlobalVariableExpression(var: !6364, expr: !DIExpression())
!6364 = distinct !DIGlobalVariable(name: "__param_str_dma32_pages_limit", scope: !2, file: !3, line: 55, type: !6365, isLocal: true, isDefinition: true)
!6365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 176, elements: !6366)
!6366 = !{!6367}
!6367 = !DISubrange(count: 22)
!6368 = !DIGlobalVariableExpression(var: !6369, expr: !DIExpression())
!6369 = distinct !DIGlobalVariable(name: "ttm_tt_debugfs_shrink_fops", scope: !2, file: !3, line: 397, type: !3365, isLocal: true, isDefinition: true)
!6370 = !DIGlobalVariableExpression(var: !6371, expr: !DIExpression())
!6371 = distinct !DIGlobalVariable(scope: null, file: !3, line: 394, type: !6372, isLocal: true, isDefinition: true)
!6372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 32, elements: !796)
!6373 = !DIGlobalVariableExpression(var: !6374, expr: !DIExpression())
!6374 = distinct !DIGlobalVariable(name: "ttm_kmap_iter_tt_ops", scope: !2, file: !3, line: 438, type: !5533, isLocal: true, isDefinition: true)
!6375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 408, elements: !6376)
!6376 = !{!6377}
!6377 = !DISubrange(count: 51)
!6378 = !{i32 7, !"Dwarf Version", i32 5}
!6379 = !{i32 2, !"Debug Info Version", i32 3}
!6380 = !{i32 1, !"wchar_size", i32 2}
!6381 = !{i32 8, !"cf-protection-branch", i32 1}
!6382 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6383 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6384 = !{i32 1, !"Code Model", i32 2}
!6385 = !{i32 1, !"override-stack-alignment", i32 8}
!6386 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6387 = !DILocation(line: 63, column: 45, scope: !5613)
!6388 = !DILocation(line: 63, column: 54, scope: !5613)
!6389 = !DILocation(line: 65, column: 2, scope: !5613)
!6390 = !DILocation(line: 65, column: 21, scope: !5613)
!6391 = !DILocation(line: 65, column: 28, scope: !5613)
!6392 = !DILocation(line: 65, column: 32, scope: !5613)
!6393 = !DILocation(line: 66, column: 2, scope: !5613)
!6394 = !DILocation(line: 66, column: 21, scope: !5613)
!6395 = !DILocation(line: 66, column: 28, scope: !5613)
!6396 = !DILocation(line: 66, column: 32, scope: !5613)
!6397 = !DILocation(line: 66, column: 37, scope: !5613)
!6398 = !DILocation(line: 67, column: 2, scope: !5613)
!6399 = !DILocation(line: 67, column: 11, scope: !5613)
!6400 = !DILocation(line: 69, column: 2, scope: !5613)
!6401 = !DILocation(line: 69, column: 2, scope: !6402)
!6402 = distinct !DILexicalBlock(scope: !5613, file: !3, line: 69, column: 2)
!6403 = !DILocation(line: 71, column: 6, scope: !6404)
!6404 = distinct !DILexicalBlock(scope: !5613, file: !3, line: 71, column: 6)
!6405 = !DILocation(line: 71, column: 10, scope: !6404)
!6406 = !DILocation(line: 71, column: 6, scope: !5613)
!6407 = !DILocation(line: 72, column: 3, scope: !6404)
!6408 = !DILocation(line: 74, column: 10, scope: !5613)
!6409 = !DILocation(line: 74, column: 14, scope: !5613)
!6410 = !DILocation(line: 74, column: 2, scope: !5613)
!6411 = !DILocation(line: 76, column: 7, scope: !6412)
!6412 = distinct !DILexicalBlock(scope: !6413, file: !3, line: 76, column: 7)
!6413 = distinct !DILexicalBlock(scope: !5613, file: !3, line: 74, column: 20)
!6414 = !{i8 0, i8 2}
!6415 = !DILocation(line: 76, column: 7, scope: !6413)
!6416 = !DILocation(line: 77, column: 15, scope: !6412)
!6417 = !DILocation(line: 77, column: 4, scope: !6412)
!6418 = !DILocation(line: 78, column: 3, scope: !6413)
!6419 = !DILocation(line: 82, column: 14, scope: !6413)
!6420 = !DILocation(line: 83, column: 3, scope: !6413)
!6421 = !DILocation(line: 85, column: 3, scope: !6422)
!6422 = distinct !DILexicalBlock(scope: !6413, file: !3, line: 85, column: 3)
!6423 = !DILocation(line: 85, column: 3, scope: !6424)
!6424 = distinct !DILexicalBlock(scope: !6422, file: !3, line: 85, column: 3)
!6425 = !DILocation(line: 86, column: 3, scope: !6413)
!6426 = !DILocation(line: 93, column: 6, scope: !6427)
!6427 = distinct !DILexicalBlock(scope: !5613, file: !3, line: 93, column: 6)
!6428 = !DILocation(line: 93, column: 12, scope: !6427)
!6429 = !DILocation(line: 93, column: 17, scope: !6427)
!6430 = !DILocation(line: 93, column: 31, scope: !6427)
!6431 = !DILocation(line: 93, column: 34, scope: !6427)
!6432 = !DILocation(line: 93, column: 6, scope: !5613)
!6433 = !DILocation(line: 94, column: 14, scope: !6434)
!6434 = distinct !DILexicalBlock(scope: !6427, file: !3, line: 93, column: 78)
!6435 = !DILocation(line: 95, column: 3, scope: !6434)
!6436 = !DILocation(line: 95, column: 3, scope: !6437)
!6437 = distinct !DILexicalBlock(scope: !6438, file: !3, line: 95, column: 3)
!6438 = distinct !DILexicalBlock(scope: !6434, file: !3, line: 95, column: 3)
!6439 = !DILocation(line: 95, column: 3, scope: !6438)
!6440 = !DILocation(line: 95, column: 3, scope: !6441)
!6441 = distinct !DILexicalBlock(scope: !6437, file: !3, line: 95, column: 3)
!6442 = !DILocation(line: 95, column: 3, scope: !6443)
!6443 = distinct !DILexicalBlock(scope: !6441, file: !3, line: 95, column: 3)
!6444 = !DILocation(line: 95, column: 3, scope: !6445)
!6445 = distinct !DILexicalBlock(scope: !6443, file: !3, line: 95, column: 3)
!6446 = !DILocation(line: 96, column: 2, scope: !6434)
!6447 = !DILocation(line: 98, column: 12, scope: !5613)
!6448 = !DILocation(line: 98, column: 18, scope: !5613)
!6449 = !DILocation(line: 98, column: 25, scope: !5613)
!6450 = !DILocation(line: 98, column: 39, scope: !5613)
!6451 = !DILocation(line: 98, column: 43, scope: !5613)
!6452 = !DILocation(line: 98, column: 2, scope: !5613)
!6453 = !DILocation(line: 98, column: 6, scope: !5613)
!6454 = !DILocation(line: 98, column: 10, scope: !5613)
!6455 = !DILocation(line: 99, column: 6, scope: !6456)
!6456 = distinct !DILexicalBlock(scope: !5613, file: !3, line: 99, column: 6)
!6457 = !DILocation(line: 99, column: 6, scope: !5613)
!6458 = !DILocation(line: 100, column: 3, scope: !6456)
!6459 = !DILocation(line: 102, column: 2, scope: !6311)
!6460 = !DILocation(line: 0, scope: !6311)
!6461 = !DILocation(line: 102, column: 2, scope: !6314)
!6462 = !DILocation(line: 102, column: 2, scope: !6313)
!6463 = !DILocation(line: 102, column: 2, scope: !6464)
!6464 = distinct !DILexicalBlock(scope: !6313, file: !3, line: 102, column: 2)
!6465 = !DILocation(line: 102, column: 2, scope: !6466)
!6466 = distinct !DILexicalBlock(scope: !6313, file: !3, line: 102, column: 2)
!6467 = !{i64 2156205327, i64 2156205356, i64 2156205402, i64 2156205460, i64 2156205514, i64 2156205568, i64 2156205623, i64 2156205654, i64 2156205962, i64 2156205968, i64 2156206015, i64 2156206038, i64 2156206064}
!6468 = !DILocation(line: 102, column: 2, scope: !6469)
!6469 = distinct !DILexicalBlock(scope: !6313, file: !3, line: 102, column: 2)
!6470 = !DILocation(line: 102, column: 2, scope: !5613)
!6471 = !DILocation(line: 105, column: 2, scope: !5613)
!6472 = !DILocation(line: 106, column: 1, scope: !5613)
!6473 = !DISubprogram(name: "_printk", scope: !6010, file: !6010, line: 153, type: !6474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6474 = !DISubroutineType(types: !6475)
!6475 = !{!38, !32, null}
!6476 = distinct !DISubprogram(name: "cc_platform_has", scope: !301, file: !301, line: 113, type: !6477, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6479)
!6477 = !DISubroutineType(types: !6478)
!6478 = !{!1328, !300}
!6479 = !{!6480}
!6480 = !DILocalVariable(name: "attr", arg: 1, scope: !6476, file: !301, line: 113, type: !300)
!6481 = !DILocation(line: 113, column: 49, scope: !6476)
!6482 = !DILocation(line: 113, column: 57, scope: !6476)
!6483 = !DISubprogram(name: "_dev_info", scope: !6484, file: !6484, line: 56, type: !6485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6484 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!6485 = !DISubroutineType(types: !6486)
!6486 = !{null, !4082, !32, null}
!6487 = distinct !DISubprogram(name: "ttm_tt_destroy", scope: !3, file: !3, line: 141, type: !6105, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6488)
!6488 = !{!6489, !6490}
!6489 = !DILocalVariable(name: "bdev", arg: 1, scope: !6487, file: !3, line: 141, type: !6074)
!6490 = !DILocalVariable(name: "ttm", arg: 2, scope: !6487, file: !3, line: 141, type: !5557)
!6491 = !DILocation(line: 141, column: 40, scope: !6487)
!6492 = !DILocation(line: 141, column: 61, scope: !6487)
!6493 = !DILocation(line: 143, column: 2, scope: !6487)
!6494 = !DILocation(line: 143, column: 8, scope: !6487)
!6495 = !DILocation(line: 143, column: 15, scope: !6487)
!6496 = !DILocation(line: 143, column: 30, scope: !6487)
!6497 = !DILocation(line: 143, column: 36, scope: !6487)
!6498 = !DILocation(line: 144, column: 1, scope: !6487)
!6499 = distinct !DISubprogram(name: "ttm_tt_init", scope: !3, file: !3, line: 160, type: !6500, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6502)
!6500 = !DISubroutineType(types: !6501)
!6501 = !{!38, !5557, !5616, !1362, !288, !55}
!6502 = !{!6503, !6504, !6505, !6506, !6507}
!6503 = !DILocalVariable(name: "ttm", arg: 1, scope: !6499, file: !3, line: 160, type: !5557)
!6504 = !DILocalVariable(name: "bo", arg: 2, scope: !6499, file: !3, line: 160, type: !5616)
!6505 = !DILocalVariable(name: "page_flags", arg: 3, scope: !6499, file: !3, line: 161, type: !1362)
!6506 = !DILocalVariable(name: "caching", arg: 4, scope: !6499, file: !3, line: 161, type: !288)
!6507 = !DILocalVariable(name: "extra_pages", arg: 5, scope: !6499, file: !3, line: 162, type: !55)
!6508 = !DILocation(line: 160, column: 32, scope: !6499)
!6509 = !DILocation(line: 160, column: 63, scope: !6499)
!6510 = !DILocation(line: 161, column: 12, scope: !6499)
!6511 = !DILocation(line: 161, column: 41, scope: !6499)
!6512 = !DILocation(line: 162, column: 17, scope: !6499)
!6513 = !DILocation(line: 164, column: 21, scope: !6499)
!6514 = !DILocation(line: 164, column: 26, scope: !6499)
!6515 = !DILocation(line: 164, column: 30, scope: !6499)
!6516 = !DILocation(line: 164, column: 42, scope: !6499)
!6517 = !DILocation(line: 164, column: 51, scope: !6499)
!6518 = !DILocation(line: 164, column: 2, scope: !6499)
!6519 = !DILocation(line: 166, column: 34, scope: !6520)
!6520 = distinct !DILexicalBlock(scope: !6499, file: !3, line: 166, column: 6)
!6521 = !DILocation(line: 166, column: 6, scope: !6520)
!6522 = !DILocation(line: 166, column: 6, scope: !6499)
!6523 = !DILocation(line: 167, column: 3, scope: !6524)
!6524 = distinct !DILexicalBlock(scope: !6525, file: !3, line: 167, column: 3)
!6525 = distinct !DILexicalBlock(scope: !6520, file: !3, line: 166, column: 40)
!6526 = !DILocation(line: 167, column: 3, scope: !6527)
!6527 = distinct !DILexicalBlock(scope: !6524, file: !3, line: 167, column: 3)
!6528 = !DILocation(line: 168, column: 3, scope: !6525)
!6529 = !DILocation(line: 170, column: 2, scope: !6499)
!6530 = !DILocation(line: 171, column: 1, scope: !6499)
!6531 = distinct !DISubprogram(name: "ttm_tt_init_fields", scope: !3, file: !3, line: 146, type: !6532, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6534)
!6532 = !DISubroutineType(types: !6533)
!6533 = !{null, !5557, !5616, !1362, !288, !55}
!6534 = !{!6535, !6536, !6537, !6538, !6539}
!6535 = !DILocalVariable(name: "ttm", arg: 1, scope: !6531, file: !3, line: 146, type: !5557)
!6536 = !DILocalVariable(name: "bo", arg: 2, scope: !6531, file: !3, line: 147, type: !5616)
!6537 = !DILocalVariable(name: "page_flags", arg: 3, scope: !6531, file: !3, line: 148, type: !1362)
!6538 = !DILocalVariable(name: "caching", arg: 4, scope: !6531, file: !3, line: 149, type: !288)
!6539 = !DILocalVariable(name: "extra_pages", arg: 5, scope: !6531, file: !3, line: 150, type: !55)
!6540 = !DILocation(line: 146, column: 47, scope: !6531)
!6541 = !DILocation(line: 147, column: 37, scope: !6531)
!6542 = !DILocation(line: 148, column: 20, scope: !6531)
!6543 = !DILocation(line: 149, column: 28, scope: !6531)
!6544 = !DILocation(line: 150, column: 25, scope: !6531)
!6545 = !DILocation(line: 152, column: 20, scope: !6531)
!6546 = !DILocation(line: 152, column: 46, scope: !6531)
!6547 = !DILocation(line: 152, column: 63, scope: !6531)
!6548 = !DILocation(line: 152, column: 61, scope: !6531)
!6549 = !DILocation(line: 152, column: 19, scope: !6531)
!6550 = !DILocation(line: 152, column: 2, scope: !6531)
!6551 = !DILocation(line: 152, column: 7, scope: !6531)
!6552 = !DILocation(line: 152, column: 17, scope: !6531)
!6553 = !DILocation(line: 153, column: 20, scope: !6531)
!6554 = !DILocation(line: 153, column: 2, scope: !6531)
!6555 = !DILocation(line: 153, column: 7, scope: !6531)
!6556 = !DILocation(line: 153, column: 18, scope: !6531)
!6557 = !DILocation(line: 154, column: 2, scope: !6531)
!6558 = !DILocation(line: 154, column: 7, scope: !6531)
!6559 = !DILocation(line: 154, column: 19, scope: !6531)
!6560 = !DILocation(line: 155, column: 2, scope: !6531)
!6561 = !DILocation(line: 155, column: 7, scope: !6531)
!6562 = !DILocation(line: 155, column: 20, scope: !6531)
!6563 = !DILocation(line: 156, column: 12, scope: !6531)
!6564 = !DILocation(line: 156, column: 16, scope: !6531)
!6565 = !DILocation(line: 156, column: 2, scope: !6531)
!6566 = !DILocation(line: 156, column: 7, scope: !6531)
!6567 = !DILocation(line: 156, column: 10, scope: !6531)
!6568 = !DILocation(line: 157, column: 17, scope: !6531)
!6569 = !DILocation(line: 157, column: 2, scope: !6531)
!6570 = !DILocation(line: 157, column: 7, scope: !6531)
!6571 = !DILocation(line: 157, column: 15, scope: !6531)
!6572 = !DILocation(line: 158, column: 1, scope: !6531)
!6573 = distinct !DISubprogram(name: "ttm_tt_alloc_page_directory", scope: !3, file: !3, line: 111, type: !6574, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6576)
!6574 = !DISubroutineType(types: !6575)
!6575 = !{!38, !5557}
!6576 = !{!6577}
!6577 = !DILocalVariable(name: "ttm", arg: 1, scope: !6573, file: !3, line: 111, type: !5557)
!6578 = !DILocation(line: 111, column: 55, scope: !6573)
!6579 = !DILocation(line: 113, column: 24, scope: !6573)
!6580 = !DILocation(line: 113, column: 29, scope: !6573)
!6581 = !DILocation(line: 113, column: 15, scope: !6573)
!6582 = !DILocation(line: 113, column: 2, scope: !6573)
!6583 = !DILocation(line: 113, column: 7, scope: !6573)
!6584 = !DILocation(line: 113, column: 13, scope: !6573)
!6585 = !DILocation(line: 114, column: 7, scope: !6586)
!6586 = distinct !DILexicalBlock(scope: !6573, file: !3, line: 114, column: 6)
!6587 = !DILocation(line: 114, column: 12, scope: !6586)
!6588 = !DILocation(line: 114, column: 6, scope: !6573)
!6589 = !DILocation(line: 115, column: 3, scope: !6586)
!6590 = !DILocation(line: 117, column: 2, scope: !6573)
!6591 = !DILocation(line: 118, column: 1, scope: !6573)
!6592 = distinct !DISubprogram(name: "ttm_tt_fini", scope: !3, file: !3, line: 174, type: !6593, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6595)
!6593 = !DISubroutineType(types: !6594)
!6594 = !{null, !5557}
!6595 = !{!6596, !6597, !6599}
!6596 = !DILocalVariable(name: "ttm", arg: 1, scope: !6592, file: !3, line: 174, type: !5557)
!6597 = !DILocalVariable(name: "__ret_warn_on", scope: !6598, file: !3, line: 176, type: !38)
!6598 = distinct !DILexicalBlock(scope: !6592, file: !3, line: 176, column: 2)
!6599 = !DILocalVariable(name: "__flags", scope: !6600, file: !3, line: 176, type: !38)
!6600 = distinct !DILexicalBlock(scope: !6601, file: !3, line: 176, column: 2)
!6601 = distinct !DILexicalBlock(scope: !6598, file: !3, line: 176, column: 2)
!6602 = !DILocation(line: 174, column: 33, scope: !6592)
!6603 = !DILocation(line: 176, column: 2, scope: !6598)
!6604 = !DILocation(line: 176, column: 2, scope: !6601)
!6605 = !DILocation(line: 176, column: 2, scope: !6600)
!6606 = !DILocation(line: 176, column: 2, scope: !6607)
!6607 = distinct !DILexicalBlock(scope: !6600, file: !3, line: 176, column: 2)
!6608 = !DILocation(line: 176, column: 2, scope: !6609)
!6609 = distinct !DILexicalBlock(scope: !6600, file: !3, line: 176, column: 2)
!6610 = !{i64 2156210043, i64 2156210072, i64 2156210118, i64 2156210176, i64 2156210230, i64 2156210284, i64 2156210339, i64 2156210370, i64 2156210678, i64 2156210684, i64 2156210731, i64 2156210754, i64 2156210780}
!6611 = !DILocation(line: 176, column: 2, scope: !6612)
!6612 = distinct !DILexicalBlock(scope: !6600, file: !3, line: 176, column: 2)
!6613 = !DILocation(line: 176, column: 2, scope: !6592)
!6614 = !DILocation(line: 178, column: 6, scope: !6615)
!6615 = distinct !DILexicalBlock(scope: !6592, file: !3, line: 178, column: 6)
!6616 = !DILocation(line: 178, column: 11, scope: !6615)
!6617 = !DILocation(line: 178, column: 6, scope: !6592)
!6618 = !DILocation(line: 179, column: 8, scope: !6615)
!6619 = !DILocation(line: 179, column: 13, scope: !6615)
!6620 = !DILocation(line: 179, column: 3, scope: !6615)
!6621 = !DILocation(line: 180, column: 2, scope: !6592)
!6622 = !DILocation(line: 180, column: 7, scope: !6592)
!6623 = !DILocation(line: 180, column: 20, scope: !6592)
!6624 = !DILocation(line: 182, column: 6, scope: !6625)
!6625 = distinct !DILexicalBlock(scope: !6592, file: !3, line: 182, column: 6)
!6626 = !DILocation(line: 182, column: 11, scope: !6625)
!6627 = !DILocation(line: 182, column: 6, scope: !6592)
!6628 = !DILocation(line: 183, column: 10, scope: !6625)
!6629 = !DILocation(line: 183, column: 15, scope: !6625)
!6630 = !DILocation(line: 183, column: 3, scope: !6625)
!6631 = !DILocation(line: 185, column: 10, scope: !6625)
!6632 = !DILocation(line: 185, column: 15, scope: !6625)
!6633 = !DILocation(line: 185, column: 3, scope: !6625)
!6634 = !DILocation(line: 186, column: 2, scope: !6592)
!6635 = !DILocation(line: 186, column: 7, scope: !6592)
!6636 = !DILocation(line: 186, column: 13, scope: !6592)
!6637 = !DILocation(line: 187, column: 2, scope: !6592)
!6638 = !DILocation(line: 187, column: 7, scope: !6592)
!6639 = !DILocation(line: 187, column: 19, scope: !6592)
!6640 = !DILocation(line: 188, column: 1, scope: !6592)
!6641 = !DISubprogram(name: "fput", scope: !6642, file: !6642, line: 17, type: !3566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6642 = !DIFile(filename: "./include/linux/file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "784aacb17b41d4e231ce3854c643bfe6")
!6643 = !DISubprogram(name: "kvfree", scope: !6644, file: !6644, line: 766, type: !6645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6644 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!6645 = !DISubroutineType(types: !6646)
!6646 = !{null, !1257}
!6647 = distinct !DISubprogram(name: "ttm_sg_tt_init", scope: !3, file: !3, line: 191, type: !6648, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6650)
!6648 = !DISubroutineType(types: !6649)
!6649 = !{!38, !5557, !5616, !1362, !288}
!6650 = !{!6651, !6652, !6653, !6654, !6655}
!6651 = !DILocalVariable(name: "ttm", arg: 1, scope: !6647, file: !3, line: 191, type: !5557)
!6652 = !DILocalVariable(name: "bo", arg: 2, scope: !6647, file: !3, line: 191, type: !5616)
!6653 = !DILocalVariable(name: "page_flags", arg: 3, scope: !6647, file: !3, line: 192, type: !1362)
!6654 = !DILocalVariable(name: "caching", arg: 4, scope: !6647, file: !3, line: 192, type: !288)
!6655 = !DILocalVariable(name: "ret", scope: !6647, file: !3, line: 194, type: !38)
!6656 = !DILocation(line: 191, column: 35, scope: !6647)
!6657 = !DILocation(line: 191, column: 66, scope: !6647)
!6658 = !DILocation(line: 192, column: 15, scope: !6647)
!6659 = !DILocation(line: 192, column: 44, scope: !6647)
!6660 = !DILocation(line: 194, column: 2, scope: !6647)
!6661 = !DILocation(line: 194, column: 6, scope: !6647)
!6662 = !DILocation(line: 196, column: 21, scope: !6647)
!6663 = !DILocation(line: 196, column: 26, scope: !6647)
!6664 = !DILocation(line: 196, column: 30, scope: !6647)
!6665 = !DILocation(line: 196, column: 42, scope: !6647)
!6666 = !DILocation(line: 196, column: 2, scope: !6647)
!6667 = !DILocation(line: 198, column: 6, scope: !6668)
!6668 = distinct !DILexicalBlock(scope: !6647, file: !3, line: 198, column: 6)
!6669 = !DILocation(line: 198, column: 17, scope: !6668)
!6670 = !DILocation(line: 198, column: 6, scope: !6647)
!6671 = !DILocation(line: 199, column: 40, scope: !6668)
!6672 = !DILocation(line: 199, column: 9, scope: !6668)
!6673 = !DILocation(line: 199, column: 7, scope: !6668)
!6674 = !DILocation(line: 199, column: 3, scope: !6668)
!6675 = !DILocation(line: 201, column: 41, scope: !6668)
!6676 = !DILocation(line: 201, column: 9, scope: !6668)
!6677 = !DILocation(line: 201, column: 7, scope: !6668)
!6678 = !DILocation(line: 202, column: 6, scope: !6679)
!6679 = distinct !DILexicalBlock(scope: !6647, file: !3, line: 202, column: 6)
!6680 = !DILocation(line: 202, column: 6, scope: !6647)
!6681 = !DILocation(line: 203, column: 3, scope: !6682)
!6682 = distinct !DILexicalBlock(scope: !6683, file: !3, line: 203, column: 3)
!6683 = distinct !DILexicalBlock(scope: !6679, file: !3, line: 202, column: 11)
!6684 = !DILocation(line: 203, column: 3, scope: !6685)
!6685 = distinct !DILexicalBlock(scope: !6682, file: !3, line: 203, column: 3)
!6686 = !DILocation(line: 204, column: 3, scope: !6683)
!6687 = !DILocation(line: 206, column: 2, scope: !6647)
!6688 = !DILocation(line: 207, column: 1, scope: !6647)
!6689 = distinct !DISubprogram(name: "ttm_sg_tt_alloc_page_directory", scope: !3, file: !3, line: 131, type: !6574, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6690)
!6690 = !{!6691}
!6691 = !DILocalVariable(name: "ttm", arg: 1, scope: !6689, file: !3, line: 131, type: !5557)
!6692 = !DILocation(line: 131, column: 58, scope: !6689)
!6693 = !DILocation(line: 133, column: 30, scope: !6689)
!6694 = !DILocation(line: 133, column: 35, scope: !6689)
!6695 = !DILocation(line: 133, column: 21, scope: !6689)
!6696 = !DILocation(line: 133, column: 2, scope: !6689)
!6697 = !DILocation(line: 133, column: 7, scope: !6689)
!6698 = !DILocation(line: 133, column: 19, scope: !6689)
!6699 = !DILocation(line: 135, column: 7, scope: !6700)
!6700 = distinct !DILexicalBlock(scope: !6689, file: !3, line: 135, column: 6)
!6701 = !DILocation(line: 135, column: 12, scope: !6700)
!6702 = !DILocation(line: 135, column: 6, scope: !6689)
!6703 = !DILocation(line: 136, column: 3, scope: !6700)
!6704 = !DILocation(line: 138, column: 2, scope: !6689)
!6705 = !DILocation(line: 139, column: 1, scope: !6689)
!6706 = distinct !DISubprogram(name: "ttm_dma_tt_alloc_page_directory", scope: !3, file: !3, line: 120, type: !6574, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6707)
!6707 = !{!6708}
!6708 = !DILocalVariable(name: "ttm", arg: 1, scope: !6706, file: !3, line: 120, type: !5557)
!6709 = !DILocation(line: 120, column: 59, scope: !6706)
!6710 = !DILocation(line: 122, column: 24, scope: !6706)
!6711 = !DILocation(line: 122, column: 29, scope: !6706)
!6712 = !DILocation(line: 122, column: 15, scope: !6706)
!6713 = !DILocation(line: 122, column: 2, scope: !6706)
!6714 = !DILocation(line: 122, column: 7, scope: !6706)
!6715 = !DILocation(line: 122, column: 13, scope: !6706)
!6716 = !DILocation(line: 124, column: 7, scope: !6717)
!6717 = distinct !DILexicalBlock(scope: !6706, file: !3, line: 124, column: 6)
!6718 = !DILocation(line: 124, column: 12, scope: !6717)
!6719 = !DILocation(line: 124, column: 6, scope: !6706)
!6720 = !DILocation(line: 125, column: 3, scope: !6717)
!6721 = !DILocation(line: 127, column: 30, scope: !6706)
!6722 = !DILocation(line: 127, column: 35, scope: !6706)
!6723 = !DILocation(line: 127, column: 43, scope: !6706)
!6724 = !DILocation(line: 127, column: 48, scope: !6706)
!6725 = !DILocation(line: 127, column: 41, scope: !6706)
!6726 = !DILocation(line: 127, column: 2, scope: !6706)
!6727 = !DILocation(line: 127, column: 7, scope: !6706)
!6728 = !DILocation(line: 127, column: 19, scope: !6706)
!6729 = !DILocation(line: 128, column: 2, scope: !6706)
!6730 = !DILocation(line: 129, column: 1, scope: !6706)
!6731 = distinct !DISubprogram(name: "ttm_tt_swapin", scope: !3, file: !3, line: 210, type: !6574, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6732)
!6732 = !{!6733, !6734, !6735, !6736, !6737, !6738, !6739, !6740, !6741}
!6733 = !DILocalVariable(name: "ttm", arg: 1, scope: !6731, file: !3, line: 210, type: !5557)
!6734 = !DILocalVariable(name: "swap_space", scope: !6731, file: !3, line: 212, type: !480)
!6735 = !DILocalVariable(name: "swap_storage", scope: !6731, file: !3, line: 213, type: !700)
!6736 = !DILocalVariable(name: "from_page", scope: !6731, file: !3, line: 214, type: !2078)
!6737 = !DILocalVariable(name: "to_page", scope: !6731, file: !3, line: 215, type: !2078)
!6738 = !DILocalVariable(name: "gfp_mask", scope: !6731, file: !3, line: 216, type: !821)
!6739 = !DILocalVariable(name: "i", scope: !6731, file: !3, line: 217, type: !38)
!6740 = !DILocalVariable(name: "ret", scope: !6731, file: !3, line: 217, type: !38)
!6741 = !DILabel(scope: !6731, name: "out_err", file: !3, line: 248)
!6742 = !DILocation(line: 210, column: 34, scope: !6731)
!6743 = !DILocation(line: 212, column: 2, scope: !6731)
!6744 = !DILocation(line: 212, column: 24, scope: !6731)
!6745 = !DILocation(line: 213, column: 2, scope: !6731)
!6746 = !DILocation(line: 213, column: 15, scope: !6731)
!6747 = !DILocation(line: 214, column: 2, scope: !6731)
!6748 = !DILocation(line: 214, column: 15, scope: !6731)
!6749 = !DILocation(line: 215, column: 2, scope: !6731)
!6750 = !DILocation(line: 215, column: 15, scope: !6731)
!6751 = !DILocation(line: 216, column: 2, scope: !6731)
!6752 = !DILocation(line: 216, column: 8, scope: !6731)
!6753 = !DILocation(line: 217, column: 2, scope: !6731)
!6754 = !DILocation(line: 217, column: 6, scope: !6731)
!6755 = !DILocation(line: 217, column: 9, scope: !6731)
!6756 = !DILocation(line: 219, column: 17, scope: !6731)
!6757 = !DILocation(line: 219, column: 22, scope: !6731)
!6758 = !DILocation(line: 219, column: 15, scope: !6731)
!6759 = !DILocation(line: 220, column: 2, scope: !6731)
!6760 = !DILocation(line: 220, column: 2, scope: !6761)
!6761 = distinct !DILexicalBlock(scope: !6762, file: !3, line: 220, column: 2)
!6762 = distinct !DILexicalBlock(scope: !6731, file: !3, line: 220, column: 2)
!6763 = !DILocation(line: 220, column: 2, scope: !6762)
!6764 = !DILocation(line: 220, column: 2, scope: !6765)
!6765 = distinct !DILexicalBlock(scope: !6761, file: !3, line: 220, column: 2)
!6766 = !DILocation(line: 220, column: 2, scope: !6767)
!6767 = distinct !DILexicalBlock(scope: !6765, file: !3, line: 220, column: 2)
!6768 = !DILocation(line: 220, column: 2, scope: !6769)
!6769 = distinct !DILexicalBlock(scope: !6765, file: !3, line: 220, column: 2)
!6770 = !{i64 2156215251, i64 2156215280, i64 2156215326, i64 2156215384, i64 2156215438, i64 2156215492, i64 2156215547, i64 2156215578}
!6771 = !DILocation(line: 222, column: 15, scope: !6731)
!6772 = !DILocation(line: 222, column: 29, scope: !6731)
!6773 = !DILocation(line: 222, column: 13, scope: !6731)
!6774 = !DILocation(line: 223, column: 30, scope: !6731)
!6775 = !DILocation(line: 223, column: 13, scope: !6731)
!6776 = !DILocation(line: 223, column: 11, scope: !6731)
!6777 = !DILocation(line: 225, column: 9, scope: !6778)
!6778 = distinct !DILexicalBlock(scope: !6731, file: !3, line: 225, column: 2)
!6779 = !DILocation(line: 225, column: 7, scope: !6778)
!6780 = !DILocation(line: 225, column: 14, scope: !6781)
!6781 = distinct !DILexicalBlock(scope: !6778, file: !3, line: 225, column: 2)
!6782 = !DILocation(line: 225, column: 18, scope: !6781)
!6783 = !DILocation(line: 225, column: 23, scope: !6781)
!6784 = !DILocation(line: 225, column: 16, scope: !6781)
!6785 = !DILocation(line: 225, column: 2, scope: !6778)
!6786 = !DILocation(line: 226, column: 43, scope: !6787)
!6787 = distinct !DILexicalBlock(scope: !6781, file: !3, line: 225, column: 39)
!6788 = !DILocation(line: 226, column: 55, scope: !6787)
!6789 = !DILocation(line: 227, column: 8, scope: !6787)
!6790 = !DILocation(line: 226, column: 15, scope: !6787)
!6791 = !DILocation(line: 226, column: 13, scope: !6787)
!6792 = !DILocation(line: 228, column: 14, scope: !6793)
!6793 = distinct !DILexicalBlock(scope: !6787, file: !3, line: 228, column: 7)
!6794 = !DILocation(line: 228, column: 7, scope: !6793)
!6795 = !DILocation(line: 228, column: 7, scope: !6787)
!6796 = !DILocation(line: 229, column: 18, scope: !6797)
!6797 = distinct !DILexicalBlock(scope: !6793, file: !3, line: 228, column: 26)
!6798 = !DILocation(line: 229, column: 10, scope: !6797)
!6799 = !DILocation(line: 229, column: 8, scope: !6797)
!6800 = !DILocation(line: 230, column: 4, scope: !6797)
!6801 = !DILocation(line: 232, column: 13, scope: !6787)
!6802 = !DILocation(line: 232, column: 18, scope: !6787)
!6803 = !DILocation(line: 232, column: 24, scope: !6787)
!6804 = !DILocation(line: 232, column: 11, scope: !6787)
!6805 = !DILocation(line: 233, column: 7, scope: !6806)
!6806 = distinct !DILexicalBlock(scope: !6787, file: !3, line: 233, column: 7)
!6807 = !DILocation(line: 233, column: 7, scope: !6787)
!6808 = !DILocation(line: 234, column: 8, scope: !6809)
!6809 = distinct !DILexicalBlock(scope: !6806, file: !3, line: 233, column: 34)
!6810 = !DILocation(line: 235, column: 4, scope: !6809)
!6811 = !DILocation(line: 238, column: 17, scope: !6787)
!6812 = !DILocation(line: 238, column: 26, scope: !6787)
!6813 = !DILocation(line: 238, column: 3, scope: !6787)
!6814 = !DILocation(line: 239, column: 12, scope: !6787)
!6815 = !DILocation(line: 239, column: 3, scope: !6787)
!6816 = !DILocation(line: 240, column: 2, scope: !6787)
!6817 = !DILocation(line: 225, column: 34, scope: !6781)
!6818 = !DILocation(line: 225, column: 2, scope: !6781)
!6819 = distinct !{!6819, !6785, !6820, !6821, !6822}
!6820 = !DILocation(line: 240, column: 2, scope: !6778)
!6821 = !{!"llvm.loop.mustprogress"}
!6822 = !{!"llvm.loop.unroll.disable"}
!6823 = !DILocation(line: 242, column: 7, scope: !6731)
!6824 = !DILocation(line: 242, column: 2, scope: !6731)
!6825 = !DILocation(line: 243, column: 2, scope: !6731)
!6826 = !DILocation(line: 243, column: 7, scope: !6731)
!6827 = !DILocation(line: 243, column: 20, scope: !6731)
!6828 = !DILocation(line: 244, column: 2, scope: !6731)
!6829 = !DILocation(line: 244, column: 7, scope: !6731)
!6830 = !DILocation(line: 244, column: 18, scope: !6731)
!6831 = !DILocation(line: 246, column: 2, scope: !6731)
!6832 = !DILocation(line: 248, column: 1, scope: !6731)
!6833 = !DILocation(line: 249, column: 9, scope: !6731)
!6834 = !DILocation(line: 249, column: 2, scope: !6731)
!6835 = !DILocation(line: 250, column: 1, scope: !6731)
!6836 = distinct !DISubprogram(name: "mapping_gfp_mask", scope: !3403, file: !3403, line: 309, type: !6837, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6839)
!6837 = !DISubroutineType(types: !6838)
!6838 = !{!821, !480}
!6839 = !{!6840}
!6840 = !DILocalVariable(name: "mapping", arg: 1, scope: !6836, file: !3403, line: 309, type: !480)
!6841 = !DILocation(line: 309, column: 61, scope: !6836)
!6842 = !DILocation(line: 311, column: 9, scope: !6836)
!6843 = !DILocation(line: 311, column: 18, scope: !6836)
!6844 = !DILocation(line: 311, column: 2, scope: !6836)
!6845 = !DISubprogram(name: "shmem_read_mapping_page_gfp", scope: !6846, file: !6846, line: 108, type: !6847, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6846 = !DIFile(filename: "./include/linux/shmem_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b153fed8cd66493548873b54521742e2")
!6847 = !DISubroutineType(types: !6848)
!6848 = !{!2078, !480, !55, !821}
!6849 = distinct !DISubprogram(name: "IS_ERR", scope: !6850, file: !6850, line: 59, type: !6851, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6853)
!6850 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6851 = !DISubroutineType(types: !6852)
!6852 = !{!1328, !1257}
!6853 = !{!6854}
!6854 = !DILocalVariable(name: "ptr", arg: 1, scope: !6849, file: !6850, line: 59, type: !1257)
!6855 = !DILocation(line: 59, column: 60, scope: !6849)
!6856 = !DILocation(line: 61, column: 9, scope: !6849)
!6857 = !DILocation(line: 61, column: 2, scope: !6849)
!6858 = distinct !DISubprogram(name: "PTR_ERR", scope: !6850, file: !6850, line: 49, type: !6859, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6861)
!6859 = !DISubroutineType(types: !6860)
!6860 = !{!445, !1257}
!6861 = !{!6862}
!6862 = !DILocalVariable(name: "ptr", arg: 1, scope: !6858, file: !6850, line: 49, type: !1257)
!6863 = !DILocation(line: 49, column: 61, scope: !6858)
!6864 = !DILocation(line: 51, column: 16, scope: !6858)
!6865 = !DILocation(line: 51, column: 9, scope: !6858)
!6866 = !DILocation(line: 51, column: 2, scope: !6858)
!6867 = distinct !DISubprogram(name: "copy_highpage", scope: !6868, file: !6868, line: 320, type: !6869, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6871)
!6868 = !DIFile(filename: "./include/linux/highmem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "44cc22a6674afa1c65f9d65e2d0f07bb")
!6869 = !DISubroutineType(types: !6870)
!6870 = !{null, !2078, !2078}
!6871 = !{!6872, !6873, !6874, !6875}
!6872 = !DILocalVariable(name: "to", arg: 1, scope: !6867, file: !6868, line: 320, type: !2078)
!6873 = !DILocalVariable(name: "from", arg: 2, scope: !6867, file: !6868, line: 320, type: !2078)
!6874 = !DILocalVariable(name: "vfrom", scope: !6867, file: !6868, line: 322, type: !410)
!6875 = !DILocalVariable(name: "vto", scope: !6867, file: !6868, line: 322, type: !410)
!6876 = !DILocation(line: 320, column: 47, scope: !6867)
!6877 = !DILocation(line: 320, column: 64, scope: !6867)
!6878 = !DILocation(line: 322, column: 2, scope: !6867)
!6879 = !DILocation(line: 322, column: 8, scope: !6867)
!6880 = !DILocation(line: 322, column: 16, scope: !6867)
!6881 = !DILocation(line: 324, column: 26, scope: !6867)
!6882 = !DILocation(line: 324, column: 10, scope: !6867)
!6883 = !DILocation(line: 324, column: 8, scope: !6867)
!6884 = !DILocation(line: 325, column: 24, scope: !6867)
!6885 = !DILocation(line: 325, column: 8, scope: !6867)
!6886 = !DILocation(line: 325, column: 6, scope: !6867)
!6887 = !DILocation(line: 326, column: 12, scope: !6867)
!6888 = !DILocation(line: 326, column: 17, scope: !6867)
!6889 = !DILocation(line: 326, column: 2, scope: !6867)
!6890 = !DILocation(line: 327, column: 23, scope: !6867)
!6891 = !DILocation(line: 327, column: 27, scope: !6867)
!6892 = !DILocation(line: 327, column: 2, scope: !6867)
!6893 = !DILocation(line: 328, column: 2, scope: !6867)
!6894 = !DILocation(line: 328, column: 2, scope: !6895)
!6895 = distinct !DILexicalBlock(scope: !6867, file: !6868, line: 328, column: 2)
!6896 = !DILocation(line: 328, column: 2, scope: !6897)
!6897 = distinct !DILexicalBlock(scope: !6895, file: !6868, line: 328, column: 2)
!6898 = !DILocation(line: 329, column: 2, scope: !6867)
!6899 = !DILocation(line: 329, column: 2, scope: !6900)
!6900 = distinct !DILexicalBlock(scope: !6867, file: !6868, line: 329, column: 2)
!6901 = !DILocation(line: 329, column: 2, scope: !6902)
!6902 = distinct !DILexicalBlock(scope: !6900, file: !6868, line: 329, column: 2)
!6903 = !DILocation(line: 330, column: 1, scope: !6867)
!6904 = distinct !DISubprogram(name: "put_page", scope: !1948, file: !1948, line: 1540, type: !2173, scopeLine: 1541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6905)
!6905 = !{!6906, !6907}
!6906 = !DILocalVariable(name: "page", arg: 1, scope: !6904, file: !1948, line: 1540, type: !2078)
!6907 = !DILocalVariable(name: "folio", scope: !6904, file: !1948, line: 1542, type: !3406)
!6908 = !DILocation(line: 1540, column: 42, scope: !6904)
!6909 = !DILocation(line: 1542, column: 2, scope: !6904)
!6910 = !DILocation(line: 1542, column: 16, scope: !6904)
!6911 = !DILocation(line: 1542, column: 24, scope: !6904)
!6912 = !DILocation(line: 1548, column: 31, scope: !6913)
!6913 = distinct !DILexicalBlock(scope: !6904, file: !1948, line: 1548, column: 6)
!6914 = !DILocation(line: 1548, column: 38, scope: !6913)
!6915 = !DILocation(line: 1548, column: 6, scope: !6913)
!6916 = !DILocation(line: 1548, column: 6, scope: !6904)
!6917 = !DILocation(line: 1549, column: 3, scope: !6913)
!6918 = !DILocation(line: 1550, column: 12, scope: !6904)
!6919 = !DILocation(line: 1550, column: 2, scope: !6904)
!6920 = !DILocation(line: 1551, column: 1, scope: !6904)
!6921 = distinct !DISubprogram(name: "ttm_tt_swapout", scope: !3, file: !3, line: 262, type: !6922, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6924)
!6922 = !DISubroutineType(types: !6923)
!6923 = !{!38, !6074, !5557, !821}
!6924 = !{!6925, !6926, !6927, !6928, !6929, !6930, !6931, !6932, !6933, !6934, !6935}
!6925 = !DILocalVariable(name: "bdev", arg: 1, scope: !6921, file: !3, line: 262, type: !6074)
!6926 = !DILocalVariable(name: "ttm", arg: 2, scope: !6921, file: !3, line: 262, type: !5557)
!6927 = !DILocalVariable(name: "gfp_flags", arg: 3, scope: !6921, file: !3, line: 263, type: !821)
!6928 = !DILocalVariable(name: "size", scope: !6921, file: !3, line: 265, type: !57)
!6929 = !DILocalVariable(name: "swap_space", scope: !6921, file: !3, line: 266, type: !480)
!6930 = !DILocalVariable(name: "swap_storage", scope: !6921, file: !3, line: 267, type: !700)
!6931 = !DILocalVariable(name: "from_page", scope: !6921, file: !3, line: 268, type: !2078)
!6932 = !DILocalVariable(name: "to_page", scope: !6921, file: !3, line: 269, type: !2078)
!6933 = !DILocalVariable(name: "i", scope: !6921, file: !3, line: 270, type: !38)
!6934 = !DILocalVariable(name: "ret", scope: !6921, file: !3, line: 270, type: !38)
!6935 = !DILabel(scope: !6921, name: "out_err", file: !3, line: 303)
!6936 = !DILocation(line: 262, column: 39, scope: !6921)
!6937 = !DILocation(line: 262, column: 60, scope: !6921)
!6938 = !DILocation(line: 263, column: 12, scope: !6921)
!6939 = !DILocation(line: 265, column: 2, scope: !6921)
!6940 = !DILocation(line: 265, column: 9, scope: !6921)
!6941 = !DILocation(line: 265, column: 24, scope: !6921)
!6942 = !DILocation(line: 265, column: 29, scope: !6921)
!6943 = !DILocation(line: 265, column: 16, scope: !6921)
!6944 = !DILocation(line: 265, column: 39, scope: !6921)
!6945 = !DILocation(line: 266, column: 2, scope: !6921)
!6946 = !DILocation(line: 266, column: 24, scope: !6921)
!6947 = !DILocation(line: 267, column: 2, scope: !6921)
!6948 = !DILocation(line: 267, column: 15, scope: !6921)
!6949 = !DILocation(line: 268, column: 2, scope: !6921)
!6950 = !DILocation(line: 268, column: 15, scope: !6921)
!6951 = !DILocation(line: 269, column: 2, scope: !6921)
!6952 = !DILocation(line: 269, column: 15, scope: !6921)
!6953 = !DILocation(line: 270, column: 2, scope: !6921)
!6954 = !DILocation(line: 270, column: 6, scope: !6921)
!6955 = !DILocation(line: 270, column: 9, scope: !6921)
!6956 = !DILocation(line: 272, column: 46, scope: !6921)
!6957 = !DILocation(line: 272, column: 17, scope: !6921)
!6958 = !DILocation(line: 272, column: 15, scope: !6921)
!6959 = !DILocation(line: 273, column: 13, scope: !6960)
!6960 = distinct !DILexicalBlock(scope: !6921, file: !3, line: 273, column: 6)
!6961 = !DILocation(line: 273, column: 6, scope: !6960)
!6962 = !DILocation(line: 273, column: 6, scope: !6921)
!6963 = !DILocation(line: 274, column: 3, scope: !6964)
!6964 = distinct !DILexicalBlock(scope: !6965, file: !3, line: 274, column: 3)
!6965 = distinct !DILexicalBlock(scope: !6960, file: !3, line: 273, column: 28)
!6966 = !DILocation(line: 274, column: 3, scope: !6967)
!6967 = distinct !DILexicalBlock(scope: !6964, file: !3, line: 274, column: 3)
!6968 = !DILocation(line: 275, column: 18, scope: !6965)
!6969 = !DILocation(line: 275, column: 10, scope: !6965)
!6970 = !DILocation(line: 275, column: 3, scope: !6965)
!6971 = !DILocation(line: 278, column: 15, scope: !6921)
!6972 = !DILocation(line: 278, column: 29, scope: !6921)
!6973 = !DILocation(line: 278, column: 13, scope: !6921)
!6974 = !DILocation(line: 279, column: 32, scope: !6921)
!6975 = !DILocation(line: 279, column: 15, scope: !6921)
!6976 = !DILocation(line: 279, column: 12, scope: !6921)
!6977 = !DILocation(line: 281, column: 9, scope: !6978)
!6978 = distinct !DILexicalBlock(scope: !6921, file: !3, line: 281, column: 2)
!6979 = !DILocation(line: 281, column: 7, scope: !6978)
!6980 = !DILocation(line: 281, column: 14, scope: !6981)
!6981 = distinct !DILexicalBlock(scope: !6978, file: !3, line: 281, column: 2)
!6982 = !DILocation(line: 281, column: 18, scope: !6981)
!6983 = !DILocation(line: 281, column: 23, scope: !6981)
!6984 = !DILocation(line: 281, column: 16, scope: !6981)
!6985 = !DILocation(line: 281, column: 2, scope: !6978)
!6986 = !DILocation(line: 282, column: 15, scope: !6987)
!6987 = distinct !DILexicalBlock(scope: !6981, file: !3, line: 281, column: 39)
!6988 = !DILocation(line: 282, column: 20, scope: !6987)
!6989 = !DILocation(line: 282, column: 26, scope: !6987)
!6990 = !DILocation(line: 282, column: 13, scope: !6987)
!6991 = !DILocation(line: 283, column: 7, scope: !6992)
!6992 = distinct !DILexicalBlock(scope: !6987, file: !3, line: 283, column: 7)
!6993 = !DILocation(line: 283, column: 7, scope: !6987)
!6994 = !DILocation(line: 284, column: 4, scope: !6992)
!6995 = !DILocation(line: 286, column: 41, scope: !6987)
!6996 = !DILocation(line: 286, column: 53, scope: !6987)
!6997 = !DILocation(line: 286, column: 56, scope: !6987)
!6998 = !DILocation(line: 286, column: 13, scope: !6987)
!6999 = !DILocation(line: 286, column: 11, scope: !6987)
!7000 = !DILocation(line: 287, column: 14, scope: !7001)
!7001 = distinct !DILexicalBlock(scope: !6987, file: !3, line: 287, column: 7)
!7002 = !DILocation(line: 287, column: 7, scope: !7001)
!7003 = !DILocation(line: 287, column: 7, scope: !6987)
!7004 = !DILocation(line: 288, column: 18, scope: !7005)
!7005 = distinct !DILexicalBlock(scope: !7001, file: !3, line: 287, column: 24)
!7006 = !DILocation(line: 288, column: 10, scope: !7005)
!7007 = !DILocation(line: 288, column: 8, scope: !7005)
!7008 = !DILocation(line: 289, column: 4, scope: !7005)
!7009 = !DILocation(line: 291, column: 17, scope: !6987)
!7010 = !DILocation(line: 291, column: 26, scope: !6987)
!7011 = !DILocation(line: 291, column: 3, scope: !6987)
!7012 = !DILocation(line: 292, column: 18, scope: !6987)
!7013 = !DILocation(line: 292, column: 3, scope: !6987)
!7014 = !DILocation(line: 293, column: 22, scope: !6987)
!7015 = !DILocation(line: 293, column: 3, scope: !6987)
!7016 = !DILocation(line: 294, column: 12, scope: !6987)
!7017 = !DILocation(line: 294, column: 3, scope: !6987)
!7018 = !DILocation(line: 295, column: 2, scope: !6987)
!7019 = !DILocation(line: 281, column: 34, scope: !6981)
!7020 = !DILocation(line: 281, column: 2, scope: !6981)
!7021 = distinct !{!7021, !6985, !7022, !6821, !6822}
!7022 = !DILocation(line: 295, column: 2, scope: !6978)
!7023 = !DILocation(line: 297, column: 20, scope: !6921)
!7024 = !DILocation(line: 297, column: 26, scope: !6921)
!7025 = !DILocation(line: 297, column: 2, scope: !6921)
!7026 = !DILocation(line: 298, column: 22, scope: !6921)
!7027 = !DILocation(line: 298, column: 2, scope: !6921)
!7028 = !DILocation(line: 298, column: 7, scope: !6921)
!7029 = !DILocation(line: 298, column: 20, scope: !6921)
!7030 = !DILocation(line: 299, column: 2, scope: !6921)
!7031 = !DILocation(line: 299, column: 7, scope: !6921)
!7032 = !DILocation(line: 299, column: 18, scope: !6921)
!7033 = !DILocation(line: 301, column: 9, scope: !6921)
!7034 = !DILocation(line: 301, column: 14, scope: !6921)
!7035 = !DILocation(line: 301, column: 2, scope: !6921)
!7036 = !DILocation(line: 303, column: 1, scope: !6921)
!7037 = !DILocation(line: 304, column: 7, scope: !6921)
!7038 = !DILocation(line: 304, column: 2, scope: !6921)
!7039 = !DILocation(line: 306, column: 9, scope: !6921)
!7040 = !DILocation(line: 306, column: 2, scope: !6921)
!7041 = !DILocation(line: 307, column: 1, scope: !6921)
!7042 = !DISubprogram(name: "shmem_file_setup", scope: !6846, file: !6846, line: 85, type: !7043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7043 = !DISubroutineType(types: !7044)
!7044 = !{!700, !32, !57, !55}
!7045 = !DISubprogram(name: "set_page_dirty", scope: !1948, file: !1948, line: 2481, type: !7046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7046 = !DISubroutineType(types: !7047)
!7047 = !{!1328, !2078}
!7048 = !DISubprogram(name: "mark_page_accessed", scope: !2814, file: !2814, line: 375, type: !2173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7049 = distinct !DISubprogram(name: "ttm_tt_unpopulate", scope: !3, file: !3, line: 367, type: !6105, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7050)
!7050 = !{!7051, !7052}
!7051 = !DILocalVariable(name: "bdev", arg: 1, scope: !7049, file: !3, line: 367, type: !6074)
!7052 = !DILocalVariable(name: "ttm", arg: 2, scope: !7049, file: !3, line: 367, type: !5557)
!7053 = !DILocation(line: 367, column: 43, scope: !7049)
!7054 = !DILocation(line: 367, column: 64, scope: !7049)
!7055 = !DILocation(line: 369, column: 27, scope: !7056)
!7056 = distinct !DILexicalBlock(scope: !7049, file: !3, line: 369, column: 6)
!7057 = !DILocation(line: 369, column: 7, scope: !7056)
!7058 = !DILocation(line: 369, column: 6, scope: !7049)
!7059 = !DILocation(line: 370, column: 3, scope: !7056)
!7060 = !DILocation(line: 372, column: 6, scope: !7061)
!7061 = distinct !DILexicalBlock(scope: !7049, file: !3, line: 372, column: 6)
!7062 = !DILocation(line: 372, column: 12, scope: !7061)
!7063 = !DILocation(line: 372, column: 19, scope: !7061)
!7064 = !DILocation(line: 372, column: 6, scope: !7049)
!7065 = !DILocation(line: 373, column: 3, scope: !7061)
!7066 = !DILocation(line: 373, column: 9, scope: !7061)
!7067 = !DILocation(line: 373, column: 16, scope: !7061)
!7068 = !DILocation(line: 373, column: 34, scope: !7061)
!7069 = !DILocation(line: 373, column: 40, scope: !7061)
!7070 = !DILocation(line: 375, column: 18, scope: !7061)
!7071 = !DILocation(line: 375, column: 24, scope: !7061)
!7072 = !DILocation(line: 375, column: 30, scope: !7061)
!7073 = !DILocation(line: 375, column: 3, scope: !7061)
!7074 = !DILocation(line: 377, column: 8, scope: !7075)
!7075 = distinct !DILexicalBlock(scope: !7049, file: !3, line: 377, column: 6)
!7076 = !DILocation(line: 377, column: 13, scope: !7075)
!7077 = !DILocation(line: 377, column: 24, scope: !7075)
!7078 = !DILocation(line: 377, column: 6, scope: !7049)
!7079 = !DILocation(line: 378, column: 19, scope: !7080)
!7080 = distinct !DILexicalBlock(scope: !7075, file: !3, line: 377, column: 49)
!7081 = !DILocation(line: 378, column: 24, scope: !7080)
!7082 = !DILocation(line: 378, column: 3, scope: !7080)
!7083 = !DILocation(line: 379, column: 7, scope: !7084)
!7084 = distinct !DILexicalBlock(scope: !7080, file: !3, line: 379, column: 7)
!7085 = !DILocation(line: 379, column: 13, scope: !7084)
!7086 = !DILocation(line: 379, column: 18, scope: !7084)
!7087 = !DILocation(line: 379, column: 7, scope: !7080)
!7088 = !DILocation(line: 380, column: 20, scope: !7084)
!7089 = !DILocation(line: 380, column: 25, scope: !7084)
!7090 = !DILocation(line: 380, column: 4, scope: !7084)
!7091 = !DILocation(line: 382, column: 2, scope: !7080)
!7092 = !DILocation(line: 384, column: 2, scope: !7049)
!7093 = !DILocation(line: 384, column: 7, scope: !7049)
!7094 = !DILocation(line: 384, column: 18, scope: !7049)
!7095 = !DILocation(line: 385, column: 1, scope: !7049)
!7096 = distinct !DISubprogram(name: "ttm_tt_populate", scope: !3, file: !3, line: 309, type: !6090, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7097)
!7097 = !{!7098, !7099, !7100, !7101, !7102}
!7098 = !DILocalVariable(name: "bdev", arg: 1, scope: !7096, file: !3, line: 309, type: !6074)
!7099 = !DILocalVariable(name: "ttm", arg: 2, scope: !7096, file: !3, line: 310, type: !5557)
!7100 = !DILocalVariable(name: "ctx", arg: 3, scope: !7096, file: !3, line: 310, type: !6092)
!7101 = !DILocalVariable(name: "ret", scope: !7096, file: !3, line: 312, type: !38)
!7102 = !DILabel(scope: !7096, name: "error", file: !3, line: 356)
!7103 = !DILocation(line: 309, column: 40, scope: !7096)
!7104 = !DILocation(line: 310, column: 22, scope: !7096)
!7105 = !DILocation(line: 310, column: 53, scope: !7096)
!7106 = !DILocation(line: 312, column: 2, scope: !7096)
!7107 = !DILocation(line: 312, column: 6, scope: !7096)
!7108 = !DILocation(line: 314, column: 7, scope: !7109)
!7109 = distinct !DILexicalBlock(scope: !7096, file: !3, line: 314, column: 6)
!7110 = !DILocation(line: 314, column: 6, scope: !7096)
!7111 = !DILocation(line: 315, column: 3, scope: !7109)
!7112 = !DILocation(line: 317, column: 26, scope: !7113)
!7113 = distinct !DILexicalBlock(scope: !7096, file: !3, line: 317, column: 6)
!7114 = !DILocation(line: 317, column: 6, scope: !7113)
!7115 = !DILocation(line: 317, column: 6, scope: !7096)
!7116 = !DILocation(line: 318, column: 3, scope: !7113)
!7117 = !DILocation(line: 320, column: 8, scope: !7118)
!7118 = distinct !DILexicalBlock(scope: !7096, file: !3, line: 320, column: 6)
!7119 = !DILocation(line: 320, column: 13, scope: !7118)
!7120 = !DILocation(line: 320, column: 24, scope: !7118)
!7121 = !DILocation(line: 320, column: 6, scope: !7096)
!7122 = !DILocation(line: 321, column: 19, scope: !7123)
!7123 = distinct !DILexicalBlock(scope: !7118, file: !3, line: 320, column: 49)
!7124 = !DILocation(line: 321, column: 24, scope: !7123)
!7125 = !DILocation(line: 321, column: 3, scope: !7123)
!7126 = !DILocation(line: 322, column: 7, scope: !7127)
!7127 = distinct !DILexicalBlock(scope: !7123, file: !3, line: 322, column: 7)
!7128 = !DILocation(line: 322, column: 13, scope: !7127)
!7129 = !DILocation(line: 322, column: 18, scope: !7127)
!7130 = !DILocation(line: 322, column: 7, scope: !7123)
!7131 = !DILocation(line: 323, column: 20, scope: !7127)
!7132 = !DILocation(line: 323, column: 25, scope: !7127)
!7133 = !DILocation(line: 323, column: 4, scope: !7127)
!7134 = !DILocation(line: 325, column: 2, scope: !7123)
!7135 = !DILocation(line: 327, column: 2, scope: !7096)
!7136 = !DILocation(line: 327, column: 9, scope: !7096)
!7137 = !DILocation(line: 327, column: 50, scope: !7096)
!7138 = !DILocation(line: 327, column: 48, scope: !7096)
!7139 = !DILocation(line: 327, column: 66, scope: !7096)
!7140 = !DILocation(line: 328, column: 9, scope: !7096)
!7141 = !DILocation(line: 329, column: 9, scope: !7096)
!7142 = !DILocation(line: 328, column: 54, scope: !7096)
!7143 = !DILocation(line: 331, column: 28, scope: !7144)
!7144 = distinct !DILexicalBlock(scope: !7096, file: !3, line: 329, column: 32)
!7145 = !DILocation(line: 331, column: 9, scope: !7144)
!7146 = !DILocation(line: 331, column: 7, scope: !7144)
!7147 = !DILocation(line: 332, column: 7, scope: !7148)
!7148 = distinct !DILexicalBlock(scope: !7144, file: !3, line: 332, column: 7)
!7149 = !DILocation(line: 332, column: 11, scope: !7148)
!7150 = !DILocation(line: 332, column: 7, scope: !7144)
!7151 = !DILocation(line: 333, column: 4, scope: !7148)
!7152 = !DILocation(line: 334, column: 7, scope: !7153)
!7153 = distinct !DILexicalBlock(scope: !7144, file: !3, line: 334, column: 7)
!7154 = !DILocation(line: 334, column: 11, scope: !7153)
!7155 = !DILocation(line: 334, column: 7, scope: !7144)
!7156 = !DILocation(line: 335, column: 4, scope: !7153)
!7157 = distinct !{!7157, !7135, !7158, !6821, !6822}
!7158 = !DILocation(line: 336, column: 2, scope: !7096)
!7159 = !DILocation(line: 338, column: 6, scope: !7160)
!7160 = distinct !DILexicalBlock(scope: !7096, file: !3, line: 338, column: 6)
!7161 = !DILocation(line: 338, column: 12, scope: !7160)
!7162 = !DILocation(line: 338, column: 19, scope: !7160)
!7163 = !DILocation(line: 338, column: 6, scope: !7096)
!7164 = !DILocation(line: 339, column: 9, scope: !7160)
!7165 = !DILocation(line: 339, column: 15, scope: !7160)
!7166 = !DILocation(line: 339, column: 22, scope: !7160)
!7167 = !DILocation(line: 339, column: 38, scope: !7160)
!7168 = !DILocation(line: 339, column: 44, scope: !7160)
!7169 = !DILocation(line: 339, column: 49, scope: !7160)
!7170 = !DILocation(line: 339, column: 7, scope: !7160)
!7171 = !DILocation(line: 339, column: 3, scope: !7160)
!7172 = !DILocation(line: 341, column: 25, scope: !7160)
!7173 = !DILocation(line: 341, column: 31, scope: !7160)
!7174 = !DILocation(line: 341, column: 37, scope: !7160)
!7175 = !DILocation(line: 341, column: 42, scope: !7160)
!7176 = !DILocation(line: 341, column: 9, scope: !7160)
!7177 = !DILocation(line: 341, column: 7, scope: !7160)
!7178 = !DILocation(line: 342, column: 6, scope: !7179)
!7179 = distinct !DILexicalBlock(scope: !7096, file: !3, line: 342, column: 6)
!7180 = !DILocation(line: 342, column: 6, scope: !7096)
!7181 = !DILocation(line: 343, column: 3, scope: !7179)
!7182 = !DILocation(line: 345, column: 2, scope: !7096)
!7183 = !DILocation(line: 345, column: 7, scope: !7096)
!7184 = !DILocation(line: 345, column: 18, scope: !7096)
!7185 = !DILocation(line: 346, column: 6, scope: !7186)
!7186 = distinct !DILexicalBlock(scope: !7096, file: !3, line: 346, column: 6)
!7187 = !DILocation(line: 346, column: 6, scope: !7096)
!7188 = !DILocation(line: 347, column: 23, scope: !7189)
!7189 = distinct !DILexicalBlock(scope: !7186, file: !3, line: 346, column: 55)
!7190 = !DILocation(line: 347, column: 9, scope: !7189)
!7191 = !DILocation(line: 347, column: 7, scope: !7189)
!7192 = !DILocation(line: 348, column: 7, scope: !7193)
!7193 = distinct !DILexicalBlock(scope: !7189, file: !3, line: 348, column: 7)
!7194 = !DILocation(line: 348, column: 7, scope: !7189)
!7195 = !DILocation(line: 349, column: 22, scope: !7196)
!7196 = distinct !DILexicalBlock(scope: !7193, file: !3, line: 348, column: 27)
!7197 = !DILocation(line: 349, column: 28, scope: !7196)
!7198 = !DILocation(line: 349, column: 4, scope: !7196)
!7199 = !DILocation(line: 350, column: 11, scope: !7196)
!7200 = !DILocation(line: 350, column: 4, scope: !7196)
!7201 = !DILocation(line: 352, column: 2, scope: !7189)
!7202 = !DILocation(line: 354, column: 2, scope: !7096)
!7203 = !DILocation(line: 356, column: 1, scope: !7096)
!7204 = !DILocation(line: 357, column: 8, scope: !7205)
!7205 = distinct !DILexicalBlock(scope: !7096, file: !3, line: 357, column: 6)
!7206 = !DILocation(line: 357, column: 13, scope: !7205)
!7207 = !DILocation(line: 357, column: 24, scope: !7205)
!7208 = !DILocation(line: 357, column: 6, scope: !7096)
!7209 = !DILocation(line: 358, column: 19, scope: !7210)
!7210 = distinct !DILexicalBlock(scope: !7205, file: !3, line: 357, column: 49)
!7211 = !DILocation(line: 358, column: 24, scope: !7210)
!7212 = !DILocation(line: 358, column: 3, scope: !7210)
!7213 = !DILocation(line: 359, column: 7, scope: !7214)
!7214 = distinct !DILexicalBlock(scope: !7210, file: !3, line: 359, column: 7)
!7215 = !DILocation(line: 359, column: 13, scope: !7214)
!7216 = !DILocation(line: 359, column: 18, scope: !7214)
!7217 = !DILocation(line: 359, column: 7, scope: !7210)
!7218 = !DILocation(line: 360, column: 20, scope: !7214)
!7219 = !DILocation(line: 360, column: 25, scope: !7214)
!7220 = !DILocation(line: 360, column: 4, scope: !7214)
!7221 = !DILocation(line: 362, column: 2, scope: !7210)
!7222 = !DILocation(line: 363, column: 9, scope: !7096)
!7223 = !DILocation(line: 363, column: 2, scope: !7096)
!7224 = !DILocation(line: 364, column: 1, scope: !7096)
!7225 = distinct !DISubprogram(name: "ttm_tt_is_populated", scope: !5525, file: !5525, line: 127, type: !7226, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7228)
!7226 = !DISubroutineType(types: !7227)
!7227 = !{!1328, !5557}
!7228 = !{!7229}
!7229 = !DILocalVariable(name: "tt", arg: 1, scope: !7225, file: !5525, line: 127, type: !5557)
!7230 = !DILocation(line: 127, column: 55, scope: !7225)
!7231 = !DILocation(line: 129, column: 9, scope: !7225)
!7232 = !DILocation(line: 129, column: 13, scope: !7225)
!7233 = !DILocation(line: 129, column: 24, scope: !7225)
!7234 = !DILocation(line: 129, column: 2, scope: !7225)
!7235 = distinct !DISubprogram(name: "atomic_long_add", scope: !7236, file: !7236, line: 3230, type: !7237, scopeLine: 3231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7239)
!7236 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!7237 = !DISubroutineType(types: !7238)
!7238 = !{null, !445, !4717}
!7239 = !{!7240, !7241}
!7240 = !DILocalVariable(name: "i", arg: 1, scope: !7235, file: !7236, line: 3230, type: !445)
!7241 = !DILocalVariable(name: "v", arg: 2, scope: !7235, file: !7236, line: 3230, type: !4717)
!7242 = !DILocation(line: 3230, column: 22, scope: !7235)
!7243 = !DILocation(line: 3230, column: 40, scope: !7235)
!7244 = !DILocation(line: 3232, column: 31, scope: !7235)
!7245 = !DILocation(line: 3232, column: 2, scope: !7235)
!7246 = !DILocation(line: 3233, column: 22, scope: !7235)
!7247 = !DILocation(line: 3233, column: 25, scope: !7235)
!7248 = !DILocation(line: 3233, column: 2, scope: !7235)
!7249 = !DILocation(line: 3234, column: 1, scope: !7235)
!7250 = distinct !DISubprogram(name: "atomic_long_read", scope: !7236, file: !7236, line: 3158, type: !7251, scopeLine: 3159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7255)
!7251 = !DISubroutineType(types: !7252)
!7252 = !{!445, !7253}
!7253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7254, size: 64)
!7254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !726)
!7255 = !{!7256}
!7256 = !DILocalVariable(name: "v", arg: 1, scope: !7250, file: !7236, line: 3158, type: !7253)
!7257 = !DILocation(line: 3158, column: 39, scope: !7250)
!7258 = !DILocation(line: 3160, column: 25, scope: !7250)
!7259 = !DILocation(line: 3160, column: 2, scope: !7250)
!7260 = !DILocation(line: 3161, column: 30, scope: !7250)
!7261 = !DILocation(line: 3161, column: 9, scope: !7250)
!7262 = !DILocation(line: 3161, column: 2, scope: !7250)
!7263 = !DISubprogram(name: "ttm_global_swapout", scope: !6076, file: !6076, line: 271, type: !7264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7264 = !DISubroutineType(types: !7265)
!7265 = !{!38, !6092, !821}
!7266 = !DISubprogram(name: "ttm_pool_alloc", scope: !6255, file: !6255, line: 81, type: !7267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7267 = !DISubroutineType(types: !7268)
!7268 = !{!38, !6270, !5557, !6092}
!7269 = distinct !DISubprogram(name: "atomic_long_sub", scope: !7236, file: !7236, line: 3396, type: !7237, scopeLine: 3397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7270)
!7270 = !{!7271, !7272}
!7271 = !DILocalVariable(name: "i", arg: 1, scope: !7269, file: !7236, line: 3396, type: !445)
!7272 = !DILocalVariable(name: "v", arg: 2, scope: !7269, file: !7236, line: 3396, type: !4717)
!7273 = !DILocation(line: 3396, column: 22, scope: !7269)
!7274 = !DILocation(line: 3396, column: 40, scope: !7269)
!7275 = !DILocation(line: 3398, column: 31, scope: !7269)
!7276 = !DILocation(line: 3398, column: 2, scope: !7269)
!7277 = !DILocation(line: 3399, column: 22, scope: !7269)
!7278 = !DILocation(line: 3399, column: 25, scope: !7269)
!7279 = !DILocation(line: 3399, column: 2, scope: !7269)
!7280 = !DILocation(line: 3400, column: 1, scope: !7269)
!7281 = !DISubprogram(name: "ttm_pool_free", scope: !6255, file: !6255, line: 83, type: !7282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7282 = !DISubroutineType(types: !7283)
!7283 = !{null, !6270, !5557}
!7284 = distinct !DISubprogram(name: "ttm_tt_mgr_init", scope: !3, file: !3, line: 407, type: !7285, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7287)
!7285 = !DISubroutineType(types: !7286)
!7286 = !{null, !55, !55}
!7287 = !{!7288, !7289}
!7288 = !DILocalVariable(name: "num_pages", arg: 1, scope: !7284, file: !3, line: 407, type: !55)
!7289 = !DILocalVariable(name: "num_dma32_pages", arg: 2, scope: !7284, file: !3, line: 407, type: !55)
!7290 = !DILocation(line: 407, column: 36, scope: !7284)
!7291 = !DILocation(line: 407, column: 61, scope: !7284)
!7292 = !DILocation(line: 410, column: 41, scope: !7284)
!7293 = !DILocation(line: 410, column: 2, scope: !7284)
!7294 = !DILocation(line: 414, column: 7, scope: !7295)
!7295 = distinct !DILexicalBlock(scope: !7284, file: !3, line: 414, column: 6)
!7296 = !DILocation(line: 414, column: 6, scope: !7284)
!7297 = !DILocation(line: 415, column: 21, scope: !7295)
!7298 = !DILocation(line: 415, column: 19, scope: !7295)
!7299 = !DILocation(line: 415, column: 3, scope: !7295)
!7300 = !DILocation(line: 417, column: 7, scope: !7301)
!7301 = distinct !DILexicalBlock(scope: !7284, file: !3, line: 417, column: 6)
!7302 = !DILocation(line: 417, column: 6, scope: !7284)
!7303 = !DILocation(line: 418, column: 27, scope: !7301)
!7304 = !DILocation(line: 418, column: 25, scope: !7301)
!7305 = !DILocation(line: 418, column: 3, scope: !7301)
!7306 = !DILocation(line: 419, column: 1, scope: !7284)
!7307 = !DISubprogram(name: "debugfs_create_file", scope: !7308, file: !7308, line: 75, type: !7309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7308 = !DIFile(filename: "./include/linux/debugfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e6228d229e8266f5bff9327360d42a5")
!7309 = !DISubroutineType(types: !7310)
!7310 = !{!519, !32, !40, !519, !36, !3364}
!7311 = distinct !DISubprogram(name: "ttm_kmap_iter_tt_init", scope: !3, file: !3, line: 452, type: !7312, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7314)
!7312 = !DISubroutineType(types: !7313)
!7313 = !{!5540, !5523, !5557}
!7314 = !{!7315, !7316}
!7315 = !DILocalVariable(name: "iter_tt", arg: 1, scope: !7311, file: !3, line: 452, type: !5523)
!7316 = !DILocalVariable(name: "tt", arg: 2, scope: !7311, file: !3, line: 453, type: !5557)
!7317 = !DILocation(line: 452, column: 48, scope: !7311)
!7318 = !DILocation(line: 453, column: 24, scope: !7311)
!7319 = !DILocation(line: 455, column: 2, scope: !7311)
!7320 = !DILocation(line: 455, column: 11, scope: !7311)
!7321 = !DILocation(line: 455, column: 16, scope: !7311)
!7322 = !DILocation(line: 455, column: 20, scope: !7311)
!7323 = !DILocation(line: 456, column: 16, scope: !7311)
!7324 = !DILocation(line: 456, column: 2, scope: !7311)
!7325 = !DILocation(line: 456, column: 11, scope: !7311)
!7326 = !DILocation(line: 456, column: 14, scope: !7311)
!7327 = !DILocation(line: 457, column: 6, scope: !7328)
!7328 = distinct !DILexicalBlock(scope: !7311, file: !3, line: 457, column: 6)
!7329 = !DILocation(line: 457, column: 6, scope: !7311)
!7330 = !DILocation(line: 458, column: 3, scope: !7328)
!7331 = !DILocation(line: 458, column: 12, scope: !7328)
!7332 = !DILocation(line: 458, column: 19, scope: !7328)
!7333 = !DILocation(line: 458, column: 41, scope: !7328)
!7334 = !DILocation(line: 458, column: 45, scope: !7328)
!7335 = !DILocation(line: 458, column: 54, scope: !7328)
!7336 = !DILocation(line: 460, column: 3, scope: !7328)
!7337 = !DILocation(line: 460, column: 12, scope: !7328)
!7338 = !DILocation(line: 460, column: 19, scope: !7328)
!7339 = !DILocation(line: 462, column: 10, scope: !7311)
!7340 = !DILocation(line: 462, column: 19, scope: !7311)
!7341 = !DILocation(line: 462, column: 2, scope: !7311)
!7342 = !DISubprogram(name: "ttm_prot_from_caching", scope: !289, file: !289, line: 53, type: !7343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7343 = !DISubroutineType(types: !7344)
!7344 = !{!1968, !288, !1968}
!7345 = distinct !DISubprogram(name: "ttm_tt_pages_limit", scope: !3, file: !3, line: 466, type: !7346, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7346 = !DISubroutineType(types: !7347)
!7347 = !{!55}
!7348 = !DILocation(line: 468, column: 9, scope: !7345)
!7349 = !DILocation(line: 468, column: 2, scope: !7345)
!7350 = distinct !DISubprogram(name: "kvcalloc", scope: !6644, file: !6644, line: 759, type: !7351, scopeLine: 760, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7353)
!7351 = !DISubroutineType(types: !7352)
!7352 = !{!36, !51, !51, !821}
!7353 = !{!7354, !7355, !7356}
!7354 = !DILocalVariable(name: "n", arg: 1, scope: !7350, file: !6644, line: 759, type: !51)
!7355 = !DILocalVariable(name: "size", arg: 2, scope: !7350, file: !6644, line: 759, type: !51)
!7356 = !DILocalVariable(name: "flags", arg: 3, scope: !7350, file: !6644, line: 759, type: !821)
!7357 = !DILocation(line: 759, column: 56, scope: !7350)
!7358 = !DILocation(line: 759, column: 66, scope: !7350)
!7359 = !DILocation(line: 759, column: 78, scope: !7350)
!7360 = !DILocation(line: 761, column: 24, scope: !7350)
!7361 = !DILocation(line: 761, column: 27, scope: !7350)
!7362 = !DILocation(line: 761, column: 33, scope: !7350)
!7363 = !DILocation(line: 761, column: 39, scope: !7350)
!7364 = !DILocation(line: 761, column: 9, scope: !7350)
!7365 = !DILocation(line: 761, column: 2, scope: !7350)
!7366 = distinct !DISubprogram(name: "kvmalloc_array", scope: !6644, file: !6644, line: 749, type: !7351, scopeLine: 750, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7367)
!7367 = !{!7368, !7369, !7370, !7371}
!7368 = !DILocalVariable(name: "n", arg: 1, scope: !7366, file: !6644, line: 749, type: !51)
!7369 = !DILocalVariable(name: "size", arg: 2, scope: !7366, file: !6644, line: 749, type: !51)
!7370 = !DILocalVariable(name: "flags", arg: 3, scope: !7366, file: !6644, line: 749, type: !821)
!7371 = !DILocalVariable(name: "bytes", scope: !7366, file: !6644, line: 751, type: !51)
!7372 = !DILocation(line: 749, column: 62, scope: !7366)
!7373 = !DILocation(line: 749, column: 72, scope: !7366)
!7374 = !DILocation(line: 749, column: 84, scope: !7366)
!7375 = !DILocation(line: 751, column: 2, scope: !7366)
!7376 = !DILocation(line: 751, column: 9, scope: !7366)
!7377 = !DILocation(line: 753, column: 6, scope: !7378)
!7378 = distinct !DILexicalBlock(scope: !7366, file: !6644, line: 753, column: 6)
!7379 = !DILocation(line: 753, column: 6, scope: !7366)
!7380 = !DILocation(line: 754, column: 3, scope: !7378)
!7381 = !DILocation(line: 756, column: 18, scope: !7366)
!7382 = !DILocation(line: 756, column: 25, scope: !7366)
!7383 = !DILocation(line: 756, column: 9, scope: !7366)
!7384 = !DILocation(line: 756, column: 2, scope: !7366)
!7385 = !DILocation(line: 757, column: 1, scope: !7366)
!7386 = distinct !DISubprogram(name: "__must_check_overflow", scope: !7387, file: !7387, line: 51, type: !7388, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7390)
!7387 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!7388 = !DISubroutineType(types: !7389)
!7389 = !{!1328, !1328}
!7390 = !{!7391}
!7391 = !DILocalVariable(name: "overflow", arg: 1, scope: !7386, file: !7387, line: 51, type: !1328)
!7392 = !DILocation(line: 51, column: 60, scope: !7386)
!7393 = !DILocation(line: 53, column: 9, scope: !7386)
!7394 = !DILocation(line: 53, column: 2, scope: !7386)
!7395 = distinct !DISubprogram(name: "kvmalloc", scope: !6644, file: !6644, line: 736, type: !7396, scopeLine: 737, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7398)
!7396 = !DISubroutineType(types: !7397)
!7397 = !{!36, !51, !821}
!7398 = !{!7399, !7400}
!7399 = !DILocalVariable(name: "size", arg: 1, scope: !7395, file: !6644, line: 736, type: !51)
!7400 = !DILocalVariable(name: "flags", arg: 2, scope: !7395, file: !6644, line: 736, type: !821)
!7401 = !DILocation(line: 736, column: 53, scope: !7395)
!7402 = !DILocation(line: 736, column: 65, scope: !7395)
!7403 = !DILocation(line: 738, column: 23, scope: !7395)
!7404 = !DILocation(line: 738, column: 29, scope: !7395)
!7405 = !DILocation(line: 738, column: 9, scope: !7395)
!7406 = !DILocation(line: 738, column: 2, scope: !7395)
!7407 = !DISubprogram(name: "kvmalloc_node", scope: !6644, file: !6644, line: 735, type: !7408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7408 = !DISubroutineType(types: !7409)
!7409 = !{!36, !51, !821, !38}
!7410 = distinct !DISubprogram(name: "kmap_local_page", scope: !7411, file: !7411, line: 183, type: !7412, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7414)
!7411 = !DIFile(filename: "./include/linux/highmem-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ae7838583c7018843a11d0e374eeb3")
!7412 = !DISubroutineType(types: !7413)
!7413 = !{!36, !2078}
!7414 = !{!7415}
!7415 = !DILocalVariable(name: "page", arg: 1, scope: !7410, file: !7411, line: 183, type: !2078)
!7416 = !DILocation(line: 183, column: 50, scope: !7410)
!7417 = !DILocation(line: 185, column: 9, scope: !7410)
!7418 = !DILocation(line: 185, column: 2, scope: !7410)
!7419 = !DISubprogram(name: "copy_page", scope: !7420, file: !7420, line: 62, type: !7421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7420 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!7421 = !DISubroutineType(types: !7422)
!7422 = !{null, !36, !36}
!7423 = distinct !DISubprogram(name: "kmsan_copy_page_meta", scope: !7424, file: !7424, line: 266, type: !6869, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7425)
!7424 = !DIFile(filename: "./include/linux/kmsan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5e7e99912c58fb827bb0f1d51128cd81")
!7425 = !{!7426, !7427}
!7426 = !DILocalVariable(name: "dst", arg: 1, scope: !7423, file: !7424, line: 266, type: !2078)
!7427 = !DILocalVariable(name: "src", arg: 2, scope: !7423, file: !7424, line: 266, type: !2078)
!7428 = !DILocation(line: 266, column: 54, scope: !7423)
!7429 = !DILocation(line: 266, column: 72, scope: !7423)
!7430 = !DILocation(line: 268, column: 1, scope: !7423)
!7431 = distinct !DISubprogram(name: "__kunmap_local", scope: !7411, file: !7411, line: 203, type: !6645, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7432)
!7432 = !{!7433}
!7433 = !DILocalVariable(name: "addr", arg: 1, scope: !7431, file: !7411, line: 203, type: !1257)
!7434 = !DILocation(line: 203, column: 47, scope: !7431)
!7435 = !DILocation(line: 208, column: 1, scope: !7431)
!7436 = distinct !DISubprogram(name: "lowmem_page_address", scope: !1948, file: !1948, line: 2176, type: !7437, scopeLine: 2177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7439)
!7437 = !DISubroutineType(types: !7438)
!7438 = !{!36, !5518}
!7439 = !{!7440}
!7440 = !DILocalVariable(name: "page", arg: 1, scope: !7436, file: !1948, line: 2176, type: !5518)
!7441 = !DILocation(line: 2176, column: 69, scope: !7436)
!7442 = !DILocation(line: 2178, column: 9, scope: !7436)
!7443 = !DILocation(line: 2178, column: 2, scope: !7436)
!7444 = distinct !DISubprogram(name: "_compound_head", scope: !316, file: !316, line: 244, type: !7445, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7447)
!7445 = !DISubroutineType(types: !7446)
!7446 = !{!55, !5518}
!7447 = !{!7448, !7449}
!7448 = !DILocalVariable(name: "page", arg: 1, scope: !7444, file: !316, line: 244, type: !5518)
!7449 = !DILocalVariable(name: "head", scope: !7444, file: !316, line: 246, type: !55)
!7450 = !DILocation(line: 244, column: 63, scope: !7444)
!7451 = !DILocation(line: 246, column: 2, scope: !7444)
!7452 = !DILocation(line: 246, column: 16, scope: !7444)
!7453 = !DILocation(line: 246, column: 23, scope: !7454)
!7454 = distinct !DILexicalBlock(scope: !7444, file: !316, line: 246, column: 23)
!7455 = !DILocation(line: 246, column: 23, scope: !7456)
!7456 = distinct !DILexicalBlock(scope: !7454, file: !316, line: 246, column: 23)
!7457 = !DILocation(line: 248, column: 6, scope: !7458)
!7458 = distinct !DILexicalBlock(scope: !7444, file: !316, line: 248, column: 6)
!7459 = !DILocation(line: 248, column: 6, scope: !7444)
!7460 = !DILocation(line: 249, column: 10, scope: !7458)
!7461 = !DILocation(line: 249, column: 15, scope: !7458)
!7462 = !DILocation(line: 249, column: 3, scope: !7458)
!7463 = !DILocation(line: 250, column: 45, scope: !7444)
!7464 = !DILocation(line: 250, column: 24, scope: !7444)
!7465 = !DILocation(line: 250, column: 9, scope: !7444)
!7466 = !DILocation(line: 250, column: 2, scope: !7444)
!7467 = !DILocation(line: 251, column: 1, scope: !7444)
!7468 = distinct !DISubprogram(name: "put_devmap_managed_page", scope: !1948, file: !1948, line: 1428, type: !7046, scopeLine: 1429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7469)
!7469 = !{!7470}
!7470 = !DILocalVariable(name: "page", arg: 1, scope: !7468, file: !1948, line: 1428, type: !2078)
!7471 = !DILocation(line: 1428, column: 57, scope: !7468)
!7472 = !DILocation(line: 1430, column: 38, scope: !7468)
!7473 = !DILocation(line: 1430, column: 9, scope: !7468)
!7474 = !DILocation(line: 1430, column: 2, scope: !7468)
!7475 = distinct !DISubprogram(name: "folio_put", scope: !1948, file: !1948, line: 1478, type: !5073, scopeLine: 1479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7476)
!7476 = !{!7477}
!7477 = !DILocalVariable(name: "folio", arg: 1, scope: !7475, file: !1948, line: 1478, type: !3406)
!7478 = !DILocation(line: 1478, column: 44, scope: !7475)
!7479 = !DILocation(line: 1480, column: 25, scope: !7480)
!7480 = distinct !DILexicalBlock(scope: !7475, file: !1948, line: 1480, column: 6)
!7481 = !DILocation(line: 1480, column: 6, scope: !7480)
!7482 = !DILocation(line: 1480, column: 6, scope: !7475)
!7483 = !DILocation(line: 1481, column: 15, scope: !7480)
!7484 = !DILocation(line: 1481, column: 3, scope: !7480)
!7485 = !DILocation(line: 1482, column: 1, scope: !7475)
!7486 = distinct !DISubprogram(name: "page_fixed_fake_head", scope: !316, file: !316, line: 207, type: !7487, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7489)
!7487 = !DISubroutineType(types: !7488)
!7488 = !{!5518, !5518}
!7489 = !{!7490, !7491, !7494}
!7490 = !DILocalVariable(name: "page", arg: 1, scope: !7486, file: !316, line: 207, type: !5518)
!7491 = !DILocalVariable(name: "branch", scope: !7492, file: !316, line: 209, type: !1328)
!7492 = distinct !DILexicalBlock(scope: !7493, file: !316, line: 209, column: 7)
!7493 = distinct !DILexicalBlock(scope: !7486, file: !316, line: 209, column: 6)
!7494 = !DILocalVariable(name: "head", scope: !7495, file: !316, line: 225, type: !55)
!7495 = distinct !DILexicalBlock(scope: !7496, file: !316, line: 219, column: 39)
!7496 = distinct !DILexicalBlock(scope: !7486, file: !316, line: 218, column: 6)
!7497 = !DILocation(line: 207, column: 83, scope: !7486)
!7498 = !DILocation(line: 209, column: 7, scope: !7492)
!7499 = !DILocation(line: 209, column: 7, scope: !7500)
!7500 = distinct !DILexicalBlock(scope: !7501, file: !316, line: 209, column: 7)
!7501 = distinct !DILexicalBlock(scope: !7492, file: !316, line: 209, column: 7)
!7502 = !DILocation(line: 209, column: 7, scope: !7501)
!7503 = !DILocation(line: 209, column: 7, scope: !7493)
!7504 = !DILocation(line: 209, column: 6, scope: !7486)
!7505 = !DILocation(line: 210, column: 10, scope: !7493)
!7506 = !DILocation(line: 210, column: 3, scope: !7493)
!7507 = !DILocation(line: 218, column: 6, scope: !7496)
!7508 = !DILocation(line: 218, column: 49, scope: !7496)
!7509 = !DILocation(line: 219, column: 6, scope: !7496)
!7510 = !DILocation(line: 218, column: 6, scope: !7486)
!7511 = !DILocation(line: 225, column: 3, scope: !7495)
!7512 = !DILocation(line: 225, column: 17, scope: !7495)
!7513 = !DILocation(line: 225, column: 24, scope: !7514)
!7514 = distinct !DILexicalBlock(scope: !7495, file: !316, line: 225, column: 24)
!7515 = !DILocation(line: 225, column: 24, scope: !7516)
!7516 = distinct !DILexicalBlock(scope: !7514, file: !316, line: 225, column: 24)
!7517 = !DILocation(line: 227, column: 7, scope: !7518)
!7518 = distinct !DILexicalBlock(scope: !7495, file: !316, line: 227, column: 7)
!7519 = !DILocation(line: 227, column: 7, scope: !7495)
!7520 = !DILocation(line: 228, column: 33, scope: !7518)
!7521 = !DILocation(line: 228, column: 38, scope: !7518)
!7522 = !DILocation(line: 228, column: 11, scope: !7518)
!7523 = !DILocation(line: 228, column: 4, scope: !7518)
!7524 = !DILocation(line: 229, column: 2, scope: !7496)
!7525 = !DILocation(line: 229, column: 2, scope: !7495)
!7526 = !DILocation(line: 230, column: 9, scope: !7486)
!7527 = !DILocation(line: 230, column: 2, scope: !7486)
!7528 = !DILocation(line: 231, column: 1, scope: !7486)
!7529 = distinct !DISubprogram(name: "arch_static_branch", scope: !7530, file: !7530, line: 25, type: !7531, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7545)
!7530 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!7531 = !DISubroutineType(types: !7532)
!7532 = !{!1328, !7533, !1328}
!7533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7534, size: 64)
!7534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !5478, line: 85, size: 128, elements: !7535)
!7535 = !{!7536, !7537}
!7536 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !7534, file: !5478, line: 86, baseType: !65, size: 32)
!7537 = !DIDerivedType(tag: DW_TAG_member, scope: !7534, file: !5478, line: 101, baseType: !7538, size: 64, offset: 64)
!7538 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !7534, file: !5478, line: 101, size: 64, elements: !7539)
!7539 = !{!7540, !7541, !7542}
!7540 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7538, file: !5478, line: 102, baseType: !55, size: 64)
!7541 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !7538, file: !5478, line: 103, baseType: !5476, size: 64)
!7542 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !7538, file: !5478, line: 104, baseType: !7543, size: 64)
!7543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7544, size: 64)
!7544 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !5478, line: 104, flags: DIFlagFwdDecl)
!7545 = !{!7546, !7547, !7548}
!7546 = !DILocalVariable(name: "key", arg: 1, scope: !7529, file: !7530, line: 25, type: !7533)
!7547 = !DILocalVariable(name: "branch", arg: 2, scope: !7529, file: !7530, line: 25, type: !1328)
!7548 = !DILabel(scope: !7529, name: "l_yes", file: !7530, line: 33)
!7549 = !DILocation(line: 25, column: 67, scope: !7529)
!7550 = !DILocation(line: 25, column: 77, scope: !7529)
!7551 = !DILocation(line: 30, column: 13, scope: !7529)
!7552 = !DILocation(line: 30, column: 28, scope: !7529)
!7553 = !DILocation(line: 30, column: 26, scope: !7529)
!7554 = !DILocation(line: 27, column: 2, scope: !7529)
!7555 = !{i64 1490108, i64 1490152, i64 2148974835, i64 2148974856, i64 2148974882, i64 2148974915, i64 2148974949, i64 2148974973}
!7556 = !DILocation(line: 32, column: 2, scope: !7529)
!7557 = !DILocation(line: 33, column: 1, scope: !7529)
!7558 = !DILocation(line: 34, column: 2, scope: !7529)
!7559 = !DILocation(line: 35, column: 1, scope: !7529)
!7560 = distinct !DISubprogram(name: "const_test_bit", scope: !7561, file: !7561, line: 166, type: !7562, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7564)
!7561 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!7562 = !DISubroutineType(types: !7563)
!7563 = !{!1328, !55, !5513}
!7564 = !{!7565, !7566, !7567, !7568, !7569}
!7565 = !DILocalVariable(name: "nr", arg: 1, scope: !7560, file: !7561, line: 166, type: !55)
!7566 = !DILocalVariable(name: "addr", arg: 2, scope: !7560, file: !7561, line: 166, type: !5513)
!7567 = !DILocalVariable(name: "p", scope: !7560, file: !7561, line: 168, type: !5517)
!7568 = !DILocalVariable(name: "mask", scope: !7560, file: !7561, line: 169, type: !55)
!7569 = !DILocalVariable(name: "val", scope: !7560, file: !7561, line: 170, type: !55)
!7570 = !DILocation(line: 166, column: 30, scope: !7560)
!7571 = !DILocation(line: 166, column: 64, scope: !7560)
!7572 = !DILocation(line: 168, column: 2, scope: !7560)
!7573 = !DILocation(line: 168, column: 23, scope: !7560)
!7574 = !DILocation(line: 168, column: 50, scope: !7560)
!7575 = !DILocation(line: 168, column: 57, scope: !7560)
!7576 = !DILocation(line: 168, column: 55, scope: !7560)
!7577 = !DILocation(line: 169, column: 2, scope: !7560)
!7578 = !DILocation(line: 169, column: 16, scope: !7560)
!7579 = !DILocation(line: 169, column: 23, scope: !7560)
!7580 = !DILocation(line: 170, column: 2, scope: !7560)
!7581 = !DILocation(line: 170, column: 16, scope: !7560)
!7582 = !DILocation(line: 170, column: 23, scope: !7560)
!7583 = !DILocation(line: 170, column: 22, scope: !7560)
!7584 = !DILocation(line: 172, column: 12, scope: !7560)
!7585 = !DILocation(line: 172, column: 18, scope: !7560)
!7586 = !DILocation(line: 172, column: 16, scope: !7560)
!7587 = !DILocation(line: 172, column: 10, scope: !7560)
!7588 = !DILocation(line: 172, column: 9, scope: !7560)
!7589 = !DILocation(line: 173, column: 1, scope: !7560)
!7590 = !DILocation(line: 172, column: 2, scope: !7560)
!7591 = distinct !DISubprogram(name: "_test_bit", scope: !7592, file: !7592, line: 139, type: !7562, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7593)
!7592 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!7593 = !{!7594, !7595}
!7594 = !DILocalVariable(name: "nr", arg: 1, scope: !7591, file: !7592, line: 139, type: !55)
!7595 = !DILocalVariable(name: "addr", arg: 2, scope: !7591, file: !7592, line: 139, type: !5513)
!7596 = !DILocation(line: 139, column: 25, scope: !7591)
!7597 = !DILocation(line: 139, column: 59, scope: !7591)
!7598 = !DILocation(line: 141, column: 25, scope: !7591)
!7599 = !DILocation(line: 141, column: 32, scope: !7591)
!7600 = !DILocation(line: 141, column: 30, scope: !7591)
!7601 = !DILocation(line: 141, column: 2, scope: !7591)
!7602 = !DILocation(line: 142, column: 23, scope: !7591)
!7603 = !DILocation(line: 142, column: 27, scope: !7591)
!7604 = !DILocation(line: 142, column: 9, scope: !7591)
!7605 = !DILocation(line: 142, column: 2, scope: !7591)
!7606 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !7607, file: !7607, line: 66, type: !7608, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7613)
!7607 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7608 = !DISubroutineType(types: !7609)
!7609 = !{null, !7610, !51}
!7610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7611, size: 64)
!7611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7612)
!7612 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7613 = !{!7614, !7615}
!7614 = !DILocalVariable(name: "v", arg: 1, scope: !7606, file: !7607, line: 66, type: !7610)
!7615 = !DILocalVariable(name: "size", arg: 2, scope: !7606, file: !7607, line: 66, type: !51)
!7616 = !DILocation(line: 66, column: 73, scope: !7606)
!7617 = !DILocation(line: 66, column: 83, scope: !7606)
!7618 = !DILocation(line: 68, column: 19, scope: !7606)
!7619 = !DILocation(line: 68, column: 22, scope: !7606)
!7620 = !DILocation(line: 68, column: 2, scope: !7606)
!7621 = !DILocation(line: 69, column: 2, scope: !7606)
!7622 = !DILocation(line: 70, column: 1, scope: !7606)
!7623 = distinct !DISubprogram(name: "arch_test_bit", scope: !7624, file: !7624, line: 237, type: !7562, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7625)
!7624 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!7625 = !{!7626, !7627}
!7626 = !DILocalVariable(name: "nr", arg: 1, scope: !7623, file: !7624, line: 237, type: !55)
!7627 = !DILocalVariable(name: "addr", arg: 2, scope: !7623, file: !7624, line: 237, type: !5513)
!7628 = !DILocation(line: 237, column: 29, scope: !7623)
!7629 = !DILocation(line: 237, column: 63, scope: !7623)
!7630 = !DILocation(line: 239, column: 30, scope: !7623)
!7631 = !DILocation(line: 239, column: 9, scope: !7623)
!7632 = !DILocation(line: 239, column: 54, scope: !7623)
!7633 = !DILocation(line: 239, column: 58, scope: !7623)
!7634 = !DILocation(line: 239, column: 36, scope: !7623)
!7635 = !DILocation(line: 240, column: 26, scope: !7623)
!7636 = !DILocation(line: 240, column: 30, scope: !7623)
!7637 = !DILocation(line: 240, column: 8, scope: !7623)
!7638 = !DILocation(line: 239, column: 2, scope: !7623)
!7639 = distinct !DISubprogram(name: "kasan_check_read", scope: !7640, file: !7640, line: 40, type: !7641, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7643)
!7640 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7641 = !DISubroutineType(types: !7642)
!7642 = !{!1328, !7610, !7}
!7643 = !{!7644, !7645}
!7644 = !DILocalVariable(name: "p", arg: 1, scope: !7639, file: !7640, line: 40, type: !7610)
!7645 = !DILocalVariable(name: "size", arg: 2, scope: !7639, file: !7640, line: 40, type: !7)
!7646 = !DILocation(line: 40, column: 58, scope: !7639)
!7647 = !DILocation(line: 40, column: 74, scope: !7639)
!7648 = !DILocation(line: 42, column: 2, scope: !7639)
!7649 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7650, file: !7650, line: 229, type: !7651, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7653)
!7650 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7651 = !DISubroutineType(types: !7652)
!7652 = !{null, !7610, !51, !38}
!7653 = !{!7654, !7655, !7656}
!7654 = !DILocalVariable(name: "ptr", arg: 1, scope: !7649, file: !7650, line: 229, type: !7610)
!7655 = !DILocalVariable(name: "size", arg: 2, scope: !7649, file: !7650, line: 229, type: !51)
!7656 = !DILocalVariable(name: "type", arg: 3, scope: !7649, file: !7650, line: 230, type: !38)
!7657 = !DILocation(line: 229, column: 60, scope: !7649)
!7658 = !DILocation(line: 229, column: 72, scope: !7649)
!7659 = !DILocation(line: 230, column: 15, scope: !7649)
!7660 = !DILocation(line: 230, column: 23, scope: !7649)
!7661 = distinct !DISubprogram(name: "constant_test_bit", scope: !7624, file: !7624, line: 204, type: !7662, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7664)
!7662 = !DISubroutineType(types: !7663)
!7663 = !{!1328, !445, !5513}
!7664 = !{!7665, !7666}
!7665 = !DILocalVariable(name: "nr", arg: 1, scope: !7661, file: !7624, line: 204, type: !445)
!7666 = !DILocalVariable(name: "addr", arg: 2, scope: !7661, file: !7624, line: 204, type: !5513)
!7667 = !DILocation(line: 204, column: 52, scope: !7661)
!7668 = !DILocation(line: 204, column: 86, scope: !7661)
!7669 = !DILocation(line: 206, column: 19, scope: !7661)
!7670 = !DILocation(line: 206, column: 22, scope: !7661)
!7671 = !DILocation(line: 206, column: 15, scope: !7661)
!7672 = !DILocation(line: 207, column: 4, scope: !7661)
!7673 = !DILocation(line: 207, column: 9, scope: !7661)
!7674 = !DILocation(line: 207, column: 12, scope: !7661)
!7675 = !DILocation(line: 206, column: 44, scope: !7661)
!7676 = !DILocation(line: 207, column: 37, scope: !7661)
!7677 = !DILocation(line: 206, column: 2, scope: !7661)
!7678 = distinct !DISubprogram(name: "variable_test_bit", scope: !7624, file: !7624, line: 224, type: !7662, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7679)
!7679 = !{!7680, !7681, !7682}
!7680 = !DILocalVariable(name: "nr", arg: 1, scope: !7678, file: !7624, line: 224, type: !445)
!7681 = !DILocalVariable(name: "addr", arg: 2, scope: !7678, file: !7624, line: 224, type: !5513)
!7682 = !DILocalVariable(name: "oldbit", scope: !7678, file: !7624, line: 226, type: !1328)
!7683 = !DILocation(line: 224, column: 52, scope: !7678)
!7684 = !DILocation(line: 224, column: 86, scope: !7678)
!7685 = !DILocation(line: 226, column: 2, scope: !7678)
!7686 = !DILocation(line: 226, column: 7, scope: !7678)
!7687 = !DILocation(line: 231, column: 33, scope: !7678)
!7688 = !DILocation(line: 231, column: 46, scope: !7678)
!7689 = !DILocation(line: 228, column: 2, scope: !7678)
!7690 = !{i64 2147912220, i64 2147912294}
!7691 = !DILocation(line: 233, column: 9, scope: !7678)
!7692 = !DILocation(line: 234, column: 1, scope: !7678)
!7693 = !DILocation(line: 233, column: 2, scope: !7678)
!7694 = distinct !DISubprogram(name: "put_devmap_managed_page_refs", scope: !1948, file: !1948, line: 1422, type: !7695, scopeLine: 1423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7697)
!7695 = !DISubroutineType(types: !7696)
!7696 = !{!1328, !2078, !38}
!7697 = !{!7698, !7699}
!7698 = !DILocalVariable(name: "page", arg: 1, scope: !7694, file: !1948, line: 1422, type: !2078)
!7699 = !DILocalVariable(name: "refs", arg: 2, scope: !7694, file: !1948, line: 1422, type: !38)
!7700 = !DILocation(line: 1422, column: 62, scope: !7694)
!7701 = !DILocation(line: 1422, column: 72, scope: !7694)
!7702 = !DILocation(line: 1424, column: 2, scope: !7694)
!7703 = distinct !DISubprogram(name: "folio_put_testzero", scope: !1948, file: !1948, line: 1103, type: !5082, scopeLine: 1104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7704)
!7704 = !{!7705}
!7705 = !DILocalVariable(name: "folio", arg: 1, scope: !7703, file: !1948, line: 1103, type: !3406)
!7706 = !DILocation(line: 1103, column: 52, scope: !7703)
!7707 = !DILocation(line: 1105, column: 28, scope: !7703)
!7708 = !DILocation(line: 1105, column: 35, scope: !7703)
!7709 = !DILocation(line: 1105, column: 9, scope: !7703)
!7710 = !DILocation(line: 1105, column: 2, scope: !7703)
!7711 = !DISubprogram(name: "__folio_put", scope: !1948, file: !1948, line: 1283, type: !5073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7712 = distinct !DISubprogram(name: "put_page_testzero", scope: !1948, file: !1948, line: 1097, type: !7713, scopeLine: 1098, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7715)
!7713 = !DISubroutineType(types: !7714)
!7714 = !{!38, !2078}
!7715 = !{!7716}
!7716 = !DILocalVariable(name: "page", arg: 1, scope: !7712, file: !1948, line: 1097, type: !2078)
!7717 = !DILocation(line: 1097, column: 50, scope: !7712)
!7718 = !DILocation(line: 1100, column: 31, scope: !7712)
!7719 = !DILocation(line: 1100, column: 9, scope: !7712)
!7720 = !DILocation(line: 1100, column: 2, scope: !7712)
!7721 = distinct !DISubprogram(name: "page_ref_dec_and_test", scope: !7722, file: !7722, line: 208, type: !7713, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7723)
!7722 = !DIFile(filename: "./include/linux/page_ref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0ed1500ef964c39be8e0b4c715e2a9d4")
!7723 = !{!7724, !7725}
!7724 = !DILocalVariable(name: "page", arg: 1, scope: !7721, file: !7722, line: 208, type: !2078)
!7725 = !DILocalVariable(name: "ret", scope: !7721, file: !7722, line: 210, type: !38)
!7726 = !DILocation(line: 208, column: 54, scope: !7721)
!7727 = !DILocation(line: 210, column: 2, scope: !7721)
!7728 = !DILocation(line: 210, column: 6, scope: !7721)
!7729 = !DILocation(line: 210, column: 33, scope: !7721)
!7730 = !DILocation(line: 210, column: 39, scope: !7721)
!7731 = !DILocation(line: 210, column: 12, scope: !7721)
!7732 = !DILocation(line: 214, column: 9, scope: !7721)
!7733 = !DILocation(line: 215, column: 1, scope: !7721)
!7734 = !DILocation(line: 214, column: 2, scope: !7721)
!7735 = distinct !DISubprogram(name: "atomic_dec_and_test", scope: !7236, file: !7236, line: 1372, type: !7736, scopeLine: 1373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7739)
!7736 = !DISubroutineType(types: !7737)
!7737 = !{!1328, !7738}
!7738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!7739 = !{!7740}
!7740 = !DILocalVariable(name: "v", arg: 1, scope: !7735, file: !7236, line: 1372, type: !7738)
!7741 = !DILocation(line: 1372, column: 31, scope: !7735)
!7742 = !DILocation(line: 1374, column: 2, scope: !7735)
!7743 = !DILocation(line: 1374, column: 2, scope: !7744)
!7744 = distinct !DILexicalBlock(scope: !7735, file: !7236, line: 1374, column: 2)
!7745 = !DILocation(line: 1375, column: 31, scope: !7735)
!7746 = !DILocation(line: 1375, column: 2, scope: !7735)
!7747 = !DILocation(line: 1376, column: 33, scope: !7735)
!7748 = !DILocation(line: 1376, column: 9, scope: !7735)
!7749 = !DILocation(line: 1376, column: 2, scope: !7735)
!7750 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !7607, file: !7607, line: 94, type: !7608, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7751)
!7751 = !{!7752, !7753}
!7752 = !DILocalVariable(name: "v", arg: 1, scope: !7750, file: !7607, line: 94, type: !7610)
!7753 = !DILocalVariable(name: "size", arg: 2, scope: !7750, file: !7607, line: 94, type: !51)
!7754 = !DILocation(line: 94, column: 79, scope: !7750)
!7755 = !DILocation(line: 94, column: 89, scope: !7750)
!7756 = !DILocation(line: 96, column: 20, scope: !7750)
!7757 = !DILocation(line: 96, column: 23, scope: !7750)
!7758 = !DILocation(line: 96, column: 2, scope: !7750)
!7759 = !DILocation(line: 97, column: 2, scope: !7750)
!7760 = !DILocation(line: 98, column: 1, scope: !7750)
!7761 = distinct !DISubprogram(name: "raw_atomic_dec_and_test", scope: !7762, file: !7762, line: 2254, type: !7736, scopeLine: 2255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7763)
!7762 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!7763 = !{!7764}
!7764 = !DILocalVariable(name: "v", arg: 1, scope: !7761, file: !7762, line: 2254, type: !7738)
!7765 = !DILocation(line: 2254, column: 35, scope: !7761)
!7766 = !DILocation(line: 2257, column: 34, scope: !7761)
!7767 = !DILocation(line: 2257, column: 9, scope: !7761)
!7768 = !DILocation(line: 2257, column: 2, scope: !7761)
!7769 = distinct !DISubprogram(name: "kasan_check_write", scope: !7640, file: !7640, line: 44, type: !7641, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7770)
!7770 = !{!7771, !7772}
!7771 = !DILocalVariable(name: "p", arg: 1, scope: !7769, file: !7640, line: 44, type: !7610)
!7772 = !DILocalVariable(name: "size", arg: 2, scope: !7769, file: !7640, line: 44, type: !7)
!7773 = !DILocation(line: 44, column: 59, scope: !7769)
!7774 = !DILocation(line: 44, column: 75, scope: !7769)
!7775 = !DILocation(line: 46, column: 2, scope: !7769)
!7776 = distinct !DISubprogram(name: "arch_atomic_dec_and_test", scope: !7777, file: !7777, line: 65, type: !7736, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7778)
!7777 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!7778 = !{!7779, !7780}
!7779 = !DILocalVariable(name: "v", arg: 1, scope: !7776, file: !7777, line: 65, type: !7738)
!7780 = !DILocalVariable(name: "c", scope: !7781, file: !7777, line: 67, type: !1328)
!7781 = distinct !DILexicalBlock(scope: !7776, file: !7777, line: 67, column: 9)
!7782 = !DILocation(line: 65, column: 64, scope: !7776)
!7783 = !DILocation(line: 67, column: 9, scope: !7781)
!7784 = !{i64 2148413540, i64 2148413579, i64 2148413600, i64 2148413637, i64 2148413660, i64 2148413669, i64 2148413743}
!7785 = !DILocation(line: 67, column: 9, scope: !7776)
!7786 = !DILocation(line: 67, column: 2, scope: !7776)
!7787 = distinct !DISubprogram(name: "raw_atomic_long_add", scope: !727, file: !727, line: 118, type: !7237, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7788)
!7788 = !{!7789, !7790}
!7789 = !DILocalVariable(name: "i", arg: 1, scope: !7787, file: !727, line: 118, type: !445)
!7790 = !DILocalVariable(name: "v", arg: 2, scope: !7787, file: !727, line: 118, type: !4717)
!7791 = !DILocation(line: 118, column: 26, scope: !7787)
!7792 = !DILocation(line: 118, column: 44, scope: !7787)
!7793 = !DILocation(line: 121, column: 19, scope: !7787)
!7794 = !DILocation(line: 121, column: 22, scope: !7787)
!7795 = !DILocation(line: 121, column: 2, scope: !7787)
!7796 = !DILocation(line: 125, column: 1, scope: !7787)
!7797 = distinct !DISubprogram(name: "raw_atomic64_add", scope: !7762, file: !7762, line: 2643, type: !7798, scopeLine: 2644, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7801)
!7798 = !DISubroutineType(types: !7799)
!7799 = !{null, !732, !7800}
!7800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!7801 = !{!7802, !7803}
!7802 = !DILocalVariable(name: "i", arg: 1, scope: !7797, file: !7762, line: 2643, type: !732)
!7803 = !DILocalVariable(name: "v", arg: 2, scope: !7797, file: !7762, line: 2643, type: !7800)
!7804 = !DILocation(line: 2643, column: 22, scope: !7797)
!7805 = !DILocation(line: 2643, column: 37, scope: !7797)
!7806 = !DILocation(line: 2645, column: 20, scope: !7797)
!7807 = !DILocation(line: 2645, column: 23, scope: !7797)
!7808 = !DILocation(line: 2645, column: 2, scope: !7797)
!7809 = !DILocation(line: 2646, column: 1, scope: !7797)
!7810 = distinct !DISubprogram(name: "arch_atomic64_add", scope: !7811, file: !7811, line: 23, type: !7798, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7812)
!7811 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!7812 = !{!7813, !7814}
!7813 = !DILocalVariable(name: "i", arg: 1, scope: !7810, file: !7811, line: 23, type: !732)
!7814 = !DILocalVariable(name: "v", arg: 2, scope: !7810, file: !7811, line: 23, type: !7800)
!7815 = !DILocation(line: 23, column: 51, scope: !7810)
!7816 = !DILocation(line: 23, column: 66, scope: !7810)
!7817 = !DILocation(line: 26, column: 16, scope: !7810)
!7818 = !DILocation(line: 26, column: 19, scope: !7810)
!7819 = !DILocation(line: 27, column: 16, scope: !7810)
!7820 = !DILocation(line: 27, column: 25, scope: !7810)
!7821 = !DILocation(line: 27, column: 28, scope: !7810)
!7822 = !DILocation(line: 25, column: 2, scope: !7810)
!7823 = !{i64 2148439627, i64 2148439666, i64 2148439687, i64 2148439724, i64 2148439747, i64 2148439617}
!7824 = !DILocation(line: 28, column: 1, scope: !7810)
!7825 = distinct !DISubprogram(name: "raw_atomic_long_read", scope: !727, file: !727, line: 35, type: !7251, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7826)
!7826 = !{!7827}
!7827 = !DILocalVariable(name: "v", arg: 1, scope: !7825, file: !727, line: 35, type: !7253)
!7828 = !DILocation(line: 35, column: 43, scope: !7825)
!7829 = !DILocation(line: 38, column: 27, scope: !7825)
!7830 = !DILocation(line: 38, column: 9, scope: !7825)
!7831 = !DILocation(line: 38, column: 2, scope: !7825)
!7832 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !7762, file: !7762, line: 2554, type: !7833, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7837)
!7833 = !DISubroutineType(types: !7834)
!7834 = !{!732, !7835}
!7835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7836, size: 64)
!7836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !728)
!7837 = !{!7838}
!7838 = !DILocalVariable(name: "v", arg: 1, scope: !7832, file: !7762, line: 2554, type: !7835)
!7839 = !DILocation(line: 2554, column: 37, scope: !7832)
!7840 = !DILocation(line: 2556, column: 28, scope: !7832)
!7841 = !DILocation(line: 2556, column: 9, scope: !7832)
!7842 = !DILocation(line: 2556, column: 2, scope: !7832)
!7843 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !7811, file: !7811, line: 13, type: !7833, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7844)
!7844 = !{!7845}
!7845 = !DILocalVariable(name: "v", arg: 1, scope: !7843, file: !7811, line: 13, type: !7835)
!7846 = !DILocation(line: 13, column: 65, scope: !7843)
!7847 = !DILocation(line: 15, column: 9, scope: !7843)
!7848 = !DILocation(line: 15, column: 2, scope: !7843)
!7849 = distinct !DISubprogram(name: "raw_atomic_long_sub", scope: !727, file: !727, line: 307, type: !7237, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7850)
!7850 = !{!7851, !7852}
!7851 = !DILocalVariable(name: "i", arg: 1, scope: !7849, file: !727, line: 307, type: !445)
!7852 = !DILocalVariable(name: "v", arg: 2, scope: !7849, file: !727, line: 307, type: !4717)
!7853 = !DILocation(line: 307, column: 26, scope: !7849)
!7854 = !DILocation(line: 307, column: 44, scope: !7849)
!7855 = !DILocation(line: 310, column: 19, scope: !7849)
!7856 = !DILocation(line: 310, column: 22, scope: !7849)
!7857 = !DILocation(line: 310, column: 2, scope: !7849)
!7858 = !DILocation(line: 314, column: 1, scope: !7849)
!7859 = distinct !DISubprogram(name: "raw_atomic64_sub", scope: !7762, file: !7762, line: 2866, type: !7798, scopeLine: 2867, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7860)
!7860 = !{!7861, !7862}
!7861 = !DILocalVariable(name: "i", arg: 1, scope: !7859, file: !7762, line: 2866, type: !732)
!7862 = !DILocalVariable(name: "v", arg: 2, scope: !7859, file: !7762, line: 2866, type: !7800)
!7863 = !DILocation(line: 2866, column: 22, scope: !7859)
!7864 = !DILocation(line: 2866, column: 37, scope: !7859)
!7865 = !DILocation(line: 2868, column: 20, scope: !7859)
!7866 = !DILocation(line: 2868, column: 23, scope: !7859)
!7867 = !DILocation(line: 2868, column: 2, scope: !7859)
!7868 = !DILocation(line: 2869, column: 1, scope: !7859)
!7869 = distinct !DISubprogram(name: "arch_atomic64_sub", scope: !7811, file: !7811, line: 30, type: !7798, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7870)
!7870 = !{!7871, !7872}
!7871 = !DILocalVariable(name: "i", arg: 1, scope: !7869, file: !7811, line: 30, type: !732)
!7872 = !DILocalVariable(name: "v", arg: 2, scope: !7869, file: !7811, line: 30, type: !7800)
!7873 = !DILocation(line: 30, column: 51, scope: !7869)
!7874 = !DILocation(line: 30, column: 66, scope: !7869)
!7875 = !DILocation(line: 33, column: 16, scope: !7869)
!7876 = !DILocation(line: 33, column: 19, scope: !7869)
!7877 = !DILocation(line: 34, column: 16, scope: !7869)
!7878 = !DILocation(line: 34, column: 25, scope: !7869)
!7879 = !DILocation(line: 34, column: 28, scope: !7869)
!7880 = !DILocation(line: 32, column: 2, scope: !7869)
!7881 = !{i64 2148439990, i64 2148440029, i64 2148440050, i64 2148440087, i64 2148440110, i64 2148439980}
!7882 = !DILocation(line: 35, column: 1, scope: !7869)
!7883 = distinct !DISubprogram(name: "ttm_tt_debugfs_shrink_open", scope: !3, file: !3, line: 397, type: !3528, scopeLine: 397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7884)
!7884 = !{!7885, !7886}
!7885 = !DILocalVariable(name: "inode", arg: 1, scope: !7883, file: !3, line: 397, type: !484)
!7886 = !DILocalVariable(name: "file", arg: 2, scope: !7883, file: !3, line: 397, type: !700)
!7887 = !DILocation(line: 397, column: 1, scope: !7883)
!7888 = !DISubprogram(name: "single_open", scope: !1899, file: !1899, line: 166, type: !7889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7889 = !DISubroutineType(types: !7890)
!7890 = !{!38, !700, !1927, !36}
!7891 = distinct !DISubprogram(name: "ttm_tt_debugfs_shrink_show", scope: !3, file: !3, line: 390, type: !1928, scopeLine: 391, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7892)
!7892 = !{!7893, !7894, !7895}
!7893 = !DILocalVariable(name: "m", arg: 1, scope: !7891, file: !3, line: 390, type: !1897)
!7894 = !DILocalVariable(name: "data", arg: 2, scope: !7891, file: !3, line: 390, type: !36)
!7895 = !DILocalVariable(name: "ctx", scope: !7891, file: !3, line: 392, type: !6093)
!7896 = !DILocation(line: 390, column: 56, scope: !7891)
!7897 = !DILocation(line: 390, column: 65, scope: !7891)
!7898 = !DILocation(line: 392, column: 2, scope: !7891)
!7899 = !DILocation(line: 392, column: 27, scope: !7891)
!7900 = !DILocation(line: 394, column: 13, scope: !7891)
!7901 = !DILocation(line: 394, column: 24, scope: !7891)
!7902 = !DILocation(line: 394, column: 2, scope: !7891)
!7903 = !DILocation(line: 396, column: 1, scope: !7891)
!7904 = !DILocation(line: 395, column: 2, scope: !7891)
!7905 = !DISubprogram(name: "seq_printf", scope: !1899, file: !1899, line: 119, type: !7906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7906 = !DISubroutineType(types: !7907)
!7907 = !{null, !1897, !32, null}
!7908 = distinct !DISubprogram(name: "ttm_kmap_iter_tt_map_local", scope: !3, file: !3, line: 421, type: !5538, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7909)
!7909 = !{!7910, !7911, !7912, !7913, !7914}
!7910 = !DILocalVariable(name: "iter", arg: 1, scope: !7908, file: !3, line: 421, type: !5540)
!7911 = !DILocalVariable(name: "dmap", arg: 2, scope: !7908, file: !3, line: 422, type: !5541)
!7912 = !DILocalVariable(name: "i", arg: 3, scope: !7908, file: !3, line: 423, type: !55)
!7913 = !DILocalVariable(name: "iter_tt", scope: !7908, file: !3, line: 425, type: !5523)
!7914 = !DILocalVariable(name: "__mptr", scope: !7915, file: !3, line: 426, type: !36)
!7915 = distinct !DILexicalBlock(scope: !7908, file: !3, line: 426, column: 3)
!7916 = !DILocation(line: 421, column: 62, scope: !7908)
!7917 = !DILocation(line: 422, column: 30, scope: !7908)
!7918 = !DILocation(line: 423, column: 20, scope: !7908)
!7919 = !DILocation(line: 425, column: 2, scope: !7908)
!7920 = !DILocation(line: 425, column: 27, scope: !7908)
!7921 = !DILocation(line: 426, column: 3, scope: !7915)
!7922 = !DILocation(line: 426, column: 3, scope: !7908)
!7923 = !DILocation(line: 428, column: 22, scope: !7908)
!7924 = !DILocation(line: 428, column: 49, scope: !7908)
!7925 = !DILocation(line: 428, column: 58, scope: !7908)
!7926 = !DILocation(line: 428, column: 62, scope: !7908)
!7927 = !DILocation(line: 428, column: 68, scope: !7908)
!7928 = !DILocation(line: 429, column: 14, scope: !7908)
!7929 = !DILocation(line: 429, column: 23, scope: !7908)
!7930 = !DILocation(line: 428, column: 28, scope: !7908)
!7931 = !DILocation(line: 428, column: 2, scope: !7908)
!7932 = !DILocation(line: 430, column: 1, scope: !7908)
!7933 = distinct !DISubprogram(name: "ttm_kmap_iter_tt_unmap_local", scope: !3, file: !3, line: 432, type: !5553, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7934)
!7934 = !{!7935, !7936}
!7935 = !DILocalVariable(name: "iter", arg: 1, scope: !7933, file: !3, line: 432, type: !5540)
!7936 = !DILocalVariable(name: "map", arg: 2, scope: !7933, file: !3, line: 433, type: !5541)
!7937 = !DILocation(line: 432, column: 64, scope: !7933)
!7938 = !DILocation(line: 433, column: 25, scope: !7933)
!7939 = !DILocation(line: 435, column: 2, scope: !7933)
!7940 = !DILocation(line: 435, column: 2, scope: !7941)
!7941 = distinct !DILexicalBlock(scope: !7933, file: !3, line: 435, column: 2)
!7942 = !DILocation(line: 435, column: 2, scope: !7943)
!7943 = distinct !DILexicalBlock(scope: !7941, file: !3, line: 435, column: 2)
!7944 = !DILocation(line: 436, column: 1, scope: !7933)
!7945 = distinct !DISubprogram(name: "iosys_map_set_vaddr", scope: !5543, file: !5543, line: 183, type: !7946, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7948)
!7946 = !DISubroutineType(types: !7947)
!7947 = !{null, !5541, !36}
!7948 = !{!7949, !7950}
!7949 = !DILocalVariable(name: "map", arg: 1, scope: !7945, file: !5543, line: 183, type: !5541)
!7950 = !DILocalVariable(name: "vaddr", arg: 2, scope: !7945, file: !5543, line: 183, type: !36)
!7951 = !DILocation(line: 183, column: 58, scope: !7945)
!7952 = !DILocation(line: 183, column: 69, scope: !7945)
!7953 = !DILocation(line: 185, column: 15, scope: !7945)
!7954 = !DILocation(line: 185, column: 2, scope: !7945)
!7955 = !DILocation(line: 185, column: 7, scope: !7945)
!7956 = !DILocation(line: 185, column: 13, scope: !7945)
!7957 = !DILocation(line: 186, column: 2, scope: !7945)
!7958 = !DILocation(line: 186, column: 7, scope: !7945)
!7959 = !DILocation(line: 186, column: 16, scope: !7945)
!7960 = !DILocation(line: 187, column: 1, scope: !7945)
!7961 = distinct !DISubprogram(name: "kmap_local_page_prot", scope: !7411, file: !7411, line: 193, type: !7962, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7964)
!7962 = !DISubroutineType(types: !7963)
!7963 = !{!36, !2078, !1968}
!7964 = !{!7965, !7966}
!7965 = !DILocalVariable(name: "page", arg: 1, scope: !7961, file: !7411, line: 193, type: !2078)
!7966 = !DILocalVariable(name: "prot", arg: 2, scope: !7961, file: !7411, line: 193, type: !1968)
!7967 = !DILocation(line: 193, column: 55, scope: !7961)
!7968 = !DILocation(line: 193, column: 70, scope: !7961)
!7969 = !DILocation(line: 195, column: 25, scope: !7961)
!7970 = !DILocation(line: 195, column: 9, scope: !7961)
!7971 = !DILocation(line: 195, column: 2, scope: !7961)
