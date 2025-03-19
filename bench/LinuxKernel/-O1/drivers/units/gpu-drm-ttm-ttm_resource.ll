; ModuleID = 'drivers/gpu/drm/ttm/ttm_resource.c'
source_filename = "drivers/gpu/drm/ttm/ttm_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_lru_bulk_move_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_lru_bulk_move_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_lru_bulk_move_tail: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_lru_bulk_move_tail ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_resource_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_resource_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_resource_fini: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_resource_fini ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_resource_free: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_resource_free ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_resource_manager_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_resource_manager_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_resource_manager_evict_all: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_resource_manager_evict_all ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_resource_manager_usage: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_resource_manager_usage ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_resource_manager_debug: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_resource_manager_debug ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_kmap_iter_iomap_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_kmap_iter_iomap_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_resource_manager_create_debugfs: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_resource_manager_create_debugfs ; .previous"

%struct.ttm_operation_ctx = type { i8, i8, i8, i8, i8, ptr, i64 }
%struct.ttm_kmap_iter_ops = type { ptr, ptr, i8 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ttm_lru_bulk_move = type { [8 x [4 x %struct.ttm_lru_bulk_move_pos]] }
%struct.ttm_lru_bulk_move_pos = type { ptr, ptr }
%struct.ttm_resource = type { i64, i64, i32, i32, %struct.ttm_bus_placement, ptr, %struct.list_head }
%struct.ttm_bus_placement = type { ptr, i64, i8, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, ptr, i32, i32, %struct.work_struct, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i64, i32, ptr, ptr, ptr, %struct.dma_resv, %struct.anon.16, ptr, %struct.list_head, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.14, %struct.qspinlock }
%union.anon.14 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.anon.16 = type { %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.ttm_resource_manager = type { i8, i8, ptr, i64, ptr, %struct.spinlock, ptr, [4 x %struct.list_head], i64 }
%struct.ttm_pool = type { ptr, i32, i8, i8, [3 x %struct.anon.13] }
%struct.anon.13 = type { [11 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_resource_manager_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.19, i64, i64, i64, %struct.kref, i32 }
%union.anon.19 = type { %struct.list_head }
%struct.ttm_resource_cursor = type { i32 }
%struct.ttm_kmap_iter_iomap = type { %struct.ttm_kmap_iter, ptr, ptr, i64, %struct.anon.17 }
%struct.ttm_kmap_iter = type { ptr }
%struct.anon.17 = type { ptr, i64, i64, i64 }
%struct.ttm_kmap_iter_linear_io = type { %struct.ttm_kmap_iter, %struct.iosys_map, i8 }
%struct.iosys_map = type { %union.anon.18, i8 }
%union.anon.18 = type { ptr }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i64, i32, i32, i64, i32, i32 }
%struct.io_mapping = type { i64, i64, %struct.pgprot, ptr }
%struct.pgprot = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.20, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.21, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.22, ptr, %struct.address_space, %struct.list_head, %union.anon.23, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.20 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.21 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.22 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.23 = type { ptr }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.seq_file = type { ptr, i64, i64, i64, i64, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__UNIQUE_ID___addressable_ttm_lru_bulk_move_init297 = internal global ptr @ttm_lru_bulk_move_init, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_ttm_lru_bulk_move_tail298 = internal global ptr @ttm_lru_bulk_move_tail, section ".discard.addressable", align 8, !dbg !5110
@__UNIQUE_ID___addressable_ttm_resource_init299 = internal global ptr @ttm_resource_init, section ".discard.addressable", align 8, !dbg !5112
@__UNIQUE_ID___addressable_ttm_resource_fini300 = internal global ptr @ttm_resource_fini, section ".discard.addressable", align 8, !dbg !5114
@__UNIQUE_ID___addressable_ttm_resource_free301 = internal global ptr @ttm_resource_free, section ".discard.addressable", align 8, !dbg !5116
@__UNIQUE_ID___addressable_ttm_resource_manager_init302 = internal global ptr @ttm_resource_manager_init, section ".discard.addressable", align 8, !dbg !5118
@__const.ttm_resource_manager_evict_all.ctx = private unnamed_addr constant %struct.ttm_operation_ctx { i8 0, i8 0, i8 0, i8 0, i8 1, ptr null, i64 0 }, align 8
@__UNIQUE_ID___addressable_ttm_resource_manager_evict_all303 = internal global ptr @ttm_resource_manager_evict_all, section ".discard.addressable", align 8, !dbg !5120
@__UNIQUE_ID___addressable_ttm_resource_manager_usage304 = internal global ptr @ttm_resource_manager_usage, section ".discard.addressable", align 8, !dbg !5122
@.str = private unnamed_addr constant [16 x i8] c"  use_type: %d\0A\00", align 1, !dbg !5124
@.str.1 = private unnamed_addr constant [14 x i8] c"  use_tt: %d\0A\00", align 1, !dbg !5126
@.str.2 = private unnamed_addr constant [14 x i8] c"  size: %llu\0A\00", align 1, !dbg !5131
@.str.3 = private unnamed_addr constant [15 x i8] c"  usage: %llu\0A\00", align 1, !dbg !5133
@__UNIQUE_ID___addressable_ttm_resource_manager_debug305 = internal global ptr @ttm_resource_manager_debug, section ".discard.addressable", align 8, !dbg !5138
@ttm_kmap_iter_io_ops = internal constant %struct.ttm_kmap_iter_ops { ptr @ttm_kmap_iter_iomap_map_local, ptr @ttm_kmap_iter_iomap_unmap_local, i8 0 }, align 8, !dbg !5149
@__UNIQUE_ID___addressable_ttm_kmap_iter_iomap_init306 = internal global ptr @ttm_kmap_iter_iomap_init, section ".discard.addressable", align 8, !dbg !5140
@ttm_kmap_iter_linear_io_ops = internal constant %struct.ttm_kmap_iter_ops { ptr @ttm_kmap_iter_linear_io_map_local, ptr null, i8 0 }, align 8, !dbg !5151
@ttm_resource_manager_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @ttm_resource_manager_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5153
@__UNIQUE_ID___addressable_ttm_resource_manager_create_debugfs307 = internal global ptr @ttm_resource_manager_create_debugfs, section ".discard.addressable", align 8, !dbg !5142
@.str.4 = private unnamed_addr constant [35 x i8] c"drivers/gpu/drm/ttm/ttm_resource.c\00", align 1, !dbg !5144
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID___addressable_ttm_lru_bulk_move_init297, ptr @__UNIQUE_ID___addressable_ttm_lru_bulk_move_tail298, ptr @__UNIQUE_ID___addressable_ttm_resource_init299, ptr @__UNIQUE_ID___addressable_ttm_resource_fini300, ptr @__UNIQUE_ID___addressable_ttm_resource_free301, ptr @__UNIQUE_ID___addressable_ttm_resource_manager_init302, ptr @__UNIQUE_ID___addressable_ttm_resource_manager_evict_all303, ptr @__UNIQUE_ID___addressable_ttm_resource_manager_usage304, ptr @__UNIQUE_ID___addressable_ttm_resource_manager_debug305, ptr @__UNIQUE_ID___addressable_ttm_kmap_iter_iomap_init306, ptr @__UNIQUE_ID___addressable_ttm_resource_manager_create_debugfs307], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ttm_lru_bulk_move_init(ptr noundef %bulk) #0 align 16 !dbg !5164 {
entry:
  %bulk.addr = alloca ptr, align 8
  store ptr %bulk, ptr %bulk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bulk.addr, metadata !5168, metadata !DIExpression()), !dbg !5169
  %0 = load ptr, ptr %bulk.addr, align 8, !dbg !5170
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 512, i1 false), !dbg !5171
  ret void, !dbg !5172
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ttm_lru_bulk_move_tail(ptr noundef %bulk) #0 align 16 !dbg !5173 {
entry:
  %bulk.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pos = alloca ptr, align 8
  %man = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bulk, ptr %bulk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bulk.addr, metadata !5175, metadata !DIExpression()), !dbg !5187
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !5188
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5176, metadata !DIExpression()), !dbg !5189
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #11, !dbg !5188
  call void @llvm.dbg.declare(metadata ptr %j, metadata !5177, metadata !DIExpression()), !dbg !5190
  store i32 0, ptr %i, align 4, !dbg !5191
  br label %for.cond, !dbg !5192

for.cond:                                         ; preds = %for.inc32, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5193
  %cmp = icmp ult i32 %0, 8, !dbg !5194
  br i1 %cmp, label %for.body, label %for.end34, !dbg !5195

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !dbg !5196
  br label %for.cond1, !dbg !5197

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4, !dbg !5198
  %cmp2 = icmp ult i32 %1, 4, !dbg !5199
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !5200

for.body3:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #11, !dbg !5201
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !5178, metadata !DIExpression()), !dbg !5202
  %2 = load ptr, ptr %bulk.addr, align 8, !dbg !5203
  %pos4 = getelementptr inbounds %struct.ttm_lru_bulk_move, ptr %2, i32 0, i32 0, !dbg !5204
  %3 = load i32, ptr %i, align 4, !dbg !5205
  %idxprom = zext i32 %3 to i64, !dbg !5203
  %arrayidx = getelementptr [8 x [4 x %struct.ttm_lru_bulk_move_pos]], ptr %pos4, i64 0, i64 %idxprom, !dbg !5203
  %4 = load i32, ptr %j, align 4, !dbg !5206
  %idxprom5 = zext i32 %4 to i64, !dbg !5203
  %arrayidx6 = getelementptr [4 x %struct.ttm_lru_bulk_move_pos], ptr %arrayidx, i64 0, i64 %idxprom5, !dbg !5203
  store ptr %arrayidx6, ptr %pos, align 8, !dbg !5202
  call void @llvm.lifetime.start.p0(i64 8, ptr %man) #11, !dbg !5207
  call void @llvm.dbg.declare(metadata ptr %man, metadata !5186, metadata !DIExpression()), !dbg !5208
  %5 = load ptr, ptr %pos, align 8, !dbg !5209
  %first = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, ptr %5, i32 0, i32 0, !dbg !5211
  %6 = load ptr, ptr %first, align 8, !dbg !5211
  %tobool = icmp ne ptr %6, null, !dbg !5209
  br i1 %tobool, label %if.end, label %if.then, !dbg !5212

if.then:                                          ; preds = %for.body3
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5213

if.end:                                           ; preds = %for.body3
  br label %do.body, !dbg !5214

do.body:                                          ; preds = %if.end
  %7 = load ptr, ptr %pos, align 8, !dbg !5215
  %first7 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, ptr %7, i32 0, i32 0, !dbg !5215
  %8 = load ptr, ptr %first7, align 8, !dbg !5215
  %bo = getelementptr inbounds %struct.ttm_resource, ptr %8, i32 0, i32 5, !dbg !5215
  %9 = load ptr, ptr %bo, align 8, !dbg !5215
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %9, i32 0, i32 1, !dbg !5215
  %10 = load ptr, ptr %bdev, align 8, !dbg !5215
  %lru_lock = getelementptr inbounds %struct.ttm_device, ptr %10, i32 0, i32 6, !dbg !5215
  br label %do.cond, !dbg !5215

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5215

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !5217

do.body8:                                         ; preds = %do.end
  %11 = load ptr, ptr %pos, align 8, !dbg !5218
  %first9 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, ptr %11, i32 0, i32 0, !dbg !5218
  %12 = load ptr, ptr %first9, align 8, !dbg !5218
  %bo10 = getelementptr inbounds %struct.ttm_resource, ptr %12, i32 0, i32 5, !dbg !5218
  %13 = load ptr, ptr %bo10, align 8, !dbg !5218
  %base = getelementptr inbounds %struct.ttm_buffer_object, ptr %13, i32 0, i32 0, !dbg !5218
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %base, i32 0, i32 9, !dbg !5218
  %14 = load ptr, ptr %resv, align 8, !dbg !5218
  %lock = getelementptr inbounds %struct.dma_resv, ptr %14, i32 0, i32 0, !dbg !5218
  %base11 = getelementptr inbounds %struct.ww_mutex, ptr %lock, i32 0, i32 0, !dbg !5218
  br label %do.cond12, !dbg !5218

do.cond12:                                        ; preds = %do.body8
  br label %do.end13, !dbg !5218

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !5220

do.body14:                                        ; preds = %do.end13
  %15 = load ptr, ptr %pos, align 8, !dbg !5221
  %last = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, ptr %15, i32 0, i32 1, !dbg !5221
  %16 = load ptr, ptr %last, align 8, !dbg !5221
  %bo15 = getelementptr inbounds %struct.ttm_resource, ptr %16, i32 0, i32 5, !dbg !5221
  %17 = load ptr, ptr %bo15, align 8, !dbg !5221
  %base16 = getelementptr inbounds %struct.ttm_buffer_object, ptr %17, i32 0, i32 0, !dbg !5221
  %resv17 = getelementptr inbounds %struct.drm_gem_object, ptr %base16, i32 0, i32 9, !dbg !5221
  %18 = load ptr, ptr %resv17, align 8, !dbg !5221
  %lock18 = getelementptr inbounds %struct.dma_resv, ptr %18, i32 0, i32 0, !dbg !5221
  %base19 = getelementptr inbounds %struct.ww_mutex, ptr %lock18, i32 0, i32 0, !dbg !5221
  br label %do.cond20, !dbg !5221

do.cond20:                                        ; preds = %do.body14
  br label %do.end21, !dbg !5221

do.end21:                                         ; preds = %do.cond20
  %19 = load ptr, ptr %pos, align 8, !dbg !5223
  %first22 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, ptr %19, i32 0, i32 0, !dbg !5224
  %20 = load ptr, ptr %first22, align 8, !dbg !5224
  %bo23 = getelementptr inbounds %struct.ttm_resource, ptr %20, i32 0, i32 5, !dbg !5225
  %21 = load ptr, ptr %bo23, align 8, !dbg !5225
  %bdev24 = getelementptr inbounds %struct.ttm_buffer_object, ptr %21, i32 0, i32 1, !dbg !5226
  %22 = load ptr, ptr %bdev24, align 8, !dbg !5226
  %23 = load i32, ptr %i, align 4, !dbg !5227
  %call = call ptr @ttm_manager_type(ptr noundef %22, i32 noundef %23) #12, !dbg !5228
  store ptr %call, ptr %man, align 8, !dbg !5229
  %24 = load ptr, ptr %man, align 8, !dbg !5230
  %lru = getelementptr inbounds %struct.ttm_resource_manager, ptr %24, i32 0, i32 7, !dbg !5231
  %25 = load i32, ptr %j, align 4, !dbg !5232
  %idxprom25 = zext i32 %25 to i64, !dbg !5230
  %arrayidx26 = getelementptr [4 x %struct.list_head], ptr %lru, i64 0, i64 %idxprom25, !dbg !5230
  %26 = load ptr, ptr %pos, align 8, !dbg !5233
  %first27 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, ptr %26, i32 0, i32 0, !dbg !5234
  %27 = load ptr, ptr %first27, align 8, !dbg !5234
  %lru28 = getelementptr inbounds %struct.ttm_resource, ptr %27, i32 0, i32 6, !dbg !5235
  %28 = load ptr, ptr %pos, align 8, !dbg !5236
  %last29 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, ptr %28, i32 0, i32 1, !dbg !5237
  %29 = load ptr, ptr %last29, align 8, !dbg !5237
  %lru30 = getelementptr inbounds %struct.ttm_resource, ptr %29, i32 0, i32 6, !dbg !5238
  call void @list_bulk_move_tail(ptr noundef %arrayidx26, ptr noundef %lru28, ptr noundef %lru30) #12, !dbg !5239
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5240
  br label %cleanup, !dbg !5240

cleanup:                                          ; preds = %do.end21, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %man) #11, !dbg !5240
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #11, !dbg !5240
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5241

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %30 = load i32, ptr %j, align 4, !dbg !5242
  %inc = add i32 %30, 1, !dbg !5242
  store i32 %inc, ptr %j, align 4, !dbg !5242
  br label %for.cond1, !dbg !5243, !llvm.loop !5244

for.end:                                          ; preds = %for.cond1
  br label %for.inc32, !dbg !5248

for.inc32:                                        ; preds = %for.end
  %31 = load i32, ptr %i, align 4, !dbg !5249
  %inc33 = add i32 %31, 1, !dbg !5249
  store i32 %inc33, ptr %i, align 4, !dbg !5249
  br label %for.cond, !dbg !5250, !llvm.loop !5251

for.end34:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #11, !dbg !5253
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !5253
  ret void, !dbg !5253

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ttm_manager_type(ptr noundef %bdev, i32 noundef %mem_type) #4 align 16 !dbg !5254 {
entry:
  %bdev.addr = alloca ptr, align 8
  %mem_type.addr = alloca i32, align 4
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5258, metadata !DIExpression()), !dbg !5260
  store i32 %mem_type, ptr %mem_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mem_type.addr, metadata !5259, metadata !DIExpression()), !dbg !5261
  br label %do.body, !dbg !5262

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %mem_type.addr, align 4, !dbg !5263
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5263
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !5263

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %mem_type.addr, align 4, !dbg !5263
  %cmp = icmp sge i32 %2, 8, !dbg !5263
  br i1 %cmp, label %if.then, label %if.end, !dbg !5266

if.then:                                          ; preds = %land.lhs.true
  call void @__compiletime_assert_295() #13, !dbg !5263, !srcloc !5267
  unreachable, !dbg !5263

if.end:                                           ; preds = %land.lhs.true, %do.body
  br label %do.end, !dbg !5266

do.end:                                           ; preds = %if.end
  %3 = load ptr, ptr %bdev.addr, align 8, !dbg !5268
  %man_drv = getelementptr inbounds %struct.ttm_device, ptr %3, i32 0, i32 3, !dbg !5269
  %4 = load i32, ptr %mem_type.addr, align 4, !dbg !5270
  %idxprom = sext i32 %4 to i64, !dbg !5268
  %arrayidx = getelementptr [8 x ptr], ptr %man_drv, i64 0, i64 %idxprom, !dbg !5268
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !5268
  ret ptr %5, !dbg !5271
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_bulk_move_tail(ptr noundef %head, ptr noundef %first, ptr noundef %last) #4 align 16 !dbg !5272 {
entry:
  %head.addr = alloca ptr, align 8
  %first.addr = alloca ptr, align 8
  %last.addr = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5277, metadata !DIExpression()), !dbg !5280
  store ptr %first, ptr %first.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %first.addr, metadata !5278, metadata !DIExpression()), !dbg !5281
  store ptr %last, ptr %last.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !5279, metadata !DIExpression()), !dbg !5282
  %0 = load ptr, ptr %last.addr, align 8, !dbg !5283
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !5284
  %1 = load ptr, ptr %next, align 8, !dbg !5284
  %2 = load ptr, ptr %first.addr, align 8, !dbg !5285
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5286
  %3 = load ptr, ptr %prev, align 8, !dbg !5286
  %next1 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5287
  store ptr %1, ptr %next1, align 8, !dbg !5288
  %4 = load ptr, ptr %first.addr, align 8, !dbg !5289
  %prev2 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !5290
  %5 = load ptr, ptr %prev2, align 8, !dbg !5290
  %6 = load ptr, ptr %last.addr, align 8, !dbg !5291
  %next3 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !5292
  %7 = load ptr, ptr %next3, align 8, !dbg !5292
  %prev4 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1, !dbg !5293
  store ptr %5, ptr %prev4, align 8, !dbg !5294
  %8 = load ptr, ptr %first.addr, align 8, !dbg !5295
  %9 = load ptr, ptr %head.addr, align 8, !dbg !5296
  %prev5 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1, !dbg !5297
  %10 = load ptr, ptr %prev5, align 8, !dbg !5297
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !5298
  store ptr %8, ptr %next6, align 8, !dbg !5299
  %11 = load ptr, ptr %head.addr, align 8, !dbg !5300
  %prev7 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1, !dbg !5301
  %12 = load ptr, ptr %prev7, align 8, !dbg !5301
  %13 = load ptr, ptr %first.addr, align 8, !dbg !5302
  %prev8 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1, !dbg !5303
  store ptr %12, ptr %prev8, align 8, !dbg !5304
  %14 = load ptr, ptr %head.addr, align 8, !dbg !5305
  %15 = load ptr, ptr %last.addr, align 8, !dbg !5306
  %next9 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 0, !dbg !5307
  store ptr %14, ptr %next9, align 8, !dbg !5308
  %16 = load ptr, ptr %last.addr, align 8, !dbg !5309
  %17 = load ptr, ptr %head.addr, align 8, !dbg !5310
  %prev10 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1, !dbg !5311
  store ptr %16, ptr %prev10, align 8, !dbg !5312
  ret void, !dbg !5313
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ttm_resource_add_bulk_move(ptr noundef %res, ptr noundef %bo) #0 align 16 !dbg !5314 {
entry:
  %res.addr = alloca ptr, align 8
  %bo.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5318, metadata !DIExpression()), !dbg !5320
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !5319, metadata !DIExpression()), !dbg !5321
  %0 = load ptr, ptr %bo.addr, align 8, !dbg !5322
  %bulk_move = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 9, !dbg !5324
  %1 = load ptr, ptr %bulk_move, align 8, !dbg !5324
  %tobool = icmp ne ptr %1, null, !dbg !5322
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5325

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %bo.addr, align 8, !dbg !5326
  %pin_count = getelementptr inbounds %struct.ttm_buffer_object, ptr %2, i32 0, i32 11, !dbg !5327
  %3 = load i32, ptr %pin_count, align 4, !dbg !5327
  %tobool1 = icmp ne i32 %3, 0, !dbg !5326
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5328

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %bo.addr, align 8, !dbg !5329
  %bulk_move2 = getelementptr inbounds %struct.ttm_buffer_object, ptr %4, i32 0, i32 9, !dbg !5330
  %5 = load ptr, ptr %bulk_move2, align 8, !dbg !5330
  %6 = load ptr, ptr %res.addr, align 8, !dbg !5331
  call void @ttm_lru_bulk_move_add(ptr noundef %5, ptr noundef %6) #12, !dbg !5332
  br label %if.end, !dbg !5332

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !5333
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_lru_bulk_move_add(ptr noundef %bulk, ptr noundef %res) #0 align 16 !dbg !5334 {
entry:
  %bulk.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %pos = alloca ptr, align 8
  store ptr %bulk, ptr %bulk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bulk.addr, metadata !5338, metadata !DIExpression()), !dbg !5341
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5339, metadata !DIExpression()), !dbg !5342
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #11, !dbg !5343
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !5340, metadata !DIExpression()), !dbg !5344
  %0 = load ptr, ptr %bulk.addr, align 8, !dbg !5345
  %1 = load ptr, ptr %res.addr, align 8, !dbg !5346
  %call = call ptr @ttm_lru_bulk_move_pos(ptr noundef %0, ptr noundef %1) #12, !dbg !5347
  store ptr %call, ptr %pos, align 8, !dbg !5344
  %2 = load ptr, ptr %pos, align 8, !dbg !5348
  %first = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, ptr %2, i32 0, i32 0, !dbg !5350
  %3 = load ptr, ptr %first, align 8, !dbg !5350
  %tobool = icmp ne ptr %3, null, !dbg !5348
  br i1 %tobool, label %if.else, label %if.then, !dbg !5351

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %res.addr, align 8, !dbg !5352
  %5 = load ptr, ptr %pos, align 8, !dbg !5354
  %first1 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, ptr %5, i32 0, i32 0, !dbg !5355
  store ptr %4, ptr %first1, align 8, !dbg !5356
  %6 = load ptr, ptr %res.addr, align 8, !dbg !5357
  %7 = load ptr, ptr %pos, align 8, !dbg !5358
  %last = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, ptr %7, i32 0, i32 1, !dbg !5359
  store ptr %6, ptr %last, align 8, !dbg !5360
  br label %if.end, !dbg !5361

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %pos, align 8, !dbg !5362
  %9 = load ptr, ptr %res.addr, align 8, !dbg !5364
  call void @ttm_lru_bulk_move_pos_tail(ptr noundef %8, ptr noundef %9) #12, !dbg !5365
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #11, !dbg !5366
  ret void, !dbg !5366
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ttm_resource_del_bulk_move(ptr noundef %res, ptr noundef %bo) #0 align 16 !dbg !5367 {
entry:
  %res.addr = alloca ptr, align 8
  %bo.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5369, metadata !DIExpression()), !dbg !5371
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !5370, metadata !DIExpression()), !dbg !5372
  %0 = load ptr, ptr %bo.addr, align 8, !dbg !5373
  %bulk_move = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 9, !dbg !5375
  %1 = load ptr, ptr %bulk_move, align 8, !dbg !5375
  %tobool = icmp ne ptr %1, null, !dbg !5373
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5376

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %bo.addr, align 8, !dbg !5377
  %pin_count = getelementptr inbounds %struct.ttm_buffer_object, ptr %2, i32 0, i32 11, !dbg !5378
  %3 = load i32, ptr %pin_count, align 4, !dbg !5378
  %tobool1 = icmp ne i32 %3, 0, !dbg !5377
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5379

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %bo.addr, align 8, !dbg !5380
  %bulk_move2 = getelementptr inbounds %struct.ttm_buffer_object, ptr %4, i32 0, i32 9, !dbg !5381
  %5 = load ptr, ptr %bulk_move2, align 8, !dbg !5381
  %6 = load ptr, ptr %res.addr, align 8, !dbg !5382
  call void @ttm_lru_bulk_move_del(ptr noundef %5, ptr noundef %6) #12, !dbg !5383
  br label %if.end, !dbg !5383

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !5384
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_lru_bulk_move_del(ptr noundef %bulk, ptr noundef %res) #0 align 16 !dbg !5385 {
entry:
  %bulk.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %pos = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp48 = alloca ptr, align 8
  %__mptr55 = alloca ptr, align 8
  %tmp57 = alloca ptr, align 8
  store ptr %bulk, ptr %bulk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bulk.addr, metadata !5387, metadata !DIExpression()), !dbg !5404
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5388, metadata !DIExpression()), !dbg !5405
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #11, !dbg !5406
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !5389, metadata !DIExpression()), !dbg !5407
  %0 = load ptr, ptr %bulk.addr, align 8, !dbg !5408
  %1 = load ptr, ptr %res.addr, align 8, !dbg !5409
  %call = call ptr @ttm_lru_bulk_move_pos(ptr noundef %0, ptr noundef %1) #12, !dbg !5410
  store ptr %call, ptr %pos, align 8, !dbg !5407
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !5411
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5390, metadata !DIExpression()), !dbg !5411
  %2 = load ptr, ptr %pos, align 8, !dbg !5411
  %first = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, ptr %2, i32 0, i32 0, !dbg !5411
  %3 = load ptr, ptr %first, align 8, !dbg !5411
  %tobool = icmp ne ptr %3, null, !dbg !5411
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !5411

lor.rhs:                                          ; preds = %entry
  %4 = load ptr, ptr %pos, align 8, !dbg !5411
  %last = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, ptr %4, i32 0, i32 1, !dbg !5411
  %5 = load ptr, ptr %last, align 8, !dbg !5411
  %tobool1 = icmp ne ptr %5, null, !dbg !5411
  %lnot = xor i1 %tobool1, true, !dbg !5411
  br label %lor.end, !dbg !5411

lor.end:                                          ; preds = %lor.rhs, %entry
  %6 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot2 = xor i1 %6, true, !dbg !5411
  %lnot3 = xor i1 %lnot2, true, !dbg !5411
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5411
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5411
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !5412
  %tobool4 = icmp ne i32 %7, 0, !dbg !5412
  %lnot5 = xor i1 %tobool4, true, !dbg !5412
  %lnot7 = xor i1 %lnot5, true, !dbg !5412
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5412
  %conv = sext i32 %lnot.ext8 to i64, !dbg !5412
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5412
  %tobool9 = icmp ne i64 %expval, 0, !dbg !5412
  br i1 %tobool9, label %if.then, label %if.end, !dbg !5411

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !5412

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !5413
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5393, metadata !DIExpression()), !dbg !5413
  store i32 2305, ptr %__flags, align 4, !dbg !5413
  br label %do.body10, !dbg !5413

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !5414

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !5414

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !5413

do.body11:                                        ; preds = %do.end
  %8 = load i32, ptr %__flags, align 4, !dbg !5416
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 116, i32 %8, i64 12) #11, !dbg !5416, !srcloc !5418
  br label %do.cond12, !dbg !5416

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5416

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !5413

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !5419

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5419

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !5412
  br label %do.cond17, !dbg !5413

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !5413

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !5413

if.end:                                           ; preds = %do.end18, %lor.end
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !5411
  %tobool19 = icmp ne i32 %9, 0, !dbg !5411
  %lnot20 = xor i1 %tobool19, true, !dbg !5411
  %lnot22 = xor i1 %lnot20, true, !dbg !5411
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5411
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5411
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !5411
  store i64 %expval25, ptr %tmp, align 8, !dbg !5412
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !5421
  %10 = load i64, ptr %tmp, align 8, !dbg !5411
  %tobool26 = icmp ne i64 %10, 0, !dbg !5421
  br i1 %tobool26, label %lor.end33, label %lor.rhs27, !dbg !5421

lor.rhs27:                                        ; preds = %if.end
  %11 = load ptr, ptr %pos, align 8, !dbg !5421
  %first28 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, ptr %11, i32 0, i32 0, !dbg !5421
  %12 = load ptr, ptr %first28, align 8, !dbg !5421
  %13 = load ptr, ptr %res.addr, align 8, !dbg !5421
  %cmp = icmp eq ptr %12, %13, !dbg !5421
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5421

land.rhs:                                         ; preds = %lor.rhs27
  %14 = load ptr, ptr %pos, align 8, !dbg !5421
  %last30 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, ptr %14, i32 0, i32 1, !dbg !5421
  %15 = load ptr, ptr %last30, align 8, !dbg !5421
  %16 = load ptr, ptr %res.addr, align 8, !dbg !5421
  %cmp31 = icmp eq ptr %15, %16, !dbg !5421
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs27
  %17 = phi i1 [ false, %lor.rhs27 ], [ %cmp31, %land.rhs ], !dbg !5422
  br label %lor.end33, !dbg !5421

lor.end33:                                        ; preds = %land.end, %if.end
  %18 = phi i1 [ true, %if.end ], [ %17, %land.end ]
  %lnot34 = xor i1 %18, true, !dbg !5421
  %lnot36 = xor i1 %lnot34, true, !dbg !5421
  %lnot.ext37 = zext i1 %lnot36 to i32, !dbg !5421
  %conv38 = sext i32 %lnot.ext37 to i64, !dbg !5421
  %expval39 = call i64 @llvm.expect.i64(i64 %conv38, i64 0), !dbg !5421
  %tobool40 = icmp ne i64 %expval39, 0, !dbg !5421
  br i1 %tobool40, label %if.then41, label %if.else, !dbg !5423

if.then41:                                        ; preds = %lor.end33
  %19 = load ptr, ptr %pos, align 8, !dbg !5424
  %first42 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, ptr %19, i32 0, i32 0, !dbg !5426
  store ptr null, ptr %first42, align 8, !dbg !5427
  %20 = load ptr, ptr %pos, align 8, !dbg !5428
  %last43 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, ptr %20, i32 0, i32 1, !dbg !5429
  store ptr null, ptr %last43, align 8, !dbg !5430
  br label %if.end66, !dbg !5431

if.else:                                          ; preds = %lor.end33
  %21 = load ptr, ptr %pos, align 8, !dbg !5432
  %first44 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, ptr %21, i32 0, i32 0, !dbg !5433
  %22 = load ptr, ptr %first44, align 8, !dbg !5433
  %23 = load ptr, ptr %res.addr, align 8, !dbg !5434
  %cmp45 = icmp eq ptr %22, %23, !dbg !5435
  br i1 %cmp45, label %if.then47, label %if.else50, !dbg !5436

if.then47:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !5437
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5396, metadata !DIExpression()), !dbg !5437
  %24 = load ptr, ptr %res.addr, align 8, !dbg !5437
  %lru = getelementptr inbounds %struct.ttm_resource, ptr %24, i32 0, i32 6, !dbg !5437
  %next = getelementptr inbounds %struct.list_head, ptr %lru, i32 0, i32 0, !dbg !5437
  %25 = load ptr, ptr %next, align 8, !dbg !5437
  store ptr %25, ptr %__mptr, align 8, !dbg !5437
  %26 = load ptr, ptr %__mptr, align 8, !dbg !5437
  %add.ptr = getelementptr i8, ptr %26, i64 -56, !dbg !5437
  store ptr %add.ptr, ptr %tmp48, align 8, !dbg !5437
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !5438
  %27 = load ptr, ptr %tmp48, align 8, !dbg !5437
  %28 = load ptr, ptr %pos, align 8, !dbg !5439
  %first49 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, ptr %28, i32 0, i32 0, !dbg !5440
  store ptr %27, ptr %first49, align 8, !dbg !5441
  br label %if.end65, !dbg !5442

if.else50:                                        ; preds = %if.else
  %29 = load ptr, ptr %pos, align 8, !dbg !5443
  %last51 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, ptr %29, i32 0, i32 1, !dbg !5444
  %30 = load ptr, ptr %last51, align 8, !dbg !5444
  %31 = load ptr, ptr %res.addr, align 8, !dbg !5445
  %cmp52 = icmp eq ptr %30, %31, !dbg !5446
  br i1 %cmp52, label %if.then54, label %if.else60, !dbg !5447

if.then54:                                        ; preds = %if.else50
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr55) #11, !dbg !5448
  call void @llvm.dbg.declare(metadata ptr %__mptr55, metadata !5400, metadata !DIExpression()), !dbg !5448
  %32 = load ptr, ptr %res.addr, align 8, !dbg !5448
  %lru56 = getelementptr inbounds %struct.ttm_resource, ptr %32, i32 0, i32 6, !dbg !5448
  %prev = getelementptr inbounds %struct.list_head, ptr %lru56, i32 0, i32 1, !dbg !5448
  %33 = load ptr, ptr %prev, align 8, !dbg !5448
  store ptr %33, ptr %__mptr55, align 8, !dbg !5448
  %34 = load ptr, ptr %__mptr55, align 8, !dbg !5448
  %add.ptr58 = getelementptr i8, ptr %34, i64 -56, !dbg !5448
  store ptr %add.ptr58, ptr %tmp57, align 8, !dbg !5448
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr55) #11, !dbg !5449
  %35 = load ptr, ptr %tmp57, align 8, !dbg !5448
  %36 = load ptr, ptr %pos, align 8, !dbg !5450
  %last59 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, ptr %36, i32 0, i32 1, !dbg !5451
  store ptr %35, ptr %last59, align 8, !dbg !5452
  br label %if.end64, !dbg !5453

if.else60:                                        ; preds = %if.else50
  %37 = load ptr, ptr %res.addr, align 8, !dbg !5454
  %lru61 = getelementptr inbounds %struct.ttm_resource, ptr %37, i32 0, i32 6, !dbg !5456
  %38 = load ptr, ptr %pos, align 8, !dbg !5457
  %last62 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, ptr %38, i32 0, i32 1, !dbg !5458
  %39 = load ptr, ptr %last62, align 8, !dbg !5458
  %lru63 = getelementptr inbounds %struct.ttm_resource, ptr %39, i32 0, i32 6, !dbg !5459
  call void @list_move(ptr noundef %lru61, ptr noundef %lru63) #12, !dbg !5460
  br label %if.end64

if.end64:                                         ; preds = %if.else60, %if.then54
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then47
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.then41
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #11, !dbg !5461
  ret void, !dbg !5461
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ttm_resource_move_to_lru_tail(ptr noundef %res) #0 align 16 !dbg !5462 {
entry:
  %res.addr = alloca ptr, align 8
  %bo = alloca ptr, align 8
  %bdev = alloca ptr, align 8
  %pos = alloca ptr, align 8
  %man = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5466, metadata !DIExpression()), !dbg !5475
  call void @llvm.lifetime.start.p0(i64 8, ptr %bo) #11, !dbg !5476
  call void @llvm.dbg.declare(metadata ptr %bo, metadata !5467, metadata !DIExpression()), !dbg !5477
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5478
  %bo1 = getelementptr inbounds %struct.ttm_resource, ptr %0, i32 0, i32 5, !dbg !5479
  %1 = load ptr, ptr %bo1, align 8, !dbg !5479
  store ptr %1, ptr %bo, align 8, !dbg !5477
  call void @llvm.lifetime.start.p0(i64 8, ptr %bdev) #11, !dbg !5480
  call void @llvm.dbg.declare(metadata ptr %bdev, metadata !5468, metadata !DIExpression()), !dbg !5481
  %2 = load ptr, ptr %bo, align 8, !dbg !5482
  %bdev2 = getelementptr inbounds %struct.ttm_buffer_object, ptr %2, i32 0, i32 1, !dbg !5483
  %3 = load ptr, ptr %bdev2, align 8, !dbg !5483
  store ptr %3, ptr %bdev, align 8, !dbg !5481
  br label %do.body, !dbg !5484

do.body:                                          ; preds = %entry
  %4 = load ptr, ptr %bo, align 8, !dbg !5485
  %bdev3 = getelementptr inbounds %struct.ttm_buffer_object, ptr %4, i32 0, i32 1, !dbg !5485
  %5 = load ptr, ptr %bdev3, align 8, !dbg !5485
  %lru_lock = getelementptr inbounds %struct.ttm_device, ptr %5, i32 0, i32 6, !dbg !5485
  br label %do.cond, !dbg !5485

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5485

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %bo, align 8, !dbg !5487
  %pin_count = getelementptr inbounds %struct.ttm_buffer_object, ptr %6, i32 0, i32 11, !dbg !5488
  %7 = load i32, ptr %pin_count, align 4, !dbg !5488
  %tobool = icmp ne i32 %7, 0, !dbg !5487
  br i1 %tobool, label %if.then, label %if.else, !dbg !5489

if.then:                                          ; preds = %do.end
  %8 = load ptr, ptr %res.addr, align 8, !dbg !5490
  %lru = getelementptr inbounds %struct.ttm_resource, ptr %8, i32 0, i32 6, !dbg !5492
  %9 = load ptr, ptr %bdev, align 8, !dbg !5493
  %pinned = getelementptr inbounds %struct.ttm_device, ptr %9, i32 0, i32 7, !dbg !5494
  call void @list_move_tail(ptr noundef %lru, ptr noundef %pinned) #12, !dbg !5495
  br label %if.end11, !dbg !5496

if.else:                                          ; preds = %do.end
  %10 = load ptr, ptr %bo, align 8, !dbg !5497
  %bulk_move = getelementptr inbounds %struct.ttm_buffer_object, ptr %10, i32 0, i32 9, !dbg !5498
  %11 = load ptr, ptr %bulk_move, align 8, !dbg !5498
  %tobool4 = icmp ne ptr %11, null, !dbg !5497
  br i1 %tobool4, label %if.then5, label %if.else7, !dbg !5499

if.then5:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #11, !dbg !5500
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !5469, metadata !DIExpression()), !dbg !5501
  %12 = load ptr, ptr %bo, align 8, !dbg !5502
  %bulk_move6 = getelementptr inbounds %struct.ttm_buffer_object, ptr %12, i32 0, i32 9, !dbg !5503
  %13 = load ptr, ptr %bulk_move6, align 8, !dbg !5503
  %14 = load ptr, ptr %res.addr, align 8, !dbg !5504
  %call = call ptr @ttm_lru_bulk_move_pos(ptr noundef %13, ptr noundef %14) #12, !dbg !5505
  store ptr %call, ptr %pos, align 8, !dbg !5501
  %15 = load ptr, ptr %pos, align 8, !dbg !5506
  %16 = load ptr, ptr %res.addr, align 8, !dbg !5507
  call void @ttm_lru_bulk_move_pos_tail(ptr noundef %15, ptr noundef %16) #12, !dbg !5508
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #11, !dbg !5509
  br label %if.end, !dbg !5510

if.else7:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %man) #11, !dbg !5511
  call void @llvm.dbg.declare(metadata ptr %man, metadata !5473, metadata !DIExpression()), !dbg !5512
  %17 = load ptr, ptr %bdev, align 8, !dbg !5513
  %18 = load ptr, ptr %res.addr, align 8, !dbg !5514
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %18, i32 0, i32 2, !dbg !5515
  %19 = load i32, ptr %mem_type, align 8, !dbg !5515
  %call8 = call ptr @ttm_manager_type(ptr noundef %17, i32 noundef %19) #12, !dbg !5516
  store ptr %call8, ptr %man, align 8, !dbg !5517
  %20 = load ptr, ptr %res.addr, align 8, !dbg !5518
  %lru9 = getelementptr inbounds %struct.ttm_resource, ptr %20, i32 0, i32 6, !dbg !5519
  %21 = load ptr, ptr %man, align 8, !dbg !5520
  %lru10 = getelementptr inbounds %struct.ttm_resource_manager, ptr %21, i32 0, i32 7, !dbg !5521
  %22 = load ptr, ptr %bo, align 8, !dbg !5522
  %priority = getelementptr inbounds %struct.ttm_buffer_object, ptr %22, i32 0, i32 10, !dbg !5523
  %23 = load i32, ptr %priority, align 8, !dbg !5523
  %idxprom = zext i32 %23 to i64, !dbg !5520
  %arrayidx = getelementptr [4 x %struct.list_head], ptr %lru10, i64 0, i64 %idxprom, !dbg !5520
  call void @list_move_tail(ptr noundef %lru9, ptr noundef %arrayidx) #12, !dbg !5524
  call void @llvm.lifetime.end.p0(i64 8, ptr %man) #11, !dbg !5525
  br label %if.end

if.end:                                           ; preds = %if.else7, %if.then5
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bdev) #11, !dbg !5526
  call void @llvm.lifetime.end.p0(i64 8, ptr %bo) #11, !dbg !5526
  ret void, !dbg !5526
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_move_tail(ptr noundef %list, ptr noundef %head) #4 align 16 !dbg !5527 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5531, metadata !DIExpression()), !dbg !5533
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5532, metadata !DIExpression()), !dbg !5534
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5535
  call void @__list_del_entry(ptr noundef %0) #12, !dbg !5536
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5537
  %2 = load ptr, ptr %head.addr, align 8, !dbg !5538
  call void @list_add_tail(ptr noundef %1, ptr noundef %2) #12, !dbg !5539
  ret void, !dbg !5540
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ttm_lru_bulk_move_pos(ptr noundef %bulk, ptr noundef %res) #0 align 16 !dbg !5541 {
entry:
  %bulk.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  store ptr %bulk, ptr %bulk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bulk.addr, metadata !5545, metadata !DIExpression()), !dbg !5547
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5546, metadata !DIExpression()), !dbg !5548
  %0 = load ptr, ptr %bulk.addr, align 8, !dbg !5549
  %pos = getelementptr inbounds %struct.ttm_lru_bulk_move, ptr %0, i32 0, i32 0, !dbg !5550
  %1 = load ptr, ptr %res.addr, align 8, !dbg !5551
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %1, i32 0, i32 2, !dbg !5552
  %2 = load i32, ptr %mem_type, align 8, !dbg !5552
  %idxprom = zext i32 %2 to i64, !dbg !5549
  %arrayidx = getelementptr [8 x [4 x %struct.ttm_lru_bulk_move_pos]], ptr %pos, i64 0, i64 %idxprom, !dbg !5549
  %3 = load ptr, ptr %res.addr, align 8, !dbg !5553
  %bo = getelementptr inbounds %struct.ttm_resource, ptr %3, i32 0, i32 5, !dbg !5554
  %4 = load ptr, ptr %bo, align 8, !dbg !5554
  %priority = getelementptr inbounds %struct.ttm_buffer_object, ptr %4, i32 0, i32 10, !dbg !5555
  %5 = load i32, ptr %priority, align 8, !dbg !5555
  %idxprom1 = zext i32 %5 to i64, !dbg !5549
  %arrayidx2 = getelementptr [4 x %struct.ttm_lru_bulk_move_pos], ptr %arrayidx, i64 0, i64 %idxprom1, !dbg !5549
  ret ptr %arrayidx2, !dbg !5556
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_lru_bulk_move_pos_tail(ptr noundef %pos, ptr noundef %res) #0 align 16 !dbg !5557 {
entry:
  %pos.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5561, metadata !DIExpression()), !dbg !5568
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5562, metadata !DIExpression()), !dbg !5569
  %0 = load ptr, ptr %pos.addr, align 8, !dbg !5570
  %last = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, ptr %0, i32 0, i32 1, !dbg !5571
  %1 = load ptr, ptr %last, align 8, !dbg !5571
  %2 = load ptr, ptr %res.addr, align 8, !dbg !5572
  %cmp = icmp ne ptr %1, %2, !dbg !5573
  br i1 %cmp, label %if.then, label %if.end8, !dbg !5574

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pos.addr, align 8, !dbg !5575
  %first = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, ptr %3, i32 0, i32 0, !dbg !5576
  %4 = load ptr, ptr %first, align 8, !dbg !5576
  %5 = load ptr, ptr %res.addr, align 8, !dbg !5577
  %cmp1 = icmp eq ptr %4, %5, !dbg !5578
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !5579

if.then2:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !5580
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5563, metadata !DIExpression()), !dbg !5580
  %6 = load ptr, ptr %res.addr, align 8, !dbg !5580
  %lru = getelementptr inbounds %struct.ttm_resource, ptr %6, i32 0, i32 6, !dbg !5580
  %next = getelementptr inbounds %struct.list_head, ptr %lru, i32 0, i32 0, !dbg !5580
  %7 = load ptr, ptr %next, align 8, !dbg !5580
  store ptr %7, ptr %__mptr, align 8, !dbg !5580
  %8 = load ptr, ptr %__mptr, align 8, !dbg !5580
  %add.ptr = getelementptr i8, ptr %8, i64 -56, !dbg !5580
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5580
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !5581
  %9 = load ptr, ptr %tmp, align 8, !dbg !5580
  %10 = load ptr, ptr %pos.addr, align 8, !dbg !5582
  %first3 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, ptr %10, i32 0, i32 0, !dbg !5583
  store ptr %9, ptr %first3, align 8, !dbg !5584
  br label %if.end, !dbg !5582

if.end:                                           ; preds = %if.then2, %if.then
  %11 = load ptr, ptr %res.addr, align 8, !dbg !5585
  %lru4 = getelementptr inbounds %struct.ttm_resource, ptr %11, i32 0, i32 6, !dbg !5586
  %12 = load ptr, ptr %pos.addr, align 8, !dbg !5587
  %last5 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, ptr %12, i32 0, i32 1, !dbg !5588
  %13 = load ptr, ptr %last5, align 8, !dbg !5588
  %lru6 = getelementptr inbounds %struct.ttm_resource, ptr %13, i32 0, i32 6, !dbg !5589
  call void @list_move(ptr noundef %lru4, ptr noundef %lru6) #12, !dbg !5590
  %14 = load ptr, ptr %res.addr, align 8, !dbg !5591
  %15 = load ptr, ptr %pos.addr, align 8, !dbg !5592
  %last7 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, ptr %15, i32 0, i32 1, !dbg !5593
  store ptr %14, ptr %last7, align 8, !dbg !5594
  br label %if.end8, !dbg !5595

if.end8:                                          ; preds = %if.end, %entry
  ret void, !dbg !5596
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ttm_resource_init(ptr noundef %bo, ptr noundef %place, ptr noundef %res) #0 align 16 !dbg !5597 {
entry:
  %bo.addr = alloca ptr, align 8
  %place.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %man = alloca ptr, align 8
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !5601, metadata !DIExpression()), !dbg !5605
  store ptr %place, ptr %place.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %place.addr, metadata !5602, metadata !DIExpression()), !dbg !5606
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5603, metadata !DIExpression()), !dbg !5607
  call void @llvm.lifetime.start.p0(i64 8, ptr %man) #11, !dbg !5608
  call void @llvm.dbg.declare(metadata ptr %man, metadata !5604, metadata !DIExpression()), !dbg !5609
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5610
  %start = getelementptr inbounds %struct.ttm_resource, ptr %0, i32 0, i32 0, !dbg !5611
  store i64 0, ptr %start, align 8, !dbg !5612
  %1 = load ptr, ptr %bo.addr, align 8, !dbg !5613
  %base = getelementptr inbounds %struct.ttm_buffer_object, ptr %1, i32 0, i32 0, !dbg !5614
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %base, i32 0, i32 5, !dbg !5615
  %2 = load i64, ptr %size, align 8, !dbg !5615
  %3 = load ptr, ptr %res.addr, align 8, !dbg !5616
  %size1 = getelementptr inbounds %struct.ttm_resource, ptr %3, i32 0, i32 1, !dbg !5617
  store i64 %2, ptr %size1, align 8, !dbg !5618
  %4 = load ptr, ptr %place.addr, align 8, !dbg !5619
  %mem_type = getelementptr inbounds %struct.ttm_place, ptr %4, i32 0, i32 2, !dbg !5620
  %5 = load i32, ptr %mem_type, align 4, !dbg !5620
  %6 = load ptr, ptr %res.addr, align 8, !dbg !5621
  %mem_type2 = getelementptr inbounds %struct.ttm_resource, ptr %6, i32 0, i32 2, !dbg !5622
  store i32 %5, ptr %mem_type2, align 8, !dbg !5623
  %7 = load ptr, ptr %place.addr, align 8, !dbg !5624
  %flags = getelementptr inbounds %struct.ttm_place, ptr %7, i32 0, i32 3, !dbg !5625
  %8 = load i32, ptr %flags, align 4, !dbg !5625
  %9 = load ptr, ptr %res.addr, align 8, !dbg !5626
  %placement = getelementptr inbounds %struct.ttm_resource, ptr %9, i32 0, i32 3, !dbg !5627
  store i32 %8, ptr %placement, align 4, !dbg !5628
  %10 = load ptr, ptr %res.addr, align 8, !dbg !5629
  %bus = getelementptr inbounds %struct.ttm_resource, ptr %10, i32 0, i32 4, !dbg !5630
  %addr = getelementptr inbounds %struct.ttm_bus_placement, ptr %bus, i32 0, i32 0, !dbg !5631
  store ptr null, ptr %addr, align 8, !dbg !5632
  %11 = load ptr, ptr %res.addr, align 8, !dbg !5633
  %bus3 = getelementptr inbounds %struct.ttm_resource, ptr %11, i32 0, i32 4, !dbg !5634
  %offset = getelementptr inbounds %struct.ttm_bus_placement, ptr %bus3, i32 0, i32 1, !dbg !5635
  store i64 0, ptr %offset, align 8, !dbg !5636
  %12 = load ptr, ptr %res.addr, align 8, !dbg !5637
  %bus4 = getelementptr inbounds %struct.ttm_resource, ptr %12, i32 0, i32 4, !dbg !5638
  %is_iomem = getelementptr inbounds %struct.ttm_bus_placement, ptr %bus4, i32 0, i32 2, !dbg !5639
  store i8 0, ptr %is_iomem, align 8, !dbg !5640
  %13 = load ptr, ptr %res.addr, align 8, !dbg !5641
  %bus5 = getelementptr inbounds %struct.ttm_resource, ptr %13, i32 0, i32 4, !dbg !5642
  %caching = getelementptr inbounds %struct.ttm_bus_placement, ptr %bus5, i32 0, i32 3, !dbg !5643
  store i32 2, ptr %caching, align 4, !dbg !5644
  %14 = load ptr, ptr %bo.addr, align 8, !dbg !5645
  %15 = load ptr, ptr %res.addr, align 8, !dbg !5646
  %bo6 = getelementptr inbounds %struct.ttm_resource, ptr %15, i32 0, i32 5, !dbg !5647
  store ptr %14, ptr %bo6, align 8, !dbg !5648
  %16 = load ptr, ptr %bo.addr, align 8, !dbg !5649
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %16, i32 0, i32 1, !dbg !5650
  %17 = load ptr, ptr %bdev, align 8, !dbg !5650
  %18 = load ptr, ptr %place.addr, align 8, !dbg !5651
  %mem_type7 = getelementptr inbounds %struct.ttm_place, ptr %18, i32 0, i32 2, !dbg !5652
  %19 = load i32, ptr %mem_type7, align 4, !dbg !5652
  %call = call ptr @ttm_manager_type(ptr noundef %17, i32 noundef %19) #12, !dbg !5653
  store ptr %call, ptr %man, align 8, !dbg !5654
  %20 = load ptr, ptr %bo.addr, align 8, !dbg !5655
  %bdev8 = getelementptr inbounds %struct.ttm_buffer_object, ptr %20, i32 0, i32 1, !dbg !5656
  %21 = load ptr, ptr %bdev8, align 8, !dbg !5656
  %lru_lock = getelementptr inbounds %struct.ttm_device, ptr %21, i32 0, i32 6, !dbg !5657
  call void @spin_lock(ptr noundef %lru_lock) #12, !dbg !5658
  %22 = load ptr, ptr %bo.addr, align 8, !dbg !5659
  %pin_count = getelementptr inbounds %struct.ttm_buffer_object, ptr %22, i32 0, i32 11, !dbg !5661
  %23 = load i32, ptr %pin_count, align 4, !dbg !5661
  %tobool = icmp ne i32 %23, 0, !dbg !5659
  br i1 %tobool, label %if.then, label %if.else, !dbg !5662

if.then:                                          ; preds = %entry
  %24 = load ptr, ptr %res.addr, align 8, !dbg !5663
  %lru = getelementptr inbounds %struct.ttm_resource, ptr %24, i32 0, i32 6, !dbg !5664
  %25 = load ptr, ptr %bo.addr, align 8, !dbg !5665
  %bdev9 = getelementptr inbounds %struct.ttm_buffer_object, ptr %25, i32 0, i32 1, !dbg !5666
  %26 = load ptr, ptr %bdev9, align 8, !dbg !5666
  %pinned = getelementptr inbounds %struct.ttm_device, ptr %26, i32 0, i32 7, !dbg !5667
  call void @list_add_tail(ptr noundef %lru, ptr noundef %pinned) #12, !dbg !5668
  br label %if.end, !dbg !5668

if.else:                                          ; preds = %entry
  %27 = load ptr, ptr %res.addr, align 8, !dbg !5669
  %lru10 = getelementptr inbounds %struct.ttm_resource, ptr %27, i32 0, i32 6, !dbg !5670
  %28 = load ptr, ptr %man, align 8, !dbg !5671
  %lru11 = getelementptr inbounds %struct.ttm_resource_manager, ptr %28, i32 0, i32 7, !dbg !5672
  %29 = load ptr, ptr %bo.addr, align 8, !dbg !5673
  %priority = getelementptr inbounds %struct.ttm_buffer_object, ptr %29, i32 0, i32 10, !dbg !5674
  %30 = load i32, ptr %priority, align 8, !dbg !5674
  %idxprom = zext i32 %30 to i64, !dbg !5671
  %arrayidx = getelementptr [4 x %struct.list_head], ptr %lru11, i64 0, i64 %idxprom, !dbg !5671
  call void @list_add_tail(ptr noundef %lru10, ptr noundef %arrayidx) #12, !dbg !5675
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %31 = load ptr, ptr %res.addr, align 8, !dbg !5676
  %size12 = getelementptr inbounds %struct.ttm_resource, ptr %31, i32 0, i32 1, !dbg !5677
  %32 = load i64, ptr %size12, align 8, !dbg !5677
  %33 = load ptr, ptr %man, align 8, !dbg !5678
  %usage = getelementptr inbounds %struct.ttm_resource_manager, ptr %33, i32 0, i32 8, !dbg !5679
  %34 = load i64, ptr %usage, align 8, !dbg !5680
  %add = add i64 %34, %32, !dbg !5680
  store i64 %add, ptr %usage, align 8, !dbg !5680
  %35 = load ptr, ptr %bo.addr, align 8, !dbg !5681
  %bdev13 = getelementptr inbounds %struct.ttm_buffer_object, ptr %35, i32 0, i32 1, !dbg !5682
  %36 = load ptr, ptr %bdev13, align 8, !dbg !5682
  %lru_lock14 = getelementptr inbounds %struct.ttm_device, ptr %36, i32 0, i32 6, !dbg !5683
  call void @spin_unlock(ptr noundef %lru_lock14) #12, !dbg !5684
  call void @llvm.lifetime.end.p0(i64 8, ptr %man) #11, !dbg !5685
  ret void, !dbg !5685
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #5 align 16 !dbg !5686 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5691, metadata !DIExpression()), !dbg !5692
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5693
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5693
  call void @_raw_spin_lock(ptr noundef %1) #12, !dbg !5693
  ret void, !dbg !5694
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !5695 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5697, metadata !DIExpression()), !dbg !5699
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5698, metadata !DIExpression()), !dbg !5700
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5701
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5702
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5703
  %2 = load ptr, ptr %prev, align 8, !dbg !5703
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5704
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #12, !dbg !5705
  ret void, !dbg !5706
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #5 align 16 !dbg !5707 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5709, metadata !DIExpression()), !dbg !5710
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5711
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5711
  call void @_raw_spin_unlock(ptr noundef %1) #12, !dbg !5711
  ret void, !dbg !5712
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ttm_resource_fini(ptr noundef %man, ptr noundef %res) #0 align 16 !dbg !5713 {
entry:
  %man.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %bdev = alloca ptr, align 8
  store ptr %man, ptr %man.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %man.addr, metadata !5715, metadata !DIExpression()), !dbg !5718
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5716, metadata !DIExpression()), !dbg !5719
  call void @llvm.lifetime.start.p0(i64 8, ptr %bdev) #11, !dbg !5720
  call void @llvm.dbg.declare(metadata ptr %bdev, metadata !5717, metadata !DIExpression()), !dbg !5721
  %0 = load ptr, ptr %man.addr, align 8, !dbg !5722
  %bdev1 = getelementptr inbounds %struct.ttm_resource_manager, ptr %0, i32 0, i32 2, !dbg !5723
  %1 = load ptr, ptr %bdev1, align 8, !dbg !5723
  store ptr %1, ptr %bdev, align 8, !dbg !5721
  %2 = load ptr, ptr %bdev, align 8, !dbg !5724
  %lru_lock = getelementptr inbounds %struct.ttm_device, ptr %2, i32 0, i32 6, !dbg !5725
  call void @spin_lock(ptr noundef %lru_lock) #12, !dbg !5726
  %3 = load ptr, ptr %res.addr, align 8, !dbg !5727
  %lru = getelementptr inbounds %struct.ttm_resource, ptr %3, i32 0, i32 6, !dbg !5728
  call void @list_del_init(ptr noundef %lru) #12, !dbg !5729
  %4 = load ptr, ptr %res.addr, align 8, !dbg !5730
  %size = getelementptr inbounds %struct.ttm_resource, ptr %4, i32 0, i32 1, !dbg !5731
  %5 = load i64, ptr %size, align 8, !dbg !5731
  %6 = load ptr, ptr %man.addr, align 8, !dbg !5732
  %usage = getelementptr inbounds %struct.ttm_resource_manager, ptr %6, i32 0, i32 8, !dbg !5733
  %7 = load i64, ptr %usage, align 8, !dbg !5734
  %sub = sub i64 %7, %5, !dbg !5734
  store i64 %sub, ptr %usage, align 8, !dbg !5734
  %8 = load ptr, ptr %bdev, align 8, !dbg !5735
  %lru_lock2 = getelementptr inbounds %struct.ttm_device, ptr %8, i32 0, i32 6, !dbg !5736
  call void @spin_unlock(ptr noundef %lru_lock2) #12, !dbg !5737
  call void @llvm.lifetime.end.p0(i64 8, ptr %bdev) #11, !dbg !5738
  ret void, !dbg !5738
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #4 align 16 !dbg !5739 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5743, metadata !DIExpression()), !dbg !5744
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5745
  call void @__list_del_entry(ptr noundef %0) #12, !dbg !5746
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5747
  call void @INIT_LIST_HEAD(ptr noundef %1) #12, !dbg !5748
  ret void, !dbg !5749
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ttm_resource_alloc(ptr noundef %bo, ptr noundef %place, ptr noundef %res_ptr) #0 align 16 !dbg !5750 {
entry:
  %retval = alloca i32, align 4
  %bo.addr = alloca ptr, align 8
  %place.addr = alloca ptr, align 8
  %res_ptr.addr = alloca ptr, align 8
  %man = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !5754, metadata !DIExpression()), !dbg !5759
  store ptr %place, ptr %place.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %place.addr, metadata !5755, metadata !DIExpression()), !dbg !5760
  store ptr %res_ptr, ptr %res_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res_ptr.addr, metadata !5756, metadata !DIExpression()), !dbg !5761
  call void @llvm.lifetime.start.p0(i64 8, ptr %man) #11, !dbg !5762
  call void @llvm.dbg.declare(metadata ptr %man, metadata !5757, metadata !DIExpression()), !dbg !5763
  %0 = load ptr, ptr %bo.addr, align 8, !dbg !5764
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1, !dbg !5765
  %1 = load ptr, ptr %bdev, align 8, !dbg !5765
  %2 = load ptr, ptr %place.addr, align 8, !dbg !5766
  %mem_type = getelementptr inbounds %struct.ttm_place, ptr %2, i32 0, i32 2, !dbg !5767
  %3 = load i32, ptr %mem_type, align 4, !dbg !5767
  %call = call ptr @ttm_manager_type(ptr noundef %1, i32 noundef %3) #12, !dbg !5768
  store ptr %call, ptr %man, align 8, !dbg !5763
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !5769
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5758, metadata !DIExpression()), !dbg !5770
  %4 = load ptr, ptr %man, align 8, !dbg !5771
  %func = getelementptr inbounds %struct.ttm_resource_manager, ptr %4, i32 0, i32 4, !dbg !5772
  %5 = load ptr, ptr %func, align 8, !dbg !5772
  %alloc = getelementptr inbounds %struct.ttm_resource_manager_func, ptr %5, i32 0, i32 0, !dbg !5773
  %6 = load ptr, ptr %alloc, align 8, !dbg !5773
  %7 = load ptr, ptr %man, align 8, !dbg !5774
  %8 = load ptr, ptr %bo.addr, align 8, !dbg !5775
  %9 = load ptr, ptr %place.addr, align 8, !dbg !5776
  %10 = load ptr, ptr %res_ptr.addr, align 8, !dbg !5777
  %call1 = call i32 %6(ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #12, !dbg !5771
  store i32 %call1, ptr %ret, align 4, !dbg !5778
  %11 = load i32, ptr %ret, align 4, !dbg !5779
  %tobool = icmp ne i32 %11, 0, !dbg !5779
  br i1 %tobool, label %if.then, label %if.end, !dbg !5781

if.then:                                          ; preds = %entry
  %12 = load i32, ptr %ret, align 4, !dbg !5782
  store i32 %12, ptr %retval, align 4, !dbg !5783
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5783

if.end:                                           ; preds = %entry
  %13 = load ptr, ptr %bo.addr, align 8, !dbg !5784
  %bdev2 = getelementptr inbounds %struct.ttm_buffer_object, ptr %13, i32 0, i32 1, !dbg !5785
  %14 = load ptr, ptr %bdev2, align 8, !dbg !5785
  %lru_lock = getelementptr inbounds %struct.ttm_device, ptr %14, i32 0, i32 6, !dbg !5786
  call void @spin_lock(ptr noundef %lru_lock) #12, !dbg !5787
  %15 = load ptr, ptr %res_ptr.addr, align 8, !dbg !5788
  %16 = load ptr, ptr %15, align 8, !dbg !5789
  %17 = load ptr, ptr %bo.addr, align 8, !dbg !5790
  call void @ttm_resource_add_bulk_move(ptr noundef %16, ptr noundef %17) #12, !dbg !5791
  %18 = load ptr, ptr %bo.addr, align 8, !dbg !5792
  %bdev3 = getelementptr inbounds %struct.ttm_buffer_object, ptr %18, i32 0, i32 1, !dbg !5793
  %19 = load ptr, ptr %bdev3, align 8, !dbg !5793
  %lru_lock4 = getelementptr inbounds %struct.ttm_device, ptr %19, i32 0, i32 6, !dbg !5794
  call void @spin_unlock(ptr noundef %lru_lock4) #12, !dbg !5795
  store i32 0, ptr %retval, align 4, !dbg !5796
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5796

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !5797
  call void @llvm.lifetime.end.p0(i64 8, ptr %man) #11, !dbg !5797
  %20 = load i32, ptr %retval, align 4, !dbg !5797
  ret i32 %20, !dbg !5797
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ttm_resource_free(ptr noundef %bo, ptr noundef %res) #0 align 16 !dbg !5798 {
entry:
  %bo.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %man = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !5802, metadata !DIExpression()), !dbg !5805
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5803, metadata !DIExpression()), !dbg !5806
  call void @llvm.lifetime.start.p0(i64 8, ptr %man) #11, !dbg !5807
  call void @llvm.dbg.declare(metadata ptr %man, metadata !5804, metadata !DIExpression()), !dbg !5808
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5809
  %1 = load ptr, ptr %0, align 8, !dbg !5811
  %tobool = icmp ne ptr %1, null, !dbg !5811
  br i1 %tobool, label %if.end, label %if.then, !dbg !5812

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5813

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %bo.addr, align 8, !dbg !5814
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %2, i32 0, i32 1, !dbg !5815
  %3 = load ptr, ptr %bdev, align 8, !dbg !5815
  %lru_lock = getelementptr inbounds %struct.ttm_device, ptr %3, i32 0, i32 6, !dbg !5816
  call void @spin_lock(ptr noundef %lru_lock) #12, !dbg !5817
  %4 = load ptr, ptr %res.addr, align 8, !dbg !5818
  %5 = load ptr, ptr %4, align 8, !dbg !5819
  %6 = load ptr, ptr %bo.addr, align 8, !dbg !5820
  call void @ttm_resource_del_bulk_move(ptr noundef %5, ptr noundef %6) #12, !dbg !5821
  %7 = load ptr, ptr %bo.addr, align 8, !dbg !5822
  %bdev1 = getelementptr inbounds %struct.ttm_buffer_object, ptr %7, i32 0, i32 1, !dbg !5823
  %8 = load ptr, ptr %bdev1, align 8, !dbg !5823
  %lru_lock2 = getelementptr inbounds %struct.ttm_device, ptr %8, i32 0, i32 6, !dbg !5824
  call void @spin_unlock(ptr noundef %lru_lock2) #12, !dbg !5825
  %9 = load ptr, ptr %bo.addr, align 8, !dbg !5826
  %bdev3 = getelementptr inbounds %struct.ttm_buffer_object, ptr %9, i32 0, i32 1, !dbg !5827
  %10 = load ptr, ptr %bdev3, align 8, !dbg !5827
  %11 = load ptr, ptr %res.addr, align 8, !dbg !5828
  %12 = load ptr, ptr %11, align 8, !dbg !5829
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %12, i32 0, i32 2, !dbg !5830
  %13 = load i32, ptr %mem_type, align 8, !dbg !5830
  %call = call ptr @ttm_manager_type(ptr noundef %10, i32 noundef %13) #12, !dbg !5831
  store ptr %call, ptr %man, align 8, !dbg !5832
  %14 = load ptr, ptr %man, align 8, !dbg !5833
  %func = getelementptr inbounds %struct.ttm_resource_manager, ptr %14, i32 0, i32 4, !dbg !5834
  %15 = load ptr, ptr %func, align 8, !dbg !5834
  %free = getelementptr inbounds %struct.ttm_resource_manager_func, ptr %15, i32 0, i32 1, !dbg !5835
  %16 = load ptr, ptr %free, align 8, !dbg !5835
  %17 = load ptr, ptr %man, align 8, !dbg !5836
  %18 = load ptr, ptr %res.addr, align 8, !dbg !5837
  %19 = load ptr, ptr %18, align 8, !dbg !5838
  call void %16(ptr noundef %17, ptr noundef %19) #12, !dbg !5833
  %20 = load ptr, ptr %res.addr, align 8, !dbg !5839
  store ptr null, ptr %20, align 8, !dbg !5840
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5841
  br label %cleanup, !dbg !5841

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %man) #11, !dbg !5841
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5841

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @ttm_resource_intersects(ptr noundef %bdev, ptr noundef %res, ptr noundef %place, i64 noundef %size) #0 align 16 !dbg !5842 {
entry:
  %retval = alloca i1, align 1
  %bdev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %place.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %man = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5846, metadata !DIExpression()), !dbg !5851
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5847, metadata !DIExpression()), !dbg !5852
  store ptr %place, ptr %place.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %place.addr, metadata !5848, metadata !DIExpression()), !dbg !5853
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5849, metadata !DIExpression()), !dbg !5854
  call void @llvm.lifetime.start.p0(i64 8, ptr %man) #11, !dbg !5855
  call void @llvm.dbg.declare(metadata ptr %man, metadata !5850, metadata !DIExpression()), !dbg !5856
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5857
  %tobool = icmp ne ptr %0, null, !dbg !5857
  br i1 %tobool, label %if.end, label %if.then, !dbg !5859

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5860
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5860

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %bdev.addr, align 8, !dbg !5861
  %2 = load ptr, ptr %res.addr, align 8, !dbg !5862
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %2, i32 0, i32 2, !dbg !5863
  %3 = load i32, ptr %mem_type, align 8, !dbg !5863
  %call = call ptr @ttm_manager_type(ptr noundef %1, i32 noundef %3) #12, !dbg !5864
  store ptr %call, ptr %man, align 8, !dbg !5865
  %4 = load ptr, ptr %place.addr, align 8, !dbg !5866
  %tobool1 = icmp ne ptr %4, null, !dbg !5866
  br i1 %tobool1, label %lor.lhs.false, label %if.then3, !dbg !5868

lor.lhs.false:                                    ; preds = %if.end
  %5 = load ptr, ptr %man, align 8, !dbg !5869
  %func = getelementptr inbounds %struct.ttm_resource_manager, ptr %5, i32 0, i32 4, !dbg !5870
  %6 = load ptr, ptr %func, align 8, !dbg !5870
  %intersects = getelementptr inbounds %struct.ttm_resource_manager_func, ptr %6, i32 0, i32 2, !dbg !5871
  %7 = load ptr, ptr %intersects, align 8, !dbg !5871
  %tobool2 = icmp ne ptr %7, null, !dbg !5869
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !5872

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store i1 true, ptr %retval, align 1, !dbg !5873
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5873

if.end4:                                          ; preds = %lor.lhs.false
  %8 = load ptr, ptr %man, align 8, !dbg !5874
  %func5 = getelementptr inbounds %struct.ttm_resource_manager, ptr %8, i32 0, i32 4, !dbg !5875
  %9 = load ptr, ptr %func5, align 8, !dbg !5875
  %intersects6 = getelementptr inbounds %struct.ttm_resource_manager_func, ptr %9, i32 0, i32 2, !dbg !5876
  %10 = load ptr, ptr %intersects6, align 8, !dbg !5876
  %11 = load ptr, ptr %man, align 8, !dbg !5877
  %12 = load ptr, ptr %res.addr, align 8, !dbg !5878
  %13 = load ptr, ptr %place.addr, align 8, !dbg !5879
  %14 = load i64, ptr %size.addr, align 8, !dbg !5880
  %call7 = call zeroext i1 %10(ptr noundef %11, ptr noundef %12, ptr noundef %13, i64 noundef %14) #12, !dbg !5874
  store i1 %call7, ptr %retval, align 1, !dbg !5881
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5881

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %man) #11, !dbg !5882
  %15 = load i1, ptr %retval, align 1, !dbg !5882
  ret i1 %15, !dbg !5882
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @ttm_resource_compatible(ptr noundef %bdev, ptr noundef %res, ptr noundef %place, i64 noundef %size) #0 align 16 !dbg !5883 {
entry:
  %retval = alloca i1, align 1
  %bdev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %place.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %man = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5885, metadata !DIExpression()), !dbg !5890
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5886, metadata !DIExpression()), !dbg !5891
  store ptr %place, ptr %place.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %place.addr, metadata !5887, metadata !DIExpression()), !dbg !5892
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5888, metadata !DIExpression()), !dbg !5893
  call void @llvm.lifetime.start.p0(i64 8, ptr %man) #11, !dbg !5894
  call void @llvm.dbg.declare(metadata ptr %man, metadata !5889, metadata !DIExpression()), !dbg !5895
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5896
  %tobool = icmp ne ptr %0, null, !dbg !5896
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5898

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %place.addr, align 8, !dbg !5899
  %tobool1 = icmp ne ptr %1, null, !dbg !5899
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5900

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, ptr %retval, align 1, !dbg !5901
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5901

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %bdev.addr, align 8, !dbg !5902
  %3 = load ptr, ptr %res.addr, align 8, !dbg !5903
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %3, i32 0, i32 2, !dbg !5904
  %4 = load i32, ptr %mem_type, align 8, !dbg !5904
  %call = call ptr @ttm_manager_type(ptr noundef %2, i32 noundef %4) #12, !dbg !5905
  store ptr %call, ptr %man, align 8, !dbg !5906
  %5 = load ptr, ptr %man, align 8, !dbg !5907
  %func = getelementptr inbounds %struct.ttm_resource_manager, ptr %5, i32 0, i32 4, !dbg !5909
  %6 = load ptr, ptr %func, align 8, !dbg !5909
  %compatible = getelementptr inbounds %struct.ttm_resource_manager_func, ptr %6, i32 0, i32 3, !dbg !5910
  %7 = load ptr, ptr %compatible, align 8, !dbg !5910
  %tobool2 = icmp ne ptr %7, null, !dbg !5907
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !5911

if.then3:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !5912
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5912

if.end4:                                          ; preds = %if.end
  %8 = load ptr, ptr %man, align 8, !dbg !5913
  %func5 = getelementptr inbounds %struct.ttm_resource_manager, ptr %8, i32 0, i32 4, !dbg !5914
  %9 = load ptr, ptr %func5, align 8, !dbg !5914
  %compatible6 = getelementptr inbounds %struct.ttm_resource_manager_func, ptr %9, i32 0, i32 3, !dbg !5915
  %10 = load ptr, ptr %compatible6, align 8, !dbg !5915
  %11 = load ptr, ptr %man, align 8, !dbg !5916
  %12 = load ptr, ptr %res.addr, align 8, !dbg !5917
  %13 = load ptr, ptr %place.addr, align 8, !dbg !5918
  %14 = load i64, ptr %size.addr, align 8, !dbg !5919
  %call7 = call zeroext i1 %10(ptr noundef %11, ptr noundef %12, ptr noundef %13, i64 noundef %14) #12, !dbg !5913
  store i1 %call7, ptr %retval, align 1, !dbg !5920
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5920

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %man) #11, !dbg !5921
  %15 = load i1, ptr %retval, align 1, !dbg !5921
  ret i1 %15, !dbg !5921
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @ttm_resource_compat(ptr noundef %res, ptr noundef %placement) #0 align 16 !dbg !5922 {
entry:
  %retval = alloca i1, align 1
  %res.addr = alloca ptr, align 8
  %placement.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5926, metadata !DIExpression()), !dbg !5928
  store ptr %placement, ptr %placement.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %placement.addr, metadata !5927, metadata !DIExpression()), !dbg !5929
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5930
  %1 = load ptr, ptr %placement.addr, align 8, !dbg !5932
  %placement1 = getelementptr inbounds %struct.ttm_placement, ptr %1, i32 0, i32 1, !dbg !5933
  %2 = load ptr, ptr %placement1, align 8, !dbg !5933
  %3 = load ptr, ptr %placement.addr, align 8, !dbg !5934
  %num_placement = getelementptr inbounds %struct.ttm_placement, ptr %3, i32 0, i32 0, !dbg !5935
  %4 = load i32, ptr %num_placement, align 8, !dbg !5935
  %call = call zeroext i1 @ttm_resource_places_compat(ptr noundef %0, ptr noundef %2, i32 noundef %4) #12, !dbg !5936
  br i1 %call, label %if.then, label %if.end, !dbg !5937

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !5938
  br label %return, !dbg !5938

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %placement.addr, align 8, !dbg !5939
  %busy_placement = getelementptr inbounds %struct.ttm_placement, ptr %5, i32 0, i32 3, !dbg !5941
  %6 = load ptr, ptr %busy_placement, align 8, !dbg !5941
  %7 = load ptr, ptr %placement.addr, align 8, !dbg !5942
  %placement2 = getelementptr inbounds %struct.ttm_placement, ptr %7, i32 0, i32 1, !dbg !5943
  %8 = load ptr, ptr %placement2, align 8, !dbg !5943
  %cmp = icmp ne ptr %6, %8, !dbg !5944
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !5945

lor.lhs.false:                                    ; preds = %if.end
  %9 = load ptr, ptr %placement.addr, align 8, !dbg !5946
  %num_busy_placement = getelementptr inbounds %struct.ttm_placement, ptr %9, i32 0, i32 2, !dbg !5947
  %10 = load i32, ptr %num_busy_placement, align 8, !dbg !5947
  %11 = load ptr, ptr %placement.addr, align 8, !dbg !5948
  %num_placement3 = getelementptr inbounds %struct.ttm_placement, ptr %11, i32 0, i32 0, !dbg !5949
  %12 = load i32, ptr %num_placement3, align 8, !dbg !5949
  %cmp4 = icmp ugt i32 %10, %12, !dbg !5950
  br i1 %cmp4, label %land.lhs.true, label %if.end9, !dbg !5951

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %13 = load ptr, ptr %res.addr, align 8, !dbg !5952
  %14 = load ptr, ptr %placement.addr, align 8, !dbg !5953
  %busy_placement5 = getelementptr inbounds %struct.ttm_placement, ptr %14, i32 0, i32 3, !dbg !5954
  %15 = load ptr, ptr %busy_placement5, align 8, !dbg !5954
  %16 = load ptr, ptr %placement.addr, align 8, !dbg !5955
  %num_busy_placement6 = getelementptr inbounds %struct.ttm_placement, ptr %16, i32 0, i32 2, !dbg !5956
  %17 = load i32, ptr %num_busy_placement6, align 8, !dbg !5956
  %call7 = call zeroext i1 @ttm_resource_places_compat(ptr noundef %13, ptr noundef %15, i32 noundef %17) #12, !dbg !5957
  br i1 %call7, label %if.then8, label %if.end9, !dbg !5958

if.then8:                                         ; preds = %land.lhs.true
  store i1 true, ptr %retval, align 1, !dbg !5959
  br label %return, !dbg !5959

if.end9:                                          ; preds = %land.lhs.true, %lor.lhs.false
  store i1 false, ptr %retval, align 1, !dbg !5960
  br label %return, !dbg !5960

return:                                           ; preds = %if.end9, %if.then8, %if.then
  %18 = load i1, ptr %retval, align 1, !dbg !5961
  ret i1 %18, !dbg !5961
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ttm_resource_places_compat(ptr noundef %res, ptr noundef %places, i32 noundef %num_placement) #0 align 16 !dbg !5962 {
entry:
  %retval = alloca i1, align 1
  %res.addr = alloca ptr, align 8
  %places.addr = alloca ptr, align 8
  %num_placement.addr = alloca i32, align 4
  %bo = alloca ptr, align 8
  %bdev = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %heap = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5966, metadata !DIExpression()), !dbg !5976
  store ptr %places, ptr %places.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %places.addr, metadata !5967, metadata !DIExpression()), !dbg !5977
  store i32 %num_placement, ptr %num_placement.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num_placement.addr, metadata !5968, metadata !DIExpression()), !dbg !5978
  call void @llvm.lifetime.start.p0(i64 8, ptr %bo) #11, !dbg !5979
  call void @llvm.dbg.declare(metadata ptr %bo, metadata !5969, metadata !DIExpression()), !dbg !5980
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5981
  %bo1 = getelementptr inbounds %struct.ttm_resource, ptr %0, i32 0, i32 5, !dbg !5982
  %1 = load ptr, ptr %bo1, align 8, !dbg !5982
  store ptr %1, ptr %bo, align 8, !dbg !5980
  call void @llvm.lifetime.start.p0(i64 8, ptr %bdev) #11, !dbg !5983
  call void @llvm.dbg.declare(metadata ptr %bdev, metadata !5970, metadata !DIExpression()), !dbg !5984
  %2 = load ptr, ptr %bo, align 8, !dbg !5985
  %bdev2 = getelementptr inbounds %struct.ttm_buffer_object, ptr %2, i32 0, i32 1, !dbg !5986
  %3 = load ptr, ptr %bdev2, align 8, !dbg !5986
  store ptr %3, ptr %bdev, align 8, !dbg !5984
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !5987
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5971, metadata !DIExpression()), !dbg !5988
  %4 = load ptr, ptr %res.addr, align 8, !dbg !5989
  %placement = getelementptr inbounds %struct.ttm_resource, ptr %4, i32 0, i32 3, !dbg !5991
  %5 = load i32, ptr %placement, align 4, !dbg !5991
  %and = and i32 %5, 4, !dbg !5992
  %tobool = icmp ne i32 %and, 0, !dbg !5992
  br i1 %tobool, label %if.then, label %if.end, !dbg !5993

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5994
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup14, !dbg !5994

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !5995
  br label %for.cond, !dbg !5996

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %i, align 4, !dbg !5997
  %7 = load i32, ptr %num_placement.addr, align 4, !dbg !5998
  %cmp = icmp ult i32 %6, %7, !dbg !5999
  br i1 %cmp, label %for.body, label %for.end, !dbg !6000

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %heap) #11, !dbg !6001
  call void @llvm.dbg.declare(metadata ptr %heap, metadata !5972, metadata !DIExpression()), !dbg !6002
  %8 = load ptr, ptr %places.addr, align 8, !dbg !6003
  %9 = load i32, ptr %i, align 4, !dbg !6004
  %idxprom = zext i32 %9 to i64, !dbg !6003
  %arrayidx = getelementptr %struct.ttm_place, ptr %8, i64 %idxprom, !dbg !6003
  store ptr %arrayidx, ptr %heap, align 8, !dbg !6002
  %10 = load ptr, ptr %bdev, align 8, !dbg !6005
  %11 = load ptr, ptr %res.addr, align 8, !dbg !6007
  %12 = load ptr, ptr %heap, align 8, !dbg !6008
  %13 = load ptr, ptr %bo, align 8, !dbg !6009
  %base = getelementptr inbounds %struct.ttm_buffer_object, ptr %13, i32 0, i32 0, !dbg !6010
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %base, i32 0, i32 5, !dbg !6011
  %14 = load i64, ptr %size, align 8, !dbg !6011
  %call = call zeroext i1 @ttm_resource_compatible(ptr noundef %10, ptr noundef %11, ptr noundef %12, i64 noundef %14) #12, !dbg !6012
  br i1 %call, label %if.end4, label %if.then3, !dbg !6013

if.then3:                                         ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6014

if.end4:                                          ; preds = %for.body
  %15 = load ptr, ptr %res.addr, align 8, !dbg !6015
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %15, i32 0, i32 2, !dbg !6017
  %16 = load i32, ptr %mem_type, align 8, !dbg !6017
  %17 = load ptr, ptr %heap, align 8, !dbg !6018
  %mem_type5 = getelementptr inbounds %struct.ttm_place, ptr %17, i32 0, i32 2, !dbg !6019
  %18 = load i32, ptr %mem_type5, align 4, !dbg !6019
  %cmp6 = icmp eq i32 %16, %18, !dbg !6020
  br i1 %cmp6, label %land.lhs.true, label %if.end13, !dbg !6021

land.lhs.true:                                    ; preds = %if.end4
  %19 = load ptr, ptr %heap, align 8, !dbg !6022
  %flags = getelementptr inbounds %struct.ttm_place, ptr %19, i32 0, i32 3, !dbg !6023
  %20 = load i32, ptr %flags, align 4, !dbg !6023
  %and7 = and i32 %20, 1, !dbg !6024
  %tobool8 = icmp ne i32 %and7, 0, !dbg !6024
  br i1 %tobool8, label %lor.lhs.false, label %if.then12, !dbg !6025

lor.lhs.false:                                    ; preds = %land.lhs.true
  %21 = load ptr, ptr %res.addr, align 8, !dbg !6026
  %placement9 = getelementptr inbounds %struct.ttm_resource, ptr %21, i32 0, i32 3, !dbg !6027
  %22 = load i32, ptr %placement9, align 4, !dbg !6027
  %and10 = and i32 %22, 1, !dbg !6028
  %tobool11 = icmp ne i32 %and10, 0, !dbg !6028
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !6029

if.then12:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i1 true, ptr %retval, align 1, !dbg !6030
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6030

if.end13:                                         ; preds = %lor.lhs.false, %if.end4
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6031
  br label %cleanup, !dbg !6031

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %heap) #11, !dbg !6031
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !6032

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %23 = load i32, ptr %i, align 4, !dbg !6033
  %inc = add i32 %23, 1, !dbg !6033
  store i32 %inc, ptr %i, align 4, !dbg !6033
  br label %for.cond, !dbg !6034, !llvm.loop !6035

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !6037
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup14, !dbg !6037

cleanup14:                                        ; preds = %for.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !6038
  call void @llvm.lifetime.end.p0(i64 8, ptr %bdev) #11, !dbg !6038
  call void @llvm.lifetime.end.p0(i64 8, ptr %bo) #11, !dbg !6038
  %24 = load i1, ptr %retval, align 1, !dbg !6038
  ret i1 %24, !dbg !6038
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ttm_resource_set_bo(ptr noundef %res, ptr noundef %bo) #0 align 16 !dbg !6039 {
entry:
  %res.addr = alloca ptr, align 8
  %bo.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6041, metadata !DIExpression()), !dbg !6043
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !6042, metadata !DIExpression()), !dbg !6044
  %0 = load ptr, ptr %bo.addr, align 8, !dbg !6045
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1, !dbg !6046
  %1 = load ptr, ptr %bdev, align 8, !dbg !6046
  %lru_lock = getelementptr inbounds %struct.ttm_device, ptr %1, i32 0, i32 6, !dbg !6047
  call void @spin_lock(ptr noundef %lru_lock) #12, !dbg !6048
  %2 = load ptr, ptr %bo.addr, align 8, !dbg !6049
  %3 = load ptr, ptr %res.addr, align 8, !dbg !6050
  %bo1 = getelementptr inbounds %struct.ttm_resource, ptr %3, i32 0, i32 5, !dbg !6051
  store ptr %2, ptr %bo1, align 8, !dbg !6052
  %4 = load ptr, ptr %bo.addr, align 8, !dbg !6053
  %bdev2 = getelementptr inbounds %struct.ttm_buffer_object, ptr %4, i32 0, i32 1, !dbg !6054
  %5 = load ptr, ptr %bdev2, align 8, !dbg !6054
  %lru_lock3 = getelementptr inbounds %struct.ttm_device, ptr %5, i32 0, i32 6, !dbg !6055
  call void @spin_unlock(ptr noundef %lru_lock3) #12, !dbg !6056
  ret void, !dbg !6057
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ttm_resource_manager_init(ptr noundef %man, ptr noundef %bdev, i64 noundef %size) #0 align 16 !dbg !6058 {
entry:
  %man.addr = alloca ptr, align 8
  %bdev.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  store ptr %man, ptr %man.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %man.addr, metadata !6062, metadata !DIExpression()), !dbg !6066
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !6063, metadata !DIExpression()), !dbg !6067
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6064, metadata !DIExpression()), !dbg !6068
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !6069
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6065, metadata !DIExpression()), !dbg !6070
  br label %do.body, !dbg !6071

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %man.addr, align 8, !dbg !6072
  %move_lock = getelementptr inbounds %struct.ttm_resource_manager, ptr %0, i32 0, i32 5, !dbg !6072
  %call = call ptr @spinlock_check(ptr noundef %move_lock) #12, !dbg !6072
  %1 = load ptr, ptr %man.addr, align 8, !dbg !6072
  %move_lock1 = getelementptr inbounds %struct.ttm_resource_manager, ptr %1, i32 0, i32 5, !dbg !6072
  %2 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !6072
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %2, i32 0, i32 0, !dbg !6072
  %3 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !6072
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !6072
  store i32 0, ptr %counter, align 4, !dbg !6072
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %move_lock1, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !6072
  br label %do.cond, !dbg !6072

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6072

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %bdev.addr, align 8, !dbg !6074
  %5 = load ptr, ptr %man.addr, align 8, !dbg !6075
  %bdev2 = getelementptr inbounds %struct.ttm_resource_manager, ptr %5, i32 0, i32 2, !dbg !6076
  store ptr %4, ptr %bdev2, align 8, !dbg !6077
  %6 = load i64, ptr %size.addr, align 8, !dbg !6078
  %7 = load ptr, ptr %man.addr, align 8, !dbg !6079
  %size3 = getelementptr inbounds %struct.ttm_resource_manager, ptr %7, i32 0, i32 3, !dbg !6080
  store i64 %6, ptr %size3, align 8, !dbg !6081
  %8 = load ptr, ptr %man.addr, align 8, !dbg !6082
  %usage = getelementptr inbounds %struct.ttm_resource_manager, ptr %8, i32 0, i32 8, !dbg !6083
  store i64 0, ptr %usage, align 8, !dbg !6084
  store i32 0, ptr %i, align 4, !dbg !6085
  br label %for.cond, !dbg !6087

for.cond:                                         ; preds = %for.inc, %do.end
  %9 = load i32, ptr %i, align 4, !dbg !6088
  %cmp = icmp ult i32 %9, 4, !dbg !6090
  br i1 %cmp, label %for.body, label %for.end, !dbg !6091

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %man.addr, align 8, !dbg !6092
  %lru = getelementptr inbounds %struct.ttm_resource_manager, ptr %10, i32 0, i32 7, !dbg !6093
  %11 = load i32, ptr %i, align 4, !dbg !6094
  %idxprom = zext i32 %11 to i64, !dbg !6092
  %arrayidx = getelementptr [4 x %struct.list_head], ptr %lru, i64 0, i64 %idxprom, !dbg !6092
  call void @INIT_LIST_HEAD(ptr noundef %arrayidx) #12, !dbg !6095
  br label %for.inc, !dbg !6095

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !dbg !6096
  %inc = add i32 %12, 1, !dbg !6096
  store i32 %inc, ptr %i, align 4, !dbg !6096
  br label %for.cond, !dbg !6097, !llvm.loop !6098

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %man.addr, align 8, !dbg !6100
  %move = getelementptr inbounds %struct.ttm_resource_manager, ptr %13, i32 0, i32 6, !dbg !6101
  store ptr null, ptr %move, align 8, !dbg !6102
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !6103
  ret void, !dbg !6103
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !6104 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6109, metadata !DIExpression()), !dbg !6110
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6111
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6112
  ret ptr %1, !dbg !6113
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #4 align 16 !dbg !6114 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6116, metadata !DIExpression()), !dbg !6117
  br label %do.body, !dbg !6118

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6119

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6121

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6119

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6123
  %1 = load ptr, ptr %list.addr, align 8, !dbg !6123
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6123
  store volatile ptr %0, ptr %next, align 8, !dbg !6123
  br label %do.end3, !dbg !6123

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6119

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !6125

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6126

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6128

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !6126

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !6130
  %3 = load ptr, ptr %list.addr, align 8, !dbg !6130
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !6130
  store volatile ptr %2, ptr %prev, align 8, !dbg !6130
  br label %do.end9, !dbg !6130

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !6126

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !6132
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ttm_resource_manager_evict_all(ptr noundef %bdev, ptr noundef %man) #0 align 16 !dbg !6133 {
entry:
  %retval = alloca i32, align 4
  %bdev.addr = alloca ptr, align 8
  %man.addr = alloca ptr, align 8
  %ctx = alloca %struct.ttm_operation_ctx, align 8
  %fence = alloca ptr, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !6137, metadata !DIExpression()), !dbg !6143
  store ptr %man, ptr %man.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %man.addr, metadata !6138, metadata !DIExpression()), !dbg !6144
  call void @llvm.lifetime.start.p0(i64 24, ptr %ctx) #11, !dbg !6145
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !6139, metadata !DIExpression()), !dbg !6146
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ctx, ptr align 8 @__const.ttm_resource_manager_evict_all.ctx, i64 24, i1 false), !dbg !6146
  call void @llvm.lifetime.start.p0(i64 8, ptr %fence) #11, !dbg !6147
  call void @llvm.dbg.declare(metadata ptr %fence, metadata !6140, metadata !DIExpression()), !dbg !6148
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !6149
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6141, metadata !DIExpression()), !dbg !6150
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !6151
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6142, metadata !DIExpression()), !dbg !6152
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !6153
  %lru_lock = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 6, !dbg !6154
  call void @spin_lock(ptr noundef %lru_lock) #12, !dbg !6155
  store i32 0, ptr %i, align 4, !dbg !6156
  br label %for.cond, !dbg !6158

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !6159
  %cmp = icmp ult i32 %1, 4, !dbg !6161
  br i1 %cmp, label %for.body, label %for.end, !dbg !6162

for.body:                                         ; preds = %for.cond
  br label %while.cond, !dbg !6163

while.cond:                                       ; preds = %if.end, %for.body
  %2 = load ptr, ptr %man.addr, align 8, !dbg !6165
  %lru = getelementptr inbounds %struct.ttm_resource_manager, ptr %2, i32 0, i32 7, !dbg !6166
  %3 = load i32, ptr %i, align 4, !dbg !6167
  %idxprom = zext i32 %3 to i64, !dbg !6165
  %arrayidx = getelementptr [4 x %struct.list_head], ptr %lru, i64 0, i64 %idxprom, !dbg !6165
  %call = call i32 @list_empty(ptr noundef %arrayidx) #12, !dbg !6168
  %tobool = icmp ne i32 %call, 0, !dbg !6169
  %lnot = xor i1 %tobool, true, !dbg !6169
  br i1 %lnot, label %while.body, label %while.end, !dbg !6163

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %bdev.addr, align 8, !dbg !6170
  %lru_lock1 = getelementptr inbounds %struct.ttm_device, ptr %4, i32 0, i32 6, !dbg !6172
  call void @spin_unlock(ptr noundef %lru_lock1) #12, !dbg !6173
  %5 = load ptr, ptr %bdev.addr, align 8, !dbg !6174
  %6 = load ptr, ptr %man.addr, align 8, !dbg !6175
  %call2 = call i32 @ttm_mem_evict_first(ptr noundef %5, ptr noundef %6, ptr noundef null, ptr noundef %ctx, ptr noundef null) #12, !dbg !6176
  store i32 %call2, ptr %ret, align 4, !dbg !6177
  %7 = load i32, ptr %ret, align 4, !dbg !6178
  %tobool3 = icmp ne i32 %7, 0, !dbg !6178
  br i1 %tobool3, label %if.then, label %if.end, !dbg !6180

if.then:                                          ; preds = %while.body
  %8 = load i32, ptr %ret, align 4, !dbg !6181
  store i32 %8, ptr %retval, align 4, !dbg !6182
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6182

if.end:                                           ; preds = %while.body
  %9 = load ptr, ptr %bdev.addr, align 8, !dbg !6183
  %lru_lock4 = getelementptr inbounds %struct.ttm_device, ptr %9, i32 0, i32 6, !dbg !6184
  call void @spin_lock(ptr noundef %lru_lock4) #12, !dbg !6185
  br label %while.cond, !dbg !6163, !llvm.loop !6186

while.end:                                        ; preds = %while.cond
  br label %for.inc, !dbg !6188

for.inc:                                          ; preds = %while.end
  %10 = load i32, ptr %i, align 4, !dbg !6189
  %inc = add i32 %10, 1, !dbg !6189
  store i32 %inc, ptr %i, align 4, !dbg !6189
  br label %for.cond, !dbg !6190, !llvm.loop !6191

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %bdev.addr, align 8, !dbg !6193
  %lru_lock5 = getelementptr inbounds %struct.ttm_device, ptr %11, i32 0, i32 6, !dbg !6194
  call void @spin_unlock(ptr noundef %lru_lock5) #12, !dbg !6195
  %12 = load ptr, ptr %man.addr, align 8, !dbg !6196
  %move_lock = getelementptr inbounds %struct.ttm_resource_manager, ptr %12, i32 0, i32 5, !dbg !6197
  call void @spin_lock(ptr noundef %move_lock) #12, !dbg !6198
  %13 = load ptr, ptr %man.addr, align 8, !dbg !6199
  %move = getelementptr inbounds %struct.ttm_resource_manager, ptr %13, i32 0, i32 6, !dbg !6200
  %14 = load ptr, ptr %move, align 8, !dbg !6200
  %call6 = call ptr @dma_fence_get(ptr noundef %14) #12, !dbg !6201
  store ptr %call6, ptr %fence, align 8, !dbg !6202
  %15 = load ptr, ptr %man.addr, align 8, !dbg !6203
  %move_lock7 = getelementptr inbounds %struct.ttm_resource_manager, ptr %15, i32 0, i32 5, !dbg !6204
  call void @spin_unlock(ptr noundef %move_lock7) #12, !dbg !6205
  %16 = load ptr, ptr %fence, align 8, !dbg !6206
  %tobool8 = icmp ne ptr %16, null, !dbg !6206
  br i1 %tobool8, label %if.then9, label %if.end14, !dbg !6208

if.then9:                                         ; preds = %for.end
  %17 = load ptr, ptr %fence, align 8, !dbg !6209
  %call10 = call i64 @dma_fence_wait(ptr noundef %17, i1 noundef zeroext false) #12, !dbg !6211
  %conv = trunc i64 %call10 to i32, !dbg !6211
  store i32 %conv, ptr %ret, align 4, !dbg !6212
  %18 = load ptr, ptr %fence, align 8, !dbg !6213
  call void @dma_fence_put(ptr noundef %18) #12, !dbg !6214
  %19 = load i32, ptr %ret, align 4, !dbg !6215
  %tobool11 = icmp ne i32 %19, 0, !dbg !6215
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !6217

if.then12:                                        ; preds = %if.then9
  %20 = load i32, ptr %ret, align 4, !dbg !6218
  store i32 %20, ptr %retval, align 4, !dbg !6219
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6219

if.end13:                                         ; preds = %if.then9
  br label %if.end14, !dbg !6220

if.end14:                                         ; preds = %if.end13, %for.end
  store i32 0, ptr %retval, align 4, !dbg !6221
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6221

cleanup:                                          ; preds = %if.end14, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !6222
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !6222
  call void @llvm.lifetime.end.p0(i64 8, ptr %fence) #11, !dbg !6222
  call void @llvm.lifetime.end.p0(i64 24, ptr %ctx) #11, !dbg !6222
  %21 = load i32, ptr %retval, align 4, !dbg !6222
  ret i32 %21, !dbg !6222
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #4 align 16 !dbg !6223 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6229, metadata !DIExpression()), !dbg !6230
  br label %do.body, !dbg !6231

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6233

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !6231
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !6231
  %1 = load volatile ptr, ptr %next, align 8, !dbg !6231
  store ptr %1, ptr %tmp, align 8, !dbg !6233
  %2 = load ptr, ptr %tmp, align 8, !dbg !6231
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6235
  %cmp = icmp eq ptr %2, %3, !dbg !6236
  %conv = zext i1 %cmp to i32, !dbg !6236
  ret i32 %conv, !dbg !6237
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6238 dso_local i32 @ttm_mem_evict_first(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dma_fence_get(ptr noundef %fence) #4 align 16 !dbg !6241 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !6245, metadata !DIExpression()), !dbg !6246
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !6247
  %tobool = icmp ne ptr %0, null, !dbg !6247
  br i1 %tobool, label %if.then, label %if.end, !dbg !6249

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !6250
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6, !dbg !6251
  call void @kref_get(ptr noundef %refcount) #12, !dbg !6252
  br label %if.end, !dbg !6252

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %fence.addr, align 8, !dbg !6253
  ret ptr %2, !dbg !6254
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @dma_fence_wait(ptr noundef %fence, i1 noundef zeroext %intr) #4 align 16 !dbg !6255 {
entry:
  %fence.addr = alloca ptr, align 8
  %intr.addr = alloca i8, align 1
  %ret = alloca i64, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !6259, metadata !DIExpression()), !dbg !6262
  %frombool = zext i1 %intr to i8
  store i8 %frombool, ptr %intr.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %intr.addr, metadata !6260, metadata !DIExpression()), !dbg !6263
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #11, !dbg !6264
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6261, metadata !DIExpression()), !dbg !6265
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !6266
  %1 = load i8, ptr %intr.addr, align 1, !dbg !6267, !range !6268, !noundef !1226
  %tobool = trunc i8 %1 to i1, !dbg !6267
  %call = call i64 @dma_fence_wait_timeout(ptr noundef %0, i1 noundef zeroext %tobool, i64 noundef 9223372036854775807) #12, !dbg !6269
  store i64 %call, ptr %ret, align 8, !dbg !6270
  %2 = load i64, ptr %ret, align 8, !dbg !6271
  %cmp = icmp slt i64 %2, 0, !dbg !6272
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6271

cond.true:                                        ; preds = %entry
  %3 = load i64, ptr %ret, align 8, !dbg !6273
  br label %cond.end, !dbg !6271

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6271

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ 0, %cond.false ], !dbg !6271
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #11, !dbg !6274
  ret i64 %cond, !dbg !6275
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_fence_put(ptr noundef %fence) #4 align 16 !dbg !6276 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !6278, metadata !DIExpression()), !dbg !6279
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !6280
  %tobool = icmp ne ptr %0, null, !dbg !6280
  br i1 %tobool, label %if.then, label %if.end, !dbg !6282

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !6283
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6, !dbg !6284
  %call = call i32 @kref_put(ptr noundef %refcount, ptr noundef @dma_fence_release) #12, !dbg !6285
  br label %if.end, !dbg !6285

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6286
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @ttm_resource_manager_usage(ptr noundef %man) #0 align 16 !dbg !6287 {
entry:
  %man.addr = alloca ptr, align 8
  %usage = alloca i64, align 8
  store ptr %man, ptr %man.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %man.addr, metadata !6291, metadata !DIExpression()), !dbg !6293
  call void @llvm.lifetime.start.p0(i64 8, ptr %usage) #11, !dbg !6294
  call void @llvm.dbg.declare(metadata ptr %usage, metadata !6292, metadata !DIExpression()), !dbg !6295
  %0 = load ptr, ptr %man.addr, align 8, !dbg !6296
  %bdev = getelementptr inbounds %struct.ttm_resource_manager, ptr %0, i32 0, i32 2, !dbg !6297
  %1 = load ptr, ptr %bdev, align 8, !dbg !6297
  %lru_lock = getelementptr inbounds %struct.ttm_device, ptr %1, i32 0, i32 6, !dbg !6298
  call void @spin_lock(ptr noundef %lru_lock) #12, !dbg !6299
  %2 = load ptr, ptr %man.addr, align 8, !dbg !6300
  %usage1 = getelementptr inbounds %struct.ttm_resource_manager, ptr %2, i32 0, i32 8, !dbg !6301
  %3 = load i64, ptr %usage1, align 8, !dbg !6301
  store i64 %3, ptr %usage, align 8, !dbg !6302
  %4 = load ptr, ptr %man.addr, align 8, !dbg !6303
  %bdev2 = getelementptr inbounds %struct.ttm_resource_manager, ptr %4, i32 0, i32 2, !dbg !6304
  %5 = load ptr, ptr %bdev2, align 8, !dbg !6304
  %lru_lock3 = getelementptr inbounds %struct.ttm_device, ptr %5, i32 0, i32 6, !dbg !6305
  call void @spin_unlock(ptr noundef %lru_lock3) #12, !dbg !6306
  %6 = load i64, ptr %usage, align 8, !dbg !6307
  call void @llvm.lifetime.end.p0(i64 8, ptr %usage) #11, !dbg !6308
  ret i64 %6, !dbg !6309
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ttm_resource_manager_debug(ptr noundef %man, ptr noundef %p) #0 align 16 !dbg !6310 {
entry:
  %man.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %man, ptr %man.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %man.addr, metadata !6312, metadata !DIExpression()), !dbg !6314
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6313, metadata !DIExpression()), !dbg !6315
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6316
  %1 = load ptr, ptr %man.addr, align 8, !dbg !6317
  %use_type = getelementptr inbounds %struct.ttm_resource_manager, ptr %1, i32 0, i32 0, !dbg !6318
  %2 = load i8, ptr %use_type, align 8, !dbg !6318, !range !6268, !noundef !1226
  %tobool = trunc i8 %2 to i1, !dbg !6318
  %conv = zext i1 %tobool to i32, !dbg !6317
  call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef @.str, i32 noundef %conv) #12, !dbg !6319
  %3 = load ptr, ptr %p.addr, align 8, !dbg !6320
  %4 = load ptr, ptr %man.addr, align 8, !dbg !6321
  %use_tt = getelementptr inbounds %struct.ttm_resource_manager, ptr %4, i32 0, i32 1, !dbg !6322
  %5 = load i8, ptr %use_tt, align 1, !dbg !6322, !range !6268, !noundef !1226
  %tobool1 = trunc i8 %5 to i1, !dbg !6322
  %conv2 = zext i1 %tobool1 to i32, !dbg !6321
  call void (ptr, ptr, ...) @drm_printf(ptr noundef %3, ptr noundef @.str.1, i32 noundef %conv2) #12, !dbg !6323
  %6 = load ptr, ptr %p.addr, align 8, !dbg !6324
  %7 = load ptr, ptr %man.addr, align 8, !dbg !6325
  %size = getelementptr inbounds %struct.ttm_resource_manager, ptr %7, i32 0, i32 3, !dbg !6326
  %8 = load i64, ptr %size, align 8, !dbg !6326
  call void (ptr, ptr, ...) @drm_printf(ptr noundef %6, ptr noundef @.str.2, i64 noundef %8) #12, !dbg !6327
  %9 = load ptr, ptr %p.addr, align 8, !dbg !6328
  %10 = load ptr, ptr %man.addr, align 8, !dbg !6329
  %call = call i64 @ttm_resource_manager_usage(ptr noundef %10) #12, !dbg !6330
  call void (ptr, ptr, ...) @drm_printf(ptr noundef %9, ptr noundef @.str.3, i64 noundef %call) #12, !dbg !6331
  %11 = load ptr, ptr %man.addr, align 8, !dbg !6332
  %func = getelementptr inbounds %struct.ttm_resource_manager, ptr %11, i32 0, i32 4, !dbg !6334
  %12 = load ptr, ptr %func, align 8, !dbg !6334
  %debug = getelementptr inbounds %struct.ttm_resource_manager_func, ptr %12, i32 0, i32 4, !dbg !6335
  %13 = load ptr, ptr %debug, align 8, !dbg !6335
  %tobool3 = icmp ne ptr %13, null, !dbg !6332
  br i1 %tobool3, label %if.then, label %if.end, !dbg !6336

if.then:                                          ; preds = %entry
  %14 = load ptr, ptr %man.addr, align 8, !dbg !6337
  %func4 = getelementptr inbounds %struct.ttm_resource_manager, ptr %14, i32 0, i32 4, !dbg !6338
  %15 = load ptr, ptr %func4, align 8, !dbg !6338
  %debug5 = getelementptr inbounds %struct.ttm_resource_manager_func, ptr %15, i32 0, i32 4, !dbg !6339
  %16 = load ptr, ptr %debug5, align 8, !dbg !6339
  %17 = load ptr, ptr %man.addr, align 8, !dbg !6340
  %18 = load ptr, ptr %p.addr, align 8, !dbg !6341
  call void %16(ptr noundef %17, ptr noundef %18) #12, !dbg !6337
  br label %if.end, !dbg !6337

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6342
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6343 dso_local void @drm_printf(ptr noundef, ptr noundef, ...) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @ttm_resource_manager_first(ptr noundef %man, ptr noundef %cursor) #0 align 16 !dbg !6346 {
entry:
  %retval = alloca ptr, align 8
  %man.addr = alloca ptr, align 8
  %cursor.addr = alloca ptr, align 8
  %res = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr11 = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  store ptr %man, ptr %man.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %man.addr, metadata !6354, metadata !DIExpression()), !dbg !6365
  store ptr %cursor, ptr %cursor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cursor.addr, metadata !6355, metadata !DIExpression()), !dbg !6366
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #11, !dbg !6367
  call void @llvm.dbg.declare(metadata ptr %res, metadata !6356, metadata !DIExpression()), !dbg !6368
  br label %do.body, !dbg !6369

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %man.addr, align 8, !dbg !6370
  %bdev = getelementptr inbounds %struct.ttm_resource_manager, ptr %0, i32 0, i32 2, !dbg !6370
  %1 = load ptr, ptr %bdev, align 8, !dbg !6370
  %lru_lock = getelementptr inbounds %struct.ttm_device, ptr %1, i32 0, i32 6, !dbg !6370
  br label %do.cond, !dbg !6370

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6370

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %cursor.addr, align 8, !dbg !6372
  %priority = getelementptr inbounds %struct.ttm_resource_cursor, ptr %2, i32 0, i32 0, !dbg !6373
  store i32 0, ptr %priority, align 4, !dbg !6374
  br label %for.cond, !dbg !6372

for.cond:                                         ; preds = %for.inc16, %do.end
  %3 = load ptr, ptr %cursor.addr, align 8, !dbg !6375
  %priority1 = getelementptr inbounds %struct.ttm_resource_cursor, ptr %3, i32 0, i32 0, !dbg !6376
  %4 = load i32, ptr %priority1, align 4, !dbg !6376
  %cmp = icmp ult i32 %4, 4, !dbg !6377
  br i1 %cmp, label %for.body, label %for.end18, !dbg !6378

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !6379
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6357, metadata !DIExpression()), !dbg !6379
  %5 = load ptr, ptr %man.addr, align 8, !dbg !6379
  %lru = getelementptr inbounds %struct.ttm_resource_manager, ptr %5, i32 0, i32 7, !dbg !6379
  %6 = load ptr, ptr %cursor.addr, align 8, !dbg !6379
  %priority2 = getelementptr inbounds %struct.ttm_resource_cursor, ptr %6, i32 0, i32 0, !dbg !6379
  %7 = load i32, ptr %priority2, align 4, !dbg !6379
  %idxprom = zext i32 %7 to i64, !dbg !6379
  %arrayidx = getelementptr [4 x %struct.list_head], ptr %lru, i64 0, i64 %idxprom, !dbg !6379
  %next = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 0, !dbg !6379
  %8 = load ptr, ptr %next, align 8, !dbg !6379
  store ptr %8, ptr %__mptr, align 8, !dbg !6379
  %9 = load ptr, ptr %__mptr, align 8, !dbg !6379
  %add.ptr = getelementptr i8, ptr %9, i64 -56, !dbg !6379
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6379
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !6380
  %10 = load ptr, ptr %tmp, align 8, !dbg !6379
  store ptr %10, ptr %res, align 8, !dbg !6380
  br label %for.cond3, !dbg !6380

for.cond3:                                        ; preds = %for.inc, %for.body
  %11 = load ptr, ptr %res, align 8, !dbg !6381
  %lru4 = getelementptr inbounds %struct.ttm_resource, ptr %11, i32 0, i32 6, !dbg !6381
  %12 = load ptr, ptr %man.addr, align 8, !dbg !6381
  %lru5 = getelementptr inbounds %struct.ttm_resource_manager, ptr %12, i32 0, i32 7, !dbg !6381
  %13 = load ptr, ptr %cursor.addr, align 8, !dbg !6381
  %priority6 = getelementptr inbounds %struct.ttm_resource_cursor, ptr %13, i32 0, i32 0, !dbg !6381
  %14 = load i32, ptr %priority6, align 4, !dbg !6381
  %idxprom7 = zext i32 %14 to i64, !dbg !6381
  %arrayidx8 = getelementptr [4 x %struct.list_head], ptr %lru5, i64 0, i64 %idxprom7, !dbg !6381
  %cmp9 = icmp eq ptr %lru4, %arrayidx8, !dbg !6381
  %lnot = xor i1 %cmp9, true, !dbg !6381
  br i1 %lnot, label %for.body10, label %for.end, !dbg !6380

for.body10:                                       ; preds = %for.cond3
  %15 = load ptr, ptr %res, align 8, !dbg !6382
  store ptr %15, ptr %retval, align 8, !dbg !6383
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6383

for.inc:                                          ; No predecessors!
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr11) #11, !dbg !6384
  call void @llvm.dbg.declare(metadata ptr %__mptr11, metadata !6362, metadata !DIExpression()), !dbg !6384
  %16 = load ptr, ptr %res, align 8, !dbg !6384
  %lru12 = getelementptr inbounds %struct.ttm_resource, ptr %16, i32 0, i32 6, !dbg !6384
  %next13 = getelementptr inbounds %struct.list_head, ptr %lru12, i32 0, i32 0, !dbg !6384
  %17 = load ptr, ptr %next13, align 8, !dbg !6384
  store ptr %17, ptr %__mptr11, align 8, !dbg !6384
  %18 = load ptr, ptr %__mptr11, align 8, !dbg !6384
  %add.ptr15 = getelementptr i8, ptr %18, i64 -56, !dbg !6384
  store ptr %add.ptr15, ptr %tmp14, align 8, !dbg !6384
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr11) #11, !dbg !6381
  %19 = load ptr, ptr %tmp14, align 8, !dbg !6384
  store ptr %19, ptr %res, align 8, !dbg !6381
  br label %for.cond3, !dbg !6381, !llvm.loop !6385

for.end:                                          ; preds = %for.cond3
  br label %for.inc16, !dbg !6386

for.inc16:                                        ; preds = %for.end
  %20 = load ptr, ptr %cursor.addr, align 8, !dbg !6387
  %priority17 = getelementptr inbounds %struct.ttm_resource_cursor, ptr %20, i32 0, i32 0, !dbg !6388
  %21 = load i32, ptr %priority17, align 4, !dbg !6389
  %inc = add i32 %21, 1, !dbg !6389
  store i32 %inc, ptr %priority17, align 4, !dbg !6389
  br label %for.cond, !dbg !6390, !llvm.loop !6391

for.end18:                                        ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !6393
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6393

cleanup:                                          ; preds = %for.end18, %for.body10
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #11, !dbg !6394
  %22 = load ptr, ptr %retval, align 8, !dbg !6394
  ret ptr %22, !dbg !6394
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @ttm_resource_manager_next(ptr noundef %man, ptr noundef %cursor, ptr noundef %res) #0 align 16 !dbg !6395 {
entry:
  %retval = alloca ptr, align 8
  %man.addr = alloca ptr, align 8
  %cursor.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %__mptr13 = alloca ptr, align 8
  %tmp19 = alloca ptr, align 8
  %__mptr31 = alloca ptr, align 8
  %tmp34 = alloca ptr, align 8
  store ptr %man, ptr %man.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %man.addr, metadata !6399, metadata !DIExpression()), !dbg !6416
  store ptr %cursor, ptr %cursor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cursor.addr, metadata !6400, metadata !DIExpression()), !dbg !6417
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6401, metadata !DIExpression()), !dbg !6418
  br label %do.body, !dbg !6419

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %man.addr, align 8, !dbg !6420
  %bdev = getelementptr inbounds %struct.ttm_resource_manager, ptr %0, i32 0, i32 2, !dbg !6420
  %1 = load ptr, ptr %bdev, align 8, !dbg !6420
  %lru_lock = getelementptr inbounds %struct.ttm_device, ptr %1, i32 0, i32 6, !dbg !6420
  br label %do.end, !dbg !6420

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !6422
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6402, metadata !DIExpression()), !dbg !6422
  %2 = load ptr, ptr %res.addr, align 8, !dbg !6422
  %lru = getelementptr inbounds %struct.ttm_resource, ptr %2, i32 0, i32 6, !dbg !6422
  %next = getelementptr inbounds %struct.list_head, ptr %lru, i32 0, i32 0, !dbg !6422
  %3 = load ptr, ptr %next, align 8, !dbg !6422
  store ptr %3, ptr %__mptr, align 8, !dbg !6422
  %4 = load ptr, ptr %__mptr, align 8, !dbg !6422
  %add.ptr = getelementptr i8, ptr %4, i64 -56, !dbg !6422
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6422
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !6423
  %5 = load ptr, ptr %tmp, align 8, !dbg !6422
  store ptr %5, ptr %res.addr, align 8, !dbg !6423
  br label %for.cond, !dbg !6423

for.cond:                                         ; preds = %for.inc, %do.end
  %6 = load ptr, ptr %res.addr, align 8, !dbg !6424
  %lru1 = getelementptr inbounds %struct.ttm_resource, ptr %6, i32 0, i32 6, !dbg !6424
  %7 = load ptr, ptr %man.addr, align 8, !dbg !6424
  %lru2 = getelementptr inbounds %struct.ttm_resource_manager, ptr %7, i32 0, i32 7, !dbg !6424
  %8 = load ptr, ptr %cursor.addr, align 8, !dbg !6424
  %priority = getelementptr inbounds %struct.ttm_resource_cursor, ptr %8, i32 0, i32 0, !dbg !6424
  %9 = load i32, ptr %priority, align 4, !dbg !6424
  %idxprom = zext i32 %9 to i64, !dbg !6424
  %arrayidx = getelementptr [4 x %struct.list_head], ptr %lru2, i64 0, i64 %idxprom, !dbg !6424
  %cmp = icmp eq ptr %lru1, %arrayidx, !dbg !6424
  %lnot = xor i1 %cmp, true, !dbg !6424
  br i1 %lnot, label %for.body, label %for.end, !dbg !6423

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %res.addr, align 8, !dbg !6425
  store ptr %10, ptr %retval, align 8, !dbg !6426
  br label %return, !dbg !6426

for.inc:                                          ; No predecessors!
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #11, !dbg !6427
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !6405, metadata !DIExpression()), !dbg !6427
  %11 = load ptr, ptr %res.addr, align 8, !dbg !6427
  %lru4 = getelementptr inbounds %struct.ttm_resource, ptr %11, i32 0, i32 6, !dbg !6427
  %next5 = getelementptr inbounds %struct.list_head, ptr %lru4, i32 0, i32 0, !dbg !6427
  %12 = load ptr, ptr %next5, align 8, !dbg !6427
  store ptr %12, ptr %__mptr3, align 8, !dbg !6427
  %13 = load ptr, ptr %__mptr3, align 8, !dbg !6427
  %add.ptr7 = getelementptr i8, ptr %13, i64 -56, !dbg !6427
  store ptr %add.ptr7, ptr %tmp6, align 8, !dbg !6427
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #11, !dbg !6424
  %14 = load ptr, ptr %tmp6, align 8, !dbg !6427
  store ptr %14, ptr %res.addr, align 8, !dbg !6424
  br label %for.cond, !dbg !6424, !llvm.loop !6428

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %cursor.addr, align 8, !dbg !6430
  %priority8 = getelementptr inbounds %struct.ttm_resource_cursor, ptr %15, i32 0, i32 0, !dbg !6431
  %16 = load i32, ptr %priority8, align 4, !dbg !6432
  %inc = add i32 %16, 1, !dbg !6432
  store i32 %inc, ptr %priority8, align 4, !dbg !6432
  br label %for.cond9, !dbg !6432

for.cond9:                                        ; preds = %for.inc37, %for.end
  %17 = load ptr, ptr %cursor.addr, align 8, !dbg !6433
  %priority10 = getelementptr inbounds %struct.ttm_resource_cursor, ptr %17, i32 0, i32 0, !dbg !6434
  %18 = load i32, ptr %priority10, align 4, !dbg !6434
  %cmp11 = icmp ult i32 %18, 4, !dbg !6435
  br i1 %cmp11, label %for.body12, label %for.end40, !dbg !6436

for.body12:                                       ; preds = %for.cond9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr13) #11, !dbg !6437
  call void @llvm.dbg.declare(metadata ptr %__mptr13, metadata !6408, metadata !DIExpression()), !dbg !6437
  %19 = load ptr, ptr %man.addr, align 8, !dbg !6437
  %lru14 = getelementptr inbounds %struct.ttm_resource_manager, ptr %19, i32 0, i32 7, !dbg !6437
  %20 = load ptr, ptr %cursor.addr, align 8, !dbg !6437
  %priority15 = getelementptr inbounds %struct.ttm_resource_cursor, ptr %20, i32 0, i32 0, !dbg !6437
  %21 = load i32, ptr %priority15, align 4, !dbg !6437
  %idxprom16 = zext i32 %21 to i64, !dbg !6437
  %arrayidx17 = getelementptr [4 x %struct.list_head], ptr %lru14, i64 0, i64 %idxprom16, !dbg !6437
  %next18 = getelementptr inbounds %struct.list_head, ptr %arrayidx17, i32 0, i32 0, !dbg !6437
  %22 = load ptr, ptr %next18, align 8, !dbg !6437
  store ptr %22, ptr %__mptr13, align 8, !dbg !6437
  %23 = load ptr, ptr %__mptr13, align 8, !dbg !6437
  %add.ptr20 = getelementptr i8, ptr %23, i64 -56, !dbg !6437
  store ptr %add.ptr20, ptr %tmp19, align 8, !dbg !6437
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr13) #11, !dbg !6438
  %24 = load ptr, ptr %tmp19, align 8, !dbg !6437
  store ptr %24, ptr %res.addr, align 8, !dbg !6438
  br label %for.cond21, !dbg !6438

for.cond21:                                       ; preds = %for.inc30, %for.body12
  %25 = load ptr, ptr %res.addr, align 8, !dbg !6439
  %lru22 = getelementptr inbounds %struct.ttm_resource, ptr %25, i32 0, i32 6, !dbg !6439
  %26 = load ptr, ptr %man.addr, align 8, !dbg !6439
  %lru23 = getelementptr inbounds %struct.ttm_resource_manager, ptr %26, i32 0, i32 7, !dbg !6439
  %27 = load ptr, ptr %cursor.addr, align 8, !dbg !6439
  %priority24 = getelementptr inbounds %struct.ttm_resource_cursor, ptr %27, i32 0, i32 0, !dbg !6439
  %28 = load i32, ptr %priority24, align 4, !dbg !6439
  %idxprom25 = zext i32 %28 to i64, !dbg !6439
  %arrayidx26 = getelementptr [4 x %struct.list_head], ptr %lru23, i64 0, i64 %idxprom25, !dbg !6439
  %cmp27 = icmp eq ptr %lru22, %arrayidx26, !dbg !6439
  %lnot28 = xor i1 %cmp27, true, !dbg !6439
  br i1 %lnot28, label %for.body29, label %for.end36, !dbg !6438

for.body29:                                       ; preds = %for.cond21
  %29 = load ptr, ptr %res.addr, align 8, !dbg !6440
  store ptr %29, ptr %retval, align 8, !dbg !6441
  br label %return, !dbg !6441

for.inc30:                                        ; No predecessors!
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr31) #11, !dbg !6442
  call void @llvm.dbg.declare(metadata ptr %__mptr31, metadata !6413, metadata !DIExpression()), !dbg !6442
  %30 = load ptr, ptr %res.addr, align 8, !dbg !6442
  %lru32 = getelementptr inbounds %struct.ttm_resource, ptr %30, i32 0, i32 6, !dbg !6442
  %next33 = getelementptr inbounds %struct.list_head, ptr %lru32, i32 0, i32 0, !dbg !6442
  %31 = load ptr, ptr %next33, align 8, !dbg !6442
  store ptr %31, ptr %__mptr31, align 8, !dbg !6442
  %32 = load ptr, ptr %__mptr31, align 8, !dbg !6442
  %add.ptr35 = getelementptr i8, ptr %32, i64 -56, !dbg !6442
  store ptr %add.ptr35, ptr %tmp34, align 8, !dbg !6442
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr31) #11, !dbg !6439
  %33 = load ptr, ptr %tmp34, align 8, !dbg !6442
  store ptr %33, ptr %res.addr, align 8, !dbg !6439
  br label %for.cond21, !dbg !6439, !llvm.loop !6443

for.end36:                                        ; preds = %for.cond21
  br label %for.inc37, !dbg !6444

for.inc37:                                        ; preds = %for.end36
  %34 = load ptr, ptr %cursor.addr, align 8, !dbg !6445
  %priority38 = getelementptr inbounds %struct.ttm_resource_cursor, ptr %34, i32 0, i32 0, !dbg !6446
  %35 = load i32, ptr %priority38, align 4, !dbg !6447
  %inc39 = add i32 %35, 1, !dbg !6447
  store i32 %inc39, ptr %priority38, align 4, !dbg !6447
  br label %for.cond9, !dbg !6448, !llvm.loop !6449

for.end40:                                        ; preds = %for.cond9
  store ptr null, ptr %retval, align 8, !dbg !6451
  br label %return, !dbg !6451

return:                                           ; preds = %for.end40, %for.body29, %for.body
  %36 = load ptr, ptr %retval, align 8, !dbg !6452
  ret ptr %36, !dbg !6452
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @ttm_kmap_iter_iomap_init(ptr noundef %iter_io, ptr noundef %iomap, ptr noundef %st, i64 noundef %start) #0 align 16 !dbg !6453 {
entry:
  %iter_io.addr = alloca ptr, align 8
  %iomap.addr = alloca ptr, align 8
  %st.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  store ptr %iter_io, ptr %iter_io.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter_io.addr, metadata !6457, metadata !DIExpression()), !dbg !6461
  store ptr %iomap, ptr %iomap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iomap.addr, metadata !6458, metadata !DIExpression()), !dbg !6462
  store ptr %st, ptr %st.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %st.addr, metadata !6459, metadata !DIExpression()), !dbg !6463
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6460, metadata !DIExpression()), !dbg !6464
  %0 = load ptr, ptr %iter_io.addr, align 8, !dbg !6465
  %base = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %0, i32 0, i32 0, !dbg !6466
  %ops = getelementptr inbounds %struct.ttm_kmap_iter, ptr %base, i32 0, i32 0, !dbg !6467
  store ptr @ttm_kmap_iter_io_ops, ptr %ops, align 8, !dbg !6468
  %1 = load ptr, ptr %iomap.addr, align 8, !dbg !6469
  %2 = load ptr, ptr %iter_io.addr, align 8, !dbg !6470
  %iomap1 = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %2, i32 0, i32 1, !dbg !6471
  store ptr %1, ptr %iomap1, align 8, !dbg !6472
  %3 = load ptr, ptr %st.addr, align 8, !dbg !6473
  %4 = load ptr, ptr %iter_io.addr, align 8, !dbg !6474
  %st2 = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %4, i32 0, i32 2, !dbg !6475
  store ptr %3, ptr %st2, align 8, !dbg !6476
  %5 = load i64, ptr %start.addr, align 8, !dbg !6477
  %6 = load ptr, ptr %iter_io.addr, align 8, !dbg !6478
  %start3 = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %6, i32 0, i32 3, !dbg !6479
  store i64 %5, ptr %start3, align 8, !dbg !6480
  %7 = load ptr, ptr %iter_io.addr, align 8, !dbg !6481
  %cache = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %7, i32 0, i32 4, !dbg !6482
  call void @llvm.memset.p0.i64(ptr align 8 %cache, i8 0, i64 32, i1 false), !dbg !6483
  %8 = load ptr, ptr %iter_io.addr, align 8, !dbg !6484
  %base4 = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %8, i32 0, i32 0, !dbg !6485
  ret ptr %base4, !dbg !6486
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @ttm_kmap_iter_linear_io_init(ptr noundef %iter_io, ptr noundef %bdev, ptr noundef %mem) #0 align 16 !dbg !6487 {
entry:
  %retval = alloca ptr, align 8
  %iter_io.addr = alloca ptr, align 8
  %bdev.addr = alloca ptr, align 8
  %mem.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iter_io, ptr %iter_io.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter_io.addr, metadata !6491, metadata !DIExpression()), !dbg !6497
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !6492, metadata !DIExpression()), !dbg !6498
  store ptr %mem, ptr %mem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mem.addr, metadata !6493, metadata !DIExpression()), !dbg !6499
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !6500
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6494, metadata !DIExpression()), !dbg !6501
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !6502
  %1 = load ptr, ptr %mem.addr, align 8, !dbg !6503
  %call = call i32 @ttm_mem_io_reserve(ptr noundef %0, ptr noundef %1) #12, !dbg !6504
  store i32 %call, ptr %ret, align 4, !dbg !6505
  %2 = load i32, ptr %ret, align 4, !dbg !6506
  %tobool = icmp ne i32 %2, 0, !dbg !6506
  br i1 %tobool, label %if.then, label %if.end, !dbg !6508

if.then:                                          ; preds = %entry
  br label %out_err, !dbg !6509

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %mem.addr, align 8, !dbg !6510
  %bus = getelementptr inbounds %struct.ttm_resource, ptr %3, i32 0, i32 4, !dbg !6512
  %is_iomem = getelementptr inbounds %struct.ttm_bus_placement, ptr %bus, i32 0, i32 2, !dbg !6513
  %4 = load i8, ptr %is_iomem, align 8, !dbg !6513, !range !6268, !noundef !1226
  %tobool1 = trunc i8 %4 to i1, !dbg !6513
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !6514

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %ret, align 4, !dbg !6515
  br label %out_io_free, !dbg !6517

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %mem.addr, align 8, !dbg !6518
  %bus4 = getelementptr inbounds %struct.ttm_resource, ptr %5, i32 0, i32 4, !dbg !6520
  %addr = getelementptr inbounds %struct.ttm_bus_placement, ptr %bus4, i32 0, i32 0, !dbg !6521
  %6 = load ptr, ptr %addr, align 8, !dbg !6521
  %tobool5 = icmp ne ptr %6, null, !dbg !6518
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !6522

if.then6:                                         ; preds = %if.end3
  %7 = load ptr, ptr %iter_io.addr, align 8, !dbg !6523
  %dmap = getelementptr inbounds %struct.ttm_kmap_iter_linear_io, ptr %7, i32 0, i32 1, !dbg !6525
  %8 = load ptr, ptr %mem.addr, align 8, !dbg !6526
  %bus7 = getelementptr inbounds %struct.ttm_resource, ptr %8, i32 0, i32 4, !dbg !6527
  %addr8 = getelementptr inbounds %struct.ttm_bus_placement, ptr %bus7, i32 0, i32 0, !dbg !6528
  %9 = load ptr, ptr %addr8, align 8, !dbg !6528
  call void @iosys_map_set_vaddr(ptr noundef %dmap, ptr noundef %9) #12, !dbg !6529
  %10 = load ptr, ptr %iter_io.addr, align 8, !dbg !6530
  %needs_unmap = getelementptr inbounds %struct.ttm_kmap_iter_linear_io, ptr %10, i32 0, i32 2, !dbg !6531
  store i8 0, ptr %needs_unmap, align 8, !dbg !6532
  br label %if.end41, !dbg !6533

if.else:                                          ; preds = %if.end3
  %11 = load ptr, ptr %iter_io.addr, align 8, !dbg !6534
  %needs_unmap9 = getelementptr inbounds %struct.ttm_kmap_iter_linear_io, ptr %11, i32 0, i32 2, !dbg !6536
  store i8 1, ptr %needs_unmap9, align 8, !dbg !6537
  %12 = load ptr, ptr %iter_io.addr, align 8, !dbg !6538
  %dmap10 = getelementptr inbounds %struct.ttm_kmap_iter_linear_io, ptr %12, i32 0, i32 1, !dbg !6539
  call void @llvm.memset.p0.i64(ptr align 8 %dmap10, i8 0, i64 16, i1 false), !dbg !6540
  %13 = load ptr, ptr %mem.addr, align 8, !dbg !6541
  %bus11 = getelementptr inbounds %struct.ttm_resource, ptr %13, i32 0, i32 4, !dbg !6543
  %caching = getelementptr inbounds %struct.ttm_bus_placement, ptr %bus11, i32 0, i32 3, !dbg !6544
  %14 = load i32, ptr %caching, align 4, !dbg !6544
  %cmp = icmp eq i32 %14, 1, !dbg !6545
  br i1 %cmp, label %if.then12, label %if.else16, !dbg !6546

if.then12:                                        ; preds = %if.else
  %15 = load ptr, ptr %iter_io.addr, align 8, !dbg !6547
  %dmap13 = getelementptr inbounds %struct.ttm_kmap_iter_linear_io, ptr %15, i32 0, i32 1, !dbg !6548
  %16 = load ptr, ptr %mem.addr, align 8, !dbg !6549
  %bus14 = getelementptr inbounds %struct.ttm_resource, ptr %16, i32 0, i32 4, !dbg !6550
  %offset = getelementptr inbounds %struct.ttm_bus_placement, ptr %bus14, i32 0, i32 1, !dbg !6551
  %17 = load i64, ptr %offset, align 8, !dbg !6551
  %18 = load ptr, ptr %mem.addr, align 8, !dbg !6552
  %size = getelementptr inbounds %struct.ttm_resource, ptr %18, i32 0, i32 1, !dbg !6553
  %19 = load i64, ptr %size, align 8, !dbg !6553
  %call15 = call ptr @ioremap_wc(i64 noundef %17, i64 noundef %19) #12, !dbg !6554
  call void @iosys_map_set_vaddr_iomem(ptr noundef %dmap13, ptr noundef %call15) #12, !dbg !6555
  br label %if.end27, !dbg !6555

if.else16:                                        ; preds = %if.else
  %20 = load ptr, ptr %mem.addr, align 8, !dbg !6556
  %bus17 = getelementptr inbounds %struct.ttm_resource, ptr %20, i32 0, i32 4, !dbg !6558
  %caching18 = getelementptr inbounds %struct.ttm_bus_placement, ptr %bus17, i32 0, i32 3, !dbg !6559
  %21 = load i32, ptr %caching18, align 4, !dbg !6559
  %cmp19 = icmp eq i32 %21, 2, !dbg !6560
  br i1 %cmp19, label %if.then20, label %if.end26, !dbg !6561

if.then20:                                        ; preds = %if.else16
  %22 = load ptr, ptr %iter_io.addr, align 8, !dbg !6562
  %dmap21 = getelementptr inbounds %struct.ttm_kmap_iter_linear_io, ptr %22, i32 0, i32 1, !dbg !6563
  %23 = load ptr, ptr %mem.addr, align 8, !dbg !6564
  %bus22 = getelementptr inbounds %struct.ttm_resource, ptr %23, i32 0, i32 4, !dbg !6565
  %offset23 = getelementptr inbounds %struct.ttm_bus_placement, ptr %bus22, i32 0, i32 1, !dbg !6566
  %24 = load i64, ptr %offset23, align 8, !dbg !6566
  %25 = load ptr, ptr %mem.addr, align 8, !dbg !6567
  %size24 = getelementptr inbounds %struct.ttm_resource, ptr %25, i32 0, i32 1, !dbg !6568
  %26 = load i64, ptr %size24, align 8, !dbg !6568
  %call25 = call ptr @memremap(i64 noundef %24, i64 noundef %26, i64 noundef 7) #12, !dbg !6569
  call void @iosys_map_set_vaddr(ptr noundef %dmap21, ptr noundef %call25) #12, !dbg !6570
  br label %if.end26, !dbg !6570

if.end26:                                         ; preds = %if.then20, %if.else16
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then12
  %27 = load ptr, ptr %iter_io.addr, align 8, !dbg !6571
  %dmap28 = getelementptr inbounds %struct.ttm_kmap_iter_linear_io, ptr %27, i32 0, i32 1, !dbg !6573
  %call29 = call zeroext i1 @iosys_map_is_null(ptr noundef %dmap28) #12, !dbg !6574
  br i1 %call29, label %if.then30, label %if.end36, !dbg !6575

if.then30:                                        ; preds = %if.end27
  %28 = load ptr, ptr %iter_io.addr, align 8, !dbg !6576
  %dmap31 = getelementptr inbounds %struct.ttm_kmap_iter_linear_io, ptr %28, i32 0, i32 1, !dbg !6577
  %29 = load ptr, ptr %mem.addr, align 8, !dbg !6578
  %bus32 = getelementptr inbounds %struct.ttm_resource, ptr %29, i32 0, i32 4, !dbg !6579
  %offset33 = getelementptr inbounds %struct.ttm_bus_placement, ptr %bus32, i32 0, i32 1, !dbg !6580
  %30 = load i64, ptr %offset33, align 8, !dbg !6580
  %31 = load ptr, ptr %mem.addr, align 8, !dbg !6581
  %size34 = getelementptr inbounds %struct.ttm_resource, ptr %31, i32 0, i32 1, !dbg !6582
  %32 = load i64, ptr %size34, align 8, !dbg !6582
  %call35 = call ptr @ioremap(i64 noundef %30, i64 noundef %32) #12, !dbg !6583
  call void @iosys_map_set_vaddr_iomem(ptr noundef %dmap31, ptr noundef %call35) #12, !dbg !6584
  br label %if.end36, !dbg !6584

if.end36:                                         ; preds = %if.then30, %if.end27
  %33 = load ptr, ptr %iter_io.addr, align 8, !dbg !6585
  %dmap37 = getelementptr inbounds %struct.ttm_kmap_iter_linear_io, ptr %33, i32 0, i32 1, !dbg !6587
  %call38 = call zeroext i1 @iosys_map_is_null(ptr noundef %dmap37) #12, !dbg !6588
  br i1 %call38, label %if.then39, label %if.end40, !dbg !6589

if.then39:                                        ; preds = %if.end36
  store i32 -12, ptr %ret, align 4, !dbg !6590
  br label %out_io_free, !dbg !6592

if.end40:                                         ; preds = %if.end36
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then6
  %34 = load ptr, ptr %iter_io.addr, align 8, !dbg !6593
  %base = getelementptr inbounds %struct.ttm_kmap_iter_linear_io, ptr %34, i32 0, i32 0, !dbg !6594
  %ops = getelementptr inbounds %struct.ttm_kmap_iter, ptr %base, i32 0, i32 0, !dbg !6595
  store ptr @ttm_kmap_iter_linear_io_ops, ptr %ops, align 8, !dbg !6596
  %35 = load ptr, ptr %iter_io.addr, align 8, !dbg !6597
  %base42 = getelementptr inbounds %struct.ttm_kmap_iter_linear_io, ptr %35, i32 0, i32 0, !dbg !6598
  store ptr %base42, ptr %retval, align 8, !dbg !6599
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6599

out_io_free:                                      ; preds = %if.then39, %if.then2
  call void @llvm.dbg.label(metadata !6495), !dbg !6600
  %36 = load ptr, ptr %bdev.addr, align 8, !dbg !6601
  %37 = load ptr, ptr %mem.addr, align 8, !dbg !6602
  call void @ttm_mem_io_free(ptr noundef %36, ptr noundef %37) #12, !dbg !6603
  br label %out_err, !dbg !6603

out_err:                                          ; preds = %out_io_free, %if.then
  call void @llvm.dbg.label(metadata !6496), !dbg !6604
  %38 = load i32, ptr %ret, align 4, !dbg !6605
  %conv = sext i32 %38 to i64, !dbg !6605
  %call43 = call ptr @ERR_PTR(i64 noundef %conv) #12, !dbg !6606
  store ptr %call43, ptr %retval, align 8, !dbg !6607
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6607

cleanup:                                          ; preds = %out_err, %if.end41
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !6608
  %39 = load ptr, ptr %retval, align 8, !dbg !6608
  ret ptr %39, !dbg !6608
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6609 dso_local i32 @ttm_mem_io_reserve(ptr noundef, ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @iosys_map_set_vaddr(ptr noundef %map, ptr noundef %vaddr) #4 align 16 !dbg !6610 {
entry:
  %map.addr = alloca ptr, align 8
  %vaddr.addr = alloca ptr, align 8
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !6614, metadata !DIExpression()), !dbg !6616
  store ptr %vaddr, ptr %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vaddr.addr, metadata !6615, metadata !DIExpression()), !dbg !6617
  %0 = load ptr, ptr %vaddr.addr, align 8, !dbg !6618
  %1 = load ptr, ptr %map.addr, align 8, !dbg !6619
  %2 = getelementptr inbounds %struct.iosys_map, ptr %1, i32 0, i32 0, !dbg !6620
  store ptr %0, ptr %2, align 8, !dbg !6621
  %3 = load ptr, ptr %map.addr, align 8, !dbg !6622
  %is_iomem = getelementptr inbounds %struct.iosys_map, ptr %3, i32 0, i32 1, !dbg !6623
  store i8 0, ptr %is_iomem, align 8, !dbg !6624
  ret void, !dbg !6625
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @iosys_map_set_vaddr_iomem(ptr noundef %map, ptr noundef %vaddr_iomem) #4 align 16 !dbg !6626 {
entry:
  %map.addr = alloca ptr, align 8
  %vaddr_iomem.addr = alloca ptr, align 8
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !6628, metadata !DIExpression()), !dbg !6630
  store ptr %vaddr_iomem, ptr %vaddr_iomem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vaddr_iomem.addr, metadata !6629, metadata !DIExpression()), !dbg !6631
  %0 = load ptr, ptr %vaddr_iomem.addr, align 8, !dbg !6632
  %1 = load ptr, ptr %map.addr, align 8, !dbg !6633
  %2 = getelementptr inbounds %struct.iosys_map, ptr %1, i32 0, i32 0, !dbg !6634
  store ptr %0, ptr %2, align 8, !dbg !6635
  %3 = load ptr, ptr %map.addr, align 8, !dbg !6636
  %is_iomem = getelementptr inbounds %struct.iosys_map, ptr %3, i32 0, i32 1, !dbg !6637
  store i8 1, ptr %is_iomem, align 8, !dbg !6638
  ret void, !dbg !6639
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6640 dso_local ptr @ioremap_wc(i64 noundef, i64 noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6644 dso_local ptr @memremap(i64 noundef, i64 noundef, i64 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @iosys_map_is_null(ptr noundef %map) #4 align 16 !dbg !6647 {
entry:
  %retval = alloca i1, align 1
  %map.addr = alloca ptr, align 8
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !6653, metadata !DIExpression()), !dbg !6654
  %0 = load ptr, ptr %map.addr, align 8, !dbg !6655
  %is_iomem = getelementptr inbounds %struct.iosys_map, ptr %0, i32 0, i32 1, !dbg !6657
  %1 = load i8, ptr %is_iomem, align 8, !dbg !6657, !range !6268, !noundef !1226
  %tobool = trunc i8 %1 to i1, !dbg !6657
  br i1 %tobool, label %if.then, label %if.end, !dbg !6658

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %map.addr, align 8, !dbg !6659
  %3 = getelementptr inbounds %struct.iosys_map, ptr %2, i32 0, i32 0, !dbg !6660
  %4 = load ptr, ptr %3, align 8, !dbg !6660
  %tobool1 = icmp ne ptr %4, null, !dbg !6661
  %lnot = xor i1 %tobool1, true, !dbg !6661
  store i1 %lnot, ptr %retval, align 1, !dbg !6662
  br label %return, !dbg !6662

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %map.addr, align 8, !dbg !6663
  %6 = getelementptr inbounds %struct.iosys_map, ptr %5, i32 0, i32 0, !dbg !6664
  %7 = load ptr, ptr %6, align 8, !dbg !6664
  %tobool2 = icmp ne ptr %7, null, !dbg !6665
  %lnot3 = xor i1 %tobool2, true, !dbg !6665
  store i1 %lnot3, ptr %retval, align 1, !dbg !6666
  br label %return, !dbg !6666

return:                                           ; preds = %if.end, %if.then
  %8 = load i1, ptr %retval, align 1, !dbg !6667
  ret i1 %8, !dbg !6667
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6668 dso_local ptr @ioremap(i64 noundef, i64 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6669 dso_local void @ttm_mem_io_free(ptr noundef, ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !6670 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6675, metadata !DIExpression()), !dbg !6676
  %0 = load i64, ptr %error.addr, align 8, !dbg !6677
  %1 = inttoptr i64 %0 to ptr, !dbg !6678
  ret ptr %1, !dbg !6679
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ttm_kmap_iter_linear_io_fini(ptr noundef %iter_io, ptr noundef %bdev, ptr noundef %mem) #0 align 16 !dbg !6680 {
entry:
  %iter_io.addr = alloca ptr, align 8
  %bdev.addr = alloca ptr, align 8
  %mem.addr = alloca ptr, align 8
  store ptr %iter_io, ptr %iter_io.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter_io.addr, metadata !6684, metadata !DIExpression()), !dbg !6687
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !6685, metadata !DIExpression()), !dbg !6688
  store ptr %mem, ptr %mem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mem.addr, metadata !6686, metadata !DIExpression()), !dbg !6689
  %0 = load ptr, ptr %iter_io.addr, align 8, !dbg !6690
  %needs_unmap = getelementptr inbounds %struct.ttm_kmap_iter_linear_io, ptr %0, i32 0, i32 2, !dbg !6692
  %1 = load i8, ptr %needs_unmap, align 8, !dbg !6692, !range !6268, !noundef !1226
  %tobool = trunc i8 %1 to i1, !dbg !6692
  br i1 %tobool, label %land.lhs.true, label %if.end6, !dbg !6693

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %iter_io.addr, align 8, !dbg !6694
  %dmap = getelementptr inbounds %struct.ttm_kmap_iter_linear_io, ptr %2, i32 0, i32 1, !dbg !6695
  %call = call zeroext i1 @iosys_map_is_set(ptr noundef %dmap) #12, !dbg !6696
  br i1 %call, label %if.then, label %if.end6, !dbg !6697

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %iter_io.addr, align 8, !dbg !6698
  %dmap1 = getelementptr inbounds %struct.ttm_kmap_iter_linear_io, ptr %3, i32 0, i32 1, !dbg !6701
  %is_iomem = getelementptr inbounds %struct.iosys_map, ptr %dmap1, i32 0, i32 1, !dbg !6702
  %4 = load i8, ptr %is_iomem, align 8, !dbg !6702, !range !6268, !noundef !1226
  %tobool2 = trunc i8 %4 to i1, !dbg !6702
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !6703

if.then3:                                         ; preds = %if.then
  %5 = load ptr, ptr %iter_io.addr, align 8, !dbg !6704
  %dmap4 = getelementptr inbounds %struct.ttm_kmap_iter_linear_io, ptr %5, i32 0, i32 1, !dbg !6705
  %6 = getelementptr inbounds %struct.iosys_map, ptr %dmap4, i32 0, i32 0, !dbg !6706
  %7 = load ptr, ptr %6, align 8, !dbg !6706
  call void @iounmap(ptr noundef %7) #12, !dbg !6707
  br label %if.end, !dbg !6707

if.else:                                          ; preds = %if.then
  %8 = load ptr, ptr %iter_io.addr, align 8, !dbg !6708
  %dmap5 = getelementptr inbounds %struct.ttm_kmap_iter_linear_io, ptr %8, i32 0, i32 1, !dbg !6709
  %9 = getelementptr inbounds %struct.iosys_map, ptr %dmap5, i32 0, i32 0, !dbg !6710
  %10 = load ptr, ptr %9, align 8, !dbg !6710
  call void @memunmap(ptr noundef %10) #12, !dbg !6711
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %if.end6, !dbg !6712

if.end6:                                          ; preds = %if.end, %land.lhs.true, %entry
  %11 = load ptr, ptr %bdev.addr, align 8, !dbg !6713
  %12 = load ptr, ptr %mem.addr, align 8, !dbg !6714
  call void @ttm_mem_io_free(ptr noundef %11, ptr noundef %12) #12, !dbg !6715
  ret void, !dbg !6716
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @iosys_map_is_set(ptr noundef %map) #4 align 16 !dbg !6717 {
entry:
  %map.addr = alloca ptr, align 8
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !6719, metadata !DIExpression()), !dbg !6720
  %0 = load ptr, ptr %map.addr, align 8, !dbg !6721
  %call = call zeroext i1 @iosys_map_is_null(ptr noundef %0) #12, !dbg !6722
  %lnot = xor i1 %call, true, !dbg !6723
  ret i1 %lnot, !dbg !6724
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6725 dso_local void @iounmap(ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6730 dso_local void @memunmap(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ttm_resource_manager_create_debugfs(ptr noundef %man, ptr noundef %parent, ptr noundef %name) #0 align 16 !dbg !6731 {
entry:
  %man.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %man, ptr %man.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %man.addr, metadata !6735, metadata !DIExpression()), !dbg !6738
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !6736, metadata !DIExpression()), !dbg !6739
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6737, metadata !DIExpression()), !dbg !6740
  %0 = load ptr, ptr %name.addr, align 8, !dbg !6741
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !6742
  %2 = load ptr, ptr %man.addr, align 8, !dbg !6743
  %call = call ptr @debugfs_create_file(ptr noundef %0, i16 noundef zeroext 292, ptr noundef %1, ptr noundef %2, ptr noundef @ttm_resource_manager_fops) #12, !dbg !6744
  ret void, !dbg !6745
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6746 dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6750 dso_local void @__compiletime_assert_295() #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_move(ptr noundef %list, ptr noundef %head) #4 align 16 !dbg !6751 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6753, metadata !DIExpression()), !dbg !6755
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6754, metadata !DIExpression()), !dbg !6756
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6757
  call void @__list_del_entry(ptr noundef %0) #12, !dbg !6758
  %1 = load ptr, ptr %list.addr, align 8, !dbg !6759
  %2 = load ptr, ptr %head.addr, align 8, !dbg !6760
  call void @list_add(ptr noundef %1, ptr noundef %2) #12, !dbg !6761
  ret void, !dbg !6762
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #4 align 16 !dbg !6763 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6765, metadata !DIExpression()), !dbg !6766
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6767
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #12, !dbg !6769
  br i1 %call, label %if.end, label %if.then, !dbg !6770

if.then:                                          ; preds = %entry
  br label %return, !dbg !6771

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6772
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6773
  %2 = load ptr, ptr %prev, align 8, !dbg !6773
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6774
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6775
  %4 = load ptr, ptr %next, align 8, !dbg !6775
  call void @__list_del(ptr noundef %2, ptr noundef %4) #12, !dbg !6776
  br label %return, !dbg !6777

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6777
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !6778 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6780, metadata !DIExpression()), !dbg !6782
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6781, metadata !DIExpression()), !dbg !6783
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6784
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6785
  %2 = load ptr, ptr %head.addr, align 8, !dbg !6786
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !6787
  %3 = load ptr, ptr %next, align 8, !dbg !6787
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #12, !dbg !6788
  ret void, !dbg !6789
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #4 align 16 !dbg !6790 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6794, metadata !DIExpression()), !dbg !6795
  ret i1 true, !dbg !6796
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6797 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6799, metadata !DIExpression()), !dbg !6801
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6800, metadata !DIExpression()), !dbg !6802
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6803
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6804
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6805
  store ptr %0, ptr %prev1, align 8, !dbg !6806
  br label %do.body, !dbg !6807

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6808

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6810

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6808

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6812
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6812
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6812
  store volatile ptr %2, ptr %next4, align 8, !dbg !6812
  br label %do.end5, !dbg !6812

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6808

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6814
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6815 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6817, metadata !DIExpression()), !dbg !6820
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6818, metadata !DIExpression()), !dbg !6821
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6819, metadata !DIExpression()), !dbg !6822
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6823
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6825
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6826
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12, !dbg !6827
  br i1 %call, label %if.end, label %if.then, !dbg !6828

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6829

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6830
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6831
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6832
  store ptr %3, ptr %prev1, align 8, !dbg !6833
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6834
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6835
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6836
  store ptr %5, ptr %next2, align 8, !dbg !6837
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6838
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6839
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6840
  store ptr %7, ptr %prev3, align 8, !dbg !6841
  br label %do.body, !dbg !6842

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6843

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6845

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6843

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6847
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6847
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6847
  store volatile ptr %9, ptr %next6, align 8, !dbg !6847
  br label %do.end7, !dbg !6847

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6843

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6849
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6850 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6854, metadata !DIExpression()), !dbg !6857
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6855, metadata !DIExpression()), !dbg !6858
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6856, metadata !DIExpression()), !dbg !6859
  ret i1 true, !dbg !6860
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6861 dso_local void @_raw_spin_lock(ptr noundef) #7 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6865 dso_local void @_raw_spin_unlock(ptr noundef) #7 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_get(ptr noundef %kref) #4 align 16 !dbg !6866 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !6871, metadata !DIExpression()), !dbg !6872
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !6873
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !6874
  call void @refcount_inc(ptr noundef %refcount) #12, !dbg !6875
  ret void, !dbg !6876
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #4 align 16 !dbg !6877 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6882, metadata !DIExpression()), !dbg !6883
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6884
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #12, !dbg !6885
  ret void, !dbg !6886
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !6887 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6891, metadata !DIExpression()), !dbg !6893
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6892, metadata !DIExpression()), !dbg !6894
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6895
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6896
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #12, !dbg !6897
  ret void, !dbg !6898
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !6899 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6903, metadata !DIExpression()), !dbg !6907
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6904, metadata !DIExpression()), !dbg !6908
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6905, metadata !DIExpression()), !dbg !6909
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #11, !dbg !6910
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6906, metadata !DIExpression()), !dbg !6911
  %0 = load i32, ptr %i.addr, align 4, !dbg !6912
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6913
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6914
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #12, !dbg !6915
  store i32 %call, ptr %old, align 4, !dbg !6911
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6916
  %tobool = icmp ne ptr %2, null, !dbg !6916
  br i1 %tobool, label %if.then, label %if.end, !dbg !6918

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6919
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6920
  store i32 %3, ptr %4, align 4, !dbg !6921
  br label %if.end, !dbg !6922

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !6923
  %tobool1 = icmp ne i32 %5, 0, !dbg !6923
  %lnot = xor i1 %tobool1, true, !dbg !6923
  %lnot2 = xor i1 %lnot, true, !dbg !6923
  %lnot3 = xor i1 %lnot2, true, !dbg !6923
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6923
  %conv = sext i32 %lnot.ext to i64, !dbg !6923
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6923
  %tobool4 = icmp ne i64 %expval, 0, !dbg !6923
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !6925

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !6926
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #12, !dbg !6927
  br label %if.end18, !dbg !6927

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !6928
  %cmp = icmp slt i32 %7, 0, !dbg !6928
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6928

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !6928
  %9 = load i32, ptr %i.addr, align 4, !dbg !6928
  %add = add i32 %8, %9, !dbg !6928
  %cmp7 = icmp slt i32 %add, 0, !dbg !6928
  br label %lor.end, !dbg !6928

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !6928
  %lnot11 = xor i1 %lnot9, true, !dbg !6928
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !6928
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !6928
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !6928
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !6928
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6930

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !6931
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #12, !dbg !6932
  br label %if.end17, !dbg !6932

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #11, !dbg !6933
  ret void, !dbg !6933
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !6934 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6940, metadata !DIExpression()), !dbg !6942
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6941, metadata !DIExpression()), !dbg !6943
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6944
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #12, !dbg !6945
  %1 = load i32, ptr %i.addr, align 4, !dbg !6946
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6947
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #12, !dbg !6948
  ret i32 %call, !dbg !6949
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6950 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6953 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6960, metadata !DIExpression()), !dbg !6962
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6961, metadata !DIExpression()), !dbg !6963
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6964
  %1 = load i64, ptr %size.addr, align 8, !dbg !6965
  %conv = trunc i64 %1 to i32, !dbg !6965
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !6966
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6967
  %3 = load i64, ptr %size.addr, align 8, !dbg !6967
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #12, !dbg !6967
  ret void, !dbg !6968
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !6969 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6972, metadata !DIExpression()), !dbg !6974
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6973, metadata !DIExpression()), !dbg !6975
  %0 = load i32, ptr %i.addr, align 4, !dbg !6976
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6977
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #12, !dbg !6978
  ret i32 %call, !dbg !6979
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !6980 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6985, metadata !DIExpression()), !dbg !6987
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6986, metadata !DIExpression()), !dbg !6988
  ret i1 true, !dbg !6989
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !6990 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6995, metadata !DIExpression()), !dbg !6998
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6996, metadata !DIExpression()), !dbg !6999
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6997, metadata !DIExpression()), !dbg !7000
  ret void, !dbg !7001
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !7002 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7005, metadata !DIExpression()), !dbg !7009
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7006, metadata !DIExpression()), !dbg !7010
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #11, !dbg !7011
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !7007, metadata !DIExpression()), !dbg !7011
  %0 = load i32, ptr %i.addr, align 4, !dbg !7011
  store i32 %0, ptr %__ret, align 4, !dbg !7011
  %1 = load i32, ptr %__ret, align 4, !dbg !7011
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7011
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !7011
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #11, !dbg !7011, !srcloc !7012
  store i32 %3, ptr %__ret, align 4, !dbg !7011
  %4 = load i32, ptr %__ret, align 4, !dbg !7011
  store i32 %4, ptr %tmp, align 4, !dbg !7011
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #11, !dbg !7013
  %5 = load i32, ptr %tmp, align 4, !dbg !7011
  ret i32 %5, !dbg !7014
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7015 dso_local i64 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i64 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_put(ptr noundef %kref, ptr noundef %release) #4 align 16 !dbg !7016 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !7021, metadata !DIExpression()), !dbg !7023
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !7022, metadata !DIExpression()), !dbg !7024
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !7025
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !7027
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcount) #12, !dbg !7028
  br i1 %call, label %if.then, label %if.end, !dbg !7029

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %release.addr, align 8, !dbg !7030
  %2 = load ptr, ptr %kref.addr, align 8, !dbg !7032
  call void %1(ptr noundef %2) #12, !dbg !7030
  store i32 1, ptr %retval, align 4, !dbg !7033
  br label %return, !dbg !7033

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7034
  br label %return, !dbg !7034

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !7035
  ret i32 %3, !dbg !7035
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #4 align 16 !dbg !7036 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7040, metadata !DIExpression()), !dbg !7041
  %0 = load ptr, ptr %r.addr, align 8, !dbg !7042
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #12, !dbg !7043
  ret i1 %call, !dbg !7044
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !7045 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7049, metadata !DIExpression()), !dbg !7051
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !7050, metadata !DIExpression()), !dbg !7052
  %0 = load ptr, ptr %r.addr, align 8, !dbg !7053
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !7054
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #12, !dbg !7055
  ret i1 %call, !dbg !7056
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !7057 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7061, metadata !DIExpression()), !dbg !7065
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7062, metadata !DIExpression()), !dbg !7066
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !7063, metadata !DIExpression()), !dbg !7067
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #11, !dbg !7068
  call void @llvm.dbg.declare(metadata ptr %old, metadata !7064, metadata !DIExpression()), !dbg !7069
  %0 = load i32, ptr %i.addr, align 4, !dbg !7070
  %1 = load ptr, ptr %r.addr, align 8, !dbg !7071
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !7072
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #12, !dbg !7073
  store i32 %call, ptr %old, align 4, !dbg !7069
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !7074
  %tobool = icmp ne ptr %2, null, !dbg !7074
  br i1 %tobool, label %if.then, label %if.end, !dbg !7076

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !7077
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !7078
  store i32 %3, ptr %4, align 4, !dbg !7079
  br label %if.end, !dbg !7080

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !7081
  %6 = load i32, ptr %i.addr, align 4, !dbg !7083
  %cmp = icmp eq i32 %5, %6, !dbg !7084
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !7085

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !7086

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !7088

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !7090

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !7090

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !7088

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !7092

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !7094

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !7094

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !7092, !srcloc !7096
  br label %do.cond7, !dbg !7092

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !7092

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !7088

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !7088

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !7097
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7097

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !7098
  %cmp12 = icmp slt i32 %7, 0, !dbg !7098
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !7098

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !7098
  %9 = load i32, ptr %i.addr, align 4, !dbg !7098
  %sub = sub i32 %8, %9, !dbg !7098
  %cmp13 = icmp slt i32 %sub, 0, !dbg !7098
  br label %lor.end, !dbg !7098

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !7098
  %lnot14 = xor i1 %lnot, true, !dbg !7098
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !7098
  %conv = sext i32 %lnot.ext to i64, !dbg !7098
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7098
  %tobool15 = icmp ne i64 %expval, 0, !dbg !7098
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !7100

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !7101
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #12, !dbg !7102
  br label %if.end17, !dbg !7102

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !7103
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7103

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #11, !dbg !7104
  %12 = load i1, ptr %retval, align 1, !dbg !7104
  ret i1 %12, !dbg !7104
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !7105 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7107, metadata !DIExpression()), !dbg !7109
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7108, metadata !DIExpression()), !dbg !7110
  br label %do.body, !dbg !7111

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7112

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7114
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #12, !dbg !7115
  %1 = load i32, ptr %i.addr, align 4, !dbg !7116
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7117
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #12, !dbg !7118
  ret i32 %call, !dbg !7119
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !7120 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7122, metadata !DIExpression()), !dbg !7124
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7123, metadata !DIExpression()), !dbg !7125
  %0 = load i32, ptr %i.addr, align 4, !dbg !7126
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7127
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #12, !dbg !7128
  ret i32 %call, !dbg !7129
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !7130 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7132, metadata !DIExpression()), !dbg !7136
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7133, metadata !DIExpression()), !dbg !7137
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #11, !dbg !7138
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !7134, metadata !DIExpression()), !dbg !7138
  %0 = load i32, ptr %i.addr, align 4, !dbg !7138
  %sub = sub i32 0, %0, !dbg !7138
  store i32 %sub, ptr %__ret, align 4, !dbg !7138
  %1 = load i32, ptr %__ret, align 4, !dbg !7138
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7138
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !7138
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #11, !dbg !7138, !srcloc !7139
  store i32 %3, ptr %__ret, align 4, !dbg !7138
  %4 = load i32, ptr %__ret, align 4, !dbg !7138
  store i32 %4, ptr %tmp, align 4, !dbg !7138
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #11, !dbg !7140
  %5 = load i32, ptr %tmp, align 4, !dbg !7138
  ret i32 %5, !dbg !7141
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_kmap_iter_iomap_map_local(ptr noundef %iter, ptr noundef %dmap, i64 noundef %i) #0 align 16 !dbg !7142 {
entry:
  %iter.addr = alloca ptr, align 8
  %dmap.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  %iter_io = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %addr = alloca ptr, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !7144, metadata !DIExpression()), !dbg !7152
  store ptr %dmap, ptr %dmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dmap.addr, metadata !7145, metadata !DIExpression()), !dbg !7153
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7146, metadata !DIExpression()), !dbg !7154
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter_io) #11, !dbg !7155
  call void @llvm.dbg.declare(metadata ptr %iter_io, metadata !7147, metadata !DIExpression()), !dbg !7156
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !7157
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7148, metadata !DIExpression()), !dbg !7157
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !7157
  store ptr %0, ptr %__mptr, align 8, !dbg !7157
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7157
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !7157
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7157
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !7158
  %2 = load ptr, ptr %tmp, align 8, !dbg !7157
  store ptr %2, ptr %iter_io, align 8, !dbg !7156
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #11, !dbg !7159
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !7150, metadata !DIExpression()), !dbg !7160
  br label %retry, !dbg !7159

retry:                                            ; preds = %if.then, %entry
  call void @llvm.dbg.label(metadata !7151), !dbg !7161
  br label %while.cond, !dbg !7162

while.cond:                                       ; preds = %cond.end, %retry
  %3 = load i64, ptr %i.addr, align 8, !dbg !7163
  %4 = load ptr, ptr %iter_io, align 8, !dbg !7164
  %cache = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %4, i32 0, i32 4, !dbg !7165
  %end = getelementptr inbounds %struct.anon.17, ptr %cache, i32 0, i32 2, !dbg !7166
  %5 = load i64, ptr %end, align 8, !dbg !7166
  %cmp = icmp uge i64 %3, %5, !dbg !7167
  br i1 %cmp, label %while.body, label %while.end, !dbg !7162

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %iter_io, align 8, !dbg !7168
  %cache1 = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %6, i32 0, i32 4, !dbg !7170
  %sg = getelementptr inbounds %struct.anon.17, ptr %cache1, i32 0, i32 0, !dbg !7171
  %7 = load ptr, ptr %sg, align 8, !dbg !7171
  %tobool = icmp ne ptr %7, null, !dbg !7168
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !7168

cond.true:                                        ; preds = %while.body
  %8 = load ptr, ptr %iter_io, align 8, !dbg !7172
  %cache2 = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %8, i32 0, i32 4, !dbg !7173
  %sg3 = getelementptr inbounds %struct.anon.17, ptr %cache2, i32 0, i32 0, !dbg !7174
  %9 = load ptr, ptr %sg3, align 8, !dbg !7174
  %call = call ptr @sg_next(ptr noundef %9) #12, !dbg !7175
  br label %cond.end, !dbg !7168

cond.false:                                       ; preds = %while.body
  %10 = load ptr, ptr %iter_io, align 8, !dbg !7176
  %st = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %10, i32 0, i32 2, !dbg !7177
  %11 = load ptr, ptr %st, align 8, !dbg !7177
  %sgl = getelementptr inbounds %struct.sg_table, ptr %11, i32 0, i32 0, !dbg !7178
  %12 = load ptr, ptr %sgl, align 8, !dbg !7178
  br label %cond.end, !dbg !7168

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call, %cond.true ], [ %12, %cond.false ], !dbg !7168
  %13 = load ptr, ptr %iter_io, align 8, !dbg !7179
  %cache4 = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %13, i32 0, i32 4, !dbg !7180
  %sg5 = getelementptr inbounds %struct.anon.17, ptr %cache4, i32 0, i32 0, !dbg !7181
  store ptr %cond, ptr %sg5, align 8, !dbg !7182
  %14 = load ptr, ptr %iter_io, align 8, !dbg !7183
  %cache6 = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %14, i32 0, i32 4, !dbg !7184
  %end7 = getelementptr inbounds %struct.anon.17, ptr %cache6, i32 0, i32 2, !dbg !7185
  %15 = load i64, ptr %end7, align 8, !dbg !7185
  %16 = load ptr, ptr %iter_io, align 8, !dbg !7186
  %cache8 = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %16, i32 0, i32 4, !dbg !7187
  %i9 = getelementptr inbounds %struct.anon.17, ptr %cache8, i32 0, i32 1, !dbg !7188
  store i64 %15, ptr %i9, align 8, !dbg !7189
  %17 = load ptr, ptr %iter_io, align 8, !dbg !7190
  %cache10 = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %17, i32 0, i32 4, !dbg !7190
  %sg11 = getelementptr inbounds %struct.anon.17, ptr %cache10, i32 0, i32 0, !dbg !7190
  %18 = load ptr, ptr %sg11, align 8, !dbg !7190
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %18, i32 0, i32 4, !dbg !7190
  %19 = load i32, ptr %dma_length, align 8, !dbg !7190
  %shr = lshr i32 %19, 12, !dbg !7191
  %conv = zext i32 %shr to i64, !dbg !7190
  %20 = load ptr, ptr %iter_io, align 8, !dbg !7192
  %cache12 = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %20, i32 0, i32 4, !dbg !7193
  %end13 = getelementptr inbounds %struct.anon.17, ptr %cache12, i32 0, i32 2, !dbg !7194
  %21 = load i64, ptr %end13, align 8, !dbg !7195
  %add = add i64 %21, %conv, !dbg !7195
  store i64 %add, ptr %end13, align 8, !dbg !7195
  %22 = load ptr, ptr %iter_io, align 8, !dbg !7196
  %cache14 = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %22, i32 0, i32 4, !dbg !7196
  %sg15 = getelementptr inbounds %struct.anon.17, ptr %cache14, i32 0, i32 0, !dbg !7196
  %23 = load ptr, ptr %sg15, align 8, !dbg !7196
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %23, i32 0, i32 3, !dbg !7196
  %24 = load i64, ptr %dma_address, align 8, !dbg !7196
  %25 = load ptr, ptr %iter_io, align 8, !dbg !7197
  %start = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %25, i32 0, i32 3, !dbg !7198
  %26 = load i64, ptr %start, align 8, !dbg !7198
  %sub = sub i64 %24, %26, !dbg !7199
  %27 = load ptr, ptr %iter_io, align 8, !dbg !7200
  %cache16 = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %27, i32 0, i32 4, !dbg !7201
  %offs = getelementptr inbounds %struct.anon.17, ptr %cache16, i32 0, i32 3, !dbg !7202
  store i64 %sub, ptr %offs, align 8, !dbg !7203
  br label %while.cond, !dbg !7162, !llvm.loop !7204

while.end:                                        ; preds = %while.cond
  %28 = load i64, ptr %i.addr, align 8, !dbg !7206
  %29 = load ptr, ptr %iter_io, align 8, !dbg !7208
  %cache17 = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %29, i32 0, i32 4, !dbg !7209
  %i18 = getelementptr inbounds %struct.anon.17, ptr %cache17, i32 0, i32 1, !dbg !7210
  %30 = load i64, ptr %i18, align 8, !dbg !7210
  %cmp19 = icmp ult i64 %28, %30, !dbg !7211
  br i1 %cmp19, label %if.then, label %if.end, !dbg !7212

if.then:                                          ; preds = %while.end
  %31 = load ptr, ptr %iter_io, align 8, !dbg !7213
  %cache21 = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %31, i32 0, i32 4, !dbg !7215
  %end22 = getelementptr inbounds %struct.anon.17, ptr %cache21, i32 0, i32 2, !dbg !7216
  store i64 0, ptr %end22, align 8, !dbg !7217
  %32 = load ptr, ptr %iter_io, align 8, !dbg !7218
  %cache23 = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %32, i32 0, i32 4, !dbg !7219
  %sg24 = getelementptr inbounds %struct.anon.17, ptr %cache23, i32 0, i32 0, !dbg !7220
  store ptr null, ptr %sg24, align 8, !dbg !7221
  br label %retry, !dbg !7222

if.end:                                           ; preds = %while.end
  %33 = load ptr, ptr %iter_io, align 8, !dbg !7223
  %iomap = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %33, i32 0, i32 1, !dbg !7224
  %34 = load ptr, ptr %iomap, align 8, !dbg !7224
  %35 = load ptr, ptr %iter_io, align 8, !dbg !7225
  %cache25 = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %35, i32 0, i32 4, !dbg !7226
  %offs26 = getelementptr inbounds %struct.anon.17, ptr %cache25, i32 0, i32 3, !dbg !7227
  %36 = load i64, ptr %offs26, align 8, !dbg !7227
  %37 = load i64, ptr %i.addr, align 8, !dbg !7228
  %38 = load ptr, ptr %iter_io, align 8, !dbg !7229
  %cache27 = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %38, i32 0, i32 4, !dbg !7230
  %i28 = getelementptr inbounds %struct.anon.17, ptr %cache27, i32 0, i32 1, !dbg !7231
  %39 = load i64, ptr %i28, align 8, !dbg !7231
  %sub29 = sub i64 %37, %39, !dbg !7232
  %shl = shl i64 %sub29, 12, !dbg !7233
  %add30 = add i64 %36, %shl, !dbg !7234
  %call31 = call ptr @io_mapping_map_local_wc(ptr noundef %34, i64 noundef %add30) #12, !dbg !7235
  store ptr %call31, ptr %addr, align 8, !dbg !7236
  %40 = load ptr, ptr %dmap.addr, align 8, !dbg !7237
  %41 = load ptr, ptr %addr, align 8, !dbg !7238
  call void @iosys_map_set_vaddr_iomem(ptr noundef %40, ptr noundef %41) #12, !dbg !7239
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #11, !dbg !7240
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter_io) #11, !dbg !7240
  ret void, !dbg !7240
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_kmap_iter_iomap_unmap_local(ptr noundef %iter, ptr noundef %map) #0 align 16 !dbg !7241 {
entry:
  %iter.addr = alloca ptr, align 8
  %map.addr = alloca ptr, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !7243, metadata !DIExpression()), !dbg !7245
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !7244, metadata !DIExpression()), !dbg !7246
  %0 = load ptr, ptr %map.addr, align 8, !dbg !7247
  %1 = getelementptr inbounds %struct.iosys_map, ptr %0, i32 0, i32 0, !dbg !7248
  %2 = load ptr, ptr %1, align 8, !dbg !7248
  call void @io_mapping_unmap_local(ptr noundef %2) #12, !dbg !7249
  ret void, !dbg !7250
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7251 dso_local ptr @sg_next(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @io_mapping_map_local_wc(ptr noundef %mapping, i64 noundef %offset) #4 align 16 !dbg !7254 {
entry:
  %mapping.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  store ptr %mapping, ptr %mapping.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mapping.addr, metadata !7258, metadata !DIExpression()), !dbg !7260
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !7259, metadata !DIExpression()), !dbg !7261
  %0 = load ptr, ptr %mapping.addr, align 8, !dbg !7262
  %1 = load i64, ptr %offset.addr, align 8, !dbg !7263
  %call = call ptr @io_mapping_map_wc(ptr noundef %0, i64 noundef %1, i64 noundef 4096) #12, !dbg !7264
  ret ptr %call, !dbg !7265
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @io_mapping_map_wc(ptr noundef %mapping, i64 noundef %offset, i64 noundef %size) #4 align 16 !dbg !7266 {
entry:
  %mapping.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store ptr %mapping, ptr %mapping.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mapping.addr, metadata !7270, metadata !DIExpression()), !dbg !7273
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !7271, metadata !DIExpression()), !dbg !7274
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7272, metadata !DIExpression()), !dbg !7275
  %0 = load ptr, ptr %mapping.addr, align 8, !dbg !7276
  %iomem = getelementptr inbounds %struct.io_mapping, ptr %0, i32 0, i32 3, !dbg !7277
  %1 = load ptr, ptr %iomem, align 8, !dbg !7277
  %2 = load i64, ptr %offset.addr, align 8, !dbg !7278
  %add.ptr = getelementptr i8, ptr %1, i64 %2, !dbg !7279
  ret ptr %add.ptr, !dbg !7280
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @io_mapping_unmap_local(ptr noundef %vaddr) #4 align 16 !dbg !7281 {
entry:
  %vaddr.addr = alloca ptr, align 8
  store ptr %vaddr, ptr %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vaddr.addr, metadata !7283, metadata !DIExpression()), !dbg !7284
  %0 = load ptr, ptr %vaddr.addr, align 8, !dbg !7285
  call void @io_mapping_unmap(ptr noundef %0) #12, !dbg !7286
  ret void, !dbg !7287
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @io_mapping_unmap(ptr noundef %vaddr) #4 align 16 !dbg !7288 {
entry:
  %vaddr.addr = alloca ptr, align 8
  store ptr %vaddr, ptr %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vaddr.addr, metadata !7290, metadata !DIExpression()), !dbg !7291
  ret void, !dbg !7292
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_kmap_iter_linear_io_map_local(ptr noundef %iter, ptr noundef %dmap, i64 noundef %i) #0 align 16 !dbg !7293 {
entry:
  %iter.addr = alloca ptr, align 8
  %dmap.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  %iter_io = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !7295, metadata !DIExpression()), !dbg !7301
  store ptr %dmap, ptr %dmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dmap.addr, metadata !7296, metadata !DIExpression()), !dbg !7302
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7297, metadata !DIExpression()), !dbg !7303
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter_io) #11, !dbg !7304
  call void @llvm.dbg.declare(metadata ptr %iter_io, metadata !7298, metadata !DIExpression()), !dbg !7305
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !7306
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7299, metadata !DIExpression()), !dbg !7306
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !7306
  store ptr %0, ptr %__mptr, align 8, !dbg !7306
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7306
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !7306
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7306
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !7307
  %2 = load ptr, ptr %tmp, align 8, !dbg !7306
  store ptr %2, ptr %iter_io, align 8, !dbg !7305
  %3 = load ptr, ptr %dmap.addr, align 8, !dbg !7308
  %4 = load ptr, ptr %iter_io, align 8, !dbg !7309
  %dmap1 = getelementptr inbounds %struct.ttm_kmap_iter_linear_io, ptr %4, i32 0, i32 1, !dbg !7310
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %dmap1, i64 16, i1 false), !dbg !7310
  %5 = load ptr, ptr %dmap.addr, align 8, !dbg !7311
  %6 = load i64, ptr %i.addr, align 8, !dbg !7312
  %mul = mul i64 %6, 4096, !dbg !7313
  call void @iosys_map_incr(ptr noundef %5, i64 noundef %mul) #12, !dbg !7314
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter_io) #11, !dbg !7315
  ret void, !dbg !7315
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @iosys_map_incr(ptr noundef %map, i64 noundef %incr) #4 align 16 !dbg !7316 {
entry:
  %map.addr = alloca ptr, align 8
  %incr.addr = alloca i64, align 8
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !7320, metadata !DIExpression()), !dbg !7322
  store i64 %incr, ptr %incr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %incr.addr, metadata !7321, metadata !DIExpression()), !dbg !7323
  %0 = load ptr, ptr %map.addr, align 8, !dbg !7324
  %is_iomem = getelementptr inbounds %struct.iosys_map, ptr %0, i32 0, i32 1, !dbg !7326
  %1 = load i8, ptr %is_iomem, align 8, !dbg !7326, !range !6268, !noundef !1226
  %tobool = trunc i8 %1 to i1, !dbg !7326
  br i1 %tobool, label %if.then, label %if.else, !dbg !7327

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %incr.addr, align 8, !dbg !7328
  %3 = load ptr, ptr %map.addr, align 8, !dbg !7329
  %4 = getelementptr inbounds %struct.iosys_map, ptr %3, i32 0, i32 0, !dbg !7330
  %5 = load ptr, ptr %4, align 8, !dbg !7331
  %add.ptr = getelementptr i8, ptr %5, i64 %2, !dbg !7331
  store ptr %add.ptr, ptr %4, align 8, !dbg !7331
  br label %if.end, !dbg !7329

if.else:                                          ; preds = %entry
  %6 = load i64, ptr %incr.addr, align 8, !dbg !7332
  %7 = load ptr, ptr %map.addr, align 8, !dbg !7333
  %8 = getelementptr inbounds %struct.iosys_map, ptr %7, i32 0, i32 0, !dbg !7334
  %9 = load ptr, ptr %8, align 8, !dbg !7335
  %add.ptr1 = getelementptr i8, ptr %9, i64 %6, !dbg !7335
  store ptr %add.ptr1, ptr %8, align 8, !dbg !7335
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !7336
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ttm_resource_manager_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !7337 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !7339, metadata !DIExpression()), !dbg !7341
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !7340, metadata !DIExpression()), !dbg !7341
  %0 = load ptr, ptr %file.addr, align 8, !dbg !7341
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !7341
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 47, !dbg !7341
  %2 = load ptr, ptr %i_private, align 8, !dbg !7341
  %call = call i32 @single_open(ptr noundef %0, ptr noundef @ttm_resource_manager_show, ptr noundef %2) #12, !dbg !7341
  ret i32 %call, !dbg !7341
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7342 dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ttm_resource_manager_show(ptr noundef %m, ptr noundef %unused) #0 align 16 !dbg !7345 {
entry:
  %m.addr = alloca ptr, align 8
  %unused.addr = alloca ptr, align 8
  %man = alloca ptr, align 8
  %p = alloca %struct.drm_printer, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !7347, metadata !DIExpression()), !dbg !7351
  store ptr %unused, ptr %unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %unused.addr, metadata !7348, metadata !DIExpression()), !dbg !7352
  call void @llvm.lifetime.start.p0(i64 8, ptr %man) #11, !dbg !7353
  call void @llvm.dbg.declare(metadata ptr %man, metadata !7349, metadata !DIExpression()), !dbg !7354
  %0 = load ptr, ptr %m.addr, align 8, !dbg !7355
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !7356
  %1 = load ptr, ptr %private, align 8, !dbg !7356
  store ptr %1, ptr %man, align 8, !dbg !7354
  call void @llvm.lifetime.start.p0(i64 32, ptr %p) #11, !dbg !7357
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7350, metadata !DIExpression()), !dbg !7358
  %2 = load ptr, ptr %m.addr, align 8, !dbg !7359
  call void @drm_seq_file_printer(ptr dead_on_unwind writable sret(%struct.drm_printer) align 8 %p, ptr noundef %2) #12, !dbg !7360
  %3 = load ptr, ptr %man, align 8, !dbg !7361
  call void @ttm_resource_manager_debug(ptr noundef %3, ptr noundef %p) #12, !dbg !7362
  call void @llvm.lifetime.end.p0(i64 32, ptr %p) #11, !dbg !7363
  call void @llvm.lifetime.end.p0(i64 8, ptr %man) #11, !dbg !7363
  ret i32 0, !dbg !7364
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_seq_file_printer(ptr dead_on_unwind noalias writable sret(%struct.drm_printer) align 8 %agg.result, ptr noundef %f) #4 align 16 !dbg !7365 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !7369, metadata !DIExpression()), !dbg !7371
  call void @llvm.dbg.declare(metadata ptr %agg.result, metadata !7370, metadata !DIExpression()), !dbg !7372
  %printfn = getelementptr inbounds %struct.drm_printer, ptr %agg.result, i32 0, i32 0, !dbg !7373
  store ptr @__drm_printfn_seq_file, ptr %printfn, align 8, !dbg !7373
  %puts = getelementptr inbounds %struct.drm_printer, ptr %agg.result, i32 0, i32 1, !dbg !7373
  store ptr @__drm_puts_seq_file, ptr %puts, align 8, !dbg !7373
  %arg = getelementptr inbounds %struct.drm_printer, ptr %agg.result, i32 0, i32 2, !dbg !7373
  %0 = load ptr, ptr %f.addr, align 8, !dbg !7374
  store ptr %0, ptr %arg, align 8, !dbg !7373
  %prefix = getelementptr inbounds %struct.drm_printer, ptr %agg.result, i32 0, i32 3, !dbg !7373
  store ptr null, ptr %prefix, align 8, !dbg !7373
  ret void, !dbg !7375
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_printfn_seq_file(ptr noundef, ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_puts_seq_file(ptr noundef, ptr noundef) #7

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="BUILD_BUG_ON failed: __builtin_constant_p(mem_type) && mem_type >= TTM_NUM_MEM_TYPES" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noredzone }
attributes #13 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5155, !5156, !5157, !5158, !5159, !5160, !5161, !5162}
!llvm.ident = !{!5163}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_lru_bulk_move_init297", scope: !2, file: !3, line: 43, type: !180, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/ttm/.ttm_resource.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/ttm/ttm\22 -D KBUILD_BASENAME=\22ttm_resource\22 -D KBUILD_MODNAME=\22ttm\22 -D __KBUILD_MODNAME=kmod_ttm -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/ttm/ttm_resource.ll drivers/gpu/drm/ttm/ttm_resource.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !179, globals: !5109, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/ttm/ttm_resource.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8dc4deddfc1854b476319e2566c85dff")
!4 = !{!5, !12, !20, !27, !35, !51, !58, !64, !69, !75, !80, !86, !93, !98, !104, !111, !119, !127, !136, !141, !146, !152, !158, !163, !171}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ttm_caching", file: !6, line: 33, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/drm/ttm/ttm_caching.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "19c2ae3004d13ae67685208908fb2e14")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "ttm_uncached", value: 0)
!10 = !DIEnumerator(name: "ttm_write_combined", value: 1)
!11 = !DIEnumerator(name: "ttm_cached", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !13, line: 9, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!14 = !{!15, !16, !17, !18, !19}
!15 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!16 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!17 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!18 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!19 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !21, line: 312, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!22 = !{!23, !24, !25, !26}
!23 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!24 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!25 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!26 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !28, line: 68, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!29 = !{!30, !31, !32, !33, !34}
!30 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!31 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!32 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!33 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!34 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !36, line: 1325, baseType: !7, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!38 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!39 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!40 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!41 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!42 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!43 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!44 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!45 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!46 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!47 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!48 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!49 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!50 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !52, line: 15, baseType: !7, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!53 = !{!54, !55, !56, !57}
!54 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!55 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!56 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!57 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !59, line: 26, baseType: !7, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!60 = !{!61, !62, !63}
!61 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!62 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!63 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !65, line: 2052, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!66 = !{!67, !68}
!67 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!68 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !70, line: 54, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!71 = !{!72, !73, !74}
!72 = !DIEnumerator(name: "USRQUOTA", value: 0)
!73 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!74 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !76, line: 65, baseType: !7, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!77 = !{!78, !79}
!78 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!79 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !81, line: 16, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!82 = !{!83, !84, !85}
!83 = !DIEnumerator(name: "TT_NONE", value: 0)
!84 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!85 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !87, line: 51, baseType: !7, size: 32, elements: !88)
!87 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!88 = !{!89, !90, !91, !92}
!89 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!90 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!91 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!92 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_gem_object_status", file: !94, line: 61, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/drm/drm_gem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5db19977067e41c640c8fecb4e671923")
!95 = !{!96, !97}
!96 = !DIEnumerator(name: "DRM_GEM_OBJECT_RESIDENT", value: 1)
!97 = !DIEnumerator(name: "DRM_GEM_OBJECT_PURGEABLE", value: 2)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !99, line: 45, baseType: !7, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!100 = !{!101, !102, !103}
!101 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!102 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!103 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !105, line: 487, baseType: !7, size: 32, elements: !106)
!105 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!106 = !{!107, !108, !109, !110}
!107 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!108 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!109 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!110 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !112, line: 620, baseType: !7, size: 32, elements: !113)
!112 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!113 = !{!114, !115, !116, !117, !118}
!114 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!115 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!116 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!117 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!118 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !112, line: 597, baseType: !120, size: 32, elements: !121)
!120 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!121 = !{!122, !123, !124, !125, !126}
!122 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!123 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!124 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!125 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!126 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !105, line: 547, baseType: !7, size: 32, elements: !128)
!128 = !{!129, !130, !131, !132, !133, !134, !135}
!129 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!130 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!131 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!132 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!133 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!134 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!135 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !105, line: 564, baseType: !7, size: 32, elements: !137)
!137 = !{!138, !139, !140}
!138 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!139 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!140 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !105, line: 577, baseType: !7, size: 32, elements: !142)
!142 = !{!143, !144, !145}
!143 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!144 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!145 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !105, line: 503, baseType: !7, size: 32, elements: !147)
!147 = !{!148, !149, !150, !151}
!148 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!149 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!150 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!151 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ttm_bo_type", file: !153, line: 67, baseType: !7, size: 32, elements: !154)
!153 = !DIFile(filename: "./include/drm/ttm/ttm_bo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2f81fca0b8181781f1c758cd81feeff")
!154 = !{!155, !156, !157}
!155 = !DIEnumerator(name: "ttm_bo_type_device", value: 0)
!156 = !DIEnumerator(name: "ttm_bo_type_kernel", value: 1)
!157 = !DIEnumerator(name: "ttm_bo_type_sg", value: 2)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !159, line: 10, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!160 = !{!161, !162}
!161 = !DIEnumerator(name: "false", value: 0)
!162 = !DIEnumerator(name: "true", value: 1)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !164, line: 140, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/linux/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9069a71c5724a11302a774eef2b1f711")
!165 = !{!166, !167, !168, !169, !170}
!166 = !DIEnumerator(name: "MEMREMAP_WB", value: 1)
!167 = !DIEnumerator(name: "MEMREMAP_WT", value: 2)
!168 = !DIEnumerator(name: "MEMREMAP_WC", value: 4)
!169 = !DIEnumerator(name: "MEMREMAP_ENC", value: 8)
!170 = !DIEnumerator(name: "MEMREMAP_DEC", value: 16)
!171 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !172, line: 119, baseType: !7, size: 32, elements: !173)
!172 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!173 = !{!174, !175, !176, !177, !178}
!174 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!175 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!176 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!177 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!178 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!179 = !{!180, !181, !5058, !5060, !800, !5062, !5090, !5103, !928, !4481}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_resource", file: !183, line: 209, size: 576, elements: !184)
!183 = !DIFile(filename: "./include/drm/ttm/ttm_resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9381c1bbd30ebfc9159e3e67f7545347")
!184 = !{!185, !187, !193, !199, !200, !213, !5057}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !182, file: !183, line: 210, baseType: !186, size: 64)
!186 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !182, file: !183, line: 211, baseType: !188, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !189, line: 61, baseType: !190)
!189 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !191, line: 72, baseType: !192)
!191 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !191, line: 16, baseType: !186)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "mem_type", scope: !182, file: !183, line: 212, baseType: !194, size: 32, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !189, line: 110, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !196, line: 21, baseType: !197)
!196 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !198, line: 27, baseType: !7)
!198 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!199 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !182, file: !183, line: 213, baseType: !194, size: 32, offset: 160)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !182, file: !183, line: 214, baseType: !201, size: 192, offset: 192)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_bus_placement", file: !183, line: 189, size: 192, elements: !202)
!202 = !{!203, !204, !209, !212}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !201, file: !183, line: 190, baseType: !180, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !201, file: !183, line: 191, baseType: !205, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !189, line: 159, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !196, line: 23, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !198, line: 31, baseType: !208)
!208 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "is_iomem", scope: !201, file: !183, line: 192, baseType: !210, size: 8, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !189, line: 35, baseType: !211)
!211 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !201, file: !183, line: 193, baseType: !5, size: 32, offset: 160)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "bo", scope: !182, file: !183, line: 215, baseType: !214, size: 64, offset: 384)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_buffer_object", file: !153, line: 98, size: 3712, elements: !216)
!216 = !{!217, !4376, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5053, !5054, !5055, !5056}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !215, file: !153, line: 99, baseType: !218, size: 2816)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object", file: !94, line: 264, size: 2816, elements: !219)
!219 = !{!220, !233, !234, !237, !4177, !4217, !4218, !4219, !4222, !4225, !4247, !4248, !4252, !4367, !4368}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !218, file: !94, line: 274, baseType: !221, size: 32)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !222, line: 19, size: 32, elements: !223)
!222 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!223 = !{!224}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !221, file: !222, line: 20, baseType: !225, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !172, line: 113, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !172, line: 111, size: 32, elements: !227)
!227 = !{!228}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !226, file: !172, line: 112, baseType: !229, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !189, line: 174, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !189, line: 172, size: 32, elements: !231)
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !230, file: !189, line: 173, baseType: !120, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "handle_count", scope: !218, file: !94, line: 287, baseType: !7, size: 32, offset: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !218, file: !94, line: 292, baseType: !235, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !94, line: 292, flags: DIFlagFwdDecl)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "filp", scope: !218, file: !94, line: 302, baseType: !238, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !65, line: 994, size: 1856, align: 64, elements: !240)
!240 = !{!241, !260, !297, !299, !309, !327, !330, !331, !407, !626, !635, !4167, !4168, !4169, !4170, !4171, !4172, !4174, !4175, !4176}
!241 = !DIDerivedType(tag: DW_TAG_member, scope: !239, file: !65, line: 995, baseType: !242, size: 128)
!242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !239, file: !65, line: 995, size: 128, elements: !243)
!243 = !{!244, !250, !259}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !242, file: !65, line: 996, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !246, line: 60, size: 64, elements: !247)
!246 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!247 = !{!248}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !245, file: !246, line: 61, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !242, file: !65, line: 997, baseType: !251, size: 128, align: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !189, line: 232, size: 128, align: 64, elements: !252)
!252 = !{!253, !255}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !251, file: !189, line: 233, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !251, file: !189, line: 234, baseType: !256, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !254}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !242, file: !65, line: 998, baseType: !7, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !239, file: !65, line: 1005, baseType: !261, size: 32, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !262, line: 29, baseType: !263)
!262 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !262, line: 17, size: 32, elements: !264)
!264 = !{!265}
!265 = !DIDerivedType(tag: DW_TAG_member, scope: !263, file: !262, line: 18, baseType: !266, size: 32)
!266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !263, file: !262, line: 18, size: 32, elements: !267)
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !266, file: !262, line: 19, baseType: !269, size: 32)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !270, line: 14, size: 32, elements: !271)
!270 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!271 = !{!272}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !269, file: !270, line: 15, baseType: !273, size: 32)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !274, line: 44, baseType: !275)
!274 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !274, line: 14, size: 32, elements: !276)
!276 = !{!277}
!277 = !DIDerivedType(tag: DW_TAG_member, scope: !275, file: !274, line: 15, baseType: !278, size: 32)
!278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !275, file: !274, line: 15, size: 32, elements: !279)
!279 = !{!280, !281, !289}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !278, file: !274, line: 16, baseType: !229, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, scope: !278, file: !274, line: 24, baseType: !282, size: 16)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !278, file: !274, line: 24, size: 16, elements: !283)
!283 = !{!284, !288}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !282, file: !274, line: 25, baseType: !285, size: 8)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !196, line: 17, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !198, line: 21, baseType: !287)
!287 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !282, file: !274, line: 26, baseType: !285, size: 8, offset: 8)
!289 = !DIDerivedType(tag: DW_TAG_member, scope: !278, file: !274, line: 28, baseType: !290, size: 32)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !278, file: !274, line: 28, size: 32, elements: !291)
!291 = !{!292, !296}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !290, file: !274, line: 29, baseType: !293, size: 16)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !196, line: 19, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !198, line: 24, baseType: !295)
!295 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !290, file: !274, line: 30, baseType: !293, size: 16, offset: 16)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !239, file: !65, line: 1006, baseType: !298, size: 32, offset: 160)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !189, line: 156, baseType: !7)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !239, file: !65, line: 1007, baseType: !300, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !301, line: 13, baseType: !302)
!301 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !189, line: 181, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !189, line: 179, size: 64, elements: !304)
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !303, file: !189, line: 180, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !196, line: 22, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !198, line: 30, baseType: !308)
!308 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !239, file: !65, line: 1008, baseType: !310, size: 256, offset: 256)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !311, line: 66, size: 256, elements: !312)
!311 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!312 = !{!313, !314, !316, !321}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !310, file: !311, line: 67, baseType: !300, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !310, file: !311, line: 68, baseType: !315, size: 32, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !270, line: 23, baseType: !269)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !310, file: !311, line: 70, baseType: !317, size: 32, offset: 96)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !318, line: 15, size: 32, elements: !319)
!318 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!319 = !{!320}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !317, file: !318, line: 20, baseType: !229, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !310, file: !311, line: 72, baseType: !322, size: 128, offset: 128)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !189, line: 190, size: 128, elements: !323)
!323 = !{!324, !326}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !322, file: !189, line: 191, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !322, file: !189, line: 191, baseType: !325, size: 64, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !239, file: !65, line: 1009, baseType: !328, size: 64, offset: 512)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !189, line: 52, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !191, line: 88, baseType: !308)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !239, file: !65, line: 1010, baseType: !7, size: 32, offset: 576)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !239, file: !65, line: 1011, baseType: !332, size: 256, offset: 640)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !65, line: 948, size: 256, elements: !333)
!333 = !{!334, !357, !396, !397, !405, !406}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !332, file: !65, line: 949, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !336, line: 34, baseType: !337)
!336 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !336, line: 25, size: 64, elements: !338)
!338 = !{!339}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !337, file: !336, line: 26, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !341, line: 27, baseType: !342)
!341 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !341, line: 13, size: 64, elements: !343)
!343 = !{!344, !356}
!344 = !DIDerivedType(tag: DW_TAG_member, scope: !342, file: !341, line: 14, baseType: !345, size: 32)
!345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !341, line: 14, size: 32, elements: !346)
!346 = !{!347, !348}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !345, file: !341, line: 15, baseType: !229, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, scope: !345, file: !341, line: 16, baseType: !349, size: 32)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !345, file: !341, line: 16, size: 32, elements: !350)
!350 = !{!351, !352}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !349, file: !341, line: 18, baseType: !285, size: 8)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !349, file: !341, line: 19, baseType: !353, size: 24, offset: 8)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 24, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 3)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !342, file: !341, line: 26, baseType: !273, size: 32, offset: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !332, file: !65, line: 950, baseType: !358, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !13, line: 59, size: 768, elements: !360)
!360 = !{!361, !362, !363, !364, !377, !378, !385, !386}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !359, file: !13, line: 61, baseType: !225, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !359, file: !13, line: 62, baseType: !7, size: 32, offset: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !359, file: !13, line: 63, baseType: !261, size: 32, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !359, file: !13, line: 65, baseType: !365, size: 256, offset: 128)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 256, elements: !375)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !189, line: 194, size: 64, elements: !367)
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !366, file: !189, line: 195, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !189, line: 198, size: 128, elements: !371)
!371 = !{!372, !373}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !370, file: !189, line: 199, baseType: !369, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !370, file: !189, line: 199, baseType: !374, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!375 = !{!376}
!376 = !DISubrange(count: 4)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !359, file: !13, line: 66, baseType: !366, size: 64, offset: 384)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !359, file: !13, line: 68, baseType: !379, size: 192, offset: 448)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !380, line: 41, baseType: !381)
!380 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !380, line: 37, size: 192, elements: !382)
!382 = !{!383, !384}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !381, file: !380, line: 38, baseType: !261, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !381, file: !380, line: 39, baseType: !322, size: 128, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !359, file: !13, line: 69, baseType: !251, size: 128, align: 64, offset: 640)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !359, file: !13, line: 70, baseType: !387, offset: 768)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, elements: !394)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !13, line: 54, size: 128, elements: !389)
!389 = !{!390, !391}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !388, file: !13, line: 55, baseType: !120, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !388, file: !13, line: 56, baseType: !392, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !13, line: 56, flags: DIFlagFwdDecl)
!394 = !{!395}
!395 = !DISubrange(count: -1)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !332, file: !65, line: 951, baseType: !12, size: 32, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !332, file: !65, line: 952, baseType: !398, size: 32, offset: 160)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !399, line: 23, baseType: !400)
!399 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !399, line: 21, size: 32, elements: !401)
!401 = !{!402}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !400, file: !399, line: 22, baseType: !403, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !189, line: 37, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !191, line: 49, baseType: !7)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !332, file: !65, line: 952, baseType: !398, size: 32, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !332, file: !65, line: 953, baseType: !120, size: 32, offset: 224)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !239, file: !65, line: 1012, baseType: !408, size: 64, offset: 896)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !411, line: 110, size: 1472, elements: !412)
!411 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!412 = !{!413, !414, !415, !422, !423, !424, !425, !426, !427, !428, !429, !435, !436, !437, !438, !439, !440, !571, !572, !573, !574, !575, !606, !609, !613, !621}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !410, file: !411, line: 111, baseType: !300, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !410, file: !411, line: 112, baseType: !398, size: 32, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !410, file: !411, line: 113, baseType: !416, size: 32, offset: 96)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !399, line: 28, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !399, line: 26, size: 32, elements: !418)
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !417, file: !399, line: 27, baseType: !420, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !189, line: 38, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !191, line: 50, baseType: !7)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !410, file: !411, line: 114, baseType: !398, size: 32, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !410, file: !411, line: 115, baseType: !416, size: 32, offset: 160)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !410, file: !411, line: 116, baseType: !398, size: 32, offset: 192)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !410, file: !411, line: 117, baseType: !416, size: 32, offset: 224)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !410, file: !411, line: 118, baseType: !398, size: 32, offset: 256)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !410, file: !411, line: 119, baseType: !416, size: 32, offset: 288)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !410, file: !411, line: 120, baseType: !7, size: 32, offset: 320)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !410, file: !411, line: 121, baseType: !430, size: 64, offset: 384)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !431, line: 24, baseType: !432)
!431 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !431, line: 24, size: 64, elements: !433)
!433 = !{!434}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !432, file: !431, line: 24, baseType: !206, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !410, file: !411, line: 122, baseType: !430, size: 64, offset: 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !410, file: !411, line: 123, baseType: !430, size: 64, offset: 512)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !410, file: !411, line: 124, baseType: !430, size: 64, offset: 576)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !410, file: !411, line: 125, baseType: !430, size: 64, offset: 640)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !410, file: !411, line: 127, baseType: !287, size: 8, offset: 704)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !410, file: !411, line: 129, baseType: !441, size: 64, offset: 768)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !443, line: 195, size: 1728, elements: !444)
!443 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!444 = !{!445, !446, !451, !463, !472, !475, !476, !483, !484, !485, !486, !488, !489, !490, !492, !493, !535, !556}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !442, file: !443, line: 196, baseType: !225, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !442, file: !443, line: 197, baseType: !447, size: 32, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !443, line: 28, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !189, line: 104, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !196, line: 20, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !198, line: 26, baseType: !120)
!451 = !DIDerivedType(tag: DW_TAG_member, scope: !442, file: !443, line: 198, baseType: !452, size: 192, offset: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !443, line: 198, size: 192, elements: !453)
!453 = !{!454, !455}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !452, file: !443, line: 199, baseType: !322, size: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !452, file: !443, line: 200, baseType: !456, size: 192, align: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !457, line: 5, size: 192, align: 64, elements: !458)
!457 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!458 = !{!459, !460, !462}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !456, file: !457, line: 6, baseType: !186, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !456, file: !457, line: 7, baseType: !461, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !456, file: !457, line: 8, baseType: !461, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !442, file: !443, line: 205, baseType: !464, size: 320, offset: 256)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !465, line: 48, size: 320, elements: !466)
!465 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!466 = !{!467, !468, !469, !470, !471}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !464, file: !465, line: 49, baseType: !300, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !464, file: !465, line: 55, baseType: !300, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !464, file: !465, line: 57, baseType: !317, size: 32, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !464, file: !465, line: 59, baseType: !315, size: 32, offset: 160)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !464, file: !465, line: 60, baseType: !322, size: 128, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !442, file: !443, line: 206, baseType: !473, size: 64, offset: 576)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !443, line: 206, flags: DIFlagFwdDecl)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !442, file: !443, line: 207, baseType: !180, size: 64, offset: 640)
!476 = !DIDerivedType(tag: DW_TAG_member, scope: !442, file: !443, line: 208, baseType: !477, size: 64, offset: 704)
!477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !443, line: 208, size: 64, elements: !478)
!478 = !{!479, !482}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !477, file: !443, line: 209, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !481, line: 8, baseType: !307)
!481 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!482 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !477, file: !443, line: 210, baseType: !480, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !442, file: !443, line: 212, baseType: !480, size: 64, offset: 768)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !442, file: !443, line: 213, baseType: !398, size: 32, offset: 832)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !442, file: !443, line: 214, baseType: !416, size: 32, offset: 864)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !442, file: !443, line: 215, baseType: !487, size: 32, offset: 896)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !443, line: 31, baseType: !194)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !442, file: !443, line: 216, baseType: !295, size: 16, offset: 928)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !442, file: !443, line: 217, baseType: !295, size: 16, offset: 944)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !442, file: !443, line: 221, baseType: !491, size: 16, offset: 960)
!491 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !442, file: !443, line: 228, baseType: !186, size: 64, offset: 1024)
!493 = !DIDerivedType(tag: DW_TAG_member, scope: !442, file: !443, line: 245, baseType: !494, size: 320, offset: 1088)
!494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !443, line: 245, size: 320, elements: !495)
!495 = !{!496, !526}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !494, file: !443, line: 246, baseType: !497, size: 320)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !443, line: 114, size: 320, elements: !498)
!498 = !{!499, !500, !513, !516, !523}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !497, file: !443, line: 116, baseType: !186, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, scope: !497, file: !443, line: 117, baseType: !501, size: 64, offset: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !497, file: !443, line: 117, size: 64, elements: !502)
!502 = !{!503, !512}
!503 = !DIDerivedType(tag: DW_TAG_member, scope: !501, file: !443, line: 118, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !501, file: !443, line: 118, size: 64, elements: !505)
!505 = !{!506, !507}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !504, file: !443, line: 120, baseType: !293, size: 16)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !504, file: !443, line: 121, baseType: !508, size: 48, offset: 16)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 48, elements: !510)
!509 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!510 = !{!511}
!511 = !DISubrange(count: 6)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !501, file: !443, line: 127, baseType: !186, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !497, file: !443, line: 129, baseType: !514, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !443, line: 102, flags: DIFlagFwdDecl)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !497, file: !443, line: 130, baseType: !517, size: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !443, line: 108, size: 192, elements: !519)
!519 = !{!520, !521, !522}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !518, file: !443, line: 109, baseType: !251, size: 128, align: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !518, file: !443, line: 110, baseType: !225, size: 32, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !518, file: !443, line: 111, baseType: !210, size: 8, offset: 160)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !497, file: !443, line: 131, baseType: !524, size: 64, offset: 256)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!526 = !DIDerivedType(tag: DW_TAG_member, scope: !494, file: !443, line: 247, baseType: !527, size: 320)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !494, file: !443, line: 247, size: 320, elements: !528)
!528 = !{!529, !530, !531, !532, !533}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !527, file: !443, line: 248, baseType: !186, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !527, file: !443, line: 249, baseType: !186, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !527, file: !443, line: 250, baseType: !514, size: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !527, file: !443, line: 251, baseType: !517, size: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !527, file: !443, line: 252, baseType: !534, size: 64, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, scope: !442, file: !443, line: 260, baseType: !536, size: 256, offset: 1408)
!536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !443, line: 260, size: 256, elements: !537)
!537 = !{!538, !544}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !536, file: !443, line: 261, baseType: !539, size: 256)
!539 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !443, line: 134, size: 256, elements: !540)
!540 = !{!541, !542}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !539, file: !443, line: 135, baseType: !180, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !539, file: !443, line: 136, baseType: !543, size: 256)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 256, elements: !375)
!544 = !DIDerivedType(tag: DW_TAG_member, scope: !536, file: !443, line: 262, baseType: !545, size: 256)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !536, file: !443, line: 262, size: 256, elements: !546)
!546 = !{!547, !548}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !545, file: !443, line: 264, baseType: !322, size: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !545, file: !443, line: 265, baseType: !549, size: 128, offset: 128)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !550, line: 22, size: 128, elements: !551)
!550 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!551 = !{!552, !555}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !549, file: !550, line: 23, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !550, line: 23, flags: DIFlagFwdDecl)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !549, file: !550, line: 24, baseType: !186, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !442, file: !443, line: 280, baseType: !557, size: 64, offset: 1664)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !443, line: 176, size: 192, elements: !559)
!559 = !{!560, !569, !570}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !558, file: !443, line: 177, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !443, line: 171, baseType: !562)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!120, !441, !565, !567, !441}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !539)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !558, file: !443, line: 178, baseType: !441, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !558, file: !443, line: 179, baseType: !514, size: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !410, file: !411, line: 130, baseType: !441, size: 64, offset: 832)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !410, file: !411, line: 131, baseType: !441, size: 64, offset: 896)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !410, file: !411, line: 132, baseType: !441, size: 64, offset: 960)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !410, file: !411, line: 135, baseType: !180, size: 64, offset: 1024)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !410, file: !411, line: 137, baseType: !576, size: 64, offset: 1088)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !578, line: 14, size: 1088, elements: !579)
!578 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!579 = !{!580, !581, !590, !591, !592, !593, !594, !595}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !577, file: !578, line: 15, baseType: !225, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !577, file: !578, line: 17, baseType: !582, size: 320, offset: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !583, line: 22, size: 320, elements: !584)
!583 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!584 = !{!585, !586, !587, !588}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !582, file: !583, line: 23, baseType: !315, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !582, file: !583, line: 24, baseType: !306, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !582, file: !583, line: 26, baseType: !322, size: 128, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !582, file: !583, line: 28, baseType: !589, size: 64, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !577, file: !578, line: 19, baseType: !186, size: 64, offset: 384)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !577, file: !578, line: 20, baseType: !300, size: 64, offset: 448)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !577, file: !578, line: 23, baseType: !370, size: 128, offset: 512)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !577, file: !578, line: 24, baseType: !398, size: 32, offset: 640)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !577, file: !578, line: 29, baseType: !300, size: 64, offset: 704)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !577, file: !578, line: 36, baseType: !596, size: 320, offset: 768)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !597, line: 15, size: 320, elements: !598)
!597 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!598 = !{!599, !600, !601, !602, !603, !604, !605}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !596, file: !597, line: 16, baseType: !315, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !596, file: !597, line: 18, baseType: !120, size: 32, offset: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !596, file: !597, line: 19, baseType: !120, size: 32, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !596, file: !597, line: 20, baseType: !120, size: 32, offset: 96)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !596, file: !597, line: 21, baseType: !120, size: 32, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !596, file: !597, line: 22, baseType: !186, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !596, file: !597, line: 23, baseType: !186, size: 64, offset: 256)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !410, file: !411, line: 138, baseType: !607, size: 64, offset: 1152)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !36, line: 901, flags: DIFlagFwdDecl)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !410, file: !411, line: 139, baseType: !610, size: 64, offset: 1216)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !612, line: 16, flags: DIFlagFwdDecl)
!612 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!613 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !410, file: !411, line: 140, baseType: !614, size: 64, offset: 1280)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !411, line: 25, size: 64, elements: !616)
!616 = !{!617, !618, !619}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !615, file: !411, line: 26, baseType: !229, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !615, file: !411, line: 27, baseType: !120, size: 32, offset: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !615, file: !411, line: 28, baseType: !620, offset: 64)
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, elements: !394)
!621 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !411, line: 142, baseType: !622, size: 128, offset: 1344)
!622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !410, file: !411, line: 142, size: 128, elements: !623)
!623 = !{!624, !625}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !622, file: !411, line: 143, baseType: !120, size: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !622, file: !411, line: 144, baseType: !251, size: 128, align: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !239, file: !65, line: 1013, baseType: !627, size: 256, offset: 960)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !65, line: 970, size: 256, elements: !628)
!628 = !{!629, !630, !631, !632, !633, !634}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !627, file: !65, line: 971, baseType: !186, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !627, file: !65, line: 972, baseType: !7, size: 32, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !627, file: !65, line: 973, baseType: !7, size: 32, offset: 96)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !627, file: !65, line: 974, baseType: !7, size: 32, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !627, file: !65, line: 975, baseType: !7, size: 32, offset: 160)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !627, file: !65, line: 976, baseType: !328, size: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !239, file: !65, line: 1014, baseType: !636, size: 128, offset: 1216)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !637, line: 8, size: 128, elements: !638)
!637 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!638 = !{!639, !4166}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !636, file: !637, line: 9, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !642, line: 70, size: 256, elements: !643)
!642 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!643 = !{!644, !4163, !4164, !4165}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !641, file: !642, line: 71, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !647, line: 82, size: 1536, elements: !648)
!647 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!648 = !{!649, !650, !660, !668, !669, !684, !4130, !4132, !4145, !4146, !4147, !4148, !4149, !4155, !4156, !4157}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !646, file: !647, line: 84, baseType: !7, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !646, file: !647, line: 85, baseType: !651, size: 32, offset: 32)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !652, line: 275, baseType: !653)
!652 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !652, line: 275, size: 32, elements: !654)
!654 = !{!655}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !653, file: !652, line: 275, baseType: !656, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !652, line: 69, baseType: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !652, line: 64, size: 32, elements: !658)
!658 = !{!659}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !657, file: !652, line: 65, baseType: !7, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !646, file: !647, line: 86, baseType: !661, size: 128, offset: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !662, line: 38, size: 128, elements: !663)
!662 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!663 = !{!664, !666}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !661, file: !662, line: 39, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !661, file: !662, line: 39, baseType: !667, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !646, file: !647, line: 87, baseType: !645, size: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !646, file: !647, line: 88, baseType: !670, size: 128, offset: 256)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !647, line: 49, size: 128, elements: !671)
!671 = !{!672, !681}
!672 = !DIDerivedType(tag: DW_TAG_member, scope: !670, file: !647, line: 50, baseType: !673, size: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !670, file: !647, line: 50, size: 64, elements: !674)
!674 = !{!675, !680}
!675 = !DIDerivedType(tag: DW_TAG_member, scope: !673, file: !647, line: 51, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !673, file: !647, line: 51, size: 64, elements: !677)
!677 = !{!678, !679}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !676, file: !647, line: 52, baseType: !195, size: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !676, file: !647, line: 52, baseType: !195, size: 32, offset: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !673, file: !647, line: 54, baseType: !206, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !670, file: !647, line: 56, baseType: !682, size: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !646, file: !647, line: 89, baseType: !685, size: 64, offset: 384)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !65, line: 641, size: 4800, elements: !687)
!687 = !{!688, !690, !691, !692, !693, !694, !695, !698, !699, !894, !3946, !3947, !3948, !3949, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !4112, !4115, !4116, !4117, !4126, !4127, !4128, !4129}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !686, file: !65, line: 642, baseType: !689, size: 16)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !189, line: 24, baseType: !295)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !686, file: !65, line: 643, baseType: !295, size: 16, offset: 16)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !686, file: !65, line: 644, baseType: !398, size: 32, offset: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !686, file: !65, line: 645, baseType: !322, size: 128, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !686, file: !65, line: 646, baseType: !416, size: 32, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !686, file: !65, line: 647, baseType: !7, size: 32, offset: 224)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !686, file: !65, line: 650, baseType: !696, size: 64, offset: 256)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !65, line: 607, flags: DIFlagFwdDecl)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !686, file: !65, line: 651, baseType: !696, size: 64, offset: 320)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !686, file: !65, line: 654, baseType: !700, size: 64, offset: 384)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !702)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !65, line: 1966, size: 2048, align: 512, elements: !703)
!703 = !{!704, !708, !721, !727, !731, !735, !739, !743, !747, !751, !755, !756, !762, !766, !804, !835, !842, !848, !852, !856, !860, !864, !868, !874, !878}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !702, file: !65, line: 1967, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!645, !685, !645, !7}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !702, file: !65, line: 1968, baseType: !709, size: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!524, !645, !685, !712}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !714, line: 10, size: 128, elements: !715)
!714 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!715 = !{!716, !720}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !713, file: !714, line: 11, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{null, !180}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !713, file: !714, line: 12, baseType: !180, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !702, file: !65, line: 1969, baseType: !722, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!120, !725, !685, !120}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !431, line: 42, flags: DIFlagFwdDecl)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !702, file: !65, line: 1970, baseType: !728, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!696, !685, !120, !210}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !702, file: !65, line: 1972, baseType: !732, size: 64, offset: 256)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!120, !645, !534, !120}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !702, file: !65, line: 1974, baseType: !736, size: 64, offset: 320)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!120, !725, !685, !645, !689, !210}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !702, file: !65, line: 1976, baseType: !740, size: 64, offset: 384)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!120, !645, !685, !645}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !702, file: !65, line: 1977, baseType: !744, size: 64, offset: 448)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!120, !685, !645}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !702, file: !65, line: 1978, baseType: !748, size: 64, offset: 512)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!120, !725, !685, !645, !524}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !702, file: !65, line: 1980, baseType: !752, size: 64, offset: 576)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!120, !725, !685, !645, !689}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !702, file: !65, line: 1982, baseType: !744, size: 64, offset: 640)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !702, file: !65, line: 1983, baseType: !757, size: 64, offset: 704)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!120, !725, !685, !645, !689, !760}
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !189, line: 21, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !189, line: 18, baseType: !195)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !702, file: !65, line: 1985, baseType: !763, size: 64, offset: 768)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!120, !725, !685, !645, !685, !645, !7}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !702, file: !65, line: 1987, baseType: !767, size: 64, offset: 832)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!120, !725, !645, !770}
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !65, line: 226, size: 640, elements: !772)
!772 = !{!773, !774, !775, !785, !794, !795, !801, !802, !803}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !771, file: !65, line: 227, baseType: !7, size: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !771, file: !65, line: 228, baseType: !689, size: 16, offset: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, scope: !771, file: !65, line: 241, baseType: !776, size: 32, offset: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !771, file: !65, line: 241, size: 32, elements: !777)
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !776, file: !65, line: 242, baseType: !398, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !776, file: !65, line: 243, baseType: !780, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !781, line: 16, baseType: !782)
!781 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !781, line: 14, size: 32, elements: !783)
!783 = !{!784}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !782, file: !781, line: 15, baseType: !403, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, scope: !771, file: !65, line: 245, baseType: !786, size: 32, offset: 96)
!786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !771, file: !65, line: 245, size: 32, elements: !787)
!787 = !{!788, !789}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !786, file: !65, line: 246, baseType: !416, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !786, file: !65, line: 247, baseType: !790, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !781, line: 20, baseType: !791)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !781, line: 18, size: 32, elements: !792)
!792 = !{!793}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !791, file: !781, line: 19, baseType: !420, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !771, file: !65, line: 249, baseType: !328, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !771, file: !65, line: 250, baseType: !796, size: 128, offset: 192)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !481, line: 13, size: 128, elements: !797)
!797 = !{!798, !799}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !796, file: !481, line: 14, baseType: !480, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !796, file: !481, line: 15, baseType: !800, size: 64, offset: 64)
!800 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !771, file: !65, line: 251, baseType: !796, size: 128, offset: 320)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !771, file: !65, line: 252, baseType: !796, size: 128, offset: 448)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !771, file: !65, line: 259, baseType: !238, size: 64, offset: 576)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !702, file: !65, line: 1988, baseType: !805, size: 64, offset: 896)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!120, !725, !808, !810, !195, !7}
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !636)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !812, line: 22, size: 1280, elements: !813)
!812 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!813 = !{!814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !811, file: !812, line: 23, baseType: !195, size: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !811, file: !812, line: 24, baseType: !689, size: 16, offset: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !811, file: !812, line: 25, baseType: !7, size: 32, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !811, file: !812, line: 26, baseType: !194, size: 32, offset: 96)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !811, file: !812, line: 27, baseType: !206, size: 64, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !811, file: !812, line: 28, baseType: !206, size: 64, offset: 192)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !811, file: !812, line: 41, baseType: !206, size: 64, offset: 256)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !811, file: !812, line: 42, baseType: !760, size: 32, offset: 320)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !811, file: !812, line: 43, baseType: !760, size: 32, offset: 352)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !811, file: !812, line: 44, baseType: !398, size: 32, offset: 384)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !811, file: !812, line: 45, baseType: !416, size: 32, offset: 416)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !811, file: !812, line: 46, baseType: !328, size: 64, offset: 448)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !811, file: !812, line: 47, baseType: !796, size: 128, offset: 512)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !811, file: !812, line: 48, baseType: !796, size: 128, offset: 640)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !811, file: !812, line: 49, baseType: !796, size: 128, offset: 768)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !811, file: !812, line: 50, baseType: !796, size: 128, offset: 896)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !811, file: !812, line: 51, baseType: !206, size: 64, offset: 1024)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !811, file: !812, line: 52, baseType: !206, size: 64, offset: 1088)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !811, file: !812, line: 53, baseType: !195, size: 32, offset: 1152)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !811, file: !812, line: 54, baseType: !195, size: 32, offset: 1184)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !811, file: !812, line: 55, baseType: !206, size: 64, offset: 1216)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !702, file: !65, line: 1990, baseType: !836, size: 64, offset: 960)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!839, !645, !534, !188}
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !189, line: 66, baseType: !840)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !191, line: 73, baseType: !841)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !191, line: 15, baseType: !800)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !702, file: !65, line: 1991, baseType: !843, size: 64, offset: 1024)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!120, !685, !846, !206, !206}
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !65, line: 55, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !702, file: !65, line: 1993, baseType: !849, size: 64, offset: 1088)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!120, !685, !120}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !702, file: !65, line: 1994, baseType: !853, size: 64, offset: 1152)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!120, !685, !645, !238, !7, !689}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !702, file: !65, line: 1997, baseType: !857, size: 64, offset: 1216)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!120, !725, !685, !238, !689}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !702, file: !65, line: 1999, baseType: !861, size: 64, offset: 1280)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!696, !725, !645, !120}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !702, file: !65, line: 2001, baseType: !865, size: 64, offset: 1344)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!120, !725, !645, !696, !120}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !702, file: !65, line: 2003, baseType: !869, size: 64, offset: 1408)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!120, !725, !645, !872}
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !65, line: 76, flags: DIFlagFwdDecl)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !702, file: !65, line: 2005, baseType: !875, size: 64, offset: 1472)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!120, !645, !872}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !702, file: !65, line: 2006, baseType: !879, size: 64, offset: 1536)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!882, !685}
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !65, line: 3192, size: 192, elements: !884)
!884 = !{!885, !893}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !883, file: !65, line: 3193, baseType: !886, size: 128)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !887, line: 296, size: 128, elements: !888)
!887 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!888 = !{!889, !890, !892}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !886, file: !887, line: 297, baseType: !261, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !886, file: !887, line: 299, baseType: !891, size: 32, offset: 32)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !189, line: 154, baseType: !7)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !886, file: !887, line: 300, baseType: !180, size: 64, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !883, file: !65, line: 3194, baseType: !195, size: 32, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !686, file: !65, line: 655, baseType: !895, size: 64, offset: 448)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !65, line: 1190, size: 10752, elements: !897)
!897 = !{!898, !899, !900, !901, !902, !903, !2276, !2408, !2448, !2531, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2548, !2552, !2553, !2556, !2559, !2562, !2565, !2566, !2567, !2608, !3821, !3822, !3823, !3824, !3825, !3826, !3829, !3831, !3838, !3839, !3840, !3841, !3900, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !896, file: !65, line: 1191, baseType: !322, size: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !896, file: !65, line: 1192, baseType: !760, size: 32, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !896, file: !65, line: 1193, baseType: !287, size: 8, offset: 160)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !896, file: !65, line: 1194, baseType: !186, size: 64, offset: 192)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !896, file: !65, line: 1195, baseType: !328, size: 64, offset: 256)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !896, file: !65, line: 1196, baseType: !904, size: 64, offset: 320)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !65, line: 2366, size: 576, elements: !906)
!906 = !{!907, !908, !909, !915, !919, !923, !927, !2264, !2265, !2266, !2268, !2269, !2270, !2272, !2273, !2274, !2275}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !905, file: !65, line: 2367, baseType: !524, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !905, file: !65, line: 2368, baseType: !120, size: 32, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !905, file: !65, line: 2376, baseType: !910, size: 64, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!120, !913}
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !642, line: 21, flags: DIFlagFwdDecl)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !905, file: !65, line: 2377, baseType: !916, size: 64, offset: 192)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !918)
!918 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !65, line: 75, flags: DIFlagFwdDecl)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !905, file: !65, line: 2378, baseType: !920, size: 64, offset: 256)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!645, !904, !120, !524, !180}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !905, file: !65, line: 2380, baseType: !924, size: 64, offset: 320)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !895}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !905, file: !65, line: 2381, baseType: !928, size: 64, offset: 384)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !21, line: 402, size: 9216, align: 512, elements: !930)
!930 = !{!931, !932, !933, !937, !1920, !1946, !1947, !1948, !1949, !1953, !1956, !1957, !1958, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2026, !2030, !2050, !2068, !2069, !2070, !2071, !2080, !2103, !2104, !2107, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2121, !2122, !2222, !2230, !2231, !2232, !2234, !2238, !2239, !2243, !2244, !2245, !2246, !2248, !2249, !2250, !2257, !2258, !2259, !2263}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !929, file: !21, line: 403, baseType: !20, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !929, file: !21, line: 406, baseType: !322, size: 128, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !929, file: !21, line: 409, baseType: !934, size: 448, offset: 192)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 448, elements: !935)
!935 = !{!936}
!936 = !DISubrange(count: 56)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !929, file: !21, line: 417, baseType: !938, size: 768, offset: 640)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !21, line: 45, size: 768, elements: !939)
!939 = !{!940, !1913, !1914, !1915, !1918}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !938, file: !21, line: 46, baseType: !941, size: 512)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !942, line: 64, size: 512, elements: !943)
!942 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!943 = !{!944, !945, !946, !948, !992, !1772, !1907, !1908, !1909, !1910, !1911, !1912}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !941, file: !942, line: 65, baseType: !524, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !941, file: !942, line: 66, baseType: !322, size: 128, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !941, file: !942, line: 67, baseType: !947, size: 64, offset: 192)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !941, file: !942, line: 68, baseType: !949, size: 64, offset: 256)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !942, line: 168, size: 768, elements: !951)
!951 = !{!952, !953, !954, !955}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !950, file: !942, line: 169, baseType: !322, size: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !950, file: !942, line: 170, baseType: !261, size: 32, offset: 128)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !950, file: !942, line: 171, baseType: !941, size: 512, offset: 192)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !950, file: !942, line: 172, baseType: !956, size: 64, offset: 704)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !958)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !942, line: 133, size: 192, elements: !959)
!959 = !{!960, !967, !972}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !958, file: !942, line: 134, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !962)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{!120, !965}
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !941)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !958, file: !942, line: 135, baseType: !968, size: 64, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !969)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!524, !965}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !958, file: !942, line: 136, baseType: !973, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !974)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{!120, !965, !977}
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !942, line: 125, size: 20736, elements: !979)
!979 = !{!980, !982, !986, !987, !991}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !978, file: !942, line: 126, baseType: !981, size: 192)
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !534, size: 192, elements: !354)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !978, file: !942, line: 127, baseType: !983, size: 4096, offset: 192)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !534, size: 4096, elements: !984)
!984 = !{!985}
!985 = !DISubrange(count: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !978, file: !942, line: 128, baseType: !120, size: 32, offset: 4288)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !978, file: !942, line: 129, baseType: !988, size: 16384, offset: 4320)
!988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 16384, elements: !989)
!989 = !{!990}
!990 = !DISubrange(count: 2048)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !978, file: !942, line: 130, baseType: !120, size: 32, offset: 20704)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !941, file: !942, line: 69, baseType: !993, size: 64, offset: 320)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !995)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !942, line: 116, size: 384, elements: !996)
!996 = !{!997, !1001, !1020, !1734, !1762, !1766}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !995, file: !942, line: 117, baseType: !998, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DISubroutineType(types: !1000)
!1000 = !{null, !947}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !995, file: !942, line: 118, baseType: !1002, size: 64, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1004)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1005, line: 254, size: 128, elements: !1006)
!1005 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1006 = !{!1007, !1016}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1004, file: !1005, line: 255, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!839, !947, !1011, !534}
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1005, line: 30, size: 128, elements: !1013)
!1013 = !{!1014, !1015}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1012, file: !1005, line: 31, baseType: !524, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1012, file: !1005, line: 32, baseType: !689, size: 16, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1004, file: !1005, line: 256, baseType: !1017, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!839, !947, !1011, !524, !188}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !995, file: !942, line: 119, baseType: !1021, size: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1024)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1005, line: 84, size: 320, elements: !1025)
!1025 = !{!1026, !1027, !1031, !1730, !1732}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1024, file: !1005, line: 85, baseType: !524, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1024, file: !1005, line: 86, baseType: !1028, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!689, !947, !1011, !120}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1024, file: !1005, line: 88, baseType: !1032, size: 64, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!689, !947, !1035, !120}
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1005, line: 175, size: 512, elements: !1037)
!1037 = !{!1038, !1039, !1040, !1041, !1721, !1725, !1726}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1036, file: !1005, line: 176, baseType: !1012, size: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1036, file: !1005, line: 177, baseType: !188, size: 64, offset: 128)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1036, file: !1005, line: 178, baseType: !180, size: 64, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1036, file: !1005, line: 179, baseType: !1042, size: 64, offset: 256)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!1045}
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !65, line: 472, size: 1536, align: 64, elements: !1047)
!1047 = !{!1048, !1049, !1050, !1051, !1052, !1053, !1061, !1062, !1063, !1713, !1714, !1715, !1718, !1719, !1720}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1046, file: !65, line: 473, baseType: !685, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1046, file: !65, line: 474, baseType: !886, size: 128, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1046, file: !65, line: 475, baseType: !464, size: 320, offset: 192)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1046, file: !65, line: 476, baseType: !891, size: 32, offset: 512)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1046, file: !65, line: 477, baseType: !229, size: 32, offset: 544)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1046, file: !65, line: 482, baseType: !1054, size: 128, offset: 576)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !457, line: 26, size: 128, elements: !1055)
!1055 = !{!1056, !1060}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1054, file: !457, line: 27, baseType: !1057, size: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !457, line: 12, size: 64, elements: !1058)
!1058 = !{!1059}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1057, file: !457, line: 13, baseType: !461, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1054, file: !457, line: 28, baseType: !461, size: 64, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1046, file: !65, line: 483, baseType: !186, size: 64, offset: 704)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1046, file: !65, line: 484, baseType: !186, size: 64, offset: 768)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1046, file: !65, line: 485, baseType: !1064, size: 64, offset: 832)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1066)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !65, line: 404, size: 1280, elements: !1067)
!1067 = !{!1068, !1537, !1607, !1611, !1615, !1621, !1627, !1631, !1636, !1640, !1644, !1648, !1677, !1681, !1685, !1689, !1694, !1698, !1705, !1709}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1066, file: !65, line: 405, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!120, !1072, !1535}
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !36, line: 74, size: 512, align: 128, elements: !1074)
!1074 = !{!1075, !1076, !1529, !1534}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1073, file: !36, line: 75, baseType: !186, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !36, line: 83, baseType: !1077, size: 320, offset: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1073, file: !36, line: 83, size: 320, elements: !1078)
!1078 = !{!1079, !1100, !1114, !1118, !1528}
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !36, line: 84, baseType: !1080, size: 320)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1077, file: !36, line: 84, size: 320, elements: !1081)
!1081 = !{!1082, !1093, !1094, !1099}
!1082 = !DIDerivedType(tag: DW_TAG_member, scope: !1080, file: !36, line: 90, baseType: !1083, size: 128)
!1083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1080, file: !36, line: 90, size: 128, elements: !1084)
!1084 = !{!1085, !1086, !1091, !1092}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1083, file: !36, line: 91, baseType: !322, size: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, scope: !1083, file: !36, line: 94, baseType: !1087, size: 128)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1083, file: !36, line: 94, size: 128, elements: !1088)
!1088 = !{!1089, !1090}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1087, file: !36, line: 96, baseType: !180, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1087, file: !36, line: 98, baseType: !7, size: 32, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1083, file: !36, line: 102, baseType: !322, size: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1083, file: !36, line: 103, baseType: !322, size: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1080, file: !36, line: 106, baseType: !1045, size: 64, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, scope: !1080, file: !36, line: 107, baseType: !1095, size: 64, offset: 192)
!1095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1080, file: !36, line: 107, size: 64, elements: !1096)
!1096 = !{!1097, !1098}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1095, file: !36, line: 108, baseType: !186, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1095, file: !36, line: 109, baseType: !186, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1080, file: !36, line: 117, baseType: !186, size: 64, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !36, line: 119, baseType: !1101, size: 320)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1077, file: !36, line: 119, size: 320, elements: !1102)
!1102 = !{!1103, !1104, !1107, !1108, !1109}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1101, file: !36, line: 124, baseType: !186, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1101, file: !36, line: 125, baseType: !1105, size: 64, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !36, line: 125, flags: DIFlagFwdDecl)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1101, file: !36, line: 126, baseType: !186, size: 64, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1101, file: !36, line: 127, baseType: !186, size: 64, offset: 192)
!1109 = !DIDerivedType(tag: DW_TAG_member, scope: !1101, file: !36, line: 128, baseType: !1110, size: 64, offset: 256)
!1110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1101, file: !36, line: 128, size: 64, elements: !1111)
!1111 = !{!1112, !1113}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1110, file: !36, line: 133, baseType: !186, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1110, file: !36, line: 138, baseType: !300, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !36, line: 141, baseType: !1115, size: 64)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1077, file: !36, line: 141, size: 64, elements: !1116)
!1116 = !{!1117}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1115, file: !36, line: 142, baseType: !186, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !36, line: 144, baseType: !1119, size: 128)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1077, file: !36, line: 144, size: 128, elements: !1120)
!1120 = !{!1121, !1527}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1119, file: !36, line: 146, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !28, line: 126, size: 1216, elements: !1124)
!1124 = !{!1125, !1135, !1156, !1167, !1168, !1169, !1170, !1509, !1510, !1511}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1123, file: !28, line: 127, baseType: !1126, size: 384)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !28, line: 21, size: 384, elements: !1127)
!1127 = !{!1128, !1129, !1131, !1132, !1133, !1134}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1126, file: !28, line: 22, baseType: !186, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1126, file: !28, line: 23, baseType: !1130, size: 64, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1126, file: !28, line: 24, baseType: !1130, size: 64, offset: 128)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1126, file: !28, line: 25, baseType: !186, size: 64, offset: 192)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1126, file: !28, line: 26, baseType: !186, size: 64, offset: 256)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1126, file: !28, line: 27, baseType: !186, size: 64, offset: 320)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1123, file: !28, line: 128, baseType: !1136, size: 128, offset: 384)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1137, line: 105, size: 128, elements: !1138)
!1137 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1138 = !{!1139, !1140}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1136, file: !1137, line: 110, baseType: !186, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1136, file: !1137, line: 118, baseType: !1141, size: 64, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1137, line: 95, size: 448, elements: !1143)
!1143 = !{!1144, !1145, !1151, !1152, !1153, !1154, !1155}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1142, file: !1137, line: 96, baseType: !300, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1142, file: !1137, line: 97, baseType: !1146, size: 64, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1137, line: 60, baseType: !1148)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{null, !1150}
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1142, file: !1137, line: 98, baseType: !1146, size: 64, offset: 128)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1142, file: !1137, line: 99, baseType: !210, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1142, file: !1137, line: 100, baseType: !210, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1142, file: !1137, line: 101, baseType: !251, size: 128, align: 64, offset: 256)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1142, file: !1137, line: 102, baseType: !1150, size: 64, offset: 384)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1123, file: !28, line: 129, baseType: !1157, size: 256, offset: 512)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1158, line: 26, size: 256, elements: !1159)
!1158 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1159 = !{!1160, !1161}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1157, file: !1158, line: 27, baseType: !7, size: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1157, file: !1158, line: 28, baseType: !1162, size: 192, offset: 64)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1163, line: 43, size: 192, elements: !1164)
!1163 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1164 = !{!1165, !1166}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1162, file: !1163, line: 44, baseType: !315, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1162, file: !1163, line: 45, baseType: !322, size: 128, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1123, file: !28, line: 130, baseType: !27, size: 32, offset: 768)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1123, file: !28, line: 131, baseType: !7, size: 32, offset: 800)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1123, file: !28, line: 132, baseType: !186, size: 64, offset: 832)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1123, file: !28, line: 133, baseType: !1171, size: 64, offset: 896)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1173)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !28, line: 77, size: 192, elements: !1174)
!1174 = !{!1175, !1179, !1505}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1173, file: !28, line: 83, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !1072}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1173, file: !28, line: 89, baseType: !1180, size: 64, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!1183, !1184}
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !36, line: 1184, baseType: !7)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1186, line: 512, size: 896, elements: !1187)
!1186 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1187 = !{!1188, !1472, !1473, !1480, !1487, !1497, !1498, !1499, !1501, !1503}
!1188 = !DIDerivedType(tag: DW_TAG_member, scope: !1185, file: !1186, line: 513, baseType: !1189, size: 320)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1185, file: !1186, line: 513, size: 320, elements: !1190)
!1190 = !{!1191, !1468, !1469, !1470, !1471}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1189, file: !1186, line: 514, baseType: !1192, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !36, line: 625, size: 1344, elements: !1194)
!1194 = !{!1195, !1204, !1373, !1379, !1386, !1387, !1392, !1393, !1398, !1399, !1402, !1461, !1462, !1463, !1464, !1465, !1466}
!1195 = !DIDerivedType(tag: DW_TAG_member, scope: !1193, file: !36, line: 628, baseType: !1196, size: 128)
!1196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1193, file: !36, line: 628, size: 128, elements: !1197)
!1197 = !{!1198, !1203}
!1198 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !36, line: 629, baseType: !1199, size: 128)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1196, file: !36, line: 629, size: 128, elements: !1200)
!1200 = !{!1201, !1202}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1199, file: !36, line: 631, baseType: !186, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1199, file: !36, line: 632, baseType: !186, size: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1196, file: !36, line: 635, baseType: !251, size: 128, align: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1193, file: !36, line: 639, baseType: !1205, size: 64, offset: 128)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !36, line: 733, size: 10240, elements: !1207)
!1207 = !{!1208, !1371}
!1208 = !DIDerivedType(tag: DW_TAG_member, scope: !1206, file: !36, line: 734, baseType: !1209, size: 10240)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1206, file: !36, line: 734, size: 10240, elements: !1210)
!1210 = !{!1211, !1215, !1229, !1233, !1234, !1235, !1236, !1237, !1238, !1247, !1248, !1249, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1288, !1290, !1293, !1340, !1341, !1342, !1345, !1346, !1347, !1350, !1351, !1352, !1358, !1359}
!1211 = !DIDerivedType(tag: DW_TAG_member, scope: !1209, file: !36, line: 739, baseType: !1212, size: 512, align: 512)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1209, file: !36, line: 739, size: 512, align: 512, elements: !1213)
!1213 = !{!1214}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1212, file: !36, line: 747, baseType: !229, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1209, file: !36, line: 750, baseType: !1216, size: 128, offset: 512)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1217, line: 218, size: 128, elements: !1218)
!1217 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1218 = !{!1219, !1227, !1228}
!1219 = !DIDerivedType(tag: DW_TAG_member, scope: !1216, file: !1217, line: 219, baseType: !1220, size: 32)
!1220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1216, file: !1217, line: 219, size: 32, elements: !1221)
!1221 = !{!1222, !1223}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1220, file: !1217, line: 220, baseType: !261, size: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1220, file: !1217, line: 221, baseType: !1224)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1217, line: 197, baseType: !1225)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1217, line: 197, elements: !1226)
!1226 = !{}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1216, file: !1217, line: 223, baseType: !7, size: 32, offset: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1216, file: !1217, line: 224, baseType: !180, size: 64, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1209, file: !36, line: 752, baseType: !1230, size: 64, offset: 640)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!186, !238, !186, !186, !186, !186}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1209, file: !36, line: 756, baseType: !186, size: 64, offset: 704)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1209, file: !36, line: 757, baseType: !186, size: 64, offset: 768)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1209, file: !36, line: 760, baseType: !186, size: 64, offset: 832)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1209, file: !36, line: 761, baseType: !186, size: 64, offset: 896)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1209, file: !36, line: 763, baseType: !186, size: 64, offset: 960)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1209, file: !36, line: 764, baseType: !1239, size: 64, offset: 1024)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1241, line: 299, baseType: !1242)
!1241 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1241, line: 299, size: 64, elements: !1243)
!1243 = !{!1244}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1242, file: !1241, line: 299, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1246, line: 18, baseType: !186)
!1246 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1209, file: !36, line: 773, baseType: !229, size: 32, offset: 1088)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1209, file: !36, line: 785, baseType: !229, size: 32, offset: 1120)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1209, file: !36, line: 795, baseType: !1250, size: 64, offset: 1152)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !36, line: 726, size: 128, elements: !1252)
!1252 = !{!1253, !1254}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1251, file: !36, line: 727, baseType: !206, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1251, file: !36, line: 728, baseType: !120, size: 32, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1209, file: !36, line: 801, baseType: !186, size: 64, offset: 1216)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1209, file: !36, line: 804, baseType: !300, size: 64, offset: 1280)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1209, file: !36, line: 806, baseType: !120, size: 32, offset: 1344)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1209, file: !36, line: 808, baseType: !261, size: 32, offset: 1376)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1209, file: !36, line: 823, baseType: !464, size: 320, offset: 1408)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1209, file: !36, line: 825, baseType: !322, size: 128, offset: 1728)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1209, file: !36, line: 845, baseType: !120, size: 32, offset: 1856)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1209, file: !36, line: 849, baseType: !186, size: 64, offset: 1920)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1209, file: !36, line: 850, baseType: !186, size: 64, offset: 1984)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1209, file: !36, line: 852, baseType: !186, size: 64, offset: 2048)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1209, file: !36, line: 853, baseType: !186, size: 64, offset: 2112)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1209, file: !36, line: 854, baseType: !302, size: 64, offset: 2176)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1209, file: !36, line: 855, baseType: !186, size: 64, offset: 2240)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1209, file: !36, line: 856, baseType: !186, size: 64, offset: 2304)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1209, file: !36, line: 857, baseType: !186, size: 64, offset: 2368)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1209, file: !36, line: 858, baseType: !186, size: 64, offset: 2432)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1209, file: !36, line: 865, baseType: !656, size: 32, offset: 2496)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1209, file: !36, line: 867, baseType: !261, size: 32, offset: 2528)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1209, file: !36, line: 869, baseType: !186, size: 64, offset: 2560)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1209, file: !36, line: 869, baseType: !186, size: 64, offset: 2624)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1209, file: !36, line: 869, baseType: !186, size: 64, offset: 2688)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1209, file: !36, line: 869, baseType: !186, size: 64, offset: 2752)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1209, file: !36, line: 870, baseType: !186, size: 64, offset: 2816)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1209, file: !36, line: 870, baseType: !186, size: 64, offset: 2880)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1209, file: !36, line: 870, baseType: !186, size: 64, offset: 2944)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1209, file: !36, line: 871, baseType: !186, size: 64, offset: 3008)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1209, file: !36, line: 871, baseType: !186, size: 64, offset: 3072)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1209, file: !36, line: 871, baseType: !186, size: 64, offset: 3136)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1209, file: !36, line: 871, baseType: !186, size: 64, offset: 3200)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1209, file: !36, line: 873, baseType: !1285, size: 3328, offset: 3264)
!1285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 3328, elements: !1286)
!1286 = !{!1287}
!1287 = !DISubrange(count: 52)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1209, file: !36, line: 875, baseType: !1289, size: 1280, offset: 6592)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 1280, elements: !375)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1209, file: !36, line: 877, baseType: !1291, size: 64, offset: 7872)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !36, line: 877, flags: DIFlagFwdDecl)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1209, file: !36, line: 880, baseType: !1294, size: 1088, offset: 7936)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1295, line: 72, baseType: !1296)
!1295 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1295, line: 23, size: 1088, elements: !1297)
!1297 = !{!1298, !1299, !1300, !1301, !1302, !1305, !1306, !1307, !1308, !1335, !1336, !1337}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1296, file: !1295, line: 28, baseType: !206, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1296, file: !1295, line: 38, baseType: !302, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1296, file: !1295, line: 40, baseType: !186, size: 64, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1296, file: !1295, line: 43, baseType: !464, size: 320, offset: 192)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1296, file: !1295, line: 44, baseType: !1303, size: 64, offset: 512)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1295, line: 44, flags: DIFlagFwdDecl)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1296, file: !1295, line: 48, baseType: !186, size: 64, offset: 576)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1296, file: !1295, line: 59, baseType: !310, size: 256, offset: 640)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1296, file: !1295, line: 60, baseType: !180, size: 64, offset: 896)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1296, file: !1295, line: 61, baseType: !1309, size: 64, offset: 960)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1311)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1312, line: 13, size: 1216, elements: !1313)
!1312 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1313 = !{!1314, !1315, !1316, !1317, !1318, !1319, !1320, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1311, file: !1312, line: 14, baseType: !180, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1311, file: !1312, line: 15, baseType: !186, size: 64, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1311, file: !1312, line: 17, baseType: !186, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1311, file: !1312, line: 17, baseType: !186, size: 64, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1311, file: !1312, line: 18, baseType: !186, size: 64, offset: 256)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1311, file: !1312, line: 18, baseType: !186, size: 64, offset: 320)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1311, file: !1312, line: 19, baseType: !1321, size: 64, offset: 384)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1311, file: !1312, line: 21, baseType: !800, size: 64, offset: 448)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1311, file: !1312, line: 23, baseType: !800, size: 64, offset: 512)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1311, file: !1312, line: 24, baseType: !800, size: 64, offset: 576)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1311, file: !1312, line: 25, baseType: !800, size: 64, offset: 640)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1311, file: !1312, line: 26, baseType: !800, size: 64, offset: 704)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1311, file: !1312, line: 27, baseType: !800, size: 64, offset: 768)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1311, file: !1312, line: 28, baseType: !800, size: 64, offset: 832)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1311, file: !1312, line: 29, baseType: !800, size: 64, offset: 896)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1311, file: !1312, line: 30, baseType: !800, size: 64, offset: 960)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1311, file: !1312, line: 31, baseType: !800, size: 64, offset: 1024)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1311, file: !1312, line: 32, baseType: !800, size: 64, offset: 1088)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1311, file: !1312, line: 33, baseType: !800, size: 64, offset: 1152)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1296, file: !1295, line: 63, baseType: !229, size: 32, offset: 1024)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1296, file: !1295, line: 69, baseType: !293, size: 16, offset: 1056)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1296, file: !1295, line: 70, baseType: !1338, size: 16, offset: 1072)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !196, line: 18, baseType: !1339)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !198, line: 23, baseType: !491)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1209, file: !36, line: 882, baseType: !186, size: 64, offset: 9024)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1209, file: !36, line: 885, baseType: !261, size: 32, offset: 9088)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1209, file: !36, line: 886, baseType: !1343, size: 64, offset: 9152)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !36, line: 732, flags: DIFlagFwdDecl)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1209, file: !36, line: 901, baseType: !607, size: 64, offset: 9216)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1209, file: !36, line: 904, baseType: !238, size: 64, offset: 9280)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1209, file: !36, line: 906, baseType: !1348, size: 64, offset: 9344)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !36, line: 906, flags: DIFlagFwdDecl)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1209, file: !36, line: 930, baseType: !229, size: 32, offset: 9408)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1209, file: !36, line: 933, baseType: !229, size: 32, offset: 9440)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1209, file: !36, line: 935, baseType: !1353, size: 64, offset: 9472)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !87, line: 103, size: 64, elements: !1354)
!1354 = !{!1355}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1353, file: !87, line: 104, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !87, line: 101, flags: DIFlagFwdDecl)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1209, file: !36, line: 940, baseType: !300, size: 64, offset: 9536)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1209, file: !36, line: 942, baseType: !1360, size: 256, offset: 9600)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1361, line: 98, size: 256, elements: !1362)
!1361 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1362 = !{!1363, !1364, !1365}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1360, file: !1361, line: 99, baseType: !300, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1360, file: !1361, line: 100, baseType: !322, size: 128, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1360, file: !1361, line: 101, baseType: !1366, size: 64, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1361, line: 21, baseType: !1367)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{null, !1370}
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1206, file: !36, line: 986, baseType: !1372, offset: 10240)
!1372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, elements: !394)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1193, file: !36, line: 640, baseType: !1374, size: 64, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1241, line: 297, baseType: !1375)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1241, line: 297, size: 64, elements: !1376)
!1376 = !{!1377}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1375, file: !1241, line: 297, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1246, line: 19, baseType: !186)
!1379 = !DIDerivedType(tag: DW_TAG_member, scope: !1193, file: !36, line: 646, baseType: !1380, size: 64, offset: 256)
!1380 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1193, file: !36, line: 646, size: 64, elements: !1381)
!1381 = !{!1382, !1385}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1380, file: !36, line: 647, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1384)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !36, line: 542, baseType: !186)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1380, file: !36, line: 648, baseType: !1384, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1193, file: !36, line: 666, baseType: !120, size: 32, offset: 320)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1193, file: !36, line: 667, baseType: !1388, size: 64, offset: 384)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !36, line: 579, size: 320, elements: !1390)
!1390 = !{!1391}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1389, file: !36, line: 580, baseType: !464, size: 320)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1193, file: !36, line: 670, baseType: !210, size: 8, offset: 448)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1193, file: !36, line: 681, baseType: !1394, size: 256, offset: 512)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1193, file: !36, line: 678, size: 256, elements: !1395)
!1395 = !{!1396, !1397}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1394, file: !36, line: 679, baseType: !456, size: 192, align: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1394, file: !36, line: 680, baseType: !186, size: 64, offset: 192)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1193, file: !36, line: 689, baseType: !322, size: 128, offset: 768)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1193, file: !36, line: 691, baseType: !1400, size: 64, offset: 896)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !36, line: 691, flags: DIFlagFwdDecl)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1193, file: !36, line: 694, baseType: !1403, size: 64, offset: 960)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1405)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1186, line: 563, size: 1024, elements: !1406)
!1406 = !{!1407, !1411, !1412, !1416, !1420, !1424, !1425, !1429, !1433, !1437, !1438, !1439, !1443, !1447, !1453, !1457}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1405, file: !1186, line: 564, baseType: !1408, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{null, !1192}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1405, file: !1186, line: 569, baseType: !1408, size: 64, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1405, file: !1186, line: 571, baseType: !1413, size: 64, offset: 128)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!120, !1192, !186}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1405, file: !1186, line: 572, baseType: !1417, size: 64, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!120, !1192}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1405, file: !1186, line: 578, baseType: !1421, size: 64, offset: 256)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!120, !1192, !186, !186, !186}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1405, file: !1186, line: 580, baseType: !1180, size: 64, offset: 320)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1405, file: !1186, line: 581, baseType: !1426, size: 64, offset: 384)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!1183, !1184, !7}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1405, file: !1186, line: 582, baseType: !1430, size: 64, offset: 448)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!1183, !1184, !186, !186}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1405, file: !1186, line: 584, baseType: !1434, size: 64, offset: 512)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!186, !1192}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1405, file: !1186, line: 588, baseType: !1180, size: 64, offset: 576)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1405, file: !1186, line: 591, baseType: !1180, size: 64, offset: 640)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1405, file: !1186, line: 597, baseType: !1440, size: 64, offset: 704)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!120, !1192, !186, !180, !120, !120}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1405, file: !1186, line: 603, baseType: !1444, size: 64, offset: 768)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!524, !1192}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1405, file: !1186, line: 613, baseType: !1448, size: 64, offset: 832)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!120, !1192, !1451}
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !36, line: 717, flags: DIFlagFwdDecl)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1405, file: !1186, line: 625, baseType: !1454, size: 64, offset: 896)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!1451, !1192, !186}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1405, file: !1186, line: 633, baseType: !1458, size: 64, offset: 960)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!1072, !1192, !186}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1193, file: !36, line: 697, baseType: !186, size: 64, offset: 1024)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1193, file: !36, line: 699, baseType: !238, size: 64, offset: 1088)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1193, file: !36, line: 700, baseType: !180, size: 64, offset: 1152)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1193, file: !36, line: 711, baseType: !300, size: 64, offset: 1216)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1193, file: !36, line: 717, baseType: !1451, size: 64, offset: 1280)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1193, file: !36, line: 722, baseType: !1467, offset: 1344)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !36, line: 570, elements: !1226)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1189, file: !1186, line: 515, baseType: !891, size: 32, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1189, file: !1186, line: 516, baseType: !186, size: 64, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1189, file: !1186, line: 517, baseType: !186, size: 64, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1189, file: !1186, line: 518, baseType: !186, size: 64, offset: 256)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1185, file: !1186, line: 520, baseType: !35, size: 32, offset: 320)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1185, file: !1186, line: 522, baseType: !1474, size: 64, offset: 384)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1246, line: 22, baseType: !1476)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1246, line: 22, size: 64, elements: !1477)
!1477 = !{!1478}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1476, file: !1246, line: 22, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1246, line: 15, baseType: !186)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1185, file: !1186, line: 524, baseType: !1481, size: 64, offset: 448)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1241, line: 372, baseType: !1483)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1241, line: 372, size: 64, elements: !1484)
!1484 = !{!1485}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1483, file: !1241, line: 372, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1246, line: 16, baseType: !186)
!1487 = !DIDerivedType(tag: DW_TAG_member, scope: !1185, file: !1186, line: 527, baseType: !1488, size: 64, offset: 512)
!1488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1185, file: !1186, line: 527, size: 64, elements: !1489)
!1489 = !{!1490, !1496}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1488, file: !1186, line: 528, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1246, line: 21, baseType: !1492)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1246, line: 21, size: 64, elements: !1493)
!1493 = !{!1494}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1492, file: !1246, line: 21, baseType: !1495, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1246, line: 14, baseType: !186)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1488, file: !1186, line: 529, baseType: !1475, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1185, file: !1186, line: 534, baseType: !1072, size: 64, offset: 576)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1185, file: !1186, line: 535, baseType: !1072, size: 64, offset: 640)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1185, file: !1186, line: 541, baseType: !1500, size: 64, offset: 704)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1185, file: !1186, line: 545, baseType: !1502, size: 64, offset: 768)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1185, file: !1186, line: 549, baseType: !1504, size: 64, offset: 832)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1241, line: 520, baseType: !1072)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1173, file: !28, line: 100, baseType: !1506, size: 64, offset: 128)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!120, !1122, !186, !186, !120}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1123, file: !28, line: 134, baseType: !180, size: 64, offset: 960)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1123, file: !28, line: 135, baseType: !120, size: 32, offset: 1024)
!1511 = !DIDerivedType(tag: DW_TAG_member, scope: !1123, file: !28, line: 136, baseType: !1512, size: 128, offset: 1088)
!1512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1123, file: !28, line: 136, size: 128, elements: !1513)
!1513 = !{!1514, !1520}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1512, file: !28, line: 137, baseType: !1515, size: 128)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1516, line: 6, size: 128, elements: !1517)
!1516 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1517 = !{!1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1515, file: !1516, line: 7, baseType: !206, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1515, file: !1516, line: 8, baseType: !206, size: 64, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, scope: !1512, file: !28, line: 138, baseType: !1521)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1512, file: !28, line: 138, elements: !1522)
!1522 = !{!1523, !1525}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1521, file: !28, line: 138, baseType: !1524)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1521, file: !28, line: 138, elements: !1226)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1521, file: !28, line: 138, baseType: !1526)
!1526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1515, elements: !394)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1119, file: !36, line: 147, baseType: !180, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1077, file: !36, line: 161, baseType: !251, size: 128, align: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !36, line: 164, baseType: !1530, size: 32, offset: 384)
!1530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1073, file: !36, line: 164, size: 32, elements: !1531)
!1531 = !{!1532, !1533}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1530, file: !36, line: 169, baseType: !229, size: 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1530, file: !36, line: 177, baseType: !7, size: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1073, file: !36, line: 181, baseType: !229, size: 32, offset: 416)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !65, line: 309, flags: DIFlagFwdDecl)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1066, file: !65, line: 406, baseType: !1538, size: 64, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!120, !238, !1541}
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !36, line: 293, size: 1536, elements: !1543)
!1543 = !{!1544, !1574, !1588}
!1544 = !DIDerivedType(tag: DW_TAG_member, scope: !1542, file: !36, line: 295, baseType: !1545, size: 512)
!1545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1542, file: !36, line: 295, size: 512, elements: !1546)
!1546 = !{!1547, !1573}
!1547 = !DIDerivedType(tag: DW_TAG_member, scope: !1545, file: !36, line: 296, baseType: !1548, size: 448)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1545, file: !36, line: 296, size: 448, elements: !1549)
!1549 = !{!1550, !1551, !1560, !1561, !1562, !1571, !1572}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1548, file: !36, line: 298, baseType: !186, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, scope: !1548, file: !36, line: 299, baseType: !1552, size: 128, offset: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1548, file: !36, line: 299, size: 128, elements: !1553)
!1553 = !{!1554, !1555}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1552, file: !36, line: 300, baseType: !322, size: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, scope: !1552, file: !36, line: 302, baseType: !1556, size: 128)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1552, file: !36, line: 302, size: 128, elements: !1557)
!1557 = !{!1558, !1559}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1556, file: !36, line: 303, baseType: !180, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1556, file: !36, line: 305, baseType: !7, size: 32, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1548, file: !36, line: 310, baseType: !1045, size: 64, offset: 192)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1548, file: !36, line: 311, baseType: !186, size: 64, offset: 256)
!1562 = !DIDerivedType(tag: DW_TAG_member, scope: !1548, file: !36, line: 312, baseType: !1563, size: 64, offset: 320)
!1563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1548, file: !36, line: 312, size: 64, elements: !1564)
!1564 = !{!1565, !1566}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1563, file: !36, line: 313, baseType: !180, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1563, file: !36, line: 314, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !36, line: 257, baseType: !1568)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 255, size: 64, elements: !1569)
!1569 = !{!1570}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1568, file: !36, line: 256, baseType: !186, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1548, file: !36, line: 316, baseType: !229, size: 32, offset: 384)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1548, file: !36, line: 317, baseType: !229, size: 32, offset: 416)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1545, file: !36, line: 323, baseType: !1073, size: 512, align: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, scope: !1542, file: !36, line: 325, baseType: !1575, size: 512, offset: 512)
!1575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1542, file: !36, line: 325, size: 512, elements: !1576)
!1576 = !{!1577, !1587}
!1577 = !DIDerivedType(tag: DW_TAG_member, scope: !1575, file: !36, line: 326, baseType: !1578, size: 320)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1575, file: !36, line: 326, size: 320, elements: !1579)
!1579 = !{!1580, !1581, !1582, !1583, !1584, !1585, !1586}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1578, file: !36, line: 327, baseType: !186, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1578, file: !36, line: 328, baseType: !186, size: 64, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1578, file: !36, line: 329, baseType: !186, size: 64, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1578, file: !36, line: 331, baseType: !229, size: 32, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1578, file: !36, line: 332, baseType: !229, size: 32, offset: 224)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1578, file: !36, line: 333, baseType: !229, size: 32, offset: 256)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1578, file: !36, line: 335, baseType: !7, size: 32, offset: 288)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1575, file: !36, line: 339, baseType: !1073, size: 512, align: 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, scope: !1542, file: !36, line: 341, baseType: !1589, size: 512, offset: 1024)
!1589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1542, file: !36, line: 341, size: 512, elements: !1590)
!1590 = !{!1591, !1600, !1606}
!1591 = !DIDerivedType(tag: DW_TAG_member, scope: !1589, file: !36, line: 342, baseType: !1592, size: 384)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1589, file: !36, line: 342, size: 384, elements: !1593)
!1593 = !{!1594, !1595, !1596, !1597, !1598, !1599}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1592, file: !36, line: 343, baseType: !186, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1592, file: !36, line: 344, baseType: !186, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1592, file: !36, line: 346, baseType: !180, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1592, file: !36, line: 347, baseType: !180, size: 64, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1592, file: !36, line: 348, baseType: !180, size: 64, offset: 256)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1592, file: !36, line: 349, baseType: !180, size: 64, offset: 320)
!1600 = !DIDerivedType(tag: DW_TAG_member, scope: !1589, file: !36, line: 352, baseType: !1601, size: 256)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1589, file: !36, line: 352, size: 256, elements: !1602)
!1602 = !{!1603, !1604, !1605}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1601, file: !36, line: 353, baseType: !186, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1601, file: !36, line: 354, baseType: !186, size: 64, offset: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1601, file: !36, line: 356, baseType: !322, size: 128, offset: 128)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1589, file: !36, line: 359, baseType: !1073, size: 512, align: 128)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1066, file: !65, line: 409, baseType: !1608, size: 64, offset: 128)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!120, !1045, !1535}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1066, file: !65, line: 412, baseType: !1612, size: 64, offset: 192)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!210, !1045, !1541}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1066, file: !65, line: 414, baseType: !1616, size: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{null, !1619}
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !65, line: 310, flags: DIFlagFwdDecl)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1066, file: !65, line: 416, baseType: !1622, size: 64, offset: 320)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!120, !238, !1045, !328, !7, !1625, !1626}
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1066, file: !65, line: 419, baseType: !1628, size: 64, offset: 384)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!120, !238, !1045, !328, !7, !7, !1072, !180}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1066, file: !65, line: 424, baseType: !1632, size: 64, offset: 448)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!1635, !1045, !1635}
!1635 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !189, line: 131, baseType: !206)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1066, file: !65, line: 425, baseType: !1637, size: 64, offset: 512)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{null, !1541, !188, !188}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1066, file: !65, line: 426, baseType: !1641, size: 64, offset: 576)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!210, !1541, !891}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1066, file: !65, line: 427, baseType: !1645, size: 64, offset: 640)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{null, !1541}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1066, file: !65, line: 428, baseType: !1649, size: 64, offset: 704)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!839, !1652, !1674}
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !65, line: 373, size: 384, elements: !1654)
!1654 = !{!1655, !1656, !1657, !1661, !1662, !1663, !1664}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1653, file: !65, line: 374, baseType: !238, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1653, file: !65, line: 375, baseType: !328, size: 64, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1653, file: !65, line: 376, baseType: !1658, size: 64, offset: 128)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{null, !1652, !800}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1653, file: !65, line: 377, baseType: !180, size: 64, offset: 192)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1653, file: !65, line: 378, baseType: !120, size: 32, offset: 256)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1653, file: !65, line: 379, baseType: !293, size: 16, offset: 288)
!1664 = !DIDerivedType(tag: DW_TAG_member, scope: !1653, file: !65, line: 380, baseType: !1665, size: 64, offset: 320)
!1665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1653, file: !65, line: 380, size: 64, elements: !1666)
!1666 = !{!1667, !1670}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1665, file: !65, line: 386, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !65, line: 386, flags: DIFlagFwdDecl)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1665, file: !65, line: 395, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!839, !180}
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1676, line: 17, flags: DIFlagFwdDecl)
!1676 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1066, file: !65, line: 433, baseType: !1678, size: 64, offset: 768)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!120, !1045, !1541, !1541, !51}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1066, file: !65, line: 435, baseType: !1682, size: 64, offset: 832)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!120, !1541}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1066, file: !65, line: 436, baseType: !1686, size: 64, offset: 896)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!210, !1541, !188, !188}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1066, file: !65, line: 438, baseType: !1690, size: 64, offset: 960)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{null, !1541, !1693, !1693}
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1066, file: !65, line: 439, baseType: !1695, size: 64, offset: 1024)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!120, !1045, !1072}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1066, file: !65, line: 442, baseType: !1699, size: 64, offset: 1088)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!120, !1702, !238, !1704}
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !65, line: 66, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1066, file: !65, line: 444, baseType: !1706, size: 64, offset: 1152)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{null, !238}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1066, file: !65, line: 445, baseType: !1710, size: 64, offset: 1216)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!120, !1652, !1674}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1046, file: !65, line: 486, baseType: !186, size: 64, offset: 896)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1046, file: !65, line: 487, baseType: !464, size: 320, offset: 960)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1046, file: !65, line: 488, baseType: !1716, size: 32, offset: 1280)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1717, line: 8, baseType: !195)
!1717 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1046, file: !65, line: 489, baseType: !261, size: 32, offset: 1312)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1046, file: !65, line: 490, baseType: !322, size: 128, offset: 1344)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1046, file: !65, line: 491, baseType: !180, size: 64, offset: 1472)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1036, file: !1005, line: 180, baseType: !1722, size: 64, offset: 320)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!839, !238, !947, !1035, !534, !328, !188}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1036, file: !1005, line: 182, baseType: !1722, size: 64, offset: 384)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1036, file: !1005, line: 184, baseType: !1727, size: 64, offset: 448)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!120, !238, !947, !1035, !1192}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1024, file: !1005, line: 90, baseType: !1731, size: 64, offset: 192)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1024, file: !1005, line: 91, baseType: !1733, size: 64, offset: 256)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !995, file: !942, line: 120, baseType: !1735, size: 64, offset: 192)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!1738, !965}
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1740)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !59, line: 39, size: 384, elements: !1741)
!1741 = !{!1742, !1743, !1747, !1751, !1757, !1761}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1740, file: !59, line: 40, baseType: !58, size: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1740, file: !59, line: 41, baseType: !1744, size: 64, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!210}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1740, file: !59, line: 42, baseType: !1748, size: 64, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!180}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1740, file: !59, line: 43, baseType: !1752, size: 64, offset: 192)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!1321, !1755}
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !59, line: 19, flags: DIFlagFwdDecl)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1740, file: !59, line: 44, baseType: !1758, size: 64, offset: 256)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!1321}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1740, file: !59, line: 45, baseType: !717, size: 64, offset: 320)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !995, file: !942, line: 121, baseType: !1763, size: 64, offset: 256)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!1321, !965}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !995, file: !942, line: 122, baseType: !1767, size: 64, offset: 320)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{null, !965, !1770, !1771}
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !941, file: !942, line: 70, baseType: !1773, size: 64, offset: 384)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1775, line: 190, size: 1152, elements: !1776)
!1775 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1776 = !{!1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1899, !1900, !1901, !1902, !1903, !1906}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1774, file: !1775, line: 191, baseType: !229, size: 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1774, file: !1775, line: 192, baseType: !229, size: 32, offset: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1774, file: !1775, line: 202, baseType: !1773, size: 64, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1774, file: !1775, line: 203, baseType: !524, size: 64, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1774, file: !1775, line: 205, baseType: !456, size: 192, align: 64, offset: 192)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1774, file: !1775, line: 207, baseType: !1321, size: 64, offset: 384)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1774, file: !1775, line: 208, baseType: !7, size: 32, offset: 448)
!1784 = !DIDerivedType(tag: DW_TAG_member, scope: !1774, file: !1775, line: 209, baseType: !1785, size: 256, offset: 512)
!1785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1774, file: !1775, line: 209, size: 256, elements: !1786)
!1786 = !{!1787, !1796, !1800}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1785, file: !1775, line: 210, baseType: !1788, size: 256)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1775, line: 153, size: 256, elements: !1789)
!1789 = !{!1790, !1791, !1792, !1795}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1788, file: !1775, line: 154, baseType: !186, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1788, file: !1775, line: 156, baseType: !1057, size: 64, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1788, file: !1775, line: 162, baseType: !1793, size: 64, offset: 128)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1775, line: 162, flags: DIFlagFwdDecl)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1788, file: !1775, line: 167, baseType: !186, size: 64, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1785, file: !1775, line: 211, baseType: !1797, size: 64)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1775, line: 170, size: 64, elements: !1798)
!1798 = !{!1799}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1797, file: !1775, line: 171, baseType: !1773, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1785, file: !1775, line: 212, baseType: !1801, size: 256)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1775, line: 174, size: 256, elements: !1802)
!1802 = !{!1803, !1894, !1897, !1898}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1801, file: !1775, line: 175, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1806)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1775, line: 271, size: 768, elements: !1807)
!1807 = !{!1808, !1867, !1871, !1872, !1873, !1874, !1875, !1879, !1880, !1881, !1882, !1890}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1806, file: !1775, line: 276, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!120, !1812}
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1775, line: 251, size: 1216, elements: !1814)
!1814 = !{!1815, !1816, !1817, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1813, file: !1775, line: 253, baseType: !1773, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1813, file: !1775, line: 254, baseType: !238, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1813, file: !1775, line: 255, baseType: !1818, size: 64, offset: 128)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1820, line: 17, size: 960, elements: !1821)
!1820 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1821 = !{!1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1852, !1853, !1856}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1819, file: !1820, line: 18, baseType: !534, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1819, file: !1820, line: 19, baseType: !188, size: 64, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1819, file: !1820, line: 20, baseType: !188, size: 64, offset: 128)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1819, file: !1820, line: 21, baseType: !188, size: 64, offset: 192)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1819, file: !1820, line: 22, baseType: !188, size: 64, offset: 256)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1819, file: !1820, line: 23, baseType: !328, size: 64, offset: 320)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1819, file: !1820, line: 24, baseType: !328, size: 64, offset: 384)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1819, file: !1820, line: 25, baseType: !310, size: 256, offset: 448)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1819, file: !1820, line: 26, baseType: !1831, size: 64, offset: 704)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1833)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1820, line: 32, size: 256, elements: !1834)
!1834 = !{!1835, !1840, !1844, !1848}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1833, file: !1820, line: 33, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!180, !1818, !1839}
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1833, file: !1820, line: 34, baseType: !1841, size: 64, offset: 64)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{null, !1818, !180}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1833, file: !1820, line: 35, baseType: !1845, size: 64, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!180, !1818, !180, !1839}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1833, file: !1820, line: 36, baseType: !1849, size: 64, offset: 192)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!120, !1818, !180}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1819, file: !1820, line: 27, baseType: !120, size: 32, offset: 768)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1819, file: !1820, line: 28, baseType: !1854, size: 64, offset: 832)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1819, file: !1820, line: 29, baseType: !180, size: 64, offset: 896)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1813, file: !1775, line: 256, baseType: !180, size: 64, offset: 192)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1813, file: !1775, line: 259, baseType: !310, size: 256, offset: 256)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1813, file: !1775, line: 260, baseType: !310, size: 256, offset: 512)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1813, file: !1775, line: 261, baseType: !120, size: 32, offset: 768)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1813, file: !1775, line: 262, baseType: !322, size: 128, offset: 832)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1813, file: !1775, line: 263, baseType: !534, size: 64, offset: 960)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1813, file: !1775, line: 265, baseType: !188, size: 64, offset: 1024)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1813, file: !1775, line: 266, baseType: !210, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1813, file: !1775, line: 267, baseType: !210, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1813, file: !1775, line: 268, baseType: !1403, size: 64, offset: 1152)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1806, file: !1775, line: 277, baseType: !1868, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{null, !1812}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1806, file: !1775, line: 290, baseType: !1849, size: 64, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1806, file: !1775, line: 292, baseType: !1836, size: 64, offset: 192)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1806, file: !1775, line: 293, baseType: !1845, size: 64, offset: 256)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1806, file: !1775, line: 294, baseType: !1841, size: 64, offset: 320)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1806, file: !1775, line: 296, baseType: !1876, size: 64, offset: 384)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!839, !1812, !534, !188, !328}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1806, file: !1775, line: 306, baseType: !188, size: 64, offset: 448)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1806, file: !1775, line: 313, baseType: !210, size: 8, offset: 512)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1806, file: !1775, line: 314, baseType: !1876, size: 64, offset: 576)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1806, file: !1775, line: 317, baseType: !1883, size: 64, offset: 640)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!1886, !1812, !1888}
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1887, line: 59, baseType: !7)
!1887 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !65, line: 61, flags: DIFlagFwdDecl)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1806, file: !1775, line: 320, baseType: !1891, size: 64, offset: 704)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!120, !1812, !1192}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1801, file: !1775, line: 176, baseType: !1895, size: 64, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1775, line: 35, flags: DIFlagFwdDecl)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1801, file: !1775, line: 177, baseType: !328, size: 64, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1801, file: !1775, line: 178, baseType: !1773, size: 64, offset: 192)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1774, file: !1775, line: 215, baseType: !180, size: 64, offset: 768)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1774, file: !1775, line: 221, baseType: !206, size: 64, offset: 832)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1774, file: !1775, line: 223, baseType: !295, size: 16, offset: 896)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1774, file: !1775, line: 224, baseType: !689, size: 16, offset: 912)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1774, file: !1775, line: 225, baseType: !1904, size: 64, offset: 960)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1775, line: 36, flags: DIFlagFwdDecl)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1774, file: !1775, line: 227, baseType: !251, size: 128, align: 64, offset: 1024)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !941, file: !942, line: 71, baseType: !221, size: 32, offset: 448)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !941, file: !942, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !941, file: !942, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !941, file: !942, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !941, file: !942, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !941, file: !942, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !938, file: !21, line: 47, baseType: !928, size: 64, offset: 512)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !938, file: !21, line: 48, baseType: !947, size: 64, offset: 576)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !938, file: !21, line: 49, baseType: !1916, size: 64, offset: 640)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !21, line: 49, flags: DIFlagFwdDecl)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !938, file: !21, line: 50, baseType: !1919, size: 64, offset: 704)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !929, file: !21, line: 418, baseType: !1921, size: 64, offset: 1408)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !21, line: 53, size: 448, elements: !1923)
!1923 = !{!1924, !1925, !1930, !1934, !1938, !1942}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1922, file: !21, line: 54, baseType: !1012, size: 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1922, file: !21, line: 55, baseType: !1926, size: 64, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!839, !1921, !1929, !534}
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1922, file: !21, line: 57, baseType: !1931, size: 64, offset: 192)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!839, !1921, !1929, !524, !188}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1922, file: !21, line: 59, baseType: !1935, size: 64, offset: 256)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{null, !928, !524}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1922, file: !21, line: 60, baseType: !1939, size: 64, offset: 320)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!120, !928}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1922, file: !21, line: 61, baseType: !1943, size: 64, offset: 384)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{null, !928}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !929, file: !21, line: 419, baseType: !524, size: 64, offset: 1472)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !929, file: !21, line: 420, baseType: !524, size: 64, offset: 1536)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !929, file: !21, line: 421, baseType: !947, size: 64, offset: 1600)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !929, file: !21, line: 424, baseType: !1950, size: 64, offset: 1664)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1952)
!1952 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !21, line: 424, flags: DIFlagFwdDecl)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !929, file: !21, line: 425, baseType: !1954, size: 64, offset: 1728)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !929, file: !21, line: 426, baseType: !7, size: 32, offset: 1792)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !929, file: !21, line: 435, baseType: !310, size: 256, offset: 1856)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !929, file: !21, line: 437, baseType: !1959, size: 64, offset: 2112)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1961, line: 69, size: 320, elements: !1962)
!1961 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1962 = !{!1963, !1964, !1965, !1982, !1984, !1988, !1989}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1960, file: !1961, line: 70, baseType: !524, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1960, file: !1961, line: 71, baseType: !928, size: 64, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1960, file: !1961, line: 72, baseType: !1966, size: 64, offset: 128)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1968)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1961, line: 47, size: 256, elements: !1969)
!1969 = !{!1970, !1971, !1977, !1981}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1968, file: !1961, line: 49, baseType: !7, size: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1968, file: !1961, line: 51, baseType: !1972, size: 64, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!120, !524, !1975}
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1960)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1968, file: !1961, line: 53, baseType: !1978, size: 64, offset: 128)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!120, !534, !1975}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1968, file: !1961, line: 55, baseType: !717, size: 64, offset: 192)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1960, file: !1961, line: 73, baseType: !1983, size: 16, offset: 192)
!1983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !293)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1960, file: !1961, line: 74, baseType: !1985, size: 8, offset: 208)
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !196, line: 16, baseType: !1986)
!1986 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !198, line: 20, baseType: !1987)
!1987 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1960, file: !1961, line: 75, baseType: !285, size: 8, offset: 216)
!1989 = !DIDerivedType(tag: DW_TAG_member, scope: !1960, file: !1961, line: 76, baseType: !1990, size: 64, offset: 256)
!1990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1960, file: !1961, line: 76, size: 64, elements: !1991)
!1991 = !{!1992, !1993, !2000}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1990, file: !1961, line: 77, baseType: !180, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1990, file: !1961, line: 78, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1996)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1961, line: 86, size: 128, elements: !1997)
!1997 = !{!1998, !1999}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1996, file: !1961, line: 87, baseType: !7, size: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1996, file: !1961, line: 88, baseType: !534, size: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1990, file: !1961, line: 79, baseType: !2001, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2003)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1961, line: 92, size: 256, elements: !2004)
!2004 = !{!2005, !2006, !2007, !2009, !2010}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2003, file: !1961, line: 94, baseType: !7, size: 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2003, file: !1961, line: 95, baseType: !7, size: 32, offset: 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2003, file: !1961, line: 96, baseType: !2008, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2003, file: !1961, line: 97, baseType: !1966, size: 64, offset: 128)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2003, file: !1961, line: 98, baseType: !180, size: 64, offset: 192)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !929, file: !21, line: 438, baseType: !7, size: 32, offset: 2176)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !929, file: !21, line: 441, baseType: !7, size: 32, offset: 2208)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !929, file: !21, line: 442, baseType: !1950, size: 64, offset: 2240)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !929, file: !21, line: 443, baseType: !1954, size: 64, offset: 2304)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !929, file: !21, line: 444, baseType: !210, size: 8, offset: 2368)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !929, file: !21, line: 451, baseType: !210, size: 8, offset: 2376)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !929, file: !21, line: 454, baseType: !7, size: 32, offset: 2400)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !929, file: !21, line: 455, baseType: !2019, size: 64, offset: 2432)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2021, line: 23, size: 96, elements: !2022)
!2021 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2022 = !{!2023, !2024, !2025}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2020, file: !2021, line: 24, baseType: !120, size: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2020, file: !2021, line: 24, baseType: !120, size: 32, offset: 32)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2020, file: !2021, line: 24, baseType: !120, size: 32, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !929, file: !21, line: 458, baseType: !2027, size: 64, offset: 2496)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!120}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !929, file: !21, line: 460, baseType: !2031, size: 4032, align: 512, offset: 2560)
!2031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2032, size: 4032, elements: !2048)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !21, line: 362, size: 576, elements: !2033)
!2033 = !{!2034, !2035, !2036}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2032, file: !21, line: 363, baseType: !180, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2032, file: !21, line: 364, baseType: !7, size: 32, offset: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2032, file: !21, line: 367, baseType: !2037, size: 448, offset: 128)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !21, line: 319, size: 448, elements: !2038)
!2038 = !{!2039, !2040}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2037, file: !21, line: 320, baseType: !928, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2037, file: !21, line: 321, baseType: !2041, size: 384, offset: 64)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2042, line: 40, size: 384, elements: !2043)
!2042 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2043 = !{!2044}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2041, file: !2042, line: 41, baseType: !2045, size: 384, align: 64)
!2045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 384, align: 64, elements: !2046)
!2046 = !{!2047}
!2047 = !DISubrange(count: 2)
!2048 = !{!2049}
!2049 = !DISubrange(count: 7)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !929, file: !21, line: 463, baseType: !2051, size: 192, offset: 6592)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2052, line: 8, size: 192, elements: !2053)
!2052 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2053 = !{!2054, !2055, !2057}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2051, file: !2052, line: 10, baseType: !7, size: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2051, file: !2052, line: 11, baseType: !2056, size: 64, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2051, file: !2052, line: 12, baseType: !2058, size: 64, offset: 128)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2060, line: 59, size: 48, elements: !2061)
!2060 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2061 = !{!2062, !2063, !2064, !2065, !2066, !2067}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2059, file: !2060, line: 60, baseType: !1338, size: 16)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2059, file: !2060, line: 61, baseType: !1338, size: 16, offset: 16)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2059, file: !2060, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2059, file: !2060, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2059, file: !2060, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2059, file: !2060, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !929, file: !21, line: 465, baseType: !186, size: 64, offset: 6784)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !929, file: !21, line: 469, baseType: !7, size: 32, offset: 6848)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !929, file: !21, line: 470, baseType: !322, size: 128, offset: 6912)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !929, file: !21, line: 471, baseType: !2072, size: 64, offset: 7040)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2074, line: 33, size: 96, elements: !2075)
!2074 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2075 = !{!2076, !2077, !2078, !2079}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2073, file: !2074, line: 37, baseType: !120, size: 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2073, file: !2074, line: 43, baseType: !120, size: 32, offset: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2073, file: !2074, line: 45, baseType: !295, size: 16, offset: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2073, file: !2074, line: 47, baseType: !295, size: 16, offset: 80)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !929, file: !21, line: 476, baseType: !2081, size: 64, offset: 7104)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !21, line: 378, size: 256, elements: !2083)
!2083 = !{!2084, !2100, !2101, !2102}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2082, file: !21, line: 379, baseType: !2085, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2087, line: 204, baseType: !2088)
!2087 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2087, line: 197, size: 192, elements: !2089)
!2089 = !{!2090, !2092, !2093, !2094, !2096, !2098}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2088, file: !2087, line: 198, baseType: !2091, size: 32)
!2091 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2087, line: 21, baseType: !197)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2088, file: !2087, line: 199, baseType: !287, size: 8, offset: 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2088, file: !2087, line: 200, baseType: !287, size: 8, offset: 40)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2088, file: !2087, line: 201, baseType: !2095, size: 16, offset: 48)
!2095 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2087, line: 17, baseType: !294)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2088, file: !2087, line: 202, baseType: !2097, size: 64, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2087, line: 16, baseType: !207)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2088, file: !2087, line: 203, baseType: !2099, size: 64, offset: 128)
!2099 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2087, line: 22, baseType: !207)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2082, file: !21, line: 380, baseType: !7, size: 32, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2082, file: !21, line: 381, baseType: !534, size: 64, offset: 128)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2082, file: !21, line: 382, baseType: !534, size: 64, offset: 192)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !929, file: !21, line: 477, baseType: !2082, size: 256, offset: 7168)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !929, file: !21, line: 480, baseType: !2105, size: 64, offset: 7424)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !21, line: 480, flags: DIFlagFwdDecl)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !929, file: !21, line: 483, baseType: !2108, size: 64, offset: 7488)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !21, line: 483, flags: DIFlagFwdDecl)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !929, file: !21, line: 488, baseType: !534, size: 64, offset: 7552)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !929, file: !21, line: 492, baseType: !180, size: 64, offset: 7616)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !929, file: !21, line: 493, baseType: !7, size: 32, offset: 7680)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !929, file: !21, line: 495, baseType: !180, size: 64, offset: 7744)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !929, file: !21, line: 496, baseType: !7, size: 32, offset: 7808)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !929, file: !21, line: 499, baseType: !7, size: 32, offset: 7840)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !929, file: !21, line: 500, baseType: !2117, size: 64, offset: 7872)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2119, line: 45, baseType: !2120)
!2119 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !929, file: !21, line: 503, baseType: !7, size: 32, offset: 7936)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !929, file: !21, line: 504, baseType: !2123, size: 64, offset: 8000)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2126, line: 96, size: 192, elements: !2127)
!2126 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2127 = !{!2128, !2129, !2183, !2186}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2125, file: !2126, line: 97, baseType: !7, size: 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2125, file: !2126, line: 98, baseType: !2130, size: 64, offset: 64)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2126, line: 24, size: 3072, elements: !2132)
!2132 = !{!2133, !2135, !2136, !2137, !2138, !2152, !2153, !2154, !2155, !2167, !2168, !2169, !2180, !2181, !2182}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2131, file: !2126, line: 26, baseType: !2134, size: 128)
!2134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 128, elements: !2046)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2131, file: !2126, line: 27, baseType: !2134, size: 128, offset: 128)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2131, file: !2126, line: 28, baseType: !120, size: 32, offset: 256)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2131, file: !2126, line: 31, baseType: !261, size: 32, align: 512, offset: 512)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2131, file: !2126, line: 32, baseType: !2139, size: 960, offset: 576)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2140, line: 206, size: 960, elements: !2141)
!2140 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2141 = !{!2142, !2143, !2146, !2148, !2149, !2151}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2139, file: !2140, line: 207, baseType: !254, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2139, file: !2140, line: 208, baseType: !2144, size: 256, offset: 64)
!2144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2145, size: 256, elements: !375)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2139, file: !2140, line: 209, baseType: !2147, size: 256, offset: 320)
!2147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 256, elements: !375)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2139, file: !2140, line: 213, baseType: !800, size: 64, offset: 576)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2139, file: !2140, line: 215, baseType: !2150, size: 256, offset: 640)
!2150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 256, elements: !375)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2139, file: !2140, line: 216, baseType: !285, size: 8, offset: 896)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2131, file: !2126, line: 33, baseType: !186, size: 64, offset: 1536)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2131, file: !2126, line: 34, baseType: !186, size: 64, offset: 1600)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2131, file: !2126, line: 35, baseType: !210, size: 8, offset: 1664)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2131, file: !2126, line: 36, baseType: !2156, size: 320, offset: 1728)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2157, line: 11, size: 320, elements: !2158)
!2157 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2158 = !{!2159, !2160, !2161, !2166}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2156, file: !2157, line: 16, baseType: !370, size: 128)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2156, file: !2157, line: 17, baseType: !186, size: 64, offset: 128)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2156, file: !2157, line: 18, baseType: !2162, size: 64, offset: 192)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{null, !2165}
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2156, file: !2157, line: 19, baseType: !195, size: 32, offset: 256)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2131, file: !2126, line: 37, baseType: !1360, size: 256, offset: 2048)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2131, file: !2126, line: 38, baseType: !251, size: 128, align: 64, offset: 2304)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2131, file: !2126, line: 39, baseType: !2170, size: 64, offset: 2432)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2126, line: 49, size: 768, elements: !2172)
!2172 = !{!2173, !2174, !2175, !2176, !2177, !2178, !2179}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2171, file: !2126, line: 50, baseType: !261, size: 32)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2171, file: !2126, line: 51, baseType: !2147, size: 256, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2171, file: !2126, line: 53, baseType: !2147, size: 256, offset: 320)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2171, file: !2126, line: 54, baseType: !186, size: 64, offset: 576)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2171, file: !2126, line: 55, baseType: !2170, size: 64, offset: 640)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2171, file: !2126, line: 56, baseType: !120, size: 32, offset: 704)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2171, file: !2126, line: 57, baseType: !120, size: 32, offset: 736)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2131, file: !2126, line: 40, baseType: !186, size: 64, offset: 2496)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2131, file: !2126, line: 42, baseType: !120, size: 32, offset: 2560)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2131, file: !2126, line: 43, baseType: !2124, size: 64, offset: 2624)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2125, file: !2126, line: 99, baseType: !2184, offset: 128)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2185, line: 211, elements: !1226)
!2185 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2125, file: !2126, line: 100, baseType: !2187, size: 64, offset: 128)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2126, line: 63, size: 3008, elements: !2189)
!2189 = !{!2190, !2191, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2221}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2188, file: !2126, line: 64, baseType: !2170, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2188, file: !2126, line: 65, baseType: !2192, size: 192, offset: 64)
!2192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2170, size: 192, elements: !354)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2188, file: !2126, line: 67, baseType: !120, size: 32, offset: 256)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2188, file: !2126, line: 68, baseType: !310, size: 256, offset: 320)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2188, file: !2126, line: 69, baseType: !261, size: 32, offset: 576)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2188, file: !2126, line: 70, baseType: !310, size: 256, offset: 640)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2188, file: !2126, line: 71, baseType: !186, size: 64, offset: 896)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2188, file: !2126, line: 72, baseType: !186, size: 64, offset: 960)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2188, file: !2126, line: 73, baseType: !186, size: 64, offset: 1024)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2188, file: !2126, line: 74, baseType: !186, size: 64, offset: 1088)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2188, file: !2126, line: 75, baseType: !186, size: 64, offset: 1152)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2188, file: !2126, line: 76, baseType: !186, size: 64, offset: 1216)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2188, file: !2126, line: 77, baseType: !186, size: 64, offset: 1280)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2188, file: !2126, line: 78, baseType: !186, size: 64, offset: 1344)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2188, file: !2126, line: 79, baseType: !210, size: 8, offset: 1408)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2188, file: !2126, line: 80, baseType: !186, size: 64, offset: 1472)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2188, file: !2126, line: 81, baseType: !310, size: 256, offset: 1536)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2188, file: !2126, line: 82, baseType: !1157, size: 256, offset: 1792)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2188, file: !2126, line: 84, baseType: !229, size: 32, offset: 2048)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2188, file: !2126, line: 87, baseType: !186, size: 64, offset: 2112)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2188, file: !2126, line: 88, baseType: !186, size: 64, offset: 2176)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2188, file: !2126, line: 89, baseType: !2213, size: 704, offset: 2240)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1361, line: 111, size: 704, elements: !2214)
!2214 = !{!2215, !2216, !2217, !2220}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2213, file: !1361, line: 112, baseType: !1360, size: 256)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2213, file: !1361, line: 113, baseType: !2156, size: 320, offset: 256)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2213, file: !1361, line: 116, baseType: !2218, size: 64, offset: 576)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1361, line: 18, flags: DIFlagFwdDecl)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2213, file: !1361, line: 117, baseType: !120, size: 32, offset: 640)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2188, file: !2126, line: 90, baseType: !2124, size: 64, offset: 2944)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !929, file: !21, line: 515, baseType: !2223, size: 64, offset: 8064)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2225, line: 117, size: 128, elements: !2226)
!2225 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2226 = !{!2227, !2228, !2229}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2224, file: !2225, line: 118, baseType: !449, size: 32)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2224, file: !2225, line: 119, baseType: !449, size: 32, offset: 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2224, file: !2225, line: 120, baseType: !800, size: 64, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !929, file: !21, line: 516, baseType: !7, size: 32, offset: 8128)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !929, file: !21, line: 519, baseType: !7, size: 32, offset: 8160)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !929, file: !21, line: 520, baseType: !2233, size: 64, offset: 8192)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !929, file: !21, line: 523, baseType: !2235, size: 64, offset: 8256)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !21, line: 523, flags: DIFlagFwdDecl)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !929, file: !21, line: 524, baseType: !7, size: 32, offset: 8320)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !929, file: !21, line: 525, baseType: !2240, size: 64, offset: 8384)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !21, line: 525, flags: DIFlagFwdDecl)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !929, file: !21, line: 526, baseType: !7, size: 32, offset: 8448)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !929, file: !21, line: 533, baseType: !180, size: 64, offset: 8512)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !929, file: !21, line: 534, baseType: !7, size: 32, offset: 8576)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !929, file: !21, line: 535, baseType: !2247, size: 64, offset: 8640)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !929, file: !21, line: 536, baseType: !7, size: 32, offset: 8704)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !929, file: !21, line: 539, baseType: !120, size: 32, offset: 8736)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !929, file: !21, line: 540, baseType: !2251, size: 64, offset: 8768)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2253, line: 32, size: 64, elements: !2254)
!2253 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2254 = !{!2255, !2256}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2252, file: !2253, line: 33, baseType: !449, size: 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2252, file: !2253, line: 34, baseType: !449, size: 32, offset: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !929, file: !21, line: 563, baseType: !322, size: 128, offset: 8832)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !929, file: !21, line: 565, baseType: !322, size: 128, offset: 8960)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !929, file: !21, line: 568, baseType: !2260, size: 64, offset: 9088)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{null}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !929, file: !21, line: 570, baseType: !229, size: 32, offset: 9152)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !905, file: !65, line: 2382, baseType: !904, size: 64, offset: 448)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !905, file: !65, line: 2383, baseType: !366, size: 64, offset: 512)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !905, file: !65, line: 2385, baseType: !2267, offset: 576)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2185, line: 206, elements: !1226)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !905, file: !65, line: 2386, baseType: !2267, offset: 576)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !905, file: !65, line: 2387, baseType: !2267, offset: 576)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !905, file: !65, line: 2388, baseType: !2271, offset: 576)
!2271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2267, elements: !354)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !905, file: !65, line: 2390, baseType: !2267, offset: 576)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !905, file: !65, line: 2391, baseType: !2267, offset: 576)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !905, file: !65, line: 2392, baseType: !2267, offset: 576)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !905, file: !65, line: 2393, baseType: !2267, offset: 576)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !896, file: !65, line: 1197, baseType: !2277, size: 64, offset: 384)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2279)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !65, line: 2057, size: 1664, elements: !2280)
!2280 = !{!2281, !2285, !2289, !2290, !2294, !2298, !2302, !2303, !2304, !2308, !2312, !2316, !2317, !2318, !2324, !2328, !2329, !2333, !2334, !2335, !2336, !2340, !2344, !2391, !2406, !2407}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2279, file: !65, line: 2058, baseType: !2282, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!685, !895}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2279, file: !65, line: 2059, baseType: !2286, size: 64, offset: 64)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{null, !685}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2279, file: !65, line: 2060, baseType: !2286, size: 64, offset: 128)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2279, file: !65, line: 2062, baseType: !2291, size: 64, offset: 192)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{null, !685, !120}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2279, file: !65, line: 2063, baseType: !2295, size: 64, offset: 256)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!120, !685, !1535}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2279, file: !65, line: 2064, baseType: !2299, size: 64, offset: 320)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!120, !685}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2279, file: !65, line: 2065, baseType: !2286, size: 64, offset: 384)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2279, file: !65, line: 2066, baseType: !924, size: 64, offset: 448)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2279, file: !65, line: 2067, baseType: !2305, size: 64, offset: 512)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!120, !895, !120}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2279, file: !65, line: 2068, baseType: !2309, size: 64, offset: 576)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!120, !895, !64}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2279, file: !65, line: 2069, baseType: !2313, size: 64, offset: 640)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!120, !895}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2279, file: !65, line: 2070, baseType: !2309, size: 64, offset: 704)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2279, file: !65, line: 2071, baseType: !2313, size: 64, offset: 768)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2279, file: !65, line: 2072, baseType: !2319, size: 64, offset: 832)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!120, !645, !2322}
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !65, line: 62, flags: DIFlagFwdDecl)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2279, file: !65, line: 2073, baseType: !2325, size: 64, offset: 896)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!120, !895, !2056, !534}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2279, file: !65, line: 2074, baseType: !924, size: 64, offset: 960)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2279, file: !65, line: 2076, baseType: !2330, size: 64, offset: 1024)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!120, !1818, !645}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2279, file: !65, line: 2077, baseType: !2330, size: 64, offset: 1088)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2279, file: !65, line: 2078, baseType: !2330, size: 64, offset: 1152)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2279, file: !65, line: 2079, baseType: !2330, size: 64, offset: 1216)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2279, file: !65, line: 2081, baseType: !2337, size: 64, offset: 1280)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!839, !895, !120, !534, !188, !328}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2279, file: !65, line: 2082, baseType: !2341, size: 64, offset: 1344)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!839, !895, !120, !524, !188, !328}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2279, file: !65, line: 2083, baseType: !2345, size: 64, offset: 1408)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!2348, !685}
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !70, line: 296, size: 1664, elements: !2351)
!2351 = !{!2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2376, !2377, !2378}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2350, file: !70, line: 297, baseType: !370, size: 128)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2350, file: !70, line: 298, baseType: !322, size: 128, offset: 128)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2350, file: !70, line: 299, baseType: !322, size: 128, offset: 256)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2350, file: !70, line: 300, baseType: !322, size: 128, offset: 384)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2350, file: !70, line: 301, baseType: !310, size: 256, offset: 512)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2350, file: !70, line: 302, baseType: !261, size: 32, offset: 768)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2350, file: !70, line: 303, baseType: !229, size: 32, offset: 800)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2350, file: !70, line: 304, baseType: !895, size: 64, offset: 832)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2350, file: !70, line: 305, baseType: !2361, size: 64, offset: 896)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !70, line: 68, size: 64, elements: !2362)
!2362 = !{!2363, !2375}
!2363 = !DIDerivedType(tag: DW_TAG_member, scope: !2361, file: !70, line: 69, baseType: !2364, size: 32)
!2364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2361, file: !70, line: 69, size: 32, elements: !2365)
!2365 = !{!2366, !2367, !2368}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2364, file: !70, line: 70, baseType: !398, size: 32)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2364, file: !70, line: 71, baseType: !416, size: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2364, file: !70, line: 72, baseType: !2369, size: 32)
!2369 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2370, line: 24, baseType: !2371)
!2370 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2370, line: 22, size: 32, elements: !2372)
!2372 = !{!2373}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2371, file: !2370, line: 23, baseType: !2374, size: 32)
!2374 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2370, line: 20, baseType: !404)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2361, file: !70, line: 74, baseType: !69, size: 32, offset: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2350, file: !70, line: 306, baseType: !328, size: 64, offset: 960)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2350, file: !70, line: 307, baseType: !186, size: 64, offset: 1024)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2350, file: !70, line: 308, baseType: !2379, size: 576, offset: 1088)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !70, line: 205, size: 576, elements: !2380)
!2380 = !{!2381, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2379, file: !70, line: 206, baseType: !2382, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !70, line: 66, baseType: !308)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2379, file: !70, line: 207, baseType: !2382, size: 64, offset: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2379, file: !70, line: 208, baseType: !2382, size: 64, offset: 128)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2379, file: !70, line: 209, baseType: !2382, size: 64, offset: 192)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2379, file: !70, line: 210, baseType: !2382, size: 64, offset: 256)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2379, file: !70, line: 211, baseType: !2382, size: 64, offset: 320)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2379, file: !70, line: 212, baseType: !2382, size: 64, offset: 384)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2379, file: !70, line: 213, baseType: !480, size: 64, offset: 448)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2379, file: !70, line: 214, baseType: !480, size: 64, offset: 512)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2279, file: !65, line: 2085, baseType: !2392, size: 64, offset: 1472)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!800, !895, !2395}
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2397, line: 15, size: 256, elements: !2398)
!2397 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2398 = !{!2399, !2400, !2401, !2402, !2403}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2396, file: !2397, line: 16, baseType: !891, size: 32)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2396, file: !2397, line: 19, baseType: !120, size: 32, offset: 32)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2396, file: !2397, line: 26, baseType: !186, size: 64, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2396, file: !2397, line: 33, baseType: !186, size: 64, offset: 128)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2396, file: !2397, line: 36, baseType: !2404, size: 64, offset: 192)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !36, line: 33, flags: DIFlagFwdDecl)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2279, file: !65, line: 2087, baseType: !2392, size: 64, offset: 1536)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2279, file: !65, line: 2089, baseType: !924, size: 64, offset: 1600)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !896, file: !65, line: 1198, baseType: !2409, size: 64, offset: 448)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2411)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !70, line: 324, size: 704, elements: !2412)
!2412 = !{!2413, !2417, !2421, !2425, !2426, !2427, !2428, !2429, !2434, !2439, !2443}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2411, file: !70, line: 325, baseType: !2414, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!120, !2349}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2411, file: !70, line: 326, baseType: !2418, size: 64, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!2349, !895, !120}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2411, file: !70, line: 327, baseType: !2422, size: 64, offset: 128)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{null, !2349}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2411, file: !70, line: 328, baseType: !2414, size: 64, offset: 192)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2411, file: !70, line: 329, baseType: !2414, size: 64, offset: 256)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2411, file: !70, line: 330, baseType: !2414, size: 64, offset: 320)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2411, file: !70, line: 331, baseType: !2305, size: 64, offset: 384)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2411, file: !70, line: 334, baseType: !2430, size: 64, offset: 448)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!2433, !685}
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2411, file: !70, line: 335, baseType: !2435, size: 64, offset: 512)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!120, !685, !2438}
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2411, file: !70, line: 337, baseType: !2440, size: 64, offset: 576)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!120, !685, !2433}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2411, file: !70, line: 339, baseType: !2444, size: 64, offset: 640)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!120, !895, !2447}
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !896, file: !65, line: 1199, baseType: !2449, size: 64, offset: 512)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2451)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !70, line: 430, size: 704, elements: !2452)
!2452 = !{!2453, !2457, !2458, !2462, !2463, !2464, !2479, !2502, !2506, !2507, !2530}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2451, file: !70, line: 431, baseType: !2454, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!120, !895, !120, !120, !808}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2451, file: !70, line: 432, baseType: !2305, size: 64, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2451, file: !70, line: 433, baseType: !2459, size: 64, offset: 128)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!120, !895, !7}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2451, file: !70, line: 434, baseType: !2459, size: 64, offset: 192)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2451, file: !70, line: 435, baseType: !2305, size: 64, offset: 256)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2451, file: !70, line: 436, baseType: !2465, size: 64, offset: 320)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!120, !895, !120, !2468}
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !70, line: 417, size: 256, elements: !2470)
!2470 = !{!2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2469, file: !70, line: 418, baseType: !120, size: 32)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2469, file: !70, line: 419, baseType: !7, size: 32, offset: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2469, file: !70, line: 420, baseType: !7, size: 32, offset: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2469, file: !70, line: 422, baseType: !7, size: 32, offset: 96)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2469, file: !70, line: 423, baseType: !7, size: 32, offset: 128)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2469, file: !70, line: 424, baseType: !7, size: 32, offset: 160)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2469, file: !70, line: 425, baseType: !7, size: 32, offset: 192)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2469, file: !70, line: 426, baseType: !7, size: 32, offset: 224)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2451, file: !70, line: 437, baseType: !2480, size: 64, offset: 384)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!120, !895, !2361, !2483}
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !70, line: 345, size: 960, elements: !2485)
!2485 = !{!2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2484, file: !70, line: 346, baseType: !120, size: 32)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2484, file: !70, line: 347, baseType: !206, size: 64, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2484, file: !70, line: 348, baseType: !206, size: 64, offset: 128)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2484, file: !70, line: 349, baseType: !206, size: 64, offset: 192)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2484, file: !70, line: 350, baseType: !206, size: 64, offset: 256)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2484, file: !70, line: 351, baseType: !206, size: 64, offset: 320)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2484, file: !70, line: 352, baseType: !206, size: 64, offset: 384)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2484, file: !70, line: 353, baseType: !306, size: 64, offset: 448)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2484, file: !70, line: 355, baseType: !306, size: 64, offset: 512)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2484, file: !70, line: 356, baseType: !120, size: 32, offset: 576)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2484, file: !70, line: 357, baseType: !120, size: 32, offset: 608)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2484, file: !70, line: 358, baseType: !206, size: 64, offset: 640)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2484, file: !70, line: 359, baseType: !206, size: 64, offset: 704)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2484, file: !70, line: 360, baseType: !206, size: 64, offset: 768)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2484, file: !70, line: 361, baseType: !306, size: 64, offset: 832)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2484, file: !70, line: 362, baseType: !120, size: 32, offset: 896)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2451, file: !70, line: 438, baseType: !2503, size: 64, offset: 448)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!120, !895, !2447, !2483}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2451, file: !70, line: 440, baseType: !2480, size: 64, offset: 512)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2451, file: !70, line: 441, baseType: !2508, size: 64, offset: 576)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!120, !895, !2511}
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !70, line: 411, size: 1408, elements: !2513)
!2513 = !{!2514, !2515}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2512, file: !70, line: 412, baseType: !7, size: 32)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2512, file: !70, line: 413, baseType: !2516, size: 1344, offset: 64)
!2516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2517, size: 1344, elements: !354)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !70, line: 397, size: 448, elements: !2518)
!2518 = !{!2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2529}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2517, file: !70, line: 398, baseType: !7, size: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2517, file: !70, line: 399, baseType: !7, size: 32, offset: 32)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2517, file: !70, line: 401, baseType: !7, size: 32, offset: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2517, file: !70, line: 402, baseType: !7, size: 32, offset: 96)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2517, file: !70, line: 403, baseType: !7, size: 32, offset: 128)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2517, file: !70, line: 404, baseType: !7, size: 32, offset: 160)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2517, file: !70, line: 405, baseType: !7, size: 32, offset: 192)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2517, file: !70, line: 406, baseType: !208, size: 64, offset: 256)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2517, file: !70, line: 407, baseType: !2528, size: 64, offset: 320)
!2528 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !189, line: 132, baseType: !206)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2517, file: !70, line: 408, baseType: !2528, size: 64, offset: 384)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2451, file: !70, line: 442, baseType: !2459, size: 64, offset: 640)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !896, file: !65, line: 1200, baseType: !2532, size: 64, offset: 576)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2534)
!2534 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !65, line: 54, flags: DIFlagFwdDecl)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !896, file: !65, line: 1201, baseType: !186, size: 64, offset: 640)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !896, file: !65, line: 1202, baseType: !186, size: 64, offset: 704)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !896, file: !65, line: 1203, baseType: !186, size: 64, offset: 768)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !896, file: !65, line: 1204, baseType: !645, size: 64, offset: 832)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !896, file: !65, line: 1205, baseType: !464, size: 320, offset: 896)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !896, file: !65, line: 1206, baseType: !120, size: 32, offset: 1216)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !896, file: !65, line: 1207, baseType: !229, size: 32, offset: 1248)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !896, file: !65, line: 1209, baseType: !180, size: 64, offset: 1280)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !896, file: !65, line: 1211, baseType: !2544, size: 64, offset: 1344)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2547)
!2547 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !65, line: 1211, flags: DIFlagFwdDecl)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !896, file: !65, line: 1223, baseType: !2549, size: 64, offset: 1408)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !662, line: 34, size: 64, elements: !2550)
!2550 = !{!2551}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2549, file: !662, line: 35, baseType: !665, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !896, file: !65, line: 1224, baseType: !322, size: 128, offset: 1472)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !896, file: !65, line: 1225, baseType: !2554, size: 64, offset: 1600)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !65, line: 1225, flags: DIFlagFwdDecl)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !896, file: !65, line: 1226, baseType: !2557, size: 64, offset: 1664)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !65, line: 1226, flags: DIFlagFwdDecl)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !896, file: !65, line: 1227, baseType: !2560, size: 64, offset: 1728)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !65, line: 50, flags: DIFlagFwdDecl)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !896, file: !65, line: 1228, baseType: !2563, size: 64, offset: 1792)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !65, line: 1228, flags: DIFlagFwdDecl)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !896, file: !65, line: 1229, baseType: !370, size: 128, offset: 1856)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !896, file: !65, line: 1230, baseType: !7, size: 32, offset: 1984)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !896, file: !65, line: 1231, baseType: !2568, size: 2496, offset: 2048)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !70, line: 521, size: 2496, elements: !2569)
!2569 = !{!2570, !2571, !2572, !2574, !2606}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2568, file: !70, line: 522, baseType: !7, size: 32)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2568, file: !70, line: 523, baseType: !464, size: 320, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2568, file: !70, line: 524, baseType: !2573, size: 192, offset: 384)
!2573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !685, size: 192, elements: !354)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2568, file: !70, line: 525, baseType: !2575, size: 1728, offset: 576)
!2575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2576, size: 1728, elements: !354)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !70, line: 222, size: 576, elements: !2577)
!2577 = !{!2578, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2576, file: !70, line: 223, baseType: !2579, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !70, line: 445, size: 256, elements: !2581)
!2581 = !{!2582, !2583, !2596, !2597}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2580, file: !70, line: 446, baseType: !120, size: 32)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2580, file: !70, line: 447, baseType: !2584, size: 64, offset: 64)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2586)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !70, line: 312, size: 512, elements: !2587)
!2587 = !{!2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2586, file: !70, line: 313, baseType: !2305, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2586, file: !70, line: 314, baseType: !2305, size: 64, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2586, file: !70, line: 315, baseType: !2305, size: 64, offset: 128)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2586, file: !70, line: 316, baseType: !2305, size: 64, offset: 192)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2586, file: !70, line: 317, baseType: !2414, size: 64, offset: 256)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2586, file: !70, line: 318, baseType: !2414, size: 64, offset: 320)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2586, file: !70, line: 319, baseType: !2414, size: 64, offset: 384)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2586, file: !70, line: 320, baseType: !2444, size: 64, offset: 448)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2580, file: !70, line: 448, baseType: !928, size: 64, offset: 128)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2580, file: !70, line: 449, baseType: !2579, size: 64, offset: 192)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2576, file: !70, line: 224, baseType: !120, size: 32, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2576, file: !70, line: 226, baseType: !322, size: 128, offset: 128)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2576, file: !70, line: 227, baseType: !186, size: 64, offset: 256)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2576, file: !70, line: 228, baseType: !7, size: 32, offset: 320)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2576, file: !70, line: 229, baseType: !7, size: 32, offset: 352)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2576, file: !70, line: 230, baseType: !2382, size: 64, offset: 384)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2576, file: !70, line: 231, baseType: !2382, size: 64, offset: 448)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2576, file: !70, line: 232, baseType: !180, size: 64, offset: 512)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2568, file: !70, line: 526, baseType: !2607, size: 192, offset: 2304)
!2607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2584, size: 192, elements: !354)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !896, file: !65, line: 1233, baseType: !2609, size: 2368, offset: 4544)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !65, line: 1184, size: 2368, elements: !2610)
!2610 = !{!2611, !2612, !2613}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2609, file: !65, line: 1185, baseType: !295, size: 16)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2609, file: !65, line: 1186, baseType: !295, size: 16, offset: 16)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2609, file: !65, line: 1187, baseType: !2614, size: 2304, offset: 64)
!2614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2615, size: 2304, elements: !354)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2616, line: 12, size: 768, elements: !2617)
!2616 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2617 = !{!2618, !2626, !2627, !3819, !3820}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2615, file: !2616, line: 13, baseType: !2619, size: 384)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2620, line: 17, size: 384, elements: !2621)
!2620 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2621 = !{!2622, !2623, !2624, !2625}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2619, file: !2620, line: 18, baseType: !120, size: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2619, file: !2620, line: 19, baseType: !120, size: 32, offset: 32)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2619, file: !2620, line: 20, baseType: !379, size: 192, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2619, file: !2620, line: 22, baseType: !251, size: 128, align: 64, offset: 256)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2615, file: !2616, line: 14, baseType: !2008, size: 64, offset: 384)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2615, file: !2616, line: 15, baseType: !2628, size: 64, offset: 448)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2629, line: 16, size: 64, elements: !2630)
!2629 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2630 = !{!2631}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2628, file: !2629, line: 17, baseType: !2632, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2634, line: 746, size: 58368, elements: !2635)
!2634 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2635 = !{!2636, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2716, !2727, !2815, !2819, !2822, !2853, !2854, !2855, !2856, !2867, !2869, !2870, !2871, !2872, !2873, !2874, !2885, !2886, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2903, !2904, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2992, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3040, !3046, !3047, !3048, !3049, !3050, !3054, !3057, !3064, !3069, !3072, !3075, !3078, !3081, !3219, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3257, !3258, !3259, !3268, !3276, !3277, !3278, !3279, !3280, !3285, !3286, !3287, !3290, !3291, !3294, !3297, !3300, !3308, !3311, !3312, !3398, !3399, !3400, !3401, !3402, !3408, !3409, !3410, !3411, !3414, !3415, !3418, !3421, !3422, !3425, !3426, !3427, !3430, !3431, !3432, !3433, !3434, !3435, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3467, !3470, !3476, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3488, !3560, !3562, !3563, !3564, !3565, !3566, !3567, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3594, !3595, !3596}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2633, file: !2634, line: 752, baseType: !2637, size: 192)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2638, line: 56, size: 192, elements: !2639)
!2638 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2639 = !{!2640, !2641, !2642, !2643}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2637, file: !2638, line: 57, baseType: !186, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2637, file: !2638, line: 58, baseType: !186, size: 64, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2637, file: !2638, line: 59, baseType: !195, size: 32, offset: 128)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2637, file: !2638, line: 61, baseType: !195, size: 32, offset: 160)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2633, file: !2634, line: 754, baseType: !7, size: 32, offset: 192)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2633, file: !2634, line: 767, baseType: !180, size: 64, offset: 256)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2633, file: !2634, line: 768, baseType: !225, size: 32, offset: 320)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2633, file: !2634, line: 770, baseType: !7, size: 32, offset: 352)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2633, file: !2634, line: 771, baseType: !7, size: 32, offset: 384)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2633, file: !2634, line: 774, baseType: !120, size: 32, offset: 416)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2633, file: !2634, line: 775, baseType: !2651, size: 128, offset: 448)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2652, line: 58, size: 128, elements: !2653)
!2652 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2653 = !{!2654, !2655, !2660, !2661}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2651, file: !2652, line: 59, baseType: !245, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, scope: !2651, file: !2652, line: 60, baseType: !2656, size: 32, offset: 64)
!2656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2651, file: !2652, line: 60, size: 32, elements: !2657)
!2657 = !{!2658, !2659}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2656, file: !2652, line: 61, baseType: !7, size: 32)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2656, file: !2652, line: 62, baseType: !229, size: 32)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2651, file: !2652, line: 65, baseType: !293, size: 16, offset: 96)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2651, file: !2652, line: 65, baseType: !293, size: 16, offset: 112)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2633, file: !2634, line: 776, baseType: !7, size: 32, offset: 576)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2633, file: !2634, line: 777, baseType: !186, size: 64, offset: 640)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2633, file: !2634, line: 778, baseType: !2632, size: 64, offset: 704)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2633, file: !2634, line: 787, baseType: !120, size: 32, offset: 768)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2633, file: !2634, line: 788, baseType: !120, size: 32, offset: 800)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2633, file: !2634, line: 790, baseType: !120, size: 32, offset: 832)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2633, file: !2634, line: 792, baseType: !120, size: 32, offset: 864)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2633, file: !2634, line: 793, baseType: !120, size: 32, offset: 896)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2633, file: !2634, line: 794, baseType: !120, size: 32, offset: 928)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2633, file: !2634, line: 795, baseType: !7, size: 32, offset: 960)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2633, file: !2634, line: 797, baseType: !2673, size: 2048, offset: 1024)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2634, line: 551, size: 2048, elements: !2674)
!2674 = !{!2675, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2695, !2698, !2699, !2700}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2673, file: !2634, line: 553, baseType: !2676, size: 128)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2634, line: 411, size: 128, elements: !2677)
!2677 = !{!2678, !2679}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2676, file: !2634, line: 412, baseType: !186, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2676, file: !2634, line: 413, baseType: !195, size: 32, offset: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2673, file: !2634, line: 554, baseType: !456, size: 192, align: 64, offset: 128)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2673, file: !2634, line: 555, baseType: !206, size: 64, offset: 320)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2673, file: !2634, line: 556, baseType: !206, size: 64, offset: 384)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2673, file: !2634, line: 558, baseType: !322, size: 128, offset: 448)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2673, file: !2634, line: 559, baseType: !7, size: 32, offset: 576)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2673, file: !2634, line: 561, baseType: !206, size: 64, offset: 640)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2673, file: !2634, line: 562, baseType: !206, size: 64, offset: 704)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2673, file: !2634, line: 563, baseType: !206, size: 64, offset: 768)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2673, file: !2634, line: 564, baseType: !206, size: 64, offset: 832)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2673, file: !2634, line: 565, baseType: !306, size: 64, offset: 896)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2673, file: !2634, line: 566, baseType: !206, size: 64, offset: 960)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2673, file: !2634, line: 568, baseType: !206, size: 64, offset: 1024)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2673, file: !2634, line: 571, baseType: !120, size: 32, offset: 1088)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2673, file: !2634, line: 572, baseType: !2694, size: 64, offset: 1152)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2673, file: !2634, line: 574, baseType: !2696, size: 64, offset: 1216)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2634, line: 49, flags: DIFlagFwdDecl)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2673, file: !2634, line: 576, baseType: !2696, size: 64, offset: 1280)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2673, file: !2634, line: 578, baseType: !186, size: 64, offset: 1344)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2673, file: !2634, line: 588, baseType: !2701, size: 512, align: 512, offset: 1536)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2634, line: 497, size: 512, align: 512, elements: !2702)
!2702 = !{!2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2701, file: !2634, line: 498, baseType: !206, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2701, file: !2634, line: 499, baseType: !206, size: 64, offset: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2701, file: !2634, line: 500, baseType: !206, size: 64, offset: 128)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2701, file: !2634, line: 501, baseType: !195, size: 32, offset: 192)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2701, file: !2634, line: 502, baseType: !195, size: 32, offset: 224)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2701, file: !2634, line: 503, baseType: !186, size: 64, offset: 256)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2701, file: !2634, line: 504, baseType: !186, size: 64, offset: 320)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2701, file: !2634, line: 505, baseType: !186, size: 64, offset: 384)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2701, file: !2634, line: 506, baseType: !2712, size: 64, align: 64, offset: 448)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2634, line: 445, size: 64, align: 64, elements: !2713)
!2713 = !{!2714, !2715}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2712, file: !2634, line: 446, baseType: !7, size: 32)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2712, file: !2634, line: 447, baseType: !7, size: 32, offset: 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2633, file: !2634, line: 798, baseType: !2717, size: 384, offset: 3072)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2634, line: 592, size: 384, elements: !2718)
!2718 = !{!2719, !2720, !2721, !2722, !2723, !2724, !2725}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2717, file: !2634, line: 593, baseType: !322, size: 128)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2717, file: !2634, line: 594, baseType: !186, size: 64, offset: 128)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2717, file: !2634, line: 595, baseType: !186, size: 64, offset: 192)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2717, file: !2634, line: 596, baseType: !7, size: 32, offset: 256)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2717, file: !2634, line: 597, baseType: !295, size: 16, offset: 288)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2717, file: !2634, line: 598, baseType: !295, size: 16, offset: 304)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2717, file: !2634, line: 600, baseType: !2726, size: 64, offset: 320)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2633, file: !2634, line: 799, baseType: !2728, size: 1792, offset: 3456)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2634, line: 610, size: 1792, elements: !2729)
!2729 = !{!2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2812, !2813}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2728, file: !2634, line: 611, baseType: !456, size: 192, align: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2728, file: !2634, line: 618, baseType: !206, size: 64, offset: 192)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2728, file: !2634, line: 619, baseType: !206, size: 64, offset: 256)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2728, file: !2634, line: 620, baseType: !206, size: 64, offset: 320)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2728, file: !2634, line: 621, baseType: !206, size: 64, offset: 384)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2728, file: !2634, line: 622, baseType: !206, size: 64, offset: 448)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2728, file: !2634, line: 629, baseType: !306, size: 64, offset: 512)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2728, file: !2634, line: 630, baseType: !206, size: 64, offset: 576)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2728, file: !2634, line: 631, baseType: !7, size: 32, offset: 640)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2728, file: !2634, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2728, file: !2634, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2728, file: !2634, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2728, file: !2634, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2728, file: !2634, line: 662, baseType: !2744, size: 512, offset: 704)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !76, line: 118, size: 512, elements: !2745)
!2745 = !{!2746, !2754, !2755, !2760, !2808, !2809, !2810, !2811}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2744, file: !76, line: 119, baseType: !2747, size: 256)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2748, line: 9, size: 256, elements: !2749)
!2748 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2749 = !{!2750, !2751}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2747, file: !2748, line: 10, baseType: !456, size: 192, align: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2747, file: !2748, line: 11, baseType: !2752, size: 64, offset: 192)
!2752 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2753, line: 29, baseType: !306)
!2753 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2744, file: !76, line: 120, baseType: !2752, size: 64, offset: 256)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2744, file: !76, line: 121, baseType: !2756, size: 64, offset: 320)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!75, !2759}
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2744, file: !76, line: 122, baseType: !2761, size: 64, offset: 384)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !76, line: 159, size: 512, align: 512, elements: !2763)
!2763 = !{!2764, !2789, !2790, !2793, !2798, !2799, !2803, !2807}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2762, file: !76, line: 160, baseType: !2765, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !76, line: 215, size: 4608, align: 512, elements: !2767)
!2767 = !{!2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2766, file: !76, line: 216, baseType: !315, size: 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2766, file: !76, line: 217, baseType: !7, size: 32, offset: 32)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2766, file: !76, line: 218, baseType: !7, size: 32, offset: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2766, file: !76, line: 219, baseType: !7, size: 32, offset: 96)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2766, file: !76, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2766, file: !76, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2766, file: !76, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2766, file: !76, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2766, file: !76, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2766, file: !76, line: 226, baseType: !7, size: 32, offset: 160)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2766, file: !76, line: 227, baseType: !295, size: 16, offset: 192)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2766, file: !76, line: 228, baseType: !295, size: 16, offset: 208)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2766, file: !76, line: 229, baseType: !7, size: 32, offset: 224)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2766, file: !76, line: 235, baseType: !2752, size: 64, offset: 256)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2766, file: !76, line: 236, baseType: !2759, size: 64, offset: 320)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2766, file: !76, line: 237, baseType: !2752, size: 64, offset: 384)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2766, file: !76, line: 238, baseType: !2759, size: 64, offset: 448)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2766, file: !76, line: 239, baseType: !2786, size: 4096, align: 512, offset: 512)
!2786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2762, size: 4096, align: 512, elements: !2787)
!2787 = !{!2788}
!2788 = !DISubrange(count: 8)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2762, file: !76, line: 161, baseType: !7, size: 32, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2762, file: !76, line: 162, baseType: !2791, size: 32, offset: 96)
!2791 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !189, line: 32, baseType: !2792)
!2792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !191, line: 96, baseType: !120)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2762, file: !76, line: 163, baseType: !2794, size: 32, offset: 128)
!2794 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !652, line: 274, baseType: !2795)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !652, line: 274, size: 32, elements: !2796)
!2796 = !{!2797}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2795, file: !652, line: 274, baseType: !656, size: 32)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2762, file: !76, line: 164, baseType: !2759, size: 64, offset: 192)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2762, file: !76, line: 165, baseType: !2800, size: 128, offset: 256)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2748, line: 14, size: 128, elements: !2801)
!2801 = !{!2802}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2800, file: !2748, line: 15, baseType: !1054, size: 128)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2762, file: !76, line: 166, baseType: !2804, size: 64, offset: 384)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!2752}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2762, file: !76, line: 167, baseType: !2752, size: 64, offset: 448)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2744, file: !76, line: 123, baseType: !285, size: 8, offset: 448)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2744, file: !76, line: 124, baseType: !285, size: 8, offset: 456)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2744, file: !76, line: 125, baseType: !285, size: 8, offset: 464)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2744, file: !76, line: 126, baseType: !285, size: 8, offset: 472)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2728, file: !2634, line: 671, baseType: !2744, size: 512, offset: 1216)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2728, file: !2634, line: 679, baseType: !2814, size: 64, offset: 1728)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2633, file: !2634, line: 800, baseType: !2816, size: 64, offset: 5248)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2818)
!2818 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2634, line: 800, flags: DIFlagFwdDecl)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2633, file: !2634, line: 809, baseType: !2820, size: 64, offset: 5312)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2634, line: 70, flags: DIFlagFwdDecl)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2633, file: !2634, line: 825, baseType: !2823, size: 2048, align: 512, offset: 5632)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2634, line: 509, size: 2048, align: 512, elements: !2824)
!2824 = !{!2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2823, file: !2634, line: 511, baseType: !206, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2823, file: !2634, line: 512, baseType: !206, size: 64, offset: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2823, file: !2634, line: 513, baseType: !206, size: 64, offset: 128)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2823, file: !2634, line: 514, baseType: !206, size: 64, offset: 192)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2823, file: !2634, line: 515, baseType: !206, size: 64, offset: 256)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2823, file: !2634, line: 516, baseType: !206, size: 64, offset: 320)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2823, file: !2634, line: 518, baseType: !206, size: 64, offset: 384)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2823, file: !2634, line: 519, baseType: !206, size: 64, offset: 448)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2823, file: !2634, line: 520, baseType: !306, size: 64, offset: 512)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2823, file: !2634, line: 522, baseType: !206, size: 64, offset: 576)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2823, file: !2634, line: 523, baseType: !206, size: 64, offset: 640)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2823, file: !2634, line: 524, baseType: !306, size: 64, offset: 704)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2823, file: !2634, line: 526, baseType: !306, size: 64, offset: 768)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2823, file: !2634, line: 527, baseType: !206, size: 64, offset: 832)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2823, file: !2634, line: 529, baseType: !206, size: 64, offset: 896)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2823, file: !2634, line: 530, baseType: !206, size: 64, offset: 960)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2823, file: !2634, line: 531, baseType: !206, size: 64, offset: 1024)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2823, file: !2634, line: 532, baseType: !206, size: 64, offset: 1088)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2823, file: !2634, line: 533, baseType: !206, size: 64, offset: 1152)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2823, file: !2634, line: 535, baseType: !206, size: 64, offset: 1216)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2823, file: !2634, line: 536, baseType: !206, size: 64, offset: 1280)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2823, file: !2634, line: 537, baseType: !206, size: 64, offset: 1344)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2823, file: !2634, line: 538, baseType: !206, size: 64, offset: 1408)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2823, file: !2634, line: 539, baseType: !206, size: 64, offset: 1472)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2823, file: !2634, line: 540, baseType: !206, size: 64, offset: 1536)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2823, file: !2634, line: 541, baseType: !206, size: 64, offset: 1600)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2823, file: !2634, line: 542, baseType: !206, size: 64, offset: 1664)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2823, file: !2634, line: 543, baseType: !206, size: 64, offset: 1728)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2633, file: !2634, line: 833, baseType: !7, size: 32, offset: 7680)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2633, file: !2634, line: 836, baseType: !7, size: 32, offset: 7712)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2633, file: !2634, line: 837, baseType: !120, size: 32, offset: 7744)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2633, file: !2634, line: 838, baseType: !2857, size: 64, offset: 7808)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2859)
!2859 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2860, line: 19, baseType: !2861)
!2860 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2860, line: 19, size: 64, elements: !2862)
!2862 = !{!2863}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2861, file: !2860, line: 19, baseType: !2864, size: 64)
!2864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 64, elements: !2865)
!2865 = !{!2866}
!2866 = !DISubrange(count: 1)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2633, file: !2634, line: 839, baseType: !2868, size: 64, offset: 7872)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2633, file: !2634, line: 840, baseType: !2859, size: 64, offset: 7936)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2633, file: !2634, line: 841, baseType: !180, size: 64, offset: 8000)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2633, file: !2634, line: 843, baseType: !295, size: 16, offset: 8064)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2633, file: !2634, line: 845, baseType: !295, size: 16, offset: 8080)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2633, file: !2634, line: 848, baseType: !120, size: 32, offset: 8096)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2633, file: !2634, line: 849, baseType: !2875, size: 32, offset: 8128)
!2875 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2634, line: 718, size: 32, elements: !2876)
!2876 = !{!2877, !2884}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2875, file: !2634, line: 724, baseType: !2878, size: 32)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2875, file: !2634, line: 719, size: 32, elements: !2879)
!2879 = !{!2880, !2881, !2882, !2883}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2878, file: !2634, line: 720, baseType: !285, size: 8)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2878, file: !2634, line: 721, baseType: !285, size: 8, offset: 8)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2878, file: !2634, line: 722, baseType: !285, size: 8, offset: 16)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2878, file: !2634, line: 723, baseType: !285, size: 8, offset: 24)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2875, file: !2634, line: 725, baseType: !195, size: 32)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2633, file: !2634, line: 850, baseType: !322, size: 128, offset: 8192)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2633, file: !2634, line: 851, baseType: !2887, size: 64, offset: 8320)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2634, line: 60, flags: DIFlagFwdDecl)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2633, file: !2634, line: 855, baseType: !186, size: 64, offset: 8384)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2633, file: !2634, line: 856, baseType: !285, size: 8, offset: 8448)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2633, file: !2634, line: 857, baseType: !285, size: 8, offset: 8456)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2633, file: !2634, line: 858, baseType: !120, size: 32, offset: 8480)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2633, file: !2634, line: 859, baseType: !322, size: 128, offset: 8512)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2633, file: !2634, line: 860, baseType: !120, size: 32, offset: 8640)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2633, file: !2634, line: 861, baseType: !322, size: 128, offset: 8704)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2633, file: !2634, line: 873, baseType: !2897, size: 256, offset: 8832)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2634, line: 376, size: 256, elements: !2898)
!2898 = !{!2899, !2900, !2901, !2902}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2897, file: !2634, line: 381, baseType: !186, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2897, file: !2634, line: 384, baseType: !208, size: 64, offset: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2897, file: !2634, line: 389, baseType: !208, size: 64, offset: 128)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2897, file: !2634, line: 392, baseType: !208, size: 64, offset: 192)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2633, file: !2634, line: 875, baseType: !322, size: 128, offset: 9088)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2633, file: !2634, line: 877, baseType: !2905, size: 320, offset: 9216)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2906, line: 86, size: 320, elements: !2907)
!2906 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2907 = !{!2908, !2909, !2910}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2905, file: !2906, line: 87, baseType: !120, size: 32)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2905, file: !2906, line: 88, baseType: !322, size: 128, offset: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2905, file: !2906, line: 89, baseType: !322, size: 128, offset: 192)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2633, file: !2634, line: 878, baseType: !456, size: 192, align: 64, offset: 9536)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2633, file: !2634, line: 881, baseType: !1205, size: 64, offset: 9728)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2633, file: !2634, line: 882, baseType: !1205, size: 64, offset: 9792)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2633, file: !2634, line: 884, baseType: !120, size: 32, offset: 9856)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2633, file: !2634, line: 885, baseType: !120, size: 32, offset: 9888)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2633, file: !2634, line: 886, baseType: !120, size: 32, offset: 9920)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2633, file: !2634, line: 888, baseType: !120, size: 32, offset: 9952)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2633, file: !2634, line: 890, baseType: !186, size: 64, offset: 9984)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2633, file: !2634, line: 893, baseType: !7, size: 32, offset: 10048)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2633, file: !2634, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2633, file: !2634, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2633, file: !2634, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2633, file: !2634, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2633, file: !2634, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2633, file: !2634, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2633, file: !2634, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2633, file: !2634, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2633, file: !2634, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2633, file: !2634, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2633, file: !2634, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2633, file: !2634, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2633, file: !2634, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2633, file: !2634, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2633, file: !2634, line: 969, baseType: !186, size: 64, offset: 10176)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2633, file: !2634, line: 971, baseType: !2936, size: 448, offset: 10240)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !81, line: 25, size: 448, elements: !2937)
!2937 = !{!2938, !2939, !2944}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2936, file: !81, line: 26, baseType: !186, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2936, file: !81, line: 27, baseType: !2940, size: 64, offset: 64)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!800, !2943}
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, scope: !2936, file: !81, line: 28, baseType: !2945, size: 320, offset: 128)
!2945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2936, file: !81, line: 28, size: 320, elements: !2946)
!2946 = !{!2947, !2957, !2982}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2945, file: !81, line: 37, baseType: !2948, size: 320)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2945, file: !81, line: 30, size: 320, elements: !2949)
!2949 = !{!2950, !2952, !2953, !2954, !2955, !2956}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2948, file: !81, line: 31, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2948, file: !81, line: 32, baseType: !195, size: 32, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2948, file: !81, line: 33, baseType: !195, size: 32, offset: 96)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2948, file: !81, line: 34, baseType: !195, size: 32, offset: 128)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2948, file: !81, line: 35, baseType: !206, size: 64, offset: 192)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2948, file: !81, line: 36, baseType: !2951, size: 64, offset: 256)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2945, file: !81, line: 47, baseType: !2958, size: 192)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2945, file: !81, line: 39, size: 192, elements: !2959)
!2959 = !{!2960, !2961, !2962, !2981}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2958, file: !81, line: 40, baseType: !2791, size: 32)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2958, file: !81, line: 41, baseType: !80, size: 32, offset: 32)
!2962 = !DIDerivedType(tag: DW_TAG_member, scope: !2958, file: !81, line: 42, baseType: !2963, size: 64, offset: 64)
!2963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2958, file: !81, line: 42, size: 64, elements: !2964)
!2964 = !{!2965, !2973}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2963, file: !81, line: 43, baseType: !2966, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2968, line: 7, size: 128, elements: !2969)
!2968 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2969 = !{!2970, !2972}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2967, file: !2968, line: 8, baseType: !2971, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !191, line: 93, baseType: !308)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2967, file: !2968, line: 9, baseType: !308, size: 64, offset: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2963, file: !81, line: 44, baseType: !2974, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2976, line: 7, size: 64, elements: !2977)
!2976 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2977 = !{!2978, !2980}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2975, file: !2976, line: 8, baseType: !2979, size: 32)
!2979 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2976, line: 5, baseType: !449)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2975, file: !2976, line: 9, baseType: !449, size: 32, offset: 32)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2958, file: !81, line: 46, baseType: !206, size: 64, offset: 128)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2945, file: !81, line: 55, baseType: !2983, size: 256)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2945, file: !81, line: 49, size: 256, elements: !2984)
!2984 = !{!2985, !2988, !2989, !2990, !2991}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2983, file: !81, line: 50, baseType: !2986, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !81, line: 14, flags: DIFlagFwdDecl)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2983, file: !81, line: 51, baseType: !120, size: 32, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2983, file: !81, line: 52, baseType: !120, size: 32, offset: 96)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2983, file: !81, line: 53, baseType: !186, size: 64, offset: 128)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2983, file: !81, line: 54, baseType: !186, size: 64, offset: 192)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2633, file: !2634, line: 973, baseType: !2993, size: 32, offset: 10688)
!2993 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !189, line: 27, baseType: !2994)
!2994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !191, line: 28, baseType: !120)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2633, file: !2634, line: 974, baseType: !2993, size: 32, offset: 10720)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2633, file: !2634, line: 978, baseType: !186, size: 64, offset: 10752)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2633, file: !2634, line: 987, baseType: !2632, size: 64, offset: 10816)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2633, file: !2634, line: 990, baseType: !2632, size: 64, offset: 10880)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2633, file: !2634, line: 995, baseType: !322, size: 128, offset: 10944)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2633, file: !2634, line: 996, baseType: !322, size: 128, offset: 11072)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2633, file: !2634, line: 997, baseType: !2632, size: 64, offset: 11200)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2633, file: !2634, line: 1005, baseType: !322, size: 128, offset: 11264)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2633, file: !2634, line: 1006, baseType: !322, size: 128, offset: 11392)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2633, file: !2634, line: 1009, baseType: !358, size: 64, offset: 11520)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2633, file: !2634, line: 1010, baseType: !3006, size: 512, offset: 11584)
!3006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 512, elements: !375)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2633, file: !2634, line: 1011, baseType: !322, size: 128, offset: 12096)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2633, file: !2634, line: 1012, baseType: !322, size: 128, offset: 12224)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2633, file: !2634, line: 1014, baseType: !1919, size: 64, offset: 12352)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2633, file: !2634, line: 1017, baseType: !2056, size: 64, offset: 12416)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2633, file: !2634, line: 1020, baseType: !2056, size: 64, offset: 12480)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2633, file: !2634, line: 1023, baseType: !180, size: 64, offset: 12544)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2633, file: !2634, line: 1025, baseType: !206, size: 64, offset: 12608)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2633, file: !2634, line: 1026, baseType: !206, size: 64, offset: 12672)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2633, file: !2634, line: 1031, baseType: !206, size: 64, offset: 12736)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2633, file: !2634, line: 1032, baseType: !3017, size: 192, offset: 12800)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2634, line: 324, size: 192, elements: !3018)
!3018 = !{!3019, !3020, !3021}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3017, file: !2634, line: 326, baseType: !206, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3017, file: !2634, line: 327, baseType: !206, size: 64, offset: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3017, file: !2634, line: 328, baseType: !315, size: 32, offset: 128)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2633, file: !2634, line: 1041, baseType: !186, size: 64, offset: 12992)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2633, file: !2634, line: 1042, baseType: !186, size: 64, offset: 13056)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2633, file: !2634, line: 1045, baseType: !206, size: 64, offset: 13120)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2633, file: !2634, line: 1048, baseType: !206, size: 64, offset: 13184)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2633, file: !2634, line: 1051, baseType: !186, size: 64, offset: 13248)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2633, file: !2634, line: 1052, baseType: !186, size: 64, offset: 13312)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2633, file: !2634, line: 1055, baseType: !3029, size: 640, offset: 13376)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3030, line: 132, size: 640, elements: !3031)
!3030 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3031 = !{!3032, !3038, !3039}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3029, file: !3030, line: 133, baseType: !3033, size: 576)
!3033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3034, size: 576, elements: !354)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3030, line: 117, size: 192, elements: !3035)
!3035 = !{!3036, !3037}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3034, file: !3030, line: 118, baseType: !206, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3034, file: !3030, line: 119, baseType: !2800, size: 128, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3029, file: !3030, line: 134, baseType: !7, size: 32, offset: 576)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3029, file: !3030, line: 135, baseType: !7, size: 32, offset: 608)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2633, file: !2634, line: 1058, baseType: !3041, size: 448, offset: 14016)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3030, line: 144, size: 448, elements: !3042)
!3042 = !{!3043, !3044, !3045}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3041, file: !3030, line: 145, baseType: !251, size: 128, align: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3041, file: !3030, line: 146, baseType: !310, size: 256, offset: 128)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3041, file: !3030, line: 147, baseType: !7, size: 32, offset: 384)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2633, file: !2634, line: 1064, baseType: !408, size: 64, offset: 14464)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2633, file: !2634, line: 1067, baseType: !408, size: 64, offset: 14528)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2633, file: !2634, line: 1070, baseType: !408, size: 64, offset: 14592)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2633, file: !2634, line: 1074, baseType: !441, size: 64, offset: 14656)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2633, file: !2634, line: 1084, baseType: !3051, size: 128, offset: 14720)
!3051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 128, elements: !3052)
!3052 = !{!3053}
!3053 = !DISubrange(count: 16)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2633, file: !2634, line: 1086, baseType: !3055, size: 64, offset: 14848)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2634, line: 55, flags: DIFlagFwdDecl)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2633, file: !2634, line: 1089, baseType: !3058, size: 64, offset: 14912)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3059, line: 12, size: 64, elements: !3060)
!3059 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3060 = !{!3061}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3058, file: !3059, line: 13, baseType: !3062, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3059, line: 8, flags: DIFlagFwdDecl)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2633, file: !2634, line: 1090, baseType: !3065, size: 128, offset: 14976)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3066, line: 13, size: 128, elements: !3067)
!3066 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3067 = !{!3068}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3065, file: !3066, line: 14, baseType: !322, size: 128)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2633, file: !2634, line: 1097, baseType: !3070, size: 64, offset: 15104)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2634, line: 50, flags: DIFlagFwdDecl)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2633, file: !2634, line: 1100, baseType: !3073, size: 64, offset: 15168)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2634, line: 1100, flags: DIFlagFwdDecl)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2633, file: !2634, line: 1103, baseType: !3076, size: 64, offset: 15232)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2634, line: 53, flags: DIFlagFwdDecl)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2633, file: !2634, line: 1107, baseType: !3079, size: 64, offset: 15296)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2634, line: 56, flags: DIFlagFwdDecl)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2633, file: !2634, line: 1110, baseType: !3082, size: 64, offset: 15360)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3084, line: 93, size: 8768, elements: !3085)
!3084 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3085 = !{!3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3133, !3142, !3143, !3145, !3146, !3147, !3150, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3188, !3189, !3196, !3206, !3209, !3210, !3213, !3214, !3215, !3216, !3217, !3218}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3083, file: !3084, line: 94, baseType: !225, size: 32)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3083, file: !3084, line: 95, baseType: !229, size: 32, offset: 32)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3083, file: !3084, line: 96, baseType: !120, size: 32, offset: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3083, file: !3084, line: 97, baseType: !120, size: 32, offset: 96)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3083, file: !3084, line: 98, baseType: !322, size: 128, offset: 128)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3083, file: !3084, line: 100, baseType: !379, size: 192, offset: 256)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3083, file: !3084, line: 103, baseType: !2632, size: 64, offset: 448)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3083, file: !3084, line: 106, baseType: !3094, size: 192, offset: 512)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !612, line: 32, size: 192, elements: !3095)
!3095 = !{!3096, !3097}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3094, file: !612, line: 33, baseType: !322, size: 128)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3094, file: !612, line: 34, baseType: !3098, size: 64, offset: 128)
!3098 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3099, line: 25, baseType: !3100)
!3099 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3099, line: 23, size: 64, elements: !3101)
!3101 = !{!3102}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3100, file: !3099, line: 24, baseType: !2864, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3083, file: !3084, line: 109, baseType: !366, size: 64, offset: 704)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3083, file: !3084, line: 112, baseType: !120, size: 32, offset: 768)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3083, file: !3084, line: 114, baseType: !120, size: 32, offset: 800)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3083, file: !3084, line: 115, baseType: !2632, size: 64, offset: 832)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3083, file: !3084, line: 118, baseType: !120, size: 32, offset: 896)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3083, file: !3084, line: 119, baseType: !7, size: 32, offset: 928)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3083, file: !3084, line: 121, baseType: !3110, size: 64, offset: 960)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3084, line: 80, size: 448, elements: !3112)
!3112 = !{!3113, !3114, !3120}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3111, file: !3084, line: 81, baseType: !229, size: 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3111, file: !3084, line: 82, baseType: !3115, size: 128, offset: 64)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3084, line: 75, size: 128, elements: !3116)
!3116 = !{!3117, !3118}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3115, file: !3084, line: 76, baseType: !2632, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3115, file: !3084, line: 77, baseType: !3119, size: 64, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3111, file: !3084, line: 83, baseType: !1157, size: 256, offset: 192)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3083, file: !3084, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3083, file: !3084, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3083, file: !3084, line: 138, baseType: !7, size: 32, offset: 1056)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3083, file: !3084, line: 139, baseType: !322, size: 128, offset: 1088)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3083, file: !3084, line: 142, baseType: !2744, size: 512, offset: 1216)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3083, file: !3084, line: 143, baseType: !2752, size: 64, offset: 1728)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3083, file: !3084, line: 150, baseType: !3128, size: 256, offset: 1792)
!3128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3129, size: 256, elements: !2046)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3084, line: 38, size: 128, elements: !3130)
!3130 = !{!3131, !3132}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3129, file: !3084, line: 39, baseType: !206, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3129, file: !3084, line: 40, baseType: !206, size: 64, offset: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3083, file: !3084, line: 156, baseType: !3134, size: 192, offset: 2048)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3084, line: 66, size: 192, elements: !3135)
!3135 = !{!3136}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3134, file: !3084, line: 67, baseType: !3137, size: 192)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3084, line: 47, size: 192, elements: !3138)
!3138 = !{!3139, !3140, !3141}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3137, file: !3084, line: 48, baseType: !302, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3137, file: !3084, line: 49, baseType: !302, size: 64, offset: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3137, file: !3084, line: 50, baseType: !302, size: 64, offset: 128)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3083, file: !3084, line: 160, baseType: !3029, size: 640, offset: 2240)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3083, file: !3084, line: 163, baseType: !3144, size: 256, offset: 2880)
!3144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 256, elements: !375)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3083, file: !3084, line: 169, baseType: !358, size: 64, offset: 3136)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3083, file: !3084, line: 172, baseType: !120, size: 32, offset: 3200)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3083, file: !3084, line: 174, baseType: !3148, size: 64, offset: 3264)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3084, line: 174, flags: DIFlagFwdDecl)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3083, file: !3084, line: 185, baseType: !3151, size: 64, offset: 3328)
!3151 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !652, line: 860, baseType: !3152)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !652, line: 853, size: 64, elements: !3153)
!3153 = !{!3154, !3155}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3152, file: !652, line: 858, baseType: !651, size: 32)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3152, file: !652, line: 859, baseType: !261, size: 32, offset: 32)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3083, file: !3084, line: 186, baseType: !206, size: 64, offset: 3392)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3083, file: !3084, line: 186, baseType: !206, size: 64, offset: 3456)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3083, file: !3084, line: 186, baseType: !206, size: 64, offset: 3520)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3083, file: !3084, line: 186, baseType: !206, size: 64, offset: 3584)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3083, file: !3084, line: 187, baseType: !206, size: 64, offset: 3648)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3083, file: !3084, line: 188, baseType: !206, size: 64, offset: 3712)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3083, file: !3084, line: 189, baseType: !3017, size: 192, offset: 3776)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3083, file: !3084, line: 190, baseType: !186, size: 64, offset: 3968)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3083, file: !3084, line: 190, baseType: !186, size: 64, offset: 4032)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3083, file: !3084, line: 190, baseType: !186, size: 64, offset: 4096)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3083, file: !3084, line: 190, baseType: !186, size: 64, offset: 4160)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3083, file: !3084, line: 191, baseType: !186, size: 64, offset: 4224)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3083, file: !3084, line: 191, baseType: !186, size: 64, offset: 4288)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3083, file: !3084, line: 191, baseType: !186, size: 64, offset: 4352)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3083, file: !3084, line: 191, baseType: !186, size: 64, offset: 4416)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3083, file: !3084, line: 192, baseType: !186, size: 64, offset: 4480)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3083, file: !3084, line: 192, baseType: !186, size: 64, offset: 4544)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3083, file: !3084, line: 192, baseType: !186, size: 64, offset: 4608)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3083, file: !3084, line: 192, baseType: !186, size: 64, offset: 4672)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3083, file: !3084, line: 193, baseType: !186, size: 64, offset: 4736)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3083, file: !3084, line: 193, baseType: !186, size: 64, offset: 4800)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3083, file: !3084, line: 194, baseType: !3178, size: 448, offset: 4864)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3179, line: 12, size: 448, elements: !3180)
!3179 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3180 = !{!3181, !3182, !3183, !3184, !3185, !3186, !3187}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3178, file: !3179, line: 15, baseType: !206, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3178, file: !3179, line: 17, baseType: !206, size: 64, offset: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3178, file: !3179, line: 19, baseType: !206, size: 64, offset: 128)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3178, file: !3179, line: 21, baseType: !206, size: 64, offset: 192)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3178, file: !3179, line: 29, baseType: !206, size: 64, offset: 256)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3178, file: !3179, line: 35, baseType: !206, size: 64, offset: 320)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3178, file: !3179, line: 44, baseType: !206, size: 64, offset: 384)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3083, file: !3084, line: 202, baseType: !208, size: 64, offset: 5312)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3083, file: !3084, line: 213, baseType: !3190, size: 2048, offset: 5376)
!3190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3191, size: 2048, elements: !3052)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3192, line: 43, size: 128, elements: !3193)
!3192 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3193 = !{!3194, !3195}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3191, file: !3192, line: 44, baseType: !192, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3191, file: !3192, line: 45, baseType: !192, size: 64, offset: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3083, file: !3084, line: 216, baseType: !3197, size: 448, offset: 7424)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3084, line: 30, size: 448, elements: !3198)
!3198 = !{!3199, !3200, !3201, !3202, !3203, !3204, !3205}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3197, file: !3084, line: 31, baseType: !120, size: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3197, file: !3084, line: 32, baseType: !800, size: 64, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3197, file: !3084, line: 33, baseType: !186, size: 64, offset: 128)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3197, file: !3084, line: 34, baseType: !206, size: 64, offset: 192)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3197, file: !3084, line: 34, baseType: !206, size: 64, offset: 256)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3197, file: !3084, line: 35, baseType: !186, size: 64, offset: 320)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3197, file: !3084, line: 35, baseType: !186, size: 64, offset: 384)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3083, file: !3084, line: 219, baseType: !3207, size: 64, offset: 7872)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3084, line: 219, flags: DIFlagFwdDecl)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3083, file: !3084, line: 222, baseType: !7, size: 32, offset: 7936)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3083, file: !3084, line: 223, baseType: !3211, size: 64, offset: 8000)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3084, line: 223, flags: DIFlagFwdDecl)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3083, file: !3084, line: 230, baseType: !210, size: 8, offset: 8064)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3083, file: !3084, line: 231, baseType: !491, size: 16, offset: 8080)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3083, file: !3084, line: 232, baseType: !491, size: 16, offset: 8096)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3083, file: !3084, line: 234, baseType: !1205, size: 64, offset: 8128)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3083, file: !3084, line: 237, baseType: !310, size: 256, offset: 8192)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3083, file: !3084, line: 243, baseType: !464, size: 320, offset: 8448)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2633, file: !2634, line: 1111, baseType: !3220, size: 64, offset: 15424)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3084, line: 20, size: 16640, elements: !3222)
!3222 = !{!3223, !3224, !3225, !3226}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3221, file: !3084, line: 21, baseType: !261, size: 32)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3221, file: !3084, line: 22, baseType: !225, size: 32, offset: 32)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3221, file: !3084, line: 23, baseType: !379, size: 192, offset: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3221, file: !3084, line: 24, baseType: !3227, size: 16384, offset: 256)
!3227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3228, size: 16384, elements: !984)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !612, line: 51, size: 256, elements: !3229)
!3229 = !{!3230}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3228, file: !612, line: 52, baseType: !3231, size: 256)
!3231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !612, line: 37, size: 256, elements: !3232)
!3232 = !{!3233, !3240, !3241, !3245}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3231, file: !612, line: 39, baseType: !3234, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3235, line: 83, baseType: !3236)
!3235 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3235, line: 82, baseType: !3238)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{null, !120}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3231, file: !612, line: 40, baseType: !186, size: 64, offset: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3231, file: !612, line: 46, baseType: !3242, size: 64, offset: 128)
!3242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3235, line: 86, baseType: !3243)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3235, line: 85, baseType: !2261)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3231, file: !612, line: 48, baseType: !3098, size: 64, offset: 192)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2633, file: !2634, line: 1112, baseType: !3098, size: 64, offset: 15488)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2633, file: !2634, line: 1113, baseType: !3098, size: 64, offset: 15552)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2633, file: !2634, line: 1115, baseType: !3098, size: 64, offset: 15616)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2633, file: !2634, line: 1116, baseType: !3094, size: 192, offset: 15680)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2633, file: !2634, line: 1117, baseType: !186, size: 64, offset: 15872)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2633, file: !2634, line: 1118, baseType: !188, size: 64, offset: 15936)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2633, file: !2634, line: 1119, baseType: !7, size: 32, offset: 16000)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2633, file: !2634, line: 1121, baseType: !254, size: 64, offset: 16064)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2633, file: !2634, line: 1125, baseType: !3255, size: 64, offset: 16128)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2634, line: 43, flags: DIFlagFwdDecl)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2633, file: !2634, line: 1127, baseType: !398, size: 32, offset: 16192)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2633, file: !2634, line: 1128, baseType: !7, size: 32, offset: 16224)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2633, file: !2634, line: 1130, baseType: !3260, size: 128, offset: 16256)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3261, line: 37, size: 128, elements: !3262)
!3261 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3262 = !{!3263, !3264, !3265}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3260, file: !3261, line: 38, baseType: !120, size: 32)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3260, file: !3261, line: 39, baseType: !229, size: 32, offset: 32)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3260, file: !3261, line: 40, baseType: !3266, size: 64, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3261, line: 24, flags: DIFlagFwdDecl)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2633, file: !2634, line: 1131, baseType: !3269, size: 256, offset: 16384)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3270, line: 12, size: 256, elements: !3271)
!3270 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3271 = !{!3272, !3273, !3274, !3275}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3269, file: !3270, line: 13, baseType: !534, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3269, file: !3270, line: 14, baseType: !186, size: 64, offset: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3269, file: !3270, line: 15, baseType: !186, size: 64, offset: 128)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3269, file: !3270, line: 16, baseType: !210, size: 8, offset: 192)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2633, file: !2634, line: 1134, baseType: !206, size: 64, offset: 16640)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2633, file: !2634, line: 1135, baseType: !206, size: 64, offset: 16704)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2633, file: !2634, line: 1138, baseType: !261, size: 32, offset: 16768)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2633, file: !2634, line: 1141, baseType: !315, size: 32, offset: 16800)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2633, file: !2634, line: 1143, baseType: !3281, size: 64, offset: 16832)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2634, line: 735, size: 64, elements: !3282)
!3282 = !{!3283}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3281, file: !2634, line: 736, baseType: !3284, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2633, file: !2634, line: 1147, baseType: !1054, size: 128, offset: 16896)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2633, file: !2634, line: 1149, baseType: !2632, size: 64, offset: 17024)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2633, file: !2634, line: 1151, baseType: !3288, size: 64, offset: 17088)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2634, line: 1151, flags: DIFlagFwdDecl)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2633, file: !2634, line: 1188, baseType: !180, size: 64, offset: 17152)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2633, file: !2634, line: 1191, baseType: !3292, size: 64, offset: 17216)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2634, line: 44, flags: DIFlagFwdDecl)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2633, file: !2634, line: 1194, baseType: !3295, size: 64, offset: 17280)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2634, line: 45, flags: DIFlagFwdDecl)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2633, file: !2634, line: 1197, baseType: !3298, size: 64, offset: 17344)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2634, line: 61, flags: DIFlagFwdDecl)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2633, file: !2634, line: 1199, baseType: !3301, size: 64, offset: 17408)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3303, line: 99, size: 128, elements: !3304)
!3303 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3304 = !{!3305, !3306, !3307}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3302, file: !3303, line: 100, baseType: !300, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3302, file: !3303, line: 101, baseType: !229, size: 32, offset: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3302, file: !3303, line: 103, baseType: !295, size: 16, offset: 96)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2633, file: !2634, line: 1202, baseType: !3309, size: 64, offset: 17472)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2634, line: 48, flags: DIFlagFwdDecl)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2633, file: !2634, line: 1205, baseType: !186, size: 64, offset: 17536)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2633, file: !2634, line: 1206, baseType: !3313, size: 64, offset: 17600)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !612, line: 14, baseType: !3315)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !612, line: 12, size: 384, elements: !3316)
!3316 = !{!3317}
!3317 = !DIDerivedType(tag: DW_TAG_member, scope: !3315, file: !612, line: 13, baseType: !3318, size: 384)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3315, file: !612, line: 13, size: 384, elements: !3319)
!3319 = !{!3320, !3321, !3322, !3323}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3318, file: !612, line: 13, baseType: !120, size: 32)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3318, file: !612, line: 13, baseType: !120, size: 32, offset: 32)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3318, file: !612, line: 13, baseType: !120, size: 32, offset: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3318, file: !612, line: 13, baseType: !3324, size: 256, offset: 128)
!3324 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3325, line: 37, size: 256, elements: !3326)
!3325 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3326 = !{!3327, !3332, !3345, !3351, !3360, !3387, !3392}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3324, file: !3325, line: 42, baseType: !3328, size: 64)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3324, file: !3325, line: 39, size: 64, elements: !3329)
!3329 = !{!3330, !3331}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3328, file: !3325, line: 40, baseType: !2994, size: 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3328, file: !3325, line: 41, baseType: !404, size: 32, offset: 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3324, file: !3325, line: 50, baseType: !3333, size: 192)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3324, file: !3325, line: 45, size: 192, elements: !3334)
!3334 = !{!3335, !3337, !3338, !3344}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3333, file: !3325, line: 46, baseType: !3336, size: 32)
!3336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !191, line: 95, baseType: !120)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3333, file: !3325, line: 47, baseType: !120, size: 32, offset: 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3333, file: !3325, line: 48, baseType: !3339, size: 64, offset: 64)
!3339 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3325, line: 11, baseType: !3340)
!3340 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3325, line: 8, size: 64, elements: !3341)
!3341 = !{!3342, !3343}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3340, file: !3325, line: 9, baseType: !120, size: 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3340, file: !3325, line: 10, baseType: !180, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3333, file: !3325, line: 49, baseType: !120, size: 32, offset: 128)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3324, file: !3325, line: 57, baseType: !3346, size: 128)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3324, file: !3325, line: 53, size: 128, elements: !3347)
!3347 = !{!3348, !3349, !3350}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3346, file: !3325, line: 54, baseType: !2994, size: 32)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3346, file: !3325, line: 55, baseType: !404, size: 32, offset: 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3346, file: !3325, line: 56, baseType: !3339, size: 64, offset: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3324, file: !3325, line: 66, baseType: !3352, size: 256)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3324, file: !3325, line: 60, size: 256, elements: !3353)
!3353 = !{!3354, !3355, !3356, !3357, !3359}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3352, file: !3325, line: 61, baseType: !2994, size: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3352, file: !3325, line: 62, baseType: !404, size: 32, offset: 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3352, file: !3325, line: 63, baseType: !120, size: 32, offset: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3352, file: !3325, line: 64, baseType: !3358, size: 64, offset: 128)
!3358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !191, line: 94, baseType: !841)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3352, file: !3325, line: 65, baseType: !3358, size: 64, offset: 192)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3324, file: !3325, line: 105, baseType: !3361, size: 256)
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3324, file: !3325, line: 69, size: 256, elements: !3362)
!3362 = !{!3363, !3364}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3361, file: !3325, line: 70, baseType: !180, size: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, scope: !3361, file: !3325, line: 79, baseType: !3365, size: 192, offset: 64)
!3365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3361, file: !3325, line: 79, size: 192, elements: !3366)
!3366 = !{!3367, !3368, !3369, !3376, !3381}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3365, file: !3325, line: 81, baseType: !120, size: 32)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3365, file: !3325, line: 86, baseType: !491, size: 16)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3365, file: !3325, line: 92, baseType: !3370, size: 192)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3365, file: !3325, line: 88, size: 192, elements: !3371)
!3371 = !{!3372, !3374, !3375}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3370, file: !3325, line: 89, baseType: !3373, size: 64)
!3373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 64, elements: !2787)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3370, file: !3325, line: 90, baseType: !180, size: 64, offset: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3370, file: !3325, line: 91, baseType: !180, size: 64, offset: 128)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3365, file: !3325, line: 97, baseType: !3377, size: 96)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3365, file: !3325, line: 94, size: 96, elements: !3378)
!3378 = !{!3379, !3380}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3377, file: !3325, line: 95, baseType: !3373, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3377, file: !3325, line: 96, baseType: !197, size: 32, offset: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3365, file: !3325, line: 103, baseType: !3382, size: 128)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3365, file: !3325, line: 99, size: 128, elements: !3383)
!3383 = !{!3384, !3385, !3386}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3382, file: !3325, line: 100, baseType: !186, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3382, file: !3325, line: 101, baseType: !197, size: 32, offset: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3382, file: !3325, line: 102, baseType: !197, size: 32, offset: 96)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3324, file: !3325, line: 111, baseType: !3388, size: 128)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3324, file: !3325, line: 108, size: 128, elements: !3389)
!3389 = !{!3390, !3391}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3388, file: !3325, line: 109, baseType: !800, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3388, file: !3325, line: 110, baseType: !120, size: 32, offset: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3324, file: !3325, line: 118, baseType: !3393, size: 128)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3324, file: !3325, line: 114, size: 128, elements: !3394)
!3394 = !{!3395, !3396, !3397}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3393, file: !3325, line: 115, baseType: !180, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3393, file: !3325, line: 116, baseType: !120, size: 32, offset: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3393, file: !3325, line: 117, baseType: !7, size: 32, offset: 96)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2633, file: !2634, line: 1208, baseType: !3178, size: 448, offset: 17664)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2633, file: !2634, line: 1215, baseType: !206, size: 64, offset: 18112)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2633, file: !2634, line: 1217, baseType: !206, size: 64, offset: 18176)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2633, file: !2634, line: 1219, baseType: !206, size: 64, offset: 18240)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2633, file: !2634, line: 1223, baseType: !3403, size: 64, offset: 18304)
!3403 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3404, line: 99, baseType: !3405)
!3404 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3404, line: 99, size: 64, elements: !3406)
!3406 = !{!3407}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3405, file: !3404, line: 99, baseType: !2864, size: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2633, file: !2634, line: 1225, baseType: !651, size: 32, offset: 18368)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2633, file: !2634, line: 1226, baseType: !120, size: 32, offset: 18400)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2633, file: !2634, line: 1227, baseType: !120, size: 32, offset: 18432)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2633, file: !2634, line: 1231, baseType: !3412, size: 64, offset: 18496)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2634, line: 1231, flags: DIFlagFwdDecl)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2633, file: !2634, line: 1233, baseType: !322, size: 128, offset: 18560)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2633, file: !2634, line: 1240, baseType: !3416, size: 64, offset: 18688)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2634, line: 62, flags: DIFlagFwdDecl)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2633, file: !2634, line: 1242, baseType: !3419, size: 64, offset: 18752)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2634, line: 1242, flags: DIFlagFwdDecl)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2633, file: !2634, line: 1244, baseType: !322, size: 128, offset: 18816)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2633, file: !2634, line: 1245, baseType: !3423, size: 64, offset: 18944)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2634, line: 51, flags: DIFlagFwdDecl)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2633, file: !2634, line: 1246, baseType: !310, size: 256, offset: 19008)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2633, file: !2634, line: 1247, baseType: !7, size: 32, offset: 19264)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2633, file: !2634, line: 1250, baseType: !3428, size: 64, offset: 19328)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2634, line: 57, flags: DIFlagFwdDecl)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2633, file: !2634, line: 1251, baseType: !310, size: 256, offset: 19392)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2633, file: !2634, line: 1252, baseType: !322, size: 128, offset: 19648)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2633, file: !2634, line: 1259, baseType: !1451, size: 64, offset: 19776)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2633, file: !2634, line: 1260, baseType: !491, size: 16, offset: 19840)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2633, file: !2634, line: 1261, baseType: !491, size: 16, offset: 19856)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2633, file: !2634, line: 1314, baseType: !3436, size: 64, offset: 19904)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3438, line: 62, size: 256, align: 256, elements: !3439)
!3438 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3439 = !{!3440, !3441, !3442, !3443, !3444, !3445, !3446}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3437, file: !3438, line: 75, baseType: !197, size: 32)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3437, file: !3438, line: 90, baseType: !197, size: 32, offset: 32)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3437, file: !3438, line: 112, baseType: !207, size: 64, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3437, file: !3438, line: 132, baseType: !197, size: 32, offset: 128)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3437, file: !3438, line: 140, baseType: !197, size: 32, offset: 160)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3437, file: !3438, line: 149, baseType: !197, size: 32, offset: 192)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3437, file: !3438, line: 154, baseType: !3447, offset: 224)
!3447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, elements: !394)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2633, file: !2634, line: 1315, baseType: !195, size: 32, offset: 19968)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2633, file: !2634, line: 1316, baseType: !195, size: 32, offset: 20000)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2633, file: !2634, line: 1321, baseType: !186, size: 64, offset: 20032)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2633, file: !2634, line: 1325, baseType: !120, size: 32, offset: 20096)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2633, file: !2634, line: 1326, baseType: !120, size: 32, offset: 20128)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2633, file: !2634, line: 1327, baseType: !120, size: 32, offset: 20160)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2633, file: !2634, line: 1328, baseType: !120, size: 32, offset: 20192)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2633, file: !2634, line: 1329, baseType: !251, size: 128, align: 64, offset: 20224)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2633, file: !2634, line: 1332, baseType: !3457, size: 128, offset: 20352)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3458, line: 51, size: 128, elements: !3459)
!3458 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3459 = !{!3460, !3465, !3466}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3457, file: !3458, line: 60, baseType: !3461, size: 64)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3462, line: 7, size: 64, elements: !3463)
!3462 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3463 = !{!3464}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3461, file: !3462, line: 12, baseType: !2861, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3457, file: !3458, line: 63, baseType: !210, size: 8, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3457, file: !3458, line: 70, baseType: !210, size: 8, offset: 72)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2633, file: !2634, line: 1335, baseType: !3468, size: 64, offset: 20480)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2634, line: 59, flags: DIFlagFwdDecl)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2633, file: !2634, line: 1337, baseType: !3471, size: 128, offset: 20544)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3458, line: 39, size: 128, elements: !3472)
!3472 = !{!3473, !3474, !3475}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3471, file: !3458, line: 40, baseType: !1072, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3471, file: !3458, line: 42, baseType: !197, size: 32, offset: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3471, file: !3458, line: 43, baseType: !197, size: 32, offset: 96)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2633, file: !2634, line: 1340, baseType: !3477, size: 64, offset: 20672)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2634, line: 69, flags: DIFlagFwdDecl)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2633, file: !2634, line: 1351, baseType: !120, size: 32, offset: 20736)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2633, file: !2634, line: 1352, baseType: !120, size: 32, offset: 20768)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2633, file: !2634, line: 1354, baseType: !186, size: 64, offset: 20800)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2633, file: !2634, line: 1364, baseType: !206, size: 64, offset: 20864)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2633, file: !2634, line: 1365, baseType: !206, size: 64, offset: 20928)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2633, file: !2634, line: 1412, baseType: !186, size: 64, offset: 20992)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2633, file: !2634, line: 1453, baseType: !3486, size: 64, offset: 21056)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2634, line: 1453, flags: DIFlagFwdDecl)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2633, file: !2634, line: 1457, baseType: !3489, size: 64, offset: 21120)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !87, line: 61, size: 576, elements: !3491)
!3491 = !{!3492, !3493, !3512, !3515, !3516, !3549, !3559}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3490, file: !87, line: 62, baseType: !86, size: 32)
!3493 = !DIDerivedType(tag: DW_TAG_member, scope: !3490, file: !87, line: 64, baseType: !3494, size: 192, offset: 64)
!3494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3490, file: !87, line: 64, size: 192, elements: !3495)
!3495 = !{!3496, !3507}
!3496 = !DIDerivedType(tag: DW_TAG_member, scope: !3494, file: !87, line: 65, baseType: !3497, size: 192)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3494, file: !87, line: 65, size: 192, elements: !3498)
!3498 = !{!3499, !3506}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3497, file: !87, line: 66, baseType: !3500, size: 128)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3501, line: 50, size: 128, elements: !3502)
!3501 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3502 = !{!3503, !3504, !3505}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3500, file: !3501, line: 52, baseType: !186, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3500, file: !3501, line: 54, baseType: !7, size: 32, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3500, file: !3501, line: 55, baseType: !7, size: 32, offset: 96)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3497, file: !87, line: 67, baseType: !186, size: 64, offset: 128)
!3507 = !DIDerivedType(tag: DW_TAG_member, scope: !3494, file: !87, line: 70, baseType: !3508, size: 192)
!3508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3494, file: !87, line: 70, size: 192, elements: !3509)
!3509 = !{!3510, !3511}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3508, file: !87, line: 71, baseType: !251, size: 128, align: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3508, file: !87, line: 72, baseType: !186, size: 64, offset: 128)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3490, file: !87, line: 76, baseType: !3513, size: 64, offset: 256)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !87, line: 76, flags: DIFlagFwdDecl)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3490, file: !87, line: 77, baseType: !186, size: 64, offset: 320)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3490, file: !87, line: 79, baseType: !3517, size: 64, offset: 384)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3501, line: 25, size: 256, elements: !3519)
!3519 = !{!3520, !3526, !3530}
!3520 = !DIDerivedType(tag: DW_TAG_member, scope: !3518, file: !3501, line: 26, baseType: !3521, size: 128)
!3521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3518, file: !3501, line: 26, size: 128, elements: !3522)
!3522 = !{!3523, !3525}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3521, file: !3501, line: 27, baseType: !3524, size: 128)
!3524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 128, elements: !3052)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3521, file: !3501, line: 28, baseType: !3524, size: 128)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3518, file: !3501, line: 31, baseType: !3527, size: 64, offset: 128)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3529)
!3529 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3501, line: 23, flags: DIFlagFwdDecl)
!3530 = !DIDerivedType(tag: DW_TAG_member, scope: !3518, file: !3501, line: 33, baseType: !3531, size: 64, offset: 192)
!3531 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3518, file: !3501, line: 33, size: 64, elements: !3532)
!3532 = !{!3533, !3539, !3544}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3531, file: !3501, line: 38, baseType: !3534, size: 64)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3531, file: !3501, line: 34, size: 64, elements: !3535)
!3535 = !{!3536, !3537, !3538}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3534, file: !3501, line: 35, baseType: !449, size: 32)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3534, file: !3501, line: 36, baseType: !285, size: 8, offset: 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3534, file: !3501, line: 37, baseType: !285, size: 8, offset: 40)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3531, file: !3501, line: 42, baseType: !3540, size: 16)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3531, file: !3501, line: 39, size: 16, elements: !3541)
!3541 = !{!3542, !3543}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3540, file: !3501, line: 40, baseType: !285, size: 8)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3540, file: !3501, line: 41, baseType: !285, size: 8, offset: 8)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3531, file: !3501, line: 46, baseType: !3545, size: 16)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3531, file: !3501, line: 43, size: 16, elements: !3546)
!3546 = !{!3547, !3548}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3545, file: !3501, line: 44, baseType: !285, size: 8)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3545, file: !3501, line: 45, baseType: !285, size: 8, offset: 8)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3490, file: !87, line: 81, baseType: !3550, size: 64, offset: 448)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !87, line: 85, size: 384, elements: !3552)
!3552 = !{!3553, !3554, !3555, !3556, !3557, !3558}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3551, file: !87, line: 86, baseType: !3513, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3551, file: !87, line: 87, baseType: !186, size: 64, offset: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3551, file: !87, line: 88, baseType: !186, size: 64, offset: 128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3551, file: !87, line: 89, baseType: !186, size: 64, offset: 192)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3551, file: !87, line: 90, baseType: !210, size: 8, offset: 256)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3551, file: !87, line: 92, baseType: !3550, size: 64, offset: 320)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3490, file: !87, line: 82, baseType: !7, size: 32, offset: 512)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2633, file: !2634, line: 1463, baseType: !3561, offset: 21184)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2634, line: 739, elements: !1226)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2633, file: !2634, line: 1470, baseType: !251, size: 128, align: 64, offset: 21184)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2633, file: !2634, line: 1471, baseType: !225, size: 32, offset: 21312)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2633, file: !2634, line: 1472, baseType: !120, size: 32, offset: 21344)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2633, file: !2634, line: 1474, baseType: !2632, size: 64, offset: 21376)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2633, file: !2634, line: 1475, baseType: !2156, size: 320, offset: 21440)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2633, file: !2634, line: 1478, baseType: !3568, size: 64, offset: 21760)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1676, line: 49, size: 512, elements: !3570)
!3570 = !{!3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3569, file: !1676, line: 50, baseType: !3568, size: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3569, file: !1676, line: 51, baseType: !180, size: 64, offset: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3569, file: !1676, line: 52, baseType: !186, size: 64, offset: 128)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3569, file: !1676, line: 53, baseType: !186, size: 64, offset: 192)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3569, file: !1676, line: 54, baseType: !1625, size: 64, offset: 256)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3569, file: !1676, line: 56, baseType: !7, size: 32, offset: 320)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3569, file: !1676, line: 58, baseType: !7, size: 32, offset: 352)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3569, file: !1676, line: 59, baseType: !205, size: 64, offset: 384)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3569, file: !1676, line: 60, baseType: !1321, size: 64, offset: 448)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2633, file: !2634, line: 1482, baseType: !225, size: 32, offset: 21824)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2633, file: !2634, line: 1489, baseType: !180, size: 64, offset: 21888)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2633, file: !2634, line: 1504, baseType: !180, size: 64, offset: 21952)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2633, file: !2634, line: 1505, baseType: !207, size: 64, offset: 22016)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2633, file: !2634, line: 1506, baseType: !206, size: 64, offset: 22080)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2633, file: !2634, line: 1507, baseType: !207, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2633, file: !2634, line: 1508, baseType: !207, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2633, file: !2634, line: 1509, baseType: !207, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2633, file: !2634, line: 1510, baseType: !251, size: 128, align: 64, offset: 22208)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2633, file: !2634, line: 1511, baseType: !120, size: 32, offset: 22336)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2633, file: !2634, line: 1515, baseType: !3591, size: 64, offset: 22400)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !246, line: 56, size: 64, elements: !3592)
!3592 = !{!3593}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3591, file: !246, line: 57, baseType: !249, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2633, file: !2634, line: 1518, baseType: !3591, size: 64, offset: 22464)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2633, file: !2634, line: 1528, baseType: !251, size: 128, align: 64, offset: 22528)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2633, file: !2634, line: 1552, baseType: !3597, size: 35328, offset: 23040)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3598, line: 430, size: 35328, elements: !3599)
!3598 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3599 = !{!3600, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3629, !3630, !3631, !3632, !3633, !3634, !3637, !3638, !3639, !3640}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3597, file: !3598, line: 432, baseType: !3601, size: 192)
!3601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3602, size: 192, elements: !354)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3603, line: 16, size: 64, elements: !3604)
!3603 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3604 = !{!3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3602, file: !3603, line: 17, baseType: !293, size: 16)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3602, file: !3603, line: 18, baseType: !293, size: 16, offset: 16)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3602, file: !3603, line: 19, baseType: !293, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3602, file: !3603, line: 19, baseType: !293, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3602, file: !3603, line: 19, baseType: !293, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3602, file: !3603, line: 19, baseType: !293, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3602, file: !3603, line: 19, baseType: !293, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3602, file: !3603, line: 20, baseType: !293, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3602, file: !3603, line: 20, baseType: !293, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3602, file: !3603, line: 20, baseType: !293, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3602, file: !3603, line: 20, baseType: !293, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3602, file: !3603, line: 20, baseType: !293, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3602, file: !3603, line: 20, baseType: !293, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3597, file: !3598, line: 436, baseType: !186, size: 64, offset: 192)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3597, file: !3598, line: 440, baseType: !295, size: 16, offset: 256)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3597, file: !3598, line: 441, baseType: !295, size: 16, offset: 272)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3597, file: !3598, line: 442, baseType: !295, size: 16, offset: 288)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3597, file: !3598, line: 443, baseType: !295, size: 16, offset: 304)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3597, file: !3598, line: 447, baseType: !186, size: 64, offset: 320)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3597, file: !3598, line: 448, baseType: !186, size: 64, offset: 384)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3597, file: !3598, line: 459, baseType: !3626, size: 256, offset: 448)
!3626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3627, size: 256, elements: !375)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3598, line: 428, flags: DIFlagFwdDecl)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3597, file: !3598, line: 461, baseType: !186, size: 64, offset: 704)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3597, file: !3598, line: 463, baseType: !186, size: 64, offset: 768)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3597, file: !3598, line: 465, baseType: !186, size: 64, offset: 832)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3597, file: !3598, line: 466, baseType: !186, size: 64, offset: 896)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3597, file: !3598, line: 467, baseType: !186, size: 64, offset: 960)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3597, file: !3598, line: 473, baseType: !3635, size: 64, offset: 1024)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3598, line: 10, flags: DIFlagFwdDecl)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3597, file: !3598, line: 480, baseType: !186, size: 64, offset: 1088)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3597, file: !3598, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3597, file: !3598, line: 491, baseType: !195, size: 32, offset: 1184)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3597, file: !3598, line: 501, baseType: !3641, size: 33792, offset: 1536)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3642, line: 448, size: 33792, elements: !3643)
!3642 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3643 = !{!3644, !3645, !3646, !3810, !3811, !3817, !3818}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3641, file: !3642, line: 461, baseType: !7, size: 32)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3641, file: !3642, line: 468, baseType: !186, size: 64, offset: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3641, file: !3642, line: 476, baseType: !3647, size: 64, offset: 128)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3642, line: 356, size: 33280, align: 512, elements: !3649)
!3649 = !{!3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3648, file: !3642, line: 358, baseType: !7, size: 32)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3648, file: !3642, line: 361, baseType: !7, size: 32, offset: 32)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3648, file: !3642, line: 364, baseType: !206, size: 64, offset: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3648, file: !3642, line: 367, baseType: !206, size: 64, offset: 128)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3648, file: !3642, line: 370, baseType: !206, size: 64, offset: 192)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3648, file: !3642, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3648, file: !3642, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3648, file: !3642, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3648, file: !3642, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3648, file: !3642, line: 397, baseType: !3660, size: 32768, offset: 512)
!3660 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3642, line: 348, size: 32768, elements: !3661)
!3661 = !{!3662, !3677, !3716, !3793, !3806}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3660, file: !3642, line: 349, baseType: !3663, size: 896)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3642, line: 12, size: 896, elements: !3664)
!3664 = !{!3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3676}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3663, file: !3642, line: 13, baseType: !195, size: 32)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3663, file: !3642, line: 14, baseType: !195, size: 32, offset: 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3663, file: !3642, line: 15, baseType: !195, size: 32, offset: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3663, file: !3642, line: 16, baseType: !195, size: 32, offset: 96)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3663, file: !3642, line: 17, baseType: !195, size: 32, offset: 128)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3663, file: !3642, line: 18, baseType: !195, size: 32, offset: 160)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3663, file: !3642, line: 19, baseType: !195, size: 32, offset: 192)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3663, file: !3642, line: 22, baseType: !3673, size: 640, offset: 224)
!3673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 640, elements: !3674)
!3674 = !{!3675}
!3675 = !DISubrange(count: 20)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3663, file: !3642, line: 25, baseType: !195, size: 32, offset: 864)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3660, file: !3642, line: 350, baseType: !3678, size: 4096, align: 128)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3642, line: 34, size: 4096, align: 128, elements: !3679)
!3679 = !{!3680, !3681, !3682, !3683, !3684, !3699, !3700, !3701, !3705, !3707, !3711}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3678, file: !3642, line: 35, baseType: !293, size: 16)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3678, file: !3642, line: 36, baseType: !293, size: 16, offset: 16)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3678, file: !3642, line: 37, baseType: !293, size: 16, offset: 32)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3678, file: !3642, line: 38, baseType: !293, size: 16, offset: 48)
!3684 = !DIDerivedType(tag: DW_TAG_member, scope: !3678, file: !3642, line: 39, baseType: !3685, size: 128, offset: 64)
!3685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3678, file: !3642, line: 39, size: 128, elements: !3686)
!3686 = !{!3687, !3692}
!3687 = !DIDerivedType(tag: DW_TAG_member, scope: !3685, file: !3642, line: 40, baseType: !3688, size: 128)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3685, file: !3642, line: 40, size: 128, elements: !3689)
!3689 = !{!3690, !3691}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3688, file: !3642, line: 41, baseType: !206, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3688, file: !3642, line: 42, baseType: !206, size: 64, offset: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, scope: !3685, file: !3642, line: 44, baseType: !3693, size: 128)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3685, file: !3642, line: 44, size: 128, elements: !3694)
!3694 = !{!3695, !3696, !3697, !3698}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3693, file: !3642, line: 45, baseType: !195, size: 32)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3693, file: !3642, line: 46, baseType: !195, size: 32, offset: 32)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3693, file: !3642, line: 47, baseType: !195, size: 32, offset: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3693, file: !3642, line: 48, baseType: !195, size: 32, offset: 96)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3678, file: !3642, line: 51, baseType: !195, size: 32, offset: 192)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3678, file: !3642, line: 52, baseType: !195, size: 32, offset: 224)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3678, file: !3642, line: 55, baseType: !3702, size: 1024, offset: 256)
!3702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 1024, elements: !3703)
!3703 = !{!3704}
!3704 = !DISubrange(count: 32)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3678, file: !3642, line: 58, baseType: !3706, size: 2048, offset: 1280)
!3706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 2048, elements: !984)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3678, file: !3642, line: 60, baseType: !3708, size: 384, offset: 3328)
!3708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 384, elements: !3709)
!3709 = !{!3710}
!3710 = !DISubrange(count: 12)
!3711 = !DIDerivedType(tag: DW_TAG_member, scope: !3678, file: !3642, line: 62, baseType: !3712, size: 384, offset: 3712)
!3712 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3678, file: !3642, line: 62, size: 384, elements: !3713)
!3713 = !{!3714, !3715}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3712, file: !3642, line: 63, baseType: !3708, size: 384)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3712, file: !3642, line: 64, baseType: !3708, size: 384)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3660, file: !3642, line: 351, baseType: !3717, size: 1088)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3642, line: 79, size: 1088, elements: !3718)
!3718 = !{!3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3792}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3717, file: !3642, line: 80, baseType: !195, size: 32)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3717, file: !3642, line: 81, baseType: !195, size: 32, offset: 32)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3717, file: !3642, line: 82, baseType: !195, size: 32, offset: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3717, file: !3642, line: 83, baseType: !195, size: 32, offset: 96)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3717, file: !3642, line: 84, baseType: !195, size: 32, offset: 128)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3717, file: !3642, line: 85, baseType: !195, size: 32, offset: 160)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3717, file: !3642, line: 86, baseType: !195, size: 32, offset: 192)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3717, file: !3642, line: 88, baseType: !3673, size: 640, offset: 224)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3717, file: !3642, line: 89, baseType: !285, size: 8, offset: 864)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3717, file: !3642, line: 90, baseType: !285, size: 8, offset: 872)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3717, file: !3642, line: 91, baseType: !285, size: 8, offset: 880)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3717, file: !3642, line: 92, baseType: !285, size: 8, offset: 888)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3717, file: !3642, line: 93, baseType: !285, size: 8, offset: 896)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3717, file: !3642, line: 94, baseType: !285, size: 8, offset: 904)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3717, file: !3642, line: 95, baseType: !3734, size: 64, offset: 960)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3736, line: 11, size: 128, elements: !3737)
!3736 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3737 = !{!3738, !3739}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3735, file: !3736, line: 12, baseType: !800, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3735, file: !3736, line: 13, baseType: !3740, size: 64, offset: 64)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3742, line: 103, size: 1344, elements: !3743)
!3742 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3743 = !{!3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3772, !3773, !3774}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3741, file: !3742, line: 109, baseType: !186, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3741, file: !3742, line: 110, baseType: !186, size: 64, offset: 64)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3741, file: !3742, line: 111, baseType: !186, size: 64, offset: 128)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3741, file: !3742, line: 112, baseType: !186, size: 64, offset: 192)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3741, file: !3742, line: 113, baseType: !186, size: 64, offset: 256)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3741, file: !3742, line: 114, baseType: !186, size: 64, offset: 320)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3741, file: !3742, line: 117, baseType: !186, size: 64, offset: 384)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3741, file: !3742, line: 118, baseType: !186, size: 64, offset: 448)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3741, file: !3742, line: 119, baseType: !186, size: 64, offset: 512)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3741, file: !3742, line: 120, baseType: !186, size: 64, offset: 576)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3741, file: !3742, line: 121, baseType: !186, size: 64, offset: 640)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3741, file: !3742, line: 122, baseType: !186, size: 64, offset: 704)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3741, file: !3742, line: 123, baseType: !186, size: 64, offset: 768)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3741, file: !3742, line: 124, baseType: !186, size: 64, offset: 832)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3741, file: !3742, line: 125, baseType: !186, size: 64, offset: 896)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3741, file: !3742, line: 139, baseType: !186, size: 64, offset: 960)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3741, file: !3742, line: 142, baseType: !186, size: 64, offset: 1024)
!3761 = !DIDerivedType(tag: DW_TAG_member, scope: !3741, file: !3742, line: 144, baseType: !3762, size: 64, offset: 1088)
!3762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3741, file: !3742, line: 144, size: 64, elements: !3763)
!3763 = !{!3764, !3765, !3766}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3762, file: !3742, line: 146, baseType: !293, size: 16)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3762, file: !3742, line: 148, baseType: !206, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3762, file: !3742, line: 150, baseType: !3767, size: 64)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3742, line: 59, size: 64, elements: !3768)
!3768 = !{!3769, !3770, !3771}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3767, file: !3742, line: 61, baseType: !206, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3767, file: !3742, line: 63, baseType: !206, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3767, file: !3742, line: 65, baseType: !206, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3741, file: !3742, line: 153, baseType: !186, size: 64, offset: 1152)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3741, file: !3742, line: 154, baseType: !186, size: 64, offset: 1216)
!3774 = !DIDerivedType(tag: DW_TAG_member, scope: !3741, file: !3742, line: 156, baseType: !3775, size: 64, offset: 1280)
!3775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3741, file: !3742, line: 156, size: 64, elements: !3776)
!3776 = !{!3777, !3778, !3779}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3775, file: !3742, line: 158, baseType: !293, size: 16)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3775, file: !3742, line: 160, baseType: !206, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3775, file: !3742, line: 162, baseType: !3780, size: 64)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3742, line: 69, size: 64, elements: !3781)
!3781 = !{!3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3780, file: !3742, line: 71, baseType: !206, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3780, file: !3742, line: 73, baseType: !206, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3780, file: !3742, line: 75, baseType: !206, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3780, file: !3742, line: 77, baseType: !206, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3780, file: !3742, line: 80, baseType: !206, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3780, file: !3742, line: 83, baseType: !206, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3780, file: !3742, line: 86, baseType: !206, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3780, file: !3742, line: 88, baseType: !206, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3780, file: !3742, line: 93, baseType: !206, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3780, file: !3742, line: 100, baseType: !206, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3717, file: !3642, line: 96, baseType: !195, size: 32, offset: 1024)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3660, file: !3642, line: 352, baseType: !3794, size: 4608, align: 512)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3642, line: 333, size: 4608, align: 512, elements: !3795)
!3795 = !{!3796, !3797, !3804}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3794, file: !3642, line: 334, baseType: !3678, size: 4096, align: 128)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3794, file: !3642, line: 335, baseType: !3798, size: 512, offset: 4096)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3642, line: 312, size: 512, elements: !3799)
!3799 = !{!3800, !3801, !3802}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3798, file: !3642, line: 313, baseType: !206, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3798, file: !3642, line: 314, baseType: !206, size: 64, offset: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3798, file: !3642, line: 315, baseType: !3803, size: 384, offset: 128)
!3803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 384, elements: !510)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3794, file: !3642, line: 336, baseType: !3805, offset: 4608)
!3805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, elements: !394)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3660, file: !3642, line: 353, baseType: !3807, size: 32768)
!3807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 32768, elements: !3808)
!3808 = !{!3809}
!3809 = !DISubrange(count: 4096)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3641, file: !3642, line: 484, baseType: !3647, size: 64, offset: 192)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3641, file: !3642, line: 491, baseType: !3812, size: 128, offset: 256)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3642, line: 404, size: 128, elements: !3813)
!3813 = !{!3814, !3815, !3816}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3812, file: !3642, line: 424, baseType: !206, size: 64)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3812, file: !3642, line: 432, baseType: !7, size: 32, offset: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3812, file: !3642, line: 440, baseType: !7, size: 32, offset: 96)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3641, file: !3642, line: 498, baseType: !3812, size: 128, offset: 384)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3641, file: !3642, line: 508, baseType: !3648, size: 33280, align: 512, offset: 512)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2615, file: !2616, line: 16, baseType: !379, size: 192, offset: 512)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2615, file: !2616, line: 17, baseType: !229, size: 32, offset: 704)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !896, file: !65, line: 1240, baseType: !180, size: 64, offset: 6912)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !896, file: !65, line: 1243, baseType: !195, size: 32, offset: 6976)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !896, file: !65, line: 1245, baseType: !480, size: 64, offset: 7040)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !896, file: !65, line: 1246, baseType: !480, size: 64, offset: 7104)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !896, file: !65, line: 1248, baseType: !197, size: 32, offset: 7168)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !896, file: !65, line: 1249, baseType: !3827, size: 64, offset: 7232)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !65, line: 634, flags: DIFlagFwdDecl)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !896, file: !65, line: 1252, baseType: !3830, size: 256, offset: 7296)
!3830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 256, elements: !3703)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !896, file: !65, line: 1253, baseType: !3832, size: 128, offset: 7552)
!3832 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3833, line: 21, baseType: !3834)
!3833 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3833, line: 19, size: 128, elements: !3835)
!3835 = !{!3836}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3834, file: !3833, line: 20, baseType: !3837, size: 128)
!3837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 128, elements: !3052)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !896, file: !65, line: 1255, baseType: !7, size: 32, offset: 7680)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !896, file: !65, line: 1261, baseType: !310, size: 256, offset: 7744)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !896, file: !65, line: 1267, baseType: !524, size: 64, offset: 8000)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !896, file: !65, line: 1269, baseType: !3842, size: 64, offset: 8064)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3844)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !647, line: 128, size: 1024, align: 512, elements: !3845)
!3845 = !{!3846, !3850, !3851, !3858, !3864, !3868, !3872, !3876, !3877, !3881, !3885, !3890, !3894}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3844, file: !647, line: 129, baseType: !3847, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!120, !645, !7}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3844, file: !647, line: 130, baseType: !3847, size: 64, offset: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3844, file: !647, line: 131, baseType: !3852, size: 64, offset: 128)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!120, !3855, !3857}
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3844, file: !647, line: 132, baseType: !3859, size: 64, offset: 192)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!120, !3855, !7, !524, !3862}
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !670)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3844, file: !647, line: 134, baseType: !3865, size: 64, offset: 256)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!120, !3855}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3844, file: !647, line: 135, baseType: !3869, size: 64, offset: 320)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!120, !645}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3844, file: !647, line: 136, baseType: !3873, size: 64, offset: 384)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{null, !645}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3844, file: !647, line: 137, baseType: !3873, size: 64, offset: 448)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3844, file: !647, line: 138, baseType: !3878, size: 64, offset: 512)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{null, !645, !685}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3844, file: !647, line: 139, baseType: !3882, size: 64, offset: 576)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!534, !645, !534, !120}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3844, file: !647, line: 140, baseType: !3886, size: 64, offset: 640)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!640, !3889}
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3844, file: !647, line: 141, baseType: !3891, size: 64, offset: 704)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!120, !808, !210}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3844, file: !647, line: 142, baseType: !3895, size: 64, offset: 768)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!645, !645, !3898}
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !686)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !896, file: !65, line: 1271, baseType: !3901, size: 448, offset: 8128)
!3901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2397, line: 63, size: 448, elements: !3902)
!3902 = !{!3903, !3908, !3909, !3910, !3911, !3912, !3913}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3901, file: !2397, line: 64, baseType: !3904, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!186, !3907, !2395}
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3901, file: !2397, line: 66, baseType: !3904, size: 64, offset: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3901, file: !2397, line: 69, baseType: !800, size: 64, offset: 128)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3901, file: !2397, line: 70, baseType: !120, size: 32, offset: 192)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3901, file: !2397, line: 71, baseType: !7, size: 32, offset: 224)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3901, file: !2397, line: 74, baseType: !322, size: 128, offset: 256)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3901, file: !2397, line: 85, baseType: !3914, size: 64, offset: 384)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !896, file: !65, line: 1274, baseType: !300, size: 64, offset: 8576)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !896, file: !65, line: 1280, baseType: !300, size: 64, offset: 8640)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !896, file: !65, line: 1283, baseType: !120, size: 32, offset: 8704)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !896, file: !65, line: 1286, baseType: !1716, size: 32, offset: 8736)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !896, file: !65, line: 1289, baseType: !2218, size: 64, offset: 8768)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !896, file: !65, line: 1290, baseType: !366, size: 64, offset: 8832)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !896, file: !65, line: 1297, baseType: !607, size: 64, offset: 8896)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !896, file: !65, line: 1304, baseType: !3923, size: 64, offset: 8960)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3924, line: 49, size: 64, elements: !3925)
!3924 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3925 = !{!3926}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3923, file: !3924, line: 50, baseType: !3927, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3924, line: 41, size: 512, align: 512, elements: !3929)
!3929 = !{!3930, !3931, !3936}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3928, file: !3924, line: 43, baseType: !261, size: 32)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3928, file: !3924, line: 45, baseType: !3932, size: 192, offset: 64)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3924, line: 29, size: 192, elements: !3933)
!3933 = !{!3934, !3935}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3932, file: !3924, line: 30, baseType: !322, size: 128)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3932, file: !3924, line: 32, baseType: !800, size: 64, offset: 128)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3928, file: !3924, line: 46, baseType: !800, size: 64, offset: 256)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !896, file: !65, line: 1305, baseType: !3923, size: 64, offset: 9024)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !896, file: !65, line: 1306, baseType: !251, size: 128, align: 64, offset: 9088)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !896, file: !65, line: 1307, baseType: !1360, size: 256, offset: 9216)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !896, file: !65, line: 1309, baseType: !310, size: 256, offset: 9472)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !896, file: !65, line: 1314, baseType: !120, size: 32, offset: 9728)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !896, file: !65, line: 1317, baseType: !261, size: 32, align: 512, offset: 10240)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !896, file: !65, line: 1318, baseType: !322, size: 128, offset: 10304)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !896, file: !65, line: 1320, baseType: !261, size: 32, offset: 10432)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !896, file: !65, line: 1321, baseType: !322, size: 128, offset: 10496)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !686, file: !65, line: 656, baseType: !1045, size: 64, offset: 512)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !686, file: !65, line: 659, baseType: !180, size: 64, offset: 576)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !686, file: !65, line: 663, baseType: !186, size: 64, offset: 640)
!3949 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !65, line: 671, baseType: !3950, size: 32, offset: 704)
!3950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !686, file: !65, line: 671, size: 32, elements: !3951)
!3951 = !{!3952, !3954}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3950, file: !65, line: 672, baseType: !3953, size: 32)
!3953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3950, file: !65, line: 673, baseType: !7, size: 32)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !686, file: !65, line: 675, baseType: !760, size: 32, offset: 736)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !686, file: !65, line: 676, baseType: !328, size: 64, offset: 768)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !686, file: !65, line: 677, baseType: !796, size: 128, offset: 832)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !686, file: !65, line: 678, baseType: !796, size: 128, offset: 960)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !686, file: !65, line: 679, baseType: !796, size: 128, offset: 1088)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !686, file: !65, line: 680, baseType: !261, size: 32, offset: 1216)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !686, file: !65, line: 681, baseType: !295, size: 16, offset: 1248)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !686, file: !65, line: 682, baseType: !285, size: 8, offset: 1264)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !686, file: !65, line: 683, baseType: !285, size: 8, offset: 1272)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !686, file: !65, line: 684, baseType: !2528, size: 64, offset: 1280)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !686, file: !65, line: 691, baseType: !186, size: 64, offset: 1344)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !686, file: !65, line: 692, baseType: !464, size: 320, offset: 1408)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !686, file: !65, line: 694, baseType: !186, size: 64, offset: 1728)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !686, file: !65, line: 695, baseType: !186, size: 64, offset: 1792)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !686, file: !65, line: 697, baseType: !370, size: 128, offset: 1856)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !686, file: !65, line: 698, baseType: !322, size: 128, offset: 1984)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !686, file: !65, line: 707, baseType: !322, size: 128, offset: 2112)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !686, file: !65, line: 708, baseType: !322, size: 128, offset: 2240)
!3973 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !65, line: 709, baseType: !3974, size: 128, offset: 2368)
!3974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !686, file: !65, line: 709, size: 128, elements: !3975)
!3975 = !{!3976, !3977}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3974, file: !65, line: 710, baseType: !366, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3974, file: !65, line: 711, baseType: !251, size: 128, align: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !686, file: !65, line: 713, baseType: !302, size: 64, offset: 2496)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !686, file: !65, line: 714, baseType: !302, size: 64, offset: 2560)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !686, file: !65, line: 715, baseType: !229, size: 32, offset: 2624)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !686, file: !65, line: 716, baseType: !229, size: 32, offset: 2656)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !686, file: !65, line: 717, baseType: !229, size: 32, offset: 2688)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !686, file: !65, line: 719, baseType: !229, size: 32, offset: 2720)
!3984 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !65, line: 721, baseType: !3985, size: 64, offset: 2752)
!3985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !686, file: !65, line: 721, size: 64, elements: !3986)
!3986 = !{!3987, !4111}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3985, file: !65, line: 722, baseType: !3988, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3990)
!3990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !65, line: 1914, size: 2112, elements: !3991)
!3991 = !{!3992, !3993, !3997, !4001, !4005, !4006, !4007, !4013, !4026, !4030, !4034, !4035, !4039, !4040, !4044, !4049, !4050, !4054, !4058, !4064, !4065, !4069, !4070, !4074, !4078, !4079, !4084, !4088, !4092, !4096, !4100, !4101, !4107}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3990, file: !65, line: 1915, baseType: !928, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3990, file: !65, line: 1916, baseType: !3994, size: 64, offset: 64)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!328, !238, !328, !120}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3990, file: !65, line: 1917, baseType: !3998, size: 64, offset: 128)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!839, !238, !534, !188, !1839}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3990, file: !65, line: 1918, baseType: !4002, size: 64, offset: 192)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!839, !238, !524, !188, !1839}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3990, file: !65, line: 1919, baseType: !1649, size: 64, offset: 256)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3990, file: !65, line: 1920, baseType: !1649, size: 64, offset: 320)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3990, file: !65, line: 1921, baseType: !4008, size: 64, offset: 384)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!120, !1652, !4011, !7}
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !65, line: 53, flags: DIFlagFwdDecl)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3990, file: !65, line: 1923, baseType: !4014, size: 64, offset: 448)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!120, !238, !4017}
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !65, line: 1858, size: 128, elements: !4019)
!4019 = !{!4020, !4025}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4018, file: !65, line: 1859, baseType: !4021, size: 64)
!4021 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !65, line: 1855, baseType: !4022)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!210, !4017, !524, !120, !328, !206, !7}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4018, file: !65, line: 1860, baseType: !328, size: 64, offset: 64)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3990, file: !65, line: 1924, baseType: !4027, size: 64, offset: 512)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!1886, !238, !1888}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3990, file: !65, line: 1925, baseType: !4031, size: 64, offset: 576)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!800, !238, !7, !186}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3990, file: !65, line: 1926, baseType: !4031, size: 64, offset: 640)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3990, file: !65, line: 1927, baseType: !4036, size: 64, offset: 704)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!120, !238, !1192}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3990, file: !65, line: 1928, baseType: !186, size: 64, offset: 768)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3990, file: !65, line: 1929, baseType: !4041, size: 64, offset: 832)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!120, !685, !238}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3990, file: !65, line: 1930, baseType: !4045, size: 64, offset: 896)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!120, !238, !4048}
!4048 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !65, line: 1061, baseType: !180)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3990, file: !65, line: 1931, baseType: !4041, size: 64, offset: 960)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3990, file: !65, line: 1932, baseType: !4051, size: 64, offset: 1024)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!120, !238, !328, !328, !120}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3990, file: !65, line: 1933, baseType: !4055, size: 64, offset: 1088)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!120, !120, !238, !120}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3990, file: !65, line: 1934, baseType: !4059, size: 64, offset: 1152)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!120, !238, !120, !4062}
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !65, line: 1063, flags: DIFlagFwdDecl)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3990, file: !65, line: 1935, baseType: !1230, size: 64, offset: 1216)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3990, file: !65, line: 1936, baseType: !4066, size: 64, offset: 1280)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!120, !120}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3990, file: !65, line: 1937, baseType: !4059, size: 64, offset: 1344)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3990, file: !65, line: 1938, baseType: !4071, size: 64, offset: 1408)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!839, !3468, !238, !1839, !188, !7}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3990, file: !65, line: 1939, baseType: !4075, size: 64, offset: 1472)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!839, !238, !1839, !3468, !188, !7}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3990, file: !65, line: 1940, baseType: !1706, size: 64, offset: 1536)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3990, file: !65, line: 1941, baseType: !4080, size: 64, offset: 1600)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!120, !238, !120, !4083, !1626}
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3990, file: !65, line: 1942, baseType: !4085, size: 64, offset: 1664)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!800, !238, !120, !328, !328}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3990, file: !65, line: 1944, baseType: !4089, size: 64, offset: 1728)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{null, !1818, !238}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3990, file: !65, line: 1948, baseType: !4093, size: 64, offset: 1792)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!839, !238, !328, !238, !328, !188, !7}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3990, file: !65, line: 1950, baseType: !4097, size: 64, offset: 1856)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!328, !238, !328, !238, !328, !328, !7}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3990, file: !65, line: 1953, baseType: !4051, size: 64, offset: 1920)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3990, file: !65, line: 1954, baseType: !4102, size: 64, offset: 1984)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!120, !4105, !7}
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !65, line: 1911, flags: DIFlagFwdDecl)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3990, file: !65, line: 1955, baseType: !4108, size: 64, offset: 2048)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!120, !4105, !4011, !7}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3985, file: !65, line: 723, baseType: !2286, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !686, file: !65, line: 725, baseType: !4113, size: 64, offset: 2816)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !65, line: 725, flags: DIFlagFwdDecl)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !686, file: !65, line: 726, baseType: !1046, size: 1536, align: 64, offset: 2880)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !686, file: !65, line: 727, baseType: !322, size: 128, offset: 4416)
!4117 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !65, line: 728, baseType: !4118, size: 64, offset: 4544)
!4118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !686, file: !65, line: 728, size: 64, elements: !4119)
!4119 = !{!4120, !4121, !4124, !4125}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4118, file: !65, line: 729, baseType: !3468, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4118, file: !65, line: 730, baseType: !4122, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !65, line: 730, flags: DIFlagFwdDecl)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4118, file: !65, line: 731, baseType: !534, size: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4118, file: !65, line: 732, baseType: !7, size: 32)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !686, file: !65, line: 735, baseType: !197, size: 32, offset: 4608)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !686, file: !65, line: 738, baseType: !197, size: 32, offset: 4640)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !686, file: !65, line: 739, baseType: !3827, size: 64, offset: 4672)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !686, file: !65, line: 750, baseType: !180, size: 64, offset: 4736)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !646, file: !647, line: 91, baseType: !4131, size: 256, offset: 448)
!4131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 256, elements: !3703)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !646, file: !647, line: 94, baseType: !4133, size: 64, offset: 704)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4134, line: 25, size: 64, elements: !4135)
!4134 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4135 = !{!4136}
!4136 = !DIDerivedType(tag: DW_TAG_member, scope: !4133, file: !4134, line: 26, baseType: !4137, size: 64)
!4137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4133, file: !4134, line: 26, size: 64, elements: !4138)
!4138 = !{!4139, !4140}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4137, file: !4134, line: 28, baseType: !207, size: 64, align: 64)
!4140 = !DIDerivedType(tag: DW_TAG_member, scope: !4137, file: !4134, line: 30, baseType: !4141, size: 64)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4137, file: !4134, line: 30, size: 64, elements: !4142)
!4142 = !{!4143, !4144}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4141, file: !4134, line: 31, baseType: !261, size: 32)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4141, file: !4134, line: 32, baseType: !120, size: 32, offset: 32)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !646, file: !647, line: 95, baseType: !3842, size: 64, offset: 768)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !646, file: !647, line: 96, baseType: !895, size: 64, offset: 832)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !646, file: !647, line: 97, baseType: !186, size: 64, offset: 896)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !646, file: !647, line: 98, baseType: !180, size: 64, offset: 960)
!4149 = !DIDerivedType(tag: DW_TAG_member, scope: !646, file: !647, line: 100, baseType: !4150, size: 128, offset: 1024)
!4150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !646, file: !647, line: 100, size: 128, elements: !4151)
!4151 = !{!4152, !4153}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4150, file: !647, line: 101, baseType: !322, size: 128)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4150, file: !647, line: 102, baseType: !4154, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !646, file: !647, line: 104, baseType: !322, size: 128, offset: 1152)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !646, file: !647, line: 105, baseType: !322, size: 128, offset: 1280)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !646, file: !647, line: 113, baseType: !4158, size: 128, offset: 1408)
!4158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !646, file: !647, line: 109, size: 128, elements: !4159)
!4159 = !{!4160, !4161, !4162}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4158, file: !647, line: 110, baseType: !370, size: 128)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4158, file: !647, line: 111, baseType: !661, size: 128)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4158, file: !647, line: 112, baseType: !251, size: 128, align: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !641, file: !642, line: 72, baseType: !895, size: 64, offset: 64)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !641, file: !642, line: 73, baseType: !120, size: 32, offset: 128)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !641, file: !642, line: 74, baseType: !725, size: 64, offset: 192)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !636, file: !637, line: 10, baseType: !645, size: 64, offset: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !239, file: !65, line: 1015, baseType: !685, size: 64, offset: 1344)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !239, file: !65, line: 1016, baseType: !3988, size: 64, offset: 1408)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !239, file: !65, line: 1018, baseType: !206, size: 64, offset: 1472)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !239, file: !65, line: 1020, baseType: !180, size: 64, offset: 1536)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !239, file: !65, line: 1023, baseType: !180, size: 64, offset: 1600)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !239, file: !65, line: 1027, baseType: !4173, size: 64, offset: 1664)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !239, file: !65, line: 1029, baseType: !1045, size: 64, offset: 1728)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !239, file: !65, line: 1030, baseType: !1716, size: 32, offset: 1792)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !239, file: !65, line: 1031, baseType: !1716, size: 32, offset: 1824)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "vma_node", scope: !218, file: !94, line: 314, baseType: !4178, size: 1536, offset: 192)
!4178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_node", file: !4179, line: 52, size: 1536, elements: !4180)
!4179 = !DIFile(filename: "./include/drm/drm_vma_manager.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5483318cd9ffeb7eed8e930be54b2ae2")
!4180 = !{!4181, !4182, !4215, !4216}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !4178, file: !4179, line: 53, baseType: !335, size: 64)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "vm_node", scope: !4178, file: !4179, line: 54, baseType: !4183, size: 1344, offset: 64)
!4183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm_node", file: !4184, line: 157, size: 1344, elements: !4185)
!4184 = !DIFile(filename: "./include/drm/drm_mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84c90dff9a569f9267103742808582e0")
!4185 = !{!4186, !4187, !4188, !4189, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !4183, file: !4184, line: 159, baseType: !186, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4183, file: !4184, line: 161, baseType: !206, size: 64, offset: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4183, file: !4184, line: 163, baseType: !206, size: 64, offset: 128)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !4183, file: !4184, line: 165, baseType: !4190, size: 64, offset: 192)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm", file: !4184, line: 190, size: 1920, elements: !4192)
!4192 = !{!4193, !4200, !4201, !4202, !4203, !4204, !4205}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "color_adjust", scope: !4191, file: !4184, line: 200, baseType: !4194, size: 64)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{null, !4197, !186, !4199, !4199}
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4183)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !4191, file: !4184, line: 206, baseType: !322, size: 128, offset: 64)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "head_node", scope: !4191, file: !4184, line: 209, baseType: !4183, size: 1344, offset: 192)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "interval_tree", scope: !4191, file: !4184, line: 211, baseType: !1054, size: 128, offset: 1536)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "holes_size", scope: !4191, file: !4184, line: 212, baseType: !1054, size: 128, offset: 1664)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "holes_addr", scope: !4191, file: !4184, line: 213, baseType: !1057, size: 64, offset: 1792)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "scan_active", scope: !4191, file: !4184, line: 215, baseType: !186, size: 64, offset: 1856)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !4183, file: !4184, line: 166, baseType: !322, size: 128, offset: 256)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !4183, file: !4184, line: 167, baseType: !322, size: 128, offset: 384)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4183, file: !4184, line: 168, baseType: !456, size: 192, align: 64, offset: 512)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_size", scope: !4183, file: !4184, line: 169, baseType: !456, size: 192, align: 64, offset: 704)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_addr", scope: !4183, file: !4184, line: 170, baseType: !456, size: 192, align: 64, offset: 896)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "__subtree_last", scope: !4183, file: !4184, line: 171, baseType: !206, size: 64, offset: 1088)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "hole_size", scope: !4183, file: !4184, line: 172, baseType: !206, size: 64, offset: 1152)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_max_hole", scope: !4183, file: !4184, line: 173, baseType: !206, size: 64, offset: 1216)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4183, file: !4184, line: 174, baseType: !186, size: 64, offset: 1280)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "vm_files", scope: !4178, file: !4179, line: 55, baseType: !1057, size: 64, offset: 1408)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "driver_private", scope: !4178, file: !4179, line: 56, baseType: !180, size: 64, offset: 1472)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !218, file: !94, line: 322, baseType: !188, size: 64, offset: 1728)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !218, file: !94, line: 331, baseType: !120, size: 32, offset: 1792)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "dma_buf", scope: !218, file: !94, line: 344, baseType: !4220, size: 64, offset: 1856)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf", file: !94, line: 121, flags: DIFlagFwdDecl)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "import_attach", scope: !218, file: !94, line: 364, baseType: !4223, size: 64, offset: 1920)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_attachment", file: !94, line: 364, flags: DIFlagFwdDecl)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !218, file: !94, line: 373, baseType: !4226, size: 64, offset: 1984)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv", file: !4228, line: 155, size: 384, elements: !4229)
!4228 = !DIFile(filename: "./include/linux/dma-resv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "33eb7b47491fa42a2c4bcb5c661d5780")
!4229 = !{!4230, !4244}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4227, file: !4228, line: 166, baseType: !4231, size: 320)
!4231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !4232, line: 47, size: 320, elements: !4233)
!4232 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!4233 = !{!4234, !4235}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4231, file: !4232, line: 48, baseType: !310, size: 256)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4231, file: !4232, line: 49, baseType: !4236, size: 64, offset: 256)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !4232, line: 55, size: 192, elements: !4238)
!4238 = !{!4239, !4240, !4241, !4242, !4243}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4237, file: !4232, line: 56, baseType: !2632, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !4237, file: !4232, line: 57, baseType: !186, size: 64, offset: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !4237, file: !4232, line: 58, baseType: !7, size: 32, offset: 128)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !4237, file: !4232, line: 59, baseType: !295, size: 16, offset: 160)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !4237, file: !4232, line: 60, baseType: !295, size: 16, offset: 176)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "fences", scope: !4227, file: !4228, line: 178, baseType: !4245, size: 64, offset: 320)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv_list", file: !4228, line: 50, flags: DIFlagFwdDecl)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_resv", scope: !218, file: !94, line: 382, baseType: !4227, size: 384, offset: 2048)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "gpuva", scope: !218, file: !94, line: 398, baseType: !4249, size: 128, offset: 2432)
!4249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !218, file: !94, line: 392, size: 128, elements: !4250)
!4250 = !{!4251}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4249, file: !94, line: 393, baseType: !322, size: 128)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !218, file: !94, line: 409, baseType: !4253, size: 64, offset: 2560)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4255)
!4255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object_funcs", file: !94, line: 69, size: 896, elements: !4256)
!4256 = !{!4257, !4262, !4268, !4272, !4309, !4313, !4317, !4318, !4339, !4353, !4357, !4361, !4362, !4366}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4255, file: !94, line: 77, baseType: !4258, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{null, !4261}
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4255, file: !94, line: 86, baseType: !4263, size: 64, offset: 64)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!120, !4261, !4266}
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !4179, line: 44, flags: DIFlagFwdDecl)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4255, file: !94, line: 95, baseType: !4269, size: 64, offset: 128)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{null, !4261, !4266}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "print_info", scope: !4255, file: !94, line: 110, baseType: !4273, size: 64, offset: 192)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{null, !4276, !7, !4307}
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !4278, line: 76, size: 256, elements: !4279)
!4278 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!4279 = !{!4280, !4301, !4305, !4306}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "printfn", scope: !4277, file: !4278, line: 78, baseType: !4281, size: 64)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{null, !4276, !4284}
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !4286, line: 79, size: 128, elements: !4287)
!4286 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4287 = !{!4288, !4289}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !4285, file: !4286, line: 80, baseType: !524, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !4285, file: !4286, line: 81, baseType: !4290, size: 64, offset: 64)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4292, line: 5, baseType: !4293)
!4292 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!4293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !4294)
!4294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4295, size: 192, elements: !2865)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4296)
!4296 = !{!4297, !4298, !4299, !4300}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4295, file: !3, baseType: !7, size: 32)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4295, file: !3, baseType: !7, size: 32, offset: 32)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4295, file: !3, baseType: !180, size: 64, offset: 64)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4295, file: !3, baseType: !180, size: 64, offset: 128)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "puts", scope: !4277, file: !4278, line: 79, baseType: !4302, size: 64, offset: 64)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{null, !4276, !524}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4277, file: !4278, line: 80, baseType: !180, size: 64, offset: 128)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !4277, file: !4278, line: 81, baseType: !524, size: 64, offset: 192)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "export", scope: !4255, file: !94, line: 121, baseType: !4310, size: 64, offset: 256)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!4220, !4261, !120}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4255, file: !94, line: 130, baseType: !4314, size: 64, offset: 320)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!120, !4261}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "unpin", scope: !4255, file: !94, line: 139, baseType: !4258, size: 64, offset: 384)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "get_sg_table", scope: !4255, file: !94, line: 153, baseType: !4319, size: 64, offset: 448)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{!4322, !4261}
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !4324, line: 39, size: 128, elements: !4325)
!4324 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5d709d01f4c0a80a46fc78d63fc593")
!4325 = !{!4326, !4337, !4338}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !4323, file: !4324, line: 40, baseType: !4327, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4324, line: 11, size: 256, elements: !4329)
!4329 = !{!4330, !4331, !4332, !4333, !4335, !4336}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4328, file: !4324, line: 12, baseType: !186, size: 64)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4328, file: !4324, line: 13, baseType: !7, size: 32, offset: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4328, file: !4324, line: 14, baseType: !7, size: 32, offset: 96)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4328, file: !4324, line: 15, baseType: !4334, size: 64, offset: 128)
!4334 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !189, line: 149, baseType: !206)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4328, file: !4324, line: 17, baseType: !7, size: 32, offset: 192)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "dma_flags", scope: !4328, file: !4324, line: 20, baseType: !7, size: 32, offset: 224)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !4323, file: !4324, line: 41, baseType: !7, size: 32, offset: 64)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !4323, file: !4324, line: 42, baseType: !7, size: 32, offset: 96)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "vmap", scope: !4255, file: !94, line: 163, baseType: !4340, size: 64, offset: 512)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!120, !4261, !4343}
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iosys_map", file: !4345, line: 109, size: 128, elements: !4346)
!4345 = !DIFile(filename: "./include/linux/iosys-map.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c97d7374529d1c22dbeacc3bfd30605")
!4346 = !{!4347, !4352}
!4347 = !DIDerivedType(tag: DW_TAG_member, scope: !4344, file: !4345, line: 110, baseType: !4348, size: 64)
!4348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4344, file: !4345, line: 110, size: 64, elements: !4349)
!4349 = !{!4350, !4351}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr_iomem", scope: !4348, file: !4345, line: 111, baseType: !180, size: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4348, file: !4345, line: 112, baseType: !180, size: 64)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "is_iomem", scope: !4344, file: !4345, line: 114, baseType: !210, size: 8, offset: 64)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "vunmap", scope: !4255, file: !94, line: 173, baseType: !4354, size: 64, offset: 576)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{null, !4261, !4343}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4255, file: !94, line: 186, baseType: !4358, size: 64, offset: 640)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{!120, !4261, !1192}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "evict", scope: !4255, file: !94, line: 196, baseType: !4314, size: 64, offset: 704)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4255, file: !94, line: 209, baseType: !4363, size: 64, offset: 768)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!93, !4261}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4255, file: !94, line: 218, baseType: !1403, size: 64, offset: 832)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "lru_node", scope: !218, file: !94, line: 416, baseType: !322, size: 128, offset: 2624)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !218, file: !94, line: 423, baseType: !4369, size: 64, offset: 2752)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_lru", file: !94, line: 230, size: 256, elements: !4371)
!4371 = !{!4372, !4374, !4375}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4370, file: !94, line: 238, baseType: !4373, size: 64)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4370, file: !94, line: 246, baseType: !800, size: 64, offset: 64)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4370, file: !94, line: 253, baseType: !322, size: 128, offset: 128)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !215, file: !153, line: 104, baseType: !4377, size: 64, offset: 2816)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_device", file: !4379, line: 215, size: 16960, elements: !4380)
!4379 = !DIFile(filename: "./include/drm/ttm/ttm_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "318d87bc69ff4bc10378351ef0b91aca")
!4380 = !{!4381, !4382, !4465, !4550, !4552, !4558, !5031, !5032, !5033, !5034}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !4378, file: !4379, line: 220, baseType: !322, size: 128)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4378, file: !4379, line: 226, baseType: !4383, size: 64, offset: 128)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4385)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_device_funcs", file: !4379, line: 61, size: 896, elements: !4386)
!4386 = !{!4387, !4394, !4409, !4413, !4414, !4427, !4438, !4443, !4447, !4448, !4452, !4456, !4460, !4464}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "ttm_tt_create", scope: !4385, file: !4379, line: 73, baseType: !4388, size: 64)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!4391, !214, !194}
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_tt", file: !4393, line: 35, flags: DIFlagFwdDecl)
!4393 = !DIFile(filename: "./include/drm/ttm/ttm_pool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6613193a1a6bffece87937e591b2c286")
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "ttm_tt_populate", scope: !4385, file: !4379, line: 85, baseType: !4395, size: 64, offset: 64)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!120, !4377, !4391, !4398}
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_operation_ctx", file: !153, line: 178, size: 192, elements: !4400)
!4400 = !{!4401, !4402, !4403, !4404, !4405, !4406, !4407}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !4399, file: !153, line: 179, baseType: !210, size: 8)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "no_wait_gpu", scope: !4399, file: !153, line: 180, baseType: !210, size: 8, offset: 8)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_retry_mayfail", scope: !4399, file: !153, line: 181, baseType: !210, size: 8, offset: 16)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "allow_res_evict", scope: !4399, file: !153, line: 182, baseType: !210, size: 8, offset: 24)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "force_alloc", scope: !4399, file: !153, line: 183, baseType: !210, size: 8, offset: 32)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !4399, file: !153, line: 184, baseType: !4226, size: 64, offset: 64)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_moved", scope: !4399, file: !153, line: 185, baseType: !4408, size: 64, offset: 128)
!4408 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !189, line: 113, baseType: !206)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "ttm_tt_unpopulate", scope: !4385, file: !4379, line: 96, baseType: !4410, size: 64, offset: 128)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{null, !4377, !4391}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "ttm_tt_destroy", scope: !4385, file: !4379, line: 108, baseType: !4410, size: 64, offset: 192)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "eviction_valuable", scope: !4385, file: !4379, line: 119, baseType: !4415, size: 64, offset: 256)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4416, size: 64)
!4416 = !DISubroutineType(types: !4417)
!4417 = !{!210, !214, !4418}
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4420)
!4420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_place", file: !4421, line: 77, size: 128, elements: !4422)
!4421 = !DIFile(filename: "./include/drm/ttm/ttm_placement.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f863dfb010ab9adca021a04ffe4a884")
!4422 = !{!4423, !4424, !4425, !4426}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "fpfn", scope: !4420, file: !4421, line: 78, baseType: !7, size: 32)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "lpfn", scope: !4420, file: !4421, line: 79, baseType: !7, size: 32, offset: 32)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "mem_type", scope: !4420, file: !4421, line: 80, baseType: !194, size: 32, offset: 64)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4420, file: !4421, line: 81, baseType: !194, size: 32, offset: 96)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "evict_flags", scope: !4385, file: !4379, line: 133, baseType: !4428, size: 64, offset: 320)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{null, !214, !4431}
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_placement", file: !4421, line: 94, size: 256, elements: !4433)
!4433 = !{!4434, !4435, !4436, !4437}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "num_placement", scope: !4432, file: !4421, line: 95, baseType: !7, size: 32)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !4432, file: !4421, line: 96, baseType: !4418, size: 64, offset: 64)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "num_busy_placement", scope: !4432, file: !4421, line: 97, baseType: !7, size: 32, offset: 128)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "busy_placement", scope: !4432, file: !4421, line: 98, baseType: !4418, size: 64, offset: 192)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "move", scope: !4385, file: !4379, line: 149, baseType: !4439, size: 64, offset: 384)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{!120, !214, !210, !4398, !181, !4442}
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "delete_mem_notify", scope: !4385, file: !4379, line: 157, baseType: !4444, size: 64, offset: 448)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{null, !214}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "swap_notify", scope: !4385, file: !4379, line: 162, baseType: !4444, size: 64, offset: 512)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "io_mem_reserve", scope: !4385, file: !4379, line: 170, baseType: !4449, size: 64, offset: 576)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!120, !4377, !181}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "io_mem_free", scope: !4385, file: !4379, line: 172, baseType: !4453, size: 64, offset: 640)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{null, !4377, !181}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "io_mem_pfn", scope: !4385, file: !4379, line: 181, baseType: !4457, size: 64, offset: 704)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!186, !214, !186}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "access_memory", scope: !4385, file: !4379, line: 198, baseType: !4461, size: 64, offset: 768)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{!120, !214, !186, !180, !120, !120}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "release_notify", scope: !4385, file: !4379, line: 209, baseType: !4444, size: 64, offset: 832)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "sysman", scope: !4378, file: !4379, line: 232, baseType: !4466, size: 960, offset: 192)
!4466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_resource_manager", file: !183, line: 151, size: 960, elements: !4467)
!4467 = !{!4468, !4469, !4470, !4471, !4472, !4496, !4497, !4547, !4549}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "use_type", scope: !4466, file: !183, line: 155, baseType: !210, size: 8)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "use_tt", scope: !4466, file: !183, line: 156, baseType: !210, size: 8, offset: 8)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !4466, file: !183, line: 157, baseType: !4377, size: 64, offset: 64)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4466, file: !183, line: 158, baseType: !4408, size: 64, offset: 128)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4466, file: !183, line: 159, baseType: !4473, size: 64, offset: 192)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4475)
!4475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_resource_manager_func", file: !183, line: 52, size: 320, elements: !4476)
!4476 = !{!4477, !4483, !4487, !4491, !4492}
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4475, file: !183, line: 74, baseType: !4478, size: 64)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{!120, !4481, !214, !4418, !4482}
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4475, file: !183, line: 88, baseType: !4484, size: 64, offset: 64)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{null, !4481, !181}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "intersects", scope: !4475, file: !183, line: 102, baseType: !4488, size: 64, offset: 128)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!210, !4481, !181, !4418, !188}
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4475, file: !183, line: 118, baseType: !4488, size: 64, offset: 192)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !4475, file: !183, line: 133, baseType: !4493, size: 64, offset: 256)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{null, !4481, !4276}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "move_lock", scope: !4466, file: !183, line: 160, baseType: !261, size: 32, offset: 256)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "move", scope: !4466, file: !183, line: 165, baseType: !4498, size: 64, offset: 320)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !4500, line: 65, size: 512, elements: !4501)
!4500 = !DIFile(filename: "./include/linux/dma-fence.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "250a5e28e66b96be11f66b71d72fa176")
!4501 = !{!4502, !4503, !4536, !4542, !4543, !4544, !4545, !4546}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4499, file: !4500, line: 66, baseType: !1502, size: 64)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4499, file: !4500, line: 67, baseType: !4504, size: 64, offset: 64)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4506)
!4506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !4500, line: 125, size: 640, elements: !4507)
!4507 = !{!4508, !4509, !4513, !4514, !4518, !4519, !4523, !4527, !4531, !4532}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !4506, file: !4500, line: 132, baseType: !210, size: 8)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !4506, file: !4500, line: 143, baseType: !4510, size: 64, offset: 64)
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{!524, !4498}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !4506, file: !4500, line: 155, baseType: !4510, size: 64, offset: 128)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !4506, file: !4500, line: 192, baseType: !4515, size: 64, offset: 192)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{!210, !4498}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !4506, file: !4500, line: 209, baseType: !4515, size: 64, offset: 256)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4506, file: !4500, line: 227, baseType: !4520, size: 64, offset: 320)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4521 = !DISubroutineType(types: !4522)
!4522 = !{!800, !4498, !210, !800}
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4506, file: !4500, line: 238, baseType: !4524, size: 64, offset: 384)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = !DISubroutineType(types: !4526)
!4526 = !{null, !4498}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !4506, file: !4500, line: 248, baseType: !4528, size: 64, offset: 448)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{null, !4498, !534, !120}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !4506, file: !4500, line: 258, baseType: !4528, size: 64, offset: 512)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "set_deadline", scope: !4506, file: !4500, line: 279, baseType: !4533, size: 64, offset: 576)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{null, !4498, !2752}
!4536 = !DIDerivedType(tag: DW_TAG_member, scope: !4499, file: !4500, line: 84, baseType: !4537, size: 128, offset: 128)
!4537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4499, file: !4500, line: 84, size: 128, elements: !4538)
!4538 = !{!4539, !4540, !4541}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !4537, file: !4500, line: 85, baseType: !322, size: 128)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4537, file: !4500, line: 87, baseType: !2752, size: 64)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4537, file: !4500, line: 89, baseType: !251, size: 128, align: 64)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4499, file: !4500, line: 91, baseType: !206, size: 64, offset: 256)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !4499, file: !4500, line: 92, baseType: !206, size: 64, offset: 320)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4499, file: !4500, line: 93, baseType: !186, size: 64, offset: 384)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4499, file: !4500, line: 94, baseType: !221, size: 32, offset: 448)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4499, file: !4500, line: 95, baseType: !120, size: 32, offset: 480)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4466, file: !183, line: 170, baseType: !4548, size: 512, offset: 384)
!4548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 512, elements: !375)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !4466, file: !183, line: 176, baseType: !4408, size: 64, offset: 896)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "man_drv", scope: !4378, file: !4379, line: 237, baseType: !4551, size: 512, offset: 1152)
!4551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4481, size: 512, elements: !2787)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "vma_manager", scope: !4378, file: !4379, line: 242, baseType: !4553, size: 64, offset: 1664)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !4179, line: 59, size: 1984, elements: !4555)
!4555 = !{!4556, !4557}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !4554, file: !4179, line: 60, baseType: !335, size: 64)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "vm_addr_space_mm", scope: !4554, file: !4179, line: 61, baseType: !4191, size: 1920, offset: 64)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !4378, file: !4379, line: 247, baseType: !4559, size: 14912, offset: 1728)
!4559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_pool", file: !4393, line: 69, size: 14912, elements: !4560)
!4560 = !{!4561, !5011, !5012, !5013, !5014}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4559, file: !4393, line: 70, baseType: !4562, size: 64)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !105, line: 705, size: 5824, elements: !4564)
!4564 = !{!4565, !4566, !4567, !4570, !4571, !4624, !4694, !4695, !4696, !4697, !4698, !4705, !4797, !4810, !4820, !4824, !4825, !4826, !4827, !4831, !4838, !4839, !4842, !4845, !4849, !4953, !4954, !4955, !4956, !4957, !4958, !4988, !4989, !4990, !4993, !4996, !5005, !5006, !5007, !5008, !5009, !5010}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4563, file: !105, line: 706, baseType: !941, size: 512)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4563, file: !105, line: 707, baseType: !4562, size: 64, offset: 512)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4563, file: !105, line: 709, baseType: !4568, size: 64, offset: 576)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !105, line: 37, flags: DIFlagFwdDecl)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4563, file: !105, line: 711, baseType: !524, size: 64, offset: 640)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4563, file: !105, line: 712, baseType: !4572, size: 64, offset: 704)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4574)
!4574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !105, line: 89, size: 384, elements: !4575)
!4575 = !{!4576, !4577, !4578, !4584, !4589, !4593}
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4574, file: !105, line: 90, baseType: !524, size: 64)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4574, file: !105, line: 91, baseType: !1021, size: 64, offset: 64)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4574, file: !105, line: 92, baseType: !4579, size: 64, offset: 128)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!120, !4582, !977}
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4563)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4574, file: !105, line: 93, baseType: !4585, size: 64, offset: 192)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{!534, !4582, !4588, !1770, !1771}
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4574, file: !105, line: 95, baseType: !4590, size: 64, offset: 256)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{null, !4562}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4574, file: !105, line: 97, baseType: !4594, size: 64, offset: 320)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4596)
!4596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !112, line: 286, size: 1472, elements: !4597)
!4597 = !{!4598, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4596, file: !112, line: 287, baseType: !4599, size: 64)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DISubroutineType(types: !4601)
!4601 = !{!120, !4562}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4596, file: !112, line: 288, baseType: !4590, size: 64, offset: 64)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4596, file: !112, line: 289, baseType: !4599, size: 64, offset: 128)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4596, file: !112, line: 290, baseType: !4599, size: 64, offset: 192)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4596, file: !112, line: 291, baseType: !4599, size: 64, offset: 256)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4596, file: !112, line: 292, baseType: !4599, size: 64, offset: 320)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4596, file: !112, line: 293, baseType: !4599, size: 64, offset: 384)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4596, file: !112, line: 294, baseType: !4599, size: 64, offset: 448)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4596, file: !112, line: 295, baseType: !4599, size: 64, offset: 512)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4596, file: !112, line: 296, baseType: !4599, size: 64, offset: 576)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4596, file: !112, line: 297, baseType: !4599, size: 64, offset: 640)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4596, file: !112, line: 298, baseType: !4599, size: 64, offset: 704)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4596, file: !112, line: 299, baseType: !4599, size: 64, offset: 768)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4596, file: !112, line: 300, baseType: !4599, size: 64, offset: 832)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4596, file: !112, line: 301, baseType: !4599, size: 64, offset: 896)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4596, file: !112, line: 302, baseType: !4599, size: 64, offset: 960)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4596, file: !112, line: 303, baseType: !4599, size: 64, offset: 1024)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4596, file: !112, line: 304, baseType: !4599, size: 64, offset: 1088)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4596, file: !112, line: 305, baseType: !4599, size: 64, offset: 1152)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4596, file: !112, line: 306, baseType: !4599, size: 64, offset: 1216)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4596, file: !112, line: 307, baseType: !4599, size: 64, offset: 1280)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4596, file: !112, line: 308, baseType: !4599, size: 64, offset: 1344)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4596, file: !112, line: 309, baseType: !4599, size: 64, offset: 1408)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4563, file: !105, line: 714, baseType: !4625, size: 64, offset: 768)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4627)
!4627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4628, line: 80, size: 1344, elements: !4629)
!4628 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4629 = !{!4630, !4631, !4632, !4633, !4634, !4635, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4693}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4627, file: !4628, line: 81, baseType: !524, size: 64)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4627, file: !4628, line: 82, baseType: !524, size: 64, offset: 64)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4627, file: !4628, line: 83, baseType: !1021, size: 64, offset: 128)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4627, file: !4628, line: 84, baseType: !1021, size: 64, offset: 192)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4627, file: !4628, line: 85, baseType: !1021, size: 64, offset: 256)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4627, file: !4628, line: 87, baseType: !4636, size: 64, offset: 320)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{!120, !4562, !4639}
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !99, line: 96, size: 1152, elements: !4641)
!4641 = !{!4642, !4643, !4644, !4645, !4646, !4647, !4648, !4652, !4656, !4657, !4658, !4659, !4660, !4668, !4669, !4670, !4671, !4672, !4673}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4640, file: !99, line: 97, baseType: !524, size: 64)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4640, file: !99, line: 98, baseType: !4625, size: 64, offset: 64)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4640, file: !99, line: 100, baseType: !928, size: 64, offset: 128)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4640, file: !99, line: 101, baseType: !524, size: 64, offset: 192)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4640, file: !99, line: 103, baseType: !210, size: 8, offset: 256)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4640, file: !99, line: 104, baseType: !98, size: 32, offset: 288)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4640, file: !99, line: 106, baseType: !4649, size: 64, offset: 320)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4651)
!4651 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !99, line: 106, flags: DIFlagFwdDecl)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4640, file: !99, line: 107, baseType: !4653, size: 64, offset: 384)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4655)
!4655 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !99, line: 107, flags: DIFlagFwdDecl)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4640, file: !99, line: 109, baseType: !4599, size: 64, offset: 448)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4640, file: !99, line: 110, baseType: !4590, size: 64, offset: 512)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4640, file: !99, line: 111, baseType: !4599, size: 64, offset: 576)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4640, file: !99, line: 112, baseType: !4590, size: 64, offset: 640)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4640, file: !99, line: 113, baseType: !4661, size: 64, offset: 704)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!120, !4562, !4664}
!4664 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !112, line: 60, baseType: !4665)
!4665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !112, line: 58, size: 32, elements: !4666)
!4666 = !{!4667}
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4665, file: !112, line: 59, baseType: !120, size: 32)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4640, file: !99, line: 114, baseType: !4599, size: 64, offset: 768)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4640, file: !99, line: 115, baseType: !1021, size: 64, offset: 832)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4640, file: !99, line: 116, baseType: !1021, size: 64, offset: 896)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4640, file: !99, line: 118, baseType: !4594, size: 64, offset: 960)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4640, file: !99, line: 119, baseType: !4590, size: 64, offset: 1024)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4640, file: !99, line: 121, baseType: !4674, size: 64, offset: 1088)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4675, size: 64)
!4675 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !99, line: 121, flags: DIFlagFwdDecl)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4627, file: !4628, line: 88, baseType: !4579, size: 64, offset: 384)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4627, file: !4628, line: 89, baseType: !4599, size: 64, offset: 448)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4627, file: !4628, line: 90, baseType: !4590, size: 64, offset: 512)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4627, file: !4628, line: 91, baseType: !4590, size: 64, offset: 576)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4627, file: !4628, line: 92, baseType: !4590, size: 64, offset: 640)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4627, file: !4628, line: 94, baseType: !4599, size: 64, offset: 704)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4627, file: !4628, line: 95, baseType: !4599, size: 64, offset: 768)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4627, file: !4628, line: 97, baseType: !4661, size: 64, offset: 832)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4627, file: !4628, line: 98, baseType: !4599, size: 64, offset: 896)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4627, file: !4628, line: 100, baseType: !4599, size: 64, offset: 960)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4627, file: !4628, line: 102, baseType: !4599, size: 64, offset: 1024)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4627, file: !4628, line: 103, baseType: !4590, size: 64, offset: 1088)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4627, file: !4628, line: 105, baseType: !4594, size: 64, offset: 1152)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4627, file: !4628, line: 107, baseType: !4690, size: 64, offset: 1216)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4692)
!4692 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4628, line: 107, flags: DIFlagFwdDecl)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4627, file: !4628, line: 109, baseType: !210, size: 8, offset: 1280)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4563, file: !105, line: 715, baseType: !4639, size: 64, offset: 832)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4563, file: !105, line: 717, baseType: !180, size: 64, offset: 896)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4563, file: !105, line: 719, baseType: !180, size: 64, offset: 960)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4563, file: !105, line: 721, baseType: !310, size: 256, offset: 1024)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4563, file: !105, line: 725, baseType: !4699, size: 448, offset: 1280)
!4699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !105, line: 517, size: 448, elements: !4700)
!4700 = !{!4701, !4702, !4703, !4704}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4699, file: !105, line: 518, baseType: !322, size: 128)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4699, file: !105, line: 519, baseType: !322, size: 128, offset: 128)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4699, file: !105, line: 520, baseType: !322, size: 128, offset: 256)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4699, file: !105, line: 521, baseType: !104, size: 32, offset: 384)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4563, file: !105, line: 726, baseType: !4706, size: 2496, offset: 1728)
!4706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !112, line: 663, size: 2496, elements: !4707)
!4707 = !{!4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4722, !4723, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4790, !4794}
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4706, file: !112, line: 664, baseType: !4664, size: 32)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4706, file: !112, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4706, file: !112, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4706, file: !112, line: 667, baseType: !210, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4706, file: !112, line: 668, baseType: !210, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4706, file: !112, line: 669, baseType: !210, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4706, file: !112, line: 670, baseType: !210, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4706, file: !112, line: 671, baseType: !210, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4706, file: !112, line: 672, baseType: !210, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4706, file: !112, line: 673, baseType: !210, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4706, file: !112, line: 674, baseType: !210, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4706, file: !112, line: 675, baseType: !195, size: 32, offset: 64)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4706, file: !112, line: 676, baseType: !261, size: 32, offset: 96)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4706, file: !112, line: 678, baseType: !322, size: 128, offset: 128)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4706, file: !112, line: 679, baseType: !1157, size: 256, offset: 256)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4706, file: !112, line: 680, baseType: !4724, size: 64, offset: 512)
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4726, line: 43, size: 1536, elements: !4727)
!4726 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4727 = !{!4728, !4729, !4730, !4731, !4732, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4725, file: !4726, line: 44, baseType: !524, size: 64)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4725, file: !4726, line: 45, baseType: !120, size: 32, offset: 64)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4725, file: !4726, line: 46, baseType: !322, size: 128, offset: 128)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4725, file: !4726, line: 47, baseType: !261, size: 32, offset: 256)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4725, file: !4726, line: 48, baseType: !4733, size: 64, offset: 320)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !112, line: 629, flags: DIFlagFwdDecl)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4725, file: !4726, line: 49, baseType: !2156, size: 320, offset: 384)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4725, file: !4726, line: 50, baseType: !186, size: 64, offset: 704)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4725, file: !4726, line: 51, baseType: !2752, size: 64, offset: 768)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4725, file: !4726, line: 52, baseType: !2752, size: 64, offset: 832)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4725, file: !4726, line: 53, baseType: !2752, size: 64, offset: 896)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4725, file: !4726, line: 54, baseType: !2752, size: 64, offset: 960)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4725, file: !4726, line: 55, baseType: !2752, size: 64, offset: 1024)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4725, file: !4726, line: 56, baseType: !186, size: 64, offset: 1088)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4725, file: !4726, line: 57, baseType: !186, size: 64, offset: 1152)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4725, file: !4726, line: 58, baseType: !186, size: 64, offset: 1216)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4725, file: !4726, line: 59, baseType: !186, size: 64, offset: 1280)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4725, file: !4726, line: 60, baseType: !186, size: 64, offset: 1344)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4725, file: !4726, line: 61, baseType: !4562, size: 64, offset: 1408)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4725, file: !4726, line: 62, baseType: !210, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4725, file: !4726, line: 63, baseType: !210, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4706, file: !112, line: 681, baseType: !210, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4706, file: !112, line: 682, baseType: !210, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4706, file: !112, line: 683, baseType: !210, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4706, file: !112, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4706, file: !112, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4706, file: !112, line: 690, baseType: !2744, size: 512, offset: 640)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4706, file: !112, line: 691, baseType: !206, size: 64, offset: 1152)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4706, file: !112, line: 692, baseType: !1360, size: 256, offset: 1216)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4706, file: !112, line: 693, baseType: !379, size: 192, offset: 1472)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4706, file: !112, line: 694, baseType: !4733, size: 64, offset: 1664)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4706, file: !112, line: 695, baseType: !229, size: 32, offset: 1728)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4706, file: !112, line: 696, baseType: !229, size: 32, offset: 1760)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4706, file: !112, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4706, file: !112, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4706, file: !112, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4706, file: !112, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4706, file: !112, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4706, file: !112, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4706, file: !112, line: 703, baseType: !210, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4706, file: !112, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4706, file: !112, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4706, file: !112, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4706, file: !112, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4706, file: !112, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4706, file: !112, line: 709, baseType: !7, size: 32, offset: 1824)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4706, file: !112, line: 710, baseType: !111, size: 32, offset: 1856)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4706, file: !112, line: 711, baseType: !119, size: 32, offset: 1888)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4706, file: !112, line: 712, baseType: !119, size: 32, offset: 1920)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4706, file: !112, line: 713, baseType: !120, size: 32, offset: 1952)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4706, file: !112, line: 714, baseType: !120, size: 32, offset: 1984)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4706, file: !112, line: 715, baseType: !206, size: 64, offset: 2048)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4706, file: !112, line: 716, baseType: !206, size: 64, offset: 2112)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4706, file: !112, line: 717, baseType: !206, size: 64, offset: 2176)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4706, file: !112, line: 718, baseType: !206, size: 64, offset: 2240)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4706, file: !112, line: 720, baseType: !4785, size: 64, offset: 2304)
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !112, line: 632, size: 64, elements: !4787)
!4787 = !{!4788, !4789}
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4786, file: !112, line: 633, baseType: !261, size: 32)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4786, file: !112, line: 634, baseType: !7, size: 32, offset: 32)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4706, file: !112, line: 721, baseType: !4791, size: 64, offset: 2368)
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = !DISubroutineType(types: !4793)
!4793 = !{null, !4562, !449}
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4706, file: !112, line: 722, baseType: !4795, size: 64, offset: 2432)
!4795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!4796 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !112, line: 722, flags: DIFlagFwdDecl)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4563, file: !105, line: 727, baseType: !4798, size: 64, offset: 4224)
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4799, size: 64)
!4799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !112, line: 742, size: 1792, elements: !4800)
!4800 = !{!4801, !4802, !4803, !4807, !4808, !4809}
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4799, file: !112, line: 743, baseType: !4596, size: 1472)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4799, file: !112, line: 744, baseType: !4599, size: 64, offset: 1472)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4799, file: !112, line: 745, baseType: !4804, size: 64, offset: 1536)
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = !DISubroutineType(types: !4806)
!4806 = !{null, !4562, !210}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4799, file: !112, line: 746, baseType: !4599, size: 64, offset: 1600)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4799, file: !112, line: 747, baseType: !4590, size: 64, offset: 1664)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4799, file: !112, line: 748, baseType: !4590, size: 64, offset: 1728)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4563, file: !105, line: 736, baseType: !4811, size: 128, offset: 4288)
!4811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !105, line: 529, size: 128, elements: !4812)
!4812 = !{!4813, !4817}
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4811, file: !105, line: 531, baseType: !4814, size: 64)
!4814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64)
!4815 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4816, line: 13, flags: DIFlagFwdDecl)
!4816 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4811, file: !105, line: 532, baseType: !4818, size: 64, offset: 64)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4819 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !105, line: 49, flags: DIFlagFwdDecl)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4563, file: !105, line: 738, baseType: !4821, size: 64, offset: 4416)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4823)
!4823 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !105, line: 738, flags: DIFlagFwdDecl)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4563, file: !105, line: 740, baseType: !4199, size: 64, offset: 4480)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4563, file: !105, line: 741, baseType: !206, size: 64, offset: 4544)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4563, file: !105, line: 746, baseType: !206, size: 64, offset: 4608)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4563, file: !105, line: 747, baseType: !4828, size: 64, offset: 4672)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4830)
!4830 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !105, line: 747, flags: DIFlagFwdDecl)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4563, file: !105, line: 749, baseType: !4832, size: 64, offset: 4736)
!4832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4833, size: 64)
!4833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !105, line: 428, size: 128, elements: !4834)
!4834 = !{!4835, !4836, !4837}
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4833, file: !105, line: 433, baseType: !7, size: 32)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4833, file: !105, line: 434, baseType: !7, size: 32, offset: 32)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4833, file: !105, line: 435, baseType: !186, size: 64, offset: 64)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4563, file: !105, line: 751, baseType: !322, size: 128, offset: 4800)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4563, file: !105, line: 762, baseType: !4840, size: 64, offset: 4928)
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4841, size: 64)
!4841 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !105, line: 762, flags: DIFlagFwdDecl)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4563, file: !105, line: 770, baseType: !4843, offset: 4992)
!4843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4844, line: 5, elements: !1226)
!4844 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4563, file: !105, line: 772, baseType: !4846, size: 64, offset: 4992)
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 64)
!4847 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4848, line: 18, flags: DIFlagFwdDecl)
!4848 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4563, file: !105, line: 773, baseType: !4850, size: 64, offset: 5056)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4852, line: 41, size: 512, elements: !4853)
!4852 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4853 = !{!4854, !4855, !4949, !4950, !4951, !4952}
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4851, file: !4852, line: 42, baseType: !4850, size: 64)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4851, file: !4852, line: 43, baseType: !4856, size: 64, offset: 64)
!4856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4857, size: 64)
!4857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4858)
!4858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4852, line: 125, size: 1408, elements: !4859)
!4859 = !{!4860, !4864, !4868, !4874, !4878, !4879, !4884, !4888, !4892, !4896, !4900, !4901, !4905, !4909, !4913, !4924, !4925, !4926, !4927, !4937, !4941, !4945}
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4858, file: !4852, line: 126, baseType: !4861, size: 64)
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4862, size: 64)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{!4850, !4850}
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4858, file: !4852, line: 127, baseType: !4865, size: 64, offset: 64)
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{null, !4850}
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4858, file: !4852, line: 128, baseType: !4869, size: 64, offset: 128)
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = !DISubroutineType(types: !4871)
!4871 = !{!210, !4872}
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4851)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4858, file: !4852, line: 129, baseType: !4875, size: 64, offset: 192)
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!4876 = !DISubroutineType(types: !4877)
!4877 = !{!1321, !4872, !4582}
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4858, file: !4852, line: 131, baseType: !4869, size: 64, offset: 256)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4858, file: !4852, line: 133, baseType: !4880, size: 64, offset: 320)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DISubroutineType(types: !4882)
!4882 = !{!4883, !4872}
!4883 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4852, line: 132, flags: DIFlagFwdDecl)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4858, file: !4852, line: 134, baseType: !4885, size: 64, offset: 384)
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4886, size: 64)
!4886 = !DISubroutineType(types: !4887)
!4887 = !{!210, !4872, !524}
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4858, file: !4852, line: 136, baseType: !4889, size: 64, offset: 448)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!4890 = !DISubroutineType(types: !4891)
!4891 = !{!120, !4872, !524, !7, !180, !188}
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4858, file: !4852, line: 141, baseType: !4893, size: 64, offset: 512)
!4893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4894, size: 64)
!4894 = !DISubroutineType(types: !4895)
!4895 = !{!120, !4872, !524, !2233, !188}
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4858, file: !4852, line: 144, baseType: !4897, size: 64, offset: 576)
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4898, size: 64)
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!524, !4872}
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4858, file: !4852, line: 145, baseType: !4897, size: 64, offset: 640)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4858, file: !4852, line: 146, baseType: !4902, size: 64, offset: 704)
!4902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4903, size: 64)
!4903 = !DISubroutineType(types: !4904)
!4904 = !{!4850, !4872}
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4858, file: !4852, line: 148, baseType: !4906, size: 64, offset: 768)
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4907, size: 64)
!4907 = !DISubroutineType(types: !4908)
!4908 = !{!4850, !4872, !4850}
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4858, file: !4852, line: 151, baseType: !4910, size: 64, offset: 832)
!4910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4911, size: 64)
!4911 = !DISubroutineType(types: !4912)
!4912 = !{!4850, !4872, !524}
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4858, file: !4852, line: 153, baseType: !4914, size: 64, offset: 896)
!4914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4915, size: 64)
!4915 = !DISubroutineType(types: !4916)
!4916 = !{!120, !4872, !524, !524, !7, !7, !4917}
!4917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4918, size: 64)
!4918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4852, line: 94, size: 640, elements: !4919)
!4919 = !{!4920, !4921, !4922}
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4918, file: !4852, line: 95, baseType: !4850, size: 64)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4918, file: !4852, line: 96, baseType: !7, size: 32, offset: 64)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4918, file: !4852, line: 97, baseType: !4923, size: 512, offset: 128)
!4923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 512, elements: !2787)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4858, file: !4852, line: 158, baseType: !4906, size: 64, offset: 960)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4858, file: !4852, line: 161, baseType: !4902, size: 64, offset: 1024)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4858, file: !4852, line: 163, baseType: !4861, size: 64, offset: 1088)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4858, file: !4852, line: 164, baseType: !4928, size: 64, offset: 1152)
!4928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4929, size: 64)
!4929 = !DISubroutineType(types: !4930)
!4930 = !{!120, !4872, !4931}
!4931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4932, size: 64)
!4932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4852, line: 73, size: 128, elements: !4933)
!4933 = !{!4934, !4935, !4936}
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4932, file: !4852, line: 74, baseType: !7, size: 32)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4932, file: !4852, line: 75, baseType: !7, size: 32, offset: 32)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4932, file: !4852, line: 76, baseType: !4872, size: 64, offset: 64)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4858, file: !4852, line: 166, baseType: !4938, size: 64, offset: 1216)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!180, !4850, !120}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4858, file: !4852, line: 167, baseType: !4942, size: 64, offset: 1280)
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = !DISubroutineType(types: !4944)
!4944 = !{!120, !4872, !7}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4858, file: !4852, line: 168, baseType: !4946, size: 64, offset: 1344)
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4947, size: 64)
!4947 = !DISubroutineType(types: !4948)
!4948 = !{!120, !4850}
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4851, file: !4852, line: 44, baseType: !4562, size: 64, offset: 128)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4851, file: !4852, line: 45, baseType: !322, size: 128, offset: 192)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4851, file: !4852, line: 46, baseType: !322, size: 128, offset: 320)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4851, file: !4852, line: 47, baseType: !285, size: 8, offset: 448)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4563, file: !105, line: 776, baseType: !120, size: 32, offset: 5120)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4563, file: !105, line: 778, baseType: !760, size: 32, offset: 5152)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4563, file: !105, line: 779, baseType: !195, size: 32, offset: 5184)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4563, file: !105, line: 781, baseType: !261, size: 32, offset: 5216)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4563, file: !105, line: 782, baseType: !322, size: 128, offset: 5248)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4563, file: !105, line: 784, baseType: !4959, size: 64, offset: 5376)
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4960, size: 64)
!4960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4961)
!4961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4962, line: 52, size: 768, elements: !4963)
!4962 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4963 = !{!4964, !4965, !4966, !4967, !4968, !4972, !4976, !4977, !4978, !4979, !4983, !4987}
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4961, file: !4962, line: 53, baseType: !524, size: 64)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4961, file: !4962, line: 55, baseType: !1021, size: 64, offset: 64)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4961, file: !4962, line: 56, baseType: !1021, size: 64, offset: 128)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4961, file: !4962, line: 58, baseType: !4579, size: 64, offset: 192)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4961, file: !4962, line: 59, baseType: !4969, size: 64, offset: 256)
!4969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64)
!4970 = !DISubroutineType(types: !4971)
!4971 = !{!534, !4582, !4588}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4961, file: !4962, line: 61, baseType: !4973, size: 64, offset: 320)
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4974, size: 64)
!4974 = !DISubroutineType(types: !4975)
!4975 = !{null, !4959}
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4961, file: !4962, line: 62, baseType: !4590, size: 64, offset: 384)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4961, file: !4962, line: 64, baseType: !4599, size: 64, offset: 448)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4961, file: !4962, line: 66, baseType: !1738, size: 64, offset: 512)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4961, file: !4962, line: 67, baseType: !4980, size: 64, offset: 576)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4981, size: 64)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{!1321, !4582}
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4961, file: !4962, line: 69, baseType: !4984, size: 64, offset: 640)
!4984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4985, size: 64)
!4985 = !DISubroutineType(types: !4986)
!4986 = !{null, !4582, !1770, !1771}
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4961, file: !4962, line: 71, baseType: !4594, size: 64, offset: 704)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4563, file: !105, line: 785, baseType: !1021, size: 64, offset: 5440)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4563, file: !105, line: 787, baseType: !4590, size: 64, offset: 5504)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4563, file: !105, line: 788, baseType: !4991, size: 64, offset: 5568)
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!4992 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !105, line: 46, flags: DIFlagFwdDecl)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4563, file: !105, line: 789, baseType: !4994, size: 64, offset: 5632)
!4994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4995, size: 64)
!4995 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !105, line: 48, flags: DIFlagFwdDecl)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4563, file: !105, line: 791, baseType: !4997, size: 64, offset: 5696)
!4997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4998, size: 64)
!4998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !105, line: 597, size: 128, elements: !4999)
!4999 = !{!5000, !5001, !5002, !5003, !5004}
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4998, file: !105, line: 598, baseType: !127, size: 32)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4998, file: !105, line: 599, baseType: !136, size: 32, offset: 32)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4998, file: !105, line: 600, baseType: !141, size: 32, offset: 64)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4998, file: !105, line: 601, baseType: !210, size: 8, offset: 96)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4998, file: !105, line: 602, baseType: !210, size: 8, offset: 104)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4563, file: !105, line: 793, baseType: !146, size: 32, offset: 5760)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4563, file: !105, line: 795, baseType: !210, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4563, file: !105, line: 796, baseType: !210, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4563, file: !105, line: 797, baseType: !210, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4563, file: !105, line: 798, baseType: !210, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4563, file: !105, line: 799, baseType: !210, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4559, file: !4393, line: 71, baseType: !120, size: 32, offset: 64)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "use_dma_alloc", scope: !4559, file: !4393, line: 73, baseType: !210, size: 8, offset: 96)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "use_dma32", scope: !4559, file: !4393, line: 74, baseType: !210, size: 8, offset: 104)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !4559, file: !4393, line: 78, baseType: !5015, size: 14784, offset: 128)
!5015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5016, size: 14784, elements: !354)
!5016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4559, file: !4393, line: 76, size: 4928, elements: !5017)
!5017 = !{!5018}
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "orders", scope: !5016, file: !4393, line: 77, baseType: !5019, size: 4928)
!5019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5020, size: 4928, elements: !5029)
!5020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_pool_type", file: !4393, line: 49, size: 448, elements: !5021)
!5021 = !{!5022, !5024, !5025, !5026, !5027, !5028}
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !5020, file: !4393, line: 50, baseType: !5023, size: 64)
!5023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !5020, file: !4393, line: 51, baseType: !7, size: 32, offset: 64)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !5020, file: !4393, line: 52, baseType: !5, size: 32, offset: 96)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "shrinker_list", scope: !5020, file: !4393, line: 54, baseType: !322, size: 128, offset: 128)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5020, file: !4393, line: 56, baseType: !261, size: 32, offset: 256)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5020, file: !4393, line: 57, baseType: !322, size: 128, offset: 320)
!5029 = !{!5030}
!5030 = !DISubrange(count: 11)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "lru_lock", scope: !4378, file: !4379, line: 252, baseType: !261, size: 32, offset: 16640)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !4378, file: !4379, line: 257, baseType: !322, size: 128, offset: 16704)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "dev_mapping", scope: !4378, file: !4379, line: 263, baseType: !1045, size: 64, offset: 16832)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4378, file: !4379, line: 268, baseType: !2218, size: 64, offset: 16896)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !215, file: !153, line: 105, baseType: !152, size: 32, offset: 2880)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "page_alignment", scope: !215, file: !153, line: 106, baseType: !194, size: 32, offset: 2912)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !215, file: !153, line: 107, baseType: !4444, size: 64, offset: 2944)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !215, file: !153, line: 112, baseType: !221, size: 32, offset: 3008)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !215, file: !153, line: 117, baseType: !181, size: 64, offset: 3072)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "ttm", scope: !215, file: !153, line: 118, baseType: !4391, size: 64, offset: 3136)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "deleted", scope: !215, file: !153, line: 119, baseType: !210, size: 8, offset: 3200)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_move", scope: !215, file: !153, line: 120, baseType: !5043, size: 64, offset: 3264)
!5043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5044, size: 64)
!5044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_lru_bulk_move", file: !183, line: 255, size: 4096, elements: !5045)
!5045 = !{!5046}
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !5044, file: !183, line: 256, baseType: !5047, size: 4096)
!5047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5048, size: 4096, elements: !5052)
!5048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_lru_bulk_move_pos", file: !183, line: 242, size: 128, elements: !5049)
!5049 = !{!5050, !5051}
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5048, file: !183, line: 243, baseType: !181, size: 64)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !5048, file: !183, line: 244, baseType: !181, size: 64, offset: 64)
!5052 = !{!2788, !376}
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !215, file: !153, line: 121, baseType: !7, size: 32, offset: 3328)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !215, file: !153, line: 122, baseType: !7, size: 32, offset: 3360)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_delete", scope: !215, file: !153, line: 128, baseType: !1360, size: 256, offset: 3392)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !215, file: !153, line: 135, baseType: !4322, size: 64, offset: 3648)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !182, file: !183, line: 220, baseType: !322, size: 128, offset: 448)
!5058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5059, size: 64)
!5059 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !325)
!5060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5061, size: 64)
!5061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5059)
!5062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5063, size: 64)
!5063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_kmap_iter_iomap", file: !183, line: 273, size: 512, elements: !5064)
!5064 = !{!5065, !5084, !5094, !5095, !5096}
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5063, file: !183, line: 274, baseType: !5066, size: 64)
!5066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_kmap_iter", file: !5067, line: 57, size: 64, elements: !5068)
!5067 = !DIFile(filename: "./include/drm/ttm/ttm_kmap_iter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4ce5e03d0656acb22330349974569500")
!5068 = !{!5069}
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5066, file: !5067, line: 58, baseType: !5070, size: 64)
!5070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5071, size: 64)
!5071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5072)
!5072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_kmap_iter_ops", file: !5067, line: 21, size: 192, elements: !5073)
!5073 = !{!5074, !5079, !5083}
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "map_local", scope: !5072, file: !5067, line: 31, baseType: !5075, size: 64)
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5076, size: 64)
!5076 = !DISubroutineType(types: !5077)
!5077 = !{null, !5078, !4343, !186}
!5078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5066, size: 64)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_local", scope: !5072, file: !5067, line: 41, baseType: !5080, size: 64, offset: 64)
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5081, size: 64)
!5081 = !DISubroutineType(types: !5082)
!5082 = !{null, !5078, !4343}
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "maps_tt", scope: !5072, file: !5067, line: 43, baseType: !210, size: 8, offset: 128)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !5063, file: !183, line: 275, baseType: !5085, size: 64, offset: 64)
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5086, size: 64)
!5086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_mapping", file: !5087, line: 23, size: 256, elements: !5088)
!5087 = !DIFile(filename: "./include/linux/io-mapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "915f92fff7bb1606707c9b09e1426bb8")
!5088 = !{!5089, !5091, !5092, !5093}
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5086, file: !5087, line: 24, baseType: !5090, size: 64)
!5090 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !189, line: 164, baseType: !205)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5086, file: !5087, line: 25, baseType: !186, size: 64, offset: 64)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "prot", scope: !5086, file: !5087, line: 26, baseType: !1374, size: 64, offset: 128)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "iomem", scope: !5086, file: !5087, line: 27, baseType: !180, size: 64, offset: 192)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !5063, file: !183, line: 276, baseType: !4322, size: 64, offset: 128)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5063, file: !183, line: 277, baseType: !5090, size: 64, offset: 192)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !5063, file: !183, line: 283, baseType: !5097, size: 256, offset: 256)
!5097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5063, file: !183, line: 278, size: 256, elements: !5098)
!5098 = !{!5099, !5100, !5101, !5102}
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !5097, file: !183, line: 279, baseType: !4327, size: 64)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !5097, file: !183, line: 280, baseType: !186, size: 64, offset: 64)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5097, file: !183, line: 281, baseType: !186, size: 64, offset: 128)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5097, file: !183, line: 282, baseType: !186, size: 64, offset: 192)
!5103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5104, size: 64)
!5104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_kmap_iter_linear_io", file: !183, line: 292, size: 256, elements: !5105)
!5105 = !{!5106, !5107, !5108}
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5104, file: !183, line: 293, baseType: !5066, size: 64)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "dmap", scope: !5104, file: !183, line: 294, baseType: !4344, size: 128, offset: 64)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "needs_unmap", scope: !5104, file: !183, line: 295, baseType: !210, size: 8, offset: 192)
!5109 = !{!0, !5110, !5112, !5114, !5116, !5118, !5120, !5122, !5124, !5126, !5131, !5133, !5138, !5140, !5142, !5144, !5149, !5151, !5153}
!5110 = !DIGlobalVariableExpression(var: !5111, expr: !DIExpression())
!5111 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_lru_bulk_move_tail298", scope: !2, file: !3, line: 75, type: !180, isLocal: true, isDefinition: true)
!5112 = !DIGlobalVariableExpression(var: !5113, expr: !DIExpression())
!5113 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_resource_init299", scope: !2, file: !3, line: 202, type: !180, isLocal: true, isDefinition: true)
!5114 = !DIGlobalVariableExpression(var: !5115, expr: !DIExpression())
!5115 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_resource_fini300", scope: !2, file: !3, line: 224, type: !180, isLocal: true, isDefinition: true)
!5116 = !DIGlobalVariableExpression(var: !5117, expr: !DIExpression())
!5117 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_resource_free301", scope: !2, file: !3, line: 258, type: !180, isLocal: true, isDefinition: true)
!5118 = !DIGlobalVariableExpression(var: !5119, expr: !DIExpression())
!5119 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_resource_manager_init302", scope: !2, file: !3, line: 400, type: !180, isLocal: true, isDefinition: true)
!5120 = !DIGlobalVariableExpression(var: !5121, expr: !DIExpression())
!5121 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_resource_manager_evict_all303", scope: !2, file: !3, line: 453, type: !180, isLocal: true, isDefinition: true)
!5122 = !DIGlobalVariableExpression(var: !5123, expr: !DIExpression())
!5123 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_resource_manager_usage304", scope: !2, file: !3, line: 471, type: !180, isLocal: true, isDefinition: true)
!5124 = !DIGlobalVariableExpression(var: !5125, expr: !DIExpression())
!5125 = distinct !DIGlobalVariable(scope: null, file: !3, line: 482, type: !3051, isLocal: true, isDefinition: true)
!5126 = !DIGlobalVariableExpression(var: !5127, expr: !DIExpression())
!5127 = distinct !DIGlobalVariable(scope: null, file: !3, line: 483, type: !5128, isLocal: true, isDefinition: true)
!5128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 112, elements: !5129)
!5129 = !{!5130}
!5130 = !DISubrange(count: 14)
!5131 = !DIGlobalVariableExpression(var: !5132, expr: !DIExpression())
!5132 = distinct !DIGlobalVariable(scope: null, file: !3, line: 484, type: !5128, isLocal: true, isDefinition: true)
!5133 = !DIGlobalVariableExpression(var: !5134, expr: !DIExpression())
!5134 = distinct !DIGlobalVariable(scope: null, file: !3, line: 485, type: !5135, isLocal: true, isDefinition: true)
!5135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 120, elements: !5136)
!5136 = !{!5137}
!5137 = !DISubrange(count: 15)
!5138 = !DIGlobalVariableExpression(var: !5139, expr: !DIExpression())
!5139 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_resource_manager_debug305", scope: !2, file: !3, line: 489, type: !180, isLocal: true, isDefinition: true)
!5140 = !DIGlobalVariableExpression(var: !5141, expr: !DIExpression())
!5141 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_kmap_iter_iomap_init306", scope: !2, file: !3, line: 610, type: !180, isLocal: true, isDefinition: true)
!5142 = !DIGlobalVariableExpression(var: !5143, expr: !DIExpression())
!5143 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_resource_manager_create_debugfs307", scope: !2, file: !3, line: 761, type: !180, isLocal: true, isDefinition: true)
!5144 = !DIGlobalVariableExpression(var: !5145, expr: !DIExpression())
!5145 = distinct !DIGlobalVariable(scope: null, file: !3, line: 116, type: !5146, isLocal: true, isDefinition: true)
!5146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 280, elements: !5147)
!5147 = !{!5148}
!5148 = !DISubrange(count: 35)
!5149 = !DIGlobalVariableExpression(var: !5150, expr: !DIExpression())
!5150 = distinct !DIGlobalVariable(name: "ttm_kmap_iter_io_ops", scope: !2, file: !3, line: 579, type: !5071, isLocal: true, isDefinition: true)
!5151 = !DIGlobalVariableExpression(var: !5152, expr: !DIExpression())
!5152 = distinct !DIGlobalVariable(name: "ttm_kmap_iter_linear_io_ops", scope: !2, file: !3, line: 635, type: !5071, isLocal: true, isDefinition: true)
!5153 = !DIGlobalVariableExpression(var: !5154, expr: !DIExpression())
!5154 = distinct !DIGlobalVariable(name: "ttm_resource_manager_fops", scope: !2, file: !3, line: 739, type: !3989, isLocal: true, isDefinition: true)
!5155 = !{i32 7, !"Dwarf Version", i32 5}
!5156 = !{i32 2, !"Debug Info Version", i32 3}
!5157 = !{i32 1, !"wchar_size", i32 2}
!5158 = !{i32 8, !"cf-protection-branch", i32 1}
!5159 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5160 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5161 = !{i32 1, !"Code Model", i32 2}
!5162 = !{i32 1, !"override-stack-alignment", i32 8}
!5163 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5164 = distinct !DISubprogram(name: "ttm_lru_bulk_move_init", scope: !3, file: !3, line: 39, type: !5165, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5167)
!5165 = !DISubroutineType(types: !5166)
!5166 = !{null, !5043}
!5167 = !{!5168}
!5168 = !DILocalVariable(name: "bulk", arg: 1, scope: !5164, file: !3, line: 39, type: !5043)
!5169 = !DILocation(line: 39, column: 55, scope: !5164)
!5170 = !DILocation(line: 41, column: 9, scope: !5164)
!5171 = !DILocation(line: 41, column: 2, scope: !5164)
!5172 = !DILocation(line: 42, column: 1, scope: !5164)
!5173 = distinct !DISubprogram(name: "ttm_lru_bulk_move_tail", scope: !3, file: !3, line: 53, type: !5165, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5174)
!5174 = !{!5175, !5176, !5177, !5178, !5186}
!5175 = !DILocalVariable(name: "bulk", arg: 1, scope: !5173, file: !3, line: 53, type: !5043)
!5176 = !DILocalVariable(name: "i", scope: !5173, file: !3, line: 55, type: !7)
!5177 = !DILocalVariable(name: "j", scope: !5173, file: !3, line: 55, type: !7)
!5178 = !DILocalVariable(name: "pos", scope: !5179, file: !3, line: 59, type: !5185)
!5179 = distinct !DILexicalBlock(scope: !5180, file: !3, line: 58, column: 45)
!5180 = distinct !DILexicalBlock(scope: !5181, file: !3, line: 58, column: 3)
!5181 = distinct !DILexicalBlock(scope: !5182, file: !3, line: 58, column: 3)
!5182 = distinct !DILexicalBlock(scope: !5183, file: !3, line: 57, column: 42)
!5183 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 57, column: 2)
!5184 = distinct !DILexicalBlock(scope: !5173, file: !3, line: 57, column: 2)
!5185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5048, size: 64)
!5186 = !DILocalVariable(name: "man", scope: !5179, file: !3, line: 60, type: !4481)
!5187 = !DILocation(line: 53, column: 55, scope: !5173)
!5188 = !DILocation(line: 55, column: 2, scope: !5173)
!5189 = !DILocation(line: 55, column: 11, scope: !5173)
!5190 = !DILocation(line: 55, column: 14, scope: !5173)
!5191 = !DILocation(line: 57, column: 9, scope: !5184)
!5192 = !DILocation(line: 57, column: 7, scope: !5184)
!5193 = !DILocation(line: 57, column: 14, scope: !5183)
!5194 = !DILocation(line: 57, column: 16, scope: !5183)
!5195 = !DILocation(line: 57, column: 2, scope: !5184)
!5196 = !DILocation(line: 58, column: 10, scope: !5181)
!5197 = !DILocation(line: 58, column: 8, scope: !5181)
!5198 = !DILocation(line: 58, column: 15, scope: !5180)
!5199 = !DILocation(line: 58, column: 17, scope: !5180)
!5200 = !DILocation(line: 58, column: 3, scope: !5181)
!5201 = !DILocation(line: 59, column: 4, scope: !5179)
!5202 = !DILocation(line: 59, column: 34, scope: !5179)
!5203 = !DILocation(line: 59, column: 41, scope: !5179)
!5204 = !DILocation(line: 59, column: 47, scope: !5179)
!5205 = !DILocation(line: 59, column: 51, scope: !5179)
!5206 = !DILocation(line: 59, column: 54, scope: !5179)
!5207 = !DILocation(line: 60, column: 4, scope: !5179)
!5208 = !DILocation(line: 60, column: 33, scope: !5179)
!5209 = !DILocation(line: 62, column: 9, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !5179, file: !3, line: 62, column: 8)
!5211 = !DILocation(line: 62, column: 14, scope: !5210)
!5212 = !DILocation(line: 62, column: 8, scope: !5179)
!5213 = !DILocation(line: 63, column: 5, scope: !5210)
!5214 = !DILocation(line: 65, column: 4, scope: !5179)
!5215 = !DILocation(line: 65, column: 4, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5179, file: !3, line: 65, column: 4)
!5217 = !DILocation(line: 66, column: 4, scope: !5179)
!5218 = !DILocation(line: 66, column: 4, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5179, file: !3, line: 66, column: 4)
!5220 = !DILocation(line: 67, column: 4, scope: !5179)
!5221 = !DILocation(line: 67, column: 4, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5179, file: !3, line: 67, column: 4)
!5223 = !DILocation(line: 69, column: 27, scope: !5179)
!5224 = !DILocation(line: 69, column: 32, scope: !5179)
!5225 = !DILocation(line: 69, column: 39, scope: !5179)
!5226 = !DILocation(line: 69, column: 43, scope: !5179)
!5227 = !DILocation(line: 69, column: 49, scope: !5179)
!5228 = !DILocation(line: 69, column: 10, scope: !5179)
!5229 = !DILocation(line: 69, column: 8, scope: !5179)
!5230 = !DILocation(line: 70, column: 25, scope: !5179)
!5231 = !DILocation(line: 70, column: 30, scope: !5179)
!5232 = !DILocation(line: 70, column: 34, scope: !5179)
!5233 = !DILocation(line: 70, column: 39, scope: !5179)
!5234 = !DILocation(line: 70, column: 44, scope: !5179)
!5235 = !DILocation(line: 70, column: 51, scope: !5179)
!5236 = !DILocation(line: 71, column: 11, scope: !5179)
!5237 = !DILocation(line: 71, column: 16, scope: !5179)
!5238 = !DILocation(line: 71, column: 22, scope: !5179)
!5239 = !DILocation(line: 70, column: 4, scope: !5179)
!5240 = !DILocation(line: 72, column: 3, scope: !5180)
!5241 = !DILocation(line: 72, column: 3, scope: !5179)
!5242 = !DILocation(line: 58, column: 40, scope: !5180)
!5243 = !DILocation(line: 58, column: 3, scope: !5180)
!5244 = distinct !{!5244, !5200, !5245, !5246, !5247}
!5245 = !DILocation(line: 72, column: 3, scope: !5181)
!5246 = !{!"llvm.loop.mustprogress"}
!5247 = !{!"llvm.loop.unroll.disable"}
!5248 = !DILocation(line: 73, column: 2, scope: !5182)
!5249 = !DILocation(line: 57, column: 37, scope: !5183)
!5250 = !DILocation(line: 57, column: 2, scope: !5183)
!5251 = distinct !{!5251, !5195, !5252, !5246, !5247}
!5252 = !DILocation(line: 73, column: 2, scope: !5184)
!5253 = !DILocation(line: 74, column: 1, scope: !5173)
!5254 = distinct !DISubprogram(name: "ttm_manager_type", scope: !4379, file: !4379, line: 276, type: !5255, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5257)
!5255 = !DISubroutineType(types: !5256)
!5256 = !{!4481, !4377, !120}
!5257 = !{!5258, !5259}
!5258 = !DILocalVariable(name: "bdev", arg: 1, scope: !5254, file: !4379, line: 276, type: !4377)
!5259 = !DILocalVariable(name: "mem_type", arg: 2, scope: !5254, file: !4379, line: 276, type: !120)
!5260 = !DILocation(line: 276, column: 37, scope: !5254)
!5261 = !DILocation(line: 276, column: 47, scope: !5254)
!5262 = !DILocation(line: 278, column: 2, scope: !5254)
!5263 = !DILocation(line: 278, column: 2, scope: !5264)
!5264 = distinct !DILexicalBlock(scope: !5265, file: !4379, line: 278, column: 2)
!5265 = distinct !DILexicalBlock(scope: !5254, file: !4379, line: 278, column: 2)
!5266 = !DILocation(line: 278, column: 2, scope: !5265)
!5267 = !{i32 -2140054877}
!5268 = !DILocation(line: 280, column: 9, scope: !5254)
!5269 = !DILocation(line: 280, column: 15, scope: !5254)
!5270 = !DILocation(line: 280, column: 23, scope: !5254)
!5271 = !DILocation(line: 280, column: 2, scope: !5254)
!5272 = distinct !DISubprogram(name: "list_bulk_move_tail", scope: !5273, file: !5273, line: 323, type: !5274, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5276)
!5273 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5274 = !DISubroutineType(types: !5275)
!5275 = !{null, !325, !325, !325}
!5276 = !{!5277, !5278, !5279}
!5277 = !DILocalVariable(name: "head", arg: 1, scope: !5272, file: !5273, line: 323, type: !325)
!5278 = !DILocalVariable(name: "first", arg: 2, scope: !5272, file: !5273, line: 324, type: !325)
!5279 = !DILocalVariable(name: "last", arg: 3, scope: !5272, file: !5273, line: 325, type: !325)
!5280 = !DILocation(line: 323, column: 58, scope: !5272)
!5281 = !DILocation(line: 324, column: 30, scope: !5272)
!5282 = !DILocation(line: 325, column: 30, scope: !5272)
!5283 = !DILocation(line: 327, column: 22, scope: !5272)
!5284 = !DILocation(line: 327, column: 28, scope: !5272)
!5285 = !DILocation(line: 327, column: 2, scope: !5272)
!5286 = !DILocation(line: 327, column: 9, scope: !5272)
!5287 = !DILocation(line: 327, column: 15, scope: !5272)
!5288 = !DILocation(line: 327, column: 20, scope: !5272)
!5289 = !DILocation(line: 328, column: 21, scope: !5272)
!5290 = !DILocation(line: 328, column: 28, scope: !5272)
!5291 = !DILocation(line: 328, column: 2, scope: !5272)
!5292 = !DILocation(line: 328, column: 8, scope: !5272)
!5293 = !DILocation(line: 328, column: 14, scope: !5272)
!5294 = !DILocation(line: 328, column: 19, scope: !5272)
!5295 = !DILocation(line: 330, column: 21, scope: !5272)
!5296 = !DILocation(line: 330, column: 2, scope: !5272)
!5297 = !DILocation(line: 330, column: 8, scope: !5272)
!5298 = !DILocation(line: 330, column: 14, scope: !5272)
!5299 = !DILocation(line: 330, column: 19, scope: !5272)
!5300 = !DILocation(line: 331, column: 16, scope: !5272)
!5301 = !DILocation(line: 331, column: 22, scope: !5272)
!5302 = !DILocation(line: 331, column: 2, scope: !5272)
!5303 = !DILocation(line: 331, column: 9, scope: !5272)
!5304 = !DILocation(line: 331, column: 14, scope: !5272)
!5305 = !DILocation(line: 333, column: 15, scope: !5272)
!5306 = !DILocation(line: 333, column: 2, scope: !5272)
!5307 = !DILocation(line: 333, column: 8, scope: !5272)
!5308 = !DILocation(line: 333, column: 13, scope: !5272)
!5309 = !DILocation(line: 334, column: 15, scope: !5272)
!5310 = !DILocation(line: 334, column: 2, scope: !5272)
!5311 = !DILocation(line: 334, column: 8, scope: !5272)
!5312 = !DILocation(line: 334, column: 13, scope: !5272)
!5313 = !DILocation(line: 335, column: 1, scope: !5272)
!5314 = distinct !DISubprogram(name: "ttm_resource_add_bulk_move", scope: !3, file: !3, line: 130, type: !5315, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5317)
!5315 = !DISubroutineType(types: !5316)
!5316 = !{null, !181, !214}
!5317 = !{!5318, !5319}
!5318 = !DILocalVariable(name: "res", arg: 1, scope: !5314, file: !3, line: 130, type: !181)
!5319 = !DILocalVariable(name: "bo", arg: 2, scope: !5314, file: !3, line: 131, type: !214)
!5320 = !DILocation(line: 130, column: 54, scope: !5314)
!5321 = !DILocation(line: 131, column: 31, scope: !5314)
!5322 = !DILocation(line: 133, column: 6, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5314, file: !3, line: 133, column: 6)
!5324 = !DILocation(line: 133, column: 10, scope: !5323)
!5325 = !DILocation(line: 133, column: 20, scope: !5323)
!5326 = !DILocation(line: 133, column: 24, scope: !5323)
!5327 = !DILocation(line: 133, column: 28, scope: !5323)
!5328 = !DILocation(line: 133, column: 6, scope: !5314)
!5329 = !DILocation(line: 134, column: 25, scope: !5323)
!5330 = !DILocation(line: 134, column: 29, scope: !5323)
!5331 = !DILocation(line: 134, column: 40, scope: !5323)
!5332 = !DILocation(line: 134, column: 3, scope: !5323)
!5333 = !DILocation(line: 135, column: 1, scope: !5314)
!5334 = distinct !DISubprogram(name: "ttm_lru_bulk_move_add", scope: !3, file: !3, line: 97, type: !5335, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5337)
!5335 = !DISubroutineType(types: !5336)
!5336 = !{null, !5043, !181}
!5337 = !{!5338, !5339, !5340}
!5338 = !DILocalVariable(name: "bulk", arg: 1, scope: !5334, file: !3, line: 97, type: !5043)
!5339 = !DILocalVariable(name: "res", arg: 2, scope: !5334, file: !3, line: 98, type: !181)
!5340 = !DILocalVariable(name: "pos", scope: !5334, file: !3, line: 100, type: !5185)
!5341 = !DILocation(line: 97, column: 61, scope: !5334)
!5342 = !DILocation(line: 98, column: 28, scope: !5334)
!5343 = !DILocation(line: 100, column: 2, scope: !5334)
!5344 = !DILocation(line: 100, column: 32, scope: !5334)
!5345 = !DILocation(line: 100, column: 60, scope: !5334)
!5346 = !DILocation(line: 100, column: 66, scope: !5334)
!5347 = !DILocation(line: 100, column: 38, scope: !5334)
!5348 = !DILocation(line: 102, column: 7, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !5334, file: !3, line: 102, column: 6)
!5350 = !DILocation(line: 102, column: 12, scope: !5349)
!5351 = !DILocation(line: 102, column: 6, scope: !5334)
!5352 = !DILocation(line: 103, column: 16, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5349, file: !3, line: 102, column: 19)
!5354 = !DILocation(line: 103, column: 3, scope: !5353)
!5355 = !DILocation(line: 103, column: 8, scope: !5353)
!5356 = !DILocation(line: 103, column: 14, scope: !5353)
!5357 = !DILocation(line: 104, column: 15, scope: !5353)
!5358 = !DILocation(line: 104, column: 3, scope: !5353)
!5359 = !DILocation(line: 104, column: 8, scope: !5353)
!5360 = !DILocation(line: 104, column: 13, scope: !5353)
!5361 = !DILocation(line: 105, column: 2, scope: !5353)
!5362 = !DILocation(line: 106, column: 30, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5349, file: !3, line: 105, column: 9)
!5364 = !DILocation(line: 106, column: 35, scope: !5363)
!5365 = !DILocation(line: 106, column: 3, scope: !5363)
!5366 = !DILocation(line: 108, column: 1, scope: !5334)
!5367 = distinct !DISubprogram(name: "ttm_resource_del_bulk_move", scope: !3, file: !3, line: 138, type: !5315, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5368)
!5368 = !{!5369, !5370}
!5369 = !DILocalVariable(name: "res", arg: 1, scope: !5367, file: !3, line: 138, type: !181)
!5370 = !DILocalVariable(name: "bo", arg: 2, scope: !5367, file: !3, line: 139, type: !214)
!5371 = !DILocation(line: 138, column: 54, scope: !5367)
!5372 = !DILocation(line: 139, column: 31, scope: !5367)
!5373 = !DILocation(line: 141, column: 6, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5367, file: !3, line: 141, column: 6)
!5375 = !DILocation(line: 141, column: 10, scope: !5374)
!5376 = !DILocation(line: 141, column: 20, scope: !5374)
!5377 = !DILocation(line: 141, column: 24, scope: !5374)
!5378 = !DILocation(line: 141, column: 28, scope: !5374)
!5379 = !DILocation(line: 141, column: 6, scope: !5367)
!5380 = !DILocation(line: 142, column: 25, scope: !5374)
!5381 = !DILocation(line: 142, column: 29, scope: !5374)
!5382 = !DILocation(line: 142, column: 40, scope: !5374)
!5383 = !DILocation(line: 142, column: 3, scope: !5374)
!5384 = !DILocation(line: 143, column: 1, scope: !5367)
!5385 = distinct !DISubprogram(name: "ttm_lru_bulk_move_del", scope: !3, file: !3, line: 111, type: !5335, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5386)
!5386 = !{!5387, !5388, !5389, !5390, !5393, !5396, !5400}
!5387 = !DILocalVariable(name: "bulk", arg: 1, scope: !5385, file: !3, line: 111, type: !5043)
!5388 = !DILocalVariable(name: "res", arg: 2, scope: !5385, file: !3, line: 112, type: !181)
!5389 = !DILocalVariable(name: "pos", scope: !5385, file: !3, line: 114, type: !5185)
!5390 = !DILocalVariable(name: "__ret_warn_on", scope: !5391, file: !3, line: 116, type: !120)
!5391 = distinct !DILexicalBlock(scope: !5392, file: !3, line: 116, column: 6)
!5392 = distinct !DILexicalBlock(scope: !5385, file: !3, line: 116, column: 6)
!5393 = !DILocalVariable(name: "__flags", scope: !5394, file: !3, line: 116, type: !120)
!5394 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 116, column: 6)
!5395 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 116, column: 6)
!5396 = !DILocalVariable(name: "__mptr", scope: !5397, file: !3, line: 121, type: !180)
!5397 = distinct !DILexicalBlock(scope: !5398, file: !3, line: 121, column: 16)
!5398 = distinct !DILexicalBlock(scope: !5399, file: !3, line: 120, column: 32)
!5399 = distinct !DILexicalBlock(scope: !5392, file: !3, line: 120, column: 13)
!5400 = !DILocalVariable(name: "__mptr", scope: !5401, file: !3, line: 123, type: !180)
!5401 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 123, column: 15)
!5402 = distinct !DILexicalBlock(scope: !5403, file: !3, line: 122, column: 31)
!5403 = distinct !DILexicalBlock(scope: !5399, file: !3, line: 122, column: 13)
!5404 = !DILocation(line: 111, column: 61, scope: !5385)
!5405 = !DILocation(line: 112, column: 28, scope: !5385)
!5406 = !DILocation(line: 114, column: 2, scope: !5385)
!5407 = !DILocation(line: 114, column: 32, scope: !5385)
!5408 = !DILocation(line: 114, column: 60, scope: !5385)
!5409 = !DILocation(line: 114, column: 66, scope: !5385)
!5410 = !DILocation(line: 114, column: 38, scope: !5385)
!5411 = !DILocation(line: 116, column: 6, scope: !5391)
!5412 = !DILocation(line: 116, column: 6, scope: !5395)
!5413 = !DILocation(line: 116, column: 6, scope: !5394)
!5414 = !DILocation(line: 116, column: 6, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5394, file: !3, line: 116, column: 6)
!5416 = !DILocation(line: 116, column: 6, scope: !5417)
!5417 = distinct !DILexicalBlock(scope: !5394, file: !3, line: 116, column: 6)
!5418 = !{i64 2154929464, i64 2154929508, i64 2154929554, i64 2154929619, i64 2154929679, i64 2154929733, i64 2154929788, i64 2154929819, i64 2154929835, i64 2154929841, i64 2154929888, i64 2154929911, i64 2154929937}
!5419 = !DILocation(line: 116, column: 6, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5394, file: !3, line: 116, column: 6)
!5421 = !DILocation(line: 116, column: 6, scope: !5392)
!5422 = !DILocation(line: 0, scope: !5392)
!5423 = !DILocation(line: 116, column: 6, scope: !5385)
!5424 = !DILocation(line: 118, column: 3, scope: !5425)
!5425 = distinct !DILexicalBlock(scope: !5392, file: !3, line: 117, column: 50)
!5426 = !DILocation(line: 118, column: 8, scope: !5425)
!5427 = !DILocation(line: 118, column: 14, scope: !5425)
!5428 = !DILocation(line: 119, column: 3, scope: !5425)
!5429 = !DILocation(line: 119, column: 8, scope: !5425)
!5430 = !DILocation(line: 119, column: 13, scope: !5425)
!5431 = !DILocation(line: 120, column: 2, scope: !5425)
!5432 = !DILocation(line: 120, column: 13, scope: !5399)
!5433 = !DILocation(line: 120, column: 18, scope: !5399)
!5434 = !DILocation(line: 120, column: 27, scope: !5399)
!5435 = !DILocation(line: 120, column: 24, scope: !5399)
!5436 = !DILocation(line: 120, column: 13, scope: !5392)
!5437 = !DILocation(line: 121, column: 16, scope: !5397)
!5438 = !DILocation(line: 121, column: 16, scope: !5398)
!5439 = !DILocation(line: 121, column: 3, scope: !5398)
!5440 = !DILocation(line: 121, column: 8, scope: !5398)
!5441 = !DILocation(line: 121, column: 14, scope: !5398)
!5442 = !DILocation(line: 122, column: 2, scope: !5398)
!5443 = !DILocation(line: 122, column: 13, scope: !5403)
!5444 = !DILocation(line: 122, column: 18, scope: !5403)
!5445 = !DILocation(line: 122, column: 26, scope: !5403)
!5446 = !DILocation(line: 122, column: 23, scope: !5403)
!5447 = !DILocation(line: 122, column: 13, scope: !5399)
!5448 = !DILocation(line: 123, column: 15, scope: !5401)
!5449 = !DILocation(line: 123, column: 15, scope: !5402)
!5450 = !DILocation(line: 123, column: 3, scope: !5402)
!5451 = !DILocation(line: 123, column: 8, scope: !5402)
!5452 = !DILocation(line: 123, column: 13, scope: !5402)
!5453 = !DILocation(line: 124, column: 2, scope: !5402)
!5454 = !DILocation(line: 125, column: 14, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5403, file: !3, line: 124, column: 9)
!5456 = !DILocation(line: 125, column: 19, scope: !5455)
!5457 = !DILocation(line: 125, column: 25, scope: !5455)
!5458 = !DILocation(line: 125, column: 30, scope: !5455)
!5459 = !DILocation(line: 125, column: 36, scope: !5455)
!5460 = !DILocation(line: 125, column: 3, scope: !5455)
!5461 = !DILocation(line: 127, column: 1, scope: !5385)
!5462 = distinct !DISubprogram(name: "ttm_resource_move_to_lru_tail", scope: !3, file: !3, line: 146, type: !5463, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5465)
!5463 = !DISubroutineType(types: !5464)
!5464 = !{null, !181}
!5465 = !{!5466, !5467, !5468, !5469, !5473}
!5466 = !DILocalVariable(name: "res", arg: 1, scope: !5462, file: !3, line: 146, type: !181)
!5467 = !DILocalVariable(name: "bo", scope: !5462, file: !3, line: 148, type: !214)
!5468 = !DILocalVariable(name: "bdev", scope: !5462, file: !3, line: 149, type: !4377)
!5469 = !DILocalVariable(name: "pos", scope: !5470, file: !3, line: 157, type: !5185)
!5470 = distinct !DILexicalBlock(scope: !5471, file: !3, line: 156, column: 28)
!5471 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 156, column: 13)
!5472 = distinct !DILexicalBlock(scope: !5462, file: !3, line: 153, column: 6)
!5473 = !DILocalVariable(name: "man", scope: !5474, file: !3, line: 162, type: !4481)
!5474 = distinct !DILexicalBlock(scope: !5471, file: !3, line: 161, column: 9)
!5475 = !DILocation(line: 146, column: 57, scope: !5462)
!5476 = !DILocation(line: 148, column: 2, scope: !5462)
!5477 = !DILocation(line: 148, column: 28, scope: !5462)
!5478 = !DILocation(line: 148, column: 33, scope: !5462)
!5479 = !DILocation(line: 148, column: 38, scope: !5462)
!5480 = !DILocation(line: 149, column: 2, scope: !5462)
!5481 = !DILocation(line: 149, column: 21, scope: !5462)
!5482 = !DILocation(line: 149, column: 28, scope: !5462)
!5483 = !DILocation(line: 149, column: 32, scope: !5462)
!5484 = !DILocation(line: 151, column: 2, scope: !5462)
!5485 = !DILocation(line: 151, column: 2, scope: !5486)
!5486 = distinct !DILexicalBlock(scope: !5462, file: !3, line: 151, column: 2)
!5487 = !DILocation(line: 153, column: 6, scope: !5472)
!5488 = !DILocation(line: 153, column: 10, scope: !5472)
!5489 = !DILocation(line: 153, column: 6, scope: !5462)
!5490 = !DILocation(line: 154, column: 19, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 153, column: 21)
!5492 = !DILocation(line: 154, column: 24, scope: !5491)
!5493 = !DILocation(line: 154, column: 30, scope: !5491)
!5494 = !DILocation(line: 154, column: 36, scope: !5491)
!5495 = !DILocation(line: 154, column: 3, scope: !5491)
!5496 = !DILocation(line: 156, column: 2, scope: !5491)
!5497 = !DILocation(line: 156, column: 13, scope: !5471)
!5498 = !DILocation(line: 156, column: 17, scope: !5471)
!5499 = !DILocation(line: 156, column: 13, scope: !5472)
!5500 = !DILocation(line: 157, column: 3, scope: !5470)
!5501 = !DILocation(line: 157, column: 33, scope: !5470)
!5502 = !DILocation(line: 158, column: 26, scope: !5470)
!5503 = !DILocation(line: 158, column: 30, scope: !5470)
!5504 = !DILocation(line: 158, column: 41, scope: !5470)
!5505 = !DILocation(line: 158, column: 4, scope: !5470)
!5506 = !DILocation(line: 160, column: 30, scope: !5470)
!5507 = !DILocation(line: 160, column: 35, scope: !5470)
!5508 = !DILocation(line: 160, column: 3, scope: !5470)
!5509 = !DILocation(line: 161, column: 2, scope: !5471)
!5510 = !DILocation(line: 161, column: 2, scope: !5470)
!5511 = !DILocation(line: 162, column: 3, scope: !5474)
!5512 = !DILocation(line: 162, column: 32, scope: !5474)
!5513 = !DILocation(line: 164, column: 26, scope: !5474)
!5514 = !DILocation(line: 164, column: 32, scope: !5474)
!5515 = !DILocation(line: 164, column: 37, scope: !5474)
!5516 = !DILocation(line: 164, column: 9, scope: !5474)
!5517 = !DILocation(line: 164, column: 7, scope: !5474)
!5518 = !DILocation(line: 165, column: 19, scope: !5474)
!5519 = !DILocation(line: 165, column: 24, scope: !5474)
!5520 = !DILocation(line: 165, column: 30, scope: !5474)
!5521 = !DILocation(line: 165, column: 35, scope: !5474)
!5522 = !DILocation(line: 165, column: 39, scope: !5474)
!5523 = !DILocation(line: 165, column: 43, scope: !5474)
!5524 = !DILocation(line: 165, column: 3, scope: !5474)
!5525 = !DILocation(line: 166, column: 2, scope: !5471)
!5526 = !DILocation(line: 167, column: 1, scope: !5462)
!5527 = distinct !DISubprogram(name: "list_move_tail", scope: !5273, file: !5273, line: 307, type: !5528, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5530)
!5528 = !DISubroutineType(types: !5529)
!5529 = !{null, !325, !325}
!5530 = !{!5531, !5532}
!5531 = !DILocalVariable(name: "list", arg: 1, scope: !5527, file: !5273, line: 307, type: !325)
!5532 = !DILocalVariable(name: "head", arg: 2, scope: !5527, file: !5273, line: 308, type: !325)
!5533 = !DILocation(line: 307, column: 53, scope: !5527)
!5534 = !DILocation(line: 308, column: 25, scope: !5527)
!5535 = !DILocation(line: 310, column: 19, scope: !5527)
!5536 = !DILocation(line: 310, column: 2, scope: !5527)
!5537 = !DILocation(line: 311, column: 16, scope: !5527)
!5538 = !DILocation(line: 311, column: 22, scope: !5527)
!5539 = !DILocation(line: 311, column: 2, scope: !5527)
!5540 = !DILocation(line: 312, column: 1, scope: !5527)
!5541 = distinct !DISubprogram(name: "ttm_lru_bulk_move_pos", scope: !3, file: !3, line: 79, type: !5542, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5544)
!5542 = !DISubroutineType(types: !5543)
!5543 = !{!5185, !5043, !181}
!5544 = !{!5545, !5546}
!5545 = !DILocalVariable(name: "bulk", arg: 1, scope: !5541, file: !3, line: 79, type: !5043)
!5546 = !DILocalVariable(name: "res", arg: 2, scope: !5541, file: !3, line: 79, type: !181)
!5547 = !DILocation(line: 79, column: 49, scope: !5541)
!5548 = !DILocation(line: 79, column: 76, scope: !5541)
!5549 = !DILocation(line: 81, column: 10, scope: !5541)
!5550 = !DILocation(line: 81, column: 16, scope: !5541)
!5551 = !DILocation(line: 81, column: 20, scope: !5541)
!5552 = !DILocation(line: 81, column: 25, scope: !5541)
!5553 = !DILocation(line: 81, column: 35, scope: !5541)
!5554 = !DILocation(line: 81, column: 40, scope: !5541)
!5555 = !DILocation(line: 81, column: 44, scope: !5541)
!5556 = !DILocation(line: 81, column: 2, scope: !5541)
!5557 = distinct !DISubprogram(name: "ttm_lru_bulk_move_pos_tail", scope: !3, file: !3, line: 85, type: !5558, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5560)
!5558 = !DISubroutineType(types: !5559)
!5559 = !{null, !5185, !181}
!5560 = !{!5561, !5562, !5563}
!5561 = !DILocalVariable(name: "pos", arg: 1, scope: !5557, file: !3, line: 85, type: !5185)
!5562 = !DILocalVariable(name: "res", arg: 2, scope: !5557, file: !3, line: 86, type: !181)
!5563 = !DILocalVariable(name: "__mptr", scope: !5564, file: !3, line: 90, type: !180)
!5564 = distinct !DILexicalBlock(scope: !5565, file: !3, line: 90, column: 17)
!5565 = distinct !DILexicalBlock(scope: !5566, file: !3, line: 89, column: 7)
!5566 = distinct !DILexicalBlock(scope: !5567, file: !3, line: 88, column: 24)
!5567 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 88, column: 6)
!5568 = !DILocation(line: 85, column: 70, scope: !5557)
!5569 = !DILocation(line: 86, column: 33, scope: !5557)
!5570 = !DILocation(line: 88, column: 6, scope: !5567)
!5571 = !DILocation(line: 88, column: 11, scope: !5567)
!5572 = !DILocation(line: 88, column: 19, scope: !5567)
!5573 = !DILocation(line: 88, column: 16, scope: !5567)
!5574 = !DILocation(line: 88, column: 6, scope: !5557)
!5575 = !DILocation(line: 89, column: 7, scope: !5565)
!5576 = !DILocation(line: 89, column: 12, scope: !5565)
!5577 = !DILocation(line: 89, column: 21, scope: !5565)
!5578 = !DILocation(line: 89, column: 18, scope: !5565)
!5579 = !DILocation(line: 89, column: 7, scope: !5566)
!5580 = !DILocation(line: 90, column: 17, scope: !5564)
!5581 = !DILocation(line: 90, column: 17, scope: !5565)
!5582 = !DILocation(line: 90, column: 4, scope: !5565)
!5583 = !DILocation(line: 90, column: 9, scope: !5565)
!5584 = !DILocation(line: 90, column: 15, scope: !5565)
!5585 = !DILocation(line: 91, column: 14, scope: !5566)
!5586 = !DILocation(line: 91, column: 19, scope: !5566)
!5587 = !DILocation(line: 91, column: 25, scope: !5566)
!5588 = !DILocation(line: 91, column: 30, scope: !5566)
!5589 = !DILocation(line: 91, column: 36, scope: !5566)
!5590 = !DILocation(line: 91, column: 3, scope: !5566)
!5591 = !DILocation(line: 92, column: 15, scope: !5566)
!5592 = !DILocation(line: 92, column: 3, scope: !5566)
!5593 = !DILocation(line: 92, column: 8, scope: !5566)
!5594 = !DILocation(line: 92, column: 13, scope: !5566)
!5595 = !DILocation(line: 93, column: 2, scope: !5566)
!5596 = !DILocation(line: 94, column: 1, scope: !5557)
!5597 = distinct !DISubprogram(name: "ttm_resource_init", scope: !3, file: !3, line: 177, type: !5598, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5600)
!5598 = !DISubroutineType(types: !5599)
!5599 = !{null, !214, !4418, !181}
!5600 = !{!5601, !5602, !5603, !5604}
!5601 = !DILocalVariable(name: "bo", arg: 1, scope: !5597, file: !3, line: 177, type: !214)
!5602 = !DILocalVariable(name: "place", arg: 2, scope: !5597, file: !3, line: 178, type: !4418)
!5603 = !DILocalVariable(name: "res", arg: 3, scope: !5597, file: !3, line: 179, type: !181)
!5604 = !DILocalVariable(name: "man", scope: !5597, file: !3, line: 181, type: !4481)
!5605 = !DILocation(line: 177, column: 50, scope: !5597)
!5606 = !DILocation(line: 178, column: 48, scope: !5597)
!5607 = !DILocation(line: 179, column: 45, scope: !5597)
!5608 = !DILocation(line: 181, column: 2, scope: !5597)
!5609 = !DILocation(line: 181, column: 31, scope: !5597)
!5610 = !DILocation(line: 183, column: 2, scope: !5597)
!5611 = !DILocation(line: 183, column: 7, scope: !5597)
!5612 = !DILocation(line: 183, column: 13, scope: !5597)
!5613 = !DILocation(line: 184, column: 14, scope: !5597)
!5614 = !DILocation(line: 184, column: 18, scope: !5597)
!5615 = !DILocation(line: 184, column: 23, scope: !5597)
!5616 = !DILocation(line: 184, column: 2, scope: !5597)
!5617 = !DILocation(line: 184, column: 7, scope: !5597)
!5618 = !DILocation(line: 184, column: 12, scope: !5597)
!5619 = !DILocation(line: 185, column: 18, scope: !5597)
!5620 = !DILocation(line: 185, column: 25, scope: !5597)
!5621 = !DILocation(line: 185, column: 2, scope: !5597)
!5622 = !DILocation(line: 185, column: 7, scope: !5597)
!5623 = !DILocation(line: 185, column: 16, scope: !5597)
!5624 = !DILocation(line: 186, column: 19, scope: !5597)
!5625 = !DILocation(line: 186, column: 26, scope: !5597)
!5626 = !DILocation(line: 186, column: 2, scope: !5597)
!5627 = !DILocation(line: 186, column: 7, scope: !5597)
!5628 = !DILocation(line: 186, column: 17, scope: !5597)
!5629 = !DILocation(line: 187, column: 2, scope: !5597)
!5630 = !DILocation(line: 187, column: 7, scope: !5597)
!5631 = !DILocation(line: 187, column: 11, scope: !5597)
!5632 = !DILocation(line: 187, column: 16, scope: !5597)
!5633 = !DILocation(line: 188, column: 2, scope: !5597)
!5634 = !DILocation(line: 188, column: 7, scope: !5597)
!5635 = !DILocation(line: 188, column: 11, scope: !5597)
!5636 = !DILocation(line: 188, column: 18, scope: !5597)
!5637 = !DILocation(line: 189, column: 2, scope: !5597)
!5638 = !DILocation(line: 189, column: 7, scope: !5597)
!5639 = !DILocation(line: 189, column: 11, scope: !5597)
!5640 = !DILocation(line: 189, column: 20, scope: !5597)
!5641 = !DILocation(line: 190, column: 2, scope: !5597)
!5642 = !DILocation(line: 190, column: 7, scope: !5597)
!5643 = !DILocation(line: 190, column: 11, scope: !5597)
!5644 = !DILocation(line: 190, column: 19, scope: !5597)
!5645 = !DILocation(line: 191, column: 12, scope: !5597)
!5646 = !DILocation(line: 191, column: 2, scope: !5597)
!5647 = !DILocation(line: 191, column: 7, scope: !5597)
!5648 = !DILocation(line: 191, column: 10, scope: !5597)
!5649 = !DILocation(line: 193, column: 25, scope: !5597)
!5650 = !DILocation(line: 193, column: 29, scope: !5597)
!5651 = !DILocation(line: 193, column: 35, scope: !5597)
!5652 = !DILocation(line: 193, column: 42, scope: !5597)
!5653 = !DILocation(line: 193, column: 8, scope: !5597)
!5654 = !DILocation(line: 193, column: 6, scope: !5597)
!5655 = !DILocation(line: 194, column: 13, scope: !5597)
!5656 = !DILocation(line: 194, column: 17, scope: !5597)
!5657 = !DILocation(line: 194, column: 23, scope: !5597)
!5658 = !DILocation(line: 194, column: 2, scope: !5597)
!5659 = !DILocation(line: 195, column: 6, scope: !5660)
!5660 = distinct !DILexicalBlock(scope: !5597, file: !3, line: 195, column: 6)
!5661 = !DILocation(line: 195, column: 10, scope: !5660)
!5662 = !DILocation(line: 195, column: 6, scope: !5597)
!5663 = !DILocation(line: 196, column: 18, scope: !5660)
!5664 = !DILocation(line: 196, column: 23, scope: !5660)
!5665 = !DILocation(line: 196, column: 29, scope: !5660)
!5666 = !DILocation(line: 196, column: 33, scope: !5660)
!5667 = !DILocation(line: 196, column: 39, scope: !5660)
!5668 = !DILocation(line: 196, column: 3, scope: !5660)
!5669 = !DILocation(line: 198, column: 18, scope: !5660)
!5670 = !DILocation(line: 198, column: 23, scope: !5660)
!5671 = !DILocation(line: 198, column: 29, scope: !5660)
!5672 = !DILocation(line: 198, column: 34, scope: !5660)
!5673 = !DILocation(line: 198, column: 38, scope: !5660)
!5674 = !DILocation(line: 198, column: 42, scope: !5660)
!5675 = !DILocation(line: 198, column: 3, scope: !5660)
!5676 = !DILocation(line: 199, column: 16, scope: !5597)
!5677 = !DILocation(line: 199, column: 21, scope: !5597)
!5678 = !DILocation(line: 199, column: 2, scope: !5597)
!5679 = !DILocation(line: 199, column: 7, scope: !5597)
!5680 = !DILocation(line: 199, column: 13, scope: !5597)
!5681 = !DILocation(line: 200, column: 15, scope: !5597)
!5682 = !DILocation(line: 200, column: 19, scope: !5597)
!5683 = !DILocation(line: 200, column: 25, scope: !5597)
!5684 = !DILocation(line: 200, column: 2, scope: !5597)
!5685 = !DILocation(line: 201, column: 1, scope: !5597)
!5686 = distinct !DISubprogram(name: "spin_lock", scope: !5687, file: !5687, line: 349, type: !5688, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5690)
!5687 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5688 = !DISubroutineType(types: !5689)
!5689 = !{null, !1502}
!5690 = !{!5691}
!5691 = !DILocalVariable(name: "lock", arg: 1, scope: !5686, file: !5687, line: 349, type: !1502)
!5692 = !DILocation(line: 349, column: 51, scope: !5686)
!5693 = !DILocation(line: 351, column: 2, scope: !5686)
!5694 = !DILocation(line: 352, column: 1, scope: !5686)
!5695 = distinct !DISubprogram(name: "list_add_tail", scope: !5273, file: !5273, line: 181, type: !5528, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5696)
!5696 = !{!5697, !5698}
!5697 = !DILocalVariable(name: "new", arg: 1, scope: !5695, file: !5273, line: 181, type: !325)
!5698 = !DILocalVariable(name: "head", arg: 2, scope: !5695, file: !5273, line: 181, type: !325)
!5699 = !DILocation(line: 181, column: 52, scope: !5695)
!5700 = !DILocation(line: 181, column: 75, scope: !5695)
!5701 = !DILocation(line: 183, column: 13, scope: !5695)
!5702 = !DILocation(line: 183, column: 18, scope: !5695)
!5703 = !DILocation(line: 183, column: 24, scope: !5695)
!5704 = !DILocation(line: 183, column: 30, scope: !5695)
!5705 = !DILocation(line: 183, column: 2, scope: !5695)
!5706 = !DILocation(line: 184, column: 1, scope: !5695)
!5707 = distinct !DISubprogram(name: "spin_unlock", scope: !5687, file: !5687, line: 389, type: !5688, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5708)
!5708 = !{!5709}
!5709 = !DILocalVariable(name: "lock", arg: 1, scope: !5707, file: !5687, line: 389, type: !1502)
!5710 = !DILocation(line: 389, column: 53, scope: !5707)
!5711 = !DILocation(line: 391, column: 2, scope: !5707)
!5712 = !DILocation(line: 392, column: 1, scope: !5707)
!5713 = distinct !DISubprogram(name: "ttm_resource_fini", scope: !3, file: !3, line: 214, type: !4485, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5714)
!5714 = !{!5715, !5716, !5717}
!5715 = !DILocalVariable(name: "man", arg: 1, scope: !5713, file: !3, line: 214, type: !4481)
!5716 = !DILocalVariable(name: "res", arg: 2, scope: !5713, file: !3, line: 215, type: !181)
!5717 = !DILocalVariable(name: "bdev", scope: !5713, file: !3, line: 217, type: !4377)
!5718 = !DILocation(line: 214, column: 53, scope: !5713)
!5719 = !DILocation(line: 215, column: 31, scope: !5713)
!5720 = !DILocation(line: 217, column: 2, scope: !5713)
!5721 = !DILocation(line: 217, column: 21, scope: !5713)
!5722 = !DILocation(line: 217, column: 28, scope: !5713)
!5723 = !DILocation(line: 217, column: 33, scope: !5713)
!5724 = !DILocation(line: 219, column: 13, scope: !5713)
!5725 = !DILocation(line: 219, column: 19, scope: !5713)
!5726 = !DILocation(line: 219, column: 2, scope: !5713)
!5727 = !DILocation(line: 220, column: 17, scope: !5713)
!5728 = !DILocation(line: 220, column: 22, scope: !5713)
!5729 = !DILocation(line: 220, column: 2, scope: !5713)
!5730 = !DILocation(line: 221, column: 16, scope: !5713)
!5731 = !DILocation(line: 221, column: 21, scope: !5713)
!5732 = !DILocation(line: 221, column: 2, scope: !5713)
!5733 = !DILocation(line: 221, column: 7, scope: !5713)
!5734 = !DILocation(line: 221, column: 13, scope: !5713)
!5735 = !DILocation(line: 222, column: 15, scope: !5713)
!5736 = !DILocation(line: 222, column: 21, scope: !5713)
!5737 = !DILocation(line: 222, column: 2, scope: !5713)
!5738 = !DILocation(line: 223, column: 1, scope: !5713)
!5739 = distinct !DISubprogram(name: "list_del_init", scope: !5273, file: !5273, line: 285, type: !5740, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5742)
!5740 = !DISubroutineType(types: !5741)
!5741 = !{null, !325}
!5742 = !{!5743}
!5743 = !DILocalVariable(name: "entry", arg: 1, scope: !5739, file: !5273, line: 285, type: !325)
!5744 = !DILocation(line: 285, column: 52, scope: !5739)
!5745 = !DILocation(line: 287, column: 19, scope: !5739)
!5746 = !DILocation(line: 287, column: 2, scope: !5739)
!5747 = !DILocation(line: 288, column: 17, scope: !5739)
!5748 = !DILocation(line: 288, column: 2, scope: !5739)
!5749 = !DILocation(line: 289, column: 1, scope: !5739)
!5750 = distinct !DISubprogram(name: "ttm_resource_alloc", scope: !3, file: !3, line: 226, type: !5751, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5753)
!5751 = !DISubroutineType(types: !5752)
!5752 = !{!120, !214, !4418, !4482}
!5753 = !{!5754, !5755, !5756, !5757, !5758}
!5754 = !DILocalVariable(name: "bo", arg: 1, scope: !5750, file: !3, line: 226, type: !214)
!5755 = !DILocalVariable(name: "place", arg: 2, scope: !5750, file: !3, line: 227, type: !4418)
!5756 = !DILocalVariable(name: "res_ptr", arg: 3, scope: !5750, file: !3, line: 228, type: !4482)
!5757 = !DILocalVariable(name: "man", scope: !5750, file: !3, line: 230, type: !4481)
!5758 = !DILocalVariable(name: "ret", scope: !5750, file: !3, line: 232, type: !120)
!5759 = !DILocation(line: 226, column: 50, scope: !5750)
!5760 = !DILocation(line: 227, column: 34, scope: !5750)
!5761 = !DILocation(line: 228, column: 32, scope: !5750)
!5762 = !DILocation(line: 230, column: 2, scope: !5750)
!5763 = !DILocation(line: 230, column: 31, scope: !5750)
!5764 = !DILocation(line: 231, column: 20, scope: !5750)
!5765 = !DILocation(line: 231, column: 24, scope: !5750)
!5766 = !DILocation(line: 231, column: 30, scope: !5750)
!5767 = !DILocation(line: 231, column: 37, scope: !5750)
!5768 = !DILocation(line: 231, column: 3, scope: !5750)
!5769 = !DILocation(line: 232, column: 2, scope: !5750)
!5770 = !DILocation(line: 232, column: 6, scope: !5750)
!5771 = !DILocation(line: 234, column: 8, scope: !5750)
!5772 = !DILocation(line: 234, column: 13, scope: !5750)
!5773 = !DILocation(line: 234, column: 19, scope: !5750)
!5774 = !DILocation(line: 234, column: 25, scope: !5750)
!5775 = !DILocation(line: 234, column: 30, scope: !5750)
!5776 = !DILocation(line: 234, column: 34, scope: !5750)
!5777 = !DILocation(line: 234, column: 41, scope: !5750)
!5778 = !DILocation(line: 234, column: 6, scope: !5750)
!5779 = !DILocation(line: 235, column: 6, scope: !5780)
!5780 = distinct !DILexicalBlock(scope: !5750, file: !3, line: 235, column: 6)
!5781 = !DILocation(line: 235, column: 6, scope: !5750)
!5782 = !DILocation(line: 236, column: 10, scope: !5780)
!5783 = !DILocation(line: 236, column: 3, scope: !5780)
!5784 = !DILocation(line: 238, column: 13, scope: !5750)
!5785 = !DILocation(line: 238, column: 17, scope: !5750)
!5786 = !DILocation(line: 238, column: 23, scope: !5750)
!5787 = !DILocation(line: 238, column: 2, scope: !5750)
!5788 = !DILocation(line: 239, column: 30, scope: !5750)
!5789 = !DILocation(line: 239, column: 29, scope: !5750)
!5790 = !DILocation(line: 239, column: 39, scope: !5750)
!5791 = !DILocation(line: 239, column: 2, scope: !5750)
!5792 = !DILocation(line: 240, column: 15, scope: !5750)
!5793 = !DILocation(line: 240, column: 19, scope: !5750)
!5794 = !DILocation(line: 240, column: 25, scope: !5750)
!5795 = !DILocation(line: 240, column: 2, scope: !5750)
!5796 = !DILocation(line: 241, column: 2, scope: !5750)
!5797 = !DILocation(line: 242, column: 1, scope: !5750)
!5798 = distinct !DISubprogram(name: "ttm_resource_free", scope: !3, file: !3, line: 244, type: !5799, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5801)
!5799 = !DISubroutineType(types: !5800)
!5800 = !{null, !214, !4482}
!5801 = !{!5802, !5803, !5804}
!5802 = !DILocalVariable(name: "bo", arg: 1, scope: !5798, file: !3, line: 244, type: !214)
!5803 = !DILocalVariable(name: "res", arg: 2, scope: !5798, file: !3, line: 244, type: !4482)
!5804 = !DILocalVariable(name: "man", scope: !5798, file: !3, line: 246, type: !4481)
!5805 = !DILocation(line: 244, column: 50, scope: !5798)
!5806 = !DILocation(line: 244, column: 76, scope: !5798)
!5807 = !DILocation(line: 246, column: 2, scope: !5798)
!5808 = !DILocation(line: 246, column: 31, scope: !5798)
!5809 = !DILocation(line: 248, column: 8, scope: !5810)
!5810 = distinct !DILexicalBlock(scope: !5798, file: !3, line: 248, column: 6)
!5811 = !DILocation(line: 248, column: 7, scope: !5810)
!5812 = !DILocation(line: 248, column: 6, scope: !5798)
!5813 = !DILocation(line: 249, column: 3, scope: !5810)
!5814 = !DILocation(line: 251, column: 13, scope: !5798)
!5815 = !DILocation(line: 251, column: 17, scope: !5798)
!5816 = !DILocation(line: 251, column: 23, scope: !5798)
!5817 = !DILocation(line: 251, column: 2, scope: !5798)
!5818 = !DILocation(line: 252, column: 30, scope: !5798)
!5819 = !DILocation(line: 252, column: 29, scope: !5798)
!5820 = !DILocation(line: 252, column: 35, scope: !5798)
!5821 = !DILocation(line: 252, column: 2, scope: !5798)
!5822 = !DILocation(line: 253, column: 15, scope: !5798)
!5823 = !DILocation(line: 253, column: 19, scope: !5798)
!5824 = !DILocation(line: 253, column: 25, scope: !5798)
!5825 = !DILocation(line: 253, column: 2, scope: !5798)
!5826 = !DILocation(line: 254, column: 25, scope: !5798)
!5827 = !DILocation(line: 254, column: 29, scope: !5798)
!5828 = !DILocation(line: 254, column: 37, scope: !5798)
!5829 = !DILocation(line: 254, column: 36, scope: !5798)
!5830 = !DILocation(line: 254, column: 43, scope: !5798)
!5831 = !DILocation(line: 254, column: 8, scope: !5798)
!5832 = !DILocation(line: 254, column: 6, scope: !5798)
!5833 = !DILocation(line: 255, column: 2, scope: !5798)
!5834 = !DILocation(line: 255, column: 7, scope: !5798)
!5835 = !DILocation(line: 255, column: 13, scope: !5798)
!5836 = !DILocation(line: 255, column: 18, scope: !5798)
!5837 = !DILocation(line: 255, column: 24, scope: !5798)
!5838 = !DILocation(line: 255, column: 23, scope: !5798)
!5839 = !DILocation(line: 256, column: 3, scope: !5798)
!5840 = !DILocation(line: 256, column: 7, scope: !5798)
!5841 = !DILocation(line: 257, column: 1, scope: !5798)
!5842 = distinct !DISubprogram(name: "ttm_resource_intersects", scope: !3, file: !3, line: 273, type: !5843, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5845)
!5843 = !DISubroutineType(types: !5844)
!5844 = !{!210, !4377, !181, !4418, !188}
!5845 = !{!5846, !5847, !5848, !5849, !5850}
!5846 = !DILocalVariable(name: "bdev", arg: 1, scope: !5842, file: !3, line: 273, type: !4377)
!5847 = !DILocalVariable(name: "res", arg: 2, scope: !5842, file: !3, line: 274, type: !181)
!5848 = !DILocalVariable(name: "place", arg: 3, scope: !5842, file: !3, line: 275, type: !4418)
!5849 = !DILocalVariable(name: "size", arg: 4, scope: !5842, file: !3, line: 276, type: !188)
!5850 = !DILocalVariable(name: "man", scope: !5842, file: !3, line: 278, type: !4481)
!5851 = !DILocation(line: 273, column: 49, scope: !5842)
!5852 = !DILocation(line: 274, column: 30, scope: !5842)
!5853 = !DILocation(line: 275, column: 33, scope: !5842)
!5854 = !DILocation(line: 276, column: 16, scope: !5842)
!5855 = !DILocation(line: 278, column: 2, scope: !5842)
!5856 = !DILocation(line: 278, column: 31, scope: !5842)
!5857 = !DILocation(line: 280, column: 7, scope: !5858)
!5858 = distinct !DILexicalBlock(scope: !5842, file: !3, line: 280, column: 6)
!5859 = !DILocation(line: 280, column: 6, scope: !5842)
!5860 = !DILocation(line: 281, column: 3, scope: !5858)
!5861 = !DILocation(line: 283, column: 25, scope: !5842)
!5862 = !DILocation(line: 283, column: 31, scope: !5842)
!5863 = !DILocation(line: 283, column: 36, scope: !5842)
!5864 = !DILocation(line: 283, column: 8, scope: !5842)
!5865 = !DILocation(line: 283, column: 6, scope: !5842)
!5866 = !DILocation(line: 284, column: 7, scope: !5867)
!5867 = distinct !DILexicalBlock(scope: !5842, file: !3, line: 284, column: 6)
!5868 = !DILocation(line: 284, column: 13, scope: !5867)
!5869 = !DILocation(line: 284, column: 17, scope: !5867)
!5870 = !DILocation(line: 284, column: 22, scope: !5867)
!5871 = !DILocation(line: 284, column: 28, scope: !5867)
!5872 = !DILocation(line: 284, column: 6, scope: !5842)
!5873 = !DILocation(line: 285, column: 3, scope: !5867)
!5874 = !DILocation(line: 287, column: 9, scope: !5842)
!5875 = !DILocation(line: 287, column: 14, scope: !5842)
!5876 = !DILocation(line: 287, column: 20, scope: !5842)
!5877 = !DILocation(line: 287, column: 31, scope: !5842)
!5878 = !DILocation(line: 287, column: 36, scope: !5842)
!5879 = !DILocation(line: 287, column: 41, scope: !5842)
!5880 = !DILocation(line: 287, column: 48, scope: !5842)
!5881 = !DILocation(line: 287, column: 2, scope: !5842)
!5882 = !DILocation(line: 288, column: 1, scope: !5842)
!5883 = distinct !DISubprogram(name: "ttm_resource_compatible", scope: !3, file: !3, line: 302, type: !5843, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5884)
!5884 = !{!5885, !5886, !5887, !5888, !5889}
!5885 = !DILocalVariable(name: "bdev", arg: 1, scope: !5883, file: !3, line: 302, type: !4377)
!5886 = !DILocalVariable(name: "res", arg: 2, scope: !5883, file: !3, line: 303, type: !181)
!5887 = !DILocalVariable(name: "place", arg: 3, scope: !5883, file: !3, line: 304, type: !4418)
!5888 = !DILocalVariable(name: "size", arg: 4, scope: !5883, file: !3, line: 305, type: !188)
!5889 = !DILocalVariable(name: "man", scope: !5883, file: !3, line: 307, type: !4481)
!5890 = !DILocation(line: 302, column: 49, scope: !5883)
!5891 = !DILocation(line: 303, column: 30, scope: !5883)
!5892 = !DILocation(line: 304, column: 33, scope: !5883)
!5893 = !DILocation(line: 305, column: 16, scope: !5883)
!5894 = !DILocation(line: 307, column: 2, scope: !5883)
!5895 = !DILocation(line: 307, column: 31, scope: !5883)
!5896 = !DILocation(line: 309, column: 7, scope: !5897)
!5897 = distinct !DILexicalBlock(scope: !5883, file: !3, line: 309, column: 6)
!5898 = !DILocation(line: 309, column: 11, scope: !5897)
!5899 = !DILocation(line: 309, column: 15, scope: !5897)
!5900 = !DILocation(line: 309, column: 6, scope: !5883)
!5901 = !DILocation(line: 310, column: 3, scope: !5897)
!5902 = !DILocation(line: 312, column: 25, scope: !5883)
!5903 = !DILocation(line: 312, column: 31, scope: !5883)
!5904 = !DILocation(line: 312, column: 36, scope: !5883)
!5905 = !DILocation(line: 312, column: 8, scope: !5883)
!5906 = !DILocation(line: 312, column: 6, scope: !5883)
!5907 = !DILocation(line: 313, column: 7, scope: !5908)
!5908 = distinct !DILexicalBlock(scope: !5883, file: !3, line: 313, column: 6)
!5909 = !DILocation(line: 313, column: 12, scope: !5908)
!5910 = !DILocation(line: 313, column: 18, scope: !5908)
!5911 = !DILocation(line: 313, column: 6, scope: !5883)
!5912 = !DILocation(line: 314, column: 3, scope: !5908)
!5913 = !DILocation(line: 316, column: 9, scope: !5883)
!5914 = !DILocation(line: 316, column: 14, scope: !5883)
!5915 = !DILocation(line: 316, column: 20, scope: !5883)
!5916 = !DILocation(line: 316, column: 31, scope: !5883)
!5917 = !DILocation(line: 316, column: 36, scope: !5883)
!5918 = !DILocation(line: 316, column: 41, scope: !5883)
!5919 = !DILocation(line: 316, column: 48, scope: !5883)
!5920 = !DILocation(line: 316, column: 2, scope: !5883)
!5921 = !DILocation(line: 317, column: 1, scope: !5883)
!5922 = distinct !DISubprogram(name: "ttm_resource_compat", scope: !3, file: !3, line: 352, type: !5923, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5925)
!5923 = !DISubroutineType(types: !5924)
!5924 = !{!210, !181, !4431}
!5925 = !{!5926, !5927}
!5926 = !DILocalVariable(name: "res", arg: 1, scope: !5922, file: !3, line: 352, type: !181)
!5927 = !DILocalVariable(name: "placement", arg: 2, scope: !5922, file: !3, line: 353, type: !4431)
!5928 = !DILocation(line: 352, column: 47, scope: !5922)
!5929 = !DILocation(line: 353, column: 27, scope: !5922)
!5930 = !DILocation(line: 355, column: 33, scope: !5931)
!5931 = distinct !DILexicalBlock(scope: !5922, file: !3, line: 355, column: 6)
!5932 = !DILocation(line: 355, column: 38, scope: !5931)
!5933 = !DILocation(line: 355, column: 49, scope: !5931)
!5934 = !DILocation(line: 356, column: 12, scope: !5931)
!5935 = !DILocation(line: 356, column: 23, scope: !5931)
!5936 = !DILocation(line: 355, column: 6, scope: !5931)
!5937 = !DILocation(line: 355, column: 6, scope: !5922)
!5938 = !DILocation(line: 357, column: 3, scope: !5931)
!5939 = !DILocation(line: 359, column: 7, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5922, file: !3, line: 359, column: 6)
!5941 = !DILocation(line: 359, column: 18, scope: !5940)
!5942 = !DILocation(line: 359, column: 36, scope: !5940)
!5943 = !DILocation(line: 359, column: 47, scope: !5940)
!5944 = !DILocation(line: 359, column: 33, scope: !5940)
!5945 = !DILocation(line: 359, column: 57, scope: !5940)
!5946 = !DILocation(line: 360, column: 7, scope: !5940)
!5947 = !DILocation(line: 360, column: 18, scope: !5940)
!5948 = !DILocation(line: 360, column: 39, scope: !5940)
!5949 = !DILocation(line: 360, column: 50, scope: !5940)
!5950 = !DILocation(line: 360, column: 37, scope: !5940)
!5951 = !DILocation(line: 360, column: 65, scope: !5940)
!5952 = !DILocation(line: 361, column: 33, scope: !5940)
!5953 = !DILocation(line: 361, column: 38, scope: !5940)
!5954 = !DILocation(line: 361, column: 49, scope: !5940)
!5955 = !DILocation(line: 362, column: 12, scope: !5940)
!5956 = !DILocation(line: 362, column: 23, scope: !5940)
!5957 = !DILocation(line: 361, column: 6, scope: !5940)
!5958 = !DILocation(line: 359, column: 6, scope: !5922)
!5959 = !DILocation(line: 363, column: 3, scope: !5940)
!5960 = !DILocation(line: 365, column: 2, scope: !5922)
!5961 = !DILocation(line: 366, column: 1, scope: !5922)
!5962 = distinct !DISubprogram(name: "ttm_resource_places_compat", scope: !3, file: !3, line: 319, type: !5963, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5965)
!5963 = !DISubroutineType(types: !5964)
!5964 = !{!210, !181, !4418, !7}
!5965 = !{!5966, !5967, !5968, !5969, !5970, !5971, !5972}
!5966 = !DILocalVariable(name: "res", arg: 1, scope: !5962, file: !3, line: 319, type: !181)
!5967 = !DILocalVariable(name: "places", arg: 2, scope: !5962, file: !3, line: 320, type: !4418)
!5968 = !DILocalVariable(name: "num_placement", arg: 3, scope: !5962, file: !3, line: 321, type: !7)
!5969 = !DILocalVariable(name: "bo", scope: !5962, file: !3, line: 323, type: !214)
!5970 = !DILocalVariable(name: "bdev", scope: !5962, file: !3, line: 324, type: !4377)
!5971 = !DILocalVariable(name: "i", scope: !5962, file: !3, line: 325, type: !7)
!5972 = !DILocalVariable(name: "heap", scope: !5973, file: !3, line: 331, type: !4418)
!5973 = distinct !DILexicalBlock(scope: !5974, file: !3, line: 330, column: 38)
!5974 = distinct !DILexicalBlock(scope: !5975, file: !3, line: 330, column: 2)
!5975 = distinct !DILexicalBlock(scope: !5962, file: !3, line: 330, column: 2)
!5976 = !DILocation(line: 319, column: 61, scope: !5962)
!5977 = !DILocation(line: 320, column: 36, scope: !5962)
!5978 = !DILocation(line: 321, column: 21, scope: !5962)
!5979 = !DILocation(line: 323, column: 2, scope: !5962)
!5980 = !DILocation(line: 323, column: 28, scope: !5962)
!5981 = !DILocation(line: 323, column: 33, scope: !5962)
!5982 = !DILocation(line: 323, column: 38, scope: !5962)
!5983 = !DILocation(line: 324, column: 2, scope: !5962)
!5984 = !DILocation(line: 324, column: 21, scope: !5962)
!5985 = !DILocation(line: 324, column: 28, scope: !5962)
!5986 = !DILocation(line: 324, column: 32, scope: !5962)
!5987 = !DILocation(line: 325, column: 2, scope: !5962)
!5988 = !DILocation(line: 325, column: 11, scope: !5962)
!5989 = !DILocation(line: 327, column: 6, scope: !5990)
!5990 = distinct !DILexicalBlock(scope: !5962, file: !3, line: 327, column: 6)
!5991 = !DILocation(line: 327, column: 11, scope: !5990)
!5992 = !DILocation(line: 327, column: 21, scope: !5990)
!5993 = !DILocation(line: 327, column: 6, scope: !5962)
!5994 = !DILocation(line: 328, column: 3, scope: !5990)
!5995 = !DILocation(line: 330, column: 9, scope: !5975)
!5996 = !DILocation(line: 330, column: 7, scope: !5975)
!5997 = !DILocation(line: 330, column: 14, scope: !5974)
!5998 = !DILocation(line: 330, column: 18, scope: !5974)
!5999 = !DILocation(line: 330, column: 16, scope: !5974)
!6000 = !DILocation(line: 330, column: 2, scope: !5975)
!6001 = !DILocation(line: 331, column: 3, scope: !5973)
!6002 = !DILocation(line: 331, column: 27, scope: !5973)
!6003 = !DILocation(line: 331, column: 35, scope: !5973)
!6004 = !DILocation(line: 331, column: 42, scope: !5973)
!6005 = !DILocation(line: 333, column: 32, scope: !6006)
!6006 = distinct !DILexicalBlock(scope: !5973, file: !3, line: 333, column: 7)
!6007 = !DILocation(line: 333, column: 38, scope: !6006)
!6008 = !DILocation(line: 333, column: 43, scope: !6006)
!6009 = !DILocation(line: 333, column: 49, scope: !6006)
!6010 = !DILocation(line: 333, column: 53, scope: !6006)
!6011 = !DILocation(line: 333, column: 58, scope: !6006)
!6012 = !DILocation(line: 333, column: 8, scope: !6006)
!6013 = !DILocation(line: 333, column: 7, scope: !5973)
!6014 = !DILocation(line: 334, column: 4, scope: !6006)
!6015 = !DILocation(line: 336, column: 8, scope: !6016)
!6016 = distinct !DILexicalBlock(scope: !5973, file: !3, line: 336, column: 7)
!6017 = !DILocation(line: 336, column: 13, scope: !6016)
!6018 = !DILocation(line: 336, column: 25, scope: !6016)
!6019 = !DILocation(line: 336, column: 31, scope: !6016)
!6020 = !DILocation(line: 336, column: 22, scope: !6016)
!6021 = !DILocation(line: 336, column: 41, scope: !6016)
!6022 = !DILocation(line: 337, column: 10, scope: !6016)
!6023 = !DILocation(line: 337, column: 16, scope: !6016)
!6024 = !DILocation(line: 337, column: 22, scope: !6016)
!6025 = !DILocation(line: 337, column: 48, scope: !6016)
!6026 = !DILocation(line: 338, column: 9, scope: !6016)
!6027 = !DILocation(line: 338, column: 14, scope: !6016)
!6028 = !DILocation(line: 338, column: 24, scope: !6016)
!6029 = !DILocation(line: 336, column: 7, scope: !5973)
!6030 = !DILocation(line: 339, column: 4, scope: !6016)
!6031 = !DILocation(line: 340, column: 2, scope: !5974)
!6032 = !DILocation(line: 340, column: 2, scope: !5973)
!6033 = !DILocation(line: 330, column: 34, scope: !5974)
!6034 = !DILocation(line: 330, column: 2, scope: !5974)
!6035 = distinct !{!6035, !6000, !6036, !5246, !5247}
!6036 = !DILocation(line: 340, column: 2, scope: !5975)
!6037 = !DILocation(line: 341, column: 2, scope: !5962)
!6038 = !DILocation(line: 342, column: 1, scope: !5962)
!6039 = distinct !DISubprogram(name: "ttm_resource_set_bo", scope: !3, file: !3, line: 368, type: !5315, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6040)
!6040 = !{!6041, !6042}
!6041 = !DILocalVariable(name: "res", arg: 1, scope: !6039, file: !3, line: 368, type: !181)
!6042 = !DILocalVariable(name: "bo", arg: 2, scope: !6039, file: !3, line: 369, type: !214)
!6043 = !DILocation(line: 368, column: 47, scope: !6039)
!6044 = !DILocation(line: 369, column: 31, scope: !6039)
!6045 = !DILocation(line: 371, column: 13, scope: !6039)
!6046 = !DILocation(line: 371, column: 17, scope: !6039)
!6047 = !DILocation(line: 371, column: 23, scope: !6039)
!6048 = !DILocation(line: 371, column: 2, scope: !6039)
!6049 = !DILocation(line: 372, column: 12, scope: !6039)
!6050 = !DILocation(line: 372, column: 2, scope: !6039)
!6051 = !DILocation(line: 372, column: 7, scope: !6039)
!6052 = !DILocation(line: 372, column: 10, scope: !6039)
!6053 = !DILocation(line: 373, column: 15, scope: !6039)
!6054 = !DILocation(line: 373, column: 19, scope: !6039)
!6055 = !DILocation(line: 373, column: 25, scope: !6039)
!6056 = !DILocation(line: 373, column: 2, scope: !6039)
!6057 = !DILocation(line: 374, column: 1, scope: !6039)
!6058 = distinct !DISubprogram(name: "ttm_resource_manager_init", scope: !3, file: !3, line: 385, type: !6059, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6061)
!6059 = !DISubroutineType(types: !6060)
!6060 = !{null, !4481, !4377, !4408}
!6061 = !{!6062, !6063, !6064, !6065}
!6062 = !DILocalVariable(name: "man", arg: 1, scope: !6058, file: !3, line: 385, type: !4481)
!6063 = !DILocalVariable(name: "bdev", arg: 2, scope: !6058, file: !3, line: 386, type: !4377)
!6064 = !DILocalVariable(name: "size", arg: 3, scope: !6058, file: !3, line: 387, type: !4408)
!6065 = !DILocalVariable(name: "i", scope: !6058, file: !3, line: 389, type: !7)
!6066 = !DILocation(line: 385, column: 61, scope: !6058)
!6067 = !DILocation(line: 386, column: 30, scope: !6058)
!6068 = !DILocation(line: 387, column: 20, scope: !6058)
!6069 = !DILocation(line: 389, column: 2, scope: !6058)
!6070 = !DILocation(line: 389, column: 11, scope: !6058)
!6071 = !DILocation(line: 391, column: 2, scope: !6058)
!6072 = !DILocation(line: 391, column: 2, scope: !6073)
!6073 = distinct !DILexicalBlock(scope: !6058, file: !3, line: 391, column: 2)
!6074 = !DILocation(line: 392, column: 14, scope: !6058)
!6075 = !DILocation(line: 392, column: 2, scope: !6058)
!6076 = !DILocation(line: 392, column: 7, scope: !6058)
!6077 = !DILocation(line: 392, column: 12, scope: !6058)
!6078 = !DILocation(line: 393, column: 14, scope: !6058)
!6079 = !DILocation(line: 393, column: 2, scope: !6058)
!6080 = !DILocation(line: 393, column: 7, scope: !6058)
!6081 = !DILocation(line: 393, column: 12, scope: !6058)
!6082 = !DILocation(line: 394, column: 2, scope: !6058)
!6083 = !DILocation(line: 394, column: 7, scope: !6058)
!6084 = !DILocation(line: 394, column: 13, scope: !6058)
!6085 = !DILocation(line: 396, column: 9, scope: !6086)
!6086 = distinct !DILexicalBlock(scope: !6058, file: !3, line: 396, column: 2)
!6087 = !DILocation(line: 396, column: 7, scope: !6086)
!6088 = !DILocation(line: 396, column: 14, scope: !6089)
!6089 = distinct !DILexicalBlock(scope: !6086, file: !3, line: 396, column: 2)
!6090 = !DILocation(line: 396, column: 16, scope: !6089)
!6091 = !DILocation(line: 396, column: 2, scope: !6086)
!6092 = !DILocation(line: 397, column: 19, scope: !6089)
!6093 = !DILocation(line: 397, column: 24, scope: !6089)
!6094 = !DILocation(line: 397, column: 28, scope: !6089)
!6095 = !DILocation(line: 397, column: 3, scope: !6089)
!6096 = !DILocation(line: 396, column: 39, scope: !6089)
!6097 = !DILocation(line: 396, column: 2, scope: !6089)
!6098 = distinct !{!6098, !6091, !6099, !5246, !5247}
!6099 = !DILocation(line: 397, column: 30, scope: !6086)
!6100 = !DILocation(line: 398, column: 2, scope: !6058)
!6101 = !DILocation(line: 398, column: 7, scope: !6058)
!6102 = !DILocation(line: 398, column: 12, scope: !6058)
!6103 = !DILocation(line: 399, column: 1, scope: !6058)
!6104 = distinct !DISubprogram(name: "spinlock_check", scope: !5687, file: !5687, line: 324, type: !6105, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6108)
!6105 = !DISubroutineType(types: !6106)
!6106 = !{!6107, !1502}
!6107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!6108 = !{!6109}
!6109 = !DILocalVariable(name: "lock", arg: 1, scope: !6104, file: !5687, line: 324, type: !1502)
!6110 = !DILocation(line: 324, column: 67, scope: !6104)
!6111 = !DILocation(line: 326, column: 10, scope: !6104)
!6112 = !DILocation(line: 326, column: 16, scope: !6104)
!6113 = !DILocation(line: 326, column: 2, scope: !6104)
!6114 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5273, file: !5273, line: 35, type: !5740, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6115)
!6115 = !{!6116}
!6116 = !DILocalVariable(name: "list", arg: 1, scope: !6114, file: !5273, line: 35, type: !325)
!6117 = !DILocation(line: 35, column: 53, scope: !6114)
!6118 = !DILocation(line: 37, column: 2, scope: !6114)
!6119 = !DILocation(line: 37, column: 2, scope: !6120)
!6120 = distinct !DILexicalBlock(scope: !6114, file: !5273, line: 37, column: 2)
!6121 = !DILocation(line: 37, column: 2, scope: !6122)
!6122 = distinct !DILexicalBlock(scope: !6120, file: !5273, line: 37, column: 2)
!6123 = !DILocation(line: 37, column: 2, scope: !6124)
!6124 = distinct !DILexicalBlock(scope: !6120, file: !5273, line: 37, column: 2)
!6125 = !DILocation(line: 38, column: 2, scope: !6114)
!6126 = !DILocation(line: 38, column: 2, scope: !6127)
!6127 = distinct !DILexicalBlock(scope: !6114, file: !5273, line: 38, column: 2)
!6128 = !DILocation(line: 38, column: 2, scope: !6129)
!6129 = distinct !DILexicalBlock(scope: !6127, file: !5273, line: 38, column: 2)
!6130 = !DILocation(line: 38, column: 2, scope: !6131)
!6131 = distinct !DILexicalBlock(scope: !6127, file: !5273, line: 38, column: 2)
!6132 = !DILocation(line: 39, column: 1, scope: !6114)
!6133 = distinct !DISubprogram(name: "ttm_resource_manager_evict_all", scope: !3, file: !3, line: 411, type: !6134, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6136)
!6134 = !DISubroutineType(types: !6135)
!6135 = !{!120, !4377, !4481}
!6136 = !{!6137, !6138, !6139, !6140, !6141, !6142}
!6137 = !DILocalVariable(name: "bdev", arg: 1, scope: !6133, file: !3, line: 411, type: !4377)
!6138 = !DILocalVariable(name: "man", arg: 2, scope: !6133, file: !3, line: 412, type: !4481)
!6139 = !DILocalVariable(name: "ctx", scope: !6133, file: !3, line: 414, type: !4399)
!6140 = !DILocalVariable(name: "fence", scope: !6133, file: !3, line: 419, type: !4498)
!6141 = !DILocalVariable(name: "ret", scope: !6133, file: !3, line: 420, type: !120)
!6142 = !DILocalVariable(name: "i", scope: !6133, file: !3, line: 421, type: !7)
!6143 = !DILocation(line: 411, column: 55, scope: !6133)
!6144 = !DILocation(line: 412, column: 37, scope: !6133)
!6145 = !DILocation(line: 414, column: 2, scope: !6133)
!6146 = !DILocation(line: 414, column: 27, scope: !6133)
!6147 = !DILocation(line: 419, column: 2, scope: !6133)
!6148 = !DILocation(line: 419, column: 20, scope: !6133)
!6149 = !DILocation(line: 420, column: 2, scope: !6133)
!6150 = !DILocation(line: 420, column: 6, scope: !6133)
!6151 = !DILocation(line: 421, column: 2, scope: !6133)
!6152 = !DILocation(line: 421, column: 11, scope: !6133)
!6153 = !DILocation(line: 427, column: 13, scope: !6133)
!6154 = !DILocation(line: 427, column: 19, scope: !6133)
!6155 = !DILocation(line: 427, column: 2, scope: !6133)
!6156 = !DILocation(line: 428, column: 9, scope: !6157)
!6157 = distinct !DILexicalBlock(scope: !6133, file: !3, line: 428, column: 2)
!6158 = !DILocation(line: 428, column: 7, scope: !6157)
!6159 = !DILocation(line: 428, column: 14, scope: !6160)
!6160 = distinct !DILexicalBlock(scope: !6157, file: !3, line: 428, column: 2)
!6161 = !DILocation(line: 428, column: 16, scope: !6160)
!6162 = !DILocation(line: 428, column: 2, scope: !6157)
!6163 = !DILocation(line: 429, column: 3, scope: !6164)
!6164 = distinct !DILexicalBlock(scope: !6160, file: !3, line: 428, column: 44)
!6165 = !DILocation(line: 429, column: 23, scope: !6164)
!6166 = !DILocation(line: 429, column: 28, scope: !6164)
!6167 = !DILocation(line: 429, column: 32, scope: !6164)
!6168 = !DILocation(line: 429, column: 11, scope: !6164)
!6169 = !DILocation(line: 429, column: 10, scope: !6164)
!6170 = !DILocation(line: 430, column: 17, scope: !6171)
!6171 = distinct !DILexicalBlock(scope: !6164, file: !3, line: 429, column: 37)
!6172 = !DILocation(line: 430, column: 23, scope: !6171)
!6173 = !DILocation(line: 430, column: 4, scope: !6171)
!6174 = !DILocation(line: 431, column: 30, scope: !6171)
!6175 = !DILocation(line: 431, column: 36, scope: !6171)
!6176 = !DILocation(line: 431, column: 10, scope: !6171)
!6177 = !DILocation(line: 431, column: 8, scope: !6171)
!6178 = !DILocation(line: 433, column: 8, scope: !6179)
!6179 = distinct !DILexicalBlock(scope: !6171, file: !3, line: 433, column: 8)
!6180 = !DILocation(line: 433, column: 8, scope: !6171)
!6181 = !DILocation(line: 434, column: 12, scope: !6179)
!6182 = !DILocation(line: 434, column: 5, scope: !6179)
!6183 = !DILocation(line: 435, column: 15, scope: !6171)
!6184 = !DILocation(line: 435, column: 21, scope: !6171)
!6185 = !DILocation(line: 435, column: 4, scope: !6171)
!6186 = distinct !{!6186, !6163, !6187, !5246, !5247}
!6187 = !DILocation(line: 436, column: 3, scope: !6164)
!6188 = !DILocation(line: 437, column: 2, scope: !6164)
!6189 = !DILocation(line: 428, column: 39, scope: !6160)
!6190 = !DILocation(line: 428, column: 2, scope: !6160)
!6191 = distinct !{!6191, !6162, !6192, !5246, !5247}
!6192 = !DILocation(line: 437, column: 2, scope: !6157)
!6193 = !DILocation(line: 438, column: 15, scope: !6133)
!6194 = !DILocation(line: 438, column: 21, scope: !6133)
!6195 = !DILocation(line: 438, column: 2, scope: !6133)
!6196 = !DILocation(line: 440, column: 13, scope: !6133)
!6197 = !DILocation(line: 440, column: 18, scope: !6133)
!6198 = !DILocation(line: 440, column: 2, scope: !6133)
!6199 = !DILocation(line: 441, column: 24, scope: !6133)
!6200 = !DILocation(line: 441, column: 29, scope: !6133)
!6201 = !DILocation(line: 441, column: 10, scope: !6133)
!6202 = !DILocation(line: 441, column: 8, scope: !6133)
!6203 = !DILocation(line: 442, column: 15, scope: !6133)
!6204 = !DILocation(line: 442, column: 20, scope: !6133)
!6205 = !DILocation(line: 442, column: 2, scope: !6133)
!6206 = !DILocation(line: 444, column: 6, scope: !6207)
!6207 = distinct !DILexicalBlock(scope: !6133, file: !3, line: 444, column: 6)
!6208 = !DILocation(line: 444, column: 6, scope: !6133)
!6209 = !DILocation(line: 445, column: 24, scope: !6210)
!6210 = distinct !DILexicalBlock(scope: !6207, file: !3, line: 444, column: 13)
!6211 = !DILocation(line: 445, column: 9, scope: !6210)
!6212 = !DILocation(line: 445, column: 7, scope: !6210)
!6213 = !DILocation(line: 446, column: 17, scope: !6210)
!6214 = !DILocation(line: 446, column: 3, scope: !6210)
!6215 = !DILocation(line: 447, column: 7, scope: !6216)
!6216 = distinct !DILexicalBlock(scope: !6210, file: !3, line: 447, column: 7)
!6217 = !DILocation(line: 447, column: 7, scope: !6210)
!6218 = !DILocation(line: 448, column: 11, scope: !6216)
!6219 = !DILocation(line: 448, column: 4, scope: !6216)
!6220 = !DILocation(line: 449, column: 2, scope: !6210)
!6221 = !DILocation(line: 451, column: 2, scope: !6133)
!6222 = !DILocation(line: 452, column: 1, scope: !6133)
!6223 = distinct !DISubprogram(name: "list_empty", scope: !5273, file: !5273, line: 371, type: !6224, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6228)
!6224 = !DISubroutineType(types: !6225)
!6225 = !{!120, !6226}
!6226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6227, size: 64)
!6227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!6228 = !{!6229}
!6229 = !DILocalVariable(name: "head", arg: 1, scope: !6223, file: !5273, line: 371, type: !6226)
!6230 = !DILocation(line: 371, column: 54, scope: !6223)
!6231 = !DILocation(line: 373, column: 9, scope: !6232)
!6232 = distinct !DILexicalBlock(scope: !6223, file: !5273, line: 373, column: 9)
!6233 = !DILocation(line: 373, column: 9, scope: !6234)
!6234 = distinct !DILexicalBlock(scope: !6232, file: !5273, line: 373, column: 9)
!6235 = !DILocation(line: 373, column: 34, scope: !6223)
!6236 = !DILocation(line: 373, column: 31, scope: !6223)
!6237 = !DILocation(line: 373, column: 2, scope: !6223)
!6238 = !DISubprogram(name: "ttm_mem_evict_first", scope: !153, file: !153, line: 380, type: !6239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6239 = !DISubroutineType(types: !6240)
!6240 = !{!120, !4377, !4481, !4418, !4398, !4236}
!6241 = distinct !DISubprogram(name: "dma_fence_get", scope: !4500, file: !4500, line: 305, type: !6242, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6244)
!6242 = !DISubroutineType(types: !6243)
!6243 = !{!4498, !4498}
!6244 = !{!6245}
!6245 = !DILocalVariable(name: "fence", arg: 1, scope: !6241, file: !4500, line: 305, type: !4498)
!6246 = !DILocation(line: 305, column: 65, scope: !6241)
!6247 = !DILocation(line: 307, column: 6, scope: !6248)
!6248 = distinct !DILexicalBlock(scope: !6241, file: !4500, line: 307, column: 6)
!6249 = !DILocation(line: 307, column: 6, scope: !6241)
!6250 = !DILocation(line: 308, column: 13, scope: !6248)
!6251 = !DILocation(line: 308, column: 20, scope: !6248)
!6252 = !DILocation(line: 308, column: 3, scope: !6248)
!6253 = !DILocation(line: 309, column: 9, scope: !6241)
!6254 = !DILocation(line: 309, column: 2, scope: !6241)
!6255 = distinct !DISubprogram(name: "dma_fence_wait", scope: !4500, file: !4500, line: 627, type: !6256, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6258)
!6256 = !DISubroutineType(types: !6257)
!6257 = !{!800, !4498, !210}
!6258 = !{!6259, !6260, !6261}
!6259 = !DILocalVariable(name: "fence", arg: 1, scope: !6255, file: !4500, line: 627, type: !4498)
!6260 = !DILocalVariable(name: "intr", arg: 2, scope: !6255, file: !4500, line: 627, type: !210)
!6261 = !DILocalVariable(name: "ret", scope: !6255, file: !4500, line: 629, type: !800)
!6262 = !DILocation(line: 627, column: 60, scope: !6255)
!6263 = !DILocation(line: 627, column: 72, scope: !6255)
!6264 = !DILocation(line: 629, column: 2, scope: !6255)
!6265 = !DILocation(line: 629, column: 14, scope: !6255)
!6266 = !DILocation(line: 635, column: 31, scope: !6255)
!6267 = !DILocation(line: 635, column: 38, scope: !6255)
!6268 = !{i8 0, i8 2}
!6269 = !DILocation(line: 635, column: 8, scope: !6255)
!6270 = !DILocation(line: 635, column: 6, scope: !6255)
!6271 = !DILocation(line: 637, column: 9, scope: !6255)
!6272 = !DILocation(line: 637, column: 13, scope: !6255)
!6273 = !DILocation(line: 637, column: 19, scope: !6255)
!6274 = !DILocation(line: 638, column: 1, scope: !6255)
!6275 = !DILocation(line: 637, column: 2, scope: !6255)
!6276 = distinct !DISubprogram(name: "dma_fence_put", scope: !4500, file: !4500, line: 293, type: !4525, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6277)
!6277 = !{!6278}
!6278 = !DILocalVariable(name: "fence", arg: 1, scope: !6276, file: !4500, line: 293, type: !4498)
!6279 = !DILocation(line: 293, column: 52, scope: !6276)
!6280 = !DILocation(line: 295, column: 6, scope: !6281)
!6281 = distinct !DILexicalBlock(scope: !6276, file: !4500, line: 295, column: 6)
!6282 = !DILocation(line: 295, column: 6, scope: !6276)
!6283 = !DILocation(line: 296, column: 13, scope: !6281)
!6284 = !DILocation(line: 296, column: 20, scope: !6281)
!6285 = !DILocation(line: 296, column: 3, scope: !6281)
!6286 = !DILocation(line: 297, column: 1, scope: !6276)
!6287 = distinct !DISubprogram(name: "ttm_resource_manager_usage", scope: !3, file: !3, line: 462, type: !6288, scopeLine: 463, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6290)
!6288 = !DISubroutineType(types: !6289)
!6289 = !{!4408, !4481}
!6290 = !{!6291, !6292}
!6291 = !DILocalVariable(name: "man", arg: 1, scope: !6287, file: !3, line: 462, type: !4481)
!6292 = !DILocalVariable(name: "usage", scope: !6287, file: !3, line: 464, type: !4408)
!6293 = !DILocation(line: 462, column: 66, scope: !6287)
!6294 = !DILocation(line: 464, column: 2, scope: !6287)
!6295 = !DILocation(line: 464, column: 11, scope: !6287)
!6296 = !DILocation(line: 466, column: 13, scope: !6287)
!6297 = !DILocation(line: 466, column: 18, scope: !6287)
!6298 = !DILocation(line: 466, column: 24, scope: !6287)
!6299 = !DILocation(line: 466, column: 2, scope: !6287)
!6300 = !DILocation(line: 467, column: 10, scope: !6287)
!6301 = !DILocation(line: 467, column: 15, scope: !6287)
!6302 = !DILocation(line: 467, column: 8, scope: !6287)
!6303 = !DILocation(line: 468, column: 15, scope: !6287)
!6304 = !DILocation(line: 468, column: 20, scope: !6287)
!6305 = !DILocation(line: 468, column: 26, scope: !6287)
!6306 = !DILocation(line: 468, column: 2, scope: !6287)
!6307 = !DILocation(line: 469, column: 9, scope: !6287)
!6308 = !DILocation(line: 470, column: 1, scope: !6287)
!6309 = !DILocation(line: 469, column: 2, scope: !6287)
!6310 = distinct !DISubprogram(name: "ttm_resource_manager_debug", scope: !3, file: !3, line: 479, type: !4494, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6311)
!6311 = !{!6312, !6313}
!6312 = !DILocalVariable(name: "man", arg: 1, scope: !6310, file: !3, line: 479, type: !4481)
!6313 = !DILocalVariable(name: "p", arg: 2, scope: !6310, file: !3, line: 480, type: !4276)
!6314 = !DILocation(line: 479, column: 62, scope: !6310)
!6315 = !DILocation(line: 480, column: 25, scope: !6310)
!6316 = !DILocation(line: 482, column: 13, scope: !6310)
!6317 = !DILocation(line: 482, column: 36, scope: !6310)
!6318 = !DILocation(line: 482, column: 41, scope: !6310)
!6319 = !DILocation(line: 482, column: 2, scope: !6310)
!6320 = !DILocation(line: 483, column: 13, scope: !6310)
!6321 = !DILocation(line: 483, column: 34, scope: !6310)
!6322 = !DILocation(line: 483, column: 39, scope: !6310)
!6323 = !DILocation(line: 483, column: 2, scope: !6310)
!6324 = !DILocation(line: 484, column: 13, scope: !6310)
!6325 = !DILocation(line: 484, column: 34, scope: !6310)
!6326 = !DILocation(line: 484, column: 39, scope: !6310)
!6327 = !DILocation(line: 484, column: 2, scope: !6310)
!6328 = !DILocation(line: 485, column: 13, scope: !6310)
!6329 = !DILocation(line: 485, column: 62, scope: !6310)
!6330 = !DILocation(line: 485, column: 35, scope: !6310)
!6331 = !DILocation(line: 485, column: 2, scope: !6310)
!6332 = !DILocation(line: 486, column: 6, scope: !6333)
!6333 = distinct !DILexicalBlock(scope: !6310, file: !3, line: 486, column: 6)
!6334 = !DILocation(line: 486, column: 11, scope: !6333)
!6335 = !DILocation(line: 486, column: 17, scope: !6333)
!6336 = !DILocation(line: 486, column: 6, scope: !6310)
!6337 = !DILocation(line: 487, column: 3, scope: !6333)
!6338 = !DILocation(line: 487, column: 8, scope: !6333)
!6339 = !DILocation(line: 487, column: 14, scope: !6333)
!6340 = !DILocation(line: 487, column: 20, scope: !6333)
!6341 = !DILocation(line: 487, column: 25, scope: !6333)
!6342 = !DILocation(line: 488, column: 1, scope: !6310)
!6343 = !DISubprogram(name: "drm_printf", scope: !4278, file: !4278, line: 93, type: !6344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6344 = !DISubroutineType(types: !6345)
!6345 = !{null, !4276, !524, null}
!6346 = distinct !DISubprogram(name: "ttm_resource_manager_first", scope: !3, file: !3, line: 500, type: !6347, scopeLine: 502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6353)
!6347 = !DISubroutineType(types: !6348)
!6348 = !{!181, !4481, !6349}
!6349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6350, size: 64)
!6350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_resource_cursor", file: !183, line: 230, size: 32, elements: !6351)
!6351 = !{!6352}
!6352 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !6350, file: !183, line: 231, baseType: !7, size: 32)
!6353 = !{!6354, !6355, !6356, !6357, !6362}
!6354 = !DILocalVariable(name: "man", arg: 1, scope: !6346, file: !3, line: 500, type: !4481)
!6355 = !DILocalVariable(name: "cursor", arg: 2, scope: !6346, file: !3, line: 501, type: !6349)
!6356 = !DILocalVariable(name: "res", scope: !6346, file: !3, line: 503, type: !181)
!6357 = !DILocalVariable(name: "__mptr", scope: !6358, file: !3, line: 509, type: !180)
!6358 = distinct !DILexicalBlock(scope: !6359, file: !3, line: 509, column: 3)
!6359 = distinct !DILexicalBlock(scope: !6360, file: !3, line: 509, column: 3)
!6360 = distinct !DILexicalBlock(scope: !6361, file: !3, line: 507, column: 2)
!6361 = distinct !DILexicalBlock(scope: !6346, file: !3, line: 507, column: 2)
!6362 = !DILocalVariable(name: "__mptr", scope: !6363, file: !3, line: 509, type: !180)
!6363 = distinct !DILexicalBlock(scope: !6364, file: !3, line: 509, column: 3)
!6364 = distinct !DILexicalBlock(scope: !6359, file: !3, line: 509, column: 3)
!6365 = !DILocation(line: 500, column: 57, scope: !6346)
!6366 = !DILocation(line: 501, column: 35, scope: !6346)
!6367 = !DILocation(line: 503, column: 2, scope: !6346)
!6368 = !DILocation(line: 503, column: 23, scope: !6346)
!6369 = !DILocation(line: 505, column: 2, scope: !6346)
!6370 = !DILocation(line: 505, column: 2, scope: !6371)
!6371 = distinct !DILexicalBlock(scope: !6346, file: !3, line: 505, column: 2)
!6372 = !DILocation(line: 507, column: 7, scope: !6361)
!6373 = !DILocation(line: 507, column: 15, scope: !6361)
!6374 = !DILocation(line: 507, column: 24, scope: !6361)
!6375 = !DILocation(line: 507, column: 29, scope: !6360)
!6376 = !DILocation(line: 507, column: 37, scope: !6360)
!6377 = !DILocation(line: 507, column: 46, scope: !6360)
!6378 = !DILocation(line: 507, column: 2, scope: !6361)
!6379 = !DILocation(line: 509, column: 3, scope: !6358)
!6380 = !DILocation(line: 509, column: 3, scope: !6359)
!6381 = !DILocation(line: 509, column: 3, scope: !6364)
!6382 = !DILocation(line: 510, column: 11, scope: !6364)
!6383 = !DILocation(line: 510, column: 4, scope: !6364)
!6384 = !DILocation(line: 509, column: 3, scope: !6363)
!6385 = distinct !{!6385, !6380, !6386, !5246, !5247}
!6386 = !DILocation(line: 510, column: 11, scope: !6359)
!6387 = !DILocation(line: 508, column: 9, scope: !6360)
!6388 = !DILocation(line: 508, column: 17, scope: !6360)
!6389 = !DILocation(line: 508, column: 7, scope: !6360)
!6390 = !DILocation(line: 507, column: 2, scope: !6360)
!6391 = distinct !{!6391, !6378, !6392, !5246, !5247}
!6392 = !DILocation(line: 510, column: 11, scope: !6361)
!6393 = !DILocation(line: 512, column: 2, scope: !6346)
!6394 = !DILocation(line: 513, column: 1, scope: !6346)
!6395 = distinct !DISubprogram(name: "ttm_resource_manager_next", scope: !3, file: !3, line: 525, type: !6396, scopeLine: 528, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6398)
!6396 = !DISubroutineType(types: !6397)
!6397 = !{!181, !4481, !6349, !181}
!6398 = !{!6399, !6400, !6401, !6402, !6405, !6408, !6413}
!6399 = !DILocalVariable(name: "man", arg: 1, scope: !6395, file: !3, line: 525, type: !4481)
!6400 = !DILocalVariable(name: "cursor", arg: 2, scope: !6395, file: !3, line: 526, type: !6349)
!6401 = !DILocalVariable(name: "res", arg: 3, scope: !6395, file: !3, line: 527, type: !181)
!6402 = !DILocalVariable(name: "__mptr", scope: !6403, file: !3, line: 531, type: !180)
!6403 = distinct !DILexicalBlock(scope: !6404, file: !3, line: 531, column: 2)
!6404 = distinct !DILexicalBlock(scope: !6395, file: !3, line: 531, column: 2)
!6405 = !DILocalVariable(name: "__mptr", scope: !6406, file: !3, line: 531, type: !180)
!6406 = distinct !DILexicalBlock(scope: !6407, file: !3, line: 531, column: 2)
!6407 = distinct !DILexicalBlock(scope: !6404, file: !3, line: 531, column: 2)
!6408 = !DILocalVariable(name: "__mptr", scope: !6409, file: !3, line: 536, type: !180)
!6409 = distinct !DILexicalBlock(scope: !6410, file: !3, line: 536, column: 3)
!6410 = distinct !DILexicalBlock(scope: !6411, file: !3, line: 536, column: 3)
!6411 = distinct !DILexicalBlock(scope: !6412, file: !3, line: 534, column: 2)
!6412 = distinct !DILexicalBlock(scope: !6395, file: !3, line: 534, column: 2)
!6413 = !DILocalVariable(name: "__mptr", scope: !6414, file: !3, line: 536, type: !180)
!6414 = distinct !DILexicalBlock(scope: !6415, file: !3, line: 536, column: 3)
!6415 = distinct !DILexicalBlock(scope: !6410, file: !3, line: 536, column: 3)
!6416 = !DILocation(line: 525, column: 56, scope: !6395)
!6417 = !DILocation(line: 526, column: 34, scope: !6395)
!6418 = !DILocation(line: 527, column: 27, scope: !6395)
!6419 = !DILocation(line: 529, column: 2, scope: !6395)
!6420 = !DILocation(line: 529, column: 2, scope: !6421)
!6421 = distinct !DILexicalBlock(scope: !6395, file: !3, line: 529, column: 2)
!6422 = !DILocation(line: 531, column: 2, scope: !6403)
!6423 = !DILocation(line: 531, column: 2, scope: !6404)
!6424 = !DILocation(line: 531, column: 2, scope: !6407)
!6425 = !DILocation(line: 532, column: 10, scope: !6407)
!6426 = !DILocation(line: 532, column: 3, scope: !6407)
!6427 = !DILocation(line: 531, column: 2, scope: !6406)
!6428 = distinct !{!6428, !6423, !6429, !5246, !5247}
!6429 = !DILocation(line: 532, column: 10, scope: !6404)
!6430 = !DILocation(line: 534, column: 9, scope: !6412)
!6431 = !DILocation(line: 534, column: 17, scope: !6412)
!6432 = !DILocation(line: 534, column: 7, scope: !6412)
!6433 = !DILocation(line: 534, column: 27, scope: !6411)
!6434 = !DILocation(line: 534, column: 35, scope: !6411)
!6435 = !DILocation(line: 534, column: 44, scope: !6411)
!6436 = !DILocation(line: 534, column: 2, scope: !6412)
!6437 = !DILocation(line: 536, column: 3, scope: !6409)
!6438 = !DILocation(line: 536, column: 3, scope: !6410)
!6439 = !DILocation(line: 536, column: 3, scope: !6415)
!6440 = !DILocation(line: 537, column: 11, scope: !6415)
!6441 = !DILocation(line: 537, column: 4, scope: !6415)
!6442 = !DILocation(line: 536, column: 3, scope: !6414)
!6443 = distinct !{!6443, !6438, !6444, !5246, !5247}
!6444 = !DILocation(line: 537, column: 11, scope: !6410)
!6445 = !DILocation(line: 535, column: 9, scope: !6411)
!6446 = !DILocation(line: 535, column: 17, scope: !6411)
!6447 = !DILocation(line: 535, column: 7, scope: !6411)
!6448 = !DILocation(line: 534, column: 2, scope: !6411)
!6449 = distinct !{!6449, !6436, !6450, !5246, !5247}
!6450 = !DILocation(line: 537, column: 11, scope: !6412)
!6451 = !DILocation(line: 539, column: 2, scope: !6395)
!6452 = !DILocation(line: 540, column: 1, scope: !6395)
!6453 = distinct !DISubprogram(name: "ttm_kmap_iter_iomap_init", scope: !3, file: !3, line: 597, type: !6454, scopeLine: 601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6456)
!6454 = !DISubroutineType(types: !6455)
!6455 = !{!5078, !5062, !5085, !4322, !5090}
!6456 = !{!6457, !6458, !6459, !6460}
!6457 = !DILocalVariable(name: "iter_io", arg: 1, scope: !6453, file: !3, line: 597, type: !5062)
!6458 = !DILocalVariable(name: "iomap", arg: 2, scope: !6453, file: !3, line: 598, type: !5085)
!6459 = !DILocalVariable(name: "st", arg: 3, scope: !6453, file: !3, line: 599, type: !4322)
!6460 = !DILocalVariable(name: "start", arg: 4, scope: !6453, file: !3, line: 600, type: !5090)
!6461 = !DILocation(line: 597, column: 54, scope: !6453)
!6462 = !DILocation(line: 598, column: 24, scope: !6453)
!6463 = !DILocation(line: 599, column: 22, scope: !6453)
!6464 = !DILocation(line: 600, column: 21, scope: !6453)
!6465 = !DILocation(line: 602, column: 2, scope: !6453)
!6466 = !DILocation(line: 602, column: 11, scope: !6453)
!6467 = !DILocation(line: 602, column: 16, scope: !6453)
!6468 = !DILocation(line: 602, column: 20, scope: !6453)
!6469 = !DILocation(line: 603, column: 19, scope: !6453)
!6470 = !DILocation(line: 603, column: 2, scope: !6453)
!6471 = !DILocation(line: 603, column: 11, scope: !6453)
!6472 = !DILocation(line: 603, column: 17, scope: !6453)
!6473 = !DILocation(line: 604, column: 16, scope: !6453)
!6474 = !DILocation(line: 604, column: 2, scope: !6453)
!6475 = !DILocation(line: 604, column: 11, scope: !6453)
!6476 = !DILocation(line: 604, column: 14, scope: !6453)
!6477 = !DILocation(line: 605, column: 19, scope: !6453)
!6478 = !DILocation(line: 605, column: 2, scope: !6453)
!6479 = !DILocation(line: 605, column: 11, scope: !6453)
!6480 = !DILocation(line: 605, column: 17, scope: !6453)
!6481 = !DILocation(line: 606, column: 10, scope: !6453)
!6482 = !DILocation(line: 606, column: 19, scope: !6453)
!6483 = !DILocation(line: 606, column: 2, scope: !6453)
!6484 = !DILocation(line: 608, column: 10, scope: !6453)
!6485 = !DILocation(line: 608, column: 19, scope: !6453)
!6486 = !DILocation(line: 608, column: 2, scope: !6453)
!6487 = distinct !DISubprogram(name: "ttm_kmap_iter_linear_io_init", scope: !3, file: !3, line: 653, type: !6488, scopeLine: 656, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6490)
!6488 = !DISubroutineType(types: !6489)
!6489 = !{!5078, !5103, !4377, !181}
!6490 = !{!6491, !6492, !6493, !6494, !6495, !6496}
!6491 = !DILocalVariable(name: "iter_io", arg: 1, scope: !6487, file: !3, line: 653, type: !5103)
!6492 = !DILocalVariable(name: "bdev", arg: 2, scope: !6487, file: !3, line: 654, type: !4377)
!6493 = !DILocalVariable(name: "mem", arg: 3, scope: !6487, file: !3, line: 655, type: !181)
!6494 = !DILocalVariable(name: "ret", scope: !6487, file: !3, line: 657, type: !120)
!6495 = !DILabel(scope: !6487, name: "out_io_free", file: !3, line: 699)
!6496 = !DILabel(scope: !6487, name: "out_err", file: !3, line: 701)
!6497 = !DILocation(line: 653, column: 62, scope: !6487)
!6498 = !DILocation(line: 654, column: 28, scope: !6487)
!6499 = !DILocation(line: 655, column: 30, scope: !6487)
!6500 = !DILocation(line: 657, column: 2, scope: !6487)
!6501 = !DILocation(line: 657, column: 6, scope: !6487)
!6502 = !DILocation(line: 659, column: 27, scope: !6487)
!6503 = !DILocation(line: 659, column: 33, scope: !6487)
!6504 = !DILocation(line: 659, column: 8, scope: !6487)
!6505 = !DILocation(line: 659, column: 6, scope: !6487)
!6506 = !DILocation(line: 660, column: 6, scope: !6507)
!6507 = distinct !DILexicalBlock(scope: !6487, file: !3, line: 660, column: 6)
!6508 = !DILocation(line: 660, column: 6, scope: !6487)
!6509 = !DILocation(line: 661, column: 3, scope: !6507)
!6510 = !DILocation(line: 662, column: 7, scope: !6511)
!6511 = distinct !DILexicalBlock(scope: !6487, file: !3, line: 662, column: 6)
!6512 = !DILocation(line: 662, column: 12, scope: !6511)
!6513 = !DILocation(line: 662, column: 16, scope: !6511)
!6514 = !DILocation(line: 662, column: 6, scope: !6487)
!6515 = !DILocation(line: 663, column: 7, scope: !6516)
!6516 = distinct !DILexicalBlock(scope: !6511, file: !3, line: 662, column: 26)
!6517 = !DILocation(line: 664, column: 3, scope: !6516)
!6518 = !DILocation(line: 667, column: 6, scope: !6519)
!6519 = distinct !DILexicalBlock(scope: !6487, file: !3, line: 667, column: 6)
!6520 = !DILocation(line: 667, column: 11, scope: !6519)
!6521 = !DILocation(line: 667, column: 15, scope: !6519)
!6522 = !DILocation(line: 667, column: 6, scope: !6487)
!6523 = !DILocation(line: 668, column: 24, scope: !6524)
!6524 = distinct !DILexicalBlock(scope: !6519, file: !3, line: 667, column: 21)
!6525 = !DILocation(line: 668, column: 33, scope: !6524)
!6526 = !DILocation(line: 668, column: 39, scope: !6524)
!6527 = !DILocation(line: 668, column: 44, scope: !6524)
!6528 = !DILocation(line: 668, column: 48, scope: !6524)
!6529 = !DILocation(line: 668, column: 3, scope: !6524)
!6530 = !DILocation(line: 669, column: 3, scope: !6524)
!6531 = !DILocation(line: 669, column: 12, scope: !6524)
!6532 = !DILocation(line: 669, column: 24, scope: !6524)
!6533 = !DILocation(line: 670, column: 2, scope: !6524)
!6534 = !DILocation(line: 671, column: 3, scope: !6535)
!6535 = distinct !DILexicalBlock(scope: !6519, file: !3, line: 670, column: 9)
!6536 = !DILocation(line: 671, column: 12, scope: !6535)
!6537 = !DILocation(line: 671, column: 24, scope: !6535)
!6538 = !DILocation(line: 672, column: 11, scope: !6535)
!6539 = !DILocation(line: 672, column: 20, scope: !6535)
!6540 = !DILocation(line: 672, column: 3, scope: !6535)
!6541 = !DILocation(line: 673, column: 7, scope: !6542)
!6542 = distinct !DILexicalBlock(scope: !6535, file: !3, line: 673, column: 7)
!6543 = !DILocation(line: 673, column: 12, scope: !6542)
!6544 = !DILocation(line: 673, column: 16, scope: !6542)
!6545 = !DILocation(line: 673, column: 24, scope: !6542)
!6546 = !DILocation(line: 673, column: 7, scope: !6535)
!6547 = !DILocation(line: 674, column: 31, scope: !6542)
!6548 = !DILocation(line: 674, column: 40, scope: !6542)
!6549 = !DILocation(line: 675, column: 20, scope: !6542)
!6550 = !DILocation(line: 675, column: 25, scope: !6542)
!6551 = !DILocation(line: 675, column: 29, scope: !6542)
!6552 = !DILocation(line: 676, column: 13, scope: !6542)
!6553 = !DILocation(line: 676, column: 18, scope: !6542)
!6554 = !DILocation(line: 675, column: 9, scope: !6542)
!6555 = !DILocation(line: 674, column: 4, scope: !6542)
!6556 = !DILocation(line: 677, column: 12, scope: !6557)
!6557 = distinct !DILexicalBlock(scope: !6542, file: !3, line: 677, column: 12)
!6558 = !DILocation(line: 677, column: 17, scope: !6557)
!6559 = !DILocation(line: 677, column: 21, scope: !6557)
!6560 = !DILocation(line: 677, column: 29, scope: !6557)
!6561 = !DILocation(line: 677, column: 12, scope: !6542)
!6562 = !DILocation(line: 678, column: 25, scope: !6557)
!6563 = !DILocation(line: 678, column: 34, scope: !6557)
!6564 = !DILocation(line: 679, column: 19, scope: !6557)
!6565 = !DILocation(line: 679, column: 24, scope: !6557)
!6566 = !DILocation(line: 679, column: 28, scope: !6557)
!6567 = !DILocation(line: 679, column: 36, scope: !6557)
!6568 = !DILocation(line: 679, column: 41, scope: !6557)
!6569 = !DILocation(line: 679, column: 10, scope: !6557)
!6570 = !DILocation(line: 678, column: 4, scope: !6557)
!6571 = !DILocation(line: 685, column: 26, scope: !6572)
!6572 = distinct !DILexicalBlock(scope: !6535, file: !3, line: 685, column: 7)
!6573 = !DILocation(line: 685, column: 35, scope: !6572)
!6574 = !DILocation(line: 685, column: 7, scope: !6572)
!6575 = !DILocation(line: 685, column: 7, scope: !6535)
!6576 = !DILocation(line: 686, column: 31, scope: !6572)
!6577 = !DILocation(line: 686, column: 40, scope: !6572)
!6578 = !DILocation(line: 687, column: 17, scope: !6572)
!6579 = !DILocation(line: 687, column: 22, scope: !6572)
!6580 = !DILocation(line: 687, column: 26, scope: !6572)
!6581 = !DILocation(line: 688, column: 10, scope: !6572)
!6582 = !DILocation(line: 688, column: 15, scope: !6572)
!6583 = !DILocation(line: 687, column: 9, scope: !6572)
!6584 = !DILocation(line: 686, column: 4, scope: !6572)
!6585 = !DILocation(line: 690, column: 26, scope: !6586)
!6586 = distinct !DILexicalBlock(scope: !6535, file: !3, line: 690, column: 7)
!6587 = !DILocation(line: 690, column: 35, scope: !6586)
!6588 = !DILocation(line: 690, column: 7, scope: !6586)
!6589 = !DILocation(line: 690, column: 7, scope: !6535)
!6590 = !DILocation(line: 691, column: 8, scope: !6591)
!6591 = distinct !DILexicalBlock(scope: !6586, file: !3, line: 690, column: 42)
!6592 = !DILocation(line: 692, column: 4, scope: !6591)
!6593 = !DILocation(line: 696, column: 2, scope: !6487)
!6594 = !DILocation(line: 696, column: 11, scope: !6487)
!6595 = !DILocation(line: 696, column: 16, scope: !6487)
!6596 = !DILocation(line: 696, column: 20, scope: !6487)
!6597 = !DILocation(line: 697, column: 10, scope: !6487)
!6598 = !DILocation(line: 697, column: 19, scope: !6487)
!6599 = !DILocation(line: 697, column: 2, scope: !6487)
!6600 = !DILocation(line: 699, column: 1, scope: !6487)
!6601 = !DILocation(line: 700, column: 18, scope: !6487)
!6602 = !DILocation(line: 700, column: 24, scope: !6487)
!6603 = !DILocation(line: 700, column: 2, scope: !6487)
!6604 = !DILocation(line: 701, column: 1, scope: !6487)
!6605 = !DILocation(line: 702, column: 17, scope: !6487)
!6606 = !DILocation(line: 702, column: 9, scope: !6487)
!6607 = !DILocation(line: 702, column: 2, scope: !6487)
!6608 = !DILocation(line: 703, column: 1, scope: !6487)
!6609 = !DISubprogram(name: "ttm_mem_io_reserve", scope: !153, file: !153, line: 406, type: !4450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6610 = distinct !DISubprogram(name: "iosys_map_set_vaddr", scope: !4345, file: !4345, line: 183, type: !6611, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6613)
!6611 = !DISubroutineType(types: !6612)
!6612 = !{null, !4343, !180}
!6613 = !{!6614, !6615}
!6614 = !DILocalVariable(name: "map", arg: 1, scope: !6610, file: !4345, line: 183, type: !4343)
!6615 = !DILocalVariable(name: "vaddr", arg: 2, scope: !6610, file: !4345, line: 183, type: !180)
!6616 = !DILocation(line: 183, column: 58, scope: !6610)
!6617 = !DILocation(line: 183, column: 69, scope: !6610)
!6618 = !DILocation(line: 185, column: 15, scope: !6610)
!6619 = !DILocation(line: 185, column: 2, scope: !6610)
!6620 = !DILocation(line: 185, column: 7, scope: !6610)
!6621 = !DILocation(line: 185, column: 13, scope: !6610)
!6622 = !DILocation(line: 186, column: 2, scope: !6610)
!6623 = !DILocation(line: 186, column: 7, scope: !6610)
!6624 = !DILocation(line: 186, column: 16, scope: !6610)
!6625 = !DILocation(line: 187, column: 1, scope: !6610)
!6626 = distinct !DISubprogram(name: "iosys_map_set_vaddr_iomem", scope: !4345, file: !4345, line: 196, type: !6611, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6627)
!6627 = !{!6628, !6629}
!6628 = !DILocalVariable(name: "map", arg: 1, scope: !6626, file: !4345, line: 196, type: !4343)
!6629 = !DILocalVariable(name: "vaddr_iomem", arg: 2, scope: !6626, file: !4345, line: 197, type: !180)
!6630 = !DILocation(line: 196, column: 64, scope: !6626)
!6631 = !DILocation(line: 197, column: 25, scope: !6626)
!6632 = !DILocation(line: 199, column: 21, scope: !6626)
!6633 = !DILocation(line: 199, column: 2, scope: !6626)
!6634 = !DILocation(line: 199, column: 7, scope: !6626)
!6635 = !DILocation(line: 199, column: 19, scope: !6626)
!6636 = !DILocation(line: 200, column: 2, scope: !6626)
!6637 = !DILocation(line: 200, column: 7, scope: !6626)
!6638 = !DILocation(line: 200, column: 16, scope: !6626)
!6639 = !DILocation(line: 201, column: 1, scope: !6626)
!6640 = !DISubprogram(name: "ioremap_wc", scope: !6641, file: !6641, line: 318, type: !6642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6641 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!6642 = !DISubroutineType(types: !6643)
!6643 = !{!180, !5090, !186}
!6644 = !DISubprogram(name: "memremap", scope: !164, file: !164, line: 149, type: !6645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6645 = !DISubroutineType(types: !6646)
!6646 = !{!180, !5090, !188, !186}
!6647 = distinct !DISubprogram(name: "iosys_map_is_null", scope: !4345, file: !4345, line: 235, type: !6648, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6652)
!6648 = !DISubroutineType(types: !6649)
!6649 = !{!210, !6650}
!6650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6651, size: 64)
!6651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4344)
!6652 = !{!6653}
!6653 = !DILocalVariable(name: "map", arg: 1, scope: !6647, file: !4345, line: 235, type: !6650)
!6654 = !DILocation(line: 235, column: 62, scope: !6647)
!6655 = !DILocation(line: 237, column: 6, scope: !6656)
!6656 = distinct !DILexicalBlock(scope: !6647, file: !4345, line: 237, column: 6)
!6657 = !DILocation(line: 237, column: 11, scope: !6656)
!6658 = !DILocation(line: 237, column: 6, scope: !6647)
!6659 = !DILocation(line: 238, column: 11, scope: !6656)
!6660 = !DILocation(line: 238, column: 16, scope: !6656)
!6661 = !DILocation(line: 238, column: 10, scope: !6656)
!6662 = !DILocation(line: 238, column: 3, scope: !6656)
!6663 = !DILocation(line: 239, column: 10, scope: !6647)
!6664 = !DILocation(line: 239, column: 15, scope: !6647)
!6665 = !DILocation(line: 239, column: 9, scope: !6647)
!6666 = !DILocation(line: 239, column: 2, scope: !6647)
!6667 = !DILocation(line: 240, column: 1, scope: !6647)
!6668 = !DISubprogram(name: "ioremap", scope: !6641, file: !6641, line: 196, type: !6642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6669 = !DISubprogram(name: "ttm_mem_io_free", scope: !153, file: !153, line: 408, type: !4454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6670 = distinct !DISubprogram(name: "ERR_PTR", scope: !6671, file: !6671, line: 39, type: !6672, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6674)
!6671 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6672 = !DISubroutineType(types: !6673)
!6673 = !{!180, !800}
!6674 = !{!6675}
!6675 = !DILocalVariable(name: "error", arg: 1, scope: !6670, file: !6671, line: 39, type: !800)
!6676 = !DILocation(line: 39, column: 48, scope: !6670)
!6677 = !DILocation(line: 41, column: 18, scope: !6670)
!6678 = !DILocation(line: 41, column: 9, scope: !6670)
!6679 = !DILocation(line: 41, column: 2, scope: !6670)
!6680 = distinct !DISubprogram(name: "ttm_kmap_iter_linear_io_fini", scope: !3, file: !3, line: 715, type: !6681, scopeLine: 718, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6683)
!6681 = !DISubroutineType(types: !6682)
!6682 = !{null, !5103, !4377, !181}
!6683 = !{!6684, !6685, !6686}
!6684 = !DILocalVariable(name: "iter_io", arg: 1, scope: !6680, file: !3, line: 715, type: !5103)
!6685 = !DILocalVariable(name: "bdev", arg: 2, scope: !6680, file: !3, line: 716, type: !4377)
!6686 = !DILocalVariable(name: "mem", arg: 3, scope: !6680, file: !3, line: 717, type: !181)
!6687 = !DILocation(line: 715, column: 62, scope: !6680)
!6688 = !DILocation(line: 716, column: 28, scope: !6680)
!6689 = !DILocation(line: 717, column: 30, scope: !6680)
!6690 = !DILocation(line: 719, column: 6, scope: !6691)
!6691 = distinct !DILexicalBlock(scope: !6680, file: !3, line: 719, column: 6)
!6692 = !DILocation(line: 719, column: 15, scope: !6691)
!6693 = !DILocation(line: 719, column: 27, scope: !6691)
!6694 = !DILocation(line: 719, column: 48, scope: !6691)
!6695 = !DILocation(line: 719, column: 57, scope: !6691)
!6696 = !DILocation(line: 719, column: 30, scope: !6691)
!6697 = !DILocation(line: 719, column: 6, scope: !6680)
!6698 = !DILocation(line: 720, column: 7, scope: !6699)
!6699 = distinct !DILexicalBlock(scope: !6700, file: !3, line: 720, column: 7)
!6700 = distinct !DILexicalBlock(scope: !6691, file: !3, line: 719, column: 64)
!6701 = !DILocation(line: 720, column: 16, scope: !6699)
!6702 = !DILocation(line: 720, column: 21, scope: !6699)
!6703 = !DILocation(line: 720, column: 7, scope: !6700)
!6704 = !DILocation(line: 721, column: 12, scope: !6699)
!6705 = !DILocation(line: 721, column: 21, scope: !6699)
!6706 = !DILocation(line: 721, column: 26, scope: !6699)
!6707 = !DILocation(line: 721, column: 4, scope: !6699)
!6708 = !DILocation(line: 723, column: 13, scope: !6699)
!6709 = !DILocation(line: 723, column: 22, scope: !6699)
!6710 = !DILocation(line: 723, column: 27, scope: !6699)
!6711 = !DILocation(line: 723, column: 4, scope: !6699)
!6712 = !DILocation(line: 724, column: 2, scope: !6700)
!6713 = !DILocation(line: 726, column: 18, scope: !6680)
!6714 = !DILocation(line: 726, column: 24, scope: !6680)
!6715 = !DILocation(line: 726, column: 2, scope: !6680)
!6716 = !DILocation(line: 727, column: 1, scope: !6680)
!6717 = distinct !DISubprogram(name: "iosys_map_is_set", scope: !4345, file: !4345, line: 252, type: !6648, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6718)
!6718 = !{!6719}
!6719 = !DILocalVariable(name: "map", arg: 1, scope: !6717, file: !4345, line: 252, type: !6650)
!6720 = !DILocation(line: 252, column: 61, scope: !6717)
!6721 = !DILocation(line: 254, column: 28, scope: !6717)
!6722 = !DILocation(line: 254, column: 10, scope: !6717)
!6723 = !DILocation(line: 254, column: 9, scope: !6717)
!6724 = !DILocation(line: 254, column: 2, scope: !6717)
!6725 = !DISubprogram(name: "iounmap", scope: !6641, file: !6641, line: 199, type: !6726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6726 = !DISubroutineType(types: !6727)
!6727 = !{null, !6728}
!6728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6729, size: 64)
!6729 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6730 = !DISubprogram(name: "memunmap", scope: !164, file: !164, line: 150, type: !718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6731 = distinct !DISubprogram(name: "ttm_resource_manager_create_debugfs", scope: !3, file: !3, line: 753, type: !6732, scopeLine: 756, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6734)
!6732 = !DISubroutineType(types: !6733)
!6733 = !{null, !4481, !645, !524}
!6734 = !{!6735, !6736, !6737}
!6735 = !DILocalVariable(name: "man", arg: 1, scope: !6731, file: !3, line: 753, type: !4481)
!6736 = !DILocalVariable(name: "parent", arg: 2, scope: !6731, file: !3, line: 754, type: !645)
!6737 = !DILocalVariable(name: "name", arg: 3, scope: !6731, file: !3, line: 755, type: !524)
!6738 = !DILocation(line: 753, column: 71, scope: !6731)
!6739 = !DILocation(line: 754, column: 23, scope: !6731)
!6740 = !DILocation(line: 755, column: 19, scope: !6731)
!6741 = !DILocation(line: 758, column: 22, scope: !6731)
!6742 = !DILocation(line: 758, column: 34, scope: !6731)
!6743 = !DILocation(line: 758, column: 42, scope: !6731)
!6744 = !DILocation(line: 758, column: 2, scope: !6731)
!6745 = !DILocation(line: 760, column: 1, scope: !6731)
!6746 = !DISubprogram(name: "debugfs_create_file", scope: !6747, file: !6747, line: 75, type: !6748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6747 = !DIFile(filename: "./include/linux/debugfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e6228d229e8266f5bff9327360d42a5")
!6748 = !DISubroutineType(types: !6749)
!6749 = !{!645, !524, !689, !645, !180, !3988}
!6750 = !DISubprogram(name: "__compiletime_assert_295", scope: !4379, file: !4379, line: 278, type: !2261, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6751 = distinct !DISubprogram(name: "list_move", scope: !5273, file: !5273, line: 296, type: !5528, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6752)
!6752 = !{!6753, !6754}
!6753 = !DILocalVariable(name: "list", arg: 1, scope: !6751, file: !5273, line: 296, type: !325)
!6754 = !DILocalVariable(name: "head", arg: 2, scope: !6751, file: !5273, line: 296, type: !325)
!6755 = !DILocation(line: 296, column: 48, scope: !6751)
!6756 = !DILocation(line: 296, column: 72, scope: !6751)
!6757 = !DILocation(line: 298, column: 19, scope: !6751)
!6758 = !DILocation(line: 298, column: 2, scope: !6751)
!6759 = !DILocation(line: 299, column: 11, scope: !6751)
!6760 = !DILocation(line: 299, column: 17, scope: !6751)
!6761 = !DILocation(line: 299, column: 2, scope: !6751)
!6762 = !DILocation(line: 300, column: 1, scope: !6751)
!6763 = distinct !DISubprogram(name: "__list_del_entry", scope: !5273, file: !5273, line: 213, type: !5740, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6764)
!6764 = !{!6765}
!6765 = !DILocalVariable(name: "entry", arg: 1, scope: !6763, file: !5273, line: 213, type: !325)
!6766 = !DILocation(line: 213, column: 55, scope: !6763)
!6767 = !DILocation(line: 215, column: 30, scope: !6768)
!6768 = distinct !DILexicalBlock(scope: !6763, file: !5273, line: 215, column: 6)
!6769 = !DILocation(line: 215, column: 7, scope: !6768)
!6770 = !DILocation(line: 215, column: 6, scope: !6763)
!6771 = !DILocation(line: 216, column: 3, scope: !6768)
!6772 = !DILocation(line: 218, column: 13, scope: !6763)
!6773 = !DILocation(line: 218, column: 20, scope: !6763)
!6774 = !DILocation(line: 218, column: 26, scope: !6763)
!6775 = !DILocation(line: 218, column: 33, scope: !6763)
!6776 = !DILocation(line: 218, column: 2, scope: !6763)
!6777 = !DILocation(line: 219, column: 1, scope: !6763)
!6778 = distinct !DISubprogram(name: "list_add", scope: !5273, file: !5273, line: 167, type: !5528, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6779)
!6779 = !{!6780, !6781}
!6780 = !DILocalVariable(name: "new", arg: 1, scope: !6778, file: !5273, line: 167, type: !325)
!6781 = !DILocalVariable(name: "head", arg: 2, scope: !6778, file: !5273, line: 167, type: !325)
!6782 = !DILocation(line: 167, column: 47, scope: !6778)
!6783 = !DILocation(line: 167, column: 70, scope: !6778)
!6784 = !DILocation(line: 169, column: 13, scope: !6778)
!6785 = !DILocation(line: 169, column: 18, scope: !6778)
!6786 = !DILocation(line: 169, column: 24, scope: !6778)
!6787 = !DILocation(line: 169, column: 30, scope: !6778)
!6788 = !DILocation(line: 169, column: 2, scope: !6778)
!6789 = !DILocation(line: 170, column: 1, scope: !6778)
!6790 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5273, file: !5273, line: 134, type: !6791, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6793)
!6791 = !DISubroutineType(types: !6792)
!6792 = !{!210, !325}
!6793 = !{!6794}
!6794 = !DILocalVariable(name: "entry", arg: 1, scope: !6790, file: !5273, line: 134, type: !325)
!6795 = !DILocation(line: 134, column: 61, scope: !6790)
!6796 = !DILocation(line: 136, column: 2, scope: !6790)
!6797 = distinct !DISubprogram(name: "__list_del", scope: !5273, file: !5273, line: 193, type: !5528, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6798)
!6798 = !{!6799, !6800}
!6799 = !DILocalVariable(name: "prev", arg: 1, scope: !6797, file: !5273, line: 193, type: !325)
!6800 = !DILocalVariable(name: "next", arg: 2, scope: !6797, file: !5273, line: 193, type: !325)
!6801 = !DILocation(line: 193, column: 50, scope: !6797)
!6802 = !DILocation(line: 193, column: 75, scope: !6797)
!6803 = !DILocation(line: 195, column: 15, scope: !6797)
!6804 = !DILocation(line: 195, column: 2, scope: !6797)
!6805 = !DILocation(line: 195, column: 8, scope: !6797)
!6806 = !DILocation(line: 195, column: 13, scope: !6797)
!6807 = !DILocation(line: 196, column: 2, scope: !6797)
!6808 = !DILocation(line: 196, column: 2, scope: !6809)
!6809 = distinct !DILexicalBlock(scope: !6797, file: !5273, line: 196, column: 2)
!6810 = !DILocation(line: 196, column: 2, scope: !6811)
!6811 = distinct !DILexicalBlock(scope: !6809, file: !5273, line: 196, column: 2)
!6812 = !DILocation(line: 196, column: 2, scope: !6813)
!6813 = distinct !DILexicalBlock(scope: !6809, file: !5273, line: 196, column: 2)
!6814 = !DILocation(line: 197, column: 1, scope: !6797)
!6815 = distinct !DISubprogram(name: "__list_add", scope: !5273, file: !5273, line: 146, type: !5274, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6816)
!6816 = !{!6817, !6818, !6819}
!6817 = !DILocalVariable(name: "new", arg: 1, scope: !6815, file: !5273, line: 146, type: !325)
!6818 = !DILocalVariable(name: "prev", arg: 2, scope: !6815, file: !5273, line: 147, type: !325)
!6819 = !DILocalVariable(name: "next", arg: 3, scope: !6815, file: !5273, line: 148, type: !325)
!6820 = !DILocation(line: 146, column: 49, scope: !6815)
!6821 = !DILocation(line: 147, column: 28, scope: !6815)
!6822 = !DILocation(line: 148, column: 28, scope: !6815)
!6823 = !DILocation(line: 150, column: 24, scope: !6824)
!6824 = distinct !DILexicalBlock(scope: !6815, file: !5273, line: 150, column: 6)
!6825 = !DILocation(line: 150, column: 29, scope: !6824)
!6826 = !DILocation(line: 150, column: 35, scope: !6824)
!6827 = !DILocation(line: 150, column: 7, scope: !6824)
!6828 = !DILocation(line: 150, column: 6, scope: !6815)
!6829 = !DILocation(line: 151, column: 3, scope: !6824)
!6830 = !DILocation(line: 153, column: 15, scope: !6815)
!6831 = !DILocation(line: 153, column: 2, scope: !6815)
!6832 = !DILocation(line: 153, column: 8, scope: !6815)
!6833 = !DILocation(line: 153, column: 13, scope: !6815)
!6834 = !DILocation(line: 154, column: 14, scope: !6815)
!6835 = !DILocation(line: 154, column: 2, scope: !6815)
!6836 = !DILocation(line: 154, column: 7, scope: !6815)
!6837 = !DILocation(line: 154, column: 12, scope: !6815)
!6838 = !DILocation(line: 155, column: 14, scope: !6815)
!6839 = !DILocation(line: 155, column: 2, scope: !6815)
!6840 = !DILocation(line: 155, column: 7, scope: !6815)
!6841 = !DILocation(line: 155, column: 12, scope: !6815)
!6842 = !DILocation(line: 156, column: 2, scope: !6815)
!6843 = !DILocation(line: 156, column: 2, scope: !6844)
!6844 = distinct !DILexicalBlock(scope: !6815, file: !5273, line: 156, column: 2)
!6845 = !DILocation(line: 156, column: 2, scope: !6846)
!6846 = distinct !DILexicalBlock(scope: !6844, file: !5273, line: 156, column: 2)
!6847 = !DILocation(line: 156, column: 2, scope: !6848)
!6848 = distinct !DILexicalBlock(scope: !6844, file: !5273, line: 156, column: 2)
!6849 = !DILocation(line: 157, column: 1, scope: !6815)
!6850 = distinct !DISubprogram(name: "__list_add_valid", scope: !5273, file: !5273, line: 128, type: !6851, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6853)
!6851 = !DISubroutineType(types: !6852)
!6852 = !{!210, !325, !325, !325}
!6853 = !{!6854, !6855, !6856}
!6854 = !DILocalVariable(name: "new", arg: 1, scope: !6850, file: !5273, line: 128, type: !325)
!6855 = !DILocalVariable(name: "prev", arg: 2, scope: !6850, file: !5273, line: 129, type: !325)
!6856 = !DILocalVariable(name: "next", arg: 3, scope: !6850, file: !5273, line: 130, type: !325)
!6857 = !DILocation(line: 128, column: 55, scope: !6850)
!6858 = !DILocation(line: 129, column: 23, scope: !6850)
!6859 = !DILocation(line: 130, column: 23, scope: !6850)
!6860 = !DILocation(line: 132, column: 2, scope: !6850)
!6861 = !DISubprogram(name: "_raw_spin_lock", scope: !6862, file: !6862, line: 22, type: !6863, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6862 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6863 = !DISubroutineType(types: !6864)
!6864 = !{null, !6107}
!6865 = !DISubprogram(name: "_raw_spin_unlock", scope: !6862, file: !6862, line: 39, type: !6863, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6866 = distinct !DISubprogram(name: "kref_get", scope: !222, file: !222, line: 43, type: !6867, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6870)
!6867 = !DISubroutineType(types: !6868)
!6868 = !{null, !6869}
!6869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!6870 = !{!6871}
!6871 = !DILocalVariable(name: "kref", arg: 1, scope: !6866, file: !222, line: 43, type: !6869)
!6872 = !DILocation(line: 43, column: 42, scope: !6866)
!6873 = !DILocation(line: 45, column: 16, scope: !6866)
!6874 = !DILocation(line: 45, column: 22, scope: !6866)
!6875 = !DILocation(line: 45, column: 2, scope: !6866)
!6876 = !DILocation(line: 46, column: 1, scope: !6866)
!6877 = distinct !DISubprogram(name: "refcount_inc", scope: !172, file: !172, line: 265, type: !6878, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6881)
!6878 = !DISubroutineType(types: !6879)
!6879 = !{null, !6880}
!6880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!6881 = !{!6882}
!6882 = !DILocalVariable(name: "r", arg: 1, scope: !6877, file: !172, line: 265, type: !6880)
!6883 = !DILocation(line: 265, column: 45, scope: !6877)
!6884 = !DILocation(line: 267, column: 17, scope: !6877)
!6885 = !DILocation(line: 267, column: 2, scope: !6877)
!6886 = !DILocation(line: 268, column: 1, scope: !6877)
!6887 = distinct !DISubprogram(name: "__refcount_inc", scope: !172, file: !172, line: 248, type: !6888, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6890)
!6888 = !DISubroutineType(types: !6889)
!6889 = !{null, !6880, !2056}
!6890 = !{!6891, !6892}
!6891 = !DILocalVariable(name: "r", arg: 1, scope: !6887, file: !172, line: 248, type: !6880)
!6892 = !DILocalVariable(name: "oldp", arg: 2, scope: !6887, file: !172, line: 248, type: !2056)
!6893 = !DILocation(line: 248, column: 47, scope: !6887)
!6894 = !DILocation(line: 248, column: 55, scope: !6887)
!6895 = !DILocation(line: 250, column: 20, scope: !6887)
!6896 = !DILocation(line: 250, column: 23, scope: !6887)
!6897 = !DILocation(line: 250, column: 2, scope: !6887)
!6898 = !DILocation(line: 251, column: 1, scope: !6887)
!6899 = distinct !DISubprogram(name: "__refcount_add", scope: !172, file: !172, line: 191, type: !6900, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6902)
!6900 = !DISubroutineType(types: !6901)
!6901 = !{null, !120, !6880, !2056}
!6902 = !{!6903, !6904, !6905, !6906}
!6903 = !DILocalVariable(name: "i", arg: 1, scope: !6899, file: !172, line: 191, type: !120)
!6904 = !DILocalVariable(name: "r", arg: 2, scope: !6899, file: !172, line: 191, type: !6880)
!6905 = !DILocalVariable(name: "oldp", arg: 3, scope: !6899, file: !172, line: 191, type: !2056)
!6906 = !DILocalVariable(name: "old", scope: !6899, file: !172, line: 193, type: !120)
!6907 = !DILocation(line: 191, column: 39, scope: !6899)
!6908 = !DILocation(line: 191, column: 54, scope: !6899)
!6909 = !DILocation(line: 191, column: 62, scope: !6899)
!6910 = !DILocation(line: 193, column: 2, scope: !6899)
!6911 = !DILocation(line: 193, column: 6, scope: !6899)
!6912 = !DILocation(line: 193, column: 37, scope: !6899)
!6913 = !DILocation(line: 193, column: 41, scope: !6899)
!6914 = !DILocation(line: 193, column: 44, scope: !6899)
!6915 = !DILocation(line: 193, column: 12, scope: !6899)
!6916 = !DILocation(line: 195, column: 6, scope: !6917)
!6917 = distinct !DILexicalBlock(scope: !6899, file: !172, line: 195, column: 6)
!6918 = !DILocation(line: 195, column: 6, scope: !6899)
!6919 = !DILocation(line: 196, column: 11, scope: !6917)
!6920 = !DILocation(line: 196, column: 4, scope: !6917)
!6921 = !DILocation(line: 196, column: 9, scope: !6917)
!6922 = !DILocation(line: 196, column: 3, scope: !6917)
!6923 = !DILocation(line: 198, column: 6, scope: !6924)
!6924 = distinct !DILexicalBlock(scope: !6899, file: !172, line: 198, column: 6)
!6925 = !DILocation(line: 198, column: 6, scope: !6899)
!6926 = !DILocation(line: 199, column: 26, scope: !6924)
!6927 = !DILocation(line: 199, column: 3, scope: !6924)
!6928 = !DILocation(line: 200, column: 11, scope: !6929)
!6929 = distinct !DILexicalBlock(scope: !6924, file: !172, line: 200, column: 11)
!6930 = !DILocation(line: 200, column: 11, scope: !6924)
!6931 = !DILocation(line: 201, column: 26, scope: !6929)
!6932 = !DILocation(line: 201, column: 3, scope: !6929)
!6933 = !DILocation(line: 202, column: 1, scope: !6899)
!6934 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !6935, file: !6935, line: 250, type: !6936, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6939)
!6935 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6936 = !DISubroutineType(types: !6937)
!6937 = !{!120, !120, !6938}
!6938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!6939 = !{!6940, !6941}
!6940 = !DILocalVariable(name: "i", arg: 1, scope: !6934, file: !6935, line: 250, type: !120)
!6941 = !DILocalVariable(name: "v", arg: 2, scope: !6934, file: !6935, line: 250, type: !6938)
!6942 = !DILocation(line: 250, column: 30, scope: !6934)
!6943 = !DILocation(line: 250, column: 43, scope: !6934)
!6944 = !DILocation(line: 252, column: 31, scope: !6934)
!6945 = !DILocation(line: 252, column: 2, scope: !6934)
!6946 = !DILocation(line: 253, column: 38, scope: !6934)
!6947 = !DILocation(line: 253, column: 41, scope: !6934)
!6948 = !DILocation(line: 253, column: 9, scope: !6934)
!6949 = !DILocation(line: 253, column: 2, scope: !6934)
!6950 = !DISubprogram(name: "refcount_warn_saturate", scope: !172, file: !172, line: 127, type: !6951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6951 = !DISubroutineType(types: !6952)
!6952 = !{null, !6880, !171}
!6953 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6954, file: !6954, line: 94, type: !6955, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6959)
!6954 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6955 = !DISubroutineType(types: !6956)
!6956 = !{null, !6957, !188}
!6957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6958, size: 64)
!6958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6729)
!6959 = !{!6960, !6961}
!6960 = !DILocalVariable(name: "v", arg: 1, scope: !6953, file: !6954, line: 94, type: !6957)
!6961 = !DILocalVariable(name: "size", arg: 2, scope: !6953, file: !6954, line: 94, type: !188)
!6962 = !DILocation(line: 94, column: 79, scope: !6953)
!6963 = !DILocation(line: 94, column: 89, scope: !6953)
!6964 = !DILocation(line: 96, column: 20, scope: !6953)
!6965 = !DILocation(line: 96, column: 23, scope: !6953)
!6966 = !DILocation(line: 96, column: 2, scope: !6953)
!6967 = !DILocation(line: 97, column: 2, scope: !6953)
!6968 = !DILocation(line: 98, column: 1, scope: !6953)
!6969 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !6970, file: !6970, line: 731, type: !6936, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6971)
!6970 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6971 = !{!6972, !6973}
!6972 = !DILocalVariable(name: "i", arg: 1, scope: !6969, file: !6970, line: 731, type: !120)
!6973 = !DILocalVariable(name: "v", arg: 2, scope: !6969, file: !6970, line: 731, type: !6938)
!6974 = !DILocation(line: 731, column: 34, scope: !6969)
!6975 = !DILocation(line: 731, column: 47, scope: !6969)
!6976 = !DILocation(line: 736, column: 31, scope: !6969)
!6977 = !DILocation(line: 736, column: 34, scope: !6969)
!6978 = !DILocation(line: 736, column: 9, scope: !6969)
!6979 = !DILocation(line: 736, column: 2, scope: !6969)
!6980 = distinct !DISubprogram(name: "kasan_check_write", scope: !6981, file: !6981, line: 44, type: !6982, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6984)
!6981 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6982 = !DISubroutineType(types: !6983)
!6983 = !{!210, !6957, !7}
!6984 = !{!6985, !6986}
!6985 = !DILocalVariable(name: "p", arg: 1, scope: !6980, file: !6981, line: 44, type: !6957)
!6986 = !DILocalVariable(name: "size", arg: 2, scope: !6980, file: !6981, line: 44, type: !7)
!6987 = !DILocation(line: 44, column: 59, scope: !6980)
!6988 = !DILocation(line: 44, column: 75, scope: !6980)
!6989 = !DILocation(line: 46, column: 2, scope: !6980)
!6990 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6991, file: !6991, line: 229, type: !6992, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6994)
!6991 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6992 = !DISubroutineType(types: !6993)
!6993 = !{null, !6957, !188, !120}
!6994 = !{!6995, !6996, !6997}
!6995 = !DILocalVariable(name: "ptr", arg: 1, scope: !6990, file: !6991, line: 229, type: !6957)
!6996 = !DILocalVariable(name: "size", arg: 2, scope: !6990, file: !6991, line: 229, type: !188)
!6997 = !DILocalVariable(name: "type", arg: 3, scope: !6990, file: !6991, line: 230, type: !120)
!6998 = !DILocation(line: 229, column: 60, scope: !6990)
!6999 = !DILocation(line: 229, column: 72, scope: !6990)
!7000 = !DILocation(line: 230, column: 15, scope: !6990)
!7001 = !DILocation(line: 230, column: 23, scope: !6990)
!7002 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !7003, file: !7003, line: 95, type: !6936, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7004)
!7003 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!7004 = !{!7005, !7006, !7007}
!7005 = !DILocalVariable(name: "i", arg: 1, scope: !7002, file: !7003, line: 95, type: !120)
!7006 = !DILocalVariable(name: "v", arg: 2, scope: !7002, file: !7003, line: 95, type: !6938)
!7007 = !DILocalVariable(name: "__ret", scope: !7008, file: !7003, line: 97, type: !120)
!7008 = distinct !DILexicalBlock(scope: !7002, file: !7003, line: 97, column: 9)
!7009 = !DILocation(line: 95, column: 54, scope: !7002)
!7010 = !DILocation(line: 95, column: 67, scope: !7002)
!7011 = !DILocation(line: 97, column: 9, scope: !7008)
!7012 = !{i64 2148611898, i64 2148611937, i64 2148611958, i64 2148611995, i64 2148612018, i64 2148612027}
!7013 = !DILocation(line: 97, column: 9, scope: !7002)
!7014 = !DILocation(line: 97, column: 2, scope: !7002)
!7015 = !DISubprogram(name: "dma_fence_wait_timeout", scope: !4500, file: !4500, line: 605, type: !4521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7016 = distinct !DISubprogram(name: "kref_put", scope: !222, file: !222, line: 62, type: !7017, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7020)
!7017 = !DISubroutineType(types: !7018)
!7018 = !{!120, !6869, !7019}
!7019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6867, size: 64)
!7020 = !{!7021, !7022}
!7021 = !DILocalVariable(name: "kref", arg: 1, scope: !7016, file: !222, line: 62, type: !6869)
!7022 = !DILocalVariable(name: "release", arg: 2, scope: !7016, file: !222, line: 62, type: !7019)
!7023 = !DILocation(line: 62, column: 41, scope: !7016)
!7024 = !DILocation(line: 62, column: 54, scope: !7016)
!7025 = !DILocation(line: 64, column: 29, scope: !7026)
!7026 = distinct !DILexicalBlock(scope: !7016, file: !222, line: 64, column: 6)
!7027 = !DILocation(line: 64, column: 35, scope: !7026)
!7028 = !DILocation(line: 64, column: 6, scope: !7026)
!7029 = !DILocation(line: 64, column: 6, scope: !7016)
!7030 = !DILocation(line: 65, column: 3, scope: !7031)
!7031 = distinct !DILexicalBlock(scope: !7026, file: !222, line: 64, column: 46)
!7032 = !DILocation(line: 65, column: 11, scope: !7031)
!7033 = !DILocation(line: 66, column: 3, scope: !7031)
!7034 = !DILocation(line: 68, column: 2, scope: !7016)
!7035 = !DILocation(line: 69, column: 1, scope: !7016)
!7036 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !172, file: !172, line: 331, type: !7037, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7039)
!7037 = !DISubroutineType(types: !7038)
!7038 = !{!210, !6880}
!7039 = !{!7040}
!7040 = !DILocalVariable(name: "r", arg: 1, scope: !7036, file: !172, line: 331, type: !6880)
!7041 = !DILocation(line: 331, column: 67, scope: !7036)
!7042 = !DILocation(line: 333, column: 33, scope: !7036)
!7043 = !DILocation(line: 333, column: 9, scope: !7036)
!7044 = !DILocation(line: 333, column: 2, scope: !7036)
!7045 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !172, file: !172, line: 313, type: !7046, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7048)
!7046 = !DISubroutineType(types: !7047)
!7047 = !{!210, !6880, !2056}
!7048 = !{!7049, !7050}
!7049 = !DILocalVariable(name: "r", arg: 1, scope: !7045, file: !172, line: 313, type: !6880)
!7050 = !DILocalVariable(name: "oldp", arg: 2, scope: !7045, file: !172, line: 313, type: !2056)
!7051 = !DILocation(line: 313, column: 69, scope: !7045)
!7052 = !DILocation(line: 313, column: 77, scope: !7045)
!7053 = !DILocation(line: 315, column: 36, scope: !7045)
!7054 = !DILocation(line: 315, column: 39, scope: !7045)
!7055 = !DILocation(line: 315, column: 9, scope: !7045)
!7056 = !DILocation(line: 315, column: 2, scope: !7045)
!7057 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !172, file: !172, line: 270, type: !7058, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7060)
!7058 = !DISubroutineType(types: !7059)
!7059 = !{!210, !120, !6880, !2056}
!7060 = !{!7061, !7062, !7063, !7064}
!7061 = !DILocalVariable(name: "i", arg: 1, scope: !7057, file: !172, line: 270, type: !120)
!7062 = !DILocalVariable(name: "r", arg: 2, scope: !7057, file: !172, line: 270, type: !6880)
!7063 = !DILocalVariable(name: "oldp", arg: 3, scope: !7057, file: !172, line: 270, type: !2056)
!7064 = !DILocalVariable(name: "old", scope: !7057, file: !172, line: 272, type: !120)
!7065 = !DILocation(line: 270, column: 61, scope: !7057)
!7066 = !DILocation(line: 270, column: 76, scope: !7057)
!7067 = !DILocation(line: 270, column: 84, scope: !7057)
!7068 = !DILocation(line: 272, column: 2, scope: !7057)
!7069 = !DILocation(line: 272, column: 6, scope: !7057)
!7070 = !DILocation(line: 272, column: 37, scope: !7057)
!7071 = !DILocation(line: 272, column: 41, scope: !7057)
!7072 = !DILocation(line: 272, column: 44, scope: !7057)
!7073 = !DILocation(line: 272, column: 12, scope: !7057)
!7074 = !DILocation(line: 274, column: 6, scope: !7075)
!7075 = distinct !DILexicalBlock(scope: !7057, file: !172, line: 274, column: 6)
!7076 = !DILocation(line: 274, column: 6, scope: !7057)
!7077 = !DILocation(line: 275, column: 11, scope: !7075)
!7078 = !DILocation(line: 275, column: 4, scope: !7075)
!7079 = !DILocation(line: 275, column: 9, scope: !7075)
!7080 = !DILocation(line: 275, column: 3, scope: !7075)
!7081 = !DILocation(line: 277, column: 6, scope: !7082)
!7082 = distinct !DILexicalBlock(scope: !7057, file: !172, line: 277, column: 6)
!7083 = !DILocation(line: 277, column: 13, scope: !7082)
!7084 = !DILocation(line: 277, column: 10, scope: !7082)
!7085 = !DILocation(line: 277, column: 6, scope: !7057)
!7086 = !DILocation(line: 278, column: 3, scope: !7087)
!7087 = distinct !DILexicalBlock(scope: !7082, file: !172, line: 277, column: 16)
!7088 = !DILocation(line: 278, column: 3, scope: !7089)
!7089 = distinct !DILexicalBlock(scope: !7087, file: !172, line: 278, column: 3)
!7090 = !DILocation(line: 278, column: 3, scope: !7091)
!7091 = distinct !DILexicalBlock(scope: !7089, file: !172, line: 278, column: 3)
!7092 = !DILocation(line: 278, column: 3, scope: !7093)
!7093 = distinct !DILexicalBlock(scope: !7089, file: !172, line: 278, column: 3)
!7094 = !DILocation(line: 278, column: 3, scope: !7095)
!7095 = distinct !DILexicalBlock(scope: !7093, file: !172, line: 278, column: 3)
!7096 = !{i64 2150461427}
!7097 = !DILocation(line: 279, column: 3, scope: !7087)
!7098 = !DILocation(line: 282, column: 6, scope: !7099)
!7099 = distinct !DILexicalBlock(scope: !7057, file: !172, line: 282, column: 6)
!7100 = !DILocation(line: 282, column: 6, scope: !7057)
!7101 = !DILocation(line: 283, column: 26, scope: !7099)
!7102 = !DILocation(line: 283, column: 3, scope: !7099)
!7103 = !DILocation(line: 285, column: 2, scope: !7057)
!7104 = !DILocation(line: 286, column: 1, scope: !7057)
!7105 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !6935, file: !6935, line: 397, type: !6936, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7106)
!7106 = !{!7107, !7108}
!7107 = !DILocalVariable(name: "i", arg: 1, scope: !7105, file: !6935, line: 397, type: !120)
!7108 = !DILocalVariable(name: "v", arg: 2, scope: !7105, file: !6935, line: 397, type: !6938)
!7109 = !DILocation(line: 397, column: 30, scope: !7105)
!7110 = !DILocation(line: 397, column: 43, scope: !7105)
!7111 = !DILocation(line: 399, column: 2, scope: !7105)
!7112 = !DILocation(line: 399, column: 2, scope: !7113)
!7113 = distinct !DILexicalBlock(scope: !7105, file: !6935, line: 399, column: 2)
!7114 = !DILocation(line: 400, column: 31, scope: !7105)
!7115 = !DILocation(line: 400, column: 2, scope: !7105)
!7116 = !DILocation(line: 401, column: 38, scope: !7105)
!7117 = !DILocation(line: 401, column: 41, scope: !7105)
!7118 = !DILocation(line: 401, column: 9, scope: !7105)
!7119 = !DILocation(line: 401, column: 2, scope: !7105)
!7120 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !6970, file: !6970, line: 928, type: !6936, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7121)
!7121 = !{!7122, !7123}
!7122 = !DILocalVariable(name: "i", arg: 1, scope: !7120, file: !6970, line: 928, type: !120)
!7123 = !DILocalVariable(name: "v", arg: 2, scope: !7120, file: !6970, line: 928, type: !6938)
!7124 = !DILocation(line: 928, column: 34, scope: !7120)
!7125 = !DILocation(line: 928, column: 47, scope: !7120)
!7126 = !DILocation(line: 936, column: 31, scope: !7120)
!7127 = !DILocation(line: 936, column: 34, scope: !7120)
!7128 = !DILocation(line: 936, column: 9, scope: !7120)
!7129 = !DILocation(line: 936, column: 2, scope: !7120)
!7130 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !7003, file: !7003, line: 101, type: !6936, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7131)
!7131 = !{!7132, !7133, !7134}
!7132 = !DILocalVariable(name: "i", arg: 1, scope: !7130, file: !7003, line: 101, type: !120)
!7133 = !DILocalVariable(name: "v", arg: 2, scope: !7130, file: !7003, line: 101, type: !6938)
!7134 = !DILocalVariable(name: "__ret", scope: !7135, file: !7003, line: 103, type: !120)
!7135 = distinct !DILexicalBlock(scope: !7130, file: !7003, line: 103, column: 9)
!7136 = !DILocation(line: 101, column: 54, scope: !7130)
!7137 = !DILocation(line: 101, column: 67, scope: !7130)
!7138 = !DILocation(line: 103, column: 9, scope: !7135)
!7139 = !{i64 2148614083, i64 2148614122, i64 2148614143, i64 2148614180, i64 2148614203, i64 2148614212}
!7140 = !DILocation(line: 103, column: 9, scope: !7130)
!7141 = !DILocation(line: 103, column: 2, scope: !7130)
!7142 = distinct !DISubprogram(name: "ttm_kmap_iter_iomap_map_local", scope: !3, file: !3, line: 542, type: !5076, scopeLine: 545, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7143)
!7143 = !{!7144, !7145, !7146, !7147, !7148, !7150, !7151}
!7144 = !DILocalVariable(name: "iter", arg: 1, scope: !7142, file: !3, line: 542, type: !5078)
!7145 = !DILocalVariable(name: "dmap", arg: 2, scope: !7142, file: !3, line: 543, type: !4343)
!7146 = !DILocalVariable(name: "i", arg: 3, scope: !7142, file: !3, line: 544, type: !186)
!7147 = !DILocalVariable(name: "iter_io", scope: !7142, file: !3, line: 546, type: !5062)
!7148 = !DILocalVariable(name: "__mptr", scope: !7149, file: !3, line: 547, type: !180)
!7149 = distinct !DILexicalBlock(scope: !7142, file: !3, line: 547, column: 3)
!7150 = !DILocalVariable(name: "addr", scope: !7142, file: !3, line: 548, type: !180)
!7151 = !DILabel(scope: !7142, name: "retry", file: !3, line: 550)
!7152 = !DILocation(line: 542, column: 65, scope: !7142)
!7153 = !DILocation(line: 543, column: 26, scope: !7142)
!7154 = !DILocation(line: 544, column: 16, scope: !7142)
!7155 = !DILocation(line: 546, column: 2, scope: !7142)
!7156 = !DILocation(line: 546, column: 30, scope: !7142)
!7157 = !DILocation(line: 547, column: 3, scope: !7149)
!7158 = !DILocation(line: 547, column: 3, scope: !7142)
!7159 = !DILocation(line: 548, column: 2, scope: !7142)
!7160 = !DILocation(line: 548, column: 16, scope: !7142)
!7161 = !DILocation(line: 550, column: 1, scope: !7142)
!7162 = !DILocation(line: 551, column: 2, scope: !7142)
!7163 = !DILocation(line: 551, column: 9, scope: !7142)
!7164 = !DILocation(line: 551, column: 14, scope: !7142)
!7165 = !DILocation(line: 551, column: 23, scope: !7142)
!7166 = !DILocation(line: 551, column: 29, scope: !7142)
!7167 = !DILocation(line: 551, column: 11, scope: !7142)
!7168 = !DILocation(line: 552, column: 23, scope: !7169)
!7169 = distinct !DILexicalBlock(scope: !7142, file: !3, line: 551, column: 34)
!7170 = !DILocation(line: 552, column: 32, scope: !7169)
!7171 = !DILocation(line: 552, column: 38, scope: !7169)
!7172 = !DILocation(line: 553, column: 12, scope: !7169)
!7173 = !DILocation(line: 553, column: 21, scope: !7169)
!7174 = !DILocation(line: 553, column: 27, scope: !7169)
!7175 = !DILocation(line: 553, column: 4, scope: !7169)
!7176 = !DILocation(line: 553, column: 33, scope: !7169)
!7177 = !DILocation(line: 553, column: 42, scope: !7169)
!7178 = !DILocation(line: 553, column: 46, scope: !7169)
!7179 = !DILocation(line: 552, column: 3, scope: !7169)
!7180 = !DILocation(line: 552, column: 12, scope: !7169)
!7181 = !DILocation(line: 552, column: 18, scope: !7169)
!7182 = !DILocation(line: 552, column: 21, scope: !7169)
!7183 = !DILocation(line: 554, column: 22, scope: !7169)
!7184 = !DILocation(line: 554, column: 31, scope: !7169)
!7185 = !DILocation(line: 554, column: 37, scope: !7169)
!7186 = !DILocation(line: 554, column: 3, scope: !7169)
!7187 = !DILocation(line: 554, column: 12, scope: !7169)
!7188 = !DILocation(line: 554, column: 18, scope: !7169)
!7189 = !DILocation(line: 554, column: 20, scope: !7169)
!7190 = !DILocation(line: 555, column: 25, scope: !7169)
!7191 = !DILocation(line: 555, column: 55, scope: !7169)
!7192 = !DILocation(line: 555, column: 3, scope: !7169)
!7193 = !DILocation(line: 555, column: 12, scope: !7169)
!7194 = !DILocation(line: 555, column: 18, scope: !7169)
!7195 = !DILocation(line: 555, column: 22, scope: !7169)
!7196 = !DILocation(line: 557, column: 25, scope: !7169)
!7197 = !DILocation(line: 558, column: 4, scope: !7169)
!7198 = !DILocation(line: 558, column: 13, scope: !7169)
!7199 = !DILocation(line: 557, column: 59, scope: !7169)
!7200 = !DILocation(line: 557, column: 3, scope: !7169)
!7201 = !DILocation(line: 557, column: 12, scope: !7169)
!7202 = !DILocation(line: 557, column: 18, scope: !7169)
!7203 = !DILocation(line: 557, column: 23, scope: !7169)
!7204 = distinct !{!7204, !7162, !7205, !5246, !5247}
!7205 = !DILocation(line: 559, column: 2, scope: !7142)
!7206 = !DILocation(line: 561, column: 6, scope: !7207)
!7207 = distinct !DILexicalBlock(scope: !7142, file: !3, line: 561, column: 6)
!7208 = !DILocation(line: 561, column: 10, scope: !7207)
!7209 = !DILocation(line: 561, column: 19, scope: !7207)
!7210 = !DILocation(line: 561, column: 25, scope: !7207)
!7211 = !DILocation(line: 561, column: 8, scope: !7207)
!7212 = !DILocation(line: 561, column: 6, scope: !7142)
!7213 = !DILocation(line: 562, column: 3, scope: !7214)
!7214 = distinct !DILexicalBlock(scope: !7207, file: !3, line: 561, column: 28)
!7215 = !DILocation(line: 562, column: 12, scope: !7214)
!7216 = !DILocation(line: 562, column: 18, scope: !7214)
!7217 = !DILocation(line: 562, column: 22, scope: !7214)
!7218 = !DILocation(line: 563, column: 3, scope: !7214)
!7219 = !DILocation(line: 563, column: 12, scope: !7214)
!7220 = !DILocation(line: 563, column: 18, scope: !7214)
!7221 = !DILocation(line: 563, column: 21, scope: !7214)
!7222 = !DILocation(line: 564, column: 3, scope: !7214)
!7223 = !DILocation(line: 567, column: 33, scope: !7142)
!7224 = !DILocation(line: 567, column: 42, scope: !7142)
!7225 = !DILocation(line: 567, column: 49, scope: !7142)
!7226 = !DILocation(line: 567, column: 58, scope: !7142)
!7227 = !DILocation(line: 567, column: 64, scope: !7142)
!7228 = !DILocation(line: 568, column: 31, scope: !7142)
!7229 = !DILocation(line: 568, column: 35, scope: !7142)
!7230 = !DILocation(line: 568, column: 44, scope: !7142)
!7231 = !DILocation(line: 568, column: 50, scope: !7142)
!7232 = !DILocation(line: 568, column: 33, scope: !7142)
!7233 = !DILocation(line: 569, column: 6, scope: !7142)
!7234 = !DILocation(line: 567, column: 69, scope: !7142)
!7235 = !DILocation(line: 567, column: 9, scope: !7142)
!7236 = !DILocation(line: 567, column: 7, scope: !7142)
!7237 = !DILocation(line: 570, column: 28, scope: !7142)
!7238 = !DILocation(line: 570, column: 34, scope: !7142)
!7239 = !DILocation(line: 570, column: 2, scope: !7142)
!7240 = !DILocation(line: 571, column: 1, scope: !7142)
!7241 = distinct !DISubprogram(name: "ttm_kmap_iter_iomap_unmap_local", scope: !3, file: !3, line: 573, type: !5081, scopeLine: 575, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7242)
!7242 = !{!7243, !7244}
!7243 = !DILocalVariable(name: "iter", arg: 1, scope: !7241, file: !3, line: 573, type: !5078)
!7244 = !DILocalVariable(name: "map", arg: 2, scope: !7241, file: !3, line: 574, type: !4343)
!7245 = !DILocation(line: 573, column: 67, scope: !7241)
!7246 = !DILocation(line: 574, column: 28, scope: !7241)
!7247 = !DILocation(line: 576, column: 25, scope: !7241)
!7248 = !DILocation(line: 576, column: 30, scope: !7241)
!7249 = !DILocation(line: 576, column: 2, scope: !7241)
!7250 = !DILocation(line: 577, column: 1, scope: !7241)
!7251 = !DISubprogram(name: "sg_next", scope: !4324, file: !4324, line: 421, type: !7252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7252 = !DISubroutineType(types: !7253)
!7253 = !{!4327, !4327}
!7254 = distinct !DISubprogram(name: "io_mapping_map_local_wc", scope: !5087, file: !5087, line: 191, type: !7255, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7257)
!7255 = !DISubroutineType(types: !7256)
!7256 = !{!180, !5085, !186}
!7257 = !{!7258, !7259}
!7258 = !DILocalVariable(name: "mapping", arg: 1, scope: !7254, file: !5087, line: 191, type: !5085)
!7259 = !DILocalVariable(name: "offset", arg: 2, scope: !7254, file: !5087, line: 191, type: !186)
!7260 = !DILocation(line: 191, column: 44, scope: !7254)
!7261 = !DILocation(line: 191, column: 67, scope: !7254)
!7262 = !DILocation(line: 193, column: 27, scope: !7254)
!7263 = !DILocation(line: 193, column: 36, scope: !7254)
!7264 = !DILocation(line: 193, column: 9, scope: !7254)
!7265 = !DILocation(line: 193, column: 2, scope: !7254)
!7266 = distinct !DISubprogram(name: "io_mapping_map_wc", scope: !5087, file: !5087, line: 154, type: !7267, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7269)
!7267 = !DISubroutineType(types: !7268)
!7268 = !{!180, !5085, !186, !186}
!7269 = !{!7270, !7271, !7272}
!7270 = !DILocalVariable(name: "mapping", arg: 1, scope: !7266, file: !5087, line: 154, type: !5085)
!7271 = !DILocalVariable(name: "offset", arg: 2, scope: !7266, file: !5087, line: 155, type: !186)
!7272 = !DILocalVariable(name: "size", arg: 3, scope: !7266, file: !5087, line: 156, type: !186)
!7273 = !DILocation(line: 154, column: 38, scope: !7266)
!7274 = !DILocation(line: 155, column: 19, scope: !7266)
!7275 = !DILocation(line: 156, column: 19, scope: !7266)
!7276 = !DILocation(line: 158, column: 9, scope: !7266)
!7277 = !DILocation(line: 158, column: 18, scope: !7266)
!7278 = !DILocation(line: 158, column: 26, scope: !7266)
!7279 = !DILocation(line: 158, column: 24, scope: !7266)
!7280 = !DILocation(line: 158, column: 2, scope: !7266)
!7281 = distinct !DISubprogram(name: "io_mapping_unmap_local", scope: !5087, file: !5087, line: 196, type: !718, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7282)
!7282 = !{!7283}
!7283 = !DILocalVariable(name: "vaddr", arg: 1, scope: !7281, file: !5087, line: 196, type: !180)
!7284 = !DILocation(line: 196, column: 57, scope: !7281)
!7285 = !DILocation(line: 198, column: 19, scope: !7281)
!7286 = !DILocation(line: 198, column: 2, scope: !7281)
!7287 = !DILocation(line: 199, column: 1, scope: !7281)
!7288 = distinct !DISubprogram(name: "io_mapping_unmap", scope: !5087, file: !5087, line: 162, type: !718, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7289)
!7289 = !{!7290}
!7290 = !DILocalVariable(name: "vaddr", arg: 1, scope: !7288, file: !5087, line: 162, type: !180)
!7291 = !DILocation(line: 162, column: 32, scope: !7288)
!7292 = !DILocation(line: 164, column: 1, scope: !7288)
!7293 = distinct !DISubprogram(name: "ttm_kmap_iter_linear_io_map_local", scope: !3, file: !3, line: 624, type: !5076, scopeLine: 627, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7294)
!7294 = !{!7295, !7296, !7297, !7298, !7299}
!7295 = !DILocalVariable(name: "iter", arg: 1, scope: !7293, file: !3, line: 624, type: !5078)
!7296 = !DILocalVariable(name: "dmap", arg: 2, scope: !7293, file: !3, line: 625, type: !4343)
!7297 = !DILocalVariable(name: "i", arg: 3, scope: !7293, file: !3, line: 626, type: !186)
!7298 = !DILocalVariable(name: "iter_io", scope: !7293, file: !3, line: 628, type: !5103)
!7299 = !DILocalVariable(name: "__mptr", scope: !7300, file: !3, line: 629, type: !180)
!7300 = distinct !DILexicalBlock(scope: !7293, file: !3, line: 629, column: 3)
!7301 = !DILocation(line: 624, column: 69, scope: !7293)
!7302 = !DILocation(line: 625, column: 30, scope: !7293)
!7303 = !DILocation(line: 626, column: 20, scope: !7293)
!7304 = !DILocation(line: 628, column: 2, scope: !7293)
!7305 = !DILocation(line: 628, column: 34, scope: !7293)
!7306 = !DILocation(line: 629, column: 3, scope: !7300)
!7307 = !DILocation(line: 629, column: 3, scope: !7293)
!7308 = !DILocation(line: 631, column: 3, scope: !7293)
!7309 = !DILocation(line: 631, column: 10, scope: !7293)
!7310 = !DILocation(line: 631, column: 19, scope: !7293)
!7311 = !DILocation(line: 632, column: 17, scope: !7293)
!7312 = !DILocation(line: 632, column: 23, scope: !7293)
!7313 = !DILocation(line: 632, column: 25, scope: !7293)
!7314 = !DILocation(line: 632, column: 2, scope: !7293)
!7315 = !DILocation(line: 633, column: 1, scope: !7293)
!7316 = distinct !DISubprogram(name: "iosys_map_incr", scope: !4345, file: !4345, line: 323, type: !7317, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7319)
!7317 = !DISubroutineType(types: !7318)
!7318 = !{null, !4343, !188}
!7319 = !{!7320, !7321}
!7320 = !DILocalVariable(name: "map", arg: 1, scope: !7316, file: !4345, line: 323, type: !4343)
!7321 = !DILocalVariable(name: "incr", arg: 2, scope: !7316, file: !4345, line: 323, type: !188)
!7322 = !DILocation(line: 323, column: 53, scope: !7316)
!7323 = !DILocation(line: 323, column: 65, scope: !7316)
!7324 = !DILocation(line: 325, column: 6, scope: !7325)
!7325 = distinct !DILexicalBlock(scope: !7316, file: !4345, line: 325, column: 6)
!7326 = !DILocation(line: 325, column: 11, scope: !7325)
!7327 = !DILocation(line: 325, column: 6, scope: !7316)
!7328 = !DILocation(line: 326, column: 23, scope: !7325)
!7329 = !DILocation(line: 326, column: 3, scope: !7325)
!7330 = !DILocation(line: 326, column: 8, scope: !7325)
!7331 = !DILocation(line: 326, column: 20, scope: !7325)
!7332 = !DILocation(line: 328, column: 17, scope: !7325)
!7333 = !DILocation(line: 328, column: 3, scope: !7325)
!7334 = !DILocation(line: 328, column: 8, scope: !7325)
!7335 = !DILocation(line: 328, column: 14, scope: !7325)
!7336 = !DILocation(line: 329, column: 1, scope: !7316)
!7337 = distinct !DISubprogram(name: "ttm_resource_manager_open", scope: !3, file: !3, line: 739, type: !4042, scopeLine: 739, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7338)
!7338 = !{!7339, !7340}
!7339 = !DILocalVariable(name: "inode", arg: 1, scope: !7337, file: !3, line: 739, type: !685)
!7340 = !DILocalVariable(name: "file", arg: 2, scope: !7337, file: !3, line: 739, type: !238)
!7341 = !DILocation(line: 739, column: 1, scope: !7337)
!7342 = !DISubprogram(name: "single_open", scope: !1820, file: !1820, line: 166, type: !7343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7343 = !DISubroutineType(types: !7344)
!7344 = !{!120, !238, !1849, !180}
!7345 = distinct !DISubprogram(name: "ttm_resource_manager_show", scope: !3, file: !3, line: 731, type: !1850, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7346)
!7346 = !{!7347, !7348, !7349, !7350}
!7347 = !DILocalVariable(name: "m", arg: 1, scope: !7345, file: !3, line: 731, type: !1818)
!7348 = !DILocalVariable(name: "unused", arg: 2, scope: !7345, file: !3, line: 731, type: !180)
!7349 = !DILocalVariable(name: "man", scope: !7345, file: !3, line: 733, type: !4481)
!7350 = !DILocalVariable(name: "p", scope: !7345, file: !3, line: 735, type: !4277)
!7351 = !DILocation(line: 731, column: 55, scope: !7345)
!7352 = !DILocation(line: 731, column: 64, scope: !7345)
!7353 = !DILocation(line: 733, column: 2, scope: !7345)
!7354 = !DILocation(line: 733, column: 31, scope: !7345)
!7355 = !DILocation(line: 734, column: 34, scope: !7345)
!7356 = !DILocation(line: 734, column: 37, scope: !7345)
!7357 = !DILocation(line: 735, column: 2, scope: !7345)
!7358 = !DILocation(line: 735, column: 21, scope: !7345)
!7359 = !DILocation(line: 735, column: 46, scope: !7345)
!7360 = !DILocation(line: 735, column: 25, scope: !7345)
!7361 = !DILocation(line: 736, column: 29, scope: !7345)
!7362 = !DILocation(line: 736, column: 2, scope: !7345)
!7363 = !DILocation(line: 738, column: 1, scope: !7345)
!7364 = !DILocation(line: 737, column: 2, scope: !7345)
!7365 = distinct !DISubprogram(name: "drm_seq_file_printer", scope: !4278, file: !4278, line: 247, type: !7366, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7368)
!7366 = !DISubroutineType(types: !7367)
!7367 = !{!4277, !1818}
!7368 = !{!7369, !7370}
!7369 = !DILocalVariable(name: "f", arg: 1, scope: !7365, file: !4278, line: 247, type: !1818)
!7370 = !DILocalVariable(name: "p", scope: !7365, file: !4278, line: 249, type: !4277)
!7371 = !DILocation(line: 247, column: 72, scope: !7365)
!7372 = !DILocation(line: 249, column: 21, scope: !7365)
!7373 = !DILocation(line: 249, column: 25, scope: !7365)
!7374 = !DILocation(line: 252, column: 10, scope: !7365)
!7375 = !DILocation(line: 254, column: 2, scope: !7365)
