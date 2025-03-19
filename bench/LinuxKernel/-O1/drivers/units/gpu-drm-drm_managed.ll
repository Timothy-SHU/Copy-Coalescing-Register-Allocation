; ModuleID = 'drivers/gpu/drm/drm_managed.c'
source_filename = "drivers/gpu/drm/drm_managed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___drmm_add_action: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __drmm_add_action ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___drmm_add_action_or_reset: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __drmm_add_action_or_reset ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drmm_kmalloc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drmm_kmalloc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drmm_kstrdup: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad drmm_kstrdup ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drmm_kfree: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drmm_kfree ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___drmm_mutex_release: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __drmm_mutex_release ; .previous"

%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.13, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.mutex, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.13 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.drmres = type { %struct.drmres_node, [0 x i8] }
%struct.drmres_node = type { %struct.list_head, ptr, ptr, i64 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}

@.str = private unnamed_addr constant [22 x i8] c"drmres release begin\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [23 x i8] c"REL %p %s (%zu bytes)\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [20 x i8] c"drmres release end\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [30 x i8] c"drivers/gpu/drm/drm_managed.c\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to add action %s for %p\0A\00", align 1, !dbg !22
@__UNIQUE_ID___addressable___drmm_add_action305 = internal global ptr @__drmm_add_action, section ".discard.addressable", align 8, !dbg !27
@__UNIQUE_ID___addressable___drmm_add_action_or_reset306 = internal global ptr @__drmm_add_action_or_reset, section ".discard.addressable", align 8, !dbg !5196
@.str.5 = private unnamed_addr constant [40 x i8] c"failed to allocate %zu bytes, %u flags\0A\00", align 1, !dbg !5198
@.str.6 = private unnamed_addr constant [8 x i8] c"kmalloc\00", align 1, !dbg !5203
@__UNIQUE_ID___addressable_drmm_kmalloc307 = internal global ptr @drmm_kmalloc, section ".discard.addressable", align 8, !dbg !5205
@__UNIQUE_ID___addressable_drmm_kstrdup308 = internal global ptr @drmm_kstrdup, section ".discard.addressable", align 8, !dbg !5207
@__UNIQUE_ID___addressable_drmm_kfree309 = internal global ptr @drmm_kfree, section ".discard.addressable", align 8, !dbg !5209
@__UNIQUE_ID___addressable___drmm_mutex_release310 = internal global ptr @__drmm_mutex_release, section ".discard.addressable", align 8, !dbg !5211
@.str.7 = private unnamed_addr constant [23 x i8] c"ADD %p %s (%lu bytes)\0A\00", align 1, !dbg !5213
@.str.8 = private unnamed_addr constant [23 x i8] c"DEL %p %s (%lu bytes)\0A\00", align 1, !dbg !5215
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable___drmm_add_action305, ptr @__UNIQUE_ID___addressable___drmm_add_action_or_reset306, ptr @__UNIQUE_ID___addressable_drmm_kmalloc307, ptr @__UNIQUE_ID___addressable_drmm_kstrdup308, ptr @__UNIQUE_ID___addressable_drmm_kfree309, ptr @__UNIQUE_ID___addressable___drmm_mutex_release310], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_managed_release(ptr noundef %dev) #0 align 16 !dbg !5226 {
entry:
  %dev.addr = alloca ptr, align 8
  %dr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %__mptr33 = alloca ptr, align 8
  %tmp37 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5228, metadata !DIExpression()), !dbg !5239
  call void @llvm.lifetime.start.p0(i64 8, ptr %dr) #10, !dbg !5240
  call void @llvm.dbg.declare(metadata ptr %dr, metadata !5229, metadata !DIExpression()), !dbg !5241
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #10, !dbg !5240
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5230, metadata !DIExpression()), !dbg !5242
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5243
  %tobool = icmp ne ptr %0, null, !dbg !5243
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5243

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5243
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2, !dbg !5243
  %2 = load ptr, ptr %dev1, align 8, !dbg !5243
  br label %cond.end, !dbg !5243

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5243

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %2, %cond.true ], [ null, %cond.false ], !dbg !5243
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond, i32 noundef 9, ptr noundef @.str) #11, !dbg !5243
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !5244
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5231, metadata !DIExpression()), !dbg !5244
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5244
  %managed = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 3, !dbg !5244
  %resources = getelementptr inbounds %struct.anon.13, ptr %managed, i32 0, i32 0, !dbg !5244
  %next = getelementptr inbounds %struct.list_head, ptr %resources, i32 0, i32 0, !dbg !5244
  %4 = load ptr, ptr %next, align 8, !dbg !5244
  store ptr %4, ptr %__mptr, align 8, !dbg !5244
  %5 = load ptr, ptr %__mptr, align 8, !dbg !5244
  %add.ptr = getelementptr i8, ptr %5, i64 0, !dbg !5244
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !5244
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !5245
  %6 = load ptr, ptr %tmp2, align 8, !dbg !5244
  store ptr %6, ptr %dr, align 8, !dbg !5245
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #10, !dbg !5246
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !5234, metadata !DIExpression()), !dbg !5246
  %7 = load ptr, ptr %dr, align 8, !dbg !5246
  %node = getelementptr inbounds %struct.drmres, ptr %7, i32 0, i32 0, !dbg !5246
  %entry4 = getelementptr inbounds %struct.drmres_node, ptr %node, i32 0, i32 0, !dbg !5246
  %next5 = getelementptr inbounds %struct.list_head, ptr %entry4, i32 0, i32 0, !dbg !5246
  %8 = load ptr, ptr %next5, align 8, !dbg !5246
  store ptr %8, ptr %__mptr3, align 8, !dbg !5246
  %9 = load ptr, ptr %__mptr3, align 8, !dbg !5246
  %add.ptr7 = getelementptr i8, ptr %9, i64 0, !dbg !5246
  store ptr %add.ptr7, ptr %tmp6, align 8, !dbg !5246
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #10, !dbg !5245
  %10 = load ptr, ptr %tmp6, align 8, !dbg !5246
  store ptr %10, ptr %tmp, align 8, !dbg !5245
  br label %for.cond, !dbg !5245

for.cond:                                         ; preds = %for.inc, %cond.end
  %11 = load ptr, ptr %dr, align 8, !dbg !5247
  %node8 = getelementptr inbounds %struct.drmres, ptr %11, i32 0, i32 0, !dbg !5247
  %entry9 = getelementptr inbounds %struct.drmres_node, ptr %node8, i32 0, i32 0, !dbg !5247
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !5247
  %managed10 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 3, !dbg !5247
  %resources11 = getelementptr inbounds %struct.anon.13, ptr %managed10, i32 0, i32 0, !dbg !5247
  %cmp = icmp eq ptr %entry9, %resources11, !dbg !5247
  %lnot = xor i1 %cmp, true, !dbg !5247
  br i1 %lnot, label %for.body, label %for.end, !dbg !5245

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !5248
  %tobool12 = icmp ne ptr %13, null, !dbg !5248
  br i1 %tobool12, label %cond.true13, label %cond.false15, !dbg !5248

cond.true13:                                      ; preds = %for.body
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !5248
  %dev14 = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 2, !dbg !5248
  %15 = load ptr, ptr %dev14, align 8, !dbg !5248
  br label %cond.end16, !dbg !5248

cond.false15:                                     ; preds = %for.body
  br label %cond.end16, !dbg !5248

cond.end16:                                       ; preds = %cond.false15, %cond.true13
  %cond17 = phi ptr [ %15, %cond.true13 ], [ null, %cond.false15 ], !dbg !5248
  %16 = load ptr, ptr %dr, align 8, !dbg !5248
  %17 = load ptr, ptr %dr, align 8, !dbg !5248
  %node18 = getelementptr inbounds %struct.drmres, ptr %17, i32 0, i32 0, !dbg !5248
  %name = getelementptr inbounds %struct.drmres_node, ptr %node18, i32 0, i32 2, !dbg !5248
  %18 = load ptr, ptr %name, align 8, !dbg !5248
  %19 = load ptr, ptr %dr, align 8, !dbg !5248
  %node19 = getelementptr inbounds %struct.drmres, ptr %19, i32 0, i32 0, !dbg !5248
  %size = getelementptr inbounds %struct.drmres_node, ptr %node19, i32 0, i32 3, !dbg !5248
  %20 = load i64, ptr %size, align 8, !dbg !5248
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond17, i32 noundef 9, ptr noundef @.str.1, ptr noundef %16, ptr noundef %18, i64 noundef %20) #11, !dbg !5248
  %21 = load ptr, ptr %dr, align 8, !dbg !5250
  %node20 = getelementptr inbounds %struct.drmres, ptr %21, i32 0, i32 0, !dbg !5252
  %release = getelementptr inbounds %struct.drmres_node, ptr %node20, i32 0, i32 1, !dbg !5253
  %22 = load ptr, ptr %release, align 8, !dbg !5253
  %tobool21 = icmp ne ptr %22, null, !dbg !5250
  br i1 %tobool21, label %if.then, label %if.end, !dbg !5254

if.then:                                          ; preds = %cond.end16
  %23 = load ptr, ptr %dr, align 8, !dbg !5255
  %node22 = getelementptr inbounds %struct.drmres, ptr %23, i32 0, i32 0, !dbg !5256
  %release23 = getelementptr inbounds %struct.drmres_node, ptr %node22, i32 0, i32 1, !dbg !5257
  %24 = load ptr, ptr %release23, align 8, !dbg !5257
  %25 = load ptr, ptr %dev.addr, align 8, !dbg !5258
  %26 = load ptr, ptr %dr, align 8, !dbg !5259
  %node24 = getelementptr inbounds %struct.drmres, ptr %26, i32 0, i32 0, !dbg !5260
  %size25 = getelementptr inbounds %struct.drmres_node, ptr %node24, i32 0, i32 3, !dbg !5261
  %27 = load i64, ptr %size25, align 8, !dbg !5261
  %tobool26 = icmp ne i64 %27, 0, !dbg !5259
  br i1 %tobool26, label %cond.true27, label %cond.false28, !dbg !5259

cond.true27:                                      ; preds = %if.then
  %28 = load ptr, ptr %dr, align 8, !dbg !5262
  %data = getelementptr inbounds %struct.drmres, ptr %28, i32 0, i32 1, !dbg !5263
  %29 = load ptr, ptr %data, align 8, !dbg !5264
  br label %cond.end29, !dbg !5259

cond.false28:                                     ; preds = %if.then
  br label %cond.end29, !dbg !5259

cond.end29:                                       ; preds = %cond.false28, %cond.true27
  %cond30 = phi ptr [ %29, %cond.true27 ], [ null, %cond.false28 ], !dbg !5259
  call void %24(ptr noundef %25, ptr noundef %cond30) #11, !dbg !5255
  br label %if.end, !dbg !5255

if.end:                                           ; preds = %cond.end29, %cond.end16
  %30 = load ptr, ptr %dr, align 8, !dbg !5265
  %node31 = getelementptr inbounds %struct.drmres, ptr %30, i32 0, i32 0, !dbg !5266
  %entry32 = getelementptr inbounds %struct.drmres_node, ptr %node31, i32 0, i32 0, !dbg !5267
  call void @list_del(ptr noundef %entry32) #11, !dbg !5268
  %31 = load ptr, ptr %dr, align 8, !dbg !5269
  call void @free_dr(ptr noundef %31) #11, !dbg !5270
  br label %for.inc, !dbg !5271

for.inc:                                          ; preds = %if.end
  %32 = load ptr, ptr %tmp, align 8, !dbg !5247
  store ptr %32, ptr %dr, align 8, !dbg !5247
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr33) #10, !dbg !5272
  call void @llvm.dbg.declare(metadata ptr %__mptr33, metadata !5236, metadata !DIExpression()), !dbg !5272
  %33 = load ptr, ptr %tmp, align 8, !dbg !5272
  %node34 = getelementptr inbounds %struct.drmres, ptr %33, i32 0, i32 0, !dbg !5272
  %entry35 = getelementptr inbounds %struct.drmres_node, ptr %node34, i32 0, i32 0, !dbg !5272
  %next36 = getelementptr inbounds %struct.list_head, ptr %entry35, i32 0, i32 0, !dbg !5272
  %34 = load ptr, ptr %next36, align 8, !dbg !5272
  store ptr %34, ptr %__mptr33, align 8, !dbg !5272
  %35 = load ptr, ptr %__mptr33, align 8, !dbg !5272
  %add.ptr38 = getelementptr i8, ptr %35, i64 0, !dbg !5272
  store ptr %add.ptr38, ptr %tmp37, align 8, !dbg !5272
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr33) #10, !dbg !5247
  %36 = load ptr, ptr %tmp37, align 8, !dbg !5272
  store ptr %36, ptr %tmp, align 8, !dbg !5247
  br label %for.cond, !dbg !5247, !llvm.loop !5273

for.end:                                          ; preds = %for.cond
  %37 = load ptr, ptr %dev.addr, align 8, !dbg !5277
  %tobool39 = icmp ne ptr %37, null, !dbg !5277
  br i1 %tobool39, label %cond.true40, label %cond.false42, !dbg !5277

cond.true40:                                      ; preds = %for.end
  %38 = load ptr, ptr %dev.addr, align 8, !dbg !5277
  %dev41 = getelementptr inbounds %struct.drm_device, ptr %38, i32 0, i32 2, !dbg !5277
  %39 = load ptr, ptr %dev41, align 8, !dbg !5277
  br label %cond.end43, !dbg !5277

cond.false42:                                     ; preds = %for.end
  br label %cond.end43, !dbg !5277

cond.end43:                                       ; preds = %cond.false42, %cond.true40
  %cond44 = phi ptr [ %39, %cond.true40 ], [ null, %cond.false42 ], !dbg !5277
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond44, i32 noundef 9, ptr noundef @.str.2) #11, !dbg !5277
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #10, !dbg !5278
  call void @llvm.lifetime.end.p0(i64 8, ptr %dr) #10, !dbg !5278
  ret void, !dbg !5278
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5279 dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #4 align 16 !dbg !5315 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5320, metadata !DIExpression()), !dbg !5321
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5322
  call void @__list_del_entry(ptr noundef %0) #11, !dbg !5323
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5324
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5325
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !5326
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5327
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5328
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5329
  ret void, !dbg !5330
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_dr(ptr noundef %dr) #0 align 16 !dbg !5331 {
entry:
  %dr.addr = alloca ptr, align 8
  store ptr %dr, ptr %dr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dr.addr, metadata !5335, metadata !DIExpression()), !dbg !5336
  %0 = load ptr, ptr %dr.addr, align 8, !dbg !5337
  %node = getelementptr inbounds %struct.drmres, ptr %0, i32 0, i32 0, !dbg !5338
  %name = getelementptr inbounds %struct.drmres_node, ptr %node, i32 0, i32 2, !dbg !5339
  %1 = load ptr, ptr %name, align 8, !dbg !5339
  call void @kfree_const(ptr noundef %1) #11, !dbg !5340
  %2 = load ptr, ptr %dr.addr, align 8, !dbg !5341
  call void @kfree(ptr noundef %2) #11, !dbg !5342
  ret void, !dbg !5343
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drmm_add_final_kfree(ptr noundef %dev, ptr noundef %container) #0 align 16 !dbg !5344 {
entry:
  %dev.addr = alloca ptr, align 8
  %container.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on24 = alloca i32, align 4
  %__flags40 = alloca i32, align 4
  %tmp53 = alloca i64, align 8
  %__ret_warn_on61 = alloca i32, align 4
  %__flags79 = alloca i32, align 4
  %tmp92 = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5346, metadata !DIExpression()), !dbg !5363
  store ptr %container, ptr %container.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %container.addr, metadata !5347, metadata !DIExpression()), !dbg !5364
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5365
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5348, metadata !DIExpression()), !dbg !5365
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5365
  %managed = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 3, !dbg !5365
  %final_kfree = getelementptr inbounds %struct.anon.13, ptr %managed, i32 0, i32 1, !dbg !5365
  %1 = load ptr, ptr %final_kfree, align 8, !dbg !5365
  %tobool = icmp ne ptr %1, null, !dbg !5365
  %lnot = xor i1 %tobool, true, !dbg !5365
  %lnot1 = xor i1 %lnot, true, !dbg !5365
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5365
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5365
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !5366
  %tobool2 = icmp ne i32 %2, 0, !dbg !5366
  %lnot3 = xor i1 %tobool2, true, !dbg !5366
  %lnot5 = xor i1 %lnot3, true, !dbg !5366
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5366
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5366
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5366
  %tobool7 = icmp ne i64 %expval, 0, !dbg !5366
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5365

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5366

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !5367
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5350, metadata !DIExpression()), !dbg !5367
  store i32 2305, ptr %__flags, align 4, !dbg !5367
  br label %do.body8, !dbg !5367

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !5368

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !5368

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !5367

do.body9:                                         ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !5370
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 131, i32 %3, i64 12) #10, !dbg !5370, !srcloc !5372
  br label %do.cond10, !dbg !5370

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5370

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !5367

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !5373

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5373

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !5366
  br label %do.cond15, !dbg !5367

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !5367

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !5367

if.end:                                           ; preds = %do.end16, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5365
  %tobool17 = icmp ne i32 %4, 0, !dbg !5365
  %lnot18 = xor i1 %tobool17, true, !dbg !5365
  %lnot20 = xor i1 %lnot18, true, !dbg !5365
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !5365
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !5365
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !5365
  store i64 %expval23, ptr %tmp, align 8, !dbg !5366
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5375
  %5 = load i64, ptr %tmp, align 8, !dbg !5365
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on24) #10, !dbg !5376
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on24, metadata !5353, metadata !DIExpression()), !dbg !5376
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5376
  %7 = load ptr, ptr %container.addr, align 8, !dbg !5376
  %cmp = icmp ult ptr %6, %7, !dbg !5376
  %lnot26 = xor i1 %cmp, true, !dbg !5376
  %lnot28 = xor i1 %lnot26, true, !dbg !5376
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !5376
  store i32 %lnot.ext29, ptr %__ret_warn_on24, align 4, !dbg !5376
  %8 = load i32, ptr %__ret_warn_on24, align 4, !dbg !5377
  %tobool30 = icmp ne i32 %8, 0, !dbg !5377
  %lnot31 = xor i1 %tobool30, true, !dbg !5377
  %lnot33 = xor i1 %lnot31, true, !dbg !5377
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !5377
  %conv35 = sext i32 %lnot.ext34 to i64, !dbg !5377
  %expval36 = call i64 @llvm.expect.i64(i64 %conv35, i64 0), !dbg !5377
  %tobool37 = icmp ne i64 %expval36, 0, !dbg !5377
  br i1 %tobool37, label %if.then38, label %if.end52, !dbg !5376

if.then38:                                        ; preds = %if.end
  br label %do.body39, !dbg !5377

do.body39:                                        ; preds = %if.then38
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags40) #10, !dbg !5378
  call void @llvm.dbg.declare(metadata ptr %__flags40, metadata !5355, metadata !DIExpression()), !dbg !5378
  store i32 2305, ptr %__flags40, align 4, !dbg !5378
  br label %do.body41, !dbg !5378

do.body41:                                        ; preds = %do.body39
  br label %do.cond42, !dbg !5379

do.cond42:                                        ; preds = %do.body41
  br label %do.end43, !dbg !5379

do.end43:                                         ; preds = %do.cond42
  br label %do.body44, !dbg !5378

do.body44:                                        ; preds = %do.end43
  %9 = load i32, ptr %__flags40, align 4, !dbg !5381
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 132, i32 %9, i64 12) #10, !dbg !5381, !srcloc !5383
  br label %do.cond45, !dbg !5381

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !5381

do.end46:                                         ; preds = %do.cond45
  br label %do.body47, !dbg !5378

do.body47:                                        ; preds = %do.end46
  br label %do.cond48, !dbg !5384

do.cond48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !5384

do.end49:                                         ; preds = %do.cond48
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags40) #10, !dbg !5377
  br label %do.cond50, !dbg !5378

do.cond50:                                        ; preds = %do.end49
  br label %do.end51, !dbg !5378

do.end51:                                         ; preds = %do.cond50
  br label %if.end52, !dbg !5378

if.end52:                                         ; preds = %do.end51, %if.end
  %10 = load i32, ptr %__ret_warn_on24, align 4, !dbg !5376
  %tobool54 = icmp ne i32 %10, 0, !dbg !5376
  %lnot55 = xor i1 %tobool54, true, !dbg !5376
  %lnot57 = xor i1 %lnot55, true, !dbg !5376
  %lnot.ext58 = zext i1 %lnot57 to i32, !dbg !5376
  %conv59 = sext i32 %lnot.ext58 to i64, !dbg !5376
  %expval60 = call i64 @llvm.expect.i64(i64 %conv59, i64 0), !dbg !5376
  store i64 %expval60, ptr %tmp53, align 8, !dbg !5377
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on24) #10, !dbg !5386
  %11 = load i64, ptr %tmp53, align 8, !dbg !5376
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on61) #10, !dbg !5387
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on61, metadata !5358, metadata !DIExpression()), !dbg !5387
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !5387
  %add.ptr = getelementptr %struct.drm_device, ptr %12, i64 1, !dbg !5387
  %13 = load ptr, ptr %container.addr, align 8, !dbg !5387
  %14 = load ptr, ptr %container.addr, align 8, !dbg !5387
  %call = call i64 @ksize(ptr noundef %14) #11, !dbg !5387
  %add.ptr62 = getelementptr i8, ptr %13, i64 %call, !dbg !5387
  %cmp63 = icmp ugt ptr %add.ptr, %add.ptr62, !dbg !5387
  %lnot65 = xor i1 %cmp63, true, !dbg !5387
  %lnot67 = xor i1 %lnot65, true, !dbg !5387
  %lnot.ext68 = zext i1 %lnot67 to i32, !dbg !5387
  store i32 %lnot.ext68, ptr %__ret_warn_on61, align 4, !dbg !5387
  %15 = load i32, ptr %__ret_warn_on61, align 4, !dbg !5388
  %tobool69 = icmp ne i32 %15, 0, !dbg !5388
  %lnot70 = xor i1 %tobool69, true, !dbg !5388
  %lnot72 = xor i1 %lnot70, true, !dbg !5388
  %lnot.ext73 = zext i1 %lnot72 to i32, !dbg !5388
  %conv74 = sext i32 %lnot.ext73 to i64, !dbg !5388
  %expval75 = call i64 @llvm.expect.i64(i64 %conv74, i64 0), !dbg !5388
  %tobool76 = icmp ne i64 %expval75, 0, !dbg !5388
  br i1 %tobool76, label %if.then77, label %if.end91, !dbg !5387

if.then77:                                        ; preds = %if.end52
  br label %do.body78, !dbg !5388

do.body78:                                        ; preds = %if.then77
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags79) #10, !dbg !5389
  call void @llvm.dbg.declare(metadata ptr %__flags79, metadata !5360, metadata !DIExpression()), !dbg !5389
  store i32 2305, ptr %__flags79, align 4, !dbg !5389
  br label %do.body80, !dbg !5389

do.body80:                                        ; preds = %do.body78
  br label %do.cond81, !dbg !5390

do.cond81:                                        ; preds = %do.body80
  br label %do.end82, !dbg !5390

do.end82:                                         ; preds = %do.cond81
  br label %do.body83, !dbg !5389

do.body83:                                        ; preds = %do.end82
  %16 = load i32, ptr %__flags79, align 4, !dbg !5392
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 133, i32 %16, i64 12) #10, !dbg !5392, !srcloc !5394
  br label %do.cond84, !dbg !5392

do.cond84:                                        ; preds = %do.body83
  br label %do.end85, !dbg !5392

do.end85:                                         ; preds = %do.cond84
  br label %do.body86, !dbg !5389

do.body86:                                        ; preds = %do.end85
  br label %do.cond87, !dbg !5395

do.cond87:                                        ; preds = %do.body86
  br label %do.end88, !dbg !5395

do.end88:                                         ; preds = %do.cond87
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags79) #10, !dbg !5388
  br label %do.cond89, !dbg !5389

do.cond89:                                        ; preds = %do.end88
  br label %do.end90, !dbg !5389

do.end90:                                         ; preds = %do.cond89
  br label %if.end91, !dbg !5389

if.end91:                                         ; preds = %do.end90, %if.end52
  %17 = load i32, ptr %__ret_warn_on61, align 4, !dbg !5387
  %tobool93 = icmp ne i32 %17, 0, !dbg !5387
  %lnot94 = xor i1 %tobool93, true, !dbg !5387
  %lnot96 = xor i1 %lnot94, true, !dbg !5387
  %lnot.ext97 = zext i1 %lnot96 to i32, !dbg !5387
  %conv98 = sext i32 %lnot.ext97 to i64, !dbg !5387
  %expval99 = call i64 @llvm.expect.i64(i64 %conv98, i64 0), !dbg !5387
  store i64 %expval99, ptr %tmp92, align 8, !dbg !5388
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on61) #10, !dbg !5397
  %18 = load i64, ptr %tmp92, align 8, !dbg !5387
  %19 = load ptr, ptr %container.addr, align 8, !dbg !5398
  %20 = load ptr, ptr %dev.addr, align 8, !dbg !5399
  %managed100 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 3, !dbg !5400
  %final_kfree101 = getelementptr inbounds %struct.anon.13, ptr %managed100, i32 0, i32 1, !dbg !5401
  store ptr %19, ptr %final_kfree101, align 8, !dbg !5402
  ret void, !dbg !5403
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5404 dso_local i64 @ksize(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__drmm_add_action(ptr noundef %dev, ptr noundef %action, ptr noundef %data, ptr noundef %name) #0 align 16 !dbg !5408 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %action.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %dr = alloca ptr, align 8
  %void_ptr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5412, metadata !DIExpression()), !dbg !5418
  store ptr %action, ptr %action.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %action.addr, metadata !5413, metadata !DIExpression()), !dbg !5419
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5414, metadata !DIExpression()), !dbg !5420
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5415, metadata !DIExpression()), !dbg !5421
  call void @llvm.lifetime.start.p0(i64 8, ptr %dr) #10, !dbg !5422
  call void @llvm.dbg.declare(metadata ptr %dr, metadata !5416, metadata !DIExpression()), !dbg !5423
  call void @llvm.lifetime.start.p0(i64 8, ptr %void_ptr) #10, !dbg !5424
  call void @llvm.dbg.declare(metadata ptr %void_ptr, metadata !5417, metadata !DIExpression()), !dbg !5425
  %0 = load ptr, ptr %action.addr, align 8, !dbg !5426
  %1 = load ptr, ptr %data.addr, align 8, !dbg !5427
  %tobool = icmp ne ptr %1, null, !dbg !5427
  %2 = zext i1 %tobool to i64, !dbg !5427
  %cond = select i1 %tobool, i64 8, i64 0, !dbg !5427
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5428
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2, !dbg !5429
  %4 = load ptr, ptr %dev1, align 8, !dbg !5429
  %call = call i32 @dev_to_node(ptr noundef %4) #11, !dbg !5430
  %call2 = call ptr @alloc_dr(ptr noundef %0, i64 noundef %cond, i32 noundef 3520, i32 noundef %call) #11, !dbg !5431
  store ptr %call2, ptr %dr, align 8, !dbg !5432
  %5 = load ptr, ptr %dr, align 8, !dbg !5433
  %tobool3 = icmp ne ptr %5, null, !dbg !5433
  br i1 %tobool3, label %if.end, label %if.then, !dbg !5435

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5436
  %tobool4 = icmp ne ptr %6, null, !dbg !5436
  br i1 %tobool4, label %cond.true, label %cond.false, !dbg !5436

cond.true:                                        ; preds = %if.then
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5436
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2, !dbg !5436
  %8 = load ptr, ptr %dev5, align 8, !dbg !5436
  br label %cond.end, !dbg !5436

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !5436

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond6 = phi ptr [ %8, %cond.true ], [ null, %cond.false ], !dbg !5436
  %9 = load ptr, ptr %name.addr, align 8, !dbg !5436
  %10 = load ptr, ptr %data.addr, align 8, !dbg !5436
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond6, i32 noundef 9, ptr noundef @.str.4, ptr noundef %9, ptr noundef %10) #11, !dbg !5436
  store i32 -12, ptr %retval, align 4, !dbg !5438
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5438

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %name.addr, align 8, !dbg !5439
  %call7 = call ptr @kstrdup_const(ptr noundef %11, i32 noundef 3264) #11, !dbg !5440
  %12 = load ptr, ptr %dr, align 8, !dbg !5441
  %node = getelementptr inbounds %struct.drmres, ptr %12, i32 0, i32 0, !dbg !5442
  %name8 = getelementptr inbounds %struct.drmres_node, ptr %node, i32 0, i32 2, !dbg !5443
  store ptr %call7, ptr %name8, align 8, !dbg !5444
  %13 = load ptr, ptr %data.addr, align 8, !dbg !5445
  %tobool9 = icmp ne ptr %13, null, !dbg !5445
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !5447

if.then10:                                        ; preds = %if.end
  %14 = load ptr, ptr %dr, align 8, !dbg !5448
  %data11 = getelementptr inbounds %struct.drmres, ptr %14, i32 0, i32 1, !dbg !5450
  store ptr %data11, ptr %void_ptr, align 8, !dbg !5451
  %15 = load ptr, ptr %data.addr, align 8, !dbg !5452
  %16 = load ptr, ptr %void_ptr, align 8, !dbg !5453
  store ptr %15, ptr %16, align 8, !dbg !5454
  br label %if.end12, !dbg !5455

if.end12:                                         ; preds = %if.then10, %if.end
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !5456
  %18 = load ptr, ptr %dr, align 8, !dbg !5457
  call void @add_dr(ptr noundef %17, ptr noundef %18) #11, !dbg !5458
  store i32 0, ptr %retval, align 4, !dbg !5459
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5459

cleanup:                                          ; preds = %if.end12, %cond.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %void_ptr) #10, !dbg !5460
  call void @llvm.lifetime.end.p0(i64 8, ptr %dr) #10, !dbg !5460
  %19 = load i32, ptr %retval, align 4, !dbg !5460
  ret i32 %19, !dbg !5460
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_dr(ptr noundef %release, i64 noundef %size, i32 noundef %gfp, i32 noundef %nid) #6 align 16 !dbg !5461 {
entry:
  %retval = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  %nid.addr = alloca i32, align 4
  %tot_size = alloca i64, align 8
  %dr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !5465, metadata !DIExpression()), !dbg !5471
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5466, metadata !DIExpression()), !dbg !5472
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !5467, metadata !DIExpression()), !dbg !5473
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !5468, metadata !DIExpression()), !dbg !5474
  call void @llvm.lifetime.start.p0(i64 8, ptr %tot_size) #10, !dbg !5475
  call void @llvm.dbg.declare(metadata ptr %tot_size, metadata !5469, metadata !DIExpression()), !dbg !5476
  call void @llvm.lifetime.start.p0(i64 8, ptr %dr) #10, !dbg !5477
  call void @llvm.dbg.declare(metadata ptr %dr, metadata !5470, metadata !DIExpression()), !dbg !5478
  %0 = load i64, ptr %size.addr, align 8, !dbg !5479
  %1 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 40, i64 %0), !dbg !5479
  %2 = extractvalue { i64, i1 } %1, 1, !dbg !5479
  %3 = extractvalue { i64, i1 } %1, 0, !dbg !5479
  store i64 %3, ptr %tot_size, align 8, !dbg !5479
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %2) #11, !dbg !5479
  %lnot = xor i1 %call, true, !dbg !5479
  %lnot1 = xor i1 %lnot, true, !dbg !5479
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5479
  %conv = sext i32 %lnot.ext to i64, !dbg !5479
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5479
  %tobool = icmp ne i64 %expval, 0, !dbg !5479
  br i1 %tobool, label %if.then, label %if.end, !dbg !5481

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5482
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5482

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %tot_size, align 8, !dbg !5483
  %5 = load i32, ptr %gfp.addr, align 4, !dbg !5483
  %6 = load i32, ptr %nid.addr, align 4, !dbg !5483
  %7 = call ptr @llvm.returnaddress(i32 0), !dbg !5483
  %8 = ptrtoint ptr %7 to i64, !dbg !5483
  %call2 = call noalias ptr @__kmalloc_node_track_caller(i64 noundef %4, i32 noundef %5, i32 noundef %6, i64 noundef %8) #12, !dbg !5483
  store ptr %call2, ptr %dr, align 8, !dbg !5484
  %9 = load ptr, ptr %dr, align 8, !dbg !5485
  %tobool3 = icmp ne ptr %9, null, !dbg !5485
  %lnot4 = xor i1 %tobool3, true, !dbg !5485
  %lnot6 = xor i1 %lnot4, true, !dbg !5485
  %lnot8 = xor i1 %lnot6, true, !dbg !5485
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !5485
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !5485
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 0), !dbg !5485
  %tobool12 = icmp ne i64 %expval11, 0, !dbg !5485
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !5487

if.then13:                                        ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !5488
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5488

if.end14:                                         ; preds = %if.end
  %10 = load ptr, ptr %dr, align 8, !dbg !5489
  call void @llvm.memset.p0.i64(ptr align 8 %10, i8 0, i64 40, i1 false), !dbg !5490
  %11 = load ptr, ptr %dr, align 8, !dbg !5491
  %node = getelementptr inbounds %struct.drmres, ptr %11, i32 0, i32 0, !dbg !5492
  %entry15 = getelementptr inbounds %struct.drmres_node, ptr %node, i32 0, i32 0, !dbg !5493
  call void @INIT_LIST_HEAD(ptr noundef %entry15) #11, !dbg !5494
  %12 = load ptr, ptr %release.addr, align 8, !dbg !5495
  %13 = load ptr, ptr %dr, align 8, !dbg !5496
  %node16 = getelementptr inbounds %struct.drmres, ptr %13, i32 0, i32 0, !dbg !5497
  %release17 = getelementptr inbounds %struct.drmres_node, ptr %node16, i32 0, i32 1, !dbg !5498
  store ptr %12, ptr %release17, align 8, !dbg !5499
  %14 = load i64, ptr %size.addr, align 8, !dbg !5500
  %15 = load ptr, ptr %dr, align 8, !dbg !5501
  %node18 = getelementptr inbounds %struct.drmres, ptr %15, i32 0, i32 0, !dbg !5502
  %size19 = getelementptr inbounds %struct.drmres_node, ptr %node18, i32 0, i32 3, !dbg !5503
  store i64 %14, ptr %size19, align 8, !dbg !5504
  %16 = load ptr, ptr %dr, align 8, !dbg !5505
  store ptr %16, ptr %retval, align 8, !dbg !5506
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5506

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dr) #10, !dbg !5507
  call void @llvm.lifetime.end.p0(i64 8, ptr %tot_size) #10, !dbg !5507
  %17 = load ptr, ptr %retval, align 8, !dbg !5507
  ret ptr %17, !dbg !5507
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dev_to_node(ptr noundef %dev) #4 align 16 !dbg !5508 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5510, metadata !DIExpression()), !dbg !5511
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5512
  %numa_node = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25, !dbg !5513
  %1 = load i32, ptr %numa_node, align 8, !dbg !5513
  ret i32 %1, !dbg !5514
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5515 dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @add_dr(ptr noundef %dev, ptr noundef %dr) #0 align 16 !dbg !5519 {
entry:
  %dev.addr = alloca ptr, align 8
  %dr.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5523, metadata !DIExpression()), !dbg !5531
  store ptr %dr, ptr %dr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dr.addr, metadata !5524, metadata !DIExpression()), !dbg !5532
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #10, !dbg !5533
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5525, metadata !DIExpression()), !dbg !5534
  br label %do.body, !dbg !5535

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5536

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #10, !dbg !5537
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5526, metadata !DIExpression()), !dbg !5537
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #10, !dbg !5537
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5530, metadata !DIExpression()), !dbg !5537
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5537
  %conv = zext i1 %cmp to i32, !dbg !5537
  store i32 1, ptr %tmp, align 4, !dbg !5537
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #10, !dbg !5538
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #10, !dbg !5538
  %0 = load i32, ptr %tmp, align 4, !dbg !5537
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5538
  %managed = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 3, !dbg !5538
  %lock = getelementptr inbounds %struct.anon.13, ptr %managed, i32 0, i32 2, !dbg !5538
  %call = call ptr @spinlock_check(ptr noundef %lock) #11, !dbg !5538
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #11, !dbg !5538
  store i64 %call2, ptr %flags, align 8, !dbg !5538
  br label %do.cond, !dbg !5538

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5538

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !5536

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5536

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %dr.addr, align 8, !dbg !5539
  %node = getelementptr inbounds %struct.drmres, ptr %2, i32 0, i32 0, !dbg !5540
  %entry5 = getelementptr inbounds %struct.drmres_node, ptr %node, i32 0, i32 0, !dbg !5541
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5542
  %managed6 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 3, !dbg !5543
  %resources = getelementptr inbounds %struct.anon.13, ptr %managed6, i32 0, i32 0, !dbg !5544
  call void @list_add(ptr noundef %entry5, ptr noundef %resources) #11, !dbg !5545
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5546
  %managed7 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 3, !dbg !5547
  %lock8 = getelementptr inbounds %struct.anon.13, ptr %managed7, i32 0, i32 2, !dbg !5548
  %5 = load i64, ptr %flags, align 8, !dbg !5549
  call void @spin_unlock_irqrestore(ptr noundef %lock8, i64 noundef %5) #11, !dbg !5550
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5551
  %tobool = icmp ne ptr %6, null, !dbg !5551
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5551

cond.true:                                        ; preds = %do.end4
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5551
  %dev9 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2, !dbg !5551
  %8 = load ptr, ptr %dev9, align 8, !dbg !5551
  br label %cond.end, !dbg !5551

cond.false:                                       ; preds = %do.end4
  br label %cond.end, !dbg !5551

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %8, %cond.true ], [ null, %cond.false ], !dbg !5551
  %9 = load ptr, ptr %dr.addr, align 8, !dbg !5551
  %10 = load ptr, ptr %dr.addr, align 8, !dbg !5551
  %node10 = getelementptr inbounds %struct.drmres, ptr %10, i32 0, i32 0, !dbg !5551
  %name = getelementptr inbounds %struct.drmres_node, ptr %node10, i32 0, i32 2, !dbg !5551
  %11 = load ptr, ptr %name, align 8, !dbg !5551
  %12 = load ptr, ptr %dr.addr, align 8, !dbg !5551
  %node11 = getelementptr inbounds %struct.drmres, ptr %12, i32 0, i32 0, !dbg !5551
  %size = getelementptr inbounds %struct.drmres_node, ptr %node11, i32 0, i32 3, !dbg !5551
  %13 = load i64, ptr %size, align 8, !dbg !5551
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond, i32 noundef 9, ptr noundef @.str.7, ptr noundef %9, ptr noundef %11, i64 noundef %13) #11, !dbg !5551
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #10, !dbg !5552
  ret void, !dbg !5552
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__drmm_add_action_or_reset(ptr noundef %dev, ptr noundef %action, ptr noundef %data, ptr noundef %name) #0 align 16 !dbg !5553 {
entry:
  %dev.addr = alloca ptr, align 8
  %action.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5555, metadata !DIExpression()), !dbg !5560
  store ptr %action, ptr %action.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %action.addr, metadata !5556, metadata !DIExpression()), !dbg !5561
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5557, metadata !DIExpression()), !dbg !5562
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5558, metadata !DIExpression()), !dbg !5563
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5564
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5559, metadata !DIExpression()), !dbg !5565
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5566
  %1 = load ptr, ptr %action.addr, align 8, !dbg !5567
  %2 = load ptr, ptr %data.addr, align 8, !dbg !5568
  %3 = load ptr, ptr %name.addr, align 8, !dbg !5569
  %call = call i32 @__drmm_add_action(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #11, !dbg !5570
  store i32 %call, ptr %ret, align 4, !dbg !5571
  %4 = load i32, ptr %ret, align 4, !dbg !5572
  %tobool = icmp ne i32 %4, 0, !dbg !5572
  br i1 %tobool, label %if.then, label %if.end, !dbg !5574

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %action.addr, align 8, !dbg !5575
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5576
  %7 = load ptr, ptr %data.addr, align 8, !dbg !5577
  call void %5(ptr noundef %6, ptr noundef %7) #11, !dbg !5575
  br label %if.end, !dbg !5575

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, ptr %ret, align 4, !dbg !5578
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5579
  ret i32 %8, !dbg !5580
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden noalias ptr @drmm_kmalloc(ptr noundef %dev, i64 noundef %size, i32 noundef %gfp) #0 align 16 !dbg !5581 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  %dr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5585, metadata !DIExpression()), !dbg !5589
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5586, metadata !DIExpression()), !dbg !5590
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !5587, metadata !DIExpression()), !dbg !5591
  call void @llvm.lifetime.start.p0(i64 8, ptr %dr) #10, !dbg !5592
  call void @llvm.dbg.declare(metadata ptr %dr, metadata !5588, metadata !DIExpression()), !dbg !5593
  %0 = load i64, ptr %size.addr, align 8, !dbg !5594
  %1 = load i32, ptr %gfp.addr, align 4, !dbg !5595
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5596
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2, !dbg !5597
  %3 = load ptr, ptr %dev1, align 8, !dbg !5597
  %call = call i32 @dev_to_node(ptr noundef %3) #11, !dbg !5598
  %call2 = call ptr @alloc_dr(ptr noundef null, i64 noundef %0, i32 noundef %1, i32 noundef %call) #11, !dbg !5599
  store ptr %call2, ptr %dr, align 8, !dbg !5600
  %4 = load ptr, ptr %dr, align 8, !dbg !5601
  %tobool = icmp ne ptr %4, null, !dbg !5601
  br i1 %tobool, label %if.end, label %if.then, !dbg !5603

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5604
  %tobool3 = icmp ne ptr %5, null, !dbg !5604
  br i1 %tobool3, label %cond.true, label %cond.false, !dbg !5604

cond.true:                                        ; preds = %if.then
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5604
  %dev4 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 2, !dbg !5604
  %7 = load ptr, ptr %dev4, align 8, !dbg !5604
  br label %cond.end, !dbg !5604

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !5604

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %7, %cond.true ], [ null, %cond.false ], !dbg !5604
  %8 = load i64, ptr %size.addr, align 8, !dbg !5604
  %9 = load i32, ptr %gfp.addr, align 4, !dbg !5604
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond, i32 noundef 9, ptr noundef @.str.5, i64 noundef %8, i32 noundef %9) #11, !dbg !5604
  store ptr null, ptr %retval, align 8, !dbg !5606
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5606

if.end:                                           ; preds = %entry
  %10 = load i32, ptr %gfp.addr, align 4, !dbg !5607
  %call5 = call ptr @kstrdup_const(ptr noundef @.str.6, i32 noundef %10) #11, !dbg !5608
  %11 = load ptr, ptr %dr, align 8, !dbg !5609
  %node = getelementptr inbounds %struct.drmres, ptr %11, i32 0, i32 0, !dbg !5610
  %name = getelementptr inbounds %struct.drmres_node, ptr %node, i32 0, i32 2, !dbg !5611
  store ptr %call5, ptr %name, align 8, !dbg !5612
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !5613
  %13 = load ptr, ptr %dr, align 8, !dbg !5614
  call void @add_dr(ptr noundef %12, ptr noundef %13) #11, !dbg !5615
  %14 = load ptr, ptr %dr, align 8, !dbg !5616
  %data = getelementptr inbounds %struct.drmres, ptr %14, i32 0, i32 1, !dbg !5617
  %arraydecay = getelementptr inbounds [0 x i8], ptr %data, i64 0, i64 0, !dbg !5616
  store ptr %arraydecay, ptr %retval, align 8, !dbg !5618
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5618

cleanup:                                          ; preds = %if.end, %cond.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %dr) #10, !dbg !5619
  %15 = load ptr, ptr %retval, align 8, !dbg !5619
  ret ptr %15, !dbg !5619
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @drmm_kstrdup(ptr noundef %dev, ptr noundef %s, i32 noundef %gfp) #0 align 16 !dbg !5620 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %gfp.addr = alloca i32, align 4
  %size = alloca i64, align 8
  %buf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5624, metadata !DIExpression()), !dbg !5629
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !5625, metadata !DIExpression()), !dbg !5630
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !5626, metadata !DIExpression()), !dbg !5631
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #10, !dbg !5632
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5627, metadata !DIExpression()), !dbg !5633
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #10, !dbg !5634
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5628, metadata !DIExpression()), !dbg !5635
  %0 = load ptr, ptr %s.addr, align 8, !dbg !5636
  %tobool = icmp ne ptr %0, null, !dbg !5636
  br i1 %tobool, label %if.end, label %if.then, !dbg !5638

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5639
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5639

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8, !dbg !5640
  %call = call i64 @strlen(ptr noundef %1) #11, !dbg !5641
  %add = add i64 %call, 1, !dbg !5642
  store i64 %add, ptr %size, align 8, !dbg !5643
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5644
  %3 = load i64, ptr %size, align 8, !dbg !5645
  %4 = load i32, ptr %gfp.addr, align 4, !dbg !5646
  %call1 = call noalias ptr @drmm_kmalloc(ptr noundef %2, i64 noundef %3, i32 noundef %4) #11, !dbg !5647
  store ptr %call1, ptr %buf, align 8, !dbg !5648
  %5 = load ptr, ptr %buf, align 8, !dbg !5649
  %tobool2 = icmp ne ptr %5, null, !dbg !5649
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5651

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %buf, align 8, !dbg !5652
  %7 = load ptr, ptr %s.addr, align 8, !dbg !5653
  %8 = load i64, ptr %size, align 8, !dbg !5654
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %7, i64 %8, i1 false), !dbg !5655
  br label %if.end4, !dbg !5655

if.end4:                                          ; preds = %if.then3, %if.end
  %9 = load ptr, ptr %buf, align 8, !dbg !5656
  store ptr %9, ptr %retval, align 8, !dbg !5657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5657

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #10, !dbg !5658
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #10, !dbg !5658
  %10 = load ptr, ptr %retval, align 8, !dbg !5658
  ret ptr %10, !dbg !5658
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5659 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drmm_kfree(ptr noundef %dev, ptr noundef %data) #0 align 16 !dbg !5662 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %dr_match = alloca ptr, align 8
  %dr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %__mptr17 = alloca ptr, align 8
  %tmp21 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp50 = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5664, metadata !DIExpression()), !dbg !5686
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5665, metadata !DIExpression()), !dbg !5687
  call void @llvm.lifetime.start.p0(i64 8, ptr %dr_match) #10, !dbg !5688
  call void @llvm.dbg.declare(metadata ptr %dr_match, metadata !5666, metadata !DIExpression()), !dbg !5689
  store ptr null, ptr %dr_match, align 8, !dbg !5689
  call void @llvm.lifetime.start.p0(i64 8, ptr %dr) #10, !dbg !5688
  call void @llvm.dbg.declare(metadata ptr %dr, metadata !5667, metadata !DIExpression()), !dbg !5690
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #10, !dbg !5691
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5668, metadata !DIExpression()), !dbg !5692
  %0 = load ptr, ptr %data.addr, align 8, !dbg !5693
  %tobool = icmp ne ptr %0, null, !dbg !5693
  br i1 %tobool, label %if.end, label %if.then, !dbg !5695

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5696

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5697

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !5698

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #10, !dbg !5699
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5669, metadata !DIExpression()), !dbg !5699
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #10, !dbg !5699
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5673, metadata !DIExpression()), !dbg !5699
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5699
  %conv = zext i1 %cmp to i32, !dbg !5699
  store i32 1, ptr %tmp, align 4, !dbg !5699
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #10, !dbg !5700
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #10, !dbg !5700
  %1 = load i32, ptr %tmp, align 4, !dbg !5699
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5700
  %managed = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 3, !dbg !5700
  %lock = getelementptr inbounds %struct.anon.13, ptr %managed, i32 0, i32 2, !dbg !5700
  %call = call ptr @spinlock_check(ptr noundef %lock) #11, !dbg !5700
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #11, !dbg !5700
  store i64 %call2, ptr %flags, align 8, !dbg !5700
  br label %do.cond, !dbg !5700

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5700

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !5698

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5698

do.end4:                                          ; preds = %do.cond3
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !5701
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5674, metadata !DIExpression()), !dbg !5701
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5701
  %managed5 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 3, !dbg !5701
  %resources = getelementptr inbounds %struct.anon.13, ptr %managed5, i32 0, i32 0, !dbg !5701
  %next = getelementptr inbounds %struct.list_head, ptr %resources, i32 0, i32 0, !dbg !5701
  %4 = load ptr, ptr %next, align 8, !dbg !5701
  store ptr %4, ptr %__mptr, align 8, !dbg !5701
  %5 = load ptr, ptr %__mptr, align 8, !dbg !5701
  %add.ptr = getelementptr i8, ptr %5, i64 0, !dbg !5701
  store ptr %add.ptr, ptr %tmp6, align 8, !dbg !5701
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !5702
  %6 = load ptr, ptr %tmp6, align 8, !dbg !5701
  store ptr %6, ptr %dr, align 8, !dbg !5702
  br label %for.cond, !dbg !5702

for.cond:                                         ; preds = %for.inc, %do.end4
  %7 = load ptr, ptr %dr, align 8, !dbg !5703
  %node = getelementptr inbounds %struct.drmres, ptr %7, i32 0, i32 0, !dbg !5703
  %entry7 = getelementptr inbounds %struct.drmres_node, ptr %node, i32 0, i32 0, !dbg !5703
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !5703
  %managed8 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 3, !dbg !5703
  %resources9 = getelementptr inbounds %struct.anon.13, ptr %managed8, i32 0, i32 0, !dbg !5703
  %cmp10 = icmp eq ptr %entry7, %resources9, !dbg !5703
  %lnot = xor i1 %cmp10, true, !dbg !5703
  br i1 %lnot, label %for.body, label %for.end, !dbg !5702

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %dr, align 8, !dbg !5704
  %data12 = getelementptr inbounds %struct.drmres, ptr %9, i32 0, i32 1, !dbg !5707
  %arraydecay = getelementptr inbounds [0 x i8], ptr %data12, i64 0, i64 0, !dbg !5704
  %10 = load ptr, ptr %data.addr, align 8, !dbg !5708
  %cmp13 = icmp eq ptr %arraydecay, %10, !dbg !5709
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !5710

if.then15:                                        ; preds = %for.body
  %11 = load ptr, ptr %dr, align 8, !dbg !5711
  store ptr %11, ptr %dr_match, align 8, !dbg !5713
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !5714
  %13 = load ptr, ptr %dr_match, align 8, !dbg !5715
  call void @del_dr(ptr noundef %12, ptr noundef %13) #11, !dbg !5716
  br label %for.end, !dbg !5717

if.end16:                                         ; preds = %for.body
  br label %for.inc, !dbg !5718

for.inc:                                          ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr17) #10, !dbg !5719
  call void @llvm.dbg.declare(metadata ptr %__mptr17, metadata !5677, metadata !DIExpression()), !dbg !5719
  %14 = load ptr, ptr %dr, align 8, !dbg !5719
  %node18 = getelementptr inbounds %struct.drmres, ptr %14, i32 0, i32 0, !dbg !5719
  %entry19 = getelementptr inbounds %struct.drmres_node, ptr %node18, i32 0, i32 0, !dbg !5719
  %next20 = getelementptr inbounds %struct.list_head, ptr %entry19, i32 0, i32 0, !dbg !5719
  %15 = load ptr, ptr %next20, align 8, !dbg !5719
  store ptr %15, ptr %__mptr17, align 8, !dbg !5719
  %16 = load ptr, ptr %__mptr17, align 8, !dbg !5719
  %add.ptr22 = getelementptr i8, ptr %16, i64 0, !dbg !5719
  store ptr %add.ptr22, ptr %tmp21, align 8, !dbg !5719
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr17) #10, !dbg !5703
  %17 = load ptr, ptr %tmp21, align 8, !dbg !5719
  store ptr %17, ptr %dr, align 8, !dbg !5703
  br label %for.cond, !dbg !5703, !llvm.loop !5720

for.end:                                          ; preds = %if.then15, %for.cond
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !5722
  %managed23 = getelementptr inbounds %struct.drm_device, ptr %18, i32 0, i32 3, !dbg !5723
  %lock24 = getelementptr inbounds %struct.anon.13, ptr %managed23, i32 0, i32 2, !dbg !5724
  %19 = load i64, ptr %flags, align 8, !dbg !5725
  call void @spin_unlock_irqrestore(ptr noundef %lock24, i64 noundef %19) #11, !dbg !5726
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5727
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5680, metadata !DIExpression()), !dbg !5727
  %20 = load ptr, ptr %dr_match, align 8, !dbg !5727
  %tobool25 = icmp ne ptr %20, null, !dbg !5727
  %lnot26 = xor i1 %tobool25, true, !dbg !5727
  %lnot27 = xor i1 %lnot26, true, !dbg !5727
  %lnot28 = xor i1 %lnot27, true, !dbg !5727
  %lnot.ext = zext i1 %lnot28 to i32, !dbg !5727
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5727
  %21 = load i32, ptr %__ret_warn_on, align 4, !dbg !5728
  %tobool29 = icmp ne i32 %21, 0, !dbg !5728
  %lnot30 = xor i1 %tobool29, true, !dbg !5728
  %lnot32 = xor i1 %lnot30, true, !dbg !5728
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !5728
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !5728
  %expval = call i64 @llvm.expect.i64(i64 %conv34, i64 0), !dbg !5728
  %tobool35 = icmp ne i64 %expval, 0, !dbg !5728
  br i1 %tobool35, label %if.then36, label %if.end49, !dbg !5727

if.then36:                                        ; preds = %for.end
  br label %do.body37, !dbg !5728

do.body37:                                        ; preds = %if.then36
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !5729
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5683, metadata !DIExpression()), !dbg !5729
  store i32 2305, ptr %__flags, align 4, !dbg !5729
  br label %do.body38, !dbg !5729

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !5730

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !5730

do.end40:                                         ; preds = %do.cond39
  br label %do.body41, !dbg !5729

do.body41:                                        ; preds = %do.end40
  %22 = load i32, ptr %__flags, align 4, !dbg !5732
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 260, i32 %22, i64 12) #10, !dbg !5732, !srcloc !5734
  br label %do.cond42, !dbg !5732

do.cond42:                                        ; preds = %do.body41
  br label %do.end43, !dbg !5732

do.end43:                                         ; preds = %do.cond42
  br label %do.body44, !dbg !5729

do.body44:                                        ; preds = %do.end43
  br label %do.cond45, !dbg !5735

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !5735

do.end46:                                         ; preds = %do.cond45
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !5728
  br label %do.cond47, !dbg !5729

do.cond47:                                        ; preds = %do.end46
  br label %do.end48, !dbg !5729

do.end48:                                         ; preds = %do.cond47
  br label %if.end49, !dbg !5729

if.end49:                                         ; preds = %do.end48, %for.end
  %23 = load i32, ptr %__ret_warn_on, align 4, !dbg !5727
  %tobool51 = icmp ne i32 %23, 0, !dbg !5727
  %lnot52 = xor i1 %tobool51, true, !dbg !5727
  %lnot54 = xor i1 %lnot52, true, !dbg !5727
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !5727
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !5727
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !5727
  store i64 %expval57, ptr %tmp50, align 8, !dbg !5728
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5737
  %24 = load i64, ptr %tmp50, align 8, !dbg !5727
  %tobool58 = icmp ne i64 %24, 0, !dbg !5737
  br i1 %tobool58, label %if.then59, label %if.end60, !dbg !5738

if.then59:                                        ; preds = %if.end49
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5739

if.end60:                                         ; preds = %if.end49
  %25 = load ptr, ptr %dr_match, align 8, !dbg !5740
  call void @free_dr(ptr noundef %25) #11, !dbg !5741
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5742
  br label %cleanup, !dbg !5742

cleanup:                                          ; preds = %if.end60, %if.then59, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #10, !dbg !5742
  call void @llvm.lifetime.end.p0(i64 8, ptr %dr) #10, !dbg !5742
  call void @llvm.lifetime.end.p0(i64 8, ptr %dr_match) #10, !dbg !5742
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5742

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5743 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #6 align 16 !dbg !5748 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5753, metadata !DIExpression()), !dbg !5754
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5755
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5756
  ret ptr %1, !dbg !5757
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @del_dr(ptr noundef %dev, ptr noundef %dr) #0 align 16 !dbg !5758 {
entry:
  %dev.addr = alloca ptr, align 8
  %dr.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5760, metadata !DIExpression()), !dbg !5762
  store ptr %dr, ptr %dr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dr.addr, metadata !5761, metadata !DIExpression()), !dbg !5763
  %0 = load ptr, ptr %dr.addr, align 8, !dbg !5764
  %node = getelementptr inbounds %struct.drmres, ptr %0, i32 0, i32 0, !dbg !5765
  %entry1 = getelementptr inbounds %struct.drmres_node, ptr %node, i32 0, i32 0, !dbg !5766
  call void @list_del_init(ptr noundef %entry1) #11, !dbg !5767
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5768
  %tobool = icmp ne ptr %1, null, !dbg !5768
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5768

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5768
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2, !dbg !5768
  %3 = load ptr, ptr %dev2, align 8, !dbg !5768
  br label %cond.end, !dbg !5768

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5768

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ null, %cond.false ], !dbg !5768
  %4 = load ptr, ptr %dr.addr, align 8, !dbg !5768
  %5 = load ptr, ptr %dr.addr, align 8, !dbg !5768
  %node3 = getelementptr inbounds %struct.drmres, ptr %5, i32 0, i32 0, !dbg !5768
  %name = getelementptr inbounds %struct.drmres_node, ptr %node3, i32 0, i32 2, !dbg !5768
  %6 = load ptr, ptr %name, align 8, !dbg !5768
  %7 = load ptr, ptr %dr.addr, align 8, !dbg !5768
  %node4 = getelementptr inbounds %struct.drmres, ptr %7, i32 0, i32 0, !dbg !5768
  %size = getelementptr inbounds %struct.drmres_node, ptr %node4, i32 0, i32 3, !dbg !5768
  %8 = load i64, ptr %size, align 8, !dbg !5768
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond, i32 noundef 9, ptr noundef @.str.8, ptr noundef %4, ptr noundef %6, i64 noundef %8) #11, !dbg !5768
  ret void, !dbg !5769
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #6 align 16 !dbg !5770 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5774, metadata !DIExpression()), !dbg !5780
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5775, metadata !DIExpression()), !dbg !5781
  br label %do.body, !dbg !5782

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #10, !dbg !5783
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5776, metadata !DIExpression()), !dbg !5783
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #10, !dbg !5783
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5779, metadata !DIExpression()), !dbg !5783
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5783
  %conv = zext i1 %cmp to i32, !dbg !5783
  store i32 1, ptr %tmp, align 4, !dbg !5783
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #10, !dbg !5784
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #10, !dbg !5784
  %0 = load i32, ptr %tmp, align 4, !dbg !5783
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !5784
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !5784
  %3 = load i64, ptr %flags.addr, align 8, !dbg !5784
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #11, !dbg !5784
  br label %do.end, !dbg !5784

do.end:                                           ; preds = %do.body
  ret void, !dbg !5785
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__drmm_mutex_release(ptr noundef %dev, ptr noundef %res) #0 align 16 !dbg !5786 {
entry:
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %lock = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5788, metadata !DIExpression()), !dbg !5792
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5789, metadata !DIExpression()), !dbg !5793
  call void @llvm.lifetime.start.p0(i64 8, ptr %lock) #10, !dbg !5794
  call void @llvm.dbg.declare(metadata ptr %lock, metadata !5790, metadata !DIExpression()), !dbg !5795
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5796
  store ptr %0, ptr %lock, align 8, !dbg !5795
  %1 = load ptr, ptr %lock, align 8, !dbg !5797
  call void @mutex_destroy(ptr noundef %1) #11, !dbg !5798
  call void @llvm.lifetime.end.p0(i64 8, ptr %lock) #10, !dbg !5799
  ret void, !dbg !5799
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mutex_destroy(ptr noundef %lock) #4 align 16 !dbg !5800 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5804, metadata !DIExpression()), !dbg !5805
  ret void, !dbg !5806
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #4 align 16 !dbg !5807 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5809, metadata !DIExpression()), !dbg !5810
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5811
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #11, !dbg !5813
  br i1 %call, label %if.end, label %if.then, !dbg !5814

if.then:                                          ; preds = %entry
  br label %return, !dbg !5815

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5816
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5817
  %2 = load ptr, ptr %prev, align 8, !dbg !5817
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !5818
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5819
  %4 = load ptr, ptr %next, align 8, !dbg !5819
  call void @__list_del(ptr noundef %2, ptr noundef %4) #11, !dbg !5820
  br label %return, !dbg !5821

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5821
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #4 align 16 !dbg !5822 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5826, metadata !DIExpression()), !dbg !5827
  ret i1 true, !dbg !5828
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !5829 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5833, metadata !DIExpression()), !dbg !5835
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5834, metadata !DIExpression()), !dbg !5836
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !5837
  %1 = load ptr, ptr %next.addr, align 8, !dbg !5838
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5839
  store ptr %0, ptr %prev1, align 8, !dbg !5840
  br label %do.body, !dbg !5841

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5842

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5844

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5842

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5846
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !5846
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5846
  store volatile ptr %2, ptr %next4, align 8, !dbg !5846
  br label %do.end5, !dbg !5846

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5842

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5848
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5849 dso_local void @kfree_const(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5852 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #4 align 16 !dbg !5853 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !5858, metadata !DIExpression()), !dbg !5859
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !5860, !range !5861, !noundef !996
  %tobool = trunc i8 %0 to i1, !dbg !5860
  %lnot = xor i1 %tobool, true, !dbg !5860
  %lnot1 = xor i1 %lnot, true, !dbg !5860
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5860
  %conv = sext i32 %lnot.ext to i64, !dbg !5860
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5860
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5860
  ret i1 %tobool2, !dbg !5862
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5863 dso_local noalias ptr @__kmalloc_node_track_caller(i64 noundef, i32 noundef, i32 noundef, i64 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #4 align 16 !dbg !5866 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5868, metadata !DIExpression()), !dbg !5869
  br label %do.body, !dbg !5870

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5871

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5873

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5871

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5875
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5875
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5875
  store volatile ptr %0, ptr %next, align 8, !dbg !5875
  br label %do.end3, !dbg !5875

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5871

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5877

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5878

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5880

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5878

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5882
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5882
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5882
  store volatile ptr %2, ptr %prev, align 8, !dbg !5882
  br label %do.end9, !dbg !5882

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5878

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5884
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !5885 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5887, metadata !DIExpression()), !dbg !5889
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5888, metadata !DIExpression()), !dbg !5890
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5891
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5892
  %2 = load ptr, ptr %head.addr, align 8, !dbg !5893
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !5894
  %3 = load ptr, ptr %next, align 8, !dbg !5894
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #11, !dbg !5895
  ret void, !dbg !5896
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !5897 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5901, metadata !DIExpression()), !dbg !5904
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5902, metadata !DIExpression()), !dbg !5905
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5903, metadata !DIExpression()), !dbg !5906
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5907
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !5909
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5910
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11, !dbg !5911
  br i1 %call, label %if.end, label %if.then, !dbg !5912

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5913

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !5914
  %4 = load ptr, ptr %next.addr, align 8, !dbg !5915
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !5916
  store ptr %3, ptr %prev1, align 8, !dbg !5917
  %5 = load ptr, ptr %next.addr, align 8, !dbg !5918
  %6 = load ptr, ptr %new.addr, align 8, !dbg !5919
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !5920
  store ptr %5, ptr %next2, align 8, !dbg !5921
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !5922
  %8 = load ptr, ptr %new.addr, align 8, !dbg !5923
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !5924
  store ptr %7, ptr %prev3, align 8, !dbg !5925
  br label %do.body, !dbg !5926

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5927

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5929

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5927

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !5931
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !5931
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !5931
  store volatile ptr %9, ptr %next6, align 8, !dbg !5931
  br label %do.end7, !dbg !5931

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5927

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5933
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !5934 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5938, metadata !DIExpression()), !dbg !5941
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5939, metadata !DIExpression()), !dbg !5942
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5940, metadata !DIExpression()), !dbg !5943
  ret i1 true, !dbg !5944
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #4 align 16 !dbg !5945 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5947, metadata !DIExpression()), !dbg !5948
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5949
  call void @__list_del_entry(ptr noundef %0) #11, !dbg !5950
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5951
  call void @INIT_LIST_HEAD(ptr noundef %1) #11, !dbg !5952
  ret void, !dbg !5953
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5954 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { noredzone allocsize(0) }

!llvm.dbg.cu = !{!29}
!llvm.module.flags = !{!5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224}
!llvm.ident = !{!5225}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/gpu/drm/drm_managed.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5bf947d8eb4040aced328a452f6ab9d9")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 22)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 23)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 20)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 30)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 148, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 32)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___drmm_add_action305", scope: !29, file: !2, line: 163, type: !245, isLocal: true, isDefinition: true)
!29 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/.drm_managed.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/drm\22 -D KBUILD_BASENAME=\22drm_managed\22 -D KBUILD_MODNAME=\22drm\22 -D __KBUILD_MODNAME=kmod_drm -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/drm_managed.ll drivers/gpu/drm/drm_managed.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !244, globals: !5195, splitDebugInlining: false, nameTableKind: None)
!30 = !{!31, !39, !44, !49, !55, !63, !79, !86, !94, !100, !107, !113, !119, !126, !134, !142, !151, !156, !161, !167, !210, !219, !226, !239}
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !32, line: 312, baseType: !33, size: 32, elements: !34)
!32 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!33 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!34 = !{!35, !36, !37, !38}
!35 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!36 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!37 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!38 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !40, line: 2052, baseType: !33, size: 32, elements: !41)
!40 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!41 = !{!42, !43}
!42 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!43 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !45, line: 65, baseType: !33, size: 32, elements: !46)
!45 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!46 = !{!47, !48}
!47 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!48 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !50, line: 16, baseType: !33, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!51 = !{!52, !53, !54}
!52 = !DIEnumerator(name: "TT_NONE", value: 0)
!53 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!54 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !56, line: 68, baseType: !33, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!57 = !{!58, !59, !60, !61, !62}
!58 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!59 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!60 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!61 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!62 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !64, line: 1325, baseType: !33, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!66 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!67 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!68 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!69 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!70 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!71 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!72 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!73 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!74 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!75 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!76 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!77 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!78 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !80, line: 51, baseType: !33, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!81 = !{!82, !83, !84, !85}
!82 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!83 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!84 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!85 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !87, line: 9, baseType: !33, size: 32, elements: !88)
!87 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!88 = !{!89, !90, !91, !92, !93}
!89 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!90 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!91 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!92 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!93 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !95, line: 54, baseType: !33, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!96 = !{!97, !98, !99}
!97 = !DIEnumerator(name: "USRQUOTA", value: 0)
!98 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!99 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !101, line: 15, baseType: !33, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!102 = !{!103, !104, !105, !106}
!103 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!104 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!105 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!106 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !108, line: 26, baseType: !33, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!109 = !{!110, !111, !112}
!110 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!111 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!112 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !114, line: 45, baseType: !33, size: 32, elements: !115)
!114 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!115 = !{!116, !117, !118}
!116 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!117 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!118 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !120, line: 487, baseType: !33, size: 32, elements: !121)
!120 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!121 = !{!122, !123, !124, !125}
!122 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!123 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!124 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!125 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !127, line: 620, baseType: !33, size: 32, elements: !128)
!127 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!128 = !{!129, !130, !131, !132, !133}
!129 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!130 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!131 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!132 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!133 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !127, line: 597, baseType: !135, size: 32, elements: !136)
!135 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!136 = !{!137, !138, !139, !140, !141}
!137 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!138 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!139 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!140 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!141 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !120, line: 547, baseType: !33, size: 32, elements: !143)
!143 = !{!144, !145, !146, !147, !148, !149, !150}
!144 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!145 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!146 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!147 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!148 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!149 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!150 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !120, line: 564, baseType: !33, size: 32, elements: !152)
!152 = !{!153, !154, !155}
!153 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!154 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!155 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !120, line: 577, baseType: !33, size: 32, elements: !157)
!157 = !{!158, !159, !160}
!158 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!159 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!160 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !120, line: 503, baseType: !33, size: 32, elements: !162)
!162 = !{!163, !164, !165, !166}
!163 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!164 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!165 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!166 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_status", file: !168, line: 91, baseType: !135, size: 32, elements: !169)
!168 = !DIFile(filename: "./include/drm/drm_modes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9464b1418570a46bf1ac7fbe26140ef4")
!169 = !{!170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209}
!170 = !DIEnumerator(name: "MODE_OK", value: 0)
!171 = !DIEnumerator(name: "MODE_HSYNC", value: 1)
!172 = !DIEnumerator(name: "MODE_VSYNC", value: 2)
!173 = !DIEnumerator(name: "MODE_H_ILLEGAL", value: 3)
!174 = !DIEnumerator(name: "MODE_V_ILLEGAL", value: 4)
!175 = !DIEnumerator(name: "MODE_BAD_WIDTH", value: 5)
!176 = !DIEnumerator(name: "MODE_NOMODE", value: 6)
!177 = !DIEnumerator(name: "MODE_NO_INTERLACE", value: 7)
!178 = !DIEnumerator(name: "MODE_NO_DBLESCAN", value: 8)
!179 = !DIEnumerator(name: "MODE_NO_VSCAN", value: 9)
!180 = !DIEnumerator(name: "MODE_MEM", value: 10)
!181 = !DIEnumerator(name: "MODE_VIRTUAL_X", value: 11)
!182 = !DIEnumerator(name: "MODE_VIRTUAL_Y", value: 12)
!183 = !DIEnumerator(name: "MODE_MEM_VIRT", value: 13)
!184 = !DIEnumerator(name: "MODE_NOCLOCK", value: 14)
!185 = !DIEnumerator(name: "MODE_CLOCK_HIGH", value: 15)
!186 = !DIEnumerator(name: "MODE_CLOCK_LOW", value: 16)
!187 = !DIEnumerator(name: "MODE_CLOCK_RANGE", value: 17)
!188 = !DIEnumerator(name: "MODE_BAD_HVALUE", value: 18)
!189 = !DIEnumerator(name: "MODE_BAD_VVALUE", value: 19)
!190 = !DIEnumerator(name: "MODE_BAD_VSCAN", value: 20)
!191 = !DIEnumerator(name: "MODE_HSYNC_NARROW", value: 21)
!192 = !DIEnumerator(name: "MODE_HSYNC_WIDE", value: 22)
!193 = !DIEnumerator(name: "MODE_HBLANK_NARROW", value: 23)
!194 = !DIEnumerator(name: "MODE_HBLANK_WIDE", value: 24)
!195 = !DIEnumerator(name: "MODE_VSYNC_NARROW", value: 25)
!196 = !DIEnumerator(name: "MODE_VSYNC_WIDE", value: 26)
!197 = !DIEnumerator(name: "MODE_VBLANK_NARROW", value: 27)
!198 = !DIEnumerator(name: "MODE_VBLANK_WIDE", value: 28)
!199 = !DIEnumerator(name: "MODE_PANEL", value: 29)
!200 = !DIEnumerator(name: "MODE_INTERLACE_WIDTH", value: 30)
!201 = !DIEnumerator(name: "MODE_ONE_WIDTH", value: 31)
!202 = !DIEnumerator(name: "MODE_ONE_HEIGHT", value: 32)
!203 = !DIEnumerator(name: "MODE_ONE_SIZE", value: 33)
!204 = !DIEnumerator(name: "MODE_NO_REDUCED", value: 34)
!205 = !DIEnumerator(name: "MODE_NO_STEREO", value: 35)
!206 = !DIEnumerator(name: "MODE_NO_420", value: 36)
!207 = !DIEnumerator(name: "MODE_STALE", value: -3)
!208 = !DIEnumerator(name: "MODE_BAD", value: -2)
!209 = !DIEnumerator(name: "MODE_ERROR", value: -1)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_picture_aspect", file: !211, line: 96, baseType: !33, size: 32, elements: !212)
!211 = !DIFile(filename: "./include/linux/hdmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "47f4ac8f6225c51a6d030bad9086771f")
!212 = !{!213, !214, !215, !216, !217, !218}
!213 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_NONE", value: 0)
!214 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_4_3", value: 1)
!215 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_16_9", value: 2)
!216 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_64_27", value: 3)
!217 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_256_135", value: 4)
!218 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_RESERVED", value: 5)
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "switch_power_state", file: !220, line: 30, baseType: !33, size: 32, elements: !221)
!220 = !DIFile(filename: "./include/drm/drm_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9743f4a84c342e86d9e79f688e9c49c5")
!221 = !{!222, !223, !224, !225}
!222 = !DIEnumerator(name: "DRM_SWITCH_POWER_ON", value: 0)
!223 = !DIEnumerator(name: "DRM_SWITCH_POWER_OFF", value: 1)
!224 = !DIEnumerator(name: "DRM_SWITCH_POWER_CHANGING", value: 2)
!225 = !DIEnumerator(name: "DRM_SWITCH_POWER_DYNAMIC_OFF", value: 3)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_debug_category", file: !227, line: 330, baseType: !33, size: 32, elements: !228)
!227 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!228 = !{!229, !230, !231, !232, !233, !234, !235, !236, !237, !238}
!229 = !DIEnumerator(name: "DRM_UT_CORE", value: 0)
!230 = !DIEnumerator(name: "DRM_UT_DRIVER", value: 1)
!231 = !DIEnumerator(name: "DRM_UT_KMS", value: 2)
!232 = !DIEnumerator(name: "DRM_UT_PRIME", value: 3)
!233 = !DIEnumerator(name: "DRM_UT_ATOMIC", value: 4)
!234 = !DIEnumerator(name: "DRM_UT_VBL", value: 5)
!235 = !DIEnumerator(name: "DRM_UT_STATE", value: 6)
!236 = !DIEnumerator(name: "DRM_UT_LEASE", value: 7)
!237 = !DIEnumerator(name: "DRM_UT_DP", value: 8)
!238 = !DIEnumerator(name: "DRM_UT_DRMRES", value: 9)
!239 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !240, line: 10, baseType: !33, size: 32, elements: !241)
!240 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!241 = !{!242, !243}
!242 = !DIEnumerator(name: "false", value: 0)
!243 = !DIEnumerator(name: "true", value: 1)
!244 = !{!245, !246, !3323, !265, !1269, !5193, !419}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drmres", file: !2, line: 46, size: 320, elements: !248)
!248 = !{!249, !5192}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !247, file: !2, line: 47, baseType: !250, size: 320)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drmres_node", file: !2, line: 39, size: 320, elements: !251)
!251 = !{!252, !259, !5190, !5191}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !250, file: !2, line: 40, baseType: !253, size: 128)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !254, line: 190, size: 128, elements: !255)
!254 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!255 = !{!256, !258}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !253, file: !254, line: 191, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !253, file: !254, line: 191, baseType: !257, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !250, file: !2, line: 41, baseType: !260, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "drmres_release_t", file: !261, line: 13, baseType: !262)
!261 = !DIFile(filename: "./include/drm/drm_managed.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2765e45efba520130e79a6037b825728")
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !265, !245}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !220, line: 50, size: 12736, elements: !267)
!267 = !{!268, !269, !283, !4750, !4756, !4761, !4762, !4774, !4775, !4776, !4777, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !5176, !5177, !5178, !5181, !5184, !5185, !5188, !5189}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !266, file: !220, line: 52, baseType: !135, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !266, file: !220, line: 55, baseType: !270, size: 32, offset: 32)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !271, line: 19, size: 32, elements: !272)
!271 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!272 = !{!273}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !270, file: !271, line: 20, baseType: !274, size: 32)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !275, line: 113, baseType: !276)
!275 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !275, line: 111, size: 32, elements: !277)
!277 = !{!278}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !276, file: !275, line: 112, baseType: !279, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !254, line: 174, baseType: !280)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !254, line: 172, size: 32, elements: !281)
!281 = !{!282}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !280, file: !254, line: 173, baseType: !135, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !266, file: !220, line: 58, baseType: !284, size: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !120, line: 705, size: 5824, elements: !286)
!286 = !{!287, !4304, !4305, !4308, !4309, !4362, !4432, !4433, !4434, !4435, !4436, !4443, !4535, !4548, !4558, !4562, !4564, !4565, !4566, !4570, !4577, !4578, !4581, !4584, !4588, !4692, !4693, !4694, !4695, !4696, !4697, !4727, !4728, !4729, !4732, !4735, !4744, !4745, !4746, !4747, !4748, !4749}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !285, file: !120, line: 706, baseType: !288, size: 512)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !289, line: 64, size: 512, elements: !290)
!289 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!290 = !{!291, !294, !295, !297, !382, !4206, !4298, !4299, !4300, !4301, !4302, !4303}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !288, file: !289, line: 65, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !288, file: !289, line: 66, baseType: !253, size: 128, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !288, file: !289, line: 67, baseType: !296, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !288, file: !289, line: 68, baseType: !298, size: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !289, line: 168, size: 768, elements: !300)
!300 = !{!301, !302, !341, !342}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !299, file: !289, line: 169, baseType: !253, size: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !299, file: !289, line: 170, baseType: !303, size: 32, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !304, line: 29, baseType: !305)
!304 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !304, line: 17, size: 32, elements: !306)
!306 = !{!307}
!307 = !DIDerivedType(tag: DW_TAG_member, scope: !305, file: !304, line: 18, baseType: !308, size: 32)
!308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !305, file: !304, line: 18, size: 32, elements: !309)
!309 = !{!310}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !308, file: !304, line: 19, baseType: !311, size: 32)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !312, line: 14, size: 32, elements: !313)
!312 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!313 = !{!314}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !311, file: !312, line: 15, baseType: !315, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !316, line: 44, baseType: !317)
!316 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !316, line: 14, size: 32, elements: !318)
!318 = !{!319}
!319 = !DIDerivedType(tag: DW_TAG_member, scope: !317, file: !316, line: 15, baseType: !320, size: 32)
!320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !317, file: !316, line: 15, size: 32, elements: !321)
!321 = !{!322, !323, !333}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !320, file: !316, line: 16, baseType: !279, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, scope: !320, file: !316, line: 24, baseType: !324, size: 16)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !320, file: !316, line: 24, size: 16, elements: !325)
!325 = !{!326, !332}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !324, file: !316, line: 25, baseType: !327, size: 8)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !328, line: 17, baseType: !329)
!328 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !330, line: 21, baseType: !331)
!330 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!331 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !324, file: !316, line: 26, baseType: !327, size: 8, offset: 8)
!333 = !DIDerivedType(tag: DW_TAG_member, scope: !320, file: !316, line: 28, baseType: !334, size: 32)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !320, file: !316, line: 28, size: 32, elements: !335)
!335 = !{!336, !340}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !334, file: !316, line: 29, baseType: !337, size: 16)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !328, line: 19, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !330, line: 24, baseType: !339)
!339 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !334, file: !316, line: 30, baseType: !337, size: 16, offset: 16)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !299, file: !289, line: 171, baseType: !288, size: 512, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !299, file: !289, line: 172, baseType: !343, size: 64, offset: 704)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !289, line: 133, size: 192, elements: !346)
!346 = !{!347, !354, !359}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !345, file: !289, line: 134, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!135, !352}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !345, file: !289, line: 135, baseType: !355, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!292, !352}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !345, file: !289, line: 136, baseType: !360, size: 64, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!135, !352, !364}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !289, line: 125, size: 20736, elements: !366)
!366 = !{!367, !372, !376, !377, !381}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !365, file: !289, line: 126, baseType: !368, size: 192)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 192, elements: !370)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!370 = !{!371}
!371 = !DISubrange(count: 3)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !365, file: !289, line: 127, baseType: !373, size: 4096, offset: 192)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 4096, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !365, file: !289, line: 128, baseType: !135, size: 32, offset: 4288)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !365, file: !289, line: 129, baseType: !378, size: 16384, offset: 4320)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 2048)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !365, file: !289, line: 130, baseType: !135, size: 32, offset: 20704)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !288, file: !289, line: 69, baseType: !383, size: 64, offset: 320)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !289, line: 116, size: 384, elements: !386)
!386 = !{!387, !391, !420, !4168, !4196, !4200}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !385, file: !289, line: 117, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !296}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !385, file: !289, line: 118, baseType: !392, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !395, line: 254, size: 128, elements: !396)
!395 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!396 = !{!397, !412}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !394, file: !395, line: 255, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!401, !296, !406, !369}
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !254, line: 66, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !403, line: 73, baseType: !404)
!403 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !403, line: 15, baseType: !405)
!405 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !395, line: 30, size: 128, elements: !408)
!408 = !{!409, !410}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !407, file: !395, line: 31, baseType: !292, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !407, file: !395, line: 32, baseType: !411, size: 16, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !254, line: 24, baseType: !339)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !394, file: !395, line: 256, baseType: !413, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!401, !296, !406, !292, !416}
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !254, line: 61, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !403, line: 72, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !403, line: 16, baseType: !419)
!419 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !385, file: !289, line: 119, baseType: !421, size: 64, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !395, line: 84, size: 320, elements: !425)
!425 = !{!426, !427, !431, !4164, !4166}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !424, file: !395, line: 85, baseType: !292, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !424, file: !395, line: 86, baseType: !428, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!411, !296, !406, !135}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !424, file: !395, line: 88, baseType: !432, size: 64, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!411, !296, !435, !135}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !395, line: 175, size: 512, elements: !437)
!437 = !{!438, !439, !440, !441, !4155, !4159, !4160}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !436, file: !395, line: 176, baseType: !407, size: 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !436, file: !395, line: 177, baseType: !416, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !436, file: !395, line: 178, baseType: !245, size: 64, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !436, file: !395, line: 179, baseType: !442, size: 64, offset: 256)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!445}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !40, line: 472, size: 1536, align: 64, elements: !447)
!447 = !{!448, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !4149, !4150, !4151, !4152, !4153, !4154}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !446, file: !40, line: 473, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !40, line: 641, size: 4800, elements: !451)
!451 = !{!452, !453, !454, !462, !463, !470, !471, !474, !475, !3928, !3929, !3930, !3931, !3932, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3972, !3975, !3976, !3977, !3986, !3987, !3988, !3989}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !450, file: !40, line: 642, baseType: !411, size: 16)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !450, file: !40, line: 643, baseType: !339, size: 16, offset: 16)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !450, file: !40, line: 644, baseType: !455, size: 32, offset: 32)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !456, line: 23, baseType: !457)
!456 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !456, line: 21, size: 32, elements: !458)
!458 = !{!459}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !457, file: !456, line: 22, baseType: !460, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !254, line: 37, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !403, line: 49, baseType: !33)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !450, file: !40, line: 645, baseType: !253, size: 128, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !450, file: !40, line: 646, baseType: !464, size: 32, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !456, line: 28, baseType: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !456, line: 26, size: 32, elements: !466)
!466 = !{!467}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !465, file: !456, line: 27, baseType: !468, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !254, line: 38, baseType: !469)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !403, line: 50, baseType: !33)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !450, file: !40, line: 647, baseType: !33, size: 32, offset: 224)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !450, file: !40, line: 650, baseType: !472, size: 64, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !40, line: 607, flags: DIFlagFwdDecl)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !450, file: !40, line: 651, baseType: !472, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !450, file: !40, line: 654, baseType: !476, size: 64, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !478)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !40, line: 1966, size: 2048, align: 512, elements: !479)
!479 = !{!480, !3762, !3772, !3776, !3780, !3784, !3788, !3792, !3796, !3800, !3804, !3805, !3809, !3813, !3850, !3879, !3883, !3889, !3893, !3897, !3901, !3905, !3909, !3915, !3919}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !478, file: !40, line: 1967, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!484, !449, !484, !33}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !486, line: 82, size: 1536, elements: !487)
!486 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!487 = !{!488, !489, !499, !507, !508, !528, !529, !531, !544, !3746, !3747, !3748, !3749, !3754, !3755, !3756}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !485, file: !486, line: 84, baseType: !33, size: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !485, file: !486, line: 85, baseType: !490, size: 32, offset: 32)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !491, line: 275, baseType: !492)
!491 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !491, line: 275, size: 32, elements: !493)
!493 = !{!494}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !492, file: !491, line: 275, baseType: !495, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !491, line: 69, baseType: !496)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !491, line: 64, size: 32, elements: !497)
!497 = !{!498}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !496, file: !491, line: 65, baseType: !33, size: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !485, file: !486, line: 86, baseType: !500, size: 128, offset: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !501, line: 38, size: 128, elements: !502)
!501 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!502 = !{!503, !505}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !500, file: !501, line: 39, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !500, file: !501, line: 39, baseType: !506, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !485, file: !486, line: 87, baseType: !484, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !485, file: !486, line: 88, baseType: !509, size: 128, offset: 256)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !486, line: 49, size: 128, elements: !510)
!510 = !{!511, !525}
!511 = !DIDerivedType(tag: DW_TAG_member, scope: !509, file: !486, line: 50, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !509, file: !486, line: 50, size: 64, elements: !513)
!513 = !{!514, !521}
!514 = !DIDerivedType(tag: DW_TAG_member, scope: !512, file: !486, line: 51, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !512, file: !486, line: 51, size: 64, elements: !516)
!516 = !{!517, !520}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !515, file: !486, line: 52, baseType: !518, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !328, line: 21, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !330, line: 27, baseType: !33)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !515, file: !486, line: 52, baseType: !518, size: 32, offset: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !512, file: !486, line: 54, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !328, line: 23, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !330, line: 31, baseType: !524)
!524 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !509, file: !486, line: 56, baseType: !526, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !485, file: !486, line: 89, baseType: !449, size: 64, offset: 384)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !485, file: !486, line: 91, baseType: !530, size: 256, offset: 448)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 256, elements: !25)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !485, file: !486, line: 94, baseType: !532, size: 64, offset: 704)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !533, line: 25, size: 64, elements: !534)
!533 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!534 = !{!535}
!535 = !DIDerivedType(tag: DW_TAG_member, scope: !532, file: !533, line: 26, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !532, file: !533, line: 26, size: 64, elements: !537)
!537 = !{!538, !539}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !536, file: !533, line: 28, baseType: !523, size: 64, align: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, scope: !536, file: !533, line: 30, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !536, file: !533, line: 30, size: 64, elements: !541)
!541 = !{!542, !543}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !540, file: !533, line: 31, baseType: !303, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !540, file: !533, line: 32, baseType: !135, size: 32, offset: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !485, file: !486, line: 95, baseType: !545, size: 64, offset: 768)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !547)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !486, line: 128, size: 1024, align: 512, elements: !548)
!548 = !{!549, !553, !554, !561, !567, !571, !575, !579, !580, !584, !588, !3736, !3740}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !547, file: !486, line: 129, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!135, !484, !33}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !547, file: !486, line: 130, baseType: !550, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !547, file: !486, line: 131, baseType: !555, size: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!135, !558, !560}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !547, file: !486, line: 132, baseType: !562, size: 64, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!135, !558, !33, !292, !565}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !547, file: !486, line: 134, baseType: !568, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!135, !558}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !547, file: !486, line: 135, baseType: !572, size: 64, offset: 320)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!135, !484}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !547, file: !486, line: 136, baseType: !576, size: 64, offset: 384)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !484}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !547, file: !486, line: 137, baseType: !576, size: 64, offset: 448)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !547, file: !486, line: 138, baseType: !581, size: 64, offset: 512)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !484, !449}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !547, file: !486, line: 139, baseType: !585, size: 64, offset: 576)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!369, !484, !369, !135}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !547, file: !486, line: 140, baseType: !589, size: 64, offset: 640)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!592, !3735}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !594, line: 70, size: 256, elements: !595)
!594 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!595 = !{!596, !597, !3731, !3732}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !593, file: !594, line: 71, baseType: !484, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !593, file: !594, line: 72, baseType: !598, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !40, line: 1190, size: 10752, elements: !600)
!600 = !{!601, !602, !605, !606, !607, !611, !1090, !3437, !3477, !3562, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3579, !3583, !3584, !3587, !3590, !3593, !3596, !3597, !3598, !3639, !3665, !3666, !3667, !3668, !3669, !3670, !3673, !3674, !3681, !3682, !3683, !3684, !3685, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !599, file: !40, line: 1191, baseType: !253, size: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !599, file: !40, line: 1192, baseType: !603, size: 32, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !254, line: 21, baseType: !604)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !254, line: 18, baseType: !518)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !599, file: !40, line: 1193, baseType: !331, size: 8, offset: 160)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !599, file: !40, line: 1194, baseType: !419, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !599, file: !40, line: 1195, baseType: !608, size: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !254, line: 52, baseType: !609)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !403, line: 88, baseType: !610)
!610 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !599, file: !40, line: 1196, baseType: !612, size: 64, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !40, line: 2366, size: 576, elements: !614)
!614 = !{!615, !616, !617, !623, !627, !631, !635, !1075, !1076, !1080, !1082, !1083, !1084, !1086, !1087, !1088, !1089}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !613, file: !40, line: 2367, baseType: !292, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !613, file: !40, line: 2368, baseType: !135, size: 32, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !613, file: !40, line: 2376, baseType: !618, size: 64, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!135, !621}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !594, line: 21, flags: DIFlagFwdDecl)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !613, file: !40, line: 2377, baseType: !624, size: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !626)
!626 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !40, line: 75, flags: DIFlagFwdDecl)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !613, file: !40, line: 2378, baseType: !628, size: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!484, !612, !135, !292, !245}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !613, file: !40, line: 2380, baseType: !632, size: 64, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !598}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !613, file: !40, line: 2381, baseType: !636, size: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !32, line: 402, size: 9216, align: 512, elements: !638)
!638 = !{!639, !640, !641, !645, !667, !693, !694, !695, !696, !700, !705, !706, !726, !782, !783, !784, !785, !786, !789, !790, !791, !799, !803, !830, !851, !852, !853, !854, !863, !886, !887, !890, !893, !894, !895, !896, !897, !898, !899, !904, !905, !1033, !1041, !1042, !1043, !1045, !1049, !1050, !1054, !1055, !1056, !1057, !1059, !1060, !1061, !1068, !1069, !1070, !1074}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !637, file: !32, line: 403, baseType: !31, size: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !637, file: !32, line: 406, baseType: !253, size: 128, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !637, file: !32, line: 409, baseType: !642, size: 448, offset: 192)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !643)
!643 = !{!644}
!644 = !DISubrange(count: 56)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !637, file: !32, line: 417, baseType: !646, size: 768, offset: 640)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !32, line: 45, size: 768, elements: !647)
!647 = !{!648, !649, !650, !651, !654}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !646, file: !32, line: 46, baseType: !288, size: 512)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !646, file: !32, line: 47, baseType: !636, size: 64, offset: 512)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !646, file: !32, line: 48, baseType: !296, size: 64, offset: 576)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !646, file: !32, line: 49, baseType: !652, size: 64, offset: 640)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !32, line: 49, flags: DIFlagFwdDecl)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !646, file: !32, line: 50, baseType: !655, size: 64, offset: 704)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !657, line: 26, size: 256, elements: !658)
!657 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!658 = !{!659, !660}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !656, file: !657, line: 27, baseType: !33, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !656, file: !657, line: 28, baseType: !661, size: 192, offset: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !662, line: 43, size: 192, elements: !663)
!662 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!663 = !{!664, !666}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !661, file: !662, line: 44, baseType: !665, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !312, line: 23, baseType: !311)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !661, file: !662, line: 45, baseType: !253, size: 128, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !637, file: !32, line: 418, baseType: !668, size: 64, offset: 1408)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !32, line: 53, size: 448, elements: !670)
!670 = !{!671, !672, !677, !681, !685, !689}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !669, file: !32, line: 54, baseType: !407, size: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !669, file: !32, line: 55, baseType: !673, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!401, !668, !676, !369}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !669, file: !32, line: 57, baseType: !678, size: 64, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!401, !668, !676, !292, !416}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !669, file: !32, line: 59, baseType: !682, size: 64, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !636, !292}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !669, file: !32, line: 60, baseType: !686, size: 64, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!135, !636}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !669, file: !32, line: 61, baseType: !690, size: 64, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{null, !636}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !637, file: !32, line: 419, baseType: !292, size: 64, offset: 1472)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !637, file: !32, line: 420, baseType: !292, size: 64, offset: 1536)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !637, file: !32, line: 421, baseType: !296, size: 64, offset: 1600)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !637, file: !32, line: 424, baseType: !697, size: 64, offset: 1664)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !699)
!699 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !32, line: 424, flags: DIFlagFwdDecl)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !637, file: !32, line: 425, baseType: !701, size: 64, offset: 1728)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !703)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !328, line: 20, baseType: !704)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !330, line: 26, baseType: !135)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !637, file: !32, line: 426, baseType: !33, size: 32, offset: 1792)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !637, file: !32, line: 435, baseType: !707, size: 256, offset: 1856)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !708, line: 66, size: 256, elements: !709)
!708 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!709 = !{!710, !719, !720, !725}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !707, file: !708, line: 67, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !712, line: 13, baseType: !713)
!712 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !254, line: 181, baseType: !714)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !254, line: 179, size: 64, elements: !715)
!715 = !{!716}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !714, file: !254, line: 180, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !328, line: 22, baseType: !718)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !330, line: 30, baseType: !610)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !707, file: !708, line: 68, baseType: !665, size: 32, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !707, file: !708, line: 70, baseType: !721, size: 32, offset: 96)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !722, line: 15, size: 32, elements: !723)
!722 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!723 = !{!724}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !721, file: !722, line: 20, baseType: !279, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !707, file: !708, line: 72, baseType: !253, size: 128, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !637, file: !32, line: 437, baseType: !727, size: 64, offset: 2112)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !729, line: 69, size: 320, elements: !730)
!729 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!730 = !{!731, !732, !733, !753, !755, !759, !760}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !728, file: !729, line: 70, baseType: !292, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !728, file: !729, line: 71, baseType: !636, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !728, file: !729, line: 72, baseType: !734, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !736)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !729, line: 47, size: 256, elements: !737)
!737 = !{!738, !739, !745, !749}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !736, file: !729, line: 49, baseType: !33, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !736, file: !729, line: 51, baseType: !740, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!135, !292, !743}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !728)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !736, file: !729, line: 53, baseType: !746, size: 64, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!135, !369, !743}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !736, file: !729, line: 55, baseType: !750, size: 64, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{null, !245}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !728, file: !729, line: 73, baseType: !754, size: 16, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !728, file: !729, line: 74, baseType: !756, size: 8, offset: 208)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !328, line: 16, baseType: !757)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !330, line: 20, baseType: !758)
!758 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !728, file: !729, line: 75, baseType: !327, size: 8, offset: 216)
!760 = !DIDerivedType(tag: DW_TAG_member, scope: !728, file: !729, line: 76, baseType: !761, size: 64, offset: 256)
!761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !728, file: !729, line: 76, size: 64, elements: !762)
!762 = !{!763, !764, !771}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !761, file: !729, line: 77, baseType: !245, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !761, file: !729, line: 78, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !767)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !729, line: 86, size: 128, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !767, file: !729, line: 87, baseType: !33, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !767, file: !729, line: 88, baseType: !369, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !761, file: !729, line: 79, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !774)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !729, line: 92, size: 256, elements: !775)
!775 = !{!776, !777, !778, !780, !781}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !774, file: !729, line: 94, baseType: !33, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !774, file: !729, line: 95, baseType: !33, size: 32, offset: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !774, file: !729, line: 96, baseType: !779, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !774, file: !729, line: 97, baseType: !734, size: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !774, file: !729, line: 98, baseType: !245, size: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !637, file: !32, line: 438, baseType: !33, size: 32, offset: 2176)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !637, file: !32, line: 441, baseType: !33, size: 32, offset: 2208)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !637, file: !32, line: 442, baseType: !697, size: 64, offset: 2240)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !637, file: !32, line: 443, baseType: !701, size: 64, offset: 2304)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !637, file: !32, line: 444, baseType: !787, size: 8, offset: 2368)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !254, line: 35, baseType: !788)
!788 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !637, file: !32, line: 451, baseType: !787, size: 8, offset: 2376)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !637, file: !32, line: 454, baseType: !33, size: 32, offset: 2400)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !637, file: !32, line: 455, baseType: !792, size: 64, offset: 2432)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !794, line: 23, size: 96, elements: !795)
!794 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!795 = !{!796, !797, !798}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !793, file: !794, line: 24, baseType: !135, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !793, file: !794, line: 24, baseType: !135, size: 32, offset: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !793, file: !794, line: 24, baseType: !135, size: 32, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !637, file: !32, line: 458, baseType: !800, size: 64, offset: 2496)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!135}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !637, file: !32, line: 460, baseType: !804, size: 4032, align: 512, offset: 2560)
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !805, size: 4032, elements: !828)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !32, line: 362, size: 576, elements: !806)
!806 = !{!807, !808, !809}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !805, file: !32, line: 363, baseType: !245, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !805, file: !32, line: 364, baseType: !33, size: 32, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !805, file: !32, line: 367, baseType: !810, size: 448, offset: 128)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !32, line: 319, size: 448, elements: !811)
!811 = !{!812, !813}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !810, file: !32, line: 320, baseType: !636, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !810, file: !32, line: 321, baseType: !814, size: 384, offset: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !815, line: 40, size: 384, elements: !816)
!815 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!816 = !{!817}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !814, file: !815, line: 41, baseType: !818, size: 384, align: 64)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 384, align: 64, elements: !826)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !820, line: 5, size: 192, align: 64, elements: !821)
!820 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!821 = !{!822, !823, !825}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !819, file: !820, line: 6, baseType: !419, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !819, file: !820, line: 7, baseType: !824, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !819, file: !820, line: 8, baseType: !824, size: 64, offset: 128)
!826 = !{!827}
!827 = !DISubrange(count: 2)
!828 = !{!829}
!829 = !DISubrange(count: 7)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !637, file: !32, line: 463, baseType: !831, size: 192, offset: 6592)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !832, line: 8, size: 192, elements: !833)
!832 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!833 = !{!834, !835, !837}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !831, file: !832, line: 10, baseType: !33, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !831, file: !832, line: 11, baseType: !836, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !831, file: !832, line: 12, baseType: !838, size: 64, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !840, line: 59, size: 48, elements: !841)
!840 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!841 = !{!842, !846, !847, !848, !849, !850}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !839, file: !840, line: 60, baseType: !843, size: 16)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !328, line: 18, baseType: !844)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !330, line: 23, baseType: !845)
!845 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !839, file: !840, line: 61, baseType: !843, size: 16, offset: 16)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !839, file: !840, line: 63, baseType: !33, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !839, file: !840, line: 64, baseType: !33, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !839, file: !840, line: 65, baseType: !33, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !839, file: !840, line: 66, baseType: !33, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !637, file: !32, line: 465, baseType: !419, size: 64, offset: 6784)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !637, file: !32, line: 469, baseType: !33, size: 32, offset: 6848)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !637, file: !32, line: 470, baseType: !253, size: 128, offset: 6912)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !637, file: !32, line: 471, baseType: !855, size: 64, offset: 7040)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !857, line: 33, size: 96, elements: !858)
!857 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!858 = !{!859, !860, !861, !862}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !856, file: !857, line: 37, baseType: !135, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !856, file: !857, line: 43, baseType: !135, size: 32, offset: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !856, file: !857, line: 45, baseType: !339, size: 16, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !856, file: !857, line: 47, baseType: !339, size: 16, offset: 80)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !637, file: !32, line: 476, baseType: !864, size: 64, offset: 7104)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !32, line: 378, size: 256, elements: !866)
!866 = !{!867, !883, !884, !885}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !865, file: !32, line: 379, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !870, line: 204, baseType: !871)
!870 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !870, line: 197, size: 192, elements: !872)
!872 = !{!873, !875, !876, !877, !879, !881}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !871, file: !870, line: 198, baseType: !874, size: 32)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !870, line: 21, baseType: !519)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !871, file: !870, line: 199, baseType: !331, size: 8, offset: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !871, file: !870, line: 200, baseType: !331, size: 8, offset: 40)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !871, file: !870, line: 201, baseType: !878, size: 16, offset: 48)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !870, line: 17, baseType: !338)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !871, file: !870, line: 202, baseType: !880, size: 64, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !870, line: 16, baseType: !523)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !871, file: !870, line: 203, baseType: !882, size: 64, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !870, line: 22, baseType: !523)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !865, file: !32, line: 380, baseType: !33, size: 32, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !865, file: !32, line: 381, baseType: !369, size: 64, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !865, file: !32, line: 382, baseType: !369, size: 64, offset: 192)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !637, file: !32, line: 477, baseType: !865, size: 256, offset: 7168)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !637, file: !32, line: 480, baseType: !888, size: 64, offset: 7424)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !32, line: 480, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !637, file: !32, line: 483, baseType: !891, size: 64, offset: 7488)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !32, line: 483, flags: DIFlagFwdDecl)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !637, file: !32, line: 488, baseType: !369, size: 64, offset: 7552)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !637, file: !32, line: 492, baseType: !245, size: 64, offset: 7616)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !637, file: !32, line: 493, baseType: !33, size: 32, offset: 7680)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !637, file: !32, line: 495, baseType: !245, size: 64, offset: 7744)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !637, file: !32, line: 496, baseType: !33, size: 32, offset: 7808)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !637, file: !32, line: 499, baseType: !33, size: 32, offset: 7840)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !637, file: !32, line: 500, baseType: !900, size: 64, offset: 7872)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !902, line: 45, baseType: !903)
!902 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !637, file: !32, line: 503, baseType: !33, size: 32, offset: 7936)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !637, file: !32, line: 504, baseType: !906, size: 64, offset: 8000)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !909, line: 96, size: 192, elements: !910)
!909 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!910 = !{!911, !912, !993, !997}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !908, file: !909, line: 97, baseType: !33, size: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !908, file: !909, line: 98, baseType: !913, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !909, line: 24, size: 3072, elements: !915)
!915 = !{!916, !918, !919, !920, !921, !945, !946, !947, !948, !966, !978, !979, !990, !991, !992}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !914, file: !909, line: 26, baseType: !917, size: 128)
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 128, elements: !826)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !914, file: !909, line: 27, baseType: !917, size: 128, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !914, file: !909, line: 28, baseType: !135, size: 32, offset: 256)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !914, file: !909, line: 31, baseType: !303, size: 32, align: 512, offset: 512)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !914, file: !909, line: 32, baseType: !922, size: 960, offset: 576)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !923, line: 206, size: 960, elements: !924)
!923 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!924 = !{!925, !934, !939, !941, !942, !944}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !922, file: !923, line: 207, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !254, line: 232, size: 128, align: 64, elements: !928)
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !927, file: !254, line: 233, baseType: !926, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !927, file: !254, line: 234, baseType: !931, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{null, !926}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !922, file: !923, line: 208, baseType: !935, size: 256, offset: 64)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !936, size: 256, elements: !937)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!937 = !{!938}
!938 = !DISubrange(count: 4)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !922, file: !923, line: 209, baseType: !940, size: 256, offset: 320)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 256, elements: !937)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !922, file: !923, line: 213, baseType: !405, size: 64, offset: 576)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !922, file: !923, line: 215, baseType: !943, size: 256, offset: 640)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 256, elements: !937)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !922, file: !923, line: 216, baseType: !327, size: 8, offset: 896)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !914, file: !909, line: 33, baseType: !419, size: 64, offset: 1536)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !914, file: !909, line: 34, baseType: !419, size: 64, offset: 1600)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !914, file: !909, line: 35, baseType: !787, size: 8, offset: 1664)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !914, file: !909, line: 36, baseType: !949, size: 320, offset: 1728)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !950, line: 11, size: 320, elements: !951)
!950 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!951 = !{!952, !959, !960, !965}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !949, file: !950, line: 16, baseType: !953, size: 128)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !254, line: 198, size: 128, elements: !954)
!954 = !{!955, !957}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !953, file: !254, line: 199, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !953, file: !254, line: 199, baseType: !958, size: 64, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !949, file: !950, line: 17, baseType: !419, size: 64, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !949, file: !950, line: 18, baseType: !961, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{null, !964}
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !949, file: !950, line: 19, baseType: !518, size: 32, offset: 256)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !914, file: !909, line: 37, baseType: !967, size: 256, offset: 2048)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !968, line: 98, size: 256, elements: !969)
!968 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!969 = !{!970, !971, !972}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !967, file: !968, line: 99, baseType: !711, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !967, file: !968, line: 100, baseType: !253, size: 128, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !967, file: !968, line: 101, baseType: !973, size: 64, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !968, line: 21, baseType: !974)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{null, !977}
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !914, file: !909, line: 38, baseType: !927, size: 128, align: 64, offset: 2304)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !914, file: !909, line: 39, baseType: !980, size: 64, offset: 2432)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !909, line: 49, size: 768, elements: !982)
!982 = !{!983, !984, !985, !986, !987, !988, !989}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !981, file: !909, line: 50, baseType: !303, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !981, file: !909, line: 51, baseType: !940, size: 256, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !981, file: !909, line: 53, baseType: !940, size: 256, offset: 320)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !981, file: !909, line: 54, baseType: !419, size: 64, offset: 576)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !981, file: !909, line: 55, baseType: !980, size: 64, offset: 640)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !981, file: !909, line: 56, baseType: !135, size: 32, offset: 704)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !981, file: !909, line: 57, baseType: !135, size: 32, offset: 736)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !914, file: !909, line: 40, baseType: !419, size: 64, offset: 2496)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !914, file: !909, line: 42, baseType: !135, size: 32, offset: 2560)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !914, file: !909, line: 43, baseType: !907, size: 64, offset: 2624)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !908, file: !909, line: 99, baseType: !994, offset: 128)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !995, line: 211, elements: !996)
!995 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!996 = !{}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !908, file: !909, line: 100, baseType: !998, size: 64, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !909, line: 63, size: 3008, elements: !1000)
!1000 = !{!1001, !1002, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1032}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !999, file: !909, line: 64, baseType: !980, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !999, file: !909, line: 65, baseType: !1003, size: 192, offset: 64)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !980, size: 192, elements: !370)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !999, file: !909, line: 67, baseType: !135, size: 32, offset: 256)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !999, file: !909, line: 68, baseType: !707, size: 256, offset: 320)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !999, file: !909, line: 69, baseType: !303, size: 32, offset: 576)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !999, file: !909, line: 70, baseType: !707, size: 256, offset: 640)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !999, file: !909, line: 71, baseType: !419, size: 64, offset: 896)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !999, file: !909, line: 72, baseType: !419, size: 64, offset: 960)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !999, file: !909, line: 73, baseType: !419, size: 64, offset: 1024)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !999, file: !909, line: 74, baseType: !419, size: 64, offset: 1088)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !999, file: !909, line: 75, baseType: !419, size: 64, offset: 1152)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !999, file: !909, line: 76, baseType: !419, size: 64, offset: 1216)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !999, file: !909, line: 77, baseType: !419, size: 64, offset: 1280)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !999, file: !909, line: 78, baseType: !419, size: 64, offset: 1344)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !999, file: !909, line: 79, baseType: !787, size: 8, offset: 1408)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !999, file: !909, line: 80, baseType: !419, size: 64, offset: 1472)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !999, file: !909, line: 81, baseType: !707, size: 256, offset: 1536)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !999, file: !909, line: 82, baseType: !656, size: 256, offset: 1792)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !999, file: !909, line: 84, baseType: !279, size: 32, offset: 2048)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !999, file: !909, line: 87, baseType: !419, size: 64, offset: 2112)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !999, file: !909, line: 88, baseType: !419, size: 64, offset: 2176)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !999, file: !909, line: 89, baseType: !1024, size: 704, offset: 2240)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !968, line: 111, size: 704, elements: !1025)
!1025 = !{!1026, !1027, !1028, !1031}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1024, file: !968, line: 112, baseType: !967, size: 256)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1024, file: !968, line: 113, baseType: !949, size: 320, offset: 256)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1024, file: !968, line: 116, baseType: !1029, size: 64, offset: 576)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !968, line: 18, flags: DIFlagFwdDecl)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1024, file: !968, line: 117, baseType: !135, size: 32, offset: 640)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !999, file: !909, line: 90, baseType: !907, size: 64, offset: 2944)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !637, file: !32, line: 515, baseType: !1034, size: 64, offset: 8064)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1036, line: 117, size: 128, elements: !1037)
!1036 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1037 = !{!1038, !1039, !1040}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1035, file: !1036, line: 118, baseType: !703, size: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1035, file: !1036, line: 119, baseType: !703, size: 32, offset: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1035, file: !1036, line: 120, baseType: !405, size: 64, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !637, file: !32, line: 516, baseType: !33, size: 32, offset: 8128)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !637, file: !32, line: 519, baseType: !33, size: 32, offset: 8160)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !637, file: !32, line: 520, baseType: !1044, size: 64, offset: 8192)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !637, file: !32, line: 523, baseType: !1046, size: 64, offset: 8256)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !32, line: 523, flags: DIFlagFwdDecl)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !637, file: !32, line: 524, baseType: !33, size: 32, offset: 8320)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !637, file: !32, line: 525, baseType: !1051, size: 64, offset: 8384)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !32, line: 525, flags: DIFlagFwdDecl)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !637, file: !32, line: 526, baseType: !33, size: 32, offset: 8448)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !637, file: !32, line: 533, baseType: !245, size: 64, offset: 8512)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !637, file: !32, line: 534, baseType: !33, size: 32, offset: 8576)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !637, file: !32, line: 535, baseType: !1058, size: 64, offset: 8640)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !637, file: !32, line: 536, baseType: !33, size: 32, offset: 8704)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !637, file: !32, line: 539, baseType: !135, size: 32, offset: 8736)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !637, file: !32, line: 540, baseType: !1062, size: 64, offset: 8768)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1064, line: 32, size: 64, elements: !1065)
!1064 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1065 = !{!1066, !1067}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1063, file: !1064, line: 33, baseType: !703, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1063, file: !1064, line: 34, baseType: !703, size: 32, offset: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !637, file: !32, line: 563, baseType: !253, size: 128, offset: 8832)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !637, file: !32, line: 565, baseType: !253, size: 128, offset: 8960)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !637, file: !32, line: 568, baseType: !1071, size: 64, offset: 9088)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{null}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !637, file: !32, line: 570, baseType: !279, size: 32, offset: 9152)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !613, file: !40, line: 2382, baseType: !612, size: 64, offset: 448)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !613, file: !40, line: 2383, baseType: !1077, size: 64, offset: 512)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !254, line: 194, size: 64, elements: !1078)
!1078 = !{!1079}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1077, file: !254, line: 195, baseType: !956, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !613, file: !40, line: 2385, baseType: !1081, offset: 576)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !995, line: 206, elements: !996)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !613, file: !40, line: 2386, baseType: !1081, offset: 576)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !613, file: !40, line: 2387, baseType: !1081, offset: 576)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !613, file: !40, line: 2388, baseType: !1085, offset: 576)
!1085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1081, elements: !370)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !613, file: !40, line: 2390, baseType: !1081, offset: 576)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !613, file: !40, line: 2391, baseType: !1081, offset: 576)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !613, file: !40, line: 2392, baseType: !1081, offset: 576)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !613, file: !40, line: 2393, baseType: !1081, offset: 576)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !599, file: !40, line: 1197, baseType: !1091, size: 64, offset: 384)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1093)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !40, line: 2057, size: 1664, elements: !1094)
!1094 = !{!1095, !1099, !1103, !1104, !1108, !1114, !1118, !1119, !1120, !1124, !1128, !1132, !1133, !1134, !1140, !1144, !1145, !3362, !3363, !3364, !3365, !3369, !3373, !3420, !3435, !3436}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1093, file: !40, line: 2058, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!449, !598}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1093, file: !40, line: 2059, baseType: !1100, size: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{null, !449}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1093, file: !40, line: 2060, baseType: !1100, size: 64, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1093, file: !40, line: 2062, baseType: !1105, size: 64, offset: 192)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{null, !449, !135}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1093, file: !40, line: 2063, baseType: !1109, size: 64, offset: 256)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!135, !449, !1112}
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !40, line: 309, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1093, file: !40, line: 2064, baseType: !1115, size: 64, offset: 320)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!135, !449}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1093, file: !40, line: 2065, baseType: !1100, size: 64, offset: 384)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1093, file: !40, line: 2066, baseType: !632, size: 64, offset: 448)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1093, file: !40, line: 2067, baseType: !1121, size: 64, offset: 512)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!135, !598, !135}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1093, file: !40, line: 2068, baseType: !1125, size: 64, offset: 576)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!135, !598, !39}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1093, file: !40, line: 2069, baseType: !1129, size: 64, offset: 640)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!135, !598}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1093, file: !40, line: 2070, baseType: !1125, size: 64, offset: 704)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1093, file: !40, line: 2071, baseType: !1129, size: 64, offset: 768)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1093, file: !40, line: 2072, baseType: !1135, size: 64, offset: 832)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!135, !484, !1138}
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !40, line: 62, flags: DIFlagFwdDecl)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1093, file: !40, line: 2073, baseType: !1141, size: 64, offset: 896)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!135, !598, !836, !369}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1093, file: !40, line: 2074, baseType: !632, size: 64, offset: 960)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1093, file: !40, line: 2076, baseType: !1146, size: 64, offset: 1024)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!135, !1149, !484}
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1151, line: 17, size: 960, elements: !1152)
!1151 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1152 = !{!1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1183, !1184, !3361}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1150, file: !1151, line: 18, baseType: !369, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1150, file: !1151, line: 19, baseType: !416, size: 64, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1150, file: !1151, line: 20, baseType: !416, size: 64, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1150, file: !1151, line: 21, baseType: !416, size: 64, offset: 192)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1150, file: !1151, line: 22, baseType: !416, size: 64, offset: 256)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1150, file: !1151, line: 23, baseType: !608, size: 64, offset: 320)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1150, file: !1151, line: 24, baseType: !608, size: 64, offset: 384)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1150, file: !1151, line: 25, baseType: !707, size: 256, offset: 448)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1150, file: !1151, line: 26, baseType: !1162, size: 64, offset: 704)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1164)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1151, line: 32, size: 256, elements: !1165)
!1165 = !{!1166, !1171, !1175, !1179}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1164, file: !1151, line: 33, baseType: !1167, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!245, !1149, !1170}
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1164, file: !1151, line: 34, baseType: !1172, size: 64, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{null, !1149, !245}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1164, file: !1151, line: 35, baseType: !1176, size: 64, offset: 128)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!245, !1149, !245, !1170}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1164, file: !1151, line: 36, baseType: !1180, size: 64, offset: 192)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!135, !1149, !245}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1150, file: !1151, line: 27, baseType: !135, size: 32, offset: 768)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1150, file: !1151, line: 28, baseType: !1185, size: 64, offset: 832)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1187)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !40, line: 994, size: 1856, align: 64, elements: !1188)
!1188 = !{!1189, !1200, !1201, !1203, !1204, !1205, !1206, !1207, !3166, !3167, !3176, !3182, !3183, !3351, !3352, !3353, !3354, !3356, !3357, !3360}
!1189 = !DIDerivedType(tag: DW_TAG_member, scope: !1187, file: !40, line: 995, baseType: !1190, size: 128)
!1190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1187, file: !40, line: 995, size: 128, elements: !1191)
!1191 = !{!1192, !1198, !1199}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1190, file: !40, line: 996, baseType: !1193, size: 64)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1194, line: 60, size: 64, elements: !1195)
!1194 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1195 = !{!1196}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1193, file: !1194, line: 61, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1190, file: !40, line: 997, baseType: !927, size: 128, align: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1190, file: !40, line: 998, baseType: !33, size: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1187, file: !40, line: 1005, baseType: !303, size: 32, offset: 128)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1187, file: !40, line: 1006, baseType: !1202, size: 32, offset: 160)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !254, line: 156, baseType: !33)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1187, file: !40, line: 1007, baseType: !711, size: 64, offset: 192)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1187, file: !40, line: 1008, baseType: !707, size: 256, offset: 256)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1187, file: !40, line: 1009, baseType: !608, size: 64, offset: 512)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1187, file: !40, line: 1010, baseType: !33, size: 32, offset: 576)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1187, file: !40, line: 1011, baseType: !1208, size: 256, offset: 640)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !40, line: 948, size: 256, elements: !1209)
!1209 = !{!1210, !1231, !3162, !3163, !3164, !3165}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1208, file: !40, line: 949, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1212, line: 34, baseType: !1213)
!1212 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1212, line: 25, size: 64, elements: !1214)
!1214 = !{!1215}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1213, file: !1212, line: 26, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1217, line: 27, baseType: !1218)
!1217 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1217, line: 13, size: 64, elements: !1219)
!1219 = !{!1220, !1230}
!1220 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !1217, line: 14, baseType: !1221, size: 32)
!1221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1218, file: !1217, line: 14, size: 32, elements: !1222)
!1222 = !{!1223, !1224}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1221, file: !1217, line: 15, baseType: !279, size: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, scope: !1221, file: !1217, line: 16, baseType: !1225, size: 32)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1221, file: !1217, line: 16, size: 32, elements: !1226)
!1226 = !{!1227, !1228}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1225, file: !1217, line: 18, baseType: !327, size: 8)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1225, file: !1217, line: 19, baseType: !1229, size: 24, offset: 8)
!1229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 24, elements: !370)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1218, file: !1217, line: 26, baseType: !315, size: 32, offset: 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1208, file: !40, line: 950, baseType: !1232, size: 64, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !87, line: 59, size: 768, elements: !1234)
!1234 = !{!1235, !1236, !1237, !1238, !1240, !1241, !1248, !1249}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1233, file: !87, line: 61, baseType: !274, size: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1233, file: !87, line: 62, baseType: !33, size: 32, offset: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1233, file: !87, line: 63, baseType: !303, size: 32, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1233, file: !87, line: 65, baseType: !1239, size: 256, offset: 128)
!1239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1077, size: 256, elements: !937)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1233, file: !87, line: 66, baseType: !1077, size: 64, offset: 384)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1233, file: !87, line: 68, baseType: !1242, size: 192, offset: 448)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1243, line: 41, baseType: !1244)
!1243 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1243, line: 37, size: 192, elements: !1245)
!1245 = !{!1246, !1247}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1244, file: !1243, line: 38, baseType: !303, size: 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1244, file: !1243, line: 39, baseType: !253, size: 128, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1233, file: !87, line: 69, baseType: !927, size: 128, align: 64, offset: 640)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1233, file: !87, line: 70, baseType: !1250, offset: 768)
!1250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1251, elements: !1737)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !87, line: 54, size: 128, elements: !1252)
!1252 = !{!1253, !1254}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1251, file: !87, line: 55, baseType: !135, size: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1251, file: !87, line: 56, baseType: !1255, size: 64, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1257, line: 26, size: 1152, elements: !1258)
!1257 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!1258 = !{!1259, !1273, !1274, !1275, !3138, !3142, !3143, !3144, !3147, !3148, !3149, !3150, !3161}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1256, file: !1257, line: 27, baseType: !1260, size: 192)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1261, line: 19, size: 192, elements: !1262)
!1261 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1262 = !{!1263, !1271, !1272}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1260, file: !1261, line: 20, baseType: !1264, size: 128)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1265, line: 296, size: 128, elements: !1266)
!1265 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1266 = !{!1267, !1268, !1270}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1264, file: !1265, line: 297, baseType: !303, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1264, file: !1265, line: 299, baseType: !1269, size: 32, offset: 32)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !254, line: 154, baseType: !33)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1264, file: !1265, line: 300, baseType: !245, size: 64, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1260, file: !1261, line: 21, baseType: !33, size: 32, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1260, file: !1261, line: 22, baseType: !33, size: 32, offset: 160)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1256, file: !1257, line: 28, baseType: !927, size: 128, align: 64, offset: 192)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1256, file: !1257, line: 29, baseType: !33, size: 32, offset: 320)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1256, file: !1257, line: 30, baseType: !1276, size: 64, offset: 384)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1278, line: 746, size: 58368, elements: !1279)
!1278 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1279 = !{!1280, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1360, !1371, !1466, !1470, !1473, !1504, !1505, !1506, !1507, !1518, !1520, !1521, !1522, !1523, !1524, !1525, !1536, !1537, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1554, !1555, !1562, !1563, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1823, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1871, !1877, !2059, !2060, !2061, !2062, !2066, !2069, !2076, !2081, !2084, !2087, !2090, !2116, !2254, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2292, !2293, !2294, !2303, !2311, !2312, !2313, !2314, !2315, !2320, !2321, !2322, !2325, !2326, !2329, !2332, !2335, !2343, !2346, !2347, !2433, !2434, !2435, !2436, !2437, !2443, !2444, !2445, !2446, !2449, !2450, !2453, !2456, !2457, !2460, !2461, !2462, !2465, !2466, !2467, !2470, !2471, !2472, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2504, !2507, !2796, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2808, !2880, !2882, !2883, !2884, !2885, !2886, !2887, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2917, !2918, !2919}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1277, file: !1278, line: 752, baseType: !1281, size: 192)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1282, line: 56, size: 192, elements: !1283)
!1282 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1283 = !{!1284, !1285, !1286, !1287}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1281, file: !1282, line: 57, baseType: !419, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1281, file: !1282, line: 58, baseType: !419, size: 64, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1281, file: !1282, line: 59, baseType: !518, size: 32, offset: 128)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1281, file: !1282, line: 61, baseType: !518, size: 32, offset: 160)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1277, file: !1278, line: 754, baseType: !33, size: 32, offset: 192)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1277, file: !1278, line: 767, baseType: !245, size: 64, offset: 256)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1277, file: !1278, line: 768, baseType: !274, size: 32, offset: 320)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1277, file: !1278, line: 770, baseType: !33, size: 32, offset: 352)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1277, file: !1278, line: 771, baseType: !33, size: 32, offset: 384)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1277, file: !1278, line: 774, baseType: !135, size: 32, offset: 416)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1277, file: !1278, line: 775, baseType: !1295, size: 128, offset: 448)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1296, line: 58, size: 128, elements: !1297)
!1296 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1297 = !{!1298, !1299, !1304, !1305}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1295, file: !1296, line: 59, baseType: !1193, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, scope: !1295, file: !1296, line: 60, baseType: !1300, size: 32, offset: 64)
!1300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1295, file: !1296, line: 60, size: 32, elements: !1301)
!1301 = !{!1302, !1303}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1300, file: !1296, line: 61, baseType: !33, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1300, file: !1296, line: 62, baseType: !279, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1295, file: !1296, line: 65, baseType: !337, size: 16, offset: 96)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1295, file: !1296, line: 65, baseType: !337, size: 16, offset: 112)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1277, file: !1278, line: 776, baseType: !33, size: 32, offset: 576)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1277, file: !1278, line: 777, baseType: !419, size: 64, offset: 640)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1277, file: !1278, line: 778, baseType: !1276, size: 64, offset: 704)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1277, file: !1278, line: 787, baseType: !135, size: 32, offset: 768)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1277, file: !1278, line: 788, baseType: !135, size: 32, offset: 800)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1277, file: !1278, line: 790, baseType: !135, size: 32, offset: 832)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1277, file: !1278, line: 792, baseType: !135, size: 32, offset: 864)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1277, file: !1278, line: 793, baseType: !135, size: 32, offset: 896)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1277, file: !1278, line: 794, baseType: !135, size: 32, offset: 928)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1277, file: !1278, line: 795, baseType: !33, size: 32, offset: 960)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1277, file: !1278, line: 797, baseType: !1317, size: 2048, offset: 1024)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1278, line: 551, size: 2048, elements: !1318)
!1318 = !{!1319, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1339, !1342, !1343, !1344}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1317, file: !1278, line: 553, baseType: !1320, size: 128)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1278, line: 411, size: 128, elements: !1321)
!1321 = !{!1322, !1323}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1320, file: !1278, line: 412, baseType: !419, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1320, file: !1278, line: 413, baseType: !518, size: 32, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1317, file: !1278, line: 554, baseType: !819, size: 192, align: 64, offset: 128)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1317, file: !1278, line: 555, baseType: !522, size: 64, offset: 320)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1317, file: !1278, line: 556, baseType: !522, size: 64, offset: 384)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1317, file: !1278, line: 558, baseType: !253, size: 128, offset: 448)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1317, file: !1278, line: 559, baseType: !33, size: 32, offset: 576)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1317, file: !1278, line: 561, baseType: !522, size: 64, offset: 640)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1317, file: !1278, line: 562, baseType: !522, size: 64, offset: 704)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1317, file: !1278, line: 563, baseType: !522, size: 64, offset: 768)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1317, file: !1278, line: 564, baseType: !522, size: 64, offset: 832)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1317, file: !1278, line: 565, baseType: !717, size: 64, offset: 896)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1317, file: !1278, line: 566, baseType: !522, size: 64, offset: 960)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1317, file: !1278, line: 568, baseType: !522, size: 64, offset: 1024)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1317, file: !1278, line: 571, baseType: !135, size: 32, offset: 1088)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1317, file: !1278, line: 572, baseType: !1338, size: 64, offset: 1152)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1317, file: !1278, line: 574, baseType: !1340, size: 64, offset: 1216)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1278, line: 49, flags: DIFlagFwdDecl)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1317, file: !1278, line: 576, baseType: !1340, size: 64, offset: 1280)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1317, file: !1278, line: 578, baseType: !419, size: 64, offset: 1344)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1317, file: !1278, line: 588, baseType: !1345, size: 512, align: 512, offset: 1536)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1278, line: 497, size: 512, align: 512, elements: !1346)
!1346 = !{!1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1345, file: !1278, line: 498, baseType: !522, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1345, file: !1278, line: 499, baseType: !522, size: 64, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1345, file: !1278, line: 500, baseType: !522, size: 64, offset: 128)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1345, file: !1278, line: 501, baseType: !518, size: 32, offset: 192)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1345, file: !1278, line: 502, baseType: !518, size: 32, offset: 224)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1345, file: !1278, line: 503, baseType: !419, size: 64, offset: 256)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1345, file: !1278, line: 504, baseType: !419, size: 64, offset: 320)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1345, file: !1278, line: 505, baseType: !419, size: 64, offset: 384)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1345, file: !1278, line: 506, baseType: !1356, size: 64, align: 64, offset: 448)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1278, line: 445, size: 64, align: 64, elements: !1357)
!1357 = !{!1358, !1359}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1356, file: !1278, line: 446, baseType: !33, size: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1356, file: !1278, line: 447, baseType: !33, size: 32, offset: 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1277, file: !1278, line: 798, baseType: !1361, size: 384, offset: 3072)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1278, line: 592, size: 384, elements: !1362)
!1362 = !{!1363, !1364, !1365, !1366, !1367, !1368, !1369}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1361, file: !1278, line: 593, baseType: !253, size: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1361, file: !1278, line: 594, baseType: !419, size: 64, offset: 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1361, file: !1278, line: 595, baseType: !419, size: 64, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1361, file: !1278, line: 596, baseType: !33, size: 32, offset: 256)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1361, file: !1278, line: 597, baseType: !339, size: 16, offset: 288)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1361, file: !1278, line: 598, baseType: !339, size: 16, offset: 304)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1361, file: !1278, line: 600, baseType: !1370, size: 64, offset: 320)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1277, file: !1278, line: 799, baseType: !1372, size: 1792, offset: 3456)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1278, line: 610, size: 1792, elements: !1373)
!1373 = !{!1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1463, !1464}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1372, file: !1278, line: 611, baseType: !819, size: 192, align: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1372, file: !1278, line: 618, baseType: !522, size: 64, offset: 192)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1372, file: !1278, line: 619, baseType: !522, size: 64, offset: 256)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1372, file: !1278, line: 620, baseType: !522, size: 64, offset: 320)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1372, file: !1278, line: 621, baseType: !522, size: 64, offset: 384)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1372, file: !1278, line: 622, baseType: !522, size: 64, offset: 448)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1372, file: !1278, line: 629, baseType: !717, size: 64, offset: 512)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1372, file: !1278, line: 630, baseType: !522, size: 64, offset: 576)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1372, file: !1278, line: 631, baseType: !33, size: 32, offset: 640)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1372, file: !1278, line: 653, baseType: !33, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1372, file: !1278, line: 654, baseType: !33, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1372, file: !1278, line: 655, baseType: !33, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1372, file: !1278, line: 656, baseType: !33, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1372, file: !1278, line: 662, baseType: !1388, size: 512, offset: 704)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !45, line: 118, size: 512, elements: !1389)
!1389 = !{!1390, !1398, !1399, !1404, !1459, !1460, !1461, !1462}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1388, file: !45, line: 119, baseType: !1391, size: 256)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1392, line: 9, size: 256, elements: !1393)
!1392 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1393 = !{!1394, !1395}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1391, file: !1392, line: 10, baseType: !819, size: 192, align: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1391, file: !1392, line: 11, baseType: !1396, size: 64, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1397, line: 29, baseType: !717)
!1397 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1388, file: !45, line: 120, baseType: !1396, size: 64, offset: 256)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1388, file: !45, line: 121, baseType: !1400, size: 64, offset: 320)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!44, !1403}
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1388, file: !45, line: 122, baseType: !1405, size: 64, offset: 384)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !45, line: 159, size: 512, align: 512, elements: !1407)
!1407 = !{!1408, !1433, !1434, !1437, !1442, !1443, !1454, !1458}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1406, file: !45, line: 160, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !45, line: 215, size: 4608, align: 512, elements: !1411)
!1411 = !{!1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1410, file: !45, line: 216, baseType: !665, size: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1410, file: !45, line: 217, baseType: !33, size: 32, offset: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1410, file: !45, line: 218, baseType: !33, size: 32, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1410, file: !45, line: 219, baseType: !33, size: 32, offset: 96)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1410, file: !45, line: 220, baseType: !33, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1410, file: !45, line: 221, baseType: !33, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1410, file: !45, line: 222, baseType: !33, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1410, file: !45, line: 223, baseType: !33, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1410, file: !45, line: 224, baseType: !33, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1410, file: !45, line: 226, baseType: !33, size: 32, offset: 160)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1410, file: !45, line: 227, baseType: !339, size: 16, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1410, file: !45, line: 228, baseType: !339, size: 16, offset: 208)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1410, file: !45, line: 229, baseType: !33, size: 32, offset: 224)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1410, file: !45, line: 235, baseType: !1396, size: 64, offset: 256)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1410, file: !45, line: 236, baseType: !1403, size: 64, offset: 320)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1410, file: !45, line: 237, baseType: !1396, size: 64, offset: 384)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1410, file: !45, line: 238, baseType: !1403, size: 64, offset: 448)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1410, file: !45, line: 239, baseType: !1430, size: 4096, align: 512, offset: 512)
!1430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1406, size: 4096, align: 512, elements: !1431)
!1431 = !{!1432}
!1432 = !DISubrange(count: 8)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1406, file: !45, line: 161, baseType: !33, size: 32, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1406, file: !45, line: 162, baseType: !1435, size: 32, offset: 96)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !254, line: 32, baseType: !1436)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !403, line: 96, baseType: !135)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1406, file: !45, line: 163, baseType: !1438, size: 32, offset: 128)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !491, line: 274, baseType: !1439)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !491, line: 274, size: 32, elements: !1440)
!1440 = !{!1441}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1439, file: !491, line: 274, baseType: !495, size: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1406, file: !45, line: 164, baseType: !1403, size: 64, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1406, file: !45, line: 165, baseType: !1444, size: 128, offset: 256)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1392, line: 14, size: 128, elements: !1445)
!1445 = !{!1446}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1444, file: !1392, line: 15, baseType: !1447, size: 128)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !820, line: 26, size: 128, elements: !1448)
!1448 = !{!1449, !1453}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1447, file: !820, line: 27, baseType: !1450, size: 64)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !820, line: 12, size: 64, elements: !1451)
!1451 = !{!1452}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1450, file: !820, line: 13, baseType: !824, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1447, file: !820, line: 28, baseType: !824, size: 64, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1406, file: !45, line: 166, baseType: !1455, size: 64, offset: 384)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!1396}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1406, file: !45, line: 167, baseType: !1396, size: 64, offset: 448)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1388, file: !45, line: 123, baseType: !327, size: 8, offset: 448)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1388, file: !45, line: 124, baseType: !327, size: 8, offset: 456)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1388, file: !45, line: 125, baseType: !327, size: 8, offset: 464)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1388, file: !45, line: 126, baseType: !327, size: 8, offset: 472)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1372, file: !1278, line: 671, baseType: !1388, size: 512, offset: 1216)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1372, file: !1278, line: 679, baseType: !1465, size: 64, offset: 1728)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1277, file: !1278, line: 800, baseType: !1467, size: 64, offset: 5248)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1469)
!1469 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1278, line: 800, flags: DIFlagFwdDecl)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1277, file: !1278, line: 809, baseType: !1471, size: 64, offset: 5312)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1278, line: 70, flags: DIFlagFwdDecl)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1277, file: !1278, line: 825, baseType: !1474, size: 2048, align: 512, offset: 5632)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1278, line: 509, size: 2048, align: 512, elements: !1475)
!1475 = !{!1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1474, file: !1278, line: 511, baseType: !522, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1474, file: !1278, line: 512, baseType: !522, size: 64, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1474, file: !1278, line: 513, baseType: !522, size: 64, offset: 128)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1474, file: !1278, line: 514, baseType: !522, size: 64, offset: 192)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1474, file: !1278, line: 515, baseType: !522, size: 64, offset: 256)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1474, file: !1278, line: 516, baseType: !522, size: 64, offset: 320)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1474, file: !1278, line: 518, baseType: !522, size: 64, offset: 384)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1474, file: !1278, line: 519, baseType: !522, size: 64, offset: 448)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1474, file: !1278, line: 520, baseType: !717, size: 64, offset: 512)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1474, file: !1278, line: 522, baseType: !522, size: 64, offset: 576)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1474, file: !1278, line: 523, baseType: !522, size: 64, offset: 640)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1474, file: !1278, line: 524, baseType: !717, size: 64, offset: 704)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1474, file: !1278, line: 526, baseType: !717, size: 64, offset: 768)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1474, file: !1278, line: 527, baseType: !522, size: 64, offset: 832)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1474, file: !1278, line: 529, baseType: !522, size: 64, offset: 896)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1474, file: !1278, line: 530, baseType: !522, size: 64, offset: 960)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1474, file: !1278, line: 531, baseType: !522, size: 64, offset: 1024)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1474, file: !1278, line: 532, baseType: !522, size: 64, offset: 1088)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1474, file: !1278, line: 533, baseType: !522, size: 64, offset: 1152)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1474, file: !1278, line: 535, baseType: !522, size: 64, offset: 1216)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1474, file: !1278, line: 536, baseType: !522, size: 64, offset: 1280)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1474, file: !1278, line: 537, baseType: !522, size: 64, offset: 1344)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1474, file: !1278, line: 538, baseType: !522, size: 64, offset: 1408)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1474, file: !1278, line: 539, baseType: !522, size: 64, offset: 1472)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1474, file: !1278, line: 540, baseType: !522, size: 64, offset: 1536)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1474, file: !1278, line: 541, baseType: !522, size: 64, offset: 1600)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1474, file: !1278, line: 542, baseType: !522, size: 64, offset: 1664)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1474, file: !1278, line: 543, baseType: !522, size: 64, offset: 1728)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1277, file: !1278, line: 833, baseType: !33, size: 32, offset: 7680)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1277, file: !1278, line: 836, baseType: !33, size: 32, offset: 7712)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1277, file: !1278, line: 837, baseType: !135, size: 32, offset: 7744)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1277, file: !1278, line: 838, baseType: !1508, size: 64, offset: 7808)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1510)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1511, line: 19, baseType: !1512)
!1511 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1511, line: 19, size: 64, elements: !1513)
!1513 = !{!1514}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1512, file: !1511, line: 19, baseType: !1515, size: 64)
!1515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 64, elements: !1516)
!1516 = !{!1517}
!1517 = !DISubrange(count: 1)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1277, file: !1278, line: 839, baseType: !1519, size: 64, offset: 7872)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1277, file: !1278, line: 840, baseType: !1510, size: 64, offset: 7936)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1277, file: !1278, line: 841, baseType: !245, size: 64, offset: 8000)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1277, file: !1278, line: 843, baseType: !339, size: 16, offset: 8064)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1277, file: !1278, line: 845, baseType: !339, size: 16, offset: 8080)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1277, file: !1278, line: 848, baseType: !135, size: 32, offset: 8096)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1277, file: !1278, line: 849, baseType: !1526, size: 32, offset: 8128)
!1526 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1278, line: 718, size: 32, elements: !1527)
!1527 = !{!1528, !1535}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1526, file: !1278, line: 724, baseType: !1529, size: 32)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1526, file: !1278, line: 719, size: 32, elements: !1530)
!1530 = !{!1531, !1532, !1533, !1534}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1529, file: !1278, line: 720, baseType: !327, size: 8)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1529, file: !1278, line: 721, baseType: !327, size: 8, offset: 8)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1529, file: !1278, line: 722, baseType: !327, size: 8, offset: 16)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1529, file: !1278, line: 723, baseType: !327, size: 8, offset: 24)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1526, file: !1278, line: 725, baseType: !518, size: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1277, file: !1278, line: 850, baseType: !253, size: 128, offset: 8192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1277, file: !1278, line: 851, baseType: !1538, size: 64, offset: 8320)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1278, line: 60, flags: DIFlagFwdDecl)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1277, file: !1278, line: 855, baseType: !419, size: 64, offset: 8384)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1277, file: !1278, line: 856, baseType: !327, size: 8, offset: 8448)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1277, file: !1278, line: 857, baseType: !327, size: 8, offset: 8456)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1277, file: !1278, line: 858, baseType: !135, size: 32, offset: 8480)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1277, file: !1278, line: 859, baseType: !253, size: 128, offset: 8512)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1277, file: !1278, line: 860, baseType: !135, size: 32, offset: 8640)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1277, file: !1278, line: 861, baseType: !253, size: 128, offset: 8704)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1277, file: !1278, line: 873, baseType: !1548, size: 256, offset: 8832)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1278, line: 376, size: 256, elements: !1549)
!1549 = !{!1550, !1551, !1552, !1553}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1548, file: !1278, line: 381, baseType: !419, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1548, file: !1278, line: 384, baseType: !524, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1548, file: !1278, line: 389, baseType: !524, size: 64, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1548, file: !1278, line: 392, baseType: !524, size: 64, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1277, file: !1278, line: 875, baseType: !253, size: 128, offset: 9088)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1277, file: !1278, line: 877, baseType: !1556, size: 320, offset: 9216)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1557, line: 86, size: 320, elements: !1558)
!1557 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1558 = !{!1559, !1560, !1561}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1556, file: !1557, line: 87, baseType: !135, size: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1556, file: !1557, line: 88, baseType: !253, size: 128, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1556, file: !1557, line: 89, baseType: !253, size: 128, offset: 192)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1277, file: !1278, line: 878, baseType: !819, size: 192, align: 64, offset: 9536)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1277, file: !1278, line: 881, baseType: !1564, size: 64, offset: 9728)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !64, line: 733, size: 10240, elements: !1566)
!1566 = !{!1567, !1735}
!1567 = !DIDerivedType(tag: DW_TAG_member, scope: !1565, file: !64, line: 734, baseType: !1568, size: 10240)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1565, file: !64, line: 734, size: 10240, elements: !1569)
!1569 = !{!1570, !1574, !1587, !1592, !1593, !1594, !1595, !1596, !1597, !1606, !1607, !1608, !1614, !1615, !1616, !1617, !1618, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1655, !1665, !1668, !1713, !1714, !1715, !1718, !1721, !1722, !1725, !1726, !1727, !1733, !1734}
!1570 = !DIDerivedType(tag: DW_TAG_member, scope: !1568, file: !64, line: 739, baseType: !1571, size: 512, align: 512)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1568, file: !64, line: 739, size: 512, align: 512, elements: !1572)
!1572 = !{!1573}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1571, file: !64, line: 747, baseType: !279, size: 32)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1568, file: !64, line: 750, baseType: !1575, size: 128, offset: 512)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1576, line: 218, size: 128, elements: !1577)
!1576 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1577 = !{!1578, !1585, !1586}
!1578 = !DIDerivedType(tag: DW_TAG_member, scope: !1575, file: !1576, line: 219, baseType: !1579, size: 32)
!1579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1575, file: !1576, line: 219, size: 32, elements: !1580)
!1580 = !{!1581, !1582}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1579, file: !1576, line: 220, baseType: !303, size: 32)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1579, file: !1576, line: 221, baseType: !1583)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1576, line: 197, baseType: !1584)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1576, line: 197, elements: !996)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1575, file: !1576, line: 223, baseType: !33, size: 32, offset: 32)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1575, file: !1576, line: 224, baseType: !245, size: 64, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1568, file: !64, line: 752, baseType: !1588, size: 64, offset: 640)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!419, !1591, !419, !419, !419, !419}
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1568, file: !64, line: 756, baseType: !419, size: 64, offset: 704)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1568, file: !64, line: 757, baseType: !419, size: 64, offset: 768)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1568, file: !64, line: 760, baseType: !419, size: 64, offset: 832)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1568, file: !64, line: 761, baseType: !419, size: 64, offset: 896)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1568, file: !64, line: 763, baseType: !419, size: 64, offset: 960)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1568, file: !64, line: 764, baseType: !1598, size: 64, offset: 1024)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1600, line: 299, baseType: !1601)
!1600 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1600, line: 299, size: 64, elements: !1602)
!1602 = !{!1603}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1601, file: !1600, line: 299, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1605, line: 18, baseType: !419)
!1605 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1568, file: !64, line: 773, baseType: !279, size: 32, offset: 1088)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1568, file: !64, line: 785, baseType: !279, size: 32, offset: 1120)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1568, file: !64, line: 795, baseType: !1609, size: 64, offset: 1152)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !64, line: 726, size: 128, elements: !1611)
!1611 = !{!1612, !1613}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1610, file: !64, line: 727, baseType: !522, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1610, file: !64, line: 728, baseType: !135, size: 32, offset: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1568, file: !64, line: 801, baseType: !419, size: 64, offset: 1216)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1568, file: !64, line: 804, baseType: !711, size: 64, offset: 1280)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1568, file: !64, line: 806, baseType: !135, size: 32, offset: 1344)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1568, file: !64, line: 808, baseType: !303, size: 32, offset: 1376)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1568, file: !64, line: 823, baseType: !1619, size: 320, offset: 1408)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1620, line: 48, size: 320, elements: !1621)
!1620 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1621 = !{!1622, !1623, !1624, !1625, !1626}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1619, file: !1620, line: 49, baseType: !711, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1619, file: !1620, line: 55, baseType: !711, size: 64, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1619, file: !1620, line: 57, baseType: !721, size: 32, offset: 128)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1619, file: !1620, line: 59, baseType: !665, size: 32, offset: 160)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1619, file: !1620, line: 60, baseType: !253, size: 128, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1568, file: !64, line: 825, baseType: !253, size: 128, offset: 1728)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1568, file: !64, line: 845, baseType: !135, size: 32, offset: 1856)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1568, file: !64, line: 849, baseType: !419, size: 64, offset: 1920)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1568, file: !64, line: 850, baseType: !419, size: 64, offset: 1984)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1568, file: !64, line: 852, baseType: !419, size: 64, offset: 2048)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1568, file: !64, line: 853, baseType: !419, size: 64, offset: 2112)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1568, file: !64, line: 854, baseType: !713, size: 64, offset: 2176)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1568, file: !64, line: 855, baseType: !419, size: 64, offset: 2240)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1568, file: !64, line: 856, baseType: !419, size: 64, offset: 2304)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1568, file: !64, line: 857, baseType: !419, size: 64, offset: 2368)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1568, file: !64, line: 858, baseType: !419, size: 64, offset: 2432)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1568, file: !64, line: 865, baseType: !495, size: 32, offset: 2496)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1568, file: !64, line: 867, baseType: !303, size: 32, offset: 2528)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1568, file: !64, line: 869, baseType: !419, size: 64, offset: 2560)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1568, file: !64, line: 869, baseType: !419, size: 64, offset: 2624)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1568, file: !64, line: 869, baseType: !419, size: 64, offset: 2688)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1568, file: !64, line: 869, baseType: !419, size: 64, offset: 2752)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1568, file: !64, line: 870, baseType: !419, size: 64, offset: 2816)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1568, file: !64, line: 870, baseType: !419, size: 64, offset: 2880)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1568, file: !64, line: 870, baseType: !419, size: 64, offset: 2944)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1568, file: !64, line: 871, baseType: !419, size: 64, offset: 3008)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1568, file: !64, line: 871, baseType: !419, size: 64, offset: 3072)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1568, file: !64, line: 871, baseType: !419, size: 64, offset: 3136)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1568, file: !64, line: 871, baseType: !419, size: 64, offset: 3200)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1568, file: !64, line: 873, baseType: !1652, size: 3328, offset: 3264)
!1652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 3328, elements: !1653)
!1653 = !{!1654}
!1654 = !DISubrange(count: 52)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1568, file: !64, line: 875, baseType: !1656, size: 1280, offset: 6592)
!1656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1657, size: 1280, elements: !937)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1658, line: 22, size: 320, elements: !1659)
!1658 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1659 = !{!1660, !1661, !1662, !1663}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1657, file: !1658, line: 23, baseType: !665, size: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1657, file: !1658, line: 24, baseType: !717, size: 64, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1657, file: !1658, line: 26, baseType: !253, size: 128, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1657, file: !1658, line: 28, baseType: !1664, size: 64, offset: 256)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1568, file: !64, line: 877, baseType: !1666, size: 64, offset: 7872)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !64, line: 877, flags: DIFlagFwdDecl)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1568, file: !64, line: 880, baseType: !1669, size: 1088, offset: 7936)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1670, line: 72, baseType: !1671)
!1670 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1670, line: 23, size: 1088, elements: !1672)
!1672 = !{!1673, !1674, !1675, !1676, !1677, !1680, !1681, !1682, !1683, !1710, !1711, !1712}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1671, file: !1670, line: 28, baseType: !522, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1671, file: !1670, line: 38, baseType: !713, size: 64, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1671, file: !1670, line: 40, baseType: !419, size: 64, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1671, file: !1670, line: 43, baseType: !1619, size: 320, offset: 192)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1671, file: !1670, line: 44, baseType: !1678, size: 64, offset: 512)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1670, line: 44, flags: DIFlagFwdDecl)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1671, file: !1670, line: 48, baseType: !419, size: 64, offset: 576)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1671, file: !1670, line: 59, baseType: !707, size: 256, offset: 640)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1671, file: !1670, line: 60, baseType: !245, size: 64, offset: 896)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1671, file: !1670, line: 61, baseType: !1684, size: 64, offset: 960)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1686)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1687, line: 13, size: 1216, elements: !1688)
!1687 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1688 = !{!1689, !1690, !1691, !1692, !1693, !1694, !1695, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1686, file: !1687, line: 14, baseType: !245, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1686, file: !1687, line: 15, baseType: !419, size: 64, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1686, file: !1687, line: 17, baseType: !419, size: 64, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1686, file: !1687, line: 17, baseType: !419, size: 64, offset: 192)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1686, file: !1687, line: 18, baseType: !419, size: 64, offset: 256)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1686, file: !1687, line: 18, baseType: !419, size: 64, offset: 320)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1686, file: !1687, line: 19, baseType: !1696, size: 64, offset: 384)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1686, file: !1687, line: 21, baseType: !405, size: 64, offset: 448)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1686, file: !1687, line: 23, baseType: !405, size: 64, offset: 512)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1686, file: !1687, line: 24, baseType: !405, size: 64, offset: 576)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1686, file: !1687, line: 25, baseType: !405, size: 64, offset: 640)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1686, file: !1687, line: 26, baseType: !405, size: 64, offset: 704)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1686, file: !1687, line: 27, baseType: !405, size: 64, offset: 768)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1686, file: !1687, line: 28, baseType: !405, size: 64, offset: 832)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1686, file: !1687, line: 29, baseType: !405, size: 64, offset: 896)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1686, file: !1687, line: 30, baseType: !405, size: 64, offset: 960)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1686, file: !1687, line: 31, baseType: !405, size: 64, offset: 1024)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1686, file: !1687, line: 32, baseType: !405, size: 64, offset: 1088)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1686, file: !1687, line: 33, baseType: !405, size: 64, offset: 1152)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1671, file: !1670, line: 63, baseType: !279, size: 32, offset: 1024)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1671, file: !1670, line: 69, baseType: !337, size: 16, offset: 1056)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1671, file: !1670, line: 70, baseType: !843, size: 16, offset: 1072)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1568, file: !64, line: 882, baseType: !419, size: 64, offset: 9024)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1568, file: !64, line: 885, baseType: !303, size: 32, offset: 9088)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1568, file: !64, line: 886, baseType: !1716, size: 64, offset: 9152)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !64, line: 732, flags: DIFlagFwdDecl)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1568, file: !64, line: 901, baseType: !1719, size: 64, offset: 9216)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !64, line: 901, flags: DIFlagFwdDecl)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1568, file: !64, line: 904, baseType: !1591, size: 64, offset: 9280)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1568, file: !64, line: 906, baseType: !1723, size: 64, offset: 9344)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !64, line: 906, flags: DIFlagFwdDecl)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1568, file: !64, line: 930, baseType: !279, size: 32, offset: 9408)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1568, file: !64, line: 933, baseType: !279, size: 32, offset: 9440)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1568, file: !64, line: 935, baseType: !1728, size: 64, offset: 9472)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !80, line: 103, size: 64, elements: !1729)
!1729 = !{!1730}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1728, file: !80, line: 104, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !80, line: 101, flags: DIFlagFwdDecl)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1568, file: !64, line: 940, baseType: !711, size: 64, offset: 9536)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1568, file: !64, line: 942, baseType: !967, size: 256, offset: 9600)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1565, file: !64, line: 986, baseType: !1736, offset: 10240)
!1736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, elements: !1737)
!1737 = !{!1738}
!1738 = !DISubrange(count: -1)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1277, file: !1278, line: 882, baseType: !1564, size: 64, offset: 9792)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1277, file: !1278, line: 884, baseType: !135, size: 32, offset: 9856)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1277, file: !1278, line: 885, baseType: !135, size: 32, offset: 9888)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1277, file: !1278, line: 886, baseType: !135, size: 32, offset: 9920)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1277, file: !1278, line: 888, baseType: !135, size: 32, offset: 9952)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1277, file: !1278, line: 890, baseType: !419, size: 64, offset: 9984)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1277, file: !1278, line: 893, baseType: !33, size: 32, offset: 10048)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1277, file: !1278, line: 896, baseType: !33, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1277, file: !1278, line: 897, baseType: !33, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1277, file: !1278, line: 898, baseType: !33, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1277, file: !1278, line: 899, baseType: !33, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1277, file: !1278, line: 919, baseType: !33, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1277, file: !1278, line: 922, baseType: !33, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1277, file: !1278, line: 923, baseType: !33, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1277, file: !1278, line: 925, baseType: !33, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1277, file: !1278, line: 939, baseType: !33, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1277, file: !1278, line: 941, baseType: !33, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1277, file: !1278, line: 944, baseType: !33, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1277, file: !1278, line: 956, baseType: !33, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1277, file: !1278, line: 962, baseType: !33, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1277, file: !1278, line: 966, baseType: !33, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1277, file: !1278, line: 969, baseType: !419, size: 64, offset: 10176)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1277, file: !1278, line: 971, baseType: !1762, size: 448, offset: 10240)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !50, line: 25, size: 448, elements: !1763)
!1763 = !{!1764, !1765, !1770}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1762, file: !50, line: 26, baseType: !419, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1762, file: !50, line: 27, baseType: !1766, size: 64, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!405, !1769}
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, scope: !1762, file: !50, line: 28, baseType: !1771, size: 320, offset: 128)
!1771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1762, file: !50, line: 28, size: 320, elements: !1772)
!1772 = !{!1773, !1783, !1808}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1771, file: !50, line: 37, baseType: !1774, size: 320)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1771, file: !50, line: 30, size: 320, elements: !1775)
!1775 = !{!1776, !1778, !1779, !1780, !1781, !1782}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1774, file: !50, line: 31, baseType: !1777, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1774, file: !50, line: 32, baseType: !518, size: 32, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1774, file: !50, line: 33, baseType: !518, size: 32, offset: 96)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1774, file: !50, line: 34, baseType: !518, size: 32, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1774, file: !50, line: 35, baseType: !522, size: 64, offset: 192)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1774, file: !50, line: 36, baseType: !1777, size: 64, offset: 256)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1771, file: !50, line: 47, baseType: !1784, size: 192)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1771, file: !50, line: 39, size: 192, elements: !1785)
!1785 = !{!1786, !1787, !1788, !1807}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1784, file: !50, line: 40, baseType: !1435, size: 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1784, file: !50, line: 41, baseType: !49, size: 32, offset: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, scope: !1784, file: !50, line: 42, baseType: !1789, size: 64, offset: 64)
!1789 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1784, file: !50, line: 42, size: 64, elements: !1790)
!1790 = !{!1791, !1799}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1789, file: !50, line: 43, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1794, line: 7, size: 128, elements: !1795)
!1794 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1795 = !{!1796, !1798}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1793, file: !1794, line: 8, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !403, line: 93, baseType: !610)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1793, file: !1794, line: 9, baseType: !610, size: 64, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1789, file: !50, line: 44, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1802, line: 7, size: 64, elements: !1803)
!1802 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1803 = !{!1804, !1806}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1801, file: !1802, line: 8, baseType: !1805, size: 32)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1802, line: 5, baseType: !703)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1801, file: !1802, line: 9, baseType: !703, size: 32, offset: 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1784, file: !50, line: 46, baseType: !522, size: 64, offset: 128)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1771, file: !50, line: 55, baseType: !1809, size: 256)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1771, file: !50, line: 49, size: 256, elements: !1810)
!1810 = !{!1811, !1819, !1820, !1821, !1822}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1809, file: !50, line: 50, baseType: !1812, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1814, line: 36, size: 64, elements: !1815)
!1814 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!1815 = !{!1816, !1817, !1818}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1813, file: !1814, line: 37, baseType: !135, size: 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1813, file: !1814, line: 38, baseType: !845, size: 16, offset: 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1813, file: !1814, line: 39, baseType: !845, size: 16, offset: 48)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1809, file: !50, line: 51, baseType: !135, size: 32, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1809, file: !50, line: 52, baseType: !135, size: 32, offset: 96)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1809, file: !50, line: 53, baseType: !419, size: 64, offset: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1809, file: !50, line: 54, baseType: !419, size: 64, offset: 192)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1277, file: !1278, line: 973, baseType: !1824, size: 32, offset: 10688)
!1824 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !254, line: 27, baseType: !1825)
!1825 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !403, line: 28, baseType: !135)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1277, file: !1278, line: 974, baseType: !1824, size: 32, offset: 10720)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1277, file: !1278, line: 978, baseType: !419, size: 64, offset: 10752)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1277, file: !1278, line: 987, baseType: !1276, size: 64, offset: 10816)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1277, file: !1278, line: 990, baseType: !1276, size: 64, offset: 10880)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1277, file: !1278, line: 995, baseType: !253, size: 128, offset: 10944)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1277, file: !1278, line: 996, baseType: !253, size: 128, offset: 11072)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1277, file: !1278, line: 997, baseType: !1276, size: 64, offset: 11200)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1277, file: !1278, line: 1005, baseType: !253, size: 128, offset: 11264)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1277, file: !1278, line: 1006, baseType: !253, size: 128, offset: 11392)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1277, file: !1278, line: 1009, baseType: !1232, size: 64, offset: 11520)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1277, file: !1278, line: 1010, baseType: !1837, size: 512, offset: 11584)
!1837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !953, size: 512, elements: !937)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1277, file: !1278, line: 1011, baseType: !253, size: 128, offset: 12096)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1277, file: !1278, line: 1012, baseType: !253, size: 128, offset: 12224)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1277, file: !1278, line: 1014, baseType: !655, size: 64, offset: 12352)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1277, file: !1278, line: 1017, baseType: !836, size: 64, offset: 12416)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1277, file: !1278, line: 1020, baseType: !836, size: 64, offset: 12480)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1277, file: !1278, line: 1023, baseType: !245, size: 64, offset: 12544)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1277, file: !1278, line: 1025, baseType: !522, size: 64, offset: 12608)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1277, file: !1278, line: 1026, baseType: !522, size: 64, offset: 12672)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1277, file: !1278, line: 1031, baseType: !522, size: 64, offset: 12736)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1277, file: !1278, line: 1032, baseType: !1848, size: 192, offset: 12800)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1278, line: 324, size: 192, elements: !1849)
!1849 = !{!1850, !1851, !1852}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1848, file: !1278, line: 326, baseType: !522, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1848, file: !1278, line: 327, baseType: !522, size: 64, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1848, file: !1278, line: 328, baseType: !665, size: 32, offset: 128)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1277, file: !1278, line: 1041, baseType: !419, size: 64, offset: 12992)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1277, file: !1278, line: 1042, baseType: !419, size: 64, offset: 13056)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1277, file: !1278, line: 1045, baseType: !522, size: 64, offset: 13120)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1277, file: !1278, line: 1048, baseType: !522, size: 64, offset: 13184)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1277, file: !1278, line: 1051, baseType: !419, size: 64, offset: 13248)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1277, file: !1278, line: 1052, baseType: !419, size: 64, offset: 13312)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1277, file: !1278, line: 1055, baseType: !1860, size: 640, offset: 13376)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1861, line: 132, size: 640, elements: !1862)
!1861 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1862 = !{!1863, !1869, !1870}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1860, file: !1861, line: 133, baseType: !1864, size: 576)
!1864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1865, size: 576, elements: !370)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1861, line: 117, size: 192, elements: !1866)
!1866 = !{!1867, !1868}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1865, file: !1861, line: 118, baseType: !522, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1865, file: !1861, line: 119, baseType: !1444, size: 128, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1860, file: !1861, line: 134, baseType: !33, size: 32, offset: 576)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1860, file: !1861, line: 135, baseType: !33, size: 32, offset: 608)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1277, file: !1278, line: 1058, baseType: !1872, size: 448, offset: 14016)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1861, line: 144, size: 448, elements: !1873)
!1873 = !{!1874, !1875, !1876}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1872, file: !1861, line: 145, baseType: !927, size: 128, align: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1872, file: !1861, line: 146, baseType: !707, size: 256, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1872, file: !1861, line: 147, baseType: !33, size: 32, offset: 384)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1277, file: !1278, line: 1064, baseType: !1878, size: 64, offset: 14464)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1880)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1881, line: 110, size: 1472, elements: !1882)
!1881 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1882 = !{!1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1899, !1900, !1901, !1902, !1903, !1904, !2014, !2015, !2016, !2017, !2018, !2041, !2042, !2046, !2054}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1880, file: !1881, line: 111, baseType: !711, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1880, file: !1881, line: 112, baseType: !455, size: 32, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1880, file: !1881, line: 113, baseType: !464, size: 32, offset: 96)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1880, file: !1881, line: 114, baseType: !455, size: 32, offset: 128)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1880, file: !1881, line: 115, baseType: !464, size: 32, offset: 160)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1880, file: !1881, line: 116, baseType: !455, size: 32, offset: 192)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1880, file: !1881, line: 117, baseType: !464, size: 32, offset: 224)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1880, file: !1881, line: 118, baseType: !455, size: 32, offset: 256)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1880, file: !1881, line: 119, baseType: !464, size: 32, offset: 288)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1880, file: !1881, line: 120, baseType: !33, size: 32, offset: 320)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1880, file: !1881, line: 121, baseType: !1894, size: 64, offset: 384)
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1895, line: 24, baseType: !1896)
!1895 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1895, line: 24, size: 64, elements: !1897)
!1897 = !{!1898}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1896, file: !1895, line: 24, baseType: !522, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1880, file: !1881, line: 122, baseType: !1894, size: 64, offset: 448)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1880, file: !1881, line: 123, baseType: !1894, size: 64, offset: 512)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1880, file: !1881, line: 124, baseType: !1894, size: 64, offset: 576)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1880, file: !1881, line: 125, baseType: !1894, size: 64, offset: 640)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1880, file: !1881, line: 127, baseType: !331, size: 8, offset: 704)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1880, file: !1881, line: 129, baseType: !1905, size: 64, offset: 768)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1907, line: 195, size: 1728, elements: !1908)
!1907 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1908 = !{!1909, !1910, !1913, !1918, !1919, !1922, !1923, !1930, !1931, !1932, !1933, !1936, !1937, !1938, !1939, !1940, !1978, !1999}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1906, file: !1907, line: 196, baseType: !274, size: 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1906, file: !1907, line: 197, baseType: !1911, size: 32, offset: 32)
!1911 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1907, line: 28, baseType: !1912)
!1912 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !254, line: 104, baseType: !703)
!1913 = !DIDerivedType(tag: DW_TAG_member, scope: !1906, file: !1907, line: 198, baseType: !1914, size: 192, offset: 64)
!1914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1906, file: !1907, line: 198, size: 192, elements: !1915)
!1915 = !{!1916, !1917}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1914, file: !1907, line: 199, baseType: !253, size: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1914, file: !1907, line: 200, baseType: !819, size: 192, align: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1906, file: !1907, line: 205, baseType: !1619, size: 320, offset: 256)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1906, file: !1907, line: 206, baseType: !1920, size: 64, offset: 576)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1907, line: 206, flags: DIFlagFwdDecl)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1906, file: !1907, line: 207, baseType: !245, size: 64, offset: 640)
!1923 = !DIDerivedType(tag: DW_TAG_member, scope: !1906, file: !1907, line: 208, baseType: !1924, size: 64, offset: 704)
!1924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1906, file: !1907, line: 208, size: 64, elements: !1925)
!1925 = !{!1926, !1929}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1924, file: !1907, line: 209, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1928, line: 8, baseType: !718)
!1928 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1924, file: !1907, line: 210, baseType: !1927, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1906, file: !1907, line: 212, baseType: !1927, size: 64, offset: 768)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1906, file: !1907, line: 213, baseType: !455, size: 32, offset: 832)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1906, file: !1907, line: 214, baseType: !464, size: 32, offset: 864)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1906, file: !1907, line: 215, baseType: !1934, size: 32, offset: 896)
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1907, line: 31, baseType: !1935)
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !254, line: 110, baseType: !518)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1906, file: !1907, line: 216, baseType: !339, size: 16, offset: 928)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1906, file: !1907, line: 217, baseType: !339, size: 16, offset: 944)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1906, file: !1907, line: 221, baseType: !845, size: 16, offset: 960)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1906, file: !1907, line: 228, baseType: !419, size: 64, offset: 1024)
!1940 = !DIDerivedType(tag: DW_TAG_member, scope: !1906, file: !1907, line: 245, baseType: !1941, size: 320, offset: 1088)
!1941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1906, file: !1907, line: 245, size: 320, elements: !1942)
!1942 = !{!1943, !1970}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1941, file: !1907, line: 246, baseType: !1944, size: 320)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1907, line: 114, size: 320, elements: !1945)
!1945 = !{!1946, !1947, !1959, !1962, !1969}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1944, file: !1907, line: 116, baseType: !419, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, scope: !1944, file: !1907, line: 117, baseType: !1948, size: 64, offset: 64)
!1948 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1944, file: !1907, line: 117, size: 64, elements: !1949)
!1949 = !{!1950, !1958}
!1950 = !DIDerivedType(tag: DW_TAG_member, scope: !1948, file: !1907, line: 118, baseType: !1951, size: 64)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1948, file: !1907, line: 118, size: 64, elements: !1952)
!1952 = !{!1953, !1954}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1951, file: !1907, line: 120, baseType: !337, size: 16)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1951, file: !1907, line: 121, baseType: !1955, size: 48, offset: 16)
!1955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1956)
!1956 = !{!1957}
!1957 = !DISubrange(count: 6)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1948, file: !1907, line: 127, baseType: !419, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1944, file: !1907, line: 129, baseType: !1960, size: 64, offset: 128)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1907, line: 102, flags: DIFlagFwdDecl)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1944, file: !1907, line: 130, baseType: !1963, size: 64, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1907, line: 108, size: 192, elements: !1965)
!1965 = !{!1966, !1967, !1968}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1964, file: !1907, line: 109, baseType: !927, size: 128, align: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1964, file: !1907, line: 110, baseType: !274, size: 32, offset: 128)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1964, file: !1907, line: 111, baseType: !787, size: 8, offset: 160)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1944, file: !1907, line: 131, baseType: !292, size: 64, offset: 256)
!1970 = !DIDerivedType(tag: DW_TAG_member, scope: !1941, file: !1907, line: 247, baseType: !1971, size: 320)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1941, file: !1907, line: 247, size: 320, elements: !1972)
!1972 = !{!1973, !1974, !1975, !1976, !1977}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1971, file: !1907, line: 248, baseType: !419, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1971, file: !1907, line: 249, baseType: !419, size: 64, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1971, file: !1907, line: 250, baseType: !1960, size: 64, offset: 128)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1971, file: !1907, line: 251, baseType: !1963, size: 64, offset: 192)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1971, file: !1907, line: 252, baseType: !369, size: 64, offset: 256)
!1978 = !DIDerivedType(tag: DW_TAG_member, scope: !1906, file: !1907, line: 260, baseType: !1979, size: 256, offset: 1408)
!1979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1906, file: !1907, line: 260, size: 256, elements: !1980)
!1980 = !{!1981, !1987}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1979, file: !1907, line: 261, baseType: !1982, size: 256)
!1982 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1907, line: 134, size: 256, elements: !1983)
!1983 = !{!1984, !1985}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1982, file: !1907, line: 135, baseType: !245, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1982, file: !1907, line: 136, baseType: !1986, size: 256)
!1986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 256, elements: !937)
!1987 = !DIDerivedType(tag: DW_TAG_member, scope: !1979, file: !1907, line: 262, baseType: !1988, size: 256)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1979, file: !1907, line: 262, size: 256, elements: !1989)
!1989 = !{!1990, !1991}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1988, file: !1907, line: 264, baseType: !253, size: 128)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1988, file: !1907, line: 265, baseType: !1992, size: 128, offset: 128)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1993, line: 22, size: 128, elements: !1994)
!1993 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1994 = !{!1995, !1998}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1992, file: !1993, line: 23, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1993, line: 23, flags: DIFlagFwdDecl)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1992, file: !1993, line: 24, baseType: !419, size: 64, offset: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1906, file: !1907, line: 280, baseType: !2000, size: 64, offset: 1664)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1907, line: 176, size: 192, elements: !2002)
!2002 = !{!2003, !2012, !2013}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2001, file: !1907, line: 177, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1907, line: 171, baseType: !2005)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!135, !1905, !2008, !2010, !1905}
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1961)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1982)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2001, file: !1907, line: 178, baseType: !1905, size: 64, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2001, file: !1907, line: 179, baseType: !1960, size: 64, offset: 128)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1880, file: !1881, line: 130, baseType: !1905, size: 64, offset: 832)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1880, file: !1881, line: 131, baseType: !1905, size: 64, offset: 896)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1880, file: !1881, line: 132, baseType: !1905, size: 64, offset: 960)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1880, file: !1881, line: 135, baseType: !245, size: 64, offset: 1024)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1880, file: !1881, line: 137, baseType: !2019, size: 64, offset: 1088)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2021, line: 14, size: 1088, elements: !2022)
!2021 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2022 = !{!2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2020, file: !2021, line: 15, baseType: !274, size: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2020, file: !2021, line: 17, baseType: !1657, size: 320, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2020, file: !2021, line: 19, baseType: !419, size: 64, offset: 384)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2020, file: !2021, line: 20, baseType: !711, size: 64, offset: 448)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2020, file: !2021, line: 23, baseType: !953, size: 128, offset: 512)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2020, file: !2021, line: 24, baseType: !455, size: 32, offset: 640)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2020, file: !2021, line: 29, baseType: !711, size: 64, offset: 704)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2020, file: !2021, line: 36, baseType: !2031, size: 320, offset: 768)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2032, line: 15, size: 320, elements: !2033)
!2032 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2033 = !{!2034, !2035, !2036, !2037, !2038, !2039, !2040}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2031, file: !2032, line: 16, baseType: !665, size: 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2031, file: !2032, line: 18, baseType: !135, size: 32, offset: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2031, file: !2032, line: 19, baseType: !135, size: 32, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2031, file: !2032, line: 20, baseType: !135, size: 32, offset: 96)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2031, file: !2032, line: 21, baseType: !135, size: 32, offset: 128)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2031, file: !2032, line: 22, baseType: !419, size: 64, offset: 192)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2031, file: !2032, line: 23, baseType: !419, size: 64, offset: 256)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1880, file: !1881, line: 138, baseType: !1719, size: 64, offset: 1152)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1880, file: !1881, line: 139, baseType: !2043, size: 64, offset: 1216)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2045, line: 16, flags: DIFlagFwdDecl)
!2045 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1880, file: !1881, line: 140, baseType: !2047, size: 64, offset: 1280)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1881, line: 25, size: 64, elements: !2049)
!2049 = !{!2050, !2051, !2052}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2048, file: !1881, line: 26, baseType: !279, size: 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2048, file: !1881, line: 27, baseType: !135, size: 32, offset: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2048, file: !1881, line: 28, baseType: !2053, offset: 64)
!2053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, elements: !1737)
!2054 = !DIDerivedType(tag: DW_TAG_member, scope: !1880, file: !1881, line: 142, baseType: !2055, size: 128, offset: 1344)
!2055 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1880, file: !1881, line: 142, size: 128, elements: !2056)
!2056 = !{!2057, !2058}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2055, file: !1881, line: 143, baseType: !135, size: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2055, file: !1881, line: 144, baseType: !927, size: 128, align: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1277, file: !1278, line: 1067, baseType: !1878, size: 64, offset: 14528)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1277, file: !1278, line: 1070, baseType: !1878, size: 64, offset: 14592)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1277, file: !1278, line: 1074, baseType: !1905, size: 64, offset: 14656)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1277, file: !1278, line: 1084, baseType: !2063, size: 128, offset: 14720)
!2063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2064)
!2064 = !{!2065}
!2065 = !DISubrange(count: 16)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1277, file: !1278, line: 1086, baseType: !2067, size: 64, offset: 14848)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1278, line: 55, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1277, file: !1278, line: 1089, baseType: !2070, size: 64, offset: 14912)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2071, line: 12, size: 64, elements: !2072)
!2071 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2072 = !{!2073}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2070, file: !2071, line: 13, baseType: !2074, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2071, line: 8, flags: DIFlagFwdDecl)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1277, file: !1278, line: 1090, baseType: !2077, size: 128, offset: 14976)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2078, line: 13, size: 128, elements: !2079)
!2078 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2079 = !{!2080}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2077, file: !2078, line: 14, baseType: !253, size: 128)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1277, file: !1278, line: 1097, baseType: !2082, size: 64, offset: 15104)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1278, line: 50, flags: DIFlagFwdDecl)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1277, file: !1278, line: 1100, baseType: !2085, size: 64, offset: 15168)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1278, line: 1100, flags: DIFlagFwdDecl)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1277, file: !1278, line: 1103, baseType: !2088, size: 64, offset: 15232)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1278, line: 53, flags: DIFlagFwdDecl)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1277, file: !1278, line: 1107, baseType: !2091, size: 64, offset: 15296)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2093, line: 31, size: 576, elements: !2094)
!2093 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2094 = !{!2095, !2096, !2099, !2102, !2105, !2106, !2109, !2112, !2113}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2092, file: !2093, line: 32, baseType: !274, size: 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2092, file: !2093, line: 33, baseType: !2097, size: 64, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2093, line: 9, flags: DIFlagFwdDecl)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2092, file: !2093, line: 34, baseType: !2100, size: 64, offset: 128)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2093, line: 10, flags: DIFlagFwdDecl)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2092, file: !2093, line: 35, baseType: !2103, size: 64, offset: 192)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2093, line: 8, flags: DIFlagFwdDecl)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2092, file: !2093, line: 36, baseType: !1255, size: 64, offset: 256)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2092, file: !2093, line: 37, baseType: !2107, size: 64, offset: 320)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1907, line: 34, flags: DIFlagFwdDecl)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2092, file: !2093, line: 38, baseType: !2110, size: 64, offset: 384)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2093, line: 38, flags: DIFlagFwdDecl)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2092, file: !2093, line: 39, baseType: !2110, size: 64, offset: 448)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2092, file: !2093, line: 40, baseType: !2114, size: 64, offset: 512)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2093, line: 12, flags: DIFlagFwdDecl)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1277, file: !1278, line: 1110, baseType: !2117, size: 64, offset: 15360)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2119, line: 93, size: 8768, elements: !2120)
!2119 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2120 = !{!2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2168, !2177, !2178, !2180, !2181, !2182, !2185, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2223, !2224, !2231, !2241, !2244, !2245, !2248, !2249, !2250, !2251, !2252, !2253}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2118, file: !2119, line: 94, baseType: !274, size: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2118, file: !2119, line: 95, baseType: !279, size: 32, offset: 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2118, file: !2119, line: 96, baseType: !135, size: 32, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2118, file: !2119, line: 97, baseType: !135, size: 32, offset: 96)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2118, file: !2119, line: 98, baseType: !253, size: 128, offset: 128)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2118, file: !2119, line: 100, baseType: !1242, size: 192, offset: 256)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2118, file: !2119, line: 103, baseType: !1276, size: 64, offset: 448)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2118, file: !2119, line: 106, baseType: !2129, size: 192, offset: 512)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2045, line: 32, size: 192, elements: !2130)
!2130 = !{!2131, !2132}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2129, file: !2045, line: 33, baseType: !253, size: 128)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2129, file: !2045, line: 34, baseType: !2133, size: 64, offset: 128)
!2133 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2134, line: 25, baseType: !2135)
!2134 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2134, line: 23, size: 64, elements: !2136)
!2136 = !{!2137}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2135, file: !2134, line: 24, baseType: !1515, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2118, file: !2119, line: 109, baseType: !1077, size: 64, offset: 704)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2118, file: !2119, line: 112, baseType: !135, size: 32, offset: 768)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2118, file: !2119, line: 114, baseType: !135, size: 32, offset: 800)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2118, file: !2119, line: 115, baseType: !1276, size: 64, offset: 832)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2118, file: !2119, line: 118, baseType: !135, size: 32, offset: 896)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2118, file: !2119, line: 119, baseType: !33, size: 32, offset: 928)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2118, file: !2119, line: 121, baseType: !2145, size: 64, offset: 960)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2119, line: 80, size: 448, elements: !2147)
!2147 = !{!2148, !2149, !2155}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2146, file: !2119, line: 81, baseType: !279, size: 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2146, file: !2119, line: 82, baseType: !2150, size: 128, offset: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2119, line: 75, size: 128, elements: !2151)
!2151 = !{!2152, !2153}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2150, file: !2119, line: 76, baseType: !1276, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2150, file: !2119, line: 77, baseType: !2154, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2146, file: !2119, line: 83, baseType: !656, size: 256, offset: 192)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2118, file: !2119, line: 132, baseType: !33, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2118, file: !2119, line: 133, baseType: !33, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2118, file: !2119, line: 138, baseType: !33, size: 32, offset: 1056)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2118, file: !2119, line: 139, baseType: !253, size: 128, offset: 1088)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2118, file: !2119, line: 142, baseType: !1388, size: 512, offset: 1216)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2118, file: !2119, line: 143, baseType: !1396, size: 64, offset: 1728)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2118, file: !2119, line: 150, baseType: !2163, size: 256, offset: 1792)
!2163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2164, size: 256, elements: !826)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2119, line: 38, size: 128, elements: !2165)
!2165 = !{!2166, !2167}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2164, file: !2119, line: 39, baseType: !522, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2164, file: !2119, line: 40, baseType: !522, size: 64, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2118, file: !2119, line: 156, baseType: !2169, size: 192, offset: 2048)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2119, line: 66, size: 192, elements: !2170)
!2170 = !{!2171}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2169, file: !2119, line: 67, baseType: !2172, size: 192)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2119, line: 47, size: 192, elements: !2173)
!2173 = !{!2174, !2175, !2176}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2172, file: !2119, line: 48, baseType: !713, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2172, file: !2119, line: 49, baseType: !713, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2172, file: !2119, line: 50, baseType: !713, size: 64, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2118, file: !2119, line: 160, baseType: !1860, size: 640, offset: 2240)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2118, file: !2119, line: 163, baseType: !2179, size: 256, offset: 2880)
!2179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1232, size: 256, elements: !937)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2118, file: !2119, line: 169, baseType: !1232, size: 64, offset: 3136)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2118, file: !2119, line: 172, baseType: !135, size: 32, offset: 3200)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2118, file: !2119, line: 174, baseType: !2183, size: 64, offset: 3264)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2119, line: 174, flags: DIFlagFwdDecl)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2118, file: !2119, line: 185, baseType: !2186, size: 64, offset: 3328)
!2186 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !491, line: 860, baseType: !2187)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !491, line: 853, size: 64, elements: !2188)
!2188 = !{!2189, !2190}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2187, file: !491, line: 858, baseType: !490, size: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2187, file: !491, line: 859, baseType: !303, size: 32, offset: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2118, file: !2119, line: 186, baseType: !522, size: 64, offset: 3392)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2118, file: !2119, line: 186, baseType: !522, size: 64, offset: 3456)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2118, file: !2119, line: 186, baseType: !522, size: 64, offset: 3520)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2118, file: !2119, line: 186, baseType: !522, size: 64, offset: 3584)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2118, file: !2119, line: 187, baseType: !522, size: 64, offset: 3648)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2118, file: !2119, line: 188, baseType: !522, size: 64, offset: 3712)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2118, file: !2119, line: 189, baseType: !1848, size: 192, offset: 3776)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2118, file: !2119, line: 190, baseType: !419, size: 64, offset: 3968)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2118, file: !2119, line: 190, baseType: !419, size: 64, offset: 4032)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2118, file: !2119, line: 190, baseType: !419, size: 64, offset: 4096)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2118, file: !2119, line: 190, baseType: !419, size: 64, offset: 4160)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2118, file: !2119, line: 191, baseType: !419, size: 64, offset: 4224)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2118, file: !2119, line: 191, baseType: !419, size: 64, offset: 4288)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2118, file: !2119, line: 191, baseType: !419, size: 64, offset: 4352)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2118, file: !2119, line: 191, baseType: !419, size: 64, offset: 4416)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2118, file: !2119, line: 192, baseType: !419, size: 64, offset: 4480)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2118, file: !2119, line: 192, baseType: !419, size: 64, offset: 4544)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2118, file: !2119, line: 192, baseType: !419, size: 64, offset: 4608)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2118, file: !2119, line: 192, baseType: !419, size: 64, offset: 4672)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2118, file: !2119, line: 193, baseType: !419, size: 64, offset: 4736)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2118, file: !2119, line: 193, baseType: !419, size: 64, offset: 4800)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2118, file: !2119, line: 194, baseType: !2213, size: 448, offset: 4864)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2214, line: 12, size: 448, elements: !2215)
!2214 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2215 = !{!2216, !2217, !2218, !2219, !2220, !2221, !2222}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2213, file: !2214, line: 15, baseType: !522, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2213, file: !2214, line: 17, baseType: !522, size: 64, offset: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2213, file: !2214, line: 19, baseType: !522, size: 64, offset: 128)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2213, file: !2214, line: 21, baseType: !522, size: 64, offset: 192)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2213, file: !2214, line: 29, baseType: !522, size: 64, offset: 256)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2213, file: !2214, line: 35, baseType: !522, size: 64, offset: 320)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2213, file: !2214, line: 44, baseType: !522, size: 64, offset: 384)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2118, file: !2119, line: 202, baseType: !524, size: 64, offset: 5312)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2118, file: !2119, line: 213, baseType: !2225, size: 2048, offset: 5376)
!2225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2226, size: 2048, elements: !2064)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2227, line: 43, size: 128, elements: !2228)
!2227 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2228 = !{!2229, !2230}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2226, file: !2227, line: 44, baseType: !418, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2226, file: !2227, line: 45, baseType: !418, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2118, file: !2119, line: 216, baseType: !2232, size: 448, offset: 7424)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2119, line: 30, size: 448, elements: !2233)
!2233 = !{!2234, !2235, !2236, !2237, !2238, !2239, !2240}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2232, file: !2119, line: 31, baseType: !135, size: 32)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2232, file: !2119, line: 32, baseType: !405, size: 64, offset: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2232, file: !2119, line: 33, baseType: !419, size: 64, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2232, file: !2119, line: 34, baseType: !522, size: 64, offset: 192)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2232, file: !2119, line: 34, baseType: !522, size: 64, offset: 256)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2232, file: !2119, line: 35, baseType: !419, size: 64, offset: 320)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2232, file: !2119, line: 35, baseType: !419, size: 64, offset: 384)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2118, file: !2119, line: 219, baseType: !2242, size: 64, offset: 7872)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2119, line: 219, flags: DIFlagFwdDecl)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2118, file: !2119, line: 222, baseType: !33, size: 32, offset: 7936)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2118, file: !2119, line: 223, baseType: !2246, size: 64, offset: 8000)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2119, line: 223, flags: DIFlagFwdDecl)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2118, file: !2119, line: 230, baseType: !787, size: 8, offset: 8064)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2118, file: !2119, line: 231, baseType: !845, size: 16, offset: 8080)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2118, file: !2119, line: 232, baseType: !845, size: 16, offset: 8096)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2118, file: !2119, line: 234, baseType: !1564, size: 64, offset: 8128)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2118, file: !2119, line: 237, baseType: !707, size: 256, offset: 8192)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2118, file: !2119, line: 243, baseType: !1619, size: 320, offset: 8448)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1277, file: !1278, line: 1111, baseType: !2255, size: 64, offset: 15424)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2119, line: 20, size: 16640, elements: !2257)
!2257 = !{!2258, !2259, !2260, !2261}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2256, file: !2119, line: 21, baseType: !303, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2256, file: !2119, line: 22, baseType: !274, size: 32, offset: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2256, file: !2119, line: 23, baseType: !1242, size: 192, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2256, file: !2119, line: 24, baseType: !2262, size: 16384, offset: 256)
!2262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2263, size: 16384, elements: !374)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2045, line: 51, size: 256, elements: !2264)
!2264 = !{!2265}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2263, file: !2045, line: 52, baseType: !2266, size: 256)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2045, line: 37, size: 256, elements: !2267)
!2267 = !{!2268, !2275, !2276, !2280}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2266, file: !2045, line: 39, baseType: !2269, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2270, line: 83, baseType: !2271)
!2270 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2270, line: 82, baseType: !2273)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{null, !135}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2266, file: !2045, line: 40, baseType: !419, size: 64, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2266, file: !2045, line: 46, baseType: !2277, size: 64, offset: 128)
!2277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2270, line: 86, baseType: !2278)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2270, line: 85, baseType: !1072)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2266, file: !2045, line: 48, baseType: !2133, size: 64, offset: 192)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1277, file: !1278, line: 1112, baseType: !2133, size: 64, offset: 15488)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1277, file: !1278, line: 1113, baseType: !2133, size: 64, offset: 15552)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1277, file: !1278, line: 1115, baseType: !2133, size: 64, offset: 15616)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1277, file: !1278, line: 1116, baseType: !2129, size: 192, offset: 15680)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1277, file: !1278, line: 1117, baseType: !419, size: 64, offset: 15872)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1277, file: !1278, line: 1118, baseType: !416, size: 64, offset: 15936)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1277, file: !1278, line: 1119, baseType: !33, size: 32, offset: 16000)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1277, file: !1278, line: 1121, baseType: !926, size: 64, offset: 16064)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1277, file: !1278, line: 1125, baseType: !2290, size: 64, offset: 16128)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1278, line: 43, flags: DIFlagFwdDecl)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1277, file: !1278, line: 1127, baseType: !455, size: 32, offset: 16192)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1277, file: !1278, line: 1128, baseType: !33, size: 32, offset: 16224)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1277, file: !1278, line: 1130, baseType: !2295, size: 128, offset: 16256)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2296, line: 37, size: 128, elements: !2297)
!2296 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2297 = !{!2298, !2299, !2300}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2295, file: !2296, line: 38, baseType: !135, size: 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2295, file: !2296, line: 39, baseType: !279, size: 32, offset: 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2295, file: !2296, line: 40, baseType: !2301, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2296, line: 24, flags: DIFlagFwdDecl)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1277, file: !1278, line: 1131, baseType: !2304, size: 256, offset: 16384)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2305, line: 12, size: 256, elements: !2306)
!2305 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2306 = !{!2307, !2308, !2309, !2310}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2304, file: !2305, line: 13, baseType: !369, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2304, file: !2305, line: 14, baseType: !419, size: 64, offset: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2304, file: !2305, line: 15, baseType: !419, size: 64, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2304, file: !2305, line: 16, baseType: !787, size: 8, offset: 192)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1277, file: !1278, line: 1134, baseType: !522, size: 64, offset: 16640)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1277, file: !1278, line: 1135, baseType: !522, size: 64, offset: 16704)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1277, file: !1278, line: 1138, baseType: !303, size: 32, offset: 16768)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1277, file: !1278, line: 1141, baseType: !665, size: 32, offset: 16800)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1277, file: !1278, line: 1143, baseType: !2316, size: 64, offset: 16832)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1278, line: 735, size: 64, elements: !2317)
!2317 = !{!2318}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2316, file: !1278, line: 736, baseType: !2319, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1277, file: !1278, line: 1147, baseType: !1447, size: 128, offset: 16896)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1277, file: !1278, line: 1149, baseType: !1276, size: 64, offset: 17024)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1277, file: !1278, line: 1151, baseType: !2323, size: 64, offset: 17088)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1278, line: 1151, flags: DIFlagFwdDecl)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1277, file: !1278, line: 1188, baseType: !245, size: 64, offset: 17152)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1277, file: !1278, line: 1191, baseType: !2327, size: 64, offset: 17216)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1278, line: 44, flags: DIFlagFwdDecl)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1277, file: !1278, line: 1194, baseType: !2330, size: 64, offset: 17280)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1278, line: 45, flags: DIFlagFwdDecl)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1277, file: !1278, line: 1197, baseType: !2333, size: 64, offset: 17344)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1278, line: 61, flags: DIFlagFwdDecl)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1277, file: !1278, line: 1199, baseType: !2336, size: 64, offset: 17408)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2338, line: 99, size: 128, elements: !2339)
!2338 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2339 = !{!2340, !2341, !2342}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2337, file: !2338, line: 100, baseType: !711, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2337, file: !2338, line: 101, baseType: !279, size: 32, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2337, file: !2338, line: 103, baseType: !339, size: 16, offset: 96)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1277, file: !1278, line: 1202, baseType: !2344, size: 64, offset: 17472)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1278, line: 48, flags: DIFlagFwdDecl)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1277, file: !1278, line: 1205, baseType: !419, size: 64, offset: 17536)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1277, file: !1278, line: 1206, baseType: !2348, size: 64, offset: 17600)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2045, line: 14, baseType: !2350)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2045, line: 12, size: 384, elements: !2351)
!2351 = !{!2352}
!2352 = !DIDerivedType(tag: DW_TAG_member, scope: !2350, file: !2045, line: 13, baseType: !2353, size: 384)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2350, file: !2045, line: 13, size: 384, elements: !2354)
!2354 = !{!2355, !2356, !2357, !2358}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2353, file: !2045, line: 13, baseType: !135, size: 32)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2353, file: !2045, line: 13, baseType: !135, size: 32, offset: 32)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2353, file: !2045, line: 13, baseType: !135, size: 32, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2353, file: !2045, line: 13, baseType: !2359, size: 256, offset: 128)
!2359 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2360, line: 37, size: 256, elements: !2361)
!2360 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2361 = !{!2362, !2367, !2380, !2386, !2395, !2422, !2427}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2359, file: !2360, line: 42, baseType: !2363, size: 64)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2359, file: !2360, line: 39, size: 64, elements: !2364)
!2364 = !{!2365, !2366}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2363, file: !2360, line: 40, baseType: !1825, size: 32)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2363, file: !2360, line: 41, baseType: !461, size: 32, offset: 32)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2359, file: !2360, line: 50, baseType: !2368, size: 192)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2359, file: !2360, line: 45, size: 192, elements: !2369)
!2369 = !{!2370, !2372, !2373, !2379}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2368, file: !2360, line: 46, baseType: !2371, size: 32)
!2371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !403, line: 95, baseType: !135)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2368, file: !2360, line: 47, baseType: !135, size: 32, offset: 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2368, file: !2360, line: 48, baseType: !2374, size: 64, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2360, line: 11, baseType: !2375)
!2375 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2360, line: 8, size: 64, elements: !2376)
!2376 = !{!2377, !2378}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2375, file: !2360, line: 9, baseType: !135, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2375, file: !2360, line: 10, baseType: !245, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2368, file: !2360, line: 49, baseType: !135, size: 32, offset: 128)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2359, file: !2360, line: 57, baseType: !2381, size: 128)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2359, file: !2360, line: 53, size: 128, elements: !2382)
!2382 = !{!2383, !2384, !2385}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2381, file: !2360, line: 54, baseType: !1825, size: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2381, file: !2360, line: 55, baseType: !461, size: 32, offset: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2381, file: !2360, line: 56, baseType: !2374, size: 64, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2359, file: !2360, line: 66, baseType: !2387, size: 256)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2359, file: !2360, line: 60, size: 256, elements: !2388)
!2388 = !{!2389, !2390, !2391, !2392, !2394}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2387, file: !2360, line: 61, baseType: !1825, size: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2387, file: !2360, line: 62, baseType: !461, size: 32, offset: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2387, file: !2360, line: 63, baseType: !135, size: 32, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2387, file: !2360, line: 64, baseType: !2393, size: 64, offset: 128)
!2393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !403, line: 94, baseType: !404)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2387, file: !2360, line: 65, baseType: !2393, size: 64, offset: 192)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2359, file: !2360, line: 105, baseType: !2396, size: 256)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2359, file: !2360, line: 69, size: 256, elements: !2397)
!2397 = !{!2398, !2399}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2396, file: !2360, line: 70, baseType: !245, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, scope: !2396, file: !2360, line: 79, baseType: !2400, size: 192, offset: 64)
!2400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2396, file: !2360, line: 79, size: 192, elements: !2401)
!2401 = !{!2402, !2403, !2404, !2411, !2416}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2400, file: !2360, line: 81, baseType: !135, size: 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2400, file: !2360, line: 86, baseType: !845, size: 16)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2400, file: !2360, line: 92, baseType: !2405, size: 192)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2400, file: !2360, line: 88, size: 192, elements: !2406)
!2406 = !{!2407, !2409, !2410}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2405, file: !2360, line: 89, baseType: !2408, size: 64)
!2408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1431)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2405, file: !2360, line: 90, baseType: !245, size: 64, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2405, file: !2360, line: 91, baseType: !245, size: 64, offset: 128)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2400, file: !2360, line: 97, baseType: !2412, size: 96)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2400, file: !2360, line: 94, size: 96, elements: !2413)
!2413 = !{!2414, !2415}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2412, file: !2360, line: 95, baseType: !2408, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2412, file: !2360, line: 96, baseType: !519, size: 32, offset: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2400, file: !2360, line: 103, baseType: !2417, size: 128)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2400, file: !2360, line: 99, size: 128, elements: !2418)
!2418 = !{!2419, !2420, !2421}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2417, file: !2360, line: 100, baseType: !419, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2417, file: !2360, line: 101, baseType: !519, size: 32, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2417, file: !2360, line: 102, baseType: !519, size: 32, offset: 96)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2359, file: !2360, line: 111, baseType: !2423, size: 128)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2359, file: !2360, line: 108, size: 128, elements: !2424)
!2424 = !{!2425, !2426}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2423, file: !2360, line: 109, baseType: !405, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2423, file: !2360, line: 110, baseType: !135, size: 32, offset: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2359, file: !2360, line: 118, baseType: !2428, size: 128)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2359, file: !2360, line: 114, size: 128, elements: !2429)
!2429 = !{!2430, !2431, !2432}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2428, file: !2360, line: 115, baseType: !245, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2428, file: !2360, line: 116, baseType: !135, size: 32, offset: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2428, file: !2360, line: 117, baseType: !33, size: 32, offset: 96)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1277, file: !1278, line: 1208, baseType: !2213, size: 448, offset: 17664)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1277, file: !1278, line: 1215, baseType: !522, size: 64, offset: 18112)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1277, file: !1278, line: 1217, baseType: !522, size: 64, offset: 18176)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1277, file: !1278, line: 1219, baseType: !522, size: 64, offset: 18240)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1277, file: !1278, line: 1223, baseType: !2438, size: 64, offset: 18304)
!2438 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2439, line: 99, baseType: !2440)
!2439 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2439, line: 99, size: 64, elements: !2441)
!2441 = !{!2442}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2440, file: !2439, line: 99, baseType: !1515, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1277, file: !1278, line: 1225, baseType: !490, size: 32, offset: 18368)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1277, file: !1278, line: 1226, baseType: !135, size: 32, offset: 18400)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1277, file: !1278, line: 1227, baseType: !135, size: 32, offset: 18432)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1277, file: !1278, line: 1231, baseType: !2447, size: 64, offset: 18496)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1278, line: 1231, flags: DIFlagFwdDecl)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1277, file: !1278, line: 1233, baseType: !253, size: 128, offset: 18560)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1277, file: !1278, line: 1240, baseType: !2451, size: 64, offset: 18688)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1278, line: 62, flags: DIFlagFwdDecl)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1277, file: !1278, line: 1242, baseType: !2454, size: 64, offset: 18752)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1278, line: 1242, flags: DIFlagFwdDecl)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1277, file: !1278, line: 1244, baseType: !253, size: 128, offset: 18816)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1277, file: !1278, line: 1245, baseType: !2458, size: 64, offset: 18944)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1278, line: 51, flags: DIFlagFwdDecl)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1277, file: !1278, line: 1246, baseType: !707, size: 256, offset: 19008)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1277, file: !1278, line: 1247, baseType: !33, size: 32, offset: 19264)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1277, file: !1278, line: 1250, baseType: !2463, size: 64, offset: 19328)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1278, line: 57, flags: DIFlagFwdDecl)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1277, file: !1278, line: 1251, baseType: !707, size: 256, offset: 19392)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1277, file: !1278, line: 1252, baseType: !253, size: 128, offset: 19648)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1277, file: !1278, line: 1259, baseType: !2468, size: 64, offset: 19776)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !64, line: 717, flags: DIFlagFwdDecl)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1277, file: !1278, line: 1260, baseType: !845, size: 16, offset: 19840)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1277, file: !1278, line: 1261, baseType: !845, size: 16, offset: 19856)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1277, file: !1278, line: 1314, baseType: !2473, size: 64, offset: 19904)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2475, line: 62, size: 256, align: 256, elements: !2476)
!2475 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2476 = !{!2477, !2478, !2479, !2480, !2481, !2482, !2483}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2474, file: !2475, line: 75, baseType: !519, size: 32)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2474, file: !2475, line: 90, baseType: !519, size: 32, offset: 32)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2474, file: !2475, line: 112, baseType: !523, size: 64, offset: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2474, file: !2475, line: 132, baseType: !519, size: 32, offset: 128)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2474, file: !2475, line: 140, baseType: !519, size: 32, offset: 160)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2474, file: !2475, line: 149, baseType: !519, size: 32, offset: 192)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2474, file: !2475, line: 154, baseType: !2484, offset: 224)
!2484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1737)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1277, file: !1278, line: 1315, baseType: !518, size: 32, offset: 19968)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1277, file: !1278, line: 1316, baseType: !518, size: 32, offset: 20000)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1277, file: !1278, line: 1321, baseType: !419, size: 64, offset: 20032)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1277, file: !1278, line: 1325, baseType: !135, size: 32, offset: 20096)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1277, file: !1278, line: 1326, baseType: !135, size: 32, offset: 20128)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1277, file: !1278, line: 1327, baseType: !135, size: 32, offset: 20160)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1277, file: !1278, line: 1328, baseType: !135, size: 32, offset: 20192)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1277, file: !1278, line: 1329, baseType: !927, size: 128, align: 64, offset: 20224)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1277, file: !1278, line: 1332, baseType: !2494, size: 128, offset: 20352)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2495, line: 51, size: 128, elements: !2496)
!2495 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2496 = !{!2497, !2502, !2503}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2494, file: !2495, line: 60, baseType: !2498, size: 64)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2499, line: 7, size: 64, elements: !2500)
!2499 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2500 = !{!2501}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2498, file: !2499, line: 12, baseType: !1512, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2494, file: !2495, line: 63, baseType: !787, size: 8, offset: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2494, file: !2495, line: 70, baseType: !787, size: 8, offset: 72)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1277, file: !1278, line: 1335, baseType: !2505, size: 64, offset: 20480)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1278, line: 59, flags: DIFlagFwdDecl)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1277, file: !1278, line: 1337, baseType: !2508, size: 128, offset: 20544)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2495, line: 39, size: 128, elements: !2509)
!2509 = !{!2510, !2794, !2795}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2508, file: !2495, line: 40, baseType: !2511, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !64, line: 74, size: 512, align: 128, elements: !2513)
!2513 = !{!2514, !2515, !2788, !2793}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2512, file: !64, line: 75, baseType: !419, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, scope: !2512, file: !64, line: 83, baseType: !2516, size: 320, offset: 64)
!2516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2512, file: !64, line: 83, size: 320, elements: !2517)
!2517 = !{!2518, !2539, !2553, !2557, !2787}
!2518 = !DIDerivedType(tag: DW_TAG_member, scope: !2516, file: !64, line: 84, baseType: !2519, size: 320)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2516, file: !64, line: 84, size: 320, elements: !2520)
!2520 = !{!2521, !2532, !2533, !2538}
!2521 = !DIDerivedType(tag: DW_TAG_member, scope: !2519, file: !64, line: 90, baseType: !2522, size: 128)
!2522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2519, file: !64, line: 90, size: 128, elements: !2523)
!2523 = !{!2524, !2525, !2530, !2531}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2522, file: !64, line: 91, baseType: !253, size: 128)
!2525 = !DIDerivedType(tag: DW_TAG_member, scope: !2522, file: !64, line: 94, baseType: !2526, size: 128)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2522, file: !64, line: 94, size: 128, elements: !2527)
!2527 = !{!2528, !2529}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2526, file: !64, line: 96, baseType: !245, size: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2526, file: !64, line: 98, baseType: !33, size: 32, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2522, file: !64, line: 102, baseType: !253, size: 128)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2522, file: !64, line: 103, baseType: !253, size: 128)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2519, file: !64, line: 106, baseType: !445, size: 64, offset: 128)
!2533 = !DIDerivedType(tag: DW_TAG_member, scope: !2519, file: !64, line: 107, baseType: !2534, size: 64, offset: 192)
!2534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2519, file: !64, line: 107, size: 64, elements: !2535)
!2535 = !{!2536, !2537}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2534, file: !64, line: 108, baseType: !419, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2534, file: !64, line: 109, baseType: !419, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2519, file: !64, line: 117, baseType: !419, size: 64, offset: 256)
!2539 = !DIDerivedType(tag: DW_TAG_member, scope: !2516, file: !64, line: 119, baseType: !2540, size: 320)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2516, file: !64, line: 119, size: 320, elements: !2541)
!2541 = !{!2542, !2543, !2546, !2547, !2548}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2540, file: !64, line: 124, baseType: !419, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2540, file: !64, line: 125, baseType: !2544, size: 64, offset: 64)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !64, line: 125, flags: DIFlagFwdDecl)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2540, file: !64, line: 126, baseType: !419, size: 64, offset: 128)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2540, file: !64, line: 127, baseType: !419, size: 64, offset: 192)
!2548 = !DIDerivedType(tag: DW_TAG_member, scope: !2540, file: !64, line: 128, baseType: !2549, size: 64, offset: 256)
!2549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2540, file: !64, line: 128, size: 64, elements: !2550)
!2550 = !{!2551, !2552}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2549, file: !64, line: 133, baseType: !419, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2549, file: !64, line: 138, baseType: !711, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, scope: !2516, file: !64, line: 141, baseType: !2554, size: 64)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2516, file: !64, line: 141, size: 64, elements: !2555)
!2555 = !{!2556}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2554, file: !64, line: 142, baseType: !419, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, scope: !2516, file: !64, line: 144, baseType: !2558, size: 128)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2516, file: !64, line: 144, size: 128, elements: !2559)
!2559 = !{!2560, !2786}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2558, file: !64, line: 146, baseType: !2561, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !56, line: 126, size: 1216, elements: !2563)
!2563 = !{!2564, !2574, !2595, !2596, !2597, !2598, !2599, !2768, !2769, !2770}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2562, file: !56, line: 127, baseType: !2565, size: 384)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !56, line: 21, size: 384, elements: !2566)
!2566 = !{!2567, !2568, !2570, !2571, !2572, !2573}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2565, file: !56, line: 22, baseType: !419, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2565, file: !56, line: 23, baseType: !2569, size: 64, offset: 64)
!2569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2565, file: !56, line: 24, baseType: !2569, size: 64, offset: 128)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2565, file: !56, line: 25, baseType: !419, size: 64, offset: 192)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2565, file: !56, line: 26, baseType: !419, size: 64, offset: 256)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2565, file: !56, line: 27, baseType: !419, size: 64, offset: 320)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2562, file: !56, line: 128, baseType: !2575, size: 128, offset: 384)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2576, line: 105, size: 128, elements: !2577)
!2576 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2577 = !{!2578, !2579}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2575, file: !2576, line: 110, baseType: !419, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2575, file: !2576, line: 118, baseType: !2580, size: 64, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2576, line: 95, size: 448, elements: !2582)
!2582 = !{!2583, !2584, !2590, !2591, !2592, !2593, !2594}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2581, file: !2576, line: 96, baseType: !711, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2581, file: !2576, line: 97, baseType: !2585, size: 64, offset: 64)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2576, line: 60, baseType: !2587)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{null, !2589}
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2581, file: !2576, line: 98, baseType: !2585, size: 64, offset: 128)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2581, file: !2576, line: 99, baseType: !787, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2581, file: !2576, line: 100, baseType: !787, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2581, file: !2576, line: 101, baseType: !927, size: 128, align: 64, offset: 256)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2581, file: !2576, line: 102, baseType: !2589, size: 64, offset: 384)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2562, file: !56, line: 129, baseType: !656, size: 256, offset: 512)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2562, file: !56, line: 130, baseType: !55, size: 32, offset: 768)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2562, file: !56, line: 131, baseType: !33, size: 32, offset: 800)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2562, file: !56, line: 132, baseType: !419, size: 64, offset: 832)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2562, file: !56, line: 133, baseType: !2600, size: 64, offset: 896)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2602)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !56, line: 77, size: 192, elements: !2603)
!2603 = !{!2604, !2608, !2764}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2602, file: !56, line: 83, baseType: !2605, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{null, !2511}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2602, file: !56, line: 89, baseType: !2609, size: 64, offset: 64)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!2612, !2613}
!2612 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !64, line: 1184, baseType: !33)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2615, line: 512, size: 896, elements: !2616)
!2615 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2616 = !{!2617, !2731, !2732, !2739, !2746, !2756, !2757, !2758, !2760, !2762}
!2617 = !DIDerivedType(tag: DW_TAG_member, scope: !2614, file: !2615, line: 513, baseType: !2618, size: 320)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2614, file: !2615, line: 513, size: 320, elements: !2619)
!2619 = !{!2620, !2727, !2728, !2729, !2730}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2618, file: !2615, line: 514, baseType: !2621, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !64, line: 625, size: 1344, elements: !2623)
!2623 = !{!2624, !2633, !2634, !2640, !2647, !2648, !2653, !2654, !2659, !2660, !2663, !2720, !2721, !2722, !2723, !2724, !2725}
!2624 = !DIDerivedType(tag: DW_TAG_member, scope: !2622, file: !64, line: 628, baseType: !2625, size: 128)
!2625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2622, file: !64, line: 628, size: 128, elements: !2626)
!2626 = !{!2627, !2632}
!2627 = !DIDerivedType(tag: DW_TAG_member, scope: !2625, file: !64, line: 629, baseType: !2628, size: 128)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2625, file: !64, line: 629, size: 128, elements: !2629)
!2629 = !{!2630, !2631}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2628, file: !64, line: 631, baseType: !419, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2628, file: !64, line: 632, baseType: !419, size: 64, offset: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2625, file: !64, line: 635, baseType: !927, size: 128, align: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2622, file: !64, line: 639, baseType: !1564, size: 64, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2622, file: !64, line: 640, baseType: !2635, size: 64, offset: 192)
!2635 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1600, line: 297, baseType: !2636)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1600, line: 297, size: 64, elements: !2637)
!2637 = !{!2638}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2636, file: !1600, line: 297, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1605, line: 19, baseType: !419)
!2640 = !DIDerivedType(tag: DW_TAG_member, scope: !2622, file: !64, line: 646, baseType: !2641, size: 64, offset: 256)
!2641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2622, file: !64, line: 646, size: 64, elements: !2642)
!2642 = !{!2643, !2646}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2641, file: !64, line: 647, baseType: !2644, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2645)
!2645 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !64, line: 542, baseType: !419)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2641, file: !64, line: 648, baseType: !2645, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2622, file: !64, line: 666, baseType: !135, size: 32, offset: 320)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2622, file: !64, line: 667, baseType: !2649, size: 64, offset: 384)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !64, line: 579, size: 320, elements: !2651)
!2651 = !{!2652}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2650, file: !64, line: 580, baseType: !1619, size: 320)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2622, file: !64, line: 670, baseType: !787, size: 8, offset: 448)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2622, file: !64, line: 681, baseType: !2655, size: 256, offset: 512)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2622, file: !64, line: 678, size: 256, elements: !2656)
!2656 = !{!2657, !2658}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2655, file: !64, line: 679, baseType: !819, size: 192, align: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2655, file: !64, line: 680, baseType: !419, size: 64, offset: 192)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2622, file: !64, line: 689, baseType: !253, size: 128, offset: 768)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2622, file: !64, line: 691, baseType: !2661, size: 64, offset: 896)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !64, line: 691, flags: DIFlagFwdDecl)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2622, file: !64, line: 694, baseType: !2664, size: 64, offset: 960)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2666)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2615, line: 563, size: 1024, elements: !2667)
!2667 = !{!2668, !2672, !2673, !2677, !2681, !2685, !2686, !2690, !2694, !2698, !2699, !2700, !2704, !2708, !2712, !2716}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2666, file: !2615, line: 564, baseType: !2669, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{null, !2621}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2666, file: !2615, line: 569, baseType: !2669, size: 64, offset: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2666, file: !2615, line: 571, baseType: !2674, size: 64, offset: 128)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!135, !2621, !419}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2666, file: !2615, line: 572, baseType: !2678, size: 64, offset: 192)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!135, !2621}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2666, file: !2615, line: 578, baseType: !2682, size: 64, offset: 256)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!135, !2621, !419, !419, !419}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2666, file: !2615, line: 580, baseType: !2609, size: 64, offset: 320)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2666, file: !2615, line: 581, baseType: !2687, size: 64, offset: 384)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!2612, !2613, !33}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2666, file: !2615, line: 582, baseType: !2691, size: 64, offset: 448)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!2612, !2613, !419, !419}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2666, file: !2615, line: 584, baseType: !2695, size: 64, offset: 512)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!419, !2621}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2666, file: !2615, line: 588, baseType: !2609, size: 64, offset: 576)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2666, file: !2615, line: 591, baseType: !2609, size: 64, offset: 640)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2666, file: !2615, line: 597, baseType: !2701, size: 64, offset: 704)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!135, !2621, !419, !245, !135, !135}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2666, file: !2615, line: 603, baseType: !2705, size: 64, offset: 768)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!292, !2621}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2666, file: !2615, line: 613, baseType: !2709, size: 64, offset: 832)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!135, !2621, !2468}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2666, file: !2615, line: 625, baseType: !2713, size: 64, offset: 896)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!2468, !2621, !419}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2666, file: !2615, line: 633, baseType: !2717, size: 64, offset: 960)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!2511, !2621, !419}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2622, file: !64, line: 697, baseType: !419, size: 64, offset: 1024)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2622, file: !64, line: 699, baseType: !1591, size: 64, offset: 1088)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2622, file: !64, line: 700, baseType: !245, size: 64, offset: 1152)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2622, file: !64, line: 711, baseType: !711, size: 64, offset: 1216)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2622, file: !64, line: 717, baseType: !2468, size: 64, offset: 1280)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2622, file: !64, line: 722, baseType: !2726, offset: 1344)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !64, line: 570, elements: !996)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2618, file: !2615, line: 515, baseType: !1269, size: 32, offset: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2618, file: !2615, line: 516, baseType: !419, size: 64, offset: 128)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2618, file: !2615, line: 517, baseType: !419, size: 64, offset: 192)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2618, file: !2615, line: 518, baseType: !419, size: 64, offset: 256)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2614, file: !2615, line: 520, baseType: !63, size: 32, offset: 320)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2614, file: !2615, line: 522, baseType: !2733, size: 64, offset: 384)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1605, line: 22, baseType: !2735)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1605, line: 22, size: 64, elements: !2736)
!2736 = !{!2737}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2735, file: !1605, line: 22, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1605, line: 15, baseType: !419)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2614, file: !2615, line: 524, baseType: !2740, size: 64, offset: 448)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1600, line: 372, baseType: !2742)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1600, line: 372, size: 64, elements: !2743)
!2743 = !{!2744}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2742, file: !1600, line: 372, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1605, line: 16, baseType: !419)
!2746 = !DIDerivedType(tag: DW_TAG_member, scope: !2614, file: !2615, line: 527, baseType: !2747, size: 64, offset: 512)
!2747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2614, file: !2615, line: 527, size: 64, elements: !2748)
!2748 = !{!2749, !2755}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2747, file: !2615, line: 528, baseType: !2750, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1605, line: 21, baseType: !2751)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1605, line: 21, size: 64, elements: !2752)
!2752 = !{!2753}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2751, file: !1605, line: 21, baseType: !2754, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1605, line: 14, baseType: !419)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2747, file: !2615, line: 529, baseType: !2734, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2614, file: !2615, line: 534, baseType: !2511, size: 64, offset: 576)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2614, file: !2615, line: 535, baseType: !2511, size: 64, offset: 640)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2614, file: !2615, line: 541, baseType: !2759, size: 64, offset: 704)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2614, file: !2615, line: 545, baseType: !2761, size: 64, offset: 768)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2614, file: !2615, line: 549, baseType: !2763, size: 64, offset: 832)
!2763 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1600, line: 520, baseType: !2511)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2602, file: !56, line: 100, baseType: !2765, size: 64, offset: 128)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!135, !2561, !419, !419, !135}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2562, file: !56, line: 134, baseType: !245, size: 64, offset: 960)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2562, file: !56, line: 135, baseType: !135, size: 32, offset: 1024)
!2770 = !DIDerivedType(tag: DW_TAG_member, scope: !2562, file: !56, line: 136, baseType: !2771, size: 128, offset: 1088)
!2771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2562, file: !56, line: 136, size: 128, elements: !2772)
!2772 = !{!2773, !2779}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2771, file: !56, line: 137, baseType: !2774, size: 128)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2775, line: 6, size: 128, elements: !2776)
!2775 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2776 = !{!2777, !2778}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2774, file: !2775, line: 7, baseType: !522, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2774, file: !2775, line: 8, baseType: !522, size: 64, offset: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, scope: !2771, file: !56, line: 138, baseType: !2780)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2771, file: !56, line: 138, elements: !2781)
!2781 = !{!2782, !2784}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2780, file: !56, line: 138, baseType: !2783)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2780, file: !56, line: 138, elements: !996)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2780, file: !56, line: 138, baseType: !2785)
!2785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2774, elements: !1737)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2558, file: !64, line: 147, baseType: !245, size: 64, offset: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2516, file: !64, line: 161, baseType: !927, size: 128, align: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, scope: !2512, file: !64, line: 164, baseType: !2789, size: 32, offset: 384)
!2789 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2512, file: !64, line: 164, size: 32, elements: !2790)
!2790 = !{!2791, !2792}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2789, file: !64, line: 169, baseType: !279, size: 32)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2789, file: !64, line: 177, baseType: !33, size: 32)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2512, file: !64, line: 181, baseType: !279, size: 32, offset: 416)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2508, file: !2495, line: 42, baseType: !519, size: 32, offset: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2508, file: !2495, line: 43, baseType: !519, size: 32, offset: 96)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1277, file: !1278, line: 1340, baseType: !2797, size: 64, offset: 20672)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1278, line: 69, flags: DIFlagFwdDecl)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1277, file: !1278, line: 1351, baseType: !135, size: 32, offset: 20736)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1277, file: !1278, line: 1352, baseType: !135, size: 32, offset: 20768)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1277, file: !1278, line: 1354, baseType: !419, size: 64, offset: 20800)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1277, file: !1278, line: 1364, baseType: !522, size: 64, offset: 20864)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1277, file: !1278, line: 1365, baseType: !522, size: 64, offset: 20928)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1277, file: !1278, line: 1412, baseType: !419, size: 64, offset: 20992)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1277, file: !1278, line: 1453, baseType: !2806, size: 64, offset: 21056)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1278, line: 1453, flags: DIFlagFwdDecl)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1277, file: !1278, line: 1457, baseType: !2809, size: 64, offset: 21120)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !80, line: 61, size: 576, elements: !2811)
!2811 = !{!2812, !2813, !2832, !2835, !2836, !2869, !2879}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2810, file: !80, line: 62, baseType: !79, size: 32)
!2813 = !DIDerivedType(tag: DW_TAG_member, scope: !2810, file: !80, line: 64, baseType: !2814, size: 192, offset: 64)
!2814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2810, file: !80, line: 64, size: 192, elements: !2815)
!2815 = !{!2816, !2827}
!2816 = !DIDerivedType(tag: DW_TAG_member, scope: !2814, file: !80, line: 65, baseType: !2817, size: 192)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2814, file: !80, line: 65, size: 192, elements: !2818)
!2818 = !{!2819, !2826}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2817, file: !80, line: 66, baseType: !2820, size: 128)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2821, line: 50, size: 128, elements: !2822)
!2821 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2822 = !{!2823, !2824, !2825}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2820, file: !2821, line: 52, baseType: !419, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2820, file: !2821, line: 54, baseType: !33, size: 32, offset: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2820, file: !2821, line: 55, baseType: !33, size: 32, offset: 96)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2817, file: !80, line: 67, baseType: !419, size: 64, offset: 128)
!2827 = !DIDerivedType(tag: DW_TAG_member, scope: !2814, file: !80, line: 70, baseType: !2828, size: 192)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2814, file: !80, line: 70, size: 192, elements: !2829)
!2829 = !{!2830, !2831}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2828, file: !80, line: 71, baseType: !927, size: 128, align: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2828, file: !80, line: 72, baseType: !419, size: 64, offset: 128)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2810, file: !80, line: 76, baseType: !2833, size: 64, offset: 256)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !80, line: 76, flags: DIFlagFwdDecl)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2810, file: !80, line: 77, baseType: !419, size: 64, offset: 320)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2810, file: !80, line: 79, baseType: !2837, size: 64, offset: 384)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2821, line: 25, size: 256, elements: !2839)
!2839 = !{!2840, !2846, !2850}
!2840 = !DIDerivedType(tag: DW_TAG_member, scope: !2838, file: !2821, line: 26, baseType: !2841, size: 128)
!2841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2838, file: !2821, line: 26, size: 128, elements: !2842)
!2842 = !{!2843, !2845}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2841, file: !2821, line: 27, baseType: !2844, size: 128)
!2844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 128, elements: !2064)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2841, file: !2821, line: 28, baseType: !2844, size: 128)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2838, file: !2821, line: 31, baseType: !2847, size: 64, offset: 128)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2849)
!2849 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2821, line: 23, flags: DIFlagFwdDecl)
!2850 = !DIDerivedType(tag: DW_TAG_member, scope: !2838, file: !2821, line: 33, baseType: !2851, size: 64, offset: 192)
!2851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2838, file: !2821, line: 33, size: 64, elements: !2852)
!2852 = !{!2853, !2859, !2864}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2851, file: !2821, line: 38, baseType: !2854, size: 64)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2851, file: !2821, line: 34, size: 64, elements: !2855)
!2855 = !{!2856, !2857, !2858}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2854, file: !2821, line: 35, baseType: !703, size: 32)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2854, file: !2821, line: 36, baseType: !327, size: 8, offset: 32)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2854, file: !2821, line: 37, baseType: !327, size: 8, offset: 40)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2851, file: !2821, line: 42, baseType: !2860, size: 16)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2851, file: !2821, line: 39, size: 16, elements: !2861)
!2861 = !{!2862, !2863}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2860, file: !2821, line: 40, baseType: !327, size: 8)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2860, file: !2821, line: 41, baseType: !327, size: 8, offset: 8)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2851, file: !2821, line: 46, baseType: !2865, size: 16)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2851, file: !2821, line: 43, size: 16, elements: !2866)
!2866 = !{!2867, !2868}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2865, file: !2821, line: 44, baseType: !327, size: 8)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2865, file: !2821, line: 45, baseType: !327, size: 8, offset: 8)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2810, file: !80, line: 81, baseType: !2870, size: 64, offset: 448)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !80, line: 85, size: 384, elements: !2872)
!2872 = !{!2873, !2874, !2875, !2876, !2877, !2878}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2871, file: !80, line: 86, baseType: !2833, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2871, file: !80, line: 87, baseType: !419, size: 64, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2871, file: !80, line: 88, baseType: !419, size: 64, offset: 128)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2871, file: !80, line: 89, baseType: !419, size: 64, offset: 192)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2871, file: !80, line: 90, baseType: !787, size: 8, offset: 256)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2871, file: !80, line: 92, baseType: !2870, size: 64, offset: 320)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2810, file: !80, line: 82, baseType: !33, size: 32, offset: 512)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1277, file: !1278, line: 1463, baseType: !2881, offset: 21184)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1278, line: 739, elements: !996)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1277, file: !1278, line: 1470, baseType: !927, size: 128, align: 64, offset: 21184)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1277, file: !1278, line: 1471, baseType: !274, size: 32, offset: 21312)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1277, file: !1278, line: 1472, baseType: !135, size: 32, offset: 21344)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1277, file: !1278, line: 1474, baseType: !1276, size: 64, offset: 21376)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1277, file: !1278, line: 1475, baseType: !949, size: 320, offset: 21440)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1277, file: !1278, line: 1478, baseType: !2888, size: 64, offset: 21760)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2890, line: 49, size: 512, elements: !2891)
!2890 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2891 = !{!2892, !2893, !2894, !2895, !2896, !2898, !2899, !2900, !2902}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2889, file: !2890, line: 50, baseType: !2888, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2889, file: !2890, line: 51, baseType: !245, size: 64, offset: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2889, file: !2890, line: 52, baseType: !419, size: 64, offset: 128)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2889, file: !2890, line: 53, baseType: !419, size: 64, offset: 192)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2889, file: !2890, line: 54, baseType: !2897, size: 64, offset: 256)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2889, file: !2890, line: 56, baseType: !33, size: 32, offset: 320)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2889, file: !2890, line: 58, baseType: !33, size: 32, offset: 352)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2889, file: !2890, line: 59, baseType: !2901, size: 64, offset: 384)
!2901 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !254, line: 159, baseType: !522)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2889, file: !2890, line: 60, baseType: !1696, size: 64, offset: 448)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1277, file: !1278, line: 1482, baseType: !274, size: 32, offset: 21824)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1277, file: !1278, line: 1489, baseType: !245, size: 64, offset: 21888)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1277, file: !1278, line: 1504, baseType: !245, size: 64, offset: 21952)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1277, file: !1278, line: 1505, baseType: !523, size: 64, offset: 22016)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1277, file: !1278, line: 1506, baseType: !522, size: 64, offset: 22080)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1277, file: !1278, line: 1507, baseType: !523, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1277, file: !1278, line: 1508, baseType: !523, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1277, file: !1278, line: 1509, baseType: !523, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1277, file: !1278, line: 1510, baseType: !927, size: 128, align: 64, offset: 22208)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1277, file: !1278, line: 1511, baseType: !135, size: 32, offset: 22336)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1277, file: !1278, line: 1515, baseType: !2914, size: 64, offset: 22400)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1194, line: 56, size: 64, elements: !2915)
!2915 = !{!2916}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2914, file: !1194, line: 57, baseType: !1197, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1277, file: !1278, line: 1518, baseType: !2914, size: 64, offset: 22464)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1277, file: !1278, line: 1528, baseType: !927, size: 128, align: 64, offset: 22528)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1277, file: !1278, line: 1552, baseType: !2920, size: 35328, offset: 23040)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2921, line: 430, size: 35328, elements: !2922)
!2921 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2922 = !{!2923, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2952, !2953, !2954, !2955, !2956, !2957, !2960, !2961, !2962, !2963}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2920, file: !2921, line: 432, baseType: !2924, size: 192)
!2924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2925, size: 192, elements: !370)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2926, line: 16, size: 64, elements: !2927)
!2926 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2927 = !{!2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2925, file: !2926, line: 17, baseType: !337, size: 16)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2925, file: !2926, line: 18, baseType: !337, size: 16, offset: 16)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2925, file: !2926, line: 19, baseType: !337, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2925, file: !2926, line: 19, baseType: !337, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2925, file: !2926, line: 19, baseType: !337, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2925, file: !2926, line: 19, baseType: !337, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2925, file: !2926, line: 19, baseType: !337, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2925, file: !2926, line: 20, baseType: !337, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2925, file: !2926, line: 20, baseType: !337, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2925, file: !2926, line: 20, baseType: !337, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2925, file: !2926, line: 20, baseType: !337, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2925, file: !2926, line: 20, baseType: !337, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2925, file: !2926, line: 20, baseType: !337, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2920, file: !2921, line: 436, baseType: !419, size: 64, offset: 192)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2920, file: !2921, line: 440, baseType: !339, size: 16, offset: 256)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2920, file: !2921, line: 441, baseType: !339, size: 16, offset: 272)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2920, file: !2921, line: 442, baseType: !339, size: 16, offset: 288)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2920, file: !2921, line: 443, baseType: !339, size: 16, offset: 304)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2920, file: !2921, line: 447, baseType: !419, size: 64, offset: 320)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2920, file: !2921, line: 448, baseType: !419, size: 64, offset: 384)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2920, file: !2921, line: 459, baseType: !2949, size: 256, offset: 448)
!2949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2950, size: 256, elements: !937)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2921, line: 428, flags: DIFlagFwdDecl)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2920, file: !2921, line: 461, baseType: !419, size: 64, offset: 704)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2920, file: !2921, line: 463, baseType: !419, size: 64, offset: 768)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2920, file: !2921, line: 465, baseType: !419, size: 64, offset: 832)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2920, file: !2921, line: 466, baseType: !419, size: 64, offset: 896)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2920, file: !2921, line: 467, baseType: !419, size: 64, offset: 960)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2920, file: !2921, line: 473, baseType: !2958, size: 64, offset: 1024)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2921, line: 10, flags: DIFlagFwdDecl)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2920, file: !2921, line: 480, baseType: !419, size: 64, offset: 1088)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2920, file: !2921, line: 482, baseType: !33, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2920, file: !2921, line: 491, baseType: !518, size: 32, offset: 1184)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2920, file: !2921, line: 501, baseType: !2964, size: 33792, offset: 1536)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2965, line: 448, size: 33792, elements: !2966)
!2965 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2966 = !{!2967, !2968, !2969, !3129, !3130, !3136, !3137}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2964, file: !2965, line: 461, baseType: !33, size: 32)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2964, file: !2965, line: 468, baseType: !419, size: 64, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2964, file: !2965, line: 476, baseType: !2970, size: 64, offset: 128)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2965, line: 356, size: 33280, align: 512, elements: !2972)
!2972 = !{!2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2971, file: !2965, line: 358, baseType: !33, size: 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2971, file: !2965, line: 361, baseType: !33, size: 32, offset: 32)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2971, file: !2965, line: 364, baseType: !522, size: 64, offset: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2971, file: !2965, line: 367, baseType: !522, size: 64, offset: 128)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2971, file: !2965, line: 370, baseType: !522, size: 64, offset: 192)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2971, file: !2965, line: 373, baseType: !33, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2971, file: !2965, line: 376, baseType: !33, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2971, file: !2965, line: 391, baseType: !33, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2971, file: !2965, line: 394, baseType: !33, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2971, file: !2965, line: 397, baseType: !2983, size: 32768, offset: 512)
!2983 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2965, line: 348, size: 32768, elements: !2984)
!2984 = !{!2985, !2998, !3035, !3112, !3125}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2983, file: !2965, line: 349, baseType: !2986, size: 896)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2965, line: 12, size: 896, elements: !2987)
!2987 = !{!2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2997}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2986, file: !2965, line: 13, baseType: !518, size: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2986, file: !2965, line: 14, baseType: !518, size: 32, offset: 32)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2986, file: !2965, line: 15, baseType: !518, size: 32, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2986, file: !2965, line: 16, baseType: !518, size: 32, offset: 96)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2986, file: !2965, line: 17, baseType: !518, size: 32, offset: 128)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2986, file: !2965, line: 18, baseType: !518, size: 32, offset: 160)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2986, file: !2965, line: 19, baseType: !518, size: 32, offset: 192)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2986, file: !2965, line: 22, baseType: !2996, size: 640, offset: 224)
!2996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, size: 640, elements: !15)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2986, file: !2965, line: 25, baseType: !518, size: 32, offset: 864)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2983, file: !2965, line: 350, baseType: !2999, size: 4096, align: 128)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2965, line: 34, size: 4096, align: 128, elements: !3000)
!3000 = !{!3001, !3002, !3003, !3004, !3005, !3020, !3021, !3022, !3024, !3026, !3030}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2999, file: !2965, line: 35, baseType: !337, size: 16)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2999, file: !2965, line: 36, baseType: !337, size: 16, offset: 16)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2999, file: !2965, line: 37, baseType: !337, size: 16, offset: 32)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2999, file: !2965, line: 38, baseType: !337, size: 16, offset: 48)
!3005 = !DIDerivedType(tag: DW_TAG_member, scope: !2999, file: !2965, line: 39, baseType: !3006, size: 128, offset: 64)
!3006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2999, file: !2965, line: 39, size: 128, elements: !3007)
!3007 = !{!3008, !3013}
!3008 = !DIDerivedType(tag: DW_TAG_member, scope: !3006, file: !2965, line: 40, baseType: !3009, size: 128)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3006, file: !2965, line: 40, size: 128, elements: !3010)
!3010 = !{!3011, !3012}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3009, file: !2965, line: 41, baseType: !522, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3009, file: !2965, line: 42, baseType: !522, size: 64, offset: 64)
!3013 = !DIDerivedType(tag: DW_TAG_member, scope: !3006, file: !2965, line: 44, baseType: !3014, size: 128)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3006, file: !2965, line: 44, size: 128, elements: !3015)
!3015 = !{!3016, !3017, !3018, !3019}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3014, file: !2965, line: 45, baseType: !518, size: 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3014, file: !2965, line: 46, baseType: !518, size: 32, offset: 32)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3014, file: !2965, line: 47, baseType: !518, size: 32, offset: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3014, file: !2965, line: 48, baseType: !518, size: 32, offset: 96)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2999, file: !2965, line: 51, baseType: !518, size: 32, offset: 192)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2999, file: !2965, line: 52, baseType: !518, size: 32, offset: 224)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2999, file: !2965, line: 55, baseType: !3023, size: 1024, offset: 256)
!3023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, size: 1024, elements: !25)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2999, file: !2965, line: 58, baseType: !3025, size: 2048, offset: 1280)
!3025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, size: 2048, elements: !374)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2999, file: !2965, line: 60, baseType: !3027, size: 384, offset: 3328)
!3027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, size: 384, elements: !3028)
!3028 = !{!3029}
!3029 = !DISubrange(count: 12)
!3030 = !DIDerivedType(tag: DW_TAG_member, scope: !2999, file: !2965, line: 62, baseType: !3031, size: 384, offset: 3712)
!3031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2999, file: !2965, line: 62, size: 384, elements: !3032)
!3032 = !{!3033, !3034}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3031, file: !2965, line: 63, baseType: !3027, size: 384)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3031, file: !2965, line: 64, baseType: !3027, size: 384)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2983, file: !2965, line: 351, baseType: !3036, size: 1088)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2965, line: 79, size: 1088, elements: !3037)
!3037 = !{!3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3111}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3036, file: !2965, line: 80, baseType: !518, size: 32)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3036, file: !2965, line: 81, baseType: !518, size: 32, offset: 32)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3036, file: !2965, line: 82, baseType: !518, size: 32, offset: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3036, file: !2965, line: 83, baseType: !518, size: 32, offset: 96)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3036, file: !2965, line: 84, baseType: !518, size: 32, offset: 128)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3036, file: !2965, line: 85, baseType: !518, size: 32, offset: 160)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3036, file: !2965, line: 86, baseType: !518, size: 32, offset: 192)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3036, file: !2965, line: 88, baseType: !2996, size: 640, offset: 224)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3036, file: !2965, line: 89, baseType: !327, size: 8, offset: 864)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3036, file: !2965, line: 90, baseType: !327, size: 8, offset: 872)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3036, file: !2965, line: 91, baseType: !327, size: 8, offset: 880)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3036, file: !2965, line: 92, baseType: !327, size: 8, offset: 888)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3036, file: !2965, line: 93, baseType: !327, size: 8, offset: 896)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3036, file: !2965, line: 94, baseType: !327, size: 8, offset: 904)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3036, file: !2965, line: 95, baseType: !3053, size: 64, offset: 960)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3055, line: 11, size: 128, elements: !3056)
!3055 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3056 = !{!3057, !3058}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3054, file: !3055, line: 12, baseType: !405, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3054, file: !3055, line: 13, baseType: !3059, size: 64, offset: 64)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3061, line: 103, size: 1344, elements: !3062)
!3061 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3062 = !{!3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3091, !3092, !3093}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3060, file: !3061, line: 109, baseType: !419, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3060, file: !3061, line: 110, baseType: !419, size: 64, offset: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3060, file: !3061, line: 111, baseType: !419, size: 64, offset: 128)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3060, file: !3061, line: 112, baseType: !419, size: 64, offset: 192)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3060, file: !3061, line: 113, baseType: !419, size: 64, offset: 256)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3060, file: !3061, line: 114, baseType: !419, size: 64, offset: 320)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3060, file: !3061, line: 117, baseType: !419, size: 64, offset: 384)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3060, file: !3061, line: 118, baseType: !419, size: 64, offset: 448)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3060, file: !3061, line: 119, baseType: !419, size: 64, offset: 512)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3060, file: !3061, line: 120, baseType: !419, size: 64, offset: 576)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3060, file: !3061, line: 121, baseType: !419, size: 64, offset: 640)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3060, file: !3061, line: 122, baseType: !419, size: 64, offset: 704)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3060, file: !3061, line: 123, baseType: !419, size: 64, offset: 768)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3060, file: !3061, line: 124, baseType: !419, size: 64, offset: 832)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3060, file: !3061, line: 125, baseType: !419, size: 64, offset: 896)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3060, file: !3061, line: 139, baseType: !419, size: 64, offset: 960)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3060, file: !3061, line: 142, baseType: !419, size: 64, offset: 1024)
!3080 = !DIDerivedType(tag: DW_TAG_member, scope: !3060, file: !3061, line: 144, baseType: !3081, size: 64, offset: 1088)
!3081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3060, file: !3061, line: 144, size: 64, elements: !3082)
!3082 = !{!3083, !3084, !3085}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3081, file: !3061, line: 146, baseType: !337, size: 16)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3081, file: !3061, line: 148, baseType: !522, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3081, file: !3061, line: 150, baseType: !3086, size: 64)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3061, line: 59, size: 64, elements: !3087)
!3087 = !{!3088, !3089, !3090}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3086, file: !3061, line: 61, baseType: !522, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3086, file: !3061, line: 63, baseType: !522, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3086, file: !3061, line: 65, baseType: !522, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3060, file: !3061, line: 153, baseType: !419, size: 64, offset: 1152)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3060, file: !3061, line: 154, baseType: !419, size: 64, offset: 1216)
!3093 = !DIDerivedType(tag: DW_TAG_member, scope: !3060, file: !3061, line: 156, baseType: !3094, size: 64, offset: 1280)
!3094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3060, file: !3061, line: 156, size: 64, elements: !3095)
!3095 = !{!3096, !3097, !3098}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3094, file: !3061, line: 158, baseType: !337, size: 16)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3094, file: !3061, line: 160, baseType: !522, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3094, file: !3061, line: 162, baseType: !3099, size: 64)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3061, line: 69, size: 64, elements: !3100)
!3100 = !{!3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3099, file: !3061, line: 71, baseType: !522, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3099, file: !3061, line: 73, baseType: !522, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3099, file: !3061, line: 75, baseType: !522, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3099, file: !3061, line: 77, baseType: !522, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3099, file: !3061, line: 80, baseType: !522, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3099, file: !3061, line: 83, baseType: !522, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3099, file: !3061, line: 86, baseType: !522, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3099, file: !3061, line: 88, baseType: !522, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3099, file: !3061, line: 93, baseType: !522, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3099, file: !3061, line: 100, baseType: !522, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3036, file: !2965, line: 96, baseType: !518, size: 32, offset: 1024)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2983, file: !2965, line: 352, baseType: !3113, size: 4608, align: 512)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2965, line: 333, size: 4608, align: 512, elements: !3114)
!3114 = !{!3115, !3116, !3123}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3113, file: !2965, line: 334, baseType: !2999, size: 4096, align: 128)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3113, file: !2965, line: 335, baseType: !3117, size: 512, offset: 4096)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2965, line: 312, size: 512, elements: !3118)
!3118 = !{!3119, !3120, !3121}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3117, file: !2965, line: 313, baseType: !522, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3117, file: !2965, line: 314, baseType: !522, size: 64, offset: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3117, file: !2965, line: 315, baseType: !3122, size: 384, offset: 128)
!3122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 384, elements: !1956)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3113, file: !2965, line: 336, baseType: !3124, offset: 4608)
!3124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, elements: !1737)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2983, file: !2965, line: 353, baseType: !3126, size: 32768)
!3126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 32768, elements: !3127)
!3127 = !{!3128}
!3128 = !DISubrange(count: 4096)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2964, file: !2965, line: 484, baseType: !2970, size: 64, offset: 192)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2964, file: !2965, line: 491, baseType: !3131, size: 128, offset: 256)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2965, line: 404, size: 128, elements: !3132)
!3132 = !{!3133, !3134, !3135}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3131, file: !2965, line: 424, baseType: !522, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3131, file: !2965, line: 432, baseType: !33, size: 32, offset: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3131, file: !2965, line: 440, baseType: !33, size: 32, offset: 96)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2964, file: !2965, line: 498, baseType: !3131, size: 128, offset: 384)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2964, file: !2965, line: 508, baseType: !2971, size: 33280, align: 512, offset: 512)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1256, file: !1257, line: 31, baseType: !3139, size: 64, offset: 448)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3141, line: 11, flags: DIFlagFwdDecl)
!3141 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1256, file: !1257, line: 32, baseType: !33, size: 32, offset: 512)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1256, file: !1257, line: 33, baseType: !1255, size: 64, offset: 576)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !1256, file: !1257, line: 35, baseType: !3145, size: 64, offset: 640)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !1257, line: 17, flags: DIFlagFwdDecl)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1256, file: !1257, line: 37, baseType: !1719, size: 64, offset: 704)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1256, file: !1257, line: 38, baseType: !2043, size: 64, offset: 768)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1256, file: !1257, line: 39, baseType: !135, size: 32, offset: 832)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1256, file: !1257, line: 40, baseType: !3151, size: 192, offset: 896)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !3152, line: 9, size: 192, elements: !3153)
!3152 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!3153 = !{!3154, !3155, !3159, !3160}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !3151, file: !3152, line: 10, baseType: !711, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3151, file: !3152, line: 11, baseType: !3156, size: 64, offset: 64)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3158)
!3158 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !3152, line: 7, flags: DIFlagFwdDecl)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !3151, file: !3152, line: 12, baseType: !33, size: 32, offset: 128)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3151, file: !3152, line: 13, baseType: !274, size: 32, offset: 160)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !1256, file: !1257, line: 42, baseType: !135, size: 32, offset: 1088)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1208, file: !40, line: 951, baseType: !86, size: 32, offset: 128)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1208, file: !40, line: 952, baseType: !455, size: 32, offset: 160)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1208, file: !40, line: 952, baseType: !455, size: 32, offset: 192)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1208, file: !40, line: 953, baseType: !135, size: 32, offset: 224)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1187, file: !40, line: 1012, baseType: !1878, size: 64, offset: 896)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1187, file: !40, line: 1013, baseType: !3168, size: 256, offset: 960)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !40, line: 970, size: 256, elements: !3169)
!3169 = !{!3170, !3171, !3172, !3173, !3174, !3175}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3168, file: !40, line: 971, baseType: !419, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3168, file: !40, line: 972, baseType: !33, size: 32, offset: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3168, file: !40, line: 973, baseType: !33, size: 32, offset: 96)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3168, file: !40, line: 974, baseType: !33, size: 32, offset: 128)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3168, file: !40, line: 975, baseType: !33, size: 32, offset: 160)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3168, file: !40, line: 976, baseType: !608, size: 64, offset: 192)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1187, file: !40, line: 1014, baseType: !3177, size: 128, offset: 1216)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !3178, line: 8, size: 128, elements: !3179)
!3178 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!3179 = !{!3180, !3181}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !3177, file: !3178, line: 9, baseType: !592, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !3177, file: !3178, line: 10, baseType: !484, size: 64, offset: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1187, file: !40, line: 1015, baseType: !449, size: 64, offset: 1344)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1187, file: !40, line: 1016, baseType: !3184, size: 64, offset: 1408)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3186)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !40, line: 1914, size: 2112, elements: !3187)
!3187 = !{!3188, !3189, !3193, !3197, !3201, !3229, !3230, !3236, !3249, !3266, !3270, !3271, !3275, !3276, !3280, !3285, !3286, !3290, !3294, !3300, !3301, !3305, !3306, !3310, !3314, !3318, !3324, !3328, !3332, !3336, !3340, !3341, !3347}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3186, file: !40, line: 1915, baseType: !636, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3186, file: !40, line: 1916, baseType: !3190, size: 64, offset: 64)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!608, !1591, !608, !135}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3186, file: !40, line: 1917, baseType: !3194, size: 64, offset: 128)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!401, !1591, !369, !416, !1170}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3186, file: !40, line: 1918, baseType: !3198, size: 64, offset: 192)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!401, !1591, !292, !416, !1170}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3186, file: !40, line: 1919, baseType: !3202, size: 64, offset: 256)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!401, !3205, !3227}
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !40, line: 373, size: 384, elements: !3207)
!3207 = !{!3208, !3209, !3210, !3214, !3215, !3216, !3217}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !3206, file: !40, line: 374, baseType: !1591, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !3206, file: !40, line: 375, baseType: !608, size: 64, offset: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !3206, file: !40, line: 376, baseType: !3211, size: 64, offset: 128)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{null, !3205, !405}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3206, file: !40, line: 377, baseType: !245, size: 64, offset: 192)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !3206, file: !40, line: 378, baseType: !135, size: 32, offset: 256)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !3206, file: !40, line: 379, baseType: !337, size: 16, offset: 288)
!3217 = !DIDerivedType(tag: DW_TAG_member, scope: !3206, file: !40, line: 380, baseType: !3218, size: 64, offset: 320)
!3218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3206, file: !40, line: 380, size: 64, elements: !3219)
!3219 = !{!3220, !3223}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !3218, file: !40, line: 386, baseType: !3221, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !40, line: 386, flags: DIFlagFwdDecl)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !3218, file: !40, line: 395, baseType: !3224, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!401, !245}
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !40, line: 69, flags: DIFlagFwdDecl)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3186, file: !40, line: 1920, baseType: !3202, size: 64, offset: 320)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3186, file: !40, line: 1921, baseType: !3231, size: 64, offset: 384)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!135, !3205, !3234, !33}
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !40, line: 53, flags: DIFlagFwdDecl)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3186, file: !40, line: 1923, baseType: !3237, size: 64, offset: 448)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!135, !1591, !3240}
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !40, line: 1858, size: 128, elements: !3242)
!3242 = !{!3243, !3248}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3241, file: !40, line: 1859, baseType: !3244, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !40, line: 1855, baseType: !3245)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!787, !3240, !292, !135, !608, !522, !33}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3241, file: !40, line: 1860, baseType: !608, size: 64, offset: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3186, file: !40, line: 1924, baseType: !3250, size: 64, offset: 512)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!3253, !1591, !3255}
!3253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3254, line: 59, baseType: !33)
!3254 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !3257, line: 37, size: 128, elements: !3258)
!3257 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!3258 = !{!3259, !3265}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !3256, file: !3257, line: 38, baseType: !3260, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !3257, line: 31, baseType: !3261)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{null, !1591, !3264, !3255}
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !3256, file: !3257, line: 39, baseType: !3253, size: 32, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3186, file: !40, line: 1925, baseType: !3267, size: 64, offset: 576)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!405, !1591, !33, !419}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3186, file: !40, line: 1926, baseType: !3267, size: 64, offset: 640)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3186, file: !40, line: 1927, baseType: !3272, size: 64, offset: 704)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!135, !1591, !2621}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3186, file: !40, line: 1928, baseType: !419, size: 64, offset: 768)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3186, file: !40, line: 1929, baseType: !3277, size: 64, offset: 832)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!135, !449, !1591}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3186, file: !40, line: 1930, baseType: !3281, size: 64, offset: 896)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!135, !1591, !3284}
!3284 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !40, line: 1061, baseType: !245)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3186, file: !40, line: 1931, baseType: !3277, size: 64, offset: 960)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3186, file: !40, line: 1932, baseType: !3287, size: 64, offset: 1024)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!135, !1591, !608, !608, !135}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3186, file: !40, line: 1933, baseType: !3291, size: 64, offset: 1088)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!135, !135, !1591, !135}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3186, file: !40, line: 1934, baseType: !3295, size: 64, offset: 1152)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!135, !1591, !135, !3298}
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !40, line: 1063, flags: DIFlagFwdDecl)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3186, file: !40, line: 1935, baseType: !1588, size: 64, offset: 1216)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3186, file: !40, line: 1936, baseType: !3302, size: 64, offset: 1280)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!135, !135}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3186, file: !40, line: 1937, baseType: !3295, size: 64, offset: 1344)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3186, file: !40, line: 1938, baseType: !3307, size: 64, offset: 1408)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!401, !2505, !1591, !1170, !416, !33}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3186, file: !40, line: 1939, baseType: !3311, size: 64, offset: 1472)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!401, !1591, !1170, !2505, !416, !33}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3186, file: !40, line: 1940, baseType: !3315, size: 64, offset: 1536)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{null, !1591}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3186, file: !40, line: 1941, baseType: !3319, size: 64, offset: 1600)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!135, !1591, !135, !3322, !3323}
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3186, file: !40, line: 1942, baseType: !3325, size: 64, offset: 1664)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!405, !1591, !135, !608, !608}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3186, file: !40, line: 1944, baseType: !3329, size: 64, offset: 1728)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{null, !1149, !1591}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3186, file: !40, line: 1948, baseType: !3333, size: 64, offset: 1792)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!401, !1591, !608, !1591, !608, !416, !33}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3186, file: !40, line: 1950, baseType: !3337, size: 64, offset: 1856)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!608, !1591, !608, !1591, !608, !608, !33}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3186, file: !40, line: 1953, baseType: !3287, size: 64, offset: 1920)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3186, file: !40, line: 1954, baseType: !3342, size: 64, offset: 1984)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!135, !3345, !33}
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !40, line: 1911, flags: DIFlagFwdDecl)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3186, file: !40, line: 1955, baseType: !3348, size: 64, offset: 2048)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!135, !3345, !3234, !33}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1187, file: !40, line: 1018, baseType: !522, size: 64, offset: 1472)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1187, file: !40, line: 1020, baseType: !245, size: 64, offset: 1536)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1187, file: !40, line: 1023, baseType: !245, size: 64, offset: 1600)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1187, file: !40, line: 1027, baseType: !3355, size: 64, offset: 1664)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1187, file: !40, line: 1029, baseType: !445, size: 64, offset: 1728)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1187, file: !40, line: 1030, baseType: !3358, size: 32, offset: 1792)
!3358 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3359, line: 8, baseType: !518)
!3359 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1187, file: !40, line: 1031, baseType: !3358, size: 32, offset: 1824)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1150, file: !1151, line: 29, baseType: !245, size: 64, offset: 896)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1093, file: !40, line: 2077, baseType: !1146, size: 64, offset: 1088)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1093, file: !40, line: 2078, baseType: !1146, size: 64, offset: 1152)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1093, file: !40, line: 2079, baseType: !1146, size: 64, offset: 1216)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1093, file: !40, line: 2081, baseType: !3366, size: 64, offset: 1280)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!401, !598, !135, !369, !416, !608}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1093, file: !40, line: 2082, baseType: !3370, size: 64, offset: 1344)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!401, !598, !135, !292, !416, !608}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1093, file: !40, line: 2083, baseType: !3374, size: 64, offset: 1408)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!3377, !449}
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !95, line: 296, size: 1664, elements: !3380)
!3380 = !{!3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3405, !3406, !3407}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3379, file: !95, line: 297, baseType: !953, size: 128)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3379, file: !95, line: 298, baseType: !253, size: 128, offset: 128)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3379, file: !95, line: 299, baseType: !253, size: 128, offset: 256)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3379, file: !95, line: 300, baseType: !253, size: 128, offset: 384)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3379, file: !95, line: 301, baseType: !707, size: 256, offset: 512)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3379, file: !95, line: 302, baseType: !303, size: 32, offset: 768)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3379, file: !95, line: 303, baseType: !279, size: 32, offset: 800)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3379, file: !95, line: 304, baseType: !598, size: 64, offset: 832)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3379, file: !95, line: 305, baseType: !3390, size: 64, offset: 896)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !95, line: 68, size: 64, elements: !3391)
!3391 = !{!3392, !3404}
!3392 = !DIDerivedType(tag: DW_TAG_member, scope: !3390, file: !95, line: 69, baseType: !3393, size: 32)
!3393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3390, file: !95, line: 69, size: 32, elements: !3394)
!3394 = !{!3395, !3396, !3397}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3393, file: !95, line: 70, baseType: !455, size: 32)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3393, file: !95, line: 71, baseType: !464, size: 32)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3393, file: !95, line: 72, baseType: !3398, size: 32)
!3398 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3399, line: 24, baseType: !3400)
!3399 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3399, line: 22, size: 32, elements: !3401)
!3401 = !{!3402}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3400, file: !3399, line: 23, baseType: !3403, size: 32)
!3403 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3399, line: 20, baseType: !461)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3390, file: !95, line: 74, baseType: !94, size: 32, offset: 32)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3379, file: !95, line: 306, baseType: !608, size: 64, offset: 960)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3379, file: !95, line: 307, baseType: !419, size: 64, offset: 1024)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3379, file: !95, line: 308, baseType: !3408, size: 576, offset: 1088)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !95, line: 205, size: 576, elements: !3409)
!3409 = !{!3410, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3408, file: !95, line: 206, baseType: !3411, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !95, line: 66, baseType: !610)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3408, file: !95, line: 207, baseType: !3411, size: 64, offset: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3408, file: !95, line: 208, baseType: !3411, size: 64, offset: 128)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3408, file: !95, line: 209, baseType: !3411, size: 64, offset: 192)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3408, file: !95, line: 210, baseType: !3411, size: 64, offset: 256)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3408, file: !95, line: 211, baseType: !3411, size: 64, offset: 320)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3408, file: !95, line: 212, baseType: !3411, size: 64, offset: 384)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3408, file: !95, line: 213, baseType: !1927, size: 64, offset: 448)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3408, file: !95, line: 214, baseType: !1927, size: 64, offset: 512)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1093, file: !40, line: 2085, baseType: !3421, size: 64, offset: 1472)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!405, !598, !3424}
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3426, line: 15, size: 256, elements: !3427)
!3426 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3427 = !{!3428, !3429, !3430, !3431, !3432}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3425, file: !3426, line: 16, baseType: !1269, size: 32)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3425, file: !3426, line: 19, baseType: !135, size: 32, offset: 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3425, file: !3426, line: 26, baseType: !419, size: 64, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3425, file: !3426, line: 33, baseType: !419, size: 64, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3425, file: !3426, line: 36, baseType: !3433, size: 64, offset: 192)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !64, line: 33, flags: DIFlagFwdDecl)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1093, file: !40, line: 2087, baseType: !3421, size: 64, offset: 1536)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1093, file: !40, line: 2089, baseType: !632, size: 64, offset: 1600)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !599, file: !40, line: 1198, baseType: !3438, size: 64, offset: 448)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3440)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !95, line: 324, size: 704, elements: !3441)
!3441 = !{!3442, !3446, !3450, !3454, !3455, !3456, !3457, !3458, !3463, !3468, !3472}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3440, file: !95, line: 325, baseType: !3443, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!135, !3378}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3440, file: !95, line: 326, baseType: !3447, size: 64, offset: 64)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!3378, !598, !135}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3440, file: !95, line: 327, baseType: !3451, size: 64, offset: 128)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{null, !3378}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3440, file: !95, line: 328, baseType: !3443, size: 64, offset: 192)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3440, file: !95, line: 329, baseType: !3443, size: 64, offset: 256)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3440, file: !95, line: 330, baseType: !3443, size: 64, offset: 320)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3440, file: !95, line: 331, baseType: !1121, size: 64, offset: 384)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3440, file: !95, line: 334, baseType: !3459, size: 64, offset: 448)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!3462, !449}
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3440, file: !95, line: 335, baseType: !3464, size: 64, offset: 512)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!135, !449, !3467}
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3440, file: !95, line: 337, baseType: !3469, size: 64, offset: 576)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!135, !449, !3462}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3440, file: !95, line: 339, baseType: !3473, size: 64, offset: 640)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!135, !598, !3476}
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !599, file: !40, line: 1199, baseType: !3478, size: 64, offset: 512)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3480)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !95, line: 430, size: 704, elements: !3481)
!3481 = !{!3482, !3488, !3489, !3493, !3494, !3495, !3510, !3533, !3537, !3538, !3561}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3480, file: !95, line: 431, baseType: !3483, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!135, !598, !135, !135, !3486}
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3177)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3480, file: !95, line: 432, baseType: !1121, size: 64, offset: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3480, file: !95, line: 433, baseType: !3490, size: 64, offset: 128)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!135, !598, !33}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3480, file: !95, line: 434, baseType: !3490, size: 64, offset: 192)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3480, file: !95, line: 435, baseType: !1121, size: 64, offset: 256)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3480, file: !95, line: 436, baseType: !3496, size: 64, offset: 320)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!135, !598, !135, !3499}
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !95, line: 417, size: 256, elements: !3501)
!3501 = !{!3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3500, file: !95, line: 418, baseType: !135, size: 32)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3500, file: !95, line: 419, baseType: !33, size: 32, offset: 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3500, file: !95, line: 420, baseType: !33, size: 32, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3500, file: !95, line: 422, baseType: !33, size: 32, offset: 96)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3500, file: !95, line: 423, baseType: !33, size: 32, offset: 128)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3500, file: !95, line: 424, baseType: !33, size: 32, offset: 160)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3500, file: !95, line: 425, baseType: !33, size: 32, offset: 192)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3500, file: !95, line: 426, baseType: !33, size: 32, offset: 224)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3480, file: !95, line: 437, baseType: !3511, size: 64, offset: 384)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!135, !598, !3390, !3514}
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !95, line: 345, size: 960, elements: !3516)
!3516 = !{!3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3515, file: !95, line: 346, baseType: !135, size: 32)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3515, file: !95, line: 347, baseType: !522, size: 64, offset: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3515, file: !95, line: 348, baseType: !522, size: 64, offset: 128)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3515, file: !95, line: 349, baseType: !522, size: 64, offset: 192)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3515, file: !95, line: 350, baseType: !522, size: 64, offset: 256)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3515, file: !95, line: 351, baseType: !522, size: 64, offset: 320)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3515, file: !95, line: 352, baseType: !522, size: 64, offset: 384)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3515, file: !95, line: 353, baseType: !717, size: 64, offset: 448)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3515, file: !95, line: 355, baseType: !717, size: 64, offset: 512)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3515, file: !95, line: 356, baseType: !135, size: 32, offset: 576)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3515, file: !95, line: 357, baseType: !135, size: 32, offset: 608)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3515, file: !95, line: 358, baseType: !522, size: 64, offset: 640)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3515, file: !95, line: 359, baseType: !522, size: 64, offset: 704)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3515, file: !95, line: 360, baseType: !522, size: 64, offset: 768)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3515, file: !95, line: 361, baseType: !717, size: 64, offset: 832)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3515, file: !95, line: 362, baseType: !135, size: 32, offset: 896)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3480, file: !95, line: 438, baseType: !3534, size: 64, offset: 448)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!135, !598, !3476, !3514}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3480, file: !95, line: 440, baseType: !3511, size: 64, offset: 512)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3480, file: !95, line: 441, baseType: !3539, size: 64, offset: 576)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!135, !598, !3542}
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !95, line: 411, size: 1408, elements: !3544)
!3544 = !{!3545, !3546}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3543, file: !95, line: 412, baseType: !33, size: 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3543, file: !95, line: 413, baseType: !3547, size: 1344, offset: 64)
!3547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3548, size: 1344, elements: !370)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !95, line: 397, size: 448, elements: !3549)
!3549 = !{!3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3560}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3548, file: !95, line: 398, baseType: !33, size: 32)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3548, file: !95, line: 399, baseType: !33, size: 32, offset: 32)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3548, file: !95, line: 401, baseType: !33, size: 32, offset: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3548, file: !95, line: 402, baseType: !33, size: 32, offset: 96)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3548, file: !95, line: 403, baseType: !33, size: 32, offset: 128)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3548, file: !95, line: 404, baseType: !33, size: 32, offset: 160)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3548, file: !95, line: 405, baseType: !33, size: 32, offset: 192)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3548, file: !95, line: 406, baseType: !524, size: 64, offset: 256)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3548, file: !95, line: 407, baseType: !3559, size: 64, offset: 320)
!3559 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !254, line: 132, baseType: !522)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3548, file: !95, line: 408, baseType: !3559, size: 64, offset: 384)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3480, file: !95, line: 442, baseType: !3490, size: 64, offset: 640)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !599, file: !40, line: 1200, baseType: !3563, size: 64, offset: 576)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3565)
!3565 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !40, line: 54, flags: DIFlagFwdDecl)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !599, file: !40, line: 1201, baseType: !419, size: 64, offset: 640)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !599, file: !40, line: 1202, baseType: !419, size: 64, offset: 704)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !599, file: !40, line: 1203, baseType: !419, size: 64, offset: 768)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !599, file: !40, line: 1204, baseType: !484, size: 64, offset: 832)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !599, file: !40, line: 1205, baseType: !1619, size: 320, offset: 896)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !599, file: !40, line: 1206, baseType: !135, size: 32, offset: 1216)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !599, file: !40, line: 1207, baseType: !279, size: 32, offset: 1248)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !599, file: !40, line: 1209, baseType: !245, size: 64, offset: 1280)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !599, file: !40, line: 1211, baseType: !3575, size: 64, offset: 1344)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3578)
!3578 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !40, line: 1211, flags: DIFlagFwdDecl)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !599, file: !40, line: 1223, baseType: !3580, size: 64, offset: 1408)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !501, line: 34, size: 64, elements: !3581)
!3581 = !{!3582}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3580, file: !501, line: 35, baseType: !504, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !599, file: !40, line: 1224, baseType: !253, size: 128, offset: 1472)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !599, file: !40, line: 1225, baseType: !3585, size: 64, offset: 1600)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !40, line: 1225, flags: DIFlagFwdDecl)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !599, file: !40, line: 1226, baseType: !3588, size: 64, offset: 1664)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !40, line: 1226, flags: DIFlagFwdDecl)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !599, file: !40, line: 1227, baseType: !3591, size: 64, offset: 1728)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !40, line: 50, flags: DIFlagFwdDecl)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !599, file: !40, line: 1228, baseType: !3594, size: 64, offset: 1792)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !40, line: 1228, flags: DIFlagFwdDecl)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !599, file: !40, line: 1229, baseType: !953, size: 128, offset: 1856)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !599, file: !40, line: 1230, baseType: !33, size: 32, offset: 1984)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !599, file: !40, line: 1231, baseType: !3599, size: 2496, offset: 2048)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !95, line: 521, size: 2496, elements: !3600)
!3600 = !{!3601, !3602, !3603, !3605, !3637}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3599, file: !95, line: 522, baseType: !33, size: 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3599, file: !95, line: 523, baseType: !1619, size: 320, offset: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3599, file: !95, line: 524, baseType: !3604, size: 192, offset: 384)
!3604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 192, elements: !370)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3599, file: !95, line: 525, baseType: !3606, size: 1728, offset: 576)
!3606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3607, size: 1728, elements: !370)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !95, line: 222, size: 576, elements: !3608)
!3608 = !{!3609, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3607, file: !95, line: 223, baseType: !3610, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !95, line: 445, size: 256, elements: !3612)
!3612 = !{!3613, !3614, !3627, !3628}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3611, file: !95, line: 446, baseType: !135, size: 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3611, file: !95, line: 447, baseType: !3615, size: 64, offset: 64)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3617)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !95, line: 312, size: 512, elements: !3618)
!3618 = !{!3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3617, file: !95, line: 313, baseType: !1121, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3617, file: !95, line: 314, baseType: !1121, size: 64, offset: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3617, file: !95, line: 315, baseType: !1121, size: 64, offset: 128)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3617, file: !95, line: 316, baseType: !1121, size: 64, offset: 192)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3617, file: !95, line: 317, baseType: !3443, size: 64, offset: 256)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3617, file: !95, line: 318, baseType: !3443, size: 64, offset: 320)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3617, file: !95, line: 319, baseType: !3443, size: 64, offset: 384)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3617, file: !95, line: 320, baseType: !3473, size: 64, offset: 448)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3611, file: !95, line: 448, baseType: !636, size: 64, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3611, file: !95, line: 449, baseType: !3610, size: 64, offset: 192)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3607, file: !95, line: 224, baseType: !135, size: 32, offset: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3607, file: !95, line: 226, baseType: !253, size: 128, offset: 128)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3607, file: !95, line: 227, baseType: !419, size: 64, offset: 256)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3607, file: !95, line: 228, baseType: !33, size: 32, offset: 320)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3607, file: !95, line: 229, baseType: !33, size: 32, offset: 352)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3607, file: !95, line: 230, baseType: !3411, size: 64, offset: 384)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3607, file: !95, line: 231, baseType: !3411, size: 64, offset: 448)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3607, file: !95, line: 232, baseType: !245, size: 64, offset: 512)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3599, file: !95, line: 526, baseType: !3638, size: 192, offset: 2304)
!3638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3615, size: 192, elements: !370)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !599, file: !40, line: 1233, baseType: !3640, size: 2368, offset: 4544)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !40, line: 1184, size: 2368, elements: !3641)
!3641 = !{!3642, !3643, !3644}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3640, file: !40, line: 1185, baseType: !339, size: 16)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3640, file: !40, line: 1186, baseType: !339, size: 16, offset: 16)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3640, file: !40, line: 1187, baseType: !3645, size: 2304, offset: 64)
!3645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3646, size: 2304, elements: !370)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3647, line: 12, size: 768, elements: !3648)
!3647 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3648 = !{!3649, !3657, !3658, !3663, !3664}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3646, file: !3647, line: 13, baseType: !3650, size: 384)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3651, line: 17, size: 384, elements: !3652)
!3651 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3652 = !{!3653, !3654, !3655, !3656}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3650, file: !3651, line: 18, baseType: !135, size: 32)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3650, file: !3651, line: 19, baseType: !135, size: 32, offset: 32)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3650, file: !3651, line: 20, baseType: !1242, size: 192, offset: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3650, file: !3651, line: 22, baseType: !927, size: 128, align: 64, offset: 256)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3646, file: !3647, line: 14, baseType: !779, size: 64, offset: 384)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3646, file: !3647, line: 15, baseType: !3659, size: 64, offset: 448)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3660, line: 16, size: 64, elements: !3661)
!3660 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3661 = !{!3662}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3659, file: !3660, line: 17, baseType: !1276, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3646, file: !3647, line: 16, baseType: !1242, size: 192, offset: 512)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3646, file: !3647, line: 17, baseType: !279, size: 32, offset: 704)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !599, file: !40, line: 1240, baseType: !245, size: 64, offset: 6912)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !599, file: !40, line: 1243, baseType: !518, size: 32, offset: 6976)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !599, file: !40, line: 1245, baseType: !1927, size: 64, offset: 7040)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !599, file: !40, line: 1246, baseType: !1927, size: 64, offset: 7104)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !599, file: !40, line: 1248, baseType: !519, size: 32, offset: 7168)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !599, file: !40, line: 1249, baseType: !3671, size: 64, offset: 7232)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !40, line: 634, flags: DIFlagFwdDecl)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !599, file: !40, line: 1252, baseType: !24, size: 256, offset: 7296)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !599, file: !40, line: 1253, baseType: !3675, size: 128, offset: 7552)
!3675 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3676, line: 21, baseType: !3677)
!3676 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3676, line: 19, size: 128, elements: !3678)
!3678 = !{!3679}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3677, file: !3676, line: 20, baseType: !3680, size: 128)
!3680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 128, elements: !2064)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !599, file: !40, line: 1255, baseType: !33, size: 32, offset: 7680)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !599, file: !40, line: 1261, baseType: !707, size: 256, offset: 7744)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !599, file: !40, line: 1267, baseType: !292, size: 64, offset: 8000)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !599, file: !40, line: 1269, baseType: !545, size: 64, offset: 8064)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !599, file: !40, line: 1271, baseType: !3686, size: 448, offset: 8128)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3426, line: 63, size: 448, elements: !3687)
!3687 = !{!3688, !3693, !3694, !3695, !3696, !3697, !3698}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3686, file: !3426, line: 64, baseType: !3689, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!419, !3692, !3424}
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3686, file: !3426, line: 66, baseType: !3689, size: 64, offset: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3686, file: !3426, line: 69, baseType: !405, size: 64, offset: 128)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3686, file: !3426, line: 70, baseType: !135, size: 32, offset: 192)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3686, file: !3426, line: 71, baseType: !33, size: 32, offset: 224)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3686, file: !3426, line: 74, baseType: !253, size: 128, offset: 256)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3686, file: !3426, line: 85, baseType: !3699, size: 64, offset: 384)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !599, file: !40, line: 1274, baseType: !711, size: 64, offset: 8576)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !599, file: !40, line: 1280, baseType: !711, size: 64, offset: 8640)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !599, file: !40, line: 1283, baseType: !135, size: 32, offset: 8704)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !599, file: !40, line: 1286, baseType: !3358, size: 32, offset: 8736)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !599, file: !40, line: 1289, baseType: !1029, size: 64, offset: 8768)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !599, file: !40, line: 1290, baseType: !1077, size: 64, offset: 8832)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !599, file: !40, line: 1297, baseType: !1719, size: 64, offset: 8896)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !599, file: !40, line: 1304, baseType: !3708, size: 64, offset: 8960)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3709, line: 49, size: 64, elements: !3710)
!3709 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3710 = !{!3711}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3708, file: !3709, line: 50, baseType: !3712, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3709, line: 41, size: 512, align: 512, elements: !3714)
!3714 = !{!3715, !3716, !3721}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3713, file: !3709, line: 43, baseType: !303, size: 32)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3713, file: !3709, line: 45, baseType: !3717, size: 192, offset: 64)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3709, line: 29, size: 192, elements: !3718)
!3718 = !{!3719, !3720}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3717, file: !3709, line: 30, baseType: !253, size: 128)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3717, file: !3709, line: 32, baseType: !405, size: 64, offset: 128)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3713, file: !3709, line: 46, baseType: !405, size: 64, offset: 256)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !599, file: !40, line: 1305, baseType: !3708, size: 64, offset: 9024)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !599, file: !40, line: 1306, baseType: !927, size: 128, align: 64, offset: 9088)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !599, file: !40, line: 1307, baseType: !967, size: 256, offset: 9216)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !599, file: !40, line: 1309, baseType: !707, size: 256, offset: 9472)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !599, file: !40, line: 1314, baseType: !135, size: 32, offset: 9728)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !599, file: !40, line: 1317, baseType: !303, size: 32, align: 512, offset: 10240)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !599, file: !40, line: 1318, baseType: !253, size: 128, offset: 10304)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !599, file: !40, line: 1320, baseType: !303, size: 32, offset: 10432)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !599, file: !40, line: 1321, baseType: !253, size: 128, offset: 10496)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !593, file: !594, line: 73, baseType: !135, size: 32, offset: 128)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !593, file: !594, line: 74, baseType: !3733, size: 64, offset: 192)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1895, line: 42, flags: DIFlagFwdDecl)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !547, file: !486, line: 141, baseType: !3737, size: 64, offset: 704)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!135, !3486, !787}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !547, file: !486, line: 142, baseType: !3741, size: 64, offset: 768)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!484, !484, !3744}
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !450)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !485, file: !486, line: 96, baseType: !598, size: 64, offset: 832)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !485, file: !486, line: 97, baseType: !419, size: 64, offset: 896)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !485, file: !486, line: 98, baseType: !245, size: 64, offset: 960)
!3749 = !DIDerivedType(tag: DW_TAG_member, scope: !485, file: !486, line: 100, baseType: !3750, size: 128, offset: 1024)
!3750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !485, file: !486, line: 100, size: 128, elements: !3751)
!3751 = !{!3752, !3753}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3750, file: !486, line: 101, baseType: !253, size: 128)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3750, file: !486, line: 102, baseType: !3264, size: 64)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !485, file: !486, line: 104, baseType: !253, size: 128, offset: 1152)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !485, file: !486, line: 105, baseType: !253, size: 128, offset: 1280)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !485, file: !486, line: 113, baseType: !3757, size: 128, offset: 1408)
!3757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !485, file: !486, line: 109, size: 128, elements: !3758)
!3758 = !{!3759, !3760, !3761}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3757, file: !486, line: 110, baseType: !953, size: 128)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3757, file: !486, line: 111, baseType: !500, size: 128)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3757, file: !486, line: 112, baseType: !927, size: 128, align: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !478, file: !40, line: 1968, baseType: !3763, size: 64, offset: 64)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!292, !484, !449, !3766}
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3768, line: 10, size: 128, elements: !3769)
!3768 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3769 = !{!3770, !3771}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3767, file: !3768, line: 11, baseType: !750, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3767, file: !3768, line: 12, baseType: !245, size: 64, offset: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !478, file: !40, line: 1969, baseType: !3773, size: 64, offset: 128)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!135, !3733, !449, !135}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !478, file: !40, line: 1970, baseType: !3777, size: 64, offset: 192)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!472, !449, !135, !787}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !478, file: !40, line: 1972, baseType: !3781, size: 64, offset: 256)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!135, !484, !369, !135}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !478, file: !40, line: 1974, baseType: !3785, size: 64, offset: 320)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!135, !3733, !449, !484, !411, !787}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !478, file: !40, line: 1976, baseType: !3789, size: 64, offset: 384)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!135, !484, !449, !484}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !478, file: !40, line: 1977, baseType: !3793, size: 64, offset: 448)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!135, !449, !484}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !478, file: !40, line: 1978, baseType: !3797, size: 64, offset: 512)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!135, !3733, !449, !484, !292}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !478, file: !40, line: 1980, baseType: !3801, size: 64, offset: 576)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!135, !3733, !449, !484, !411}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !478, file: !40, line: 1982, baseType: !3793, size: 64, offset: 640)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !478, file: !40, line: 1983, baseType: !3806, size: 64, offset: 704)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!135, !3733, !449, !484, !411, !603}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !478, file: !40, line: 1985, baseType: !3810, size: 64, offset: 768)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!135, !3733, !449, !484, !449, !484, !33}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !478, file: !40, line: 1987, baseType: !3814, size: 64, offset: 832)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!135, !3733, !484, !3817}
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !40, line: 226, size: 640, elements: !3819)
!3819 = !{!3820, !3821, !3822, !3832, !3841, !3842, !3847, !3848, !3849}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3818, file: !40, line: 227, baseType: !33, size: 32)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3818, file: !40, line: 228, baseType: !411, size: 16, offset: 32)
!3822 = !DIDerivedType(tag: DW_TAG_member, scope: !3818, file: !40, line: 241, baseType: !3823, size: 32, offset: 64)
!3823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3818, file: !40, line: 241, size: 32, elements: !3824)
!3824 = !{!3825, !3826}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3823, file: !40, line: 242, baseType: !455, size: 32)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3823, file: !40, line: 243, baseType: !3827, size: 32)
!3827 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3828, line: 16, baseType: !3829)
!3828 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3828, line: 14, size: 32, elements: !3830)
!3830 = !{!3831}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3829, file: !3828, line: 15, baseType: !460, size: 32)
!3832 = !DIDerivedType(tag: DW_TAG_member, scope: !3818, file: !40, line: 245, baseType: !3833, size: 32, offset: 96)
!3833 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3818, file: !40, line: 245, size: 32, elements: !3834)
!3834 = !{!3835, !3836}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3833, file: !40, line: 246, baseType: !464, size: 32)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3833, file: !40, line: 247, baseType: !3837, size: 32)
!3837 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3828, line: 20, baseType: !3838)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3828, line: 18, size: 32, elements: !3839)
!3839 = !{!3840}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3838, file: !3828, line: 19, baseType: !468, size: 32)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3818, file: !40, line: 249, baseType: !608, size: 64, offset: 128)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3818, file: !40, line: 250, baseType: !3843, size: 128, offset: 192)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1928, line: 13, size: 128, elements: !3844)
!3844 = !{!3845, !3846}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3843, file: !1928, line: 14, baseType: !1927, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3843, file: !1928, line: 15, baseType: !405, size: 64, offset: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3818, file: !40, line: 251, baseType: !3843, size: 128, offset: 320)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3818, file: !40, line: 252, baseType: !3843, size: 128, offset: 448)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3818, file: !40, line: 259, baseType: !1591, size: 64, offset: 576)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !478, file: !40, line: 1988, baseType: !3851, size: 64, offset: 896)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!135, !3733, !3486, !3854, !518, !33}
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3856, line: 22, size: 1280, elements: !3857)
!3856 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3857 = !{!3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3855, file: !3856, line: 23, baseType: !518, size: 32)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3855, file: !3856, line: 24, baseType: !411, size: 16, offset: 32)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3855, file: !3856, line: 25, baseType: !33, size: 32, offset: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3855, file: !3856, line: 26, baseType: !1935, size: 32, offset: 96)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3855, file: !3856, line: 27, baseType: !522, size: 64, offset: 128)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3855, file: !3856, line: 28, baseType: !522, size: 64, offset: 192)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3855, file: !3856, line: 41, baseType: !522, size: 64, offset: 256)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3855, file: !3856, line: 42, baseType: !603, size: 32, offset: 320)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3855, file: !3856, line: 43, baseType: !603, size: 32, offset: 352)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3855, file: !3856, line: 44, baseType: !455, size: 32, offset: 384)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3855, file: !3856, line: 45, baseType: !464, size: 32, offset: 416)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3855, file: !3856, line: 46, baseType: !608, size: 64, offset: 448)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3855, file: !3856, line: 47, baseType: !3843, size: 128, offset: 512)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3855, file: !3856, line: 48, baseType: !3843, size: 128, offset: 640)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3855, file: !3856, line: 49, baseType: !3843, size: 128, offset: 768)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3855, file: !3856, line: 50, baseType: !3843, size: 128, offset: 896)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3855, file: !3856, line: 51, baseType: !522, size: 64, offset: 1024)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3855, file: !3856, line: 52, baseType: !522, size: 64, offset: 1088)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3855, file: !3856, line: 53, baseType: !518, size: 32, offset: 1152)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3855, file: !3856, line: 54, baseType: !518, size: 32, offset: 1184)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3855, file: !3856, line: 55, baseType: !522, size: 64, offset: 1216)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !478, file: !40, line: 1990, baseType: !3880, size: 64, offset: 960)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!401, !484, !369, !416}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !478, file: !40, line: 1991, baseType: !3884, size: 64, offset: 1024)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!135, !449, !3887, !522, !522}
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !40, line: 55, flags: DIFlagFwdDecl)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !478, file: !40, line: 1993, baseType: !3890, size: 64, offset: 1088)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!135, !449, !135}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !478, file: !40, line: 1994, baseType: !3894, size: 64, offset: 1152)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!135, !449, !484, !1591, !33, !411}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !478, file: !40, line: 1997, baseType: !3898, size: 64, offset: 1216)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!135, !3733, !449, !1591, !411}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !478, file: !40, line: 1999, baseType: !3902, size: 64, offset: 1280)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!472, !3733, !484, !135}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !478, file: !40, line: 2001, baseType: !3906, size: 64, offset: 1344)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!135, !3733, !484, !472, !135}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !478, file: !40, line: 2003, baseType: !3910, size: 64, offset: 1408)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!135, !3733, !484, !3913}
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !40, line: 76, flags: DIFlagFwdDecl)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !478, file: !40, line: 2005, baseType: !3916, size: 64, offset: 1472)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!135, !484, !3913}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !478, file: !40, line: 2006, baseType: !3920, size: 64, offset: 1536)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!3923, !449}
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !40, line: 3192, size: 192, elements: !3925)
!3925 = !{!3926, !3927}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3924, file: !40, line: 3193, baseType: !1264, size: 128)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3924, file: !40, line: 3194, baseType: !518, size: 32, offset: 128)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !450, file: !40, line: 655, baseType: !598, size: 64, offset: 448)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !450, file: !40, line: 656, baseType: !445, size: 64, offset: 512)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !450, file: !40, line: 659, baseType: !245, size: 64, offset: 576)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !450, file: !40, line: 663, baseType: !419, size: 64, offset: 640)
!3932 = !DIDerivedType(tag: DW_TAG_member, scope: !450, file: !40, line: 671, baseType: !3933, size: 32, offset: 704)
!3933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !450, file: !40, line: 671, size: 32, elements: !3934)
!3934 = !{!3935, !3937}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3933, file: !40, line: 672, baseType: !3936, size: 32)
!3936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3933, file: !40, line: 673, baseType: !33, size: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !450, file: !40, line: 675, baseType: !603, size: 32, offset: 736)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !450, file: !40, line: 676, baseType: !608, size: 64, offset: 768)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !450, file: !40, line: 677, baseType: !3843, size: 128, offset: 832)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !450, file: !40, line: 678, baseType: !3843, size: 128, offset: 960)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !450, file: !40, line: 679, baseType: !3843, size: 128, offset: 1088)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !450, file: !40, line: 680, baseType: !303, size: 32, offset: 1216)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !450, file: !40, line: 681, baseType: !339, size: 16, offset: 1248)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !450, file: !40, line: 682, baseType: !327, size: 8, offset: 1264)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !450, file: !40, line: 683, baseType: !327, size: 8, offset: 1272)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !450, file: !40, line: 684, baseType: !3559, size: 64, offset: 1280)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !450, file: !40, line: 691, baseType: !419, size: 64, offset: 1344)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !450, file: !40, line: 692, baseType: !1619, size: 320, offset: 1408)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !450, file: !40, line: 694, baseType: !419, size: 64, offset: 1728)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !450, file: !40, line: 695, baseType: !419, size: 64, offset: 1792)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !450, file: !40, line: 697, baseType: !953, size: 128, offset: 1856)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !450, file: !40, line: 698, baseType: !253, size: 128, offset: 1984)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !450, file: !40, line: 707, baseType: !253, size: 128, offset: 2112)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !450, file: !40, line: 708, baseType: !253, size: 128, offset: 2240)
!3956 = !DIDerivedType(tag: DW_TAG_member, scope: !450, file: !40, line: 709, baseType: !3957, size: 128, offset: 2368)
!3957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !450, file: !40, line: 709, size: 128, elements: !3958)
!3958 = !{!3959, !3960}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3957, file: !40, line: 710, baseType: !1077, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3957, file: !40, line: 711, baseType: !927, size: 128, align: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !450, file: !40, line: 713, baseType: !713, size: 64, offset: 2496)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !450, file: !40, line: 714, baseType: !713, size: 64, offset: 2560)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !450, file: !40, line: 715, baseType: !279, size: 32, offset: 2624)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !450, file: !40, line: 716, baseType: !279, size: 32, offset: 2656)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !450, file: !40, line: 717, baseType: !279, size: 32, offset: 2688)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !450, file: !40, line: 719, baseType: !279, size: 32, offset: 2720)
!3967 = !DIDerivedType(tag: DW_TAG_member, scope: !450, file: !40, line: 721, baseType: !3968, size: 64, offset: 2752)
!3968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !450, file: !40, line: 721, size: 64, elements: !3969)
!3969 = !{!3970, !3971}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3968, file: !40, line: 722, baseType: !3184, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3968, file: !40, line: 723, baseType: !1100, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !450, file: !40, line: 725, baseType: !3973, size: 64, offset: 2816)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !40, line: 725, flags: DIFlagFwdDecl)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !450, file: !40, line: 726, baseType: !446, size: 1536, align: 64, offset: 2880)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !450, file: !40, line: 727, baseType: !253, size: 128, offset: 4416)
!3977 = !DIDerivedType(tag: DW_TAG_member, scope: !450, file: !40, line: 728, baseType: !3978, size: 64, offset: 4544)
!3978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !450, file: !40, line: 728, size: 64, elements: !3979)
!3979 = !{!3980, !3981, !3984, !3985}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3978, file: !40, line: 729, baseType: !2505, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3978, file: !40, line: 730, baseType: !3982, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !40, line: 730, flags: DIFlagFwdDecl)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3978, file: !40, line: 731, baseType: !369, size: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3978, file: !40, line: 732, baseType: !33, size: 32)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !450, file: !40, line: 735, baseType: !519, size: 32, offset: 4608)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !450, file: !40, line: 738, baseType: !519, size: 32, offset: 4640)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !450, file: !40, line: 739, baseType: !3671, size: 64, offset: 4672)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !450, file: !40, line: 750, baseType: !245, size: 64, offset: 4736)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !446, file: !40, line: 474, baseType: !1264, size: 128, offset: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !446, file: !40, line: 475, baseType: !1619, size: 320, offset: 192)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !446, file: !40, line: 476, baseType: !1269, size: 32, offset: 512)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !446, file: !40, line: 477, baseType: !279, size: 32, offset: 544)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !446, file: !40, line: 482, baseType: !1447, size: 128, offset: 576)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !446, file: !40, line: 483, baseType: !419, size: 64, offset: 704)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !446, file: !40, line: 484, baseType: !419, size: 64, offset: 768)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !446, file: !40, line: 485, baseType: !3998, size: 64, offset: 832)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4000)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !40, line: 404, size: 1280, elements: !4001)
!4001 = !{!4002, !4006, !4076, !4080, !4084, !4090, !4094, !4098, !4103, !4107, !4111, !4115, !4116, !4120, !4124, !4128, !4133, !4137, !4144, !4145}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4000, file: !40, line: 405, baseType: !4003, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!135, !2511, !1112}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4000, file: !40, line: 406, baseType: !4007, size: 64, offset: 64)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!135, !1591, !4010}
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !64, line: 293, size: 1536, elements: !4012)
!4012 = !{!4013, !4043, !4057}
!4013 = !DIDerivedType(tag: DW_TAG_member, scope: !4011, file: !64, line: 295, baseType: !4014, size: 512)
!4014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4011, file: !64, line: 295, size: 512, elements: !4015)
!4015 = !{!4016, !4042}
!4016 = !DIDerivedType(tag: DW_TAG_member, scope: !4014, file: !64, line: 296, baseType: !4017, size: 448)
!4017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4014, file: !64, line: 296, size: 448, elements: !4018)
!4018 = !{!4019, !4020, !4029, !4030, !4031, !4040, !4041}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4017, file: !64, line: 298, baseType: !419, size: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, scope: !4017, file: !64, line: 299, baseType: !4021, size: 128, offset: 64)
!4021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4017, file: !64, line: 299, size: 128, elements: !4022)
!4022 = !{!4023, !4024}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4021, file: !64, line: 300, baseType: !253, size: 128)
!4024 = !DIDerivedType(tag: DW_TAG_member, scope: !4021, file: !64, line: 302, baseType: !4025, size: 128)
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4021, file: !64, line: 302, size: 128, elements: !4026)
!4026 = !{!4027, !4028}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4025, file: !64, line: 303, baseType: !245, size: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4025, file: !64, line: 305, baseType: !33, size: 32, offset: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4017, file: !64, line: 310, baseType: !445, size: 64, offset: 192)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4017, file: !64, line: 311, baseType: !419, size: 64, offset: 256)
!4031 = !DIDerivedType(tag: DW_TAG_member, scope: !4017, file: !64, line: 312, baseType: !4032, size: 64, offset: 320)
!4032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4017, file: !64, line: 312, size: 64, elements: !4033)
!4033 = !{!4034, !4035}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4032, file: !64, line: 313, baseType: !245, size: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4032, file: !64, line: 314, baseType: !4036, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !64, line: 257, baseType: !4037)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 255, size: 64, elements: !4038)
!4038 = !{!4039}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4037, file: !64, line: 256, baseType: !419, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4017, file: !64, line: 316, baseType: !279, size: 32, offset: 384)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4017, file: !64, line: 317, baseType: !279, size: 32, offset: 416)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4014, file: !64, line: 323, baseType: !2512, size: 512, align: 128)
!4043 = !DIDerivedType(tag: DW_TAG_member, scope: !4011, file: !64, line: 325, baseType: !4044, size: 512, offset: 512)
!4044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4011, file: !64, line: 325, size: 512, elements: !4045)
!4045 = !{!4046, !4056}
!4046 = !DIDerivedType(tag: DW_TAG_member, scope: !4044, file: !64, line: 326, baseType: !4047, size: 320)
!4047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4044, file: !64, line: 326, size: 320, elements: !4048)
!4048 = !{!4049, !4050, !4051, !4052, !4053, !4054, !4055}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4047, file: !64, line: 327, baseType: !419, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4047, file: !64, line: 328, baseType: !419, size: 64, offset: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4047, file: !64, line: 329, baseType: !419, size: 64, offset: 128)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4047, file: !64, line: 331, baseType: !279, size: 32, offset: 192)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4047, file: !64, line: 332, baseType: !279, size: 32, offset: 224)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4047, file: !64, line: 333, baseType: !279, size: 32, offset: 256)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4047, file: !64, line: 335, baseType: !33, size: 32, offset: 288)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4044, file: !64, line: 339, baseType: !2512, size: 512, align: 128)
!4057 = !DIDerivedType(tag: DW_TAG_member, scope: !4011, file: !64, line: 341, baseType: !4058, size: 512, offset: 1024)
!4058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4011, file: !64, line: 341, size: 512, elements: !4059)
!4059 = !{!4060, !4069, !4075}
!4060 = !DIDerivedType(tag: DW_TAG_member, scope: !4058, file: !64, line: 342, baseType: !4061, size: 384)
!4061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4058, file: !64, line: 342, size: 384, elements: !4062)
!4062 = !{!4063, !4064, !4065, !4066, !4067, !4068}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4061, file: !64, line: 343, baseType: !419, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4061, file: !64, line: 344, baseType: !419, size: 64, offset: 64)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4061, file: !64, line: 346, baseType: !245, size: 64, offset: 128)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4061, file: !64, line: 347, baseType: !245, size: 64, offset: 192)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4061, file: !64, line: 348, baseType: !245, size: 64, offset: 256)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4061, file: !64, line: 349, baseType: !245, size: 64, offset: 320)
!4069 = !DIDerivedType(tag: DW_TAG_member, scope: !4058, file: !64, line: 352, baseType: !4070, size: 256)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4058, file: !64, line: 352, size: 256, elements: !4071)
!4071 = !{!4072, !4073, !4074}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4070, file: !64, line: 353, baseType: !419, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4070, file: !64, line: 354, baseType: !419, size: 64, offset: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4070, file: !64, line: 356, baseType: !253, size: 128, offset: 128)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4058, file: !64, line: 359, baseType: !2512, size: 512, align: 128)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4000, file: !40, line: 409, baseType: !4077, size: 64, offset: 128)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!135, !445, !1112}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4000, file: !40, line: 412, baseType: !4081, size: 64, offset: 192)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!787, !445, !4010}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4000, file: !40, line: 414, baseType: !4085, size: 64, offset: 256)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{null, !4088}
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !40, line: 310, flags: DIFlagFwdDecl)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4000, file: !40, line: 416, baseType: !4091, size: 64, offset: 320)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!135, !1591, !445, !608, !33, !2897, !3323}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4000, file: !40, line: 419, baseType: !4095, size: 64, offset: 384)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!135, !1591, !445, !608, !33, !33, !2511, !245}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4000, file: !40, line: 424, baseType: !4099, size: 64, offset: 448)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!4102, !445, !4102}
!4102 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !254, line: 131, baseType: !522)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4000, file: !40, line: 425, baseType: !4104, size: 64, offset: 512)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{null, !4010, !416, !416}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4000, file: !40, line: 426, baseType: !4108, size: 64, offset: 576)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!787, !4010, !1269}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4000, file: !40, line: 427, baseType: !4112, size: 64, offset: 640)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{null, !4010}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4000, file: !40, line: 428, baseType: !3202, size: 64, offset: 704)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4000, file: !40, line: 433, baseType: !4117, size: 64, offset: 768)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!135, !445, !4010, !4010, !100}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4000, file: !40, line: 435, baseType: !4121, size: 64, offset: 832)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!135, !4010}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4000, file: !40, line: 436, baseType: !4125, size: 64, offset: 896)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!787, !4010, !416, !416}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4000, file: !40, line: 438, baseType: !4129, size: 64, offset: 960)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{null, !4010, !4132, !4132}
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4000, file: !40, line: 439, baseType: !4134, size: 64, offset: 1024)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!135, !445, !2511}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4000, file: !40, line: 442, baseType: !4138, size: 64, offset: 1088)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!135, !4141, !1591, !4143}
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !40, line: 66, flags: DIFlagFwdDecl)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4000, file: !40, line: 444, baseType: !3315, size: 64, offset: 1152)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4000, file: !40, line: 445, baseType: !4146, size: 64, offset: 1216)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!135, !3205, !3227}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !446, file: !40, line: 486, baseType: !419, size: 64, offset: 896)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !446, file: !40, line: 487, baseType: !1619, size: 320, offset: 960)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !446, file: !40, line: 488, baseType: !3358, size: 32, offset: 1280)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !446, file: !40, line: 489, baseType: !303, size: 32, offset: 1312)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !446, file: !40, line: 490, baseType: !253, size: 128, offset: 1344)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !446, file: !40, line: 491, baseType: !245, size: 64, offset: 1472)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !436, file: !395, line: 180, baseType: !4156, size: 64, offset: 320)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!401, !1591, !296, !435, !369, !608, !416}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !436, file: !395, line: 182, baseType: !4156, size: 64, offset: 384)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !436, file: !395, line: 184, baseType: !4161, size: 64, offset: 448)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!135, !1591, !296, !435, !2621}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !424, file: !395, line: 90, baseType: !4165, size: 64, offset: 192)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !424, file: !395, line: 91, baseType: !4167, size: 64, offset: 256)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !385, file: !289, line: 120, baseType: !4169, size: 64, offset: 192)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!4172, !352}
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4174)
!4174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !108, line: 39, size: 384, elements: !4175)
!4175 = !{!4176, !4177, !4181, !4185, !4191, !4195}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4174, file: !108, line: 40, baseType: !107, size: 32)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4174, file: !108, line: 41, baseType: !4178, size: 64, offset: 64)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!787}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4174, file: !108, line: 42, baseType: !4182, size: 64, offset: 128)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!245}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4174, file: !108, line: 43, baseType: !4186, size: 64, offset: 192)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!1696, !4189}
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !108, line: 19, flags: DIFlagFwdDecl)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4174, file: !108, line: 44, baseType: !4192, size: 64, offset: 256)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{!1696}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4174, file: !108, line: 45, baseType: !750, size: 64, offset: 320)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !385, file: !289, line: 121, baseType: !4197, size: 64, offset: 256)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!1696, !352}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !385, file: !289, line: 122, baseType: !4201, size: 64, offset: 320)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{null, !352, !4204, !4205}
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !288, file: !289, line: 70, baseType: !4207, size: 64, offset: 384)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !4209, line: 190, size: 1152, elements: !4210)
!4209 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!4210 = !{!4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4290, !4291, !4292, !4293, !4294, !4297}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4208, file: !4209, line: 191, baseType: !279, size: 32)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4208, file: !4209, line: 192, baseType: !279, size: 32, offset: 32)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4208, file: !4209, line: 202, baseType: !4207, size: 64, offset: 64)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4208, file: !4209, line: 203, baseType: !292, size: 64, offset: 128)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4208, file: !4209, line: 205, baseType: !819, size: 192, align: 64, offset: 192)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4208, file: !4209, line: 207, baseType: !1696, size: 64, offset: 384)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4208, file: !4209, line: 208, baseType: !33, size: 32, offset: 448)
!4218 = !DIDerivedType(tag: DW_TAG_member, scope: !4208, file: !4209, line: 209, baseType: !4219, size: 256, offset: 512)
!4219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4208, file: !4209, line: 209, size: 256, elements: !4220)
!4220 = !{!4221, !4230, !4234}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4219, file: !4209, line: 210, baseType: !4222, size: 256)
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !4209, line: 153, size: 256, elements: !4223)
!4223 = !{!4224, !4225, !4226, !4229}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4222, file: !4209, line: 154, baseType: !419, size: 64)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4222, file: !4209, line: 156, baseType: !1450, size: 64, offset: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4222, file: !4209, line: 162, baseType: !4227, size: 64, offset: 128)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !4209, line: 162, flags: DIFlagFwdDecl)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4222, file: !4209, line: 167, baseType: !419, size: 64, offset: 192)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4219, file: !4209, line: 211, baseType: !4231, size: 64)
!4231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !4209, line: 170, size: 64, elements: !4232)
!4232 = !{!4233}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4231, file: !4209, line: 171, baseType: !4207, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4219, file: !4209, line: 212, baseType: !4235, size: 256)
!4235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !4209, line: 174, size: 256, elements: !4236)
!4236 = !{!4237, !4285, !4288, !4289}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4235, file: !4209, line: 175, baseType: !4238, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4240)
!4240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !4209, line: 271, size: 768, elements: !4241)
!4241 = !{!4242, !4262, !4266, !4267, !4268, !4269, !4270, !4274, !4275, !4276, !4277, !4281}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4240, file: !4209, line: 276, baseType: !4243, size: 64)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!135, !4246}
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !4209, line: 251, size: 1216, elements: !4248)
!4248 = !{!4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4247, file: !4209, line: 253, baseType: !4207, size: 64)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4247, file: !4209, line: 254, baseType: !1591, size: 64, offset: 64)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4247, file: !4209, line: 255, baseType: !1149, size: 64, offset: 128)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4247, file: !4209, line: 256, baseType: !245, size: 64, offset: 192)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4247, file: !4209, line: 259, baseType: !707, size: 256, offset: 256)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4247, file: !4209, line: 260, baseType: !707, size: 256, offset: 512)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4247, file: !4209, line: 261, baseType: !135, size: 32, offset: 768)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4247, file: !4209, line: 262, baseType: !253, size: 128, offset: 832)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4247, file: !4209, line: 263, baseType: !369, size: 64, offset: 960)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4247, file: !4209, line: 265, baseType: !416, size: 64, offset: 1024)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4247, file: !4209, line: 266, baseType: !787, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4247, file: !4209, line: 267, baseType: !787, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4247, file: !4209, line: 268, baseType: !2664, size: 64, offset: 1152)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4240, file: !4209, line: 277, baseType: !4263, size: 64, offset: 64)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{null, !4246}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4240, file: !4209, line: 290, baseType: !1180, size: 64, offset: 128)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4240, file: !4209, line: 292, baseType: !1167, size: 64, offset: 192)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4240, file: !4209, line: 293, baseType: !1176, size: 64, offset: 256)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4240, file: !4209, line: 294, baseType: !1172, size: 64, offset: 320)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4240, file: !4209, line: 296, baseType: !4271, size: 64, offset: 384)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!401, !4246, !369, !416, !608}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4240, file: !4209, line: 306, baseType: !416, size: 64, offset: 448)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4240, file: !4209, line: 313, baseType: !787, size: 8, offset: 512)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4240, file: !4209, line: 314, baseType: !4271, size: 64, offset: 576)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4240, file: !4209, line: 317, baseType: !4278, size: 64, offset: 640)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{!3253, !4246, !3255}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4240, file: !4209, line: 320, baseType: !4282, size: 64, offset: 704)
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!135, !4246, !2621}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4235, file: !4209, line: 176, baseType: !4286, size: 64, offset: 64)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !4209, line: 35, flags: DIFlagFwdDecl)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4235, file: !4209, line: 177, baseType: !608, size: 64, offset: 128)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4235, file: !4209, line: 178, baseType: !4207, size: 64, offset: 192)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4208, file: !4209, line: 215, baseType: !245, size: 64, offset: 768)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4208, file: !4209, line: 221, baseType: !522, size: 64, offset: 832)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4208, file: !4209, line: 223, baseType: !339, size: 16, offset: 896)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4208, file: !4209, line: 224, baseType: !411, size: 16, offset: 912)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4208, file: !4209, line: 225, baseType: !4295, size: 64, offset: 960)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !4209, line: 36, flags: DIFlagFwdDecl)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4208, file: !4209, line: 227, baseType: !927, size: 128, align: 64, offset: 1024)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !288, file: !289, line: 71, baseType: !270, size: 32, offset: 448)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !288, file: !289, line: 73, baseType: !33, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !288, file: !289, line: 74, baseType: !33, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !288, file: !289, line: 75, baseType: !33, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !288, file: !289, line: 76, baseType: !33, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !288, file: !289, line: 77, baseType: !33, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !285, file: !120, line: 707, baseType: !284, size: 64, offset: 512)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !285, file: !120, line: 709, baseType: !4306, size: 64, offset: 576)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !120, line: 37, flags: DIFlagFwdDecl)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !285, file: !120, line: 711, baseType: !292, size: 64, offset: 640)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !285, file: !120, line: 712, baseType: !4310, size: 64, offset: 704)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4312)
!4312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !120, line: 89, size: 384, elements: !4313)
!4313 = !{!4314, !4315, !4316, !4322, !4327, !4331}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4312, file: !120, line: 90, baseType: !292, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4312, file: !120, line: 91, baseType: !421, size: 64, offset: 64)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4312, file: !120, line: 92, baseType: !4317, size: 64, offset: 128)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = !DISubroutineType(types: !4319)
!4319 = !{!135, !4320, !364}
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4312, file: !120, line: 93, baseType: !4323, size: 64, offset: 192)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!369, !4320, !4326, !4204, !4205}
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4312, file: !120, line: 95, baseType: !4328, size: 64, offset: 256)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{null, !284}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4312, file: !120, line: 97, baseType: !4332, size: 64, offset: 320)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4334)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !127, line: 286, size: 1472, elements: !4335)
!4335 = !{!4336, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4334, file: !127, line: 287, baseType: !4337, size: 64)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DISubroutineType(types: !4339)
!4339 = !{!135, !284}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4334, file: !127, line: 288, baseType: !4328, size: 64, offset: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4334, file: !127, line: 289, baseType: !4337, size: 64, offset: 128)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4334, file: !127, line: 290, baseType: !4337, size: 64, offset: 192)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4334, file: !127, line: 291, baseType: !4337, size: 64, offset: 256)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4334, file: !127, line: 292, baseType: !4337, size: 64, offset: 320)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4334, file: !127, line: 293, baseType: !4337, size: 64, offset: 384)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4334, file: !127, line: 294, baseType: !4337, size: 64, offset: 448)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4334, file: !127, line: 295, baseType: !4337, size: 64, offset: 512)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4334, file: !127, line: 296, baseType: !4337, size: 64, offset: 576)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4334, file: !127, line: 297, baseType: !4337, size: 64, offset: 640)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4334, file: !127, line: 298, baseType: !4337, size: 64, offset: 704)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4334, file: !127, line: 299, baseType: !4337, size: 64, offset: 768)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4334, file: !127, line: 300, baseType: !4337, size: 64, offset: 832)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4334, file: !127, line: 301, baseType: !4337, size: 64, offset: 896)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4334, file: !127, line: 302, baseType: !4337, size: 64, offset: 960)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4334, file: !127, line: 303, baseType: !4337, size: 64, offset: 1024)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4334, file: !127, line: 304, baseType: !4337, size: 64, offset: 1088)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4334, file: !127, line: 305, baseType: !4337, size: 64, offset: 1152)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4334, file: !127, line: 306, baseType: !4337, size: 64, offset: 1216)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4334, file: !127, line: 307, baseType: !4337, size: 64, offset: 1280)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4334, file: !127, line: 308, baseType: !4337, size: 64, offset: 1344)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4334, file: !127, line: 309, baseType: !4337, size: 64, offset: 1408)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !285, file: !120, line: 714, baseType: !4363, size: 64, offset: 768)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4365)
!4365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4366, line: 80, size: 1344, elements: !4367)
!4366 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4367 = !{!4368, !4369, !4370, !4371, !4372, !4373, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4431}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4365, file: !4366, line: 81, baseType: !292, size: 64)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4365, file: !4366, line: 82, baseType: !292, size: 64, offset: 64)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4365, file: !4366, line: 83, baseType: !421, size: 64, offset: 128)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4365, file: !4366, line: 84, baseType: !421, size: 64, offset: 192)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4365, file: !4366, line: 85, baseType: !421, size: 64, offset: 256)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4365, file: !4366, line: 87, baseType: !4374, size: 64, offset: 320)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{!135, !284, !4377}
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !114, line: 96, size: 1152, elements: !4379)
!4379 = !{!4380, !4381, !4382, !4383, !4384, !4385, !4386, !4390, !4394, !4395, !4396, !4397, !4398, !4406, !4407, !4408, !4409, !4410, !4411}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4378, file: !114, line: 97, baseType: !292, size: 64)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4378, file: !114, line: 98, baseType: !4363, size: 64, offset: 64)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4378, file: !114, line: 100, baseType: !636, size: 64, offset: 128)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4378, file: !114, line: 101, baseType: !292, size: 64, offset: 192)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4378, file: !114, line: 103, baseType: !787, size: 8, offset: 256)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4378, file: !114, line: 104, baseType: !113, size: 32, offset: 288)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4378, file: !114, line: 106, baseType: !4387, size: 64, offset: 320)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4389)
!4389 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !114, line: 106, flags: DIFlagFwdDecl)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4378, file: !114, line: 107, baseType: !4391, size: 64, offset: 384)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4393)
!4393 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !114, line: 107, flags: DIFlagFwdDecl)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4378, file: !114, line: 109, baseType: !4337, size: 64, offset: 448)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4378, file: !114, line: 110, baseType: !4328, size: 64, offset: 512)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4378, file: !114, line: 111, baseType: !4337, size: 64, offset: 576)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4378, file: !114, line: 112, baseType: !4328, size: 64, offset: 640)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4378, file: !114, line: 113, baseType: !4399, size: 64, offset: 704)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = !DISubroutineType(types: !4401)
!4401 = !{!135, !284, !4402}
!4402 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !127, line: 60, baseType: !4403)
!4403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !127, line: 58, size: 32, elements: !4404)
!4404 = !{!4405}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4403, file: !127, line: 59, baseType: !135, size: 32)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4378, file: !114, line: 114, baseType: !4337, size: 64, offset: 768)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4378, file: !114, line: 115, baseType: !421, size: 64, offset: 832)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4378, file: !114, line: 116, baseType: !421, size: 64, offset: 896)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4378, file: !114, line: 118, baseType: !4332, size: 64, offset: 960)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4378, file: !114, line: 119, baseType: !4328, size: 64, offset: 1024)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4378, file: !114, line: 121, baseType: !4412, size: 64, offset: 1088)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !114, line: 121, flags: DIFlagFwdDecl)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4365, file: !4366, line: 88, baseType: !4317, size: 64, offset: 384)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4365, file: !4366, line: 89, baseType: !4337, size: 64, offset: 448)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4365, file: !4366, line: 90, baseType: !4328, size: 64, offset: 512)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4365, file: !4366, line: 91, baseType: !4328, size: 64, offset: 576)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4365, file: !4366, line: 92, baseType: !4328, size: 64, offset: 640)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4365, file: !4366, line: 94, baseType: !4337, size: 64, offset: 704)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4365, file: !4366, line: 95, baseType: !4337, size: 64, offset: 768)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4365, file: !4366, line: 97, baseType: !4399, size: 64, offset: 832)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4365, file: !4366, line: 98, baseType: !4337, size: 64, offset: 896)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4365, file: !4366, line: 100, baseType: !4337, size: 64, offset: 960)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4365, file: !4366, line: 102, baseType: !4337, size: 64, offset: 1024)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4365, file: !4366, line: 103, baseType: !4328, size: 64, offset: 1088)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4365, file: !4366, line: 105, baseType: !4332, size: 64, offset: 1152)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4365, file: !4366, line: 107, baseType: !4428, size: 64, offset: 1216)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4430)
!4430 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4366, line: 107, flags: DIFlagFwdDecl)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4365, file: !4366, line: 109, baseType: !787, size: 8, offset: 1280)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !285, file: !120, line: 715, baseType: !4377, size: 64, offset: 832)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !285, file: !120, line: 717, baseType: !245, size: 64, offset: 896)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !285, file: !120, line: 719, baseType: !245, size: 64, offset: 960)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !285, file: !120, line: 721, baseType: !707, size: 256, offset: 1024)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !285, file: !120, line: 725, baseType: !4437, size: 448, offset: 1280)
!4437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !120, line: 517, size: 448, elements: !4438)
!4438 = !{!4439, !4440, !4441, !4442}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4437, file: !120, line: 518, baseType: !253, size: 128)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4437, file: !120, line: 519, baseType: !253, size: 128, offset: 128)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4437, file: !120, line: 520, baseType: !253, size: 128, offset: 256)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4437, file: !120, line: 521, baseType: !119, size: 32, offset: 384)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !285, file: !120, line: 726, baseType: !4444, size: 2496, offset: 1728)
!4444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !127, line: 663, size: 2496, elements: !4445)
!4445 = !{!4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4528, !4532}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4444, file: !127, line: 664, baseType: !4402, size: 32)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4444, file: !127, line: 665, baseType: !33, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4444, file: !127, line: 666, baseType: !33, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4444, file: !127, line: 667, baseType: !787, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4444, file: !127, line: 668, baseType: !787, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4444, file: !127, line: 669, baseType: !787, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4444, file: !127, line: 670, baseType: !787, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4444, file: !127, line: 671, baseType: !787, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4444, file: !127, line: 672, baseType: !787, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4444, file: !127, line: 673, baseType: !787, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4444, file: !127, line: 674, baseType: !787, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4444, file: !127, line: 675, baseType: !518, size: 32, offset: 64)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4444, file: !127, line: 676, baseType: !303, size: 32, offset: 96)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4444, file: !127, line: 678, baseType: !253, size: 128, offset: 128)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4444, file: !127, line: 679, baseType: !656, size: 256, offset: 256)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4444, file: !127, line: 680, baseType: !4462, size: 64, offset: 512)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4464, line: 43, size: 1536, elements: !4465)
!4464 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4465 = !{!4466, !4467, !4468, !4469, !4470, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4463, file: !4464, line: 44, baseType: !292, size: 64)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4463, file: !4464, line: 45, baseType: !135, size: 32, offset: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4463, file: !4464, line: 46, baseType: !253, size: 128, offset: 128)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4463, file: !4464, line: 47, baseType: !303, size: 32, offset: 256)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4463, file: !4464, line: 48, baseType: !4471, size: 64, offset: 320)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !127, line: 629, flags: DIFlagFwdDecl)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4463, file: !4464, line: 49, baseType: !949, size: 320, offset: 384)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4463, file: !4464, line: 50, baseType: !419, size: 64, offset: 704)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4463, file: !4464, line: 51, baseType: !1396, size: 64, offset: 768)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4463, file: !4464, line: 52, baseType: !1396, size: 64, offset: 832)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4463, file: !4464, line: 53, baseType: !1396, size: 64, offset: 896)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4463, file: !4464, line: 54, baseType: !1396, size: 64, offset: 960)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4463, file: !4464, line: 55, baseType: !1396, size: 64, offset: 1024)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4463, file: !4464, line: 56, baseType: !419, size: 64, offset: 1088)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4463, file: !4464, line: 57, baseType: !419, size: 64, offset: 1152)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4463, file: !4464, line: 58, baseType: !419, size: 64, offset: 1216)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4463, file: !4464, line: 59, baseType: !419, size: 64, offset: 1280)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4463, file: !4464, line: 60, baseType: !419, size: 64, offset: 1344)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4463, file: !4464, line: 61, baseType: !284, size: 64, offset: 1408)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4463, file: !4464, line: 62, baseType: !787, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4463, file: !4464, line: 63, baseType: !787, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4444, file: !127, line: 681, baseType: !787, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4444, file: !127, line: 682, baseType: !787, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4444, file: !127, line: 683, baseType: !787, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4444, file: !127, line: 684, baseType: !33, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4444, file: !127, line: 685, baseType: !33, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4444, file: !127, line: 690, baseType: !1388, size: 512, offset: 640)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4444, file: !127, line: 691, baseType: !522, size: 64, offset: 1152)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4444, file: !127, line: 692, baseType: !967, size: 256, offset: 1216)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4444, file: !127, line: 693, baseType: !1242, size: 192, offset: 1472)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4444, file: !127, line: 694, baseType: !4471, size: 64, offset: 1664)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4444, file: !127, line: 695, baseType: !279, size: 32, offset: 1728)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4444, file: !127, line: 696, baseType: !279, size: 32, offset: 1760)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4444, file: !127, line: 697, baseType: !33, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4444, file: !127, line: 698, baseType: !33, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4444, file: !127, line: 699, baseType: !33, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4444, file: !127, line: 700, baseType: !33, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4444, file: !127, line: 701, baseType: !33, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4444, file: !127, line: 702, baseType: !33, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4444, file: !127, line: 703, baseType: !787, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4444, file: !127, line: 704, baseType: !33, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4444, file: !127, line: 705, baseType: !33, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4444, file: !127, line: 706, baseType: !33, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4444, file: !127, line: 707, baseType: !33, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4444, file: !127, line: 708, baseType: !33, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4444, file: !127, line: 709, baseType: !33, size: 32, offset: 1824)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4444, file: !127, line: 710, baseType: !126, size: 32, offset: 1856)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4444, file: !127, line: 711, baseType: !134, size: 32, offset: 1888)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4444, file: !127, line: 712, baseType: !134, size: 32, offset: 1920)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4444, file: !127, line: 713, baseType: !135, size: 32, offset: 1952)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4444, file: !127, line: 714, baseType: !135, size: 32, offset: 1984)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4444, file: !127, line: 715, baseType: !522, size: 64, offset: 2048)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4444, file: !127, line: 716, baseType: !522, size: 64, offset: 2112)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4444, file: !127, line: 717, baseType: !522, size: 64, offset: 2176)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4444, file: !127, line: 718, baseType: !522, size: 64, offset: 2240)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4444, file: !127, line: 720, baseType: !4523, size: 64, offset: 2304)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !127, line: 632, size: 64, elements: !4525)
!4525 = !{!4526, !4527}
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4524, file: !127, line: 633, baseType: !303, size: 32)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4524, file: !127, line: 634, baseType: !33, size: 32, offset: 32)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4444, file: !127, line: 721, baseType: !4529, size: 64, offset: 2368)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{null, !284, !703}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4444, file: !127, line: 722, baseType: !4533, size: 64, offset: 2432)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !127, line: 722, flags: DIFlagFwdDecl)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !285, file: !120, line: 727, baseType: !4536, size: 64, offset: 4224)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !127, line: 742, size: 1792, elements: !4538)
!4538 = !{!4539, !4540, !4541, !4545, !4546, !4547}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4537, file: !127, line: 743, baseType: !4334, size: 1472)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4537, file: !127, line: 744, baseType: !4337, size: 64, offset: 1472)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4537, file: !127, line: 745, baseType: !4542, size: 64, offset: 1536)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{null, !284, !787}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4537, file: !127, line: 746, baseType: !4337, size: 64, offset: 1600)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4537, file: !127, line: 747, baseType: !4328, size: 64, offset: 1664)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4537, file: !127, line: 748, baseType: !4328, size: 64, offset: 1728)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !285, file: !120, line: 736, baseType: !4549, size: 128, offset: 4288)
!4549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !120, line: 529, size: 128, elements: !4550)
!4550 = !{!4551, !4555}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4549, file: !120, line: 531, baseType: !4552, size: 64)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4554, line: 13, flags: DIFlagFwdDecl)
!4554 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4549, file: !120, line: 532, baseType: !4556, size: 64, offset: 64)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4557 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !120, line: 49, flags: DIFlagFwdDecl)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !285, file: !120, line: 738, baseType: !4559, size: 64, offset: 4416)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4561)
!4561 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !120, line: 738, flags: DIFlagFwdDecl)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !285, file: !120, line: 740, baseType: !4563, size: 64, offset: 4480)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !285, file: !120, line: 741, baseType: !522, size: 64, offset: 4544)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !285, file: !120, line: 746, baseType: !522, size: 64, offset: 4608)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !285, file: !120, line: 747, baseType: !4567, size: 64, offset: 4672)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4569)
!4569 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !120, line: 747, flags: DIFlagFwdDecl)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !285, file: !120, line: 749, baseType: !4571, size: 64, offset: 4736)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !120, line: 428, size: 128, elements: !4573)
!4573 = !{!4574, !4575, !4576}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4572, file: !120, line: 433, baseType: !33, size: 32)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4572, file: !120, line: 434, baseType: !33, size: 32, offset: 32)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4572, file: !120, line: 435, baseType: !419, size: 64, offset: 64)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !285, file: !120, line: 751, baseType: !253, size: 128, offset: 4800)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !285, file: !120, line: 762, baseType: !4579, size: 64, offset: 4928)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !120, line: 762, flags: DIFlagFwdDecl)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !285, file: !120, line: 770, baseType: !4582, offset: 4992)
!4582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4583, line: 5, elements: !996)
!4583 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !285, file: !120, line: 772, baseType: !4585, size: 64, offset: 4992)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4587, line: 18, flags: DIFlagFwdDecl)
!4587 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !285, file: !120, line: 773, baseType: !4589, size: 64, offset: 5056)
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 64)
!4590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4591, line: 41, size: 512, elements: !4592)
!4591 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4592 = !{!4593, !4594, !4688, !4689, !4690, !4691}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4590, file: !4591, line: 42, baseType: !4589, size: 64)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4590, file: !4591, line: 43, baseType: !4595, size: 64, offset: 64)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4597)
!4597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4591, line: 125, size: 1408, elements: !4598)
!4598 = !{!4599, !4603, !4607, !4613, !4617, !4618, !4623, !4627, !4631, !4635, !4639, !4640, !4644, !4648, !4652, !4663, !4664, !4665, !4666, !4676, !4680, !4684}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4597, file: !4591, line: 126, baseType: !4600, size: 64)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{!4589, !4589}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4597, file: !4591, line: 127, baseType: !4604, size: 64, offset: 64)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{null, !4589}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4597, file: !4591, line: 128, baseType: !4608, size: 64, offset: 128)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DISubroutineType(types: !4610)
!4610 = !{!787, !4611}
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4590)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4597, file: !4591, line: 129, baseType: !4614, size: 64, offset: 192)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4615 = !DISubroutineType(types: !4616)
!4616 = !{!1696, !4611, !4320}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4597, file: !4591, line: 131, baseType: !4608, size: 64, offset: 256)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4597, file: !4591, line: 133, baseType: !4619, size: 64, offset: 320)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!4622, !4611}
!4622 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4591, line: 132, flags: DIFlagFwdDecl)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4597, file: !4591, line: 134, baseType: !4624, size: 64, offset: 384)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!787, !4611, !292}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4597, file: !4591, line: 136, baseType: !4628, size: 64, offset: 448)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{!135, !4611, !292, !33, !245, !416}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4597, file: !4591, line: 141, baseType: !4632, size: 64, offset: 512)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!135, !4611, !292, !1044, !416}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4597, file: !4591, line: 144, baseType: !4636, size: 64, offset: 576)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{!292, !4611}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4597, file: !4591, line: 145, baseType: !4636, size: 64, offset: 640)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4597, file: !4591, line: 146, baseType: !4641, size: 64, offset: 704)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!4589, !4611}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4597, file: !4591, line: 148, baseType: !4645, size: 64, offset: 768)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DISubroutineType(types: !4647)
!4647 = !{!4589, !4611, !4589}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4597, file: !4591, line: 151, baseType: !4649, size: 64, offset: 832)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{!4589, !4611, !292}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4597, file: !4591, line: 153, baseType: !4653, size: 64, offset: 896)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{!135, !4611, !292, !292, !33, !33, !4656}
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4591, line: 94, size: 640, elements: !4658)
!4658 = !{!4659, !4660, !4661}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4657, file: !4591, line: 95, baseType: !4589, size: 64)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4657, file: !4591, line: 96, baseType: !33, size: 32, offset: 64)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4657, file: !4591, line: 97, baseType: !4662, size: 512, offset: 128)
!4662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 512, elements: !1431)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4597, file: !4591, line: 158, baseType: !4645, size: 64, offset: 960)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4597, file: !4591, line: 161, baseType: !4641, size: 64, offset: 1024)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4597, file: !4591, line: 163, baseType: !4600, size: 64, offset: 1088)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4597, file: !4591, line: 164, baseType: !4667, size: 64, offset: 1152)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{!135, !4611, !4670}
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4591, line: 73, size: 128, elements: !4672)
!4672 = !{!4673, !4674, !4675}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4671, file: !4591, line: 74, baseType: !33, size: 32)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4671, file: !4591, line: 75, baseType: !33, size: 32, offset: 32)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4671, file: !4591, line: 76, baseType: !4611, size: 64, offset: 64)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4597, file: !4591, line: 166, baseType: !4677, size: 64, offset: 1216)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!245, !4589, !135}
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4597, file: !4591, line: 167, baseType: !4681, size: 64, offset: 1280)
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = !DISubroutineType(types: !4683)
!4683 = !{!135, !4611, !33}
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4597, file: !4591, line: 168, baseType: !4685, size: 64, offset: 1344)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{!135, !4589}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4590, file: !4591, line: 44, baseType: !284, size: 64, offset: 128)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4590, file: !4591, line: 45, baseType: !253, size: 128, offset: 192)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4590, file: !4591, line: 46, baseType: !253, size: 128, offset: 320)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4590, file: !4591, line: 47, baseType: !327, size: 8, offset: 448)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !285, file: !120, line: 776, baseType: !135, size: 32, offset: 5120)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !285, file: !120, line: 778, baseType: !603, size: 32, offset: 5152)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !285, file: !120, line: 779, baseType: !518, size: 32, offset: 5184)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !285, file: !120, line: 781, baseType: !303, size: 32, offset: 5216)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !285, file: !120, line: 782, baseType: !253, size: 128, offset: 5248)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !285, file: !120, line: 784, baseType: !4698, size: 64, offset: 5376)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4700)
!4700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4701, line: 52, size: 768, elements: !4702)
!4701 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4702 = !{!4703, !4704, !4705, !4706, !4707, !4711, !4715, !4716, !4717, !4718, !4722, !4726}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4700, file: !4701, line: 53, baseType: !292, size: 64)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4700, file: !4701, line: 55, baseType: !421, size: 64, offset: 64)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4700, file: !4701, line: 56, baseType: !421, size: 64, offset: 128)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4700, file: !4701, line: 58, baseType: !4317, size: 64, offset: 192)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4700, file: !4701, line: 59, baseType: !4708, size: 64, offset: 256)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!369, !4320, !4326}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4700, file: !4701, line: 61, baseType: !4712, size: 64, offset: 320)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DISubroutineType(types: !4714)
!4714 = !{null, !4698}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4700, file: !4701, line: 62, baseType: !4328, size: 64, offset: 384)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4700, file: !4701, line: 64, baseType: !4337, size: 64, offset: 448)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4700, file: !4701, line: 66, baseType: !4172, size: 64, offset: 512)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4700, file: !4701, line: 67, baseType: !4719, size: 64, offset: 576)
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = !DISubroutineType(types: !4721)
!4721 = !{!1696, !4320}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4700, file: !4701, line: 69, baseType: !4723, size: 64, offset: 640)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = !DISubroutineType(types: !4725)
!4725 = !{null, !4320, !4204, !4205}
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4700, file: !4701, line: 71, baseType: !4332, size: 64, offset: 704)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !285, file: !120, line: 785, baseType: !421, size: 64, offset: 5440)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !285, file: !120, line: 787, baseType: !4328, size: 64, offset: 5504)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !285, file: !120, line: 788, baseType: !4730, size: 64, offset: 5568)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !120, line: 46, flags: DIFlagFwdDecl)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !285, file: !120, line: 789, baseType: !4733, size: 64, offset: 5632)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !120, line: 48, flags: DIFlagFwdDecl)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !285, file: !120, line: 791, baseType: !4736, size: 64, offset: 5696)
!4736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !120, line: 597, size: 128, elements: !4738)
!4738 = !{!4739, !4740, !4741, !4742, !4743}
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4737, file: !120, line: 598, baseType: !142, size: 32)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4737, file: !120, line: 599, baseType: !151, size: 32, offset: 32)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4737, file: !120, line: 600, baseType: !156, size: 32, offset: 64)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4737, file: !120, line: 601, baseType: !787, size: 8, offset: 96)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4737, file: !120, line: 602, baseType: !787, size: 8, offset: 104)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !285, file: !120, line: 793, baseType: !161, size: 32, offset: 5760)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !285, file: !120, line: 795, baseType: !787, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !285, file: !120, line: 796, baseType: !787, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !285, file: !120, line: 797, baseType: !787, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !285, file: !120, line: 798, baseType: !787, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !285, file: !120, line: 799, baseType: !787, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !266, file: !220, line: 73, baseType: !4751, size: 256, offset: 128)
!4751 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !266, file: !220, line: 66, size: 256, elements: !4752)
!4752 = !{!4753, !4754, !4755}
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4751, file: !220, line: 68, baseType: !253, size: 128)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !4751, file: !220, line: 70, baseType: !245, size: 64, offset: 128)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4751, file: !220, line: 72, baseType: !303, size: 32, offset: 192)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !266, file: !220, line: 76, baseType: !4757, size: 64, offset: 384)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4759)
!4759 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !4760, line: 42, flags: DIFlagFwdDecl)
!4760 = !DIFile(filename: "./include/drm/drm_legacy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0a48cbf735602b48f7f8b8e0cbee53a7")
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !266, file: !220, line: 88, baseType: !245, size: 64, offset: 448)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !266, file: !220, line: 98, baseType: !4763, size: 64, offset: 512)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !4765, line: 77, size: 640, elements: !4766)
!4765 = !DIFile(filename: "./include/drm/drm_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f20734895d003ad7da48316ffd72e54c")
!4766 = !{!4767, !4768, !4769, !4770, !4771, !4772, !4773}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4764, file: !4765, line: 79, baseType: !135, size: 32)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4764, file: !4765, line: 80, baseType: !135, size: 32, offset: 32)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !4764, file: !4765, line: 81, baseType: !284, size: 64, offset: 64)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4764, file: !4765, line: 82, baseType: !265, size: 64, offset: 128)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_root", scope: !4764, file: !4765, line: 84, baseType: !484, size: 64, offset: 192)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !4764, file: !4765, line: 86, baseType: !253, size: 128, offset: 256)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_lock", scope: !4764, file: !4765, line: 87, baseType: !707, size: 256, offset: 384)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !266, file: !220, line: 107, baseType: !4763, size: 64, offset: 576)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !266, file: !220, line: 110, baseType: !4763, size: 64, offset: 640)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !266, file: !220, line: 117, baseType: !787, size: 8, offset: 704)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !266, file: !220, line: 125, baseType: !4778, size: 64, offset: 768)
!4778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!4779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !4780, line: 65, size: 1280, elements: !4781)
!4780 = !DIFile(filename: "./include/drm/drm_auth.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10e944a391afc2612335b30db18d0dee")
!4781 = !{!4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793}
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4779, file: !4780, line: 66, baseType: !270, size: 32)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4779, file: !4780, line: 67, baseType: !265, size: 64, offset: 64)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !4779, file: !4780, line: 72, baseType: !369, size: 64, offset: 128)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "unique_len", scope: !4779, file: !4780, line: 77, baseType: !135, size: 32, offset: 192)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "magic_map", scope: !4779, file: !4780, line: 82, baseType: !1260, size: 192, offset: 256)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !4779, file: !4780, line: 83, baseType: !245, size: 64, offset: 448)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "lessor", scope: !4779, file: !4780, line: 99, baseType: !4778, size: 64, offset: 512)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_id", scope: !4779, file: !4780, line: 107, baseType: !135, size: 32, offset: 576)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_list", scope: !4779, file: !4780, line: 116, baseType: !253, size: 128, offset: 640)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "lessees", scope: !4779, file: !4780, line: 128, baseType: !253, size: 128, offset: 768)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "leases", scope: !4779, file: !4780, line: 139, baseType: !1260, size: 192, offset: 896)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_idr", scope: !4779, file: !4780, line: 147, baseType: !1260, size: 192, offset: 1088)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !266, file: !220, line: 135, baseType: !518, size: 32, offset: 832)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !266, file: !220, line: 143, baseType: !787, size: 8, offset: 864)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !266, file: !220, line: 146, baseType: !449, size: 64, offset: 896)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !266, file: !220, line: 149, baseType: !369, size: 64, offset: 960)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !266, file: !220, line: 159, baseType: !707, size: 256, offset: 1024)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !266, file: !220, line: 166, baseType: !707, size: 256, offset: 1280)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !266, file: !220, line: 174, baseType: !279, size: 32, offset: 1536)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !266, file: !220, line: 177, baseType: !707, size: 256, offset: 1600)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !266, file: !220, line: 183, baseType: !253, size: 128, offset: 1856)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !266, file: !220, line: 191, baseType: !253, size: 128, offset: 1984)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !266, file: !220, line: 198, baseType: !707, size: 256, offset: 2112)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !266, file: !220, line: 205, baseType: !253, size: 128, offset: 2368)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !266, file: !220, line: 220, baseType: !787, size: 8, offset: 2496)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !266, file: !220, line: 230, baseType: !4808, size: 64, offset: 2560)
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4809, size: 64)
!4809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !4810, line: 91, size: 2432, elements: !4811)
!4810 = !DIFile(filename: "./include/drm/drm_vblank.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03c3f5f08fd7c156883238a0e593b6d6")
!4811 = !{!4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4862, !4863, !4885, !4886}
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4809, file: !4810, line: 95, baseType: !265, size: 64)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !4809, file: !4810, line: 99, baseType: !1242, size: 192, offset: 64)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "disable_timer", scope: !4809, file: !4810, line: 106, baseType: !949, size: 320, offset: 256)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "seqlock", scope: !4809, file: !4810, line: 111, baseType: !2186, size: 64, offset: 576)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4809, file: !4810, line: 127, baseType: !713, size: 64, offset: 640)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4809, file: !4810, line: 131, baseType: !1396, size: 64, offset: 704)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4809, file: !4810, line: 138, baseType: !279, size: 32, offset: 768)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !4809, file: !4810, line: 142, baseType: !518, size: 32, offset: 800)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !4809, file: !4810, line: 162, baseType: !518, size: 32, offset: 832)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "inmodeset", scope: !4809, file: !4810, line: 171, baseType: !33, size: 32, offset: 864)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4809, file: !4810, line: 176, baseType: !33, size: 32, offset: 896)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "framedur_ns", scope: !4809, file: !4810, line: 182, baseType: !135, size: 32, offset: 928)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "linedur_ns", scope: !4809, file: !4810, line: 188, baseType: !135, size: 32, offset: 960)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "hwmode", scope: !4809, file: !4810, line: 199, baseType: !4826, size: 960, offset: 1024)
!4826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !168, line: 252, size: 960, elements: !4827)
!4827 = !{!4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !4826, file: !168, line: 258, baseType: !135, size: 32)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "hdisplay", scope: !4826, file: !168, line: 259, baseType: !337, size: 16, offset: 32)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_start", scope: !4826, file: !168, line: 260, baseType: !337, size: 16, offset: 48)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_end", scope: !4826, file: !168, line: 261, baseType: !337, size: 16, offset: 64)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "htotal", scope: !4826, file: !168, line: 262, baseType: !337, size: 16, offset: 80)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "hskew", scope: !4826, file: !168, line: 263, baseType: !337, size: 16, offset: 96)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "vdisplay", scope: !4826, file: !168, line: 264, baseType: !337, size: 16, offset: 112)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_start", scope: !4826, file: !168, line: 265, baseType: !337, size: 16, offset: 128)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_end", scope: !4826, file: !168, line: 266, baseType: !337, size: 16, offset: 144)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "vtotal", scope: !4826, file: !168, line: 267, baseType: !337, size: 16, offset: 160)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "vscan", scope: !4826, file: !168, line: 268, baseType: !337, size: 16, offset: 176)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4826, file: !168, line: 303, baseType: !518, size: 32, offset: 192)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_clock", scope: !4826, file: !168, line: 320, baseType: !135, size: 32, offset: 224)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hdisplay", scope: !4826, file: !168, line: 321, baseType: !337, size: 16, offset: 256)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_start", scope: !4826, file: !168, line: 322, baseType: !337, size: 16, offset: 272)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_end", scope: !4826, file: !168, line: 323, baseType: !337, size: 16, offset: 288)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_start", scope: !4826, file: !168, line: 324, baseType: !337, size: 16, offset: 304)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_end", scope: !4826, file: !168, line: 325, baseType: !337, size: 16, offset: 320)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_htotal", scope: !4826, file: !168, line: 326, baseType: !337, size: 16, offset: 336)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hskew", scope: !4826, file: !168, line: 327, baseType: !337, size: 16, offset: 352)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vdisplay", scope: !4826, file: !168, line: 328, baseType: !337, size: 16, offset: 368)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_start", scope: !4826, file: !168, line: 329, baseType: !337, size: 16, offset: 384)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_end", scope: !4826, file: !168, line: 330, baseType: !337, size: 16, offset: 400)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_start", scope: !4826, file: !168, line: 331, baseType: !337, size: 16, offset: 416)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_end", scope: !4826, file: !168, line: 332, baseType: !337, size: 16, offset: 432)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vtotal", scope: !4826, file: !168, line: 333, baseType: !337, size: 16, offset: 448)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !4826, file: !168, line: 341, baseType: !337, size: 16, offset: 464)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !4826, file: !168, line: 349, baseType: !337, size: 16, offset: 480)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4826, file: !168, line: 378, baseType: !327, size: 8, offset: 496)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "expose_to_userspace", scope: !4826, file: !168, line: 389, baseType: !787, size: 8, offset: 504)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4826, file: !168, line: 396, baseType: !253, size: 128, offset: 512)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4826, file: !168, line: 403, baseType: !24, size: 256, offset: 640)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4826, file: !168, line: 411, baseType: !167, size: 32, offset: 896)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !4826, file: !168, line: 418, baseType: !210, size: 32, offset: 928)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4809, file: !4810, line: 207, baseType: !787, size: 8, offset: 1984)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !4809, file: !4810, line: 212, baseType: !4864, size: 64, offset: 2048)
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_worker", file: !4866, line: 123, size: 448, elements: !4867)
!4866 = !DIFile(filename: "./include/linux/kthread.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6109a4682a3e6e690ff3777556e2c944")
!4867 = !{!4868, !4869, !4870, !4871, !4872, !4873}
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4865, file: !4866, line: 124, baseType: !33, size: 32)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4865, file: !4866, line: 125, baseType: !665, size: 32, offset: 32)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !4865, file: !4866, line: 126, baseType: !253, size: 128, offset: 64)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_work_list", scope: !4865, file: !4866, line: 127, baseType: !253, size: 128, offset: 192)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4865, file: !4866, line: 128, baseType: !1276, size: 64, offset: 320)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "current_work", scope: !4865, file: !4866, line: 129, baseType: !4874, size: 64, offset: 384)
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4875, size: 64)
!4875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_work", file: !4866, line: 132, size: 320, elements: !4876)
!4876 = !{!4877, !4878, !4883, !4884}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4875, file: !4866, line: 133, baseType: !253, size: 128)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4875, file: !4866, line: 134, baseType: !4879, size: 64, offset: 128)
!4879 = !DIDerivedType(tag: DW_TAG_typedef, name: "kthread_work_func_t", file: !4866, line: 116, baseType: !4880)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DISubroutineType(types: !4882)
!4882 = !{null, !4874}
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !4875, file: !4866, line: 135, baseType: !4864, size: 64, offset: 192)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "canceling", scope: !4875, file: !4866, line: 137, baseType: !135, size: 32, offset: 256)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !4809, file: !4810, line: 218, baseType: !253, size: 128, offset: 2112)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "work_wait_queue", scope: !4809, file: !4810, line: 225, baseType: !1242, size: 192, offset: 2240)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !266, file: !220, line: 237, baseType: !303, size: 32, offset: 2624)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !266, file: !220, line: 242, baseType: !303, size: 32, offset: 2656)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !266, file: !220, line: 265, baseType: !518, size: 32, offset: 2688)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !266, file: !220, line: 268, baseType: !253, size: 128, offset: 2752)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !266, file: !220, line: 276, baseType: !303, size: 32, offset: 2880)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !266, file: !220, line: 279, baseType: !33, size: 32, offset: 2912)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !266, file: !220, line: 282, baseType: !4894, size: 8704, offset: 2944)
!4894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !4895, line: 375, size: 8704, elements: !4896)
!4895 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3fe2bd3e9391801689324df8a16c9607")
!4896 = !{!4897, !4898, !4917, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124, !5125, !5126, !5127, !5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5145, !5146, !5147, !5148, !5149, !5150, !5151, !5152, !5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171, !5172}
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4894, file: !4895, line: 386, baseType: !707, size: 256)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !4894, file: !4895, line: 396, baseType: !4899, size: 448, offset: 256)
!4899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !4900, line: 85, size: 448, elements: !4901)
!4900 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90e902ea14584677125d9e33023828e6")
!4901 = !{!4902, !4916}
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4899, file: !4900, line: 89, baseType: !4903, size: 320)
!4903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !4904, line: 47, size: 320, elements: !4905)
!4904 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!4905 = !{!4906, !4907}
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4903, file: !4904, line: 48, baseType: !707, size: 256)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4903, file: !4904, line: 49, baseType: !4908, size: 64, offset: 256)
!4908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4909, size: 64)
!4909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !4904, line: 55, size: 192, elements: !4910)
!4910 = !{!4911, !4912, !4913, !4914, !4915}
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4909, file: !4904, line: 56, baseType: !1276, size: 64)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !4909, file: !4904, line: 57, baseType: !419, size: 64, offset: 64)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !4909, file: !4904, line: 58, baseType: !33, size: 32, offset: 128)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !4909, file: !4904, line: 59, baseType: !339, size: 16, offset: 160)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !4909, file: !4904, line: 60, baseType: !339, size: 16, offset: 176)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4899, file: !4900, line: 95, baseType: !253, size: 128, offset: 320)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !4894, file: !4895, line: 406, baseType: !4918, size: 64, offset: 704)
!4918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4919, size: 64)
!4919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !4900, line: 46, size: 512, elements: !4920)
!4920 = !{!4921, !4922, !4924, !4927, !4928, !4929}
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !4919, file: !4900, line: 48, baseType: !4909, size: 192)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !4919, file: !4900, line: 55, baseType: !4923, size: 64, offset: 192)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4899, size: 64)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "stack_depot", scope: !4919, file: !4900, line: 61, baseType: !4925, size: 32, offset: 256)
!4925 = !DIDerivedType(tag: DW_TAG_typedef, name: "depot_stack_handle_t", file: !4926, line: 27, baseType: !518)
!4926 = !DIFile(filename: "./include/linux/stackdepot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "787fdf2c1a48da25b4d7ecc2db077a40")
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !4919, file: !4900, line: 66, baseType: !253, size: 128, offset: 320)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !4919, file: !4900, line: 71, baseType: !787, size: 8, offset: 448)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !4919, file: !4900, line: 74, baseType: !787, size: 8, offset: 456)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !4894, file: !4895, line: 414, baseType: !707, size: 256, offset: 768)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !4894, file: !4895, line: 422, baseType: !1260, size: 192, offset: 1024)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !4894, file: !4895, line: 430, baseType: !1260, size: 192, offset: 1216)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !4894, file: !4895, line: 433, baseType: !707, size: 256, offset: 1408)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !4894, file: !4895, line: 435, baseType: !135, size: 32, offset: 1664)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !4894, file: !4895, line: 437, baseType: !253, size: 128, offset: 1728)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !4894, file: !4895, line: 443, baseType: !303, size: 32, offset: 1856)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !4894, file: !4895, line: 448, baseType: !135, size: 32, offset: 1888)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !4894, file: !4895, line: 452, baseType: !4939, size: 128, offset: 1920)
!4939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1261, line: 246, size: 128, elements: !4940)
!4940 = !{!4941}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4939, file: !1261, line: 247, baseType: !1264, size: 128)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !4894, file: !4895, line: 460, baseType: !253, size: 128, offset: 2048)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !4894, file: !4895, line: 470, baseType: !2914, size: 64, offset: 2176)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !4894, file: !4895, line: 474, baseType: !967, size: 256, offset: 2240)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !4894, file: !4895, line: 482, baseType: !135, size: 32, offset: 2496)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !4894, file: !4895, line: 490, baseType: !253, size: 128, offset: 2560)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !4894, file: !4895, line: 499, baseType: !135, size: 32, offset: 2688)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !4894, file: !4895, line: 506, baseType: !253, size: 128, offset: 2752)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !4894, file: !4895, line: 514, baseType: !135, size: 32, offset: 2880)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !4894, file: !4895, line: 521, baseType: !253, size: 128, offset: 2944)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !4894, file: !4895, line: 530, baseType: !253, size: 128, offset: 3072)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !4894, file: !4895, line: 539, baseType: !253, size: 128, offset: 3200)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !4894, file: !4895, line: 541, baseType: !135, size: 32, offset: 3328)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !4894, file: !4895, line: 541, baseType: !135, size: 32, offset: 3360)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !4894, file: !4895, line: 542, baseType: !135, size: 32, offset: 3392)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !4894, file: !4895, line: 542, baseType: !135, size: 32, offset: 3424)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4894, file: !4895, line: 543, baseType: !4958, size: 64, offset: 3456)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4960)
!4960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !4895, line: 47, size: 576, elements: !4961)
!4961 = !{!4962, !5026, !5033, !5037, !5043, !5049, !5053, !5057, !5061}
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !4960, file: !4895, line: 83, baseType: !4963, size: 64)
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64)
!4964 = !DISubroutineType(types: !4965)
!4965 = !{!4966, !265, !4968, !5010}
!4966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64)
!4967 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !4895, line: 83, flags: DIFlagFwdDecl)
!4968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4969, size: 64)
!4969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !4765, line: 166, size: 2944, elements: !4970)
!4970 = !{!4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003}
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !4969, file: !4765, line: 176, baseType: !787, size: 8)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !4969, file: !4765, line: 183, baseType: !787, size: 8, offset: 8)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "universal_planes", scope: !4969, file: !4765, line: 191, baseType: !787, size: 8, offset: 16)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "atomic", scope: !4969, file: !4765, line: 194, baseType: !787, size: 8, offset: 24)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_allowed", scope: !4969, file: !4765, line: 202, baseType: !787, size: 8, offset: 32)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_connectors", scope: !4969, file: !4765, line: 209, baseType: !787, size: 8, offset: 40)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "was_master", scope: !4969, file: !4765, line: 220, baseType: !787, size: 8, offset: 48)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "is_master", scope: !4969, file: !4765, line: 231, baseType: !787, size: 8, offset: 56)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "supports_virtualized_cursor_plane", scope: !4969, file: !4765, line: 243, baseType: !787, size: 8, offset: 64)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !4969, file: !4765, line: 268, baseType: !4778, size: 64, offset: 128)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "master_lookup_lock", scope: !4969, file: !4765, line: 271, baseType: !303, size: 32, offset: 192)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4969, file: !4765, line: 281, baseType: !1232, size: 64, offset: 256)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "client_id", scope: !4969, file: !4765, line: 284, baseType: !522, size: 64, offset: 320)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4969, file: !4765, line: 287, baseType: !4985, size: 32, offset: 384)
!4985 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_magic_t", file: !4986, line: 85, baseType: !33)
!4986 = !DIFile(filename: "./include/uapi/drm/drm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9daee414dd46c3bd0bb57211914f5e3a")
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "lhead", scope: !4969, file: !4765, line: 295, baseType: !253, size: 128, offset: 448)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4969, file: !4765, line: 298, baseType: !4763, size: 64, offset: 576)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !4969, file: !4765, line: 306, baseType: !1260, size: 192, offset: 640)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "table_lock", scope: !4969, file: !4765, line: 309, baseType: !303, size: 32, offset: 832)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "syncobj_idr", scope: !4969, file: !4765, line: 312, baseType: !1260, size: 192, offset: 896)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "syncobj_table_lock", scope: !4969, file: !4765, line: 314, baseType: !303, size: 32, offset: 1088)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "filp", scope: !4969, file: !4765, line: 317, baseType: !1591, size: 64, offset: 1152)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !4969, file: !4765, line: 325, baseType: !245, size: 64, offset: 1216)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "fbs", scope: !4969, file: !4765, line: 336, baseType: !253, size: 128, offset: 1280)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "fbs_lock", scope: !4969, file: !4765, line: 339, baseType: !707, size: 256, offset: 1408)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "blobs", scope: !4969, file: !4765, line: 349, baseType: !253, size: 128, offset: 1664)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "event_wait", scope: !4969, file: !4765, line: 352, baseType: !1242, size: 192, offset: 1792)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "pending_event_list", scope: !4969, file: !4765, line: 363, baseType: !253, size: 128, offset: 1984)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !4969, file: !4765, line: 373, baseType: !253, size: 128, offset: 2112)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "event_space", scope: !4969, file: !4765, line: 382, baseType: !135, size: 32, offset: 2240)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "event_read_lock", scope: !4969, file: !4765, line: 385, baseType: !707, size: 256, offset: 2304)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "prime", scope: !4969, file: !4765, line: 392, baseType: !5004, size: 384, offset: 2560)
!5004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_prime_file_private", file: !5005, line: 45, size: 384, elements: !5006)
!5005 = !DIFile(filename: "./include/drm/drm_prime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "95f128be875629bb4216af76254b38de")
!5006 = !{!5007, !5008, !5009}
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5004, file: !5005, line: 47, baseType: !707, size: 256)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "dmabufs", scope: !5004, file: !5005, line: 48, baseType: !1450, size: 64, offset: 256)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !5004, file: !5005, line: 49, baseType: !1450, size: 64, offset: 320)
!5010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5011, size: 64)
!5011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5012)
!5012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !5013, line: 703, size: 832, elements: !5014)
!5013 = !DIFile(filename: "./include/uapi/drm/drm_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "357a7211aa80668185b31e7330dddd63")
!5014 = !{!5015, !5016, !5017, !5018, !5019, !5020, !5022, !5023, !5024}
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !5012, file: !5013, line: 705, baseType: !519, size: 32)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5012, file: !5013, line: 707, baseType: !519, size: 32, offset: 32)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5012, file: !5013, line: 709, baseType: !519, size: 32, offset: 64)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !5012, file: !5013, line: 714, baseType: !519, size: 32, offset: 96)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5012, file: !5013, line: 719, baseType: !519, size: 32, offset: 128)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !5012, file: !5013, line: 725, baseType: !5021, size: 128, offset: 160)
!5021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, size: 128, elements: !937)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !5012, file: !5013, line: 727, baseType: !5021, size: 128, offset: 288)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !5012, file: !5013, line: 729, baseType: !5021, size: 128, offset: 416)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !5012, file: !5013, line: 735, baseType: !5025, size: 256, offset: 576)
!5025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 256, elements: !937)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !4960, file: !4895, line: 98, baseType: !5027, size: 64, offset: 64)
!5027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5028, size: 64)
!5028 = !DISubroutineType(types: !5029)
!5029 = !{!5030, !5010}
!5030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5031, size: 64)
!5031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5032)
!5032 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !4895, line: 38, flags: DIFlagFwdDecl)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !4960, file: !4895, line: 114, baseType: !5034, size: 64, offset: 128)
!5034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5035, size: 64)
!5035 = !DISubroutineType(types: !5036)
!5036 = !{null, !265}
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !4960, file: !4895, line: 124, baseType: !5038, size: 64, offset: 192)
!5038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5039, size: 64)
!5039 = !DISubroutineType(types: !5040)
!5040 = !{!167, !265, !5041}
!5041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5042, size: 64)
!5042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4826)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !4960, file: !4895, line: 201, baseType: !5044, size: 64, offset: 256)
!5044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5045, size: 64)
!5045 = !DISubroutineType(types: !5046)
!5046 = !{!135, !265, !5047}
!5047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5048, size: 64)
!5048 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !4895, line: 36, flags: DIFlagFwdDecl)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !4960, file: !4895, line: 283, baseType: !5050, size: 64, offset: 320)
!5050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5051, size: 64)
!5051 = !DISubroutineType(types: !5052)
!5052 = !{!135, !265, !5047, !787}
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !4960, file: !4895, line: 302, baseType: !5054, size: 64, offset: 384)
!5054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5055, size: 64)
!5055 = !DISubroutineType(types: !5056)
!5056 = !{!5047, !265}
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !4960, file: !4895, line: 323, baseType: !5058, size: 64, offset: 448)
!5058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5059, size: 64)
!5059 = !DISubroutineType(types: !5060)
!5060 = !{null, !5047}
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !4960, file: !4895, line: 338, baseType: !5058, size: 64, offset: 512)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !4894, file: !4895, line: 546, baseType: !787, size: 8, offset: 3520)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !4894, file: !4895, line: 547, baseType: !787, size: 8, offset: 3528)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !4894, file: !4895, line: 548, baseType: !787, size: 8, offset: 3536)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !4894, file: !4895, line: 549, baseType: !1024, size: 704, offset: 3584)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !4894, file: !4895, line: 557, baseType: !707, size: 256, offset: 4288)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !4894, file: !4895, line: 565, baseType: !253, size: 128, offset: 4544)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !4894, file: !4895, line: 573, baseType: !5069, size: 64, offset: 4672)
!5069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5070, size: 64)
!5070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !5071, line: 80, size: 960, elements: !5072)
!5071 = !DIFile(filename: "./include/drm/drm_property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "320ae008033d09c99df86eb5eb8877c7")
!5072 = !{!5073, !5074, !5098, !5099, !5100, !5101, !5103, !5104}
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5070, file: !5071, line: 84, baseType: !253, size: 128)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5070, file: !5071, line: 89, baseType: !5075, size: 256, offset: 128)
!5075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_object", file: !5076, line: 55, size: 256, elements: !5077)
!5076 = !DIFile(filename: "./include/drm/drm_mode_object.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ffaf2d776d1d6cf92a08dd44b890967f")
!5077 = !{!5078, !5079, !5080, !5092, !5093}
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5075, file: !5076, line: 56, baseType: !1935, size: 32)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5075, file: !5076, line: 57, baseType: !1935, size: 32, offset: 32)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5075, file: !5076, line: 58, baseType: !5081, size: 64, offset: 64)
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_object_properties", file: !5076, line: 67, size: 3136, elements: !5083)
!5083 = !{!5084, !5085, !5089}
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5082, file: !5076, line: 73, baseType: !135, size: 32)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5082, file: !5076, line: 82, baseType: !5086, size: 1536, offset: 64)
!5086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5069, size: 1536, elements: !5087)
!5087 = !{!5088}
!5088 = !DISubrange(count: 24)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !5082, file: !5076, line: 106, baseType: !5090, size: 1536, offset: 1600)
!5090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5091, size: 1536, elements: !5087)
!5091 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !254, line: 113, baseType: !522)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5075, file: !5076, line: 59, baseType: !270, size: 32, offset: 128)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "free_cb", scope: !5075, file: !5076, line: 60, baseType: !5094, size: 64, offset: 192)
!5094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5095, size: 64)
!5095 = !DISubroutineType(types: !5096)
!5096 = !{null, !5097}
!5097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5070, file: !5071, line: 166, baseType: !1935, size: 32, offset: 384)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5070, file: !5071, line: 171, baseType: !24, size: 256, offset: 416)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "num_values", scope: !5070, file: !5071, line: 176, baseType: !1935, size: 32, offset: 672)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !5070, file: !5071, line: 184, baseType: !5102, size: 64, offset: 704)
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5091, size: 64)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5070, file: !5071, line: 189, baseType: !265, size: 64, offset: 768)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "enum_list", scope: !5070, file: !5071, line: 197, baseType: !253, size: 128, offset: 832)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !4894, file: !4895, line: 578, baseType: !5069, size: 64, offset: 4736)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !4894, file: !4895, line: 583, baseType: !5069, size: 64, offset: 4800)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !4894, file: !4895, line: 589, baseType: !5069, size: 64, offset: 4864)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !4894, file: !4895, line: 594, baseType: !5069, size: 64, offset: 4928)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !4894, file: !4895, line: 599, baseType: !5069, size: 64, offset: 4992)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !4894, file: !4895, line: 604, baseType: !5069, size: 64, offset: 5056)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !4894, file: !4895, line: 609, baseType: !5069, size: 64, offset: 5120)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !4894, file: !4895, line: 614, baseType: !5069, size: 64, offset: 5184)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !4894, file: !4895, line: 619, baseType: !5069, size: 64, offset: 5248)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !4894, file: !4895, line: 624, baseType: !5069, size: 64, offset: 5312)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !4894, file: !4895, line: 629, baseType: !5069, size: 64, offset: 5376)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !4894, file: !4895, line: 634, baseType: !5069, size: 64, offset: 5440)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !4894, file: !4895, line: 639, baseType: !5069, size: 64, offset: 5504)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !4894, file: !4895, line: 644, baseType: !5069, size: 64, offset: 5568)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !4894, file: !4895, line: 649, baseType: !5069, size: 64, offset: 5632)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !4894, file: !4895, line: 655, baseType: !5069, size: 64, offset: 5696)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !4894, file: !4895, line: 660, baseType: !5069, size: 64, offset: 5760)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !4894, file: !4895, line: 669, baseType: !5069, size: 64, offset: 5824)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !4894, file: !4895, line: 675, baseType: !5069, size: 64, offset: 5888)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !4894, file: !4895, line: 681, baseType: !5069, size: 64, offset: 5952)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !4894, file: !4895, line: 686, baseType: !5069, size: 64, offset: 6016)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !4894, file: !4895, line: 692, baseType: !5069, size: 64, offset: 6080)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !4894, file: !4895, line: 697, baseType: !5069, size: 64, offset: 6144)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !4894, file: !4895, line: 703, baseType: !5069, size: 64, offset: 6208)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !4894, file: !4895, line: 709, baseType: !5069, size: 64, offset: 6272)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !4894, file: !4895, line: 714, baseType: !5069, size: 64, offset: 6336)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_tv_mode_property", scope: !4894, file: !4895, line: 722, baseType: !5069, size: 64, offset: 6400)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !4894, file: !4895, line: 728, baseType: !5069, size: 64, offset: 6464)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !4894, file: !4895, line: 734, baseType: !5069, size: 64, offset: 6528)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !4894, file: !4895, line: 739, baseType: !5069, size: 64, offset: 6592)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !4894, file: !4895, line: 744, baseType: !5069, size: 64, offset: 6656)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !4894, file: !4895, line: 749, baseType: !5069, size: 64, offset: 6720)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !4894, file: !4895, line: 754, baseType: !5069, size: 64, offset: 6784)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !4894, file: !4895, line: 759, baseType: !5069, size: 64, offset: 6848)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !4894, file: !4895, line: 764, baseType: !5069, size: 64, offset: 6912)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !4894, file: !4895, line: 769, baseType: !5069, size: 64, offset: 6976)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !4894, file: !4895, line: 774, baseType: !5069, size: 64, offset: 7040)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !4894, file: !4895, line: 778, baseType: !5069, size: 64, offset: 7104)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !4894, file: !4895, line: 784, baseType: !5069, size: 64, offset: 7168)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !4894, file: !4895, line: 789, baseType: !5069, size: 64, offset: 7232)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !4894, file: !4895, line: 794, baseType: !5069, size: 64, offset: 7296)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !4894, file: !4895, line: 799, baseType: !5069, size: 64, offset: 7360)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !4894, file: !4895, line: 804, baseType: !5069, size: 64, offset: 7424)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !4894, file: !4895, line: 810, baseType: !5069, size: 64, offset: 7488)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !4894, file: !4895, line: 816, baseType: !5069, size: 64, offset: 7552)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !4894, file: !4895, line: 821, baseType: !5069, size: 64, offset: 7616)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !4894, file: !4895, line: 827, baseType: !5069, size: 64, offset: 7680)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !4894, file: !4895, line: 832, baseType: !5069, size: 64, offset: 7744)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !4894, file: !4895, line: 839, baseType: !5069, size: 64, offset: 7808)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !4894, file: !4895, line: 846, baseType: !5069, size: 64, offset: 7872)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !4894, file: !4895, line: 853, baseType: !5069, size: 64, offset: 7936)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !4894, file: !4895, line: 861, baseType: !5069, size: 64, offset: 8000)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !4894, file: !4895, line: 869, baseType: !5069, size: 64, offset: 8064)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !4894, file: !4895, line: 876, baseType: !5069, size: 64, offset: 8128)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !4894, file: !4895, line: 882, baseType: !5069, size: 64, offset: 8192)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !4894, file: !4895, line: 888, baseType: !5069, size: 64, offset: 8256)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !4894, file: !4895, line: 891, baseType: !1935, size: 32, offset: 8320)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !4894, file: !4895, line: 891, baseType: !1935, size: 32, offset: 8352)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !4894, file: !4895, line: 899, baseType: !787, size: 8, offset: 8384)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !4894, file: !4895, line: 913, baseType: !787, size: 8, offset: 8392)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !4894, file: !4895, line: 919, baseType: !787, size: 8, offset: 8400)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "fb_modifiers_not_supported", scope: !4894, file: !4895, line: 929, baseType: !787, size: 8, offset: 8408)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !4894, file: !4895, line: 937, baseType: !787, size: 8, offset: 8416)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !4894, file: !4895, line: 943, baseType: !5069, size: 64, offset: 8448)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !4894, file: !4895, line: 946, baseType: !1935, size: 32, offset: 8512)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !4894, file: !4895, line: 946, baseType: !1935, size: 32, offset: 8544)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !4894, file: !4895, line: 955, baseType: !5047, size: 64, offset: 8576)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4894, file: !4895, line: 957, baseType: !5173, size: 64, offset: 8640)
!5173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5174, size: 64)
!5174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5175)
!5175 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !4895, line: 957, flags: DIFlagFwdDecl)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !266, file: !220, line: 285, baseType: !707, size: 256, offset: 11648)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !266, file: !220, line: 288, baseType: !1260, size: 192, offset: 11904)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !266, file: !220, line: 291, baseType: !5179, size: 64, offset: 12096)
!5179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5180, size: 64)
!5180 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !220, line: 16, flags: DIFlagFwdDecl)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !266, file: !220, line: 294, baseType: !5182, size: 64, offset: 12160)
!5182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5183, size: 64)
!5183 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !220, line: 17, flags: DIFlagFwdDecl)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !266, file: !220, line: 304, baseType: !219, size: 32, offset: 12224)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !266, file: !220, line: 312, baseType: !5186, size: 64, offset: 12288)
!5186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5187, size: 64)
!5187 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !220, line: 18, flags: DIFlagFwdDecl)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !266, file: !220, line: 319, baseType: !707, size: 256, offset: 12352)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !266, file: !220, line: 327, baseType: !253, size: 128, offset: 12608)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !250, file: !2, line: 42, baseType: !292, size: 64, offset: 192)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !250, file: !2, line: 43, baseType: !416, size: 64, offset: 256)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !247, file: !2, line: 55, baseType: !3124, align: 64, offset: 320)
!5193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5194, size: 64)
!5194 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !257)
!5195 = !{!0, !7, !12, !17, !22, !27, !5196, !5198, !5203, !5205, !5207, !5209, !5211, !5213, !5215}
!5196 = !DIGlobalVariableExpression(var: !5197, expr: !DIExpression())
!5197 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___drmm_add_action_or_reset306", scope: !29, file: !2, line: 177, type: !245, isLocal: true, isDefinition: true)
!5198 = !DIGlobalVariableExpression(var: !5199, expr: !DIExpression())
!5199 = distinct !DIGlobalVariable(scope: null, file: !2, line: 195, type: !5200, isLocal: true, isDefinition: true)
!5200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !5201)
!5201 = !{!5202}
!5202 = !DISubrange(count: 40)
!5203 = !DIGlobalVariableExpression(var: !5204, expr: !DIExpression())
!5204 = distinct !DIGlobalVariable(scope: null, file: !2, line: 199, type: !2408, isLocal: true, isDefinition: true)
!5205 = !DIGlobalVariableExpression(var: !5206, expr: !DIExpression())
!5206 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drmm_kmalloc307", scope: !29, file: !2, line: 205, type: !245, isLocal: true, isDefinition: true)
!5207 = !DIGlobalVariableExpression(var: !5208, expr: !DIExpression())
!5208 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drmm_kstrdup308", scope: !29, file: !2, line: 231, type: !245, isLocal: true, isDefinition: true)
!5209 = !DIGlobalVariableExpression(var: !5210, expr: !DIExpression())
!5210 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drmm_kfree309", scope: !29, file: !2, line: 265, type: !245, isLocal: true, isDefinition: true)
!5211 = !DIGlobalVariableExpression(var: !5212, expr: !DIExpression())
!5212 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___drmm_mutex_release310", scope: !29, file: !2, line: 273, type: !245, isLocal: true, isDefinition: true)
!5213 = !DIGlobalVariableExpression(var: !5214, expr: !DIExpression())
!5214 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !9, isLocal: true, isDefinition: true)
!5215 = !DIGlobalVariableExpression(var: !5216, expr: !DIExpression())
!5216 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !9, isLocal: true, isDefinition: true)
!5217 = !{i32 7, !"Dwarf Version", i32 5}
!5218 = !{i32 2, !"Debug Info Version", i32 3}
!5219 = !{i32 1, !"wchar_size", i32 2}
!5220 = !{i32 8, !"cf-protection-branch", i32 1}
!5221 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5222 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5223 = !{i32 1, !"Code Model", i32 2}
!5224 = !{i32 1, !"override-stack-alignment", i32 8}
!5225 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5226 = distinct !DISubprogram(name: "drm_managed_release", scope: !2, file: !2, line: 64, type: !5035, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !5227)
!5227 = !{!5228, !5229, !5230, !5231, !5234, !5236}
!5228 = !DILocalVariable(name: "dev", arg: 1, scope: !5226, file: !2, line: 64, type: !265)
!5229 = !DILocalVariable(name: "dr", scope: !5226, file: !2, line: 66, type: !246)
!5230 = !DILocalVariable(name: "tmp", scope: !5226, file: !2, line: 66, type: !246)
!5231 = !DILocalVariable(name: "__mptr", scope: !5232, file: !2, line: 69, type: !245)
!5232 = distinct !DILexicalBlock(scope: !5233, file: !2, line: 69, column: 2)
!5233 = distinct !DILexicalBlock(scope: !5226, file: !2, line: 69, column: 2)
!5234 = !DILocalVariable(name: "__mptr", scope: !5235, file: !2, line: 69, type: !245)
!5235 = distinct !DILexicalBlock(scope: !5233, file: !2, line: 69, column: 2)
!5236 = !DILocalVariable(name: "__mptr", scope: !5237, file: !2, line: 69, type: !245)
!5237 = distinct !DILexicalBlock(scope: !5238, file: !2, line: 69, column: 2)
!5238 = distinct !DILexicalBlock(scope: !5233, file: !2, line: 69, column: 2)
!5239 = !DILocation(line: 64, column: 45, scope: !5226)
!5240 = !DILocation(line: 66, column: 2, scope: !5226)
!5241 = !DILocation(line: 66, column: 17, scope: !5226)
!5242 = !DILocation(line: 66, column: 22, scope: !5226)
!5243 = !DILocation(line: 68, column: 2, scope: !5226)
!5244 = !DILocation(line: 69, column: 2, scope: !5232)
!5245 = !DILocation(line: 69, column: 2, scope: !5233)
!5246 = !DILocation(line: 69, column: 2, scope: !5235)
!5247 = !DILocation(line: 69, column: 2, scope: !5238)
!5248 = !DILocation(line: 70, column: 3, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5238, file: !2, line: 69, column: 73)
!5250 = !DILocation(line: 73, column: 7, scope: !5251)
!5251 = distinct !DILexicalBlock(scope: !5249, file: !2, line: 73, column: 7)
!5252 = !DILocation(line: 73, column: 11, scope: !5251)
!5253 = !DILocation(line: 73, column: 16, scope: !5251)
!5254 = !DILocation(line: 73, column: 7, scope: !5249)
!5255 = !DILocation(line: 74, column: 4, scope: !5251)
!5256 = !DILocation(line: 74, column: 8, scope: !5251)
!5257 = !DILocation(line: 74, column: 13, scope: !5251)
!5258 = !DILocation(line: 74, column: 21, scope: !5251)
!5259 = !DILocation(line: 74, column: 26, scope: !5251)
!5260 = !DILocation(line: 74, column: 30, scope: !5251)
!5261 = !DILocation(line: 74, column: 35, scope: !5251)
!5262 = !DILocation(line: 74, column: 53, scope: !5251)
!5263 = !DILocation(line: 74, column: 57, scope: !5251)
!5264 = !DILocation(line: 74, column: 42, scope: !5251)
!5265 = !DILocation(line: 76, column: 13, scope: !5249)
!5266 = !DILocation(line: 76, column: 17, scope: !5249)
!5267 = !DILocation(line: 76, column: 22, scope: !5249)
!5268 = !DILocation(line: 76, column: 3, scope: !5249)
!5269 = !DILocation(line: 77, column: 11, scope: !5249)
!5270 = !DILocation(line: 77, column: 3, scope: !5249)
!5271 = !DILocation(line: 78, column: 2, scope: !5249)
!5272 = !DILocation(line: 69, column: 2, scope: !5237)
!5273 = distinct !{!5273, !5245, !5274, !5275, !5276}
!5274 = !DILocation(line: 78, column: 2, scope: !5233)
!5275 = !{!"llvm.loop.mustprogress"}
!5276 = !{!"llvm.loop.unroll.disable"}
!5277 = !DILocation(line: 79, column: 2, scope: !5226)
!5278 = !DILocation(line: 80, column: 1, scope: !5226)
!5279 = !DISubprogram(name: "__drm_dev_dbg", scope: !227, file: !227, line: 411, type: !5280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5280 = !DISubroutineType(types: !5281)
!5281 = !{null, !5282, !4320, !226, !292, null}
!5282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5283, size: 64)
!5283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ddebug", file: !5284, line: 16, size: 448, align: 64, elements: !5285)
!5284 = !DIFile(filename: "./include/linux/dynamic_debug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5870bc31a25115f490bd43a8eae18abb")
!5285 = !{!5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293}
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "modname", scope: !5283, file: !5284, line: 21, baseType: !292, size: 64)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !5283, file: !5284, line: 22, baseType: !292, size: 64, offset: 64)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !5283, file: !5284, line: 23, baseType: !292, size: 64, offset: 128)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !5283, file: !5284, line: 24, baseType: !292, size: 64, offset: 192)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !5283, file: !5284, line: 25, baseType: !33, size: 18, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "class_id", scope: !5283, file: !5284, line: 27, baseType: !33, size: 6, offset: 274, flags: DIFlagBitField, extraData: i64 256)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5283, file: !5284, line: 52, baseType: !33, size: 8, offset: 280, flags: DIFlagBitField, extraData: i64 256)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5283, file: !5284, line: 57, baseType: !5294, size: 128, offset: 320)
!5294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5283, file: !5284, line: 54, size: 128, elements: !5295)
!5295 = !{!5296, !5311}
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_true", scope: !5294, file: !5284, line: 55, baseType: !5297, size: 128)
!5297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_true", file: !1036, line: 359, size: 128, elements: !5298)
!5298 = !{!5299}
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5297, file: !1036, line: 360, baseType: !5300, size: 128)
!5300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !1036, line: 85, size: 128, elements: !5301)
!5301 = !{!5302, !5303}
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5300, file: !1036, line: 86, baseType: !279, size: 32)
!5303 = !DIDerivedType(tag: DW_TAG_member, scope: !5300, file: !1036, line: 101, baseType: !5304, size: 64, offset: 64)
!5304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5300, file: !1036, line: 101, size: 64, elements: !5305)
!5305 = !{!5306, !5307, !5308}
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5304, file: !1036, line: 102, baseType: !419, size: 64)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5304, file: !1036, line: 103, baseType: !1034, size: 64)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5304, file: !1036, line: 104, baseType: !5309, size: 64)
!5309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5310, size: 64)
!5310 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !1036, line: 104, flags: DIFlagFwdDecl)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_false", scope: !5294, file: !5284, line: 56, baseType: !5312, size: 128)
!5312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_false", file: !1036, line: 363, size: 128, elements: !5313)
!5313 = !{!5314}
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5312, file: !1036, line: 364, baseType: !5300, size: 128)
!5315 = distinct !DISubprogram(name: "list_del", scope: !5316, file: !5316, line: 227, type: !5317, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !5319)
!5316 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5317 = !DISubroutineType(types: !5318)
!5318 = !{null, !257}
!5319 = !{!5320}
!5320 = !DILocalVariable(name: "entry", arg: 1, scope: !5315, file: !5316, line: 227, type: !257)
!5321 = !DILocation(line: 227, column: 47, scope: !5315)
!5322 = !DILocation(line: 229, column: 19, scope: !5315)
!5323 = !DILocation(line: 229, column: 2, scope: !5315)
!5324 = !DILocation(line: 230, column: 2, scope: !5315)
!5325 = !DILocation(line: 230, column: 9, scope: !5315)
!5326 = !DILocation(line: 230, column: 14, scope: !5315)
!5327 = !DILocation(line: 231, column: 2, scope: !5315)
!5328 = !DILocation(line: 231, column: 9, scope: !5315)
!5329 = !DILocation(line: 231, column: 14, scope: !5315)
!5330 = !DILocation(line: 232, column: 1, scope: !5315)
!5331 = distinct !DISubprogram(name: "free_dr", scope: !2, file: !2, line: 58, type: !5332, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !5334)
!5332 = !DISubroutineType(types: !5333)
!5333 = !{null, !246}
!5334 = !{!5335}
!5335 = !DILocalVariable(name: "dr", arg: 1, scope: !5331, file: !2, line: 58, type: !246)
!5336 = !DILocation(line: 58, column: 36, scope: !5331)
!5337 = !DILocation(line: 60, column: 14, scope: !5331)
!5338 = !DILocation(line: 60, column: 18, scope: !5331)
!5339 = !DILocation(line: 60, column: 23, scope: !5331)
!5340 = !DILocation(line: 60, column: 2, scope: !5331)
!5341 = !DILocation(line: 61, column: 8, scope: !5331)
!5342 = !DILocation(line: 61, column: 2, scope: !5331)
!5343 = !DILocation(line: 62, column: 1, scope: !5331)
!5344 = distinct !DISubprogram(name: "drmm_add_final_kfree", scope: !2, file: !2, line: 129, type: !263, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !5345)
!5345 = !{!5346, !5347, !5348, !5350, !5353, !5355, !5358, !5360}
!5346 = !DILocalVariable(name: "dev", arg: 1, scope: !5344, file: !2, line: 129, type: !265)
!5347 = !DILocalVariable(name: "container", arg: 2, scope: !5344, file: !2, line: 129, type: !245)
!5348 = !DILocalVariable(name: "__ret_warn_on", scope: !5349, file: !2, line: 131, type: !135)
!5349 = distinct !DILexicalBlock(scope: !5344, file: !2, line: 131, column: 2)
!5350 = !DILocalVariable(name: "__flags", scope: !5351, file: !2, line: 131, type: !135)
!5351 = distinct !DILexicalBlock(scope: !5352, file: !2, line: 131, column: 2)
!5352 = distinct !DILexicalBlock(scope: !5349, file: !2, line: 131, column: 2)
!5353 = !DILocalVariable(name: "__ret_warn_on", scope: !5354, file: !2, line: 132, type: !135)
!5354 = distinct !DILexicalBlock(scope: !5344, file: !2, line: 132, column: 2)
!5355 = !DILocalVariable(name: "__flags", scope: !5356, file: !2, line: 132, type: !135)
!5356 = distinct !DILexicalBlock(scope: !5357, file: !2, line: 132, column: 2)
!5357 = distinct !DILexicalBlock(scope: !5354, file: !2, line: 132, column: 2)
!5358 = !DILocalVariable(name: "__ret_warn_on", scope: !5359, file: !2, line: 133, type: !135)
!5359 = distinct !DILexicalBlock(scope: !5344, file: !2, line: 133, column: 2)
!5360 = !DILocalVariable(name: "__flags", scope: !5361, file: !2, line: 133, type: !135)
!5361 = distinct !DILexicalBlock(scope: !5362, file: !2, line: 133, column: 2)
!5362 = distinct !DILexicalBlock(scope: !5359, file: !2, line: 133, column: 2)
!5363 = !DILocation(line: 129, column: 46, scope: !5344)
!5364 = !DILocation(line: 129, column: 57, scope: !5344)
!5365 = !DILocation(line: 131, column: 2, scope: !5349)
!5366 = !DILocation(line: 131, column: 2, scope: !5352)
!5367 = !DILocation(line: 131, column: 2, scope: !5351)
!5368 = !DILocation(line: 131, column: 2, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5351, file: !2, line: 131, column: 2)
!5370 = !DILocation(line: 131, column: 2, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5351, file: !2, line: 131, column: 2)
!5372 = !{i64 2155412913, i64 2155412942, i64 2155412988, i64 2155413046, i64 2155413100, i64 2155413154, i64 2155413209, i64 2155413240, i64 2155413548, i64 2155413554, i64 2155413601, i64 2155413624, i64 2155413650}
!5373 = !DILocation(line: 131, column: 2, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5351, file: !2, line: 131, column: 2)
!5375 = !DILocation(line: 131, column: 2, scope: !5344)
!5376 = !DILocation(line: 132, column: 2, scope: !5354)
!5377 = !DILocation(line: 132, column: 2, scope: !5357)
!5378 = !DILocation(line: 132, column: 2, scope: !5356)
!5379 = !DILocation(line: 132, column: 2, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5356, file: !2, line: 132, column: 2)
!5381 = !DILocation(line: 132, column: 2, scope: !5382)
!5382 = distinct !DILexicalBlock(scope: !5356, file: !2, line: 132, column: 2)
!5383 = !{i64 2155414443, i64 2155414472, i64 2155414518, i64 2155414576, i64 2155414630, i64 2155414684, i64 2155414739, i64 2155414770, i64 2155415078, i64 2155415084, i64 2155415131, i64 2155415154, i64 2155415180}
!5384 = !DILocation(line: 132, column: 2, scope: !5385)
!5385 = distinct !DILexicalBlock(scope: !5356, file: !2, line: 132, column: 2)
!5386 = !DILocation(line: 132, column: 2, scope: !5344)
!5387 = !DILocation(line: 133, column: 2, scope: !5359)
!5388 = !DILocation(line: 133, column: 2, scope: !5362)
!5389 = !DILocation(line: 133, column: 2, scope: !5361)
!5390 = !DILocation(line: 133, column: 2, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5361, file: !2, line: 133, column: 2)
!5392 = !DILocation(line: 133, column: 2, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5361, file: !2, line: 133, column: 2)
!5394 = !{i64 2155415998, i64 2155416027, i64 2155416073, i64 2155416131, i64 2155416185, i64 2155416239, i64 2155416294, i64 2155416325, i64 2155416633, i64 2155416639, i64 2155416686, i64 2155416709, i64 2155416735}
!5395 = !DILocation(line: 133, column: 2, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5361, file: !2, line: 133, column: 2)
!5397 = !DILocation(line: 133, column: 2, scope: !5344)
!5398 = !DILocation(line: 134, column: 29, scope: !5344)
!5399 = !DILocation(line: 134, column: 2, scope: !5344)
!5400 = !DILocation(line: 134, column: 7, scope: !5344)
!5401 = !DILocation(line: 134, column: 15, scope: !5344)
!5402 = !DILocation(line: 134, column: 27, scope: !5344)
!5403 = !DILocation(line: 135, column: 1, scope: !5344)
!5404 = !DISubprogram(name: "ksize", scope: !5405, file: !5405, line: 245, type: !5406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5405 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!5406 = !DISubroutineType(types: !5407)
!5407 = !{!416, !1696}
!5408 = distinct !DISubprogram(name: "__drmm_add_action", scope: !2, file: !2, line: 137, type: !5409, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !5411)
!5409 = !DISubroutineType(types: !5410)
!5410 = !{!135, !265, !260, !245, !292}
!5411 = !{!5412, !5413, !5414, !5415, !5416, !5417}
!5412 = !DILocalVariable(name: "dev", arg: 1, scope: !5408, file: !2, line: 137, type: !265)
!5413 = !DILocalVariable(name: "action", arg: 2, scope: !5408, file: !2, line: 138, type: !260)
!5414 = !DILocalVariable(name: "data", arg: 3, scope: !5408, file: !2, line: 139, type: !245)
!5415 = !DILocalVariable(name: "name", arg: 4, scope: !5408, file: !2, line: 139, type: !292)
!5416 = !DILocalVariable(name: "dr", scope: !5408, file: !2, line: 141, type: !246)
!5417 = !DILocalVariable(name: "void_ptr", scope: !5408, file: !2, line: 142, type: !3323)
!5418 = !DILocation(line: 137, column: 42, scope: !5408)
!5419 = !DILocation(line: 138, column: 26, scope: !5408)
!5420 = !DILocation(line: 139, column: 15, scope: !5408)
!5421 = !DILocation(line: 139, column: 33, scope: !5408)
!5422 = !DILocation(line: 141, column: 2, scope: !5408)
!5423 = !DILocation(line: 141, column: 17, scope: !5408)
!5424 = !DILocation(line: 142, column: 2, scope: !5408)
!5425 = !DILocation(line: 142, column: 9, scope: !5408)
!5426 = !DILocation(line: 144, column: 16, scope: !5408)
!5427 = !DILocation(line: 144, column: 24, scope: !5408)
!5428 = !DILocation(line: 146, column: 21, scope: !5408)
!5429 = !DILocation(line: 146, column: 26, scope: !5408)
!5430 = !DILocation(line: 146, column: 9, scope: !5408)
!5431 = !DILocation(line: 144, column: 7, scope: !5408)
!5432 = !DILocation(line: 144, column: 5, scope: !5408)
!5433 = !DILocation(line: 147, column: 7, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5408, file: !2, line: 147, column: 6)
!5435 = !DILocation(line: 147, column: 6, scope: !5408)
!5436 = !DILocation(line: 148, column: 3, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5434, file: !2, line: 147, column: 11)
!5438 = !DILocation(line: 150, column: 3, scope: !5437)
!5439 = !DILocation(line: 153, column: 32, scope: !5408)
!5440 = !DILocation(line: 153, column: 18, scope: !5408)
!5441 = !DILocation(line: 153, column: 2, scope: !5408)
!5442 = !DILocation(line: 153, column: 6, scope: !5408)
!5443 = !DILocation(line: 153, column: 11, scope: !5408)
!5444 = !DILocation(line: 153, column: 16, scope: !5408)
!5445 = !DILocation(line: 154, column: 6, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5408, file: !2, line: 154, column: 6)
!5447 = !DILocation(line: 154, column: 6, scope: !5408)
!5448 = !DILocation(line: 155, column: 24, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5446, file: !2, line: 154, column: 12)
!5450 = !DILocation(line: 155, column: 28, scope: !5449)
!5451 = !DILocation(line: 155, column: 12, scope: !5449)
!5452 = !DILocation(line: 156, column: 15, scope: !5449)
!5453 = !DILocation(line: 156, column: 4, scope: !5449)
!5454 = !DILocation(line: 156, column: 13, scope: !5449)
!5455 = !DILocation(line: 157, column: 2, scope: !5449)
!5456 = !DILocation(line: 159, column: 9, scope: !5408)
!5457 = !DILocation(line: 159, column: 14, scope: !5408)
!5458 = !DILocation(line: 159, column: 2, scope: !5408)
!5459 = !DILocation(line: 161, column: 2, scope: !5408)
!5460 = !DILocation(line: 162, column: 1, scope: !5408)
!5461 = distinct !DISubprogram(name: "alloc_dr", scope: !2, file: !2, line: 86, type: !5462, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !5464)
!5462 = !DISubroutineType(types: !5463)
!5463 = !{!246, !260, !416, !1269, !135}
!5464 = !{!5465, !5466, !5467, !5468, !5469, !5470}
!5465 = !DILocalVariable(name: "release", arg: 1, scope: !5461, file: !2, line: 86, type: !260)
!5466 = !DILocalVariable(name: "size", arg: 2, scope: !5461, file: !2, line: 87, type: !416)
!5467 = !DILocalVariable(name: "gfp", arg: 3, scope: !5461, file: !2, line: 87, type: !1269)
!5468 = !DILocalVariable(name: "nid", arg: 4, scope: !5461, file: !2, line: 87, type: !135)
!5469 = !DILocalVariable(name: "tot_size", scope: !5461, file: !2, line: 89, type: !416)
!5470 = !DILocalVariable(name: "dr", scope: !5461, file: !2, line: 90, type: !246)
!5471 = !DILocation(line: 86, column: 66, scope: !5461)
!5472 = !DILocation(line: 87, column: 14, scope: !5461)
!5473 = !DILocation(line: 87, column: 26, scope: !5461)
!5474 = !DILocation(line: 87, column: 35, scope: !5461)
!5475 = !DILocation(line: 89, column: 2, scope: !5461)
!5476 = !DILocation(line: 89, column: 9, scope: !5461)
!5477 = !DILocation(line: 90, column: 2, scope: !5461)
!5478 = !DILocation(line: 90, column: 17, scope: !5461)
!5479 = !DILocation(line: 93, column: 6, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5461, file: !2, line: 93, column: 6)
!5481 = !DILocation(line: 93, column: 6, scope: !5461)
!5482 = !DILocation(line: 94, column: 3, scope: !5480)
!5483 = !DILocation(line: 96, column: 7, scope: !5461)
!5484 = !DILocation(line: 96, column: 5, scope: !5461)
!5485 = !DILocation(line: 97, column: 6, scope: !5486)
!5486 = distinct !DILexicalBlock(scope: !5461, file: !2, line: 97, column: 6)
!5487 = !DILocation(line: 97, column: 6, scope: !5461)
!5488 = !DILocation(line: 98, column: 3, scope: !5486)
!5489 = !DILocation(line: 100, column: 9, scope: !5461)
!5490 = !DILocation(line: 100, column: 2, scope: !5461)
!5491 = !DILocation(line: 102, column: 18, scope: !5461)
!5492 = !DILocation(line: 102, column: 22, scope: !5461)
!5493 = !DILocation(line: 102, column: 27, scope: !5461)
!5494 = !DILocation(line: 102, column: 2, scope: !5461)
!5495 = !DILocation(line: 103, column: 21, scope: !5461)
!5496 = !DILocation(line: 103, column: 2, scope: !5461)
!5497 = !DILocation(line: 103, column: 6, scope: !5461)
!5498 = !DILocation(line: 103, column: 11, scope: !5461)
!5499 = !DILocation(line: 103, column: 19, scope: !5461)
!5500 = !DILocation(line: 104, column: 18, scope: !5461)
!5501 = !DILocation(line: 104, column: 2, scope: !5461)
!5502 = !DILocation(line: 104, column: 6, scope: !5461)
!5503 = !DILocation(line: 104, column: 11, scope: !5461)
!5504 = !DILocation(line: 104, column: 16, scope: !5461)
!5505 = !DILocation(line: 106, column: 9, scope: !5461)
!5506 = !DILocation(line: 106, column: 2, scope: !5461)
!5507 = !DILocation(line: 107, column: 1, scope: !5461)
!5508 = distinct !DISubprogram(name: "dev_to_node", scope: !120, file: !120, line: 882, type: !4338, scopeLine: 883, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !5509)
!5509 = !{!5510}
!5510 = !DILocalVariable(name: "dev", arg: 1, scope: !5508, file: !120, line: 882, type: !284)
!5511 = !DILocation(line: 882, column: 46, scope: !5508)
!5512 = !DILocation(line: 884, column: 9, scope: !5508)
!5513 = !DILocation(line: 884, column: 14, scope: !5508)
!5514 = !DILocation(line: 884, column: 2, scope: !5508)
!5515 = !DISubprogram(name: "kstrdup_const", scope: !5516, file: !5516, line: 217, type: !5517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5516 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5517 = !DISubroutineType(types: !5518)
!5518 = !{!292, !292, !1269}
!5519 = distinct !DISubprogram(name: "add_dr", scope: !2, file: !2, line: 117, type: !5520, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !5522)
!5520 = !DISubroutineType(types: !5521)
!5521 = !{null, !265, !246}
!5522 = !{!5523, !5524, !5525, !5526, !5530}
!5523 = !DILocalVariable(name: "dev", arg: 1, scope: !5519, file: !2, line: 117, type: !265)
!5524 = !DILocalVariable(name: "dr", arg: 2, scope: !5519, file: !2, line: 117, type: !246)
!5525 = !DILocalVariable(name: "flags", scope: !5519, file: !2, line: 119, type: !419)
!5526 = !DILocalVariable(name: "__dummy", scope: !5527, file: !2, line: 121, type: !419)
!5527 = distinct !DILexicalBlock(scope: !5528, file: !2, line: 121, column: 2)
!5528 = distinct !DILexicalBlock(scope: !5529, file: !2, line: 121, column: 2)
!5529 = distinct !DILexicalBlock(scope: !5519, file: !2, line: 121, column: 2)
!5530 = !DILocalVariable(name: "__dummy2", scope: !5527, file: !2, line: 121, type: !419)
!5531 = !DILocation(line: 117, column: 39, scope: !5519)
!5532 = !DILocation(line: 117, column: 59, scope: !5519)
!5533 = !DILocation(line: 119, column: 2, scope: !5519)
!5534 = !DILocation(line: 119, column: 16, scope: !5519)
!5535 = !DILocation(line: 121, column: 2, scope: !5519)
!5536 = !DILocation(line: 121, column: 2, scope: !5529)
!5537 = !DILocation(line: 121, column: 2, scope: !5527)
!5538 = !DILocation(line: 121, column: 2, scope: !5528)
!5539 = !DILocation(line: 122, column: 12, scope: !5519)
!5540 = !DILocation(line: 122, column: 16, scope: !5519)
!5541 = !DILocation(line: 122, column: 21, scope: !5519)
!5542 = !DILocation(line: 122, column: 29, scope: !5519)
!5543 = !DILocation(line: 122, column: 34, scope: !5519)
!5544 = !DILocation(line: 122, column: 42, scope: !5519)
!5545 = !DILocation(line: 122, column: 2, scope: !5519)
!5546 = !DILocation(line: 123, column: 26, scope: !5519)
!5547 = !DILocation(line: 123, column: 31, scope: !5519)
!5548 = !DILocation(line: 123, column: 39, scope: !5519)
!5549 = !DILocation(line: 123, column: 45, scope: !5519)
!5550 = !DILocation(line: 123, column: 2, scope: !5519)
!5551 = !DILocation(line: 125, column: 2, scope: !5519)
!5552 = !DILocation(line: 127, column: 1, scope: !5519)
!5553 = distinct !DISubprogram(name: "__drmm_add_action_or_reset", scope: !2, file: !2, line: 165, type: !5409, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !5554)
!5554 = !{!5555, !5556, !5557, !5558, !5559}
!5555 = !DILocalVariable(name: "dev", arg: 1, scope: !5553, file: !2, line: 165, type: !265)
!5556 = !DILocalVariable(name: "action", arg: 2, scope: !5553, file: !2, line: 166, type: !260)
!5557 = !DILocalVariable(name: "data", arg: 3, scope: !5553, file: !2, line: 167, type: !245)
!5558 = !DILocalVariable(name: "name", arg: 4, scope: !5553, file: !2, line: 167, type: !292)
!5559 = !DILocalVariable(name: "ret", scope: !5553, file: !2, line: 169, type: !135)
!5560 = !DILocation(line: 165, column: 51, scope: !5553)
!5561 = !DILocation(line: 166, column: 28, scope: !5553)
!5562 = !DILocation(line: 167, column: 17, scope: !5553)
!5563 = !DILocation(line: 167, column: 35, scope: !5553)
!5564 = !DILocation(line: 169, column: 2, scope: !5553)
!5565 = !DILocation(line: 169, column: 6, scope: !5553)
!5566 = !DILocation(line: 171, column: 26, scope: !5553)
!5567 = !DILocation(line: 171, column: 31, scope: !5553)
!5568 = !DILocation(line: 171, column: 39, scope: !5553)
!5569 = !DILocation(line: 171, column: 45, scope: !5553)
!5570 = !DILocation(line: 171, column: 8, scope: !5553)
!5571 = !DILocation(line: 171, column: 6, scope: !5553)
!5572 = !DILocation(line: 172, column: 6, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5553, file: !2, line: 172, column: 6)
!5574 = !DILocation(line: 172, column: 6, scope: !5553)
!5575 = !DILocation(line: 173, column: 3, scope: !5573)
!5576 = !DILocation(line: 173, column: 10, scope: !5573)
!5577 = !DILocation(line: 173, column: 15, scope: !5573)
!5578 = !DILocation(line: 175, column: 9, scope: !5553)
!5579 = !DILocation(line: 176, column: 1, scope: !5553)
!5580 = !DILocation(line: 175, column: 2, scope: !5553)
!5581 = distinct !DISubprogram(name: "drmm_kmalloc", scope: !2, file: !2, line: 189, type: !5582, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !5584)
!5582 = !DISubroutineType(types: !5583)
!5583 = !{!245, !265, !416, !1269}
!5584 = !{!5585, !5586, !5587, !5588}
!5585 = !DILocalVariable(name: "dev", arg: 1, scope: !5581, file: !2, line: 189, type: !265)
!5586 = !DILocalVariable(name: "size", arg: 2, scope: !5581, file: !2, line: 189, type: !416)
!5587 = !DILocalVariable(name: "gfp", arg: 3, scope: !5581, file: !2, line: 189, type: !1269)
!5588 = !DILocalVariable(name: "dr", scope: !5581, file: !2, line: 191, type: !246)
!5589 = !DILocation(line: 189, column: 39, scope: !5581)
!5590 = !DILocation(line: 189, column: 51, scope: !5581)
!5591 = !DILocation(line: 189, column: 63, scope: !5581)
!5592 = !DILocation(line: 191, column: 2, scope: !5581)
!5593 = !DILocation(line: 191, column: 17, scope: !5581)
!5594 = !DILocation(line: 193, column: 22, scope: !5581)
!5595 = !DILocation(line: 193, column: 28, scope: !5581)
!5596 = !DILocation(line: 193, column: 45, scope: !5581)
!5597 = !DILocation(line: 193, column: 50, scope: !5581)
!5598 = !DILocation(line: 193, column: 33, scope: !5581)
!5599 = !DILocation(line: 193, column: 7, scope: !5581)
!5600 = !DILocation(line: 193, column: 5, scope: !5581)
!5601 = !DILocation(line: 194, column: 7, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5581, file: !2, line: 194, column: 6)
!5603 = !DILocation(line: 194, column: 6, scope: !5581)
!5604 = !DILocation(line: 195, column: 3, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5602, file: !2, line: 194, column: 11)
!5606 = !DILocation(line: 197, column: 3, scope: !5605)
!5607 = !DILocation(line: 199, column: 43, scope: !5581)
!5608 = !DILocation(line: 199, column: 18, scope: !5581)
!5609 = !DILocation(line: 199, column: 2, scope: !5581)
!5610 = !DILocation(line: 199, column: 6, scope: !5581)
!5611 = !DILocation(line: 199, column: 11, scope: !5581)
!5612 = !DILocation(line: 199, column: 16, scope: !5581)
!5613 = !DILocation(line: 201, column: 9, scope: !5581)
!5614 = !DILocation(line: 201, column: 14, scope: !5581)
!5615 = !DILocation(line: 201, column: 2, scope: !5581)
!5616 = !DILocation(line: 203, column: 9, scope: !5581)
!5617 = !DILocation(line: 203, column: 13, scope: !5581)
!5618 = !DILocation(line: 203, column: 2, scope: !5581)
!5619 = !DILocation(line: 204, column: 1, scope: !5581)
!5620 = distinct !DISubprogram(name: "drmm_kstrdup", scope: !2, file: !2, line: 217, type: !5621, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !5623)
!5621 = !DISubroutineType(types: !5622)
!5622 = !{!369, !265, !292, !1269}
!5623 = !{!5624, !5625, !5626, !5627, !5628}
!5624 = !DILocalVariable(name: "dev", arg: 1, scope: !5620, file: !2, line: 217, type: !265)
!5625 = !DILocalVariable(name: "s", arg: 2, scope: !5620, file: !2, line: 217, type: !292)
!5626 = !DILocalVariable(name: "gfp", arg: 3, scope: !5620, file: !2, line: 217, type: !1269)
!5627 = !DILocalVariable(name: "size", scope: !5620, file: !2, line: 219, type: !416)
!5628 = !DILocalVariable(name: "buf", scope: !5620, file: !2, line: 220, type: !369)
!5629 = !DILocation(line: 217, column: 39, scope: !5620)
!5630 = !DILocation(line: 217, column: 56, scope: !5620)
!5631 = !DILocation(line: 217, column: 65, scope: !5620)
!5632 = !DILocation(line: 219, column: 2, scope: !5620)
!5633 = !DILocation(line: 219, column: 9, scope: !5620)
!5634 = !DILocation(line: 220, column: 2, scope: !5620)
!5635 = !DILocation(line: 220, column: 8, scope: !5620)
!5636 = !DILocation(line: 222, column: 7, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5620, file: !2, line: 222, column: 6)
!5638 = !DILocation(line: 222, column: 6, scope: !5620)
!5639 = !DILocation(line: 223, column: 3, scope: !5637)
!5640 = !DILocation(line: 225, column: 16, scope: !5620)
!5641 = !DILocation(line: 225, column: 9, scope: !5620)
!5642 = !DILocation(line: 225, column: 19, scope: !5620)
!5643 = !DILocation(line: 225, column: 7, scope: !5620)
!5644 = !DILocation(line: 226, column: 21, scope: !5620)
!5645 = !DILocation(line: 226, column: 26, scope: !5620)
!5646 = !DILocation(line: 226, column: 32, scope: !5620)
!5647 = !DILocation(line: 226, column: 8, scope: !5620)
!5648 = !DILocation(line: 226, column: 6, scope: !5620)
!5649 = !DILocation(line: 227, column: 6, scope: !5650)
!5650 = distinct !DILexicalBlock(scope: !5620, file: !2, line: 227, column: 6)
!5651 = !DILocation(line: 227, column: 6, scope: !5620)
!5652 = !DILocation(line: 228, column: 10, scope: !5650)
!5653 = !DILocation(line: 228, column: 15, scope: !5650)
!5654 = !DILocation(line: 228, column: 18, scope: !5650)
!5655 = !DILocation(line: 228, column: 3, scope: !5650)
!5656 = !DILocation(line: 229, column: 9, scope: !5620)
!5657 = !DILocation(line: 229, column: 2, scope: !5620)
!5658 = !DILocation(line: 230, column: 1, scope: !5620)
!5659 = !DISubprogram(name: "strlen", scope: !5516, file: !5516, line: 128, type: !5660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5660 = !DISubroutineType(types: !5661)
!5661 = !{!419, !292}
!5662 = distinct !DISubprogram(name: "drmm_kfree", scope: !2, file: !2, line: 242, type: !263, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !5663)
!5663 = !{!5664, !5665, !5666, !5667, !5668, !5669, !5673, !5674, !5677, !5680, !5683}
!5664 = !DILocalVariable(name: "dev", arg: 1, scope: !5662, file: !2, line: 242, type: !265)
!5665 = !DILocalVariable(name: "data", arg: 2, scope: !5662, file: !2, line: 242, type: !245)
!5666 = !DILocalVariable(name: "dr_match", scope: !5662, file: !2, line: 244, type: !246)
!5667 = !DILocalVariable(name: "dr", scope: !5662, file: !2, line: 244, type: !246)
!5668 = !DILocalVariable(name: "flags", scope: !5662, file: !2, line: 245, type: !419)
!5669 = !DILocalVariable(name: "__dummy", scope: !5670, file: !2, line: 250, type: !419)
!5670 = distinct !DILexicalBlock(scope: !5671, file: !2, line: 250, column: 2)
!5671 = distinct !DILexicalBlock(scope: !5672, file: !2, line: 250, column: 2)
!5672 = distinct !DILexicalBlock(scope: !5662, file: !2, line: 250, column: 2)
!5673 = !DILocalVariable(name: "__dummy2", scope: !5670, file: !2, line: 250, type: !419)
!5674 = !DILocalVariable(name: "__mptr", scope: !5675, file: !2, line: 251, type: !245)
!5675 = distinct !DILexicalBlock(scope: !5676, file: !2, line: 251, column: 2)
!5676 = distinct !DILexicalBlock(scope: !5662, file: !2, line: 251, column: 2)
!5677 = !DILocalVariable(name: "__mptr", scope: !5678, file: !2, line: 251, type: !245)
!5678 = distinct !DILexicalBlock(scope: !5679, file: !2, line: 251, column: 2)
!5679 = distinct !DILexicalBlock(scope: !5676, file: !2, line: 251, column: 2)
!5680 = !DILocalVariable(name: "__ret_warn_on", scope: !5681, file: !2, line: 260, type: !135)
!5681 = distinct !DILexicalBlock(scope: !5682, file: !2, line: 260, column: 6)
!5682 = distinct !DILexicalBlock(scope: !5662, file: !2, line: 260, column: 6)
!5683 = !DILocalVariable(name: "__flags", scope: !5684, file: !2, line: 260, type: !135)
!5684 = distinct !DILexicalBlock(scope: !5685, file: !2, line: 260, column: 6)
!5685 = distinct !DILexicalBlock(scope: !5681, file: !2, line: 260, column: 6)
!5686 = !DILocation(line: 242, column: 36, scope: !5662)
!5687 = !DILocation(line: 242, column: 47, scope: !5662)
!5688 = !DILocation(line: 244, column: 2, scope: !5662)
!5689 = !DILocation(line: 244, column: 17, scope: !5662)
!5690 = !DILocation(line: 244, column: 35, scope: !5662)
!5691 = !DILocation(line: 245, column: 2, scope: !5662)
!5692 = !DILocation(line: 245, column: 16, scope: !5662)
!5693 = !DILocation(line: 247, column: 7, scope: !5694)
!5694 = distinct !DILexicalBlock(scope: !5662, file: !2, line: 247, column: 6)
!5695 = !DILocation(line: 247, column: 6, scope: !5662)
!5696 = !DILocation(line: 248, column: 3, scope: !5694)
!5697 = !DILocation(line: 250, column: 2, scope: !5662)
!5698 = !DILocation(line: 250, column: 2, scope: !5672)
!5699 = !DILocation(line: 250, column: 2, scope: !5670)
!5700 = !DILocation(line: 250, column: 2, scope: !5671)
!5701 = !DILocation(line: 251, column: 2, scope: !5675)
!5702 = !DILocation(line: 251, column: 2, scope: !5676)
!5703 = !DILocation(line: 251, column: 2, scope: !5679)
!5704 = !DILocation(line: 252, column: 7, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !5706, file: !2, line: 252, column: 7)
!5706 = distinct !DILexicalBlock(scope: !5679, file: !2, line: 251, column: 63)
!5707 = !DILocation(line: 252, column: 11, scope: !5705)
!5708 = !DILocation(line: 252, column: 19, scope: !5705)
!5709 = !DILocation(line: 252, column: 16, scope: !5705)
!5710 = !DILocation(line: 252, column: 7, scope: !5706)
!5711 = !DILocation(line: 253, column: 15, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5705, file: !2, line: 252, column: 25)
!5713 = !DILocation(line: 253, column: 13, scope: !5712)
!5714 = !DILocation(line: 254, column: 11, scope: !5712)
!5715 = !DILocation(line: 254, column: 16, scope: !5712)
!5716 = !DILocation(line: 254, column: 4, scope: !5712)
!5717 = !DILocation(line: 255, column: 4, scope: !5712)
!5718 = !DILocation(line: 257, column: 2, scope: !5706)
!5719 = !DILocation(line: 251, column: 2, scope: !5678)
!5720 = distinct !{!5720, !5702, !5721, !5275, !5276}
!5721 = !DILocation(line: 257, column: 2, scope: !5676)
!5722 = !DILocation(line: 258, column: 26, scope: !5662)
!5723 = !DILocation(line: 258, column: 31, scope: !5662)
!5724 = !DILocation(line: 258, column: 39, scope: !5662)
!5725 = !DILocation(line: 258, column: 45, scope: !5662)
!5726 = !DILocation(line: 258, column: 2, scope: !5662)
!5727 = !DILocation(line: 260, column: 6, scope: !5681)
!5728 = !DILocation(line: 260, column: 6, scope: !5685)
!5729 = !DILocation(line: 260, column: 6, scope: !5684)
!5730 = !DILocation(line: 260, column: 6, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5684, file: !2, line: 260, column: 6)
!5732 = !DILocation(line: 260, column: 6, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5684, file: !2, line: 260, column: 6)
!5734 = !{i64 2155429466, i64 2155429495, i64 2155429541, i64 2155429599, i64 2155429653, i64 2155429707, i64 2155429762, i64 2155429793, i64 2155430101, i64 2155430107, i64 2155430154, i64 2155430177, i64 2155430203}
!5735 = !DILocation(line: 260, column: 6, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5684, file: !2, line: 260, column: 6)
!5737 = !DILocation(line: 260, column: 6, scope: !5682)
!5738 = !DILocation(line: 260, column: 6, scope: !5662)
!5739 = !DILocation(line: 261, column: 3, scope: !5682)
!5740 = !DILocation(line: 263, column: 10, scope: !5662)
!5741 = !DILocation(line: 263, column: 2, scope: !5662)
!5742 = !DILocation(line: 264, column: 1, scope: !5662)
!5743 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !5744, file: !5744, line: 32, type: !5745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5744 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5745 = !DISubroutineType(types: !5746)
!5746 = !{!419, !5747}
!5747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!5748 = distinct !DISubprogram(name: "spinlock_check", scope: !5749, file: !5749, line: 324, type: !5750, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !5752)
!5749 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5750 = !DISubroutineType(types: !5751)
!5751 = !{!5747, !2761}
!5752 = !{!5753}
!5753 = !DILocalVariable(name: "lock", arg: 1, scope: !5748, file: !5749, line: 324, type: !2761)
!5754 = !DILocation(line: 324, column: 67, scope: !5748)
!5755 = !DILocation(line: 326, column: 10, scope: !5748)
!5756 = !DILocation(line: 326, column: 16, scope: !5748)
!5757 = !DILocation(line: 326, column: 2, scope: !5748)
!5758 = distinct !DISubprogram(name: "del_dr", scope: !2, file: !2, line: 109, type: !5520, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !5759)
!5759 = !{!5760, !5761}
!5760 = !DILocalVariable(name: "dev", arg: 1, scope: !5758, file: !2, line: 109, type: !265)
!5761 = !DILocalVariable(name: "dr", arg: 2, scope: !5758, file: !2, line: 109, type: !246)
!5762 = !DILocation(line: 109, column: 39, scope: !5758)
!5763 = !DILocation(line: 109, column: 59, scope: !5758)
!5764 = !DILocation(line: 111, column: 17, scope: !5758)
!5765 = !DILocation(line: 111, column: 21, scope: !5758)
!5766 = !DILocation(line: 111, column: 26, scope: !5758)
!5767 = !DILocation(line: 111, column: 2, scope: !5758)
!5768 = !DILocation(line: 113, column: 2, scope: !5758)
!5769 = !DILocation(line: 115, column: 1, scope: !5758)
!5770 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5749, file: !5749, line: 404, type: !5771, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !5773)
!5771 = !DISubroutineType(types: !5772)
!5772 = !{null, !2761, !419}
!5773 = !{!5774, !5775, !5776, !5779}
!5774 = !DILocalVariable(name: "lock", arg: 1, scope: !5770, file: !5749, line: 404, type: !2761)
!5775 = !DILocalVariable(name: "flags", arg: 2, scope: !5770, file: !5749, line: 404, type: !419)
!5776 = !DILocalVariable(name: "__dummy", scope: !5777, file: !5749, line: 406, type: !419)
!5777 = distinct !DILexicalBlock(scope: !5778, file: !5749, line: 406, column: 2)
!5778 = distinct !DILexicalBlock(scope: !5770, file: !5749, line: 406, column: 2)
!5779 = !DILocalVariable(name: "__dummy2", scope: !5777, file: !5749, line: 406, type: !419)
!5780 = !DILocation(line: 404, column: 64, scope: !5770)
!5781 = !DILocation(line: 404, column: 84, scope: !5770)
!5782 = !DILocation(line: 406, column: 2, scope: !5770)
!5783 = !DILocation(line: 406, column: 2, scope: !5777)
!5784 = !DILocation(line: 406, column: 2, scope: !5778)
!5785 = !DILocation(line: 407, column: 1, scope: !5770)
!5786 = distinct !DISubprogram(name: "__drmm_mutex_release", scope: !2, file: !2, line: 267, type: !263, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !5787)
!5787 = !{!5788, !5789, !5790}
!5788 = !DILocalVariable(name: "dev", arg: 1, scope: !5786, file: !2, line: 267, type: !265)
!5789 = !DILocalVariable(name: "res", arg: 2, scope: !5786, file: !2, line: 267, type: !245)
!5790 = !DILocalVariable(name: "lock", scope: !5786, file: !2, line: 269, type: !5791)
!5791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!5792 = !DILocation(line: 267, column: 46, scope: !5786)
!5793 = !DILocation(line: 267, column: 57, scope: !5786)
!5794 = !DILocation(line: 269, column: 2, scope: !5786)
!5795 = !DILocation(line: 269, column: 16, scope: !5786)
!5796 = !DILocation(line: 269, column: 23, scope: !5786)
!5797 = !DILocation(line: 271, column: 16, scope: !5786)
!5798 = !DILocation(line: 271, column: 2, scope: !5786)
!5799 = !DILocation(line: 272, column: 1, scope: !5786)
!5800 = distinct !DISubprogram(name: "mutex_destroy", scope: !708, file: !708, line: 92, type: !5801, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !5803)
!5801 = !DISubroutineType(types: !5802)
!5802 = !{null, !5791}
!5803 = !{!5804}
!5804 = !DILocalVariable(name: "lock", arg: 1, scope: !5800, file: !708, line: 92, type: !5791)
!5805 = !DILocation(line: 92, column: 48, scope: !5800)
!5806 = !DILocation(line: 92, column: 55, scope: !5800)
!5807 = distinct !DISubprogram(name: "__list_del_entry", scope: !5316, file: !5316, line: 213, type: !5317, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !5808)
!5808 = !{!5809}
!5809 = !DILocalVariable(name: "entry", arg: 1, scope: !5807, file: !5316, line: 213, type: !257)
!5810 = !DILocation(line: 213, column: 55, scope: !5807)
!5811 = !DILocation(line: 215, column: 30, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5807, file: !5316, line: 215, column: 6)
!5813 = !DILocation(line: 215, column: 7, scope: !5812)
!5814 = !DILocation(line: 215, column: 6, scope: !5807)
!5815 = !DILocation(line: 216, column: 3, scope: !5812)
!5816 = !DILocation(line: 218, column: 13, scope: !5807)
!5817 = !DILocation(line: 218, column: 20, scope: !5807)
!5818 = !DILocation(line: 218, column: 26, scope: !5807)
!5819 = !DILocation(line: 218, column: 33, scope: !5807)
!5820 = !DILocation(line: 218, column: 2, scope: !5807)
!5821 = !DILocation(line: 219, column: 1, scope: !5807)
!5822 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5316, file: !5316, line: 134, type: !5823, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !5825)
!5823 = !DISubroutineType(types: !5824)
!5824 = !{!787, !257}
!5825 = !{!5826}
!5826 = !DILocalVariable(name: "entry", arg: 1, scope: !5822, file: !5316, line: 134, type: !257)
!5827 = !DILocation(line: 134, column: 61, scope: !5822)
!5828 = !DILocation(line: 136, column: 2, scope: !5822)
!5829 = distinct !DISubprogram(name: "__list_del", scope: !5316, file: !5316, line: 193, type: !5830, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !5832)
!5830 = !DISubroutineType(types: !5831)
!5831 = !{null, !257, !257}
!5832 = !{!5833, !5834}
!5833 = !DILocalVariable(name: "prev", arg: 1, scope: !5829, file: !5316, line: 193, type: !257)
!5834 = !DILocalVariable(name: "next", arg: 2, scope: !5829, file: !5316, line: 193, type: !257)
!5835 = !DILocation(line: 193, column: 50, scope: !5829)
!5836 = !DILocation(line: 193, column: 75, scope: !5829)
!5837 = !DILocation(line: 195, column: 15, scope: !5829)
!5838 = !DILocation(line: 195, column: 2, scope: !5829)
!5839 = !DILocation(line: 195, column: 8, scope: !5829)
!5840 = !DILocation(line: 195, column: 13, scope: !5829)
!5841 = !DILocation(line: 196, column: 2, scope: !5829)
!5842 = !DILocation(line: 196, column: 2, scope: !5843)
!5843 = distinct !DILexicalBlock(scope: !5829, file: !5316, line: 196, column: 2)
!5844 = !DILocation(line: 196, column: 2, scope: !5845)
!5845 = distinct !DILexicalBlock(scope: !5843, file: !5316, line: 196, column: 2)
!5846 = !DILocation(line: 196, column: 2, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5843, file: !5316, line: 196, column: 2)
!5848 = !DILocation(line: 197, column: 1, scope: !5829)
!5849 = !DISubprogram(name: "kfree_const", scope: !5516, file: !5516, line: 214, type: !5850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5850 = !DISubroutineType(types: !5851)
!5851 = !{null, !1696}
!5852 = !DISubprogram(name: "kfree", scope: !5405, file: !5405, line: 227, type: !5850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5853 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5854, file: !5854, line: 51, type: !5855, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !5857)
!5854 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!5855 = !DISubroutineType(types: !5856)
!5856 = !{!787, !787}
!5857 = !{!5858}
!5858 = !DILocalVariable(name: "overflow", arg: 1, scope: !5853, file: !5854, line: 51, type: !787)
!5859 = !DILocation(line: 51, column: 60, scope: !5853)
!5860 = !DILocation(line: 53, column: 9, scope: !5853)
!5861 = !{i8 0, i8 2}
!5862 = !DILocation(line: 53, column: 2, scope: !5853)
!5863 = !DISubprogram(name: "__kmalloc_node_track_caller", scope: !5405, file: !5405, line: 671, type: !5864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5864 = !DISubroutineType(types: !5865)
!5865 = !{!245, !416, !1269, !135, !419}
!5866 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5316, file: !5316, line: 35, type: !5317, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !5867)
!5867 = !{!5868}
!5868 = !DILocalVariable(name: "list", arg: 1, scope: !5866, file: !5316, line: 35, type: !257)
!5869 = !DILocation(line: 35, column: 53, scope: !5866)
!5870 = !DILocation(line: 37, column: 2, scope: !5866)
!5871 = !DILocation(line: 37, column: 2, scope: !5872)
!5872 = distinct !DILexicalBlock(scope: !5866, file: !5316, line: 37, column: 2)
!5873 = !DILocation(line: 37, column: 2, scope: !5874)
!5874 = distinct !DILexicalBlock(scope: !5872, file: !5316, line: 37, column: 2)
!5875 = !DILocation(line: 37, column: 2, scope: !5876)
!5876 = distinct !DILexicalBlock(scope: !5872, file: !5316, line: 37, column: 2)
!5877 = !DILocation(line: 38, column: 2, scope: !5866)
!5878 = !DILocation(line: 38, column: 2, scope: !5879)
!5879 = distinct !DILexicalBlock(scope: !5866, file: !5316, line: 38, column: 2)
!5880 = !DILocation(line: 38, column: 2, scope: !5881)
!5881 = distinct !DILexicalBlock(scope: !5879, file: !5316, line: 38, column: 2)
!5882 = !DILocation(line: 38, column: 2, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5879, file: !5316, line: 38, column: 2)
!5884 = !DILocation(line: 39, column: 1, scope: !5866)
!5885 = distinct !DISubprogram(name: "list_add", scope: !5316, file: !5316, line: 167, type: !5830, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !5886)
!5886 = !{!5887, !5888}
!5887 = !DILocalVariable(name: "new", arg: 1, scope: !5885, file: !5316, line: 167, type: !257)
!5888 = !DILocalVariable(name: "head", arg: 2, scope: !5885, file: !5316, line: 167, type: !257)
!5889 = !DILocation(line: 167, column: 47, scope: !5885)
!5890 = !DILocation(line: 167, column: 70, scope: !5885)
!5891 = !DILocation(line: 169, column: 13, scope: !5885)
!5892 = !DILocation(line: 169, column: 18, scope: !5885)
!5893 = !DILocation(line: 169, column: 24, scope: !5885)
!5894 = !DILocation(line: 169, column: 30, scope: !5885)
!5895 = !DILocation(line: 169, column: 2, scope: !5885)
!5896 = !DILocation(line: 170, column: 1, scope: !5885)
!5897 = distinct !DISubprogram(name: "__list_add", scope: !5316, file: !5316, line: 146, type: !5898, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !5900)
!5898 = !DISubroutineType(types: !5899)
!5899 = !{null, !257, !257, !257}
!5900 = !{!5901, !5902, !5903}
!5901 = !DILocalVariable(name: "new", arg: 1, scope: !5897, file: !5316, line: 146, type: !257)
!5902 = !DILocalVariable(name: "prev", arg: 2, scope: !5897, file: !5316, line: 147, type: !257)
!5903 = !DILocalVariable(name: "next", arg: 3, scope: !5897, file: !5316, line: 148, type: !257)
!5904 = !DILocation(line: 146, column: 49, scope: !5897)
!5905 = !DILocation(line: 147, column: 28, scope: !5897)
!5906 = !DILocation(line: 148, column: 28, scope: !5897)
!5907 = !DILocation(line: 150, column: 24, scope: !5908)
!5908 = distinct !DILexicalBlock(scope: !5897, file: !5316, line: 150, column: 6)
!5909 = !DILocation(line: 150, column: 29, scope: !5908)
!5910 = !DILocation(line: 150, column: 35, scope: !5908)
!5911 = !DILocation(line: 150, column: 7, scope: !5908)
!5912 = !DILocation(line: 150, column: 6, scope: !5897)
!5913 = !DILocation(line: 151, column: 3, scope: !5908)
!5914 = !DILocation(line: 153, column: 15, scope: !5897)
!5915 = !DILocation(line: 153, column: 2, scope: !5897)
!5916 = !DILocation(line: 153, column: 8, scope: !5897)
!5917 = !DILocation(line: 153, column: 13, scope: !5897)
!5918 = !DILocation(line: 154, column: 14, scope: !5897)
!5919 = !DILocation(line: 154, column: 2, scope: !5897)
!5920 = !DILocation(line: 154, column: 7, scope: !5897)
!5921 = !DILocation(line: 154, column: 12, scope: !5897)
!5922 = !DILocation(line: 155, column: 14, scope: !5897)
!5923 = !DILocation(line: 155, column: 2, scope: !5897)
!5924 = !DILocation(line: 155, column: 7, scope: !5897)
!5925 = !DILocation(line: 155, column: 12, scope: !5897)
!5926 = !DILocation(line: 156, column: 2, scope: !5897)
!5927 = !DILocation(line: 156, column: 2, scope: !5928)
!5928 = distinct !DILexicalBlock(scope: !5897, file: !5316, line: 156, column: 2)
!5929 = !DILocation(line: 156, column: 2, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5928, file: !5316, line: 156, column: 2)
!5931 = !DILocation(line: 156, column: 2, scope: !5932)
!5932 = distinct !DILexicalBlock(scope: !5928, file: !5316, line: 156, column: 2)
!5933 = !DILocation(line: 157, column: 1, scope: !5897)
!5934 = distinct !DISubprogram(name: "__list_add_valid", scope: !5316, file: !5316, line: 128, type: !5935, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !5937)
!5935 = !DISubroutineType(types: !5936)
!5936 = !{!787, !257, !257, !257}
!5937 = !{!5938, !5939, !5940}
!5938 = !DILocalVariable(name: "new", arg: 1, scope: !5934, file: !5316, line: 128, type: !257)
!5939 = !DILocalVariable(name: "prev", arg: 2, scope: !5934, file: !5316, line: 129, type: !257)
!5940 = !DILocalVariable(name: "next", arg: 3, scope: !5934, file: !5316, line: 130, type: !257)
!5941 = !DILocation(line: 128, column: 55, scope: !5934)
!5942 = !DILocation(line: 129, column: 23, scope: !5934)
!5943 = !DILocation(line: 130, column: 23, scope: !5934)
!5944 = !DILocation(line: 132, column: 2, scope: !5934)
!5945 = distinct !DISubprogram(name: "list_del_init", scope: !5316, file: !5316, line: 285, type: !5317, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !5946)
!5946 = !{!5947}
!5947 = !DILocalVariable(name: "entry", arg: 1, scope: !5945, file: !5316, line: 285, type: !257)
!5948 = !DILocation(line: 285, column: 52, scope: !5945)
!5949 = !DILocation(line: 287, column: 19, scope: !5945)
!5950 = !DILocation(line: 287, column: 2, scope: !5945)
!5951 = !DILocation(line: 288, column: 17, scope: !5945)
!5952 = !DILocation(line: 288, column: 2, scope: !5945)
!5953 = !DILocation(line: 289, column: 1, scope: !5945)
!5954 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !5744, file: !5744, line: 43, type: !5955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5955 = !DISubroutineType(types: !5956)
!5956 = !{null, !5747, !419}
