; ModuleID = 'drivers/gpu/drm/ttm/ttm_device.c'
source_filename = "drivers/gpu/drm/ttm/ttm_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_glob: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_glob ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_device_swapout: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_device_swapout ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_device_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_device_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_device_fini: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_device_fini ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_device_clear_dma_mappings: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_device_clear_dma_mappings ; .previous"

%struct.ttm_global = type { ptr, %struct.list_head, %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.ttm_resource_manager = type { i8, i8, ptr, i64, ptr, %struct.spinlock, ptr, [4 x %struct.list_head], i64 }
%struct.ttm_pool = type { ptr, i32, i8, i8, [3 x %struct.anon.13] }
%struct.anon.13 = type { [11 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.ttm_resource_cursor = type { i32 }
%struct.ttm_resource = type { i64, i64, i32, i32, %struct.ttm_bus_placement, ptr, %struct.list_head }
%struct.ttm_bus_placement = type { ptr, i64, i8, i32 }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, ptr, i32, i32, %struct.work_struct, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i64, i32, ptr, ptr, ptr, %struct.dma_resv, %struct.anon.16, ptr, %struct.list_head, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.14, %struct.qspinlock }
%union.anon.14 = type { %struct.atomic_t }
%struct.drm_mm_node = type { i64, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.anon.16 = type { %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.sysinfo = type { i64, [3 x i64], i64, i64, i64, i64, i64, i64, i16, i16, i64, i64, i32, [0 x i8] }

@ttm_glob = hidden global %struct.ttm_global zeroinitializer, align 8, !dbg !0
@__UNIQUE_ID___addressable_ttm_glob327 = internal global ptr @ttm_glob, section ".discard.addressable", align 8, !dbg !5101
@ttm_global_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ttm_global_mutex, i64 16), ptr getelementptr (i8, ptr @ttm_global_mutex, i64 16) } }, align 8, !dbg !5121
@__UNIQUE_ID___addressable_ttm_device_swapout330 = internal global ptr @ttm_device_swapout, section ".discard.addressable", align 8, !dbg !5103
@.str = private unnamed_addr constant [33 x i8] c"drivers/gpu/drm/ttm/ttm_device.c\00", align 1, !dbg !5105
@.str.1 = private unnamed_addr constant [4 x i8] c"ttm\00", align 1, !dbg !5110
@__UNIQUE_ID___addressable_ttm_device_init331 = internal global ptr @ttm_device_init, section ".discard.addressable", align 8, !dbg !5113
@__UNIQUE_ID___addressable_ttm_device_fini332 = internal global ptr @ttm_device_fini, section ".discard.addressable", align 8, !dbg !5115
@__UNIQUE_ID___addressable_ttm_device_clear_dma_mappings334 = internal global ptr @ttm_device_clear_dma_mappings, section ".discard.addressable", align 8, !dbg !5117
@ttm_debugfs_root = hidden global ptr null, align 8, !dbg !5119
@ttm_glob_use_count = internal global i32 0, align 4, !dbg !5128
@.str.2 = private unnamed_addr constant [15 x i8] c"buffer_objects\00", align 1, !dbg !5123
@.str.3 = private unnamed_addr constant [31 x i8] c"include/drm/ttm/ttm_resource.h\00", align 1, !dbg !5130
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID___addressable_ttm_glob327, ptr @__UNIQUE_ID___addressable_ttm_device_swapout330, ptr @__UNIQUE_ID___addressable_ttm_device_init331, ptr @__UNIQUE_ID___addressable_ttm_device_fini332, ptr @__UNIQUE_ID___addressable_ttm_device_clear_dma_mappings334], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ttm_global_swapout(ptr noundef %ctx, i32 noundef %gfp_flags) #0 align 16 !dbg !5149 {
entry:
  %ctx.addr = alloca ptr, align 8
  %gfp_flags.addr = alloca i32, align 4
  %glob = alloca ptr, align 8
  %bdev = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !5153, metadata !DIExpression()), !dbg !5165
  store i32 %gfp_flags, ptr %gfp_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_flags.addr, metadata !5154, metadata !DIExpression()), !dbg !5166
  call void @llvm.lifetime.start.p0(i64 8, ptr %glob) #13, !dbg !5167
  call void @llvm.dbg.declare(metadata ptr %glob, metadata !5155, metadata !DIExpression()), !dbg !5168
  store ptr @ttm_glob, ptr %glob, align 8, !dbg !5168
  call void @llvm.lifetime.start.p0(i64 8, ptr %bdev) #13, !dbg !5169
  call void @llvm.dbg.declare(metadata ptr %bdev, metadata !5157, metadata !DIExpression()), !dbg !5170
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !5171
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5158, metadata !DIExpression()), !dbg !5172
  store i32 0, ptr %ret, align 4, !dbg !5172
  call void @mutex_lock(ptr noundef @ttm_global_mutex) #14, !dbg !5173
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !5174
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5159, metadata !DIExpression()), !dbg !5174
  %0 = load ptr, ptr %glob, align 8, !dbg !5174
  %device_list = getelementptr inbounds %struct.ttm_global, ptr %0, i32 0, i32 1, !dbg !5174
  %next = getelementptr inbounds %struct.list_head, ptr %device_list, i32 0, i32 0, !dbg !5174
  %1 = load ptr, ptr %next, align 8, !dbg !5174
  store ptr %1, ptr %__mptr, align 8, !dbg !5174
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5174
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !5174
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5174
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !5175
  %3 = load ptr, ptr %tmp, align 8, !dbg !5174
  store ptr %3, ptr %bdev, align 8, !dbg !5175
  br label %for.cond, !dbg !5175

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %bdev, align 8, !dbg !5176
  %device_list1 = getelementptr inbounds %struct.ttm_device, ptr %4, i32 0, i32 0, !dbg !5176
  %5 = load ptr, ptr %glob, align 8, !dbg !5176
  %device_list2 = getelementptr inbounds %struct.ttm_global, ptr %5, i32 0, i32 1, !dbg !5176
  %cmp = icmp eq ptr %device_list1, %device_list2, !dbg !5176
  %lnot = xor i1 %cmp, true, !dbg !5176
  br i1 %lnot, label %for.body, label %for.end, !dbg !5175

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %bdev, align 8, !dbg !5177
  %7 = load ptr, ptr %ctx.addr, align 8, !dbg !5179
  %8 = load i32, ptr %gfp_flags.addr, align 4, !dbg !5180
  %call = call i32 @ttm_device_swapout(ptr noundef %6, ptr noundef %7, i32 noundef %8) #14, !dbg !5181
  store i32 %call, ptr %ret, align 4, !dbg !5182
  %9 = load i32, ptr %ret, align 4, !dbg !5183
  %cmp3 = icmp sgt i32 %9, 0, !dbg !5185
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5186

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %bdev, align 8, !dbg !5187
  %device_list4 = getelementptr inbounds %struct.ttm_device, ptr %10, i32 0, i32 0, !dbg !5189
  %11 = load ptr, ptr %glob, align 8, !dbg !5190
  %device_list5 = getelementptr inbounds %struct.ttm_global, ptr %11, i32 0, i32 1, !dbg !5191
  call void @list_move_tail(ptr noundef %device_list4, ptr noundef %device_list5) #14, !dbg !5192
  br label %for.end, !dbg !5193

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5194

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #13, !dbg !5195
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !5162, metadata !DIExpression()), !dbg !5195
  %12 = load ptr, ptr %bdev, align 8, !dbg !5195
  %device_list7 = getelementptr inbounds %struct.ttm_device, ptr %12, i32 0, i32 0, !dbg !5195
  %next8 = getelementptr inbounds %struct.list_head, ptr %device_list7, i32 0, i32 0, !dbg !5195
  %13 = load ptr, ptr %next8, align 8, !dbg !5195
  store ptr %13, ptr %__mptr6, align 8, !dbg !5195
  %14 = load ptr, ptr %__mptr6, align 8, !dbg !5195
  %add.ptr10 = getelementptr i8, ptr %14, i64 0, !dbg !5195
  store ptr %add.ptr10, ptr %tmp9, align 8, !dbg !5195
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #13, !dbg !5176
  %15 = load ptr, ptr %tmp9, align 8, !dbg !5195
  store ptr %15, ptr %bdev, align 8, !dbg !5176
  br label %for.cond, !dbg !5176, !llvm.loop !5196

for.end:                                          ; preds = %if.then, %for.cond
  call void @mutex_unlock(ptr noundef @ttm_global_mutex) #14, !dbg !5200
  %16 = load i32, ptr %ret, align 4, !dbg !5201
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !5202
  call void @llvm.lifetime.end.p0(i64 8, ptr %bdev) #13, !dbg !5202
  call void @llvm.lifetime.end.p0(i64 8, ptr %glob) #13, !dbg !5202
  ret i32 %16, !dbg !5203
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5204 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ttm_device_swapout(ptr noundef %bdev, ptr noundef %ctx, i32 noundef %gfp_flags) #0 align 16 !dbg !5207 {
entry:
  %retval = alloca i32, align 4
  %bdev.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %gfp_flags.addr = alloca i32, align 4
  %cursor = alloca %struct.ttm_resource_cursor, align 4
  %man = alloca ptr, align 8
  %res = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %bo = alloca ptr, align 8
  %num_pages = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5211, metadata !DIExpression()), !dbg !5230
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !5212, metadata !DIExpression()), !dbg !5231
  store i32 %gfp_flags, ptr %gfp_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_flags.addr, metadata !5213, metadata !DIExpression()), !dbg !5232
  call void @llvm.lifetime.start.p0(i64 4, ptr %cursor) #13, !dbg !5233
  call void @llvm.dbg.declare(metadata ptr %cursor, metadata !5214, metadata !DIExpression()), !dbg !5234
  call void @llvm.lifetime.start.p0(i64 8, ptr %man) #13, !dbg !5235
  call void @llvm.dbg.declare(metadata ptr %man, metadata !5218, metadata !DIExpression()), !dbg !5236
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #13, !dbg !5237
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5219, metadata !DIExpression()), !dbg !5238
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !5239
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5220, metadata !DIExpression()), !dbg !5240
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !5241
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5221, metadata !DIExpression()), !dbg !5242
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !5243
  %lru_lock = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 6, !dbg !5244
  call void @spin_lock(ptr noundef %lru_lock) #14, !dbg !5245
  store i32 0, ptr %i, align 4, !dbg !5246
  br label %for.cond, !dbg !5247

for.cond:                                         ; preds = %for.inc22, %entry
  %1 = load i32, ptr %i, align 4, !dbg !5248
  %cmp = icmp ult i32 %1, 8, !dbg !5249
  br i1 %cmp, label %for.body, label %for.end23, !dbg !5250

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %bdev.addr, align 8, !dbg !5251
  %3 = load i32, ptr %i, align 4, !dbg !5252
  %call = call ptr @ttm_manager_type(ptr noundef %2, i32 noundef %3) #14, !dbg !5253
  store ptr %call, ptr %man, align 8, !dbg !5254
  %4 = load ptr, ptr %man, align 8, !dbg !5255
  %tobool = icmp ne ptr %4, null, !dbg !5255
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5257

lor.lhs.false:                                    ; preds = %for.body
  %5 = load ptr, ptr %man, align 8, !dbg !5258
  %use_tt = getelementptr inbounds %struct.ttm_resource_manager, ptr %5, i32 0, i32 1, !dbg !5259
  %6 = load i8, ptr %use_tt, align 1, !dbg !5259, !range !5260, !noundef !1160
  %tobool1 = trunc i8 %6 to i1, !dbg !5259
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5261

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc22, !dbg !5262

if.end:                                           ; preds = %lor.lhs.false
  %7 = load ptr, ptr %man, align 8, !dbg !5263
  %call2 = call ptr @ttm_resource_manager_first(ptr noundef %7, ptr noundef %cursor) #14, !dbg !5263
  store ptr %call2, ptr %res, align 8, !dbg !5263
  br label %for.cond3, !dbg !5263

for.cond3:                                        ; preds = %for.inc, %if.end
  %8 = load ptr, ptr %res, align 8, !dbg !5264
  %tobool4 = icmp ne ptr %8, null, !dbg !5263
  br i1 %tobool4, label %for.body5, label %for.end, !dbg !5263

for.body5:                                        ; preds = %for.cond3
  call void @llvm.lifetime.start.p0(i64 8, ptr %bo) #13, !dbg !5265
  call void @llvm.dbg.declare(metadata ptr %bo, metadata !5222, metadata !DIExpression()), !dbg !5266
  %9 = load ptr, ptr %res, align 8, !dbg !5267
  %bo6 = getelementptr inbounds %struct.ttm_resource, ptr %9, i32 0, i32 5, !dbg !5268
  %10 = load ptr, ptr %bo6, align 8, !dbg !5268
  store ptr %10, ptr %bo, align 8, !dbg !5266
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_pages) #13, !dbg !5269
  call void @llvm.dbg.declare(metadata ptr %num_pages, metadata !5229, metadata !DIExpression()), !dbg !5270
  %11 = load ptr, ptr %bo, align 8, !dbg !5271
  %tobool7 = icmp ne ptr %11, null, !dbg !5271
  br i1 %tobool7, label %lor.lhs.false8, label %if.then10, !dbg !5273

lor.lhs.false8:                                   ; preds = %for.body5
  %12 = load ptr, ptr %bo, align 8, !dbg !5274
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %12, i32 0, i32 6, !dbg !5275
  %13 = load ptr, ptr %resource, align 8, !dbg !5275
  %14 = load ptr, ptr %res, align 8, !dbg !5276
  %cmp9 = icmp ne ptr %13, %14, !dbg !5277
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5278

if.then10:                                        ; preds = %lor.lhs.false8, %for.body5
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5279

if.end11:                                         ; preds = %lor.lhs.false8
  %15 = load ptr, ptr %bo, align 8, !dbg !5280
  %base = getelementptr inbounds %struct.ttm_buffer_object, ptr %15, i32 0, i32 0, !dbg !5280
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %base, i32 0, i32 5, !dbg !5280
  %16 = load i64, ptr %size, align 8, !dbg !5280
  %add = add i64 %16, 4096, !dbg !5280
  %sub = sub i64 %add, 1, !dbg !5280
  %shr = lshr i64 %sub, 12, !dbg !5280
  %conv = trunc i64 %shr to i32, !dbg !5280
  store i32 %conv, ptr %num_pages, align 4, !dbg !5281
  %17 = load ptr, ptr %bo, align 8, !dbg !5282
  %18 = load ptr, ptr %ctx.addr, align 8, !dbg !5283
  %19 = load i32, ptr %gfp_flags.addr, align 4, !dbg !5284
  %call12 = call i32 @ttm_bo_swapout(ptr noundef %17, ptr noundef %18, i32 noundef %19) #14, !dbg !5285
  store i32 %call12, ptr %ret, align 4, !dbg !5286
  %20 = load i32, ptr %ret, align 4, !dbg !5287
  %tobool13 = icmp ne i32 %20, 0, !dbg !5287
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !5289

if.then14:                                        ; preds = %if.end11
  %21 = load i32, ptr %num_pages, align 4, !dbg !5290
  store i32 %21, ptr %retval, align 4, !dbg !5291
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5291

if.end15:                                         ; preds = %if.end11
  %22 = load i32, ptr %ret, align 4, !dbg !5292
  %cmp16 = icmp ne i32 %22, -16, !dbg !5294
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !5295

if.then18:                                        ; preds = %if.end15
  %23 = load i32, ptr %ret, align 4, !dbg !5296
  store i32 %23, ptr %retval, align 4, !dbg !5297
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5297

if.end19:                                         ; preds = %if.end15
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5298
  br label %cleanup, !dbg !5298

cleanup:                                          ; preds = %if.end19, %if.then18, %if.then14, %if.then10
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_pages) #13, !dbg !5298
  call void @llvm.lifetime.end.p0(i64 8, ptr %bo) #13, !dbg !5298
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup25 [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5299

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %24 = load ptr, ptr %man, align 8, !dbg !5264
  %25 = load ptr, ptr %res, align 8, !dbg !5264
  %call21 = call ptr @ttm_resource_manager_next(ptr noundef %24, ptr noundef %cursor, ptr noundef %25) #14, !dbg !5264
  store ptr %call21, ptr %res, align 8, !dbg !5264
  br label %for.cond3, !dbg !5264, !llvm.loop !5300

for.end:                                          ; preds = %for.cond3
  br label %for.inc22, !dbg !5302

for.inc22:                                        ; preds = %for.end, %if.then
  %26 = load i32, ptr %i, align 4, !dbg !5303
  %inc = add i32 %26, 1, !dbg !5303
  store i32 %inc, ptr %i, align 4, !dbg !5303
  br label %for.cond, !dbg !5304, !llvm.loop !5305

for.end23:                                        ; preds = %for.cond
  %27 = load ptr, ptr %bdev.addr, align 8, !dbg !5307
  %lru_lock24 = getelementptr inbounds %struct.ttm_device, ptr %27, i32 0, i32 6, !dbg !5308
  call void @spin_unlock(ptr noundef %lru_lock24) #14, !dbg !5309
  store i32 0, ptr %retval, align 4, !dbg !5310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup25, !dbg !5310

cleanup25:                                        ; preds = %for.end23, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !5311
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !5311
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #13, !dbg !5311
  call void @llvm.lifetime.end.p0(i64 8, ptr %man) #13, !dbg !5311
  call void @llvm.lifetime.end.p0(i64 4, ptr %cursor) #13, !dbg !5311
  %28 = load i32, ptr %retval, align 4, !dbg !5311
  ret i32 %28, !dbg !5311
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_move_tail(ptr noundef %list, ptr noundef %head) #4 align 16 !dbg !5312 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5317, metadata !DIExpression()), !dbg !5319
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5318, metadata !DIExpression()), !dbg !5320
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5321
  call void @__list_del_entry(ptr noundef %0) #14, !dbg !5322
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5323
  %2 = load ptr, ptr %head.addr, align 8, !dbg !5324
  call void @list_add_tail(ptr noundef %1, ptr noundef %2) #14, !dbg !5325
  ret void, !dbg !5326
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5327 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #5 align 16 !dbg !5328 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5333, metadata !DIExpression()), !dbg !5334
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5335
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5335
  call void @_raw_spin_lock(ptr noundef %1) #14, !dbg !5335
  ret void, !dbg !5336
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ttm_manager_type(ptr noundef %bdev, i32 noundef %mem_type) #4 align 16 !dbg !5337 {
entry:
  %bdev.addr = alloca ptr, align 8
  %mem_type.addr = alloca i32, align 4
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5341, metadata !DIExpression()), !dbg !5343
  store i32 %mem_type, ptr %mem_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mem_type.addr, metadata !5342, metadata !DIExpression()), !dbg !5344
  br label %do.body, !dbg !5345

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %mem_type.addr, align 4, !dbg !5346
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5346
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !5346

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %mem_type.addr, align 4, !dbg !5346
  %cmp = icmp sge i32 %2, 8, !dbg !5346
  br i1 %cmp, label %if.then, label %if.end, !dbg !5349

if.then:                                          ; preds = %land.lhs.true
  call void @__compiletime_assert_294() #15, !dbg !5346, !srcloc !5350
  unreachable, !dbg !5346

if.end:                                           ; preds = %land.lhs.true, %do.body
  br label %do.end, !dbg !5349

do.end:                                           ; preds = %if.end
  %3 = load ptr, ptr %bdev.addr, align 8, !dbg !5351
  %man_drv = getelementptr inbounds %struct.ttm_device, ptr %3, i32 0, i32 3, !dbg !5352
  %4 = load i32, ptr %mem_type.addr, align 4, !dbg !5353
  %idxprom = sext i32 %4 to i64, !dbg !5351
  %arrayidx = getelementptr [8 x ptr], ptr %man_drv, i64 0, i64 %idxprom, !dbg !5351
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !5351
  ret ptr %5, !dbg !5354
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5355 dso_local ptr @ttm_resource_manager_first(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5359 dso_local i32 @ttm_bo_swapout(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5362 dso_local ptr @ttm_resource_manager_next(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #5 align 16 !dbg !5365 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5367, metadata !DIExpression()), !dbg !5368
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5369
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5369
  call void @_raw_spin_unlock(ptr noundef %1) #14, !dbg !5369
  ret void, !dbg !5370
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ttm_device_init(ptr noundef %bdev, ptr noundef %funcs, ptr noundef %dev, ptr noundef %mapping, ptr noundef %vma_manager, i1 noundef zeroext %use_dma_alloc, i1 noundef zeroext %use_dma32) #0 align 16 !dbg !5371 {
entry:
  %retval = alloca i32, align 4
  %bdev.addr = alloca ptr, align 8
  %funcs.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %mapping.addr = alloca ptr, align 8
  %vma_manager.addr = alloca ptr, align 8
  %use_dma_alloc.addr = alloca i8, align 1
  %use_dma32.addr = alloca i8, align 1
  %glob = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5375, metadata !DIExpression()), !dbg !5390
  store ptr %funcs, ptr %funcs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %funcs.addr, metadata !5376, metadata !DIExpression()), !dbg !5391
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5377, metadata !DIExpression()), !dbg !5392
  store ptr %mapping, ptr %mapping.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mapping.addr, metadata !5378, metadata !DIExpression()), !dbg !5393
  store ptr %vma_manager, ptr %vma_manager.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma_manager.addr, metadata !5379, metadata !DIExpression()), !dbg !5394
  %frombool = zext i1 %use_dma_alloc to i8
  store i8 %frombool, ptr %use_dma_alloc.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %use_dma_alloc.addr, metadata !5380, metadata !DIExpression()), !dbg !5395
  %frombool1 = zext i1 %use_dma32 to i8
  store i8 %frombool1, ptr %use_dma32.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %use_dma32.addr, metadata !5381, metadata !DIExpression()), !dbg !5396
  call void @llvm.lifetime.start.p0(i64 8, ptr %glob) #13, !dbg !5397
  call void @llvm.dbg.declare(metadata ptr %glob, metadata !5382, metadata !DIExpression()), !dbg !5398
  store ptr @ttm_glob, ptr %glob, align 8, !dbg !5398
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !5399
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5383, metadata !DIExpression()), !dbg !5400
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !5401
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5384, metadata !DIExpression()), !dbg !5401
  %0 = load ptr, ptr %vma_manager.addr, align 8, !dbg !5401
  %cmp = icmp eq ptr %0, null, !dbg !5401
  %lnot = xor i1 %cmp, true, !dbg !5401
  %lnot2 = xor i1 %lnot, true, !dbg !5401
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5401
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5401
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5402
  %tobool = icmp ne i32 %1, 0, !dbg !5402
  %lnot3 = xor i1 %tobool, true, !dbg !5402
  %lnot5 = xor i1 %lnot3, true, !dbg !5402
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5402
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5402
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5402
  %tobool7 = icmp ne i64 %expval, 0, !dbg !5402
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5401

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5402

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !5403
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5387, metadata !DIExpression()), !dbg !5403
  store i32 2305, ptr %__flags, align 4, !dbg !5403
  br label %do.body8, !dbg !5403

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !5404

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !5404

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !5403

do.body9:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !5406
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 200, i32 %2, i64 12) #13, !dbg !5406, !srcloc !5408
  br label %do.cond10, !dbg !5406

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5406

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !5403

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !5409

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5409

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !5402
  br label %do.cond15, !dbg !5403

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !5403

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !5403

if.end:                                           ; preds = %do.end16, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5401
  %tobool17 = icmp ne i32 %3, 0, !dbg !5401
  %lnot18 = xor i1 %tobool17, true, !dbg !5401
  %lnot20 = xor i1 %lnot18, true, !dbg !5401
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !5401
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !5401
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !5401
  store i64 %expval23, ptr %tmp, align 8, !dbg !5402
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !5411
  %4 = load i64, ptr %tmp, align 8, !dbg !5401
  %tobool24 = icmp ne i64 %4, 0, !dbg !5411
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !5412

if.then25:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5413
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5413

if.end26:                                         ; preds = %if.end
  %call = call i32 @ttm_global_init() #14, !dbg !5414
  store i32 %call, ptr %ret, align 4, !dbg !5415
  %5 = load i32, ptr %ret, align 4, !dbg !5416
  %tobool27 = icmp ne i32 %5, 0, !dbg !5416
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !5418

if.then28:                                        ; preds = %if.end26
  %6 = load i32, ptr %ret, align 4, !dbg !5419
  store i32 %6, ptr %retval, align 4, !dbg !5420
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5420

if.end29:                                         ; preds = %if.end26
  %call30 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef @.str.1, i32 noundef 24, i32 noundef 16) #14, !dbg !5421
  %7 = load ptr, ptr %bdev.addr, align 8, !dbg !5422
  %wq = getelementptr inbounds %struct.ttm_device, ptr %7, i32 0, i32 9, !dbg !5423
  store ptr %call30, ptr %wq, align 8, !dbg !5424
  %8 = load ptr, ptr %bdev.addr, align 8, !dbg !5425
  %wq31 = getelementptr inbounds %struct.ttm_device, ptr %8, i32 0, i32 9, !dbg !5427
  %9 = load ptr, ptr %wq31, align 8, !dbg !5427
  %tobool32 = icmp ne ptr %9, null, !dbg !5425
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !5428

if.then33:                                        ; preds = %if.end29
  call void @ttm_global_release() #14, !dbg !5429
  store i32 -12, ptr %retval, align 4, !dbg !5431
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5431

if.end34:                                         ; preds = %if.end29
  %10 = load ptr, ptr %funcs.addr, align 8, !dbg !5432
  %11 = load ptr, ptr %bdev.addr, align 8, !dbg !5433
  %funcs35 = getelementptr inbounds %struct.ttm_device, ptr %11, i32 0, i32 1, !dbg !5434
  store ptr %10, ptr %funcs35, align 8, !dbg !5435
  %12 = load ptr, ptr %bdev.addr, align 8, !dbg !5436
  call void @ttm_sys_man_init(ptr noundef %12) #14, !dbg !5437
  %13 = load ptr, ptr %bdev.addr, align 8, !dbg !5438
  %pool = getelementptr inbounds %struct.ttm_device, ptr %13, i32 0, i32 5, !dbg !5439
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !5440
  %15 = load i8, ptr %use_dma_alloc.addr, align 1, !dbg !5441, !range !5260, !noundef !1160
  %tobool36 = trunc i8 %15 to i1, !dbg !5441
  %16 = load i8, ptr %use_dma32.addr, align 1, !dbg !5442, !range !5260, !noundef !1160
  %tobool37 = trunc i8 %16 to i1, !dbg !5442
  call void @ttm_pool_init(ptr noundef %pool, ptr noundef %14, i32 noundef -1, i1 noundef zeroext %tobool36, i1 noundef zeroext %tobool37) #14, !dbg !5443
  %17 = load ptr, ptr %vma_manager.addr, align 8, !dbg !5444
  %18 = load ptr, ptr %bdev.addr, align 8, !dbg !5445
  %vma_manager38 = getelementptr inbounds %struct.ttm_device, ptr %18, i32 0, i32 4, !dbg !5446
  store ptr %17, ptr %vma_manager38, align 8, !dbg !5447
  br label %do.body39, !dbg !5448

do.body39:                                        ; preds = %if.end34
  %19 = load ptr, ptr %bdev.addr, align 8, !dbg !5449
  %lru_lock = getelementptr inbounds %struct.ttm_device, ptr %19, i32 0, i32 6, !dbg !5449
  %call40 = call ptr @spinlock_check(ptr noundef %lru_lock) #14, !dbg !5449
  %20 = load ptr, ptr %bdev.addr, align 8, !dbg !5449
  %lru_lock41 = getelementptr inbounds %struct.ttm_device, ptr %20, i32 0, i32 6, !dbg !5449
  %21 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !5449
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %21, i32 0, i32 0, !dbg !5449
  %22 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !5449
  %counter = getelementptr inbounds %struct.atomic_t, ptr %22, i32 0, i32 0, !dbg !5449
  store i32 0, ptr %counter, align 4, !dbg !5449
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lru_lock41, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !5449
  br label %do.cond42, !dbg !5449

do.cond42:                                        ; preds = %do.body39
  br label %do.end43, !dbg !5449

do.end43:                                         ; preds = %do.cond42
  %23 = load ptr, ptr %bdev.addr, align 8, !dbg !5451
  %pinned = getelementptr inbounds %struct.ttm_device, ptr %23, i32 0, i32 7, !dbg !5452
  call void @INIT_LIST_HEAD(ptr noundef %pinned) #14, !dbg !5453
  %24 = load ptr, ptr %mapping.addr, align 8, !dbg !5454
  %25 = load ptr, ptr %bdev.addr, align 8, !dbg !5455
  %dev_mapping = getelementptr inbounds %struct.ttm_device, ptr %25, i32 0, i32 8, !dbg !5456
  store ptr %24, ptr %dev_mapping, align 8, !dbg !5457
  call void @mutex_lock(ptr noundef @ttm_global_mutex) #14, !dbg !5458
  %26 = load ptr, ptr %bdev.addr, align 8, !dbg !5459
  %device_list = getelementptr inbounds %struct.ttm_device, ptr %26, i32 0, i32 0, !dbg !5460
  %27 = load ptr, ptr %glob, align 8, !dbg !5461
  %device_list44 = getelementptr inbounds %struct.ttm_global, ptr %27, i32 0, i32 1, !dbg !5462
  call void @list_add_tail(ptr noundef %device_list, ptr noundef %device_list44) #14, !dbg !5463
  call void @mutex_unlock(ptr noundef @ttm_global_mutex) #14, !dbg !5464
  store i32 0, ptr %retval, align 4, !dbg !5465
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5465

cleanup:                                          ; preds = %do.end43, %if.then33, %if.then28, %if.then25
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !5466
  call void @llvm.lifetime.end.p0(i64 8, ptr %glob) #13, !dbg !5466
  %28 = load i32, ptr %retval, align 4, !dbg !5466
  ret i32 %28, !dbg !5466
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ttm_global_init() #0 align 16 !dbg !5467 {
entry:
  %glob = alloca ptr, align 8
  %num_pages = alloca i64, align 8
  %num_dma32 = alloca i64, align 8
  %si = alloca %struct.sysinfo, align 8
  %ret = alloca i32, align 4
  %__UNIQUE_ID___x328 = alloca i64, align 8
  %__UNIQUE_ID___y329 = alloca i64, align 8
  %tmp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %glob) #13, !dbg !5499
  call void @llvm.dbg.declare(metadata ptr %glob, metadata !5469, metadata !DIExpression()), !dbg !5500
  store ptr @ttm_glob, ptr %glob, align 8, !dbg !5500
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_pages) #13, !dbg !5501
  call void @llvm.dbg.declare(metadata ptr %num_pages, metadata !5470, metadata !DIExpression()), !dbg !5502
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_dma32) #13, !dbg !5501
  call void @llvm.dbg.declare(metadata ptr %num_dma32, metadata !5471, metadata !DIExpression()), !dbg !5503
  call void @llvm.lifetime.start.p0(i64 112, ptr %si) #13, !dbg !5504
  call void @llvm.dbg.declare(metadata ptr %si, metadata !5472, metadata !DIExpression()), !dbg !5505
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !5506
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5494, metadata !DIExpression()), !dbg !5507
  store i32 0, ptr %ret, align 4, !dbg !5507
  call void @mutex_lock(ptr noundef @ttm_global_mutex) #14, !dbg !5508
  %0 = load i32, ptr @ttm_glob_use_count, align 4, !dbg !5509
  %inc = add i32 %0, 1, !dbg !5509
  store i32 %inc, ptr @ttm_glob_use_count, align 4, !dbg !5509
  %cmp = icmp ugt i32 %inc, 1, !dbg !5511
  br i1 %cmp, label %if.then, label %if.end, !dbg !5512

if.then:                                          ; preds = %entry
  br label %out, !dbg !5513

if.end:                                           ; preds = %entry
  call void @si_meminfo(ptr noundef %si) #14, !dbg !5514
  %call = call ptr @debugfs_create_dir(ptr noundef @.str.1, ptr noundef null) #14, !dbg !5515
  store ptr %call, ptr @ttm_debugfs_root, align 8, !dbg !5516
  %1 = load ptr, ptr @ttm_debugfs_root, align 8, !dbg !5517
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %1) #14, !dbg !5519
  br i1 %call1, label %if.then2, label %if.end3, !dbg !5520

if.then2:                                         ; preds = %if.end
  store ptr null, ptr @ttm_debugfs_root, align 8, !dbg !5521
  br label %if.end3, !dbg !5523

if.end3:                                          ; preds = %if.then2, %if.end
  %totalram = getelementptr inbounds %struct.sysinfo, ptr %si, i32 0, i32 2, !dbg !5524
  %2 = load i64, ptr %totalram, align 8, !dbg !5524
  %mem_unit = getelementptr inbounds %struct.sysinfo, ptr %si, i32 0, i32 12, !dbg !5525
  %3 = load i32, ptr %mem_unit, align 8, !dbg !5525
  %conv = zext i32 %3 to i64, !dbg !5526
  %mul = mul i64 %2, %conv, !dbg !5527
  %shr = lshr i64 %mul, 12, !dbg !5528
  store i64 %shr, ptr %num_pages, align 8, !dbg !5529
  %4 = load i64, ptr %num_pages, align 8, !dbg !5530
  %div = udiv i64 %4, 2, !dbg !5530
  store i64 %div, ptr %num_pages, align 8, !dbg !5530
  %totalram4 = getelementptr inbounds %struct.sysinfo, ptr %si, i32 0, i32 2, !dbg !5531
  %5 = load i64, ptr %totalram4, align 8, !dbg !5531
  %totalhigh = getelementptr inbounds %struct.sysinfo, ptr %si, i32 0, i32 10, !dbg !5532
  %6 = load i64, ptr %totalhigh, align 8, !dbg !5532
  %sub = sub i64 %5, %6, !dbg !5533
  %mem_unit5 = getelementptr inbounds %struct.sysinfo, ptr %si, i32 0, i32 12, !dbg !5534
  %7 = load i32, ptr %mem_unit5, align 8, !dbg !5534
  %conv6 = zext i32 %7 to i64, !dbg !5535
  %mul7 = mul i64 %sub, %conv6, !dbg !5536
  %shr8 = lshr i64 %mul7, 12, !dbg !5537
  store i64 %shr8, ptr %num_dma32, align 8, !dbg !5538
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x328) #13, !dbg !5539
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x328, metadata !5495, metadata !DIExpression()), !dbg !5539
  %8 = load i64, ptr %num_dma32, align 8, !dbg !5539
  store i64 %8, ptr %__UNIQUE_ID___x328, align 8, !dbg !5539
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y329) #13, !dbg !5539
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y329, metadata !5497, metadata !DIExpression()), !dbg !5539
  store i64 524288, ptr %__UNIQUE_ID___y329, align 8, !dbg !5539
  %9 = load i64, ptr %__UNIQUE_ID___x328, align 8, !dbg !5539
  %10 = load i64, ptr %__UNIQUE_ID___y329, align 8, !dbg !5539
  %cmp9 = icmp ult i64 %9, %10, !dbg !5539
  br i1 %cmp9, label %cond.true, label %cond.false, !dbg !5539

cond.true:                                        ; preds = %if.end3
  %11 = load i64, ptr %__UNIQUE_ID___x328, align 8, !dbg !5539
  br label %cond.end, !dbg !5539

cond.false:                                       ; preds = %if.end3
  %12 = load i64, ptr %__UNIQUE_ID___y329, align 8, !dbg !5539
  br label %cond.end, !dbg !5539

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %11, %cond.true ], [ %12, %cond.false ], !dbg !5539
  store i64 %cond, ptr %tmp, align 8, !dbg !5539
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y329) #13, !dbg !5540
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x328) #13, !dbg !5540
  %13 = load i64, ptr %tmp, align 8, !dbg !5539
  store i64 %13, ptr %num_dma32, align 8, !dbg !5541
  %14 = load i64, ptr %num_pages, align 8, !dbg !5542
  %call11 = call i32 @ttm_pool_mgr_init(i64 noundef %14) #14, !dbg !5543
  %15 = load i64, ptr %num_pages, align 8, !dbg !5544
  %16 = load i64, ptr %num_dma32, align 8, !dbg !5545
  call void @ttm_tt_mgr_init(i64 noundef %15, i64 noundef %16) #14, !dbg !5546
  %call12 = call ptr @alloc_pages(i32 noundef 260, i32 noundef 0) #14, !dbg !5547
  %17 = load ptr, ptr %glob, align 8, !dbg !5548
  %dummy_read_page = getelementptr inbounds %struct.ttm_global, ptr %17, i32 0, i32 0, !dbg !5549
  store ptr %call12, ptr %dummy_read_page, align 8, !dbg !5550
  %18 = load ptr, ptr %glob, align 8, !dbg !5551
  %dummy_read_page13 = getelementptr inbounds %struct.ttm_global, ptr %18, i32 0, i32 0, !dbg !5551
  %19 = load ptr, ptr %dummy_read_page13, align 8, !dbg !5551
  %cmp14 = icmp eq ptr %19, null, !dbg !5551
  %lnot = xor i1 %cmp14, true, !dbg !5551
  %lnot16 = xor i1 %lnot, true, !dbg !5551
  %lnot.ext = zext i1 %lnot16 to i32, !dbg !5551
  %conv17 = sext i32 %lnot.ext to i64, !dbg !5551
  %expval = call i64 @llvm.expect.i64(i64 %conv17, i64 0), !dbg !5551
  %tobool = icmp ne i64 %expval, 0, !dbg !5551
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !5553

if.then18:                                        ; preds = %cond.end
  store i32 -12, ptr %ret, align 4, !dbg !5554
  br label %out, !dbg !5556

if.end19:                                         ; preds = %cond.end
  %20 = load ptr, ptr %glob, align 8, !dbg !5557
  %device_list = getelementptr inbounds %struct.ttm_global, ptr %20, i32 0, i32 1, !dbg !5558
  call void @INIT_LIST_HEAD(ptr noundef %device_list) #14, !dbg !5559
  %21 = load ptr, ptr %glob, align 8, !dbg !5560
  %bo_count = getelementptr inbounds %struct.ttm_global, ptr %21, i32 0, i32 2, !dbg !5561
  call void @atomic_set(ptr noundef %bo_count, i32 noundef 0) #14, !dbg !5562
  %22 = load ptr, ptr @ttm_debugfs_root, align 8, !dbg !5563
  %23 = load ptr, ptr %glob, align 8, !dbg !5564
  %bo_count20 = getelementptr inbounds %struct.ttm_global, ptr %23, i32 0, i32 2, !dbg !5565
  call void @debugfs_create_atomic_t(ptr noundef @.str.2, i16 noundef zeroext 292, ptr noundef %22, ptr noundef %bo_count20) #14, !dbg !5566
  br label %out, !dbg !5566

out:                                              ; preds = %if.end19, %if.then18, %if.then
  call void @llvm.dbg.label(metadata !5498), !dbg !5567
  %24 = load i32, ptr %ret, align 4, !dbg !5568
  %tobool21 = icmp ne i32 %24, 0, !dbg !5568
  br i1 %tobool21, label %land.lhs.true, label %if.end24, !dbg !5570

land.lhs.true:                                    ; preds = %out
  %25 = load ptr, ptr @ttm_debugfs_root, align 8, !dbg !5571
  %tobool22 = icmp ne ptr %25, null, !dbg !5571
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !5572

if.then23:                                        ; preds = %land.lhs.true
  %26 = load ptr, ptr @ttm_debugfs_root, align 8, !dbg !5573
  call void @debugfs_remove(ptr noundef %26) #14, !dbg !5574
  br label %if.end24, !dbg !5574

if.end24:                                         ; preds = %if.then23, %land.lhs.true, %out
  %27 = load i32, ptr %ret, align 4, !dbg !5575
  %tobool25 = icmp ne i32 %27, 0, !dbg !5575
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !5577

if.then26:                                        ; preds = %if.end24
  %28 = load i32, ptr @ttm_glob_use_count, align 4, !dbg !5578
  %dec = add i32 %28, -1, !dbg !5578
  store i32 %dec, ptr @ttm_glob_use_count, align 4, !dbg !5578
  br label %if.end27, !dbg !5578

if.end27:                                         ; preds = %if.then26, %if.end24
  call void @mutex_unlock(ptr noundef @ttm_global_mutex) #14, !dbg !5579
  %29 = load i32, ptr %ret, align 4, !dbg !5580
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !5581
  call void @llvm.lifetime.end.p0(i64 112, ptr %si) #13, !dbg !5581
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_dma32) #13, !dbg !5581
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_pages) #13, !dbg !5581
  call void @llvm.lifetime.end.p0(i64 8, ptr %glob) #13, !dbg !5581
  ret i32 %29, !dbg !5582
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5583 dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_global_release() #0 align 16 !dbg !5586 {
entry:
  %glob = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %glob) #13, !dbg !5590
  call void @llvm.dbg.declare(metadata ptr %glob, metadata !5588, metadata !DIExpression()), !dbg !5591
  store ptr @ttm_glob, ptr %glob, align 8, !dbg !5591
  call void @mutex_lock(ptr noundef @ttm_global_mutex) #14, !dbg !5592
  %0 = load i32, ptr @ttm_glob_use_count, align 4, !dbg !5593
  %dec = add i32 %0, -1, !dbg !5593
  store i32 %dec, ptr @ttm_glob_use_count, align 4, !dbg !5593
  %cmp = icmp ugt i32 %dec, 0, !dbg !5595
  br i1 %cmp, label %if.then, label %if.end, !dbg !5596

if.then:                                          ; preds = %entry
  br label %out, !dbg !5597

if.end:                                           ; preds = %entry
  call void @ttm_pool_mgr_fini() #14, !dbg !5598
  %1 = load ptr, ptr @ttm_debugfs_root, align 8, !dbg !5599
  call void @debugfs_remove(ptr noundef %1) #14, !dbg !5600
  %2 = load ptr, ptr %glob, align 8, !dbg !5601
  %dummy_read_page = getelementptr inbounds %struct.ttm_global, ptr %2, i32 0, i32 0, !dbg !5601
  %3 = load ptr, ptr %dummy_read_page, align 8, !dbg !5601
  call void @__free_pages(ptr noundef %3, i32 noundef 0) #14, !dbg !5601
  %4 = load ptr, ptr %glob, align 8, !dbg !5602
  call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 32, i1 false), !dbg !5603
  br label %out, !dbg !5603

out:                                              ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !5589), !dbg !5604
  call void @mutex_unlock(ptr noundef @ttm_global_mutex) #14, !dbg !5605
  call void @llvm.lifetime.end.p0(i64 8, ptr %glob) #13, !dbg !5606
  ret void, !dbg !5606
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5607 dso_local void @ttm_sys_man_init(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5611 dso_local void @ttm_pool_init(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !5614 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5619, metadata !DIExpression()), !dbg !5620
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5621
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5622
  ret ptr %1, !dbg !5623
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #4 align 16 !dbg !5624 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5628, metadata !DIExpression()), !dbg !5629
  br label %do.body, !dbg !5630

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5631

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5633

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5631

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5635
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5635
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5635
  store volatile ptr %0, ptr %next, align 8, !dbg !5635
  br label %do.end3, !dbg !5635

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5631

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5637

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5638

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5640

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5638

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5642
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5642
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5642
  store volatile ptr %2, ptr %prev, align 8, !dbg !5642
  br label %do.end9, !dbg !5642

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5638

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5644
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !5645 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5647, metadata !DIExpression()), !dbg !5649
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5648, metadata !DIExpression()), !dbg !5650
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5651
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5652
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5653
  %2 = load ptr, ptr %prev, align 8, !dbg !5653
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5654
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #14, !dbg !5655
  ret void, !dbg !5656
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ttm_device_fini(ptr noundef %bdev) #0 align 16 !dbg !5657 {
entry:
  %bdev.addr = alloca ptr, align 8
  %man = alloca ptr, align 8
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5659, metadata !DIExpression()), !dbg !5662
  call void @llvm.lifetime.start.p0(i64 8, ptr %man) #13, !dbg !5663
  call void @llvm.dbg.declare(metadata ptr %man, metadata !5660, metadata !DIExpression()), !dbg !5664
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !5665
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5661, metadata !DIExpression()), !dbg !5666
  call void @mutex_lock(ptr noundef @ttm_global_mutex) #14, !dbg !5667
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !5668
  %device_list = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 0, !dbg !5669
  call void @list_del(ptr noundef %device_list) #14, !dbg !5670
  call void @mutex_unlock(ptr noundef @ttm_global_mutex) #14, !dbg !5671
  %1 = load ptr, ptr %bdev.addr, align 8, !dbg !5672
  %wq = getelementptr inbounds %struct.ttm_device, ptr %1, i32 0, i32 9, !dbg !5673
  %2 = load ptr, ptr %wq, align 8, !dbg !5673
  call void @drain_workqueue(ptr noundef %2) #14, !dbg !5674
  %3 = load ptr, ptr %bdev.addr, align 8, !dbg !5675
  %wq1 = getelementptr inbounds %struct.ttm_device, ptr %3, i32 0, i32 9, !dbg !5676
  %4 = load ptr, ptr %wq1, align 8, !dbg !5676
  call void @destroy_workqueue(ptr noundef %4) #14, !dbg !5677
  %5 = load ptr, ptr %bdev.addr, align 8, !dbg !5678
  %call = call ptr @ttm_manager_type(ptr noundef %5, i32 noundef 0) #14, !dbg !5679
  store ptr %call, ptr %man, align 8, !dbg !5680
  %6 = load ptr, ptr %man, align 8, !dbg !5681
  call void @ttm_resource_manager_set_used(ptr noundef %6, i1 noundef zeroext false) #14, !dbg !5682
  %7 = load ptr, ptr %bdev.addr, align 8, !dbg !5683
  call void @ttm_set_driver_manager(ptr noundef %7, i32 noundef 0, ptr noundef null) #14, !dbg !5684
  %8 = load ptr, ptr %bdev.addr, align 8, !dbg !5685
  %lru_lock = getelementptr inbounds %struct.ttm_device, ptr %8, i32 0, i32 6, !dbg !5686
  call void @spin_lock(ptr noundef %lru_lock) #14, !dbg !5687
  store i32 0, ptr %i, align 4, !dbg !5688
  br label %for.cond, !dbg !5690

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, ptr %i, align 4, !dbg !5691
  %cmp = icmp ult i32 %9, 4, !dbg !5693
  br i1 %cmp, label %for.body, label %for.end, !dbg !5694

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %man, align 8, !dbg !5695
  %lru = getelementptr inbounds %struct.ttm_resource_manager, ptr %10, i32 0, i32 7, !dbg !5697
  %arrayidx = getelementptr [4 x %struct.list_head], ptr %lru, i64 0, i64 0, !dbg !5695
  %call2 = call i32 @list_empty(ptr noundef %arrayidx) #14, !dbg !5698
  %tobool = icmp ne i32 %call2, 0, !dbg !5698
  br i1 %tobool, label %if.then, label %if.end, !dbg !5699

if.then:                                          ; preds = %for.body
  store i32 0, ptr %tmp, align 4, !dbg !5700
  %11 = load i32, ptr %tmp, align 4, !dbg !5703
  br label %if.end, !dbg !5704

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !5705

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %i, align 4, !dbg !5706
  %inc = add i32 %12, 1, !dbg !5706
  store i32 %inc, ptr %i, align 4, !dbg !5706
  br label %for.cond, !dbg !5707, !llvm.loop !5708

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %bdev.addr, align 8, !dbg !5710
  %lru_lock3 = getelementptr inbounds %struct.ttm_device, ptr %13, i32 0, i32 6, !dbg !5711
  call void @spin_unlock(ptr noundef %lru_lock3) #14, !dbg !5712
  %14 = load ptr, ptr %bdev.addr, align 8, !dbg !5713
  %pool = getelementptr inbounds %struct.ttm_device, ptr %14, i32 0, i32 5, !dbg !5714
  call void @ttm_pool_fini(ptr noundef %pool) #14, !dbg !5715
  call void @ttm_global_release() #14, !dbg !5716
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !5717
  call void @llvm.lifetime.end.p0(i64 8, ptr %man) #13, !dbg !5717
  ret void, !dbg !5717
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #4 align 16 !dbg !5718 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5720, metadata !DIExpression()), !dbg !5721
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5722
  call void @__list_del_entry(ptr noundef %0) #14, !dbg !5723
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5724
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5725
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !5726
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5727
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5728
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5729
  ret void, !dbg !5730
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5731 dso_local void @drain_workqueue(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5734 dso_local void @destroy_workqueue(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_resource_manager_set_used(ptr noundef %man, i1 noundef zeroext %used) #4 align 16 !dbg !5735 {
entry:
  %man.addr = alloca ptr, align 8
  %used.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %man, ptr %man.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %man.addr, metadata !5739, metadata !DIExpression()), !dbg !5749
  %frombool = zext i1 %used to i8
  store i8 %frombool, ptr %used.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %used.addr, metadata !5740, metadata !DIExpression()), !dbg !5750
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !5751
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5741, metadata !DIExpression()), !dbg !5752
  store i32 0, ptr %i, align 4, !dbg !5753
  br label %for.cond, !dbg !5754

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5755
  %cmp = icmp ult i32 %0, 4, !dbg !5756
  br i1 %cmp, label %for.body, label %for.end, !dbg !5757

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !5758
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5742, metadata !DIExpression()), !dbg !5758
  %1 = load ptr, ptr %man.addr, align 8, !dbg !5758
  %lru = getelementptr inbounds %struct.ttm_resource_manager, ptr %1, i32 0, i32 7, !dbg !5758
  %2 = load i32, ptr %i, align 4, !dbg !5758
  %idxprom = sext i32 %2 to i64, !dbg !5758
  %arrayidx = getelementptr [4 x %struct.list_head], ptr %lru, i64 0, i64 %idxprom, !dbg !5758
  %call = call i32 @list_empty(ptr noundef %arrayidx) #14, !dbg !5758
  %tobool = icmp ne i32 %call, 0, !dbg !5758
  %lnot = xor i1 %tobool, true, !dbg !5758
  %lnot1 = xor i1 %lnot, true, !dbg !5758
  %lnot2 = xor i1 %lnot1, true, !dbg !5758
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5758
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5758
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5759
  %tobool3 = icmp ne i32 %3, 0, !dbg !5759
  %lnot4 = xor i1 %tobool3, true, !dbg !5759
  %lnot6 = xor i1 %lnot4, true, !dbg !5759
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5759
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5759
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5759
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5759
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5758

if.then:                                          ; preds = %for.body
  br label %do.body, !dbg !5759

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !5760
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5746, metadata !DIExpression()), !dbg !5760
  store i32 2305, ptr %__flags, align 4, !dbg !5760
  br label %do.body9, !dbg !5760

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !5761

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !5761

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !5760

do.body10:                                        ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !5763
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 313, i32 %4, i64 12) #13, !dbg !5763, !srcloc !5765
  br label %do.cond11, !dbg !5763

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5763

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5760

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !5766

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5766

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !5759
  br label %do.cond16, !dbg !5760

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5760

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !5760

if.end:                                           ; preds = %do.end17, %for.body
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !5758
  %tobool18 = icmp ne i32 %5, 0, !dbg !5758
  %lnot19 = xor i1 %tobool18, true, !dbg !5758
  %lnot21 = xor i1 %lnot19, true, !dbg !5758
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !5758
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !5758
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !5758
  store i64 %expval24, ptr %tmp, align 8, !dbg !5759
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !5768
  %6 = load i64, ptr %tmp, align 8, !dbg !5758
  br label %for.inc, !dbg !5768

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4, !dbg !5769
  %inc = add i32 %7, 1, !dbg !5769
  store i32 %inc, ptr %i, align 4, !dbg !5769
  br label %for.cond, !dbg !5770, !llvm.loop !5771

for.end:                                          ; preds = %for.cond
  %8 = load i8, ptr %used.addr, align 1, !dbg !5773, !range !5260, !noundef !1160
  %tobool25 = trunc i8 %8 to i1, !dbg !5773
  %9 = load ptr, ptr %man.addr, align 8, !dbg !5774
  %use_type = getelementptr inbounds %struct.ttm_resource_manager, ptr %9, i32 0, i32 0, !dbg !5775
  %frombool26 = zext i1 %tobool25 to i8, !dbg !5776
  store i8 %frombool26, ptr %use_type, align 8, !dbg !5776
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !5777
  ret void, !dbg !5777
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_set_driver_manager(ptr noundef %bdev, i32 noundef %type, ptr noundef %manager) #4 align 16 !dbg !5778 {
entry:
  %bdev.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %manager.addr = alloca ptr, align 8
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5782, metadata !DIExpression()), !dbg !5785
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5783, metadata !DIExpression()), !dbg !5786
  store ptr %manager, ptr %manager.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %manager.addr, metadata !5784, metadata !DIExpression()), !dbg !5787
  br label %do.body, !dbg !5788

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %type.addr, align 4, !dbg !5789
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5789
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !5789

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %type.addr, align 4, !dbg !5789
  %cmp = icmp sge i32 %2, 8, !dbg !5789
  br i1 %cmp, label %if.then, label %if.end, !dbg !5792

if.then:                                          ; preds = %land.lhs.true
  call void @__compiletime_assert_295() #15, !dbg !5789, !srcloc !5793
  unreachable, !dbg !5789

if.end:                                           ; preds = %land.lhs.true, %do.body
  br label %do.end, !dbg !5792

do.end:                                           ; preds = %if.end
  %3 = load ptr, ptr %manager.addr, align 8, !dbg !5794
  %4 = load ptr, ptr %bdev.addr, align 8, !dbg !5795
  %man_drv = getelementptr inbounds %struct.ttm_device, ptr %4, i32 0, i32 3, !dbg !5796
  %5 = load i32, ptr %type.addr, align 4, !dbg !5797
  %idxprom = sext i32 %5 to i64, !dbg !5795
  %arrayidx = getelementptr [8 x ptr], ptr %man_drv, i64 0, i64 %idxprom, !dbg !5795
  store ptr %3, ptr %arrayidx, align 8, !dbg !5798
  ret void, !dbg !5799
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #4 align 16 !dbg !5800 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5806, metadata !DIExpression()), !dbg !5807
  br label %do.body, !dbg !5808

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5810

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5808
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !5808
  %1 = load volatile ptr, ptr %next, align 8, !dbg !5808
  store ptr %1, ptr %tmp, align 8, !dbg !5810
  %2 = load ptr, ptr %tmp, align 8, !dbg !5808
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5812
  %cmp = icmp eq ptr %2, %3, !dbg !5813
  %conv = zext i1 %cmp to i32, !dbg !5813
  ret i32 %conv, !dbg !5814
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5815 dso_local void @ttm_pool_fini(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ttm_device_clear_dma_mappings(ptr noundef %bdev) #0 align 16 !dbg !5818 {
entry:
  %bdev.addr = alloca ptr, align 8
  %man = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5820, metadata !DIExpression()), !dbg !5824
  call void @llvm.lifetime.start.p0(i64 8, ptr %man) #13, !dbg !5825
  call void @llvm.dbg.declare(metadata ptr %man, metadata !5821, metadata !DIExpression()), !dbg !5826
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !5827
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5822, metadata !DIExpression()), !dbg !5828
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #13, !dbg !5827
  call void @llvm.dbg.declare(metadata ptr %j, metadata !5823, metadata !DIExpression()), !dbg !5829
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !5830
  %1 = load ptr, ptr %bdev.addr, align 8, !dbg !5831
  %pinned = getelementptr inbounds %struct.ttm_device, ptr %1, i32 0, i32 7, !dbg !5832
  call void @ttm_device_clear_lru_dma_mappings(ptr noundef %0, ptr noundef %pinned) #14, !dbg !5833
  store i32 0, ptr %i, align 4, !dbg !5834
  br label %for.cond, !dbg !5836

for.cond:                                         ; preds = %for.inc5, %entry
  %2 = load i32, ptr %i, align 4, !dbg !5837
  %cmp = icmp ult i32 %2, 8, !dbg !5839
  br i1 %cmp, label %for.body, label %for.end7, !dbg !5840

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %bdev.addr, align 8, !dbg !5841
  %4 = load i32, ptr %i, align 4, !dbg !5843
  %call = call ptr @ttm_manager_type(ptr noundef %3, i32 noundef %4) #14, !dbg !5844
  store ptr %call, ptr %man, align 8, !dbg !5845
  %5 = load ptr, ptr %man, align 8, !dbg !5846
  %tobool = icmp ne ptr %5, null, !dbg !5846
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5848

lor.lhs.false:                                    ; preds = %for.body
  %6 = load ptr, ptr %man, align 8, !dbg !5849
  %use_tt = getelementptr inbounds %struct.ttm_resource_manager, ptr %6, i32 0, i32 1, !dbg !5850
  %7 = load i8, ptr %use_tt, align 1, !dbg !5850, !range !5260, !noundef !1160
  %tobool1 = trunc i8 %7 to i1, !dbg !5850
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5851

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc5, !dbg !5852

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %j, align 4, !dbg !5853
  br label %for.cond2, !dbg !5855

for.cond2:                                        ; preds = %for.inc, %if.end
  %8 = load i32, ptr %j, align 4, !dbg !5856
  %cmp3 = icmp ult i32 %8, 4, !dbg !5858
  br i1 %cmp3, label %for.body4, label %for.end, !dbg !5859

for.body4:                                        ; preds = %for.cond2
  %9 = load ptr, ptr %bdev.addr, align 8, !dbg !5860
  %10 = load ptr, ptr %man, align 8, !dbg !5861
  %lru = getelementptr inbounds %struct.ttm_resource_manager, ptr %10, i32 0, i32 7, !dbg !5862
  %11 = load i32, ptr %j, align 4, !dbg !5863
  %idxprom = zext i32 %11 to i64, !dbg !5861
  %arrayidx = getelementptr [4 x %struct.list_head], ptr %lru, i64 0, i64 %idxprom, !dbg !5861
  call void @ttm_device_clear_lru_dma_mappings(ptr noundef %9, ptr noundef %arrayidx) #14, !dbg !5864
  br label %for.inc, !dbg !5864

for.inc:                                          ; preds = %for.body4
  %12 = load i32, ptr %j, align 4, !dbg !5865
  %inc = add i32 %12, 1, !dbg !5865
  store i32 %inc, ptr %j, align 4, !dbg !5865
  br label %for.cond2, !dbg !5866, !llvm.loop !5867

for.end:                                          ; preds = %for.cond2
  br label %for.inc5, !dbg !5869

for.inc5:                                         ; preds = %for.end, %if.then
  %13 = load i32, ptr %i, align 4, !dbg !5870
  %inc6 = add i32 %13, 1, !dbg !5870
  store i32 %inc6, ptr %i, align 4, !dbg !5870
  br label %for.cond, !dbg !5871, !llvm.loop !5872

for.end7:                                         ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #13, !dbg !5874
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !5874
  call void @llvm.lifetime.end.p0(i64 8, ptr %man) #13, !dbg !5874
  ret void, !dbg !5874
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_device_clear_lru_dma_mappings(ptr noundef %bdev, ptr noundef %list) #0 align 16 !dbg !5875 {
entry:
  %bdev.addr = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  %res = alloca ptr, align 8
  %head__ = alloca ptr, align 8
  %pos__ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %bo = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5879, metadata !DIExpression()), !dbg !5889
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5880, metadata !DIExpression()), !dbg !5890
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #13, !dbg !5891
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5881, metadata !DIExpression()), !dbg !5892
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !5893
  %lru_lock = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 6, !dbg !5894
  call void @spin_lock(ptr noundef %lru_lock) #14, !dbg !5895
  br label %while.cond, !dbg !5896

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %head__) #13, !dbg !5897
  call void @llvm.dbg.declare(metadata ptr %head__, metadata !5882, metadata !DIExpression()), !dbg !5897
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5897
  store ptr %1, ptr %head__, align 8, !dbg !5897
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos__) #13, !dbg !5897
  call void @llvm.dbg.declare(metadata ptr %pos__, metadata !5884, metadata !DIExpression()), !dbg !5897
  br label %do.body, !dbg !5898

do.body:                                          ; preds = %while.cond
  br label %do.cond, !dbg !5900

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5900

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %head__, align 8, !dbg !5898
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !5898
  %3 = load volatile ptr, ptr %next, align 8, !dbg !5898
  store ptr %3, ptr %tmp, align 8, !dbg !5900
  %4 = load ptr, ptr %tmp, align 8, !dbg !5898
  store ptr %4, ptr %pos__, align 8, !dbg !5897
  %5 = load ptr, ptr %pos__, align 8, !dbg !5897
  %6 = load ptr, ptr %head__, align 8, !dbg !5897
  %cmp = icmp ne ptr %5, %6, !dbg !5897
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5897

cond.true:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !5902
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5885, metadata !DIExpression()), !dbg !5902
  %7 = load ptr, ptr %pos__, align 8, !dbg !5902
  store ptr %7, ptr %__mptr, align 8, !dbg !5902
  %8 = load ptr, ptr %__mptr, align 8, !dbg !5902
  %add.ptr = getelementptr i8, ptr %8, i64 -56, !dbg !5902
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !5902
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !5897
  %9 = load ptr, ptr %tmp2, align 8, !dbg !5902
  br label %cond.end, !dbg !5897

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !5897

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %9, %cond.true ], [ null, %cond.false ], !dbg !5897
  store ptr %cond, ptr %tmp1, align 8, !dbg !5897
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos__) #13, !dbg !5903
  call void @llvm.lifetime.end.p0(i64 8, ptr %head__) #13, !dbg !5903
  %10 = load ptr, ptr %tmp1, align 8, !dbg !5897
  store ptr %10, ptr %res, align 8, !dbg !5904
  %tobool = icmp ne ptr %10, null, !dbg !5896
  br i1 %tobool, label %while.body, label %while.end, !dbg !5896

while.body:                                       ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %bo) #13, !dbg !5905
  call void @llvm.dbg.declare(metadata ptr %bo, metadata !5887, metadata !DIExpression()), !dbg !5906
  %11 = load ptr, ptr %res, align 8, !dbg !5907
  %bo3 = getelementptr inbounds %struct.ttm_resource, ptr %11, i32 0, i32 5, !dbg !5908
  %12 = load ptr, ptr %bo3, align 8, !dbg !5908
  store ptr %12, ptr %bo, align 8, !dbg !5906
  %13 = load ptr, ptr %bo, align 8, !dbg !5909
  %call = call ptr @ttm_bo_get_unless_zero(ptr noundef %13) #14, !dbg !5911
  %tobool4 = icmp ne ptr %call, null, !dbg !5911
  br i1 %tobool4, label %if.end, label %if.then, !dbg !5912

if.then:                                          ; preds = %while.body
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5913, !llvm.loop !5914

if.end:                                           ; preds = %while.body
  %14 = load ptr, ptr %res, align 8, !dbg !5916
  %lru = getelementptr inbounds %struct.ttm_resource, ptr %14, i32 0, i32 6, !dbg !5917
  call void @list_del_init(ptr noundef %lru) #14, !dbg !5918
  %15 = load ptr, ptr %bdev.addr, align 8, !dbg !5919
  %lru_lock5 = getelementptr inbounds %struct.ttm_device, ptr %15, i32 0, i32 6, !dbg !5920
  call void @spin_unlock(ptr noundef %lru_lock5) #14, !dbg !5921
  %16 = load ptr, ptr %bo, align 8, !dbg !5922
  %ttm = getelementptr inbounds %struct.ttm_buffer_object, ptr %16, i32 0, i32 7, !dbg !5924
  %17 = load ptr, ptr %ttm, align 8, !dbg !5924
  %tobool6 = icmp ne ptr %17, null, !dbg !5922
  br i1 %tobool6, label %if.then7, label %if.end10, !dbg !5925

if.then7:                                         ; preds = %if.end
  %18 = load ptr, ptr %bo, align 8, !dbg !5926
  %bdev8 = getelementptr inbounds %struct.ttm_buffer_object, ptr %18, i32 0, i32 1, !dbg !5927
  %19 = load ptr, ptr %bdev8, align 8, !dbg !5927
  %20 = load ptr, ptr %bo, align 8, !dbg !5928
  %ttm9 = getelementptr inbounds %struct.ttm_buffer_object, ptr %20, i32 0, i32 7, !dbg !5929
  %21 = load ptr, ptr %ttm9, align 8, !dbg !5929
  call void @ttm_tt_unpopulate(ptr noundef %19, ptr noundef %21) #14, !dbg !5930
  br label %if.end10, !dbg !5930

if.end10:                                         ; preds = %if.then7, %if.end
  %22 = load ptr, ptr %bo, align 8, !dbg !5931
  call void @ttm_bo_put(ptr noundef %22) #14, !dbg !5932
  %23 = load ptr, ptr %bdev.addr, align 8, !dbg !5933
  %lru_lock11 = getelementptr inbounds %struct.ttm_device, ptr %23, i32 0, i32 6, !dbg !5934
  call void @spin_lock(ptr noundef %lru_lock11) #14, !dbg !5935
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5915
  br label %cleanup, !dbg !5915

cleanup:                                          ; preds = %if.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bo) #13, !dbg !5915
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !5896, !llvm.loop !5914

while.end:                                        ; preds = %cond.end
  %24 = load ptr, ptr %bdev.addr, align 8, !dbg !5936
  %lru_lock12 = getelementptr inbounds %struct.ttm_device, ptr %24, i32 0, i32 6, !dbg !5937
  call void @spin_unlock(ptr noundef %lru_lock12) #14, !dbg !5938
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #13, !dbg !5939
  ret void, !dbg !5939

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #4 align 16 !dbg !5940 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5942, metadata !DIExpression()), !dbg !5943
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5944
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #14, !dbg !5946
  br i1 %call, label %if.end, label %if.then, !dbg !5947

if.then:                                          ; preds = %entry
  br label %return, !dbg !5948

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5949
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5950
  %2 = load ptr, ptr %prev, align 8, !dbg !5950
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !5951
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5952
  %4 = load ptr, ptr %next, align 8, !dbg !5952
  call void @__list_del(ptr noundef %2, ptr noundef %4) #14, !dbg !5953
  br label %return, !dbg !5954

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5954
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #4 align 16 !dbg !5955 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5959, metadata !DIExpression()), !dbg !5960
  ret i1 true, !dbg !5961
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !5962 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5964, metadata !DIExpression()), !dbg !5966
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5965, metadata !DIExpression()), !dbg !5967
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !5968
  %1 = load ptr, ptr %next.addr, align 8, !dbg !5969
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5970
  store ptr %0, ptr %prev1, align 8, !dbg !5971
  br label %do.body, !dbg !5972

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5973

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5975

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5973

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5977
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !5977
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5977
  store volatile ptr %2, ptr %next4, align 8, !dbg !5977
  br label %do.end5, !dbg !5977

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5973

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5979
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5980 dso_local void @_raw_spin_lock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5984 dso_local void @__compiletime_assert_294() #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5985 dso_local void @_raw_spin_unlock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5986 dso_local void @si_meminfo(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5990 dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !5994 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5999, metadata !DIExpression()), !dbg !6000
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6001
  %1 = ptrtoint ptr %0 to i64, !dbg !6001
  %2 = inttoptr i64 %1 to ptr, !dbg !6001
  %3 = ptrtoint ptr %2 to i64, !dbg !6001
  %cmp = icmp uge i64 %3, -4095, !dbg !6001
  %lnot = xor i1 %cmp, true, !dbg !6001
  %lnot1 = xor i1 %lnot, true, !dbg !6001
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6001
  %conv = sext i32 %lnot.ext to i64, !dbg !6001
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6001
  %tobool = icmp ne i64 %expval, 0, !dbg !6001
  ret i1 %tobool, !dbg !6002
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6003 dso_local i32 @ttm_pool_mgr_init(i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6006 dso_local void @ttm_tt_mgr_init(i64 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6009 dso_local ptr @alloc_pages(i32 noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !6013 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6019, metadata !DIExpression()), !dbg !6021
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6020, metadata !DIExpression()), !dbg !6022
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6023
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #14, !dbg !6024
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6025
  %2 = load i32, ptr %i.addr, align 4, !dbg !6026
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #14, !dbg !6027
  ret void, !dbg !6028
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6029 dso_local void @debugfs_create_atomic_t(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6032 dso_local void @debugfs_remove(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6033 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6041, metadata !DIExpression()), !dbg !6043
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6042, metadata !DIExpression()), !dbg !6044
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6045
  %1 = load i64, ptr %size.addr, align 8, !dbg !6046
  %conv = trunc i64 %1 to i32, !dbg !6046
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !6047
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6048
  %3 = load i64, ptr %size.addr, align 8, !dbg !6048
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #14, !dbg !6048
  ret void, !dbg !6049
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !6050 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6053, metadata !DIExpression()), !dbg !6055
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6054, metadata !DIExpression()), !dbg !6056
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6057
  %1 = load i32, ptr %i.addr, align 4, !dbg !6058
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #14, !dbg !6059
  ret void, !dbg !6060
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !6061 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6066, metadata !DIExpression()), !dbg !6068
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6067, metadata !DIExpression()), !dbg !6069
  ret i1 true, !dbg !6070
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !6071 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6076, metadata !DIExpression()), !dbg !6079
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6077, metadata !DIExpression()), !dbg !6080
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6078, metadata !DIExpression()), !dbg !6081
  ret void, !dbg !6082
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !6083 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6086, metadata !DIExpression()), !dbg !6088
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6087, metadata !DIExpression()), !dbg !6089
  br label %do.body, !dbg !6090

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !6091
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6091
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !6091
  store volatile i32 %0, ptr %counter, align 4, !dbg !6091
  br label %do.end, !dbg !6091

do.end:                                           ; preds = %do.body
  ret void, !dbg !6093
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6094 dso_local void @ttm_pool_mgr_fini() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6095 dso_local void @__free_pages(ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6098 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6102, metadata !DIExpression()), !dbg !6105
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6103, metadata !DIExpression()), !dbg !6106
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6104, metadata !DIExpression()), !dbg !6107
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6108
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6110
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6111
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14, !dbg !6112
  br i1 %call, label %if.end, label %if.then, !dbg !6113

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6114

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6115
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6116
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6117
  store ptr %3, ptr %prev1, align 8, !dbg !6118
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6119
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6120
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6121
  store ptr %5, ptr %next2, align 8, !dbg !6122
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6123
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6124
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6125
  store ptr %7, ptr %prev3, align 8, !dbg !6126
  br label %do.body, !dbg !6127

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6128

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6130

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6128

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6132
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6132
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6132
  store volatile ptr %9, ptr %next6, align 8, !dbg !6132
  br label %do.end7, !dbg !6132

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6128

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6134
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6135 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6139, metadata !DIExpression()), !dbg !6142
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6140, metadata !DIExpression()), !dbg !6143
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6141, metadata !DIExpression()), !dbg !6144
  ret i1 true, !dbg !6145
}

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6146 dso_local void @__compiletime_assert_295() #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ttm_bo_get_unless_zero(ptr noundef %bo) #4 align 16 !dbg !6147 {
entry:
  %retval = alloca ptr, align 8
  %bo.addr = alloca ptr, align 8
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !6151, metadata !DIExpression()), !dbg !6152
  %0 = load ptr, ptr %bo.addr, align 8, !dbg !6153
  %kref = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 5, !dbg !6155
  %call = call i32 @kref_get_unless_zero(ptr noundef %kref) #14, !dbg !6156
  %tobool = icmp ne i32 %call, 0, !dbg !6156
  br i1 %tobool, label %if.end, label %if.then, !dbg !6157

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6158
  br label %return, !dbg !6158

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %bo.addr, align 8, !dbg !6159
  store ptr %1, ptr %retval, align 8, !dbg !6160
  br label %return, !dbg !6160

return:                                           ; preds = %if.end, %if.then
  %2 = load ptr, ptr %retval, align 8, !dbg !6161
  ret ptr %2, !dbg !6161
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #4 align 16 !dbg !6162 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6164, metadata !DIExpression()), !dbg !6165
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6166
  call void @__list_del_entry(ptr noundef %0) #14, !dbg !6167
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6168
  call void @INIT_LIST_HEAD(ptr noundef %1) #14, !dbg !6169
  ret void, !dbg !6170
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6171 dso_local void @ttm_tt_unpopulate(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6172 dso_local void @ttm_bo_put(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_get_unless_zero(ptr noundef %kref) #4 align 16 !dbg !6173 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !6178, metadata !DIExpression()), !dbg !6179
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !6180
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !6181
  %call = call zeroext i1 @refcount_inc_not_zero(ptr noundef %refcount) #14, !dbg !6182
  %conv = zext i1 %call to i32, !dbg !6182
  ret i32 %conv, !dbg !6183
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_inc_not_zero(ptr noundef %r) #4 align 16 !dbg !6184 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6189, metadata !DIExpression()), !dbg !6190
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6191
  %call = call zeroext i1 @__refcount_inc_not_zero(ptr noundef %0, ptr noundef null) #14, !dbg !6192
  ret i1 %call, !dbg !6193
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_inc_not_zero(ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !6194 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6198, metadata !DIExpression()), !dbg !6200
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6199, metadata !DIExpression()), !dbg !6201
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6202
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6203
  %call = call zeroext i1 @__refcount_add_not_zero(i32 noundef 1, ptr noundef %0, ptr noundef %1) #14, !dbg !6204
  ret i1 %call, !dbg !6205
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_add_not_zero(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !6206 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6210, metadata !DIExpression()), !dbg !6214
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6211, metadata !DIExpression()), !dbg !6215
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6212, metadata !DIExpression()), !dbg !6216
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #13, !dbg !6217
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6213, metadata !DIExpression()), !dbg !6218
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6219
  %call = call i32 @refcount_read(ptr noundef %0) #14, !dbg !6220
  store i32 %call, ptr %old, align 4, !dbg !6218
  br label %do.body, !dbg !6221

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, ptr %old, align 4, !dbg !6222
  %tobool = icmp ne i32 %1, 0, !dbg !6222
  br i1 %tobool, label %if.end, label %if.then, !dbg !6225

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !6226

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !6227

do.cond:                                          ; preds = %if.end
  %2 = load ptr, ptr %r.addr, align 8, !dbg !6228
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %2, i32 0, i32 0, !dbg !6229
  %3 = load i32, ptr %old, align 4, !dbg !6230
  %4 = load i32, ptr %i.addr, align 4, !dbg !6231
  %add = add i32 %3, %4, !dbg !6232
  %call1 = call zeroext i1 @atomic_try_cmpxchg_relaxed(ptr noundef %refs, ptr noundef %old, i32 noundef %add) #14, !dbg !6233
  %lnot = xor i1 %call1, true, !dbg !6234
  br i1 %lnot, label %do.body, label %do.end, !dbg !6227, !llvm.loop !6235

do.end:                                           ; preds = %do.cond, %if.then
  %5 = load ptr, ptr %oldp.addr, align 8, !dbg !6237
  %tobool2 = icmp ne ptr %5, null, !dbg !6237
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6239

if.then3:                                         ; preds = %do.end
  %6 = load i32, ptr %old, align 4, !dbg !6240
  %7 = load ptr, ptr %oldp.addr, align 8, !dbg !6241
  store i32 %6, ptr %7, align 4, !dbg !6242
  br label %if.end4, !dbg !6243

if.end4:                                          ; preds = %if.then3, %do.end
  %8 = load i32, ptr %old, align 4, !dbg !6244
  %cmp = icmp slt i32 %8, 0, !dbg !6244
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6244

lor.rhs:                                          ; preds = %if.end4
  %9 = load i32, ptr %old, align 4, !dbg !6244
  %10 = load i32, ptr %i.addr, align 4, !dbg !6244
  %add5 = add i32 %9, %10, !dbg !6244
  %cmp6 = icmp slt i32 %add5, 0, !dbg !6244
  br label %lor.end, !dbg !6244

lor.end:                                          ; preds = %lor.rhs, %if.end4
  %11 = phi i1 [ true, %if.end4 ], [ %cmp6, %lor.rhs ]
  %lnot7 = xor i1 %11, true, !dbg !6244
  %lnot8 = xor i1 %lnot7, true, !dbg !6244
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !6244
  %conv = sext i32 %lnot.ext to i64, !dbg !6244
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6244
  %tobool9 = icmp ne i64 %expval, 0, !dbg !6244
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !6246

if.then10:                                        ; preds = %lor.end
  %12 = load ptr, ptr %r.addr, align 8, !dbg !6247
  call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 0) #14, !dbg !6248
  br label %if.end11, !dbg !6248

if.end11:                                         ; preds = %if.then10, %lor.end
  %13 = load i32, ptr %old, align 4, !dbg !6249
  %tobool12 = icmp ne i32 %13, 0, !dbg !6249
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #13, !dbg !6250
  ret i1 %tobool12, !dbg !6251
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @refcount_read(ptr noundef %r) #4 align 16 !dbg !6252 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6258, metadata !DIExpression()), !dbg !6259
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6260
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !6261
  %call = call i32 @atomic_read(ptr noundef %refs) #14, !dbg !6262
  ret i32 %call, !dbg !6263
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_try_cmpxchg_relaxed(ptr noundef %v, ptr noundef %old, i32 noundef %new) #5 align 16 !dbg !6264 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6268, metadata !DIExpression()), !dbg !6271
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6269, metadata !DIExpression()), !dbg !6272
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6270, metadata !DIExpression()), !dbg !6273
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6274
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !6275
  %1 = load ptr, ptr %old.addr, align 8, !dbg !6276
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 4) #14, !dbg !6277
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6278
  %3 = load ptr, ptr %old.addr, align 8, !dbg !6279
  %4 = load i32, ptr %new.addr, align 4, !dbg !6280
  %call = call zeroext i1 @raw_atomic_try_cmpxchg_relaxed(ptr noundef %2, ptr noundef %3, i32 noundef %4) #14, !dbg !6281
  ret i1 %call, !dbg !6282
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6283 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #5 align 16 !dbg !6286 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6292, metadata !DIExpression()), !dbg !6293
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6294
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #14, !dbg !6295
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6296
  %call = call i32 @raw_atomic_read(ptr noundef %1) #14, !dbg !6297
  ret i32 %call, !dbg !6298
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6299 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6301, metadata !DIExpression()), !dbg !6303
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6302, metadata !DIExpression()), !dbg !6304
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6305
  %1 = load i64, ptr %size.addr, align 8, !dbg !6306
  %conv = trunc i64 %1 to i32, !dbg !6306
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #14, !dbg !6307
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6308
  %3 = load i64, ptr %size.addr, align 8, !dbg !6308
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #14, !dbg !6308
  ret void, !dbg !6309
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #5 align 16 !dbg !6310 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6312, metadata !DIExpression()), !dbg !6313
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6314
  %call = call i32 @arch_atomic_read(ptr noundef %0) #14, !dbg !6315
  ret i32 %call, !dbg !6316
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !6317 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6319, metadata !DIExpression()), !dbg !6321
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6320, metadata !DIExpression()), !dbg !6322
  ret i1 true, !dbg !6323
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #5 align 16 !dbg !6324 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6326, metadata !DIExpression()), !dbg !6327
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6328
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6328
  %1 = load volatile i32, ptr %counter, align 4, !dbg !6328
  ret i32 %1, !dbg !6329
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6330 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6332, metadata !DIExpression()), !dbg !6334
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6333, metadata !DIExpression()), !dbg !6335
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6336
  %1 = load i64, ptr %size.addr, align 8, !dbg !6337
  %conv = trunc i64 %1 to i32, !dbg !6337
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !6338
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6339
  %3 = load i64, ptr %size.addr, align 8, !dbg !6339
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #14, !dbg !6339
  ret void, !dbg !6340
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg_relaxed(ptr noundef %v, ptr noundef %old, i32 noundef %new) #5 align 16 !dbg !6341 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6343, metadata !DIExpression()), !dbg !6346
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6344, metadata !DIExpression()), !dbg !6347
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6345, metadata !DIExpression()), !dbg !6348
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6349
  %1 = load ptr, ptr %old.addr, align 8, !dbg !6350
  %2 = load i32, ptr %new.addr, align 4, !dbg !6351
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #14, !dbg !6352
  ret i1 %call, !dbg !6353
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #5 align 16 !dbg !6354 {
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
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6356, metadata !DIExpression()), !dbg !6365
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6357, metadata !DIExpression()), !dbg !6366
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6358, metadata !DIExpression()), !dbg !6367
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #13, !dbg !6368
  call void @llvm.dbg.declare(metadata ptr %success, metadata !6359, metadata !DIExpression()), !dbg !6368
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #13, !dbg !6368
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !6361, metadata !DIExpression()), !dbg !6368
  %0 = load ptr, ptr %old.addr, align 8, !dbg !6368
  store ptr %0, ptr %_old, align 8, !dbg !6368
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #13, !dbg !6368
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !6362, metadata !DIExpression()), !dbg !6368
  %1 = load ptr, ptr %_old, align 8, !dbg !6368
  %2 = load i32, ptr %1, align 4, !dbg !6368
  store i32 %2, ptr %__old, align 4, !dbg !6368
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #13, !dbg !6368
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !6363, metadata !DIExpression()), !dbg !6368
  %3 = load i32, ptr %new.addr, align 4, !dbg !6368
  store i32 %3, ptr %__new, align 4, !dbg !6368
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #13, !dbg !6368
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6364, metadata !DIExpression()), !dbg !6368
  %4 = load ptr, ptr %v.addr, align 8, !dbg !6368
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !6368
  store ptr %counter, ptr %__ptr, align 8, !dbg !6368
  %5 = load ptr, ptr %__ptr, align 8, !dbg !6368
  %6 = load i32, ptr %__old, align 4, !dbg !6368
  %7 = load i32, ptr %__new, align 4, !dbg !6368
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #13, !dbg !6368, !srcloc !6369
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !6368
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !6368
  %9 = icmp ult i8 %asmresult, 2, !dbg !6368
  call void @llvm.assume(i1 %9), !dbg !6368
  store i8 %asmresult, ptr %success, align 1, !dbg !6368
  store i32 %asmresult1, ptr %__old, align 4, !dbg !6368
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #13, !dbg !6368
  %10 = load i8, ptr %success, align 1, !dbg !6370, !range !5260, !noundef !1160
  %tobool = trunc i8 %10 to i1, !dbg !6370
  %lnot = xor i1 %tobool, true, !dbg !6370
  %lnot2 = xor i1 %lnot, true, !dbg !6370
  %lnot3 = xor i1 %lnot2, true, !dbg !6370
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6370
  %conv = sext i32 %lnot.ext to i64, !dbg !6370
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6370
  %tobool4 = icmp ne i64 %expval, 0, !dbg !6370
  br i1 %tobool4, label %if.then, label %if.end, !dbg !6368

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !6370
  %12 = load ptr, ptr %_old, align 8, !dbg !6370
  store i32 %11, ptr %12, align 4, !dbg !6370
  br label %if.end, !dbg !6370

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !6368, !range !5260, !noundef !1160
  %tobool5 = trunc i8 %13 to i1, !dbg !6368
  %lnot6 = xor i1 %tobool5, true, !dbg !6368
  %lnot8 = xor i1 %lnot6, true, !dbg !6368
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !6368
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !6368
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !6368
  store i64 %expval11, ptr %tmp, align 8, !dbg !6370
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #13, !dbg !6372
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #13, !dbg !6372
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #13, !dbg !6372
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #13, !dbg !6372
  %14 = load i64, ptr %tmp, align 8, !dbg !6368
  %tobool12 = icmp ne i64 %14, 0, !dbg !6372
  ret i1 %tobool12, !dbg !6373
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="BUILD_BUG_ON failed: __builtin_constant_p(mem_type) && mem_type >= TTM_NUM_MEM_TYPES" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="BUILD_BUG_ON failed: __builtin_constant_p(type) && type >= TTM_NUM_MEM_TYPES" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5140, !5141, !5142, !5143, !5144, !5145, !5146, !5147}
!llvm.ident = !{!5148}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ttm_glob", scope: !2, file: !3, line: 44, type: !5135, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/ttm/.ttm_device.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/ttm/ttm\22 -D KBUILD_BASENAME=\22ttm_device\22 -D KBUILD_MODNAME=\22ttm\22 -D __KBUILD_MODNAME=kmod_ttm -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/ttm/ttm_device.ll drivers/gpu/drm/ttm/ttm_device.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !189, globals: !5100, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/ttm/ttm_device.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "baf7b21c59708728e25f02733d3be45d")
!4 = !{!5, !11, !19, !26, !34, !50, !57, !63, !68, !74, !80, !87, !93, !98, !104, !110, !117, !125, !133, !142, !147, !152, !158, !176, !181}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !12, line: 9, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!13 = !{!14, !15, !16, !17, !18}
!14 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!15 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!16 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!17 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!18 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !20, line: 312, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!23 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!24 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!25 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !51, line: 15, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!52 = !{!53, !54, !55, !56}
!53 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!54 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!55 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!56 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !58, line: 26, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!59 = !{!60, !61, !62}
!60 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!61 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!62 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !64, line: 2052, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!65 = !{!66, !67}
!66 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!67 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !69, line: 54, baseType: !7, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!70 = !{!71, !72, !73}
!71 = !DIEnumerator(name: "USRQUOTA", value: 0)
!72 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!73 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !75, line: 16, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!76 = !{!77, !78, !79}
!77 = !DIEnumerator(name: "TT_NONE", value: 0)
!78 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!79 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !81, line: 51, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!84 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!85 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!86 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ttm_caching", file: !88, line: 33, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/drm/ttm/ttm_caching.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "19c2ae3004d13ae67685208908fb2e14")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "ttm_uncached", value: 0)
!91 = !DIEnumerator(name: "ttm_write_combined", value: 1)
!92 = !DIEnumerator(name: "ttm_cached", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_gem_object_status", file: !94, line: 61, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/drm/drm_gem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5db19977067e41c640c8fecb4e671923")
!95 = !{!96, !97}
!96 = !DIEnumerator(name: "DRM_GEM_OBJECT_RESIDENT", value: 1)
!97 = !DIEnumerator(name: "DRM_GEM_OBJECT_PURGEABLE", value: 2)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ttm_bo_type", file: !99, line: 67, baseType: !7, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/drm/ttm/ttm_bo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2f81fca0b8181781f1c758cd81feeff")
!100 = !{!101, !102, !103}
!101 = !DIEnumerator(name: "ttm_bo_type_device", value: 0)
!102 = !DIEnumerator(name: "ttm_bo_type_kernel", value: 1)
!103 = !DIEnumerator(name: "ttm_bo_type_sg", value: 2)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !105, line: 45, baseType: !7, size: 32, elements: !106)
!105 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!106 = !{!107, !108, !109}
!107 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!108 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!109 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !111, line: 487, baseType: !7, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!112 = !{!113, !114, !115, !116}
!113 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!114 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!115 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!116 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !118, line: 620, baseType: !7, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!119 = !{!120, !121, !122, !123, !124}
!120 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!121 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!122 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!123 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!124 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !118, line: 597, baseType: !126, size: 32, elements: !127)
!126 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!127 = !{!128, !129, !130, !131, !132}
!128 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!129 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!130 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!131 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!132 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !111, line: 547, baseType: !7, size: 32, elements: !134)
!134 = !{!135, !136, !137, !138, !139, !140, !141}
!135 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!136 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!137 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!138 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!139 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!140 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!141 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !111, line: 564, baseType: !7, size: 32, elements: !143)
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!145 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!146 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !111, line: 577, baseType: !7, size: 32, elements: !148)
!148 = !{!149, !150, !151}
!149 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!150 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!151 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !111, line: 503, baseType: !7, size: 32, elements: !153)
!153 = !{!154, !155, !156, !157}
!154 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!155 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!156 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!157 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !159, line: 364, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!160 = !{!161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175}
!161 = !DIEnumerator(name: "WQ_UNBOUND", value: 2)
!162 = !DIEnumerator(name: "WQ_FREEZABLE", value: 4)
!163 = !DIEnumerator(name: "WQ_MEM_RECLAIM", value: 8)
!164 = !DIEnumerator(name: "WQ_HIGHPRI", value: 16)
!165 = !DIEnumerator(name: "WQ_CPU_INTENSIVE", value: 32)
!166 = !DIEnumerator(name: "WQ_SYSFS", value: 64)
!167 = !DIEnumerator(name: "WQ_POWER_EFFICIENT", value: 128)
!168 = !DIEnumerator(name: "__WQ_DESTROYING", value: 32768)
!169 = !DIEnumerator(name: "__WQ_DRAINING", value: 65536)
!170 = !DIEnumerator(name: "__WQ_ORDERED", value: 131072)
!171 = !DIEnumerator(name: "__WQ_LEGACY", value: 262144)
!172 = !DIEnumerator(name: "__WQ_ORDERED_EXPLICIT", value: 524288)
!173 = !DIEnumerator(name: "WQ_MAX_ACTIVE", value: 512)
!174 = !DIEnumerator(name: "WQ_UNBOUND_MAX_ACTIVE", value: 512)
!175 = !DIEnumerator(name: "WQ_DFL_ACTIVE", value: 256)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !177, line: 10, baseType: !7, size: 32, elements: !178)
!177 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!178 = !{!179, !180}
!179 = !DIEnumerator(name: "false", value: 0)
!180 = !DIEnumerator(name: "true", value: 1)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !182, line: 119, baseType: !7, size: 32, elements: !183)
!182 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!183 = !{!184, !185, !186, !187, !188}
!184 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!185 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!186 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!187 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!188 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!189 = !{!190, !191, !5090, !322, !1371, !221, !5092, !5094, !4417, !5096, !1886, !5098}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_device", file: !193, line: 215, size: 16960, elements: !194)
!193 = !DIFile(filename: "./include/drm/ttm/ttm_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "318d87bc69ff4bc10378351ef0b91aca")
!194 = !{!195, !202, !4519, !4604, !4606, !4612, !5086, !5087, !5088, !5089}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !192, file: !193, line: 220, baseType: !196, size: 128)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !197, line: 190, size: 128, elements: !198)
!197 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!198 = !{!199, !201}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !196, file: !197, line: 191, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !196, file: !197, line: 191, baseType: !200, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !192, file: !193, line: 226, baseType: !203, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_device_funcs", file: !193, line: 61, size: 896, elements: !206)
!206 = !{!207, !4451, !4466, !4470, !4471, !4484, !4495, !4500, !4501, !4502, !4506, !4510, !4514, !4518}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "ttm_tt_create", scope: !205, file: !193, line: 73, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!211, !4214, !806}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_tt", file: !213, line: 46, size: 384, elements: !214)
!213 = !DIFile(filename: "./include/drm/ttm/ttm_tt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a8611f3b3c85a1444200cb28e58947d5")
!214 = !{!215, !4204, !4205, !4206, !4209, !4212, !4213}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !212, file: !213, line: 48, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !35, line: 74, size: 512, align: 128, elements: !219)
!219 = !{!220, !222, !4198, !4203}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !218, file: !35, line: 75, baseType: !221, size: 64)
!221 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!222 = !DIDerivedType(tag: DW_TAG_member, scope: !218, file: !35, line: 83, baseType: !223, size: 320, offset: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !218, file: !35, line: 83, size: 320, elements: !224)
!224 = !{!225, !4104, !4118, !4122, !4197}
!225 = !DIDerivedType(tag: DW_TAG_member, scope: !223, file: !35, line: 84, baseType: !226, size: 320)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !223, file: !35, line: 84, size: 320, elements: !227)
!227 = !{!228, !239, !4098, !4103}
!228 = !DIDerivedType(tag: DW_TAG_member, scope: !226, file: !35, line: 90, baseType: !229, size: 128)
!229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !226, file: !35, line: 90, size: 128, elements: !230)
!230 = !{!231, !232, !237, !238}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !229, file: !35, line: 91, baseType: !196, size: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, scope: !229, file: !35, line: 94, baseType: !233, size: 128)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !229, file: !35, line: 94, size: 128, elements: !234)
!234 = !{!235, !236}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !233, file: !35, line: 96, baseType: !190, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !233, file: !35, line: 98, baseType: !7, size: 32, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !229, file: !35, line: 102, baseType: !196, size: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !229, file: !35, line: 103, baseType: !196, size: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !226, file: !35, line: 106, baseType: !240, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !64, line: 472, size: 1536, align: 64, elements: !242)
!242 = !{!243, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !4092, !4093, !4094, !4095, !4096, !4097}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !241, file: !64, line: 473, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !64, line: 641, size: 4800, elements: !246)
!246 = !{!247, !250, !251, !260, !261, !268, !269, !272, !273, !3927, !3928, !3929, !3930, !3931, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3971, !3974, !3975, !3976, !3985, !3986, !3987, !3988}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !245, file: !64, line: 642, baseType: !248, size: 16)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !197, line: 24, baseType: !249)
!249 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !245, file: !64, line: 643, baseType: !249, size: 16, offset: 16)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !245, file: !64, line: 644, baseType: !252, size: 32, offset: 32)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !253, line: 23, baseType: !254)
!253 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !253, line: 21, size: 32, elements: !255)
!255 = !{!256}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !254, file: !253, line: 22, baseType: !257, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !197, line: 37, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !259, line: 49, baseType: !7)
!259 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!260 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !245, file: !64, line: 645, baseType: !196, size: 128, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !245, file: !64, line: 646, baseType: !262, size: 32, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !253, line: 28, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !253, line: 26, size: 32, elements: !264)
!264 = !{!265}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !263, file: !253, line: 27, baseType: !266, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !197, line: 38, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !259, line: 50, baseType: !7)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !245, file: !64, line: 647, baseType: !7, size: 32, offset: 224)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !245, file: !64, line: 650, baseType: !270, size: 64, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !64, line: 607, flags: DIFlagFwdDecl)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !245, file: !64, line: 651, baseType: !270, size: 64, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !245, file: !64, line: 654, baseType: !274, size: 64, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !64, line: 1966, size: 2048, align: 512, elements: !277)
!277 = !{!278, !3755, !3765, !3769, !3773, !3777, !3781, !3785, !3789, !3793, !3797, !3798, !3802, !3806, !3843, !3872, !3876, !3882, !3886, !3890, !3894, !3898, !3902, !3908, !3912}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !276, file: !64, line: 1967, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!282, !244, !282, !7}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !284, line: 82, size: 1536, elements: !285)
!284 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!285 = !{!286, !287, !297, !305, !306, !329, !330, !334, !385, !3738, !3739, !3740, !3741, !3747, !3748, !3749}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !283, file: !284, line: 84, baseType: !7, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !283, file: !284, line: 85, baseType: !288, size: 32, offset: 32)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !289, line: 275, baseType: !290)
!289 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !289, line: 275, size: 32, elements: !291)
!291 = !{!292}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !290, file: !289, line: 275, baseType: !293, size: 32)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !289, line: 69, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !289, line: 64, size: 32, elements: !295)
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !294, file: !289, line: 65, baseType: !7, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !283, file: !284, line: 86, baseType: !298, size: 128, offset: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !299, line: 38, size: 128, elements: !300)
!299 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!300 = !{!301, !303}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !298, file: !299, line: 39, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !298, file: !299, line: 39, baseType: !304, size: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !283, file: !284, line: 87, baseType: !282, size: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !283, file: !284, line: 88, baseType: !307, size: 128, offset: 256)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !284, line: 49, size: 128, elements: !308)
!308 = !{!309, !325}
!309 = !DIDerivedType(tag: DW_TAG_member, scope: !307, file: !284, line: 50, baseType: !310, size: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !307, file: !284, line: 50, size: 64, elements: !311)
!311 = !{!312, !321}
!312 = !DIDerivedType(tag: DW_TAG_member, scope: !310, file: !284, line: 51, baseType: !313, size: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !310, file: !284, line: 51, size: 64, elements: !314)
!314 = !{!315, !320}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !313, file: !284, line: 52, baseType: !316, size: 32)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !317, line: 21, baseType: !318)
!317 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !319, line: 27, baseType: !7)
!319 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!320 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !313, file: !284, line: 52, baseType: !316, size: 32, offset: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !310, file: !284, line: 54, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !317, line: 23, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !319, line: 31, baseType: !324)
!324 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !307, file: !284, line: 56, baseType: !326, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!328 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !283, file: !284, line: 89, baseType: !244, size: 64, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !283, file: !284, line: 91, baseType: !331, size: 256, offset: 448)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 256, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !283, file: !284, line: 94, baseType: !335, size: 64, offset: 704)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !336, line: 25, size: 64, elements: !337)
!336 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!337 = !{!338}
!338 = !DIDerivedType(tag: DW_TAG_member, scope: !335, file: !336, line: 26, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !335, file: !336, line: 26, size: 64, elements: !340)
!340 = !{!341, !342}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !339, file: !336, line: 28, baseType: !323, size: 64, align: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, scope: !339, file: !336, line: 30, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !339, file: !336, line: 30, size: 64, elements: !344)
!344 = !{!345, !384}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !343, file: !336, line: 31, baseType: !346, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !347, line: 29, baseType: !348)
!347 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !347, line: 17, size: 32, elements: !349)
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, scope: !348, file: !347, line: 18, baseType: !351, size: 32)
!351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !348, file: !347, line: 18, size: 32, elements: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !351, file: !347, line: 19, baseType: !354, size: 32)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !355, line: 14, size: 32, elements: !356)
!355 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !354, file: !355, line: 15, baseType: !358, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !359, line: 44, baseType: !360)
!359 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !359, line: 14, size: 32, elements: !361)
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, scope: !360, file: !359, line: 15, baseType: !363, size: 32)
!363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !360, file: !359, line: 15, size: 32, elements: !364)
!364 = !{!365, !370, !377}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !363, file: !359, line: 16, baseType: !366, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !197, line: 174, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !197, line: 172, size: 32, elements: !368)
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !367, file: !197, line: 173, baseType: !126, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !359, line: 24, baseType: !371, size: 16)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !363, file: !359, line: 24, size: 16, elements: !372)
!372 = !{!373, !376}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !371, file: !359, line: 25, baseType: !374, size: 8)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !317, line: 17, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !319, line: 21, baseType: !328)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !371, file: !359, line: 26, baseType: !374, size: 8, offset: 8)
!377 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !359, line: 28, baseType: !378, size: 32)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !363, file: !359, line: 28, size: 32, elements: !379)
!379 = !{!380, !383}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !378, file: !359, line: 29, baseType: !381, size: 16)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !317, line: 19, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !319, line: 24, baseType: !249)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !378, file: !359, line: 30, baseType: !381, size: 16, offset: 16)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !343, file: !336, line: 32, baseType: !126, size: 32, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !283, file: !284, line: 95, baseType: !386, size: 64, offset: 768)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !284, line: 128, size: 1024, align: 512, elements: !389)
!389 = !{!390, !394, !395, !402, !411, !415, !419, !423, !424, !428, !433, !3728, !3732}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !388, file: !284, line: 129, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!126, !282, !7}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !388, file: !284, line: 130, baseType: !391, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !388, file: !284, line: 131, baseType: !396, size: 64, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!126, !399, !401}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !388, file: !284, line: 132, baseType: !403, size: 64, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!126, !399, !7, !406, !409}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!408 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !388, file: !284, line: 134, baseType: !412, size: 64, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!126, !399}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !388, file: !284, line: 135, baseType: !416, size: 64, offset: 320)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!126, !282}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !388, file: !284, line: 136, baseType: !420, size: 64, offset: 384)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !282}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !388, file: !284, line: 137, baseType: !420, size: 64, offset: 448)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !388, file: !284, line: 138, baseType: !425, size: 64, offset: 512)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !282, !244}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !388, file: !284, line: 139, baseType: !429, size: 64, offset: 576)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!432, !282, !432, !126}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !388, file: !284, line: 140, baseType: !434, size: 64, offset: 640)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!437, !3727}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !439, line: 70, size: 256, elements: !440)
!439 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!440 = !{!441, !442, !3723, !3724}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !438, file: !439, line: 71, baseType: !282, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !438, file: !439, line: 72, baseType: !443, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !64, line: 1190, size: 10752, elements: !445)
!445 = !{!446, !447, !450, !451, !452, !456, !2106, !2240, !2280, !2365, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2382, !2386, !2387, !2390, !2393, !2396, !2399, !2400, !2401, !2442, !3656, !3657, !3658, !3659, !3660, !3661, !3664, !3666, !3673, !3674, !3675, !3676, !3677, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !444, file: !64, line: 1191, baseType: !196, size: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !444, file: !64, line: 1192, baseType: !448, size: 32, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !197, line: 21, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !197, line: 18, baseType: !316)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !444, file: !64, line: 1193, baseType: !328, size: 8, offset: 160)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !444, file: !64, line: 1194, baseType: !221, size: 64, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !444, file: !64, line: 1195, baseType: !453, size: 64, offset: 256)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !197, line: 52, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !259, line: 88, baseType: !455)
!455 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !444, file: !64, line: 1196, baseType: !457, size: 64, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !64, line: 2366, size: 576, elements: !459)
!459 = !{!460, !461, !462, !468, !472, !476, !480, !2094, !2095, !2096, !2098, !2099, !2100, !2102, !2103, !2104, !2105}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !458, file: !64, line: 2367, baseType: !406, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !458, file: !64, line: 2368, baseType: !126, size: 32, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !458, file: !64, line: 2376, baseType: !463, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!126, !466}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !439, line: 21, flags: DIFlagFwdDecl)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !458, file: !64, line: 2377, baseType: !469, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !471)
!471 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !64, line: 75, flags: DIFlagFwdDecl)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !458, file: !64, line: 2378, baseType: !473, size: 64, offset: 256)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!282, !457, !126, !406, !190}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !458, file: !64, line: 2380, baseType: !477, size: 64, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !443}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !458, file: !64, line: 2381, baseType: !481, size: 64, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !20, line: 402, size: 9216, align: 512, elements: !483)
!483 = !{!484, !485, !486, !490, !1750, !1776, !1777, !1778, !1779, !1783, !1786, !1787, !1788, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1856, !1860, !1880, !1898, !1899, !1900, !1901, !1910, !1933, !1934, !1937, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1951, !1952, !2052, !2060, !2061, !2062, !2064, !2068, !2069, !2073, !2074, !2075, !2076, !2078, !2079, !2080, !2087, !2088, !2089, !2093}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !482, file: !20, line: 403, baseType: !19, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !482, file: !20, line: 406, baseType: !196, size: 128, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !482, file: !20, line: 409, baseType: !487, size: 448, offset: 192)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 448, elements: !488)
!488 = !{!489}
!489 = !DISubrange(count: 56)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !482, file: !20, line: 417, baseType: !491, size: 768, offset: 640)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !20, line: 45, size: 768, elements: !492)
!492 = !{!493, !1733, !1734, !1735, !1738}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !491, file: !20, line: 46, baseType: !494, size: 512)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !495, line: 64, size: 512, elements: !496)
!495 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!496 = !{!497, !498, !499, !501, !547, !1628, !1723, !1728, !1729, !1730, !1731, !1732}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !494, file: !495, line: 65, baseType: !406, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !494, file: !495, line: 66, baseType: !196, size: 128, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !494, file: !495, line: 67, baseType: !500, size: 64, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !494, file: !495, line: 68, baseType: !502, size: 64, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !495, line: 168, size: 768, elements: !504)
!504 = !{!505, !506, !507, !508}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !503, file: !495, line: 169, baseType: !196, size: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !503, file: !495, line: 170, baseType: !346, size: 32, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !503, file: !495, line: 171, baseType: !494, size: 512, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !503, file: !495, line: 172, baseType: !509, size: 64, offset: 704)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !511)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !495, line: 133, size: 192, elements: !512)
!512 = !{!513, !520, !525}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !511, file: !495, line: 134, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!126, !518}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !511, file: !495, line: 135, baseType: !521, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!406, !518}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !511, file: !495, line: 136, baseType: !526, size: 64, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!126, !518, !530}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !495, line: 125, size: 20736, elements: !532)
!532 = !{!533, !537, !541, !542, !546}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !531, file: !495, line: 126, baseType: !534, size: 192)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 192, elements: !535)
!535 = !{!536}
!536 = !DISubrange(count: 3)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !531, file: !495, line: 127, baseType: !538, size: 4096, offset: 192)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 4096, elements: !539)
!539 = !{!540}
!540 = !DISubrange(count: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !531, file: !495, line: 128, baseType: !126, size: 32, offset: 4288)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !531, file: !495, line: 129, baseType: !543, size: 16384, offset: 4320)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 16384, elements: !544)
!544 = !{!545}
!545 = !DISubrange(count: 2048)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !531, file: !495, line: 130, baseType: !126, size: 32, offset: 20704)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !494, file: !495, line: 69, baseType: !548, size: 64, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !550)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !495, line: 116, size: 384, elements: !551)
!551 = !{!552, !556, !582, !1587, !1618, !1622}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !550, file: !495, line: 117, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !500}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !550, file: !495, line: 118, baseType: !557, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !559)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !560, line: 254, size: 128, elements: !561)
!560 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!561 = !{!562, !575}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !559, file: !560, line: 255, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{!566, !500, !570, !432}
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !197, line: 66, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !259, line: 73, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !259, line: 15, baseType: !569)
!569 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !560, line: 30, size: 128, elements: !572)
!572 = !{!573, !574}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !571, file: !560, line: 31, baseType: !406, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !571, file: !560, line: 32, baseType: !248, size: 16, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !559, file: !560, line: 256, baseType: !576, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!566, !500, !570, !406, !579}
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !197, line: 61, baseType: !580)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !259, line: 72, baseType: !581)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !259, line: 16, baseType: !221)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !550, file: !495, line: 119, baseType: !583, size: 64, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !586)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !560, line: 84, size: 320, elements: !587)
!587 = !{!588, !589, !593, !1583, !1585}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !586, file: !560, line: 85, baseType: !406, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !586, file: !560, line: 86, baseType: !590, size: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!248, !500, !570, !126}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !586, file: !560, line: 88, baseType: !594, size: 64, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!248, !500, !597, !126}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !560, line: 175, size: 512, elements: !599)
!599 = !{!600, !601, !602, !603, !607, !1578, !1579}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !598, file: !560, line: 176, baseType: !571, size: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !598, file: !560, line: 177, baseType: !579, size: 64, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !598, file: !560, line: 178, baseType: !190, size: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !598, file: !560, line: 179, baseType: !604, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!240}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !598, file: !560, line: 180, baseType: !608, size: 64, offset: 320)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!566, !611, !500, !597, !432, !453, !579}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !64, line: 994, size: 1856, align: 64, elements: !613)
!613 = !{!614, !633, !634, !636, !645, !658, !659, !660, !731, !943, !952, !958, !959, !1568, !1569, !1570, !1571, !1573, !1574, !1577}
!614 = !DIDerivedType(tag: DW_TAG_member, scope: !612, file: !64, line: 995, baseType: !615, size: 128)
!615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !612, file: !64, line: 995, size: 128, elements: !616)
!616 = !{!617, !623, !632}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !615, file: !64, line: 996, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !619, line: 60, size: 64, elements: !620)
!619 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!620 = !{!621}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !618, file: !619, line: 61, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !615, file: !64, line: 997, baseType: !624, size: 128, align: 64)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !197, line: 232, size: 128, align: 64, elements: !625)
!625 = !{!626, !628}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !624, file: !197, line: 233, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !624, file: !197, line: 234, baseType: !629, size: 64, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !627}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !615, file: !64, line: 998, baseType: !7, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !612, file: !64, line: 1005, baseType: !346, size: 32, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !612, file: !64, line: 1006, baseType: !635, size: 32, offset: 160)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !197, line: 156, baseType: !7)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !612, file: !64, line: 1007, baseType: !637, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !638, line: 13, baseType: !639)
!638 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !197, line: 181, baseType: !640)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !197, line: 179, size: 64, elements: !641)
!641 = !{!642}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !640, file: !197, line: 180, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !317, line: 22, baseType: !644)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !319, line: 30, baseType: !455)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !612, file: !64, line: 1008, baseType: !646, size: 256, offset: 256)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !647, line: 66, size: 256, elements: !648)
!647 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!648 = !{!649, !650, !652, !657}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !646, file: !647, line: 67, baseType: !637, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !646, file: !647, line: 68, baseType: !651, size: 32, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !355, line: 23, baseType: !354)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !646, file: !647, line: 70, baseType: !653, size: 32, offset: 96)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !654, line: 15, size: 32, elements: !655)
!654 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!655 = !{!656}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !653, file: !654, line: 20, baseType: !366, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !646, file: !647, line: 72, baseType: !196, size: 128, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !612, file: !64, line: 1009, baseType: !453, size: 64, offset: 512)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !612, file: !64, line: 1010, baseType: !7, size: 32, offset: 576)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !612, file: !64, line: 1011, baseType: !661, size: 256, offset: 640)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !64, line: 948, size: 256, elements: !662)
!662 = !{!663, !684, !727, !728, !729, !730}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !661, file: !64, line: 949, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !665, line: 34, baseType: !666)
!665 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !665, line: 25, size: 64, elements: !667)
!667 = !{!668}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !666, file: !665, line: 26, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !670, line: 27, baseType: !671)
!670 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !670, line: 13, size: 64, elements: !672)
!672 = !{!673, !683}
!673 = !DIDerivedType(tag: DW_TAG_member, scope: !671, file: !670, line: 14, baseType: !674, size: 32)
!674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !671, file: !670, line: 14, size: 32, elements: !675)
!675 = !{!676, !677}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !674, file: !670, line: 15, baseType: !366, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, scope: !674, file: !670, line: 16, baseType: !678, size: 32)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !674, file: !670, line: 16, size: 32, elements: !679)
!679 = !{!680, !681}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !678, file: !670, line: 18, baseType: !374, size: 8)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !678, file: !670, line: 19, baseType: !682, size: 24, offset: 8)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 24, elements: !535)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !671, file: !670, line: 26, baseType: !358, size: 32, offset: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !661, file: !64, line: 950, baseType: !685, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !12, line: 59, size: 768, elements: !687)
!687 = !{!688, !693, !694, !695, !708, !709, !716, !717}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !686, file: !12, line: 61, baseType: !689, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !182, line: 113, baseType: !690)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !182, line: 111, size: 32, elements: !691)
!691 = !{!692}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !690, file: !182, line: 112, baseType: !366, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !686, file: !12, line: 62, baseType: !7, size: 32, offset: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !686, file: !12, line: 63, baseType: !346, size: 32, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !686, file: !12, line: 65, baseType: !696, size: 256, offset: 128)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !697, size: 256, elements: !706)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !197, line: 194, size: 64, elements: !698)
!698 = !{!699}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !697, file: !197, line: 195, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !197, line: 198, size: 128, elements: !702)
!702 = !{!703, !704}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !701, file: !197, line: 199, baseType: !700, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !701, file: !197, line: 199, baseType: !705, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!706 = !{!707}
!707 = !DISubrange(count: 4)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !686, file: !12, line: 66, baseType: !697, size: 64, offset: 384)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !686, file: !12, line: 68, baseType: !710, size: 192, offset: 448)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !711, line: 41, baseType: !712)
!711 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !711, line: 37, size: 192, elements: !713)
!713 = !{!714, !715}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !712, file: !711, line: 38, baseType: !346, size: 32)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !712, file: !711, line: 39, baseType: !196, size: 128, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !686, file: !12, line: 69, baseType: !624, size: 128, align: 64, offset: 640)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !686, file: !12, line: 70, baseType: !718, offset: 768)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !719, elements: !725)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !12, line: 54, size: 128, elements: !720)
!720 = !{!721, !722}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !719, file: !12, line: 55, baseType: !126, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !719, file: !12, line: 56, baseType: !723, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !12, line: 56, flags: DIFlagFwdDecl)
!725 = !{!726}
!726 = !DISubrange(count: -1)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !661, file: !64, line: 951, baseType: !11, size: 32, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !661, file: !64, line: 952, baseType: !252, size: 32, offset: 160)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !661, file: !64, line: 952, baseType: !252, size: 32, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !661, file: !64, line: 953, baseType: !126, size: 32, offset: 224)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !612, file: !64, line: 1012, baseType: !732, size: 64, offset: 896)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !734)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !735, line: 110, size: 1472, elements: !736)
!735 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!736 = !{!737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !753, !754, !755, !756, !757, !758, !888, !889, !890, !891, !892, !923, !926, !930, !938}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !734, file: !735, line: 111, baseType: !637, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !734, file: !735, line: 112, baseType: !252, size: 32, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !734, file: !735, line: 113, baseType: !262, size: 32, offset: 96)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !734, file: !735, line: 114, baseType: !252, size: 32, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !734, file: !735, line: 115, baseType: !262, size: 32, offset: 160)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !734, file: !735, line: 116, baseType: !252, size: 32, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !734, file: !735, line: 117, baseType: !262, size: 32, offset: 224)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !734, file: !735, line: 118, baseType: !252, size: 32, offset: 256)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !734, file: !735, line: 119, baseType: !262, size: 32, offset: 288)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !734, file: !735, line: 120, baseType: !7, size: 32, offset: 320)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !734, file: !735, line: 121, baseType: !748, size: 64, offset: 384)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !749, line: 24, baseType: !750)
!749 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !749, line: 24, size: 64, elements: !751)
!751 = !{!752}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !750, file: !749, line: 24, baseType: !322, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !734, file: !735, line: 122, baseType: !748, size: 64, offset: 448)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !734, file: !735, line: 123, baseType: !748, size: 64, offset: 512)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !734, file: !735, line: 124, baseType: !748, size: 64, offset: 576)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !734, file: !735, line: 125, baseType: !748, size: 64, offset: 640)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !734, file: !735, line: 127, baseType: !328, size: 8, offset: 704)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !734, file: !735, line: 129, baseType: !759, size: 64, offset: 768)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !761, line: 195, size: 1728, elements: !762)
!761 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!762 = !{!763, !764, !769, !781, !790, !793, !794, !801, !802, !803, !804, !807, !808, !809, !811, !812, !852, !873}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !760, file: !761, line: 196, baseType: !689, size: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !760, file: !761, line: 197, baseType: !765, size: 32, offset: 32)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !761, line: 28, baseType: !766)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !197, line: 104, baseType: !767)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !317, line: 20, baseType: !768)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !319, line: 26, baseType: !126)
!769 = !DIDerivedType(tag: DW_TAG_member, scope: !760, file: !761, line: 198, baseType: !770, size: 192, offset: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !760, file: !761, line: 198, size: 192, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !770, file: !761, line: 199, baseType: !196, size: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !770, file: !761, line: 200, baseType: !774, size: 192, align: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !775, line: 5, size: 192, align: 64, elements: !776)
!775 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!776 = !{!777, !778, !780}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !774, file: !775, line: 6, baseType: !221, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !774, file: !775, line: 7, baseType: !779, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !774, file: !775, line: 8, baseType: !779, size: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !760, file: !761, line: 205, baseType: !782, size: 320, offset: 256)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !783, line: 48, size: 320, elements: !784)
!783 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!784 = !{!785, !786, !787, !788, !789}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !782, file: !783, line: 49, baseType: !637, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !782, file: !783, line: 55, baseType: !637, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !782, file: !783, line: 57, baseType: !653, size: 32, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !782, file: !783, line: 59, baseType: !651, size: 32, offset: 160)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !782, file: !783, line: 60, baseType: !196, size: 128, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !760, file: !761, line: 206, baseType: !791, size: 64, offset: 576)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !761, line: 206, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !760, file: !761, line: 207, baseType: !190, size: 64, offset: 640)
!794 = !DIDerivedType(tag: DW_TAG_member, scope: !760, file: !761, line: 208, baseType: !795, size: 64, offset: 704)
!795 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !760, file: !761, line: 208, size: 64, elements: !796)
!796 = !{!797, !800}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !795, file: !761, line: 209, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !799, line: 8, baseType: !644)
!799 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!800 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !795, file: !761, line: 210, baseType: !798, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !760, file: !761, line: 212, baseType: !798, size: 64, offset: 768)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !760, file: !761, line: 213, baseType: !252, size: 32, offset: 832)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !760, file: !761, line: 214, baseType: !262, size: 32, offset: 864)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !760, file: !761, line: 215, baseType: !805, size: 32, offset: 896)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !761, line: 31, baseType: !806)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !197, line: 110, baseType: !316)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !760, file: !761, line: 216, baseType: !249, size: 16, offset: 928)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !760, file: !761, line: 217, baseType: !249, size: 16, offset: 944)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !760, file: !761, line: 221, baseType: !810, size: 16, offset: 960)
!810 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !760, file: !761, line: 228, baseType: !221, size: 64, offset: 1024)
!812 = !DIDerivedType(tag: DW_TAG_member, scope: !760, file: !761, line: 245, baseType: !813, size: 320, offset: 1088)
!813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !760, file: !761, line: 245, size: 320, elements: !814)
!814 = !{!815, !844}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !813, file: !761, line: 246, baseType: !816, size: 320)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !761, line: 114, size: 320, elements: !817)
!817 = !{!818, !819, !831, !834, !843}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !816, file: !761, line: 116, baseType: !221, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !761, line: 117, baseType: !820, size: 64, offset: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !816, file: !761, line: 117, size: 64, elements: !821)
!821 = !{!822, !830}
!822 = !DIDerivedType(tag: DW_TAG_member, scope: !820, file: !761, line: 118, baseType: !823, size: 64)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !820, file: !761, line: 118, size: 64, elements: !824)
!824 = !{!825, !826}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !823, file: !761, line: 120, baseType: !381, size: 16)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !823, file: !761, line: 121, baseType: !827, size: 48, offset: 16)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 48, elements: !828)
!828 = !{!829}
!829 = !DISubrange(count: 6)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !820, file: !761, line: 127, baseType: !221, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !816, file: !761, line: 129, baseType: !832, size: 64, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !761, line: 102, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !816, file: !761, line: 130, baseType: !835, size: 64, offset: 192)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !761, line: 108, size: 192, elements: !837)
!837 = !{!838, !839, !840}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !836, file: !761, line: 109, baseType: !624, size: 128, align: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !836, file: !761, line: 110, baseType: !689, size: 32, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !836, file: !761, line: 111, baseType: !841, size: 8, offset: 160)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !197, line: 35, baseType: !842)
!842 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !816, file: !761, line: 131, baseType: !406, size: 64, offset: 256)
!844 = !DIDerivedType(tag: DW_TAG_member, scope: !813, file: !761, line: 247, baseType: !845, size: 320)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !813, file: !761, line: 247, size: 320, elements: !846)
!846 = !{!847, !848, !849, !850, !851}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !845, file: !761, line: 248, baseType: !221, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !845, file: !761, line: 249, baseType: !221, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !845, file: !761, line: 250, baseType: !832, size: 64, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !845, file: !761, line: 251, baseType: !835, size: 64, offset: 192)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !845, file: !761, line: 252, baseType: !432, size: 64, offset: 256)
!852 = !DIDerivedType(tag: DW_TAG_member, scope: !760, file: !761, line: 260, baseType: !853, size: 256, offset: 1408)
!853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !760, file: !761, line: 260, size: 256, elements: !854)
!854 = !{!855, !861}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !853, file: !761, line: 261, baseType: !856, size: 256)
!856 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !761, line: 134, size: 256, elements: !857)
!857 = !{!858, !859}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !856, file: !761, line: 135, baseType: !190, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !856, file: !761, line: 136, baseType: !860, size: 256)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 256, elements: !706)
!861 = !DIDerivedType(tag: DW_TAG_member, scope: !853, file: !761, line: 262, baseType: !862, size: 256)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !853, file: !761, line: 262, size: 256, elements: !863)
!863 = !{!864, !865}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !862, file: !761, line: 264, baseType: !196, size: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !862, file: !761, line: 265, baseType: !866, size: 128, offset: 128)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !867, line: 22, size: 128, elements: !868)
!867 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!868 = !{!869, !872}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !866, file: !867, line: 23, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !867, line: 23, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !866, file: !867, line: 24, baseType: !221, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !760, file: !761, line: 280, baseType: !874, size: 64, offset: 1664)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !761, line: 176, size: 192, elements: !876)
!876 = !{!877, !886, !887}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !875, file: !761, line: 177, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !761, line: 171, baseType: !879)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!126, !759, !882, !884, !759}
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !833)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !856)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !875, file: !761, line: 178, baseType: !759, size: 64, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !875, file: !761, line: 179, baseType: !832, size: 64, offset: 128)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !734, file: !735, line: 130, baseType: !759, size: 64, offset: 832)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !734, file: !735, line: 131, baseType: !759, size: 64, offset: 896)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !734, file: !735, line: 132, baseType: !759, size: 64, offset: 960)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !734, file: !735, line: 135, baseType: !190, size: 64, offset: 1024)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !734, file: !735, line: 137, baseType: !893, size: 64, offset: 1088)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !895, line: 14, size: 1088, elements: !896)
!895 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!896 = !{!897, !898, !907, !908, !909, !910, !911, !912}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !894, file: !895, line: 15, baseType: !689, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !894, file: !895, line: 17, baseType: !899, size: 320, offset: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !900, line: 22, size: 320, elements: !901)
!900 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!901 = !{!902, !903, !904, !905}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !899, file: !900, line: 23, baseType: !651, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !899, file: !900, line: 24, baseType: !643, size: 64, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !899, file: !900, line: 26, baseType: !196, size: 128, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !899, file: !900, line: 28, baseType: !906, size: 64, offset: 256)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !894, file: !895, line: 19, baseType: !221, size: 64, offset: 384)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !894, file: !895, line: 20, baseType: !637, size: 64, offset: 448)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !894, file: !895, line: 23, baseType: !701, size: 128, offset: 512)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !894, file: !895, line: 24, baseType: !252, size: 32, offset: 640)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !894, file: !895, line: 29, baseType: !637, size: 64, offset: 704)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !894, file: !895, line: 36, baseType: !913, size: 320, offset: 768)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !914, line: 15, size: 320, elements: !915)
!914 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!915 = !{!916, !917, !918, !919, !920, !921, !922}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !913, file: !914, line: 16, baseType: !651, size: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !913, file: !914, line: 18, baseType: !126, size: 32, offset: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !913, file: !914, line: 19, baseType: !126, size: 32, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !913, file: !914, line: 20, baseType: !126, size: 32, offset: 96)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !913, file: !914, line: 21, baseType: !126, size: 32, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !913, file: !914, line: 22, baseType: !221, size: 64, offset: 192)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !913, file: !914, line: 23, baseType: !221, size: 64, offset: 256)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !734, file: !735, line: 138, baseType: !924, size: 64, offset: 1152)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !35, line: 901, flags: DIFlagFwdDecl)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !734, file: !735, line: 139, baseType: !927, size: 64, offset: 1216)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !929, line: 16, flags: DIFlagFwdDecl)
!929 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!930 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !734, file: !735, line: 140, baseType: !931, size: 64, offset: 1280)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !735, line: 25, size: 64, elements: !933)
!933 = !{!934, !935, !936}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !932, file: !735, line: 26, baseType: !366, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !932, file: !735, line: 27, baseType: !126, size: 32, offset: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !932, file: !735, line: 28, baseType: !937, offset: 64)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, elements: !725)
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !734, file: !735, line: 142, baseType: !939, size: 128, offset: 1344)
!939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !734, file: !735, line: 142, size: 128, elements: !940)
!940 = !{!941, !942}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !939, file: !735, line: 143, baseType: !126, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !939, file: !735, line: 144, baseType: !624, size: 128, align: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !612, file: !64, line: 1013, baseType: !944, size: 256, offset: 960)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !64, line: 970, size: 256, elements: !945)
!945 = !{!946, !947, !948, !949, !950, !951}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !944, file: !64, line: 971, baseType: !221, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !944, file: !64, line: 972, baseType: !7, size: 32, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !944, file: !64, line: 973, baseType: !7, size: 32, offset: 96)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !944, file: !64, line: 974, baseType: !7, size: 32, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !944, file: !64, line: 975, baseType: !7, size: 32, offset: 160)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !944, file: !64, line: 976, baseType: !453, size: 64, offset: 192)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !612, file: !64, line: 1014, baseType: !953, size: 128, offset: 1216)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !954, line: 8, size: 128, elements: !955)
!954 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!955 = !{!956, !957}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !953, file: !954, line: 9, baseType: !437, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !953, file: !954, line: 10, baseType: !282, size: 64, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !612, file: !64, line: 1015, baseType: !244, size: 64, offset: 1344)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !612, file: !64, line: 1016, baseType: !960, size: 64, offset: 1408)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !962)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !64, line: 1914, size: 2112, elements: !963)
!963 = !{!964, !965, !969, !974, !978, !1089, !1090, !1096, !1109, !1117, !1121, !1122, !1451, !1452, !1456, !1461, !1462, !1466, !1470, !1476, !1477, !1481, !1482, !1489, !1493, !1497, !1503, !1507, !1549, !1553, !1557, !1558, !1564}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !962, file: !64, line: 1915, baseType: !481, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !962, file: !64, line: 1916, baseType: !966, size: 64, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{!453, !611, !453, !126}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !962, file: !64, line: 1917, baseType: !970, size: 64, offset: 128)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{!566, !611, !432, !579, !973}
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !962, file: !64, line: 1918, baseType: !975, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{!566, !611, !406, !579, !973}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !962, file: !64, line: 1919, baseType: !979, size: 64, offset: 256)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{!566, !982, !1087}
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !64, line: 373, size: 384, elements: !984)
!984 = !{!985, !986, !987, !991, !992, !993, !994}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !983, file: !64, line: 374, baseType: !611, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !983, file: !64, line: 375, baseType: !453, size: 64, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !983, file: !64, line: 376, baseType: !988, size: 64, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{null, !982, !569}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !983, file: !64, line: 377, baseType: !190, size: 64, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !983, file: !64, line: 378, baseType: !126, size: 32, offset: 256)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !983, file: !64, line: 379, baseType: !381, size: 16, offset: 288)
!994 = !DIDerivedType(tag: DW_TAG_member, scope: !983, file: !64, line: 380, baseType: !995, size: 64, offset: 320)
!995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !983, file: !64, line: 380, size: 64, elements: !996)
!996 = !{!997, !1083}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !995, file: !64, line: 386, baseType: !998, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1000, line: 998, size: 448, elements: !1001)
!1000 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1001 = !{!1002, !1069, !1070}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !999, file: !1000, line: 999, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !35, line: 293, size: 1536, elements: !1005)
!1005 = !{!1006, !1036, !1050}
!1006 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !35, line: 295, baseType: !1007, size: 512)
!1007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1004, file: !35, line: 295, size: 512, elements: !1008)
!1008 = !{!1009, !1035}
!1009 = !DIDerivedType(tag: DW_TAG_member, scope: !1007, file: !35, line: 296, baseType: !1010, size: 448)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1007, file: !35, line: 296, size: 448, elements: !1011)
!1011 = !{!1012, !1013, !1022, !1023, !1024, !1033, !1034}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1010, file: !35, line: 298, baseType: !221, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, scope: !1010, file: !35, line: 299, baseType: !1014, size: 128, offset: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1010, file: !35, line: 299, size: 128, elements: !1015)
!1015 = !{!1016, !1017}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1014, file: !35, line: 300, baseType: !196, size: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !35, line: 302, baseType: !1018, size: 128)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1014, file: !35, line: 302, size: 128, elements: !1019)
!1019 = !{!1020, !1021}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1018, file: !35, line: 303, baseType: !190, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1018, file: !35, line: 305, baseType: !7, size: 32, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1010, file: !35, line: 310, baseType: !240, size: 64, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1010, file: !35, line: 311, baseType: !221, size: 64, offset: 256)
!1024 = !DIDerivedType(tag: DW_TAG_member, scope: !1010, file: !35, line: 312, baseType: !1025, size: 64, offset: 320)
!1025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1010, file: !35, line: 312, size: 64, elements: !1026)
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1025, file: !35, line: 313, baseType: !190, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1025, file: !35, line: 314, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !35, line: 257, baseType: !1030)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 255, size: 64, elements: !1031)
!1031 = !{!1032}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1030, file: !35, line: 256, baseType: !221, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1010, file: !35, line: 316, baseType: !366, size: 32, offset: 384)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1010, file: !35, line: 317, baseType: !366, size: 32, offset: 416)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1007, file: !35, line: 323, baseType: !218, size: 512, align: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !35, line: 325, baseType: !1037, size: 512, offset: 512)
!1037 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1004, file: !35, line: 325, size: 512, elements: !1038)
!1038 = !{!1039, !1049}
!1039 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !35, line: 326, baseType: !1040, size: 320)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1037, file: !35, line: 326, size: 320, elements: !1041)
!1041 = !{!1042, !1043, !1044, !1045, !1046, !1047, !1048}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1040, file: !35, line: 327, baseType: !221, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1040, file: !35, line: 328, baseType: !221, size: 64, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1040, file: !35, line: 329, baseType: !221, size: 64, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1040, file: !35, line: 331, baseType: !366, size: 32, offset: 192)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1040, file: !35, line: 332, baseType: !366, size: 32, offset: 224)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1040, file: !35, line: 333, baseType: !366, size: 32, offset: 256)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1040, file: !35, line: 335, baseType: !7, size: 32, offset: 288)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1037, file: !35, line: 339, baseType: !218, size: 512, align: 128)
!1050 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !35, line: 341, baseType: !1051, size: 512, offset: 1024)
!1051 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1004, file: !35, line: 341, size: 512, elements: !1052)
!1052 = !{!1053, !1062, !1068}
!1053 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !35, line: 342, baseType: !1054, size: 384)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1051, file: !35, line: 342, size: 384, elements: !1055)
!1055 = !{!1056, !1057, !1058, !1059, !1060, !1061}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1054, file: !35, line: 343, baseType: !221, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1054, file: !35, line: 344, baseType: !221, size: 64, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1054, file: !35, line: 346, baseType: !190, size: 64, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1054, file: !35, line: 347, baseType: !190, size: 64, offset: 192)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1054, file: !35, line: 348, baseType: !190, size: 64, offset: 256)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1054, file: !35, line: 349, baseType: !190, size: 64, offset: 320)
!1062 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !35, line: 352, baseType: !1063, size: 256)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1051, file: !35, line: 352, size: 256, elements: !1064)
!1064 = !{!1065, !1066, !1067}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1063, file: !35, line: 353, baseType: !221, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1063, file: !35, line: 354, baseType: !221, size: 64, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1063, file: !35, line: 356, baseType: !196, size: 128, offset: 128)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1051, file: !35, line: 359, baseType: !218, size: 512, align: 128)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !999, file: !1000, line: 1000, baseType: !126, size: 32, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !999, file: !1000, line: 1001, baseType: !1071, size: 320, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !711, line: 14, baseType: !1072)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !711, line: 30, size: 320, elements: !1073)
!1073 = !{!1074, !1075, !1076, !1082}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1072, file: !711, line: 31, baseType: !7, size: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1072, file: !711, line: 32, baseType: !190, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1072, file: !711, line: 33, baseType: !1077, size: 64, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !711, line: 16, baseType: !1078)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!126, !1081, !7, !126, !190}
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1072, file: !711, line: 34, baseType: !196, size: 128, offset: 192)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !995, file: !64, line: 395, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!566, !190}
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !64, line: 69, flags: DIFlagFwdDecl)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !962, file: !64, line: 1920, baseType: !979, size: 64, offset: 320)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !962, file: !64, line: 1921, baseType: !1091, size: 64, offset: 384)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!126, !982, !1094, !7}
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !64, line: 53, flags: DIFlagFwdDecl)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !962, file: !64, line: 1923, baseType: !1097, size: 64, offset: 448)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!126, !611, !1100}
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !64, line: 1858, size: 128, elements: !1102)
!1102 = !{!1103, !1108}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1101, file: !64, line: 1859, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !64, line: 1855, baseType: !1105)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!841, !1100, !406, !126, !453, !322, !7}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1101, file: !64, line: 1860, baseType: !453, size: 64, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !962, file: !64, line: 1924, baseType: !1110, size: 64, offset: 512)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!1113, !611, !1115}
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1114, line: 59, baseType: !7)
!1114 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !64, line: 61, flags: DIFlagFwdDecl)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !962, file: !64, line: 1925, baseType: !1118, size: 64, offset: 576)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!569, !611, !7, !221}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !962, file: !64, line: 1926, baseType: !1118, size: 64, offset: 640)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !962, file: !64, line: 1927, baseType: !1123, size: 64, offset: 704)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!126, !611, !1126}
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !35, line: 625, size: 1344, elements: !1128)
!1128 = !{!1129, !1138, !1306, !1312, !1319, !1320, !1325, !1326, !1331, !1332, !1335, !1444, !1445, !1446, !1447, !1448, !1449}
!1129 = !DIDerivedType(tag: DW_TAG_member, scope: !1127, file: !35, line: 628, baseType: !1130, size: 128)
!1130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1127, file: !35, line: 628, size: 128, elements: !1131)
!1131 = !{!1132, !1137}
!1132 = !DIDerivedType(tag: DW_TAG_member, scope: !1130, file: !35, line: 629, baseType: !1133, size: 128)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1130, file: !35, line: 629, size: 128, elements: !1134)
!1134 = !{!1135, !1136}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1133, file: !35, line: 631, baseType: !221, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1133, file: !35, line: 632, baseType: !221, size: 64, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1130, file: !35, line: 635, baseType: !624, size: 128, align: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1127, file: !35, line: 639, baseType: !1139, size: 64, offset: 128)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !35, line: 733, size: 10240, elements: !1141)
!1141 = !{!1142, !1304}
!1142 = !DIDerivedType(tag: DW_TAG_member, scope: !1140, file: !35, line: 734, baseType: !1143, size: 10240)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1140, file: !35, line: 734, size: 10240, elements: !1144)
!1144 = !{!1145, !1149, !1163, !1167, !1168, !1169, !1170, !1171, !1172, !1181, !1182, !1183, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1222, !1224, !1227, !1274, !1275, !1276, !1279, !1280, !1281, !1284, !1285, !1286, !1292, !1293}
!1145 = !DIDerivedType(tag: DW_TAG_member, scope: !1143, file: !35, line: 739, baseType: !1146, size: 512, align: 512)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1143, file: !35, line: 739, size: 512, align: 512, elements: !1147)
!1147 = !{!1148}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1146, file: !35, line: 747, baseType: !366, size: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1143, file: !35, line: 750, baseType: !1150, size: 128, offset: 512)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1151, line: 218, size: 128, elements: !1152)
!1151 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1152 = !{!1153, !1161, !1162}
!1153 = !DIDerivedType(tag: DW_TAG_member, scope: !1150, file: !1151, line: 219, baseType: !1154, size: 32)
!1154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1150, file: !1151, line: 219, size: 32, elements: !1155)
!1155 = !{!1156, !1157}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1154, file: !1151, line: 220, baseType: !346, size: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1154, file: !1151, line: 221, baseType: !1158)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1151, line: 197, baseType: !1159)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1151, line: 197, elements: !1160)
!1160 = !{}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1150, file: !1151, line: 223, baseType: !7, size: 32, offset: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1150, file: !1151, line: 224, baseType: !190, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1143, file: !35, line: 752, baseType: !1164, size: 64, offset: 640)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!221, !611, !221, !221, !221, !221}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1143, file: !35, line: 756, baseType: !221, size: 64, offset: 704)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1143, file: !35, line: 757, baseType: !221, size: 64, offset: 768)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1143, file: !35, line: 760, baseType: !221, size: 64, offset: 832)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1143, file: !35, line: 761, baseType: !221, size: 64, offset: 896)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1143, file: !35, line: 763, baseType: !221, size: 64, offset: 960)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1143, file: !35, line: 764, baseType: !1173, size: 64, offset: 1024)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1175, line: 299, baseType: !1176)
!1175 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1175, line: 299, size: 64, elements: !1177)
!1177 = !{!1178}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1176, file: !1175, line: 299, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1180, line: 18, baseType: !221)
!1180 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1143, file: !35, line: 773, baseType: !366, size: 32, offset: 1088)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1143, file: !35, line: 785, baseType: !366, size: 32, offset: 1120)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1143, file: !35, line: 795, baseType: !1184, size: 64, offset: 1152)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !35, line: 726, size: 128, elements: !1186)
!1186 = !{!1187, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1185, file: !35, line: 727, baseType: !322, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1185, file: !35, line: 728, baseType: !126, size: 32, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1143, file: !35, line: 801, baseType: !221, size: 64, offset: 1216)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1143, file: !35, line: 804, baseType: !637, size: 64, offset: 1280)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1143, file: !35, line: 806, baseType: !126, size: 32, offset: 1344)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1143, file: !35, line: 808, baseType: !346, size: 32, offset: 1376)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1143, file: !35, line: 823, baseType: !782, size: 320, offset: 1408)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1143, file: !35, line: 825, baseType: !196, size: 128, offset: 1728)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1143, file: !35, line: 845, baseType: !126, size: 32, offset: 1856)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1143, file: !35, line: 849, baseType: !221, size: 64, offset: 1920)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1143, file: !35, line: 850, baseType: !221, size: 64, offset: 1984)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1143, file: !35, line: 852, baseType: !221, size: 64, offset: 2048)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1143, file: !35, line: 853, baseType: !221, size: 64, offset: 2112)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1143, file: !35, line: 854, baseType: !639, size: 64, offset: 2176)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1143, file: !35, line: 855, baseType: !221, size: 64, offset: 2240)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1143, file: !35, line: 856, baseType: !221, size: 64, offset: 2304)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1143, file: !35, line: 857, baseType: !221, size: 64, offset: 2368)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1143, file: !35, line: 858, baseType: !221, size: 64, offset: 2432)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1143, file: !35, line: 865, baseType: !293, size: 32, offset: 2496)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1143, file: !35, line: 867, baseType: !346, size: 32, offset: 2528)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1143, file: !35, line: 869, baseType: !221, size: 64, offset: 2560)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1143, file: !35, line: 869, baseType: !221, size: 64, offset: 2624)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1143, file: !35, line: 869, baseType: !221, size: 64, offset: 2688)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1143, file: !35, line: 869, baseType: !221, size: 64, offset: 2752)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1143, file: !35, line: 870, baseType: !221, size: 64, offset: 2816)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1143, file: !35, line: 870, baseType: !221, size: 64, offset: 2880)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1143, file: !35, line: 870, baseType: !221, size: 64, offset: 2944)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1143, file: !35, line: 871, baseType: !221, size: 64, offset: 3008)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1143, file: !35, line: 871, baseType: !221, size: 64, offset: 3072)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1143, file: !35, line: 871, baseType: !221, size: 64, offset: 3136)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1143, file: !35, line: 871, baseType: !221, size: 64, offset: 3200)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1143, file: !35, line: 873, baseType: !1219, size: 3328, offset: 3264)
!1219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 3328, elements: !1220)
!1220 = !{!1221}
!1221 = !DISubrange(count: 52)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1143, file: !35, line: 875, baseType: !1223, size: 1280, offset: 6592)
!1223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !899, size: 1280, elements: !706)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1143, file: !35, line: 877, baseType: !1225, size: 64, offset: 7872)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !35, line: 877, flags: DIFlagFwdDecl)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1143, file: !35, line: 880, baseType: !1228, size: 1088, offset: 7936)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1229, line: 72, baseType: !1230)
!1229 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1229, line: 23, size: 1088, elements: !1231)
!1231 = !{!1232, !1233, !1234, !1235, !1236, !1239, !1240, !1241, !1242, !1269, !1270, !1271}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1230, file: !1229, line: 28, baseType: !322, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1230, file: !1229, line: 38, baseType: !639, size: 64, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1230, file: !1229, line: 40, baseType: !221, size: 64, offset: 128)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1230, file: !1229, line: 43, baseType: !782, size: 320, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1230, file: !1229, line: 44, baseType: !1237, size: 64, offset: 512)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1229, line: 44, flags: DIFlagFwdDecl)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1230, file: !1229, line: 48, baseType: !221, size: 64, offset: 576)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1230, file: !1229, line: 59, baseType: !646, size: 256, offset: 640)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1230, file: !1229, line: 60, baseType: !190, size: 64, offset: 896)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1230, file: !1229, line: 61, baseType: !1243, size: 64, offset: 960)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1245)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1246, line: 13, size: 1216, elements: !1247)
!1246 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1247 = !{!1248, !1249, !1250, !1251, !1252, !1253, !1254, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1245, file: !1246, line: 14, baseType: !190, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1245, file: !1246, line: 15, baseType: !221, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1245, file: !1246, line: 17, baseType: !221, size: 64, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1245, file: !1246, line: 17, baseType: !221, size: 64, offset: 192)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1245, file: !1246, line: 18, baseType: !221, size: 64, offset: 256)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1245, file: !1246, line: 18, baseType: !221, size: 64, offset: 320)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1245, file: !1246, line: 19, baseType: !1255, size: 64, offset: 384)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1245, file: !1246, line: 21, baseType: !569, size: 64, offset: 448)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1245, file: !1246, line: 23, baseType: !569, size: 64, offset: 512)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1245, file: !1246, line: 24, baseType: !569, size: 64, offset: 576)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1245, file: !1246, line: 25, baseType: !569, size: 64, offset: 640)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1245, file: !1246, line: 26, baseType: !569, size: 64, offset: 704)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1245, file: !1246, line: 27, baseType: !569, size: 64, offset: 768)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1245, file: !1246, line: 28, baseType: !569, size: 64, offset: 832)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1245, file: !1246, line: 29, baseType: !569, size: 64, offset: 896)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1245, file: !1246, line: 30, baseType: !569, size: 64, offset: 960)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1245, file: !1246, line: 31, baseType: !569, size: 64, offset: 1024)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1245, file: !1246, line: 32, baseType: !569, size: 64, offset: 1088)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1245, file: !1246, line: 33, baseType: !569, size: 64, offset: 1152)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1230, file: !1229, line: 63, baseType: !366, size: 32, offset: 1024)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1230, file: !1229, line: 69, baseType: !381, size: 16, offset: 1056)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1230, file: !1229, line: 70, baseType: !1272, size: 16, offset: 1072)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !317, line: 18, baseType: !1273)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !319, line: 23, baseType: !810)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1143, file: !35, line: 882, baseType: !221, size: 64, offset: 9024)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1143, file: !35, line: 885, baseType: !346, size: 32, offset: 9088)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1143, file: !35, line: 886, baseType: !1277, size: 64, offset: 9152)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !35, line: 732, flags: DIFlagFwdDecl)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1143, file: !35, line: 901, baseType: !924, size: 64, offset: 9216)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1143, file: !35, line: 904, baseType: !611, size: 64, offset: 9280)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1143, file: !35, line: 906, baseType: !1282, size: 64, offset: 9344)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !35, line: 906, flags: DIFlagFwdDecl)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1143, file: !35, line: 930, baseType: !366, size: 32, offset: 9408)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1143, file: !35, line: 933, baseType: !366, size: 32, offset: 9440)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1143, file: !35, line: 935, baseType: !1287, size: 64, offset: 9472)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !81, line: 103, size: 64, elements: !1288)
!1288 = !{!1289}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1287, file: !81, line: 104, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !81, line: 101, flags: DIFlagFwdDecl)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1143, file: !35, line: 940, baseType: !637, size: 64, offset: 9536)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1143, file: !35, line: 942, baseType: !1294, size: 256, offset: 9600)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !159, line: 98, size: 256, elements: !1295)
!1295 = !{!1296, !1297, !1298}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1294, file: !159, line: 99, baseType: !637, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1294, file: !159, line: 100, baseType: !196, size: 128, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1294, file: !159, line: 101, baseType: !1299, size: 64, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !159, line: 21, baseType: !1300)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{null, !1303}
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1140, file: !35, line: 986, baseType: !1305, offset: 10240)
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, elements: !725)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1127, file: !35, line: 640, baseType: !1307, size: 64, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1175, line: 297, baseType: !1308)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1175, line: 297, size: 64, elements: !1309)
!1309 = !{!1310}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1308, file: !1175, line: 297, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1180, line: 19, baseType: !221)
!1312 = !DIDerivedType(tag: DW_TAG_member, scope: !1127, file: !35, line: 646, baseType: !1313, size: 64, offset: 256)
!1313 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1127, file: !35, line: 646, size: 64, elements: !1314)
!1314 = !{!1315, !1318}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1313, file: !35, line: 647, baseType: !1316, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1317)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !35, line: 542, baseType: !221)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1313, file: !35, line: 648, baseType: !1317, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1127, file: !35, line: 666, baseType: !126, size: 32, offset: 320)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1127, file: !35, line: 667, baseType: !1321, size: 64, offset: 384)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !35, line: 579, size: 320, elements: !1323)
!1323 = !{!1324}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1322, file: !35, line: 580, baseType: !782, size: 320)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1127, file: !35, line: 670, baseType: !841, size: 8, offset: 448)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1127, file: !35, line: 681, baseType: !1327, size: 256, offset: 512)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1127, file: !35, line: 678, size: 256, elements: !1328)
!1328 = !{!1329, !1330}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1327, file: !35, line: 679, baseType: !774, size: 192, align: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1327, file: !35, line: 680, baseType: !221, size: 64, offset: 192)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1127, file: !35, line: 689, baseType: !196, size: 128, offset: 768)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1127, file: !35, line: 691, baseType: !1333, size: 64, offset: 896)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !35, line: 691, flags: DIFlagFwdDecl)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1127, file: !35, line: 694, baseType: !1336, size: 64, offset: 960)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1338)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1339, line: 563, size: 1024, elements: !1340)
!1339 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1340 = !{!1341, !1345, !1346, !1350, !1354, !1358, !1408, !1412, !1416, !1420, !1421, !1422, !1426, !1430, !1436, !1440}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1338, file: !1339, line: 564, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{null, !1126}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1338, file: !1339, line: 569, baseType: !1342, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1338, file: !1339, line: 571, baseType: !1347, size: 64, offset: 128)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!126, !1126, !221}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1338, file: !1339, line: 572, baseType: !1351, size: 64, offset: 192)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!126, !1126}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1338, file: !1339, line: 578, baseType: !1355, size: 64, offset: 256)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!126, !1126, !221, !221, !221}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1338, file: !1339, line: 580, baseType: !1359, size: 64, offset: 320)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!1362, !1363}
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !35, line: 1184, baseType: !7)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1339, line: 512, size: 896, elements: !1365)
!1365 = !{!1366, !1375, !1376, !1383, !1390, !1400, !1401, !1402, !1404, !1406}
!1366 = !DIDerivedType(tag: DW_TAG_member, scope: !1364, file: !1339, line: 513, baseType: !1367, size: 320)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1364, file: !1339, line: 513, size: 320, elements: !1368)
!1368 = !{!1369, !1370, !1372, !1373, !1374}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1367, file: !1339, line: 514, baseType: !1126, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1367, file: !1339, line: 515, baseType: !1371, size: 32, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !197, line: 154, baseType: !7)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1367, file: !1339, line: 516, baseType: !221, size: 64, offset: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1367, file: !1339, line: 517, baseType: !221, size: 64, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1367, file: !1339, line: 518, baseType: !221, size: 64, offset: 256)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1364, file: !1339, line: 520, baseType: !34, size: 32, offset: 320)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1364, file: !1339, line: 522, baseType: !1377, size: 64, offset: 384)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1180, line: 22, baseType: !1379)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1180, line: 22, size: 64, elements: !1380)
!1380 = !{!1381}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1379, file: !1180, line: 22, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1180, line: 15, baseType: !221)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1364, file: !1339, line: 524, baseType: !1384, size: 64, offset: 448)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1175, line: 372, baseType: !1386)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1175, line: 372, size: 64, elements: !1387)
!1387 = !{!1388}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1386, file: !1175, line: 372, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1180, line: 16, baseType: !221)
!1390 = !DIDerivedType(tag: DW_TAG_member, scope: !1364, file: !1339, line: 527, baseType: !1391, size: 64, offset: 512)
!1391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1364, file: !1339, line: 527, size: 64, elements: !1392)
!1392 = !{!1393, !1399}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1391, file: !1339, line: 528, baseType: !1394, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1180, line: 21, baseType: !1395)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1180, line: 21, size: 64, elements: !1396)
!1396 = !{!1397}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1395, file: !1180, line: 21, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1180, line: 14, baseType: !221)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1391, file: !1339, line: 529, baseType: !1378, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1364, file: !1339, line: 534, baseType: !217, size: 64, offset: 576)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1364, file: !1339, line: 535, baseType: !217, size: 64, offset: 640)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1364, file: !1339, line: 541, baseType: !1403, size: 64, offset: 704)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1364, file: !1339, line: 545, baseType: !1405, size: 64, offset: 768)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1364, file: !1339, line: 549, baseType: !1407, size: 64, offset: 832)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1175, line: 520, baseType: !217)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1338, file: !1339, line: 581, baseType: !1409, size: 64, offset: 384)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!1362, !1363, !7}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1338, file: !1339, line: 582, baseType: !1413, size: 64, offset: 448)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!1362, !1363, !221, !221}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1338, file: !1339, line: 584, baseType: !1417, size: 64, offset: 512)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!221, !1126}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1338, file: !1339, line: 588, baseType: !1359, size: 64, offset: 576)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1338, file: !1339, line: 591, baseType: !1359, size: 64, offset: 640)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1338, file: !1339, line: 597, baseType: !1423, size: 64, offset: 704)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!126, !1126, !221, !190, !126, !126}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1338, file: !1339, line: 603, baseType: !1427, size: 64, offset: 768)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!406, !1126}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1338, file: !1339, line: 613, baseType: !1431, size: 64, offset: 832)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!126, !1126, !1434}
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !35, line: 717, flags: DIFlagFwdDecl)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1338, file: !1339, line: 625, baseType: !1437, size: 64, offset: 896)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!1434, !1126, !221}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1338, file: !1339, line: 633, baseType: !1441, size: 64, offset: 960)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!217, !1126, !221}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1127, file: !35, line: 697, baseType: !221, size: 64, offset: 1024)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1127, file: !35, line: 699, baseType: !611, size: 64, offset: 1088)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1127, file: !35, line: 700, baseType: !190, size: 64, offset: 1152)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1127, file: !35, line: 711, baseType: !637, size: 64, offset: 1216)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1127, file: !35, line: 717, baseType: !1434, size: 64, offset: 1280)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1127, file: !35, line: 722, baseType: !1450, offset: 1344)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !35, line: 570, elements: !1160)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !962, file: !64, line: 1928, baseType: !221, size: 64, offset: 768)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !962, file: !64, line: 1929, baseType: !1453, size: 64, offset: 832)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!126, !244, !611}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !962, file: !64, line: 1930, baseType: !1457, size: 64, offset: 896)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!126, !611, !1460}
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !64, line: 1061, baseType: !190)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !962, file: !64, line: 1931, baseType: !1453, size: 64, offset: 960)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !962, file: !64, line: 1932, baseType: !1463, size: 64, offset: 1024)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!126, !611, !453, !453, !126}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !962, file: !64, line: 1933, baseType: !1467, size: 64, offset: 1088)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!126, !126, !611, !126}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !962, file: !64, line: 1934, baseType: !1471, size: 64, offset: 1152)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!126, !611, !126, !1474}
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !64, line: 1063, flags: DIFlagFwdDecl)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !962, file: !64, line: 1935, baseType: !1164, size: 64, offset: 1216)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !962, file: !64, line: 1936, baseType: !1478, size: 64, offset: 1280)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!126, !126}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !962, file: !64, line: 1937, baseType: !1471, size: 64, offset: 1344)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !962, file: !64, line: 1938, baseType: !1483, size: 64, offset: 1408)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!566, !1486, !611, !973, !579, !7}
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1488, line: 59, flags: DIFlagFwdDecl)
!1488 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !962, file: !64, line: 1939, baseType: !1490, size: 64, offset: 1472)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!566, !611, !973, !1486, !579, !7}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !962, file: !64, line: 1940, baseType: !1494, size: 64, offset: 1536)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{null, !611}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !962, file: !64, line: 1941, baseType: !1498, size: 64, offset: 1600)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!126, !611, !126, !1501, !1502}
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !962, file: !64, line: 1942, baseType: !1504, size: 64, offset: 1664)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!569, !611, !126, !453, !453}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !962, file: !64, line: 1944, baseType: !1508, size: 64, offset: 1728)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{null, !1511, !611}
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1513, line: 17, size: 960, elements: !1514)
!1513 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1514 = !{!1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1544, !1545, !1548}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1512, file: !1513, line: 18, baseType: !432, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1512, file: !1513, line: 19, baseType: !579, size: 64, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1512, file: !1513, line: 20, baseType: !579, size: 64, offset: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1512, file: !1513, line: 21, baseType: !579, size: 64, offset: 192)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1512, file: !1513, line: 22, baseType: !579, size: 64, offset: 256)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1512, file: !1513, line: 23, baseType: !453, size: 64, offset: 320)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1512, file: !1513, line: 24, baseType: !453, size: 64, offset: 384)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1512, file: !1513, line: 25, baseType: !646, size: 256, offset: 448)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1512, file: !1513, line: 26, baseType: !1524, size: 64, offset: 704)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1526)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1513, line: 32, size: 256, elements: !1527)
!1527 = !{!1528, !1532, !1536, !1540}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1526, file: !1513, line: 33, baseType: !1529, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!190, !1511, !973}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1526, file: !1513, line: 34, baseType: !1533, size: 64, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{null, !1511, !190}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1526, file: !1513, line: 35, baseType: !1537, size: 64, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!190, !1511, !190, !973}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1526, file: !1513, line: 36, baseType: !1541, size: 64, offset: 192)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!126, !1511, !190}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1512, file: !1513, line: 27, baseType: !126, size: 32, offset: 768)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1512, file: !1513, line: 28, baseType: !1546, size: 64, offset: 832)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1512, file: !1513, line: 29, baseType: !190, size: 64, offset: 896)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !962, file: !64, line: 1948, baseType: !1550, size: 64, offset: 1792)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!566, !611, !453, !611, !453, !579, !7}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !962, file: !64, line: 1950, baseType: !1554, size: 64, offset: 1856)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!453, !611, !453, !611, !453, !453, !7}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !962, file: !64, line: 1953, baseType: !1463, size: 64, offset: 1920)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !962, file: !64, line: 1954, baseType: !1559, size: 64, offset: 1984)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!126, !1562, !7}
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !64, line: 1911, flags: DIFlagFwdDecl)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !962, file: !64, line: 1955, baseType: !1565, size: 64, offset: 2048)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!126, !1562, !1094, !7}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !612, file: !64, line: 1018, baseType: !322, size: 64, offset: 1472)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !612, file: !64, line: 1020, baseType: !190, size: 64, offset: 1536)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !612, file: !64, line: 1023, baseType: !190, size: 64, offset: 1600)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !612, file: !64, line: 1027, baseType: !1572, size: 64, offset: 1664)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !612, file: !64, line: 1029, baseType: !240, size: 64, offset: 1728)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !612, file: !64, line: 1030, baseType: !1575, size: 32, offset: 1792)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1576, line: 8, baseType: !316)
!1576 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !612, file: !64, line: 1031, baseType: !1575, size: 32, offset: 1824)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !598, file: !560, line: 182, baseType: !608, size: 64, offset: 384)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !598, file: !560, line: 184, baseType: !1580, size: 64, offset: 448)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!126, !611, !500, !597, !1126}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !586, file: !560, line: 90, baseType: !1584, size: 64, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !586, file: !560, line: 91, baseType: !1586, size: 64, offset: 256)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !550, file: !495, line: 120, baseType: !1588, size: 64, offset: 192)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!1591, !518}
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1593)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !58, line: 39, size: 384, elements: !1594)
!1594 = !{!1595, !1596, !1600, !1604, !1610, !1614}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1593, file: !58, line: 40, baseType: !57, size: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1593, file: !58, line: 41, baseType: !1597, size: 64, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!841}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1593, file: !58, line: 42, baseType: !1601, size: 64, offset: 128)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!190}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1593, file: !58, line: 43, baseType: !1605, size: 64, offset: 192)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!1255, !1608}
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !58, line: 19, flags: DIFlagFwdDecl)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1593, file: !58, line: 44, baseType: !1611, size: 64, offset: 256)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!1255}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1593, file: !58, line: 45, baseType: !1615, size: 64, offset: 320)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{null, !190}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !550, file: !495, line: 121, baseType: !1619, size: 64, offset: 256)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!1255, !518}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !550, file: !495, line: 122, baseType: !1623, size: 64, offset: 320)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{null, !518, !1626, !1627}
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !494, file: !495, line: 70, baseType: !1629, size: 64, offset: 384)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1631, line: 190, size: 1152, elements: !1632)
!1631 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1632 = !{!1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1715, !1716, !1717, !1718, !1719, !1722}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1630, file: !1631, line: 191, baseType: !366, size: 32)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1630, file: !1631, line: 192, baseType: !366, size: 32, offset: 32)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1630, file: !1631, line: 202, baseType: !1629, size: 64, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1630, file: !1631, line: 203, baseType: !406, size: 64, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1630, file: !1631, line: 205, baseType: !774, size: 192, align: 64, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1630, file: !1631, line: 207, baseType: !1255, size: 64, offset: 384)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1630, file: !1631, line: 208, baseType: !7, size: 32, offset: 448)
!1640 = !DIDerivedType(tag: DW_TAG_member, scope: !1630, file: !1631, line: 209, baseType: !1641, size: 256, offset: 512)
!1641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1630, file: !1631, line: 209, size: 256, elements: !1642)
!1642 = !{!1643, !1655, !1659}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1641, file: !1631, line: 210, baseType: !1644, size: 256)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1631, line: 153, size: 256, elements: !1645)
!1645 = !{!1646, !1647, !1651, !1654}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1644, file: !1631, line: 154, baseType: !221, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1644, file: !1631, line: 156, baseType: !1648, size: 64, offset: 64)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !775, line: 12, size: 64, elements: !1649)
!1649 = !{!1650}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1648, file: !775, line: 13, baseType: !779, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1644, file: !1631, line: 162, baseType: !1652, size: 64, offset: 128)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1631, line: 162, flags: DIFlagFwdDecl)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1644, file: !1631, line: 167, baseType: !221, size: 64, offset: 192)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1641, file: !1631, line: 211, baseType: !1656, size: 64)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1631, line: 170, size: 64, elements: !1657)
!1657 = !{!1658}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1656, file: !1631, line: 171, baseType: !1629, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1641, file: !1631, line: 212, baseType: !1660, size: 256)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1631, line: 174, size: 256, elements: !1661)
!1661 = !{!1662, !1710, !1713, !1714}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1660, file: !1631, line: 175, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1665)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1631, line: 271, size: 768, elements: !1666)
!1666 = !{!1667, !1687, !1691, !1692, !1693, !1694, !1695, !1699, !1700, !1701, !1702, !1706}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1665, file: !1631, line: 276, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!126, !1671}
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1631, line: 251, size: 1216, elements: !1673)
!1673 = !{!1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1672, file: !1631, line: 253, baseType: !1629, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1672, file: !1631, line: 254, baseType: !611, size: 64, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1672, file: !1631, line: 255, baseType: !1511, size: 64, offset: 128)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1672, file: !1631, line: 256, baseType: !190, size: 64, offset: 192)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1672, file: !1631, line: 259, baseType: !646, size: 256, offset: 256)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1672, file: !1631, line: 260, baseType: !646, size: 256, offset: 512)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1672, file: !1631, line: 261, baseType: !126, size: 32, offset: 768)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1672, file: !1631, line: 262, baseType: !196, size: 128, offset: 832)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1672, file: !1631, line: 263, baseType: !432, size: 64, offset: 960)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1672, file: !1631, line: 265, baseType: !579, size: 64, offset: 1024)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1672, file: !1631, line: 266, baseType: !841, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1672, file: !1631, line: 267, baseType: !841, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1672, file: !1631, line: 268, baseType: !1336, size: 64, offset: 1152)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1665, file: !1631, line: 277, baseType: !1688, size: 64, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{null, !1671}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1665, file: !1631, line: 290, baseType: !1541, size: 64, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1665, file: !1631, line: 292, baseType: !1529, size: 64, offset: 192)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1665, file: !1631, line: 293, baseType: !1537, size: 64, offset: 256)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1665, file: !1631, line: 294, baseType: !1533, size: 64, offset: 320)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1665, file: !1631, line: 296, baseType: !1696, size: 64, offset: 384)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!566, !1671, !432, !579, !453}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1665, file: !1631, line: 306, baseType: !579, size: 64, offset: 448)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1665, file: !1631, line: 313, baseType: !841, size: 8, offset: 512)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1665, file: !1631, line: 314, baseType: !1696, size: 64, offset: 576)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1665, file: !1631, line: 317, baseType: !1703, size: 64, offset: 640)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!1113, !1671, !1115}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1665, file: !1631, line: 320, baseType: !1707, size: 64, offset: 704)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!126, !1671, !1126}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1660, file: !1631, line: 176, baseType: !1711, size: 64, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1631, line: 35, flags: DIFlagFwdDecl)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1660, file: !1631, line: 177, baseType: !453, size: 64, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1660, file: !1631, line: 178, baseType: !1629, size: 64, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1630, file: !1631, line: 215, baseType: !190, size: 64, offset: 768)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1630, file: !1631, line: 221, baseType: !322, size: 64, offset: 832)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1630, file: !1631, line: 223, baseType: !249, size: 16, offset: 896)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1630, file: !1631, line: 224, baseType: !248, size: 16, offset: 912)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1630, file: !1631, line: 225, baseType: !1720, size: 64, offset: 960)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1631, line: 36, flags: DIFlagFwdDecl)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1630, file: !1631, line: 227, baseType: !624, size: 128, align: 64, offset: 1024)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !494, file: !495, line: 71, baseType: !1724, size: 32, offset: 448)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1725, line: 19, size: 32, elements: !1726)
!1725 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1726 = !{!1727}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1724, file: !1725, line: 20, baseType: !689, size: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !494, file: !495, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !494, file: !495, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !494, file: !495, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !494, file: !495, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !494, file: !495, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !491, file: !20, line: 47, baseType: !481, size: 64, offset: 512)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !491, file: !20, line: 48, baseType: !500, size: 64, offset: 576)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !491, file: !20, line: 49, baseType: !1736, size: 64, offset: 640)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !20, line: 49, flags: DIFlagFwdDecl)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !491, file: !20, line: 50, baseType: !1739, size: 64, offset: 704)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1741, line: 26, size: 256, elements: !1742)
!1741 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1742 = !{!1743, !1744}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1740, file: !1741, line: 27, baseType: !7, size: 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1740, file: !1741, line: 28, baseType: !1745, size: 192, offset: 64)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1746, line: 43, size: 192, elements: !1747)
!1746 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1747 = !{!1748, !1749}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1745, file: !1746, line: 44, baseType: !651, size: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1745, file: !1746, line: 45, baseType: !196, size: 128, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !482, file: !20, line: 418, baseType: !1751, size: 64, offset: 1408)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !20, line: 53, size: 448, elements: !1753)
!1753 = !{!1754, !1755, !1760, !1764, !1768, !1772}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1752, file: !20, line: 54, baseType: !571, size: 128)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1752, file: !20, line: 55, baseType: !1756, size: 64, offset: 128)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!566, !1751, !1759, !432}
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1752, file: !20, line: 57, baseType: !1761, size: 64, offset: 192)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!566, !1751, !1759, !406, !579}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1752, file: !20, line: 59, baseType: !1765, size: 64, offset: 256)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{null, !481, !406}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1752, file: !20, line: 60, baseType: !1769, size: 64, offset: 320)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!126, !481}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1752, file: !20, line: 61, baseType: !1773, size: 64, offset: 384)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{null, !481}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !482, file: !20, line: 419, baseType: !406, size: 64, offset: 1472)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !482, file: !20, line: 420, baseType: !406, size: 64, offset: 1536)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !482, file: !20, line: 421, baseType: !500, size: 64, offset: 1600)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !482, file: !20, line: 424, baseType: !1780, size: 64, offset: 1664)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1782)
!1782 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !20, line: 424, flags: DIFlagFwdDecl)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !482, file: !20, line: 425, baseType: !1784, size: 64, offset: 1728)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !767)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !482, file: !20, line: 426, baseType: !7, size: 32, offset: 1792)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !482, file: !20, line: 435, baseType: !646, size: 256, offset: 1856)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !482, file: !20, line: 437, baseType: !1789, size: 64, offset: 2112)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1791, line: 69, size: 320, elements: !1792)
!1791 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1792 = !{!1793, !1794, !1795, !1812, !1814, !1818, !1819}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1790, file: !1791, line: 70, baseType: !406, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1790, file: !1791, line: 71, baseType: !481, size: 64, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1790, file: !1791, line: 72, baseType: !1796, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1798)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1791, line: 47, size: 256, elements: !1799)
!1799 = !{!1800, !1801, !1807, !1811}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1798, file: !1791, line: 49, baseType: !7, size: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1798, file: !1791, line: 51, baseType: !1802, size: 64, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!126, !406, !1805}
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1790)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1798, file: !1791, line: 53, baseType: !1808, size: 64, offset: 128)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!126, !432, !1805}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1798, file: !1791, line: 55, baseType: !1615, size: 64, offset: 192)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1790, file: !1791, line: 73, baseType: !1813, size: 16, offset: 192)
!1813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1790, file: !1791, line: 74, baseType: !1815, size: 8, offset: 208)
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !317, line: 16, baseType: !1816)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !319, line: 20, baseType: !1817)
!1817 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1790, file: !1791, line: 75, baseType: !374, size: 8, offset: 216)
!1819 = !DIDerivedType(tag: DW_TAG_member, scope: !1790, file: !1791, line: 76, baseType: !1820, size: 64, offset: 256)
!1820 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1790, file: !1791, line: 76, size: 64, elements: !1821)
!1821 = !{!1822, !1823, !1830}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1820, file: !1791, line: 77, baseType: !190, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1820, file: !1791, line: 78, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1826)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1791, line: 86, size: 128, elements: !1827)
!1827 = !{!1828, !1829}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1826, file: !1791, line: 87, baseType: !7, size: 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1826, file: !1791, line: 88, baseType: !432, size: 64, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1820, file: !1791, line: 79, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1833)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1791, line: 92, size: 256, elements: !1834)
!1834 = !{!1835, !1836, !1837, !1839, !1840}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1833, file: !1791, line: 94, baseType: !7, size: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1833, file: !1791, line: 95, baseType: !7, size: 32, offset: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1833, file: !1791, line: 96, baseType: !1838, size: 64, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1833, file: !1791, line: 97, baseType: !1796, size: 64, offset: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1833, file: !1791, line: 98, baseType: !190, size: 64, offset: 192)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !482, file: !20, line: 438, baseType: !7, size: 32, offset: 2176)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !482, file: !20, line: 441, baseType: !7, size: 32, offset: 2208)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !482, file: !20, line: 442, baseType: !1780, size: 64, offset: 2240)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !482, file: !20, line: 443, baseType: !1784, size: 64, offset: 2304)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !482, file: !20, line: 444, baseType: !841, size: 8, offset: 2368)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !482, file: !20, line: 451, baseType: !841, size: 8, offset: 2376)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !482, file: !20, line: 454, baseType: !7, size: 32, offset: 2400)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !482, file: !20, line: 455, baseType: !1849, size: 64, offset: 2432)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1851, line: 23, size: 96, elements: !1852)
!1851 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1852 = !{!1853, !1854, !1855}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1850, file: !1851, line: 24, baseType: !126, size: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1850, file: !1851, line: 24, baseType: !126, size: 32, offset: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1850, file: !1851, line: 24, baseType: !126, size: 32, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !482, file: !20, line: 458, baseType: !1857, size: 64, offset: 2496)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!126}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !482, file: !20, line: 460, baseType: !1861, size: 4032, align: 512, offset: 2560)
!1861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1862, size: 4032, elements: !1878)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !20, line: 362, size: 576, elements: !1863)
!1863 = !{!1864, !1865, !1866}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1862, file: !20, line: 363, baseType: !190, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1862, file: !20, line: 364, baseType: !7, size: 32, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1862, file: !20, line: 367, baseType: !1867, size: 448, offset: 128)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !20, line: 319, size: 448, elements: !1868)
!1868 = !{!1869, !1870}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1867, file: !20, line: 320, baseType: !481, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1867, file: !20, line: 321, baseType: !1871, size: 384, offset: 64)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1872, line: 40, size: 384, elements: !1873)
!1872 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1873 = !{!1874}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1871, file: !1872, line: 41, baseType: !1875, size: 384, align: 64)
!1875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !774, size: 384, align: 64, elements: !1876)
!1876 = !{!1877}
!1877 = !DISubrange(count: 2)
!1878 = !{!1879}
!1879 = !DISubrange(count: 7)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !482, file: !20, line: 463, baseType: !1881, size: 192, offset: 6592)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1882, line: 8, size: 192, elements: !1883)
!1882 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1883 = !{!1884, !1885, !1887}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1881, file: !1882, line: 10, baseType: !7, size: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1881, file: !1882, line: 11, baseType: !1886, size: 64, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1881, file: !1882, line: 12, baseType: !1888, size: 64, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1890, line: 59, size: 48, elements: !1891)
!1890 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1891 = !{!1892, !1893, !1894, !1895, !1896, !1897}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1889, file: !1890, line: 60, baseType: !1272, size: 16)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1889, file: !1890, line: 61, baseType: !1272, size: 16, offset: 16)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1889, file: !1890, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1889, file: !1890, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1889, file: !1890, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1889, file: !1890, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !482, file: !20, line: 465, baseType: !221, size: 64, offset: 6784)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !482, file: !20, line: 469, baseType: !7, size: 32, offset: 6848)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !482, file: !20, line: 470, baseType: !196, size: 128, offset: 6912)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !482, file: !20, line: 471, baseType: !1902, size: 64, offset: 7040)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1904, line: 33, size: 96, elements: !1905)
!1904 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1905 = !{!1906, !1907, !1908, !1909}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1903, file: !1904, line: 37, baseType: !126, size: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1903, file: !1904, line: 43, baseType: !126, size: 32, offset: 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1903, file: !1904, line: 45, baseType: !249, size: 16, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1903, file: !1904, line: 47, baseType: !249, size: 16, offset: 80)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !482, file: !20, line: 476, baseType: !1911, size: 64, offset: 7104)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !20, line: 378, size: 256, elements: !1913)
!1913 = !{!1914, !1930, !1931, !1932}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1912, file: !20, line: 379, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1917, line: 204, baseType: !1918)
!1917 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1917, line: 197, size: 192, elements: !1919)
!1919 = !{!1920, !1922, !1923, !1924, !1926, !1928}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1918, file: !1917, line: 198, baseType: !1921, size: 32)
!1921 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1917, line: 21, baseType: !318)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1918, file: !1917, line: 199, baseType: !328, size: 8, offset: 32)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1918, file: !1917, line: 200, baseType: !328, size: 8, offset: 40)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1918, file: !1917, line: 201, baseType: !1925, size: 16, offset: 48)
!1925 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1917, line: 17, baseType: !382)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1918, file: !1917, line: 202, baseType: !1927, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1917, line: 16, baseType: !323)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1918, file: !1917, line: 203, baseType: !1929, size: 64, offset: 128)
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1917, line: 22, baseType: !323)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1912, file: !20, line: 380, baseType: !7, size: 32, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1912, file: !20, line: 381, baseType: !432, size: 64, offset: 128)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1912, file: !20, line: 382, baseType: !432, size: 64, offset: 192)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !482, file: !20, line: 477, baseType: !1912, size: 256, offset: 7168)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !482, file: !20, line: 480, baseType: !1935, size: 64, offset: 7424)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !20, line: 480, flags: DIFlagFwdDecl)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !482, file: !20, line: 483, baseType: !1938, size: 64, offset: 7488)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !20, line: 483, flags: DIFlagFwdDecl)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !482, file: !20, line: 488, baseType: !432, size: 64, offset: 7552)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !482, file: !20, line: 492, baseType: !190, size: 64, offset: 7616)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !482, file: !20, line: 493, baseType: !7, size: 32, offset: 7680)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !482, file: !20, line: 495, baseType: !190, size: 64, offset: 7744)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !482, file: !20, line: 496, baseType: !7, size: 32, offset: 7808)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !482, file: !20, line: 499, baseType: !7, size: 32, offset: 7840)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !482, file: !20, line: 500, baseType: !1947, size: 64, offset: 7872)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1949, line: 45, baseType: !1950)
!1949 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !482, file: !20, line: 503, baseType: !7, size: 32, offset: 7936)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !482, file: !20, line: 504, baseType: !1953, size: 64, offset: 8000)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1956, line: 96, size: 192, elements: !1957)
!1956 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1957 = !{!1958, !1959, !2013, !2016}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1955, file: !1956, line: 97, baseType: !7, size: 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1955, file: !1956, line: 98, baseType: !1960, size: 64, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1956, line: 24, size: 3072, elements: !1962)
!1962 = !{!1963, !1965, !1966, !1967, !1968, !1982, !1983, !1984, !1985, !1997, !1998, !1999, !2010, !2011, !2012}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1961, file: !1956, line: 26, baseType: !1964, size: 128)
!1964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 128, elements: !1876)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1961, file: !1956, line: 27, baseType: !1964, size: 128, offset: 128)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1961, file: !1956, line: 28, baseType: !126, size: 32, offset: 256)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1961, file: !1956, line: 31, baseType: !346, size: 32, align: 512, offset: 512)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1961, file: !1956, line: 32, baseType: !1969, size: 960, offset: 576)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1970, line: 206, size: 960, elements: !1971)
!1970 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1971 = !{!1972, !1973, !1976, !1978, !1979, !1981}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1969, file: !1970, line: 207, baseType: !627, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1969, file: !1970, line: 208, baseType: !1974, size: 256, offset: 64)
!1974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1975, size: 256, elements: !706)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1969, file: !1970, line: 209, baseType: !1977, size: 256, offset: 320)
!1977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 256, elements: !706)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1969, file: !1970, line: 213, baseType: !569, size: 64, offset: 576)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1969, file: !1970, line: 215, baseType: !1980, size: 256, offset: 640)
!1980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 256, elements: !706)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1969, file: !1970, line: 216, baseType: !374, size: 8, offset: 896)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1961, file: !1956, line: 33, baseType: !221, size: 64, offset: 1536)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1961, file: !1956, line: 34, baseType: !221, size: 64, offset: 1600)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1961, file: !1956, line: 35, baseType: !841, size: 8, offset: 1664)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1961, file: !1956, line: 36, baseType: !1986, size: 320, offset: 1728)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1987, line: 11, size: 320, elements: !1988)
!1987 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1988 = !{!1989, !1990, !1991, !1996}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1986, file: !1987, line: 16, baseType: !701, size: 128)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1986, file: !1987, line: 17, baseType: !221, size: 64, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1986, file: !1987, line: 18, baseType: !1992, size: 64, offset: 192)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{null, !1995}
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1986, file: !1987, line: 19, baseType: !316, size: 32, offset: 256)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1961, file: !1956, line: 37, baseType: !1294, size: 256, offset: 2048)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1961, file: !1956, line: 38, baseType: !624, size: 128, align: 64, offset: 2304)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1961, file: !1956, line: 39, baseType: !2000, size: 64, offset: 2432)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1956, line: 49, size: 768, elements: !2002)
!2002 = !{!2003, !2004, !2005, !2006, !2007, !2008, !2009}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2001, file: !1956, line: 50, baseType: !346, size: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2001, file: !1956, line: 51, baseType: !1977, size: 256, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2001, file: !1956, line: 53, baseType: !1977, size: 256, offset: 320)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2001, file: !1956, line: 54, baseType: !221, size: 64, offset: 576)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2001, file: !1956, line: 55, baseType: !2000, size: 64, offset: 640)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2001, file: !1956, line: 56, baseType: !126, size: 32, offset: 704)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2001, file: !1956, line: 57, baseType: !126, size: 32, offset: 736)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1961, file: !1956, line: 40, baseType: !221, size: 64, offset: 2496)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1961, file: !1956, line: 42, baseType: !126, size: 32, offset: 2560)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1961, file: !1956, line: 43, baseType: !1954, size: 64, offset: 2624)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1955, file: !1956, line: 99, baseType: !2014, offset: 128)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2015, line: 211, elements: !1160)
!2015 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1955, file: !1956, line: 100, baseType: !2017, size: 64, offset: 128)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1956, line: 63, size: 3008, elements: !2019)
!2019 = !{!2020, !2021, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2051}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2018, file: !1956, line: 64, baseType: !2000, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2018, file: !1956, line: 65, baseType: !2022, size: 192, offset: 64)
!2022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2000, size: 192, elements: !535)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2018, file: !1956, line: 67, baseType: !126, size: 32, offset: 256)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2018, file: !1956, line: 68, baseType: !646, size: 256, offset: 320)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2018, file: !1956, line: 69, baseType: !346, size: 32, offset: 576)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2018, file: !1956, line: 70, baseType: !646, size: 256, offset: 640)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2018, file: !1956, line: 71, baseType: !221, size: 64, offset: 896)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2018, file: !1956, line: 72, baseType: !221, size: 64, offset: 960)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2018, file: !1956, line: 73, baseType: !221, size: 64, offset: 1024)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2018, file: !1956, line: 74, baseType: !221, size: 64, offset: 1088)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2018, file: !1956, line: 75, baseType: !221, size: 64, offset: 1152)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2018, file: !1956, line: 76, baseType: !221, size: 64, offset: 1216)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2018, file: !1956, line: 77, baseType: !221, size: 64, offset: 1280)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2018, file: !1956, line: 78, baseType: !221, size: 64, offset: 1344)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2018, file: !1956, line: 79, baseType: !841, size: 8, offset: 1408)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2018, file: !1956, line: 80, baseType: !221, size: 64, offset: 1472)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2018, file: !1956, line: 81, baseType: !646, size: 256, offset: 1536)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2018, file: !1956, line: 82, baseType: !1740, size: 256, offset: 1792)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2018, file: !1956, line: 84, baseType: !366, size: 32, offset: 2048)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2018, file: !1956, line: 87, baseType: !221, size: 64, offset: 2112)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2018, file: !1956, line: 88, baseType: !221, size: 64, offset: 2176)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2018, file: !1956, line: 89, baseType: !2043, size: 704, offset: 2240)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !159, line: 111, size: 704, elements: !2044)
!2044 = !{!2045, !2046, !2047, !2050}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2043, file: !159, line: 112, baseType: !1294, size: 256)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2043, file: !159, line: 113, baseType: !1986, size: 320, offset: 256)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2043, file: !159, line: 116, baseType: !2048, size: 64, offset: 576)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !159, line: 18, flags: DIFlagFwdDecl)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2043, file: !159, line: 117, baseType: !126, size: 32, offset: 640)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2018, file: !1956, line: 90, baseType: !1954, size: 64, offset: 2944)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !482, file: !20, line: 515, baseType: !2053, size: 64, offset: 8064)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2055, line: 117, size: 128, elements: !2056)
!2055 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2056 = !{!2057, !2058, !2059}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2054, file: !2055, line: 118, baseType: !767, size: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2054, file: !2055, line: 119, baseType: !767, size: 32, offset: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2054, file: !2055, line: 120, baseType: !569, size: 64, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !482, file: !20, line: 516, baseType: !7, size: 32, offset: 8128)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !482, file: !20, line: 519, baseType: !7, size: 32, offset: 8160)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !482, file: !20, line: 520, baseType: !2063, size: 64, offset: 8192)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !482, file: !20, line: 523, baseType: !2065, size: 64, offset: 8256)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !20, line: 523, flags: DIFlagFwdDecl)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !482, file: !20, line: 524, baseType: !7, size: 32, offset: 8320)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !482, file: !20, line: 525, baseType: !2070, size: 64, offset: 8384)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !20, line: 525, flags: DIFlagFwdDecl)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !482, file: !20, line: 526, baseType: !7, size: 32, offset: 8448)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !482, file: !20, line: 533, baseType: !190, size: 64, offset: 8512)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !482, file: !20, line: 534, baseType: !7, size: 32, offset: 8576)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !482, file: !20, line: 535, baseType: !2077, size: 64, offset: 8640)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !482, file: !20, line: 536, baseType: !7, size: 32, offset: 8704)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !482, file: !20, line: 539, baseType: !126, size: 32, offset: 8736)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !482, file: !20, line: 540, baseType: !2081, size: 64, offset: 8768)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2083, line: 32, size: 64, elements: !2084)
!2083 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2084 = !{!2085, !2086}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2082, file: !2083, line: 33, baseType: !767, size: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2082, file: !2083, line: 34, baseType: !767, size: 32, offset: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !482, file: !20, line: 563, baseType: !196, size: 128, offset: 8832)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !482, file: !20, line: 565, baseType: !196, size: 128, offset: 8960)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !482, file: !20, line: 568, baseType: !2090, size: 64, offset: 9088)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{null}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !482, file: !20, line: 570, baseType: !366, size: 32, offset: 9152)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !458, file: !64, line: 2382, baseType: !457, size: 64, offset: 448)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !458, file: !64, line: 2383, baseType: !697, size: 64, offset: 512)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !458, file: !64, line: 2385, baseType: !2097, offset: 576)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2015, line: 206, elements: !1160)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !458, file: !64, line: 2386, baseType: !2097, offset: 576)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !458, file: !64, line: 2387, baseType: !2097, offset: 576)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !458, file: !64, line: 2388, baseType: !2101, offset: 576)
!2101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2097, elements: !535)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !458, file: !64, line: 2390, baseType: !2097, offset: 576)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !458, file: !64, line: 2391, baseType: !2097, offset: 576)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !458, file: !64, line: 2392, baseType: !2097, offset: 576)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !458, file: !64, line: 2393, baseType: !2097, offset: 576)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !444, file: !64, line: 1197, baseType: !2107, size: 64, offset: 384)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2109)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !64, line: 2057, size: 1664, elements: !2110)
!2110 = !{!2111, !2115, !2119, !2120, !2124, !2130, !2134, !2135, !2136, !2140, !2144, !2148, !2149, !2150, !2156, !2160, !2161, !2165, !2166, !2167, !2168, !2172, !2176, !2223, !2238, !2239}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2109, file: !64, line: 2058, baseType: !2112, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!244, !443}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2109, file: !64, line: 2059, baseType: !2116, size: 64, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{null, !244}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2109, file: !64, line: 2060, baseType: !2116, size: 64, offset: 128)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2109, file: !64, line: 2062, baseType: !2121, size: 64, offset: 192)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{null, !244, !126}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2109, file: !64, line: 2063, baseType: !2125, size: 64, offset: 256)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!126, !244, !2128}
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !64, line: 309, flags: DIFlagFwdDecl)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2109, file: !64, line: 2064, baseType: !2131, size: 64, offset: 320)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!126, !244}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2109, file: !64, line: 2065, baseType: !2116, size: 64, offset: 384)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2109, file: !64, line: 2066, baseType: !477, size: 64, offset: 448)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2109, file: !64, line: 2067, baseType: !2137, size: 64, offset: 512)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!126, !443, !126}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2109, file: !64, line: 2068, baseType: !2141, size: 64, offset: 576)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!126, !443, !63}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2109, file: !64, line: 2069, baseType: !2145, size: 64, offset: 640)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!126, !443}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2109, file: !64, line: 2070, baseType: !2141, size: 64, offset: 704)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2109, file: !64, line: 2071, baseType: !2145, size: 64, offset: 768)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2109, file: !64, line: 2072, baseType: !2151, size: 64, offset: 832)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!126, !282, !2154}
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !64, line: 62, flags: DIFlagFwdDecl)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2109, file: !64, line: 2073, baseType: !2157, size: 64, offset: 896)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!126, !443, !1886, !432}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2109, file: !64, line: 2074, baseType: !477, size: 64, offset: 960)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2109, file: !64, line: 2076, baseType: !2162, size: 64, offset: 1024)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!126, !1511, !282}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2109, file: !64, line: 2077, baseType: !2162, size: 64, offset: 1088)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2109, file: !64, line: 2078, baseType: !2162, size: 64, offset: 1152)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2109, file: !64, line: 2079, baseType: !2162, size: 64, offset: 1216)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2109, file: !64, line: 2081, baseType: !2169, size: 64, offset: 1280)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!566, !443, !126, !432, !579, !453}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2109, file: !64, line: 2082, baseType: !2173, size: 64, offset: 1344)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!566, !443, !126, !406, !579, !453}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2109, file: !64, line: 2083, baseType: !2177, size: 64, offset: 1408)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!2180, !244}
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !69, line: 296, size: 1664, elements: !2183)
!2183 = !{!2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2208, !2209, !2210}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2182, file: !69, line: 297, baseType: !701, size: 128)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2182, file: !69, line: 298, baseType: !196, size: 128, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2182, file: !69, line: 299, baseType: !196, size: 128, offset: 256)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2182, file: !69, line: 300, baseType: !196, size: 128, offset: 384)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2182, file: !69, line: 301, baseType: !646, size: 256, offset: 512)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2182, file: !69, line: 302, baseType: !346, size: 32, offset: 768)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2182, file: !69, line: 303, baseType: !366, size: 32, offset: 800)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2182, file: !69, line: 304, baseType: !443, size: 64, offset: 832)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2182, file: !69, line: 305, baseType: !2193, size: 64, offset: 896)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !69, line: 68, size: 64, elements: !2194)
!2194 = !{!2195, !2207}
!2195 = !DIDerivedType(tag: DW_TAG_member, scope: !2193, file: !69, line: 69, baseType: !2196, size: 32)
!2196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2193, file: !69, line: 69, size: 32, elements: !2197)
!2197 = !{!2198, !2199, !2200}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2196, file: !69, line: 70, baseType: !252, size: 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2196, file: !69, line: 71, baseType: !262, size: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2196, file: !69, line: 72, baseType: !2201, size: 32)
!2201 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2202, line: 24, baseType: !2203)
!2202 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2202, line: 22, size: 32, elements: !2204)
!2204 = !{!2205}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2203, file: !2202, line: 23, baseType: !2206, size: 32)
!2206 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2202, line: 20, baseType: !258)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2193, file: !69, line: 74, baseType: !68, size: 32, offset: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2182, file: !69, line: 306, baseType: !453, size: 64, offset: 960)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2182, file: !69, line: 307, baseType: !221, size: 64, offset: 1024)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2182, file: !69, line: 308, baseType: !2211, size: 576, offset: 1088)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !69, line: 205, size: 576, elements: !2212)
!2212 = !{!2213, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2211, file: !69, line: 206, baseType: !2214, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !69, line: 66, baseType: !455)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2211, file: !69, line: 207, baseType: !2214, size: 64, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2211, file: !69, line: 208, baseType: !2214, size: 64, offset: 128)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2211, file: !69, line: 209, baseType: !2214, size: 64, offset: 192)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2211, file: !69, line: 210, baseType: !2214, size: 64, offset: 256)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2211, file: !69, line: 211, baseType: !2214, size: 64, offset: 320)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2211, file: !69, line: 212, baseType: !2214, size: 64, offset: 384)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2211, file: !69, line: 213, baseType: !798, size: 64, offset: 448)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2211, file: !69, line: 214, baseType: !798, size: 64, offset: 512)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2109, file: !64, line: 2085, baseType: !2224, size: 64, offset: 1472)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!569, !443, !2227}
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2229, line: 15, size: 256, elements: !2230)
!2229 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2230 = !{!2231, !2232, !2233, !2234, !2235}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2228, file: !2229, line: 16, baseType: !1371, size: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2228, file: !2229, line: 19, baseType: !126, size: 32, offset: 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2228, file: !2229, line: 26, baseType: !221, size: 64, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2228, file: !2229, line: 33, baseType: !221, size: 64, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2228, file: !2229, line: 36, baseType: !2236, size: 64, offset: 192)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !35, line: 33, flags: DIFlagFwdDecl)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2109, file: !64, line: 2087, baseType: !2224, size: 64, offset: 1536)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2109, file: !64, line: 2089, baseType: !477, size: 64, offset: 1600)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !444, file: !64, line: 1198, baseType: !2241, size: 64, offset: 448)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2243)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !69, line: 324, size: 704, elements: !2244)
!2244 = !{!2245, !2249, !2253, !2257, !2258, !2259, !2260, !2261, !2266, !2271, !2275}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2243, file: !69, line: 325, baseType: !2246, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!126, !2181}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2243, file: !69, line: 326, baseType: !2250, size: 64, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!2181, !443, !126}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2243, file: !69, line: 327, baseType: !2254, size: 64, offset: 128)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{null, !2181}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2243, file: !69, line: 328, baseType: !2246, size: 64, offset: 192)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2243, file: !69, line: 329, baseType: !2246, size: 64, offset: 256)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2243, file: !69, line: 330, baseType: !2246, size: 64, offset: 320)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2243, file: !69, line: 331, baseType: !2137, size: 64, offset: 384)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2243, file: !69, line: 334, baseType: !2262, size: 64, offset: 448)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!2265, !244}
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2243, file: !69, line: 335, baseType: !2267, size: 64, offset: 512)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!126, !244, !2270}
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2243, file: !69, line: 337, baseType: !2272, size: 64, offset: 576)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!126, !244, !2265}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2243, file: !69, line: 339, baseType: !2276, size: 64, offset: 640)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!126, !443, !2279}
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !444, file: !64, line: 1199, baseType: !2281, size: 64, offset: 512)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2283)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !69, line: 430, size: 704, elements: !2284)
!2284 = !{!2285, !2291, !2292, !2296, !2297, !2298, !2313, !2336, !2340, !2341, !2364}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2283, file: !69, line: 431, baseType: !2286, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!126, !443, !126, !126, !2289}
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !953)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2283, file: !69, line: 432, baseType: !2137, size: 64, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2283, file: !69, line: 433, baseType: !2293, size: 64, offset: 128)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!126, !443, !7}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2283, file: !69, line: 434, baseType: !2293, size: 64, offset: 192)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2283, file: !69, line: 435, baseType: !2137, size: 64, offset: 256)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2283, file: !69, line: 436, baseType: !2299, size: 64, offset: 320)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!126, !443, !126, !2302}
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !69, line: 417, size: 256, elements: !2304)
!2304 = !{!2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2303, file: !69, line: 418, baseType: !126, size: 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2303, file: !69, line: 419, baseType: !7, size: 32, offset: 32)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2303, file: !69, line: 420, baseType: !7, size: 32, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2303, file: !69, line: 422, baseType: !7, size: 32, offset: 96)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2303, file: !69, line: 423, baseType: !7, size: 32, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2303, file: !69, line: 424, baseType: !7, size: 32, offset: 160)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2303, file: !69, line: 425, baseType: !7, size: 32, offset: 192)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2303, file: !69, line: 426, baseType: !7, size: 32, offset: 224)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2283, file: !69, line: 437, baseType: !2314, size: 64, offset: 384)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!126, !443, !2193, !2317}
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !69, line: 345, size: 960, elements: !2319)
!2319 = !{!2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2318, file: !69, line: 346, baseType: !126, size: 32)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2318, file: !69, line: 347, baseType: !322, size: 64, offset: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2318, file: !69, line: 348, baseType: !322, size: 64, offset: 128)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2318, file: !69, line: 349, baseType: !322, size: 64, offset: 192)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2318, file: !69, line: 350, baseType: !322, size: 64, offset: 256)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2318, file: !69, line: 351, baseType: !322, size: 64, offset: 320)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2318, file: !69, line: 352, baseType: !322, size: 64, offset: 384)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2318, file: !69, line: 353, baseType: !643, size: 64, offset: 448)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2318, file: !69, line: 355, baseType: !643, size: 64, offset: 512)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2318, file: !69, line: 356, baseType: !126, size: 32, offset: 576)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2318, file: !69, line: 357, baseType: !126, size: 32, offset: 608)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2318, file: !69, line: 358, baseType: !322, size: 64, offset: 640)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2318, file: !69, line: 359, baseType: !322, size: 64, offset: 704)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2318, file: !69, line: 360, baseType: !322, size: 64, offset: 768)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2318, file: !69, line: 361, baseType: !643, size: 64, offset: 832)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2318, file: !69, line: 362, baseType: !126, size: 32, offset: 896)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2283, file: !69, line: 438, baseType: !2337, size: 64, offset: 448)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!126, !443, !2279, !2317}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2283, file: !69, line: 440, baseType: !2314, size: 64, offset: 512)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2283, file: !69, line: 441, baseType: !2342, size: 64, offset: 576)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!126, !443, !2345}
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !69, line: 411, size: 1408, elements: !2347)
!2347 = !{!2348, !2349}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2346, file: !69, line: 412, baseType: !7, size: 32)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2346, file: !69, line: 413, baseType: !2350, size: 1344, offset: 64)
!2350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2351, size: 1344, elements: !535)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !69, line: 397, size: 448, elements: !2352)
!2352 = !{!2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2363}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2351, file: !69, line: 398, baseType: !7, size: 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2351, file: !69, line: 399, baseType: !7, size: 32, offset: 32)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2351, file: !69, line: 401, baseType: !7, size: 32, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2351, file: !69, line: 402, baseType: !7, size: 32, offset: 96)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2351, file: !69, line: 403, baseType: !7, size: 32, offset: 128)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2351, file: !69, line: 404, baseType: !7, size: 32, offset: 160)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2351, file: !69, line: 405, baseType: !7, size: 32, offset: 192)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2351, file: !69, line: 406, baseType: !324, size: 64, offset: 256)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2351, file: !69, line: 407, baseType: !2362, size: 64, offset: 320)
!2362 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !197, line: 132, baseType: !322)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2351, file: !69, line: 408, baseType: !2362, size: 64, offset: 384)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2283, file: !69, line: 442, baseType: !2293, size: 64, offset: 640)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !444, file: !64, line: 1200, baseType: !2366, size: 64, offset: 576)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2368)
!2368 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !64, line: 54, flags: DIFlagFwdDecl)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !444, file: !64, line: 1201, baseType: !221, size: 64, offset: 640)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !444, file: !64, line: 1202, baseType: !221, size: 64, offset: 704)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !444, file: !64, line: 1203, baseType: !221, size: 64, offset: 768)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !444, file: !64, line: 1204, baseType: !282, size: 64, offset: 832)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !444, file: !64, line: 1205, baseType: !782, size: 320, offset: 896)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !444, file: !64, line: 1206, baseType: !126, size: 32, offset: 1216)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !444, file: !64, line: 1207, baseType: !366, size: 32, offset: 1248)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !444, file: !64, line: 1209, baseType: !190, size: 64, offset: 1280)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !444, file: !64, line: 1211, baseType: !2378, size: 64, offset: 1344)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2381)
!2381 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !64, line: 1211, flags: DIFlagFwdDecl)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !444, file: !64, line: 1223, baseType: !2383, size: 64, offset: 1408)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !299, line: 34, size: 64, elements: !2384)
!2384 = !{!2385}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2383, file: !299, line: 35, baseType: !302, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !444, file: !64, line: 1224, baseType: !196, size: 128, offset: 1472)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !444, file: !64, line: 1225, baseType: !2388, size: 64, offset: 1600)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !64, line: 1225, flags: DIFlagFwdDecl)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !444, file: !64, line: 1226, baseType: !2391, size: 64, offset: 1664)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !64, line: 1226, flags: DIFlagFwdDecl)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !444, file: !64, line: 1227, baseType: !2394, size: 64, offset: 1728)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !64, line: 50, flags: DIFlagFwdDecl)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !444, file: !64, line: 1228, baseType: !2397, size: 64, offset: 1792)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !64, line: 1228, flags: DIFlagFwdDecl)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !444, file: !64, line: 1229, baseType: !701, size: 128, offset: 1856)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !444, file: !64, line: 1230, baseType: !7, size: 32, offset: 1984)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !444, file: !64, line: 1231, baseType: !2402, size: 2496, offset: 2048)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !69, line: 521, size: 2496, elements: !2403)
!2403 = !{!2404, !2405, !2406, !2408, !2440}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2402, file: !69, line: 522, baseType: !7, size: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2402, file: !69, line: 523, baseType: !782, size: 320, offset: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2402, file: !69, line: 524, baseType: !2407, size: 192, offset: 384)
!2407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 192, elements: !535)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2402, file: !69, line: 525, baseType: !2409, size: 1728, offset: 576)
!2409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2410, size: 1728, elements: !535)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !69, line: 222, size: 576, elements: !2411)
!2411 = !{!2412, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2410, file: !69, line: 223, baseType: !2413, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !69, line: 445, size: 256, elements: !2415)
!2415 = !{!2416, !2417, !2430, !2431}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2414, file: !69, line: 446, baseType: !126, size: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2414, file: !69, line: 447, baseType: !2418, size: 64, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2420)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !69, line: 312, size: 512, elements: !2421)
!2421 = !{!2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2420, file: !69, line: 313, baseType: !2137, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2420, file: !69, line: 314, baseType: !2137, size: 64, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2420, file: !69, line: 315, baseType: !2137, size: 64, offset: 128)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2420, file: !69, line: 316, baseType: !2137, size: 64, offset: 192)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2420, file: !69, line: 317, baseType: !2246, size: 64, offset: 256)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2420, file: !69, line: 318, baseType: !2246, size: 64, offset: 320)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2420, file: !69, line: 319, baseType: !2246, size: 64, offset: 384)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2420, file: !69, line: 320, baseType: !2276, size: 64, offset: 448)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2414, file: !69, line: 448, baseType: !481, size: 64, offset: 128)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2414, file: !69, line: 449, baseType: !2413, size: 64, offset: 192)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2410, file: !69, line: 224, baseType: !126, size: 32, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2410, file: !69, line: 226, baseType: !196, size: 128, offset: 128)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2410, file: !69, line: 227, baseType: !221, size: 64, offset: 256)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2410, file: !69, line: 228, baseType: !7, size: 32, offset: 320)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2410, file: !69, line: 229, baseType: !7, size: 32, offset: 352)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2410, file: !69, line: 230, baseType: !2214, size: 64, offset: 384)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2410, file: !69, line: 231, baseType: !2214, size: 64, offset: 448)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2410, file: !69, line: 232, baseType: !190, size: 64, offset: 512)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2402, file: !69, line: 526, baseType: !2441, size: 192, offset: 2304)
!2441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2418, size: 192, elements: !535)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !444, file: !64, line: 1233, baseType: !2443, size: 2368, offset: 4544)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !64, line: 1184, size: 2368, elements: !2444)
!2444 = !{!2445, !2446, !2447}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2443, file: !64, line: 1185, baseType: !249, size: 16)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2443, file: !64, line: 1186, baseType: !249, size: 16, offset: 16)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2443, file: !64, line: 1187, baseType: !2448, size: 2304, offset: 64)
!2448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2449, size: 2304, elements: !535)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2450, line: 12, size: 768, elements: !2451)
!2450 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2451 = !{!2452, !2460, !2461, !3654, !3655}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2449, file: !2450, line: 13, baseType: !2453, size: 384)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2454, line: 17, size: 384, elements: !2455)
!2454 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2455 = !{!2456, !2457, !2458, !2459}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2453, file: !2454, line: 18, baseType: !126, size: 32)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2453, file: !2454, line: 19, baseType: !126, size: 32, offset: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2453, file: !2454, line: 20, baseType: !710, size: 192, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2453, file: !2454, line: 22, baseType: !624, size: 128, align: 64, offset: 256)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2449, file: !2450, line: 14, baseType: !1838, size: 64, offset: 384)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2449, file: !2450, line: 15, baseType: !2462, size: 64, offset: 448)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2463, line: 16, size: 64, elements: !2464)
!2463 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2464 = !{!2465}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2462, file: !2463, line: 17, baseType: !2466, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1488, line: 746, size: 58368, elements: !2468)
!2468 = !{!2469, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2549, !2560, !2652, !2656, !2659, !2690, !2691, !2692, !2693, !2704, !2706, !2707, !2708, !2709, !2710, !2711, !2722, !2723, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2740, !2741, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2829, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2877, !2883, !2884, !2885, !2886, !2887, !2891, !2894, !2901, !2906, !2909, !2912, !2915, !2918, !3056, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3094, !3095, !3096, !3105, !3113, !3114, !3115, !3116, !3117, !3122, !3123, !3124, !3127, !3128, !3131, !3134, !3137, !3145, !3148, !3149, !3235, !3236, !3237, !3238, !3239, !3245, !3246, !3247, !3248, !3251, !3252, !3255, !3258, !3259, !3262, !3263, !3264, !3267, !3268, !3269, !3270, !3271, !3272, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3304, !3305, !3311, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3323, !3395, !3397, !3398, !3399, !3400, !3401, !3402, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3431, !3432, !3433}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2467, file: !1488, line: 752, baseType: !2470, size: 192)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2471, line: 56, size: 192, elements: !2472)
!2471 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2472 = !{!2473, !2474, !2475, !2476}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2470, file: !2471, line: 57, baseType: !221, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2470, file: !2471, line: 58, baseType: !221, size: 64, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2470, file: !2471, line: 59, baseType: !316, size: 32, offset: 128)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2470, file: !2471, line: 61, baseType: !316, size: 32, offset: 160)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2467, file: !1488, line: 754, baseType: !7, size: 32, offset: 192)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2467, file: !1488, line: 767, baseType: !190, size: 64, offset: 256)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2467, file: !1488, line: 768, baseType: !689, size: 32, offset: 320)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2467, file: !1488, line: 770, baseType: !7, size: 32, offset: 352)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2467, file: !1488, line: 771, baseType: !7, size: 32, offset: 384)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2467, file: !1488, line: 774, baseType: !126, size: 32, offset: 416)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2467, file: !1488, line: 775, baseType: !2484, size: 128, offset: 448)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2485, line: 58, size: 128, elements: !2486)
!2485 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2486 = !{!2487, !2488, !2493, !2494}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2484, file: !2485, line: 59, baseType: !618, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, scope: !2484, file: !2485, line: 60, baseType: !2489, size: 32, offset: 64)
!2489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2484, file: !2485, line: 60, size: 32, elements: !2490)
!2490 = !{!2491, !2492}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2489, file: !2485, line: 61, baseType: !7, size: 32)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2489, file: !2485, line: 62, baseType: !366, size: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2484, file: !2485, line: 65, baseType: !381, size: 16, offset: 96)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2484, file: !2485, line: 65, baseType: !381, size: 16, offset: 112)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2467, file: !1488, line: 776, baseType: !7, size: 32, offset: 576)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2467, file: !1488, line: 777, baseType: !221, size: 64, offset: 640)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2467, file: !1488, line: 778, baseType: !2466, size: 64, offset: 704)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2467, file: !1488, line: 787, baseType: !126, size: 32, offset: 768)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2467, file: !1488, line: 788, baseType: !126, size: 32, offset: 800)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2467, file: !1488, line: 790, baseType: !126, size: 32, offset: 832)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2467, file: !1488, line: 792, baseType: !126, size: 32, offset: 864)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2467, file: !1488, line: 793, baseType: !126, size: 32, offset: 896)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2467, file: !1488, line: 794, baseType: !126, size: 32, offset: 928)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2467, file: !1488, line: 795, baseType: !7, size: 32, offset: 960)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2467, file: !1488, line: 797, baseType: !2506, size: 2048, offset: 1024)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1488, line: 551, size: 2048, elements: !2507)
!2507 = !{!2508, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2528, !2531, !2532, !2533}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2506, file: !1488, line: 553, baseType: !2509, size: 128)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1488, line: 411, size: 128, elements: !2510)
!2510 = !{!2511, !2512}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2509, file: !1488, line: 412, baseType: !221, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2509, file: !1488, line: 413, baseType: !316, size: 32, offset: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2506, file: !1488, line: 554, baseType: !774, size: 192, align: 64, offset: 128)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2506, file: !1488, line: 555, baseType: !322, size: 64, offset: 320)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2506, file: !1488, line: 556, baseType: !322, size: 64, offset: 384)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2506, file: !1488, line: 558, baseType: !196, size: 128, offset: 448)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2506, file: !1488, line: 559, baseType: !7, size: 32, offset: 576)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2506, file: !1488, line: 561, baseType: !322, size: 64, offset: 640)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2506, file: !1488, line: 562, baseType: !322, size: 64, offset: 704)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2506, file: !1488, line: 563, baseType: !322, size: 64, offset: 768)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2506, file: !1488, line: 564, baseType: !322, size: 64, offset: 832)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2506, file: !1488, line: 565, baseType: !643, size: 64, offset: 896)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2506, file: !1488, line: 566, baseType: !322, size: 64, offset: 960)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2506, file: !1488, line: 568, baseType: !322, size: 64, offset: 1024)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2506, file: !1488, line: 571, baseType: !126, size: 32, offset: 1088)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2506, file: !1488, line: 572, baseType: !2527, size: 64, offset: 1152)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2506, file: !1488, line: 574, baseType: !2529, size: 64, offset: 1216)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1488, line: 49, flags: DIFlagFwdDecl)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2506, file: !1488, line: 576, baseType: !2529, size: 64, offset: 1280)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2506, file: !1488, line: 578, baseType: !221, size: 64, offset: 1344)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2506, file: !1488, line: 588, baseType: !2534, size: 512, align: 512, offset: 1536)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1488, line: 497, size: 512, align: 512, elements: !2535)
!2535 = !{!2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2534, file: !1488, line: 498, baseType: !322, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2534, file: !1488, line: 499, baseType: !322, size: 64, offset: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2534, file: !1488, line: 500, baseType: !322, size: 64, offset: 128)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2534, file: !1488, line: 501, baseType: !316, size: 32, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2534, file: !1488, line: 502, baseType: !316, size: 32, offset: 224)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2534, file: !1488, line: 503, baseType: !221, size: 64, offset: 256)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2534, file: !1488, line: 504, baseType: !221, size: 64, offset: 320)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2534, file: !1488, line: 505, baseType: !221, size: 64, offset: 384)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2534, file: !1488, line: 506, baseType: !2545, size: 64, align: 64, offset: 448)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1488, line: 445, size: 64, align: 64, elements: !2546)
!2546 = !{!2547, !2548}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2545, file: !1488, line: 446, baseType: !7, size: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2545, file: !1488, line: 447, baseType: !7, size: 32, offset: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2467, file: !1488, line: 798, baseType: !2550, size: 384, offset: 3072)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1488, line: 592, size: 384, elements: !2551)
!2551 = !{!2552, !2553, !2554, !2555, !2556, !2557, !2558}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2550, file: !1488, line: 593, baseType: !196, size: 128)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2550, file: !1488, line: 594, baseType: !221, size: 64, offset: 128)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2550, file: !1488, line: 595, baseType: !221, size: 64, offset: 192)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2550, file: !1488, line: 596, baseType: !7, size: 32, offset: 256)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2550, file: !1488, line: 597, baseType: !249, size: 16, offset: 288)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2550, file: !1488, line: 598, baseType: !249, size: 16, offset: 304)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2550, file: !1488, line: 600, baseType: !2559, size: 64, offset: 320)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2467, file: !1488, line: 799, baseType: !2561, size: 1792, offset: 3456)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1488, line: 610, size: 1792, elements: !2562)
!2562 = !{!2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2649, !2650}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2561, file: !1488, line: 611, baseType: !774, size: 192, align: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2561, file: !1488, line: 618, baseType: !322, size: 64, offset: 192)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2561, file: !1488, line: 619, baseType: !322, size: 64, offset: 256)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2561, file: !1488, line: 620, baseType: !322, size: 64, offset: 320)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2561, file: !1488, line: 621, baseType: !322, size: 64, offset: 384)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2561, file: !1488, line: 622, baseType: !322, size: 64, offset: 448)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2561, file: !1488, line: 629, baseType: !643, size: 64, offset: 512)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2561, file: !1488, line: 630, baseType: !322, size: 64, offset: 576)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2561, file: !1488, line: 631, baseType: !7, size: 32, offset: 640)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2561, file: !1488, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2561, file: !1488, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2561, file: !1488, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2561, file: !1488, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2561, file: !1488, line: 662, baseType: !2577, size: 512, offset: 704)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !2578)
!2578 = !{!2579, !2587, !2588, !2593, !2645, !2646, !2647, !2648}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2577, file: !6, line: 119, baseType: !2580, size: 256)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2581, line: 9, size: 256, elements: !2582)
!2581 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2582 = !{!2583, !2584}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2580, file: !2581, line: 10, baseType: !774, size: 192, align: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2580, file: !2581, line: 11, baseType: !2585, size: 64, offset: 192)
!2585 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2586, line: 29, baseType: !643)
!2586 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2577, file: !6, line: 120, baseType: !2585, size: 64, offset: 256)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2577, file: !6, line: 121, baseType: !2589, size: 64, offset: 320)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!5, !2592}
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2577, file: !6, line: 122, baseType: !2594, size: 64, offset: 384)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !2596)
!2596 = !{!2597, !2622, !2623, !2626, !2631, !2632, !2640, !2644}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2595, file: !6, line: 160, baseType: !2598, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !2600)
!2600 = !{!2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2599, file: !6, line: 216, baseType: !651, size: 32)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2599, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2599, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2599, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2599, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2599, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2599, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2599, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2599, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2599, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2599, file: !6, line: 227, baseType: !249, size: 16, offset: 192)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2599, file: !6, line: 228, baseType: !249, size: 16, offset: 208)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2599, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2599, file: !6, line: 235, baseType: !2585, size: 64, offset: 256)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2599, file: !6, line: 236, baseType: !2592, size: 64, offset: 320)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2599, file: !6, line: 237, baseType: !2585, size: 64, offset: 384)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2599, file: !6, line: 238, baseType: !2592, size: 64, offset: 448)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2599, file: !6, line: 239, baseType: !2619, size: 4096, align: 512, offset: 512)
!2619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2595, size: 4096, align: 512, elements: !2620)
!2620 = !{!2621}
!2621 = !DISubrange(count: 8)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2595, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2595, file: !6, line: 162, baseType: !2624, size: 32, offset: 96)
!2624 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !197, line: 32, baseType: !2625)
!2625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !259, line: 96, baseType: !126)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2595, file: !6, line: 163, baseType: !2627, size: 32, offset: 128)
!2627 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !289, line: 274, baseType: !2628)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !289, line: 274, size: 32, elements: !2629)
!2629 = !{!2630}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2628, file: !289, line: 274, baseType: !293, size: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2595, file: !6, line: 164, baseType: !2592, size: 64, offset: 192)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2595, file: !6, line: 165, baseType: !2633, size: 128, offset: 256)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2581, line: 14, size: 128, elements: !2634)
!2634 = !{!2635}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2633, file: !2581, line: 15, baseType: !2636, size: 128)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !775, line: 26, size: 128, elements: !2637)
!2637 = !{!2638, !2639}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2636, file: !775, line: 27, baseType: !1648, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2636, file: !775, line: 28, baseType: !779, size: 64, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2595, file: !6, line: 166, baseType: !2641, size: 64, offset: 384)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!2585}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2595, file: !6, line: 167, baseType: !2585, size: 64, offset: 448)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2577, file: !6, line: 123, baseType: !374, size: 8, offset: 448)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2577, file: !6, line: 124, baseType: !374, size: 8, offset: 456)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2577, file: !6, line: 125, baseType: !374, size: 8, offset: 464)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2577, file: !6, line: 126, baseType: !374, size: 8, offset: 472)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2561, file: !1488, line: 671, baseType: !2577, size: 512, offset: 1216)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2561, file: !1488, line: 679, baseType: !2651, size: 64, offset: 1728)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2467, file: !1488, line: 800, baseType: !2653, size: 64, offset: 5248)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2655)
!2655 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1488, line: 800, flags: DIFlagFwdDecl)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2467, file: !1488, line: 809, baseType: !2657, size: 64, offset: 5312)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1488, line: 70, flags: DIFlagFwdDecl)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2467, file: !1488, line: 825, baseType: !2660, size: 2048, align: 512, offset: 5632)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1488, line: 509, size: 2048, align: 512, elements: !2661)
!2661 = !{!2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2660, file: !1488, line: 511, baseType: !322, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2660, file: !1488, line: 512, baseType: !322, size: 64, offset: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2660, file: !1488, line: 513, baseType: !322, size: 64, offset: 128)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2660, file: !1488, line: 514, baseType: !322, size: 64, offset: 192)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2660, file: !1488, line: 515, baseType: !322, size: 64, offset: 256)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2660, file: !1488, line: 516, baseType: !322, size: 64, offset: 320)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2660, file: !1488, line: 518, baseType: !322, size: 64, offset: 384)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2660, file: !1488, line: 519, baseType: !322, size: 64, offset: 448)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2660, file: !1488, line: 520, baseType: !643, size: 64, offset: 512)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2660, file: !1488, line: 522, baseType: !322, size: 64, offset: 576)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2660, file: !1488, line: 523, baseType: !322, size: 64, offset: 640)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2660, file: !1488, line: 524, baseType: !643, size: 64, offset: 704)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2660, file: !1488, line: 526, baseType: !643, size: 64, offset: 768)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2660, file: !1488, line: 527, baseType: !322, size: 64, offset: 832)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2660, file: !1488, line: 529, baseType: !322, size: 64, offset: 896)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2660, file: !1488, line: 530, baseType: !322, size: 64, offset: 960)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2660, file: !1488, line: 531, baseType: !322, size: 64, offset: 1024)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2660, file: !1488, line: 532, baseType: !322, size: 64, offset: 1088)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2660, file: !1488, line: 533, baseType: !322, size: 64, offset: 1152)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2660, file: !1488, line: 535, baseType: !322, size: 64, offset: 1216)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2660, file: !1488, line: 536, baseType: !322, size: 64, offset: 1280)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2660, file: !1488, line: 537, baseType: !322, size: 64, offset: 1344)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2660, file: !1488, line: 538, baseType: !322, size: 64, offset: 1408)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2660, file: !1488, line: 539, baseType: !322, size: 64, offset: 1472)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2660, file: !1488, line: 540, baseType: !322, size: 64, offset: 1536)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2660, file: !1488, line: 541, baseType: !322, size: 64, offset: 1600)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2660, file: !1488, line: 542, baseType: !322, size: 64, offset: 1664)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2660, file: !1488, line: 543, baseType: !322, size: 64, offset: 1728)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2467, file: !1488, line: 833, baseType: !7, size: 32, offset: 7680)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2467, file: !1488, line: 836, baseType: !7, size: 32, offset: 7712)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2467, file: !1488, line: 837, baseType: !126, size: 32, offset: 7744)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2467, file: !1488, line: 838, baseType: !2694, size: 64, offset: 7808)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2696)
!2696 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2697, line: 19, baseType: !2698)
!2697 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2697, line: 19, size: 64, elements: !2699)
!2699 = !{!2700}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2698, file: !2697, line: 19, baseType: !2701, size: 64)
!2701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 64, elements: !2702)
!2702 = !{!2703}
!2703 = !DISubrange(count: 1)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2467, file: !1488, line: 839, baseType: !2705, size: 64, offset: 7872)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2467, file: !1488, line: 840, baseType: !2696, size: 64, offset: 7936)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2467, file: !1488, line: 841, baseType: !190, size: 64, offset: 8000)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2467, file: !1488, line: 843, baseType: !249, size: 16, offset: 8064)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2467, file: !1488, line: 845, baseType: !249, size: 16, offset: 8080)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2467, file: !1488, line: 848, baseType: !126, size: 32, offset: 8096)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2467, file: !1488, line: 849, baseType: !2712, size: 32, offset: 8128)
!2712 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1488, line: 718, size: 32, elements: !2713)
!2713 = !{!2714, !2721}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2712, file: !1488, line: 724, baseType: !2715, size: 32)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2712, file: !1488, line: 719, size: 32, elements: !2716)
!2716 = !{!2717, !2718, !2719, !2720}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2715, file: !1488, line: 720, baseType: !374, size: 8)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2715, file: !1488, line: 721, baseType: !374, size: 8, offset: 8)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2715, file: !1488, line: 722, baseType: !374, size: 8, offset: 16)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2715, file: !1488, line: 723, baseType: !374, size: 8, offset: 24)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2712, file: !1488, line: 725, baseType: !316, size: 32)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2467, file: !1488, line: 850, baseType: !196, size: 128, offset: 8192)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2467, file: !1488, line: 851, baseType: !2724, size: 64, offset: 8320)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1488, line: 60, flags: DIFlagFwdDecl)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2467, file: !1488, line: 855, baseType: !221, size: 64, offset: 8384)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2467, file: !1488, line: 856, baseType: !374, size: 8, offset: 8448)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2467, file: !1488, line: 857, baseType: !374, size: 8, offset: 8456)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2467, file: !1488, line: 858, baseType: !126, size: 32, offset: 8480)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2467, file: !1488, line: 859, baseType: !196, size: 128, offset: 8512)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2467, file: !1488, line: 860, baseType: !126, size: 32, offset: 8640)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2467, file: !1488, line: 861, baseType: !196, size: 128, offset: 8704)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2467, file: !1488, line: 873, baseType: !2734, size: 256, offset: 8832)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1488, line: 376, size: 256, elements: !2735)
!2735 = !{!2736, !2737, !2738, !2739}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2734, file: !1488, line: 381, baseType: !221, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2734, file: !1488, line: 384, baseType: !324, size: 64, offset: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2734, file: !1488, line: 389, baseType: !324, size: 64, offset: 128)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2734, file: !1488, line: 392, baseType: !324, size: 64, offset: 192)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2467, file: !1488, line: 875, baseType: !196, size: 128, offset: 9088)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2467, file: !1488, line: 877, baseType: !2742, size: 320, offset: 9216)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2743, line: 86, size: 320, elements: !2744)
!2743 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2744 = !{!2745, !2746, !2747}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2742, file: !2743, line: 87, baseType: !126, size: 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2742, file: !2743, line: 88, baseType: !196, size: 128, offset: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2742, file: !2743, line: 89, baseType: !196, size: 128, offset: 192)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2467, file: !1488, line: 878, baseType: !774, size: 192, align: 64, offset: 9536)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2467, file: !1488, line: 881, baseType: !1139, size: 64, offset: 9728)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2467, file: !1488, line: 882, baseType: !1139, size: 64, offset: 9792)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2467, file: !1488, line: 884, baseType: !126, size: 32, offset: 9856)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2467, file: !1488, line: 885, baseType: !126, size: 32, offset: 9888)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2467, file: !1488, line: 886, baseType: !126, size: 32, offset: 9920)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2467, file: !1488, line: 888, baseType: !126, size: 32, offset: 9952)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2467, file: !1488, line: 890, baseType: !221, size: 64, offset: 9984)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2467, file: !1488, line: 893, baseType: !7, size: 32, offset: 10048)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2467, file: !1488, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2467, file: !1488, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2467, file: !1488, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2467, file: !1488, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2467, file: !1488, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2467, file: !1488, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2467, file: !1488, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2467, file: !1488, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2467, file: !1488, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2467, file: !1488, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2467, file: !1488, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2467, file: !1488, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2467, file: !1488, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2467, file: !1488, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2467, file: !1488, line: 969, baseType: !221, size: 64, offset: 10176)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2467, file: !1488, line: 971, baseType: !2773, size: 448, offset: 10240)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !75, line: 25, size: 448, elements: !2774)
!2774 = !{!2775, !2776, !2781}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2773, file: !75, line: 26, baseType: !221, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2773, file: !75, line: 27, baseType: !2777, size: 64, offset: 64)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!569, !2780}
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, scope: !2773, file: !75, line: 28, baseType: !2782, size: 320, offset: 128)
!2782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2773, file: !75, line: 28, size: 320, elements: !2783)
!2783 = !{!2784, !2794, !2819}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2782, file: !75, line: 37, baseType: !2785, size: 320)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2782, file: !75, line: 30, size: 320, elements: !2786)
!2786 = !{!2787, !2789, !2790, !2791, !2792, !2793}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2785, file: !75, line: 31, baseType: !2788, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2785, file: !75, line: 32, baseType: !316, size: 32, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2785, file: !75, line: 33, baseType: !316, size: 32, offset: 96)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2785, file: !75, line: 34, baseType: !316, size: 32, offset: 128)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2785, file: !75, line: 35, baseType: !322, size: 64, offset: 192)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2785, file: !75, line: 36, baseType: !2788, size: 64, offset: 256)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2782, file: !75, line: 47, baseType: !2795, size: 192)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2782, file: !75, line: 39, size: 192, elements: !2796)
!2796 = !{!2797, !2798, !2799, !2818}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2795, file: !75, line: 40, baseType: !2624, size: 32)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2795, file: !75, line: 41, baseType: !74, size: 32, offset: 32)
!2799 = !DIDerivedType(tag: DW_TAG_member, scope: !2795, file: !75, line: 42, baseType: !2800, size: 64, offset: 64)
!2800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2795, file: !75, line: 42, size: 64, elements: !2801)
!2801 = !{!2802, !2810}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2800, file: !75, line: 43, baseType: !2803, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2805, line: 7, size: 128, elements: !2806)
!2805 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2806 = !{!2807, !2809}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2804, file: !2805, line: 8, baseType: !2808, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !259, line: 93, baseType: !455)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2804, file: !2805, line: 9, baseType: !455, size: 64, offset: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2800, file: !75, line: 44, baseType: !2811, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2813, line: 7, size: 64, elements: !2814)
!2813 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2814 = !{!2815, !2817}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2812, file: !2813, line: 8, baseType: !2816, size: 32)
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2813, line: 5, baseType: !767)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2812, file: !2813, line: 9, baseType: !767, size: 32, offset: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2795, file: !75, line: 46, baseType: !322, size: 64, offset: 128)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2782, file: !75, line: 55, baseType: !2820, size: 256)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2782, file: !75, line: 49, size: 256, elements: !2821)
!2821 = !{!2822, !2825, !2826, !2827, !2828}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2820, file: !75, line: 50, baseType: !2823, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !75, line: 14, flags: DIFlagFwdDecl)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2820, file: !75, line: 51, baseType: !126, size: 32, offset: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2820, file: !75, line: 52, baseType: !126, size: 32, offset: 96)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2820, file: !75, line: 53, baseType: !221, size: 64, offset: 128)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2820, file: !75, line: 54, baseType: !221, size: 64, offset: 192)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2467, file: !1488, line: 973, baseType: !2830, size: 32, offset: 10688)
!2830 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !197, line: 27, baseType: !2831)
!2831 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !259, line: 28, baseType: !126)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2467, file: !1488, line: 974, baseType: !2830, size: 32, offset: 10720)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2467, file: !1488, line: 978, baseType: !221, size: 64, offset: 10752)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2467, file: !1488, line: 987, baseType: !2466, size: 64, offset: 10816)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2467, file: !1488, line: 990, baseType: !2466, size: 64, offset: 10880)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2467, file: !1488, line: 995, baseType: !196, size: 128, offset: 10944)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2467, file: !1488, line: 996, baseType: !196, size: 128, offset: 11072)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2467, file: !1488, line: 997, baseType: !2466, size: 64, offset: 11200)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2467, file: !1488, line: 1005, baseType: !196, size: 128, offset: 11264)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2467, file: !1488, line: 1006, baseType: !196, size: 128, offset: 11392)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2467, file: !1488, line: 1009, baseType: !685, size: 64, offset: 11520)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2467, file: !1488, line: 1010, baseType: !2843, size: 512, offset: 11584)
!2843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !701, size: 512, elements: !706)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2467, file: !1488, line: 1011, baseType: !196, size: 128, offset: 12096)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2467, file: !1488, line: 1012, baseType: !196, size: 128, offset: 12224)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2467, file: !1488, line: 1014, baseType: !1739, size: 64, offset: 12352)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2467, file: !1488, line: 1017, baseType: !1886, size: 64, offset: 12416)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2467, file: !1488, line: 1020, baseType: !1886, size: 64, offset: 12480)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2467, file: !1488, line: 1023, baseType: !190, size: 64, offset: 12544)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2467, file: !1488, line: 1025, baseType: !322, size: 64, offset: 12608)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2467, file: !1488, line: 1026, baseType: !322, size: 64, offset: 12672)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2467, file: !1488, line: 1031, baseType: !322, size: 64, offset: 12736)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2467, file: !1488, line: 1032, baseType: !2854, size: 192, offset: 12800)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1488, line: 324, size: 192, elements: !2855)
!2855 = !{!2856, !2857, !2858}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2854, file: !1488, line: 326, baseType: !322, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2854, file: !1488, line: 327, baseType: !322, size: 64, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2854, file: !1488, line: 328, baseType: !651, size: 32, offset: 128)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2467, file: !1488, line: 1041, baseType: !221, size: 64, offset: 12992)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2467, file: !1488, line: 1042, baseType: !221, size: 64, offset: 13056)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2467, file: !1488, line: 1045, baseType: !322, size: 64, offset: 13120)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2467, file: !1488, line: 1048, baseType: !322, size: 64, offset: 13184)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2467, file: !1488, line: 1051, baseType: !221, size: 64, offset: 13248)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2467, file: !1488, line: 1052, baseType: !221, size: 64, offset: 13312)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2467, file: !1488, line: 1055, baseType: !2866, size: 640, offset: 13376)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2867, line: 132, size: 640, elements: !2868)
!2867 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2868 = !{!2869, !2875, !2876}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2866, file: !2867, line: 133, baseType: !2870, size: 576)
!2870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2871, size: 576, elements: !535)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2867, line: 117, size: 192, elements: !2872)
!2872 = !{!2873, !2874}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2871, file: !2867, line: 118, baseType: !322, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2871, file: !2867, line: 119, baseType: !2633, size: 128, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2866, file: !2867, line: 134, baseType: !7, size: 32, offset: 576)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2866, file: !2867, line: 135, baseType: !7, size: 32, offset: 608)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2467, file: !1488, line: 1058, baseType: !2878, size: 448, offset: 14016)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2867, line: 144, size: 448, elements: !2879)
!2879 = !{!2880, !2881, !2882}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2878, file: !2867, line: 145, baseType: !624, size: 128, align: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2878, file: !2867, line: 146, baseType: !646, size: 256, offset: 128)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2878, file: !2867, line: 147, baseType: !7, size: 32, offset: 384)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2467, file: !1488, line: 1064, baseType: !732, size: 64, offset: 14464)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2467, file: !1488, line: 1067, baseType: !732, size: 64, offset: 14528)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2467, file: !1488, line: 1070, baseType: !732, size: 64, offset: 14592)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2467, file: !1488, line: 1074, baseType: !759, size: 64, offset: 14656)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2467, file: !1488, line: 1084, baseType: !2888, size: 128, offset: 14720)
!2888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 128, elements: !2889)
!2889 = !{!2890}
!2890 = !DISubrange(count: 16)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2467, file: !1488, line: 1086, baseType: !2892, size: 64, offset: 14848)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1488, line: 55, flags: DIFlagFwdDecl)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2467, file: !1488, line: 1089, baseType: !2895, size: 64, offset: 14912)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2896, line: 12, size: 64, elements: !2897)
!2896 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2897 = !{!2898}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2895, file: !2896, line: 13, baseType: !2899, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2896, line: 8, flags: DIFlagFwdDecl)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2467, file: !1488, line: 1090, baseType: !2902, size: 128, offset: 14976)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2903, line: 13, size: 128, elements: !2904)
!2903 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2904 = !{!2905}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2902, file: !2903, line: 14, baseType: !196, size: 128)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2467, file: !1488, line: 1097, baseType: !2907, size: 64, offset: 15104)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1488, line: 50, flags: DIFlagFwdDecl)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2467, file: !1488, line: 1100, baseType: !2910, size: 64, offset: 15168)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1488, line: 1100, flags: DIFlagFwdDecl)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2467, file: !1488, line: 1103, baseType: !2913, size: 64, offset: 15232)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1488, line: 53, flags: DIFlagFwdDecl)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2467, file: !1488, line: 1107, baseType: !2916, size: 64, offset: 15296)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1488, line: 56, flags: DIFlagFwdDecl)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2467, file: !1488, line: 1110, baseType: !2919, size: 64, offset: 15360)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2921, line: 93, size: 8768, elements: !2922)
!2921 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2922 = !{!2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2970, !2979, !2980, !2982, !2983, !2984, !2987, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3025, !3026, !3033, !3043, !3046, !3047, !3050, !3051, !3052, !3053, !3054, !3055}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2920, file: !2921, line: 94, baseType: !689, size: 32)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2920, file: !2921, line: 95, baseType: !366, size: 32, offset: 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2920, file: !2921, line: 96, baseType: !126, size: 32, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2920, file: !2921, line: 97, baseType: !126, size: 32, offset: 96)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2920, file: !2921, line: 98, baseType: !196, size: 128, offset: 128)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2920, file: !2921, line: 100, baseType: !710, size: 192, offset: 256)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2920, file: !2921, line: 103, baseType: !2466, size: 64, offset: 448)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2920, file: !2921, line: 106, baseType: !2931, size: 192, offset: 512)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !929, line: 32, size: 192, elements: !2932)
!2932 = !{!2933, !2934}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2931, file: !929, line: 33, baseType: !196, size: 128)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2931, file: !929, line: 34, baseType: !2935, size: 64, offset: 128)
!2935 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2936, line: 25, baseType: !2937)
!2936 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2936, line: 23, size: 64, elements: !2938)
!2938 = !{!2939}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2937, file: !2936, line: 24, baseType: !2701, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2920, file: !2921, line: 109, baseType: !697, size: 64, offset: 704)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2920, file: !2921, line: 112, baseType: !126, size: 32, offset: 768)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2920, file: !2921, line: 114, baseType: !126, size: 32, offset: 800)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2920, file: !2921, line: 115, baseType: !2466, size: 64, offset: 832)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2920, file: !2921, line: 118, baseType: !126, size: 32, offset: 896)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2920, file: !2921, line: 119, baseType: !7, size: 32, offset: 928)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2920, file: !2921, line: 121, baseType: !2947, size: 64, offset: 960)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2921, line: 80, size: 448, elements: !2949)
!2949 = !{!2950, !2951, !2957}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2948, file: !2921, line: 81, baseType: !366, size: 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2948, file: !2921, line: 82, baseType: !2952, size: 128, offset: 64)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2921, line: 75, size: 128, elements: !2953)
!2953 = !{!2954, !2955}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2952, file: !2921, line: 76, baseType: !2466, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2952, file: !2921, line: 77, baseType: !2956, size: 64, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2948, file: !2921, line: 83, baseType: !1740, size: 256, offset: 192)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2920, file: !2921, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2920, file: !2921, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2920, file: !2921, line: 138, baseType: !7, size: 32, offset: 1056)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2920, file: !2921, line: 139, baseType: !196, size: 128, offset: 1088)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2920, file: !2921, line: 142, baseType: !2577, size: 512, offset: 1216)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2920, file: !2921, line: 143, baseType: !2585, size: 64, offset: 1728)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2920, file: !2921, line: 150, baseType: !2965, size: 256, offset: 1792)
!2965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2966, size: 256, elements: !1876)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2921, line: 38, size: 128, elements: !2967)
!2967 = !{!2968, !2969}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2966, file: !2921, line: 39, baseType: !322, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2966, file: !2921, line: 40, baseType: !322, size: 64, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2920, file: !2921, line: 156, baseType: !2971, size: 192, offset: 2048)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2921, line: 66, size: 192, elements: !2972)
!2972 = !{!2973}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2971, file: !2921, line: 67, baseType: !2974, size: 192)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2921, line: 47, size: 192, elements: !2975)
!2975 = !{!2976, !2977, !2978}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2974, file: !2921, line: 48, baseType: !639, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2974, file: !2921, line: 49, baseType: !639, size: 64, offset: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2974, file: !2921, line: 50, baseType: !639, size: 64, offset: 128)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2920, file: !2921, line: 160, baseType: !2866, size: 640, offset: 2240)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2920, file: !2921, line: 163, baseType: !2981, size: 256, offset: 2880)
!2981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !685, size: 256, elements: !706)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2920, file: !2921, line: 169, baseType: !685, size: 64, offset: 3136)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2920, file: !2921, line: 172, baseType: !126, size: 32, offset: 3200)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2920, file: !2921, line: 174, baseType: !2985, size: 64, offset: 3264)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2921, line: 174, flags: DIFlagFwdDecl)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2920, file: !2921, line: 185, baseType: !2988, size: 64, offset: 3328)
!2988 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !289, line: 860, baseType: !2989)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !289, line: 853, size: 64, elements: !2990)
!2990 = !{!2991, !2992}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2989, file: !289, line: 858, baseType: !288, size: 32)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2989, file: !289, line: 859, baseType: !346, size: 32, offset: 32)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2920, file: !2921, line: 186, baseType: !322, size: 64, offset: 3392)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2920, file: !2921, line: 186, baseType: !322, size: 64, offset: 3456)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2920, file: !2921, line: 186, baseType: !322, size: 64, offset: 3520)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2920, file: !2921, line: 186, baseType: !322, size: 64, offset: 3584)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2920, file: !2921, line: 187, baseType: !322, size: 64, offset: 3648)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2920, file: !2921, line: 188, baseType: !322, size: 64, offset: 3712)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2920, file: !2921, line: 189, baseType: !2854, size: 192, offset: 3776)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2920, file: !2921, line: 190, baseType: !221, size: 64, offset: 3968)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2920, file: !2921, line: 190, baseType: !221, size: 64, offset: 4032)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2920, file: !2921, line: 190, baseType: !221, size: 64, offset: 4096)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2920, file: !2921, line: 190, baseType: !221, size: 64, offset: 4160)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2920, file: !2921, line: 191, baseType: !221, size: 64, offset: 4224)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2920, file: !2921, line: 191, baseType: !221, size: 64, offset: 4288)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2920, file: !2921, line: 191, baseType: !221, size: 64, offset: 4352)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2920, file: !2921, line: 191, baseType: !221, size: 64, offset: 4416)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2920, file: !2921, line: 192, baseType: !221, size: 64, offset: 4480)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2920, file: !2921, line: 192, baseType: !221, size: 64, offset: 4544)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2920, file: !2921, line: 192, baseType: !221, size: 64, offset: 4608)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2920, file: !2921, line: 192, baseType: !221, size: 64, offset: 4672)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2920, file: !2921, line: 193, baseType: !221, size: 64, offset: 4736)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2920, file: !2921, line: 193, baseType: !221, size: 64, offset: 4800)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2920, file: !2921, line: 194, baseType: !3015, size: 448, offset: 4864)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3016, line: 12, size: 448, elements: !3017)
!3016 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3017 = !{!3018, !3019, !3020, !3021, !3022, !3023, !3024}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3015, file: !3016, line: 15, baseType: !322, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3015, file: !3016, line: 17, baseType: !322, size: 64, offset: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3015, file: !3016, line: 19, baseType: !322, size: 64, offset: 128)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3015, file: !3016, line: 21, baseType: !322, size: 64, offset: 192)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3015, file: !3016, line: 29, baseType: !322, size: 64, offset: 256)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3015, file: !3016, line: 35, baseType: !322, size: 64, offset: 320)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3015, file: !3016, line: 44, baseType: !322, size: 64, offset: 384)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2920, file: !2921, line: 202, baseType: !324, size: 64, offset: 5312)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2920, file: !2921, line: 213, baseType: !3027, size: 2048, offset: 5376)
!3027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3028, size: 2048, elements: !2889)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3029, line: 43, size: 128, elements: !3030)
!3029 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3030 = !{!3031, !3032}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3028, file: !3029, line: 44, baseType: !581, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3028, file: !3029, line: 45, baseType: !581, size: 64, offset: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2920, file: !2921, line: 216, baseType: !3034, size: 448, offset: 7424)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2921, line: 30, size: 448, elements: !3035)
!3035 = !{!3036, !3037, !3038, !3039, !3040, !3041, !3042}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3034, file: !2921, line: 31, baseType: !126, size: 32)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3034, file: !2921, line: 32, baseType: !569, size: 64, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3034, file: !2921, line: 33, baseType: !221, size: 64, offset: 128)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3034, file: !2921, line: 34, baseType: !322, size: 64, offset: 192)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3034, file: !2921, line: 34, baseType: !322, size: 64, offset: 256)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3034, file: !2921, line: 35, baseType: !221, size: 64, offset: 320)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3034, file: !2921, line: 35, baseType: !221, size: 64, offset: 384)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2920, file: !2921, line: 219, baseType: !3044, size: 64, offset: 7872)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2921, line: 219, flags: DIFlagFwdDecl)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2920, file: !2921, line: 222, baseType: !7, size: 32, offset: 7936)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2920, file: !2921, line: 223, baseType: !3048, size: 64, offset: 8000)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2921, line: 223, flags: DIFlagFwdDecl)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2920, file: !2921, line: 230, baseType: !841, size: 8, offset: 8064)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2920, file: !2921, line: 231, baseType: !810, size: 16, offset: 8080)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2920, file: !2921, line: 232, baseType: !810, size: 16, offset: 8096)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2920, file: !2921, line: 234, baseType: !1139, size: 64, offset: 8128)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2920, file: !2921, line: 237, baseType: !646, size: 256, offset: 8192)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2920, file: !2921, line: 243, baseType: !782, size: 320, offset: 8448)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2467, file: !1488, line: 1111, baseType: !3057, size: 64, offset: 15424)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2921, line: 20, size: 16640, elements: !3059)
!3059 = !{!3060, !3061, !3062, !3063}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3058, file: !2921, line: 21, baseType: !346, size: 32)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3058, file: !2921, line: 22, baseType: !689, size: 32, offset: 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3058, file: !2921, line: 23, baseType: !710, size: 192, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3058, file: !2921, line: 24, baseType: !3064, size: 16384, offset: 256)
!3064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3065, size: 16384, elements: !539)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !929, line: 51, size: 256, elements: !3066)
!3066 = !{!3067}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3065, file: !929, line: 52, baseType: !3068, size: 256)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !929, line: 37, size: 256, elements: !3069)
!3069 = !{!3070, !3077, !3078, !3082}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3068, file: !929, line: 39, baseType: !3071, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3072, line: 83, baseType: !3073)
!3072 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3072, line: 82, baseType: !3075)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{null, !126}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3068, file: !929, line: 40, baseType: !221, size: 64, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3068, file: !929, line: 46, baseType: !3079, size: 64, offset: 128)
!3079 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3072, line: 86, baseType: !3080)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3072, line: 85, baseType: !2091)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3068, file: !929, line: 48, baseType: !2935, size: 64, offset: 192)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2467, file: !1488, line: 1112, baseType: !2935, size: 64, offset: 15488)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2467, file: !1488, line: 1113, baseType: !2935, size: 64, offset: 15552)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2467, file: !1488, line: 1115, baseType: !2935, size: 64, offset: 15616)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2467, file: !1488, line: 1116, baseType: !2931, size: 192, offset: 15680)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2467, file: !1488, line: 1117, baseType: !221, size: 64, offset: 15872)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2467, file: !1488, line: 1118, baseType: !579, size: 64, offset: 15936)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2467, file: !1488, line: 1119, baseType: !7, size: 32, offset: 16000)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2467, file: !1488, line: 1121, baseType: !627, size: 64, offset: 16064)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2467, file: !1488, line: 1125, baseType: !3092, size: 64, offset: 16128)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1488, line: 43, flags: DIFlagFwdDecl)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2467, file: !1488, line: 1127, baseType: !252, size: 32, offset: 16192)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2467, file: !1488, line: 1128, baseType: !7, size: 32, offset: 16224)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2467, file: !1488, line: 1130, baseType: !3097, size: 128, offset: 16256)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3098, line: 37, size: 128, elements: !3099)
!3098 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3099 = !{!3100, !3101, !3102}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3097, file: !3098, line: 38, baseType: !126, size: 32)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3097, file: !3098, line: 39, baseType: !366, size: 32, offset: 32)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3097, file: !3098, line: 40, baseType: !3103, size: 64, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3098, line: 24, flags: DIFlagFwdDecl)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2467, file: !1488, line: 1131, baseType: !3106, size: 256, offset: 16384)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3107, line: 12, size: 256, elements: !3108)
!3107 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3108 = !{!3109, !3110, !3111, !3112}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3106, file: !3107, line: 13, baseType: !432, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3106, file: !3107, line: 14, baseType: !221, size: 64, offset: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3106, file: !3107, line: 15, baseType: !221, size: 64, offset: 128)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3106, file: !3107, line: 16, baseType: !841, size: 8, offset: 192)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2467, file: !1488, line: 1134, baseType: !322, size: 64, offset: 16640)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2467, file: !1488, line: 1135, baseType: !322, size: 64, offset: 16704)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2467, file: !1488, line: 1138, baseType: !346, size: 32, offset: 16768)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2467, file: !1488, line: 1141, baseType: !651, size: 32, offset: 16800)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2467, file: !1488, line: 1143, baseType: !3118, size: 64, offset: 16832)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1488, line: 735, size: 64, elements: !3119)
!3119 = !{!3120}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3118, file: !1488, line: 736, baseType: !3121, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2467, file: !1488, line: 1147, baseType: !2636, size: 128, offset: 16896)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2467, file: !1488, line: 1149, baseType: !2466, size: 64, offset: 17024)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2467, file: !1488, line: 1151, baseType: !3125, size: 64, offset: 17088)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1488, line: 1151, flags: DIFlagFwdDecl)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2467, file: !1488, line: 1188, baseType: !190, size: 64, offset: 17152)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2467, file: !1488, line: 1191, baseType: !3129, size: 64, offset: 17216)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1488, line: 44, flags: DIFlagFwdDecl)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2467, file: !1488, line: 1194, baseType: !3132, size: 64, offset: 17280)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1488, line: 45, flags: DIFlagFwdDecl)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2467, file: !1488, line: 1197, baseType: !3135, size: 64, offset: 17344)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1488, line: 61, flags: DIFlagFwdDecl)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2467, file: !1488, line: 1199, baseType: !3138, size: 64, offset: 17408)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3140, line: 99, size: 128, elements: !3141)
!3140 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3141 = !{!3142, !3143, !3144}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3139, file: !3140, line: 100, baseType: !637, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3139, file: !3140, line: 101, baseType: !366, size: 32, offset: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3139, file: !3140, line: 103, baseType: !249, size: 16, offset: 96)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2467, file: !1488, line: 1202, baseType: !3146, size: 64, offset: 17472)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1488, line: 48, flags: DIFlagFwdDecl)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2467, file: !1488, line: 1205, baseType: !221, size: 64, offset: 17536)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2467, file: !1488, line: 1206, baseType: !3150, size: 64, offset: 17600)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !929, line: 14, baseType: !3152)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !929, line: 12, size: 384, elements: !3153)
!3153 = !{!3154}
!3154 = !DIDerivedType(tag: DW_TAG_member, scope: !3152, file: !929, line: 13, baseType: !3155, size: 384)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3152, file: !929, line: 13, size: 384, elements: !3156)
!3156 = !{!3157, !3158, !3159, !3160}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3155, file: !929, line: 13, baseType: !126, size: 32)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3155, file: !929, line: 13, baseType: !126, size: 32, offset: 32)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3155, file: !929, line: 13, baseType: !126, size: 32, offset: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3155, file: !929, line: 13, baseType: !3161, size: 256, offset: 128)
!3161 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3162, line: 37, size: 256, elements: !3163)
!3162 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3163 = !{!3164, !3169, !3182, !3188, !3197, !3224, !3229}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3161, file: !3162, line: 42, baseType: !3165, size: 64)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !3162, line: 39, size: 64, elements: !3166)
!3166 = !{!3167, !3168}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3165, file: !3162, line: 40, baseType: !2831, size: 32)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3165, file: !3162, line: 41, baseType: !258, size: 32, offset: 32)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3161, file: !3162, line: 50, baseType: !3170, size: 192)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !3162, line: 45, size: 192, elements: !3171)
!3171 = !{!3172, !3174, !3175, !3181}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3170, file: !3162, line: 46, baseType: !3173, size: 32)
!3173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !259, line: 95, baseType: !126)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3170, file: !3162, line: 47, baseType: !126, size: 32, offset: 32)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3170, file: !3162, line: 48, baseType: !3176, size: 64, offset: 64)
!3176 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3162, line: 11, baseType: !3177)
!3177 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3162, line: 8, size: 64, elements: !3178)
!3178 = !{!3179, !3180}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3177, file: !3162, line: 9, baseType: !126, size: 32)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3177, file: !3162, line: 10, baseType: !190, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3170, file: !3162, line: 49, baseType: !126, size: 32, offset: 128)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3161, file: !3162, line: 57, baseType: !3183, size: 128)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !3162, line: 53, size: 128, elements: !3184)
!3184 = !{!3185, !3186, !3187}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3183, file: !3162, line: 54, baseType: !2831, size: 32)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3183, file: !3162, line: 55, baseType: !258, size: 32, offset: 32)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3183, file: !3162, line: 56, baseType: !3176, size: 64, offset: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3161, file: !3162, line: 66, baseType: !3189, size: 256)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !3162, line: 60, size: 256, elements: !3190)
!3190 = !{!3191, !3192, !3193, !3194, !3196}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3189, file: !3162, line: 61, baseType: !2831, size: 32)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3189, file: !3162, line: 62, baseType: !258, size: 32, offset: 32)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3189, file: !3162, line: 63, baseType: !126, size: 32, offset: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3189, file: !3162, line: 64, baseType: !3195, size: 64, offset: 128)
!3195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !259, line: 94, baseType: !568)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3189, file: !3162, line: 65, baseType: !3195, size: 64, offset: 192)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3161, file: !3162, line: 105, baseType: !3198, size: 256)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !3162, line: 69, size: 256, elements: !3199)
!3199 = !{!3200, !3201}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3198, file: !3162, line: 70, baseType: !190, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, scope: !3198, file: !3162, line: 79, baseType: !3202, size: 192, offset: 64)
!3202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3198, file: !3162, line: 79, size: 192, elements: !3203)
!3203 = !{!3204, !3205, !3206, !3213, !3218}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3202, file: !3162, line: 81, baseType: !126, size: 32)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3202, file: !3162, line: 86, baseType: !810, size: 16)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3202, file: !3162, line: 92, baseType: !3207, size: 192)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3202, file: !3162, line: 88, size: 192, elements: !3208)
!3208 = !{!3209, !3211, !3212}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3207, file: !3162, line: 89, baseType: !3210, size: 64)
!3210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 64, elements: !2620)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3207, file: !3162, line: 90, baseType: !190, size: 64, offset: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3207, file: !3162, line: 91, baseType: !190, size: 64, offset: 128)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3202, file: !3162, line: 97, baseType: !3214, size: 96)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3202, file: !3162, line: 94, size: 96, elements: !3215)
!3215 = !{!3216, !3217}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3214, file: !3162, line: 95, baseType: !3210, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3214, file: !3162, line: 96, baseType: !318, size: 32, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3202, file: !3162, line: 103, baseType: !3219, size: 128)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3202, file: !3162, line: 99, size: 128, elements: !3220)
!3220 = !{!3221, !3222, !3223}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3219, file: !3162, line: 100, baseType: !221, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3219, file: !3162, line: 101, baseType: !318, size: 32, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3219, file: !3162, line: 102, baseType: !318, size: 32, offset: 96)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3161, file: !3162, line: 111, baseType: !3225, size: 128)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !3162, line: 108, size: 128, elements: !3226)
!3226 = !{!3227, !3228}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3225, file: !3162, line: 109, baseType: !569, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3225, file: !3162, line: 110, baseType: !126, size: 32, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3161, file: !3162, line: 118, baseType: !3230, size: 128)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !3162, line: 114, size: 128, elements: !3231)
!3231 = !{!3232, !3233, !3234}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3230, file: !3162, line: 115, baseType: !190, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3230, file: !3162, line: 116, baseType: !126, size: 32, offset: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3230, file: !3162, line: 117, baseType: !7, size: 32, offset: 96)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2467, file: !1488, line: 1208, baseType: !3015, size: 448, offset: 17664)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2467, file: !1488, line: 1215, baseType: !322, size: 64, offset: 18112)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2467, file: !1488, line: 1217, baseType: !322, size: 64, offset: 18176)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2467, file: !1488, line: 1219, baseType: !322, size: 64, offset: 18240)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2467, file: !1488, line: 1223, baseType: !3240, size: 64, offset: 18304)
!3240 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3241, line: 99, baseType: !3242)
!3241 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3241, line: 99, size: 64, elements: !3243)
!3243 = !{!3244}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3242, file: !3241, line: 99, baseType: !2701, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2467, file: !1488, line: 1225, baseType: !288, size: 32, offset: 18368)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2467, file: !1488, line: 1226, baseType: !126, size: 32, offset: 18400)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2467, file: !1488, line: 1227, baseType: !126, size: 32, offset: 18432)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2467, file: !1488, line: 1231, baseType: !3249, size: 64, offset: 18496)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1488, line: 1231, flags: DIFlagFwdDecl)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2467, file: !1488, line: 1233, baseType: !196, size: 128, offset: 18560)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2467, file: !1488, line: 1240, baseType: !3253, size: 64, offset: 18688)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1488, line: 62, flags: DIFlagFwdDecl)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2467, file: !1488, line: 1242, baseType: !3256, size: 64, offset: 18752)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1488, line: 1242, flags: DIFlagFwdDecl)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2467, file: !1488, line: 1244, baseType: !196, size: 128, offset: 18816)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2467, file: !1488, line: 1245, baseType: !3260, size: 64, offset: 18944)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1488, line: 51, flags: DIFlagFwdDecl)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2467, file: !1488, line: 1246, baseType: !646, size: 256, offset: 19008)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2467, file: !1488, line: 1247, baseType: !7, size: 32, offset: 19264)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2467, file: !1488, line: 1250, baseType: !3265, size: 64, offset: 19328)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1488, line: 57, flags: DIFlagFwdDecl)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2467, file: !1488, line: 1251, baseType: !646, size: 256, offset: 19392)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2467, file: !1488, line: 1252, baseType: !196, size: 128, offset: 19648)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2467, file: !1488, line: 1259, baseType: !1434, size: 64, offset: 19776)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2467, file: !1488, line: 1260, baseType: !810, size: 16, offset: 19840)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2467, file: !1488, line: 1261, baseType: !810, size: 16, offset: 19856)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2467, file: !1488, line: 1314, baseType: !3273, size: 64, offset: 19904)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3275, line: 62, size: 256, align: 256, elements: !3276)
!3275 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3276 = !{!3277, !3278, !3279, !3280, !3281, !3282, !3283}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3274, file: !3275, line: 75, baseType: !318, size: 32)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3274, file: !3275, line: 90, baseType: !318, size: 32, offset: 32)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3274, file: !3275, line: 112, baseType: !323, size: 64, offset: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3274, file: !3275, line: 132, baseType: !318, size: 32, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3274, file: !3275, line: 140, baseType: !318, size: 32, offset: 160)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3274, file: !3275, line: 149, baseType: !318, size: 32, offset: 192)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3274, file: !3275, line: 154, baseType: !3284, offset: 224)
!3284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, elements: !725)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2467, file: !1488, line: 1315, baseType: !316, size: 32, offset: 19968)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2467, file: !1488, line: 1316, baseType: !316, size: 32, offset: 20000)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2467, file: !1488, line: 1321, baseType: !221, size: 64, offset: 20032)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2467, file: !1488, line: 1325, baseType: !126, size: 32, offset: 20096)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2467, file: !1488, line: 1326, baseType: !126, size: 32, offset: 20128)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2467, file: !1488, line: 1327, baseType: !126, size: 32, offset: 20160)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2467, file: !1488, line: 1328, baseType: !126, size: 32, offset: 20192)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2467, file: !1488, line: 1329, baseType: !624, size: 128, align: 64, offset: 20224)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2467, file: !1488, line: 1332, baseType: !3294, size: 128, offset: 20352)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3295, line: 51, size: 128, elements: !3296)
!3295 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3296 = !{!3297, !3302, !3303}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3294, file: !3295, line: 60, baseType: !3298, size: 64)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3299, line: 7, size: 64, elements: !3300)
!3299 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3300 = !{!3301}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3298, file: !3299, line: 12, baseType: !2698, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3294, file: !3295, line: 63, baseType: !841, size: 8, offset: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3294, file: !3295, line: 70, baseType: !841, size: 8, offset: 72)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2467, file: !1488, line: 1335, baseType: !1486, size: 64, offset: 20480)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2467, file: !1488, line: 1337, baseType: !3306, size: 128, offset: 20544)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3295, line: 39, size: 128, elements: !3307)
!3307 = !{!3308, !3309, !3310}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3306, file: !3295, line: 40, baseType: !217, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3306, file: !3295, line: 42, baseType: !318, size: 32, offset: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3306, file: !3295, line: 43, baseType: !318, size: 32, offset: 96)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2467, file: !1488, line: 1340, baseType: !3312, size: 64, offset: 20672)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1488, line: 69, flags: DIFlagFwdDecl)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2467, file: !1488, line: 1351, baseType: !126, size: 32, offset: 20736)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2467, file: !1488, line: 1352, baseType: !126, size: 32, offset: 20768)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2467, file: !1488, line: 1354, baseType: !221, size: 64, offset: 20800)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2467, file: !1488, line: 1364, baseType: !322, size: 64, offset: 20864)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2467, file: !1488, line: 1365, baseType: !322, size: 64, offset: 20928)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2467, file: !1488, line: 1412, baseType: !221, size: 64, offset: 20992)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2467, file: !1488, line: 1453, baseType: !3321, size: 64, offset: 21056)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1488, line: 1453, flags: DIFlagFwdDecl)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2467, file: !1488, line: 1457, baseType: !3324, size: 64, offset: 21120)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !81, line: 61, size: 576, elements: !3326)
!3326 = !{!3327, !3328, !3347, !3350, !3351, !3384, !3394}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3325, file: !81, line: 62, baseType: !80, size: 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, scope: !3325, file: !81, line: 64, baseType: !3329, size: 192, offset: 64)
!3329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3325, file: !81, line: 64, size: 192, elements: !3330)
!3330 = !{!3331, !3342}
!3331 = !DIDerivedType(tag: DW_TAG_member, scope: !3329, file: !81, line: 65, baseType: !3332, size: 192)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3329, file: !81, line: 65, size: 192, elements: !3333)
!3333 = !{!3334, !3341}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3332, file: !81, line: 66, baseType: !3335, size: 128)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3336, line: 50, size: 128, elements: !3337)
!3336 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3337 = !{!3338, !3339, !3340}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3335, file: !3336, line: 52, baseType: !221, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3335, file: !3336, line: 54, baseType: !7, size: 32, offset: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3335, file: !3336, line: 55, baseType: !7, size: 32, offset: 96)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3332, file: !81, line: 67, baseType: !221, size: 64, offset: 128)
!3342 = !DIDerivedType(tag: DW_TAG_member, scope: !3329, file: !81, line: 70, baseType: !3343, size: 192)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3329, file: !81, line: 70, size: 192, elements: !3344)
!3344 = !{!3345, !3346}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3343, file: !81, line: 71, baseType: !624, size: 128, align: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3343, file: !81, line: 72, baseType: !221, size: 64, offset: 128)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3325, file: !81, line: 76, baseType: !3348, size: 64, offset: 256)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !81, line: 76, flags: DIFlagFwdDecl)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3325, file: !81, line: 77, baseType: !221, size: 64, offset: 320)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3325, file: !81, line: 79, baseType: !3352, size: 64, offset: 384)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3336, line: 25, size: 256, elements: !3354)
!3354 = !{!3355, !3361, !3365}
!3355 = !DIDerivedType(tag: DW_TAG_member, scope: !3353, file: !3336, line: 26, baseType: !3356, size: 128)
!3356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3353, file: !3336, line: 26, size: 128, elements: !3357)
!3357 = !{!3358, !3360}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3356, file: !3336, line: 27, baseType: !3359, size: 128)
!3359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 128, elements: !2889)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3356, file: !3336, line: 28, baseType: !3359, size: 128)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3353, file: !3336, line: 31, baseType: !3362, size: 64, offset: 128)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3364)
!3364 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3336, line: 23, flags: DIFlagFwdDecl)
!3365 = !DIDerivedType(tag: DW_TAG_member, scope: !3353, file: !3336, line: 33, baseType: !3366, size: 64, offset: 192)
!3366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3353, file: !3336, line: 33, size: 64, elements: !3367)
!3367 = !{!3368, !3374, !3379}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3366, file: !3336, line: 38, baseType: !3369, size: 64)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3366, file: !3336, line: 34, size: 64, elements: !3370)
!3370 = !{!3371, !3372, !3373}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3369, file: !3336, line: 35, baseType: !767, size: 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3369, file: !3336, line: 36, baseType: !374, size: 8, offset: 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3369, file: !3336, line: 37, baseType: !374, size: 8, offset: 40)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3366, file: !3336, line: 42, baseType: !3375, size: 16)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3366, file: !3336, line: 39, size: 16, elements: !3376)
!3376 = !{!3377, !3378}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3375, file: !3336, line: 40, baseType: !374, size: 8)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3375, file: !3336, line: 41, baseType: !374, size: 8, offset: 8)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3366, file: !3336, line: 46, baseType: !3380, size: 16)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3366, file: !3336, line: 43, size: 16, elements: !3381)
!3381 = !{!3382, !3383}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3380, file: !3336, line: 44, baseType: !374, size: 8)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3380, file: !3336, line: 45, baseType: !374, size: 8, offset: 8)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3325, file: !81, line: 81, baseType: !3385, size: 64, offset: 448)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !81, line: 85, size: 384, elements: !3387)
!3387 = !{!3388, !3389, !3390, !3391, !3392, !3393}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3386, file: !81, line: 86, baseType: !3348, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3386, file: !81, line: 87, baseType: !221, size: 64, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3386, file: !81, line: 88, baseType: !221, size: 64, offset: 128)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3386, file: !81, line: 89, baseType: !221, size: 64, offset: 192)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3386, file: !81, line: 90, baseType: !841, size: 8, offset: 256)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3386, file: !81, line: 92, baseType: !3385, size: 64, offset: 320)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3325, file: !81, line: 82, baseType: !7, size: 32, offset: 512)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2467, file: !1488, line: 1463, baseType: !3396, offset: 21184)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1488, line: 739, elements: !1160)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2467, file: !1488, line: 1470, baseType: !624, size: 128, align: 64, offset: 21184)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2467, file: !1488, line: 1471, baseType: !689, size: 32, offset: 21312)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2467, file: !1488, line: 1472, baseType: !126, size: 32, offset: 21344)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2467, file: !1488, line: 1474, baseType: !2466, size: 64, offset: 21376)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2467, file: !1488, line: 1475, baseType: !1986, size: 320, offset: 21440)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2467, file: !1488, line: 1478, baseType: !3403, size: 64, offset: 21760)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3405, line: 49, size: 512, elements: !3406)
!3405 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3406 = !{!3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3416}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3404, file: !3405, line: 50, baseType: !3403, size: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3404, file: !3405, line: 51, baseType: !190, size: 64, offset: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3404, file: !3405, line: 52, baseType: !221, size: 64, offset: 128)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3404, file: !3405, line: 53, baseType: !221, size: 64, offset: 192)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3404, file: !3405, line: 54, baseType: !216, size: 64, offset: 256)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3404, file: !3405, line: 56, baseType: !7, size: 32, offset: 320)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3404, file: !3405, line: 58, baseType: !7, size: 32, offset: 352)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3404, file: !3405, line: 59, baseType: !3415, size: 64, offset: 384)
!3415 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !197, line: 159, baseType: !322)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3404, file: !3405, line: 60, baseType: !1255, size: 64, offset: 448)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2467, file: !1488, line: 1482, baseType: !689, size: 32, offset: 21824)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2467, file: !1488, line: 1489, baseType: !190, size: 64, offset: 21888)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2467, file: !1488, line: 1504, baseType: !190, size: 64, offset: 21952)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2467, file: !1488, line: 1505, baseType: !323, size: 64, offset: 22016)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2467, file: !1488, line: 1506, baseType: !322, size: 64, offset: 22080)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2467, file: !1488, line: 1507, baseType: !323, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2467, file: !1488, line: 1508, baseType: !323, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2467, file: !1488, line: 1509, baseType: !323, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2467, file: !1488, line: 1510, baseType: !624, size: 128, align: 64, offset: 22208)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2467, file: !1488, line: 1511, baseType: !126, size: 32, offset: 22336)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2467, file: !1488, line: 1515, baseType: !3428, size: 64, offset: 22400)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !619, line: 56, size: 64, elements: !3429)
!3429 = !{!3430}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3428, file: !619, line: 57, baseType: !622, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2467, file: !1488, line: 1518, baseType: !3428, size: 64, offset: 22464)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2467, file: !1488, line: 1528, baseType: !624, size: 128, align: 64, offset: 22528)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2467, file: !1488, line: 1552, baseType: !3434, size: 35328, offset: 23040)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3435, line: 430, size: 35328, elements: !3436)
!3435 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3436 = !{!3437, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3466, !3467, !3468, !3469, !3470, !3471, !3474, !3475, !3476, !3477}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3434, file: !3435, line: 432, baseType: !3438, size: 192)
!3438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3439, size: 192, elements: !535)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3440, line: 16, size: 64, elements: !3441)
!3440 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3441 = !{!3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3439, file: !3440, line: 17, baseType: !381, size: 16)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3439, file: !3440, line: 18, baseType: !381, size: 16, offset: 16)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3439, file: !3440, line: 19, baseType: !381, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3439, file: !3440, line: 19, baseType: !381, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3439, file: !3440, line: 19, baseType: !381, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3439, file: !3440, line: 19, baseType: !381, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3439, file: !3440, line: 19, baseType: !381, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3439, file: !3440, line: 20, baseType: !381, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3439, file: !3440, line: 20, baseType: !381, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3439, file: !3440, line: 20, baseType: !381, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3439, file: !3440, line: 20, baseType: !381, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3439, file: !3440, line: 20, baseType: !381, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3439, file: !3440, line: 20, baseType: !381, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3434, file: !3435, line: 436, baseType: !221, size: 64, offset: 192)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3434, file: !3435, line: 440, baseType: !249, size: 16, offset: 256)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3434, file: !3435, line: 441, baseType: !249, size: 16, offset: 272)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3434, file: !3435, line: 442, baseType: !249, size: 16, offset: 288)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3434, file: !3435, line: 443, baseType: !249, size: 16, offset: 304)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3434, file: !3435, line: 447, baseType: !221, size: 64, offset: 320)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3434, file: !3435, line: 448, baseType: !221, size: 64, offset: 384)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3434, file: !3435, line: 459, baseType: !3463, size: 256, offset: 448)
!3463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3464, size: 256, elements: !706)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3435, line: 428, flags: DIFlagFwdDecl)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3434, file: !3435, line: 461, baseType: !221, size: 64, offset: 704)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3434, file: !3435, line: 463, baseType: !221, size: 64, offset: 768)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3434, file: !3435, line: 465, baseType: !221, size: 64, offset: 832)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3434, file: !3435, line: 466, baseType: !221, size: 64, offset: 896)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3434, file: !3435, line: 467, baseType: !221, size: 64, offset: 960)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3434, file: !3435, line: 473, baseType: !3472, size: 64, offset: 1024)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3435, line: 10, flags: DIFlagFwdDecl)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3434, file: !3435, line: 480, baseType: !221, size: 64, offset: 1088)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3434, file: !3435, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3434, file: !3435, line: 491, baseType: !316, size: 32, offset: 1184)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3434, file: !3435, line: 501, baseType: !3478, size: 33792, offset: 1536)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3479, line: 448, size: 33792, elements: !3480)
!3479 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3480 = !{!3481, !3482, !3483, !3645, !3646, !3652, !3653}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3478, file: !3479, line: 461, baseType: !7, size: 32)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3478, file: !3479, line: 468, baseType: !221, size: 64, offset: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3478, file: !3479, line: 476, baseType: !3484, size: 64, offset: 128)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3479, line: 356, size: 33280, align: 512, elements: !3486)
!3486 = !{!3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3485, file: !3479, line: 358, baseType: !7, size: 32)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3485, file: !3479, line: 361, baseType: !7, size: 32, offset: 32)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3485, file: !3479, line: 364, baseType: !322, size: 64, offset: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3485, file: !3479, line: 367, baseType: !322, size: 64, offset: 128)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3485, file: !3479, line: 370, baseType: !322, size: 64, offset: 192)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3485, file: !3479, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3485, file: !3479, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3485, file: !3479, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3485, file: !3479, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3485, file: !3479, line: 397, baseType: !3497, size: 32768, offset: 512)
!3497 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3479, line: 348, size: 32768, elements: !3498)
!3498 = !{!3499, !3514, !3551, !3628, !3641}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3497, file: !3479, line: 349, baseType: !3500, size: 896)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3479, line: 12, size: 896, elements: !3501)
!3501 = !{!3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3513}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3500, file: !3479, line: 13, baseType: !316, size: 32)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3500, file: !3479, line: 14, baseType: !316, size: 32, offset: 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3500, file: !3479, line: 15, baseType: !316, size: 32, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3500, file: !3479, line: 16, baseType: !316, size: 32, offset: 96)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3500, file: !3479, line: 17, baseType: !316, size: 32, offset: 128)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3500, file: !3479, line: 18, baseType: !316, size: 32, offset: 160)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3500, file: !3479, line: 19, baseType: !316, size: 32, offset: 192)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3500, file: !3479, line: 22, baseType: !3510, size: 640, offset: 224)
!3510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 640, elements: !3511)
!3511 = !{!3512}
!3512 = !DISubrange(count: 20)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3500, file: !3479, line: 25, baseType: !316, size: 32, offset: 864)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3497, file: !3479, line: 350, baseType: !3515, size: 4096, align: 128)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3479, line: 34, size: 4096, align: 128, elements: !3516)
!3516 = !{!3517, !3518, !3519, !3520, !3521, !3536, !3537, !3538, !3540, !3542, !3546}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3515, file: !3479, line: 35, baseType: !381, size: 16)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3515, file: !3479, line: 36, baseType: !381, size: 16, offset: 16)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3515, file: !3479, line: 37, baseType: !381, size: 16, offset: 32)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3515, file: !3479, line: 38, baseType: !381, size: 16, offset: 48)
!3521 = !DIDerivedType(tag: DW_TAG_member, scope: !3515, file: !3479, line: 39, baseType: !3522, size: 128, offset: 64)
!3522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3515, file: !3479, line: 39, size: 128, elements: !3523)
!3523 = !{!3524, !3529}
!3524 = !DIDerivedType(tag: DW_TAG_member, scope: !3522, file: !3479, line: 40, baseType: !3525, size: 128)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3522, file: !3479, line: 40, size: 128, elements: !3526)
!3526 = !{!3527, !3528}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3525, file: !3479, line: 41, baseType: !322, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3525, file: !3479, line: 42, baseType: !322, size: 64, offset: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, scope: !3522, file: !3479, line: 44, baseType: !3530, size: 128)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3522, file: !3479, line: 44, size: 128, elements: !3531)
!3531 = !{!3532, !3533, !3534, !3535}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3530, file: !3479, line: 45, baseType: !316, size: 32)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3530, file: !3479, line: 46, baseType: !316, size: 32, offset: 32)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3530, file: !3479, line: 47, baseType: !316, size: 32, offset: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3530, file: !3479, line: 48, baseType: !316, size: 32, offset: 96)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3515, file: !3479, line: 51, baseType: !316, size: 32, offset: 192)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3515, file: !3479, line: 52, baseType: !316, size: 32, offset: 224)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3515, file: !3479, line: 55, baseType: !3539, size: 1024, offset: 256)
!3539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 1024, elements: !332)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3515, file: !3479, line: 58, baseType: !3541, size: 2048, offset: 1280)
!3541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 2048, elements: !539)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3515, file: !3479, line: 60, baseType: !3543, size: 384, offset: 3328)
!3543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 384, elements: !3544)
!3544 = !{!3545}
!3545 = !DISubrange(count: 12)
!3546 = !DIDerivedType(tag: DW_TAG_member, scope: !3515, file: !3479, line: 62, baseType: !3547, size: 384, offset: 3712)
!3547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3515, file: !3479, line: 62, size: 384, elements: !3548)
!3548 = !{!3549, !3550}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3547, file: !3479, line: 63, baseType: !3543, size: 384)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3547, file: !3479, line: 64, baseType: !3543, size: 384)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3497, file: !3479, line: 351, baseType: !3552, size: 1088)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3479, line: 79, size: 1088, elements: !3553)
!3553 = !{!3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3627}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3552, file: !3479, line: 80, baseType: !316, size: 32)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3552, file: !3479, line: 81, baseType: !316, size: 32, offset: 32)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3552, file: !3479, line: 82, baseType: !316, size: 32, offset: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3552, file: !3479, line: 83, baseType: !316, size: 32, offset: 96)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3552, file: !3479, line: 84, baseType: !316, size: 32, offset: 128)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3552, file: !3479, line: 85, baseType: !316, size: 32, offset: 160)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3552, file: !3479, line: 86, baseType: !316, size: 32, offset: 192)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3552, file: !3479, line: 88, baseType: !3510, size: 640, offset: 224)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3552, file: !3479, line: 89, baseType: !374, size: 8, offset: 864)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3552, file: !3479, line: 90, baseType: !374, size: 8, offset: 872)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3552, file: !3479, line: 91, baseType: !374, size: 8, offset: 880)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3552, file: !3479, line: 92, baseType: !374, size: 8, offset: 888)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3552, file: !3479, line: 93, baseType: !374, size: 8, offset: 896)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3552, file: !3479, line: 94, baseType: !374, size: 8, offset: 904)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3552, file: !3479, line: 95, baseType: !3569, size: 64, offset: 960)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3571, line: 11, size: 128, elements: !3572)
!3571 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3572 = !{!3573, !3574}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3570, file: !3571, line: 12, baseType: !569, size: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3570, file: !3571, line: 13, baseType: !3575, size: 64, offset: 64)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3577, line: 103, size: 1344, elements: !3578)
!3577 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3578 = !{!3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3607, !3608, !3609}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3576, file: !3577, line: 109, baseType: !221, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3576, file: !3577, line: 110, baseType: !221, size: 64, offset: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3576, file: !3577, line: 111, baseType: !221, size: 64, offset: 128)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3576, file: !3577, line: 112, baseType: !221, size: 64, offset: 192)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3576, file: !3577, line: 113, baseType: !221, size: 64, offset: 256)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3576, file: !3577, line: 114, baseType: !221, size: 64, offset: 320)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3576, file: !3577, line: 117, baseType: !221, size: 64, offset: 384)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3576, file: !3577, line: 118, baseType: !221, size: 64, offset: 448)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3576, file: !3577, line: 119, baseType: !221, size: 64, offset: 512)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3576, file: !3577, line: 120, baseType: !221, size: 64, offset: 576)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3576, file: !3577, line: 121, baseType: !221, size: 64, offset: 640)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3576, file: !3577, line: 122, baseType: !221, size: 64, offset: 704)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3576, file: !3577, line: 123, baseType: !221, size: 64, offset: 768)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3576, file: !3577, line: 124, baseType: !221, size: 64, offset: 832)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3576, file: !3577, line: 125, baseType: !221, size: 64, offset: 896)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3576, file: !3577, line: 139, baseType: !221, size: 64, offset: 960)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3576, file: !3577, line: 142, baseType: !221, size: 64, offset: 1024)
!3596 = !DIDerivedType(tag: DW_TAG_member, scope: !3576, file: !3577, line: 144, baseType: !3597, size: 64, offset: 1088)
!3597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3576, file: !3577, line: 144, size: 64, elements: !3598)
!3598 = !{!3599, !3600, !3601}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3597, file: !3577, line: 146, baseType: !381, size: 16)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3597, file: !3577, line: 148, baseType: !322, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3597, file: !3577, line: 150, baseType: !3602, size: 64)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3577, line: 59, size: 64, elements: !3603)
!3603 = !{!3604, !3605, !3606}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3602, file: !3577, line: 61, baseType: !322, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3602, file: !3577, line: 63, baseType: !322, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3602, file: !3577, line: 65, baseType: !322, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3576, file: !3577, line: 153, baseType: !221, size: 64, offset: 1152)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3576, file: !3577, line: 154, baseType: !221, size: 64, offset: 1216)
!3609 = !DIDerivedType(tag: DW_TAG_member, scope: !3576, file: !3577, line: 156, baseType: !3610, size: 64, offset: 1280)
!3610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3576, file: !3577, line: 156, size: 64, elements: !3611)
!3611 = !{!3612, !3613, !3614}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3610, file: !3577, line: 158, baseType: !381, size: 16)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3610, file: !3577, line: 160, baseType: !322, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3610, file: !3577, line: 162, baseType: !3615, size: 64)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3577, line: 69, size: 64, elements: !3616)
!3616 = !{!3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3615, file: !3577, line: 71, baseType: !322, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3615, file: !3577, line: 73, baseType: !322, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3615, file: !3577, line: 75, baseType: !322, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3615, file: !3577, line: 77, baseType: !322, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3615, file: !3577, line: 80, baseType: !322, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3615, file: !3577, line: 83, baseType: !322, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3615, file: !3577, line: 86, baseType: !322, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3615, file: !3577, line: 88, baseType: !322, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3615, file: !3577, line: 93, baseType: !322, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3615, file: !3577, line: 100, baseType: !322, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3552, file: !3479, line: 96, baseType: !316, size: 32, offset: 1024)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3497, file: !3479, line: 352, baseType: !3629, size: 4608, align: 512)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3479, line: 333, size: 4608, align: 512, elements: !3630)
!3630 = !{!3631, !3632, !3639}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3629, file: !3479, line: 334, baseType: !3515, size: 4096, align: 128)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3629, file: !3479, line: 335, baseType: !3633, size: 512, offset: 4096)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3479, line: 312, size: 512, elements: !3634)
!3634 = !{!3635, !3636, !3637}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3633, file: !3479, line: 313, baseType: !322, size: 64)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3633, file: !3479, line: 314, baseType: !322, size: 64, offset: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3633, file: !3479, line: 315, baseType: !3638, size: 384, offset: 128)
!3638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 384, elements: !828)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3629, file: !3479, line: 336, baseType: !3640, offset: 4608)
!3640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, elements: !725)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3497, file: !3479, line: 353, baseType: !3642, size: 32768)
!3642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 32768, elements: !3643)
!3643 = !{!3644}
!3644 = !DISubrange(count: 4096)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3478, file: !3479, line: 484, baseType: !3484, size: 64, offset: 192)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3478, file: !3479, line: 491, baseType: !3647, size: 128, offset: 256)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3479, line: 404, size: 128, elements: !3648)
!3648 = !{!3649, !3650, !3651}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3647, file: !3479, line: 424, baseType: !322, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3647, file: !3479, line: 432, baseType: !7, size: 32, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3647, file: !3479, line: 440, baseType: !7, size: 32, offset: 96)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3478, file: !3479, line: 498, baseType: !3647, size: 128, offset: 384)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3478, file: !3479, line: 508, baseType: !3485, size: 33280, align: 512, offset: 512)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2449, file: !2450, line: 16, baseType: !710, size: 192, offset: 512)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2449, file: !2450, line: 17, baseType: !366, size: 32, offset: 704)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !444, file: !64, line: 1240, baseType: !190, size: 64, offset: 6912)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !444, file: !64, line: 1243, baseType: !316, size: 32, offset: 6976)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !444, file: !64, line: 1245, baseType: !798, size: 64, offset: 7040)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !444, file: !64, line: 1246, baseType: !798, size: 64, offset: 7104)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !444, file: !64, line: 1248, baseType: !318, size: 32, offset: 7168)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !444, file: !64, line: 1249, baseType: !3662, size: 64, offset: 7232)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !64, line: 634, flags: DIFlagFwdDecl)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !444, file: !64, line: 1252, baseType: !3665, size: 256, offset: 7296)
!3665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 256, elements: !332)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !444, file: !64, line: 1253, baseType: !3667, size: 128, offset: 7552)
!3667 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3668, line: 21, baseType: !3669)
!3668 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3668, line: 19, size: 128, elements: !3670)
!3670 = !{!3671}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3669, file: !3668, line: 20, baseType: !3672, size: 128)
!3672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 128, elements: !2889)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !444, file: !64, line: 1255, baseType: !7, size: 32, offset: 7680)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !444, file: !64, line: 1261, baseType: !646, size: 256, offset: 7744)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !444, file: !64, line: 1267, baseType: !406, size: 64, offset: 8000)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !444, file: !64, line: 1269, baseType: !386, size: 64, offset: 8064)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !444, file: !64, line: 1271, baseType: !3678, size: 448, offset: 8128)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2229, line: 63, size: 448, elements: !3679)
!3679 = !{!3680, !3685, !3686, !3687, !3688, !3689, !3690}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3678, file: !2229, line: 64, baseType: !3681, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!221, !3684, !2227}
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3678, file: !2229, line: 66, baseType: !3681, size: 64, offset: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3678, file: !2229, line: 69, baseType: !569, size: 64, offset: 128)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3678, file: !2229, line: 70, baseType: !126, size: 32, offset: 192)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3678, file: !2229, line: 71, baseType: !7, size: 32, offset: 224)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3678, file: !2229, line: 74, baseType: !196, size: 128, offset: 256)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3678, file: !2229, line: 85, baseType: !3691, size: 64, offset: 384)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !444, file: !64, line: 1274, baseType: !637, size: 64, offset: 8576)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !444, file: !64, line: 1280, baseType: !637, size: 64, offset: 8640)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !444, file: !64, line: 1283, baseType: !126, size: 32, offset: 8704)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !444, file: !64, line: 1286, baseType: !1575, size: 32, offset: 8736)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !444, file: !64, line: 1289, baseType: !2048, size: 64, offset: 8768)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !444, file: !64, line: 1290, baseType: !697, size: 64, offset: 8832)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !444, file: !64, line: 1297, baseType: !924, size: 64, offset: 8896)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !444, file: !64, line: 1304, baseType: !3700, size: 64, offset: 8960)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3701, line: 49, size: 64, elements: !3702)
!3701 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3702 = !{!3703}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3700, file: !3701, line: 50, baseType: !3704, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3701, line: 41, size: 512, align: 512, elements: !3706)
!3706 = !{!3707, !3708, !3713}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3705, file: !3701, line: 43, baseType: !346, size: 32)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3705, file: !3701, line: 45, baseType: !3709, size: 192, offset: 64)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3701, line: 29, size: 192, elements: !3710)
!3710 = !{!3711, !3712}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3709, file: !3701, line: 30, baseType: !196, size: 128)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3709, file: !3701, line: 32, baseType: !569, size: 64, offset: 128)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3705, file: !3701, line: 46, baseType: !569, size: 64, offset: 256)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !444, file: !64, line: 1305, baseType: !3700, size: 64, offset: 9024)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !444, file: !64, line: 1306, baseType: !624, size: 128, align: 64, offset: 9088)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !444, file: !64, line: 1307, baseType: !1294, size: 256, offset: 9216)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !444, file: !64, line: 1309, baseType: !646, size: 256, offset: 9472)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !444, file: !64, line: 1314, baseType: !126, size: 32, offset: 9728)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !444, file: !64, line: 1317, baseType: !346, size: 32, align: 512, offset: 10240)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !444, file: !64, line: 1318, baseType: !196, size: 128, offset: 10304)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !444, file: !64, line: 1320, baseType: !346, size: 32, offset: 10432)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !444, file: !64, line: 1321, baseType: !196, size: 128, offset: 10496)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !438, file: !439, line: 73, baseType: !126, size: 32, offset: 128)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !438, file: !439, line: 74, baseType: !3725, size: 64, offset: 192)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !749, line: 42, flags: DIFlagFwdDecl)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !388, file: !284, line: 141, baseType: !3729, size: 64, offset: 704)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!126, !2289, !841}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !388, file: !284, line: 142, baseType: !3733, size: 64, offset: 768)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!282, !282, !3736}
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !283, file: !284, line: 96, baseType: !443, size: 64, offset: 832)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !283, file: !284, line: 97, baseType: !221, size: 64, offset: 896)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !283, file: !284, line: 98, baseType: !190, size: 64, offset: 960)
!3741 = !DIDerivedType(tag: DW_TAG_member, scope: !283, file: !284, line: 100, baseType: !3742, size: 128, offset: 1024)
!3742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !283, file: !284, line: 100, size: 128, elements: !3743)
!3743 = !{!3744, !3745}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3742, file: !284, line: 101, baseType: !196, size: 128)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3742, file: !284, line: 102, baseType: !3746, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !283, file: !284, line: 104, baseType: !196, size: 128, offset: 1152)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !283, file: !284, line: 105, baseType: !196, size: 128, offset: 1280)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !283, file: !284, line: 113, baseType: !3750, size: 128, offset: 1408)
!3750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !283, file: !284, line: 109, size: 128, elements: !3751)
!3751 = !{!3752, !3753, !3754}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3750, file: !284, line: 110, baseType: !701, size: 128)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3750, file: !284, line: 111, baseType: !298, size: 128)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3750, file: !284, line: 112, baseType: !624, size: 128, align: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !276, file: !64, line: 1968, baseType: !3756, size: 64, offset: 64)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!406, !282, !244, !3759}
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3761, line: 10, size: 128, elements: !3762)
!3761 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3762 = !{!3763, !3764}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3760, file: !3761, line: 11, baseType: !1615, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3760, file: !3761, line: 12, baseType: !190, size: 64, offset: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !276, file: !64, line: 1969, baseType: !3766, size: 64, offset: 128)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!126, !3725, !244, !126}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !276, file: !64, line: 1970, baseType: !3770, size: 64, offset: 192)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!270, !244, !126, !841}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !276, file: !64, line: 1972, baseType: !3774, size: 64, offset: 256)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!126, !282, !432, !126}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !276, file: !64, line: 1974, baseType: !3778, size: 64, offset: 320)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!126, !3725, !244, !282, !248, !841}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !276, file: !64, line: 1976, baseType: !3782, size: 64, offset: 384)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!126, !282, !244, !282}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !276, file: !64, line: 1977, baseType: !3786, size: 64, offset: 448)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!126, !244, !282}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !276, file: !64, line: 1978, baseType: !3790, size: 64, offset: 512)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!126, !3725, !244, !282, !406}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !276, file: !64, line: 1980, baseType: !3794, size: 64, offset: 576)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!126, !3725, !244, !282, !248}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !276, file: !64, line: 1982, baseType: !3786, size: 64, offset: 640)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !276, file: !64, line: 1983, baseType: !3799, size: 64, offset: 704)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!126, !3725, !244, !282, !248, !448}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !276, file: !64, line: 1985, baseType: !3803, size: 64, offset: 768)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!126, !3725, !244, !282, !244, !282, !7}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !276, file: !64, line: 1987, baseType: !3807, size: 64, offset: 832)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!126, !3725, !282, !3810}
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !64, line: 226, size: 640, elements: !3812)
!3812 = !{!3813, !3814, !3815, !3825, !3834, !3835, !3840, !3841, !3842}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3811, file: !64, line: 227, baseType: !7, size: 32)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3811, file: !64, line: 228, baseType: !248, size: 16, offset: 32)
!3815 = !DIDerivedType(tag: DW_TAG_member, scope: !3811, file: !64, line: 241, baseType: !3816, size: 32, offset: 64)
!3816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3811, file: !64, line: 241, size: 32, elements: !3817)
!3817 = !{!3818, !3819}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3816, file: !64, line: 242, baseType: !252, size: 32)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3816, file: !64, line: 243, baseType: !3820, size: 32)
!3820 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3821, line: 16, baseType: !3822)
!3821 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3821, line: 14, size: 32, elements: !3823)
!3823 = !{!3824}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3822, file: !3821, line: 15, baseType: !257, size: 32)
!3825 = !DIDerivedType(tag: DW_TAG_member, scope: !3811, file: !64, line: 245, baseType: !3826, size: 32, offset: 96)
!3826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3811, file: !64, line: 245, size: 32, elements: !3827)
!3827 = !{!3828, !3829}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3826, file: !64, line: 246, baseType: !262, size: 32)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3826, file: !64, line: 247, baseType: !3830, size: 32)
!3830 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3821, line: 20, baseType: !3831)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3821, line: 18, size: 32, elements: !3832)
!3832 = !{!3833}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3831, file: !3821, line: 19, baseType: !266, size: 32)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3811, file: !64, line: 249, baseType: !453, size: 64, offset: 128)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3811, file: !64, line: 250, baseType: !3836, size: 128, offset: 192)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !799, line: 13, size: 128, elements: !3837)
!3837 = !{!3838, !3839}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3836, file: !799, line: 14, baseType: !798, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3836, file: !799, line: 15, baseType: !569, size: 64, offset: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3811, file: !64, line: 251, baseType: !3836, size: 128, offset: 320)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3811, file: !64, line: 252, baseType: !3836, size: 128, offset: 448)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3811, file: !64, line: 259, baseType: !611, size: 64, offset: 576)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !276, file: !64, line: 1988, baseType: !3844, size: 64, offset: 896)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!126, !3725, !2289, !3847, !316, !7}
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3849, line: 22, size: 1280, elements: !3850)
!3849 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3850 = !{!3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3848, file: !3849, line: 23, baseType: !316, size: 32)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3848, file: !3849, line: 24, baseType: !248, size: 16, offset: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3848, file: !3849, line: 25, baseType: !7, size: 32, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3848, file: !3849, line: 26, baseType: !806, size: 32, offset: 96)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3848, file: !3849, line: 27, baseType: !322, size: 64, offset: 128)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3848, file: !3849, line: 28, baseType: !322, size: 64, offset: 192)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3848, file: !3849, line: 41, baseType: !322, size: 64, offset: 256)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3848, file: !3849, line: 42, baseType: !448, size: 32, offset: 320)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3848, file: !3849, line: 43, baseType: !448, size: 32, offset: 352)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3848, file: !3849, line: 44, baseType: !252, size: 32, offset: 384)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3848, file: !3849, line: 45, baseType: !262, size: 32, offset: 416)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3848, file: !3849, line: 46, baseType: !453, size: 64, offset: 448)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3848, file: !3849, line: 47, baseType: !3836, size: 128, offset: 512)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3848, file: !3849, line: 48, baseType: !3836, size: 128, offset: 640)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3848, file: !3849, line: 49, baseType: !3836, size: 128, offset: 768)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3848, file: !3849, line: 50, baseType: !3836, size: 128, offset: 896)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3848, file: !3849, line: 51, baseType: !322, size: 64, offset: 1024)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3848, file: !3849, line: 52, baseType: !322, size: 64, offset: 1088)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3848, file: !3849, line: 53, baseType: !316, size: 32, offset: 1152)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3848, file: !3849, line: 54, baseType: !316, size: 32, offset: 1184)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3848, file: !3849, line: 55, baseType: !322, size: 64, offset: 1216)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !276, file: !64, line: 1990, baseType: !3873, size: 64, offset: 960)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!566, !282, !432, !579}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !276, file: !64, line: 1991, baseType: !3877, size: 64, offset: 1024)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!126, !244, !3880, !322, !322}
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !64, line: 55, flags: DIFlagFwdDecl)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !276, file: !64, line: 1993, baseType: !3883, size: 64, offset: 1088)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!126, !244, !126}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !276, file: !64, line: 1994, baseType: !3887, size: 64, offset: 1152)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!126, !244, !282, !611, !7, !248}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !276, file: !64, line: 1997, baseType: !3891, size: 64, offset: 1216)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!126, !3725, !244, !611, !248}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !276, file: !64, line: 1999, baseType: !3895, size: 64, offset: 1280)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!270, !3725, !282, !126}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !276, file: !64, line: 2001, baseType: !3899, size: 64, offset: 1344)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!126, !3725, !282, !270, !126}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !276, file: !64, line: 2003, baseType: !3903, size: 64, offset: 1408)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!126, !3725, !282, !3906}
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !64, line: 76, flags: DIFlagFwdDecl)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !276, file: !64, line: 2005, baseType: !3909, size: 64, offset: 1472)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!126, !282, !3906}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !276, file: !64, line: 2006, baseType: !3913, size: 64, offset: 1536)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!3916, !244}
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !64, line: 3192, size: 192, elements: !3918)
!3918 = !{!3919, !3926}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3917, file: !64, line: 3193, baseType: !3920, size: 128)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3921, line: 296, size: 128, elements: !3922)
!3921 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3922 = !{!3923, !3924, !3925}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3920, file: !3921, line: 297, baseType: !346, size: 32)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3920, file: !3921, line: 299, baseType: !1371, size: 32, offset: 32)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3920, file: !3921, line: 300, baseType: !190, size: 64, offset: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3917, file: !64, line: 3194, baseType: !316, size: 32, offset: 128)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !245, file: !64, line: 655, baseType: !443, size: 64, offset: 448)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !245, file: !64, line: 656, baseType: !240, size: 64, offset: 512)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !245, file: !64, line: 659, baseType: !190, size: 64, offset: 576)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !245, file: !64, line: 663, baseType: !221, size: 64, offset: 640)
!3931 = !DIDerivedType(tag: DW_TAG_member, scope: !245, file: !64, line: 671, baseType: !3932, size: 32, offset: 704)
!3932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !245, file: !64, line: 671, size: 32, elements: !3933)
!3933 = !{!3934, !3936}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3932, file: !64, line: 672, baseType: !3935, size: 32)
!3935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3932, file: !64, line: 673, baseType: !7, size: 32)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !245, file: !64, line: 675, baseType: !448, size: 32, offset: 736)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !245, file: !64, line: 676, baseType: !453, size: 64, offset: 768)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !245, file: !64, line: 677, baseType: !3836, size: 128, offset: 832)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !245, file: !64, line: 678, baseType: !3836, size: 128, offset: 960)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !245, file: !64, line: 679, baseType: !3836, size: 128, offset: 1088)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !245, file: !64, line: 680, baseType: !346, size: 32, offset: 1216)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !245, file: !64, line: 681, baseType: !249, size: 16, offset: 1248)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !245, file: !64, line: 682, baseType: !374, size: 8, offset: 1264)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !245, file: !64, line: 683, baseType: !374, size: 8, offset: 1272)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !245, file: !64, line: 684, baseType: !2362, size: 64, offset: 1280)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !245, file: !64, line: 691, baseType: !221, size: 64, offset: 1344)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !245, file: !64, line: 692, baseType: !782, size: 320, offset: 1408)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !245, file: !64, line: 694, baseType: !221, size: 64, offset: 1728)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !245, file: !64, line: 695, baseType: !221, size: 64, offset: 1792)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !245, file: !64, line: 697, baseType: !701, size: 128, offset: 1856)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !245, file: !64, line: 698, baseType: !196, size: 128, offset: 1984)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !245, file: !64, line: 707, baseType: !196, size: 128, offset: 2112)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !245, file: !64, line: 708, baseType: !196, size: 128, offset: 2240)
!3955 = !DIDerivedType(tag: DW_TAG_member, scope: !245, file: !64, line: 709, baseType: !3956, size: 128, offset: 2368)
!3956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !245, file: !64, line: 709, size: 128, elements: !3957)
!3957 = !{!3958, !3959}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3956, file: !64, line: 710, baseType: !697, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3956, file: !64, line: 711, baseType: !624, size: 128, align: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !245, file: !64, line: 713, baseType: !639, size: 64, offset: 2496)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !245, file: !64, line: 714, baseType: !639, size: 64, offset: 2560)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !245, file: !64, line: 715, baseType: !366, size: 32, offset: 2624)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !245, file: !64, line: 716, baseType: !366, size: 32, offset: 2656)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !245, file: !64, line: 717, baseType: !366, size: 32, offset: 2688)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !245, file: !64, line: 719, baseType: !366, size: 32, offset: 2720)
!3966 = !DIDerivedType(tag: DW_TAG_member, scope: !245, file: !64, line: 721, baseType: !3967, size: 64, offset: 2752)
!3967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !245, file: !64, line: 721, size: 64, elements: !3968)
!3968 = !{!3969, !3970}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3967, file: !64, line: 722, baseType: !960, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3967, file: !64, line: 723, baseType: !2116, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !245, file: !64, line: 725, baseType: !3972, size: 64, offset: 2816)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !64, line: 725, flags: DIFlagFwdDecl)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !245, file: !64, line: 726, baseType: !241, size: 1536, align: 64, offset: 2880)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !245, file: !64, line: 727, baseType: !196, size: 128, offset: 4416)
!3976 = !DIDerivedType(tag: DW_TAG_member, scope: !245, file: !64, line: 728, baseType: !3977, size: 64, offset: 4544)
!3977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !245, file: !64, line: 728, size: 64, elements: !3978)
!3978 = !{!3979, !3980, !3983, !3984}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3977, file: !64, line: 729, baseType: !1486, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3977, file: !64, line: 730, baseType: !3981, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !64, line: 730, flags: DIFlagFwdDecl)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3977, file: !64, line: 731, baseType: !432, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3977, file: !64, line: 732, baseType: !7, size: 32)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !245, file: !64, line: 735, baseType: !318, size: 32, offset: 4608)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !245, file: !64, line: 738, baseType: !318, size: 32, offset: 4640)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !245, file: !64, line: 739, baseType: !3662, size: 64, offset: 4672)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !245, file: !64, line: 750, baseType: !190, size: 64, offset: 4736)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !241, file: !64, line: 474, baseType: !3920, size: 128, offset: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !241, file: !64, line: 475, baseType: !782, size: 320, offset: 192)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !241, file: !64, line: 476, baseType: !1371, size: 32, offset: 512)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !241, file: !64, line: 477, baseType: !366, size: 32, offset: 544)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !241, file: !64, line: 482, baseType: !2636, size: 128, offset: 576)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !241, file: !64, line: 483, baseType: !221, size: 64, offset: 704)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !241, file: !64, line: 484, baseType: !221, size: 64, offset: 768)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !241, file: !64, line: 485, baseType: !3997, size: 64, offset: 832)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3999)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !64, line: 404, size: 1280, elements: !4000)
!4000 = !{!4001, !4005, !4009, !4013, !4017, !4033, !4037, !4041, !4046, !4050, !4054, !4058, !4059, !4063, !4067, !4071, !4076, !4080, !4087, !4088}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3999, file: !64, line: 405, baseType: !4002, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!126, !217, !2128}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3999, file: !64, line: 406, baseType: !4006, size: 64, offset: 64)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!126, !611, !1003}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3999, file: !64, line: 409, baseType: !4010, size: 64, offset: 128)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!126, !240, !2128}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3999, file: !64, line: 412, baseType: !4014, size: 64, offset: 192)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!841, !240, !1003}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3999, file: !64, line: 414, baseType: !4018, size: 64, offset: 256)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{null, !4021}
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1000, line: 1276, size: 448, elements: !4023)
!4023 = !{!4024, !4025, !4026, !4028, !4029, !4030, !4031, !4032}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4022, file: !1000, line: 1277, baseType: !611, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4022, file: !1000, line: 1278, baseType: !240, size: 64, offset: 64)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !4022, file: !1000, line: 1279, baseType: !4027, size: 64, offset: 128)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !4022, file: !1000, line: 1281, baseType: !221, size: 64, offset: 192)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !4022, file: !1000, line: 1282, baseType: !7, size: 32, offset: 256)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !4022, file: !1000, line: 1283, baseType: !7, size: 32, offset: 288)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !4022, file: !1000, line: 1284, baseType: !841, size: 8, offset: 320)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !4022, file: !1000, line: 1285, baseType: !221, size: 64, offset: 384)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3999, file: !64, line: 416, baseType: !4034, size: 64, offset: 320)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!126, !611, !240, !453, !7, !216, !1502}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3999, file: !64, line: 419, baseType: !4038, size: 64, offset: 384)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!126, !611, !240, !453, !7, !7, !217, !190}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3999, file: !64, line: 424, baseType: !4042, size: 64, offset: 448)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!4045, !240, !4045}
!4045 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !197, line: 131, baseType: !322)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3999, file: !64, line: 425, baseType: !4047, size: 64, offset: 512)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{null, !1003, !579, !579}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3999, file: !64, line: 426, baseType: !4051, size: 64, offset: 576)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!841, !1003, !1371}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3999, file: !64, line: 427, baseType: !4055, size: 64, offset: 640)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{null, !1003}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3999, file: !64, line: 428, baseType: !979, size: 64, offset: 704)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3999, file: !64, line: 433, baseType: !4060, size: 64, offset: 768)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!126, !240, !1003, !1003, !50}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3999, file: !64, line: 435, baseType: !4064, size: 64, offset: 832)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!126, !1003}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3999, file: !64, line: 436, baseType: !4068, size: 64, offset: 896)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!841, !1003, !579, !579}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3999, file: !64, line: 438, baseType: !4072, size: 64, offset: 960)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{null, !1003, !4075, !4075}
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3999, file: !64, line: 439, baseType: !4077, size: 64, offset: 1024)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!126, !240, !217}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3999, file: !64, line: 442, baseType: !4081, size: 64, offset: 1088)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!126, !4084, !611, !4086}
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !64, line: 66, flags: DIFlagFwdDecl)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3999, file: !64, line: 444, baseType: !1494, size: 64, offset: 1152)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3999, file: !64, line: 445, baseType: !4089, size: 64, offset: 1216)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!126, !982, !1087}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !241, file: !64, line: 486, baseType: !221, size: 64, offset: 896)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !241, file: !64, line: 487, baseType: !782, size: 320, offset: 960)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !241, file: !64, line: 488, baseType: !1575, size: 32, offset: 1280)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !241, file: !64, line: 489, baseType: !346, size: 32, offset: 1312)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !241, file: !64, line: 490, baseType: !196, size: 128, offset: 1344)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !241, file: !64, line: 491, baseType: !190, size: 64, offset: 1472)
!4098 = !DIDerivedType(tag: DW_TAG_member, scope: !226, file: !35, line: 107, baseType: !4099, size: 64, offset: 192)
!4099 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !226, file: !35, line: 107, size: 64, elements: !4100)
!4100 = !{!4101, !4102}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4099, file: !35, line: 108, baseType: !221, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !4099, file: !35, line: 109, baseType: !221, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !226, file: !35, line: 117, baseType: !221, size: 64, offset: 256)
!4104 = !DIDerivedType(tag: DW_TAG_member, scope: !223, file: !35, line: 119, baseType: !4105, size: 320)
!4105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !223, file: !35, line: 119, size: 320, elements: !4106)
!4106 = !{!4107, !4108, !4111, !4112, !4113}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !4105, file: !35, line: 124, baseType: !221, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !4105, file: !35, line: 125, baseType: !4109, size: 64, offset: 64)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !35, line: 125, flags: DIFlagFwdDecl)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !4105, file: !35, line: 126, baseType: !221, size: 64, offset: 128)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !4105, file: !35, line: 127, baseType: !221, size: 64, offset: 192)
!4113 = !DIDerivedType(tag: DW_TAG_member, scope: !4105, file: !35, line: 128, baseType: !4114, size: 64, offset: 256)
!4114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4105, file: !35, line: 128, size: 64, elements: !4115)
!4115 = !{!4116, !4117}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !4114, file: !35, line: 133, baseType: !221, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !4114, file: !35, line: 138, baseType: !637, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, scope: !223, file: !35, line: 141, baseType: !4119, size: 64)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !223, file: !35, line: 141, size: 64, elements: !4120)
!4120 = !{!4121}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !4119, file: !35, line: 142, baseType: !221, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, scope: !223, file: !35, line: 144, baseType: !4123, size: 128)
!4123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !223, file: !35, line: 144, size: 128, elements: !4124)
!4124 = !{!4125, !4196}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !4123, file: !35, line: 146, baseType: !4126, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !27, line: 126, size: 1216, elements: !4128)
!4128 = !{!4129, !4139, !4160, !4161, !4162, !4163, !4164, !4178, !4179, !4180}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !4127, file: !27, line: 127, baseType: !4130, size: 384)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !27, line: 21, size: 384, elements: !4131)
!4131 = !{!4132, !4133, !4135, !4136, !4137, !4138}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !4130, file: !27, line: 22, baseType: !221, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !4130, file: !27, line: 23, baseType: !4134, size: 64, offset: 64)
!4134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !4130, file: !27, line: 24, baseType: !4134, size: 64, offset: 128)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4130, file: !27, line: 25, baseType: !221, size: 64, offset: 192)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !4130, file: !27, line: 26, baseType: !221, size: 64, offset: 256)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4130, file: !27, line: 27, baseType: !221, size: 64, offset: 320)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4127, file: !27, line: 128, baseType: !4140, size: 128, offset: 384)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !4141, line: 105, size: 128, elements: !4142)
!4141 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!4142 = !{!4143, !4144}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !4140, file: !4141, line: 110, baseType: !221, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4140, file: !4141, line: 118, baseType: !4145, size: 64, offset: 64)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !4141, line: 95, size: 448, elements: !4147)
!4147 = !{!4148, !4149, !4155, !4156, !4157, !4158, !4159}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4146, file: !4141, line: 96, baseType: !637, size: 64)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4146, file: !4141, line: 97, baseType: !4150, size: 64, offset: 64)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !4141, line: 60, baseType: !4152)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{null, !4154}
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !4146, file: !4141, line: 98, baseType: !4150, size: 64, offset: 128)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !4146, file: !4141, line: 99, baseType: !841, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !4146, file: !4141, line: 100, baseType: !841, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4146, file: !4141, line: 101, baseType: !624, size: 128, align: 64, offset: 256)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4146, file: !4141, line: 102, baseType: !4154, size: 64, offset: 384)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4127, file: !27, line: 129, baseType: !1740, size: 256, offset: 512)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4127, file: !27, line: 130, baseType: !26, size: 32, offset: 768)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4127, file: !27, line: 131, baseType: !7, size: 32, offset: 800)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !4127, file: !27, line: 132, baseType: !221, size: 64, offset: 832)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4127, file: !27, line: 133, baseType: !4165, size: 64, offset: 896)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4167)
!4167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !27, line: 77, size: 192, elements: !4168)
!4168 = !{!4169, !4173, !4174}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !4167, file: !27, line: 83, baseType: !4170, size: 64)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{null, !217}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !4167, file: !27, line: 89, baseType: !1359, size: 64, offset: 64)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !4167, file: !27, line: 100, baseType: !4175, size: 64, offset: 128)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!126, !4126, !221, !221, !126}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4127, file: !27, line: 134, baseType: !190, size: 64, offset: 960)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !4127, file: !27, line: 135, baseType: !126, size: 32, offset: 1024)
!4180 = !DIDerivedType(tag: DW_TAG_member, scope: !4127, file: !27, line: 136, baseType: !4181, size: 128, offset: 1088)
!4181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4127, file: !27, line: 136, size: 128, elements: !4182)
!4182 = !{!4183, !4189}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4181, file: !27, line: 137, baseType: !4184, size: 128)
!4184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !4185, line: 6, size: 128, elements: !4186)
!4185 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!4186 = !{!4187, !4188}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4184, file: !4185, line: 7, baseType: !322, size: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4184, file: !4185, line: 8, baseType: !322, size: 64, offset: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, scope: !4181, file: !27, line: 138, baseType: !4190)
!4190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4181, file: !27, line: 138, elements: !4191)
!4191 = !{!4192, !4194}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !4190, file: !27, line: 138, baseType: !4193)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4190, file: !27, line: 138, elements: !1160)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4190, file: !27, line: 138, baseType: !4195)
!4195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4184, elements: !725)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !4123, file: !35, line: 147, baseType: !190, size: 64, offset: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !223, file: !35, line: 161, baseType: !624, size: 128, align: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, scope: !218, file: !35, line: 164, baseType: !4199, size: 32, offset: 384)
!4199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !218, file: !35, line: 164, size: 32, elements: !4200)
!4200 = !{!4201, !4202}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4199, file: !35, line: 169, baseType: !366, size: 32)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !4199, file: !35, line: 177, baseType: !7, size: 32)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !218, file: !35, line: 181, baseType: !366, size: 32, offset: 416)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "page_flags", scope: !212, file: !213, line: 99, baseType: !806, size: 32, offset: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "num_pages", scope: !212, file: !213, line: 101, baseType: !806, size: 32, offset: 96)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !212, file: !213, line: 103, baseType: !4207, size: 64, offset: 128)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !94, line: 153, flags: DIFlagFwdDecl)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !212, file: !213, line: 105, baseType: !4210, size: 64, offset: 192)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !197, line: 149, baseType: !322)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "swap_storage", scope: !212, file: !213, line: 107, baseType: !611, size: 64, offset: 256)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !212, file: !213, line: 112, baseType: !87, size: 32, offset: 320)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_buffer_object", file: !99, line: 98, size: 3712, elements: !4216)
!4216 = !{!4217, !4408, !4409, !4410, !4411, !4415, !4416, !4434, !4435, !4436, !4447, !4448, !4449, !4450}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4215, file: !99, line: 99, baseType: !4218, size: 2816)
!4218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object", file: !94, line: 264, size: 2816, elements: !4219)
!4219 = !{!4220, !4221, !4222, !4225, !4226, !4266, !4267, !4268, !4271, !4274, !4296, !4297, !4301, !4399, !4400}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4218, file: !94, line: 274, baseType: !1724, size: 32)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "handle_count", scope: !4218, file: !94, line: 287, baseType: !7, size: 32, offset: 32)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4218, file: !94, line: 292, baseType: !4223, size: 64, offset: 64)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !94, line: 292, flags: DIFlagFwdDecl)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "filp", scope: !4218, file: !94, line: 302, baseType: !611, size: 64, offset: 128)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "vma_node", scope: !4218, file: !94, line: 314, baseType: !4227, size: 1536, offset: 192)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_node", file: !4228, line: 52, size: 1536, elements: !4229)
!4228 = !DIFile(filename: "./include/drm/drm_vma_manager.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5483318cd9ffeb7eed8e930be54b2ae2")
!4229 = !{!4230, !4231, !4264, !4265}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !4227, file: !4228, line: 53, baseType: !664, size: 64)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "vm_node", scope: !4227, file: !4228, line: 54, baseType: !4232, size: 1344, offset: 64)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm_node", file: !4233, line: 157, size: 1344, elements: !4234)
!4233 = !DIFile(filename: "./include/drm/drm_mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84c90dff9a569f9267103742808582e0")
!4234 = !{!4235, !4236, !4237, !4238, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !4232, file: !4233, line: 159, baseType: !221, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4232, file: !4233, line: 161, baseType: !322, size: 64, offset: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4232, file: !4233, line: 163, baseType: !322, size: 64, offset: 128)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !4232, file: !4233, line: 165, baseType: !4239, size: 64, offset: 192)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm", file: !4233, line: 190, size: 1920, elements: !4241)
!4241 = !{!4242, !4249, !4250, !4251, !4252, !4253, !4254}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "color_adjust", scope: !4240, file: !4233, line: 200, baseType: !4243, size: 64)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{null, !4246, !221, !4248, !4248}
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4232)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !4240, file: !4233, line: 206, baseType: !196, size: 128, offset: 64)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "head_node", scope: !4240, file: !4233, line: 209, baseType: !4232, size: 1344, offset: 192)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "interval_tree", scope: !4240, file: !4233, line: 211, baseType: !2636, size: 128, offset: 1536)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "holes_size", scope: !4240, file: !4233, line: 212, baseType: !2636, size: 128, offset: 1664)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "holes_addr", scope: !4240, file: !4233, line: 213, baseType: !1648, size: 64, offset: 1792)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "scan_active", scope: !4240, file: !4233, line: 215, baseType: !221, size: 64, offset: 1856)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !4232, file: !4233, line: 166, baseType: !196, size: 128, offset: 256)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !4232, file: !4233, line: 167, baseType: !196, size: 128, offset: 384)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4232, file: !4233, line: 168, baseType: !774, size: 192, align: 64, offset: 512)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_size", scope: !4232, file: !4233, line: 169, baseType: !774, size: 192, align: 64, offset: 704)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_addr", scope: !4232, file: !4233, line: 170, baseType: !774, size: 192, align: 64, offset: 896)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "__subtree_last", scope: !4232, file: !4233, line: 171, baseType: !322, size: 64, offset: 1088)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "hole_size", scope: !4232, file: !4233, line: 172, baseType: !322, size: 64, offset: 1152)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_max_hole", scope: !4232, file: !4233, line: 173, baseType: !322, size: 64, offset: 1216)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4232, file: !4233, line: 174, baseType: !221, size: 64, offset: 1280)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "vm_files", scope: !4227, file: !4228, line: 55, baseType: !1648, size: 64, offset: 1408)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "driver_private", scope: !4227, file: !4228, line: 56, baseType: !190, size: 64, offset: 1472)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4218, file: !94, line: 322, baseType: !579, size: 64, offset: 1728)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4218, file: !94, line: 331, baseType: !126, size: 32, offset: 1792)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "dma_buf", scope: !4218, file: !94, line: 344, baseType: !4269, size: 64, offset: 1856)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf", file: !94, line: 121, flags: DIFlagFwdDecl)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "import_attach", scope: !4218, file: !94, line: 364, baseType: !4272, size: 64, offset: 1920)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_attachment", file: !94, line: 364, flags: DIFlagFwdDecl)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !4218, file: !94, line: 373, baseType: !4275, size: 64, offset: 1984)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv", file: !4277, line: 155, size: 384, elements: !4278)
!4277 = !DIFile(filename: "./include/linux/dma-resv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "33eb7b47491fa42a2c4bcb5c661d5780")
!4278 = !{!4279, !4293}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4276, file: !4277, line: 166, baseType: !4280, size: 320)
!4280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !4281, line: 47, size: 320, elements: !4282)
!4281 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!4282 = !{!4283, !4284}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4280, file: !4281, line: 48, baseType: !646, size: 256)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4280, file: !4281, line: 49, baseType: !4285, size: 64, offset: 256)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !4281, line: 55, size: 192, elements: !4287)
!4287 = !{!4288, !4289, !4290, !4291, !4292}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4286, file: !4281, line: 56, baseType: !2466, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !4286, file: !4281, line: 57, baseType: !221, size: 64, offset: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !4286, file: !4281, line: 58, baseType: !7, size: 32, offset: 128)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !4286, file: !4281, line: 59, baseType: !249, size: 16, offset: 160)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !4286, file: !4281, line: 60, baseType: !249, size: 16, offset: 176)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "fences", scope: !4276, file: !4277, line: 178, baseType: !4294, size: 64, offset: 320)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv_list", file: !4277, line: 50, flags: DIFlagFwdDecl)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_resv", scope: !4218, file: !94, line: 382, baseType: !4276, size: 384, offset: 2048)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "gpuva", scope: !4218, file: !94, line: 398, baseType: !4298, size: 128, offset: 2432)
!4298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4218, file: !94, line: 392, size: 128, elements: !4299)
!4299 = !{!4300}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4298, file: !94, line: 393, baseType: !196, size: 128)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4218, file: !94, line: 409, baseType: !4302, size: 64, offset: 2560)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4304)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object_funcs", file: !94, line: 69, size: 896, elements: !4305)
!4305 = !{!4306, !4311, !4317, !4321, !4358, !4362, !4366, !4367, !4371, !4385, !4389, !4393, !4394, !4398}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4304, file: !94, line: 77, baseType: !4307, size: 64)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{null, !4310}
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4304, file: !94, line: 86, baseType: !4312, size: 64, offset: 64)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!126, !4310, !4315}
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !4228, line: 44, flags: DIFlagFwdDecl)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4304, file: !94, line: 95, baseType: !4318, size: 64, offset: 128)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{null, !4310, !4315}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "print_info", scope: !4304, file: !94, line: 110, baseType: !4322, size: 64, offset: 192)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{null, !4325, !7, !4356}
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !4327, line: 76, size: 256, elements: !4328)
!4327 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!4328 = !{!4329, !4350, !4354, !4355}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "printfn", scope: !4326, file: !4327, line: 78, baseType: !4330, size: 64)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{null, !4325, !4333}
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !4335, line: 79, size: 128, elements: !4336)
!4335 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4336 = !{!4337, !4338}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !4334, file: !4335, line: 80, baseType: !406, size: 64)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !4334, file: !4335, line: 81, baseType: !4339, size: 64, offset: 64)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4341, line: 5, baseType: !4342)
!4341 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!4342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !4343)
!4343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4344, size: 192, elements: !2702)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4345)
!4345 = !{!4346, !4347, !4348, !4349}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4344, file: !3, line: 126, baseType: !7, size: 32)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4344, file: !3, line: 126, baseType: !7, size: 32, offset: 32)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4344, file: !3, line: 126, baseType: !190, size: 64, offset: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4344, file: !3, line: 126, baseType: !190, size: 64, offset: 128)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "puts", scope: !4326, file: !4327, line: 79, baseType: !4351, size: 64, offset: 64)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{null, !4325, !406}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4326, file: !4327, line: 80, baseType: !190, size: 64, offset: 128)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !4326, file: !4327, line: 81, baseType: !406, size: 64, offset: 192)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4218)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "export", scope: !4304, file: !94, line: 121, baseType: !4359, size: 64, offset: 256)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!4269, !4310, !126}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4304, file: !94, line: 130, baseType: !4363, size: 64, offset: 320)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!126, !4310}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "unpin", scope: !4304, file: !94, line: 139, baseType: !4307, size: 64, offset: 384)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "get_sg_table", scope: !4304, file: !94, line: 153, baseType: !4368, size: 64, offset: 448)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{!4207, !4310}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "vmap", scope: !4304, file: !94, line: 163, baseType: !4372, size: 64, offset: 512)
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{!126, !4310, !4375}
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iosys_map", file: !4377, line: 109, size: 128, elements: !4378)
!4377 = !DIFile(filename: "./include/linux/iosys-map.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c97d7374529d1c22dbeacc3bfd30605")
!4378 = !{!4379, !4384}
!4379 = !DIDerivedType(tag: DW_TAG_member, scope: !4376, file: !4377, line: 110, baseType: !4380, size: 64)
!4380 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4376, file: !4377, line: 110, size: 64, elements: !4381)
!4381 = !{!4382, !4383}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr_iomem", scope: !4380, file: !4377, line: 111, baseType: !190, size: 64)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4380, file: !4377, line: 112, baseType: !190, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "is_iomem", scope: !4376, file: !4377, line: 114, baseType: !841, size: 8, offset: 64)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "vunmap", scope: !4304, file: !94, line: 173, baseType: !4386, size: 64, offset: 576)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DISubroutineType(types: !4388)
!4388 = !{null, !4310, !4375}
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4304, file: !94, line: 186, baseType: !4390, size: 64, offset: 640)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = !DISubroutineType(types: !4392)
!4392 = !{!126, !4310, !1126}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "evict", scope: !4304, file: !94, line: 196, baseType: !4363, size: 64, offset: 704)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4304, file: !94, line: 209, baseType: !4395, size: 64, offset: 768)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!93, !4310}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4304, file: !94, line: 218, baseType: !1336, size: 64, offset: 832)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "lru_node", scope: !4218, file: !94, line: 416, baseType: !196, size: 128, offset: 2624)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4218, file: !94, line: 423, baseType: !4401, size: 64, offset: 2752)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_lru", file: !94, line: 230, size: 256, elements: !4403)
!4403 = !{!4404, !4406, !4407}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4402, file: !94, line: 238, baseType: !4405, size: 64)
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4402, file: !94, line: 246, baseType: !569, size: 64, offset: 64)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4402, file: !94, line: 253, baseType: !196, size: 128, offset: 128)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !4215, file: !99, line: 104, baseType: !191, size: 64, offset: 2816)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4215, file: !99, line: 105, baseType: !98, size: 32, offset: 2880)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "page_alignment", scope: !4215, file: !99, line: 106, baseType: !806, size: 32, offset: 2912)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4215, file: !99, line: 107, baseType: !4412, size: 64, offset: 2944)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{null, !4214}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4215, file: !99, line: 112, baseType: !1724, size: 32, offset: 3008)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4215, file: !99, line: 117, baseType: !4417, size: 64, offset: 3072)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_resource", file: !4419, line: 209, size: 576, elements: !4420)
!4419 = !DIFile(filename: "./include/drm/ttm/ttm_resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9381c1bbd30ebfc9159e3e67f7545347")
!4420 = !{!4421, !4422, !4423, !4424, !4425, !4432, !4433}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4418, file: !4419, line: 210, baseType: !221, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4418, file: !4419, line: 211, baseType: !579, size: 64, offset: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "mem_type", scope: !4418, file: !4419, line: 212, baseType: !806, size: 32, offset: 128)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !4418, file: !4419, line: 213, baseType: !806, size: 32, offset: 160)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4418, file: !4419, line: 214, baseType: !4426, size: 192, offset: 192)
!4426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_bus_placement", file: !4419, line: 189, size: 192, elements: !4427)
!4427 = !{!4428, !4429, !4430, !4431}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4426, file: !4419, line: 190, baseType: !190, size: 64)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4426, file: !4419, line: 191, baseType: !3415, size: 64, offset: 64)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "is_iomem", scope: !4426, file: !4419, line: 192, baseType: !841, size: 8, offset: 128)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !4426, file: !4419, line: 193, baseType: !87, size: 32, offset: 160)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "bo", scope: !4418, file: !4419, line: 215, baseType: !4214, size: 64, offset: 384)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4418, file: !4419, line: 220, baseType: !196, size: 128, offset: 448)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "ttm", scope: !4215, file: !99, line: 118, baseType: !211, size: 64, offset: 3136)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "deleted", scope: !4215, file: !99, line: 119, baseType: !841, size: 8, offset: 3200)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_move", scope: !4215, file: !99, line: 120, baseType: !4437, size: 64, offset: 3264)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_lru_bulk_move", file: !4419, line: 255, size: 4096, elements: !4439)
!4439 = !{!4440}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4438, file: !4419, line: 256, baseType: !4441, size: 4096)
!4441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4442, size: 4096, elements: !4446)
!4442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_lru_bulk_move_pos", file: !4419, line: 242, size: 128, elements: !4443)
!4443 = !{!4444, !4445}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4442, file: !4419, line: 243, baseType: !4417, size: 64)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !4442, file: !4419, line: 244, baseType: !4417, size: 64, offset: 64)
!4446 = !{!2621, !707}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4215, file: !99, line: 121, baseType: !7, size: 32, offset: 3328)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !4215, file: !99, line: 122, baseType: !7, size: 32, offset: 3360)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_delete", scope: !4215, file: !99, line: 128, baseType: !1294, size: 256, offset: 3392)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !4215, file: !99, line: 135, baseType: !4207, size: 64, offset: 3648)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "ttm_tt_populate", scope: !205, file: !193, line: 85, baseType: !4452, size: 64, offset: 64)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!126, !191, !211, !4455}
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_operation_ctx", file: !99, line: 178, size: 192, elements: !4457)
!4457 = !{!4458, !4459, !4460, !4461, !4462, !4463, !4464}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !4456, file: !99, line: 179, baseType: !841, size: 8)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "no_wait_gpu", scope: !4456, file: !99, line: 180, baseType: !841, size: 8, offset: 8)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_retry_mayfail", scope: !4456, file: !99, line: 181, baseType: !841, size: 8, offset: 16)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "allow_res_evict", scope: !4456, file: !99, line: 182, baseType: !841, size: 8, offset: 24)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "force_alloc", scope: !4456, file: !99, line: 183, baseType: !841, size: 8, offset: 32)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !4456, file: !99, line: 184, baseType: !4275, size: 64, offset: 64)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_moved", scope: !4456, file: !99, line: 185, baseType: !4465, size: 64, offset: 128)
!4465 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !197, line: 113, baseType: !322)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "ttm_tt_unpopulate", scope: !205, file: !193, line: 96, baseType: !4467, size: 64, offset: 128)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = !DISubroutineType(types: !4469)
!4469 = !{null, !191, !211}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "ttm_tt_destroy", scope: !205, file: !193, line: 108, baseType: !4467, size: 64, offset: 192)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "eviction_valuable", scope: !205, file: !193, line: 119, baseType: !4472, size: 64, offset: 256)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{!841, !4214, !4475}
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4477)
!4477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_place", file: !4478, line: 77, size: 128, elements: !4479)
!4478 = !DIFile(filename: "./include/drm/ttm/ttm_placement.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f863dfb010ab9adca021a04ffe4a884")
!4479 = !{!4480, !4481, !4482, !4483}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "fpfn", scope: !4477, file: !4478, line: 78, baseType: !7, size: 32)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "lpfn", scope: !4477, file: !4478, line: 79, baseType: !7, size: 32, offset: 32)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "mem_type", scope: !4477, file: !4478, line: 80, baseType: !806, size: 32, offset: 64)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4477, file: !4478, line: 81, baseType: !806, size: 32, offset: 96)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "evict_flags", scope: !205, file: !193, line: 133, baseType: !4485, size: 64, offset: 320)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{null, !4214, !4488}
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_placement", file: !4478, line: 94, size: 256, elements: !4490)
!4490 = !{!4491, !4492, !4493, !4494}
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "num_placement", scope: !4489, file: !4478, line: 95, baseType: !7, size: 32)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !4489, file: !4478, line: 96, baseType: !4475, size: 64, offset: 64)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "num_busy_placement", scope: !4489, file: !4478, line: 97, baseType: !7, size: 32, offset: 128)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "busy_placement", scope: !4489, file: !4478, line: 98, baseType: !4475, size: 64, offset: 192)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "move", scope: !205, file: !193, line: 149, baseType: !4496, size: 64, offset: 384)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!126, !4214, !841, !4455, !4417, !4499}
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "delete_mem_notify", scope: !205, file: !193, line: 157, baseType: !4412, size: 64, offset: 448)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "swap_notify", scope: !205, file: !193, line: 162, baseType: !4412, size: 64, offset: 512)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "io_mem_reserve", scope: !205, file: !193, line: 170, baseType: !4503, size: 64, offset: 576)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = !DISubroutineType(types: !4505)
!4505 = !{!126, !191, !4417}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "io_mem_free", scope: !205, file: !193, line: 172, baseType: !4507, size: 64, offset: 640)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DISubroutineType(types: !4509)
!4509 = !{null, !191, !4417}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "io_mem_pfn", scope: !205, file: !193, line: 181, baseType: !4511, size: 64, offset: 704)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{!221, !4214, !221}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "access_memory", scope: !205, file: !193, line: 198, baseType: !4515, size: 64, offset: 768)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{!126, !4214, !221, !190, !126, !126}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "release_notify", scope: !205, file: !193, line: 209, baseType: !4412, size: 64, offset: 832)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "sysman", scope: !192, file: !193, line: 232, baseType: !4520, size: 960, offset: 192)
!4520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_resource_manager", file: !4419, line: 151, size: 960, elements: !4521)
!4521 = !{!4522, !4523, !4524, !4525, !4526, !4550, !4551, !4601, !4603}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "use_type", scope: !4520, file: !4419, line: 155, baseType: !841, size: 8)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "use_tt", scope: !4520, file: !4419, line: 156, baseType: !841, size: 8, offset: 8)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !4520, file: !4419, line: 157, baseType: !191, size: 64, offset: 64)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4520, file: !4419, line: 158, baseType: !4465, size: 64, offset: 128)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4520, file: !4419, line: 159, baseType: !4527, size: 64, offset: 192)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4529)
!4529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_resource_manager_func", file: !4419, line: 52, size: 320, elements: !4530)
!4530 = !{!4531, !4537, !4541, !4545, !4546}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4529, file: !4419, line: 74, baseType: !4532, size: 64)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{!126, !4535, !4214, !4475, !4536}
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4529, file: !4419, line: 88, baseType: !4538, size: 64, offset: 64)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{null, !4535, !4417}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "intersects", scope: !4529, file: !4419, line: 102, baseType: !4542, size: 64, offset: 128)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!841, !4535, !4417, !4475, !579}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4529, file: !4419, line: 118, baseType: !4542, size: 64, offset: 192)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !4529, file: !4419, line: 133, baseType: !4547, size: 64, offset: 256)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{null, !4535, !4325}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "move_lock", scope: !4520, file: !4419, line: 160, baseType: !346, size: 32, offset: 256)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "move", scope: !4520, file: !4419, line: 165, baseType: !4552, size: 64, offset: 320)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !4554, line: 65, size: 512, elements: !4555)
!4554 = !DIFile(filename: "./include/linux/dma-fence.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "250a5e28e66b96be11f66b71d72fa176")
!4555 = !{!4556, !4557, !4590, !4596, !4597, !4598, !4599, !4600}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4553, file: !4554, line: 66, baseType: !1405, size: 64)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4553, file: !4554, line: 67, baseType: !4558, size: 64, offset: 64)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4560)
!4560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !4554, line: 125, size: 640, elements: !4561)
!4561 = !{!4562, !4563, !4567, !4568, !4572, !4573, !4577, !4581, !4585, !4586}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !4560, file: !4554, line: 132, baseType: !841, size: 8)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !4560, file: !4554, line: 143, baseType: !4564, size: 64, offset: 64)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!406, !4552}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !4560, file: !4554, line: 155, baseType: !4564, size: 64, offset: 128)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !4560, file: !4554, line: 192, baseType: !4569, size: 64, offset: 192)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!841, !4552}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !4560, file: !4554, line: 209, baseType: !4569, size: 64, offset: 256)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4560, file: !4554, line: 227, baseType: !4574, size: 64, offset: 320)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!569, !4552, !841, !569}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4560, file: !4554, line: 238, baseType: !4578, size: 64, offset: 384)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{null, !4552}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !4560, file: !4554, line: 248, baseType: !4582, size: 64, offset: 448)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{null, !4552, !432, !126}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !4560, file: !4554, line: 258, baseType: !4582, size: 64, offset: 512)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "set_deadline", scope: !4560, file: !4554, line: 279, baseType: !4587, size: 64, offset: 576)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{null, !4552, !2585}
!4590 = !DIDerivedType(tag: DW_TAG_member, scope: !4553, file: !4554, line: 84, baseType: !4591, size: 128, offset: 128)
!4591 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4553, file: !4554, line: 84, size: 128, elements: !4592)
!4592 = !{!4593, !4594, !4595}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !4591, file: !4554, line: 85, baseType: !196, size: 128)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4591, file: !4554, line: 87, baseType: !2585, size: 64)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4591, file: !4554, line: 89, baseType: !624, size: 128, align: 64)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4553, file: !4554, line: 91, baseType: !322, size: 64, offset: 256)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !4553, file: !4554, line: 92, baseType: !322, size: 64, offset: 320)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4553, file: !4554, line: 93, baseType: !221, size: 64, offset: 384)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4553, file: !4554, line: 94, baseType: !1724, size: 32, offset: 448)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4553, file: !4554, line: 95, baseType: !126, size: 32, offset: 480)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4520, file: !4419, line: 170, baseType: !4602, size: 512, offset: 384)
!4602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 512, elements: !706)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !4520, file: !4419, line: 176, baseType: !4465, size: 64, offset: 896)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "man_drv", scope: !192, file: !193, line: 237, baseType: !4605, size: 512, offset: 1152)
!4605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4535, size: 512, elements: !2620)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "vma_manager", scope: !192, file: !193, line: 242, baseType: !4607, size: 64, offset: 1664)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !4228, line: 59, size: 1984, elements: !4609)
!4609 = !{!4610, !4611}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !4608, file: !4228, line: 60, baseType: !664, size: 64)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "vm_addr_space_mm", scope: !4608, file: !4228, line: 61, baseType: !4240, size: 1920, offset: 64)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !192, file: !193, line: 247, baseType: !4613, size: 14912, offset: 1728)
!4613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_pool", file: !4614, line: 69, size: 14912, elements: !4615)
!4614 = !DIFile(filename: "./include/drm/ttm/ttm_pool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6613193a1a6bffece87937e591b2c286")
!4615 = !{!4616, !5066, !5067, !5068, !5069}
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4613, file: !4614, line: 70, baseType: !4617, size: 64)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !111, line: 705, size: 5824, elements: !4619)
!4619 = !{!4620, !4621, !4622, !4625, !4626, !4679, !4749, !4750, !4751, !4752, !4753, !4760, !4852, !4865, !4875, !4879, !4880, !4881, !4882, !4886, !4893, !4894, !4897, !4900, !4904, !5008, !5009, !5010, !5011, !5012, !5013, !5043, !5044, !5045, !5048, !5051, !5060, !5061, !5062, !5063, !5064, !5065}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4618, file: !111, line: 706, baseType: !494, size: 512)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4618, file: !111, line: 707, baseType: !4617, size: 64, offset: 512)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4618, file: !111, line: 709, baseType: !4623, size: 64, offset: 576)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !111, line: 37, flags: DIFlagFwdDecl)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4618, file: !111, line: 711, baseType: !406, size: 64, offset: 640)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4618, file: !111, line: 712, baseType: !4627, size: 64, offset: 704)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4629)
!4629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !111, line: 89, size: 384, elements: !4630)
!4630 = !{!4631, !4632, !4633, !4639, !4644, !4648}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4629, file: !111, line: 90, baseType: !406, size: 64)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4629, file: !111, line: 91, baseType: !583, size: 64, offset: 64)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4629, file: !111, line: 92, baseType: !4634, size: 64, offset: 128)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!126, !4637, !530}
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4618)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4629, file: !111, line: 93, baseType: !4640, size: 64, offset: 192)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DISubroutineType(types: !4642)
!4642 = !{!432, !4637, !4643, !1626, !1627}
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4629, file: !111, line: 95, baseType: !4645, size: 64, offset: 256)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DISubroutineType(types: !4647)
!4647 = !{null, !4617}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4629, file: !111, line: 97, baseType: !4649, size: 64, offset: 320)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4651)
!4651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !118, line: 286, size: 1472, elements: !4652)
!4652 = !{!4653, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4651, file: !118, line: 287, baseType: !4654, size: 64)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!126, !4617}
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4651, file: !118, line: 288, baseType: !4645, size: 64, offset: 64)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4651, file: !118, line: 289, baseType: !4654, size: 64, offset: 128)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4651, file: !118, line: 290, baseType: !4654, size: 64, offset: 192)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4651, file: !118, line: 291, baseType: !4654, size: 64, offset: 256)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4651, file: !118, line: 292, baseType: !4654, size: 64, offset: 320)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4651, file: !118, line: 293, baseType: !4654, size: 64, offset: 384)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4651, file: !118, line: 294, baseType: !4654, size: 64, offset: 448)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4651, file: !118, line: 295, baseType: !4654, size: 64, offset: 512)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4651, file: !118, line: 296, baseType: !4654, size: 64, offset: 576)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4651, file: !118, line: 297, baseType: !4654, size: 64, offset: 640)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4651, file: !118, line: 298, baseType: !4654, size: 64, offset: 704)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4651, file: !118, line: 299, baseType: !4654, size: 64, offset: 768)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4651, file: !118, line: 300, baseType: !4654, size: 64, offset: 832)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4651, file: !118, line: 301, baseType: !4654, size: 64, offset: 896)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4651, file: !118, line: 302, baseType: !4654, size: 64, offset: 960)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4651, file: !118, line: 303, baseType: !4654, size: 64, offset: 1024)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4651, file: !118, line: 304, baseType: !4654, size: 64, offset: 1088)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4651, file: !118, line: 305, baseType: !4654, size: 64, offset: 1152)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4651, file: !118, line: 306, baseType: !4654, size: 64, offset: 1216)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4651, file: !118, line: 307, baseType: !4654, size: 64, offset: 1280)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4651, file: !118, line: 308, baseType: !4654, size: 64, offset: 1344)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4651, file: !118, line: 309, baseType: !4654, size: 64, offset: 1408)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4618, file: !111, line: 714, baseType: !4680, size: 64, offset: 768)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4682)
!4682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4683, line: 80, size: 1344, elements: !4684)
!4683 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4684 = !{!4685, !4686, !4687, !4688, !4689, !4690, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4748}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4682, file: !4683, line: 81, baseType: !406, size: 64)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4682, file: !4683, line: 82, baseType: !406, size: 64, offset: 64)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4682, file: !4683, line: 83, baseType: !583, size: 64, offset: 128)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4682, file: !4683, line: 84, baseType: !583, size: 64, offset: 192)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4682, file: !4683, line: 85, baseType: !583, size: 64, offset: 256)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4682, file: !4683, line: 87, baseType: !4691, size: 64, offset: 320)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{!126, !4617, !4694}
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !105, line: 96, size: 1152, elements: !4696)
!4696 = !{!4697, !4698, !4699, !4700, !4701, !4702, !4703, !4707, !4711, !4712, !4713, !4714, !4715, !4723, !4724, !4725, !4726, !4727, !4728}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4695, file: !105, line: 97, baseType: !406, size: 64)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4695, file: !105, line: 98, baseType: !4680, size: 64, offset: 64)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4695, file: !105, line: 100, baseType: !481, size: 64, offset: 128)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4695, file: !105, line: 101, baseType: !406, size: 64, offset: 192)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4695, file: !105, line: 103, baseType: !841, size: 8, offset: 256)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4695, file: !105, line: 104, baseType: !104, size: 32, offset: 288)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4695, file: !105, line: 106, baseType: !4704, size: 64, offset: 320)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4706)
!4706 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !105, line: 106, flags: DIFlagFwdDecl)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4695, file: !105, line: 107, baseType: !4708, size: 64, offset: 384)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4710)
!4710 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !105, line: 107, flags: DIFlagFwdDecl)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4695, file: !105, line: 109, baseType: !4654, size: 64, offset: 448)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4695, file: !105, line: 110, baseType: !4645, size: 64, offset: 512)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4695, file: !105, line: 111, baseType: !4654, size: 64, offset: 576)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4695, file: !105, line: 112, baseType: !4645, size: 64, offset: 640)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4695, file: !105, line: 113, baseType: !4716, size: 64, offset: 704)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = !DISubroutineType(types: !4718)
!4718 = !{!126, !4617, !4719}
!4719 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !118, line: 60, baseType: !4720)
!4720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !118, line: 58, size: 32, elements: !4721)
!4721 = !{!4722}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4720, file: !118, line: 59, baseType: !126, size: 32)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4695, file: !105, line: 114, baseType: !4654, size: 64, offset: 768)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4695, file: !105, line: 115, baseType: !583, size: 64, offset: 832)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4695, file: !105, line: 116, baseType: !583, size: 64, offset: 896)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4695, file: !105, line: 118, baseType: !4649, size: 64, offset: 960)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4695, file: !105, line: 119, baseType: !4645, size: 64, offset: 1024)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4695, file: !105, line: 121, baseType: !4729, size: 64, offset: 1088)
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !105, line: 121, flags: DIFlagFwdDecl)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4682, file: !4683, line: 88, baseType: !4634, size: 64, offset: 384)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4682, file: !4683, line: 89, baseType: !4654, size: 64, offset: 448)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4682, file: !4683, line: 90, baseType: !4645, size: 64, offset: 512)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4682, file: !4683, line: 91, baseType: !4645, size: 64, offset: 576)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4682, file: !4683, line: 92, baseType: !4645, size: 64, offset: 640)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4682, file: !4683, line: 94, baseType: !4654, size: 64, offset: 704)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4682, file: !4683, line: 95, baseType: !4654, size: 64, offset: 768)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4682, file: !4683, line: 97, baseType: !4716, size: 64, offset: 832)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4682, file: !4683, line: 98, baseType: !4654, size: 64, offset: 896)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4682, file: !4683, line: 100, baseType: !4654, size: 64, offset: 960)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4682, file: !4683, line: 102, baseType: !4654, size: 64, offset: 1024)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4682, file: !4683, line: 103, baseType: !4645, size: 64, offset: 1088)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4682, file: !4683, line: 105, baseType: !4649, size: 64, offset: 1152)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4682, file: !4683, line: 107, baseType: !4745, size: 64, offset: 1216)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4747)
!4747 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4683, line: 107, flags: DIFlagFwdDecl)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4682, file: !4683, line: 109, baseType: !841, size: 8, offset: 1280)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4618, file: !111, line: 715, baseType: !4694, size: 64, offset: 832)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4618, file: !111, line: 717, baseType: !190, size: 64, offset: 896)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4618, file: !111, line: 719, baseType: !190, size: 64, offset: 960)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4618, file: !111, line: 721, baseType: !646, size: 256, offset: 1024)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4618, file: !111, line: 725, baseType: !4754, size: 448, offset: 1280)
!4754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !111, line: 517, size: 448, elements: !4755)
!4755 = !{!4756, !4757, !4758, !4759}
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4754, file: !111, line: 518, baseType: !196, size: 128)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4754, file: !111, line: 519, baseType: !196, size: 128, offset: 128)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4754, file: !111, line: 520, baseType: !196, size: 128, offset: 256)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4754, file: !111, line: 521, baseType: !110, size: 32, offset: 384)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4618, file: !111, line: 726, baseType: !4761, size: 2496, offset: 1728)
!4761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !118, line: 663, size: 2496, elements: !4762)
!4762 = !{!4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4845, !4849}
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4761, file: !118, line: 664, baseType: !4719, size: 32)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4761, file: !118, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4761, file: !118, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4761, file: !118, line: 667, baseType: !841, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4761, file: !118, line: 668, baseType: !841, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4761, file: !118, line: 669, baseType: !841, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4761, file: !118, line: 670, baseType: !841, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4761, file: !118, line: 671, baseType: !841, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4761, file: !118, line: 672, baseType: !841, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4761, file: !118, line: 673, baseType: !841, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4761, file: !118, line: 674, baseType: !841, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4761, file: !118, line: 675, baseType: !316, size: 32, offset: 64)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4761, file: !118, line: 676, baseType: !346, size: 32, offset: 96)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4761, file: !118, line: 678, baseType: !196, size: 128, offset: 128)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4761, file: !118, line: 679, baseType: !1740, size: 256, offset: 256)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4761, file: !118, line: 680, baseType: !4779, size: 64, offset: 512)
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4780, size: 64)
!4780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4781, line: 43, size: 1536, elements: !4782)
!4781 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4782 = !{!4783, !4784, !4785, !4786, !4787, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804}
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4780, file: !4781, line: 44, baseType: !406, size: 64)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4780, file: !4781, line: 45, baseType: !126, size: 32, offset: 64)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4780, file: !4781, line: 46, baseType: !196, size: 128, offset: 128)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4780, file: !4781, line: 47, baseType: !346, size: 32, offset: 256)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4780, file: !4781, line: 48, baseType: !4788, size: 64, offset: 320)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !118, line: 629, flags: DIFlagFwdDecl)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4780, file: !4781, line: 49, baseType: !1986, size: 320, offset: 384)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4780, file: !4781, line: 50, baseType: !221, size: 64, offset: 704)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4780, file: !4781, line: 51, baseType: !2585, size: 64, offset: 768)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4780, file: !4781, line: 52, baseType: !2585, size: 64, offset: 832)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4780, file: !4781, line: 53, baseType: !2585, size: 64, offset: 896)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4780, file: !4781, line: 54, baseType: !2585, size: 64, offset: 960)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4780, file: !4781, line: 55, baseType: !2585, size: 64, offset: 1024)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4780, file: !4781, line: 56, baseType: !221, size: 64, offset: 1088)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4780, file: !4781, line: 57, baseType: !221, size: 64, offset: 1152)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4780, file: !4781, line: 58, baseType: !221, size: 64, offset: 1216)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4780, file: !4781, line: 59, baseType: !221, size: 64, offset: 1280)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4780, file: !4781, line: 60, baseType: !221, size: 64, offset: 1344)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4780, file: !4781, line: 61, baseType: !4617, size: 64, offset: 1408)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4780, file: !4781, line: 62, baseType: !841, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4780, file: !4781, line: 63, baseType: !841, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4761, file: !118, line: 681, baseType: !841, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4761, file: !118, line: 682, baseType: !841, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4761, file: !118, line: 683, baseType: !841, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4761, file: !118, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4761, file: !118, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4761, file: !118, line: 690, baseType: !2577, size: 512, offset: 640)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4761, file: !118, line: 691, baseType: !322, size: 64, offset: 1152)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4761, file: !118, line: 692, baseType: !1294, size: 256, offset: 1216)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4761, file: !118, line: 693, baseType: !710, size: 192, offset: 1472)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4761, file: !118, line: 694, baseType: !4788, size: 64, offset: 1664)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4761, file: !118, line: 695, baseType: !366, size: 32, offset: 1728)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4761, file: !118, line: 696, baseType: !366, size: 32, offset: 1760)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4761, file: !118, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4761, file: !118, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4761, file: !118, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4761, file: !118, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4761, file: !118, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4761, file: !118, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4761, file: !118, line: 703, baseType: !841, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4761, file: !118, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4761, file: !118, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4761, file: !118, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4761, file: !118, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4761, file: !118, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4761, file: !118, line: 709, baseType: !7, size: 32, offset: 1824)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4761, file: !118, line: 710, baseType: !117, size: 32, offset: 1856)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4761, file: !118, line: 711, baseType: !125, size: 32, offset: 1888)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4761, file: !118, line: 712, baseType: !125, size: 32, offset: 1920)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4761, file: !118, line: 713, baseType: !126, size: 32, offset: 1952)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4761, file: !118, line: 714, baseType: !126, size: 32, offset: 1984)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4761, file: !118, line: 715, baseType: !322, size: 64, offset: 2048)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4761, file: !118, line: 716, baseType: !322, size: 64, offset: 2112)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4761, file: !118, line: 717, baseType: !322, size: 64, offset: 2176)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4761, file: !118, line: 718, baseType: !322, size: 64, offset: 2240)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4761, file: !118, line: 720, baseType: !4840, size: 64, offset: 2304)
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4841, size: 64)
!4841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !118, line: 632, size: 64, elements: !4842)
!4842 = !{!4843, !4844}
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4841, file: !118, line: 633, baseType: !346, size: 32)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4841, file: !118, line: 634, baseType: !7, size: 32, offset: 32)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4761, file: !118, line: 721, baseType: !4846, size: 64, offset: 2368)
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 64)
!4847 = !DISubroutineType(types: !4848)
!4848 = !{null, !4617, !767}
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4761, file: !118, line: 722, baseType: !4850, size: 64, offset: 2432)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !118, line: 722, flags: DIFlagFwdDecl)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4618, file: !111, line: 727, baseType: !4853, size: 64, offset: 4224)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !118, line: 742, size: 1792, elements: !4855)
!4855 = !{!4856, !4857, !4858, !4862, !4863, !4864}
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4854, file: !118, line: 743, baseType: !4651, size: 1472)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4854, file: !118, line: 744, baseType: !4654, size: 64, offset: 1472)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4854, file: !118, line: 745, baseType: !4859, size: 64, offset: 1536)
!4859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4860, size: 64)
!4860 = !DISubroutineType(types: !4861)
!4861 = !{null, !4617, !841}
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4854, file: !118, line: 746, baseType: !4654, size: 64, offset: 1600)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4854, file: !118, line: 747, baseType: !4645, size: 64, offset: 1664)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4854, file: !118, line: 748, baseType: !4645, size: 64, offset: 1728)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4618, file: !111, line: 736, baseType: !4866, size: 128, offset: 4288)
!4866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !111, line: 529, size: 128, elements: !4867)
!4867 = !{!4868, !4872}
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4866, file: !111, line: 531, baseType: !4869, size: 64)
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4871, line: 13, flags: DIFlagFwdDecl)
!4871 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4866, file: !111, line: 532, baseType: !4873, size: 64, offset: 64)
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !111, line: 49, flags: DIFlagFwdDecl)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4618, file: !111, line: 738, baseType: !4876, size: 64, offset: 4416)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4878)
!4878 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !111, line: 738, flags: DIFlagFwdDecl)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4618, file: !111, line: 740, baseType: !4248, size: 64, offset: 4480)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4618, file: !111, line: 741, baseType: !322, size: 64, offset: 4544)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4618, file: !111, line: 746, baseType: !322, size: 64, offset: 4608)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4618, file: !111, line: 747, baseType: !4883, size: 64, offset: 4672)
!4883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4884, size: 64)
!4884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4885)
!4885 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !111, line: 747, flags: DIFlagFwdDecl)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4618, file: !111, line: 749, baseType: !4887, size: 64, offset: 4736)
!4887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4888, size: 64)
!4888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !111, line: 428, size: 128, elements: !4889)
!4889 = !{!4890, !4891, !4892}
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4888, file: !111, line: 433, baseType: !7, size: 32)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4888, file: !111, line: 434, baseType: !7, size: 32, offset: 32)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4888, file: !111, line: 435, baseType: !221, size: 64, offset: 64)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4618, file: !111, line: 751, baseType: !196, size: 128, offset: 4800)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4618, file: !111, line: 762, baseType: !4895, size: 64, offset: 4928)
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !111, line: 762, flags: DIFlagFwdDecl)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4618, file: !111, line: 770, baseType: !4898, offset: 4992)
!4898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4899, line: 5, elements: !1160)
!4899 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4618, file: !111, line: 772, baseType: !4901, size: 64, offset: 4992)
!4901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4902, size: 64)
!4902 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4903, line: 18, flags: DIFlagFwdDecl)
!4903 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4618, file: !111, line: 773, baseType: !4905, size: 64, offset: 5056)
!4905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4906, size: 64)
!4906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4907, line: 41, size: 512, elements: !4908)
!4907 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4908 = !{!4909, !4910, !5004, !5005, !5006, !5007}
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4906, file: !4907, line: 42, baseType: !4905, size: 64)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4906, file: !4907, line: 43, baseType: !4911, size: 64, offset: 64)
!4911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4912, size: 64)
!4912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4913)
!4913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4907, line: 125, size: 1408, elements: !4914)
!4914 = !{!4915, !4919, !4923, !4929, !4933, !4934, !4939, !4943, !4947, !4951, !4955, !4956, !4960, !4964, !4968, !4979, !4980, !4981, !4982, !4992, !4996, !5000}
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4913, file: !4907, line: 126, baseType: !4916, size: 64)
!4916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4917, size: 64)
!4917 = !DISubroutineType(types: !4918)
!4918 = !{!4905, !4905}
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4913, file: !4907, line: 127, baseType: !4920, size: 64, offset: 64)
!4920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4921, size: 64)
!4921 = !DISubroutineType(types: !4922)
!4922 = !{null, !4905}
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4913, file: !4907, line: 128, baseType: !4924, size: 64, offset: 128)
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = !DISubroutineType(types: !4926)
!4926 = !{!841, !4927}
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4928, size: 64)
!4928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4906)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4913, file: !4907, line: 129, baseType: !4930, size: 64, offset: 192)
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = !DISubroutineType(types: !4932)
!4932 = !{!1255, !4927, !4637}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4913, file: !4907, line: 131, baseType: !4924, size: 64, offset: 256)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4913, file: !4907, line: 133, baseType: !4935, size: 64, offset: 320)
!4935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4936, size: 64)
!4936 = !DISubroutineType(types: !4937)
!4937 = !{!4938, !4927}
!4938 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4907, line: 132, flags: DIFlagFwdDecl)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4913, file: !4907, line: 134, baseType: !4940, size: 64, offset: 384)
!4940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4941, size: 64)
!4941 = !DISubroutineType(types: !4942)
!4942 = !{!841, !4927, !406}
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4913, file: !4907, line: 136, baseType: !4944, size: 64, offset: 448)
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4945, size: 64)
!4945 = !DISubroutineType(types: !4946)
!4946 = !{!126, !4927, !406, !7, !190, !579}
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4913, file: !4907, line: 141, baseType: !4948, size: 64, offset: 512)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{!126, !4927, !406, !2063, !579}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4913, file: !4907, line: 144, baseType: !4952, size: 64, offset: 576)
!4952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4953, size: 64)
!4953 = !DISubroutineType(types: !4954)
!4954 = !{!406, !4927}
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4913, file: !4907, line: 145, baseType: !4952, size: 64, offset: 640)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4913, file: !4907, line: 146, baseType: !4957, size: 64, offset: 704)
!4957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4958, size: 64)
!4958 = !DISubroutineType(types: !4959)
!4959 = !{!4905, !4927}
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4913, file: !4907, line: 148, baseType: !4961, size: 64, offset: 768)
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = !DISubroutineType(types: !4963)
!4963 = !{!4905, !4927, !4905}
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4913, file: !4907, line: 151, baseType: !4965, size: 64, offset: 832)
!4965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4966, size: 64)
!4966 = !DISubroutineType(types: !4967)
!4967 = !{!4905, !4927, !406}
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4913, file: !4907, line: 153, baseType: !4969, size: 64, offset: 896)
!4969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64)
!4970 = !DISubroutineType(types: !4971)
!4971 = !{!126, !4927, !406, !406, !7, !7, !4972}
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4973, size: 64)
!4973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4907, line: 94, size: 640, elements: !4974)
!4974 = !{!4975, !4976, !4977}
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4973, file: !4907, line: 95, baseType: !4905, size: 64)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4973, file: !4907, line: 96, baseType: !7, size: 32, offset: 64)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4973, file: !4907, line: 97, baseType: !4978, size: 512, offset: 128)
!4978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 512, elements: !2620)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4913, file: !4907, line: 158, baseType: !4961, size: 64, offset: 960)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4913, file: !4907, line: 161, baseType: !4957, size: 64, offset: 1024)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4913, file: !4907, line: 163, baseType: !4916, size: 64, offset: 1088)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4913, file: !4907, line: 164, baseType: !4983, size: 64, offset: 1152)
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!4984 = !DISubroutineType(types: !4985)
!4985 = !{!126, !4927, !4986}
!4986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4987, size: 64)
!4987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4907, line: 73, size: 128, elements: !4988)
!4988 = !{!4989, !4990, !4991}
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4987, file: !4907, line: 74, baseType: !7, size: 32)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4987, file: !4907, line: 75, baseType: !7, size: 32, offset: 32)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4987, file: !4907, line: 76, baseType: !4927, size: 64, offset: 64)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4913, file: !4907, line: 166, baseType: !4993, size: 64, offset: 1216)
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = !DISubroutineType(types: !4995)
!4995 = !{!190, !4905, !126}
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4913, file: !4907, line: 167, baseType: !4997, size: 64, offset: 1280)
!4997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4998, size: 64)
!4998 = !DISubroutineType(types: !4999)
!4999 = !{!126, !4927, !7}
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4913, file: !4907, line: 168, baseType: !5001, size: 64, offset: 1344)
!5001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5002, size: 64)
!5002 = !DISubroutineType(types: !5003)
!5003 = !{!126, !4905}
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4906, file: !4907, line: 44, baseType: !4617, size: 64, offset: 128)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4906, file: !4907, line: 45, baseType: !196, size: 128, offset: 192)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4906, file: !4907, line: 46, baseType: !196, size: 128, offset: 320)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4906, file: !4907, line: 47, baseType: !374, size: 8, offset: 448)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4618, file: !111, line: 776, baseType: !126, size: 32, offset: 5120)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4618, file: !111, line: 778, baseType: !448, size: 32, offset: 5152)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4618, file: !111, line: 779, baseType: !316, size: 32, offset: 5184)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4618, file: !111, line: 781, baseType: !346, size: 32, offset: 5216)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4618, file: !111, line: 782, baseType: !196, size: 128, offset: 5248)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4618, file: !111, line: 784, baseType: !5014, size: 64, offset: 5376)
!5014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5015, size: 64)
!5015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5016)
!5016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !5017, line: 52, size: 768, elements: !5018)
!5017 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!5018 = !{!5019, !5020, !5021, !5022, !5023, !5027, !5031, !5032, !5033, !5034, !5038, !5042}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5016, file: !5017, line: 53, baseType: !406, size: 64)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !5016, file: !5017, line: 55, baseType: !583, size: 64, offset: 64)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5016, file: !5017, line: 56, baseType: !583, size: 64, offset: 128)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !5016, file: !5017, line: 58, baseType: !4634, size: 64, offset: 192)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5016, file: !5017, line: 59, baseType: !5024, size: 64, offset: 256)
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5025 = !DISubroutineType(types: !5026)
!5026 = !{!432, !4637, !4643}
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !5016, file: !5017, line: 61, baseType: !5028, size: 64, offset: 320)
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5029, size: 64)
!5029 = !DISubroutineType(types: !5030)
!5030 = !{null, !5014}
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !5016, file: !5017, line: 62, baseType: !4645, size: 64, offset: 384)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !5016, file: !5017, line: 64, baseType: !4654, size: 64, offset: 448)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !5016, file: !5017, line: 66, baseType: !1591, size: 64, offset: 512)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !5016, file: !5017, line: 67, baseType: !5035, size: 64, offset: 576)
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5036, size: 64)
!5036 = !DISubroutineType(types: !5037)
!5037 = !{!1255, !4637}
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !5016, file: !5017, line: 69, baseType: !5039, size: 64, offset: 640)
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{null, !4637, !1626, !1627}
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5016, file: !5017, line: 71, baseType: !4649, size: 64, offset: 704)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4618, file: !111, line: 785, baseType: !583, size: 64, offset: 5440)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4618, file: !111, line: 787, baseType: !4645, size: 64, offset: 5504)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4618, file: !111, line: 788, baseType: !5046, size: 64, offset: 5568)
!5046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5047, size: 64)
!5047 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !111, line: 46, flags: DIFlagFwdDecl)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4618, file: !111, line: 789, baseType: !5049, size: 64, offset: 5632)
!5049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5050, size: 64)
!5050 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !111, line: 48, flags: DIFlagFwdDecl)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4618, file: !111, line: 791, baseType: !5052, size: 64, offset: 5696)
!5052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5053, size: 64)
!5053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !111, line: 597, size: 128, elements: !5054)
!5054 = !{!5055, !5056, !5057, !5058, !5059}
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !5053, file: !111, line: 598, baseType: !133, size: 32)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !5053, file: !111, line: 599, baseType: !142, size: 32, offset: 32)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !5053, file: !111, line: 600, baseType: !147, size: 32, offset: 64)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !5053, file: !111, line: 601, baseType: !841, size: 8, offset: 96)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !5053, file: !111, line: 602, baseType: !841, size: 8, offset: 104)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4618, file: !111, line: 793, baseType: !152, size: 32, offset: 5760)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4618, file: !111, line: 795, baseType: !841, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4618, file: !111, line: 796, baseType: !841, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4618, file: !111, line: 797, baseType: !841, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4618, file: !111, line: 798, baseType: !841, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4618, file: !111, line: 799, baseType: !841, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4613, file: !4614, line: 71, baseType: !126, size: 32, offset: 64)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "use_dma_alloc", scope: !4613, file: !4614, line: 73, baseType: !841, size: 8, offset: 96)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "use_dma32", scope: !4613, file: !4614, line: 74, baseType: !841, size: 8, offset: 104)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !4613, file: !4614, line: 78, baseType: !5070, size: 14784, offset: 128)
!5070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5071, size: 14784, elements: !535)
!5071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4613, file: !4614, line: 76, size: 4928, elements: !5072)
!5072 = !{!5073}
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "orders", scope: !5071, file: !4614, line: 77, baseType: !5074, size: 4928)
!5074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5075, size: 4928, elements: !5084)
!5075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_pool_type", file: !4614, line: 49, size: 448, elements: !5076)
!5076 = !{!5077, !5079, !5080, !5081, !5082, !5083}
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !5075, file: !4614, line: 50, baseType: !5078, size: 64)
!5078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !5075, file: !4614, line: 51, baseType: !7, size: 32, offset: 64)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !5075, file: !4614, line: 52, baseType: !87, size: 32, offset: 96)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "shrinker_list", scope: !5075, file: !4614, line: 54, baseType: !196, size: 128, offset: 128)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5075, file: !4614, line: 56, baseType: !346, size: 32, offset: 256)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5075, file: !4614, line: 57, baseType: !196, size: 128, offset: 320)
!5084 = !{!5085}
!5085 = !DISubrange(count: 11)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "lru_lock", scope: !192, file: !193, line: 252, baseType: !346, size: 32, offset: 16640)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !192, file: !193, line: 257, baseType: !196, size: 128, offset: 16704)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "dev_mapping", scope: !192, file: !193, line: 263, baseType: !240, size: 64, offset: 16832)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !192, file: !193, line: 268, baseType: !2048, size: 64, offset: 16896)
!5090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5091, size: 64)
!5091 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !200)
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64)
!5093 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !126)
!5094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5095, size: 64)
!5095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5091)
!5096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5097, size: 64)
!5097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5093)
!5098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5099, size: 64)
!5099 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !316)
!5100 = !{!5101, !5103, !5105, !5110, !5113, !5115, !5117, !0, !5119, !5121, !5123, !5128, !5130}
!5101 = !DIGlobalVariableExpression(var: !5102, expr: !DIExpression())
!5102 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_glob327", scope: !2, file: !3, line: 45, type: !190, isLocal: true, isDefinition: true)
!5103 = !DIGlobalVariableExpression(var: !5104, expr: !DIExpression())
!5104 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_device_swapout330", scope: !2, file: !3, line: 175, type: !190, isLocal: true, isDefinition: true)
!5105 = !DIGlobalVariableExpression(var: !5106, expr: !DIExpression())
!5106 = distinct !DIGlobalVariable(scope: null, file: !3, line: 200, type: !5107, isLocal: true, isDefinition: true)
!5107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 264, elements: !5108)
!5108 = !{!5109}
!5109 = !DISubrange(count: 33)
!5110 = !DIGlobalVariableExpression(var: !5111, expr: !DIExpression())
!5111 = distinct !DIGlobalVariable(scope: null, file: !3, line: 207, type: !5112, isLocal: true, isDefinition: true)
!5112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 32, elements: !706)
!5113 = !DIGlobalVariableExpression(var: !5114, expr: !DIExpression())
!5114 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_device_init331", scope: !2, file: !3, line: 228, type: !190, isLocal: true, isDefinition: true)
!5115 = !DIGlobalVariableExpression(var: !5116, expr: !DIExpression())
!5116 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_device_fini332", scope: !2, file: !3, line: 255, type: !190, isLocal: true, isDefinition: true)
!5117 = !DIGlobalVariableExpression(var: !5118, expr: !DIExpression())
!5118 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_device_clear_dma_mappings334", scope: !2, file: !3, line: 298, type: !190, isLocal: true, isDefinition: true)
!5119 = !DIGlobalVariableExpression(var: !5120, expr: !DIExpression())
!5120 = distinct !DIGlobalVariable(name: "ttm_debugfs_root", scope: !2, file: !3, line: 47, type: !282, isLocal: false, isDefinition: true)
!5121 = !DIGlobalVariableExpression(var: !5122, expr: !DIExpression())
!5122 = distinct !DIGlobalVariable(name: "ttm_global_mutex", scope: !2, file: !3, line: 42, type: !646, isLocal: true, isDefinition: true)
!5123 = !DIGlobalVariableExpression(var: !5124, expr: !DIExpression())
!5124 = distinct !DIGlobalVariable(scope: null, file: !3, line: 108, type: !5125, isLocal: true, isDefinition: true)
!5125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 120, elements: !5126)
!5126 = !{!5127}
!5127 = !DISubrange(count: 15)
!5128 = !DIGlobalVariableExpression(var: !5129, expr: !DIExpression())
!5129 = distinct !DIGlobalVariable(name: "ttm_glob_use_count", scope: !2, file: !3, line: 43, type: !7, isLocal: true, isDefinition: true)
!5130 = !DIGlobalVariableExpression(var: !5131, expr: !DIExpression())
!5131 = distinct !DIGlobalVariable(scope: null, file: !4419, line: 313, type: !5132, isLocal: true, isDefinition: true)
!5132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 248, elements: !5133)
!5133 = !{!5134}
!5134 = !DISubrange(count: 31)
!5135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_global", file: !193, line: 41, size: 256, elements: !5136)
!5136 = !{!5137, !5138, !5139}
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_read_page", scope: !5135, file: !193, line: 47, baseType: !217, size: 64)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !5135, file: !193, line: 53, baseType: !196, size: 128, offset: 64)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "bo_count", scope: !5135, file: !193, line: 58, baseType: !366, size: 32, offset: 192)
!5140 = !{i32 7, !"Dwarf Version", i32 5}
!5141 = !{i32 2, !"Debug Info Version", i32 3}
!5142 = !{i32 1, !"wchar_size", i32 2}
!5143 = !{i32 8, !"cf-protection-branch", i32 1}
!5144 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5145 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5146 = !{i32 1, !"Code Model", i32 2}
!5147 = !{i32 1, !"override-stack-alignment", i32 8}
!5148 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5149 = distinct !DISubprogram(name: "ttm_global_swapout", scope: !3, file: !3, line: 123, type: !5150, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5152)
!5150 = !DISubroutineType(types: !5151)
!5151 = !{!126, !4455, !1371}
!5152 = !{!5153, !5154, !5155, !5157, !5158, !5159, !5162}
!5153 = !DILocalVariable(name: "ctx", arg: 1, scope: !5149, file: !3, line: 123, type: !4455)
!5154 = !DILocalVariable(name: "gfp_flags", arg: 2, scope: !5149, file: !3, line: 123, type: !1371)
!5155 = !DILocalVariable(name: "glob", scope: !5149, file: !3, line: 125, type: !5156)
!5156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5135, size: 64)
!5157 = !DILocalVariable(name: "bdev", scope: !5149, file: !3, line: 126, type: !191)
!5158 = !DILocalVariable(name: "ret", scope: !5149, file: !3, line: 127, type: !126)
!5159 = !DILocalVariable(name: "__mptr", scope: !5160, file: !3, line: 130, type: !190)
!5160 = distinct !DILexicalBlock(scope: !5161, file: !3, line: 130, column: 2)
!5161 = distinct !DILexicalBlock(scope: !5149, file: !3, line: 130, column: 2)
!5162 = !DILocalVariable(name: "__mptr", scope: !5163, file: !3, line: 130, type: !190)
!5163 = distinct !DILexicalBlock(scope: !5164, file: !3, line: 130, column: 2)
!5164 = distinct !DILexicalBlock(scope: !5161, file: !3, line: 130, column: 2)
!5165 = !DILocation(line: 123, column: 50, scope: !5149)
!5166 = !DILocation(line: 123, column: 61, scope: !5149)
!5167 = !DILocation(line: 125, column: 2, scope: !5149)
!5168 = !DILocation(line: 125, column: 21, scope: !5149)
!5169 = !DILocation(line: 126, column: 2, scope: !5149)
!5170 = !DILocation(line: 126, column: 21, scope: !5149)
!5171 = !DILocation(line: 127, column: 2, scope: !5149)
!5172 = !DILocation(line: 127, column: 6, scope: !5149)
!5173 = !DILocation(line: 129, column: 2, scope: !5149)
!5174 = !DILocation(line: 130, column: 2, scope: !5160)
!5175 = !DILocation(line: 130, column: 2, scope: !5161)
!5176 = !DILocation(line: 130, column: 2, scope: !5164)
!5177 = !DILocation(line: 131, column: 28, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5164, file: !3, line: 130, column: 61)
!5179 = !DILocation(line: 131, column: 34, scope: !5178)
!5180 = !DILocation(line: 131, column: 39, scope: !5178)
!5181 = !DILocation(line: 131, column: 9, scope: !5178)
!5182 = !DILocation(line: 131, column: 7, scope: !5178)
!5183 = !DILocation(line: 132, column: 7, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5178, file: !3, line: 132, column: 7)
!5185 = !DILocation(line: 132, column: 11, scope: !5184)
!5186 = !DILocation(line: 132, column: 7, scope: !5178)
!5187 = !DILocation(line: 133, column: 20, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 132, column: 16)
!5189 = !DILocation(line: 133, column: 26, scope: !5188)
!5190 = !DILocation(line: 133, column: 40, scope: !5188)
!5191 = !DILocation(line: 133, column: 46, scope: !5188)
!5192 = !DILocation(line: 133, column: 4, scope: !5188)
!5193 = !DILocation(line: 134, column: 4, scope: !5188)
!5194 = !DILocation(line: 136, column: 2, scope: !5178)
!5195 = !DILocation(line: 130, column: 2, scope: !5163)
!5196 = distinct !{!5196, !5175, !5197, !5198, !5199}
!5197 = !DILocation(line: 136, column: 2, scope: !5161)
!5198 = !{!"llvm.loop.mustprogress"}
!5199 = !{!"llvm.loop.unroll.disable"}
!5200 = !DILocation(line: 137, column: 2, scope: !5149)
!5201 = !DILocation(line: 138, column: 9, scope: !5149)
!5202 = !DILocation(line: 139, column: 1, scope: !5149)
!5203 = !DILocation(line: 138, column: 2, scope: !5149)
!5204 = !DISubprogram(name: "mutex_lock", scope: !647, file: !647, line: 227, type: !5205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5205 = !DISubroutineType(types: !5206)
!5206 = !{null, !4405}
!5207 = distinct !DISubprogram(name: "ttm_device_swapout", scope: !3, file: !3, line: 141, type: !5208, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5210)
!5208 = !DISubroutineType(types: !5209)
!5209 = !{!126, !191, !4455, !1371}
!5210 = !{!5211, !5212, !5213, !5214, !5218, !5219, !5220, !5221, !5222, !5229}
!5211 = !DILocalVariable(name: "bdev", arg: 1, scope: !5207, file: !3, line: 141, type: !191)
!5212 = !DILocalVariable(name: "ctx", arg: 2, scope: !5207, file: !3, line: 141, type: !4455)
!5213 = !DILocalVariable(name: "gfp_flags", arg: 3, scope: !5207, file: !3, line: 142, type: !1371)
!5214 = !DILocalVariable(name: "cursor", scope: !5207, file: !3, line: 144, type: !5215)
!5215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_resource_cursor", file: !4419, line: 230, size: 32, elements: !5216)
!5216 = !{!5217}
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !5215, file: !4419, line: 231, baseType: !7, size: 32)
!5218 = !DILocalVariable(name: "man", scope: !5207, file: !3, line: 145, type: !4535)
!5219 = !DILocalVariable(name: "res", scope: !5207, file: !3, line: 146, type: !4417)
!5220 = !DILocalVariable(name: "i", scope: !5207, file: !3, line: 147, type: !7)
!5221 = !DILocalVariable(name: "ret", scope: !5207, file: !3, line: 148, type: !126)
!5222 = !DILocalVariable(name: "bo", scope: !5223, file: !3, line: 157, type: !4214)
!5223 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 156, column: 56)
!5224 = distinct !DILexicalBlock(scope: !5225, file: !3, line: 156, column: 3)
!5225 = distinct !DILexicalBlock(scope: !5226, file: !3, line: 156, column: 3)
!5226 = distinct !DILexicalBlock(scope: !5227, file: !3, line: 151, column: 54)
!5227 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 151, column: 2)
!5228 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 151, column: 2)
!5229 = !DILocalVariable(name: "num_pages", scope: !5223, file: !3, line: 158, type: !806)
!5230 = !DILocation(line: 141, column: 43, scope: !5207)
!5231 = !DILocation(line: 141, column: 75, scope: !5207)
!5232 = !DILocation(line: 142, column: 16, scope: !5207)
!5233 = !DILocation(line: 144, column: 2, scope: !5207)
!5234 = !DILocation(line: 144, column: 29, scope: !5207)
!5235 = !DILocation(line: 145, column: 2, scope: !5207)
!5236 = !DILocation(line: 145, column: 31, scope: !5207)
!5237 = !DILocation(line: 146, column: 2, scope: !5207)
!5238 = !DILocation(line: 146, column: 23, scope: !5207)
!5239 = !DILocation(line: 147, column: 2, scope: !5207)
!5240 = !DILocation(line: 147, column: 11, scope: !5207)
!5241 = !DILocation(line: 148, column: 2, scope: !5207)
!5242 = !DILocation(line: 148, column: 6, scope: !5207)
!5243 = !DILocation(line: 150, column: 13, scope: !5207)
!5244 = !DILocation(line: 150, column: 19, scope: !5207)
!5245 = !DILocation(line: 150, column: 2, scope: !5207)
!5246 = !DILocation(line: 151, column: 9, scope: !5228)
!5247 = !DILocation(line: 151, column: 7, scope: !5228)
!5248 = !DILocation(line: 151, column: 26, scope: !5227)
!5249 = !DILocation(line: 151, column: 28, scope: !5227)
!5250 = !DILocation(line: 151, column: 2, scope: !5228)
!5251 = !DILocation(line: 152, column: 26, scope: !5226)
!5252 = !DILocation(line: 152, column: 32, scope: !5226)
!5253 = !DILocation(line: 152, column: 9, scope: !5226)
!5254 = !DILocation(line: 152, column: 7, scope: !5226)
!5255 = !DILocation(line: 153, column: 8, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !5226, file: !3, line: 153, column: 7)
!5257 = !DILocation(line: 153, column: 12, scope: !5256)
!5258 = !DILocation(line: 153, column: 16, scope: !5256)
!5259 = !DILocation(line: 153, column: 21, scope: !5256)
!5260 = !{i8 0, i8 2}
!5261 = !DILocation(line: 153, column: 7, scope: !5226)
!5262 = !DILocation(line: 154, column: 4, scope: !5256)
!5263 = !DILocation(line: 156, column: 3, scope: !5225)
!5264 = !DILocation(line: 156, column: 3, scope: !5224)
!5265 = !DILocation(line: 157, column: 4, scope: !5223)
!5266 = !DILocation(line: 157, column: 30, scope: !5223)
!5267 = !DILocation(line: 157, column: 35, scope: !5223)
!5268 = !DILocation(line: 157, column: 40, scope: !5223)
!5269 = !DILocation(line: 158, column: 4, scope: !5223)
!5270 = !DILocation(line: 158, column: 13, scope: !5223)
!5271 = !DILocation(line: 160, column: 9, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 160, column: 8)
!5273 = !DILocation(line: 160, column: 12, scope: !5272)
!5274 = !DILocation(line: 160, column: 15, scope: !5272)
!5275 = !DILocation(line: 160, column: 19, scope: !5272)
!5276 = !DILocation(line: 160, column: 31, scope: !5272)
!5277 = !DILocation(line: 160, column: 28, scope: !5272)
!5278 = !DILocation(line: 160, column: 8, scope: !5223)
!5279 = !DILocation(line: 161, column: 5, scope: !5272)
!5280 = !DILocation(line: 163, column: 16, scope: !5223)
!5281 = !DILocation(line: 163, column: 14, scope: !5223)
!5282 = !DILocation(line: 164, column: 25, scope: !5223)
!5283 = !DILocation(line: 164, column: 29, scope: !5223)
!5284 = !DILocation(line: 164, column: 34, scope: !5223)
!5285 = !DILocation(line: 164, column: 10, scope: !5223)
!5286 = !DILocation(line: 164, column: 8, scope: !5223)
!5287 = !DILocation(line: 166, column: 9, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 166, column: 8)
!5289 = !DILocation(line: 166, column: 8, scope: !5223)
!5290 = !DILocation(line: 167, column: 12, scope: !5288)
!5291 = !DILocation(line: 167, column: 5, scope: !5288)
!5292 = !DILocation(line: 168, column: 8, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 168, column: 8)
!5294 = !DILocation(line: 168, column: 12, scope: !5293)
!5295 = !DILocation(line: 168, column: 8, scope: !5223)
!5296 = !DILocation(line: 169, column: 12, scope: !5293)
!5297 = !DILocation(line: 169, column: 5, scope: !5293)
!5298 = !DILocation(line: 170, column: 3, scope: !5224)
!5299 = !DILocation(line: 170, column: 3, scope: !5223)
!5300 = distinct !{!5300, !5263, !5301, !5198, !5199}
!5301 = !DILocation(line: 170, column: 3, scope: !5225)
!5302 = !DILocation(line: 171, column: 2, scope: !5226)
!5303 = !DILocation(line: 151, column: 49, scope: !5227)
!5304 = !DILocation(line: 151, column: 2, scope: !5227)
!5305 = distinct !{!5305, !5250, !5306, !5198, !5199}
!5306 = !DILocation(line: 171, column: 2, scope: !5228)
!5307 = !DILocation(line: 172, column: 15, scope: !5207)
!5308 = !DILocation(line: 172, column: 21, scope: !5207)
!5309 = !DILocation(line: 172, column: 2, scope: !5207)
!5310 = !DILocation(line: 173, column: 2, scope: !5207)
!5311 = !DILocation(line: 174, column: 1, scope: !5207)
!5312 = distinct !DISubprogram(name: "list_move_tail", scope: !5313, file: !5313, line: 307, type: !5314, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5316)
!5313 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5314 = !DISubroutineType(types: !5315)
!5315 = !{null, !200, !200}
!5316 = !{!5317, !5318}
!5317 = !DILocalVariable(name: "list", arg: 1, scope: !5312, file: !5313, line: 307, type: !200)
!5318 = !DILocalVariable(name: "head", arg: 2, scope: !5312, file: !5313, line: 308, type: !200)
!5319 = !DILocation(line: 307, column: 53, scope: !5312)
!5320 = !DILocation(line: 308, column: 25, scope: !5312)
!5321 = !DILocation(line: 310, column: 19, scope: !5312)
!5322 = !DILocation(line: 310, column: 2, scope: !5312)
!5323 = !DILocation(line: 311, column: 16, scope: !5312)
!5324 = !DILocation(line: 311, column: 22, scope: !5312)
!5325 = !DILocation(line: 311, column: 2, scope: !5312)
!5326 = !DILocation(line: 312, column: 1, scope: !5312)
!5327 = !DISubprogram(name: "mutex_unlock", scope: !647, file: !647, line: 246, type: !5205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5328 = distinct !DISubprogram(name: "spin_lock", scope: !5329, file: !5329, line: 349, type: !5330, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5332)
!5329 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5330 = !DISubroutineType(types: !5331)
!5331 = !{null, !1405}
!5332 = !{!5333}
!5333 = !DILocalVariable(name: "lock", arg: 1, scope: !5328, file: !5329, line: 349, type: !1405)
!5334 = !DILocation(line: 349, column: 51, scope: !5328)
!5335 = !DILocation(line: 351, column: 2, scope: !5328)
!5336 = !DILocation(line: 352, column: 1, scope: !5328)
!5337 = distinct !DISubprogram(name: "ttm_manager_type", scope: !193, file: !193, line: 276, type: !5338, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5340)
!5338 = !DISubroutineType(types: !5339)
!5339 = !{!4535, !191, !126}
!5340 = !{!5341, !5342}
!5341 = !DILocalVariable(name: "bdev", arg: 1, scope: !5337, file: !193, line: 276, type: !191)
!5342 = !DILocalVariable(name: "mem_type", arg: 2, scope: !5337, file: !193, line: 276, type: !126)
!5343 = !DILocation(line: 276, column: 37, scope: !5337)
!5344 = !DILocation(line: 276, column: 47, scope: !5337)
!5345 = !DILocation(line: 278, column: 2, scope: !5337)
!5346 = !DILocation(line: 278, column: 2, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5348, file: !193, line: 278, column: 2)
!5348 = distinct !DILexicalBlock(scope: !5337, file: !193, line: 278, column: 2)
!5349 = !DILocation(line: 278, column: 2, scope: !5348)
!5350 = !{i32 -2140110049}
!5351 = !DILocation(line: 280, column: 9, scope: !5337)
!5352 = !DILocation(line: 280, column: 15, scope: !5337)
!5353 = !DILocation(line: 280, column: 23, scope: !5337)
!5354 = !DILocation(line: 280, column: 2, scope: !5337)
!5355 = !DISubprogram(name: "ttm_resource_manager_first", scope: !4419, file: !4419, line: 389, type: !5356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5356 = !DISubroutineType(types: !5357)
!5357 = !{!4417, !4535, !5358}
!5358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5215, size: 64)
!5359 = !DISubprogram(name: "ttm_bo_swapout", scope: !99, file: !99, line: 376, type: !5360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5360 = !DISubroutineType(types: !5361)
!5361 = !{!126, !4214, !4455, !1371}
!5362 = !DISubprogram(name: "ttm_resource_manager_next", scope: !4419, file: !4419, line: 392, type: !5363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5363 = !DISubroutineType(types: !5364)
!5364 = !{!4417, !4535, !5358, !4417}
!5365 = distinct !DISubprogram(name: "spin_unlock", scope: !5329, file: !5329, line: 389, type: !5330, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5366)
!5366 = !{!5367}
!5367 = !DILocalVariable(name: "lock", arg: 1, scope: !5365, file: !5329, line: 389, type: !1405)
!5368 = !DILocation(line: 389, column: 53, scope: !5365)
!5369 = !DILocation(line: 391, column: 2, scope: !5365)
!5370 = !DILocation(line: 392, column: 1, scope: !5365)
!5371 = distinct !DISubprogram(name: "ttm_device_init", scope: !3, file: !3, line: 192, type: !5372, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5374)
!5372 = !DISubroutineType(types: !5373)
!5373 = !{!126, !191, !203, !4617, !240, !4607, !841, !841}
!5374 = !{!5375, !5376, !5377, !5378, !5379, !5380, !5381, !5382, !5383, !5384, !5387}
!5375 = !DILocalVariable(name: "bdev", arg: 1, scope: !5371, file: !3, line: 192, type: !191)
!5376 = !DILocalVariable(name: "funcs", arg: 2, scope: !5371, file: !3, line: 192, type: !203)
!5377 = !DILocalVariable(name: "dev", arg: 3, scope: !5371, file: !3, line: 193, type: !4617)
!5378 = !DILocalVariable(name: "mapping", arg: 4, scope: !5371, file: !3, line: 193, type: !240)
!5379 = !DILocalVariable(name: "vma_manager", arg: 5, scope: !5371, file: !3, line: 194, type: !4607)
!5380 = !DILocalVariable(name: "use_dma_alloc", arg: 6, scope: !5371, file: !3, line: 195, type: !841)
!5381 = !DILocalVariable(name: "use_dma32", arg: 7, scope: !5371, file: !3, line: 195, type: !841)
!5382 = !DILocalVariable(name: "glob", scope: !5371, file: !3, line: 197, type: !5156)
!5383 = !DILocalVariable(name: "ret", scope: !5371, file: !3, line: 198, type: !126)
!5384 = !DILocalVariable(name: "__ret_warn_on", scope: !5385, file: !3, line: 200, type: !126)
!5385 = distinct !DILexicalBlock(scope: !5386, file: !3, line: 200, column: 6)
!5386 = distinct !DILexicalBlock(scope: !5371, file: !3, line: 200, column: 6)
!5387 = !DILocalVariable(name: "__flags", scope: !5388, file: !3, line: 200, type: !126)
!5388 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 200, column: 6)
!5389 = distinct !DILexicalBlock(scope: !5385, file: !3, line: 200, column: 6)
!5390 = !DILocation(line: 192, column: 40, scope: !5371)
!5391 = !DILocation(line: 192, column: 77, scope: !5371)
!5392 = !DILocation(line: 193, column: 22, scope: !5371)
!5393 = !DILocation(line: 193, column: 49, scope: !5371)
!5394 = !DILocation(line: 194, column: 38, scope: !5371)
!5395 = !DILocation(line: 195, column: 12, scope: !5371)
!5396 = !DILocation(line: 195, column: 32, scope: !5371)
!5397 = !DILocation(line: 197, column: 2, scope: !5371)
!5398 = !DILocation(line: 197, column: 21, scope: !5371)
!5399 = !DILocation(line: 198, column: 2, scope: !5371)
!5400 = !DILocation(line: 198, column: 6, scope: !5371)
!5401 = !DILocation(line: 200, column: 6, scope: !5385)
!5402 = !DILocation(line: 200, column: 6, scope: !5389)
!5403 = !DILocation(line: 200, column: 6, scope: !5388)
!5404 = !DILocation(line: 200, column: 6, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5388, file: !3, line: 200, column: 6)
!5406 = !DILocation(line: 200, column: 6, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5388, file: !3, line: 200, column: 6)
!5408 = !{i64 2155154807, i64 2155154836, i64 2155154882, i64 2155154940, i64 2155154994, i64 2155155048, i64 2155155103, i64 2155155134, i64 2155155442, i64 2155155448, i64 2155155495, i64 2155155518, i64 2155155544}
!5409 = !DILocation(line: 200, column: 6, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5388, file: !3, line: 200, column: 6)
!5411 = !DILocation(line: 200, column: 6, scope: !5386)
!5412 = !DILocation(line: 200, column: 6, scope: !5371)
!5413 = !DILocation(line: 201, column: 3, scope: !5386)
!5414 = !DILocation(line: 203, column: 8, scope: !5371)
!5415 = !DILocation(line: 203, column: 6, scope: !5371)
!5416 = !DILocation(line: 204, column: 6, scope: !5417)
!5417 = distinct !DILexicalBlock(scope: !5371, file: !3, line: 204, column: 6)
!5418 = !DILocation(line: 204, column: 6, scope: !5371)
!5419 = !DILocation(line: 205, column: 10, scope: !5417)
!5420 = !DILocation(line: 205, column: 3, scope: !5417)
!5421 = !DILocation(line: 207, column: 13, scope: !5371)
!5422 = !DILocation(line: 207, column: 2, scope: !5371)
!5423 = !DILocation(line: 207, column: 8, scope: !5371)
!5424 = !DILocation(line: 207, column: 11, scope: !5371)
!5425 = !DILocation(line: 208, column: 7, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5371, file: !3, line: 208, column: 6)
!5427 = !DILocation(line: 208, column: 13, scope: !5426)
!5428 = !DILocation(line: 208, column: 6, scope: !5371)
!5429 = !DILocation(line: 209, column: 3, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5426, file: !3, line: 208, column: 17)
!5431 = !DILocation(line: 210, column: 3, scope: !5430)
!5432 = !DILocation(line: 213, column: 16, scope: !5371)
!5433 = !DILocation(line: 213, column: 2, scope: !5371)
!5434 = !DILocation(line: 213, column: 8, scope: !5371)
!5435 = !DILocation(line: 213, column: 14, scope: !5371)
!5436 = !DILocation(line: 215, column: 19, scope: !5371)
!5437 = !DILocation(line: 215, column: 2, scope: !5371)
!5438 = !DILocation(line: 216, column: 17, scope: !5371)
!5439 = !DILocation(line: 216, column: 23, scope: !5371)
!5440 = !DILocation(line: 216, column: 29, scope: !5371)
!5441 = !DILocation(line: 216, column: 48, scope: !5371)
!5442 = !DILocation(line: 216, column: 63, scope: !5371)
!5443 = !DILocation(line: 216, column: 2, scope: !5371)
!5444 = !DILocation(line: 218, column: 22, scope: !5371)
!5445 = !DILocation(line: 218, column: 2, scope: !5371)
!5446 = !DILocation(line: 218, column: 8, scope: !5371)
!5447 = !DILocation(line: 218, column: 20, scope: !5371)
!5448 = !DILocation(line: 219, column: 2, scope: !5371)
!5449 = !DILocation(line: 219, column: 2, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5371, file: !3, line: 219, column: 2)
!5451 = !DILocation(line: 220, column: 18, scope: !5371)
!5452 = !DILocation(line: 220, column: 24, scope: !5371)
!5453 = !DILocation(line: 220, column: 2, scope: !5371)
!5454 = !DILocation(line: 221, column: 22, scope: !5371)
!5455 = !DILocation(line: 221, column: 2, scope: !5371)
!5456 = !DILocation(line: 221, column: 8, scope: !5371)
!5457 = !DILocation(line: 221, column: 20, scope: !5371)
!5458 = !DILocation(line: 222, column: 2, scope: !5371)
!5459 = !DILocation(line: 223, column: 17, scope: !5371)
!5460 = !DILocation(line: 223, column: 23, scope: !5371)
!5461 = !DILocation(line: 223, column: 37, scope: !5371)
!5462 = !DILocation(line: 223, column: 43, scope: !5371)
!5463 = !DILocation(line: 223, column: 2, scope: !5371)
!5464 = !DILocation(line: 224, column: 2, scope: !5371)
!5465 = !DILocation(line: 226, column: 2, scope: !5371)
!5466 = !DILocation(line: 227, column: 1, scope: !5371)
!5467 = distinct !DISubprogram(name: "ttm_global_init", scope: !3, file: !3, line: 66, type: !1858, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5468)
!5468 = !{!5469, !5470, !5471, !5472, !5494, !5495, !5497, !5498}
!5469 = !DILocalVariable(name: "glob", scope: !5467, file: !3, line: 68, type: !5156)
!5470 = !DILocalVariable(name: "num_pages", scope: !5467, file: !3, line: 69, type: !221)
!5471 = !DILocalVariable(name: "num_dma32", scope: !5467, file: !3, line: 69, type: !221)
!5472 = !DILocalVariable(name: "si", scope: !5467, file: !3, line: 70, type: !5473)
!5473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysinfo", file: !5474, line: 8, size: 896, elements: !5475)
!5474 = !DIFile(filename: "./include/uapi/linux/sysinfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6f8882c542ddb6603b06a4eafcc17015")
!5475 = !{!5476, !5477, !5479, !5480, !5481, !5482, !5483, !5484, !5485, !5486, !5487, !5488, !5489, !5490}
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "uptime", scope: !5473, file: !5474, line: 9, baseType: !568, size: 64)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "loads", scope: !5473, file: !5474, line: 10, baseType: !5478, size: 192, offset: 64)
!5478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 192, elements: !535)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "totalram", scope: !5473, file: !5474, line: 11, baseType: !581, size: 64, offset: 256)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "freeram", scope: !5473, file: !5474, line: 12, baseType: !581, size: 64, offset: 320)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "sharedram", scope: !5473, file: !5474, line: 13, baseType: !581, size: 64, offset: 384)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "bufferram", scope: !5473, file: !5474, line: 14, baseType: !581, size: 64, offset: 448)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "totalswap", scope: !5473, file: !5474, line: 15, baseType: !581, size: 64, offset: 512)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "freeswap", scope: !5473, file: !5474, line: 16, baseType: !581, size: 64, offset: 576)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "procs", scope: !5473, file: !5474, line: 17, baseType: !382, size: 16, offset: 640)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !5473, file: !5474, line: 18, baseType: !382, size: 16, offset: 656)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "totalhigh", scope: !5473, file: !5474, line: 19, baseType: !581, size: 64, offset: 704)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "freehigh", scope: !5473, file: !5474, line: 20, baseType: !581, size: 64, offset: 768)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "mem_unit", scope: !5473, file: !5474, line: 21, baseType: !318, size: 32, offset: 832)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "_f", scope: !5473, file: !5474, line: 22, baseType: !5491, offset: 864)
!5491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, elements: !5492)
!5492 = !{!5493}
!5493 = !DISubrange(count: 0)
!5494 = !DILocalVariable(name: "ret", scope: !5467, file: !3, line: 71, type: !126)
!5495 = !DILocalVariable(name: "__UNIQUE_ID___x328", scope: !5496, file: !3, line: 93, type: !221)
!5496 = distinct !DILexicalBlock(scope: !5467, file: !3, line: 93, column: 14)
!5497 = !DILocalVariable(name: "__UNIQUE_ID___y329", scope: !5496, file: !3, line: 93, type: !221)
!5498 = !DILabel(scope: !5467, name: "out", file: !3, line: 110)
!5499 = !DILocation(line: 68, column: 2, scope: !5467)
!5500 = !DILocation(line: 68, column: 21, scope: !5467)
!5501 = !DILocation(line: 69, column: 2, scope: !5467)
!5502 = !DILocation(line: 69, column: 16, scope: !5467)
!5503 = !DILocation(line: 69, column: 27, scope: !5467)
!5504 = !DILocation(line: 70, column: 2, scope: !5467)
!5505 = !DILocation(line: 70, column: 17, scope: !5467)
!5506 = !DILocation(line: 71, column: 2, scope: !5467)
!5507 = !DILocation(line: 71, column: 6, scope: !5467)
!5508 = !DILocation(line: 73, column: 2, scope: !5467)
!5509 = !DILocation(line: 74, column: 6, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5467, file: !3, line: 74, column: 6)
!5511 = !DILocation(line: 74, column: 27, scope: !5510)
!5512 = !DILocation(line: 74, column: 6, scope: !5467)
!5513 = !DILocation(line: 75, column: 3, scope: !5510)
!5514 = !DILocation(line: 77, column: 2, scope: !5467)
!5515 = !DILocation(line: 79, column: 21, scope: !5467)
!5516 = !DILocation(line: 79, column: 19, scope: !5467)
!5517 = !DILocation(line: 80, column: 13, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5467, file: !3, line: 80, column: 6)
!5519 = !DILocation(line: 80, column: 6, scope: !5518)
!5520 = !DILocation(line: 80, column: 6, scope: !5467)
!5521 = !DILocation(line: 81, column: 20, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 80, column: 32)
!5523 = !DILocation(line: 82, column: 2, scope: !5522)
!5524 = !DILocation(line: 87, column: 23, scope: !5467)
!5525 = !DILocation(line: 87, column: 37, scope: !5467)
!5526 = !DILocation(line: 87, column: 34, scope: !5467)
!5527 = !DILocation(line: 87, column: 32, scope: !5467)
!5528 = !DILocation(line: 87, column: 47, scope: !5467)
!5529 = !DILocation(line: 87, column: 12, scope: !5467)
!5530 = !DILocation(line: 88, column: 12, scope: !5467)
!5531 = !DILocation(line: 91, column: 23, scope: !5467)
!5532 = !DILocation(line: 91, column: 37, scope: !5467)
!5533 = !DILocation(line: 91, column: 32, scope: !5467)
!5534 = !DILocation(line: 91, column: 53, scope: !5467)
!5535 = !DILocation(line: 91, column: 50, scope: !5467)
!5536 = !DILocation(line: 91, column: 48, scope: !5467)
!5537 = !DILocation(line: 92, column: 3, scope: !5467)
!5538 = !DILocation(line: 91, column: 12, scope: !5467)
!5539 = !DILocation(line: 93, column: 14, scope: !5496)
!5540 = !DILocation(line: 93, column: 14, scope: !5467)
!5541 = !DILocation(line: 93, column: 12, scope: !5467)
!5542 = !DILocation(line: 95, column: 20, scope: !5467)
!5543 = !DILocation(line: 95, column: 2, scope: !5467)
!5544 = !DILocation(line: 96, column: 18, scope: !5467)
!5545 = !DILocation(line: 96, column: 29, scope: !5467)
!5546 = !DILocation(line: 96, column: 2, scope: !5467)
!5547 = !DILocation(line: 98, column: 26, scope: !5467)
!5548 = !DILocation(line: 98, column: 2, scope: !5467)
!5549 = !DILocation(line: 98, column: 8, scope: !5467)
!5550 = !DILocation(line: 98, column: 24, scope: !5467)
!5551 = !DILocation(line: 100, column: 6, scope: !5552)
!5552 = distinct !DILexicalBlock(scope: !5467, file: !3, line: 100, column: 6)
!5553 = !DILocation(line: 100, column: 6, scope: !5467)
!5554 = !DILocation(line: 101, column: 7, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5552, file: !3, line: 100, column: 47)
!5556 = !DILocation(line: 102, column: 3, scope: !5555)
!5557 = !DILocation(line: 105, column: 18, scope: !5467)
!5558 = !DILocation(line: 105, column: 24, scope: !5467)
!5559 = !DILocation(line: 105, column: 2, scope: !5467)
!5560 = !DILocation(line: 106, column: 14, scope: !5467)
!5561 = !DILocation(line: 106, column: 20, scope: !5467)
!5562 = !DILocation(line: 106, column: 2, scope: !5467)
!5563 = !DILocation(line: 108, column: 50, scope: !5467)
!5564 = !DILocation(line: 109, column: 6, scope: !5467)
!5565 = !DILocation(line: 109, column: 12, scope: !5467)
!5566 = !DILocation(line: 108, column: 2, scope: !5467)
!5567 = !DILocation(line: 110, column: 1, scope: !5467)
!5568 = !DILocation(line: 111, column: 6, scope: !5569)
!5569 = distinct !DILexicalBlock(scope: !5467, file: !3, line: 111, column: 6)
!5570 = !DILocation(line: 111, column: 10, scope: !5569)
!5571 = !DILocation(line: 111, column: 13, scope: !5569)
!5572 = !DILocation(line: 111, column: 6, scope: !5467)
!5573 = !DILocation(line: 112, column: 18, scope: !5569)
!5574 = !DILocation(line: 112, column: 3, scope: !5569)
!5575 = !DILocation(line: 113, column: 6, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5467, file: !3, line: 113, column: 6)
!5577 = !DILocation(line: 113, column: 6, scope: !5467)
!5578 = !DILocation(line: 114, column: 3, scope: !5576)
!5579 = !DILocation(line: 115, column: 2, scope: !5467)
!5580 = !DILocation(line: 116, column: 9, scope: !5467)
!5581 = !DILocation(line: 117, column: 1, scope: !5467)
!5582 = !DILocation(line: 116, column: 2, scope: !5467)
!5583 = !DISubprogram(name: "alloc_workqueue", scope: !159, file: !159, line: 461, type: !5584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5584 = !DISubroutineType(types: !5585)
!5585 = !{!2048, !406, !7, !126, null}
!5586 = distinct !DISubprogram(name: "ttm_global_release", scope: !3, file: !3, line: 49, type: !2091, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5587)
!5587 = !{!5588, !5589}
!5588 = !DILocalVariable(name: "glob", scope: !5586, file: !3, line: 51, type: !5156)
!5589 = !DILabel(scope: !5586, name: "out", file: !3, line: 62)
!5590 = !DILocation(line: 51, column: 2, scope: !5586)
!5591 = !DILocation(line: 51, column: 21, scope: !5586)
!5592 = !DILocation(line: 53, column: 2, scope: !5586)
!5593 = !DILocation(line: 54, column: 6, scope: !5594)
!5594 = distinct !DILexicalBlock(scope: !5586, file: !3, line: 54, column: 6)
!5595 = !DILocation(line: 54, column: 27, scope: !5594)
!5596 = !DILocation(line: 54, column: 6, scope: !5586)
!5597 = !DILocation(line: 55, column: 3, scope: !5594)
!5598 = !DILocation(line: 57, column: 2, scope: !5586)
!5599 = !DILocation(line: 58, column: 17, scope: !5586)
!5600 = !DILocation(line: 58, column: 2, scope: !5586)
!5601 = !DILocation(line: 60, column: 2, scope: !5586)
!5602 = !DILocation(line: 61, column: 9, scope: !5586)
!5603 = !DILocation(line: 61, column: 2, scope: !5586)
!5604 = !DILocation(line: 62, column: 1, scope: !5586)
!5605 = !DILocation(line: 63, column: 2, scope: !5586)
!5606 = !DILocation(line: 64, column: 1, scope: !5586)
!5607 = !DISubprogram(name: "ttm_sys_man_init", scope: !5608, file: !5608, line: 41, type: !5609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5608 = !DIFile(filename: "drivers/gpu/drm/ttm/ttm_module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745e4dbc04c6d1a7bb5391893f512083")
!5609 = !DISubroutineType(types: !5610)
!5610 = !{null, !191}
!5611 = !DISubprogram(name: "ttm_pool_init", scope: !4614, file: !4614, line: 85, type: !5612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5612 = !DISubroutineType(types: !5613)
!5613 = !{null, !5078, !4617, !126, !841, !841}
!5614 = distinct !DISubprogram(name: "spinlock_check", scope: !5329, file: !5329, line: 324, type: !5615, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5618)
!5615 = !DISubroutineType(types: !5616)
!5616 = !{!5617, !1405}
!5617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!5618 = !{!5619}
!5619 = !DILocalVariable(name: "lock", arg: 1, scope: !5614, file: !5329, line: 324, type: !1405)
!5620 = !DILocation(line: 324, column: 67, scope: !5614)
!5621 = !DILocation(line: 326, column: 10, scope: !5614)
!5622 = !DILocation(line: 326, column: 16, scope: !5614)
!5623 = !DILocation(line: 326, column: 2, scope: !5614)
!5624 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5313, file: !5313, line: 35, type: !5625, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5627)
!5625 = !DISubroutineType(types: !5626)
!5626 = !{null, !200}
!5627 = !{!5628}
!5628 = !DILocalVariable(name: "list", arg: 1, scope: !5624, file: !5313, line: 35, type: !200)
!5629 = !DILocation(line: 35, column: 53, scope: !5624)
!5630 = !DILocation(line: 37, column: 2, scope: !5624)
!5631 = !DILocation(line: 37, column: 2, scope: !5632)
!5632 = distinct !DILexicalBlock(scope: !5624, file: !5313, line: 37, column: 2)
!5633 = !DILocation(line: 37, column: 2, scope: !5634)
!5634 = distinct !DILexicalBlock(scope: !5632, file: !5313, line: 37, column: 2)
!5635 = !DILocation(line: 37, column: 2, scope: !5636)
!5636 = distinct !DILexicalBlock(scope: !5632, file: !5313, line: 37, column: 2)
!5637 = !DILocation(line: 38, column: 2, scope: !5624)
!5638 = !DILocation(line: 38, column: 2, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5624, file: !5313, line: 38, column: 2)
!5640 = !DILocation(line: 38, column: 2, scope: !5641)
!5641 = distinct !DILexicalBlock(scope: !5639, file: !5313, line: 38, column: 2)
!5642 = !DILocation(line: 38, column: 2, scope: !5643)
!5643 = distinct !DILexicalBlock(scope: !5639, file: !5313, line: 38, column: 2)
!5644 = !DILocation(line: 39, column: 1, scope: !5624)
!5645 = distinct !DISubprogram(name: "list_add_tail", scope: !5313, file: !5313, line: 181, type: !5314, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5646)
!5646 = !{!5647, !5648}
!5647 = !DILocalVariable(name: "new", arg: 1, scope: !5645, file: !5313, line: 181, type: !200)
!5648 = !DILocalVariable(name: "head", arg: 2, scope: !5645, file: !5313, line: 181, type: !200)
!5649 = !DILocation(line: 181, column: 52, scope: !5645)
!5650 = !DILocation(line: 181, column: 75, scope: !5645)
!5651 = !DILocation(line: 183, column: 13, scope: !5645)
!5652 = !DILocation(line: 183, column: 18, scope: !5645)
!5653 = !DILocation(line: 183, column: 24, scope: !5645)
!5654 = !DILocation(line: 183, column: 30, scope: !5645)
!5655 = !DILocation(line: 183, column: 2, scope: !5645)
!5656 = !DILocation(line: 184, column: 1, scope: !5645)
!5657 = distinct !DISubprogram(name: "ttm_device_fini", scope: !3, file: !3, line: 230, type: !5609, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5658)
!5658 = !{!5659, !5660, !5661}
!5659 = !DILocalVariable(name: "bdev", arg: 1, scope: !5657, file: !3, line: 230, type: !191)
!5660 = !DILocalVariable(name: "man", scope: !5657, file: !3, line: 232, type: !4535)
!5661 = !DILocalVariable(name: "i", scope: !5657, file: !3, line: 233, type: !7)
!5662 = !DILocation(line: 230, column: 41, scope: !5657)
!5663 = !DILocation(line: 232, column: 2, scope: !5657)
!5664 = !DILocation(line: 232, column: 31, scope: !5657)
!5665 = !DILocation(line: 233, column: 2, scope: !5657)
!5666 = !DILocation(line: 233, column: 11, scope: !5657)
!5667 = !DILocation(line: 235, column: 2, scope: !5657)
!5668 = !DILocation(line: 236, column: 12, scope: !5657)
!5669 = !DILocation(line: 236, column: 18, scope: !5657)
!5670 = !DILocation(line: 236, column: 2, scope: !5657)
!5671 = !DILocation(line: 237, column: 2, scope: !5657)
!5672 = !DILocation(line: 239, column: 18, scope: !5657)
!5673 = !DILocation(line: 239, column: 24, scope: !5657)
!5674 = !DILocation(line: 239, column: 2, scope: !5657)
!5675 = !DILocation(line: 240, column: 20, scope: !5657)
!5676 = !DILocation(line: 240, column: 26, scope: !5657)
!5677 = !DILocation(line: 240, column: 2, scope: !5657)
!5678 = !DILocation(line: 242, column: 25, scope: !5657)
!5679 = !DILocation(line: 242, column: 8, scope: !5657)
!5680 = !DILocation(line: 242, column: 6, scope: !5657)
!5681 = !DILocation(line: 243, column: 32, scope: !5657)
!5682 = !DILocation(line: 243, column: 2, scope: !5657)
!5683 = !DILocation(line: 244, column: 25, scope: !5657)
!5684 = !DILocation(line: 244, column: 2, scope: !5657)
!5685 = !DILocation(line: 246, column: 13, scope: !5657)
!5686 = !DILocation(line: 246, column: 19, scope: !5657)
!5687 = !DILocation(line: 246, column: 2, scope: !5657)
!5688 = !DILocation(line: 247, column: 9, scope: !5689)
!5689 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 247, column: 2)
!5690 = !DILocation(line: 247, column: 7, scope: !5689)
!5691 = !DILocation(line: 247, column: 14, scope: !5692)
!5692 = distinct !DILexicalBlock(scope: !5689, file: !3, line: 247, column: 2)
!5693 = !DILocation(line: 247, column: 16, scope: !5692)
!5694 = !DILocation(line: 247, column: 2, scope: !5689)
!5695 = !DILocation(line: 248, column: 19, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5692, file: !3, line: 248, column: 7)
!5697 = !DILocation(line: 248, column: 24, scope: !5696)
!5698 = !DILocation(line: 248, column: 7, scope: !5696)
!5699 = !DILocation(line: 248, column: 7, scope: !5692)
!5700 = !DILocation(line: 249, column: 4, scope: !5701)
!5701 = distinct !DILexicalBlock(scope: !5702, file: !3, line: 249, column: 4)
!5702 = distinct !DILexicalBlock(scope: !5696, file: !3, line: 249, column: 4)
!5703 = !DILocation(line: 249, column: 4, scope: !5702)
!5704 = !DILocation(line: 249, column: 4, scope: !5696)
!5705 = !DILocation(line: 248, column: 30, scope: !5696)
!5706 = !DILocation(line: 247, column: 39, scope: !5692)
!5707 = !DILocation(line: 247, column: 2, scope: !5692)
!5708 = distinct !{!5708, !5694, !5709, !5198, !5199}
!5709 = !DILocation(line: 249, column: 4, scope: !5689)
!5710 = !DILocation(line: 250, column: 15, scope: !5657)
!5711 = !DILocation(line: 250, column: 21, scope: !5657)
!5712 = !DILocation(line: 250, column: 2, scope: !5657)
!5713 = !DILocation(line: 252, column: 17, scope: !5657)
!5714 = !DILocation(line: 252, column: 23, scope: !5657)
!5715 = !DILocation(line: 252, column: 2, scope: !5657)
!5716 = !DILocation(line: 253, column: 2, scope: !5657)
!5717 = !DILocation(line: 254, column: 1, scope: !5657)
!5718 = distinct !DISubprogram(name: "list_del", scope: !5313, file: !5313, line: 227, type: !5625, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5719)
!5719 = !{!5720}
!5720 = !DILocalVariable(name: "entry", arg: 1, scope: !5718, file: !5313, line: 227, type: !200)
!5721 = !DILocation(line: 227, column: 47, scope: !5718)
!5722 = !DILocation(line: 229, column: 19, scope: !5718)
!5723 = !DILocation(line: 229, column: 2, scope: !5718)
!5724 = !DILocation(line: 230, column: 2, scope: !5718)
!5725 = !DILocation(line: 230, column: 9, scope: !5718)
!5726 = !DILocation(line: 230, column: 14, scope: !5718)
!5727 = !DILocation(line: 231, column: 2, scope: !5718)
!5728 = !DILocation(line: 231, column: 9, scope: !5718)
!5729 = !DILocation(line: 231, column: 14, scope: !5718)
!5730 = !DILocation(line: 232, column: 1, scope: !5718)
!5731 = !DISubprogram(name: "drain_workqueue", scope: !159, file: !159, line: 507, type: !5732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5732 = !DISubroutineType(types: !5733)
!5733 = !{null, !2048}
!5734 = !DISubprogram(name: "destroy_workqueue", scope: !159, file: !159, line: 488, type: !5732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5735 = distinct !DISubprogram(name: "ttm_resource_manager_set_used", scope: !4419, file: !4419, line: 308, type: !5736, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5738)
!5736 = !DISubroutineType(types: !5737)
!5737 = !{null, !4535, !841}
!5738 = !{!5739, !5740, !5741, !5742, !5746}
!5739 = !DILocalVariable(name: "man", arg: 1, scope: !5735, file: !4419, line: 308, type: !4535)
!5740 = !DILocalVariable(name: "used", arg: 2, scope: !5735, file: !4419, line: 308, type: !841)
!5741 = !DILocalVariable(name: "i", scope: !5735, file: !4419, line: 310, type: !126)
!5742 = !DILocalVariable(name: "__ret_warn_on", scope: !5743, file: !4419, line: 313, type: !126)
!5743 = distinct !DILexicalBlock(scope: !5744, file: !4419, line: 313, column: 3)
!5744 = distinct !DILexicalBlock(scope: !5745, file: !4419, line: 312, column: 2)
!5745 = distinct !DILexicalBlock(scope: !5735, file: !4419, line: 312, column: 2)
!5746 = !DILocalVariable(name: "__flags", scope: !5747, file: !4419, line: 313, type: !126)
!5747 = distinct !DILexicalBlock(scope: !5748, file: !4419, line: 313, column: 3)
!5748 = distinct !DILexicalBlock(scope: !5743, file: !4419, line: 313, column: 3)
!5749 = !DILocation(line: 308, column: 60, scope: !5735)
!5750 = !DILocation(line: 308, column: 70, scope: !5735)
!5751 = !DILocation(line: 310, column: 2, scope: !5735)
!5752 = !DILocation(line: 310, column: 6, scope: !5735)
!5753 = !DILocation(line: 312, column: 9, scope: !5745)
!5754 = !DILocation(line: 312, column: 7, scope: !5745)
!5755 = !DILocation(line: 312, column: 14, scope: !5744)
!5756 = !DILocation(line: 312, column: 16, scope: !5744)
!5757 = !DILocation(line: 312, column: 2, scope: !5745)
!5758 = !DILocation(line: 313, column: 3, scope: !5743)
!5759 = !DILocation(line: 313, column: 3, scope: !5748)
!5760 = !DILocation(line: 313, column: 3, scope: !5747)
!5761 = !DILocation(line: 313, column: 3, scope: !5762)
!5762 = distinct !DILexicalBlock(scope: !5747, file: !4419, line: 313, column: 3)
!5763 = !DILocation(line: 313, column: 3, scope: !5764)
!5764 = distinct !DILexicalBlock(scope: !5747, file: !4419, line: 313, column: 3)
!5765 = !{i64 2154851238, i64 2154851267, i64 2154851313, i64 2154851371, i64 2154851425, i64 2154851479, i64 2154851534, i64 2154851565, i64 2154851873, i64 2154851879, i64 2154851926, i64 2154851949, i64 2154851975}
!5766 = !DILocation(line: 313, column: 3, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5747, file: !4419, line: 313, column: 3)
!5768 = !DILocation(line: 313, column: 3, scope: !5744)
!5769 = !DILocation(line: 312, column: 40, scope: !5744)
!5770 = !DILocation(line: 312, column: 2, scope: !5744)
!5771 = distinct !{!5771, !5757, !5772, !5198, !5199}
!5772 = !DILocation(line: 313, column: 3, scope: !5745)
!5773 = !DILocation(line: 314, column: 18, scope: !5735)
!5774 = !DILocation(line: 314, column: 2, scope: !5735)
!5775 = !DILocation(line: 314, column: 7, scope: !5735)
!5776 = !DILocation(line: 314, column: 16, scope: !5735)
!5777 = !DILocation(line: 315, column: 1, scope: !5735)
!5778 = distinct !DISubprogram(name: "ttm_set_driver_manager", scope: !193, file: !193, line: 283, type: !5779, scopeLine: 285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5781)
!5779 = !DISubroutineType(types: !5780)
!5780 = !{null, !191, !126, !4535}
!5781 = !{!5782, !5783, !5784}
!5782 = !DILocalVariable(name: "bdev", arg: 1, scope: !5778, file: !193, line: 283, type: !191)
!5783 = !DILocalVariable(name: "type", arg: 2, scope: !5778, file: !193, line: 283, type: !126)
!5784 = !DILocalVariable(name: "manager", arg: 3, scope: !5778, file: !193, line: 284, type: !4535)
!5785 = !DILocation(line: 283, column: 62, scope: !5778)
!5786 = !DILocation(line: 283, column: 72, scope: !5778)
!5787 = !DILocation(line: 284, column: 37, scope: !5778)
!5788 = !DILocation(line: 286, column: 2, scope: !5778)
!5789 = !DILocation(line: 286, column: 2, scope: !5790)
!5790 = distinct !DILexicalBlock(scope: !5791, file: !193, line: 286, column: 2)
!5791 = distinct !DILexicalBlock(scope: !5778, file: !193, line: 286, column: 2)
!5792 = !DILocation(line: 286, column: 2, scope: !5791)
!5793 = !{i32 -2140108424}
!5794 = !DILocation(line: 287, column: 24, scope: !5778)
!5795 = !DILocation(line: 287, column: 2, scope: !5778)
!5796 = !DILocation(line: 287, column: 8, scope: !5778)
!5797 = !DILocation(line: 287, column: 16, scope: !5778)
!5798 = !DILocation(line: 287, column: 22, scope: !5778)
!5799 = !DILocation(line: 288, column: 1, scope: !5778)
!5800 = distinct !DISubprogram(name: "list_empty", scope: !5313, file: !5313, line: 371, type: !5801, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5805)
!5801 = !DISubroutineType(types: !5802)
!5802 = !{!126, !5803}
!5803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5804, size: 64)
!5804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!5805 = !{!5806}
!5806 = !DILocalVariable(name: "head", arg: 1, scope: !5800, file: !5313, line: 371, type: !5803)
!5807 = !DILocation(line: 371, column: 54, scope: !5800)
!5808 = !DILocation(line: 373, column: 9, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5800, file: !5313, line: 373, column: 9)
!5810 = !DILocation(line: 373, column: 9, scope: !5811)
!5811 = distinct !DILexicalBlock(scope: !5809, file: !5313, line: 373, column: 9)
!5812 = !DILocation(line: 373, column: 34, scope: !5800)
!5813 = !DILocation(line: 373, column: 31, scope: !5800)
!5814 = !DILocation(line: 373, column: 2, scope: !5800)
!5815 = !DISubprogram(name: "ttm_pool_fini", scope: !4614, file: !4614, line: 87, type: !5816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5816 = !DISubroutineType(types: !5817)
!5817 = !{null, !5078}
!5818 = distinct !DISubprogram(name: "ttm_device_clear_dma_mappings", scope: !3, file: !3, line: 282, type: !5609, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5819)
!5819 = !{!5820, !5821, !5822, !5823}
!5820 = !DILocalVariable(name: "bdev", arg: 1, scope: !5818, file: !3, line: 282, type: !191)
!5821 = !DILocalVariable(name: "man", scope: !5818, file: !3, line: 284, type: !4535)
!5822 = !DILocalVariable(name: "i", scope: !5818, file: !3, line: 285, type: !7)
!5823 = !DILocalVariable(name: "j", scope: !5818, file: !3, line: 285, type: !7)
!5824 = !DILocation(line: 282, column: 55, scope: !5818)
!5825 = !DILocation(line: 284, column: 2, scope: !5818)
!5826 = !DILocation(line: 284, column: 31, scope: !5818)
!5827 = !DILocation(line: 285, column: 2, scope: !5818)
!5828 = !DILocation(line: 285, column: 15, scope: !5818)
!5829 = !DILocation(line: 285, column: 18, scope: !5818)
!5830 = !DILocation(line: 287, column: 36, scope: !5818)
!5831 = !DILocation(line: 287, column: 43, scope: !5818)
!5832 = !DILocation(line: 287, column: 49, scope: !5818)
!5833 = !DILocation(line: 287, column: 2, scope: !5818)
!5834 = !DILocation(line: 289, column: 9, scope: !5835)
!5835 = distinct !DILexicalBlock(scope: !5818, file: !3, line: 289, column: 2)
!5836 = !DILocation(line: 289, column: 7, scope: !5835)
!5837 = !DILocation(line: 289, column: 26, scope: !5838)
!5838 = distinct !DILexicalBlock(scope: !5835, file: !3, line: 289, column: 2)
!5839 = !DILocation(line: 289, column: 28, scope: !5838)
!5840 = !DILocation(line: 289, column: 2, scope: !5835)
!5841 = !DILocation(line: 290, column: 26, scope: !5842)
!5842 = distinct !DILexicalBlock(scope: !5838, file: !3, line: 289, column: 54)
!5843 = !DILocation(line: 290, column: 32, scope: !5842)
!5844 = !DILocation(line: 290, column: 9, scope: !5842)
!5845 = !DILocation(line: 290, column: 7, scope: !5842)
!5846 = !DILocation(line: 291, column: 8, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5842, file: !3, line: 291, column: 7)
!5848 = !DILocation(line: 291, column: 12, scope: !5847)
!5849 = !DILocation(line: 291, column: 16, scope: !5847)
!5850 = !DILocation(line: 291, column: 21, scope: !5847)
!5851 = !DILocation(line: 291, column: 7, scope: !5842)
!5852 = !DILocation(line: 292, column: 4, scope: !5847)
!5853 = !DILocation(line: 294, column: 10, scope: !5854)
!5854 = distinct !DILexicalBlock(scope: !5842, file: !3, line: 294, column: 3)
!5855 = !DILocation(line: 294, column: 8, scope: !5854)
!5856 = !DILocation(line: 294, column: 15, scope: !5857)
!5857 = distinct !DILexicalBlock(scope: !5854, file: !3, line: 294, column: 3)
!5858 = !DILocation(line: 294, column: 17, scope: !5857)
!5859 = !DILocation(line: 294, column: 3, scope: !5854)
!5860 = !DILocation(line: 295, column: 38, scope: !5857)
!5861 = !DILocation(line: 295, column: 45, scope: !5857)
!5862 = !DILocation(line: 295, column: 50, scope: !5857)
!5863 = !DILocation(line: 295, column: 54, scope: !5857)
!5864 = !DILocation(line: 295, column: 4, scope: !5857)
!5865 = !DILocation(line: 294, column: 40, scope: !5857)
!5866 = !DILocation(line: 294, column: 3, scope: !5857)
!5867 = distinct !{!5867, !5859, !5868, !5198, !5199}
!5868 = !DILocation(line: 295, column: 56, scope: !5854)
!5869 = !DILocation(line: 296, column: 2, scope: !5842)
!5870 = !DILocation(line: 289, column: 49, scope: !5838)
!5871 = !DILocation(line: 289, column: 2, scope: !5838)
!5872 = distinct !{!5872, !5840, !5873, !5198, !5199}
!5873 = !DILocation(line: 296, column: 2, scope: !5835)
!5874 = !DILocation(line: 297, column: 1, scope: !5818)
!5875 = distinct !DISubprogram(name: "ttm_device_clear_lru_dma_mappings", scope: !3, file: !3, line: 257, type: !5876, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5878)
!5876 = !DISubroutineType(types: !5877)
!5877 = !{null, !191, !200}
!5878 = !{!5879, !5880, !5881, !5882, !5884, !5885, !5887}
!5879 = !DILocalVariable(name: "bdev", arg: 1, scope: !5875, file: !3, line: 257, type: !191)
!5880 = !DILocalVariable(name: "list", arg: 2, scope: !5875, file: !3, line: 258, type: !200)
!5881 = !DILocalVariable(name: "res", scope: !5875, file: !3, line: 260, type: !4417)
!5882 = !DILocalVariable(name: "head__", scope: !5883, file: !3, line: 263, type: !200)
!5883 = distinct !DILexicalBlock(scope: !5875, file: !3, line: 263, column: 16)
!5884 = !DILocalVariable(name: "pos__", scope: !5883, file: !3, line: 263, type: !200)
!5885 = !DILocalVariable(name: "__mptr", scope: !5886, file: !3, line: 263, type: !190)
!5886 = distinct !DILexicalBlock(scope: !5883, file: !3, line: 263, column: 16)
!5887 = !DILocalVariable(name: "bo", scope: !5888, file: !3, line: 264, type: !4214)
!5888 = distinct !DILexicalBlock(scope: !5875, file: !3, line: 263, column: 68)
!5889 = !DILocation(line: 257, column: 66, scope: !5875)
!5890 = !DILocation(line: 258, column: 30, scope: !5875)
!5891 = !DILocation(line: 260, column: 2, scope: !5875)
!5892 = !DILocation(line: 260, column: 23, scope: !5875)
!5893 = !DILocation(line: 262, column: 13, scope: !5875)
!5894 = !DILocation(line: 262, column: 19, scope: !5875)
!5895 = !DILocation(line: 262, column: 2, scope: !5875)
!5896 = !DILocation(line: 263, column: 2, scope: !5875)
!5897 = !DILocation(line: 263, column: 16, scope: !5883)
!5898 = !DILocation(line: 263, column: 16, scope: !5899)
!5899 = distinct !DILexicalBlock(scope: !5883, file: !3, line: 263, column: 16)
!5900 = !DILocation(line: 263, column: 16, scope: !5901)
!5901 = distinct !DILexicalBlock(scope: !5899, file: !3, line: 263, column: 16)
!5902 = !DILocation(line: 263, column: 16, scope: !5886)
!5903 = !DILocation(line: 263, column: 16, scope: !5875)
!5904 = !DILocation(line: 263, column: 14, scope: !5875)
!5905 = !DILocation(line: 264, column: 3, scope: !5888)
!5906 = !DILocation(line: 264, column: 29, scope: !5888)
!5907 = !DILocation(line: 264, column: 34, scope: !5888)
!5908 = !DILocation(line: 264, column: 39, scope: !5888)
!5909 = !DILocation(line: 267, column: 31, scope: !5910)
!5910 = distinct !DILexicalBlock(scope: !5888, file: !3, line: 267, column: 7)
!5911 = !DILocation(line: 267, column: 8, scope: !5910)
!5912 = !DILocation(line: 267, column: 7, scope: !5888)
!5913 = !DILocation(line: 268, column: 4, scope: !5910)
!5914 = distinct !{!5914, !5896, !5915, !5198, !5199}
!5915 = !DILocation(line: 278, column: 2, scope: !5875)
!5916 = !DILocation(line: 270, column: 18, scope: !5888)
!5917 = !DILocation(line: 270, column: 23, scope: !5888)
!5918 = !DILocation(line: 270, column: 3, scope: !5888)
!5919 = !DILocation(line: 271, column: 16, scope: !5888)
!5920 = !DILocation(line: 271, column: 22, scope: !5888)
!5921 = !DILocation(line: 271, column: 3, scope: !5888)
!5922 = !DILocation(line: 273, column: 7, scope: !5923)
!5923 = distinct !DILexicalBlock(scope: !5888, file: !3, line: 273, column: 7)
!5924 = !DILocation(line: 273, column: 11, scope: !5923)
!5925 = !DILocation(line: 273, column: 7, scope: !5888)
!5926 = !DILocation(line: 274, column: 22, scope: !5923)
!5927 = !DILocation(line: 274, column: 26, scope: !5923)
!5928 = !DILocation(line: 274, column: 32, scope: !5923)
!5929 = !DILocation(line: 274, column: 36, scope: !5923)
!5930 = !DILocation(line: 274, column: 4, scope: !5923)
!5931 = !DILocation(line: 276, column: 14, scope: !5888)
!5932 = !DILocation(line: 276, column: 3, scope: !5888)
!5933 = !DILocation(line: 277, column: 14, scope: !5888)
!5934 = !DILocation(line: 277, column: 20, scope: !5888)
!5935 = !DILocation(line: 277, column: 3, scope: !5888)
!5936 = !DILocation(line: 279, column: 15, scope: !5875)
!5937 = !DILocation(line: 279, column: 21, scope: !5875)
!5938 = !DILocation(line: 279, column: 2, scope: !5875)
!5939 = !DILocation(line: 280, column: 1, scope: !5875)
!5940 = distinct !DISubprogram(name: "__list_del_entry", scope: !5313, file: !5313, line: 213, type: !5625, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5941)
!5941 = !{!5942}
!5942 = !DILocalVariable(name: "entry", arg: 1, scope: !5940, file: !5313, line: 213, type: !200)
!5943 = !DILocation(line: 213, column: 55, scope: !5940)
!5944 = !DILocation(line: 215, column: 30, scope: !5945)
!5945 = distinct !DILexicalBlock(scope: !5940, file: !5313, line: 215, column: 6)
!5946 = !DILocation(line: 215, column: 7, scope: !5945)
!5947 = !DILocation(line: 215, column: 6, scope: !5940)
!5948 = !DILocation(line: 216, column: 3, scope: !5945)
!5949 = !DILocation(line: 218, column: 13, scope: !5940)
!5950 = !DILocation(line: 218, column: 20, scope: !5940)
!5951 = !DILocation(line: 218, column: 26, scope: !5940)
!5952 = !DILocation(line: 218, column: 33, scope: !5940)
!5953 = !DILocation(line: 218, column: 2, scope: !5940)
!5954 = !DILocation(line: 219, column: 1, scope: !5940)
!5955 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5313, file: !5313, line: 134, type: !5956, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5958)
!5956 = !DISubroutineType(types: !5957)
!5957 = !{!841, !200}
!5958 = !{!5959}
!5959 = !DILocalVariable(name: "entry", arg: 1, scope: !5955, file: !5313, line: 134, type: !200)
!5960 = !DILocation(line: 134, column: 61, scope: !5955)
!5961 = !DILocation(line: 136, column: 2, scope: !5955)
!5962 = distinct !DISubprogram(name: "__list_del", scope: !5313, file: !5313, line: 193, type: !5314, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5963)
!5963 = !{!5964, !5965}
!5964 = !DILocalVariable(name: "prev", arg: 1, scope: !5962, file: !5313, line: 193, type: !200)
!5965 = !DILocalVariable(name: "next", arg: 2, scope: !5962, file: !5313, line: 193, type: !200)
!5966 = !DILocation(line: 193, column: 50, scope: !5962)
!5967 = !DILocation(line: 193, column: 75, scope: !5962)
!5968 = !DILocation(line: 195, column: 15, scope: !5962)
!5969 = !DILocation(line: 195, column: 2, scope: !5962)
!5970 = !DILocation(line: 195, column: 8, scope: !5962)
!5971 = !DILocation(line: 195, column: 13, scope: !5962)
!5972 = !DILocation(line: 196, column: 2, scope: !5962)
!5973 = !DILocation(line: 196, column: 2, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5962, file: !5313, line: 196, column: 2)
!5975 = !DILocation(line: 196, column: 2, scope: !5976)
!5976 = distinct !DILexicalBlock(scope: !5974, file: !5313, line: 196, column: 2)
!5977 = !DILocation(line: 196, column: 2, scope: !5978)
!5978 = distinct !DILexicalBlock(scope: !5974, file: !5313, line: 196, column: 2)
!5979 = !DILocation(line: 197, column: 1, scope: !5962)
!5980 = !DISubprogram(name: "_raw_spin_lock", scope: !5981, file: !5981, line: 22, type: !5982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5981 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5982 = !DISubroutineType(types: !5983)
!5983 = !{null, !5617}
!5984 = !DISubprogram(name: "__compiletime_assert_294", scope: !193, file: !193, line: 278, type: !2091, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5985 = !DISubprogram(name: "_raw_spin_unlock", scope: !5981, file: !5981, line: 39, type: !5982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5986 = !DISubprogram(name: "si_meminfo", scope: !1339, file: !1339, line: 3175, type: !5987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5987 = !DISubroutineType(types: !5988)
!5988 = !{null, !5989}
!5989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5473, size: 64)
!5990 = !DISubprogram(name: "debugfs_create_dir", scope: !5991, file: !5991, line: 87, type: !5992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5991 = !DIFile(filename: "./include/linux/debugfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e6228d229e8266f5bff9327360d42a5")
!5992 = !DISubroutineType(types: !5993)
!5993 = !{!282, !406, !282}
!5994 = distinct !DISubprogram(name: "IS_ERR", scope: !5995, file: !5995, line: 59, type: !5996, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5998)
!5995 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5996 = !DISubroutineType(types: !5997)
!5997 = !{!841, !1255}
!5998 = !{!5999}
!5999 = !DILocalVariable(name: "ptr", arg: 1, scope: !5994, file: !5995, line: 59, type: !1255)
!6000 = !DILocation(line: 59, column: 60, scope: !5994)
!6001 = !DILocation(line: 61, column: 9, scope: !5994)
!6002 = !DILocation(line: 61, column: 2, scope: !5994)
!6003 = !DISubprogram(name: "ttm_pool_mgr_init", scope: !4614, file: !4614, line: 91, type: !6004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6004 = !DISubroutineType(types: !6005)
!6005 = !{!126, !221}
!6006 = !DISubprogram(name: "ttm_tt_mgr_init", scope: !213, file: !213, line: 228, type: !6007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6007 = !DISubroutineType(types: !6008)
!6008 = !{null, !221, !221}
!6009 = !DISubprogram(name: "alloc_pages", scope: !6010, file: !6010, line: 264, type: !6011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6010 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9839e6e1390b3a0e2df74dd95101fbc5")
!6011 = !DISubroutineType(types: !6012)
!6012 = !{!217, !1371, !7}
!6013 = distinct !DISubprogram(name: "atomic_set", scope: !6014, file: !6014, line: 65, type: !6015, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6018)
!6014 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6015 = !DISubroutineType(types: !6016)
!6016 = !{null, !6017, !126}
!6017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!6018 = !{!6019, !6020}
!6019 = !DILocalVariable(name: "v", arg: 1, scope: !6013, file: !6014, line: 65, type: !6017)
!6020 = !DILocalVariable(name: "i", arg: 2, scope: !6013, file: !6014, line: 65, type: !126)
!6021 = !DILocation(line: 65, column: 22, scope: !6013)
!6022 = !DILocation(line: 65, column: 29, scope: !6013)
!6023 = !DILocation(line: 67, column: 26, scope: !6013)
!6024 = !DILocation(line: 67, column: 2, scope: !6013)
!6025 = !DILocation(line: 68, column: 17, scope: !6013)
!6026 = !DILocation(line: 68, column: 20, scope: !6013)
!6027 = !DILocation(line: 68, column: 2, scope: !6013)
!6028 = !DILocation(line: 69, column: 1, scope: !6013)
!6029 = !DISubprogram(name: "debugfs_create_atomic_t", scope: !5991, file: !5991, line: 137, type: !6030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6030 = !DISubroutineType(types: !6031)
!6031 = !{null, !406, !248, !282, !6017}
!6032 = !DISubprogram(name: "debugfs_remove", scope: !5991, file: !5991, line: 97, type: !421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6033 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6034, file: !6034, line: 80, type: !6035, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6040)
!6034 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6035 = !DISubroutineType(types: !6036)
!6036 = !{null, !6037, !579}
!6037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6038, size: 64)
!6038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6039)
!6039 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6040 = !{!6041, !6042}
!6041 = !DILocalVariable(name: "v", arg: 1, scope: !6033, file: !6034, line: 80, type: !6037)
!6042 = !DILocalVariable(name: "size", arg: 2, scope: !6033, file: !6034, line: 80, type: !579)
!6043 = !DILocation(line: 80, column: 74, scope: !6033)
!6044 = !DILocation(line: 80, column: 84, scope: !6033)
!6045 = !DILocation(line: 82, column: 20, scope: !6033)
!6046 = !DILocation(line: 82, column: 23, scope: !6033)
!6047 = !DILocation(line: 82, column: 2, scope: !6033)
!6048 = !DILocation(line: 83, column: 2, scope: !6033)
!6049 = !DILocation(line: 84, column: 1, scope: !6033)
!6050 = distinct !DISubprogram(name: "raw_atomic_set", scope: !6051, file: !6051, line: 488, type: !6015, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6052)
!6051 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6052 = !{!6053, !6054}
!6053 = !DILocalVariable(name: "v", arg: 1, scope: !6050, file: !6051, line: 488, type: !6017)
!6054 = !DILocalVariable(name: "i", arg: 2, scope: !6050, file: !6051, line: 488, type: !126)
!6055 = !DILocation(line: 488, column: 26, scope: !6050)
!6056 = !DILocation(line: 488, column: 33, scope: !6050)
!6057 = !DILocation(line: 490, column: 18, scope: !6050)
!6058 = !DILocation(line: 490, column: 21, scope: !6050)
!6059 = !DILocation(line: 490, column: 2, scope: !6050)
!6060 = !DILocation(line: 491, column: 1, scope: !6050)
!6061 = distinct !DISubprogram(name: "kasan_check_write", scope: !6062, file: !6062, line: 44, type: !6063, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6065)
!6062 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6063 = !DISubroutineType(types: !6064)
!6064 = !{!841, !6037, !7}
!6065 = !{!6066, !6067}
!6066 = !DILocalVariable(name: "p", arg: 1, scope: !6061, file: !6062, line: 44, type: !6037)
!6067 = !DILocalVariable(name: "size", arg: 2, scope: !6061, file: !6062, line: 44, type: !7)
!6068 = !DILocation(line: 44, column: 59, scope: !6061)
!6069 = !DILocation(line: 44, column: 75, scope: !6061)
!6070 = !DILocation(line: 46, column: 2, scope: !6061)
!6071 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6072, file: !6072, line: 229, type: !6073, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6075)
!6072 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6073 = !DISubroutineType(types: !6074)
!6074 = !{null, !6037, !579, !126}
!6075 = !{!6076, !6077, !6078}
!6076 = !DILocalVariable(name: "ptr", arg: 1, scope: !6071, file: !6072, line: 229, type: !6037)
!6077 = !DILocalVariable(name: "size", arg: 2, scope: !6071, file: !6072, line: 229, type: !579)
!6078 = !DILocalVariable(name: "type", arg: 3, scope: !6071, file: !6072, line: 230, type: !126)
!6079 = !DILocation(line: 229, column: 60, scope: !6071)
!6080 = !DILocation(line: 229, column: 72, scope: !6071)
!6081 = !DILocation(line: 230, column: 15, scope: !6071)
!6082 = !DILocation(line: 230, column: 23, scope: !6071)
!6083 = distinct !DISubprogram(name: "arch_atomic_set", scope: !6084, file: !6084, line: 26, type: !6015, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6085)
!6084 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6085 = !{!6086, !6087}
!6086 = !DILocalVariable(name: "v", arg: 1, scope: !6083, file: !6084, line: 26, type: !6017)
!6087 = !DILocalVariable(name: "i", arg: 2, scope: !6083, file: !6084, line: 26, type: !126)
!6088 = !DILocation(line: 26, column: 55, scope: !6083)
!6089 = !DILocation(line: 26, column: 62, scope: !6083)
!6090 = !DILocation(line: 28, column: 2, scope: !6083)
!6091 = !DILocation(line: 28, column: 2, scope: !6092)
!6092 = distinct !DILexicalBlock(scope: !6083, file: !6084, line: 28, column: 2)
!6093 = !DILocation(line: 29, column: 1, scope: !6083)
!6094 = !DISubprogram(name: "ttm_pool_mgr_fini", scope: !4614, file: !4614, line: 92, type: !2091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6095 = !DISubprogram(name: "__free_pages", scope: !6010, file: !6010, line: 302, type: !6096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6096 = !DISubroutineType(types: !6097)
!6097 = !{null, !217, !7}
!6098 = distinct !DISubprogram(name: "__list_add", scope: !5313, file: !5313, line: 146, type: !6099, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6101)
!6099 = !DISubroutineType(types: !6100)
!6100 = !{null, !200, !200, !200}
!6101 = !{!6102, !6103, !6104}
!6102 = !DILocalVariable(name: "new", arg: 1, scope: !6098, file: !5313, line: 146, type: !200)
!6103 = !DILocalVariable(name: "prev", arg: 2, scope: !6098, file: !5313, line: 147, type: !200)
!6104 = !DILocalVariable(name: "next", arg: 3, scope: !6098, file: !5313, line: 148, type: !200)
!6105 = !DILocation(line: 146, column: 49, scope: !6098)
!6106 = !DILocation(line: 147, column: 28, scope: !6098)
!6107 = !DILocation(line: 148, column: 28, scope: !6098)
!6108 = !DILocation(line: 150, column: 24, scope: !6109)
!6109 = distinct !DILexicalBlock(scope: !6098, file: !5313, line: 150, column: 6)
!6110 = !DILocation(line: 150, column: 29, scope: !6109)
!6111 = !DILocation(line: 150, column: 35, scope: !6109)
!6112 = !DILocation(line: 150, column: 7, scope: !6109)
!6113 = !DILocation(line: 150, column: 6, scope: !6098)
!6114 = !DILocation(line: 151, column: 3, scope: !6109)
!6115 = !DILocation(line: 153, column: 15, scope: !6098)
!6116 = !DILocation(line: 153, column: 2, scope: !6098)
!6117 = !DILocation(line: 153, column: 8, scope: !6098)
!6118 = !DILocation(line: 153, column: 13, scope: !6098)
!6119 = !DILocation(line: 154, column: 14, scope: !6098)
!6120 = !DILocation(line: 154, column: 2, scope: !6098)
!6121 = !DILocation(line: 154, column: 7, scope: !6098)
!6122 = !DILocation(line: 154, column: 12, scope: !6098)
!6123 = !DILocation(line: 155, column: 14, scope: !6098)
!6124 = !DILocation(line: 155, column: 2, scope: !6098)
!6125 = !DILocation(line: 155, column: 7, scope: !6098)
!6126 = !DILocation(line: 155, column: 12, scope: !6098)
!6127 = !DILocation(line: 156, column: 2, scope: !6098)
!6128 = !DILocation(line: 156, column: 2, scope: !6129)
!6129 = distinct !DILexicalBlock(scope: !6098, file: !5313, line: 156, column: 2)
!6130 = !DILocation(line: 156, column: 2, scope: !6131)
!6131 = distinct !DILexicalBlock(scope: !6129, file: !5313, line: 156, column: 2)
!6132 = !DILocation(line: 156, column: 2, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !6129, file: !5313, line: 156, column: 2)
!6134 = !DILocation(line: 157, column: 1, scope: !6098)
!6135 = distinct !DISubprogram(name: "__list_add_valid", scope: !5313, file: !5313, line: 128, type: !6136, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6138)
!6136 = !DISubroutineType(types: !6137)
!6137 = !{!841, !200, !200, !200}
!6138 = !{!6139, !6140, !6141}
!6139 = !DILocalVariable(name: "new", arg: 1, scope: !6135, file: !5313, line: 128, type: !200)
!6140 = !DILocalVariable(name: "prev", arg: 2, scope: !6135, file: !5313, line: 129, type: !200)
!6141 = !DILocalVariable(name: "next", arg: 3, scope: !6135, file: !5313, line: 130, type: !200)
!6142 = !DILocation(line: 128, column: 55, scope: !6135)
!6143 = !DILocation(line: 129, column: 23, scope: !6135)
!6144 = !DILocation(line: 130, column: 23, scope: !6135)
!6145 = !DILocation(line: 132, column: 2, scope: !6135)
!6146 = !DISubprogram(name: "__compiletime_assert_295", scope: !193, file: !193, line: 286, type: !2091, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6147 = distinct !DISubprogram(name: "ttm_bo_get_unless_zero", scope: !99, file: !99, line: 209, type: !6148, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6150)
!6148 = !DISubroutineType(types: !6149)
!6149 = !{!4214, !4214}
!6150 = !{!6151}
!6151 = !DILocalVariable(name: "bo", arg: 1, scope: !6147, file: !99, line: 209, type: !4214)
!6152 = !DILocation(line: 209, column: 50, scope: !6147)
!6153 = !DILocation(line: 211, column: 29, scope: !6154)
!6154 = distinct !DILexicalBlock(scope: !6147, file: !99, line: 211, column: 6)
!6155 = !DILocation(line: 211, column: 33, scope: !6154)
!6156 = !DILocation(line: 211, column: 7, scope: !6154)
!6157 = !DILocation(line: 211, column: 6, scope: !6147)
!6158 = !DILocation(line: 212, column: 3, scope: !6154)
!6159 = !DILocation(line: 213, column: 9, scope: !6147)
!6160 = !DILocation(line: 213, column: 2, scope: !6147)
!6161 = !DILocation(line: 214, column: 1, scope: !6147)
!6162 = distinct !DISubprogram(name: "list_del_init", scope: !5313, file: !5313, line: 285, type: !5625, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6163)
!6163 = !{!6164}
!6164 = !DILocalVariable(name: "entry", arg: 1, scope: !6162, file: !5313, line: 285, type: !200)
!6165 = !DILocation(line: 285, column: 52, scope: !6162)
!6166 = !DILocation(line: 287, column: 19, scope: !6162)
!6167 = !DILocation(line: 287, column: 2, scope: !6162)
!6168 = !DILocation(line: 288, column: 17, scope: !6162)
!6169 = !DILocation(line: 288, column: 2, scope: !6162)
!6170 = !DILocation(line: 289, column: 1, scope: !6162)
!6171 = !DISubprogram(name: "ttm_tt_unpopulate", scope: !213, file: !213, line: 213, type: !4468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6172 = !DISubprogram(name: "ttm_bo_put", scope: !99, file: !99, line: 355, type: !4413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6173 = distinct !DISubprogram(name: "kref_get_unless_zero", scope: !1725, file: !1725, line: 109, type: !6174, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6177)
!6174 = !DISubroutineType(types: !6175)
!6175 = !{!126, !6176}
!6176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!6177 = !{!6178}
!6178 = !DILocalVariable(name: "kref", arg: 1, scope: !6173, file: !1725, line: 109, type: !6176)
!6179 = !DILocation(line: 109, column: 66, scope: !6173)
!6180 = !DILocation(line: 111, column: 32, scope: !6173)
!6181 = !DILocation(line: 111, column: 38, scope: !6173)
!6182 = !DILocation(line: 111, column: 9, scope: !6173)
!6183 = !DILocation(line: 111, column: 2, scope: !6173)
!6184 = distinct !DISubprogram(name: "refcount_inc_not_zero", scope: !182, file: !182, line: 243, type: !6185, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6188)
!6185 = !DISubroutineType(types: !6186)
!6186 = !{!841, !6187}
!6187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!6188 = !{!6189}
!6189 = !DILocalVariable(name: "r", arg: 1, scope: !6184, file: !182, line: 243, type: !6187)
!6190 = !DILocation(line: 243, column: 67, scope: !6184)
!6191 = !DILocation(line: 245, column: 33, scope: !6184)
!6192 = !DILocation(line: 245, column: 9, scope: !6184)
!6193 = !DILocation(line: 245, column: 2, scope: !6184)
!6194 = distinct !DISubprogram(name: "__refcount_inc_not_zero", scope: !182, file: !182, line: 225, type: !6195, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6197)
!6195 = !DISubroutineType(types: !6196)
!6196 = !{!841, !6187, !1886}
!6197 = !{!6198, !6199}
!6198 = !DILocalVariable(name: "r", arg: 1, scope: !6194, file: !182, line: 225, type: !6187)
!6199 = !DILocalVariable(name: "oldp", arg: 2, scope: !6194, file: !182, line: 225, type: !1886)
!6200 = !DILocation(line: 225, column: 69, scope: !6194)
!6201 = !DILocation(line: 225, column: 77, scope: !6194)
!6202 = !DILocation(line: 227, column: 36, scope: !6194)
!6203 = !DILocation(line: 227, column: 39, scope: !6194)
!6204 = !DILocation(line: 227, column: 9, scope: !6194)
!6205 = !DILocation(line: 227, column: 2, scope: !6194)
!6206 = distinct !DISubprogram(name: "__refcount_add_not_zero", scope: !182, file: !182, line: 150, type: !6207, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6209)
!6207 = !DISubroutineType(types: !6208)
!6208 = !{!841, !126, !6187, !1886}
!6209 = !{!6210, !6211, !6212, !6213}
!6210 = !DILocalVariable(name: "i", arg: 1, scope: !6206, file: !182, line: 150, type: !126)
!6211 = !DILocalVariable(name: "r", arg: 2, scope: !6206, file: !182, line: 150, type: !6187)
!6212 = !DILocalVariable(name: "oldp", arg: 3, scope: !6206, file: !182, line: 150, type: !1886)
!6213 = !DILocalVariable(name: "old", scope: !6206, file: !182, line: 152, type: !126)
!6214 = !DILocation(line: 150, column: 61, scope: !6206)
!6215 = !DILocation(line: 150, column: 76, scope: !6206)
!6216 = !DILocation(line: 150, column: 84, scope: !6206)
!6217 = !DILocation(line: 152, column: 2, scope: !6206)
!6218 = !DILocation(line: 152, column: 6, scope: !6206)
!6219 = !DILocation(line: 152, column: 26, scope: !6206)
!6220 = !DILocation(line: 152, column: 12, scope: !6206)
!6221 = !DILocation(line: 154, column: 2, scope: !6206)
!6222 = !DILocation(line: 155, column: 8, scope: !6223)
!6223 = distinct !DILexicalBlock(scope: !6224, file: !182, line: 155, column: 7)
!6224 = distinct !DILexicalBlock(scope: !6206, file: !182, line: 154, column: 5)
!6225 = !DILocation(line: 155, column: 7, scope: !6224)
!6226 = !DILocation(line: 156, column: 4, scope: !6223)
!6227 = !DILocation(line: 157, column: 2, scope: !6224)
!6228 = !DILocation(line: 157, column: 40, scope: !6206)
!6229 = !DILocation(line: 157, column: 43, scope: !6206)
!6230 = !DILocation(line: 157, column: 55, scope: !6206)
!6231 = !DILocation(line: 157, column: 61, scope: !6206)
!6232 = !DILocation(line: 157, column: 59, scope: !6206)
!6233 = !DILocation(line: 157, column: 12, scope: !6206)
!6234 = !DILocation(line: 157, column: 11, scope: !6206)
!6235 = distinct !{!6235, !6221, !6236, !5198, !5199}
!6236 = !DILocation(line: 157, column: 63, scope: !6206)
!6237 = !DILocation(line: 159, column: 6, scope: !6238)
!6238 = distinct !DILexicalBlock(scope: !6206, file: !182, line: 159, column: 6)
!6239 = !DILocation(line: 159, column: 6, scope: !6206)
!6240 = !DILocation(line: 160, column: 11, scope: !6238)
!6241 = !DILocation(line: 160, column: 4, scope: !6238)
!6242 = !DILocation(line: 160, column: 9, scope: !6238)
!6243 = !DILocation(line: 160, column: 3, scope: !6238)
!6244 = !DILocation(line: 162, column: 6, scope: !6245)
!6245 = distinct !DILexicalBlock(scope: !6206, file: !182, line: 162, column: 6)
!6246 = !DILocation(line: 162, column: 6, scope: !6206)
!6247 = !DILocation(line: 163, column: 26, scope: !6245)
!6248 = !DILocation(line: 163, column: 3, scope: !6245)
!6249 = !DILocation(line: 165, column: 9, scope: !6206)
!6250 = !DILocation(line: 166, column: 1, scope: !6206)
!6251 = !DILocation(line: 165, column: 2, scope: !6206)
!6252 = distinct !DISubprogram(name: "refcount_read", scope: !182, file: !182, line: 145, type: !6253, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6257)
!6253 = !DISubroutineType(types: !6254)
!6254 = !{!7, !6255}
!6255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6256, size: 64)
!6256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !689)
!6257 = !{!6258}
!6258 = !DILocalVariable(name: "r", arg: 1, scope: !6252, file: !182, line: 145, type: !6255)
!6259 = !DILocation(line: 145, column: 60, scope: !6252)
!6260 = !DILocation(line: 147, column: 22, scope: !6252)
!6261 = !DILocation(line: 147, column: 25, scope: !6252)
!6262 = !DILocation(line: 147, column: 9, scope: !6252)
!6263 = !DILocation(line: 147, column: 2, scope: !6252)
!6264 = distinct !DISubprogram(name: "atomic_try_cmpxchg_relaxed", scope: !6014, file: !6014, line: 1335, type: !6265, scopeLine: 1336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6267)
!6265 = !DISubroutineType(types: !6266)
!6266 = !{!841, !6017, !1886, !126}
!6267 = !{!6268, !6269, !6270}
!6268 = !DILocalVariable(name: "v", arg: 1, scope: !6264, file: !6014, line: 1335, type: !6017)
!6269 = !DILocalVariable(name: "old", arg: 2, scope: !6264, file: !6014, line: 1335, type: !1886)
!6270 = !DILocalVariable(name: "new", arg: 3, scope: !6264, file: !6014, line: 1335, type: !126)
!6271 = !DILocation(line: 1335, column: 38, scope: !6264)
!6272 = !DILocation(line: 1335, column: 46, scope: !6264)
!6273 = !DILocation(line: 1335, column: 55, scope: !6264)
!6274 = !DILocation(line: 1337, column: 31, scope: !6264)
!6275 = !DILocation(line: 1337, column: 2, scope: !6264)
!6276 = !DILocation(line: 1338, column: 31, scope: !6264)
!6277 = !DILocation(line: 1338, column: 2, scope: !6264)
!6278 = !DILocation(line: 1339, column: 40, scope: !6264)
!6279 = !DILocation(line: 1339, column: 43, scope: !6264)
!6280 = !DILocation(line: 1339, column: 48, scope: !6264)
!6281 = !DILocation(line: 1339, column: 9, scope: !6264)
!6282 = !DILocation(line: 1339, column: 2, scope: !6264)
!6283 = !DISubprogram(name: "refcount_warn_saturate", scope: !182, file: !182, line: 127, type: !6284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6284 = !DISubroutineType(types: !6285)
!6285 = !{null, !6187, !181}
!6286 = distinct !DISubprogram(name: "atomic_read", scope: !6014, file: !6014, line: 30, type: !6287, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6291)
!6287 = !DISubroutineType(types: !6288)
!6288 = !{!126, !6289}
!6289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6290, size: 64)
!6290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!6291 = !{!6292}
!6292 = !DILocalVariable(name: "v", arg: 1, scope: !6286, file: !6014, line: 30, type: !6289)
!6293 = !DILocation(line: 30, column: 29, scope: !6286)
!6294 = !DILocation(line: 32, column: 25, scope: !6286)
!6295 = !DILocation(line: 32, column: 2, scope: !6286)
!6296 = !DILocation(line: 33, column: 25, scope: !6286)
!6297 = !DILocation(line: 33, column: 9, scope: !6286)
!6298 = !DILocation(line: 33, column: 2, scope: !6286)
!6299 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6034, file: !6034, line: 66, type: !6035, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6300)
!6300 = !{!6301, !6302}
!6301 = !DILocalVariable(name: "v", arg: 1, scope: !6299, file: !6034, line: 66, type: !6037)
!6302 = !DILocalVariable(name: "size", arg: 2, scope: !6299, file: !6034, line: 66, type: !579)
!6303 = !DILocation(line: 66, column: 73, scope: !6299)
!6304 = !DILocation(line: 66, column: 83, scope: !6299)
!6305 = !DILocation(line: 68, column: 19, scope: !6299)
!6306 = !DILocation(line: 68, column: 22, scope: !6299)
!6307 = !DILocation(line: 68, column: 2, scope: !6299)
!6308 = !DILocation(line: 69, column: 2, scope: !6299)
!6309 = !DILocation(line: 70, column: 1, scope: !6299)
!6310 = distinct !DISubprogram(name: "raw_atomic_read", scope: !6051, file: !6051, line: 442, type: !6287, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6311)
!6311 = !{!6312}
!6312 = !DILocalVariable(name: "v", arg: 1, scope: !6310, file: !6051, line: 442, type: !6289)
!6313 = !DILocation(line: 442, column: 33, scope: !6310)
!6314 = !DILocation(line: 444, column: 26, scope: !6310)
!6315 = !DILocation(line: 444, column: 9, scope: !6310)
!6316 = !DILocation(line: 444, column: 2, scope: !6310)
!6317 = distinct !DISubprogram(name: "kasan_check_read", scope: !6062, file: !6062, line: 40, type: !6063, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6318)
!6318 = !{!6319, !6320}
!6319 = !DILocalVariable(name: "p", arg: 1, scope: !6317, file: !6062, line: 40, type: !6037)
!6320 = !DILocalVariable(name: "size", arg: 2, scope: !6317, file: !6062, line: 40, type: !7)
!6321 = !DILocation(line: 40, column: 58, scope: !6317)
!6322 = !DILocation(line: 40, column: 74, scope: !6317)
!6323 = !DILocation(line: 42, column: 2, scope: !6317)
!6324 = distinct !DISubprogram(name: "arch_atomic_read", scope: !6084, file: !6084, line: 17, type: !6287, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6325)
!6325 = !{!6326}
!6326 = !DILocalVariable(name: "v", arg: 1, scope: !6324, file: !6084, line: 17, type: !6289)
!6327 = !DILocation(line: 17, column: 61, scope: !6324)
!6328 = !DILocation(line: 23, column: 9, scope: !6324)
!6329 = !DILocation(line: 23, column: 2, scope: !6324)
!6330 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6034, file: !6034, line: 94, type: !6035, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6331)
!6331 = !{!6332, !6333}
!6332 = !DILocalVariable(name: "v", arg: 1, scope: !6330, file: !6034, line: 94, type: !6037)
!6333 = !DILocalVariable(name: "size", arg: 2, scope: !6330, file: !6034, line: 94, type: !579)
!6334 = !DILocation(line: 94, column: 79, scope: !6330)
!6335 = !DILocation(line: 94, column: 89, scope: !6330)
!6336 = !DILocation(line: 96, column: 20, scope: !6330)
!6337 = !DILocation(line: 96, column: 23, scope: !6330)
!6338 = !DILocation(line: 96, column: 2, scope: !6330)
!6339 = !DILocation(line: 97, column: 2, scope: !6330)
!6340 = !DILocation(line: 98, column: 1, scope: !6330)
!6341 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg_relaxed", scope: !6051, file: !6051, line: 2207, type: !6265, scopeLine: 2208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6342)
!6342 = !{!6343, !6344, !6345}
!6343 = !DILocalVariable(name: "v", arg: 1, scope: !6341, file: !6051, line: 2207, type: !6017)
!6344 = !DILocalVariable(name: "old", arg: 2, scope: !6341, file: !6051, line: 2207, type: !1886)
!6345 = !DILocalVariable(name: "new", arg: 3, scope: !6341, file: !6051, line: 2207, type: !126)
!6346 = !DILocation(line: 2207, column: 42, scope: !6341)
!6347 = !DILocation(line: 2207, column: 50, scope: !6341)
!6348 = !DILocation(line: 2207, column: 59, scope: !6341)
!6349 = !DILocation(line: 2212, column: 33, scope: !6341)
!6350 = !DILocation(line: 2212, column: 36, scope: !6341)
!6351 = !DILocation(line: 2212, column: 41, scope: !6341)
!6352 = !DILocation(line: 2212, column: 9, scope: !6341)
!6353 = !DILocation(line: 2212, column: 2, scope: !6341)
!6354 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !6084, file: !6084, line: 113, type: !6265, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6355)
!6355 = !{!6356, !6357, !6358, !6359, !6361, !6362, !6363, !6364}
!6356 = !DILocalVariable(name: "v", arg: 1, scope: !6354, file: !6084, line: 113, type: !6017)
!6357 = !DILocalVariable(name: "old", arg: 2, scope: !6354, file: !6084, line: 113, type: !1886)
!6358 = !DILocalVariable(name: "new", arg: 3, scope: !6354, file: !6084, line: 113, type: !126)
!6359 = !DILocalVariable(name: "success", scope: !6360, file: !6084, line: 115, type: !841)
!6360 = distinct !DILexicalBlock(scope: !6354, file: !6084, line: 115, column: 9)
!6361 = !DILocalVariable(name: "_old", scope: !6360, file: !6084, line: 115, type: !1886)
!6362 = !DILocalVariable(name: "__old", scope: !6360, file: !6084, line: 115, type: !126)
!6363 = !DILocalVariable(name: "__new", scope: !6360, file: !6084, line: 115, type: !126)
!6364 = !DILocalVariable(name: "__ptr", scope: !6360, file: !6084, line: 115, type: !5098)
!6365 = !DILocation(line: 113, column: 63, scope: !6354)
!6366 = !DILocation(line: 113, column: 71, scope: !6354)
!6367 = !DILocation(line: 113, column: 80, scope: !6354)
!6368 = !DILocation(line: 115, column: 9, scope: !6360)
!6369 = !{i64 2149047389, i64 2149047428, i64 2149047449, i64 2149047486, i64 2149047509, i64 2149047518, i64 2149047816}
!6370 = !DILocation(line: 115, column: 9, scope: !6371)
!6371 = distinct !DILexicalBlock(scope: !6360, file: !6084, line: 115, column: 9)
!6372 = !DILocation(line: 115, column: 9, scope: !6354)
!6373 = !DILocation(line: 115, column: 2, scope: !6354)
