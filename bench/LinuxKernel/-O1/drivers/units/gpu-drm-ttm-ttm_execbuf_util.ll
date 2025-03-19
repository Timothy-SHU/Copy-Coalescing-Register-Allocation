; ModuleID = 'drivers/gpu/drm/ttm/ttm_execbuf_util.c'
source_filename = "drivers/gpu/drm/ttm/ttm_execbuf_util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_eu_backoff_reservation: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_eu_backoff_reservation ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_eu_reserve_buffers: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_eu_reserve_buffers ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_eu_fence_buffer_objects: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_eu_fence_buffer_objects ; .previous"

%struct.ww_class = type { %struct.atomic64_t, %struct.lock_class_key, %struct.lock_class_key, ptr, ptr, i32 }
%struct.atomic64_t = type { i64 }
%struct.lock_class_key = type {}
%struct.pcpu_hot = type { %union.anon.17 }
%union.anon.17 = type { %struct.anon.18, [16 x i8] }
%struct.anon.18 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.list_head = type { ptr, ptr }
%struct.ttm_validate_buffer = type { %struct.list_head, ptr, i32 }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, ptr, i32, i32, %struct.work_struct, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i64, i32, ptr, ptr, ptr, %struct.dma_resv, %struct.anon.15, ptr, %struct.list_head, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.13, %struct.qspinlock }
%union.anon.13 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.drm_mm_node = type { i64, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.15 = type { %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.ttm_resource_manager = type { i8, i8, ptr, i64, ptr, %struct.spinlock, ptr, [4 x %struct.list_head], i64 }
%struct.ttm_pool = type { ptr, i32, i8, i8, [3 x %struct.anon.16] }
%struct.anon.16 = type { [11 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.ww_acquire_ctx = type { ptr, i64, i32, i16, i16 }

@__UNIQUE_ID___addressable_ttm_eu_backoff_reservation296 = internal global ptr @ttm_eu_backoff_reservation, section ".discard.addressable", align 8, !dbg !0
@reservation_ww_class = external dso_local global %struct.ww_class, align 8
@__UNIQUE_ID___addressable_ttm_eu_reserve_buffers299 = internal global ptr @ttm_eu_reserve_buffers, section ".discard.addressable", align 8, !dbg !5037
@__UNIQUE_ID___addressable_ttm_eu_fence_buffer_objects300 = internal global ptr @ttm_eu_fence_buffer_objects, section ".discard.addressable", align 8, !dbg !5039
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str = private unnamed_addr constant [25 x i8] c"include/drm/ttm/ttm_bo.h\00", align 1, !dbg !5041
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_ttm_eu_backoff_reservation296, ptr @__UNIQUE_ID___addressable_ttm_eu_reserve_buffers299, ptr @__UNIQUE_ID___addressable_ttm_eu_fence_buffer_objects300], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ttm_eu_backoff_reservation(ptr noundef %ticket, ptr noundef %list) #0 align 16 !dbg !5055 {
entry:
  %ticket.addr = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %bo = alloca ptr, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %ticket, ptr %ticket.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ticket.addr, metadata !5059, metadata !DIExpression()), !dbg !5070
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5060, metadata !DIExpression()), !dbg !5071
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #7, !dbg !5072
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !5061, metadata !DIExpression()), !dbg !5073
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5074
  %call = call i32 @list_empty(ptr noundef %0) #8, !dbg !5076
  %tobool = icmp ne i32 %call, 0, !dbg !5076
  br i1 %tobool, label %if.then, label %if.end, !dbg !5077

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5078

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !5079
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5062, metadata !DIExpression()), !dbg !5079
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5079
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5079
  %2 = load ptr, ptr %next, align 8, !dbg !5079
  store ptr %2, ptr %__mptr, align 8, !dbg !5079
  %3 = load ptr, ptr %__mptr, align 8, !dbg !5079
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !5079
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5079
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !5080
  %4 = load ptr, ptr %tmp, align 8, !dbg !5079
  store ptr %4, ptr %entry1, align 8, !dbg !5080
  br label %for.cond, !dbg !5080

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load ptr, ptr %entry1, align 8, !dbg !5081
  %head = getelementptr inbounds %struct.ttm_validate_buffer, ptr %5, i32 0, i32 0, !dbg !5081
  %6 = load ptr, ptr %list.addr, align 8, !dbg !5081
  %cmp = icmp eq ptr %head, %6, !dbg !5081
  %lnot = xor i1 %cmp, true, !dbg !5081
  br i1 %lnot, label %for.body, label %for.end, !dbg !5080

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %bo) #7, !dbg !5082
  call void @llvm.dbg.declare(metadata ptr %bo, metadata !5065, metadata !DIExpression()), !dbg !5083
  %7 = load ptr, ptr %entry1, align 8, !dbg !5084
  %bo2 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %7, i32 0, i32 1, !dbg !5085
  %8 = load ptr, ptr %bo2, align 8, !dbg !5085
  store ptr %8, ptr %bo, align 8, !dbg !5083
  %9 = load ptr, ptr %bo, align 8, !dbg !5086
  call void @ttm_bo_move_to_lru_tail_unlocked(ptr noundef %9) #8, !dbg !5087
  %10 = load ptr, ptr %bo, align 8, !dbg !5088
  %base = getelementptr inbounds %struct.ttm_buffer_object, ptr %10, i32 0, i32 0, !dbg !5089
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %base, i32 0, i32 9, !dbg !5090
  %11 = load ptr, ptr %resv, align 8, !dbg !5090
  call void @dma_resv_unlock(ptr noundef %11) #8, !dbg !5091
  call void @llvm.lifetime.end.p0(i64 8, ptr %bo) #7, !dbg !5092
  br label %for.inc, !dbg !5093

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #7, !dbg !5094
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !5068, metadata !DIExpression()), !dbg !5094
  %12 = load ptr, ptr %entry1, align 8, !dbg !5094
  %head4 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %12, i32 0, i32 0, !dbg !5094
  %next5 = getelementptr inbounds %struct.list_head, ptr %head4, i32 0, i32 0, !dbg !5094
  %13 = load ptr, ptr %next5, align 8, !dbg !5094
  store ptr %13, ptr %__mptr3, align 8, !dbg !5094
  %14 = load ptr, ptr %__mptr3, align 8, !dbg !5094
  %add.ptr7 = getelementptr i8, ptr %14, i64 0, !dbg !5094
  store ptr %add.ptr7, ptr %tmp6, align 8, !dbg !5094
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #7, !dbg !5081
  %15 = load ptr, ptr %tmp6, align 8, !dbg !5094
  store ptr %15, ptr %entry1, align 8, !dbg !5081
  br label %for.cond, !dbg !5081, !llvm.loop !5095

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %ticket.addr, align 8, !dbg !5099
  %tobool8 = icmp ne ptr %16, null, !dbg !5099
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5101

if.then9:                                         ; preds = %for.end
  %17 = load ptr, ptr %ticket.addr, align 8, !dbg !5102
  call void @ww_acquire_fini(ptr noundef %17) #8, !dbg !5103
  br label %if.end10, !dbg !5103

if.end10:                                         ; preds = %if.then9, %for.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5104
  br label %cleanup, !dbg !5104

cleanup:                                          ; preds = %if.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #7, !dbg !5104
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5104

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #3 align 16 !dbg !5105 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5112, metadata !DIExpression()), !dbg !5113
  br label %do.body, !dbg !5114

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5116

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5114
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !5114
  %1 = load volatile ptr, ptr %next, align 8, !dbg !5114
  store ptr %1, ptr %tmp, align 8, !dbg !5116
  %2 = load ptr, ptr %tmp, align 8, !dbg !5114
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5118
  %cmp = icmp eq ptr %2, %3, !dbg !5119
  %conv = zext i1 %cmp to i32, !dbg !5119
  ret i32 %conv, !dbg !5120
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_bo_move_to_lru_tail_unlocked(ptr noundef %bo) #3 align 16 !dbg !5121 {
entry:
  %bo.addr = alloca ptr, align 8
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !5123, metadata !DIExpression()), !dbg !5124
  %0 = load ptr, ptr %bo.addr, align 8, !dbg !5125
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1, !dbg !5126
  %1 = load ptr, ptr %bdev, align 8, !dbg !5126
  %lru_lock = getelementptr inbounds %struct.ttm_device, ptr %1, i32 0, i32 6, !dbg !5127
  call void @spin_lock(ptr noundef %lru_lock) #8, !dbg !5128
  %2 = load ptr, ptr %bo.addr, align 8, !dbg !5129
  call void @ttm_bo_move_to_lru_tail(ptr noundef %2) #8, !dbg !5130
  %3 = load ptr, ptr %bo.addr, align 8, !dbg !5131
  %bdev1 = getelementptr inbounds %struct.ttm_buffer_object, ptr %3, i32 0, i32 1, !dbg !5132
  %4 = load ptr, ptr %bdev1, align 8, !dbg !5132
  %lru_lock2 = getelementptr inbounds %struct.ttm_device, ptr %4, i32 0, i32 6, !dbg !5133
  call void @spin_unlock(ptr noundef %lru_lock2) #8, !dbg !5134
  ret void, !dbg !5135
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_resv_unlock(ptr noundef %obj) #3 align 16 !dbg !5136 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !5140, metadata !DIExpression()), !dbg !5141
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !5142
  call void @dma_resv_reset_max_fences(ptr noundef %0) #8, !dbg !5143
  %1 = load ptr, ptr %obj.addr, align 8, !dbg !5144
  %lock = getelementptr inbounds %struct.dma_resv, ptr %1, i32 0, i32 0, !dbg !5145
  call void @ww_mutex_unlock(ptr noundef %lock) #8, !dbg !5146
  ret void, !dbg !5147
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ww_acquire_fini(ptr noundef %ctx) #3 align 16 !dbg !5148 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !5152, metadata !DIExpression()), !dbg !5153
  ret void, !dbg !5154
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ttm_eu_reserve_buffers(ptr noundef %ticket, ptr noundef %list, i1 noundef zeroext %intr, ptr noundef %dups) #0 align 16 !dbg !5155 {
entry:
  %retval = alloca i32, align 4
  %ticket.addr = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  %intr.addr = alloca i8, align 1
  %dups.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %bo = alloca ptr, align 8
  %num_fences = alloca i32, align 4
  %safe = alloca ptr, align 8
  %__mptr12 = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  %__UNIQUE_ID___x297 = alloca i32, align 4
  %__UNIQUE_ID___y298 = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  %__mptr51 = alloca ptr, align 8
  %tmp54 = alloca ptr, align 8
  store ptr %ticket, ptr %ticket.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ticket.addr, metadata !5159, metadata !DIExpression()), !dbg !5182
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5160, metadata !DIExpression()), !dbg !5183
  %frombool = zext i1 %intr to i8
  store i8 %frombool, ptr %intr.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %intr.addr, metadata !5161, metadata !DIExpression()), !dbg !5184
  store ptr %dups, ptr %dups.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dups.addr, metadata !5162, metadata !DIExpression()), !dbg !5185
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #7, !dbg !5186
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !5163, metadata !DIExpression()), !dbg !5187
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !5188
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5164, metadata !DIExpression()), !dbg !5189
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5190
  %call = call i32 @list_empty(ptr noundef %0) #8, !dbg !5192
  %tobool = icmp ne i32 %call, 0, !dbg !5192
  br i1 %tobool, label %if.then, label %if.end, !dbg !5193

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5194
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup56, !dbg !5194

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ticket.addr, align 8, !dbg !5195
  %tobool2 = icmp ne ptr %1, null, !dbg !5195
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5197

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr %ticket.addr, align 8, !dbg !5198
  call void @ww_acquire_init(ptr noundef %2, ptr noundef @reservation_ww_class) #8, !dbg !5199
  br label %if.end4, !dbg !5199

if.end4:                                          ; preds = %if.then3, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !5200
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5165, metadata !DIExpression()), !dbg !5200
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5200
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5200
  %4 = load ptr, ptr %next, align 8, !dbg !5200
  store ptr %4, ptr %__mptr, align 8, !dbg !5200
  %5 = load ptr, ptr %__mptr, align 8, !dbg !5200
  %add.ptr = getelementptr i8, ptr %5, i64 0, !dbg !5200
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5200
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !5201
  %6 = load ptr, ptr %tmp, align 8, !dbg !5200
  store ptr %6, ptr %entry1, align 8, !dbg !5201
  br label %for.cond, !dbg !5201

for.cond:                                         ; preds = %for.inc, %if.end4
  %7 = load ptr, ptr %entry1, align 8, !dbg !5202
  %head = getelementptr inbounds %struct.ttm_validate_buffer, ptr %7, i32 0, i32 0, !dbg !5202
  %8 = load ptr, ptr %list.addr, align 8, !dbg !5202
  %cmp = icmp eq ptr %head, %8, !dbg !5202
  %lnot = xor i1 %cmp, true, !dbg !5202
  br i1 %lnot, label %for.body, label %for.end, !dbg !5201

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %bo) #7, !dbg !5203
  call void @llvm.dbg.declare(metadata ptr %bo, metadata !5168, metadata !DIExpression()), !dbg !5204
  %9 = load ptr, ptr %entry1, align 8, !dbg !5205
  %bo5 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %9, i32 0, i32 1, !dbg !5206
  %10 = load ptr, ptr %bo5, align 8, !dbg !5206
  store ptr %10, ptr %bo, align 8, !dbg !5204
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_fences) #7, !dbg !5207
  call void @llvm.dbg.declare(metadata ptr %num_fences, metadata !5171, metadata !DIExpression()), !dbg !5208
  %11 = load ptr, ptr %bo, align 8, !dbg !5209
  %12 = load i8, ptr %intr.addr, align 1, !dbg !5210, !range !5211, !noundef !1207
  %tobool6 = trunc i8 %12 to i1, !dbg !5210
  %13 = load ptr, ptr %ticket.addr, align 8, !dbg !5212
  %cmp7 = icmp eq ptr %13, null, !dbg !5213
  %14 = load ptr, ptr %ticket.addr, align 8, !dbg !5214
  %call8 = call i32 @ttm_bo_reserve(ptr noundef %11, i1 noundef zeroext %tobool6, i1 noundef zeroext %cmp7, ptr noundef %14) #8, !dbg !5215
  store i32 %call8, ptr %ret, align 4, !dbg !5216
  %15 = load i32, ptr %ret, align 4, !dbg !5217
  %cmp9 = icmp eq i32 %15, -114, !dbg !5218
  br i1 %cmp9, label %land.lhs.true, label %if.end18, !dbg !5219

land.lhs.true:                                    ; preds = %for.body
  %16 = load ptr, ptr %dups.addr, align 8, !dbg !5220
  %tobool10 = icmp ne ptr %16, null, !dbg !5220
  br i1 %tobool10, label %if.then11, label %if.end18, !dbg !5221

if.then11:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %safe) #7, !dbg !5222
  call void @llvm.dbg.declare(metadata ptr %safe, metadata !5172, metadata !DIExpression()), !dbg !5223
  %17 = load ptr, ptr %entry1, align 8, !dbg !5224
  store ptr %17, ptr %safe, align 8, !dbg !5223
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr12) #7, !dbg !5225
  call void @llvm.dbg.declare(metadata ptr %__mptr12, metadata !5175, metadata !DIExpression()), !dbg !5225
  %18 = load ptr, ptr %entry1, align 8, !dbg !5225
  %head13 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %18, i32 0, i32 0, !dbg !5225
  %prev = getelementptr inbounds %struct.list_head, ptr %head13, i32 0, i32 1, !dbg !5225
  %19 = load ptr, ptr %prev, align 8, !dbg !5225
  store ptr %19, ptr %__mptr12, align 8, !dbg !5225
  %20 = load ptr, ptr %__mptr12, align 8, !dbg !5225
  %add.ptr15 = getelementptr i8, ptr %20, i64 0, !dbg !5225
  store ptr %add.ptr15, ptr %tmp14, align 8, !dbg !5225
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr12) #7, !dbg !5226
  %21 = load ptr, ptr %tmp14, align 8, !dbg !5225
  store ptr %21, ptr %entry1, align 8, !dbg !5227
  %22 = load ptr, ptr %safe, align 8, !dbg !5228
  %head16 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %22, i32 0, i32 0, !dbg !5229
  call void @list_del(ptr noundef %head16) #8, !dbg !5230
  %23 = load ptr, ptr %safe, align 8, !dbg !5231
  %head17 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %23, i32 0, i32 0, !dbg !5232
  %24 = load ptr, ptr %dups.addr, align 8, !dbg !5233
  call void @list_add(ptr noundef %head17, ptr noundef %24) #8, !dbg !5234
  store i32 4, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %safe) #7, !dbg !5235
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true, %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x297) #7, !dbg !5236
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x297, metadata !5177, metadata !DIExpression()), !dbg !5236
  %25 = load ptr, ptr %entry1, align 8, !dbg !5236
  %num_shared = getelementptr inbounds %struct.ttm_validate_buffer, ptr %25, i32 0, i32 2, !dbg !5236
  %26 = load i32, ptr %num_shared, align 8, !dbg !5236
  store i32 %26, ptr %__UNIQUE_ID___x297, align 4, !dbg !5236
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y298) #7, !dbg !5236
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y298, metadata !5179, metadata !DIExpression()), !dbg !5236
  store i32 1, ptr %__UNIQUE_ID___y298, align 4, !dbg !5236
  %27 = load i32, ptr %__UNIQUE_ID___x297, align 4, !dbg !5236
  %28 = load i32, ptr %__UNIQUE_ID___y298, align 4, !dbg !5236
  %cmp20 = icmp ugt i32 %27, %28, !dbg !5236
  br i1 %cmp20, label %cond.true, label %cond.false, !dbg !5236

cond.true:                                        ; preds = %if.end18
  %29 = load i32, ptr %__UNIQUE_ID___x297, align 4, !dbg !5236
  br label %cond.end, !dbg !5236

cond.false:                                       ; preds = %if.end18
  %30 = load i32, ptr %__UNIQUE_ID___y298, align 4, !dbg !5236
  br label %cond.end, !dbg !5236

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %29, %cond.true ], [ %30, %cond.false ], !dbg !5236
  store i32 %cond, ptr %tmp19, align 4, !dbg !5236
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y298) #7, !dbg !5237
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x297) #7, !dbg !5237
  %31 = load i32, ptr %tmp19, align 4, !dbg !5236
  store i32 %31, ptr %num_fences, align 4, !dbg !5238
  %32 = load i32, ptr %ret, align 4, !dbg !5239
  %tobool21 = icmp ne i32 %32, 0, !dbg !5239
  br i1 %tobool21, label %if.end27, label %if.then22, !dbg !5241

if.then22:                                        ; preds = %cond.end
  %33 = load ptr, ptr %bo, align 8, !dbg !5242
  %base = getelementptr inbounds %struct.ttm_buffer_object, ptr %33, i32 0, i32 0, !dbg !5244
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %base, i32 0, i32 9, !dbg !5245
  %34 = load ptr, ptr %resv, align 8, !dbg !5245
  %35 = load i32, ptr %num_fences, align 4, !dbg !5246
  %call23 = call i32 @dma_resv_reserve_fences(ptr noundef %34, i32 noundef %35) #8, !dbg !5247
  store i32 %call23, ptr %ret, align 4, !dbg !5248
  %36 = load i32, ptr %ret, align 4, !dbg !5249
  %tobool24 = icmp ne i32 %36, 0, !dbg !5249
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !5251

if.then25:                                        ; preds = %if.then22
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5252

if.end26:                                         ; preds = %if.then22
  br label %if.end27, !dbg !5253

if.end27:                                         ; preds = %if.end26, %cond.end
  %37 = load ptr, ptr %list.addr, align 8, !dbg !5254
  %38 = load ptr, ptr %entry1, align 8, !dbg !5255
  call void @ttm_eu_backoff_reservation_reverse(ptr noundef %37, ptr noundef %38) #8, !dbg !5256
  %39 = load i32, ptr %ret, align 4, !dbg !5257
  %cmp28 = icmp eq i32 %39, -35, !dbg !5259
  br i1 %cmp28, label %if.then29, label %if.end32, !dbg !5260

if.then29:                                        ; preds = %if.end27
  %40 = load ptr, ptr %bo, align 8, !dbg !5261
  %41 = load i8, ptr %intr.addr, align 1, !dbg !5263, !range !5211, !noundef !1207
  %tobool30 = trunc i8 %41 to i1, !dbg !5263
  %42 = load ptr, ptr %ticket.addr, align 8, !dbg !5264
  %call31 = call i32 @ttm_bo_reserve_slowpath(ptr noundef %40, i1 noundef zeroext %tobool30, ptr noundef %42) #8, !dbg !5265
  store i32 %call31, ptr %ret, align 4, !dbg !5266
  br label %if.end32, !dbg !5267

if.end32:                                         ; preds = %if.then29, %if.end27
  %43 = load i32, ptr %ret, align 4, !dbg !5268
  %tobool33 = icmp ne i32 %43, 0, !dbg !5268
  br i1 %tobool33, label %if.end38, label %if.then34, !dbg !5270

if.then34:                                        ; preds = %if.end32
  %44 = load ptr, ptr %bo, align 8, !dbg !5271
  %base35 = getelementptr inbounds %struct.ttm_buffer_object, ptr %44, i32 0, i32 0, !dbg !5272
  %resv36 = getelementptr inbounds %struct.drm_gem_object, ptr %base35, i32 0, i32 9, !dbg !5273
  %45 = load ptr, ptr %resv36, align 8, !dbg !5273
  %46 = load i32, ptr %num_fences, align 4, !dbg !5274
  %call37 = call i32 @dma_resv_reserve_fences(ptr noundef %45, i32 noundef %46) #8, !dbg !5275
  store i32 %call37, ptr %ret, align 4, !dbg !5276
  br label %if.end38, !dbg !5277

if.end38:                                         ; preds = %if.then34, %if.end32
  %47 = load i32, ptr %ret, align 4, !dbg !5278
  %cmp39 = icmp ne i32 %47, 0, !dbg !5278
  %lnot40 = xor i1 %cmp39, true, !dbg !5278
  %lnot41 = xor i1 %lnot40, true, !dbg !5278
  %lnot.ext = zext i1 %lnot41 to i32, !dbg !5278
  %conv = sext i32 %lnot.ext to i64, !dbg !5278
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5278
  %tobool42 = icmp ne i64 %expval, 0, !dbg !5278
  br i1 %tobool42, label %if.then43, label %if.end47, !dbg !5280

if.then43:                                        ; preds = %if.end38
  %48 = load ptr, ptr %ticket.addr, align 8, !dbg !5281
  %tobool44 = icmp ne ptr %48, null, !dbg !5281
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !5284

if.then45:                                        ; preds = %if.then43
  %49 = load ptr, ptr %ticket.addr, align 8, !dbg !5285
  call void @ww_acquire_done(ptr noundef %49) #8, !dbg !5287
  %50 = load ptr, ptr %ticket.addr, align 8, !dbg !5288
  call void @ww_acquire_fini(ptr noundef %50) #8, !dbg !5289
  br label %if.end46, !dbg !5290

if.end46:                                         ; preds = %if.then45, %if.then43
  %51 = load i32, ptr %ret, align 4, !dbg !5291
  store i32 %51, ptr %retval, align 4, !dbg !5292
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5292

if.end47:                                         ; preds = %if.end38
  %52 = load ptr, ptr %entry1, align 8, !dbg !5293
  %head48 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %52, i32 0, i32 0, !dbg !5294
  call void @list_del(ptr noundef %head48) #8, !dbg !5295
  %53 = load ptr, ptr %entry1, align 8, !dbg !5296
  %head49 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %53, i32 0, i32 0, !dbg !5297
  %54 = load ptr, ptr %list.addr, align 8, !dbg !5298
  call void @list_add(ptr noundef %head49, ptr noundef %54) #8, !dbg !5299
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5300
  br label %cleanup, !dbg !5300

cleanup:                                          ; preds = %if.end47, %if.end46, %if.then25, %if.then11
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_fences) #7, !dbg !5300
  call void @llvm.lifetime.end.p0(i64 8, ptr %bo) #7, !dbg !5300
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup56 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5301

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr51) #7, !dbg !5302
  call void @llvm.dbg.declare(metadata ptr %__mptr51, metadata !5180, metadata !DIExpression()), !dbg !5302
  %55 = load ptr, ptr %entry1, align 8, !dbg !5302
  %head52 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %55, i32 0, i32 0, !dbg !5302
  %next53 = getelementptr inbounds %struct.list_head, ptr %head52, i32 0, i32 0, !dbg !5302
  %56 = load ptr, ptr %next53, align 8, !dbg !5302
  store ptr %56, ptr %__mptr51, align 8, !dbg !5302
  %57 = load ptr, ptr %__mptr51, align 8, !dbg !5302
  %add.ptr55 = getelementptr i8, ptr %57, i64 0, !dbg !5302
  store ptr %add.ptr55, ptr %tmp54, align 8, !dbg !5302
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr51) #7, !dbg !5202
  %58 = load ptr, ptr %tmp54, align 8, !dbg !5302
  store ptr %58, ptr %entry1, align 8, !dbg !5202
  br label %for.cond, !dbg !5202, !llvm.loop !5303

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !5305
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup56, !dbg !5305

cleanup56:                                        ; preds = %for.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !5306
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #7, !dbg !5306
  %59 = load i32, ptr %retval, align 4, !dbg !5306
  ret i32 %59, !dbg !5306
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ww_acquire_init(ptr noundef %ctx, ptr noundef %ww_class) #3 align 16 !dbg !5307 {
entry:
  %ctx.addr = alloca ptr, align 8
  %ww_class.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !5320, metadata !DIExpression()), !dbg !5322
  store ptr %ww_class, ptr %ww_class.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ww_class.addr, metadata !5321, metadata !DIExpression()), !dbg !5323
  %call = call ptr @get_current() #8, !dbg !5324
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !5325
  %task = getelementptr inbounds %struct.ww_acquire_ctx, ptr %0, i32 0, i32 0, !dbg !5326
  store ptr %call, ptr %task, align 8, !dbg !5327
  %1 = load ptr, ptr %ww_class.addr, align 8, !dbg !5328
  %stamp = getelementptr inbounds %struct.ww_class, ptr %1, i32 0, i32 0, !dbg !5329
  %call1 = call i64 @atomic_long_inc_return_relaxed(ptr noundef %stamp) #8, !dbg !5330
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !5331
  %stamp2 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %2, i32 0, i32 1, !dbg !5332
  store i64 %call1, ptr %stamp2, align 8, !dbg !5333
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !5334
  %acquired = getelementptr inbounds %struct.ww_acquire_ctx, ptr %3, i32 0, i32 2, !dbg !5335
  store i32 0, ptr %acquired, align 8, !dbg !5336
  %4 = load ptr, ptr %ctx.addr, align 8, !dbg !5337
  %wounded = getelementptr inbounds %struct.ww_acquire_ctx, ptr %4, i32 0, i32 3, !dbg !5338
  store i16 0, ptr %wounded, align 4, !dbg !5339
  %5 = load ptr, ptr %ww_class.addr, align 8, !dbg !5340
  %is_wait_die = getelementptr inbounds %struct.ww_class, ptr %5, i32 0, i32 5, !dbg !5341
  %6 = load i32, ptr %is_wait_die, align 8, !dbg !5341
  %conv = trunc i32 %6 to i16, !dbg !5340
  %7 = load ptr, ptr %ctx.addr, align 8, !dbg !5342
  %is_wait_die3 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %7, i32 0, i32 4, !dbg !5343
  store i16 %conv, ptr %is_wait_die3, align 2, !dbg !5344
  ret void, !dbg !5345
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ttm_bo_reserve(ptr noundef %bo, i1 noundef zeroext %interruptible, i1 noundef zeroext %no_wait, ptr noundef %ticket) #3 align 16 !dbg !5346 {
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
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !5350, metadata !DIExpression()), !dbg !5364
  %frombool = zext i1 %interruptible to i8
  store i8 %frombool, ptr %interruptible.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %interruptible.addr, metadata !5351, metadata !DIExpression()), !dbg !5365
  %frombool1 = zext i1 %no_wait to i8
  store i8 %frombool1, ptr %no_wait.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %no_wait.addr, metadata !5352, metadata !DIExpression()), !dbg !5366
  store ptr %ticket, ptr %ticket.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ticket.addr, metadata !5353, metadata !DIExpression()), !dbg !5367
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !5368
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5354, metadata !DIExpression()), !dbg !5369
  store i32 0, ptr %ret, align 4, !dbg !5369
  %0 = load i8, ptr %no_wait.addr, align 1, !dbg !5370, !range !5211, !noundef !1207
  %tobool = trunc i8 %0 to i1, !dbg !5370
  br i1 %tobool, label %if.then, label %if.end33, !dbg !5371

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #7, !dbg !5372
  call void @llvm.dbg.declare(metadata ptr %success, metadata !5355, metadata !DIExpression()), !dbg !5373
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !5374
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5358, metadata !DIExpression()), !dbg !5374
  %1 = load ptr, ptr %ticket.addr, align 8, !dbg !5374
  %tobool2 = icmp ne ptr %1, null, !dbg !5374
  %lnot = xor i1 %tobool2, true, !dbg !5374
  %lnot3 = xor i1 %lnot, true, !dbg !5374
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5374
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5374
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !5375
  %tobool4 = icmp ne i32 %2, 0, !dbg !5375
  %lnot5 = xor i1 %tobool4, true, !dbg !5375
  %lnot7 = xor i1 %lnot5, true, !dbg !5375
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5375
  %conv = sext i32 %lnot.ext8 to i64, !dbg !5375
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5375
  %tobool9 = icmp ne i64 %expval, 0, !dbg !5375
  br i1 %tobool9, label %if.then10, label %if.end, !dbg !5374

if.then10:                                        ; preds = %if.then
  br label %do.body, !dbg !5375

do.body:                                          ; preds = %if.then10
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #7, !dbg !5376
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5361, metadata !DIExpression()), !dbg !5376
  store i32 2305, ptr %__flags, align 4, !dbg !5376
  br label %do.body11, !dbg !5376

do.body11:                                        ; preds = %do.body
  br label %do.cond, !dbg !5377

do.cond:                                          ; preds = %do.body11
  br label %do.end, !dbg !5377

do.end:                                           ; preds = %do.cond
  br label %do.body12, !dbg !5376

do.body12:                                        ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !5379
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 247, i32 %3, i64 12) #7, !dbg !5379, !srcloc !5381
  br label %do.cond13, !dbg !5379

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5379

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !5376

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !5382

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !5382

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #7, !dbg !5375
  br label %do.cond18, !dbg !5376

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !5376

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !5376

if.end:                                           ; preds = %do.end19, %if.then
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5374
  %tobool20 = icmp ne i32 %4, 0, !dbg !5374
  %lnot21 = xor i1 %tobool20, true, !dbg !5374
  %lnot23 = xor i1 %lnot21, true, !dbg !5374
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !5374
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !5374
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !5374
  store i64 %expval26, ptr %tmp, align 8, !dbg !5375
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !5384
  %5 = load i64, ptr %tmp, align 8, !dbg !5374
  %tobool27 = icmp ne i64 %5, 0, !dbg !5384
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !5385

if.then28:                                        ; preds = %if.end
  store i32 -16, ptr %retval, align 4, !dbg !5386
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5386

if.end29:                                         ; preds = %if.end
  %6 = load ptr, ptr %bo.addr, align 8, !dbg !5387
  %base = getelementptr inbounds %struct.ttm_buffer_object, ptr %6, i32 0, i32 0, !dbg !5388
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %base, i32 0, i32 9, !dbg !5389
  %7 = load ptr, ptr %resv, align 8, !dbg !5389
  %call = call zeroext i1 @dma_resv_trylock(ptr noundef %7) #8, !dbg !5390
  %frombool30 = zext i1 %call to i8, !dbg !5391
  store i8 %frombool30, ptr %success, align 1, !dbg !5391
  %8 = load i8, ptr %success, align 1, !dbg !5392, !range !5211, !noundef !1207
  %tobool31 = trunc i8 %8 to i1, !dbg !5392
  %9 = zext i1 %tobool31 to i64, !dbg !5392
  %cond = select i1 %tobool31, i32 0, i32 -16, !dbg !5392
  store i32 %cond, ptr %retval, align 4, !dbg !5393
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5393

cleanup:                                          ; preds = %if.end29, %if.then28
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #7, !dbg !5394
  br label %cleanup46

if.end33:                                         ; preds = %entry
  %10 = load i8, ptr %interruptible.addr, align 1, !dbg !5395, !range !5211, !noundef !1207
  %tobool34 = trunc i8 %10 to i1, !dbg !5395
  br i1 %tobool34, label %if.then35, label %if.else, !dbg !5397

if.then35:                                        ; preds = %if.end33
  %11 = load ptr, ptr %bo.addr, align 8, !dbg !5398
  %base36 = getelementptr inbounds %struct.ttm_buffer_object, ptr %11, i32 0, i32 0, !dbg !5399
  %resv37 = getelementptr inbounds %struct.drm_gem_object, ptr %base36, i32 0, i32 9, !dbg !5400
  %12 = load ptr, ptr %resv37, align 8, !dbg !5400
  %13 = load ptr, ptr %ticket.addr, align 8, !dbg !5401
  %call38 = call i32 @dma_resv_lock_interruptible(ptr noundef %12, ptr noundef %13) #8, !dbg !5402
  store i32 %call38, ptr %ret, align 4, !dbg !5403
  br label %if.end42, !dbg !5404

if.else:                                          ; preds = %if.end33
  %14 = load ptr, ptr %bo.addr, align 8, !dbg !5405
  %base39 = getelementptr inbounds %struct.ttm_buffer_object, ptr %14, i32 0, i32 0, !dbg !5406
  %resv40 = getelementptr inbounds %struct.drm_gem_object, ptr %base39, i32 0, i32 9, !dbg !5407
  %15 = load ptr, ptr %resv40, align 8, !dbg !5407
  %16 = load ptr, ptr %ticket.addr, align 8, !dbg !5408
  %call41 = call i32 @dma_resv_lock(ptr noundef %15, ptr noundef %16) #8, !dbg !5409
  store i32 %call41, ptr %ret, align 4, !dbg !5410
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then35
  %17 = load i32, ptr %ret, align 4, !dbg !5411
  %cmp = icmp eq i32 %17, -4, !dbg !5413
  br i1 %cmp, label %if.then44, label %if.end45, !dbg !5414

if.then44:                                        ; preds = %if.end42
  store i32 -512, ptr %retval, align 4, !dbg !5415
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup46, !dbg !5415

if.end45:                                         ; preds = %if.end42
  %18 = load i32, ptr %ret, align 4, !dbg !5416
  store i32 %18, ptr %retval, align 4, !dbg !5417
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup46, !dbg !5417

cleanup46:                                        ; preds = %if.end45, %if.then44, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !5418
  %19 = load i32, ptr %retval, align 4, !dbg !5418
  ret i32 %19, !dbg !5418
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #3 align 16 !dbg !5419 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5423, metadata !DIExpression()), !dbg !5424
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5425
  call void @__list_del_entry(ptr noundef %0) #8, !dbg !5426
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5427
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5428
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !5429
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5430
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5431
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5432
  ret void, !dbg !5433
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !5434 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5438, metadata !DIExpression()), !dbg !5440
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5439, metadata !DIExpression()), !dbg !5441
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5442
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5443
  %2 = load ptr, ptr %head.addr, align 8, !dbg !5444
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !5445
  %3 = load ptr, ptr %next, align 8, !dbg !5445
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #8, !dbg !5446
  ret void, !dbg !5447
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5448 dso_local i32 @dma_resv_reserve_fences(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_eu_backoff_reservation_reverse(ptr noundef %list, ptr noundef %entry1) #0 align 16 !dbg !5451 {
entry:
  %list.addr = alloca ptr, align 8
  %entry.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %bo = alloca ptr, align 8
  %__mptr4 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5455, metadata !DIExpression()), !dbg !5465
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5456, metadata !DIExpression()), !dbg !5466
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !5467
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5457, metadata !DIExpression()), !dbg !5467
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5467
  %head = getelementptr inbounds %struct.ttm_validate_buffer, ptr %0, i32 0, i32 0, !dbg !5467
  %prev = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1, !dbg !5467
  %1 = load ptr, ptr %prev, align 8, !dbg !5467
  store ptr %1, ptr %__mptr, align 8, !dbg !5467
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5467
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !5467
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5467
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !5468
  %3 = load ptr, ptr %tmp, align 8, !dbg !5467
  store ptr %3, ptr %entry.addr, align 8, !dbg !5468
  br label %for.cond, !dbg !5468

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %entry.addr, align 8, !dbg !5469
  %head2 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %4, i32 0, i32 0, !dbg !5469
  %5 = load ptr, ptr %list.addr, align 8, !dbg !5469
  %cmp = icmp eq ptr %head2, %5, !dbg !5469
  %lnot = xor i1 %cmp, true, !dbg !5469
  br i1 %lnot, label %for.body, label %for.end, !dbg !5468

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %bo) #7, !dbg !5470
  call void @llvm.dbg.declare(metadata ptr %bo, metadata !5460, metadata !DIExpression()), !dbg !5471
  %6 = load ptr, ptr %entry.addr, align 8, !dbg !5472
  %bo3 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %6, i32 0, i32 1, !dbg !5473
  %7 = load ptr, ptr %bo3, align 8, !dbg !5473
  store ptr %7, ptr %bo, align 8, !dbg !5471
  %8 = load ptr, ptr %bo, align 8, !dbg !5474
  %base = getelementptr inbounds %struct.ttm_buffer_object, ptr %8, i32 0, i32 0, !dbg !5475
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %base, i32 0, i32 9, !dbg !5476
  %9 = load ptr, ptr %resv, align 8, !dbg !5476
  call void @dma_resv_unlock(ptr noundef %9) #8, !dbg !5477
  call void @llvm.lifetime.end.p0(i64 8, ptr %bo) #7, !dbg !5478
  br label %for.inc, !dbg !5479

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr4) #7, !dbg !5480
  call void @llvm.dbg.declare(metadata ptr %__mptr4, metadata !5463, metadata !DIExpression()), !dbg !5480
  %10 = load ptr, ptr %entry.addr, align 8, !dbg !5480
  %head5 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %10, i32 0, i32 0, !dbg !5480
  %prev6 = getelementptr inbounds %struct.list_head, ptr %head5, i32 0, i32 1, !dbg !5480
  %11 = load ptr, ptr %prev6, align 8, !dbg !5480
  store ptr %11, ptr %__mptr4, align 8, !dbg !5480
  %12 = load ptr, ptr %__mptr4, align 8, !dbg !5480
  %add.ptr8 = getelementptr i8, ptr %12, i64 0, !dbg !5480
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !5480
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr4) #7, !dbg !5469
  %13 = load ptr, ptr %tmp7, align 8, !dbg !5480
  store ptr %13, ptr %entry.addr, align 8, !dbg !5469
  br label %for.cond, !dbg !5469, !llvm.loop !5481

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5483
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ttm_bo_reserve_slowpath(ptr noundef %bo, i1 noundef zeroext %interruptible, ptr noundef %ticket) #3 align 16 !dbg !5484 {
entry:
  %retval = alloca i32, align 4
  %bo.addr = alloca ptr, align 8
  %interruptible.addr = alloca i8, align 1
  %ticket.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !5488, metadata !DIExpression()), !dbg !5494
  %frombool = zext i1 %interruptible to i8
  store i8 %frombool, ptr %interruptible.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %interruptible.addr, metadata !5489, metadata !DIExpression()), !dbg !5495
  store ptr %ticket, ptr %ticket.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ticket.addr, metadata !5490, metadata !DIExpression()), !dbg !5496
  %0 = load i8, ptr %interruptible.addr, align 1, !dbg !5497, !range !5211, !noundef !1207
  %tobool = trunc i8 %0 to i1, !dbg !5497
  br i1 %tobool, label %if.then, label %if.end2, !dbg !5498

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !5499
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5491, metadata !DIExpression()), !dbg !5500
  %1 = load ptr, ptr %bo.addr, align 8, !dbg !5501
  %base = getelementptr inbounds %struct.ttm_buffer_object, ptr %1, i32 0, i32 0, !dbg !5502
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %base, i32 0, i32 9, !dbg !5503
  %2 = load ptr, ptr %resv, align 8, !dbg !5503
  %3 = load ptr, ptr %ticket.addr, align 8, !dbg !5504
  %call = call i32 @dma_resv_lock_slow_interruptible(ptr noundef %2, ptr noundef %3) #8, !dbg !5505
  store i32 %call, ptr %ret, align 4, !dbg !5500
  %4 = load i32, ptr %ret, align 4, !dbg !5506
  %cmp = icmp eq i32 %4, -4, !dbg !5508
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5509

if.then1:                                         ; preds = %if.then
  store i32 -512, ptr %ret, align 4, !dbg !5510
  br label %if.end, !dbg !5511

if.end:                                           ; preds = %if.then1, %if.then
  %5 = load i32, ptr %ret, align 4, !dbg !5512
  store i32 %5, ptr %retval, align 4, !dbg !5513
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !5514
  br label %return

if.end2:                                          ; preds = %entry
  %6 = load ptr, ptr %bo.addr, align 8, !dbg !5515
  %base3 = getelementptr inbounds %struct.ttm_buffer_object, ptr %6, i32 0, i32 0, !dbg !5516
  %resv4 = getelementptr inbounds %struct.drm_gem_object, ptr %base3, i32 0, i32 9, !dbg !5517
  %7 = load ptr, ptr %resv4, align 8, !dbg !5517
  %8 = load ptr, ptr %ticket.addr, align 8, !dbg !5518
  call void @dma_resv_lock_slow(ptr noundef %7, ptr noundef %8) #8, !dbg !5519
  store i32 0, ptr %retval, align 4, !dbg !5520
  br label %return, !dbg !5520

return:                                           ; preds = %if.end2, %if.end
  %9 = load i32, ptr %retval, align 4, !dbg !5521
  ret i32 %9, !dbg !5521
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ww_acquire_done(ptr noundef %ctx) #3 align 16 !dbg !5522 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !5524, metadata !DIExpression()), !dbg !5525
  ret void, !dbg !5526
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ttm_eu_fence_buffer_objects(ptr noundef %ticket, ptr noundef %list, ptr noundef %fence) #0 align 16 !dbg !5527 {
entry:
  %ticket.addr = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  %fence.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %bo = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  store ptr %ticket, ptr %ticket.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ticket.addr, metadata !5531, metadata !DIExpression()), !dbg !5543
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5532, metadata !DIExpression()), !dbg !5544
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !5533, metadata !DIExpression()), !dbg !5545
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #7, !dbg !5546
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !5534, metadata !DIExpression()), !dbg !5547
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5548
  %call = call i32 @list_empty(ptr noundef %0) #8, !dbg !5550
  %tobool = icmp ne i32 %call, 0, !dbg !5550
  br i1 %tobool, label %if.then, label %if.end, !dbg !5551

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5552

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !5553
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5535, metadata !DIExpression()), !dbg !5553
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5553
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5553
  %2 = load ptr, ptr %next, align 8, !dbg !5553
  store ptr %2, ptr %__mptr, align 8, !dbg !5553
  %3 = load ptr, ptr %__mptr, align 8, !dbg !5553
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !5553
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5553
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !5554
  %4 = load ptr, ptr %tmp, align 8, !dbg !5553
  store ptr %4, ptr %entry1, align 8, !dbg !5554
  br label %for.cond, !dbg !5554

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load ptr, ptr %entry1, align 8, !dbg !5555
  %head = getelementptr inbounds %struct.ttm_validate_buffer, ptr %5, i32 0, i32 0, !dbg !5555
  %6 = load ptr, ptr %list.addr, align 8, !dbg !5555
  %cmp = icmp eq ptr %head, %6, !dbg !5555
  %lnot = xor i1 %cmp, true, !dbg !5555
  br i1 %lnot, label %for.body, label %for.end, !dbg !5554

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %bo) #7, !dbg !5556
  call void @llvm.dbg.declare(metadata ptr %bo, metadata !5538, metadata !DIExpression()), !dbg !5557
  %7 = load ptr, ptr %entry1, align 8, !dbg !5558
  %bo2 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %7, i32 0, i32 1, !dbg !5559
  %8 = load ptr, ptr %bo2, align 8, !dbg !5559
  store ptr %8, ptr %bo, align 8, !dbg !5557
  %9 = load ptr, ptr %bo, align 8, !dbg !5560
  %base = getelementptr inbounds %struct.ttm_buffer_object, ptr %9, i32 0, i32 0, !dbg !5561
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %base, i32 0, i32 9, !dbg !5562
  %10 = load ptr, ptr %resv, align 8, !dbg !5562
  %11 = load ptr, ptr %fence.addr, align 8, !dbg !5563
  %12 = load ptr, ptr %entry1, align 8, !dbg !5564
  %num_shared = getelementptr inbounds %struct.ttm_validate_buffer, ptr %12, i32 0, i32 2, !dbg !5565
  %13 = load i32, ptr %num_shared, align 8, !dbg !5565
  %tobool3 = icmp ne i32 %13, 0, !dbg !5564
  %14 = zext i1 %tobool3 to i64, !dbg !5564
  %cond = select i1 %tobool3, i32 2, i32 1, !dbg !5564
  call void @dma_resv_add_fence(ptr noundef %10, ptr noundef %11, i32 noundef %cond) #8, !dbg !5566
  %15 = load ptr, ptr %bo, align 8, !dbg !5567
  call void @ttm_bo_move_to_lru_tail_unlocked(ptr noundef %15) #8, !dbg !5568
  %16 = load ptr, ptr %bo, align 8, !dbg !5569
  %base4 = getelementptr inbounds %struct.ttm_buffer_object, ptr %16, i32 0, i32 0, !dbg !5570
  %resv5 = getelementptr inbounds %struct.drm_gem_object, ptr %base4, i32 0, i32 9, !dbg !5571
  %17 = load ptr, ptr %resv5, align 8, !dbg !5571
  call void @dma_resv_unlock(ptr noundef %17) #8, !dbg !5572
  call void @llvm.lifetime.end.p0(i64 8, ptr %bo) #7, !dbg !5573
  br label %for.inc, !dbg !5574

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #7, !dbg !5575
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !5541, metadata !DIExpression()), !dbg !5575
  %18 = load ptr, ptr %entry1, align 8, !dbg !5575
  %head7 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %18, i32 0, i32 0, !dbg !5575
  %next8 = getelementptr inbounds %struct.list_head, ptr %head7, i32 0, i32 0, !dbg !5575
  %19 = load ptr, ptr %next8, align 8, !dbg !5575
  store ptr %19, ptr %__mptr6, align 8, !dbg !5575
  %20 = load ptr, ptr %__mptr6, align 8, !dbg !5575
  %add.ptr10 = getelementptr i8, ptr %20, i64 0, !dbg !5575
  store ptr %add.ptr10, ptr %tmp9, align 8, !dbg !5575
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #7, !dbg !5555
  %21 = load ptr, ptr %tmp9, align 8, !dbg !5575
  store ptr %21, ptr %entry1, align 8, !dbg !5555
  br label %for.cond, !dbg !5555, !llvm.loop !5576

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %ticket.addr, align 8, !dbg !5578
  %tobool11 = icmp ne ptr %22, null, !dbg !5578
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !5580

if.then12:                                        ; preds = %for.end
  %23 = load ptr, ptr %ticket.addr, align 8, !dbg !5581
  call void @ww_acquire_fini(ptr noundef %23) #8, !dbg !5582
  br label %if.end13, !dbg !5582

if.end13:                                         ; preds = %if.then12, %for.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5583
  br label %cleanup, !dbg !5583

cleanup:                                          ; preds = %if.end13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #7, !dbg !5583
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5583

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5584 dso_local void @dma_resv_add_fence(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #6 align 16 !dbg !5587 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5592, metadata !DIExpression()), !dbg !5593
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5594
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5594
  call void @_raw_spin_lock(ptr noundef %1) #8, !dbg !5594
  ret void, !dbg !5595
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5596 dso_local void @ttm_bo_move_to_lru_tail(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #6 align 16 !dbg !5597 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5599, metadata !DIExpression()), !dbg !5600
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5601
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5601
  call void @_raw_spin_unlock(ptr noundef %1) #8, !dbg !5601
  ret void, !dbg !5602
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5603 dso_local void @_raw_spin_lock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5608 dso_local void @_raw_spin_unlock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_resv_reset_max_fences(ptr noundef %obj) #3 align 16 !dbg !5609 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !5611, metadata !DIExpression()), !dbg !5612
  ret void, !dbg !5613
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5614 dso_local void @ww_mutex_unlock(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #6 align 16 !dbg !5618 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #7, !dbg !5629
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5623, metadata !DIExpression()), !dbg !5629
  br label %do.body, !dbg !5629

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #7, !dbg !5630
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5625, metadata !DIExpression()), !dbg !5630
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5630
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5630
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #7, !dbg !5629
  br label %do.cond, !dbg !5630

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5630

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #7, !dbg !5631
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5627, metadata !DIExpression()), !dbg !5631
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #9, !dbg !5631, !srcloc !5632
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5631
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5631
  %3 = inttoptr i64 %2 to ptr, !dbg !5631
  store ptr %3, ptr %tmp, align 8, !dbg !5631
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #7, !dbg !5629
  %4 = load ptr, ptr %tmp, align 8, !dbg !5631
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !5629
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !5629
  store ptr %5, ptr %tmp1, align 8, !dbg !5629
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #7, !dbg !5633
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5629
  ret ptr %6, !dbg !5634
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_inc_return_relaxed(ptr noundef %v) #6 align 16 !dbg !5635 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5640, metadata !DIExpression()), !dbg !5641
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5642
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #8, !dbg !5643
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5644
  %call = call i64 @raw_atomic_long_inc_return_relaxed(ptr noundef %1) #8, !dbg !5645
  ret i64 %call, !dbg !5646
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !5647 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5655, metadata !DIExpression()), !dbg !5657
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5656, metadata !DIExpression()), !dbg !5658
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5659
  %1 = load i64, ptr %size.addr, align 8, !dbg !5660
  %conv = trunc i64 %1 to i32, !dbg !5660
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #8, !dbg !5661
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5662
  %3 = load i64, ptr %size.addr, align 8, !dbg !5662
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #8, !dbg !5662
  ret void, !dbg !5663
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_inc_return_relaxed(ptr noundef %v) #6 align 16 !dbg !5664 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5666, metadata !DIExpression()), !dbg !5667
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5668
  %call = call i64 @raw_atomic64_inc_return_relaxed(ptr noundef %0) #8, !dbg !5669
  ret i64 %call, !dbg !5670
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !5671 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5676, metadata !DIExpression()), !dbg !5678
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5677, metadata !DIExpression()), !dbg !5679
  ret i1 true, !dbg !5680
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !5681 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5686, metadata !DIExpression()), !dbg !5689
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5687, metadata !DIExpression()), !dbg !5690
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5688, metadata !DIExpression()), !dbg !5691
  ret void, !dbg !5692
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_inc_return_relaxed(ptr noundef %v) #6 align 16 !dbg !5693 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5699, metadata !DIExpression()), !dbg !5700
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5701
  %call = call i64 @raw_atomic64_add_return_relaxed(i64 noundef 1, ptr noundef %0) #8, !dbg !5702
  ret i64 %call, !dbg !5703
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_add_return_relaxed(i64 noundef %i, ptr noundef %v) #6 align 16 !dbg !5704 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5708, metadata !DIExpression()), !dbg !5710
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5709, metadata !DIExpression()), !dbg !5711
  %0 = load i64, ptr %i.addr, align 8, !dbg !5712
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5713
  %call = call i64 @arch_atomic64_add_return(i64 noundef %0, ptr noundef %1) #8, !dbg !5714
  ret i64 %call, !dbg !5715
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_add_return(i64 noundef %i, ptr noundef %v) #6 align 16 !dbg !5716 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  %__ret = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5719, metadata !DIExpression()), !dbg !5723
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5720, metadata !DIExpression()), !dbg !5724
  %0 = load i64, ptr %i.addr, align 8, !dbg !5725
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #7, !dbg !5726
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5721, metadata !DIExpression()), !dbg !5726
  %1 = load i64, ptr %i.addr, align 8, !dbg !5726
  store i64 %1, ptr %__ret, align 8, !dbg !5726
  %2 = load i64, ptr %__ret, align 8, !dbg !5726
  %3 = load ptr, ptr %v.addr, align 8, !dbg !5726
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %3, i32 0, i32 0, !dbg !5726
  %4 = call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %2, ptr elementtype(i64) %counter) #7, !dbg !5726, !srcloc !5727
  store i64 %4, ptr %__ret, align 8, !dbg !5726
  %5 = load i64, ptr %__ret, align 8, !dbg !5726
  store i64 %5, ptr %tmp, align 8, !dbg !5726
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #7, !dbg !5728
  %6 = load i64, ptr %tmp, align 8, !dbg !5726
  %add = add i64 %0, %6, !dbg !5729
  ret i64 %add, !dbg !5730
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dma_resv_trylock(ptr noundef %obj) #3 align 16 !dbg !5731 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !5735, metadata !DIExpression()), !dbg !5736
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !5737
  %lock = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 0, !dbg !5738
  %call = call i32 @ww_mutex_trylock(ptr noundef %lock, ptr noundef null) #8, !dbg !5739
  %tobool = icmp ne i32 %call, 0, !dbg !5739
  ret i1 %tobool, !dbg !5740
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dma_resv_lock_interruptible(ptr noundef %obj, ptr noundef %ctx) #3 align 16 !dbg !5741 {
entry:
  %obj.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !5745, metadata !DIExpression()), !dbg !5747
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !5746, metadata !DIExpression()), !dbg !5748
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !5749
  %lock = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 0, !dbg !5750
  %1 = load ptr, ptr %ctx.addr, align 8, !dbg !5751
  %call = call i32 @ww_mutex_lock_interruptible(ptr noundef %lock, ptr noundef %1) #8, !dbg !5752
  ret i32 %call, !dbg !5753
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dma_resv_lock(ptr noundef %obj, ptr noundef %ctx) #3 align 16 !dbg !5754 {
entry:
  %obj.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !5756, metadata !DIExpression()), !dbg !5758
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !5757, metadata !DIExpression()), !dbg !5759
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !5760
  %lock = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 0, !dbg !5761
  %1 = load ptr, ptr %ctx.addr, align 8, !dbg !5762
  %call = call i32 @ww_mutex_lock(ptr noundef %lock, ptr noundef %1) #8, !dbg !5763
  ret i32 %call, !dbg !5764
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5765 dso_local i32 @ww_mutex_trylock(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5768 dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5769 dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !5770 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5772, metadata !DIExpression()), !dbg !5773
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5774
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #8, !dbg !5776
  br i1 %call, label %if.end, label %if.then, !dbg !5777

if.then:                                          ; preds = %entry
  br label %return, !dbg !5778

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5779
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5780
  %2 = load ptr, ptr %prev, align 8, !dbg !5780
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !5781
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5782
  %4 = load ptr, ptr %next, align 8, !dbg !5782
  call void @__list_del(ptr noundef %2, ptr noundef %4) #8, !dbg !5783
  br label %return, !dbg !5784

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5784
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !5785 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5789, metadata !DIExpression()), !dbg !5790
  ret i1 true, !dbg !5791
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !5792 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5794, metadata !DIExpression()), !dbg !5796
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5795, metadata !DIExpression()), !dbg !5797
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !5798
  %1 = load ptr, ptr %next.addr, align 8, !dbg !5799
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5800
  store ptr %0, ptr %prev1, align 8, !dbg !5801
  br label %do.body, !dbg !5802

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5803

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5805

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5803

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5807
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !5807
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5807
  store volatile ptr %2, ptr %next4, align 8, !dbg !5807
  br label %do.end5, !dbg !5807

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5803

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5809
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !5810 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5814, metadata !DIExpression()), !dbg !5817
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5815, metadata !DIExpression()), !dbg !5818
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5816, metadata !DIExpression()), !dbg !5819
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5820
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !5822
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5823
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8, !dbg !5824
  br i1 %call, label %if.end, label %if.then, !dbg !5825

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5826

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !5827
  %4 = load ptr, ptr %next.addr, align 8, !dbg !5828
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !5829
  store ptr %3, ptr %prev1, align 8, !dbg !5830
  %5 = load ptr, ptr %next.addr, align 8, !dbg !5831
  %6 = load ptr, ptr %new.addr, align 8, !dbg !5832
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !5833
  store ptr %5, ptr %next2, align 8, !dbg !5834
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !5835
  %8 = load ptr, ptr %new.addr, align 8, !dbg !5836
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !5837
  store ptr %7, ptr %prev3, align 8, !dbg !5838
  br label %do.body, !dbg !5839

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5840

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5842

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5840

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !5844
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !5844
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !5844
  store volatile ptr %9, ptr %next6, align 8, !dbg !5844
  br label %do.end7, !dbg !5844

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5840

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5846
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !5847 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5851, metadata !DIExpression()), !dbg !5854
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5852, metadata !DIExpression()), !dbg !5855
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5853, metadata !DIExpression()), !dbg !5856
  ret i1 true, !dbg !5857
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dma_resv_lock_slow_interruptible(ptr noundef %obj, ptr noundef %ctx) #3 align 16 !dbg !5858 {
entry:
  %obj.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !5860, metadata !DIExpression()), !dbg !5862
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !5861, metadata !DIExpression()), !dbg !5863
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !5864
  %lock = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 0, !dbg !5865
  %1 = load ptr, ptr %ctx.addr, align 8, !dbg !5866
  %call = call i32 @ww_mutex_lock_slow_interruptible(ptr noundef %lock, ptr noundef %1) #8, !dbg !5867
  ret i32 %call, !dbg !5868
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_resv_lock_slow(ptr noundef %obj, ptr noundef %ctx) #3 align 16 !dbg !5869 {
entry:
  %obj.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !5873, metadata !DIExpression()), !dbg !5875
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !5874, metadata !DIExpression()), !dbg !5876
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !5877
  %lock = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 0, !dbg !5878
  %1 = load ptr, ptr %ctx.addr, align 8, !dbg !5879
  call void @ww_mutex_lock_slow(ptr noundef %lock, ptr noundef %1) #8, !dbg !5880
  ret void, !dbg !5881
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ww_mutex_lock_slow_interruptible(ptr noundef %lock, ptr noundef %ctx) #3 align 16 !dbg !5882 {
entry:
  %lock.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5884, metadata !DIExpression()), !dbg !5886
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !5885, metadata !DIExpression()), !dbg !5887
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5888
  %1 = load ptr, ptr %ctx.addr, align 8, !dbg !5889
  %call = call i32 @ww_mutex_lock_interruptible(ptr noundef %0, ptr noundef %1) #8, !dbg !5890
  ret i32 %call, !dbg !5891
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ww_mutex_lock_slow(ptr noundef %lock, ptr noundef %ctx) #3 align 16 !dbg !5892 {
entry:
  %lock.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5896, metadata !DIExpression()), !dbg !5899
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !5897, metadata !DIExpression()), !dbg !5900
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !5901
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5898, metadata !DIExpression()), !dbg !5902
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5903
  %1 = load ptr, ptr %ctx.addr, align 8, !dbg !5904
  %call = call i32 @ww_mutex_lock(ptr noundef %0, ptr noundef %1) #8, !dbg !5905
  store i32 %call, ptr %ret, align 4, !dbg !5906
  %2 = load i32, ptr %ret, align 4, !dbg !5907
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !5908
  ret void, !dbg !5908
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5046, !5047, !5048, !5049, !5050, !5051, !5052, !5053}
!llvm.ident = !{!5054}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_eu_backoff_reservation296", scope: !2, file: !3, line: 60, type: !171, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/ttm/.ttm_execbuf_util.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/ttm/ttm\22 -D KBUILD_BASENAME=\22ttm_execbuf_util\22 -D KBUILD_MODNAME=\22ttm\22 -D __KBUILD_MODNAME=kmod_ttm -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/ttm/ttm_execbuf_util.ll drivers/gpu/drm/ttm/ttm_execbuf_util.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !170, globals: !5036, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/ttm/ttm_execbuf_util.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d4a57efdf171a368eca2c7f83e75bb0e")
!4 = !{!5, !11, !19, !26, !34, !50, !57, !63, !68, !74, !80, !87, !92, !98, !104, !111, !119, !127, !136, !141, !146, !152, !158, !165}
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
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_gem_object_status", file: !88, line: 61, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/drm/drm_gem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5db19977067e41c640c8fecb4e671923")
!89 = !{!90, !91}
!90 = !DIEnumerator(name: "DRM_GEM_OBJECT_RESIDENT", value: 1)
!91 = !DIEnumerator(name: "DRM_GEM_OBJECT_PURGEABLE", value: 2)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ttm_caching", file: !93, line: 33, baseType: !7, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/drm/ttm/ttm_caching.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "19c2ae3004d13ae67685208908fb2e14")
!94 = !{!95, !96, !97}
!95 = !DIEnumerator(name: "ttm_uncached", value: 0)
!96 = !DIEnumerator(name: "ttm_write_combined", value: 1)
!97 = !DIEnumerator(name: "ttm_cached", value: 2)
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
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_resv_usage", file: !159, line: 71, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/dma-resv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "33eb7b47491fa42a2c4bcb5c661d5780")
!160 = !{!161, !162, !163, !164}
!161 = !DIEnumerator(name: "DMA_RESV_USAGE_KERNEL", value: 0)
!162 = !DIEnumerator(name: "DMA_RESV_USAGE_WRITE", value: 1)
!163 = !DIEnumerator(name: "DMA_RESV_USAGE_READ", value: 2)
!164 = !DIEnumerator(name: "DMA_RESV_USAGE_BOOKKEEP", value: 3)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !166, line: 10, baseType: !7, size: 32, elements: !167)
!166 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!167 = !{!168, !169}
!168 = !DIEnumerator(name: "false", value: 0)
!169 = !DIEnumerator(name: "true", value: 1)
!170 = !{!171, !172, !5031, !5034, !2613, !432, !5035}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_validate_buffer", file: !174, line: 48, size: 256, elements: !175)
!174 = !DIFile(filename: "./include/drm/ttm/ttm_execbuf_util.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce38a601479e364f093973927c9daf36")
!175 = !{!176, !183, !5030}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !173, file: !174, line: 49, baseType: !177, size: 128)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !178, line: 190, size: 128, elements: !179)
!178 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!179 = !{!180, !182}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !177, file: !178, line: 191, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !177, file: !178, line: 191, baseType: !181, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "bo", scope: !173, file: !174, line: 50, baseType: !184, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_buffer_object", file: !153, line: 98, size: 3712, elements: !186)
!186 = !{!187, !4343, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5026, !5027, !5028, !5029}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !185, file: !153, line: 99, baseType: !188, size: 2816)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object", file: !88, line: 264, size: 2816, elements: !189)
!189 = !{!190, !204, !205, !208, !4160, !4200, !4201, !4202, !4205, !4208, !4229, !4230, !4234, !4334, !4335}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !188, file: !88, line: 274, baseType: !191, size: 32)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !192, line: 19, size: 32, elements: !193)
!192 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!193 = !{!194}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !191, file: !192, line: 20, baseType: !195, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !196, line: 113, baseType: !197)
!196 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !196, line: 111, size: 32, elements: !198)
!198 = !{!199}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !197, file: !196, line: 112, baseType: !200, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !178, line: 174, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !178, line: 172, size: 32, elements: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !201, file: !178, line: 173, baseType: !120, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "handle_count", scope: !188, file: !88, line: 287, baseType: !7, size: 32, offset: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !188, file: !88, line: 292, baseType: !206, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !88, line: 292, flags: DIFlagFwdDecl)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "filp", scope: !188, file: !88, line: 302, baseType: !209, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !64, line: 994, size: 1856, align: 64, elements: !211)
!211 = !{!212, !231, !270, !272, !282, !295, !299, !300, !376, !604, !613, !4150, !4151, !4152, !4153, !4154, !4155, !4157, !4158, !4159}
!212 = !DIDerivedType(tag: DW_TAG_member, scope: !210, file: !64, line: 995, baseType: !213, size: 128)
!213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !210, file: !64, line: 995, size: 128, elements: !214)
!214 = !{!215, !221, !230}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !213, file: !64, line: 996, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !217, line: 60, size: 64, elements: !218)
!217 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !216, file: !217, line: 61, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !213, file: !64, line: 997, baseType: !222, size: 128, align: 64)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !178, line: 232, size: 128, align: 64, elements: !223)
!223 = !{!224, !226}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !222, file: !178, line: 233, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !222, file: !178, line: 234, baseType: !227, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !225}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !213, file: !64, line: 998, baseType: !7, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !210, file: !64, line: 1005, baseType: !232, size: 32, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !233, line: 29, baseType: !234)
!233 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !233, line: 17, size: 32, elements: !235)
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_member, scope: !234, file: !233, line: 18, baseType: !237, size: 32)
!237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !234, file: !233, line: 18, size: 32, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !237, file: !233, line: 19, baseType: !240, size: 32)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !241, line: 14, size: 32, elements: !242)
!241 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!242 = !{!243}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !240, file: !241, line: 15, baseType: !244, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !245, line: 44, baseType: !246)
!245 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !245, line: 14, size: 32, elements: !247)
!247 = !{!248}
!248 = !DIDerivedType(tag: DW_TAG_member, scope: !246, file: !245, line: 15, baseType: !249, size: 32)
!249 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !246, file: !245, line: 15, size: 32, elements: !250)
!250 = !{!251, !252, !262}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !249, file: !245, line: 16, baseType: !200, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, scope: !249, file: !245, line: 24, baseType: !253, size: 16)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !249, file: !245, line: 24, size: 16, elements: !254)
!254 = !{!255, !261}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !253, file: !245, line: 25, baseType: !256, size: 8)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !257, line: 17, baseType: !258)
!257 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !259, line: 21, baseType: !260)
!259 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!260 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !253, file: !245, line: 26, baseType: !256, size: 8, offset: 8)
!262 = !DIDerivedType(tag: DW_TAG_member, scope: !249, file: !245, line: 28, baseType: !263, size: 32)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !249, file: !245, line: 28, size: 32, elements: !264)
!264 = !{!265, !269}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !263, file: !245, line: 29, baseType: !266, size: 16)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !257, line: 19, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !259, line: 24, baseType: !268)
!268 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !263, file: !245, line: 30, baseType: !266, size: 16, offset: 16)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !210, file: !64, line: 1006, baseType: !271, size: 32, offset: 160)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !178, line: 156, baseType: !7)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !210, file: !64, line: 1007, baseType: !273, size: 64, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !274, line: 13, baseType: !275)
!274 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !178, line: 181, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !178, line: 179, size: 64, elements: !277)
!277 = !{!278}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !276, file: !178, line: 180, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !257, line: 22, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !259, line: 30, baseType: !281)
!281 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !210, file: !64, line: 1008, baseType: !283, size: 256, offset: 256)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !284, line: 66, size: 256, elements: !285)
!284 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!285 = !{!286, !287, !289, !294}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !283, file: !284, line: 67, baseType: !273, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !283, file: !284, line: 68, baseType: !288, size: 32, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !241, line: 23, baseType: !240)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !283, file: !284, line: 70, baseType: !290, size: 32, offset: 96)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !291, line: 15, size: 32, elements: !292)
!291 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!292 = !{!293}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !290, file: !291, line: 20, baseType: !200, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !283, file: !284, line: 72, baseType: !177, size: 128, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !210, file: !64, line: 1009, baseType: !296, size: 64, offset: 512)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !178, line: 52, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !298, line: 88, baseType: !281)
!298 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!299 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !210, file: !64, line: 1010, baseType: !7, size: 32, offset: 576)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !210, file: !64, line: 1011, baseType: !301, size: 256, offset: 640)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !64, line: 948, size: 256, elements: !302)
!302 = !{!303, !326, !365, !366, !374, !375}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !301, file: !64, line: 949, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !305, line: 34, baseType: !306)
!305 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !305, line: 25, size: 64, elements: !307)
!307 = !{!308}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !306, file: !305, line: 26, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !310, line: 27, baseType: !311)
!310 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !310, line: 13, size: 64, elements: !312)
!312 = !{!313, !325}
!313 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !310, line: 14, baseType: !314, size: 32)
!314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !310, line: 14, size: 32, elements: !315)
!315 = !{!316, !317}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !314, file: !310, line: 15, baseType: !200, size: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, scope: !314, file: !310, line: 16, baseType: !318, size: 32)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !314, file: !310, line: 16, size: 32, elements: !319)
!319 = !{!320, !321}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !318, file: !310, line: 18, baseType: !256, size: 8)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !318, file: !310, line: 19, baseType: !322, size: 24, offset: 8)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 24, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 3)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !311, file: !310, line: 26, baseType: !244, size: 32, offset: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !301, file: !64, line: 950, baseType: !327, size: 64, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !12, line: 59, size: 768, elements: !329)
!329 = !{!330, !331, !332, !333, !346, !347, !354, !355}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !328, file: !12, line: 61, baseType: !195, size: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !328, file: !12, line: 62, baseType: !7, size: 32, offset: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !328, file: !12, line: 63, baseType: !232, size: 32, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !328, file: !12, line: 65, baseType: !334, size: 256, offset: 128)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 256, elements: !344)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !178, line: 194, size: 64, elements: !336)
!336 = !{!337}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !335, file: !178, line: 195, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !178, line: 198, size: 128, elements: !340)
!340 = !{!341, !342}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !339, file: !178, line: 199, baseType: !338, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !339, file: !178, line: 199, baseType: !343, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!344 = !{!345}
!345 = !DISubrange(count: 4)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !328, file: !12, line: 66, baseType: !335, size: 64, offset: 384)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !328, file: !12, line: 68, baseType: !348, size: 192, offset: 448)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !349, line: 41, baseType: !350)
!349 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !349, line: 37, size: 192, elements: !351)
!351 = !{!352, !353}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !350, file: !349, line: 38, baseType: !232, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !350, file: !349, line: 39, baseType: !177, size: 128, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !328, file: !12, line: 69, baseType: !222, size: 128, align: 64, offset: 640)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !328, file: !12, line: 70, baseType: !356, offset: 768)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, elements: !363)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !12, line: 54, size: 128, elements: !358)
!358 = !{!359, !360}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !357, file: !12, line: 55, baseType: !120, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !357, file: !12, line: 56, baseType: !361, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !12, line: 56, flags: DIFlagFwdDecl)
!363 = !{!364}
!364 = !DISubrange(count: -1)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !301, file: !64, line: 951, baseType: !11, size: 32, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !301, file: !64, line: 952, baseType: !367, size: 32, offset: 160)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !368, line: 23, baseType: !369)
!368 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 21, size: 32, elements: !370)
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !369, file: !368, line: 22, baseType: !372, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !178, line: 37, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !298, line: 49, baseType: !7)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !301, file: !64, line: 952, baseType: !367, size: 32, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !301, file: !64, line: 953, baseType: !120, size: 32, offset: 224)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !210, file: !64, line: 1012, baseType: !377, size: 64, offset: 896)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !380, line: 110, size: 1472, elements: !381)
!380 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!381 = !{!382, !383, !384, !391, !392, !393, !394, !395, !396, !397, !398, !407, !408, !409, !410, !411, !412, !549, !550, !551, !552, !553, !584, !587, !591, !599}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !379, file: !380, line: 111, baseType: !273, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !379, file: !380, line: 112, baseType: !367, size: 32, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !379, file: !380, line: 113, baseType: !385, size: 32, offset: 96)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !368, line: 28, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 26, size: 32, elements: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !386, file: !368, line: 27, baseType: !389, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !178, line: 38, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !298, line: 50, baseType: !7)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !379, file: !380, line: 114, baseType: !367, size: 32, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !379, file: !380, line: 115, baseType: !385, size: 32, offset: 160)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !379, file: !380, line: 116, baseType: !367, size: 32, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !379, file: !380, line: 117, baseType: !385, size: 32, offset: 224)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !379, file: !380, line: 118, baseType: !367, size: 32, offset: 256)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !379, file: !380, line: 119, baseType: !385, size: 32, offset: 288)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !379, file: !380, line: 120, baseType: !7, size: 32, offset: 320)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !379, file: !380, line: 121, baseType: !399, size: 64, offset: 384)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !400, line: 24, baseType: !401)
!400 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !400, line: 24, size: 64, elements: !402)
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !401, file: !400, line: 24, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !257, line: 23, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !259, line: 31, baseType: !406)
!406 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !379, file: !380, line: 122, baseType: !399, size: 64, offset: 448)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !379, file: !380, line: 123, baseType: !399, size: 64, offset: 512)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !379, file: !380, line: 124, baseType: !399, size: 64, offset: 576)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !379, file: !380, line: 125, baseType: !399, size: 64, offset: 640)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !379, file: !380, line: 127, baseType: !260, size: 8, offset: 704)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !379, file: !380, line: 129, baseType: !413, size: 64, offset: 768)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !415, line: 195, size: 1728, elements: !416)
!415 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!416 = !{!417, !418, !423, !436, !445, !448, !449, !456, !457, !458, !459, !464, !465, !466, !468, !469, !513, !534}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !414, file: !415, line: 196, baseType: !195, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !414, file: !415, line: 197, baseType: !419, size: 32, offset: 32)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !415, line: 28, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !178, line: 104, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !257, line: 20, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !259, line: 26, baseType: !120)
!423 = !DIDerivedType(tag: DW_TAG_member, scope: !414, file: !415, line: 198, baseType: !424, size: 192, offset: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !414, file: !415, line: 198, size: 192, elements: !425)
!425 = !{!426, !427}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !424, file: !415, line: 199, baseType: !177, size: 128)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !424, file: !415, line: 200, baseType: !428, size: 192, align: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !429, line: 5, size: 192, align: 64, elements: !430)
!429 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!430 = !{!431, !433, !435}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !428, file: !429, line: 6, baseType: !432, size: 64)
!432 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !428, file: !429, line: 7, baseType: !434, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !428, file: !429, line: 8, baseType: !434, size: 64, offset: 128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !414, file: !415, line: 205, baseType: !437, size: 320, offset: 256)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !438, line: 48, size: 320, elements: !439)
!438 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!439 = !{!440, !441, !442, !443, !444}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !437, file: !438, line: 49, baseType: !273, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !437, file: !438, line: 55, baseType: !273, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !437, file: !438, line: 57, baseType: !290, size: 32, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !437, file: !438, line: 59, baseType: !288, size: 32, offset: 160)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !437, file: !438, line: 60, baseType: !177, size: 128, offset: 192)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !414, file: !415, line: 206, baseType: !446, size: 64, offset: 576)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !415, line: 206, flags: DIFlagFwdDecl)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !414, file: !415, line: 207, baseType: !171, size: 64, offset: 640)
!449 = !DIDerivedType(tag: DW_TAG_member, scope: !414, file: !415, line: 208, baseType: !450, size: 64, offset: 704)
!450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !414, file: !415, line: 208, size: 64, elements: !451)
!451 = !{!452, !455}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !450, file: !415, line: 209, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !454, line: 8, baseType: !280)
!454 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!455 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !450, file: !415, line: 210, baseType: !453, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !414, file: !415, line: 212, baseType: !453, size: 64, offset: 768)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !414, file: !415, line: 213, baseType: !367, size: 32, offset: 832)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !414, file: !415, line: 214, baseType: !385, size: 32, offset: 864)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !414, file: !415, line: 215, baseType: !460, size: 32, offset: 896)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !415, line: 31, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !178, line: 110, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !257, line: 21, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !259, line: 27, baseType: !7)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !414, file: !415, line: 216, baseType: !268, size: 16, offset: 928)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !414, file: !415, line: 217, baseType: !268, size: 16, offset: 944)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !414, file: !415, line: 221, baseType: !467, size: 16, offset: 960)
!467 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !414, file: !415, line: 228, baseType: !432, size: 64, offset: 1024)
!469 = !DIDerivedType(tag: DW_TAG_member, scope: !414, file: !415, line: 245, baseType: !470, size: 320, offset: 1088)
!470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !414, file: !415, line: 245, size: 320, elements: !471)
!471 = !{!472, !504}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !470, file: !415, line: 246, baseType: !473, size: 320)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !415, line: 114, size: 320, elements: !474)
!474 = !{!475, !476, !489, !492, !501}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !473, file: !415, line: 116, baseType: !432, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, scope: !473, file: !415, line: 117, baseType: !477, size: 64, offset: 64)
!477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !473, file: !415, line: 117, size: 64, elements: !478)
!478 = !{!479, !488}
!479 = !DIDerivedType(tag: DW_TAG_member, scope: !477, file: !415, line: 118, baseType: !480, size: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !477, file: !415, line: 118, size: 64, elements: !481)
!481 = !{!482, !483}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !480, file: !415, line: 120, baseType: !266, size: 16)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !480, file: !415, line: 121, baseType: !484, size: 48, offset: 16)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 48, elements: !486)
!485 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!486 = !{!487}
!487 = !DISubrange(count: 6)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !477, file: !415, line: 127, baseType: !432, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !473, file: !415, line: 129, baseType: !490, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !415, line: 102, flags: DIFlagFwdDecl)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !473, file: !415, line: 130, baseType: !493, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !415, line: 108, size: 192, elements: !495)
!495 = !{!496, !497, !498}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !494, file: !415, line: 109, baseType: !222, size: 128, align: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !494, file: !415, line: 110, baseType: !195, size: 32, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !494, file: !415, line: 111, baseType: !499, size: 8, offset: 160)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !178, line: 35, baseType: !500)
!500 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !473, file: !415, line: 131, baseType: !502, size: 64, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!504 = !DIDerivedType(tag: DW_TAG_member, scope: !470, file: !415, line: 247, baseType: !505, size: 320)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !470, file: !415, line: 247, size: 320, elements: !506)
!506 = !{!507, !508, !509, !510, !511}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !505, file: !415, line: 248, baseType: !432, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !505, file: !415, line: 249, baseType: !432, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !505, file: !415, line: 250, baseType: !490, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !505, file: !415, line: 251, baseType: !493, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !505, file: !415, line: 252, baseType: !512, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, scope: !414, file: !415, line: 260, baseType: !514, size: 256, offset: 1408)
!514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !414, file: !415, line: 260, size: 256, elements: !515)
!515 = !{!516, !522}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !514, file: !415, line: 261, baseType: !517, size: 256)
!517 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !415, line: 134, size: 256, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !517, file: !415, line: 135, baseType: !171, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !517, file: !415, line: 136, baseType: !521, size: 256)
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 256, elements: !344)
!522 = !DIDerivedType(tag: DW_TAG_member, scope: !514, file: !415, line: 262, baseType: !523, size: 256)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !514, file: !415, line: 262, size: 256, elements: !524)
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !523, file: !415, line: 264, baseType: !177, size: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !523, file: !415, line: 265, baseType: !527, size: 128, offset: 128)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !528, line: 22, size: 128, elements: !529)
!528 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!529 = !{!530, !533}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !527, file: !528, line: 23, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !528, line: 23, flags: DIFlagFwdDecl)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !527, file: !528, line: 24, baseType: !432, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !414, file: !415, line: 280, baseType: !535, size: 64, offset: 1664)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !415, line: 176, size: 192, elements: !537)
!537 = !{!538, !547, !548}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !536, file: !415, line: 177, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !415, line: 171, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!120, !413, !543, !545, !413}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !536, file: !415, line: 178, baseType: !413, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !536, file: !415, line: 179, baseType: !490, size: 64, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !379, file: !380, line: 130, baseType: !413, size: 64, offset: 832)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !379, file: !380, line: 131, baseType: !413, size: 64, offset: 896)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !379, file: !380, line: 132, baseType: !413, size: 64, offset: 960)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !379, file: !380, line: 135, baseType: !171, size: 64, offset: 1024)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !379, file: !380, line: 137, baseType: !554, size: 64, offset: 1088)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !556, line: 14, size: 1088, elements: !557)
!556 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!557 = !{!558, !559, !568, !569, !570, !571, !572, !573}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !555, file: !556, line: 15, baseType: !195, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !555, file: !556, line: 17, baseType: !560, size: 320, offset: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !561, line: 22, size: 320, elements: !562)
!561 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!562 = !{!563, !564, !565, !566}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !560, file: !561, line: 23, baseType: !288, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !560, file: !561, line: 24, baseType: !279, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !560, file: !561, line: 26, baseType: !177, size: 128, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !560, file: !561, line: 28, baseType: !567, size: 64, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !555, file: !556, line: 19, baseType: !432, size: 64, offset: 384)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !555, file: !556, line: 20, baseType: !273, size: 64, offset: 448)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !555, file: !556, line: 23, baseType: !339, size: 128, offset: 512)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !555, file: !556, line: 24, baseType: !367, size: 32, offset: 640)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !555, file: !556, line: 29, baseType: !273, size: 64, offset: 704)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !555, file: !556, line: 36, baseType: !574, size: 320, offset: 768)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !575, line: 15, size: 320, elements: !576)
!575 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!576 = !{!577, !578, !579, !580, !581, !582, !583}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !574, file: !575, line: 16, baseType: !288, size: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !574, file: !575, line: 18, baseType: !120, size: 32, offset: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !574, file: !575, line: 19, baseType: !120, size: 32, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !574, file: !575, line: 20, baseType: !120, size: 32, offset: 96)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !574, file: !575, line: 21, baseType: !120, size: 32, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !574, file: !575, line: 22, baseType: !432, size: 64, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !574, file: !575, line: 23, baseType: !432, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !379, file: !380, line: 138, baseType: !585, size: 64, offset: 1152)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !368, line: 18, flags: DIFlagFwdDecl)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !379, file: !380, line: 139, baseType: !588, size: 64, offset: 1216)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !590, line: 16, flags: DIFlagFwdDecl)
!590 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!591 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !379, file: !380, line: 140, baseType: !592, size: 64, offset: 1280)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !380, line: 25, size: 64, elements: !594)
!594 = !{!595, !596, !597}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !593, file: !380, line: 26, baseType: !200, size: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !593, file: !380, line: 27, baseType: !120, size: 32, offset: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !593, file: !380, line: 28, baseType: !598, offset: 64)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, elements: !363)
!599 = !DIDerivedType(tag: DW_TAG_member, scope: !379, file: !380, line: 142, baseType: !600, size: 128, offset: 1344)
!600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !379, file: !380, line: 142, size: 128, elements: !601)
!601 = !{!602, !603}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !600, file: !380, line: 143, baseType: !120, size: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !600, file: !380, line: 144, baseType: !222, size: 128, align: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !210, file: !64, line: 1013, baseType: !605, size: 256, offset: 960)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !64, line: 970, size: 256, elements: !606)
!606 = !{!607, !608, !609, !610, !611, !612}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !605, file: !64, line: 971, baseType: !432, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !605, file: !64, line: 972, baseType: !7, size: 32, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !605, file: !64, line: 973, baseType: !7, size: 32, offset: 96)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !605, file: !64, line: 974, baseType: !7, size: 32, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !605, file: !64, line: 975, baseType: !7, size: 32, offset: 160)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !605, file: !64, line: 976, baseType: !296, size: 64, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !210, file: !64, line: 1014, baseType: !614, size: 128, offset: 1216)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !615, line: 8, size: 128, elements: !616)
!615 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!616 = !{!617, !4149}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !614, file: !615, line: 9, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !620, line: 70, size: 256, elements: !621)
!620 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!621 = !{!622, !4146, !4147, !4148}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !619, file: !620, line: 71, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !625, line: 82, size: 1536, elements: !626)
!625 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!626 = !{!627, !628, !638, !646, !647, !662, !4113, !4115, !4128, !4129, !4130, !4131, !4132, !4138, !4139, !4140}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !624, file: !625, line: 84, baseType: !7, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !624, file: !625, line: 85, baseType: !629, size: 32, offset: 32)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !630, line: 275, baseType: !631)
!630 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !630, line: 275, size: 32, elements: !632)
!632 = !{!633}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !631, file: !630, line: 275, baseType: !634, size: 32)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !630, line: 69, baseType: !635)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !630, line: 64, size: 32, elements: !636)
!636 = !{!637}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !635, file: !630, line: 65, baseType: !7, size: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !624, file: !625, line: 86, baseType: !639, size: 128, offset: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !640, line: 38, size: 128, elements: !641)
!640 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!641 = !{!642, !644}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !639, file: !640, line: 39, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !639, file: !640, line: 39, baseType: !645, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !624, file: !625, line: 87, baseType: !623, size: 64, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !624, file: !625, line: 88, baseType: !648, size: 128, offset: 256)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !625, line: 49, size: 128, elements: !649)
!649 = !{!650, !659}
!650 = !DIDerivedType(tag: DW_TAG_member, scope: !648, file: !625, line: 50, baseType: !651, size: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !648, file: !625, line: 50, size: 64, elements: !652)
!652 = !{!653, !658}
!653 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !625, line: 51, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !651, file: !625, line: 51, size: 64, elements: !655)
!655 = !{!656, !657}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !654, file: !625, line: 52, baseType: !462, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !654, file: !625, line: 52, baseType: !462, size: 32, offset: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !651, file: !625, line: 54, baseType: !404, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !648, file: !625, line: 56, baseType: !660, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !624, file: !625, line: 89, baseType: !663, size: 64, offset: 384)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !64, line: 641, size: 4800, elements: !665)
!665 = !{!666, !668, !669, !670, !671, !672, !673, !676, !677, !875, !3929, !3930, !3931, !3932, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !4095, !4098, !4099, !4100, !4109, !4110, !4111, !4112}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !664, file: !64, line: 642, baseType: !667, size: 16)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !178, line: 24, baseType: !268)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !664, file: !64, line: 643, baseType: !268, size: 16, offset: 16)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !664, file: !64, line: 644, baseType: !367, size: 32, offset: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !664, file: !64, line: 645, baseType: !177, size: 128, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !664, file: !64, line: 646, baseType: !385, size: 32, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !664, file: !64, line: 647, baseType: !7, size: 32, offset: 224)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !664, file: !64, line: 650, baseType: !674, size: 64, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !64, line: 607, flags: DIFlagFwdDecl)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !664, file: !64, line: 651, baseType: !674, size: 64, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !664, file: !64, line: 654, baseType: !678, size: 64, offset: 384)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !680)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !64, line: 1966, size: 2048, align: 512, elements: !681)
!681 = !{!682, !686, !699, !705, !709, !713, !717, !721, !725, !729, !733, !734, !740, !744, !782, !813, !823, !829, !833, !837, !841, !845, !849, !855, !859}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !680, file: !64, line: 1967, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!623, !663, !623, !7}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !680, file: !64, line: 1968, baseType: !687, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!502, !623, !663, !690}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !692, line: 10, size: 128, elements: !693)
!692 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!693 = !{!694, !698}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !691, file: !692, line: 11, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{null, !171}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !691, file: !692, line: 12, baseType: !171, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !680, file: !64, line: 1969, baseType: !700, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!120, !703, !663, !120}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !400, line: 42, flags: DIFlagFwdDecl)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !680, file: !64, line: 1970, baseType: !706, size: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!674, !663, !120, !499}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !680, file: !64, line: 1972, baseType: !710, size: 64, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!120, !623, !512, !120}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !680, file: !64, line: 1974, baseType: !714, size: 64, offset: 320)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!120, !703, !663, !623, !667, !499}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !680, file: !64, line: 1976, baseType: !718, size: 64, offset: 384)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!120, !623, !663, !623}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !680, file: !64, line: 1977, baseType: !722, size: 64, offset: 448)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!120, !663, !623}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !680, file: !64, line: 1978, baseType: !726, size: 64, offset: 512)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!120, !703, !663, !623, !502}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !680, file: !64, line: 1980, baseType: !730, size: 64, offset: 576)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!120, !703, !663, !623, !667}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !680, file: !64, line: 1982, baseType: !722, size: 64, offset: 640)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !680, file: !64, line: 1983, baseType: !735, size: 64, offset: 704)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!120, !703, !663, !623, !667, !738}
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !178, line: 21, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !178, line: 18, baseType: !462)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !680, file: !64, line: 1985, baseType: !741, size: 64, offset: 768)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!120, !703, !663, !623, !663, !623, !7}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !680, file: !64, line: 1987, baseType: !745, size: 64, offset: 832)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!120, !703, !623, !748}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !64, line: 226, size: 640, elements: !750)
!750 = !{!751, !752, !753, !763, !772, !773, !779, !780, !781}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !749, file: !64, line: 227, baseType: !7, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !749, file: !64, line: 228, baseType: !667, size: 16, offset: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, scope: !749, file: !64, line: 241, baseType: !754, size: 32, offset: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !749, file: !64, line: 241, size: 32, elements: !755)
!755 = !{!756, !757}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !754, file: !64, line: 242, baseType: !367, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !754, file: !64, line: 243, baseType: !758, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !759, line: 16, baseType: !760)
!759 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !759, line: 14, size: 32, elements: !761)
!761 = !{!762}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !760, file: !759, line: 15, baseType: !372, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, scope: !749, file: !64, line: 245, baseType: !764, size: 32, offset: 96)
!764 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !749, file: !64, line: 245, size: 32, elements: !765)
!765 = !{!766, !767}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !764, file: !64, line: 246, baseType: !385, size: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !764, file: !64, line: 247, baseType: !768, size: 32)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !759, line: 20, baseType: !769)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !759, line: 18, size: 32, elements: !770)
!770 = !{!771}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !769, file: !759, line: 19, baseType: !389, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !749, file: !64, line: 249, baseType: !296, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !749, file: !64, line: 250, baseType: !774, size: 128, offset: 192)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !454, line: 13, size: 128, elements: !775)
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !774, file: !454, line: 14, baseType: !453, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !774, file: !454, line: 15, baseType: !778, size: 64, offset: 64)
!778 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !749, file: !64, line: 251, baseType: !774, size: 128, offset: 320)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !749, file: !64, line: 252, baseType: !774, size: 128, offset: 448)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !749, file: !64, line: 259, baseType: !209, size: 64, offset: 576)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !680, file: !64, line: 1988, baseType: !783, size: 64, offset: 896)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!120, !703, !786, !788, !462, !7}
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !614)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !790, line: 22, size: 1280, elements: !791)
!790 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!791 = !{!792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !789, file: !790, line: 23, baseType: !462, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !789, file: !790, line: 24, baseType: !667, size: 16, offset: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !789, file: !790, line: 25, baseType: !7, size: 32, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !789, file: !790, line: 26, baseType: !461, size: 32, offset: 96)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !789, file: !790, line: 27, baseType: !404, size: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !789, file: !790, line: 28, baseType: !404, size: 64, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !789, file: !790, line: 41, baseType: !404, size: 64, offset: 256)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !789, file: !790, line: 42, baseType: !738, size: 32, offset: 320)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !789, file: !790, line: 43, baseType: !738, size: 32, offset: 352)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !789, file: !790, line: 44, baseType: !367, size: 32, offset: 384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !789, file: !790, line: 45, baseType: !385, size: 32, offset: 416)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !789, file: !790, line: 46, baseType: !296, size: 64, offset: 448)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !789, file: !790, line: 47, baseType: !774, size: 128, offset: 512)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !789, file: !790, line: 48, baseType: !774, size: 128, offset: 640)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !789, file: !790, line: 49, baseType: !774, size: 128, offset: 768)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !789, file: !790, line: 50, baseType: !774, size: 128, offset: 896)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !789, file: !790, line: 51, baseType: !404, size: 64, offset: 1024)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !789, file: !790, line: 52, baseType: !404, size: 64, offset: 1088)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !789, file: !790, line: 53, baseType: !462, size: 32, offset: 1152)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !789, file: !790, line: 54, baseType: !462, size: 32, offset: 1184)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !789, file: !790, line: 55, baseType: !404, size: 64, offset: 1216)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !680, file: !64, line: 1990, baseType: !814, size: 64, offset: 960)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!817, !623, !512, !820}
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !178, line: 66, baseType: !818)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !298, line: 73, baseType: !819)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !298, line: 15, baseType: !778)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !178, line: 61, baseType: !821)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !298, line: 72, baseType: !822)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !298, line: 16, baseType: !432)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !680, file: !64, line: 1991, baseType: !824, size: 64, offset: 1024)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!120, !663, !827, !404, !404}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !64, line: 55, flags: DIFlagFwdDecl)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !680, file: !64, line: 1993, baseType: !830, size: 64, offset: 1088)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!120, !663, !120}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !680, file: !64, line: 1994, baseType: !834, size: 64, offset: 1152)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!120, !663, !623, !209, !7, !667}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !680, file: !64, line: 1997, baseType: !838, size: 64, offset: 1216)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!120, !703, !663, !209, !667}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !680, file: !64, line: 1999, baseType: !842, size: 64, offset: 1280)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!674, !703, !623, !120}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !680, file: !64, line: 2001, baseType: !846, size: 64, offset: 1344)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!120, !703, !623, !674, !120}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !680, file: !64, line: 2003, baseType: !850, size: 64, offset: 1408)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!120, !703, !623, !853}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !64, line: 76, flags: DIFlagFwdDecl)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !680, file: !64, line: 2005, baseType: !856, size: 64, offset: 1472)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!120, !623, !853}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !680, file: !64, line: 2006, baseType: !860, size: 64, offset: 1536)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!863, !663}
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !64, line: 3192, size: 192, elements: !865)
!865 = !{!866, !874}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !864, file: !64, line: 3193, baseType: !867, size: 128)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !868, line: 296, size: 128, elements: !869)
!868 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!869 = !{!870, !871, !873}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !867, file: !868, line: 297, baseType: !232, size: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !867, file: !868, line: 299, baseType: !872, size: 32, offset: 32)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !178, line: 154, baseType: !7)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !867, file: !868, line: 300, baseType: !171, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !864, file: !64, line: 3194, baseType: !462, size: 32, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !664, file: !64, line: 655, baseType: !876, size: 64, offset: 448)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !64, line: 1190, size: 10752, elements: !878)
!878 = !{!879, !880, !881, !882, !883, !884, !2257, !2389, !2429, !2512, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2529, !2533, !2534, !2537, !2540, !2543, !2546, !2547, !2548, !2589, !3804, !3805, !3806, !3807, !3808, !3809, !3812, !3814, !3821, !3822, !3823, !3824, !3883, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !877, file: !64, line: 1191, baseType: !177, size: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !877, file: !64, line: 1192, baseType: !738, size: 32, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !877, file: !64, line: 1193, baseType: !260, size: 8, offset: 160)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !877, file: !64, line: 1194, baseType: !432, size: 64, offset: 192)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !877, file: !64, line: 1195, baseType: !296, size: 64, offset: 256)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !877, file: !64, line: 1196, baseType: !885, size: 64, offset: 320)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !64, line: 2366, size: 576, elements: !887)
!887 = !{!888, !889, !890, !896, !900, !904, !908, !2245, !2246, !2247, !2249, !2250, !2251, !2253, !2254, !2255, !2256}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !886, file: !64, line: 2367, baseType: !502, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !886, file: !64, line: 2368, baseType: !120, size: 32, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !886, file: !64, line: 2376, baseType: !891, size: 64, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{!120, !894}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !620, line: 21, flags: DIFlagFwdDecl)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !886, file: !64, line: 2377, baseType: !897, size: 64, offset: 192)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !899)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !64, line: 75, flags: DIFlagFwdDecl)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !886, file: !64, line: 2378, baseType: !901, size: 64, offset: 256)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{!623, !885, !120, !502, !171}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !886, file: !64, line: 2380, baseType: !905, size: 64, offset: 320)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{null, !876}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !886, file: !64, line: 2381, baseType: !909, size: 64, offset: 384)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !20, line: 402, size: 9216, align: 512, elements: !911)
!911 = !{!912, !913, !914, !918, !1901, !1927, !1928, !1929, !1930, !1934, !1937, !1938, !1939, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2007, !2011, !2031, !2049, !2050, !2051, !2052, !2061, !2084, !2085, !2088, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2102, !2103, !2203, !2211, !2212, !2213, !2215, !2219, !2220, !2224, !2225, !2226, !2227, !2229, !2230, !2231, !2238, !2239, !2240, !2244}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !910, file: !20, line: 403, baseType: !19, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !910, file: !20, line: 406, baseType: !177, size: 128, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !910, file: !20, line: 409, baseType: !915, size: 448, offset: 192)
!915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 448, elements: !916)
!916 = !{!917}
!917 = !DISubrange(count: 56)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !910, file: !20, line: 417, baseType: !919, size: 768, offset: 640)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !20, line: 45, size: 768, elements: !920)
!920 = !{!921, !1894, !1895, !1896, !1899}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !919, file: !20, line: 46, baseType: !922, size: 512)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !923, line: 64, size: 512, elements: !924)
!923 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!924 = !{!925, !926, !927, !929, !973, !1753, !1888, !1889, !1890, !1891, !1892, !1893}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !922, file: !923, line: 65, baseType: !502, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !922, file: !923, line: 66, baseType: !177, size: 128, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !922, file: !923, line: 67, baseType: !928, size: 64, offset: 192)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !922, file: !923, line: 68, baseType: !930, size: 64, offset: 256)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !923, line: 168, size: 768, elements: !932)
!932 = !{!933, !934, !935, !936}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !931, file: !923, line: 169, baseType: !177, size: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !931, file: !923, line: 170, baseType: !232, size: 32, offset: 128)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !931, file: !923, line: 171, baseType: !922, size: 512, offset: 192)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !931, file: !923, line: 172, baseType: !937, size: 64, offset: 704)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !939)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !923, line: 133, size: 192, elements: !940)
!940 = !{!941, !948, !953}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !939, file: !923, line: 134, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !943)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{!120, !946}
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !922)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !939, file: !923, line: 135, baseType: !949, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !950)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{!502, !946}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !939, file: !923, line: 136, baseType: !954, size: 64, offset: 128)
!954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !955)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{!120, !946, !958}
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !923, line: 125, size: 20736, elements: !960)
!960 = !{!961, !963, !967, !968, !972}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !959, file: !923, line: 126, baseType: !962, size: 192)
!962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 192, elements: !323)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !959, file: !923, line: 127, baseType: !964, size: 4096, offset: 192)
!964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 4096, elements: !965)
!965 = !{!966}
!966 = !DISubrange(count: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !959, file: !923, line: 128, baseType: !120, size: 32, offset: 4288)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !959, file: !923, line: 129, baseType: !969, size: 16384, offset: 4320)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 16384, elements: !970)
!970 = !{!971}
!971 = !DISubrange(count: 2048)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !959, file: !923, line: 130, baseType: !120, size: 32, offset: 20704)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !922, file: !923, line: 69, baseType: !974, size: 64, offset: 320)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !976)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !923, line: 116, size: 384, elements: !977)
!977 = !{!978, !982, !1001, !1715, !1743, !1747}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !976, file: !923, line: 117, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{null, !928}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !976, file: !923, line: 118, baseType: !983, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !985)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !986, line: 254, size: 128, elements: !987)
!986 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!987 = !{!988, !997}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !985, file: !986, line: 255, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{!817, !928, !992, !512}
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !986, line: 30, size: 128, elements: !994)
!994 = !{!995, !996}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !993, file: !986, line: 31, baseType: !502, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !993, file: !986, line: 32, baseType: !667, size: 16, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !985, file: !986, line: 256, baseType: !998, size: 64, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!817, !928, !992, !502, !820}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !976, file: !923, line: 119, baseType: !1002, size: 64, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1005)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !986, line: 84, size: 320, elements: !1006)
!1006 = !{!1007, !1008, !1012, !1711, !1713}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1005, file: !986, line: 85, baseType: !502, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1005, file: !986, line: 86, baseType: !1009, size: 64, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!667, !928, !992, !120}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1005, file: !986, line: 88, baseType: !1013, size: 64, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!667, !928, !1016, !120}
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !986, line: 175, size: 512, elements: !1018)
!1018 = !{!1019, !1020, !1021, !1022, !1702, !1706, !1707}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1017, file: !986, line: 176, baseType: !993, size: 128)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1017, file: !986, line: 177, baseType: !820, size: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1017, file: !986, line: 178, baseType: !171, size: 64, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1017, file: !986, line: 179, baseType: !1023, size: 64, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!1026}
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !64, line: 472, size: 1536, align: 64, elements: !1028)
!1028 = !{!1029, !1030, !1031, !1032, !1033, !1034, !1042, !1043, !1044, !1694, !1695, !1696, !1699, !1700, !1701}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1027, file: !64, line: 473, baseType: !663, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1027, file: !64, line: 474, baseType: !867, size: 128, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1027, file: !64, line: 475, baseType: !437, size: 320, offset: 192)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1027, file: !64, line: 476, baseType: !872, size: 32, offset: 512)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1027, file: !64, line: 477, baseType: !200, size: 32, offset: 544)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1027, file: !64, line: 482, baseType: !1035, size: 128, offset: 576)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !429, line: 26, size: 128, elements: !1036)
!1036 = !{!1037, !1041}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1035, file: !429, line: 27, baseType: !1038, size: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !429, line: 12, size: 64, elements: !1039)
!1039 = !{!1040}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1038, file: !429, line: 13, baseType: !434, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1035, file: !429, line: 28, baseType: !434, size: 64, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1027, file: !64, line: 483, baseType: !432, size: 64, offset: 704)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1027, file: !64, line: 484, baseType: !432, size: 64, offset: 768)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1027, file: !64, line: 485, baseType: !1045, size: 64, offset: 832)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1047)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !64, line: 404, size: 1280, elements: !1048)
!1048 = !{!1049, !1519, !1589, !1593, !1597, !1603, !1609, !1613, !1618, !1622, !1626, !1630, !1658, !1662, !1666, !1670, !1675, !1679, !1686, !1690}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1047, file: !64, line: 405, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!120, !1053, !1517}
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !35, line: 74, size: 512, align: 128, elements: !1055)
!1055 = !{!1056, !1057, !1511, !1516}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1054, file: !35, line: 75, baseType: !432, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, scope: !1054, file: !35, line: 83, baseType: !1058, size: 320, offset: 64)
!1058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1054, file: !35, line: 83, size: 320, elements: !1059)
!1059 = !{!1060, !1081, !1095, !1099, !1510}
!1060 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !35, line: 84, baseType: !1061, size: 320)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1058, file: !35, line: 84, size: 320, elements: !1062)
!1062 = !{!1063, !1074, !1075, !1080}
!1063 = !DIDerivedType(tag: DW_TAG_member, scope: !1061, file: !35, line: 90, baseType: !1064, size: 128)
!1064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1061, file: !35, line: 90, size: 128, elements: !1065)
!1065 = !{!1066, !1067, !1072, !1073}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1064, file: !35, line: 91, baseType: !177, size: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, scope: !1064, file: !35, line: 94, baseType: !1068, size: 128)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1064, file: !35, line: 94, size: 128, elements: !1069)
!1069 = !{!1070, !1071}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1068, file: !35, line: 96, baseType: !171, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1068, file: !35, line: 98, baseType: !7, size: 32, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1064, file: !35, line: 102, baseType: !177, size: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1064, file: !35, line: 103, baseType: !177, size: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1061, file: !35, line: 106, baseType: !1026, size: 64, offset: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, scope: !1061, file: !35, line: 107, baseType: !1076, size: 64, offset: 192)
!1076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1061, file: !35, line: 107, size: 64, elements: !1077)
!1077 = !{!1078, !1079}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1076, file: !35, line: 108, baseType: !432, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1076, file: !35, line: 109, baseType: !432, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1061, file: !35, line: 117, baseType: !432, size: 64, offset: 256)
!1081 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !35, line: 119, baseType: !1082, size: 320)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1058, file: !35, line: 119, size: 320, elements: !1083)
!1083 = !{!1084, !1085, !1088, !1089, !1090}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1082, file: !35, line: 124, baseType: !432, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1082, file: !35, line: 125, baseType: !1086, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !35, line: 125, flags: DIFlagFwdDecl)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1082, file: !35, line: 126, baseType: !432, size: 64, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1082, file: !35, line: 127, baseType: !432, size: 64, offset: 192)
!1090 = !DIDerivedType(tag: DW_TAG_member, scope: !1082, file: !35, line: 128, baseType: !1091, size: 64, offset: 256)
!1091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1082, file: !35, line: 128, size: 64, elements: !1092)
!1092 = !{!1093, !1094}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1091, file: !35, line: 133, baseType: !432, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1091, file: !35, line: 138, baseType: !273, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !35, line: 141, baseType: !1096, size: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1058, file: !35, line: 141, size: 64, elements: !1097)
!1097 = !{!1098}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1096, file: !35, line: 142, baseType: !432, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !35, line: 144, baseType: !1100, size: 128)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1058, file: !35, line: 144, size: 128, elements: !1101)
!1101 = !{!1102, !1509}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1100, file: !35, line: 146, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !27, line: 126, size: 1216, elements: !1105)
!1105 = !{!1106, !1116, !1137, !1148, !1149, !1150, !1151, !1491, !1492, !1493}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1104, file: !27, line: 127, baseType: !1107, size: 384)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !27, line: 21, size: 384, elements: !1108)
!1108 = !{!1109, !1110, !1112, !1113, !1114, !1115}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1107, file: !27, line: 22, baseType: !432, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1107, file: !27, line: 23, baseType: !1111, size: 64, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1107, file: !27, line: 24, baseType: !1111, size: 64, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1107, file: !27, line: 25, baseType: !432, size: 64, offset: 192)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1107, file: !27, line: 26, baseType: !432, size: 64, offset: 256)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1107, file: !27, line: 27, baseType: !432, size: 64, offset: 320)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1104, file: !27, line: 128, baseType: !1117, size: 128, offset: 384)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1118, line: 105, size: 128, elements: !1119)
!1118 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1119 = !{!1120, !1121}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1117, file: !1118, line: 110, baseType: !432, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1117, file: !1118, line: 118, baseType: !1122, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1118, line: 95, size: 448, elements: !1124)
!1124 = !{!1125, !1126, !1132, !1133, !1134, !1135, !1136}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1123, file: !1118, line: 96, baseType: !273, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1123, file: !1118, line: 97, baseType: !1127, size: 64, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1118, line: 60, baseType: !1129)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{null, !1131}
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1123, file: !1118, line: 98, baseType: !1127, size: 64, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1123, file: !1118, line: 99, baseType: !499, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1123, file: !1118, line: 100, baseType: !499, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1123, file: !1118, line: 101, baseType: !222, size: 128, align: 64, offset: 256)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1123, file: !1118, line: 102, baseType: !1131, size: 64, offset: 384)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1104, file: !27, line: 129, baseType: !1138, size: 256, offset: 512)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1139, line: 26, size: 256, elements: !1140)
!1139 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1140 = !{!1141, !1142}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1138, file: !1139, line: 27, baseType: !7, size: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1138, file: !1139, line: 28, baseType: !1143, size: 192, offset: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1144, line: 43, size: 192, elements: !1145)
!1144 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1145 = !{!1146, !1147}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1143, file: !1144, line: 44, baseType: !288, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1143, file: !1144, line: 45, baseType: !177, size: 128, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1104, file: !27, line: 130, baseType: !26, size: 32, offset: 768)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1104, file: !27, line: 131, baseType: !7, size: 32, offset: 800)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1104, file: !27, line: 132, baseType: !432, size: 64, offset: 832)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1104, file: !27, line: 133, baseType: !1152, size: 64, offset: 896)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1154)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !27, line: 77, size: 192, elements: !1155)
!1155 = !{!1156, !1160, !1487}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1154, file: !27, line: 83, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{null, !1053}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1154, file: !27, line: 89, baseType: !1161, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!1164, !1165}
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !35, line: 1184, baseType: !7)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1167, line: 512, size: 896, elements: !1168)
!1167 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1168 = !{!1169, !1454, !1455, !1462, !1469, !1479, !1480, !1481, !1483, !1485}
!1169 = !DIDerivedType(tag: DW_TAG_member, scope: !1166, file: !1167, line: 513, baseType: !1170, size: 320)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1166, file: !1167, line: 513, size: 320, elements: !1171)
!1171 = !{!1172, !1450, !1451, !1452, !1453}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1170, file: !1167, line: 514, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !35, line: 625, size: 1344, elements: !1175)
!1175 = !{!1176, !1185, !1354, !1360, !1367, !1368, !1373, !1374, !1379, !1380, !1383, !1443, !1444, !1445, !1446, !1447, !1448}
!1176 = !DIDerivedType(tag: DW_TAG_member, scope: !1174, file: !35, line: 628, baseType: !1177, size: 128)
!1177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1174, file: !35, line: 628, size: 128, elements: !1178)
!1178 = !{!1179, !1184}
!1179 = !DIDerivedType(tag: DW_TAG_member, scope: !1177, file: !35, line: 629, baseType: !1180, size: 128)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1177, file: !35, line: 629, size: 128, elements: !1181)
!1181 = !{!1182, !1183}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1180, file: !35, line: 631, baseType: !432, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1180, file: !35, line: 632, baseType: !432, size: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1177, file: !35, line: 635, baseType: !222, size: 128, align: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1174, file: !35, line: 639, baseType: !1186, size: 64, offset: 128)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !35, line: 733, size: 10240, elements: !1188)
!1188 = !{!1189, !1352}
!1189 = !DIDerivedType(tag: DW_TAG_member, scope: !1187, file: !35, line: 734, baseType: !1190, size: 10240)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1187, file: !35, line: 734, size: 10240, elements: !1191)
!1191 = !{!1192, !1196, !1210, !1214, !1215, !1216, !1217, !1218, !1219, !1228, !1229, !1230, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1269, !1271, !1274, !1321, !1322, !1323, !1326, !1327, !1328, !1331, !1332, !1333, !1339, !1340}
!1192 = !DIDerivedType(tag: DW_TAG_member, scope: !1190, file: !35, line: 739, baseType: !1193, size: 512, align: 512)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1190, file: !35, line: 739, size: 512, align: 512, elements: !1194)
!1194 = !{!1195}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1193, file: !35, line: 747, baseType: !200, size: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1190, file: !35, line: 750, baseType: !1197, size: 128, offset: 512)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1198, line: 218, size: 128, elements: !1199)
!1198 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1199 = !{!1200, !1208, !1209}
!1200 = !DIDerivedType(tag: DW_TAG_member, scope: !1197, file: !1198, line: 219, baseType: !1201, size: 32)
!1201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1197, file: !1198, line: 219, size: 32, elements: !1202)
!1202 = !{!1203, !1204}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1201, file: !1198, line: 220, baseType: !232, size: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1201, file: !1198, line: 221, baseType: !1205)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1198, line: 197, baseType: !1206)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1198, line: 197, elements: !1207)
!1207 = !{}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1197, file: !1198, line: 223, baseType: !7, size: 32, offset: 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1197, file: !1198, line: 224, baseType: !171, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1190, file: !35, line: 752, baseType: !1211, size: 64, offset: 640)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!432, !209, !432, !432, !432, !432}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1190, file: !35, line: 756, baseType: !432, size: 64, offset: 704)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1190, file: !35, line: 757, baseType: !432, size: 64, offset: 768)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1190, file: !35, line: 760, baseType: !432, size: 64, offset: 832)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1190, file: !35, line: 761, baseType: !432, size: 64, offset: 896)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1190, file: !35, line: 763, baseType: !432, size: 64, offset: 960)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1190, file: !35, line: 764, baseType: !1220, size: 64, offset: 1024)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1222, line: 299, baseType: !1223)
!1222 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1222, line: 299, size: 64, elements: !1224)
!1224 = !{!1225}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1223, file: !1222, line: 299, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1227, line: 18, baseType: !432)
!1227 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1190, file: !35, line: 773, baseType: !200, size: 32, offset: 1088)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1190, file: !35, line: 785, baseType: !200, size: 32, offset: 1120)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1190, file: !35, line: 795, baseType: !1231, size: 64, offset: 1152)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !35, line: 726, size: 128, elements: !1233)
!1233 = !{!1234, !1235}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1232, file: !35, line: 727, baseType: !404, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1232, file: !35, line: 728, baseType: !120, size: 32, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1190, file: !35, line: 801, baseType: !432, size: 64, offset: 1216)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1190, file: !35, line: 804, baseType: !273, size: 64, offset: 1280)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1190, file: !35, line: 806, baseType: !120, size: 32, offset: 1344)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1190, file: !35, line: 808, baseType: !232, size: 32, offset: 1376)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1190, file: !35, line: 823, baseType: !437, size: 320, offset: 1408)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1190, file: !35, line: 825, baseType: !177, size: 128, offset: 1728)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1190, file: !35, line: 845, baseType: !120, size: 32, offset: 1856)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1190, file: !35, line: 849, baseType: !432, size: 64, offset: 1920)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1190, file: !35, line: 850, baseType: !432, size: 64, offset: 1984)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1190, file: !35, line: 852, baseType: !432, size: 64, offset: 2048)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1190, file: !35, line: 853, baseType: !432, size: 64, offset: 2112)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1190, file: !35, line: 854, baseType: !275, size: 64, offset: 2176)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1190, file: !35, line: 855, baseType: !432, size: 64, offset: 2240)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1190, file: !35, line: 856, baseType: !432, size: 64, offset: 2304)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1190, file: !35, line: 857, baseType: !432, size: 64, offset: 2368)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1190, file: !35, line: 858, baseType: !432, size: 64, offset: 2432)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1190, file: !35, line: 865, baseType: !634, size: 32, offset: 2496)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1190, file: !35, line: 867, baseType: !232, size: 32, offset: 2528)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1190, file: !35, line: 869, baseType: !432, size: 64, offset: 2560)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1190, file: !35, line: 869, baseType: !432, size: 64, offset: 2624)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1190, file: !35, line: 869, baseType: !432, size: 64, offset: 2688)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1190, file: !35, line: 869, baseType: !432, size: 64, offset: 2752)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1190, file: !35, line: 870, baseType: !432, size: 64, offset: 2816)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1190, file: !35, line: 870, baseType: !432, size: 64, offset: 2880)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1190, file: !35, line: 870, baseType: !432, size: 64, offset: 2944)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1190, file: !35, line: 871, baseType: !432, size: 64, offset: 3008)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1190, file: !35, line: 871, baseType: !432, size: 64, offset: 3072)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1190, file: !35, line: 871, baseType: !432, size: 64, offset: 3136)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1190, file: !35, line: 871, baseType: !432, size: 64, offset: 3200)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1190, file: !35, line: 873, baseType: !1266, size: 3328, offset: 3264)
!1266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 3328, elements: !1267)
!1267 = !{!1268}
!1268 = !DISubrange(count: 52)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1190, file: !35, line: 875, baseType: !1270, size: 1280, offset: 6592)
!1270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 1280, elements: !344)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1190, file: !35, line: 877, baseType: !1272, size: 64, offset: 7872)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !35, line: 877, flags: DIFlagFwdDecl)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1190, file: !35, line: 880, baseType: !1275, size: 1088, offset: 7936)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1276, line: 72, baseType: !1277)
!1276 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1276, line: 23, size: 1088, elements: !1278)
!1278 = !{!1279, !1280, !1281, !1282, !1283, !1286, !1287, !1288, !1289, !1316, !1317, !1318}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1277, file: !1276, line: 28, baseType: !404, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1277, file: !1276, line: 38, baseType: !275, size: 64, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1277, file: !1276, line: 40, baseType: !432, size: 64, offset: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1277, file: !1276, line: 43, baseType: !437, size: 320, offset: 192)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1277, file: !1276, line: 44, baseType: !1284, size: 64, offset: 512)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1276, line: 44, flags: DIFlagFwdDecl)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1277, file: !1276, line: 48, baseType: !432, size: 64, offset: 576)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1277, file: !1276, line: 59, baseType: !283, size: 256, offset: 640)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1277, file: !1276, line: 60, baseType: !171, size: 64, offset: 896)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1277, file: !1276, line: 61, baseType: !1290, size: 64, offset: 960)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1292)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1293, line: 13, size: 1216, elements: !1294)
!1293 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1294 = !{!1295, !1296, !1297, !1298, !1299, !1300, !1301, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1292, file: !1293, line: 14, baseType: !171, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1292, file: !1293, line: 15, baseType: !432, size: 64, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1292, file: !1293, line: 17, baseType: !432, size: 64, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1292, file: !1293, line: 17, baseType: !432, size: 64, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1292, file: !1293, line: 18, baseType: !432, size: 64, offset: 256)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1292, file: !1293, line: 18, baseType: !432, size: 64, offset: 320)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1292, file: !1293, line: 19, baseType: !1302, size: 64, offset: 384)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1292, file: !1293, line: 21, baseType: !778, size: 64, offset: 448)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1292, file: !1293, line: 23, baseType: !778, size: 64, offset: 512)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1292, file: !1293, line: 24, baseType: !778, size: 64, offset: 576)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1292, file: !1293, line: 25, baseType: !778, size: 64, offset: 640)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1292, file: !1293, line: 26, baseType: !778, size: 64, offset: 704)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1292, file: !1293, line: 27, baseType: !778, size: 64, offset: 768)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1292, file: !1293, line: 28, baseType: !778, size: 64, offset: 832)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1292, file: !1293, line: 29, baseType: !778, size: 64, offset: 896)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1292, file: !1293, line: 30, baseType: !778, size: 64, offset: 960)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1292, file: !1293, line: 31, baseType: !778, size: 64, offset: 1024)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1292, file: !1293, line: 32, baseType: !778, size: 64, offset: 1088)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1292, file: !1293, line: 33, baseType: !778, size: 64, offset: 1152)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1277, file: !1276, line: 63, baseType: !200, size: 32, offset: 1024)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1277, file: !1276, line: 69, baseType: !266, size: 16, offset: 1056)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1277, file: !1276, line: 70, baseType: !1319, size: 16, offset: 1072)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !257, line: 18, baseType: !1320)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !259, line: 23, baseType: !467)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1190, file: !35, line: 882, baseType: !432, size: 64, offset: 9024)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1190, file: !35, line: 885, baseType: !232, size: 32, offset: 9088)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1190, file: !35, line: 886, baseType: !1324, size: 64, offset: 9152)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !35, line: 732, flags: DIFlagFwdDecl)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1190, file: !35, line: 901, baseType: !585, size: 64, offset: 9216)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1190, file: !35, line: 904, baseType: !209, size: 64, offset: 9280)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1190, file: !35, line: 906, baseType: !1329, size: 64, offset: 9344)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !35, line: 906, flags: DIFlagFwdDecl)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1190, file: !35, line: 930, baseType: !200, size: 32, offset: 9408)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1190, file: !35, line: 933, baseType: !200, size: 32, offset: 9440)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1190, file: !35, line: 935, baseType: !1334, size: 64, offset: 9472)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !81, line: 103, size: 64, elements: !1335)
!1335 = !{!1336}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1334, file: !81, line: 104, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !81, line: 101, flags: DIFlagFwdDecl)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1190, file: !35, line: 940, baseType: !273, size: 64, offset: 9536)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1190, file: !35, line: 942, baseType: !1341, size: 256, offset: 9600)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1342, line: 98, size: 256, elements: !1343)
!1342 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1343 = !{!1344, !1345, !1346}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1341, file: !1342, line: 99, baseType: !273, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1341, file: !1342, line: 100, baseType: !177, size: 128, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1341, file: !1342, line: 101, baseType: !1347, size: 64, offset: 192)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1342, line: 21, baseType: !1348)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{null, !1351}
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1187, file: !35, line: 986, baseType: !1353, offset: 10240)
!1353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, elements: !363)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1174, file: !35, line: 640, baseType: !1355, size: 64, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1222, line: 297, baseType: !1356)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1222, line: 297, size: 64, elements: !1357)
!1357 = !{!1358}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1356, file: !1222, line: 297, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1227, line: 19, baseType: !432)
!1360 = !DIDerivedType(tag: DW_TAG_member, scope: !1174, file: !35, line: 646, baseType: !1361, size: 64, offset: 256)
!1361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1174, file: !35, line: 646, size: 64, elements: !1362)
!1362 = !{!1363, !1366}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1361, file: !35, line: 647, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1365)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !35, line: 542, baseType: !432)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1361, file: !35, line: 648, baseType: !1365, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1174, file: !35, line: 666, baseType: !120, size: 32, offset: 320)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1174, file: !35, line: 667, baseType: !1369, size: 64, offset: 384)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !35, line: 579, size: 320, elements: !1371)
!1371 = !{!1372}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1370, file: !35, line: 580, baseType: !437, size: 320)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1174, file: !35, line: 670, baseType: !499, size: 8, offset: 448)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1174, file: !35, line: 681, baseType: !1375, size: 256, offset: 512)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1174, file: !35, line: 678, size: 256, elements: !1376)
!1376 = !{!1377, !1378}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1375, file: !35, line: 679, baseType: !428, size: 192, align: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1375, file: !35, line: 680, baseType: !432, size: 64, offset: 192)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1174, file: !35, line: 689, baseType: !177, size: 128, offset: 768)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1174, file: !35, line: 691, baseType: !1381, size: 64, offset: 896)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !35, line: 691, flags: DIFlagFwdDecl)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1174, file: !35, line: 694, baseType: !1384, size: 64, offset: 960)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1386)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1167, line: 563, size: 1024, elements: !1387)
!1387 = !{!1388, !1392, !1393, !1397, !1401, !1405, !1406, !1410, !1414, !1418, !1419, !1420, !1424, !1428, !1435, !1439}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1386, file: !1167, line: 564, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{null, !1173}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1386, file: !1167, line: 569, baseType: !1389, size: 64, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1386, file: !1167, line: 571, baseType: !1394, size: 64, offset: 128)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!120, !1173, !432}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1386, file: !1167, line: 572, baseType: !1398, size: 64, offset: 192)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!120, !1173}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1386, file: !1167, line: 578, baseType: !1402, size: 64, offset: 256)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!120, !1173, !432, !432, !432}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1386, file: !1167, line: 580, baseType: !1161, size: 64, offset: 320)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1386, file: !1167, line: 581, baseType: !1407, size: 64, offset: 384)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!1164, !1165, !7}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1386, file: !1167, line: 582, baseType: !1411, size: 64, offset: 448)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!1164, !1165, !432, !432}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1386, file: !1167, line: 584, baseType: !1415, size: 64, offset: 512)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!432, !1173}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1386, file: !1167, line: 588, baseType: !1161, size: 64, offset: 576)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1386, file: !1167, line: 591, baseType: !1161, size: 64, offset: 640)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1386, file: !1167, line: 597, baseType: !1421, size: 64, offset: 704)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!120, !1173, !432, !171, !120, !120}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1386, file: !1167, line: 603, baseType: !1425, size: 64, offset: 768)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!502, !1173}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1386, file: !1167, line: 613, baseType: !1429, size: 64, offset: 832)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!120, !1173, !1432}
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1434, line: 54, flags: DIFlagFwdDecl)
!1434 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1386, file: !1167, line: 625, baseType: !1436, size: 64, offset: 896)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!1432, !1173, !432}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1386, file: !1167, line: 633, baseType: !1440, size: 64, offset: 960)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!1053, !1173, !432}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1174, file: !35, line: 697, baseType: !432, size: 64, offset: 1024)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1174, file: !35, line: 699, baseType: !209, size: 64, offset: 1088)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1174, file: !35, line: 700, baseType: !171, size: 64, offset: 1152)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1174, file: !35, line: 711, baseType: !273, size: 64, offset: 1216)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1174, file: !35, line: 717, baseType: !1432, size: 64, offset: 1280)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1174, file: !35, line: 722, baseType: !1449, offset: 1344)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !35, line: 570, elements: !1207)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1170, file: !1167, line: 515, baseType: !872, size: 32, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1170, file: !1167, line: 516, baseType: !432, size: 64, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1170, file: !1167, line: 517, baseType: !432, size: 64, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1170, file: !1167, line: 518, baseType: !432, size: 64, offset: 256)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1166, file: !1167, line: 520, baseType: !34, size: 32, offset: 320)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1166, file: !1167, line: 522, baseType: !1456, size: 64, offset: 384)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1227, line: 22, baseType: !1458)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1227, line: 22, size: 64, elements: !1459)
!1459 = !{!1460}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1458, file: !1227, line: 22, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1227, line: 15, baseType: !432)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1166, file: !1167, line: 524, baseType: !1463, size: 64, offset: 448)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1222, line: 372, baseType: !1465)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1222, line: 372, size: 64, elements: !1466)
!1466 = !{!1467}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1465, file: !1222, line: 372, baseType: !1468, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1227, line: 16, baseType: !432)
!1469 = !DIDerivedType(tag: DW_TAG_member, scope: !1166, file: !1167, line: 527, baseType: !1470, size: 64, offset: 512)
!1470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1166, file: !1167, line: 527, size: 64, elements: !1471)
!1471 = !{!1472, !1478}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1470, file: !1167, line: 528, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1227, line: 21, baseType: !1474)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1227, line: 21, size: 64, elements: !1475)
!1475 = !{!1476}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1474, file: !1227, line: 21, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1227, line: 14, baseType: !432)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1470, file: !1167, line: 529, baseType: !1457, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1166, file: !1167, line: 534, baseType: !1053, size: 64, offset: 576)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1166, file: !1167, line: 535, baseType: !1053, size: 64, offset: 640)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1166, file: !1167, line: 541, baseType: !1482, size: 64, offset: 704)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1166, file: !1167, line: 545, baseType: !1484, size: 64, offset: 768)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1166, file: !1167, line: 549, baseType: !1486, size: 64, offset: 832)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1222, line: 520, baseType: !1053)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1154, file: !27, line: 100, baseType: !1488, size: 64, offset: 128)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!120, !1103, !432, !432, !120}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1104, file: !27, line: 134, baseType: !171, size: 64, offset: 960)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1104, file: !27, line: 135, baseType: !120, size: 32, offset: 1024)
!1493 = !DIDerivedType(tag: DW_TAG_member, scope: !1104, file: !27, line: 136, baseType: !1494, size: 128, offset: 1088)
!1494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1104, file: !27, line: 136, size: 128, elements: !1495)
!1495 = !{!1496, !1502}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1494, file: !27, line: 137, baseType: !1497, size: 128)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1498, line: 6, size: 128, elements: !1499)
!1498 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1499 = !{!1500, !1501}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1497, file: !1498, line: 7, baseType: !404, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1497, file: !1498, line: 8, baseType: !404, size: 64, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, scope: !1494, file: !27, line: 138, baseType: !1503)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1494, file: !27, line: 138, elements: !1504)
!1504 = !{!1505, !1507}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1503, file: !27, line: 138, baseType: !1506)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1503, file: !27, line: 138, elements: !1207)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1503, file: !27, line: 138, baseType: !1508)
!1508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1497, elements: !363)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1100, file: !35, line: 147, baseType: !171, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1058, file: !35, line: 161, baseType: !222, size: 128, align: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, scope: !1054, file: !35, line: 164, baseType: !1512, size: 32, offset: 384)
!1512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1054, file: !35, line: 164, size: 32, elements: !1513)
!1513 = !{!1514, !1515}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1512, file: !35, line: 169, baseType: !200, size: 32)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1512, file: !35, line: 177, baseType: !7, size: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1054, file: !35, line: 181, baseType: !200, size: 32, offset: 416)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !64, line: 309, flags: DIFlagFwdDecl)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1047, file: !64, line: 406, baseType: !1520, size: 64, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!120, !209, !1523}
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !35, line: 293, size: 1536, elements: !1525)
!1525 = !{!1526, !1556, !1570}
!1526 = !DIDerivedType(tag: DW_TAG_member, scope: !1524, file: !35, line: 295, baseType: !1527, size: 512)
!1527 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1524, file: !35, line: 295, size: 512, elements: !1528)
!1528 = !{!1529, !1555}
!1529 = !DIDerivedType(tag: DW_TAG_member, scope: !1527, file: !35, line: 296, baseType: !1530, size: 448)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1527, file: !35, line: 296, size: 448, elements: !1531)
!1531 = !{!1532, !1533, !1542, !1543, !1544, !1553, !1554}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1530, file: !35, line: 298, baseType: !432, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, scope: !1530, file: !35, line: 299, baseType: !1534, size: 128, offset: 64)
!1534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1530, file: !35, line: 299, size: 128, elements: !1535)
!1535 = !{!1536, !1537}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1534, file: !35, line: 300, baseType: !177, size: 128)
!1537 = !DIDerivedType(tag: DW_TAG_member, scope: !1534, file: !35, line: 302, baseType: !1538, size: 128)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1534, file: !35, line: 302, size: 128, elements: !1539)
!1539 = !{!1540, !1541}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1538, file: !35, line: 303, baseType: !171, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1538, file: !35, line: 305, baseType: !7, size: 32, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1530, file: !35, line: 310, baseType: !1026, size: 64, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1530, file: !35, line: 311, baseType: !432, size: 64, offset: 256)
!1544 = !DIDerivedType(tag: DW_TAG_member, scope: !1530, file: !35, line: 312, baseType: !1545, size: 64, offset: 320)
!1545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1530, file: !35, line: 312, size: 64, elements: !1546)
!1546 = !{!1547, !1548}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1545, file: !35, line: 313, baseType: !171, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1545, file: !35, line: 314, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !35, line: 257, baseType: !1550)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 255, size: 64, elements: !1551)
!1551 = !{!1552}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1550, file: !35, line: 256, baseType: !432, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1530, file: !35, line: 316, baseType: !200, size: 32, offset: 384)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1530, file: !35, line: 317, baseType: !200, size: 32, offset: 416)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1527, file: !35, line: 323, baseType: !1054, size: 512, align: 128)
!1556 = !DIDerivedType(tag: DW_TAG_member, scope: !1524, file: !35, line: 325, baseType: !1557, size: 512, offset: 512)
!1557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1524, file: !35, line: 325, size: 512, elements: !1558)
!1558 = !{!1559, !1569}
!1559 = !DIDerivedType(tag: DW_TAG_member, scope: !1557, file: !35, line: 326, baseType: !1560, size: 320)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1557, file: !35, line: 326, size: 320, elements: !1561)
!1561 = !{!1562, !1563, !1564, !1565, !1566, !1567, !1568}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1560, file: !35, line: 327, baseType: !432, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1560, file: !35, line: 328, baseType: !432, size: 64, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1560, file: !35, line: 329, baseType: !432, size: 64, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1560, file: !35, line: 331, baseType: !200, size: 32, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1560, file: !35, line: 332, baseType: !200, size: 32, offset: 224)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1560, file: !35, line: 333, baseType: !200, size: 32, offset: 256)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1560, file: !35, line: 335, baseType: !7, size: 32, offset: 288)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1557, file: !35, line: 339, baseType: !1054, size: 512, align: 128)
!1570 = !DIDerivedType(tag: DW_TAG_member, scope: !1524, file: !35, line: 341, baseType: !1571, size: 512, offset: 1024)
!1571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1524, file: !35, line: 341, size: 512, elements: !1572)
!1572 = !{!1573, !1582, !1588}
!1573 = !DIDerivedType(tag: DW_TAG_member, scope: !1571, file: !35, line: 342, baseType: !1574, size: 384)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1571, file: !35, line: 342, size: 384, elements: !1575)
!1575 = !{!1576, !1577, !1578, !1579, !1580, !1581}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1574, file: !35, line: 343, baseType: !432, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1574, file: !35, line: 344, baseType: !432, size: 64, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1574, file: !35, line: 346, baseType: !171, size: 64, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1574, file: !35, line: 347, baseType: !171, size: 64, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1574, file: !35, line: 348, baseType: !171, size: 64, offset: 256)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1574, file: !35, line: 349, baseType: !171, size: 64, offset: 320)
!1582 = !DIDerivedType(tag: DW_TAG_member, scope: !1571, file: !35, line: 352, baseType: !1583, size: 256)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1571, file: !35, line: 352, size: 256, elements: !1584)
!1584 = !{!1585, !1586, !1587}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1583, file: !35, line: 353, baseType: !432, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1583, file: !35, line: 354, baseType: !432, size: 64, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1583, file: !35, line: 356, baseType: !177, size: 128, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1571, file: !35, line: 359, baseType: !1054, size: 512, align: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1047, file: !64, line: 409, baseType: !1590, size: 64, offset: 128)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!120, !1026, !1517}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1047, file: !64, line: 412, baseType: !1594, size: 64, offset: 192)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!499, !1026, !1523}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1047, file: !64, line: 414, baseType: !1598, size: 64, offset: 256)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{null, !1601}
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !64, line: 310, flags: DIFlagFwdDecl)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1047, file: !64, line: 416, baseType: !1604, size: 64, offset: 320)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!120, !209, !1026, !296, !7, !1607, !1608}
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1047, file: !64, line: 419, baseType: !1610, size: 64, offset: 384)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!120, !209, !1026, !296, !7, !7, !1053, !171}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1047, file: !64, line: 424, baseType: !1614, size: 64, offset: 448)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!1617, !1026, !1617}
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !178, line: 131, baseType: !404)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1047, file: !64, line: 425, baseType: !1619, size: 64, offset: 512)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{null, !1523, !820, !820}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1047, file: !64, line: 426, baseType: !1623, size: 64, offset: 576)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!499, !1523, !872}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1047, file: !64, line: 427, baseType: !1627, size: 64, offset: 640)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{null, !1523}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1047, file: !64, line: 428, baseType: !1631, size: 64, offset: 704)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!817, !1634, !1656}
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !64, line: 373, size: 384, elements: !1636)
!1636 = !{!1637, !1638, !1639, !1643, !1644, !1645, !1646}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1635, file: !64, line: 374, baseType: !209, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1635, file: !64, line: 375, baseType: !296, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1635, file: !64, line: 376, baseType: !1640, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{null, !1634, !778}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1635, file: !64, line: 377, baseType: !171, size: 64, offset: 192)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1635, file: !64, line: 378, baseType: !120, size: 32, offset: 256)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1635, file: !64, line: 379, baseType: !266, size: 16, offset: 288)
!1646 = !DIDerivedType(tag: DW_TAG_member, scope: !1635, file: !64, line: 380, baseType: !1647, size: 64, offset: 320)
!1647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1635, file: !64, line: 380, size: 64, elements: !1648)
!1648 = !{!1649, !1652}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1647, file: !64, line: 386, baseType: !1650, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !64, line: 386, flags: DIFlagFwdDecl)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1647, file: !64, line: 395, baseType: !1653, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!817, !171}
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !64, line: 69, flags: DIFlagFwdDecl)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1047, file: !64, line: 433, baseType: !1659, size: 64, offset: 768)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!120, !1026, !1523, !1523, !50}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1047, file: !64, line: 435, baseType: !1663, size: 64, offset: 832)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!120, !1523}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1047, file: !64, line: 436, baseType: !1667, size: 64, offset: 896)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!499, !1523, !820, !820}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1047, file: !64, line: 438, baseType: !1671, size: 64, offset: 960)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{null, !1523, !1674, !1674}
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1047, file: !64, line: 439, baseType: !1676, size: 64, offset: 1024)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!120, !1026, !1053}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1047, file: !64, line: 442, baseType: !1680, size: 64, offset: 1088)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!120, !1683, !209, !1685}
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !64, line: 66, flags: DIFlagFwdDecl)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1047, file: !64, line: 444, baseType: !1687, size: 64, offset: 1152)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{null, !209}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1047, file: !64, line: 445, baseType: !1691, size: 64, offset: 1216)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!120, !1634, !1656}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1027, file: !64, line: 486, baseType: !432, size: 64, offset: 896)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1027, file: !64, line: 487, baseType: !437, size: 320, offset: 960)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1027, file: !64, line: 488, baseType: !1697, size: 32, offset: 1280)
!1697 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1698, line: 8, baseType: !462)
!1698 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1027, file: !64, line: 489, baseType: !232, size: 32, offset: 1312)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1027, file: !64, line: 490, baseType: !177, size: 128, offset: 1344)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1027, file: !64, line: 491, baseType: !171, size: 64, offset: 1472)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1017, file: !986, line: 180, baseType: !1703, size: 64, offset: 320)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!817, !209, !928, !1016, !512, !296, !820}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1017, file: !986, line: 182, baseType: !1703, size: 64, offset: 384)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1017, file: !986, line: 184, baseType: !1708, size: 64, offset: 448)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!120, !209, !928, !1016, !1173}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1005, file: !986, line: 90, baseType: !1712, size: 64, offset: 192)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1005, file: !986, line: 91, baseType: !1714, size: 64, offset: 256)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !976, file: !923, line: 120, baseType: !1716, size: 64, offset: 192)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!1719, !946}
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1721)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !58, line: 39, size: 384, elements: !1722)
!1722 = !{!1723, !1724, !1728, !1732, !1738, !1742}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1721, file: !58, line: 40, baseType: !57, size: 32)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1721, file: !58, line: 41, baseType: !1725, size: 64, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!499}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1721, file: !58, line: 42, baseType: !1729, size: 64, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!171}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1721, file: !58, line: 43, baseType: !1733, size: 64, offset: 192)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!1302, !1736}
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !58, line: 19, flags: DIFlagFwdDecl)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1721, file: !58, line: 44, baseType: !1739, size: 64, offset: 256)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!1302}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1721, file: !58, line: 45, baseType: !695, size: 64, offset: 320)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !976, file: !923, line: 121, baseType: !1744, size: 64, offset: 256)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!1302, !946}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !976, file: !923, line: 122, baseType: !1748, size: 64, offset: 320)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{null, !946, !1751, !1752}
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !922, file: !923, line: 70, baseType: !1754, size: 64, offset: 384)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1756, line: 190, size: 1152, elements: !1757)
!1756 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1757 = !{!1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1880, !1881, !1882, !1883, !1884, !1887}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1755, file: !1756, line: 191, baseType: !200, size: 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1755, file: !1756, line: 192, baseType: !200, size: 32, offset: 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1755, file: !1756, line: 202, baseType: !1754, size: 64, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1755, file: !1756, line: 203, baseType: !502, size: 64, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1755, file: !1756, line: 205, baseType: !428, size: 192, align: 64, offset: 192)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1755, file: !1756, line: 207, baseType: !1302, size: 64, offset: 384)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1755, file: !1756, line: 208, baseType: !7, size: 32, offset: 448)
!1765 = !DIDerivedType(tag: DW_TAG_member, scope: !1755, file: !1756, line: 209, baseType: !1766, size: 256, offset: 512)
!1766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1755, file: !1756, line: 209, size: 256, elements: !1767)
!1767 = !{!1768, !1777, !1781}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1766, file: !1756, line: 210, baseType: !1769, size: 256)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1756, line: 153, size: 256, elements: !1770)
!1770 = !{!1771, !1772, !1773, !1776}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1769, file: !1756, line: 154, baseType: !432, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1769, file: !1756, line: 156, baseType: !1038, size: 64, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1769, file: !1756, line: 162, baseType: !1774, size: 64, offset: 128)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1756, line: 162, flags: DIFlagFwdDecl)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1769, file: !1756, line: 167, baseType: !432, size: 64, offset: 192)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1766, file: !1756, line: 211, baseType: !1778, size: 64)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1756, line: 170, size: 64, elements: !1779)
!1779 = !{!1780}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1778, file: !1756, line: 171, baseType: !1754, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1766, file: !1756, line: 212, baseType: !1782, size: 256)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1756, line: 174, size: 256, elements: !1783)
!1783 = !{!1784, !1875, !1878, !1879}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1782, file: !1756, line: 175, baseType: !1785, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1787)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1756, line: 271, size: 768, elements: !1788)
!1788 = !{!1789, !1848, !1852, !1853, !1854, !1855, !1856, !1860, !1861, !1862, !1863, !1871}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1787, file: !1756, line: 276, baseType: !1790, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!120, !1793}
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1756, line: 251, size: 1216, elements: !1795)
!1795 = !{!1796, !1797, !1798, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1794, file: !1756, line: 253, baseType: !1754, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1794, file: !1756, line: 254, baseType: !209, size: 64, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1794, file: !1756, line: 255, baseType: !1799, size: 64, offset: 128)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1801, line: 17, size: 960, elements: !1802)
!1801 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1802 = !{!1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1833, !1834, !1837}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1800, file: !1801, line: 18, baseType: !512, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1800, file: !1801, line: 19, baseType: !820, size: 64, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1800, file: !1801, line: 20, baseType: !820, size: 64, offset: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1800, file: !1801, line: 21, baseType: !820, size: 64, offset: 192)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1800, file: !1801, line: 22, baseType: !820, size: 64, offset: 256)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1800, file: !1801, line: 23, baseType: !296, size: 64, offset: 320)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1800, file: !1801, line: 24, baseType: !296, size: 64, offset: 384)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1800, file: !1801, line: 25, baseType: !283, size: 256, offset: 448)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1800, file: !1801, line: 26, baseType: !1812, size: 64, offset: 704)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1814)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1801, line: 32, size: 256, elements: !1815)
!1815 = !{!1816, !1821, !1825, !1829}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1814, file: !1801, line: 33, baseType: !1817, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!171, !1799, !1820}
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1814, file: !1801, line: 34, baseType: !1822, size: 64, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{null, !1799, !171}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1814, file: !1801, line: 35, baseType: !1826, size: 64, offset: 128)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!171, !1799, !171, !1820}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1814, file: !1801, line: 36, baseType: !1830, size: 64, offset: 192)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!120, !1799, !171}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1800, file: !1801, line: 27, baseType: !120, size: 32, offset: 768)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1800, file: !1801, line: 28, baseType: !1835, size: 64, offset: 832)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1800, file: !1801, line: 29, baseType: !171, size: 64, offset: 896)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1794, file: !1756, line: 256, baseType: !171, size: 64, offset: 192)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1794, file: !1756, line: 259, baseType: !283, size: 256, offset: 256)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1794, file: !1756, line: 260, baseType: !283, size: 256, offset: 512)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1794, file: !1756, line: 261, baseType: !120, size: 32, offset: 768)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1794, file: !1756, line: 262, baseType: !177, size: 128, offset: 832)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1794, file: !1756, line: 263, baseType: !512, size: 64, offset: 960)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1794, file: !1756, line: 265, baseType: !820, size: 64, offset: 1024)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1794, file: !1756, line: 266, baseType: !499, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1794, file: !1756, line: 267, baseType: !499, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1794, file: !1756, line: 268, baseType: !1384, size: 64, offset: 1152)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1787, file: !1756, line: 277, baseType: !1849, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{null, !1793}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1787, file: !1756, line: 290, baseType: !1830, size: 64, offset: 128)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1787, file: !1756, line: 292, baseType: !1817, size: 64, offset: 192)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1787, file: !1756, line: 293, baseType: !1826, size: 64, offset: 256)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1787, file: !1756, line: 294, baseType: !1822, size: 64, offset: 320)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1787, file: !1756, line: 296, baseType: !1857, size: 64, offset: 384)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!817, !1793, !512, !820, !296}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1787, file: !1756, line: 306, baseType: !820, size: 64, offset: 448)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1787, file: !1756, line: 313, baseType: !499, size: 8, offset: 512)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1787, file: !1756, line: 314, baseType: !1857, size: 64, offset: 576)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1787, file: !1756, line: 317, baseType: !1864, size: 64, offset: 640)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!1867, !1793, !1869}
!1867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1868, line: 59, baseType: !7)
!1868 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !64, line: 61, flags: DIFlagFwdDecl)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1787, file: !1756, line: 320, baseType: !1872, size: 64, offset: 704)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!120, !1793, !1173}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1782, file: !1756, line: 176, baseType: !1876, size: 64, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1756, line: 35, flags: DIFlagFwdDecl)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1782, file: !1756, line: 177, baseType: !296, size: 64, offset: 128)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1782, file: !1756, line: 178, baseType: !1754, size: 64, offset: 192)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1755, file: !1756, line: 215, baseType: !171, size: 64, offset: 768)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1755, file: !1756, line: 221, baseType: !404, size: 64, offset: 832)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1755, file: !1756, line: 223, baseType: !268, size: 16, offset: 896)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1755, file: !1756, line: 224, baseType: !667, size: 16, offset: 912)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1755, file: !1756, line: 225, baseType: !1885, size: 64, offset: 960)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1756, line: 36, flags: DIFlagFwdDecl)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1755, file: !1756, line: 227, baseType: !222, size: 128, align: 64, offset: 1024)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !922, file: !923, line: 71, baseType: !191, size: 32, offset: 448)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !922, file: !923, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !922, file: !923, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !922, file: !923, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !922, file: !923, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !922, file: !923, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !919, file: !20, line: 47, baseType: !909, size: 64, offset: 512)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !919, file: !20, line: 48, baseType: !928, size: 64, offset: 576)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !919, file: !20, line: 49, baseType: !1897, size: 64, offset: 640)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !20, line: 49, flags: DIFlagFwdDecl)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !919, file: !20, line: 50, baseType: !1900, size: 64, offset: 704)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !910, file: !20, line: 418, baseType: !1902, size: 64, offset: 1408)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !20, line: 53, size: 448, elements: !1904)
!1904 = !{!1905, !1906, !1911, !1915, !1919, !1923}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1903, file: !20, line: 54, baseType: !993, size: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1903, file: !20, line: 55, baseType: !1907, size: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!817, !1902, !1910, !512}
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1903, file: !20, line: 57, baseType: !1912, size: 64, offset: 192)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!817, !1902, !1910, !502, !820}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1903, file: !20, line: 59, baseType: !1916, size: 64, offset: 256)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{null, !909, !502}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1903, file: !20, line: 60, baseType: !1920, size: 64, offset: 320)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!120, !909}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1903, file: !20, line: 61, baseType: !1924, size: 64, offset: 384)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{null, !909}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !910, file: !20, line: 419, baseType: !502, size: 64, offset: 1472)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !910, file: !20, line: 420, baseType: !502, size: 64, offset: 1536)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !910, file: !20, line: 421, baseType: !928, size: 64, offset: 1600)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !910, file: !20, line: 424, baseType: !1931, size: 64, offset: 1664)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1933)
!1933 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !20, line: 424, flags: DIFlagFwdDecl)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !910, file: !20, line: 425, baseType: !1935, size: 64, offset: 1728)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !910, file: !20, line: 426, baseType: !7, size: 32, offset: 1792)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !910, file: !20, line: 435, baseType: !283, size: 256, offset: 1856)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !910, file: !20, line: 437, baseType: !1940, size: 64, offset: 2112)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1942, line: 69, size: 320, elements: !1943)
!1942 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1943 = !{!1944, !1945, !1946, !1963, !1965, !1969, !1970}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1941, file: !1942, line: 70, baseType: !502, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1941, file: !1942, line: 71, baseType: !909, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1941, file: !1942, line: 72, baseType: !1947, size: 64, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1949)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1942, line: 47, size: 256, elements: !1950)
!1950 = !{!1951, !1952, !1958, !1962}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1949, file: !1942, line: 49, baseType: !7, size: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1949, file: !1942, line: 51, baseType: !1953, size: 64, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!120, !502, !1956}
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1941)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1949, file: !1942, line: 53, baseType: !1959, size: 64, offset: 128)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!120, !512, !1956}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1949, file: !1942, line: 55, baseType: !695, size: 64, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1941, file: !1942, line: 73, baseType: !1964, size: 16, offset: 192)
!1964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1941, file: !1942, line: 74, baseType: !1966, size: 8, offset: 208)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !257, line: 16, baseType: !1967)
!1967 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !259, line: 20, baseType: !1968)
!1968 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1941, file: !1942, line: 75, baseType: !256, size: 8, offset: 216)
!1970 = !DIDerivedType(tag: DW_TAG_member, scope: !1941, file: !1942, line: 76, baseType: !1971, size: 64, offset: 256)
!1971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1941, file: !1942, line: 76, size: 64, elements: !1972)
!1972 = !{!1973, !1974, !1981}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1971, file: !1942, line: 77, baseType: !171, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1971, file: !1942, line: 78, baseType: !1975, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1977)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1942, line: 86, size: 128, elements: !1978)
!1978 = !{!1979, !1980}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1977, file: !1942, line: 87, baseType: !7, size: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1977, file: !1942, line: 88, baseType: !512, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1971, file: !1942, line: 79, baseType: !1982, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1984)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1942, line: 92, size: 256, elements: !1985)
!1985 = !{!1986, !1987, !1988, !1990, !1991}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1984, file: !1942, line: 94, baseType: !7, size: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1984, file: !1942, line: 95, baseType: !7, size: 32, offset: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1984, file: !1942, line: 96, baseType: !1989, size: 64, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1984, file: !1942, line: 97, baseType: !1947, size: 64, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1984, file: !1942, line: 98, baseType: !171, size: 64, offset: 192)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !910, file: !20, line: 438, baseType: !7, size: 32, offset: 2176)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !910, file: !20, line: 441, baseType: !7, size: 32, offset: 2208)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !910, file: !20, line: 442, baseType: !1931, size: 64, offset: 2240)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !910, file: !20, line: 443, baseType: !1935, size: 64, offset: 2304)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !910, file: !20, line: 444, baseType: !499, size: 8, offset: 2368)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !910, file: !20, line: 451, baseType: !499, size: 8, offset: 2376)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !910, file: !20, line: 454, baseType: !7, size: 32, offset: 2400)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !910, file: !20, line: 455, baseType: !2000, size: 64, offset: 2432)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2002, line: 23, size: 96, elements: !2003)
!2002 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2003 = !{!2004, !2005, !2006}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2001, file: !2002, line: 24, baseType: !120, size: 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2001, file: !2002, line: 24, baseType: !120, size: 32, offset: 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2001, file: !2002, line: 24, baseType: !120, size: 32, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !910, file: !20, line: 458, baseType: !2008, size: 64, offset: 2496)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!120}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !910, file: !20, line: 460, baseType: !2012, size: 4032, align: 512, offset: 2560)
!2012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2013, size: 4032, elements: !2029)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !20, line: 362, size: 576, elements: !2014)
!2014 = !{!2015, !2016, !2017}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2013, file: !20, line: 363, baseType: !171, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2013, file: !20, line: 364, baseType: !7, size: 32, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2013, file: !20, line: 367, baseType: !2018, size: 448, offset: 128)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !20, line: 319, size: 448, elements: !2019)
!2019 = !{!2020, !2021}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2018, file: !20, line: 320, baseType: !909, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2018, file: !20, line: 321, baseType: !2022, size: 384, offset: 64)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2023, line: 40, size: 384, elements: !2024)
!2023 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2024 = !{!2025}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2022, file: !2023, line: 41, baseType: !2026, size: 384, align: 64)
!2026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 384, align: 64, elements: !2027)
!2027 = !{!2028}
!2028 = !DISubrange(count: 2)
!2029 = !{!2030}
!2030 = !DISubrange(count: 7)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !910, file: !20, line: 463, baseType: !2032, size: 192, offset: 6592)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2033, line: 8, size: 192, elements: !2034)
!2033 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2034 = !{!2035, !2036, !2038}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2032, file: !2033, line: 10, baseType: !7, size: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2032, file: !2033, line: 11, baseType: !2037, size: 64, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2032, file: !2033, line: 12, baseType: !2039, size: 64, offset: 128)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2041, line: 59, size: 48, elements: !2042)
!2041 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2042 = !{!2043, !2044, !2045, !2046, !2047, !2048}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2040, file: !2041, line: 60, baseType: !1319, size: 16)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2040, file: !2041, line: 61, baseType: !1319, size: 16, offset: 16)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2040, file: !2041, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2040, file: !2041, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2040, file: !2041, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2040, file: !2041, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !910, file: !20, line: 465, baseType: !432, size: 64, offset: 6784)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !910, file: !20, line: 469, baseType: !7, size: 32, offset: 6848)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !910, file: !20, line: 470, baseType: !177, size: 128, offset: 6912)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !910, file: !20, line: 471, baseType: !2053, size: 64, offset: 7040)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2055, line: 33, size: 96, elements: !2056)
!2055 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2056 = !{!2057, !2058, !2059, !2060}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2054, file: !2055, line: 37, baseType: !120, size: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2054, file: !2055, line: 43, baseType: !120, size: 32, offset: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2054, file: !2055, line: 45, baseType: !268, size: 16, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2054, file: !2055, line: 47, baseType: !268, size: 16, offset: 80)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !910, file: !20, line: 476, baseType: !2062, size: 64, offset: 7104)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !20, line: 378, size: 256, elements: !2064)
!2064 = !{!2065, !2081, !2082, !2083}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2063, file: !20, line: 379, baseType: !2066, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2068, line: 204, baseType: !2069)
!2068 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2068, line: 197, size: 192, elements: !2070)
!2070 = !{!2071, !2073, !2074, !2075, !2077, !2079}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2069, file: !2068, line: 198, baseType: !2072, size: 32)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2068, line: 21, baseType: !463)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2069, file: !2068, line: 199, baseType: !260, size: 8, offset: 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2069, file: !2068, line: 200, baseType: !260, size: 8, offset: 40)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2069, file: !2068, line: 201, baseType: !2076, size: 16, offset: 48)
!2076 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2068, line: 17, baseType: !267)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2069, file: !2068, line: 202, baseType: !2078, size: 64, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2068, line: 16, baseType: !405)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2069, file: !2068, line: 203, baseType: !2080, size: 64, offset: 128)
!2080 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2068, line: 22, baseType: !405)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2063, file: !20, line: 380, baseType: !7, size: 32, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2063, file: !20, line: 381, baseType: !512, size: 64, offset: 128)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2063, file: !20, line: 382, baseType: !512, size: 64, offset: 192)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !910, file: !20, line: 477, baseType: !2063, size: 256, offset: 7168)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !910, file: !20, line: 480, baseType: !2086, size: 64, offset: 7424)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !20, line: 480, flags: DIFlagFwdDecl)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !910, file: !20, line: 483, baseType: !2089, size: 64, offset: 7488)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !20, line: 483, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !910, file: !20, line: 488, baseType: !512, size: 64, offset: 7552)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !910, file: !20, line: 492, baseType: !171, size: 64, offset: 7616)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !910, file: !20, line: 493, baseType: !7, size: 32, offset: 7680)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !910, file: !20, line: 495, baseType: !171, size: 64, offset: 7744)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !910, file: !20, line: 496, baseType: !7, size: 32, offset: 7808)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !910, file: !20, line: 499, baseType: !7, size: 32, offset: 7840)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !910, file: !20, line: 500, baseType: !2098, size: 64, offset: 7872)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2100, line: 45, baseType: !2101)
!2100 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !910, file: !20, line: 503, baseType: !7, size: 32, offset: 7936)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !910, file: !20, line: 504, baseType: !2104, size: 64, offset: 8000)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2107, line: 96, size: 192, elements: !2108)
!2107 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2108 = !{!2109, !2110, !2164, !2167}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2106, file: !2107, line: 97, baseType: !7, size: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2106, file: !2107, line: 98, baseType: !2111, size: 64, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2107, line: 24, size: 3072, elements: !2113)
!2113 = !{!2114, !2116, !2117, !2118, !2119, !2133, !2134, !2135, !2136, !2148, !2149, !2150, !2161, !2162, !2163}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2112, file: !2107, line: 26, baseType: !2115, size: 128)
!2115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 128, elements: !2027)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2112, file: !2107, line: 27, baseType: !2115, size: 128, offset: 128)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2112, file: !2107, line: 28, baseType: !120, size: 32, offset: 256)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2112, file: !2107, line: 31, baseType: !232, size: 32, align: 512, offset: 512)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2112, file: !2107, line: 32, baseType: !2120, size: 960, offset: 576)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2121, line: 206, size: 960, elements: !2122)
!2121 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2122 = !{!2123, !2124, !2127, !2129, !2130, !2132}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2120, file: !2121, line: 207, baseType: !225, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2120, file: !2121, line: 208, baseType: !2125, size: 256, offset: 64)
!2125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2126, size: 256, elements: !344)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2120, file: !2121, line: 209, baseType: !2128, size: 256, offset: 320)
!2128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 256, elements: !344)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2120, file: !2121, line: 213, baseType: !778, size: 64, offset: 576)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2120, file: !2121, line: 215, baseType: !2131, size: 256, offset: 640)
!2131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !778, size: 256, elements: !344)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2120, file: !2121, line: 216, baseType: !256, size: 8, offset: 896)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2112, file: !2107, line: 33, baseType: !432, size: 64, offset: 1536)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2112, file: !2107, line: 34, baseType: !432, size: 64, offset: 1600)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2112, file: !2107, line: 35, baseType: !499, size: 8, offset: 1664)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2112, file: !2107, line: 36, baseType: !2137, size: 320, offset: 1728)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2138, line: 11, size: 320, elements: !2139)
!2138 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2139 = !{!2140, !2141, !2142, !2147}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2137, file: !2138, line: 16, baseType: !339, size: 128)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2137, file: !2138, line: 17, baseType: !432, size: 64, offset: 128)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2137, file: !2138, line: 18, baseType: !2143, size: 64, offset: 192)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{null, !2146}
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2137, file: !2138, line: 19, baseType: !462, size: 32, offset: 256)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2112, file: !2107, line: 37, baseType: !1341, size: 256, offset: 2048)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2112, file: !2107, line: 38, baseType: !222, size: 128, align: 64, offset: 2304)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2112, file: !2107, line: 39, baseType: !2151, size: 64, offset: 2432)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2107, line: 49, size: 768, elements: !2153)
!2153 = !{!2154, !2155, !2156, !2157, !2158, !2159, !2160}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2152, file: !2107, line: 50, baseType: !232, size: 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2152, file: !2107, line: 51, baseType: !2128, size: 256, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2152, file: !2107, line: 53, baseType: !2128, size: 256, offset: 320)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2152, file: !2107, line: 54, baseType: !432, size: 64, offset: 576)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2152, file: !2107, line: 55, baseType: !2151, size: 64, offset: 640)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2152, file: !2107, line: 56, baseType: !120, size: 32, offset: 704)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2152, file: !2107, line: 57, baseType: !120, size: 32, offset: 736)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2112, file: !2107, line: 40, baseType: !432, size: 64, offset: 2496)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2112, file: !2107, line: 42, baseType: !120, size: 32, offset: 2560)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2112, file: !2107, line: 43, baseType: !2105, size: 64, offset: 2624)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2106, file: !2107, line: 99, baseType: !2165, offset: 128)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2166, line: 211, elements: !1207)
!2166 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2106, file: !2107, line: 100, baseType: !2168, size: 64, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2107, line: 63, size: 3008, elements: !2170)
!2170 = !{!2171, !2172, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2202}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2169, file: !2107, line: 64, baseType: !2151, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2169, file: !2107, line: 65, baseType: !2173, size: 192, offset: 64)
!2173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2151, size: 192, elements: !323)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2169, file: !2107, line: 67, baseType: !120, size: 32, offset: 256)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2169, file: !2107, line: 68, baseType: !283, size: 256, offset: 320)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2169, file: !2107, line: 69, baseType: !232, size: 32, offset: 576)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2169, file: !2107, line: 70, baseType: !283, size: 256, offset: 640)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2169, file: !2107, line: 71, baseType: !432, size: 64, offset: 896)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2169, file: !2107, line: 72, baseType: !432, size: 64, offset: 960)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2169, file: !2107, line: 73, baseType: !432, size: 64, offset: 1024)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2169, file: !2107, line: 74, baseType: !432, size: 64, offset: 1088)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2169, file: !2107, line: 75, baseType: !432, size: 64, offset: 1152)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2169, file: !2107, line: 76, baseType: !432, size: 64, offset: 1216)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2169, file: !2107, line: 77, baseType: !432, size: 64, offset: 1280)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2169, file: !2107, line: 78, baseType: !432, size: 64, offset: 1344)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2169, file: !2107, line: 79, baseType: !499, size: 8, offset: 1408)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2169, file: !2107, line: 80, baseType: !432, size: 64, offset: 1472)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2169, file: !2107, line: 81, baseType: !283, size: 256, offset: 1536)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2169, file: !2107, line: 82, baseType: !1138, size: 256, offset: 1792)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2169, file: !2107, line: 84, baseType: !200, size: 32, offset: 2048)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2169, file: !2107, line: 87, baseType: !432, size: 64, offset: 2112)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2169, file: !2107, line: 88, baseType: !432, size: 64, offset: 2176)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2169, file: !2107, line: 89, baseType: !2194, size: 704, offset: 2240)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1342, line: 111, size: 704, elements: !2195)
!2195 = !{!2196, !2197, !2198, !2201}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2194, file: !1342, line: 112, baseType: !1341, size: 256)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2194, file: !1342, line: 113, baseType: !2137, size: 320, offset: 256)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2194, file: !1342, line: 116, baseType: !2199, size: 64, offset: 576)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1342, line: 18, flags: DIFlagFwdDecl)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2194, file: !1342, line: 117, baseType: !120, size: 32, offset: 640)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2169, file: !2107, line: 90, baseType: !2105, size: 64, offset: 2944)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !910, file: !20, line: 515, baseType: !2204, size: 64, offset: 8064)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2206, line: 117, size: 128, elements: !2207)
!2206 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2207 = !{!2208, !2209, !2210}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2205, file: !2206, line: 118, baseType: !421, size: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2205, file: !2206, line: 119, baseType: !421, size: 32, offset: 32)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2205, file: !2206, line: 120, baseType: !778, size: 64, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !910, file: !20, line: 516, baseType: !7, size: 32, offset: 8128)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !910, file: !20, line: 519, baseType: !7, size: 32, offset: 8160)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !910, file: !20, line: 520, baseType: !2214, size: 64, offset: 8192)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !910, file: !20, line: 523, baseType: !2216, size: 64, offset: 8256)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !20, line: 523, flags: DIFlagFwdDecl)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !910, file: !20, line: 524, baseType: !7, size: 32, offset: 8320)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !910, file: !20, line: 525, baseType: !2221, size: 64, offset: 8384)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !20, line: 525, flags: DIFlagFwdDecl)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !910, file: !20, line: 526, baseType: !7, size: 32, offset: 8448)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !910, file: !20, line: 533, baseType: !171, size: 64, offset: 8512)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !910, file: !20, line: 534, baseType: !7, size: 32, offset: 8576)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !910, file: !20, line: 535, baseType: !2228, size: 64, offset: 8640)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !910, file: !20, line: 536, baseType: !7, size: 32, offset: 8704)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !910, file: !20, line: 539, baseType: !120, size: 32, offset: 8736)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !910, file: !20, line: 540, baseType: !2232, size: 64, offset: 8768)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2234, line: 32, size: 64, elements: !2235)
!2234 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2235 = !{!2236, !2237}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2233, file: !2234, line: 33, baseType: !421, size: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2233, file: !2234, line: 34, baseType: !421, size: 32, offset: 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !910, file: !20, line: 563, baseType: !177, size: 128, offset: 8832)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !910, file: !20, line: 565, baseType: !177, size: 128, offset: 8960)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !910, file: !20, line: 568, baseType: !2241, size: 64, offset: 9088)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{null}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !910, file: !20, line: 570, baseType: !200, size: 32, offset: 9152)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !886, file: !64, line: 2382, baseType: !885, size: 64, offset: 448)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !886, file: !64, line: 2383, baseType: !335, size: 64, offset: 512)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !886, file: !64, line: 2385, baseType: !2248, offset: 576)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2166, line: 206, elements: !1207)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !886, file: !64, line: 2386, baseType: !2248, offset: 576)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !886, file: !64, line: 2387, baseType: !2248, offset: 576)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !886, file: !64, line: 2388, baseType: !2252, offset: 576)
!2252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2248, elements: !323)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !886, file: !64, line: 2390, baseType: !2248, offset: 576)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !886, file: !64, line: 2391, baseType: !2248, offset: 576)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !886, file: !64, line: 2392, baseType: !2248, offset: 576)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !886, file: !64, line: 2393, baseType: !2248, offset: 576)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !877, file: !64, line: 1197, baseType: !2258, size: 64, offset: 384)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2260)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !64, line: 2057, size: 1664, elements: !2261)
!2261 = !{!2262, !2266, !2270, !2271, !2275, !2279, !2283, !2284, !2285, !2289, !2293, !2297, !2298, !2299, !2305, !2309, !2310, !2314, !2315, !2316, !2317, !2321, !2325, !2372, !2387, !2388}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2260, file: !64, line: 2058, baseType: !2263, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!663, !876}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2260, file: !64, line: 2059, baseType: !2267, size: 64, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{null, !663}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2260, file: !64, line: 2060, baseType: !2267, size: 64, offset: 128)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2260, file: !64, line: 2062, baseType: !2272, size: 64, offset: 192)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{null, !663, !120}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2260, file: !64, line: 2063, baseType: !2276, size: 64, offset: 256)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!120, !663, !1517}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2260, file: !64, line: 2064, baseType: !2280, size: 64, offset: 320)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!120, !663}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2260, file: !64, line: 2065, baseType: !2267, size: 64, offset: 384)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2260, file: !64, line: 2066, baseType: !905, size: 64, offset: 448)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2260, file: !64, line: 2067, baseType: !2286, size: 64, offset: 512)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!120, !876, !120}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2260, file: !64, line: 2068, baseType: !2290, size: 64, offset: 576)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!120, !876, !63}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2260, file: !64, line: 2069, baseType: !2294, size: 64, offset: 640)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!120, !876}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2260, file: !64, line: 2070, baseType: !2290, size: 64, offset: 704)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2260, file: !64, line: 2071, baseType: !2294, size: 64, offset: 768)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2260, file: !64, line: 2072, baseType: !2300, size: 64, offset: 832)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!120, !623, !2303}
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !64, line: 62, flags: DIFlagFwdDecl)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2260, file: !64, line: 2073, baseType: !2306, size: 64, offset: 896)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!120, !876, !2037, !512}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2260, file: !64, line: 2074, baseType: !905, size: 64, offset: 960)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2260, file: !64, line: 2076, baseType: !2311, size: 64, offset: 1024)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!120, !1799, !623}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2260, file: !64, line: 2077, baseType: !2311, size: 64, offset: 1088)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2260, file: !64, line: 2078, baseType: !2311, size: 64, offset: 1152)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2260, file: !64, line: 2079, baseType: !2311, size: 64, offset: 1216)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2260, file: !64, line: 2081, baseType: !2318, size: 64, offset: 1280)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!817, !876, !120, !512, !820, !296}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2260, file: !64, line: 2082, baseType: !2322, size: 64, offset: 1344)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!817, !876, !120, !502, !820, !296}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2260, file: !64, line: 2083, baseType: !2326, size: 64, offset: 1408)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!2329, !663}
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !69, line: 296, size: 1664, elements: !2332)
!2332 = !{!2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2357, !2358, !2359}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2331, file: !69, line: 297, baseType: !339, size: 128)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2331, file: !69, line: 298, baseType: !177, size: 128, offset: 128)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2331, file: !69, line: 299, baseType: !177, size: 128, offset: 256)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2331, file: !69, line: 300, baseType: !177, size: 128, offset: 384)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2331, file: !69, line: 301, baseType: !283, size: 256, offset: 512)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2331, file: !69, line: 302, baseType: !232, size: 32, offset: 768)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2331, file: !69, line: 303, baseType: !200, size: 32, offset: 800)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2331, file: !69, line: 304, baseType: !876, size: 64, offset: 832)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2331, file: !69, line: 305, baseType: !2342, size: 64, offset: 896)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !69, line: 68, size: 64, elements: !2343)
!2343 = !{!2344, !2356}
!2344 = !DIDerivedType(tag: DW_TAG_member, scope: !2342, file: !69, line: 69, baseType: !2345, size: 32)
!2345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2342, file: !69, line: 69, size: 32, elements: !2346)
!2346 = !{!2347, !2348, !2349}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2345, file: !69, line: 70, baseType: !367, size: 32)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2345, file: !69, line: 71, baseType: !385, size: 32)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2345, file: !69, line: 72, baseType: !2350, size: 32)
!2350 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2351, line: 24, baseType: !2352)
!2351 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2351, line: 22, size: 32, elements: !2353)
!2353 = !{!2354}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2352, file: !2351, line: 23, baseType: !2355, size: 32)
!2355 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2351, line: 20, baseType: !373)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2342, file: !69, line: 74, baseType: !68, size: 32, offset: 32)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2331, file: !69, line: 306, baseType: !296, size: 64, offset: 960)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2331, file: !69, line: 307, baseType: !432, size: 64, offset: 1024)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2331, file: !69, line: 308, baseType: !2360, size: 576, offset: 1088)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !69, line: 205, size: 576, elements: !2361)
!2361 = !{!2362, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2360, file: !69, line: 206, baseType: !2363, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !69, line: 66, baseType: !281)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2360, file: !69, line: 207, baseType: !2363, size: 64, offset: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2360, file: !69, line: 208, baseType: !2363, size: 64, offset: 128)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2360, file: !69, line: 209, baseType: !2363, size: 64, offset: 192)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2360, file: !69, line: 210, baseType: !2363, size: 64, offset: 256)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2360, file: !69, line: 211, baseType: !2363, size: 64, offset: 320)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2360, file: !69, line: 212, baseType: !2363, size: 64, offset: 384)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2360, file: !69, line: 213, baseType: !453, size: 64, offset: 448)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2360, file: !69, line: 214, baseType: !453, size: 64, offset: 512)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2260, file: !64, line: 2085, baseType: !2373, size: 64, offset: 1472)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!778, !876, !2376}
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2378, line: 15, size: 256, elements: !2379)
!2378 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2379 = !{!2380, !2381, !2382, !2383, !2384}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2377, file: !2378, line: 16, baseType: !872, size: 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2377, file: !2378, line: 19, baseType: !120, size: 32, offset: 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2377, file: !2378, line: 26, baseType: !432, size: 64, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2377, file: !2378, line: 33, baseType: !432, size: 64, offset: 128)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2377, file: !2378, line: 36, baseType: !2385, size: 64, offset: 192)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !35, line: 33, flags: DIFlagFwdDecl)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2260, file: !64, line: 2087, baseType: !2373, size: 64, offset: 1536)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2260, file: !64, line: 2089, baseType: !905, size: 64, offset: 1600)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !877, file: !64, line: 1198, baseType: !2390, size: 64, offset: 448)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2392)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !69, line: 324, size: 704, elements: !2393)
!2393 = !{!2394, !2398, !2402, !2406, !2407, !2408, !2409, !2410, !2415, !2420, !2424}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2392, file: !69, line: 325, baseType: !2395, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!120, !2330}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2392, file: !69, line: 326, baseType: !2399, size: 64, offset: 64)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!2330, !876, !120}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2392, file: !69, line: 327, baseType: !2403, size: 64, offset: 128)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{null, !2330}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2392, file: !69, line: 328, baseType: !2395, size: 64, offset: 192)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2392, file: !69, line: 329, baseType: !2395, size: 64, offset: 256)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2392, file: !69, line: 330, baseType: !2395, size: 64, offset: 320)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2392, file: !69, line: 331, baseType: !2286, size: 64, offset: 384)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2392, file: !69, line: 334, baseType: !2411, size: 64, offset: 448)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!2414, !663}
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2392, file: !69, line: 335, baseType: !2416, size: 64, offset: 512)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!120, !663, !2419}
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2392, file: !69, line: 337, baseType: !2421, size: 64, offset: 576)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!120, !663, !2414}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2392, file: !69, line: 339, baseType: !2425, size: 64, offset: 640)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!120, !876, !2428}
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !877, file: !64, line: 1199, baseType: !2430, size: 64, offset: 512)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2432)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !69, line: 430, size: 704, elements: !2433)
!2433 = !{!2434, !2438, !2439, !2443, !2444, !2445, !2460, !2483, !2487, !2488, !2511}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2432, file: !69, line: 431, baseType: !2435, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!120, !876, !120, !120, !786}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2432, file: !69, line: 432, baseType: !2286, size: 64, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2432, file: !69, line: 433, baseType: !2440, size: 64, offset: 128)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!120, !876, !7}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2432, file: !69, line: 434, baseType: !2440, size: 64, offset: 192)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2432, file: !69, line: 435, baseType: !2286, size: 64, offset: 256)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2432, file: !69, line: 436, baseType: !2446, size: 64, offset: 320)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!120, !876, !120, !2449}
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !69, line: 417, size: 256, elements: !2451)
!2451 = !{!2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2450, file: !69, line: 418, baseType: !120, size: 32)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2450, file: !69, line: 419, baseType: !7, size: 32, offset: 32)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2450, file: !69, line: 420, baseType: !7, size: 32, offset: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2450, file: !69, line: 422, baseType: !7, size: 32, offset: 96)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2450, file: !69, line: 423, baseType: !7, size: 32, offset: 128)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2450, file: !69, line: 424, baseType: !7, size: 32, offset: 160)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2450, file: !69, line: 425, baseType: !7, size: 32, offset: 192)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2450, file: !69, line: 426, baseType: !7, size: 32, offset: 224)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2432, file: !69, line: 437, baseType: !2461, size: 64, offset: 384)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!120, !876, !2342, !2464}
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !69, line: 345, size: 960, elements: !2466)
!2466 = !{!2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2465, file: !69, line: 346, baseType: !120, size: 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2465, file: !69, line: 347, baseType: !404, size: 64, offset: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2465, file: !69, line: 348, baseType: !404, size: 64, offset: 128)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2465, file: !69, line: 349, baseType: !404, size: 64, offset: 192)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2465, file: !69, line: 350, baseType: !404, size: 64, offset: 256)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2465, file: !69, line: 351, baseType: !404, size: 64, offset: 320)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2465, file: !69, line: 352, baseType: !404, size: 64, offset: 384)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2465, file: !69, line: 353, baseType: !279, size: 64, offset: 448)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2465, file: !69, line: 355, baseType: !279, size: 64, offset: 512)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2465, file: !69, line: 356, baseType: !120, size: 32, offset: 576)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2465, file: !69, line: 357, baseType: !120, size: 32, offset: 608)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2465, file: !69, line: 358, baseType: !404, size: 64, offset: 640)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2465, file: !69, line: 359, baseType: !404, size: 64, offset: 704)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2465, file: !69, line: 360, baseType: !404, size: 64, offset: 768)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2465, file: !69, line: 361, baseType: !279, size: 64, offset: 832)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2465, file: !69, line: 362, baseType: !120, size: 32, offset: 896)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2432, file: !69, line: 438, baseType: !2484, size: 64, offset: 448)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!120, !876, !2428, !2464}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2432, file: !69, line: 440, baseType: !2461, size: 64, offset: 512)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2432, file: !69, line: 441, baseType: !2489, size: 64, offset: 576)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!120, !876, !2492}
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !69, line: 411, size: 1408, elements: !2494)
!2494 = !{!2495, !2496}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2493, file: !69, line: 412, baseType: !7, size: 32)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2493, file: !69, line: 413, baseType: !2497, size: 1344, offset: 64)
!2497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2498, size: 1344, elements: !323)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !69, line: 397, size: 448, elements: !2499)
!2499 = !{!2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2510}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2498, file: !69, line: 398, baseType: !7, size: 32)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2498, file: !69, line: 399, baseType: !7, size: 32, offset: 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2498, file: !69, line: 401, baseType: !7, size: 32, offset: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2498, file: !69, line: 402, baseType: !7, size: 32, offset: 96)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2498, file: !69, line: 403, baseType: !7, size: 32, offset: 128)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2498, file: !69, line: 404, baseType: !7, size: 32, offset: 160)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2498, file: !69, line: 405, baseType: !7, size: 32, offset: 192)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2498, file: !69, line: 406, baseType: !406, size: 64, offset: 256)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2498, file: !69, line: 407, baseType: !2509, size: 64, offset: 320)
!2509 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !178, line: 132, baseType: !404)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2498, file: !69, line: 408, baseType: !2509, size: 64, offset: 384)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2432, file: !69, line: 442, baseType: !2440, size: 64, offset: 640)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !877, file: !64, line: 1200, baseType: !2513, size: 64, offset: 576)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2515)
!2515 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !64, line: 54, flags: DIFlagFwdDecl)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !877, file: !64, line: 1201, baseType: !432, size: 64, offset: 640)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !877, file: !64, line: 1202, baseType: !432, size: 64, offset: 704)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !877, file: !64, line: 1203, baseType: !432, size: 64, offset: 768)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !877, file: !64, line: 1204, baseType: !623, size: 64, offset: 832)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !877, file: !64, line: 1205, baseType: !437, size: 320, offset: 896)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !877, file: !64, line: 1206, baseType: !120, size: 32, offset: 1216)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !877, file: !64, line: 1207, baseType: !200, size: 32, offset: 1248)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !877, file: !64, line: 1209, baseType: !171, size: 64, offset: 1280)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !877, file: !64, line: 1211, baseType: !2525, size: 64, offset: 1344)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2528)
!2528 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !64, line: 1211, flags: DIFlagFwdDecl)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !877, file: !64, line: 1223, baseType: !2530, size: 64, offset: 1408)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !640, line: 34, size: 64, elements: !2531)
!2531 = !{!2532}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2530, file: !640, line: 35, baseType: !643, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !877, file: !64, line: 1224, baseType: !177, size: 128, offset: 1472)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !877, file: !64, line: 1225, baseType: !2535, size: 64, offset: 1600)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !64, line: 1225, flags: DIFlagFwdDecl)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !877, file: !64, line: 1226, baseType: !2538, size: 64, offset: 1664)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !64, line: 1226, flags: DIFlagFwdDecl)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !877, file: !64, line: 1227, baseType: !2541, size: 64, offset: 1728)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !64, line: 50, flags: DIFlagFwdDecl)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !877, file: !64, line: 1228, baseType: !2544, size: 64, offset: 1792)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !64, line: 1228, flags: DIFlagFwdDecl)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !877, file: !64, line: 1229, baseType: !339, size: 128, offset: 1856)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !877, file: !64, line: 1230, baseType: !7, size: 32, offset: 1984)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !877, file: !64, line: 1231, baseType: !2549, size: 2496, offset: 2048)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !69, line: 521, size: 2496, elements: !2550)
!2550 = !{!2551, !2552, !2553, !2555, !2587}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2549, file: !69, line: 522, baseType: !7, size: 32)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2549, file: !69, line: 523, baseType: !437, size: 320, offset: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2549, file: !69, line: 524, baseType: !2554, size: 192, offset: 384)
!2554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !663, size: 192, elements: !323)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2549, file: !69, line: 525, baseType: !2556, size: 1728, offset: 576)
!2556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2557, size: 1728, elements: !323)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !69, line: 222, size: 576, elements: !2558)
!2558 = !{!2559, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2557, file: !69, line: 223, baseType: !2560, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !69, line: 445, size: 256, elements: !2562)
!2562 = !{!2563, !2564, !2577, !2578}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2561, file: !69, line: 446, baseType: !120, size: 32)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2561, file: !69, line: 447, baseType: !2565, size: 64, offset: 64)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2567)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !69, line: 312, size: 512, elements: !2568)
!2568 = !{!2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2567, file: !69, line: 313, baseType: !2286, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2567, file: !69, line: 314, baseType: !2286, size: 64, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2567, file: !69, line: 315, baseType: !2286, size: 64, offset: 128)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2567, file: !69, line: 316, baseType: !2286, size: 64, offset: 192)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2567, file: !69, line: 317, baseType: !2395, size: 64, offset: 256)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2567, file: !69, line: 318, baseType: !2395, size: 64, offset: 320)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2567, file: !69, line: 319, baseType: !2395, size: 64, offset: 384)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2567, file: !69, line: 320, baseType: !2425, size: 64, offset: 448)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2561, file: !69, line: 448, baseType: !909, size: 64, offset: 128)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2561, file: !69, line: 449, baseType: !2560, size: 64, offset: 192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2557, file: !69, line: 224, baseType: !120, size: 32, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2557, file: !69, line: 226, baseType: !177, size: 128, offset: 128)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2557, file: !69, line: 227, baseType: !432, size: 64, offset: 256)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2557, file: !69, line: 228, baseType: !7, size: 32, offset: 320)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2557, file: !69, line: 229, baseType: !7, size: 32, offset: 352)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2557, file: !69, line: 230, baseType: !2363, size: 64, offset: 384)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2557, file: !69, line: 231, baseType: !2363, size: 64, offset: 448)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2557, file: !69, line: 232, baseType: !171, size: 64, offset: 512)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2549, file: !69, line: 526, baseType: !2588, size: 192, offset: 2304)
!2588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2565, size: 192, elements: !323)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !877, file: !64, line: 1233, baseType: !2590, size: 2368, offset: 4544)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !64, line: 1184, size: 2368, elements: !2591)
!2591 = !{!2592, !2593, !2594}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2590, file: !64, line: 1185, baseType: !268, size: 16)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2590, file: !64, line: 1186, baseType: !268, size: 16, offset: 16)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2590, file: !64, line: 1187, baseType: !2595, size: 2304, offset: 64)
!2595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2596, size: 2304, elements: !323)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2597, line: 12, size: 768, elements: !2598)
!2597 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2598 = !{!2599, !2607, !2608, !3802, !3803}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2596, file: !2597, line: 13, baseType: !2600, size: 384)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2601, line: 17, size: 384, elements: !2602)
!2601 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2602 = !{!2603, !2604, !2605, !2606}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2600, file: !2601, line: 18, baseType: !120, size: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2600, file: !2601, line: 19, baseType: !120, size: 32, offset: 32)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2600, file: !2601, line: 20, baseType: !348, size: 192, offset: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2600, file: !2601, line: 22, baseType: !222, size: 128, align: 64, offset: 256)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2596, file: !2597, line: 14, baseType: !1989, size: 64, offset: 384)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2596, file: !2597, line: 15, baseType: !2609, size: 64, offset: 448)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2610, line: 16, size: 64, elements: !2611)
!2610 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2611 = !{!2612}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2609, file: !2610, line: 17, baseType: !2613, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1434, line: 746, size: 58368, elements: !2615)
!2615 = !{!2616, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2696, !2707, !2795, !2799, !2802, !2833, !2834, !2835, !2836, !2847, !2849, !2850, !2851, !2852, !2853, !2854, !2865, !2866, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2883, !2884, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2972, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3020, !3026, !3027, !3028, !3029, !3030, !3034, !3037, !3044, !3049, !3052, !3055, !3058, !3061, !3199, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3237, !3238, !3239, !3248, !3256, !3257, !3258, !3259, !3260, !3265, !3266, !3267, !3271, !3272, !3275, !3278, !3281, !3289, !3292, !3293, !3379, !3380, !3381, !3382, !3383, !3389, !3390, !3391, !3392, !3395, !3396, !3399, !3402, !3403, !3406, !3407, !3408, !3411, !3412, !3413, !3414, !3415, !3416, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3448, !3451, !3457, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3469, !3541, !3543, !3544, !3545, !3546, !3547, !3548, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3577, !3578, !3579}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2614, file: !1434, line: 752, baseType: !2617, size: 192)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2618, line: 56, size: 192, elements: !2619)
!2618 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2619 = !{!2620, !2621, !2622, !2623}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2617, file: !2618, line: 57, baseType: !432, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2617, file: !2618, line: 58, baseType: !432, size: 64, offset: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2617, file: !2618, line: 59, baseType: !462, size: 32, offset: 128)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2617, file: !2618, line: 61, baseType: !462, size: 32, offset: 160)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2614, file: !1434, line: 754, baseType: !7, size: 32, offset: 192)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2614, file: !1434, line: 767, baseType: !171, size: 64, offset: 256)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2614, file: !1434, line: 768, baseType: !195, size: 32, offset: 320)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2614, file: !1434, line: 770, baseType: !7, size: 32, offset: 352)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2614, file: !1434, line: 771, baseType: !7, size: 32, offset: 384)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2614, file: !1434, line: 774, baseType: !120, size: 32, offset: 416)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2614, file: !1434, line: 775, baseType: !2631, size: 128, offset: 448)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2632, line: 58, size: 128, elements: !2633)
!2632 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2633 = !{!2634, !2635, !2640, !2641}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2631, file: !2632, line: 59, baseType: !216, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, scope: !2631, file: !2632, line: 60, baseType: !2636, size: 32, offset: 64)
!2636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2631, file: !2632, line: 60, size: 32, elements: !2637)
!2637 = !{!2638, !2639}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2636, file: !2632, line: 61, baseType: !7, size: 32)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2636, file: !2632, line: 62, baseType: !200, size: 32)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2631, file: !2632, line: 65, baseType: !266, size: 16, offset: 96)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2631, file: !2632, line: 65, baseType: !266, size: 16, offset: 112)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2614, file: !1434, line: 776, baseType: !7, size: 32, offset: 576)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2614, file: !1434, line: 777, baseType: !432, size: 64, offset: 640)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2614, file: !1434, line: 778, baseType: !2613, size: 64, offset: 704)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2614, file: !1434, line: 787, baseType: !120, size: 32, offset: 768)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2614, file: !1434, line: 788, baseType: !120, size: 32, offset: 800)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2614, file: !1434, line: 790, baseType: !120, size: 32, offset: 832)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2614, file: !1434, line: 792, baseType: !120, size: 32, offset: 864)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2614, file: !1434, line: 793, baseType: !120, size: 32, offset: 896)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2614, file: !1434, line: 794, baseType: !120, size: 32, offset: 928)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2614, file: !1434, line: 795, baseType: !7, size: 32, offset: 960)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2614, file: !1434, line: 797, baseType: !2653, size: 2048, offset: 1024)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1434, line: 551, size: 2048, elements: !2654)
!2654 = !{!2655, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2675, !2678, !2679, !2680}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2653, file: !1434, line: 553, baseType: !2656, size: 128)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1434, line: 411, size: 128, elements: !2657)
!2657 = !{!2658, !2659}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2656, file: !1434, line: 412, baseType: !432, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2656, file: !1434, line: 413, baseType: !462, size: 32, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2653, file: !1434, line: 554, baseType: !428, size: 192, align: 64, offset: 128)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2653, file: !1434, line: 555, baseType: !404, size: 64, offset: 320)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2653, file: !1434, line: 556, baseType: !404, size: 64, offset: 384)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2653, file: !1434, line: 558, baseType: !177, size: 128, offset: 448)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2653, file: !1434, line: 559, baseType: !7, size: 32, offset: 576)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2653, file: !1434, line: 561, baseType: !404, size: 64, offset: 640)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2653, file: !1434, line: 562, baseType: !404, size: 64, offset: 704)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2653, file: !1434, line: 563, baseType: !404, size: 64, offset: 768)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2653, file: !1434, line: 564, baseType: !404, size: 64, offset: 832)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2653, file: !1434, line: 565, baseType: !279, size: 64, offset: 896)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2653, file: !1434, line: 566, baseType: !404, size: 64, offset: 960)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2653, file: !1434, line: 568, baseType: !404, size: 64, offset: 1024)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2653, file: !1434, line: 571, baseType: !120, size: 32, offset: 1088)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2653, file: !1434, line: 572, baseType: !2674, size: 64, offset: 1152)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2653, file: !1434, line: 574, baseType: !2676, size: 64, offset: 1216)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1434, line: 49, flags: DIFlagFwdDecl)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2653, file: !1434, line: 576, baseType: !2676, size: 64, offset: 1280)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2653, file: !1434, line: 578, baseType: !432, size: 64, offset: 1344)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2653, file: !1434, line: 588, baseType: !2681, size: 512, align: 512, offset: 1536)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1434, line: 497, size: 512, align: 512, elements: !2682)
!2682 = !{!2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2681, file: !1434, line: 498, baseType: !404, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2681, file: !1434, line: 499, baseType: !404, size: 64, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2681, file: !1434, line: 500, baseType: !404, size: 64, offset: 128)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2681, file: !1434, line: 501, baseType: !462, size: 32, offset: 192)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2681, file: !1434, line: 502, baseType: !462, size: 32, offset: 224)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2681, file: !1434, line: 503, baseType: !432, size: 64, offset: 256)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2681, file: !1434, line: 504, baseType: !432, size: 64, offset: 320)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2681, file: !1434, line: 505, baseType: !432, size: 64, offset: 384)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2681, file: !1434, line: 506, baseType: !2692, size: 64, align: 64, offset: 448)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1434, line: 445, size: 64, align: 64, elements: !2693)
!2693 = !{!2694, !2695}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2692, file: !1434, line: 446, baseType: !7, size: 32)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2692, file: !1434, line: 447, baseType: !7, size: 32, offset: 32)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2614, file: !1434, line: 798, baseType: !2697, size: 384, offset: 3072)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1434, line: 592, size: 384, elements: !2698)
!2698 = !{!2699, !2700, !2701, !2702, !2703, !2704, !2705}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2697, file: !1434, line: 593, baseType: !177, size: 128)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2697, file: !1434, line: 594, baseType: !432, size: 64, offset: 128)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2697, file: !1434, line: 595, baseType: !432, size: 64, offset: 192)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2697, file: !1434, line: 596, baseType: !7, size: 32, offset: 256)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2697, file: !1434, line: 597, baseType: !268, size: 16, offset: 288)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2697, file: !1434, line: 598, baseType: !268, size: 16, offset: 304)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2697, file: !1434, line: 600, baseType: !2706, size: 64, offset: 320)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2614, file: !1434, line: 799, baseType: !2708, size: 1792, offset: 3456)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1434, line: 610, size: 1792, elements: !2709)
!2709 = !{!2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2792, !2793}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2708, file: !1434, line: 611, baseType: !428, size: 192, align: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2708, file: !1434, line: 618, baseType: !404, size: 64, offset: 192)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2708, file: !1434, line: 619, baseType: !404, size: 64, offset: 256)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2708, file: !1434, line: 620, baseType: !404, size: 64, offset: 320)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2708, file: !1434, line: 621, baseType: !404, size: 64, offset: 384)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2708, file: !1434, line: 622, baseType: !404, size: 64, offset: 448)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2708, file: !1434, line: 629, baseType: !279, size: 64, offset: 512)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2708, file: !1434, line: 630, baseType: !404, size: 64, offset: 576)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2708, file: !1434, line: 631, baseType: !7, size: 32, offset: 640)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2708, file: !1434, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2708, file: !1434, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2708, file: !1434, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2708, file: !1434, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2708, file: !1434, line: 662, baseType: !2724, size: 512, offset: 704)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !2725)
!2725 = !{!2726, !2734, !2735, !2740, !2788, !2789, !2790, !2791}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2724, file: !6, line: 119, baseType: !2727, size: 256)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2728, line: 9, size: 256, elements: !2729)
!2728 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2729 = !{!2730, !2731}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2727, file: !2728, line: 10, baseType: !428, size: 192, align: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2727, file: !2728, line: 11, baseType: !2732, size: 64, offset: 192)
!2732 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2733, line: 29, baseType: !279)
!2733 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2724, file: !6, line: 120, baseType: !2732, size: 64, offset: 256)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2724, file: !6, line: 121, baseType: !2736, size: 64, offset: 320)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!5, !2739}
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2724, file: !6, line: 122, baseType: !2741, size: 64, offset: 384)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !2743)
!2743 = !{!2744, !2769, !2770, !2773, !2778, !2779, !2783, !2787}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2742, file: !6, line: 160, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !2747)
!2747 = !{!2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2746, file: !6, line: 216, baseType: !288, size: 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2746, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2746, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2746, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2746, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2746, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2746, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2746, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2746, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2746, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2746, file: !6, line: 227, baseType: !268, size: 16, offset: 192)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2746, file: !6, line: 228, baseType: !268, size: 16, offset: 208)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2746, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2746, file: !6, line: 235, baseType: !2732, size: 64, offset: 256)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2746, file: !6, line: 236, baseType: !2739, size: 64, offset: 320)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2746, file: !6, line: 237, baseType: !2732, size: 64, offset: 384)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2746, file: !6, line: 238, baseType: !2739, size: 64, offset: 448)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2746, file: !6, line: 239, baseType: !2766, size: 4096, align: 512, offset: 512)
!2766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2742, size: 4096, align: 512, elements: !2767)
!2767 = !{!2768}
!2768 = !DISubrange(count: 8)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2742, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2742, file: !6, line: 162, baseType: !2771, size: 32, offset: 96)
!2771 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !178, line: 32, baseType: !2772)
!2772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !298, line: 96, baseType: !120)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2742, file: !6, line: 163, baseType: !2774, size: 32, offset: 128)
!2774 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !630, line: 274, baseType: !2775)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !630, line: 274, size: 32, elements: !2776)
!2776 = !{!2777}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2775, file: !630, line: 274, baseType: !634, size: 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2742, file: !6, line: 164, baseType: !2739, size: 64, offset: 192)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2742, file: !6, line: 165, baseType: !2780, size: 128, offset: 256)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2728, line: 14, size: 128, elements: !2781)
!2781 = !{!2782}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2780, file: !2728, line: 15, baseType: !1035, size: 128)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2742, file: !6, line: 166, baseType: !2784, size: 64, offset: 384)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!2732}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2742, file: !6, line: 167, baseType: !2732, size: 64, offset: 448)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2724, file: !6, line: 123, baseType: !256, size: 8, offset: 448)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2724, file: !6, line: 124, baseType: !256, size: 8, offset: 456)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2724, file: !6, line: 125, baseType: !256, size: 8, offset: 464)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2724, file: !6, line: 126, baseType: !256, size: 8, offset: 472)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2708, file: !1434, line: 671, baseType: !2724, size: 512, offset: 1216)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2708, file: !1434, line: 679, baseType: !2794, size: 64, offset: 1728)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2614, file: !1434, line: 800, baseType: !2796, size: 64, offset: 5248)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2798)
!2798 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1434, line: 800, flags: DIFlagFwdDecl)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2614, file: !1434, line: 809, baseType: !2800, size: 64, offset: 5312)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1434, line: 70, flags: DIFlagFwdDecl)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2614, file: !1434, line: 825, baseType: !2803, size: 2048, align: 512, offset: 5632)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1434, line: 509, size: 2048, align: 512, elements: !2804)
!2804 = !{!2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2803, file: !1434, line: 511, baseType: !404, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2803, file: !1434, line: 512, baseType: !404, size: 64, offset: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2803, file: !1434, line: 513, baseType: !404, size: 64, offset: 128)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2803, file: !1434, line: 514, baseType: !404, size: 64, offset: 192)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2803, file: !1434, line: 515, baseType: !404, size: 64, offset: 256)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2803, file: !1434, line: 516, baseType: !404, size: 64, offset: 320)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2803, file: !1434, line: 518, baseType: !404, size: 64, offset: 384)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2803, file: !1434, line: 519, baseType: !404, size: 64, offset: 448)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2803, file: !1434, line: 520, baseType: !279, size: 64, offset: 512)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2803, file: !1434, line: 522, baseType: !404, size: 64, offset: 576)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2803, file: !1434, line: 523, baseType: !404, size: 64, offset: 640)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2803, file: !1434, line: 524, baseType: !279, size: 64, offset: 704)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2803, file: !1434, line: 526, baseType: !279, size: 64, offset: 768)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2803, file: !1434, line: 527, baseType: !404, size: 64, offset: 832)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2803, file: !1434, line: 529, baseType: !404, size: 64, offset: 896)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2803, file: !1434, line: 530, baseType: !404, size: 64, offset: 960)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2803, file: !1434, line: 531, baseType: !404, size: 64, offset: 1024)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2803, file: !1434, line: 532, baseType: !404, size: 64, offset: 1088)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2803, file: !1434, line: 533, baseType: !404, size: 64, offset: 1152)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2803, file: !1434, line: 535, baseType: !404, size: 64, offset: 1216)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2803, file: !1434, line: 536, baseType: !404, size: 64, offset: 1280)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2803, file: !1434, line: 537, baseType: !404, size: 64, offset: 1344)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2803, file: !1434, line: 538, baseType: !404, size: 64, offset: 1408)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2803, file: !1434, line: 539, baseType: !404, size: 64, offset: 1472)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2803, file: !1434, line: 540, baseType: !404, size: 64, offset: 1536)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2803, file: !1434, line: 541, baseType: !404, size: 64, offset: 1600)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2803, file: !1434, line: 542, baseType: !404, size: 64, offset: 1664)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2803, file: !1434, line: 543, baseType: !404, size: 64, offset: 1728)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2614, file: !1434, line: 833, baseType: !7, size: 32, offset: 7680)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2614, file: !1434, line: 836, baseType: !7, size: 32, offset: 7712)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2614, file: !1434, line: 837, baseType: !120, size: 32, offset: 7744)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2614, file: !1434, line: 838, baseType: !2837, size: 64, offset: 7808)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2839)
!2839 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2840, line: 19, baseType: !2841)
!2840 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2840, line: 19, size: 64, elements: !2842)
!2842 = !{!2843}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2841, file: !2840, line: 19, baseType: !2844, size: 64)
!2844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 64, elements: !2845)
!2845 = !{!2846}
!2846 = !DISubrange(count: 1)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2614, file: !1434, line: 839, baseType: !2848, size: 64, offset: 7872)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2614, file: !1434, line: 840, baseType: !2839, size: 64, offset: 7936)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2614, file: !1434, line: 841, baseType: !171, size: 64, offset: 8000)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2614, file: !1434, line: 843, baseType: !268, size: 16, offset: 8064)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2614, file: !1434, line: 845, baseType: !268, size: 16, offset: 8080)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2614, file: !1434, line: 848, baseType: !120, size: 32, offset: 8096)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2614, file: !1434, line: 849, baseType: !2855, size: 32, offset: 8128)
!2855 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1434, line: 718, size: 32, elements: !2856)
!2856 = !{!2857, !2864}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2855, file: !1434, line: 724, baseType: !2858, size: 32)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2855, file: !1434, line: 719, size: 32, elements: !2859)
!2859 = !{!2860, !2861, !2862, !2863}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2858, file: !1434, line: 720, baseType: !256, size: 8)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2858, file: !1434, line: 721, baseType: !256, size: 8, offset: 8)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2858, file: !1434, line: 722, baseType: !256, size: 8, offset: 16)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2858, file: !1434, line: 723, baseType: !256, size: 8, offset: 24)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2855, file: !1434, line: 725, baseType: !462, size: 32)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2614, file: !1434, line: 850, baseType: !177, size: 128, offset: 8192)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2614, file: !1434, line: 851, baseType: !2867, size: 64, offset: 8320)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1434, line: 60, flags: DIFlagFwdDecl)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2614, file: !1434, line: 855, baseType: !432, size: 64, offset: 8384)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2614, file: !1434, line: 856, baseType: !256, size: 8, offset: 8448)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2614, file: !1434, line: 857, baseType: !256, size: 8, offset: 8456)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2614, file: !1434, line: 858, baseType: !120, size: 32, offset: 8480)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2614, file: !1434, line: 859, baseType: !177, size: 128, offset: 8512)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2614, file: !1434, line: 860, baseType: !120, size: 32, offset: 8640)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2614, file: !1434, line: 861, baseType: !177, size: 128, offset: 8704)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2614, file: !1434, line: 873, baseType: !2877, size: 256, offset: 8832)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1434, line: 376, size: 256, elements: !2878)
!2878 = !{!2879, !2880, !2881, !2882}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2877, file: !1434, line: 381, baseType: !432, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2877, file: !1434, line: 384, baseType: !406, size: 64, offset: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2877, file: !1434, line: 389, baseType: !406, size: 64, offset: 128)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2877, file: !1434, line: 392, baseType: !406, size: 64, offset: 192)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2614, file: !1434, line: 875, baseType: !177, size: 128, offset: 9088)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2614, file: !1434, line: 877, baseType: !2885, size: 320, offset: 9216)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2886, line: 86, size: 320, elements: !2887)
!2886 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2887 = !{!2888, !2889, !2890}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2885, file: !2886, line: 87, baseType: !120, size: 32)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2885, file: !2886, line: 88, baseType: !177, size: 128, offset: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2885, file: !2886, line: 89, baseType: !177, size: 128, offset: 192)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2614, file: !1434, line: 878, baseType: !428, size: 192, align: 64, offset: 9536)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2614, file: !1434, line: 881, baseType: !1186, size: 64, offset: 9728)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2614, file: !1434, line: 882, baseType: !1186, size: 64, offset: 9792)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2614, file: !1434, line: 884, baseType: !120, size: 32, offset: 9856)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2614, file: !1434, line: 885, baseType: !120, size: 32, offset: 9888)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2614, file: !1434, line: 886, baseType: !120, size: 32, offset: 9920)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2614, file: !1434, line: 888, baseType: !120, size: 32, offset: 9952)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2614, file: !1434, line: 890, baseType: !432, size: 64, offset: 9984)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2614, file: !1434, line: 893, baseType: !7, size: 32, offset: 10048)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2614, file: !1434, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2614, file: !1434, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2614, file: !1434, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2614, file: !1434, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2614, file: !1434, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2614, file: !1434, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2614, file: !1434, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2614, file: !1434, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2614, file: !1434, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2614, file: !1434, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2614, file: !1434, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2614, file: !1434, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2614, file: !1434, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2614, file: !1434, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2614, file: !1434, line: 969, baseType: !432, size: 64, offset: 10176)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2614, file: !1434, line: 971, baseType: !2916, size: 448, offset: 10240)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !75, line: 25, size: 448, elements: !2917)
!2917 = !{!2918, !2919, !2924}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2916, file: !75, line: 26, baseType: !432, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2916, file: !75, line: 27, baseType: !2920, size: 64, offset: 64)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!778, !2923}
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, scope: !2916, file: !75, line: 28, baseType: !2925, size: 320, offset: 128)
!2925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2916, file: !75, line: 28, size: 320, elements: !2926)
!2926 = !{!2927, !2937, !2962}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2925, file: !75, line: 37, baseType: !2928, size: 320)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2925, file: !75, line: 30, size: 320, elements: !2929)
!2929 = !{!2930, !2932, !2933, !2934, !2935, !2936}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2928, file: !75, line: 31, baseType: !2931, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2928, file: !75, line: 32, baseType: !462, size: 32, offset: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2928, file: !75, line: 33, baseType: !462, size: 32, offset: 96)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2928, file: !75, line: 34, baseType: !462, size: 32, offset: 128)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2928, file: !75, line: 35, baseType: !404, size: 64, offset: 192)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2928, file: !75, line: 36, baseType: !2931, size: 64, offset: 256)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2925, file: !75, line: 47, baseType: !2938, size: 192)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2925, file: !75, line: 39, size: 192, elements: !2939)
!2939 = !{!2940, !2941, !2942, !2961}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2938, file: !75, line: 40, baseType: !2771, size: 32)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2938, file: !75, line: 41, baseType: !74, size: 32, offset: 32)
!2942 = !DIDerivedType(tag: DW_TAG_member, scope: !2938, file: !75, line: 42, baseType: !2943, size: 64, offset: 64)
!2943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2938, file: !75, line: 42, size: 64, elements: !2944)
!2944 = !{!2945, !2953}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2943, file: !75, line: 43, baseType: !2946, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2948, line: 7, size: 128, elements: !2949)
!2948 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2949 = !{!2950, !2952}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2947, file: !2948, line: 8, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !298, line: 93, baseType: !281)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2947, file: !2948, line: 9, baseType: !281, size: 64, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2943, file: !75, line: 44, baseType: !2954, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2956, line: 7, size: 64, elements: !2957)
!2956 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2957 = !{!2958, !2960}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2955, file: !2956, line: 8, baseType: !2959, size: 32)
!2959 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2956, line: 5, baseType: !421)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2955, file: !2956, line: 9, baseType: !421, size: 32, offset: 32)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2938, file: !75, line: 46, baseType: !404, size: 64, offset: 128)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2925, file: !75, line: 55, baseType: !2963, size: 256)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2925, file: !75, line: 49, size: 256, elements: !2964)
!2964 = !{!2965, !2968, !2969, !2970, !2971}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2963, file: !75, line: 50, baseType: !2966, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !75, line: 14, flags: DIFlagFwdDecl)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2963, file: !75, line: 51, baseType: !120, size: 32, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2963, file: !75, line: 52, baseType: !120, size: 32, offset: 96)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2963, file: !75, line: 53, baseType: !432, size: 64, offset: 128)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2963, file: !75, line: 54, baseType: !432, size: 64, offset: 192)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2614, file: !1434, line: 973, baseType: !2973, size: 32, offset: 10688)
!2973 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !178, line: 27, baseType: !2974)
!2974 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !298, line: 28, baseType: !120)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2614, file: !1434, line: 974, baseType: !2973, size: 32, offset: 10720)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2614, file: !1434, line: 978, baseType: !432, size: 64, offset: 10752)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2614, file: !1434, line: 987, baseType: !2613, size: 64, offset: 10816)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2614, file: !1434, line: 990, baseType: !2613, size: 64, offset: 10880)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2614, file: !1434, line: 995, baseType: !177, size: 128, offset: 10944)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2614, file: !1434, line: 996, baseType: !177, size: 128, offset: 11072)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2614, file: !1434, line: 997, baseType: !2613, size: 64, offset: 11200)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2614, file: !1434, line: 1005, baseType: !177, size: 128, offset: 11264)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2614, file: !1434, line: 1006, baseType: !177, size: 128, offset: 11392)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2614, file: !1434, line: 1009, baseType: !327, size: 64, offset: 11520)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2614, file: !1434, line: 1010, baseType: !2986, size: 512, offset: 11584)
!2986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 512, elements: !344)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2614, file: !1434, line: 1011, baseType: !177, size: 128, offset: 12096)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2614, file: !1434, line: 1012, baseType: !177, size: 128, offset: 12224)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2614, file: !1434, line: 1014, baseType: !1900, size: 64, offset: 12352)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2614, file: !1434, line: 1017, baseType: !2037, size: 64, offset: 12416)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2614, file: !1434, line: 1020, baseType: !2037, size: 64, offset: 12480)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2614, file: !1434, line: 1023, baseType: !171, size: 64, offset: 12544)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2614, file: !1434, line: 1025, baseType: !404, size: 64, offset: 12608)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2614, file: !1434, line: 1026, baseType: !404, size: 64, offset: 12672)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2614, file: !1434, line: 1031, baseType: !404, size: 64, offset: 12736)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2614, file: !1434, line: 1032, baseType: !2997, size: 192, offset: 12800)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1434, line: 324, size: 192, elements: !2998)
!2998 = !{!2999, !3000, !3001}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2997, file: !1434, line: 326, baseType: !404, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2997, file: !1434, line: 327, baseType: !404, size: 64, offset: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2997, file: !1434, line: 328, baseType: !288, size: 32, offset: 128)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2614, file: !1434, line: 1041, baseType: !432, size: 64, offset: 12992)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2614, file: !1434, line: 1042, baseType: !432, size: 64, offset: 13056)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2614, file: !1434, line: 1045, baseType: !404, size: 64, offset: 13120)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2614, file: !1434, line: 1048, baseType: !404, size: 64, offset: 13184)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2614, file: !1434, line: 1051, baseType: !432, size: 64, offset: 13248)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2614, file: !1434, line: 1052, baseType: !432, size: 64, offset: 13312)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2614, file: !1434, line: 1055, baseType: !3009, size: 640, offset: 13376)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3010, line: 132, size: 640, elements: !3011)
!3010 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3011 = !{!3012, !3018, !3019}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3009, file: !3010, line: 133, baseType: !3013, size: 576)
!3013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3014, size: 576, elements: !323)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3010, line: 117, size: 192, elements: !3015)
!3015 = !{!3016, !3017}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3014, file: !3010, line: 118, baseType: !404, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3014, file: !3010, line: 119, baseType: !2780, size: 128, offset: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3009, file: !3010, line: 134, baseType: !7, size: 32, offset: 576)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3009, file: !3010, line: 135, baseType: !7, size: 32, offset: 608)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2614, file: !1434, line: 1058, baseType: !3021, size: 448, offset: 14016)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3010, line: 144, size: 448, elements: !3022)
!3022 = !{!3023, !3024, !3025}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3021, file: !3010, line: 145, baseType: !222, size: 128, align: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3021, file: !3010, line: 146, baseType: !283, size: 256, offset: 128)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3021, file: !3010, line: 147, baseType: !7, size: 32, offset: 384)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2614, file: !1434, line: 1064, baseType: !377, size: 64, offset: 14464)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2614, file: !1434, line: 1067, baseType: !377, size: 64, offset: 14528)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2614, file: !1434, line: 1070, baseType: !377, size: 64, offset: 14592)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2614, file: !1434, line: 1074, baseType: !413, size: 64, offset: 14656)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2614, file: !1434, line: 1084, baseType: !3031, size: 128, offset: 14720)
!3031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 128, elements: !3032)
!3032 = !{!3033}
!3033 = !DISubrange(count: 16)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2614, file: !1434, line: 1086, baseType: !3035, size: 64, offset: 14848)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1434, line: 55, flags: DIFlagFwdDecl)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2614, file: !1434, line: 1089, baseType: !3038, size: 64, offset: 14912)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3039, line: 12, size: 64, elements: !3040)
!3039 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3040 = !{!3041}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3038, file: !3039, line: 13, baseType: !3042, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3039, line: 8, flags: DIFlagFwdDecl)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2614, file: !1434, line: 1090, baseType: !3045, size: 128, offset: 14976)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3046, line: 13, size: 128, elements: !3047)
!3046 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3047 = !{!3048}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3045, file: !3046, line: 14, baseType: !177, size: 128)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2614, file: !1434, line: 1097, baseType: !3050, size: 64, offset: 15104)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1434, line: 50, flags: DIFlagFwdDecl)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2614, file: !1434, line: 1100, baseType: !3053, size: 64, offset: 15168)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1434, line: 1100, flags: DIFlagFwdDecl)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2614, file: !1434, line: 1103, baseType: !3056, size: 64, offset: 15232)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1434, line: 53, flags: DIFlagFwdDecl)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2614, file: !1434, line: 1107, baseType: !3059, size: 64, offset: 15296)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1434, line: 56, flags: DIFlagFwdDecl)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2614, file: !1434, line: 1110, baseType: !3062, size: 64, offset: 15360)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3064, line: 93, size: 8768, elements: !3065)
!3064 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3065 = !{!3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3113, !3122, !3123, !3125, !3126, !3127, !3130, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3168, !3169, !3176, !3186, !3189, !3190, !3193, !3194, !3195, !3196, !3197, !3198}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3063, file: !3064, line: 94, baseType: !195, size: 32)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3063, file: !3064, line: 95, baseType: !200, size: 32, offset: 32)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3063, file: !3064, line: 96, baseType: !120, size: 32, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3063, file: !3064, line: 97, baseType: !120, size: 32, offset: 96)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3063, file: !3064, line: 98, baseType: !177, size: 128, offset: 128)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3063, file: !3064, line: 100, baseType: !348, size: 192, offset: 256)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3063, file: !3064, line: 103, baseType: !2613, size: 64, offset: 448)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3063, file: !3064, line: 106, baseType: !3074, size: 192, offset: 512)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !590, line: 32, size: 192, elements: !3075)
!3075 = !{!3076, !3077}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3074, file: !590, line: 33, baseType: !177, size: 128)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3074, file: !590, line: 34, baseType: !3078, size: 64, offset: 128)
!3078 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3079, line: 25, baseType: !3080)
!3079 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3079, line: 23, size: 64, elements: !3081)
!3081 = !{!3082}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3080, file: !3079, line: 24, baseType: !2844, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3063, file: !3064, line: 109, baseType: !335, size: 64, offset: 704)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3063, file: !3064, line: 112, baseType: !120, size: 32, offset: 768)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3063, file: !3064, line: 114, baseType: !120, size: 32, offset: 800)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3063, file: !3064, line: 115, baseType: !2613, size: 64, offset: 832)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3063, file: !3064, line: 118, baseType: !120, size: 32, offset: 896)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3063, file: !3064, line: 119, baseType: !7, size: 32, offset: 928)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3063, file: !3064, line: 121, baseType: !3090, size: 64, offset: 960)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3064, line: 80, size: 448, elements: !3092)
!3092 = !{!3093, !3094, !3100}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3091, file: !3064, line: 81, baseType: !200, size: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3091, file: !3064, line: 82, baseType: !3095, size: 128, offset: 64)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3064, line: 75, size: 128, elements: !3096)
!3096 = !{!3097, !3098}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3095, file: !3064, line: 76, baseType: !2613, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3095, file: !3064, line: 77, baseType: !3099, size: 64, offset: 64)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3091, file: !3064, line: 83, baseType: !1138, size: 256, offset: 192)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3063, file: !3064, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3063, file: !3064, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3063, file: !3064, line: 138, baseType: !7, size: 32, offset: 1056)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3063, file: !3064, line: 139, baseType: !177, size: 128, offset: 1088)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3063, file: !3064, line: 142, baseType: !2724, size: 512, offset: 1216)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3063, file: !3064, line: 143, baseType: !2732, size: 64, offset: 1728)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3063, file: !3064, line: 150, baseType: !3108, size: 256, offset: 1792)
!3108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3109, size: 256, elements: !2027)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3064, line: 38, size: 128, elements: !3110)
!3110 = !{!3111, !3112}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3109, file: !3064, line: 39, baseType: !404, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3109, file: !3064, line: 40, baseType: !404, size: 64, offset: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3063, file: !3064, line: 156, baseType: !3114, size: 192, offset: 2048)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3064, line: 66, size: 192, elements: !3115)
!3115 = !{!3116}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3114, file: !3064, line: 67, baseType: !3117, size: 192)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3064, line: 47, size: 192, elements: !3118)
!3118 = !{!3119, !3120, !3121}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3117, file: !3064, line: 48, baseType: !275, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3117, file: !3064, line: 49, baseType: !275, size: 64, offset: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3117, file: !3064, line: 50, baseType: !275, size: 64, offset: 128)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3063, file: !3064, line: 160, baseType: !3009, size: 640, offset: 2240)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3063, file: !3064, line: 163, baseType: !3124, size: 256, offset: 2880)
!3124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 256, elements: !344)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3063, file: !3064, line: 169, baseType: !327, size: 64, offset: 3136)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3063, file: !3064, line: 172, baseType: !120, size: 32, offset: 3200)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3063, file: !3064, line: 174, baseType: !3128, size: 64, offset: 3264)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3064, line: 174, flags: DIFlagFwdDecl)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3063, file: !3064, line: 185, baseType: !3131, size: 64, offset: 3328)
!3131 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !630, line: 860, baseType: !3132)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !630, line: 853, size: 64, elements: !3133)
!3133 = !{!3134, !3135}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3132, file: !630, line: 858, baseType: !629, size: 32)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3132, file: !630, line: 859, baseType: !232, size: 32, offset: 32)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3063, file: !3064, line: 186, baseType: !404, size: 64, offset: 3392)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3063, file: !3064, line: 186, baseType: !404, size: 64, offset: 3456)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3063, file: !3064, line: 186, baseType: !404, size: 64, offset: 3520)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3063, file: !3064, line: 186, baseType: !404, size: 64, offset: 3584)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3063, file: !3064, line: 187, baseType: !404, size: 64, offset: 3648)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3063, file: !3064, line: 188, baseType: !404, size: 64, offset: 3712)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3063, file: !3064, line: 189, baseType: !2997, size: 192, offset: 3776)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3063, file: !3064, line: 190, baseType: !432, size: 64, offset: 3968)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3063, file: !3064, line: 190, baseType: !432, size: 64, offset: 4032)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3063, file: !3064, line: 190, baseType: !432, size: 64, offset: 4096)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3063, file: !3064, line: 190, baseType: !432, size: 64, offset: 4160)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3063, file: !3064, line: 191, baseType: !432, size: 64, offset: 4224)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3063, file: !3064, line: 191, baseType: !432, size: 64, offset: 4288)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3063, file: !3064, line: 191, baseType: !432, size: 64, offset: 4352)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3063, file: !3064, line: 191, baseType: !432, size: 64, offset: 4416)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3063, file: !3064, line: 192, baseType: !432, size: 64, offset: 4480)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3063, file: !3064, line: 192, baseType: !432, size: 64, offset: 4544)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3063, file: !3064, line: 192, baseType: !432, size: 64, offset: 4608)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3063, file: !3064, line: 192, baseType: !432, size: 64, offset: 4672)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3063, file: !3064, line: 193, baseType: !432, size: 64, offset: 4736)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3063, file: !3064, line: 193, baseType: !432, size: 64, offset: 4800)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3063, file: !3064, line: 194, baseType: !3158, size: 448, offset: 4864)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3159, line: 12, size: 448, elements: !3160)
!3159 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3160 = !{!3161, !3162, !3163, !3164, !3165, !3166, !3167}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3158, file: !3159, line: 15, baseType: !404, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3158, file: !3159, line: 17, baseType: !404, size: 64, offset: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3158, file: !3159, line: 19, baseType: !404, size: 64, offset: 128)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3158, file: !3159, line: 21, baseType: !404, size: 64, offset: 192)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3158, file: !3159, line: 29, baseType: !404, size: 64, offset: 256)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3158, file: !3159, line: 35, baseType: !404, size: 64, offset: 320)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3158, file: !3159, line: 44, baseType: !404, size: 64, offset: 384)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3063, file: !3064, line: 202, baseType: !406, size: 64, offset: 5312)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3063, file: !3064, line: 213, baseType: !3170, size: 2048, offset: 5376)
!3170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3171, size: 2048, elements: !3032)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3172, line: 43, size: 128, elements: !3173)
!3172 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3173 = !{!3174, !3175}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3171, file: !3172, line: 44, baseType: !822, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3171, file: !3172, line: 45, baseType: !822, size: 64, offset: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3063, file: !3064, line: 216, baseType: !3177, size: 448, offset: 7424)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3064, line: 30, size: 448, elements: !3178)
!3178 = !{!3179, !3180, !3181, !3182, !3183, !3184, !3185}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3177, file: !3064, line: 31, baseType: !120, size: 32)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3177, file: !3064, line: 32, baseType: !778, size: 64, offset: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3177, file: !3064, line: 33, baseType: !432, size: 64, offset: 128)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3177, file: !3064, line: 34, baseType: !404, size: 64, offset: 192)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3177, file: !3064, line: 34, baseType: !404, size: 64, offset: 256)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3177, file: !3064, line: 35, baseType: !432, size: 64, offset: 320)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3177, file: !3064, line: 35, baseType: !432, size: 64, offset: 384)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3063, file: !3064, line: 219, baseType: !3187, size: 64, offset: 7872)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3064, line: 219, flags: DIFlagFwdDecl)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3063, file: !3064, line: 222, baseType: !7, size: 32, offset: 7936)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3063, file: !3064, line: 223, baseType: !3191, size: 64, offset: 8000)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3064, line: 223, flags: DIFlagFwdDecl)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3063, file: !3064, line: 230, baseType: !499, size: 8, offset: 8064)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3063, file: !3064, line: 231, baseType: !467, size: 16, offset: 8080)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3063, file: !3064, line: 232, baseType: !467, size: 16, offset: 8096)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3063, file: !3064, line: 234, baseType: !1186, size: 64, offset: 8128)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3063, file: !3064, line: 237, baseType: !283, size: 256, offset: 8192)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3063, file: !3064, line: 243, baseType: !437, size: 320, offset: 8448)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2614, file: !1434, line: 1111, baseType: !3200, size: 64, offset: 15424)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3064, line: 20, size: 16640, elements: !3202)
!3202 = !{!3203, !3204, !3205, !3206}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3201, file: !3064, line: 21, baseType: !232, size: 32)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3201, file: !3064, line: 22, baseType: !195, size: 32, offset: 32)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3201, file: !3064, line: 23, baseType: !348, size: 192, offset: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3201, file: !3064, line: 24, baseType: !3207, size: 16384, offset: 256)
!3207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3208, size: 16384, elements: !965)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !590, line: 51, size: 256, elements: !3209)
!3209 = !{!3210}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3208, file: !590, line: 52, baseType: !3211, size: 256)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !590, line: 37, size: 256, elements: !3212)
!3212 = !{!3213, !3220, !3221, !3225}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3211, file: !590, line: 39, baseType: !3214, size: 64)
!3214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3215, line: 83, baseType: !3216)
!3215 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3215, line: 82, baseType: !3218)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{null, !120}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3211, file: !590, line: 40, baseType: !432, size: 64, offset: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3211, file: !590, line: 46, baseType: !3222, size: 64, offset: 128)
!3222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3215, line: 86, baseType: !3223)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3215, line: 85, baseType: !2242)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3211, file: !590, line: 48, baseType: !3078, size: 64, offset: 192)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2614, file: !1434, line: 1112, baseType: !3078, size: 64, offset: 15488)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2614, file: !1434, line: 1113, baseType: !3078, size: 64, offset: 15552)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2614, file: !1434, line: 1115, baseType: !3078, size: 64, offset: 15616)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2614, file: !1434, line: 1116, baseType: !3074, size: 192, offset: 15680)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2614, file: !1434, line: 1117, baseType: !432, size: 64, offset: 15872)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2614, file: !1434, line: 1118, baseType: !820, size: 64, offset: 15936)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2614, file: !1434, line: 1119, baseType: !7, size: 32, offset: 16000)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2614, file: !1434, line: 1121, baseType: !225, size: 64, offset: 16064)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2614, file: !1434, line: 1125, baseType: !3235, size: 64, offset: 16128)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1434, line: 43, flags: DIFlagFwdDecl)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2614, file: !1434, line: 1127, baseType: !367, size: 32, offset: 16192)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2614, file: !1434, line: 1128, baseType: !7, size: 32, offset: 16224)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2614, file: !1434, line: 1130, baseType: !3240, size: 128, offset: 16256)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3241, line: 37, size: 128, elements: !3242)
!3241 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3242 = !{!3243, !3244, !3245}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3240, file: !3241, line: 38, baseType: !120, size: 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3240, file: !3241, line: 39, baseType: !200, size: 32, offset: 32)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3240, file: !3241, line: 40, baseType: !3246, size: 64, offset: 64)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3241, line: 24, flags: DIFlagFwdDecl)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2614, file: !1434, line: 1131, baseType: !3249, size: 256, offset: 16384)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3250, line: 12, size: 256, elements: !3251)
!3250 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3251 = !{!3252, !3253, !3254, !3255}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3249, file: !3250, line: 13, baseType: !512, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3249, file: !3250, line: 14, baseType: !432, size: 64, offset: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3249, file: !3250, line: 15, baseType: !432, size: 64, offset: 128)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3249, file: !3250, line: 16, baseType: !499, size: 8, offset: 192)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2614, file: !1434, line: 1134, baseType: !404, size: 64, offset: 16640)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2614, file: !1434, line: 1135, baseType: !404, size: 64, offset: 16704)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2614, file: !1434, line: 1138, baseType: !232, size: 32, offset: 16768)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2614, file: !1434, line: 1141, baseType: !288, size: 32, offset: 16800)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2614, file: !1434, line: 1143, baseType: !3261, size: 64, offset: 16832)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1434, line: 735, size: 64, elements: !3262)
!3262 = !{!3263}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3261, file: !1434, line: 736, baseType: !3264, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2614, file: !1434, line: 1147, baseType: !1035, size: 128, offset: 16896)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2614, file: !1434, line: 1149, baseType: !2613, size: 64, offset: 17024)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2614, file: !1434, line: 1151, baseType: !3268, size: 64, offset: 17088)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !3270, line: 64, flags: DIFlagFwdDecl)
!3270 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3b60a10bef9e89c790a516317bab43b")
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2614, file: !1434, line: 1188, baseType: !171, size: 64, offset: 17152)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2614, file: !1434, line: 1191, baseType: !3273, size: 64, offset: 17216)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1434, line: 44, flags: DIFlagFwdDecl)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2614, file: !1434, line: 1194, baseType: !3276, size: 64, offset: 17280)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1434, line: 45, flags: DIFlagFwdDecl)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2614, file: !1434, line: 1197, baseType: !3279, size: 64, offset: 17344)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1434, line: 61, flags: DIFlagFwdDecl)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2614, file: !1434, line: 1199, baseType: !3282, size: 64, offset: 17408)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3284, line: 99, size: 128, elements: !3285)
!3284 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3285 = !{!3286, !3287, !3288}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3283, file: !3284, line: 100, baseType: !273, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3283, file: !3284, line: 101, baseType: !200, size: 32, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3283, file: !3284, line: 103, baseType: !268, size: 16, offset: 96)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2614, file: !1434, line: 1202, baseType: !3290, size: 64, offset: 17472)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1434, line: 48, flags: DIFlagFwdDecl)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2614, file: !1434, line: 1205, baseType: !432, size: 64, offset: 17536)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2614, file: !1434, line: 1206, baseType: !3294, size: 64, offset: 17600)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !590, line: 14, baseType: !3296)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !590, line: 12, size: 384, elements: !3297)
!3297 = !{!3298}
!3298 = !DIDerivedType(tag: DW_TAG_member, scope: !3296, file: !590, line: 13, baseType: !3299, size: 384)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3296, file: !590, line: 13, size: 384, elements: !3300)
!3300 = !{!3301, !3302, !3303, !3304}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3299, file: !590, line: 13, baseType: !120, size: 32)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3299, file: !590, line: 13, baseType: !120, size: 32, offset: 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3299, file: !590, line: 13, baseType: !120, size: 32, offset: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3299, file: !590, line: 13, baseType: !3305, size: 256, offset: 128)
!3305 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3306, line: 37, size: 256, elements: !3307)
!3306 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3307 = !{!3308, !3313, !3326, !3332, !3341, !3368, !3373}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3305, file: !3306, line: 42, baseType: !3309, size: 64)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3305, file: !3306, line: 39, size: 64, elements: !3310)
!3310 = !{!3311, !3312}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3309, file: !3306, line: 40, baseType: !2974, size: 32)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3309, file: !3306, line: 41, baseType: !373, size: 32, offset: 32)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3305, file: !3306, line: 50, baseType: !3314, size: 192)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3305, file: !3306, line: 45, size: 192, elements: !3315)
!3315 = !{!3316, !3318, !3319, !3325}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3314, file: !3306, line: 46, baseType: !3317, size: 32)
!3317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !298, line: 95, baseType: !120)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3314, file: !3306, line: 47, baseType: !120, size: 32, offset: 32)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3314, file: !3306, line: 48, baseType: !3320, size: 64, offset: 64)
!3320 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3306, line: 11, baseType: !3321)
!3321 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3306, line: 8, size: 64, elements: !3322)
!3322 = !{!3323, !3324}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3321, file: !3306, line: 9, baseType: !120, size: 32)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3321, file: !3306, line: 10, baseType: !171, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3314, file: !3306, line: 49, baseType: !120, size: 32, offset: 128)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3305, file: !3306, line: 57, baseType: !3327, size: 128)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3305, file: !3306, line: 53, size: 128, elements: !3328)
!3328 = !{!3329, !3330, !3331}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3327, file: !3306, line: 54, baseType: !2974, size: 32)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3327, file: !3306, line: 55, baseType: !373, size: 32, offset: 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3327, file: !3306, line: 56, baseType: !3320, size: 64, offset: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3305, file: !3306, line: 66, baseType: !3333, size: 256)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3305, file: !3306, line: 60, size: 256, elements: !3334)
!3334 = !{!3335, !3336, !3337, !3338, !3340}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3333, file: !3306, line: 61, baseType: !2974, size: 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3333, file: !3306, line: 62, baseType: !373, size: 32, offset: 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3333, file: !3306, line: 63, baseType: !120, size: 32, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3333, file: !3306, line: 64, baseType: !3339, size: 64, offset: 128)
!3339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !298, line: 94, baseType: !819)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3333, file: !3306, line: 65, baseType: !3339, size: 64, offset: 192)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3305, file: !3306, line: 105, baseType: !3342, size: 256)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3305, file: !3306, line: 69, size: 256, elements: !3343)
!3343 = !{!3344, !3345}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3342, file: !3306, line: 70, baseType: !171, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, scope: !3342, file: !3306, line: 79, baseType: !3346, size: 192, offset: 64)
!3346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3342, file: !3306, line: 79, size: 192, elements: !3347)
!3347 = !{!3348, !3349, !3350, !3357, !3362}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3346, file: !3306, line: 81, baseType: !120, size: 32)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3346, file: !3306, line: 86, baseType: !467, size: 16)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3346, file: !3306, line: 92, baseType: !3351, size: 192)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3346, file: !3306, line: 88, size: 192, elements: !3352)
!3352 = !{!3353, !3355, !3356}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3351, file: !3306, line: 89, baseType: !3354, size: 64)
!3354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 64, elements: !2767)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3351, file: !3306, line: 90, baseType: !171, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3351, file: !3306, line: 91, baseType: !171, size: 64, offset: 128)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3346, file: !3306, line: 97, baseType: !3358, size: 96)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3346, file: !3306, line: 94, size: 96, elements: !3359)
!3359 = !{!3360, !3361}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3358, file: !3306, line: 95, baseType: !3354, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3358, file: !3306, line: 96, baseType: !463, size: 32, offset: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3346, file: !3306, line: 103, baseType: !3363, size: 128)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3346, file: !3306, line: 99, size: 128, elements: !3364)
!3364 = !{!3365, !3366, !3367}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3363, file: !3306, line: 100, baseType: !432, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3363, file: !3306, line: 101, baseType: !463, size: 32, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3363, file: !3306, line: 102, baseType: !463, size: 32, offset: 96)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3305, file: !3306, line: 111, baseType: !3369, size: 128)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3305, file: !3306, line: 108, size: 128, elements: !3370)
!3370 = !{!3371, !3372}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3369, file: !3306, line: 109, baseType: !778, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3369, file: !3306, line: 110, baseType: !120, size: 32, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3305, file: !3306, line: 118, baseType: !3374, size: 128)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3305, file: !3306, line: 114, size: 128, elements: !3375)
!3375 = !{!3376, !3377, !3378}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3374, file: !3306, line: 115, baseType: !171, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3374, file: !3306, line: 116, baseType: !120, size: 32, offset: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3374, file: !3306, line: 117, baseType: !7, size: 32, offset: 96)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2614, file: !1434, line: 1208, baseType: !3158, size: 448, offset: 17664)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2614, file: !1434, line: 1215, baseType: !404, size: 64, offset: 18112)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2614, file: !1434, line: 1217, baseType: !404, size: 64, offset: 18176)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2614, file: !1434, line: 1219, baseType: !404, size: 64, offset: 18240)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2614, file: !1434, line: 1223, baseType: !3384, size: 64, offset: 18304)
!3384 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3385, line: 99, baseType: !3386)
!3385 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3385, line: 99, size: 64, elements: !3387)
!3387 = !{!3388}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3386, file: !3385, line: 99, baseType: !2844, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2614, file: !1434, line: 1225, baseType: !629, size: 32, offset: 18368)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2614, file: !1434, line: 1226, baseType: !120, size: 32, offset: 18400)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2614, file: !1434, line: 1227, baseType: !120, size: 32, offset: 18432)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2614, file: !1434, line: 1231, baseType: !3393, size: 64, offset: 18496)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1434, line: 1231, flags: DIFlagFwdDecl)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2614, file: !1434, line: 1233, baseType: !177, size: 128, offset: 18560)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2614, file: !1434, line: 1240, baseType: !3397, size: 64, offset: 18688)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1434, line: 62, flags: DIFlagFwdDecl)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2614, file: !1434, line: 1242, baseType: !3400, size: 64, offset: 18752)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1434, line: 1242, flags: DIFlagFwdDecl)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2614, file: !1434, line: 1244, baseType: !177, size: 128, offset: 18816)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2614, file: !1434, line: 1245, baseType: !3404, size: 64, offset: 18944)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1434, line: 51, flags: DIFlagFwdDecl)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2614, file: !1434, line: 1246, baseType: !283, size: 256, offset: 19008)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2614, file: !1434, line: 1247, baseType: !7, size: 32, offset: 19264)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2614, file: !1434, line: 1250, baseType: !3409, size: 64, offset: 19328)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1434, line: 57, flags: DIFlagFwdDecl)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2614, file: !1434, line: 1251, baseType: !283, size: 256, offset: 19392)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2614, file: !1434, line: 1252, baseType: !177, size: 128, offset: 19648)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2614, file: !1434, line: 1259, baseType: !1432, size: 64, offset: 19776)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2614, file: !1434, line: 1260, baseType: !467, size: 16, offset: 19840)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2614, file: !1434, line: 1261, baseType: !467, size: 16, offset: 19856)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2614, file: !1434, line: 1314, baseType: !3417, size: 64, offset: 19904)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3419, line: 62, size: 256, align: 256, elements: !3420)
!3419 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3420 = !{!3421, !3422, !3423, !3424, !3425, !3426, !3427}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3418, file: !3419, line: 75, baseType: !463, size: 32)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3418, file: !3419, line: 90, baseType: !463, size: 32, offset: 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3418, file: !3419, line: 112, baseType: !405, size: 64, offset: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3418, file: !3419, line: 132, baseType: !463, size: 32, offset: 128)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3418, file: !3419, line: 140, baseType: !463, size: 32, offset: 160)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3418, file: !3419, line: 149, baseType: !463, size: 32, offset: 192)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3418, file: !3419, line: 154, baseType: !3428, offset: 224)
!3428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, elements: !363)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2614, file: !1434, line: 1315, baseType: !462, size: 32, offset: 19968)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2614, file: !1434, line: 1316, baseType: !462, size: 32, offset: 20000)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2614, file: !1434, line: 1321, baseType: !432, size: 64, offset: 20032)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2614, file: !1434, line: 1325, baseType: !120, size: 32, offset: 20096)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2614, file: !1434, line: 1326, baseType: !120, size: 32, offset: 20128)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2614, file: !1434, line: 1327, baseType: !120, size: 32, offset: 20160)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2614, file: !1434, line: 1328, baseType: !120, size: 32, offset: 20192)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2614, file: !1434, line: 1329, baseType: !222, size: 128, align: 64, offset: 20224)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2614, file: !1434, line: 1332, baseType: !3438, size: 128, offset: 20352)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3439, line: 51, size: 128, elements: !3440)
!3439 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3440 = !{!3441, !3446, !3447}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3438, file: !3439, line: 60, baseType: !3442, size: 64)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3443, line: 7, size: 64, elements: !3444)
!3443 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3444 = !{!3445}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3442, file: !3443, line: 12, baseType: !2841, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3438, file: !3439, line: 63, baseType: !499, size: 8, offset: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3438, file: !3439, line: 70, baseType: !499, size: 8, offset: 72)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2614, file: !1434, line: 1335, baseType: !3449, size: 64, offset: 20480)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1434, line: 59, flags: DIFlagFwdDecl)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2614, file: !1434, line: 1337, baseType: !3452, size: 128, offset: 20544)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3439, line: 39, size: 128, elements: !3453)
!3453 = !{!3454, !3455, !3456}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3452, file: !3439, line: 40, baseType: !1053, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3452, file: !3439, line: 42, baseType: !463, size: 32, offset: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3452, file: !3439, line: 43, baseType: !463, size: 32, offset: 96)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2614, file: !1434, line: 1340, baseType: !3458, size: 64, offset: 20672)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1434, line: 69, flags: DIFlagFwdDecl)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2614, file: !1434, line: 1351, baseType: !120, size: 32, offset: 20736)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2614, file: !1434, line: 1352, baseType: !120, size: 32, offset: 20768)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2614, file: !1434, line: 1354, baseType: !432, size: 64, offset: 20800)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2614, file: !1434, line: 1364, baseType: !404, size: 64, offset: 20864)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2614, file: !1434, line: 1365, baseType: !404, size: 64, offset: 20928)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2614, file: !1434, line: 1412, baseType: !432, size: 64, offset: 20992)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2614, file: !1434, line: 1453, baseType: !3467, size: 64, offset: 21056)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1434, line: 1453, flags: DIFlagFwdDecl)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2614, file: !1434, line: 1457, baseType: !3470, size: 64, offset: 21120)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !81, line: 61, size: 576, elements: !3472)
!3472 = !{!3473, !3474, !3493, !3496, !3497, !3530, !3540}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3471, file: !81, line: 62, baseType: !80, size: 32)
!3474 = !DIDerivedType(tag: DW_TAG_member, scope: !3471, file: !81, line: 64, baseType: !3475, size: 192, offset: 64)
!3475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3471, file: !81, line: 64, size: 192, elements: !3476)
!3476 = !{!3477, !3488}
!3477 = !DIDerivedType(tag: DW_TAG_member, scope: !3475, file: !81, line: 65, baseType: !3478, size: 192)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3475, file: !81, line: 65, size: 192, elements: !3479)
!3479 = !{!3480, !3487}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3478, file: !81, line: 66, baseType: !3481, size: 128)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3482, line: 50, size: 128, elements: !3483)
!3482 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3483 = !{!3484, !3485, !3486}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3481, file: !3482, line: 52, baseType: !432, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3481, file: !3482, line: 54, baseType: !7, size: 32, offset: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3481, file: !3482, line: 55, baseType: !7, size: 32, offset: 96)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3478, file: !81, line: 67, baseType: !432, size: 64, offset: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, scope: !3475, file: !81, line: 70, baseType: !3489, size: 192)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3475, file: !81, line: 70, size: 192, elements: !3490)
!3490 = !{!3491, !3492}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3489, file: !81, line: 71, baseType: !222, size: 128, align: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3489, file: !81, line: 72, baseType: !432, size: 64, offset: 128)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3471, file: !81, line: 76, baseType: !3494, size: 64, offset: 256)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !81, line: 76, flags: DIFlagFwdDecl)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3471, file: !81, line: 77, baseType: !432, size: 64, offset: 320)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3471, file: !81, line: 79, baseType: !3498, size: 64, offset: 384)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3482, line: 25, size: 256, elements: !3500)
!3500 = !{!3501, !3507, !3511}
!3501 = !DIDerivedType(tag: DW_TAG_member, scope: !3499, file: !3482, line: 26, baseType: !3502, size: 128)
!3502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3499, file: !3482, line: 26, size: 128, elements: !3503)
!3503 = !{!3504, !3506}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3502, file: !3482, line: 27, baseType: !3505, size: 128)
!3505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 128, elements: !3032)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3502, file: !3482, line: 28, baseType: !3505, size: 128)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3499, file: !3482, line: 31, baseType: !3508, size: 64, offset: 128)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3510)
!3510 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3482, line: 23, flags: DIFlagFwdDecl)
!3511 = !DIDerivedType(tag: DW_TAG_member, scope: !3499, file: !3482, line: 33, baseType: !3512, size: 64, offset: 192)
!3512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3499, file: !3482, line: 33, size: 64, elements: !3513)
!3513 = !{!3514, !3520, !3525}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3512, file: !3482, line: 38, baseType: !3515, size: 64)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3512, file: !3482, line: 34, size: 64, elements: !3516)
!3516 = !{!3517, !3518, !3519}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3515, file: !3482, line: 35, baseType: !421, size: 32)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3515, file: !3482, line: 36, baseType: !256, size: 8, offset: 32)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3515, file: !3482, line: 37, baseType: !256, size: 8, offset: 40)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3512, file: !3482, line: 42, baseType: !3521, size: 16)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3512, file: !3482, line: 39, size: 16, elements: !3522)
!3522 = !{!3523, !3524}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3521, file: !3482, line: 40, baseType: !256, size: 8)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3521, file: !3482, line: 41, baseType: !256, size: 8, offset: 8)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3512, file: !3482, line: 46, baseType: !3526, size: 16)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3512, file: !3482, line: 43, size: 16, elements: !3527)
!3527 = !{!3528, !3529}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3526, file: !3482, line: 44, baseType: !256, size: 8)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3526, file: !3482, line: 45, baseType: !256, size: 8, offset: 8)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3471, file: !81, line: 81, baseType: !3531, size: 64, offset: 448)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !81, line: 85, size: 384, elements: !3533)
!3533 = !{!3534, !3535, !3536, !3537, !3538, !3539}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3532, file: !81, line: 86, baseType: !3494, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3532, file: !81, line: 87, baseType: !432, size: 64, offset: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3532, file: !81, line: 88, baseType: !432, size: 64, offset: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3532, file: !81, line: 89, baseType: !432, size: 64, offset: 192)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3532, file: !81, line: 90, baseType: !499, size: 8, offset: 256)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3532, file: !81, line: 92, baseType: !3531, size: 64, offset: 320)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3471, file: !81, line: 82, baseType: !7, size: 32, offset: 512)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2614, file: !1434, line: 1463, baseType: !3542, offset: 21184)
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1434, line: 739, elements: !1207)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2614, file: !1434, line: 1470, baseType: !222, size: 128, align: 64, offset: 21184)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2614, file: !1434, line: 1471, baseType: !195, size: 32, offset: 21312)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2614, file: !1434, line: 1472, baseType: !120, size: 32, offset: 21344)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2614, file: !1434, line: 1474, baseType: !2613, size: 64, offset: 21376)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2614, file: !1434, line: 1475, baseType: !2137, size: 320, offset: 21440)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2614, file: !1434, line: 1478, baseType: !3549, size: 64, offset: 21760)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3551, line: 49, size: 512, elements: !3552)
!3551 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3552 = !{!3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3562}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3550, file: !3551, line: 50, baseType: !3549, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3550, file: !3551, line: 51, baseType: !171, size: 64, offset: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3550, file: !3551, line: 52, baseType: !432, size: 64, offset: 128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3550, file: !3551, line: 53, baseType: !432, size: 64, offset: 192)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3550, file: !3551, line: 54, baseType: !1607, size: 64, offset: 256)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3550, file: !3551, line: 56, baseType: !7, size: 32, offset: 320)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3550, file: !3551, line: 58, baseType: !7, size: 32, offset: 352)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3550, file: !3551, line: 59, baseType: !3561, size: 64, offset: 384)
!3561 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !178, line: 159, baseType: !404)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3550, file: !3551, line: 60, baseType: !1302, size: 64, offset: 448)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2614, file: !1434, line: 1482, baseType: !195, size: 32, offset: 21824)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2614, file: !1434, line: 1489, baseType: !171, size: 64, offset: 21888)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2614, file: !1434, line: 1504, baseType: !171, size: 64, offset: 21952)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2614, file: !1434, line: 1505, baseType: !405, size: 64, offset: 22016)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2614, file: !1434, line: 1506, baseType: !404, size: 64, offset: 22080)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2614, file: !1434, line: 1507, baseType: !405, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2614, file: !1434, line: 1508, baseType: !405, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2614, file: !1434, line: 1509, baseType: !405, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2614, file: !1434, line: 1510, baseType: !222, size: 128, align: 64, offset: 22208)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2614, file: !1434, line: 1511, baseType: !120, size: 32, offset: 22336)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2614, file: !1434, line: 1515, baseType: !3574, size: 64, offset: 22400)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !217, line: 56, size: 64, elements: !3575)
!3575 = !{!3576}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3574, file: !217, line: 57, baseType: !220, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2614, file: !1434, line: 1518, baseType: !3574, size: 64, offset: 22464)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2614, file: !1434, line: 1528, baseType: !222, size: 128, align: 64, offset: 22528)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2614, file: !1434, line: 1552, baseType: !3580, size: 35328, offset: 23040)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3581, line: 430, size: 35328, elements: !3582)
!3581 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3582 = !{!3583, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3612, !3613, !3614, !3615, !3616, !3617, !3620, !3621, !3622, !3623}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3580, file: !3581, line: 432, baseType: !3584, size: 192)
!3584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3585, size: 192, elements: !323)
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3586, line: 16, size: 64, elements: !3587)
!3586 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3587 = !{!3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3585, file: !3586, line: 17, baseType: !266, size: 16)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3585, file: !3586, line: 18, baseType: !266, size: 16, offset: 16)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3585, file: !3586, line: 19, baseType: !266, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3585, file: !3586, line: 19, baseType: !266, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3585, file: !3586, line: 19, baseType: !266, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3585, file: !3586, line: 19, baseType: !266, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3585, file: !3586, line: 19, baseType: !266, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3585, file: !3586, line: 20, baseType: !266, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3585, file: !3586, line: 20, baseType: !266, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3585, file: !3586, line: 20, baseType: !266, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3585, file: !3586, line: 20, baseType: !266, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3585, file: !3586, line: 20, baseType: !266, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3585, file: !3586, line: 20, baseType: !266, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3580, file: !3581, line: 436, baseType: !432, size: 64, offset: 192)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3580, file: !3581, line: 440, baseType: !268, size: 16, offset: 256)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3580, file: !3581, line: 441, baseType: !268, size: 16, offset: 272)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3580, file: !3581, line: 442, baseType: !268, size: 16, offset: 288)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3580, file: !3581, line: 443, baseType: !268, size: 16, offset: 304)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3580, file: !3581, line: 447, baseType: !432, size: 64, offset: 320)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3580, file: !3581, line: 448, baseType: !432, size: 64, offset: 384)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3580, file: !3581, line: 459, baseType: !3609, size: 256, offset: 448)
!3609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3610, size: 256, elements: !344)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3581, line: 428, flags: DIFlagFwdDecl)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3580, file: !3581, line: 461, baseType: !432, size: 64, offset: 704)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3580, file: !3581, line: 463, baseType: !432, size: 64, offset: 768)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3580, file: !3581, line: 465, baseType: !432, size: 64, offset: 832)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3580, file: !3581, line: 466, baseType: !432, size: 64, offset: 896)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3580, file: !3581, line: 467, baseType: !432, size: 64, offset: 960)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3580, file: !3581, line: 473, baseType: !3618, size: 64, offset: 1024)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3581, line: 10, flags: DIFlagFwdDecl)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3580, file: !3581, line: 480, baseType: !432, size: 64, offset: 1088)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3580, file: !3581, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3580, file: !3581, line: 491, baseType: !462, size: 32, offset: 1184)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3580, file: !3581, line: 501, baseType: !3624, size: 33792, offset: 1536)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3625, line: 448, size: 33792, elements: !3626)
!3625 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3626 = !{!3627, !3628, !3629, !3793, !3794, !3800, !3801}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3624, file: !3625, line: 461, baseType: !7, size: 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3624, file: !3625, line: 468, baseType: !432, size: 64, offset: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3624, file: !3625, line: 476, baseType: !3630, size: 64, offset: 128)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3625, line: 356, size: 33280, align: 512, elements: !3632)
!3632 = !{!3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3631, file: !3625, line: 358, baseType: !7, size: 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3631, file: !3625, line: 361, baseType: !7, size: 32, offset: 32)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3631, file: !3625, line: 364, baseType: !404, size: 64, offset: 64)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3631, file: !3625, line: 367, baseType: !404, size: 64, offset: 128)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3631, file: !3625, line: 370, baseType: !404, size: 64, offset: 192)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3631, file: !3625, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3631, file: !3625, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3631, file: !3625, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3631, file: !3625, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3631, file: !3625, line: 397, baseType: !3643, size: 32768, offset: 512)
!3643 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3625, line: 348, size: 32768, elements: !3644)
!3644 = !{!3645, !3660, !3699, !3776, !3789}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3643, file: !3625, line: 349, baseType: !3646, size: 896)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3625, line: 12, size: 896, elements: !3647)
!3647 = !{!3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3659}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3646, file: !3625, line: 13, baseType: !462, size: 32)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3646, file: !3625, line: 14, baseType: !462, size: 32, offset: 32)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3646, file: !3625, line: 15, baseType: !462, size: 32, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3646, file: !3625, line: 16, baseType: !462, size: 32, offset: 96)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3646, file: !3625, line: 17, baseType: !462, size: 32, offset: 128)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3646, file: !3625, line: 18, baseType: !462, size: 32, offset: 160)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3646, file: !3625, line: 19, baseType: !462, size: 32, offset: 192)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3646, file: !3625, line: 22, baseType: !3656, size: 640, offset: 224)
!3656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 640, elements: !3657)
!3657 = !{!3658}
!3658 = !DISubrange(count: 20)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3646, file: !3625, line: 25, baseType: !462, size: 32, offset: 864)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3643, file: !3625, line: 350, baseType: !3661, size: 4096, align: 128)
!3661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3625, line: 34, size: 4096, align: 128, elements: !3662)
!3662 = !{!3663, !3664, !3665, !3666, !3667, !3682, !3683, !3684, !3688, !3690, !3694}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3661, file: !3625, line: 35, baseType: !266, size: 16)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3661, file: !3625, line: 36, baseType: !266, size: 16, offset: 16)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3661, file: !3625, line: 37, baseType: !266, size: 16, offset: 32)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3661, file: !3625, line: 38, baseType: !266, size: 16, offset: 48)
!3667 = !DIDerivedType(tag: DW_TAG_member, scope: !3661, file: !3625, line: 39, baseType: !3668, size: 128, offset: 64)
!3668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3661, file: !3625, line: 39, size: 128, elements: !3669)
!3669 = !{!3670, !3675}
!3670 = !DIDerivedType(tag: DW_TAG_member, scope: !3668, file: !3625, line: 40, baseType: !3671, size: 128)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3668, file: !3625, line: 40, size: 128, elements: !3672)
!3672 = !{!3673, !3674}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3671, file: !3625, line: 41, baseType: !404, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3671, file: !3625, line: 42, baseType: !404, size: 64, offset: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, scope: !3668, file: !3625, line: 44, baseType: !3676, size: 128)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3668, file: !3625, line: 44, size: 128, elements: !3677)
!3677 = !{!3678, !3679, !3680, !3681}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3676, file: !3625, line: 45, baseType: !462, size: 32)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3676, file: !3625, line: 46, baseType: !462, size: 32, offset: 32)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3676, file: !3625, line: 47, baseType: !462, size: 32, offset: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3676, file: !3625, line: 48, baseType: !462, size: 32, offset: 96)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3661, file: !3625, line: 51, baseType: !462, size: 32, offset: 192)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3661, file: !3625, line: 52, baseType: !462, size: 32, offset: 224)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3661, file: !3625, line: 55, baseType: !3685, size: 1024, offset: 256)
!3685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 1024, elements: !3686)
!3686 = !{!3687}
!3687 = !DISubrange(count: 32)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3661, file: !3625, line: 58, baseType: !3689, size: 2048, offset: 1280)
!3689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 2048, elements: !965)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3661, file: !3625, line: 60, baseType: !3691, size: 384, offset: 3328)
!3691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 384, elements: !3692)
!3692 = !{!3693}
!3693 = !DISubrange(count: 12)
!3694 = !DIDerivedType(tag: DW_TAG_member, scope: !3661, file: !3625, line: 62, baseType: !3695, size: 384, offset: 3712)
!3695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3661, file: !3625, line: 62, size: 384, elements: !3696)
!3696 = !{!3697, !3698}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3695, file: !3625, line: 63, baseType: !3691, size: 384)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3695, file: !3625, line: 64, baseType: !3691, size: 384)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3643, file: !3625, line: 351, baseType: !3700, size: 1088)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3625, line: 79, size: 1088, elements: !3701)
!3701 = !{!3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3775}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3700, file: !3625, line: 80, baseType: !462, size: 32)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3700, file: !3625, line: 81, baseType: !462, size: 32, offset: 32)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3700, file: !3625, line: 82, baseType: !462, size: 32, offset: 64)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3700, file: !3625, line: 83, baseType: !462, size: 32, offset: 96)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3700, file: !3625, line: 84, baseType: !462, size: 32, offset: 128)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3700, file: !3625, line: 85, baseType: !462, size: 32, offset: 160)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3700, file: !3625, line: 86, baseType: !462, size: 32, offset: 192)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3700, file: !3625, line: 88, baseType: !3656, size: 640, offset: 224)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3700, file: !3625, line: 89, baseType: !256, size: 8, offset: 864)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3700, file: !3625, line: 90, baseType: !256, size: 8, offset: 872)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3700, file: !3625, line: 91, baseType: !256, size: 8, offset: 880)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3700, file: !3625, line: 92, baseType: !256, size: 8, offset: 888)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3700, file: !3625, line: 93, baseType: !256, size: 8, offset: 896)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3700, file: !3625, line: 94, baseType: !256, size: 8, offset: 904)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3700, file: !3625, line: 95, baseType: !3717, size: 64, offset: 960)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3719, line: 11, size: 128, elements: !3720)
!3719 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3720 = !{!3721, !3722}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3718, file: !3719, line: 12, baseType: !778, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3718, file: !3719, line: 13, baseType: !3723, size: 64, offset: 64)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3725, line: 103, size: 1344, elements: !3726)
!3725 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3726 = !{!3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3755, !3756, !3757}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3724, file: !3725, line: 109, baseType: !432, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3724, file: !3725, line: 110, baseType: !432, size: 64, offset: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3724, file: !3725, line: 111, baseType: !432, size: 64, offset: 128)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3724, file: !3725, line: 112, baseType: !432, size: 64, offset: 192)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3724, file: !3725, line: 113, baseType: !432, size: 64, offset: 256)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3724, file: !3725, line: 114, baseType: !432, size: 64, offset: 320)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3724, file: !3725, line: 117, baseType: !432, size: 64, offset: 384)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3724, file: !3725, line: 118, baseType: !432, size: 64, offset: 448)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3724, file: !3725, line: 119, baseType: !432, size: 64, offset: 512)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3724, file: !3725, line: 120, baseType: !432, size: 64, offset: 576)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3724, file: !3725, line: 121, baseType: !432, size: 64, offset: 640)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3724, file: !3725, line: 122, baseType: !432, size: 64, offset: 704)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3724, file: !3725, line: 123, baseType: !432, size: 64, offset: 768)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3724, file: !3725, line: 124, baseType: !432, size: 64, offset: 832)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3724, file: !3725, line: 125, baseType: !432, size: 64, offset: 896)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3724, file: !3725, line: 139, baseType: !432, size: 64, offset: 960)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3724, file: !3725, line: 142, baseType: !432, size: 64, offset: 1024)
!3744 = !DIDerivedType(tag: DW_TAG_member, scope: !3724, file: !3725, line: 144, baseType: !3745, size: 64, offset: 1088)
!3745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3724, file: !3725, line: 144, size: 64, elements: !3746)
!3746 = !{!3747, !3748, !3749}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3745, file: !3725, line: 146, baseType: !266, size: 16)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3745, file: !3725, line: 148, baseType: !404, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3745, file: !3725, line: 150, baseType: !3750, size: 64)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3725, line: 59, size: 64, elements: !3751)
!3751 = !{!3752, !3753, !3754}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3750, file: !3725, line: 61, baseType: !404, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3750, file: !3725, line: 63, baseType: !404, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3750, file: !3725, line: 65, baseType: !404, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3724, file: !3725, line: 153, baseType: !432, size: 64, offset: 1152)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3724, file: !3725, line: 154, baseType: !432, size: 64, offset: 1216)
!3757 = !DIDerivedType(tag: DW_TAG_member, scope: !3724, file: !3725, line: 156, baseType: !3758, size: 64, offset: 1280)
!3758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3724, file: !3725, line: 156, size: 64, elements: !3759)
!3759 = !{!3760, !3761, !3762}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3758, file: !3725, line: 158, baseType: !266, size: 16)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3758, file: !3725, line: 160, baseType: !404, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3758, file: !3725, line: 162, baseType: !3763, size: 64)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3725, line: 69, size: 64, elements: !3764)
!3764 = !{!3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3763, file: !3725, line: 71, baseType: !404, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3763, file: !3725, line: 73, baseType: !404, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3763, file: !3725, line: 75, baseType: !404, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3763, file: !3725, line: 77, baseType: !404, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3763, file: !3725, line: 80, baseType: !404, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3763, file: !3725, line: 83, baseType: !404, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3763, file: !3725, line: 86, baseType: !404, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3763, file: !3725, line: 88, baseType: !404, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3763, file: !3725, line: 93, baseType: !404, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3763, file: !3725, line: 100, baseType: !404, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3700, file: !3625, line: 96, baseType: !462, size: 32, offset: 1024)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3643, file: !3625, line: 352, baseType: !3777, size: 4608, align: 512)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3625, line: 333, size: 4608, align: 512, elements: !3778)
!3778 = !{!3779, !3780, !3787}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3777, file: !3625, line: 334, baseType: !3661, size: 4096, align: 128)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3777, file: !3625, line: 335, baseType: !3781, size: 512, offset: 4096)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3625, line: 312, size: 512, elements: !3782)
!3782 = !{!3783, !3784, !3785}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3781, file: !3625, line: 313, baseType: !404, size: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3781, file: !3625, line: 314, baseType: !404, size: 64, offset: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3781, file: !3625, line: 315, baseType: !3786, size: 384, offset: 128)
!3786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 384, elements: !486)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3777, file: !3625, line: 336, baseType: !3788, offset: 4608)
!3788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, elements: !363)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3643, file: !3625, line: 353, baseType: !3790, size: 32768)
!3790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 32768, elements: !3791)
!3791 = !{!3792}
!3792 = !DISubrange(count: 4096)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3624, file: !3625, line: 484, baseType: !3630, size: 64, offset: 192)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3624, file: !3625, line: 491, baseType: !3795, size: 128, offset: 256)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3625, line: 404, size: 128, elements: !3796)
!3796 = !{!3797, !3798, !3799}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3795, file: !3625, line: 424, baseType: !404, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3795, file: !3625, line: 432, baseType: !7, size: 32, offset: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3795, file: !3625, line: 440, baseType: !7, size: 32, offset: 96)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3624, file: !3625, line: 498, baseType: !3795, size: 128, offset: 384)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3624, file: !3625, line: 508, baseType: !3631, size: 33280, align: 512, offset: 512)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2596, file: !2597, line: 16, baseType: !348, size: 192, offset: 512)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2596, file: !2597, line: 17, baseType: !200, size: 32, offset: 704)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !877, file: !64, line: 1240, baseType: !171, size: 64, offset: 6912)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !877, file: !64, line: 1243, baseType: !462, size: 32, offset: 6976)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !877, file: !64, line: 1245, baseType: !453, size: 64, offset: 7040)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !877, file: !64, line: 1246, baseType: !453, size: 64, offset: 7104)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !877, file: !64, line: 1248, baseType: !463, size: 32, offset: 7168)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !877, file: !64, line: 1249, baseType: !3810, size: 64, offset: 7232)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !64, line: 634, flags: DIFlagFwdDecl)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !877, file: !64, line: 1252, baseType: !3813, size: 256, offset: 7296)
!3813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 256, elements: !3686)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !877, file: !64, line: 1253, baseType: !3815, size: 128, offset: 7552)
!3815 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3816, line: 21, baseType: !3817)
!3816 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3816, line: 19, size: 128, elements: !3818)
!3818 = !{!3819}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3817, file: !3816, line: 20, baseType: !3820, size: 128)
!3820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 128, elements: !3032)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !877, file: !64, line: 1255, baseType: !7, size: 32, offset: 7680)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !877, file: !64, line: 1261, baseType: !283, size: 256, offset: 7744)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !877, file: !64, line: 1267, baseType: !502, size: 64, offset: 8000)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !877, file: !64, line: 1269, baseType: !3825, size: 64, offset: 8064)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3827)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !625, line: 128, size: 1024, align: 512, elements: !3828)
!3828 = !{!3829, !3833, !3834, !3841, !3847, !3851, !3855, !3859, !3860, !3864, !3868, !3873, !3877}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3827, file: !625, line: 129, baseType: !3830, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!120, !623, !7}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3827, file: !625, line: 130, baseType: !3830, size: 64, offset: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3827, file: !625, line: 131, baseType: !3835, size: 64, offset: 128)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!120, !3838, !3840}
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !624)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3827, file: !625, line: 132, baseType: !3842, size: 64, offset: 192)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!120, !3838, !7, !502, !3845}
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !648)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3827, file: !625, line: 134, baseType: !3848, size: 64, offset: 256)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!120, !3838}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3827, file: !625, line: 135, baseType: !3852, size: 64, offset: 320)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!120, !623}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3827, file: !625, line: 136, baseType: !3856, size: 64, offset: 384)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{null, !623}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3827, file: !625, line: 137, baseType: !3856, size: 64, offset: 448)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3827, file: !625, line: 138, baseType: !3861, size: 64, offset: 512)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{null, !623, !663}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3827, file: !625, line: 139, baseType: !3865, size: 64, offset: 576)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!512, !623, !512, !120}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3827, file: !625, line: 140, baseType: !3869, size: 64, offset: 640)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!618, !3872}
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3827, file: !625, line: 141, baseType: !3874, size: 64, offset: 704)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!120, !786, !499}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3827, file: !625, line: 142, baseType: !3878, size: 64, offset: 768)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!623, !623, !3881}
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !664)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !877, file: !64, line: 1271, baseType: !3884, size: 448, offset: 8128)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2378, line: 63, size: 448, elements: !3885)
!3885 = !{!3886, !3891, !3892, !3893, !3894, !3895, !3896}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3884, file: !2378, line: 64, baseType: !3887, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!432, !3890, !2376}
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3884, file: !2378, line: 66, baseType: !3887, size: 64, offset: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3884, file: !2378, line: 69, baseType: !778, size: 64, offset: 128)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3884, file: !2378, line: 70, baseType: !120, size: 32, offset: 192)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3884, file: !2378, line: 71, baseType: !7, size: 32, offset: 224)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3884, file: !2378, line: 74, baseType: !177, size: 128, offset: 256)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3884, file: !2378, line: 85, baseType: !3897, size: 64, offset: 384)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !877, file: !64, line: 1274, baseType: !273, size: 64, offset: 8576)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !877, file: !64, line: 1280, baseType: !273, size: 64, offset: 8640)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !877, file: !64, line: 1283, baseType: !120, size: 32, offset: 8704)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !877, file: !64, line: 1286, baseType: !1697, size: 32, offset: 8736)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !877, file: !64, line: 1289, baseType: !2199, size: 64, offset: 8768)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !877, file: !64, line: 1290, baseType: !335, size: 64, offset: 8832)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !877, file: !64, line: 1297, baseType: !585, size: 64, offset: 8896)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !877, file: !64, line: 1304, baseType: !3906, size: 64, offset: 8960)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3907, line: 49, size: 64, elements: !3908)
!3907 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3908 = !{!3909}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3906, file: !3907, line: 50, baseType: !3910, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3907, line: 41, size: 512, align: 512, elements: !3912)
!3912 = !{!3913, !3914, !3919}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3911, file: !3907, line: 43, baseType: !232, size: 32)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3911, file: !3907, line: 45, baseType: !3915, size: 192, offset: 64)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3907, line: 29, size: 192, elements: !3916)
!3916 = !{!3917, !3918}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3915, file: !3907, line: 30, baseType: !177, size: 128)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3915, file: !3907, line: 32, baseType: !778, size: 64, offset: 128)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3911, file: !3907, line: 46, baseType: !778, size: 64, offset: 256)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !877, file: !64, line: 1305, baseType: !3906, size: 64, offset: 9024)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !877, file: !64, line: 1306, baseType: !222, size: 128, align: 64, offset: 9088)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !877, file: !64, line: 1307, baseType: !1341, size: 256, offset: 9216)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !877, file: !64, line: 1309, baseType: !283, size: 256, offset: 9472)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !877, file: !64, line: 1314, baseType: !120, size: 32, offset: 9728)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !877, file: !64, line: 1317, baseType: !232, size: 32, align: 512, offset: 10240)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !877, file: !64, line: 1318, baseType: !177, size: 128, offset: 10304)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !877, file: !64, line: 1320, baseType: !232, size: 32, offset: 10432)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !877, file: !64, line: 1321, baseType: !177, size: 128, offset: 10496)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !664, file: !64, line: 656, baseType: !1026, size: 64, offset: 512)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !664, file: !64, line: 659, baseType: !171, size: 64, offset: 576)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !664, file: !64, line: 663, baseType: !432, size: 64, offset: 640)
!3932 = !DIDerivedType(tag: DW_TAG_member, scope: !664, file: !64, line: 671, baseType: !3933, size: 32, offset: 704)
!3933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !664, file: !64, line: 671, size: 32, elements: !3934)
!3934 = !{!3935, !3937}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3933, file: !64, line: 672, baseType: !3936, size: 32)
!3936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3933, file: !64, line: 673, baseType: !7, size: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !664, file: !64, line: 675, baseType: !738, size: 32, offset: 736)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !664, file: !64, line: 676, baseType: !296, size: 64, offset: 768)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !664, file: !64, line: 677, baseType: !774, size: 128, offset: 832)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !664, file: !64, line: 678, baseType: !774, size: 128, offset: 960)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !664, file: !64, line: 679, baseType: !774, size: 128, offset: 1088)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !664, file: !64, line: 680, baseType: !232, size: 32, offset: 1216)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !664, file: !64, line: 681, baseType: !268, size: 16, offset: 1248)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !664, file: !64, line: 682, baseType: !256, size: 8, offset: 1264)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !664, file: !64, line: 683, baseType: !256, size: 8, offset: 1272)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !664, file: !64, line: 684, baseType: !2509, size: 64, offset: 1280)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !664, file: !64, line: 691, baseType: !432, size: 64, offset: 1344)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !664, file: !64, line: 692, baseType: !437, size: 320, offset: 1408)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !664, file: !64, line: 694, baseType: !432, size: 64, offset: 1728)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !664, file: !64, line: 695, baseType: !432, size: 64, offset: 1792)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !664, file: !64, line: 697, baseType: !339, size: 128, offset: 1856)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !664, file: !64, line: 698, baseType: !177, size: 128, offset: 1984)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !664, file: !64, line: 707, baseType: !177, size: 128, offset: 2112)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !664, file: !64, line: 708, baseType: !177, size: 128, offset: 2240)
!3956 = !DIDerivedType(tag: DW_TAG_member, scope: !664, file: !64, line: 709, baseType: !3957, size: 128, offset: 2368)
!3957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !664, file: !64, line: 709, size: 128, elements: !3958)
!3958 = !{!3959, !3960}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3957, file: !64, line: 710, baseType: !335, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3957, file: !64, line: 711, baseType: !222, size: 128, align: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !664, file: !64, line: 713, baseType: !275, size: 64, offset: 2496)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !664, file: !64, line: 714, baseType: !275, size: 64, offset: 2560)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !664, file: !64, line: 715, baseType: !200, size: 32, offset: 2624)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !664, file: !64, line: 716, baseType: !200, size: 32, offset: 2656)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !664, file: !64, line: 717, baseType: !200, size: 32, offset: 2688)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !664, file: !64, line: 719, baseType: !200, size: 32, offset: 2720)
!3967 = !DIDerivedType(tag: DW_TAG_member, scope: !664, file: !64, line: 721, baseType: !3968, size: 64, offset: 2752)
!3968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !664, file: !64, line: 721, size: 64, elements: !3969)
!3969 = !{!3970, !4094}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3968, file: !64, line: 722, baseType: !3971, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3973)
!3973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !64, line: 1914, size: 2112, elements: !3974)
!3974 = !{!3975, !3976, !3980, !3984, !3988, !3989, !3990, !3996, !4009, !4013, !4017, !4018, !4022, !4023, !4027, !4032, !4033, !4037, !4041, !4047, !4048, !4052, !4053, !4057, !4061, !4062, !4067, !4071, !4075, !4079, !4083, !4084, !4090}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3973, file: !64, line: 1915, baseType: !909, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3973, file: !64, line: 1916, baseType: !3977, size: 64, offset: 64)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!296, !209, !296, !120}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3973, file: !64, line: 1917, baseType: !3981, size: 64, offset: 128)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{!817, !209, !512, !820, !1820}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3973, file: !64, line: 1918, baseType: !3985, size: 64, offset: 192)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!817, !209, !502, !820, !1820}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3973, file: !64, line: 1919, baseType: !1631, size: 64, offset: 256)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3973, file: !64, line: 1920, baseType: !1631, size: 64, offset: 320)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3973, file: !64, line: 1921, baseType: !3991, size: 64, offset: 384)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{!120, !1634, !3994, !7}
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !64, line: 53, flags: DIFlagFwdDecl)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3973, file: !64, line: 1923, baseType: !3997, size: 64, offset: 448)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!120, !209, !4000}
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !64, line: 1858, size: 128, elements: !4002)
!4002 = !{!4003, !4008}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4001, file: !64, line: 1859, baseType: !4004, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !64, line: 1855, baseType: !4005)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!499, !4000, !502, !120, !296, !404, !7}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4001, file: !64, line: 1860, baseType: !296, size: 64, offset: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3973, file: !64, line: 1924, baseType: !4010, size: 64, offset: 512)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!1867, !209, !1869}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3973, file: !64, line: 1925, baseType: !4014, size: 64, offset: 576)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!778, !209, !7, !432}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3973, file: !64, line: 1926, baseType: !4014, size: 64, offset: 640)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3973, file: !64, line: 1927, baseType: !4019, size: 64, offset: 704)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!120, !209, !1173}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3973, file: !64, line: 1928, baseType: !432, size: 64, offset: 768)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3973, file: !64, line: 1929, baseType: !4024, size: 64, offset: 832)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!120, !663, !209}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3973, file: !64, line: 1930, baseType: !4028, size: 64, offset: 896)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!120, !209, !4031}
!4031 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !64, line: 1061, baseType: !171)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3973, file: !64, line: 1931, baseType: !4024, size: 64, offset: 960)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3973, file: !64, line: 1932, baseType: !4034, size: 64, offset: 1024)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!120, !209, !296, !296, !120}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3973, file: !64, line: 1933, baseType: !4038, size: 64, offset: 1088)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!120, !120, !209, !120}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3973, file: !64, line: 1934, baseType: !4042, size: 64, offset: 1152)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!120, !209, !120, !4045}
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !64, line: 1063, flags: DIFlagFwdDecl)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3973, file: !64, line: 1935, baseType: !1211, size: 64, offset: 1216)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3973, file: !64, line: 1936, baseType: !4049, size: 64, offset: 1280)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!120, !120}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3973, file: !64, line: 1937, baseType: !4042, size: 64, offset: 1344)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3973, file: !64, line: 1938, baseType: !4054, size: 64, offset: 1408)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!817, !3449, !209, !1820, !820, !7}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3973, file: !64, line: 1939, baseType: !4058, size: 64, offset: 1472)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!817, !209, !1820, !3449, !820, !7}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3973, file: !64, line: 1940, baseType: !1687, size: 64, offset: 1536)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3973, file: !64, line: 1941, baseType: !4063, size: 64, offset: 1600)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!120, !209, !120, !4066, !1608}
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3973, file: !64, line: 1942, baseType: !4068, size: 64, offset: 1664)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!778, !209, !120, !296, !296}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3973, file: !64, line: 1944, baseType: !4072, size: 64, offset: 1728)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{null, !1799, !209}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3973, file: !64, line: 1948, baseType: !4076, size: 64, offset: 1792)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!817, !209, !296, !209, !296, !820, !7}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3973, file: !64, line: 1950, baseType: !4080, size: 64, offset: 1856)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!296, !209, !296, !209, !296, !296, !7}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3973, file: !64, line: 1953, baseType: !4034, size: 64, offset: 1920)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3973, file: !64, line: 1954, baseType: !4085, size: 64, offset: 1984)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!120, !4088, !7}
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !64, line: 1911, flags: DIFlagFwdDecl)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3973, file: !64, line: 1955, baseType: !4091, size: 64, offset: 2048)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!120, !4088, !3994, !7}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3968, file: !64, line: 723, baseType: !2267, size: 64)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !664, file: !64, line: 725, baseType: !4096, size: 64, offset: 2816)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !64, line: 725, flags: DIFlagFwdDecl)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !664, file: !64, line: 726, baseType: !1027, size: 1536, align: 64, offset: 2880)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !664, file: !64, line: 727, baseType: !177, size: 128, offset: 4416)
!4100 = !DIDerivedType(tag: DW_TAG_member, scope: !664, file: !64, line: 728, baseType: !4101, size: 64, offset: 4544)
!4101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !664, file: !64, line: 728, size: 64, elements: !4102)
!4102 = !{!4103, !4104, !4107, !4108}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4101, file: !64, line: 729, baseType: !3449, size: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4101, file: !64, line: 730, baseType: !4105, size: 64)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !64, line: 730, flags: DIFlagFwdDecl)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4101, file: !64, line: 731, baseType: !512, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4101, file: !64, line: 732, baseType: !7, size: 32)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !664, file: !64, line: 735, baseType: !463, size: 32, offset: 4608)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !664, file: !64, line: 738, baseType: !463, size: 32, offset: 4640)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !664, file: !64, line: 739, baseType: !3810, size: 64, offset: 4672)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !664, file: !64, line: 750, baseType: !171, size: 64, offset: 4736)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !624, file: !625, line: 91, baseType: !4114, size: 256, offset: 448)
!4114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 256, elements: !3686)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !624, file: !625, line: 94, baseType: !4116, size: 64, offset: 704)
!4116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4117, line: 25, size: 64, elements: !4118)
!4117 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4118 = !{!4119}
!4119 = !DIDerivedType(tag: DW_TAG_member, scope: !4116, file: !4117, line: 26, baseType: !4120, size: 64)
!4120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4116, file: !4117, line: 26, size: 64, elements: !4121)
!4121 = !{!4122, !4123}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4120, file: !4117, line: 28, baseType: !405, size: 64, align: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, scope: !4120, file: !4117, line: 30, baseType: !4124, size: 64)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4120, file: !4117, line: 30, size: 64, elements: !4125)
!4125 = !{!4126, !4127}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4124, file: !4117, line: 31, baseType: !232, size: 32)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4124, file: !4117, line: 32, baseType: !120, size: 32, offset: 32)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !624, file: !625, line: 95, baseType: !3825, size: 64, offset: 768)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !624, file: !625, line: 96, baseType: !876, size: 64, offset: 832)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !624, file: !625, line: 97, baseType: !432, size: 64, offset: 896)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !624, file: !625, line: 98, baseType: !171, size: 64, offset: 960)
!4132 = !DIDerivedType(tag: DW_TAG_member, scope: !624, file: !625, line: 100, baseType: !4133, size: 128, offset: 1024)
!4133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !624, file: !625, line: 100, size: 128, elements: !4134)
!4134 = !{!4135, !4136}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4133, file: !625, line: 101, baseType: !177, size: 128)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4133, file: !625, line: 102, baseType: !4137, size: 64)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !624, file: !625, line: 104, baseType: !177, size: 128, offset: 1152)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !624, file: !625, line: 105, baseType: !177, size: 128, offset: 1280)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !624, file: !625, line: 113, baseType: !4141, size: 128, offset: 1408)
!4141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !624, file: !625, line: 109, size: 128, elements: !4142)
!4142 = !{!4143, !4144, !4145}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4141, file: !625, line: 110, baseType: !339, size: 128)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4141, file: !625, line: 111, baseType: !639, size: 128)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4141, file: !625, line: 112, baseType: !222, size: 128, align: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !619, file: !620, line: 72, baseType: !876, size: 64, offset: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !619, file: !620, line: 73, baseType: !120, size: 32, offset: 128)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !619, file: !620, line: 74, baseType: !703, size: 64, offset: 192)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !614, file: !615, line: 10, baseType: !623, size: 64, offset: 64)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !210, file: !64, line: 1015, baseType: !663, size: 64, offset: 1344)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !210, file: !64, line: 1016, baseType: !3971, size: 64, offset: 1408)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !210, file: !64, line: 1018, baseType: !404, size: 64, offset: 1472)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !210, file: !64, line: 1020, baseType: !171, size: 64, offset: 1536)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !210, file: !64, line: 1023, baseType: !171, size: 64, offset: 1600)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !210, file: !64, line: 1027, baseType: !4156, size: 64, offset: 1664)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !210, file: !64, line: 1029, baseType: !1026, size: 64, offset: 1728)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !210, file: !64, line: 1030, baseType: !1697, size: 32, offset: 1792)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !210, file: !64, line: 1031, baseType: !1697, size: 32, offset: 1824)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "vma_node", scope: !188, file: !88, line: 314, baseType: !4161, size: 1536, offset: 192)
!4161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_node", file: !4162, line: 52, size: 1536, elements: !4163)
!4162 = !DIFile(filename: "./include/drm/drm_vma_manager.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5483318cd9ffeb7eed8e930be54b2ae2")
!4163 = !{!4164, !4165, !4198, !4199}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !4161, file: !4162, line: 53, baseType: !304, size: 64)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "vm_node", scope: !4161, file: !4162, line: 54, baseType: !4166, size: 1344, offset: 64)
!4166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm_node", file: !4167, line: 157, size: 1344, elements: !4168)
!4167 = !DIFile(filename: "./include/drm/drm_mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84c90dff9a569f9267103742808582e0")
!4168 = !{!4169, !4170, !4171, !4172, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !4166, file: !4167, line: 159, baseType: !432, size: 64)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4166, file: !4167, line: 161, baseType: !404, size: 64, offset: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4166, file: !4167, line: 163, baseType: !404, size: 64, offset: 128)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !4166, file: !4167, line: 165, baseType: !4173, size: 64, offset: 192)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm", file: !4167, line: 190, size: 1920, elements: !4175)
!4175 = !{!4176, !4183, !4184, !4185, !4186, !4187, !4188}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "color_adjust", scope: !4174, file: !4167, line: 200, baseType: !4177, size: 64)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{null, !4180, !432, !4182, !4182}
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4166)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !4174, file: !4167, line: 206, baseType: !177, size: 128, offset: 64)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "head_node", scope: !4174, file: !4167, line: 209, baseType: !4166, size: 1344, offset: 192)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "interval_tree", scope: !4174, file: !4167, line: 211, baseType: !1035, size: 128, offset: 1536)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "holes_size", scope: !4174, file: !4167, line: 212, baseType: !1035, size: 128, offset: 1664)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "holes_addr", scope: !4174, file: !4167, line: 213, baseType: !1038, size: 64, offset: 1792)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "scan_active", scope: !4174, file: !4167, line: 215, baseType: !432, size: 64, offset: 1856)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !4166, file: !4167, line: 166, baseType: !177, size: 128, offset: 256)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !4166, file: !4167, line: 167, baseType: !177, size: 128, offset: 384)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4166, file: !4167, line: 168, baseType: !428, size: 192, align: 64, offset: 512)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_size", scope: !4166, file: !4167, line: 169, baseType: !428, size: 192, align: 64, offset: 704)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_addr", scope: !4166, file: !4167, line: 170, baseType: !428, size: 192, align: 64, offset: 896)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "__subtree_last", scope: !4166, file: !4167, line: 171, baseType: !404, size: 64, offset: 1088)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "hole_size", scope: !4166, file: !4167, line: 172, baseType: !404, size: 64, offset: 1152)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_max_hole", scope: !4166, file: !4167, line: 173, baseType: !404, size: 64, offset: 1216)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4166, file: !4167, line: 174, baseType: !432, size: 64, offset: 1280)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "vm_files", scope: !4161, file: !4162, line: 55, baseType: !1038, size: 64, offset: 1408)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "driver_private", scope: !4161, file: !4162, line: 56, baseType: !171, size: 64, offset: 1472)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !188, file: !88, line: 322, baseType: !820, size: 64, offset: 1728)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !188, file: !88, line: 331, baseType: !120, size: 32, offset: 1792)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "dma_buf", scope: !188, file: !88, line: 344, baseType: !4203, size: 64, offset: 1856)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf", file: !88, line: 121, flags: DIFlagFwdDecl)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "import_attach", scope: !188, file: !88, line: 364, baseType: !4206, size: 64, offset: 1920)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_attachment", file: !88, line: 364, flags: DIFlagFwdDecl)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !188, file: !88, line: 373, baseType: !4209, size: 64, offset: 1984)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv", file: !159, line: 155, size: 384, elements: !4211)
!4211 = !{!4212, !4226}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4210, file: !159, line: 166, baseType: !4213, size: 320)
!4213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !4214, line: 47, size: 320, elements: !4215)
!4214 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!4215 = !{!4216, !4217}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4213, file: !4214, line: 48, baseType: !283, size: 256)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4213, file: !4214, line: 49, baseType: !4218, size: 64, offset: 256)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !4214, line: 55, size: 192, elements: !4220)
!4220 = !{!4221, !4222, !4223, !4224, !4225}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4219, file: !4214, line: 56, baseType: !2613, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !4219, file: !4214, line: 57, baseType: !432, size: 64, offset: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !4219, file: !4214, line: 58, baseType: !7, size: 32, offset: 128)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !4219, file: !4214, line: 59, baseType: !268, size: 16, offset: 160)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !4219, file: !4214, line: 60, baseType: !268, size: 16, offset: 176)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "fences", scope: !4210, file: !159, line: 178, baseType: !4227, size: 64, offset: 320)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv_list", file: !159, line: 50, flags: DIFlagFwdDecl)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "_resv", scope: !188, file: !88, line: 382, baseType: !4210, size: 384, offset: 2048)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "gpuva", scope: !188, file: !88, line: 398, baseType: !4231, size: 128, offset: 2432)
!4231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !188, file: !88, line: 392, size: 128, elements: !4232)
!4232 = !{!4233}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4231, file: !88, line: 393, baseType: !177, size: 128)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !188, file: !88, line: 409, baseType: !4235, size: 64, offset: 2560)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4237)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object_funcs", file: !88, line: 69, size: 896, elements: !4238)
!4238 = !{!4239, !4244, !4250, !4254, !4291, !4295, !4299, !4300, !4306, !4320, !4324, !4328, !4329, !4333}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4237, file: !88, line: 77, baseType: !4240, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{null, !4243}
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4237, file: !88, line: 86, baseType: !4245, size: 64, offset: 64)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!120, !4243, !4248}
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !4162, line: 44, flags: DIFlagFwdDecl)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4237, file: !88, line: 95, baseType: !4251, size: 64, offset: 128)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{null, !4243, !4248}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "print_info", scope: !4237, file: !88, line: 110, baseType: !4255, size: 64, offset: 192)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{null, !4258, !7, !4289}
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !4260, line: 76, size: 256, elements: !4261)
!4260 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!4261 = !{!4262, !4283, !4287, !4288}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "printfn", scope: !4259, file: !4260, line: 78, baseType: !4263, size: 64)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{null, !4258, !4266}
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !4268, line: 79, size: 128, elements: !4269)
!4268 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4269 = !{!4270, !4271}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !4267, file: !4268, line: 80, baseType: !502, size: 64)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !4267, file: !4268, line: 81, baseType: !4272, size: 64, offset: 64)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4274, line: 5, baseType: !4275)
!4274 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!4275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !4276)
!4276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4277, size: 192, elements: !2845)
!4277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4278)
!4278 = !{!4279, !4280, !4281, !4282}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4277, file: !3, line: 45, baseType: !7, size: 32)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4277, file: !3, line: 45, baseType: !7, size: 32, offset: 32)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4277, file: !3, line: 45, baseType: !171, size: 64, offset: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4277, file: !3, line: 45, baseType: !171, size: 64, offset: 128)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "puts", scope: !4259, file: !4260, line: 79, baseType: !4284, size: 64, offset: 64)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{null, !4258, !502}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4259, file: !4260, line: 80, baseType: !171, size: 64, offset: 128)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !4259, file: !4260, line: 81, baseType: !502, size: 64, offset: 192)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "export", scope: !4237, file: !88, line: 121, baseType: !4292, size: 64, offset: 256)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!4203, !4243, !120}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4237, file: !88, line: 130, baseType: !4296, size: 64, offset: 320)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!120, !4243}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "unpin", scope: !4237, file: !88, line: 139, baseType: !4240, size: 64, offset: 384)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "get_sg_table", scope: !4237, file: !88, line: 153, baseType: !4301, size: 64, offset: 448)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!4304, !4243}
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !88, line: 153, flags: DIFlagFwdDecl)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "vmap", scope: !4237, file: !88, line: 163, baseType: !4307, size: 64, offset: 512)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{!120, !4243, !4310}
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iosys_map", file: !4312, line: 109, size: 128, elements: !4313)
!4312 = !DIFile(filename: "./include/linux/iosys-map.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c97d7374529d1c22dbeacc3bfd30605")
!4313 = !{!4314, !4319}
!4314 = !DIDerivedType(tag: DW_TAG_member, scope: !4311, file: !4312, line: 110, baseType: !4315, size: 64)
!4315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4311, file: !4312, line: 110, size: 64, elements: !4316)
!4316 = !{!4317, !4318}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr_iomem", scope: !4315, file: !4312, line: 111, baseType: !171, size: 64)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4315, file: !4312, line: 112, baseType: !171, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "is_iomem", scope: !4311, file: !4312, line: 114, baseType: !499, size: 8, offset: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "vunmap", scope: !4237, file: !88, line: 173, baseType: !4321, size: 64, offset: 576)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{null, !4243, !4310}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4237, file: !88, line: 186, baseType: !4325, size: 64, offset: 640)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!120, !4243, !1173}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "evict", scope: !4237, file: !88, line: 196, baseType: !4296, size: 64, offset: 704)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4237, file: !88, line: 209, baseType: !4330, size: 64, offset: 768)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{!87, !4243}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4237, file: !88, line: 218, baseType: !1384, size: 64, offset: 832)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "lru_node", scope: !188, file: !88, line: 416, baseType: !177, size: 128, offset: 2624)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !188, file: !88, line: 423, baseType: !4336, size: 64, offset: 2752)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_lru", file: !88, line: 230, size: 256, elements: !4338)
!4338 = !{!4339, !4341, !4342}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4337, file: !88, line: 238, baseType: !4340, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4337, file: !88, line: 246, baseType: !778, size: 64, offset: 64)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4337, file: !88, line: 253, baseType: !177, size: 128, offset: 128)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !185, file: !153, line: 104, baseType: !4344, size: 64, offset: 2816)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_device", file: !4346, line: 215, size: 16960, elements: !4347)
!4346 = !DIFile(filename: "./include/drm/ttm/ttm_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "318d87bc69ff4bc10378351ef0b91aca")
!4347 = !{!4348, !4349, !4438, !4523, !4525, !4531, !5004, !5005, !5006, !5007}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !4345, file: !4346, line: 220, baseType: !177, size: 128)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4345, file: !4346, line: 226, baseType: !4350, size: 64, offset: 128)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4352)
!4352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_device_funcs", file: !4346, line: 61, size: 896, elements: !4353)
!4353 = !{!4354, !4361, !4376, !4380, !4381, !4389, !4395, !4416, !4420, !4421, !4425, !4429, !4433, !4437}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "ttm_tt_create", scope: !4352, file: !4346, line: 73, baseType: !4355, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!4358, !184, !461}
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_tt", file: !4360, line: 35, flags: DIFlagFwdDecl)
!4360 = !DIFile(filename: "./include/drm/ttm/ttm_pool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6613193a1a6bffece87937e591b2c286")
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "ttm_tt_populate", scope: !4352, file: !4346, line: 85, baseType: !4362, size: 64, offset: 64)
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{!120, !4344, !4358, !4365}
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_operation_ctx", file: !153, line: 178, size: 192, elements: !4367)
!4367 = !{!4368, !4369, !4370, !4371, !4372, !4373, !4374}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !4366, file: !153, line: 179, baseType: !499, size: 8)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "no_wait_gpu", scope: !4366, file: !153, line: 180, baseType: !499, size: 8, offset: 8)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_retry_mayfail", scope: !4366, file: !153, line: 181, baseType: !499, size: 8, offset: 16)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "allow_res_evict", scope: !4366, file: !153, line: 182, baseType: !499, size: 8, offset: 24)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "force_alloc", scope: !4366, file: !153, line: 183, baseType: !499, size: 8, offset: 32)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !4366, file: !153, line: 184, baseType: !4209, size: 64, offset: 64)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_moved", scope: !4366, file: !153, line: 185, baseType: !4375, size: 64, offset: 128)
!4375 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !178, line: 113, baseType: !404)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "ttm_tt_unpopulate", scope: !4352, file: !4346, line: 96, baseType: !4377, size: 64, offset: 128)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{null, !4344, !4358}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "ttm_tt_destroy", scope: !4352, file: !4346, line: 108, baseType: !4377, size: 64, offset: 192)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "eviction_valuable", scope: !4352, file: !4346, line: 119, baseType: !4382, size: 64, offset: 256)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!499, !184, !4385}
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4387)
!4387 = !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_place", file: !4388, line: 44, flags: DIFlagFwdDecl)
!4388 = !DIFile(filename: "./include/drm/ttm/ttm_resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9381c1bbd30ebfc9159e3e67f7545347")
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "evict_flags", scope: !4352, file: !4346, line: 133, baseType: !4390, size: 64, offset: 320)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = !DISubroutineType(types: !4392)
!4392 = !{null, !184, !4393}
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_placement", file: !4388, line: 46, flags: DIFlagFwdDecl)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "move", scope: !4352, file: !4346, line: 149, baseType: !4396, size: 64, offset: 384)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = !DISubroutineType(types: !4398)
!4398 = !{!120, !184, !499, !4365, !4399, !4415}
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_resource", file: !4388, line: 209, size: 576, elements: !4401)
!4401 = !{!4402, !4403, !4404, !4405, !4406, !4413, !4414}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4400, file: !4388, line: 210, baseType: !432, size: 64)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4400, file: !4388, line: 211, baseType: !820, size: 64, offset: 64)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "mem_type", scope: !4400, file: !4388, line: 212, baseType: !461, size: 32, offset: 128)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !4400, file: !4388, line: 213, baseType: !461, size: 32, offset: 160)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4400, file: !4388, line: 214, baseType: !4407, size: 192, offset: 192)
!4407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_bus_placement", file: !4388, line: 189, size: 192, elements: !4408)
!4408 = !{!4409, !4410, !4411, !4412}
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4407, file: !4388, line: 190, baseType: !171, size: 64)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4407, file: !4388, line: 191, baseType: !3561, size: 64, offset: 64)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "is_iomem", scope: !4407, file: !4388, line: 192, baseType: !499, size: 8, offset: 128)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !4407, file: !4388, line: 193, baseType: !92, size: 32, offset: 160)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "bo", scope: !4400, file: !4388, line: 215, baseType: !184, size: 64, offset: 384)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4400, file: !4388, line: 220, baseType: !177, size: 128, offset: 448)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "delete_mem_notify", scope: !4352, file: !4346, line: 157, baseType: !4417, size: 64, offset: 448)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{null, !184}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "swap_notify", scope: !4352, file: !4346, line: 162, baseType: !4417, size: 64, offset: 512)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "io_mem_reserve", scope: !4352, file: !4346, line: 170, baseType: !4422, size: 64, offset: 576)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!120, !4344, !4399}
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "io_mem_free", scope: !4352, file: !4346, line: 172, baseType: !4426, size: 64, offset: 640)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DISubroutineType(types: !4428)
!4428 = !{null, !4344, !4399}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "io_mem_pfn", scope: !4352, file: !4346, line: 181, baseType: !4430, size: 64, offset: 704)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!432, !184, !432}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "access_memory", scope: !4352, file: !4346, line: 198, baseType: !4434, size: 64, offset: 768)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{!120, !184, !432, !171, !120, !120}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "release_notify", scope: !4352, file: !4346, line: 209, baseType: !4417, size: 64, offset: 832)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "sysman", scope: !4345, file: !4346, line: 232, baseType: !4439, size: 960, offset: 192)
!4439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_resource_manager", file: !4388, line: 151, size: 960, elements: !4440)
!4440 = !{!4441, !4442, !4443, !4444, !4445, !4469, !4470, !4520, !4522}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "use_type", scope: !4439, file: !4388, line: 155, baseType: !499, size: 8)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "use_tt", scope: !4439, file: !4388, line: 156, baseType: !499, size: 8, offset: 8)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !4439, file: !4388, line: 157, baseType: !4344, size: 64, offset: 64)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4439, file: !4388, line: 158, baseType: !4375, size: 64, offset: 128)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4439, file: !4388, line: 159, baseType: !4446, size: 64, offset: 192)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4448)
!4448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_resource_manager_func", file: !4388, line: 52, size: 320, elements: !4449)
!4449 = !{!4450, !4456, !4460, !4464, !4465}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4448, file: !4388, line: 74, baseType: !4451, size: 64)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!120, !4454, !184, !4385, !4455}
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4448, file: !4388, line: 88, baseType: !4457, size: 64, offset: 64)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{null, !4454, !4399}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "intersects", scope: !4448, file: !4388, line: 102, baseType: !4461, size: 64, offset: 128)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{!499, !4454, !4399, !4385, !820}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4448, file: !4388, line: 118, baseType: !4461, size: 64, offset: 192)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !4448, file: !4388, line: 133, baseType: !4466, size: 64, offset: 256)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{null, !4454, !4258}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "move_lock", scope: !4439, file: !4388, line: 160, baseType: !232, size: 32, offset: 256)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "move", scope: !4439, file: !4388, line: 165, baseType: !4471, size: 64, offset: 320)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !4473, line: 65, size: 512, elements: !4474)
!4473 = !DIFile(filename: "./include/linux/dma-fence.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "250a5e28e66b96be11f66b71d72fa176")
!4474 = !{!4475, !4476, !4509, !4515, !4516, !4517, !4518, !4519}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4472, file: !4473, line: 66, baseType: !1484, size: 64)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4472, file: !4473, line: 67, baseType: !4477, size: 64, offset: 64)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4479)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !4473, line: 125, size: 640, elements: !4480)
!4480 = !{!4481, !4482, !4486, !4487, !4491, !4492, !4496, !4500, !4504, !4505}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !4479, file: !4473, line: 132, baseType: !499, size: 8)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !4479, file: !4473, line: 143, baseType: !4483, size: 64, offset: 64)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!502, !4471}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !4479, file: !4473, line: 155, baseType: !4483, size: 64, offset: 128)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !4479, file: !4473, line: 192, baseType: !4488, size: 64, offset: 192)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!499, !4471}
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !4479, file: !4473, line: 209, baseType: !4488, size: 64, offset: 256)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4479, file: !4473, line: 227, baseType: !4493, size: 64, offset: 320)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!778, !4471, !499, !778}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4479, file: !4473, line: 238, baseType: !4497, size: 64, offset: 384)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{null, !4471}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !4479, file: !4473, line: 248, baseType: !4501, size: 64, offset: 448)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{null, !4471, !512, !120}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !4479, file: !4473, line: 258, baseType: !4501, size: 64, offset: 512)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "set_deadline", scope: !4479, file: !4473, line: 279, baseType: !4506, size: 64, offset: 576)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{null, !4471, !2732}
!4509 = !DIDerivedType(tag: DW_TAG_member, scope: !4472, file: !4473, line: 84, baseType: !4510, size: 128, offset: 128)
!4510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4472, file: !4473, line: 84, size: 128, elements: !4511)
!4511 = !{!4512, !4513, !4514}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !4510, file: !4473, line: 85, baseType: !177, size: 128)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4510, file: !4473, line: 87, baseType: !2732, size: 64)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4510, file: !4473, line: 89, baseType: !222, size: 128, align: 64)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4472, file: !4473, line: 91, baseType: !404, size: 64, offset: 256)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !4472, file: !4473, line: 92, baseType: !404, size: 64, offset: 320)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4472, file: !4473, line: 93, baseType: !432, size: 64, offset: 384)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4472, file: !4473, line: 94, baseType: !191, size: 32, offset: 448)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4472, file: !4473, line: 95, baseType: !120, size: 32, offset: 480)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4439, file: !4388, line: 170, baseType: !4521, size: 512, offset: 384)
!4521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 512, elements: !344)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !4439, file: !4388, line: 176, baseType: !4375, size: 64, offset: 896)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "man_drv", scope: !4345, file: !4346, line: 237, baseType: !4524, size: 512, offset: 1152)
!4524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4454, size: 512, elements: !2767)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "vma_manager", scope: !4345, file: !4346, line: 242, baseType: !4526, size: 64, offset: 1664)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !4162, line: 59, size: 1984, elements: !4528)
!4528 = !{!4529, !4530}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !4527, file: !4162, line: 60, baseType: !304, size: 64)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "vm_addr_space_mm", scope: !4527, file: !4162, line: 61, baseType: !4174, size: 1920, offset: 64)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !4345, file: !4346, line: 247, baseType: !4532, size: 14912, offset: 1728)
!4532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_pool", file: !4360, line: 69, size: 14912, elements: !4533)
!4533 = !{!4534, !4984, !4985, !4986, !4987}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4532, file: !4360, line: 70, baseType: !4535, size: 64)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !105, line: 705, size: 5824, elements: !4537)
!4537 = !{!4538, !4539, !4540, !4543, !4544, !4597, !4667, !4668, !4669, !4670, !4671, !4678, !4770, !4783, !4793, !4797, !4798, !4799, !4800, !4804, !4811, !4812, !4815, !4818, !4822, !4926, !4927, !4928, !4929, !4930, !4931, !4961, !4962, !4963, !4966, !4969, !4978, !4979, !4980, !4981, !4982, !4983}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4536, file: !105, line: 706, baseType: !922, size: 512)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4536, file: !105, line: 707, baseType: !4535, size: 64, offset: 512)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4536, file: !105, line: 709, baseType: !4541, size: 64, offset: 576)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !105, line: 37, flags: DIFlagFwdDecl)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4536, file: !105, line: 711, baseType: !502, size: 64, offset: 640)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4536, file: !105, line: 712, baseType: !4545, size: 64, offset: 704)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4547)
!4547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !105, line: 89, size: 384, elements: !4548)
!4548 = !{!4549, !4550, !4551, !4557, !4562, !4566}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4547, file: !105, line: 90, baseType: !502, size: 64)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4547, file: !105, line: 91, baseType: !1002, size: 64, offset: 64)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4547, file: !105, line: 92, baseType: !4552, size: 64, offset: 128)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!120, !4555, !958}
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4536)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4547, file: !105, line: 93, baseType: !4558, size: 64, offset: 192)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{!512, !4555, !4561, !1751, !1752}
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4547, file: !105, line: 95, baseType: !4563, size: 64, offset: 256)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{null, !4535}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4547, file: !105, line: 97, baseType: !4567, size: 64, offset: 320)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4569)
!4569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !112, line: 286, size: 1472, elements: !4570)
!4570 = !{!4571, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4569, file: !112, line: 287, baseType: !4572, size: 64)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{!120, !4535}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4569, file: !112, line: 288, baseType: !4563, size: 64, offset: 64)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4569, file: !112, line: 289, baseType: !4572, size: 64, offset: 128)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4569, file: !112, line: 290, baseType: !4572, size: 64, offset: 192)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4569, file: !112, line: 291, baseType: !4572, size: 64, offset: 256)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4569, file: !112, line: 292, baseType: !4572, size: 64, offset: 320)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4569, file: !112, line: 293, baseType: !4572, size: 64, offset: 384)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4569, file: !112, line: 294, baseType: !4572, size: 64, offset: 448)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4569, file: !112, line: 295, baseType: !4572, size: 64, offset: 512)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4569, file: !112, line: 296, baseType: !4572, size: 64, offset: 576)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4569, file: !112, line: 297, baseType: !4572, size: 64, offset: 640)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4569, file: !112, line: 298, baseType: !4572, size: 64, offset: 704)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4569, file: !112, line: 299, baseType: !4572, size: 64, offset: 768)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4569, file: !112, line: 300, baseType: !4572, size: 64, offset: 832)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4569, file: !112, line: 301, baseType: !4572, size: 64, offset: 896)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4569, file: !112, line: 302, baseType: !4572, size: 64, offset: 960)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4569, file: !112, line: 303, baseType: !4572, size: 64, offset: 1024)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4569, file: !112, line: 304, baseType: !4572, size: 64, offset: 1088)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4569, file: !112, line: 305, baseType: !4572, size: 64, offset: 1152)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4569, file: !112, line: 306, baseType: !4572, size: 64, offset: 1216)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4569, file: !112, line: 307, baseType: !4572, size: 64, offset: 1280)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4569, file: !112, line: 308, baseType: !4572, size: 64, offset: 1344)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4569, file: !112, line: 309, baseType: !4572, size: 64, offset: 1408)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4536, file: !105, line: 714, baseType: !4598, size: 64, offset: 768)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4600)
!4600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4601, line: 80, size: 1344, elements: !4602)
!4601 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4602 = !{!4603, !4604, !4605, !4606, !4607, !4608, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4666}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4600, file: !4601, line: 81, baseType: !502, size: 64)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4600, file: !4601, line: 82, baseType: !502, size: 64, offset: 64)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4600, file: !4601, line: 83, baseType: !1002, size: 64, offset: 128)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4600, file: !4601, line: 84, baseType: !1002, size: 64, offset: 192)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4600, file: !4601, line: 85, baseType: !1002, size: 64, offset: 256)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4600, file: !4601, line: 87, baseType: !4609, size: 64, offset: 320)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!120, !4535, !4612}
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !99, line: 96, size: 1152, elements: !4614)
!4614 = !{!4615, !4616, !4617, !4618, !4619, !4620, !4621, !4625, !4629, !4630, !4631, !4632, !4633, !4641, !4642, !4643, !4644, !4645, !4646}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4613, file: !99, line: 97, baseType: !502, size: 64)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4613, file: !99, line: 98, baseType: !4598, size: 64, offset: 64)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4613, file: !99, line: 100, baseType: !909, size: 64, offset: 128)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4613, file: !99, line: 101, baseType: !502, size: 64, offset: 192)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4613, file: !99, line: 103, baseType: !499, size: 8, offset: 256)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4613, file: !99, line: 104, baseType: !98, size: 32, offset: 288)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4613, file: !99, line: 106, baseType: !4622, size: 64, offset: 320)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4624)
!4624 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !99, line: 106, flags: DIFlagFwdDecl)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4613, file: !99, line: 107, baseType: !4626, size: 64, offset: 384)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4628)
!4628 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !99, line: 107, flags: DIFlagFwdDecl)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4613, file: !99, line: 109, baseType: !4572, size: 64, offset: 448)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4613, file: !99, line: 110, baseType: !4563, size: 64, offset: 512)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4613, file: !99, line: 111, baseType: !4572, size: 64, offset: 576)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4613, file: !99, line: 112, baseType: !4563, size: 64, offset: 640)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4613, file: !99, line: 113, baseType: !4634, size: 64, offset: 704)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!120, !4535, !4637}
!4637 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !112, line: 60, baseType: !4638)
!4638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !112, line: 58, size: 32, elements: !4639)
!4639 = !{!4640}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4638, file: !112, line: 59, baseType: !120, size: 32)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4613, file: !99, line: 114, baseType: !4572, size: 64, offset: 768)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4613, file: !99, line: 115, baseType: !1002, size: 64, offset: 832)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4613, file: !99, line: 116, baseType: !1002, size: 64, offset: 896)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4613, file: !99, line: 118, baseType: !4567, size: 64, offset: 960)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4613, file: !99, line: 119, baseType: !4563, size: 64, offset: 1024)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4613, file: !99, line: 121, baseType: !4647, size: 64, offset: 1088)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !99, line: 121, flags: DIFlagFwdDecl)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4600, file: !4601, line: 88, baseType: !4552, size: 64, offset: 384)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4600, file: !4601, line: 89, baseType: !4572, size: 64, offset: 448)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4600, file: !4601, line: 90, baseType: !4563, size: 64, offset: 512)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4600, file: !4601, line: 91, baseType: !4563, size: 64, offset: 576)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4600, file: !4601, line: 92, baseType: !4563, size: 64, offset: 640)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4600, file: !4601, line: 94, baseType: !4572, size: 64, offset: 704)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4600, file: !4601, line: 95, baseType: !4572, size: 64, offset: 768)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4600, file: !4601, line: 97, baseType: !4634, size: 64, offset: 832)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4600, file: !4601, line: 98, baseType: !4572, size: 64, offset: 896)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4600, file: !4601, line: 100, baseType: !4572, size: 64, offset: 960)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4600, file: !4601, line: 102, baseType: !4572, size: 64, offset: 1024)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4600, file: !4601, line: 103, baseType: !4563, size: 64, offset: 1088)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4600, file: !4601, line: 105, baseType: !4567, size: 64, offset: 1152)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4600, file: !4601, line: 107, baseType: !4663, size: 64, offset: 1216)
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4665)
!4665 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4601, line: 107, flags: DIFlagFwdDecl)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4600, file: !4601, line: 109, baseType: !499, size: 8, offset: 1280)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4536, file: !105, line: 715, baseType: !4612, size: 64, offset: 832)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4536, file: !105, line: 717, baseType: !171, size: 64, offset: 896)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4536, file: !105, line: 719, baseType: !171, size: 64, offset: 960)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4536, file: !105, line: 721, baseType: !283, size: 256, offset: 1024)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4536, file: !105, line: 725, baseType: !4672, size: 448, offset: 1280)
!4672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !105, line: 517, size: 448, elements: !4673)
!4673 = !{!4674, !4675, !4676, !4677}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4672, file: !105, line: 518, baseType: !177, size: 128)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4672, file: !105, line: 519, baseType: !177, size: 128, offset: 128)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4672, file: !105, line: 520, baseType: !177, size: 128, offset: 256)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4672, file: !105, line: 521, baseType: !104, size: 32, offset: 384)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4536, file: !105, line: 726, baseType: !4679, size: 2496, offset: 1728)
!4679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !112, line: 663, size: 2496, elements: !4680)
!4680 = !{!4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4763, !4767}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4679, file: !112, line: 664, baseType: !4637, size: 32)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4679, file: !112, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4679, file: !112, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4679, file: !112, line: 667, baseType: !499, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4679, file: !112, line: 668, baseType: !499, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4679, file: !112, line: 669, baseType: !499, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4679, file: !112, line: 670, baseType: !499, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4679, file: !112, line: 671, baseType: !499, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4679, file: !112, line: 672, baseType: !499, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4679, file: !112, line: 673, baseType: !499, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4679, file: !112, line: 674, baseType: !499, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4679, file: !112, line: 675, baseType: !462, size: 32, offset: 64)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4679, file: !112, line: 676, baseType: !232, size: 32, offset: 96)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4679, file: !112, line: 678, baseType: !177, size: 128, offset: 128)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4679, file: !112, line: 679, baseType: !1138, size: 256, offset: 256)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4679, file: !112, line: 680, baseType: !4697, size: 64, offset: 512)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4699, line: 43, size: 1536, elements: !4700)
!4699 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4700 = !{!4701, !4702, !4703, !4704, !4705, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4722}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4698, file: !4699, line: 44, baseType: !502, size: 64)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4698, file: !4699, line: 45, baseType: !120, size: 32, offset: 64)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4698, file: !4699, line: 46, baseType: !177, size: 128, offset: 128)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4698, file: !4699, line: 47, baseType: !232, size: 32, offset: 256)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4698, file: !4699, line: 48, baseType: !4706, size: 64, offset: 320)
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4707, size: 64)
!4707 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !112, line: 629, flags: DIFlagFwdDecl)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4698, file: !4699, line: 49, baseType: !2137, size: 320, offset: 384)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4698, file: !4699, line: 50, baseType: !432, size: 64, offset: 704)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4698, file: !4699, line: 51, baseType: !2732, size: 64, offset: 768)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4698, file: !4699, line: 52, baseType: !2732, size: 64, offset: 832)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4698, file: !4699, line: 53, baseType: !2732, size: 64, offset: 896)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4698, file: !4699, line: 54, baseType: !2732, size: 64, offset: 960)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4698, file: !4699, line: 55, baseType: !2732, size: 64, offset: 1024)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4698, file: !4699, line: 56, baseType: !432, size: 64, offset: 1088)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4698, file: !4699, line: 57, baseType: !432, size: 64, offset: 1152)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4698, file: !4699, line: 58, baseType: !432, size: 64, offset: 1216)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4698, file: !4699, line: 59, baseType: !432, size: 64, offset: 1280)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4698, file: !4699, line: 60, baseType: !432, size: 64, offset: 1344)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4698, file: !4699, line: 61, baseType: !4535, size: 64, offset: 1408)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4698, file: !4699, line: 62, baseType: !499, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4698, file: !4699, line: 63, baseType: !499, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4679, file: !112, line: 681, baseType: !499, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4679, file: !112, line: 682, baseType: !499, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4679, file: !112, line: 683, baseType: !499, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4679, file: !112, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4679, file: !112, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4679, file: !112, line: 690, baseType: !2724, size: 512, offset: 640)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4679, file: !112, line: 691, baseType: !404, size: 64, offset: 1152)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4679, file: !112, line: 692, baseType: !1341, size: 256, offset: 1216)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4679, file: !112, line: 693, baseType: !348, size: 192, offset: 1472)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4679, file: !112, line: 694, baseType: !4706, size: 64, offset: 1664)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4679, file: !112, line: 695, baseType: !200, size: 32, offset: 1728)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4679, file: !112, line: 696, baseType: !200, size: 32, offset: 1760)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4679, file: !112, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4679, file: !112, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4679, file: !112, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4679, file: !112, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4679, file: !112, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4679, file: !112, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4679, file: !112, line: 703, baseType: !499, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4679, file: !112, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4679, file: !112, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4679, file: !112, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4679, file: !112, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4679, file: !112, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4679, file: !112, line: 709, baseType: !7, size: 32, offset: 1824)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4679, file: !112, line: 710, baseType: !111, size: 32, offset: 1856)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4679, file: !112, line: 711, baseType: !119, size: 32, offset: 1888)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4679, file: !112, line: 712, baseType: !119, size: 32, offset: 1920)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4679, file: !112, line: 713, baseType: !120, size: 32, offset: 1952)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4679, file: !112, line: 714, baseType: !120, size: 32, offset: 1984)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4679, file: !112, line: 715, baseType: !404, size: 64, offset: 2048)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4679, file: !112, line: 716, baseType: !404, size: 64, offset: 2112)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4679, file: !112, line: 717, baseType: !404, size: 64, offset: 2176)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4679, file: !112, line: 718, baseType: !404, size: 64, offset: 2240)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4679, file: !112, line: 720, baseType: !4758, size: 64, offset: 2304)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !112, line: 632, size: 64, elements: !4760)
!4760 = !{!4761, !4762}
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4759, file: !112, line: 633, baseType: !232, size: 32)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4759, file: !112, line: 634, baseType: !7, size: 32, offset: 32)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4679, file: !112, line: 721, baseType: !4764, size: 64, offset: 2368)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{null, !4535, !421}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4679, file: !112, line: 722, baseType: !4768, size: 64, offset: 2432)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !112, line: 722, flags: DIFlagFwdDecl)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4536, file: !105, line: 727, baseType: !4771, size: 64, offset: 4224)
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!4772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !112, line: 742, size: 1792, elements: !4773)
!4773 = !{!4774, !4775, !4776, !4780, !4781, !4782}
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4772, file: !112, line: 743, baseType: !4569, size: 1472)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4772, file: !112, line: 744, baseType: !4572, size: 64, offset: 1472)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4772, file: !112, line: 745, baseType: !4777, size: 64, offset: 1536)
!4777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4778, size: 64)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{null, !4535, !499}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4772, file: !112, line: 746, baseType: !4572, size: 64, offset: 1600)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4772, file: !112, line: 747, baseType: !4563, size: 64, offset: 1664)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4772, file: !112, line: 748, baseType: !4563, size: 64, offset: 1728)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4536, file: !105, line: 736, baseType: !4784, size: 128, offset: 4288)
!4784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !105, line: 529, size: 128, elements: !4785)
!4785 = !{!4786, !4790}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4784, file: !105, line: 531, baseType: !4787, size: 64)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4789, line: 13, flags: DIFlagFwdDecl)
!4789 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4784, file: !105, line: 532, baseType: !4791, size: 64, offset: 64)
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !105, line: 49, flags: DIFlagFwdDecl)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4536, file: !105, line: 738, baseType: !4794, size: 64, offset: 4416)
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4796)
!4796 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !105, line: 738, flags: DIFlagFwdDecl)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4536, file: !105, line: 740, baseType: !4182, size: 64, offset: 4480)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4536, file: !105, line: 741, baseType: !404, size: 64, offset: 4544)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4536, file: !105, line: 746, baseType: !404, size: 64, offset: 4608)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4536, file: !105, line: 747, baseType: !4801, size: 64, offset: 4672)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4803)
!4803 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !105, line: 747, flags: DIFlagFwdDecl)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4536, file: !105, line: 749, baseType: !4805, size: 64, offset: 4736)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !105, line: 428, size: 128, elements: !4807)
!4807 = !{!4808, !4809, !4810}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4806, file: !105, line: 433, baseType: !7, size: 32)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4806, file: !105, line: 434, baseType: !7, size: 32, offset: 32)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4806, file: !105, line: 435, baseType: !432, size: 64, offset: 64)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4536, file: !105, line: 751, baseType: !177, size: 128, offset: 4800)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4536, file: !105, line: 762, baseType: !4813, size: 64, offset: 4928)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !105, line: 762, flags: DIFlagFwdDecl)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4536, file: !105, line: 770, baseType: !4816, offset: 4992)
!4816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4817, line: 5, elements: !1207)
!4817 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4536, file: !105, line: 772, baseType: !4819, size: 64, offset: 4992)
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4821, line: 18, flags: DIFlagFwdDecl)
!4821 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4536, file: !105, line: 773, baseType: !4823, size: 64, offset: 5056)
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4825, line: 41, size: 512, elements: !4826)
!4825 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4826 = !{!4827, !4828, !4922, !4923, !4924, !4925}
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4824, file: !4825, line: 42, baseType: !4823, size: 64)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4824, file: !4825, line: 43, baseType: !4829, size: 64, offset: 64)
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4831)
!4831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4825, line: 125, size: 1408, elements: !4832)
!4832 = !{!4833, !4837, !4841, !4847, !4851, !4852, !4857, !4861, !4865, !4869, !4873, !4874, !4878, !4882, !4886, !4897, !4898, !4899, !4900, !4910, !4914, !4918}
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4831, file: !4825, line: 126, baseType: !4834, size: 64)
!4834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4835, size: 64)
!4835 = !DISubroutineType(types: !4836)
!4836 = !{!4823, !4823}
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4831, file: !4825, line: 127, baseType: !4838, size: 64, offset: 64)
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4839, size: 64)
!4839 = !DISubroutineType(types: !4840)
!4840 = !{null, !4823}
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4831, file: !4825, line: 128, baseType: !4842, size: 64, offset: 128)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{!499, !4845}
!4845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4846, size: 64)
!4846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4824)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4831, file: !4825, line: 129, baseType: !4848, size: 64, offset: 192)
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4849, size: 64)
!4849 = !DISubroutineType(types: !4850)
!4850 = !{!1302, !4845, !4555}
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4831, file: !4825, line: 131, baseType: !4842, size: 64, offset: 256)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4831, file: !4825, line: 133, baseType: !4853, size: 64, offset: 320)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = !DISubroutineType(types: !4855)
!4855 = !{!4856, !4845}
!4856 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4825, line: 132, flags: DIFlagFwdDecl)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4831, file: !4825, line: 134, baseType: !4858, size: 64, offset: 384)
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4859 = !DISubroutineType(types: !4860)
!4860 = !{!499, !4845, !502}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4831, file: !4825, line: 136, baseType: !4862, size: 64, offset: 448)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = !DISubroutineType(types: !4864)
!4864 = !{!120, !4845, !502, !7, !171, !820}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4831, file: !4825, line: 141, baseType: !4866, size: 64, offset: 512)
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{!120, !4845, !502, !2214, !820}
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4831, file: !4825, line: 144, baseType: !4870, size: 64, offset: 576)
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = !DISubroutineType(types: !4872)
!4872 = !{!502, !4845}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4831, file: !4825, line: 145, baseType: !4870, size: 64, offset: 640)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4831, file: !4825, line: 146, baseType: !4875, size: 64, offset: 704)
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!4876 = !DISubroutineType(types: !4877)
!4877 = !{!4823, !4845}
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4831, file: !4825, line: 148, baseType: !4879, size: 64, offset: 768)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = !DISubroutineType(types: !4881)
!4881 = !{!4823, !4845, !4823}
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4831, file: !4825, line: 151, baseType: !4883, size: 64, offset: 832)
!4883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4884, size: 64)
!4884 = !DISubroutineType(types: !4885)
!4885 = !{!4823, !4845, !502}
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4831, file: !4825, line: 153, baseType: !4887, size: 64, offset: 896)
!4887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4888, size: 64)
!4888 = !DISubroutineType(types: !4889)
!4889 = !{!120, !4845, !502, !502, !7, !7, !4890}
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4825, line: 94, size: 640, elements: !4892)
!4892 = !{!4893, !4894, !4895}
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4891, file: !4825, line: 95, baseType: !4823, size: 64)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4891, file: !4825, line: 96, baseType: !7, size: 32, offset: 64)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4891, file: !4825, line: 97, baseType: !4896, size: 512, offset: 128)
!4896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 512, elements: !2767)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4831, file: !4825, line: 158, baseType: !4879, size: 64, offset: 960)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4831, file: !4825, line: 161, baseType: !4875, size: 64, offset: 1024)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4831, file: !4825, line: 163, baseType: !4834, size: 64, offset: 1088)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4831, file: !4825, line: 164, baseType: !4901, size: 64, offset: 1152)
!4901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4902, size: 64)
!4902 = !DISubroutineType(types: !4903)
!4903 = !{!120, !4845, !4904}
!4904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4905, size: 64)
!4905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4825, line: 73, size: 128, elements: !4906)
!4906 = !{!4907, !4908, !4909}
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4905, file: !4825, line: 74, baseType: !7, size: 32)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4905, file: !4825, line: 75, baseType: !7, size: 32, offset: 32)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4905, file: !4825, line: 76, baseType: !4845, size: 64, offset: 64)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4831, file: !4825, line: 166, baseType: !4911, size: 64, offset: 1216)
!4911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4912, size: 64)
!4912 = !DISubroutineType(types: !4913)
!4913 = !{!171, !4823, !120}
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4831, file: !4825, line: 167, baseType: !4915, size: 64, offset: 1280)
!4915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4916, size: 64)
!4916 = !DISubroutineType(types: !4917)
!4917 = !{!120, !4845, !7}
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4831, file: !4825, line: 168, baseType: !4919, size: 64, offset: 1344)
!4919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4920, size: 64)
!4920 = !DISubroutineType(types: !4921)
!4921 = !{!120, !4823}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4824, file: !4825, line: 44, baseType: !4535, size: 64, offset: 128)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4824, file: !4825, line: 45, baseType: !177, size: 128, offset: 192)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4824, file: !4825, line: 46, baseType: !177, size: 128, offset: 320)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4824, file: !4825, line: 47, baseType: !256, size: 8, offset: 448)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4536, file: !105, line: 776, baseType: !120, size: 32, offset: 5120)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4536, file: !105, line: 778, baseType: !738, size: 32, offset: 5152)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4536, file: !105, line: 779, baseType: !462, size: 32, offset: 5184)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4536, file: !105, line: 781, baseType: !232, size: 32, offset: 5216)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4536, file: !105, line: 782, baseType: !177, size: 128, offset: 5248)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4536, file: !105, line: 784, baseType: !4932, size: 64, offset: 5376)
!4932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4933, size: 64)
!4933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4934)
!4934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4935, line: 52, size: 768, elements: !4936)
!4935 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4936 = !{!4937, !4938, !4939, !4940, !4941, !4945, !4949, !4950, !4951, !4952, !4956, !4960}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4934, file: !4935, line: 53, baseType: !502, size: 64)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4934, file: !4935, line: 55, baseType: !1002, size: 64, offset: 64)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4934, file: !4935, line: 56, baseType: !1002, size: 64, offset: 128)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4934, file: !4935, line: 58, baseType: !4552, size: 64, offset: 192)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4934, file: !4935, line: 59, baseType: !4942, size: 64, offset: 256)
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = !DISubroutineType(types: !4944)
!4944 = !{!512, !4555, !4561}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4934, file: !4935, line: 61, baseType: !4946, size: 64, offset: 320)
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4947, size: 64)
!4947 = !DISubroutineType(types: !4948)
!4948 = !{null, !4932}
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4934, file: !4935, line: 62, baseType: !4563, size: 64, offset: 384)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4934, file: !4935, line: 64, baseType: !4572, size: 64, offset: 448)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4934, file: !4935, line: 66, baseType: !1719, size: 64, offset: 512)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4934, file: !4935, line: 67, baseType: !4953, size: 64, offset: 576)
!4953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4954, size: 64)
!4954 = !DISubroutineType(types: !4955)
!4955 = !{!1302, !4555}
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4934, file: !4935, line: 69, baseType: !4957, size: 64, offset: 640)
!4957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4958, size: 64)
!4958 = !DISubroutineType(types: !4959)
!4959 = !{null, !4555, !1751, !1752}
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4934, file: !4935, line: 71, baseType: !4567, size: 64, offset: 704)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4536, file: !105, line: 785, baseType: !1002, size: 64, offset: 5440)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4536, file: !105, line: 787, baseType: !4563, size: 64, offset: 5504)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4536, file: !105, line: 788, baseType: !4964, size: 64, offset: 5568)
!4964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4965, size: 64)
!4965 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !105, line: 46, flags: DIFlagFwdDecl)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4536, file: !105, line: 789, baseType: !4967, size: 64, offset: 5632)
!4967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4968, size: 64)
!4968 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !105, line: 48, flags: DIFlagFwdDecl)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4536, file: !105, line: 791, baseType: !4970, size: 64, offset: 5696)
!4970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4971, size: 64)
!4971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !105, line: 597, size: 128, elements: !4972)
!4972 = !{!4973, !4974, !4975, !4976, !4977}
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4971, file: !105, line: 598, baseType: !127, size: 32)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4971, file: !105, line: 599, baseType: !136, size: 32, offset: 32)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4971, file: !105, line: 600, baseType: !141, size: 32, offset: 64)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4971, file: !105, line: 601, baseType: !499, size: 8, offset: 96)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4971, file: !105, line: 602, baseType: !499, size: 8, offset: 104)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4536, file: !105, line: 793, baseType: !146, size: 32, offset: 5760)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4536, file: !105, line: 795, baseType: !499, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4536, file: !105, line: 796, baseType: !499, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4536, file: !105, line: 797, baseType: !499, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4536, file: !105, line: 798, baseType: !499, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4536, file: !105, line: 799, baseType: !499, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4532, file: !4360, line: 71, baseType: !120, size: 32, offset: 64)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "use_dma_alloc", scope: !4532, file: !4360, line: 73, baseType: !499, size: 8, offset: 96)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "use_dma32", scope: !4532, file: !4360, line: 74, baseType: !499, size: 8, offset: 104)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !4532, file: !4360, line: 78, baseType: !4988, size: 14784, offset: 128)
!4988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4989, size: 14784, elements: !323)
!4989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4532, file: !4360, line: 76, size: 4928, elements: !4990)
!4990 = !{!4991}
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "orders", scope: !4989, file: !4360, line: 77, baseType: !4992, size: 4928)
!4992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4993, size: 4928, elements: !5002)
!4993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_pool_type", file: !4360, line: 49, size: 448, elements: !4994)
!4994 = !{!4995, !4997, !4998, !4999, !5000, !5001}
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !4993, file: !4360, line: 50, baseType: !4996, size: 64)
!4996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !4993, file: !4360, line: 51, baseType: !7, size: 32, offset: 64)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !4993, file: !4360, line: 52, baseType: !92, size: 32, offset: 96)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "shrinker_list", scope: !4993, file: !4360, line: 54, baseType: !177, size: 128, offset: 128)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4993, file: !4360, line: 56, baseType: !232, size: 32, offset: 256)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4993, file: !4360, line: 57, baseType: !177, size: 128, offset: 320)
!5002 = !{!5003}
!5003 = !DISubrange(count: 11)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "lru_lock", scope: !4345, file: !4346, line: 252, baseType: !232, size: 32, offset: 16640)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !4345, file: !4346, line: 257, baseType: !177, size: 128, offset: 16704)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "dev_mapping", scope: !4345, file: !4346, line: 263, baseType: !1026, size: 64, offset: 16832)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4345, file: !4346, line: 268, baseType: !2199, size: 64, offset: 16896)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !185, file: !153, line: 105, baseType: !152, size: 32, offset: 2880)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "page_alignment", scope: !185, file: !153, line: 106, baseType: !461, size: 32, offset: 2912)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !185, file: !153, line: 107, baseType: !4417, size: 64, offset: 2944)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !185, file: !153, line: 112, baseType: !191, size: 32, offset: 3008)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !185, file: !153, line: 117, baseType: !4399, size: 64, offset: 3072)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "ttm", scope: !185, file: !153, line: 118, baseType: !4358, size: 64, offset: 3136)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "deleted", scope: !185, file: !153, line: 119, baseType: !499, size: 8, offset: 3200)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_move", scope: !185, file: !153, line: 120, baseType: !5016, size: 64, offset: 3264)
!5016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5017, size: 64)
!5017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_lru_bulk_move", file: !4388, line: 255, size: 4096, elements: !5018)
!5018 = !{!5019}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !5017, file: !4388, line: 256, baseType: !5020, size: 4096)
!5020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5021, size: 4096, elements: !5025)
!5021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_lru_bulk_move_pos", file: !4388, line: 242, size: 128, elements: !5022)
!5022 = !{!5023, !5024}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5021, file: !4388, line: 243, baseType: !4399, size: 64)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !5021, file: !4388, line: 244, baseType: !4399, size: 64, offset: 64)
!5025 = !{!2768, !345}
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !185, file: !153, line: 121, baseType: !7, size: 32, offset: 3328)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !185, file: !153, line: 122, baseType: !7, size: 32, offset: 3360)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_delete", scope: !185, file: !153, line: 128, baseType: !1341, size: 256, offset: 3392)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !185, file: !153, line: 135, baseType: !4304, size: 64, offset: 3648)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "num_shared", scope: !173, file: !174, line: 51, baseType: !7, size: 32, offset: 192)
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5033)
!5033 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !181)
!5034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5033, size: 64)
!5036 = !{!0, !5037, !5039, !5041}
!5037 = !DIGlobalVariableExpression(var: !5038, expr: !DIExpression())
!5038 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_eu_reserve_buffers299", scope: !2, file: !3, line: 139, type: !171, isLocal: true, isDefinition: true)
!5039 = !DIGlobalVariableExpression(var: !5040, expr: !DIExpression())
!5040 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_eu_fence_buffer_objects300", scope: !2, file: !3, line: 161, type: !171, isLocal: true, isDefinition: true)
!5041 = !DIGlobalVariableExpression(var: !5042, expr: !DIExpression())
!5042 = distinct !DIGlobalVariable(scope: null, file: !153, line: 247, type: !5043, isLocal: true, isDefinition: true)
!5043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 200, elements: !5044)
!5044 = !{!5045}
!5045 = !DISubrange(count: 25)
!5046 = !{i32 7, !"Dwarf Version", i32 5}
!5047 = !{i32 2, !"Debug Info Version", i32 3}
!5048 = !{i32 1, !"wchar_size", i32 2}
!5049 = !{i32 8, !"cf-protection-branch", i32 1}
!5050 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5051 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5052 = !{i32 1, !"Code Model", i32 2}
!5053 = !{i32 1, !"override-stack-alignment", i32 8}
!5054 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5055 = distinct !DISubprogram(name: "ttm_eu_backoff_reservation", scope: !3, file: !3, line: 42, type: !5056, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5058)
!5056 = !DISubroutineType(types: !5057)
!5057 = !{null, !4218, !181}
!5058 = !{!5059, !5060, !5061, !5062, !5065, !5068}
!5059 = !DILocalVariable(name: "ticket", arg: 1, scope: !5055, file: !3, line: 42, type: !4218)
!5060 = !DILocalVariable(name: "list", arg: 2, scope: !5055, file: !3, line: 43, type: !181)
!5061 = !DILocalVariable(name: "entry", scope: !5055, file: !3, line: 45, type: !172)
!5062 = !DILocalVariable(name: "__mptr", scope: !5063, file: !3, line: 50, type: !171)
!5063 = distinct !DILexicalBlock(scope: !5064, file: !3, line: 50, column: 2)
!5064 = distinct !DILexicalBlock(scope: !5055, file: !3, line: 50, column: 2)
!5065 = !DILocalVariable(name: "bo", scope: !5066, file: !3, line: 51, type: !184)
!5066 = distinct !DILexicalBlock(scope: !5067, file: !3, line: 50, column: 41)
!5067 = distinct !DILexicalBlock(scope: !5064, file: !3, line: 50, column: 2)
!5068 = !DILocalVariable(name: "__mptr", scope: !5069, file: !3, line: 50, type: !171)
!5069 = distinct !DILexicalBlock(scope: !5067, file: !3, line: 50, column: 2)
!5070 = !DILocation(line: 42, column: 56, scope: !5055)
!5071 = !DILocation(line: 43, column: 23, scope: !5055)
!5072 = !DILocation(line: 45, column: 2, scope: !5055)
!5073 = !DILocation(line: 45, column: 30, scope: !5055)
!5074 = !DILocation(line: 47, column: 17, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5055, file: !3, line: 47, column: 6)
!5076 = !DILocation(line: 47, column: 6, scope: !5075)
!5077 = !DILocation(line: 47, column: 6, scope: !5055)
!5078 = !DILocation(line: 48, column: 3, scope: !5075)
!5079 = !DILocation(line: 50, column: 2, scope: !5063)
!5080 = !DILocation(line: 50, column: 2, scope: !5064)
!5081 = !DILocation(line: 50, column: 2, scope: !5067)
!5082 = !DILocation(line: 51, column: 3, scope: !5066)
!5083 = !DILocation(line: 51, column: 29, scope: !5066)
!5084 = !DILocation(line: 51, column: 34, scope: !5066)
!5085 = !DILocation(line: 51, column: 41, scope: !5066)
!5086 = !DILocation(line: 53, column: 36, scope: !5066)
!5087 = !DILocation(line: 53, column: 3, scope: !5066)
!5088 = !DILocation(line: 54, column: 19, scope: !5066)
!5089 = !DILocation(line: 54, column: 23, scope: !5066)
!5090 = !DILocation(line: 54, column: 28, scope: !5066)
!5091 = !DILocation(line: 54, column: 3, scope: !5066)
!5092 = !DILocation(line: 55, column: 2, scope: !5067)
!5093 = !DILocation(line: 55, column: 2, scope: !5066)
!5094 = !DILocation(line: 50, column: 2, scope: !5069)
!5095 = distinct !{!5095, !5080, !5096, !5097, !5098}
!5096 = !DILocation(line: 55, column: 2, scope: !5064)
!5097 = !{!"llvm.loop.mustprogress"}
!5098 = !{!"llvm.loop.unroll.disable"}
!5099 = !DILocation(line: 57, column: 6, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !5055, file: !3, line: 57, column: 6)
!5101 = !DILocation(line: 57, column: 6, scope: !5055)
!5102 = !DILocation(line: 58, column: 19, scope: !5100)
!5103 = !DILocation(line: 58, column: 3, scope: !5100)
!5104 = !DILocation(line: 59, column: 1, scope: !5055)
!5105 = distinct !DISubprogram(name: "list_empty", scope: !5106, file: !5106, line: 371, type: !5107, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5111)
!5106 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5107 = !DISubroutineType(types: !5108)
!5108 = !{!120, !5109}
!5109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5110, size: 64)
!5110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!5111 = !{!5112}
!5112 = !DILocalVariable(name: "head", arg: 1, scope: !5105, file: !5106, line: 371, type: !5109)
!5113 = !DILocation(line: 371, column: 54, scope: !5105)
!5114 = !DILocation(line: 373, column: 9, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5105, file: !5106, line: 373, column: 9)
!5116 = !DILocation(line: 373, column: 9, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5115, file: !5106, line: 373, column: 9)
!5118 = !DILocation(line: 373, column: 34, scope: !5105)
!5119 = !DILocation(line: 373, column: 31, scope: !5105)
!5120 = !DILocation(line: 373, column: 2, scope: !5105)
!5121 = distinct !DISubprogram(name: "ttm_bo_move_to_lru_tail_unlocked", scope: !153, file: !153, line: 291, type: !4418, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5122)
!5122 = !{!5123}
!5123 = !DILocalVariable(name: "bo", arg: 1, scope: !5121, file: !153, line: 291, type: !184)
!5124 = !DILocation(line: 291, column: 60, scope: !5121)
!5125 = !DILocation(line: 293, column: 13, scope: !5121)
!5126 = !DILocation(line: 293, column: 17, scope: !5121)
!5127 = !DILocation(line: 293, column: 23, scope: !5121)
!5128 = !DILocation(line: 293, column: 2, scope: !5121)
!5129 = !DILocation(line: 294, column: 26, scope: !5121)
!5130 = !DILocation(line: 294, column: 2, scope: !5121)
!5131 = !DILocation(line: 295, column: 15, scope: !5121)
!5132 = !DILocation(line: 295, column: 19, scope: !5121)
!5133 = !DILocation(line: 295, column: 25, scope: !5121)
!5134 = !DILocation(line: 295, column: 2, scope: !5121)
!5135 = !DILocation(line: 296, column: 1, scope: !5121)
!5136 = distinct !DISubprogram(name: "dma_resv_unlock", scope: !159, file: !159, line: 461, type: !5137, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5139)
!5137 = !DISubroutineType(types: !5138)
!5138 = !{null, !4209}
!5139 = !{!5140}
!5140 = !DILocalVariable(name: "obj", arg: 1, scope: !5136, file: !159, line: 461, type: !4209)
!5141 = !DILocation(line: 461, column: 53, scope: !5136)
!5142 = !DILocation(line: 463, column: 28, scope: !5136)
!5143 = !DILocation(line: 463, column: 2, scope: !5136)
!5144 = !DILocation(line: 464, column: 19, scope: !5136)
!5145 = !DILocation(line: 464, column: 24, scope: !5136)
!5146 = !DILocation(line: 464, column: 2, scope: !5136)
!5147 = !DILocation(line: 465, column: 1, scope: !5136)
!5148 = distinct !DISubprogram(name: "ww_acquire_fini", scope: !4214, file: !4214, line: 185, type: !5149, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5151)
!5149 = !DISubroutineType(types: !5150)
!5150 = !{null, !4218}
!5151 = !{!5152}
!5152 = !DILocalVariable(name: "ctx", arg: 1, scope: !5148, file: !4214, line: 185, type: !4218)
!5153 = !DILocation(line: 185, column: 59, scope: !5148)
!5154 = !DILocation(line: 203, column: 1, scope: !5148)
!5155 = distinct !DISubprogram(name: "ttm_eu_reserve_buffers", scope: !3, file: !3, line: 74, type: !5156, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5158)
!5156 = !DISubroutineType(types: !5157)
!5157 = !{!120, !4218, !181, !499, !181}
!5158 = !{!5159, !5160, !5161, !5162, !5163, !5164, !5165, !5168, !5171, !5172, !5175, !5177, !5179, !5180}
!5159 = !DILocalVariable(name: "ticket", arg: 1, scope: !5155, file: !3, line: 74, type: !4218)
!5160 = !DILocalVariable(name: "list", arg: 2, scope: !5155, file: !3, line: 75, type: !181)
!5161 = !DILocalVariable(name: "intr", arg: 3, scope: !5155, file: !3, line: 75, type: !499)
!5162 = !DILocalVariable(name: "dups", arg: 4, scope: !5155, file: !3, line: 76, type: !181)
!5163 = !DILocalVariable(name: "entry", scope: !5155, file: !3, line: 78, type: !172)
!5164 = !DILocalVariable(name: "ret", scope: !5155, file: !3, line: 79, type: !120)
!5165 = !DILocalVariable(name: "__mptr", scope: !5166, file: !3, line: 87, type: !171)
!5166 = distinct !DILexicalBlock(scope: !5167, file: !3, line: 87, column: 2)
!5167 = distinct !DILexicalBlock(scope: !5155, file: !3, line: 87, column: 2)
!5168 = !DILocalVariable(name: "bo", scope: !5169, file: !3, line: 88, type: !184)
!5169 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 87, column: 41)
!5170 = distinct !DILexicalBlock(scope: !5167, file: !3, line: 87, column: 2)
!5171 = !DILocalVariable(name: "num_fences", scope: !5169, file: !3, line: 89, type: !7)
!5172 = !DILocalVariable(name: "safe", scope: !5173, file: !3, line: 93, type: !172)
!5173 = distinct !DILexicalBlock(scope: !5174, file: !3, line: 92, column: 33)
!5174 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 92, column: 7)
!5175 = !DILocalVariable(name: "__mptr", scope: !5176, file: !3, line: 94, type: !171)
!5176 = distinct !DILexicalBlock(scope: !5173, file: !3, line: 94, column: 12)
!5177 = !DILocalVariable(name: "__UNIQUE_ID___x297", scope: !5178, file: !3, line: 100, type: !7)
!5178 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 100, column: 16)
!5179 = !DILocalVariable(name: "__UNIQUE_ID___y298", scope: !5178, file: !3, line: 100, type: !7)
!5180 = !DILocalVariable(name: "__mptr", scope: !5181, file: !3, line: 87, type: !171)
!5181 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 87, column: 2)
!5182 = !DILocation(line: 74, column: 51, scope: !5155)
!5183 = !DILocation(line: 75, column: 25, scope: !5155)
!5184 = !DILocation(line: 75, column: 36, scope: !5155)
!5185 = !DILocation(line: 76, column: 25, scope: !5155)
!5186 = !DILocation(line: 78, column: 2, scope: !5155)
!5187 = !DILocation(line: 78, column: 30, scope: !5155)
!5188 = !DILocation(line: 79, column: 2, scope: !5155)
!5189 = !DILocation(line: 79, column: 6, scope: !5155)
!5190 = !DILocation(line: 81, column: 17, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5155, file: !3, line: 81, column: 6)
!5192 = !DILocation(line: 81, column: 6, scope: !5191)
!5193 = !DILocation(line: 81, column: 6, scope: !5155)
!5194 = !DILocation(line: 82, column: 3, scope: !5191)
!5195 = !DILocation(line: 84, column: 6, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5155, file: !3, line: 84, column: 6)
!5197 = !DILocation(line: 84, column: 6, scope: !5155)
!5198 = !DILocation(line: 85, column: 19, scope: !5196)
!5199 = !DILocation(line: 85, column: 3, scope: !5196)
!5200 = !DILocation(line: 87, column: 2, scope: !5166)
!5201 = !DILocation(line: 87, column: 2, scope: !5167)
!5202 = !DILocation(line: 87, column: 2, scope: !5170)
!5203 = !DILocation(line: 88, column: 3, scope: !5169)
!5204 = !DILocation(line: 88, column: 29, scope: !5169)
!5205 = !DILocation(line: 88, column: 34, scope: !5169)
!5206 = !DILocation(line: 88, column: 41, scope: !5169)
!5207 = !DILocation(line: 89, column: 3, scope: !5169)
!5208 = !DILocation(line: 89, column: 16, scope: !5169)
!5209 = !DILocation(line: 91, column: 24, scope: !5169)
!5210 = !DILocation(line: 91, column: 28, scope: !5169)
!5211 = !{i8 0, i8 2}
!5212 = !DILocation(line: 91, column: 35, scope: !5169)
!5213 = !DILocation(line: 91, column: 42, scope: !5169)
!5214 = !DILocation(line: 91, column: 52, scope: !5169)
!5215 = !DILocation(line: 91, column: 9, scope: !5169)
!5216 = !DILocation(line: 91, column: 7, scope: !5169)
!5217 = !DILocation(line: 92, column: 7, scope: !5174)
!5218 = !DILocation(line: 92, column: 11, scope: !5174)
!5219 = !DILocation(line: 92, column: 24, scope: !5174)
!5220 = !DILocation(line: 92, column: 27, scope: !5174)
!5221 = !DILocation(line: 92, column: 7, scope: !5169)
!5222 = !DILocation(line: 93, column: 4, scope: !5173)
!5223 = !DILocation(line: 93, column: 32, scope: !5173)
!5224 = !DILocation(line: 93, column: 39, scope: !5173)
!5225 = !DILocation(line: 94, column: 12, scope: !5176)
!5226 = !DILocation(line: 94, column: 12, scope: !5173)
!5227 = !DILocation(line: 94, column: 10, scope: !5173)
!5228 = !DILocation(line: 95, column: 14, scope: !5173)
!5229 = !DILocation(line: 95, column: 20, scope: !5173)
!5230 = !DILocation(line: 95, column: 4, scope: !5173)
!5231 = !DILocation(line: 96, column: 14, scope: !5173)
!5232 = !DILocation(line: 96, column: 20, scope: !5173)
!5233 = !DILocation(line: 96, column: 26, scope: !5173)
!5234 = !DILocation(line: 96, column: 4, scope: !5173)
!5235 = !DILocation(line: 98, column: 3, scope: !5174)
!5236 = !DILocation(line: 100, column: 16, scope: !5178)
!5237 = !DILocation(line: 100, column: 16, scope: !5169)
!5238 = !DILocation(line: 100, column: 14, scope: !5169)
!5239 = !DILocation(line: 101, column: 8, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 101, column: 7)
!5241 = !DILocation(line: 101, column: 7, scope: !5169)
!5242 = !DILocation(line: 102, column: 34, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5240, file: !3, line: 101, column: 13)
!5244 = !DILocation(line: 102, column: 38, scope: !5243)
!5245 = !DILocation(line: 102, column: 43, scope: !5243)
!5246 = !DILocation(line: 103, column: 13, scope: !5243)
!5247 = !DILocation(line: 102, column: 10, scope: !5243)
!5248 = !DILocation(line: 102, column: 8, scope: !5243)
!5249 = !DILocation(line: 104, column: 9, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5243, file: !3, line: 104, column: 8)
!5251 = !DILocation(line: 104, column: 8, scope: !5243)
!5252 = !DILocation(line: 105, column: 5, scope: !5250)
!5253 = !DILocation(line: 106, column: 3, scope: !5243)
!5254 = !DILocation(line: 112, column: 38, scope: !5169)
!5255 = !DILocation(line: 112, column: 44, scope: !5169)
!5256 = !DILocation(line: 112, column: 3, scope: !5169)
!5257 = !DILocation(line: 114, column: 7, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 114, column: 7)
!5259 = !DILocation(line: 114, column: 11, scope: !5258)
!5260 = !DILocation(line: 114, column: 7, scope: !5169)
!5261 = !DILocation(line: 115, column: 34, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5258, file: !3, line: 114, column: 24)
!5263 = !DILocation(line: 115, column: 38, scope: !5262)
!5264 = !DILocation(line: 115, column: 44, scope: !5262)
!5265 = !DILocation(line: 115, column: 10, scope: !5262)
!5266 = !DILocation(line: 115, column: 8, scope: !5262)
!5267 = !DILocation(line: 116, column: 3, scope: !5262)
!5268 = !DILocation(line: 118, column: 8, scope: !5269)
!5269 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 118, column: 7)
!5270 = !DILocation(line: 118, column: 7, scope: !5169)
!5271 = !DILocation(line: 119, column: 34, scope: !5269)
!5272 = !DILocation(line: 119, column: 38, scope: !5269)
!5273 = !DILocation(line: 119, column: 43, scope: !5269)
!5274 = !DILocation(line: 120, column: 13, scope: !5269)
!5275 = !DILocation(line: 119, column: 10, scope: !5269)
!5276 = !DILocation(line: 119, column: 8, scope: !5269)
!5277 = !DILocation(line: 119, column: 4, scope: !5269)
!5278 = !DILocation(line: 122, column: 7, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 122, column: 7)
!5280 = !DILocation(line: 122, column: 7, scope: !5169)
!5281 = !DILocation(line: 123, column: 8, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5283, file: !3, line: 123, column: 8)
!5283 = distinct !DILexicalBlock(scope: !5279, file: !3, line: 122, column: 27)
!5284 = !DILocation(line: 123, column: 8, scope: !5283)
!5285 = !DILocation(line: 124, column: 21, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 123, column: 16)
!5287 = !DILocation(line: 124, column: 5, scope: !5286)
!5288 = !DILocation(line: 125, column: 21, scope: !5286)
!5289 = !DILocation(line: 125, column: 5, scope: !5286)
!5290 = !DILocation(line: 126, column: 4, scope: !5286)
!5291 = !DILocation(line: 127, column: 11, scope: !5283)
!5292 = !DILocation(line: 127, column: 4, scope: !5283)
!5293 = !DILocation(line: 133, column: 13, scope: !5169)
!5294 = !DILocation(line: 133, column: 20, scope: !5169)
!5295 = !DILocation(line: 133, column: 3, scope: !5169)
!5296 = !DILocation(line: 134, column: 13, scope: !5169)
!5297 = !DILocation(line: 134, column: 20, scope: !5169)
!5298 = !DILocation(line: 134, column: 26, scope: !5169)
!5299 = !DILocation(line: 134, column: 3, scope: !5169)
!5300 = !DILocation(line: 135, column: 2, scope: !5170)
!5301 = !DILocation(line: 135, column: 2, scope: !5169)
!5302 = !DILocation(line: 87, column: 2, scope: !5181)
!5303 = distinct !{!5303, !5201, !5304, !5097, !5098}
!5304 = !DILocation(line: 135, column: 2, scope: !5167)
!5305 = !DILocation(line: 137, column: 2, scope: !5155)
!5306 = !DILocation(line: 138, column: 1, scope: !5155)
!5307 = distinct !DISubprogram(name: "ww_acquire_init", scope: !4214, file: !4214, line: 132, type: !5308, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5319)
!5308 = !DISubroutineType(types: !5309)
!5309 = !{null, !4218, !5310}
!5310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5311, size: 64)
!5311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_class", file: !4214, line: 38, size: 256, elements: !5312)
!5312 = !{!5313, !5314, !5315, !5316, !5317, !5318}
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !5311, file: !4214, line: 39, baseType: !273, size: 64)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_key", scope: !5311, file: !4214, line: 40, baseType: !2248, offset: 64)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "mutex_key", scope: !5311, file: !4214, line: 41, baseType: !2248, offset: 64)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_name", scope: !5311, file: !4214, line: 42, baseType: !502, size: 64, offset: 64)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "mutex_name", scope: !5311, file: !4214, line: 43, baseType: !502, size: 64, offset: 128)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !5311, file: !4214, line: 44, baseType: !7, size: 32, offset: 192)
!5319 = !{!5320, !5321}
!5320 = !DILocalVariable(name: "ctx", arg: 1, scope: !5307, file: !4214, line: 132, type: !4218)
!5321 = !DILocalVariable(name: "ww_class", arg: 2, scope: !5307, file: !4214, line: 133, type: !5310)
!5322 = !DILocation(line: 132, column: 59, scope: !5307)
!5323 = !DILocation(line: 133, column: 25, scope: !5307)
!5324 = !DILocation(line: 135, column: 14, scope: !5307)
!5325 = !DILocation(line: 135, column: 2, scope: !5307)
!5326 = !DILocation(line: 135, column: 7, scope: !5307)
!5327 = !DILocation(line: 135, column: 12, scope: !5307)
!5328 = !DILocation(line: 136, column: 47, scope: !5307)
!5329 = !DILocation(line: 136, column: 57, scope: !5307)
!5330 = !DILocation(line: 136, column: 15, scope: !5307)
!5331 = !DILocation(line: 136, column: 2, scope: !5307)
!5332 = !DILocation(line: 136, column: 7, scope: !5307)
!5333 = !DILocation(line: 136, column: 13, scope: !5307)
!5334 = !DILocation(line: 137, column: 2, scope: !5307)
!5335 = !DILocation(line: 137, column: 7, scope: !5307)
!5336 = !DILocation(line: 137, column: 16, scope: !5307)
!5337 = !DILocation(line: 138, column: 2, scope: !5307)
!5338 = !DILocation(line: 138, column: 7, scope: !5307)
!5339 = !DILocation(line: 138, column: 15, scope: !5307)
!5340 = !DILocation(line: 139, column: 21, scope: !5307)
!5341 = !DILocation(line: 139, column: 31, scope: !5307)
!5342 = !DILocation(line: 139, column: 2, scope: !5307)
!5343 = !DILocation(line: 139, column: 7, scope: !5307)
!5344 = !DILocation(line: 139, column: 19, scope: !5307)
!5345 = !DILocation(line: 155, column: 1, scope: !5307)
!5346 = distinct !DISubprogram(name: "ttm_bo_reserve", scope: !153, file: !153, line: 238, type: !5347, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5349)
!5347 = !DISubroutineType(types: !5348)
!5348 = !{!120, !184, !499, !499, !4218}
!5349 = !{!5350, !5351, !5352, !5353, !5354, !5355, !5358, !5361}
!5350 = !DILocalVariable(name: "bo", arg: 1, scope: !5346, file: !153, line: 238, type: !184)
!5351 = !DILocalVariable(name: "interruptible", arg: 2, scope: !5346, file: !153, line: 239, type: !499)
!5352 = !DILocalVariable(name: "no_wait", arg: 3, scope: !5346, file: !153, line: 239, type: !499)
!5353 = !DILocalVariable(name: "ticket", arg: 4, scope: !5346, file: !153, line: 240, type: !4218)
!5354 = !DILocalVariable(name: "ret", scope: !5346, file: !153, line: 242, type: !120)
!5355 = !DILocalVariable(name: "success", scope: !5356, file: !153, line: 245, type: !499)
!5356 = distinct !DILexicalBlock(scope: !5357, file: !153, line: 244, column: 15)
!5357 = distinct !DILexicalBlock(scope: !5346, file: !153, line: 244, column: 6)
!5358 = !DILocalVariable(name: "__ret_warn_on", scope: !5359, file: !153, line: 247, type: !120)
!5359 = distinct !DILexicalBlock(scope: !5360, file: !153, line: 247, column: 7)
!5360 = distinct !DILexicalBlock(scope: !5356, file: !153, line: 247, column: 7)
!5361 = !DILocalVariable(name: "__flags", scope: !5362, file: !153, line: 247, type: !120)
!5362 = distinct !DILexicalBlock(scope: !5363, file: !153, line: 247, column: 7)
!5363 = distinct !DILexicalBlock(scope: !5359, file: !153, line: 247, column: 7)
!5364 = !DILocation(line: 238, column: 60, scope: !5346)
!5365 = !DILocation(line: 239, column: 11, scope: !5346)
!5366 = !DILocation(line: 239, column: 31, scope: !5346)
!5367 = !DILocation(line: 240, column: 29, scope: !5346)
!5368 = !DILocation(line: 242, column: 2, scope: !5346)
!5369 = !DILocation(line: 242, column: 6, scope: !5346)
!5370 = !DILocation(line: 244, column: 6, scope: !5357)
!5371 = !DILocation(line: 244, column: 6, scope: !5346)
!5372 = !DILocation(line: 245, column: 3, scope: !5356)
!5373 = !DILocation(line: 245, column: 8, scope: !5356)
!5374 = !DILocation(line: 247, column: 7, scope: !5359)
!5375 = !DILocation(line: 247, column: 7, scope: !5363)
!5376 = !DILocation(line: 247, column: 7, scope: !5362)
!5377 = !DILocation(line: 247, column: 7, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5362, file: !153, line: 247, column: 7)
!5379 = !DILocation(line: 247, column: 7, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5362, file: !153, line: 247, column: 7)
!5381 = !{i64 2154861383, i64 2154861412, i64 2154861458, i64 2154861516, i64 2154861570, i64 2154861624, i64 2154861679, i64 2154861710, i64 2154862018, i64 2154862024, i64 2154862071, i64 2154862094, i64 2154862120}
!5382 = !DILocation(line: 247, column: 7, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5362, file: !153, line: 247, column: 7)
!5384 = !DILocation(line: 247, column: 7, scope: !5360)
!5385 = !DILocation(line: 247, column: 7, scope: !5356)
!5386 = !DILocation(line: 248, column: 4, scope: !5360)
!5387 = !DILocation(line: 250, column: 30, scope: !5356)
!5388 = !DILocation(line: 250, column: 34, scope: !5356)
!5389 = !DILocation(line: 250, column: 39, scope: !5356)
!5390 = !DILocation(line: 250, column: 13, scope: !5356)
!5391 = !DILocation(line: 250, column: 11, scope: !5356)
!5392 = !DILocation(line: 251, column: 10, scope: !5356)
!5393 = !DILocation(line: 251, column: 3, scope: !5356)
!5394 = !DILocation(line: 252, column: 2, scope: !5357)
!5395 = !DILocation(line: 254, column: 6, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5346, file: !153, line: 254, column: 6)
!5397 = !DILocation(line: 254, column: 6, scope: !5346)
!5398 = !DILocation(line: 255, column: 37, scope: !5396)
!5399 = !DILocation(line: 255, column: 41, scope: !5396)
!5400 = !DILocation(line: 255, column: 46, scope: !5396)
!5401 = !DILocation(line: 255, column: 52, scope: !5396)
!5402 = !DILocation(line: 255, column: 9, scope: !5396)
!5403 = !DILocation(line: 255, column: 7, scope: !5396)
!5404 = !DILocation(line: 255, column: 3, scope: !5396)
!5405 = !DILocation(line: 257, column: 23, scope: !5396)
!5406 = !DILocation(line: 257, column: 27, scope: !5396)
!5407 = !DILocation(line: 257, column: 32, scope: !5396)
!5408 = !DILocation(line: 257, column: 38, scope: !5396)
!5409 = !DILocation(line: 257, column: 9, scope: !5396)
!5410 = !DILocation(line: 257, column: 7, scope: !5396)
!5411 = !DILocation(line: 258, column: 6, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5346, file: !153, line: 258, column: 6)
!5413 = !DILocation(line: 258, column: 10, scope: !5412)
!5414 = !DILocation(line: 258, column: 6, scope: !5346)
!5415 = !DILocation(line: 259, column: 3, scope: !5412)
!5416 = !DILocation(line: 260, column: 9, scope: !5346)
!5417 = !DILocation(line: 260, column: 2, scope: !5346)
!5418 = !DILocation(line: 261, column: 1, scope: !5346)
!5419 = distinct !DISubprogram(name: "list_del", scope: !5106, file: !5106, line: 227, type: !5420, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5422)
!5420 = !DISubroutineType(types: !5421)
!5421 = !{null, !181}
!5422 = !{!5423}
!5423 = !DILocalVariable(name: "entry", arg: 1, scope: !5419, file: !5106, line: 227, type: !181)
!5424 = !DILocation(line: 227, column: 47, scope: !5419)
!5425 = !DILocation(line: 229, column: 19, scope: !5419)
!5426 = !DILocation(line: 229, column: 2, scope: !5419)
!5427 = !DILocation(line: 230, column: 2, scope: !5419)
!5428 = !DILocation(line: 230, column: 9, scope: !5419)
!5429 = !DILocation(line: 230, column: 14, scope: !5419)
!5430 = !DILocation(line: 231, column: 2, scope: !5419)
!5431 = !DILocation(line: 231, column: 9, scope: !5419)
!5432 = !DILocation(line: 231, column: 14, scope: !5419)
!5433 = !DILocation(line: 232, column: 1, scope: !5419)
!5434 = distinct !DISubprogram(name: "list_add", scope: !5106, file: !5106, line: 167, type: !5435, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5437)
!5435 = !DISubroutineType(types: !5436)
!5436 = !{null, !181, !181}
!5437 = !{!5438, !5439}
!5438 = !DILocalVariable(name: "new", arg: 1, scope: !5434, file: !5106, line: 167, type: !181)
!5439 = !DILocalVariable(name: "head", arg: 2, scope: !5434, file: !5106, line: 167, type: !181)
!5440 = !DILocation(line: 167, column: 47, scope: !5434)
!5441 = !DILocation(line: 167, column: 70, scope: !5434)
!5442 = !DILocation(line: 169, column: 13, scope: !5434)
!5443 = !DILocation(line: 169, column: 18, scope: !5434)
!5444 = !DILocation(line: 169, column: 24, scope: !5434)
!5445 = !DILocation(line: 169, column: 30, scope: !5434)
!5446 = !DILocation(line: 169, column: 2, scope: !5434)
!5447 = !DILocation(line: 170, column: 1, scope: !5434)
!5448 = !DISubprogram(name: "dma_resv_reserve_fences", scope: !159, file: !159, line: 469, type: !5449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5449 = !DISubroutineType(types: !5450)
!5450 = !{!120, !4209, !7}
!5451 = distinct !DISubprogram(name: "ttm_eu_backoff_reservation_reverse", scope: !3, file: !3, line: 32, type: !5452, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5454)
!5452 = !DISubroutineType(types: !5453)
!5453 = !{null, !181, !172}
!5454 = !{!5455, !5456, !5457, !5460, !5463}
!5455 = !DILocalVariable(name: "list", arg: 1, scope: !5451, file: !3, line: 32, type: !181)
!5456 = !DILocalVariable(name: "entry", arg: 2, scope: !5451, file: !3, line: 33, type: !172)
!5457 = !DILocalVariable(name: "__mptr", scope: !5458, file: !3, line: 35, type: !171)
!5458 = distinct !DILexicalBlock(scope: !5459, file: !3, line: 35, column: 2)
!5459 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 35, column: 2)
!5460 = !DILocalVariable(name: "bo", scope: !5461, file: !3, line: 36, type: !184)
!5461 = distinct !DILexicalBlock(scope: !5462, file: !3, line: 35, column: 58)
!5462 = distinct !DILexicalBlock(scope: !5459, file: !3, line: 35, column: 2)
!5463 = !DILocalVariable(name: "__mptr", scope: !5464, file: !3, line: 35, type: !171)
!5464 = distinct !DILexicalBlock(scope: !5462, file: !3, line: 35, column: 2)
!5465 = !DILocation(line: 32, column: 66, scope: !5451)
!5466 = !DILocation(line: 33, column: 40, scope: !5451)
!5467 = !DILocation(line: 35, column: 2, scope: !5458)
!5468 = !DILocation(line: 35, column: 2, scope: !5459)
!5469 = !DILocation(line: 35, column: 2, scope: !5462)
!5470 = !DILocation(line: 36, column: 3, scope: !5461)
!5471 = !DILocation(line: 36, column: 29, scope: !5461)
!5472 = !DILocation(line: 36, column: 34, scope: !5461)
!5473 = !DILocation(line: 36, column: 41, scope: !5461)
!5474 = !DILocation(line: 38, column: 19, scope: !5461)
!5475 = !DILocation(line: 38, column: 23, scope: !5461)
!5476 = !DILocation(line: 38, column: 28, scope: !5461)
!5477 = !DILocation(line: 38, column: 3, scope: !5461)
!5478 = !DILocation(line: 39, column: 2, scope: !5462)
!5479 = !DILocation(line: 39, column: 2, scope: !5461)
!5480 = !DILocation(line: 35, column: 2, scope: !5464)
!5481 = distinct !{!5481, !5468, !5482, !5097, !5098}
!5482 = !DILocation(line: 39, column: 2, scope: !5459)
!5483 = !DILocation(line: 40, column: 1, scope: !5451)
!5484 = distinct !DISubprogram(name: "ttm_bo_reserve_slowpath", scope: !153, file: !153, line: 273, type: !5485, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5487)
!5485 = !DISubroutineType(types: !5486)
!5486 = !{!120, !184, !499, !4218}
!5487 = !{!5488, !5489, !5490, !5491}
!5488 = !DILocalVariable(name: "bo", arg: 1, scope: !5484, file: !153, line: 273, type: !184)
!5489 = !DILocalVariable(name: "interruptible", arg: 2, scope: !5484, file: !153, line: 274, type: !499)
!5490 = !DILocalVariable(name: "ticket", arg: 3, scope: !5484, file: !153, line: 275, type: !4218)
!5491 = !DILocalVariable(name: "ret", scope: !5492, file: !153, line: 278, type: !120)
!5492 = distinct !DILexicalBlock(scope: !5493, file: !153, line: 277, column: 21)
!5493 = distinct !DILexicalBlock(scope: !5484, file: !153, line: 277, column: 6)
!5494 = !DILocation(line: 273, column: 69, scope: !5484)
!5495 = !DILocation(line: 274, column: 13, scope: !5484)
!5496 = !DILocation(line: 275, column: 31, scope: !5484)
!5497 = !DILocation(line: 277, column: 6, scope: !5493)
!5498 = !DILocation(line: 277, column: 6, scope: !5484)
!5499 = !DILocation(line: 278, column: 3, scope: !5492)
!5500 = !DILocation(line: 278, column: 7, scope: !5492)
!5501 = !DILocation(line: 278, column: 46, scope: !5492)
!5502 = !DILocation(line: 278, column: 50, scope: !5492)
!5503 = !DILocation(line: 278, column: 55, scope: !5492)
!5504 = !DILocation(line: 279, column: 11, scope: !5492)
!5505 = !DILocation(line: 278, column: 13, scope: !5492)
!5506 = !DILocation(line: 280, column: 7, scope: !5507)
!5507 = distinct !DILexicalBlock(scope: !5492, file: !153, line: 280, column: 7)
!5508 = !DILocation(line: 280, column: 11, scope: !5507)
!5509 = !DILocation(line: 280, column: 7, scope: !5492)
!5510 = !DILocation(line: 281, column: 8, scope: !5507)
!5511 = !DILocation(line: 281, column: 4, scope: !5507)
!5512 = !DILocation(line: 282, column: 10, scope: !5492)
!5513 = !DILocation(line: 282, column: 3, scope: !5492)
!5514 = !DILocation(line: 283, column: 2, scope: !5493)
!5515 = !DILocation(line: 284, column: 21, scope: !5484)
!5516 = !DILocation(line: 284, column: 25, scope: !5484)
!5517 = !DILocation(line: 284, column: 30, scope: !5484)
!5518 = !DILocation(line: 284, column: 36, scope: !5484)
!5519 = !DILocation(line: 284, column: 2, scope: !5484)
!5520 = !DILocation(line: 285, column: 2, scope: !5484)
!5521 = !DILocation(line: 286, column: 1, scope: !5484)
!5522 = distinct !DISubprogram(name: "ww_acquire_done", scope: !4214, file: !4214, line: 168, type: !5149, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5523)
!5523 = !{!5524}
!5524 = !DILocalVariable(name: "ctx", arg: 1, scope: !5522, file: !4214, line: 168, type: !4218)
!5525 = !DILocation(line: 168, column: 59, scope: !5522)
!5526 = !DILocation(line: 176, column: 1, scope: !5522)
!5527 = distinct !DISubprogram(name: "ttm_eu_fence_buffer_objects", scope: !3, file: !3, line: 141, type: !5528, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5530)
!5528 = !DISubroutineType(types: !5529)
!5529 = !{null, !4218, !181, !4471}
!5530 = !{!5531, !5532, !5533, !5534, !5535, !5538, !5541}
!5531 = !DILocalVariable(name: "ticket", arg: 1, scope: !5527, file: !3, line: 141, type: !4218)
!5532 = !DILocalVariable(name: "list", arg: 2, scope: !5527, file: !3, line: 142, type: !181)
!5533 = !DILocalVariable(name: "fence", arg: 3, scope: !5527, file: !3, line: 143, type: !4471)
!5534 = !DILocalVariable(name: "entry", scope: !5527, file: !3, line: 145, type: !172)
!5535 = !DILocalVariable(name: "__mptr", scope: !5536, file: !3, line: 150, type: !171)
!5536 = distinct !DILexicalBlock(scope: !5537, file: !3, line: 150, column: 2)
!5537 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 150, column: 2)
!5538 = !DILocalVariable(name: "bo", scope: !5539, file: !3, line: 151, type: !184)
!5539 = distinct !DILexicalBlock(scope: !5540, file: !3, line: 150, column: 41)
!5540 = distinct !DILexicalBlock(scope: !5537, file: !3, line: 150, column: 2)
!5541 = !DILocalVariable(name: "__mptr", scope: !5542, file: !3, line: 150, type: !171)
!5542 = distinct !DILexicalBlock(scope: !5540, file: !3, line: 150, column: 2)
!5543 = !DILocation(line: 141, column: 57, scope: !5527)
!5544 = !DILocation(line: 142, column: 24, scope: !5527)
!5545 = !DILocation(line: 143, column: 24, scope: !5527)
!5546 = !DILocation(line: 145, column: 2, scope: !5527)
!5547 = !DILocation(line: 145, column: 30, scope: !5527)
!5548 = !DILocation(line: 147, column: 17, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 147, column: 6)
!5550 = !DILocation(line: 147, column: 6, scope: !5549)
!5551 = !DILocation(line: 147, column: 6, scope: !5527)
!5552 = !DILocation(line: 148, column: 3, scope: !5549)
!5553 = !DILocation(line: 150, column: 2, scope: !5536)
!5554 = !DILocation(line: 150, column: 2, scope: !5537)
!5555 = !DILocation(line: 150, column: 2, scope: !5540)
!5556 = !DILocation(line: 151, column: 3, scope: !5539)
!5557 = !DILocation(line: 151, column: 29, scope: !5539)
!5558 = !DILocation(line: 151, column: 34, scope: !5539)
!5559 = !DILocation(line: 151, column: 41, scope: !5539)
!5560 = !DILocation(line: 153, column: 22, scope: !5539)
!5561 = !DILocation(line: 153, column: 26, scope: !5539)
!5562 = !DILocation(line: 153, column: 31, scope: !5539)
!5563 = !DILocation(line: 153, column: 37, scope: !5539)
!5564 = !DILocation(line: 153, column: 44, scope: !5539)
!5565 = !DILocation(line: 153, column: 51, scope: !5539)
!5566 = !DILocation(line: 153, column: 3, scope: !5539)
!5567 = !DILocation(line: 155, column: 36, scope: !5539)
!5568 = !DILocation(line: 155, column: 3, scope: !5539)
!5569 = !DILocation(line: 156, column: 19, scope: !5539)
!5570 = !DILocation(line: 156, column: 23, scope: !5539)
!5571 = !DILocation(line: 156, column: 28, scope: !5539)
!5572 = !DILocation(line: 156, column: 3, scope: !5539)
!5573 = !DILocation(line: 157, column: 2, scope: !5540)
!5574 = !DILocation(line: 157, column: 2, scope: !5539)
!5575 = !DILocation(line: 150, column: 2, scope: !5542)
!5576 = distinct !{!5576, !5554, !5577, !5097, !5098}
!5577 = !DILocation(line: 157, column: 2, scope: !5537)
!5578 = !DILocation(line: 158, column: 6, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 158, column: 6)
!5580 = !DILocation(line: 158, column: 6, scope: !5527)
!5581 = !DILocation(line: 159, column: 19, scope: !5579)
!5582 = !DILocation(line: 159, column: 3, scope: !5579)
!5583 = !DILocation(line: 160, column: 1, scope: !5527)
!5584 = !DISubprogram(name: "dma_resv_add_fence", scope: !159, file: !159, line: 470, type: !5585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5585 = !DISubroutineType(types: !5586)
!5586 = !{null, !4209, !4471, !158}
!5587 = distinct !DISubprogram(name: "spin_lock", scope: !5588, file: !5588, line: 349, type: !5589, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5591)
!5588 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5589 = !DISubroutineType(types: !5590)
!5590 = !{null, !1484}
!5591 = !{!5592}
!5592 = !DILocalVariable(name: "lock", arg: 1, scope: !5587, file: !5588, line: 349, type: !1484)
!5593 = !DILocation(line: 349, column: 51, scope: !5587)
!5594 = !DILocation(line: 351, column: 2, scope: !5587)
!5595 = !DILocation(line: 352, column: 1, scope: !5587)
!5596 = !DISubprogram(name: "ttm_bo_move_to_lru_tail", scope: !153, file: !153, line: 288, type: !4418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5597 = distinct !DISubprogram(name: "spin_unlock", scope: !5588, file: !5588, line: 389, type: !5589, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5598)
!5598 = !{!5599}
!5599 = !DILocalVariable(name: "lock", arg: 1, scope: !5597, file: !5588, line: 389, type: !1484)
!5600 = !DILocation(line: 389, column: 53, scope: !5597)
!5601 = !DILocation(line: 391, column: 2, scope: !5597)
!5602 = !DILocation(line: 392, column: 1, scope: !5597)
!5603 = !DISubprogram(name: "_raw_spin_lock", scope: !5604, file: !5604, line: 22, type: !5605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5604 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5605 = !DISubroutineType(types: !5606)
!5606 = !{null, !5607}
!5607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!5608 = !DISubprogram(name: "_raw_spin_unlock", scope: !5604, file: !5604, line: 39, type: !5605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5609 = distinct !DISubprogram(name: "dma_resv_reset_max_fences", scope: !159, file: !159, line: 317, type: !5137, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5610)
!5610 = !{!5611}
!5611 = !DILocalVariable(name: "obj", arg: 1, scope: !5609, file: !159, line: 317, type: !4209)
!5612 = !DILocation(line: 317, column: 63, scope: !5609)
!5613 = !DILocation(line: 317, column: 69, scope: !5609)
!5614 = !DISubprogram(name: "ww_mutex_unlock", scope: !4214, file: !4214, line: 338, type: !5615, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5615 = !DISubroutineType(types: !5616)
!5616 = !{null, !5617}
!5617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!5618 = distinct !DISubprogram(name: "get_current", scope: !5619, file: !5619, line: 39, type: !5620, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5622)
!5619 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!5620 = !DISubroutineType(types: !5621)
!5621 = !{!2613}
!5622 = !{!5623, !5625, !5627}
!5623 = !DILocalVariable(name: "pscr_ret__", scope: !5624, file: !5619, line: 41, type: !2613)
!5624 = distinct !DILexicalBlock(scope: !5618, file: !5619, line: 41, column: 9)
!5625 = !DILocalVariable(name: "__vpp_verify", scope: !5626, file: !5619, line: 41, type: !1302)
!5626 = distinct !DILexicalBlock(scope: !5624, file: !5619, line: 41, column: 9)
!5627 = !DILocalVariable(name: "pfo_val__", scope: !5628, file: !5619, line: 41, type: !404)
!5628 = distinct !DILexicalBlock(scope: !5624, file: !5619, line: 41, column: 9)
!5629 = !DILocation(line: 41, column: 9, scope: !5624)
!5630 = !DILocation(line: 41, column: 9, scope: !5626)
!5631 = !DILocation(line: 41, column: 9, scope: !5628)
!5632 = !{i64 2148306063}
!5633 = !DILocation(line: 41, column: 9, scope: !5618)
!5634 = !DILocation(line: 41, column: 2, scope: !5618)
!5635 = distinct !DISubprogram(name: "atomic_long_inc_return_relaxed", scope: !5636, file: !5636, line: 3631, type: !5637, scopeLine: 3632, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5639)
!5636 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5637 = !DISubroutineType(types: !5638)
!5638 = !{!778, !3897}
!5639 = !{!5640}
!5640 = !DILocalVariable(name: "v", arg: 1, scope: !5635, file: !5636, line: 3631, type: !3897)
!5641 = !DILocation(line: 3631, column: 47, scope: !5635)
!5642 = !DILocation(line: 3633, column: 31, scope: !5635)
!5643 = !DILocation(line: 3633, column: 2, scope: !5635)
!5644 = !DILocation(line: 3634, column: 44, scope: !5635)
!5645 = !DILocation(line: 3634, column: 9, scope: !5635)
!5646 = !DILocation(line: 3634, column: 2, scope: !5635)
!5647 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5648, file: !5648, line: 94, type: !5649, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5654)
!5648 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5649 = !DISubroutineType(types: !5650)
!5650 = !{null, !5651, !820}
!5651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5652, size: 64)
!5652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5653)
!5653 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5654 = !{!5655, !5656}
!5655 = !DILocalVariable(name: "v", arg: 1, scope: !5647, file: !5648, line: 94, type: !5651)
!5656 = !DILocalVariable(name: "size", arg: 2, scope: !5647, file: !5648, line: 94, type: !820)
!5657 = !DILocation(line: 94, column: 79, scope: !5647)
!5658 = !DILocation(line: 94, column: 89, scope: !5647)
!5659 = !DILocation(line: 96, column: 20, scope: !5647)
!5660 = !DILocation(line: 96, column: 23, scope: !5647)
!5661 = !DILocation(line: 96, column: 2, scope: !5647)
!5662 = !DILocation(line: 97, column: 2, scope: !5647)
!5663 = !DILocation(line: 98, column: 1, scope: !5647)
!5664 = distinct !DISubprogram(name: "raw_atomic_long_inc_return_relaxed", scope: !274, file: !274, line: 575, type: !5637, scopeLine: 576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5665)
!5665 = !{!5666}
!5666 = !DILocalVariable(name: "v", arg: 1, scope: !5664, file: !274, line: 575, type: !3897)
!5667 = !DILocation(line: 575, column: 51, scope: !5664)
!5668 = !DILocation(line: 578, column: 41, scope: !5664)
!5669 = !DILocation(line: 578, column: 9, scope: !5664)
!5670 = !DILocation(line: 578, column: 2, scope: !5664)
!5671 = distinct !DISubprogram(name: "kasan_check_write", scope: !5672, file: !5672, line: 44, type: !5673, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5675)
!5672 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5673 = !DISubroutineType(types: !5674)
!5674 = !{!499, !5651, !7}
!5675 = !{!5676, !5677}
!5676 = !DILocalVariable(name: "p", arg: 1, scope: !5671, file: !5672, line: 44, type: !5651)
!5677 = !DILocalVariable(name: "size", arg: 2, scope: !5671, file: !5672, line: 44, type: !7)
!5678 = !DILocation(line: 44, column: 59, scope: !5671)
!5679 = !DILocation(line: 44, column: 75, scope: !5671)
!5680 = !DILocation(line: 46, column: 2, scope: !5671)
!5681 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5682, file: !5682, line: 229, type: !5683, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5685)
!5682 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5683 = !DISubroutineType(types: !5684)
!5684 = !{null, !5651, !820, !120}
!5685 = !{!5686, !5687, !5688}
!5686 = !DILocalVariable(name: "ptr", arg: 1, scope: !5681, file: !5682, line: 229, type: !5651)
!5687 = !DILocalVariable(name: "size", arg: 2, scope: !5681, file: !5682, line: 229, type: !820)
!5688 = !DILocalVariable(name: "type", arg: 3, scope: !5681, file: !5682, line: 230, type: !120)
!5689 = !DILocation(line: 229, column: 60, scope: !5681)
!5690 = !DILocation(line: 229, column: 72, scope: !5681)
!5691 = !DILocation(line: 230, column: 15, scope: !5681)
!5692 = !DILocation(line: 230, column: 23, scope: !5681)
!5693 = distinct !DISubprogram(name: "raw_atomic64_inc_return_relaxed", scope: !5694, file: !5694, line: 3185, type: !5695, scopeLine: 3186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5698)
!5694 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5695 = !DISubroutineType(types: !5696)
!5696 = !{!279, !5697}
!5697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!5698 = !{!5699}
!5699 = !DILocalVariable(name: "v", arg: 1, scope: !5693, file: !5694, line: 3185, type: !5697)
!5700 = !DILocation(line: 3185, column: 45, scope: !5693)
!5701 = !DILocation(line: 3192, column: 44, scope: !5693)
!5702 = !DILocation(line: 3192, column: 9, scope: !5693)
!5703 = !DILocation(line: 3192, column: 2, scope: !5693)
!5704 = distinct !DISubprogram(name: "raw_atomic64_add_return_relaxed", scope: !5694, file: !5694, line: 2740, type: !5705, scopeLine: 2741, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5707)
!5705 = !DISubroutineType(types: !5706)
!5706 = !{!279, !279, !5697}
!5707 = !{!5708, !5709}
!5708 = !DILocalVariable(name: "i", arg: 1, scope: !5704, file: !5694, line: 2740, type: !279)
!5709 = !DILocalVariable(name: "v", arg: 2, scope: !5704, file: !5694, line: 2740, type: !5697)
!5710 = !DILocation(line: 2740, column: 37, scope: !5704)
!5711 = !DILocation(line: 2740, column: 52, scope: !5704)
!5712 = !DILocation(line: 2745, column: 34, scope: !5704)
!5713 = !DILocation(line: 2745, column: 37, scope: !5704)
!5714 = !DILocation(line: 2745, column: 9, scope: !5704)
!5715 = !DILocation(line: 2745, column: 2, scope: !5704)
!5716 = distinct !DISubprogram(name: "arch_atomic64_add_return", scope: !5717, file: !5717, line: 77, type: !5705, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5718)
!5717 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!5718 = !{!5719, !5720, !5721}
!5719 = !DILocalVariable(name: "i", arg: 1, scope: !5716, file: !5717, line: 77, type: !279)
!5720 = !DILocalVariable(name: "v", arg: 2, scope: !5716, file: !5717, line: 77, type: !5697)
!5721 = !DILocalVariable(name: "__ret", scope: !5722, file: !5717, line: 79, type: !279)
!5722 = distinct !DILexicalBlock(scope: !5716, file: !5717, line: 79, column: 13)
!5723 = !DILocation(line: 77, column: 57, scope: !5716)
!5724 = !DILocation(line: 77, column: 72, scope: !5716)
!5725 = !DILocation(line: 79, column: 9, scope: !5716)
!5726 = !DILocation(line: 79, column: 13, scope: !5722)
!5727 = !{i64 2148883686, i64 2148883725, i64 2148883746, i64 2148883783, i64 2148883806, i64 2148883815}
!5728 = !DILocation(line: 79, column: 13, scope: !5716)
!5729 = !DILocation(line: 79, column: 11, scope: !5716)
!5730 = !DILocation(line: 79, column: 2, scope: !5716)
!5731 = distinct !DISubprogram(name: "dma_resv_trylock", scope: !159, file: !159, line: 422, type: !5732, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5734)
!5732 = !DISubroutineType(types: !5733)
!5733 = !{!499, !4209}
!5734 = !{!5735}
!5735 = !DILocalVariable(name: "obj", arg: 1, scope: !5731, file: !159, line: 422, type: !4209)
!5736 = !DILocation(line: 422, column: 67, scope: !5731)
!5737 = !DILocation(line: 424, column: 27, scope: !5731)
!5738 = !DILocation(line: 424, column: 32, scope: !5731)
!5739 = !DILocation(line: 424, column: 9, scope: !5731)
!5740 = !DILocation(line: 424, column: 2, scope: !5731)
!5741 = distinct !DISubprogram(name: "dma_resv_lock_interruptible", scope: !159, file: !159, line: 369, type: !5742, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5744)
!5742 = !DISubroutineType(types: !5743)
!5743 = !{!120, !4209, !4218}
!5744 = !{!5745, !5746}
!5745 = !DILocalVariable(name: "obj", arg: 1, scope: !5741, file: !159, line: 369, type: !4209)
!5746 = !DILocalVariable(name: "ctx", arg: 2, scope: !5741, file: !159, line: 370, type: !4218)
!5747 = !DILocation(line: 369, column: 64, scope: !5741)
!5748 = !DILocation(line: 370, column: 35, scope: !5741)
!5749 = !DILocation(line: 372, column: 38, scope: !5741)
!5750 = !DILocation(line: 372, column: 43, scope: !5741)
!5751 = !DILocation(line: 372, column: 49, scope: !5741)
!5752 = !DILocation(line: 372, column: 9, scope: !5741)
!5753 = !DILocation(line: 372, column: 2, scope: !5741)
!5754 = distinct !DISubprogram(name: "dma_resv_lock", scope: !159, file: !159, line: 342, type: !5742, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5755)
!5755 = !{!5756, !5757}
!5756 = !DILocalVariable(name: "obj", arg: 1, scope: !5754, file: !159, line: 342, type: !4209)
!5757 = !DILocalVariable(name: "ctx", arg: 2, scope: !5754, file: !159, line: 343, type: !4218)
!5758 = !DILocation(line: 342, column: 50, scope: !5754)
!5759 = !DILocation(line: 343, column: 28, scope: !5754)
!5760 = !DILocation(line: 345, column: 24, scope: !5754)
!5761 = !DILocation(line: 345, column: 29, scope: !5754)
!5762 = !DILocation(line: 345, column: 35, scope: !5754)
!5763 = !DILocation(line: 345, column: 9, scope: !5754)
!5764 = !DILocation(line: 345, column: 2, scope: !5754)
!5765 = !DISubprogram(name: "ww_mutex_trylock", scope: !4214, file: !4214, line: 340, type: !5766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5766 = !DISubroutineType(types: !5767)
!5767 = !{!120, !5617, !4218}
!5768 = !DISubprogram(name: "ww_mutex_lock_interruptible", scope: !4214, file: !4214, line: 266, type: !5766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5769 = !DISubprogram(name: "ww_mutex_lock", scope: !4214, file: !4214, line: 234, type: !5766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5770 = distinct !DISubprogram(name: "__list_del_entry", scope: !5106, file: !5106, line: 213, type: !5420, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5771)
!5771 = !{!5772}
!5772 = !DILocalVariable(name: "entry", arg: 1, scope: !5770, file: !5106, line: 213, type: !181)
!5773 = !DILocation(line: 213, column: 55, scope: !5770)
!5774 = !DILocation(line: 215, column: 30, scope: !5775)
!5775 = distinct !DILexicalBlock(scope: !5770, file: !5106, line: 215, column: 6)
!5776 = !DILocation(line: 215, column: 7, scope: !5775)
!5777 = !DILocation(line: 215, column: 6, scope: !5770)
!5778 = !DILocation(line: 216, column: 3, scope: !5775)
!5779 = !DILocation(line: 218, column: 13, scope: !5770)
!5780 = !DILocation(line: 218, column: 20, scope: !5770)
!5781 = !DILocation(line: 218, column: 26, scope: !5770)
!5782 = !DILocation(line: 218, column: 33, scope: !5770)
!5783 = !DILocation(line: 218, column: 2, scope: !5770)
!5784 = !DILocation(line: 219, column: 1, scope: !5770)
!5785 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5106, file: !5106, line: 134, type: !5786, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5788)
!5786 = !DISubroutineType(types: !5787)
!5787 = !{!499, !181}
!5788 = !{!5789}
!5789 = !DILocalVariable(name: "entry", arg: 1, scope: !5785, file: !5106, line: 134, type: !181)
!5790 = !DILocation(line: 134, column: 61, scope: !5785)
!5791 = !DILocation(line: 136, column: 2, scope: !5785)
!5792 = distinct !DISubprogram(name: "__list_del", scope: !5106, file: !5106, line: 193, type: !5435, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5793)
!5793 = !{!5794, !5795}
!5794 = !DILocalVariable(name: "prev", arg: 1, scope: !5792, file: !5106, line: 193, type: !181)
!5795 = !DILocalVariable(name: "next", arg: 2, scope: !5792, file: !5106, line: 193, type: !181)
!5796 = !DILocation(line: 193, column: 50, scope: !5792)
!5797 = !DILocation(line: 193, column: 75, scope: !5792)
!5798 = !DILocation(line: 195, column: 15, scope: !5792)
!5799 = !DILocation(line: 195, column: 2, scope: !5792)
!5800 = !DILocation(line: 195, column: 8, scope: !5792)
!5801 = !DILocation(line: 195, column: 13, scope: !5792)
!5802 = !DILocation(line: 196, column: 2, scope: !5792)
!5803 = !DILocation(line: 196, column: 2, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5792, file: !5106, line: 196, column: 2)
!5805 = !DILocation(line: 196, column: 2, scope: !5806)
!5806 = distinct !DILexicalBlock(scope: !5804, file: !5106, line: 196, column: 2)
!5807 = !DILocation(line: 196, column: 2, scope: !5808)
!5808 = distinct !DILexicalBlock(scope: !5804, file: !5106, line: 196, column: 2)
!5809 = !DILocation(line: 197, column: 1, scope: !5792)
!5810 = distinct !DISubprogram(name: "__list_add", scope: !5106, file: !5106, line: 146, type: !5811, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5813)
!5811 = !DISubroutineType(types: !5812)
!5812 = !{null, !181, !181, !181}
!5813 = !{!5814, !5815, !5816}
!5814 = !DILocalVariable(name: "new", arg: 1, scope: !5810, file: !5106, line: 146, type: !181)
!5815 = !DILocalVariable(name: "prev", arg: 2, scope: !5810, file: !5106, line: 147, type: !181)
!5816 = !DILocalVariable(name: "next", arg: 3, scope: !5810, file: !5106, line: 148, type: !181)
!5817 = !DILocation(line: 146, column: 49, scope: !5810)
!5818 = !DILocation(line: 147, column: 28, scope: !5810)
!5819 = !DILocation(line: 148, column: 28, scope: !5810)
!5820 = !DILocation(line: 150, column: 24, scope: !5821)
!5821 = distinct !DILexicalBlock(scope: !5810, file: !5106, line: 150, column: 6)
!5822 = !DILocation(line: 150, column: 29, scope: !5821)
!5823 = !DILocation(line: 150, column: 35, scope: !5821)
!5824 = !DILocation(line: 150, column: 7, scope: !5821)
!5825 = !DILocation(line: 150, column: 6, scope: !5810)
!5826 = !DILocation(line: 151, column: 3, scope: !5821)
!5827 = !DILocation(line: 153, column: 15, scope: !5810)
!5828 = !DILocation(line: 153, column: 2, scope: !5810)
!5829 = !DILocation(line: 153, column: 8, scope: !5810)
!5830 = !DILocation(line: 153, column: 13, scope: !5810)
!5831 = !DILocation(line: 154, column: 14, scope: !5810)
!5832 = !DILocation(line: 154, column: 2, scope: !5810)
!5833 = !DILocation(line: 154, column: 7, scope: !5810)
!5834 = !DILocation(line: 154, column: 12, scope: !5810)
!5835 = !DILocation(line: 155, column: 14, scope: !5810)
!5836 = !DILocation(line: 155, column: 2, scope: !5810)
!5837 = !DILocation(line: 155, column: 7, scope: !5810)
!5838 = !DILocation(line: 155, column: 12, scope: !5810)
!5839 = !DILocation(line: 156, column: 2, scope: !5810)
!5840 = !DILocation(line: 156, column: 2, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5810, file: !5106, line: 156, column: 2)
!5842 = !DILocation(line: 156, column: 2, scope: !5843)
!5843 = distinct !DILexicalBlock(scope: !5841, file: !5106, line: 156, column: 2)
!5844 = !DILocation(line: 156, column: 2, scope: !5845)
!5845 = distinct !DILexicalBlock(scope: !5841, file: !5106, line: 156, column: 2)
!5846 = !DILocation(line: 157, column: 1, scope: !5810)
!5847 = distinct !DISubprogram(name: "__list_add_valid", scope: !5106, file: !5106, line: 128, type: !5848, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5850)
!5848 = !DISubroutineType(types: !5849)
!5849 = !{!499, !181, !181, !181}
!5850 = !{!5851, !5852, !5853}
!5851 = !DILocalVariable(name: "new", arg: 1, scope: !5847, file: !5106, line: 128, type: !181)
!5852 = !DILocalVariable(name: "prev", arg: 2, scope: !5847, file: !5106, line: 129, type: !181)
!5853 = !DILocalVariable(name: "next", arg: 3, scope: !5847, file: !5106, line: 130, type: !181)
!5854 = !DILocation(line: 128, column: 55, scope: !5847)
!5855 = !DILocation(line: 129, column: 23, scope: !5847)
!5856 = !DILocation(line: 130, column: 23, scope: !5847)
!5857 = !DILocation(line: 132, column: 2, scope: !5847)
!5858 = distinct !DISubprogram(name: "dma_resv_lock_slow_interruptible", scope: !159, file: !159, line: 402, type: !5742, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5859)
!5859 = !{!5860, !5861}
!5860 = !DILocalVariable(name: "obj", arg: 1, scope: !5858, file: !159, line: 402, type: !4209)
!5861 = !DILocalVariable(name: "ctx", arg: 2, scope: !5858, file: !159, line: 403, type: !4218)
!5862 = !DILocation(line: 402, column: 69, scope: !5858)
!5863 = !DILocation(line: 403, column: 33, scope: !5858)
!5864 = !DILocation(line: 405, column: 43, scope: !5858)
!5865 = !DILocation(line: 405, column: 48, scope: !5858)
!5866 = !DILocation(line: 405, column: 54, scope: !5858)
!5867 = !DILocation(line: 405, column: 9, scope: !5858)
!5868 = !DILocation(line: 405, column: 2, scope: !5858)
!5869 = distinct !DISubprogram(name: "dma_resv_lock_slow", scope: !159, file: !159, line: 386, type: !5870, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5872)
!5870 = !DISubroutineType(types: !5871)
!5871 = !{null, !4209, !4218}
!5872 = !{!5873, !5874}
!5873 = !DILocalVariable(name: "obj", arg: 1, scope: !5869, file: !159, line: 386, type: !4209)
!5874 = !DILocalVariable(name: "ctx", arg: 2, scope: !5869, file: !159, line: 387, type: !4218)
!5875 = !DILocation(line: 386, column: 56, scope: !5869)
!5876 = !DILocation(line: 387, column: 34, scope: !5869)
!5877 = !DILocation(line: 389, column: 22, scope: !5869)
!5878 = !DILocation(line: 389, column: 27, scope: !5869)
!5879 = !DILocation(line: 389, column: 33, scope: !5869)
!5880 = !DILocation(line: 389, column: 2, scope: !5869)
!5881 = !DILocation(line: 390, column: 1, scope: !5869)
!5882 = distinct !DISubprogram(name: "ww_mutex_lock_slow_interruptible", scope: !4214, file: !4214, line: 329, type: !5766, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5883)
!5883 = !{!5884, !5885}
!5884 = !DILocalVariable(name: "lock", arg: 1, scope: !5882, file: !4214, line: 329, type: !5617)
!5885 = !DILocalVariable(name: "ctx", arg: 2, scope: !5882, file: !4214, line: 330, type: !4218)
!5886 = !DILocation(line: 329, column: 51, scope: !5882)
!5887 = !DILocation(line: 330, column: 29, scope: !5882)
!5888 = !DILocation(line: 335, column: 37, scope: !5882)
!5889 = !DILocation(line: 335, column: 43, scope: !5882)
!5890 = !DILocation(line: 335, column: 9, scope: !5882)
!5891 = !DILocation(line: 335, column: 2, scope: !5882)
!5892 = distinct !DISubprogram(name: "ww_mutex_lock_slow", scope: !4214, file: !4214, line: 293, type: !5893, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5895)
!5893 = !DISubroutineType(types: !5894)
!5894 = !{null, !5617, !4218}
!5895 = !{!5896, !5897, !5898}
!5896 = !DILocalVariable(name: "lock", arg: 1, scope: !5892, file: !4214, line: 293, type: !5617)
!5897 = !DILocalVariable(name: "ctx", arg: 2, scope: !5892, file: !4214, line: 293, type: !4218)
!5898 = !DILocalVariable(name: "ret", scope: !5892, file: !4214, line: 295, type: !120)
!5899 = !DILocation(line: 293, column: 37, scope: !5892)
!5900 = !DILocation(line: 293, column: 66, scope: !5892)
!5901 = !DILocation(line: 295, column: 2, scope: !5892)
!5902 = !DILocation(line: 295, column: 6, scope: !5892)
!5903 = !DILocation(line: 299, column: 22, scope: !5892)
!5904 = !DILocation(line: 299, column: 28, scope: !5892)
!5905 = !DILocation(line: 299, column: 8, scope: !5892)
!5906 = !DILocation(line: 299, column: 6, scope: !5892)
!5907 = !DILocation(line: 300, column: 8, scope: !5892)
!5908 = !DILocation(line: 301, column: 1, scope: !5892)
