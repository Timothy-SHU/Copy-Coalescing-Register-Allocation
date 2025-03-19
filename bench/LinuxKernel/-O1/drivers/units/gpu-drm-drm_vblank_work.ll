; ModuleID = 'drivers/gpu/drm/drm_vblank_work.c'
source_filename = "drivers/gpu/drm/drm_vblank_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_vblank_work_schedule: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_vblank_work_schedule ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_vblank_work_cancel_sync: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_vblank_work_cancel_sync ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_vblank_work_flush: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_vblank_work_flush ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_vblank_work_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_vblank_work_init ; .previous"

%struct.lock_class_key = type {}
%struct.drm_vblank_crtc = type { ptr, %struct.wait_queue_head, %struct.timer_list, %struct.seqlock_t, %struct.atomic64_t, i64, %struct.atomic_t, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, i8, ptr, %struct.list_head, %struct.wait_queue_head }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.13, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.mutex, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.13 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_vblank_work = type { %struct.kthread_work, ptr, i64, i32, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i64, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i64, %struct.wait_queue_head }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }

@.str = private unnamed_addr constant [34 x i8] c"drivers/gpu/drm/drm_vblank_work.c\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [51 x i8] c"crtc %d vblank %llu already passed (current %llu)\0A\00", align 1, !dbg !7
@__UNIQUE_ID___addressable_drm_vblank_work_schedule308 = internal global ptr @drm_vblank_work_schedule, section ".discard.addressable", align 8, !dbg !12
@__UNIQUE_ID___addressable_drm_vblank_work_cancel_sync309 = internal global ptr @drm_vblank_work_cancel_sync, section ".discard.addressable", align 8, !dbg !5296
@__UNIQUE_ID___addressable_drm_vblank_work_flush310 = internal global ptr @drm_vblank_work_flush, section ".discard.addressable", align 8, !dbg !5298
@__UNIQUE_ID___addressable_drm_vblank_work_init311 = internal global ptr @drm_vblank_work_init, section ".discard.addressable", align 8, !dbg !5300
@drm_vblank_worker_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5302
@.str.2 = private unnamed_addr constant [25 x i8] c"&vblank->work_wait_queue\00", align 1, !dbg !5310
@.str.3 = private unnamed_addr constant [14 x i8] c"card%d-crtc%d\00", align 1, !dbg !5315
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_drm_vblank_work_schedule308, ptr @__UNIQUE_ID___addressable_drm_vblank_work_cancel_sync309, ptr @__UNIQUE_ID___addressable_drm_vblank_work_flush310, ptr @__UNIQUE_ID___addressable_drm_vblank_work_init311], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_handle_vblank_works(ptr noundef %vblank) #0 align 16 !dbg !5329 {
entry:
  %vblank.addr = alloca ptr, align 8
  %work = alloca ptr, align 8
  %next = alloca ptr, align 8
  %count = alloca i64, align 8
  %wake = alloca i8, align 1
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr16 = alloca ptr, align 8
  %tmp18 = alloca ptr, align 8
  %__mptr32 = alloca ptr, align 8
  %tmp35 = alloca ptr, align 8
  store ptr %vblank, ptr %vblank.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vblank.addr, metadata !5333, metadata !DIExpression()), !dbg !5346
  call void @llvm.lifetime.start.p0(i64 8, ptr %work) #8, !dbg !5347
  call void @llvm.dbg.declare(metadata ptr %work, metadata !5334, metadata !DIExpression()), !dbg !5348
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #8, !dbg !5347
  call void @llvm.dbg.declare(metadata ptr %next, metadata !5335, metadata !DIExpression()), !dbg !5349
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #8, !dbg !5350
  call void @llvm.dbg.declare(metadata ptr %count, metadata !5336, metadata !DIExpression()), !dbg !5351
  %0 = load ptr, ptr %vblank.addr, align 8, !dbg !5352
  %count1 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %0, i32 0, i32 4, !dbg !5353
  %call = call i64 @atomic64_read(ptr noundef %count1) #9, !dbg !5354
  store i64 %call, ptr %count, align 8, !dbg !5351
  call void @llvm.lifetime.start.p0(i64 1, ptr %wake) #8, !dbg !5355
  call void @llvm.dbg.declare(metadata ptr %wake, metadata !5337, metadata !DIExpression()), !dbg !5356
  store i8 0, ptr %wake, align 1, !dbg !5356
  br label %do.body, !dbg !5357

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %vblank.addr, align 8, !dbg !5358
  %dev = getelementptr inbounds %struct.drm_vblank_crtc, ptr %1, i32 0, i32 0, !dbg !5358
  %2 = load ptr, ptr %dev, align 8, !dbg !5358
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 29, !dbg !5358
  %3 = getelementptr inbounds %struct.spinlock, ptr %event_lock, i32 0, i32 0, !dbg !5358
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %3, i32 0, i32 0, !dbg !5358
  %call2 = call i32 @queued_spin_is_locked(ptr noundef %raw_lock) #9, !dbg !5358
  %tobool = icmp ne i32 %call2, 0, !dbg !5358
  %lnot = xor i1 %tobool, true, !dbg !5358
  %lnot3 = xor i1 %lnot, true, !dbg !5358
  %lnot4 = xor i1 %lnot3, true, !dbg !5358
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5358
  %conv = sext i32 %lnot.ext to i64, !dbg !5358
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5358
  %tobool5 = icmp ne i64 %expval, 0, !dbg !5358
  br i1 %tobool5, label %if.then, label %if.end, !dbg !5361

if.then:                                          ; preds = %do.body
  br label %do.body6, !dbg !5358

do.body6:                                         ; preds = %if.then
  br label %do.body7, !dbg !5362

do.body7:                                         ; preds = %do.body6
  br label %do.cond, !dbg !5364

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !5364

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !5362

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 52, i32 0, i64 12) #8, !dbg !5366, !srcloc !5368
  br label %do.cond9, !dbg !5366

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !5366

do.end10:                                         ; preds = %do.cond9
  unreachable, !dbg !5362

do.cond11:                                        ; No predecessors!
  br label %do.end12, !dbg !5362

do.end12:                                         ; preds = %do.cond11
  br label %if.end, !dbg !5362

if.end:                                           ; preds = %do.end12, %do.body
  br label %do.cond13, !dbg !5361

do.cond13:                                        ; preds = %if.end
  br label %do.end14, !dbg !5361

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !5369
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5338, metadata !DIExpression()), !dbg !5369
  %4 = load ptr, ptr %vblank.addr, align 8, !dbg !5369
  %pending_work = getelementptr inbounds %struct.drm_vblank_crtc, ptr %4, i32 0, i32 16, !dbg !5369
  %next15 = getelementptr inbounds %struct.list_head, ptr %pending_work, i32 0, i32 0, !dbg !5369
  %5 = load ptr, ptr %next15, align 8, !dbg !5369
  store ptr %5, ptr %__mptr, align 8, !dbg !5369
  %6 = load ptr, ptr %__mptr, align 8, !dbg !5369
  %add.ptr = getelementptr i8, ptr %6, i64 -64, !dbg !5369
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5369
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !5370
  %7 = load ptr, ptr %tmp, align 8, !dbg !5369
  store ptr %7, ptr %work, align 8, !dbg !5370
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr16) #8, !dbg !5371
  call void @llvm.dbg.declare(metadata ptr %__mptr16, metadata !5341, metadata !DIExpression()), !dbg !5371
  %8 = load ptr, ptr %work, align 8, !dbg !5371
  %node = getelementptr inbounds %struct.drm_vblank_work, ptr %8, i32 0, i32 4, !dbg !5371
  %next17 = getelementptr inbounds %struct.list_head, ptr %node, i32 0, i32 0, !dbg !5371
  %9 = load ptr, ptr %next17, align 8, !dbg !5371
  store ptr %9, ptr %__mptr16, align 8, !dbg !5371
  %10 = load ptr, ptr %__mptr16, align 8, !dbg !5371
  %add.ptr19 = getelementptr i8, ptr %10, i64 -64, !dbg !5371
  store ptr %add.ptr19, ptr %tmp18, align 8, !dbg !5371
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr16) #8, !dbg !5370
  %11 = load ptr, ptr %tmp18, align 8, !dbg !5371
  store ptr %11, ptr %next, align 8, !dbg !5370
  br label %for.cond, !dbg !5370

for.cond:                                         ; preds = %for.inc, %do.end14
  %12 = load ptr, ptr %work, align 8, !dbg !5372
  %node20 = getelementptr inbounds %struct.drm_vblank_work, ptr %12, i32 0, i32 4, !dbg !5372
  %13 = load ptr, ptr %vblank.addr, align 8, !dbg !5372
  %pending_work21 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %13, i32 0, i32 16, !dbg !5372
  %cmp = icmp eq ptr %node20, %pending_work21, !dbg !5372
  %lnot23 = xor i1 %cmp, true, !dbg !5372
  br i1 %lnot23, label %for.body, label %for.end, !dbg !5370

for.body:                                         ; preds = %for.cond
  %14 = load i64, ptr %count, align 8, !dbg !5373
  %15 = load ptr, ptr %work, align 8, !dbg !5376
  %count25 = getelementptr inbounds %struct.drm_vblank_work, ptr %15, i32 0, i32 2, !dbg !5377
  %16 = load i64, ptr %count25, align 8, !dbg !5377
  %call26 = call zeroext i1 @drm_vblank_passed(i64 noundef %14, i64 noundef %16) #9, !dbg !5378
  br i1 %call26, label %if.end28, label %if.then27, !dbg !5379

if.then27:                                        ; preds = %for.body
  br label %for.inc, !dbg !5380

if.end28:                                         ; preds = %for.body
  %17 = load ptr, ptr %work, align 8, !dbg !5381
  %node29 = getelementptr inbounds %struct.drm_vblank_work, ptr %17, i32 0, i32 4, !dbg !5382
  call void @list_del_init(ptr noundef %node29) #9, !dbg !5383
  %18 = load ptr, ptr %vblank.addr, align 8, !dbg !5384
  %dev30 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %18, i32 0, i32 0, !dbg !5385
  %19 = load ptr, ptr %dev30, align 8, !dbg !5385
  %20 = load ptr, ptr %vblank.addr, align 8, !dbg !5386
  %pipe = getelementptr inbounds %struct.drm_vblank_crtc, ptr %20, i32 0, i32 10, !dbg !5387
  %21 = load i32, ptr %pipe, align 8, !dbg !5387
  call void @drm_vblank_put(ptr noundef %19, i32 noundef %21) #9, !dbg !5388
  %22 = load ptr, ptr %vblank.addr, align 8, !dbg !5389
  %worker = getelementptr inbounds %struct.drm_vblank_crtc, ptr %22, i32 0, i32 15, !dbg !5390
  %23 = load ptr, ptr %worker, align 8, !dbg !5390
  %24 = load ptr, ptr %work, align 8, !dbg !5391
  %base = getelementptr inbounds %struct.drm_vblank_work, ptr %24, i32 0, i32 0, !dbg !5392
  %call31 = call zeroext i1 @kthread_queue_work(ptr noundef %23, ptr noundef %base) #9, !dbg !5393
  store i8 1, ptr %wake, align 1, !dbg !5394
  br label %for.inc, !dbg !5395

for.inc:                                          ; preds = %if.end28, %if.then27
  %25 = load ptr, ptr %next, align 8, !dbg !5372
  store ptr %25, ptr %work, align 8, !dbg !5372
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr32) #8, !dbg !5396
  call void @llvm.dbg.declare(metadata ptr %__mptr32, metadata !5343, metadata !DIExpression()), !dbg !5396
  %26 = load ptr, ptr %next, align 8, !dbg !5396
  %node33 = getelementptr inbounds %struct.drm_vblank_work, ptr %26, i32 0, i32 4, !dbg !5396
  %next34 = getelementptr inbounds %struct.list_head, ptr %node33, i32 0, i32 0, !dbg !5396
  %27 = load ptr, ptr %next34, align 8, !dbg !5396
  store ptr %27, ptr %__mptr32, align 8, !dbg !5396
  %28 = load ptr, ptr %__mptr32, align 8, !dbg !5396
  %add.ptr36 = getelementptr i8, ptr %28, i64 -64, !dbg !5396
  store ptr %add.ptr36, ptr %tmp35, align 8, !dbg !5396
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr32) #8, !dbg !5372
  %29 = load ptr, ptr %tmp35, align 8, !dbg !5396
  store ptr %29, ptr %next, align 8, !dbg !5372
  br label %for.cond, !dbg !5372, !llvm.loop !5397

for.end:                                          ; preds = %for.cond
  %30 = load i8, ptr %wake, align 1, !dbg !5401, !range !5403, !noundef !755
  %tobool37 = trunc i8 %30 to i1, !dbg !5401
  br i1 %tobool37, label %if.then38, label %if.end40, !dbg !5404

if.then38:                                        ; preds = %for.end
  %31 = load ptr, ptr %vblank.addr, align 8, !dbg !5405
  %work_wait_queue = getelementptr inbounds %struct.drm_vblank_crtc, ptr %31, i32 0, i32 17, !dbg !5405
  %call39 = call i32 @__wake_up(ptr noundef %work_wait_queue, i32 noundef 3, i32 noundef 0, ptr noundef null) #9, !dbg !5405
  br label %if.end40, !dbg !5405

if.end40:                                         ; preds = %if.then38, %for.end
  call void @llvm.lifetime.end.p0(i64 1, ptr %wake) #8, !dbg !5406
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #8, !dbg !5406
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #8, !dbg !5406
  call void @llvm.lifetime.end.p0(i64 8, ptr %work) #8, !dbg !5406
  ret void, !dbg !5406
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic64_read(ptr noundef %v) #3 align 16 !dbg !5407 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5414, metadata !DIExpression()), !dbg !5415
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5416
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #9, !dbg !5417
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5418
  %call = call i64 @raw_atomic64_read(ptr noundef %1) #9, !dbg !5419
  ret i64 %call, !dbg !5420
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @queued_spin_is_locked(ptr noundef %lock) #3 align 16 !dbg !5421 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5427, metadata !DIExpression()), !dbg !5428
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5429
  %1 = getelementptr inbounds %struct.qspinlock, ptr %0, i32 0, i32 0, !dbg !5430
  %call = call i32 @atomic_read(ptr noundef %1) #9, !dbg !5431
  ret i32 %call, !dbg !5432
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drm_vblank_passed(i64 noundef %seq, i64 noundef %ref) #5 align 16 !dbg !5433 {
entry:
  %seq.addr = alloca i64, align 8
  %ref.addr = alloca i64, align 8
  store i64 %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !5438, metadata !DIExpression()), !dbg !5440
  store i64 %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !5439, metadata !DIExpression()), !dbg !5441
  %0 = load i64, ptr %seq.addr, align 8, !dbg !5442
  %1 = load i64, ptr %ref.addr, align 8, !dbg !5443
  %sub = sub i64 %0, %1, !dbg !5444
  %cmp = icmp ule i64 %sub, 8388608, !dbg !5445
  ret i1 %cmp, !dbg !5446
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #5 align 16 !dbg !5447 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5452, metadata !DIExpression()), !dbg !5453
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5454
  call void @__list_del_entry(ptr noundef %0) #9, !dbg !5455
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5456
  call void @INIT_LIST_HEAD(ptr noundef %1) #9, !dbg !5457
  ret void, !dbg !5458
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5459 dso_local void @drm_vblank_put(ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5462 dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5465 dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_vblank_cancel_pending_works(ptr noundef %vblank) #0 align 16 !dbg !5469 {
entry:
  %vblank.addr = alloca ptr, align 8
  %work = alloca ptr, align 8
  %next = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr14 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  %__mptr25 = alloca ptr, align 8
  %tmp28 = alloca ptr, align 8
  store ptr %vblank, ptr %vblank.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vblank.addr, metadata !5471, metadata !DIExpression()), !dbg !5482
  call void @llvm.lifetime.start.p0(i64 8, ptr %work) #8, !dbg !5483
  call void @llvm.dbg.declare(metadata ptr %work, metadata !5472, metadata !DIExpression()), !dbg !5484
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #8, !dbg !5483
  call void @llvm.dbg.declare(metadata ptr %next, metadata !5473, metadata !DIExpression()), !dbg !5485
  br label %do.body, !dbg !5486

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %vblank.addr, align 8, !dbg !5487
  %dev = getelementptr inbounds %struct.drm_vblank_crtc, ptr %0, i32 0, i32 0, !dbg !5487
  %1 = load ptr, ptr %dev, align 8, !dbg !5487
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 29, !dbg !5487
  %2 = getelementptr inbounds %struct.spinlock, ptr %event_lock, i32 0, i32 0, !dbg !5487
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %2, i32 0, i32 0, !dbg !5487
  %call = call i32 @queued_spin_is_locked(ptr noundef %raw_lock) #9, !dbg !5487
  %tobool = icmp ne i32 %call, 0, !dbg !5487
  %lnot = xor i1 %tobool, true, !dbg !5487
  %lnot1 = xor i1 %lnot, true, !dbg !5487
  %lnot2 = xor i1 %lnot1, true, !dbg !5487
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5487
  %conv = sext i32 %lnot.ext to i64, !dbg !5487
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5487
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5487
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5490

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !5487

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !5491

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !5493

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !5493

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !5491

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 74, i32 0, i64 12) #8, !dbg !5495, !srcloc !5497
  br label %do.cond7, !dbg !5495

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !5495

do.end8:                                          ; preds = %do.cond7
  unreachable, !dbg !5491

do.cond9:                                         ; No predecessors!
  br label %do.end10, !dbg !5491

do.end10:                                         ; preds = %do.cond9
  br label %if.end, !dbg !5491

if.end:                                           ; preds = %do.end10, %do.body
  br label %do.cond11, !dbg !5490

do.cond11:                                        ; preds = %if.end
  br label %do.end12, !dbg !5490

do.end12:                                         ; preds = %do.cond11
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !5498
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5474, metadata !DIExpression()), !dbg !5498
  %3 = load ptr, ptr %vblank.addr, align 8, !dbg !5498
  %pending_work = getelementptr inbounds %struct.drm_vblank_crtc, ptr %3, i32 0, i32 16, !dbg !5498
  %next13 = getelementptr inbounds %struct.list_head, ptr %pending_work, i32 0, i32 0, !dbg !5498
  %4 = load ptr, ptr %next13, align 8, !dbg !5498
  store ptr %4, ptr %__mptr, align 8, !dbg !5498
  %5 = load ptr, ptr %__mptr, align 8, !dbg !5498
  %add.ptr = getelementptr i8, ptr %5, i64 -64, !dbg !5498
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5498
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !5499
  %6 = load ptr, ptr %tmp, align 8, !dbg !5498
  store ptr %6, ptr %work, align 8, !dbg !5499
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr14) #8, !dbg !5500
  call void @llvm.dbg.declare(metadata ptr %__mptr14, metadata !5477, metadata !DIExpression()), !dbg !5500
  %7 = load ptr, ptr %work, align 8, !dbg !5500
  %node = getelementptr inbounds %struct.drm_vblank_work, ptr %7, i32 0, i32 4, !dbg !5500
  %next15 = getelementptr inbounds %struct.list_head, ptr %node, i32 0, i32 0, !dbg !5500
  %8 = load ptr, ptr %next15, align 8, !dbg !5500
  store ptr %8, ptr %__mptr14, align 8, !dbg !5500
  %9 = load ptr, ptr %__mptr14, align 8, !dbg !5500
  %add.ptr17 = getelementptr i8, ptr %9, i64 -64, !dbg !5500
  store ptr %add.ptr17, ptr %tmp16, align 8, !dbg !5500
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr14) #8, !dbg !5499
  %10 = load ptr, ptr %tmp16, align 8, !dbg !5500
  store ptr %10, ptr %next, align 8, !dbg !5499
  br label %for.cond, !dbg !5499

for.cond:                                         ; preds = %for.inc, %do.end12
  %11 = load ptr, ptr %work, align 8, !dbg !5501
  %node18 = getelementptr inbounds %struct.drm_vblank_work, ptr %11, i32 0, i32 4, !dbg !5501
  %12 = load ptr, ptr %vblank.addr, align 8, !dbg !5501
  %pending_work19 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %12, i32 0, i32 16, !dbg !5501
  %cmp = icmp eq ptr %node18, %pending_work19, !dbg !5501
  %lnot21 = xor i1 %cmp, true, !dbg !5501
  br i1 %lnot21, label %for.body, label %for.end, !dbg !5499

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %work, align 8, !dbg !5502
  %node23 = getelementptr inbounds %struct.drm_vblank_work, ptr %13, i32 0, i32 4, !dbg !5504
  call void @list_del_init(ptr noundef %node23) #9, !dbg !5505
  %14 = load ptr, ptr %vblank.addr, align 8, !dbg !5506
  %dev24 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %14, i32 0, i32 0, !dbg !5507
  %15 = load ptr, ptr %dev24, align 8, !dbg !5507
  %16 = load ptr, ptr %vblank.addr, align 8, !dbg !5508
  %pipe = getelementptr inbounds %struct.drm_vblank_crtc, ptr %16, i32 0, i32 10, !dbg !5509
  %17 = load i32, ptr %pipe, align 8, !dbg !5509
  call void @drm_vblank_put(ptr noundef %15, i32 noundef %17) #9, !dbg !5510
  br label %for.inc, !dbg !5511

for.inc:                                          ; preds = %for.body
  %18 = load ptr, ptr %next, align 8, !dbg !5501
  store ptr %18, ptr %work, align 8, !dbg !5501
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr25) #8, !dbg !5512
  call void @llvm.dbg.declare(metadata ptr %__mptr25, metadata !5479, metadata !DIExpression()), !dbg !5512
  %19 = load ptr, ptr %next, align 8, !dbg !5512
  %node26 = getelementptr inbounds %struct.drm_vblank_work, ptr %19, i32 0, i32 4, !dbg !5512
  %next27 = getelementptr inbounds %struct.list_head, ptr %node26, i32 0, i32 0, !dbg !5512
  %20 = load ptr, ptr %next27, align 8, !dbg !5512
  store ptr %20, ptr %__mptr25, align 8, !dbg !5512
  %21 = load ptr, ptr %__mptr25, align 8, !dbg !5512
  %add.ptr29 = getelementptr i8, ptr %21, i64 -64, !dbg !5512
  store ptr %add.ptr29, ptr %tmp28, align 8, !dbg !5512
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr25) #8, !dbg !5501
  %22 = load ptr, ptr %tmp28, align 8, !dbg !5512
  store ptr %22, ptr %next, align 8, !dbg !5501
  br label %for.cond, !dbg !5501, !llvm.loop !5513

for.end:                                          ; preds = %for.cond
  %23 = load ptr, ptr %vblank.addr, align 8, !dbg !5515
  %work_wait_queue = getelementptr inbounds %struct.drm_vblank_crtc, ptr %23, i32 0, i32 17, !dbg !5515
  %call30 = call i32 @__wake_up(ptr noundef %work_wait_queue, i32 noundef 3, i32 noundef 0, ptr noundef null) #9, !dbg !5515
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #8, !dbg !5516
  call void @llvm.lifetime.end.p0(i64 8, ptr %work) #8, !dbg !5516
  ret void, !dbg !5516
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_vblank_work_schedule(ptr noundef %work, i64 noundef %count, i1 noundef zeroext %nextonmiss) #0 align 16 !dbg !5517 {
entry:
  %work.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %nextonmiss.addr = alloca i8, align 1
  %vblank = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %cur_vbl = alloca i64, align 8
  %irqflags = alloca i64, align 8
  %passed = alloca i8, align 1
  %inmodeset = alloca i8, align 1
  %rescheduling = alloca i8, align 1
  %wake = alloca i8, align 1
  %ret = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !5521, metadata !DIExpression()), !dbg !5539
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5522, metadata !DIExpression()), !dbg !5540
  %frombool = zext i1 %nextonmiss to i8
  store i8 %frombool, ptr %nextonmiss.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %nextonmiss.addr, metadata !5523, metadata !DIExpression()), !dbg !5541
  call void @llvm.lifetime.start.p0(i64 8, ptr %vblank) #8, !dbg !5542
  call void @llvm.dbg.declare(metadata ptr %vblank, metadata !5524, metadata !DIExpression()), !dbg !5543
  %0 = load ptr, ptr %work.addr, align 8, !dbg !5544
  %vblank1 = getelementptr inbounds %struct.drm_vblank_work, ptr %0, i32 0, i32 1, !dbg !5545
  %1 = load ptr, ptr %vblank1, align 8, !dbg !5545
  store ptr %1, ptr %vblank, align 8, !dbg !5543
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #8, !dbg !5546
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5525, metadata !DIExpression()), !dbg !5547
  %2 = load ptr, ptr %vblank, align 8, !dbg !5548
  %dev2 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %2, i32 0, i32 0, !dbg !5549
  %3 = load ptr, ptr %dev2, align 8, !dbg !5549
  store ptr %3, ptr %dev, align 8, !dbg !5547
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_vbl) #8, !dbg !5550
  call void @llvm.dbg.declare(metadata ptr %cur_vbl, metadata !5526, metadata !DIExpression()), !dbg !5551
  call void @llvm.lifetime.start.p0(i64 8, ptr %irqflags) #8, !dbg !5552
  call void @llvm.dbg.declare(metadata ptr %irqflags, metadata !5527, metadata !DIExpression()), !dbg !5553
  call void @llvm.lifetime.start.p0(i64 1, ptr %passed) #8, !dbg !5554
  call void @llvm.dbg.declare(metadata ptr %passed, metadata !5528, metadata !DIExpression()), !dbg !5555
  call void @llvm.lifetime.start.p0(i64 1, ptr %inmodeset) #8, !dbg !5554
  call void @llvm.dbg.declare(metadata ptr %inmodeset, metadata !5529, metadata !DIExpression()), !dbg !5556
  call void @llvm.lifetime.start.p0(i64 1, ptr %rescheduling) #8, !dbg !5554
  call void @llvm.dbg.declare(metadata ptr %rescheduling, metadata !5530, metadata !DIExpression()), !dbg !5557
  store i8 0, ptr %rescheduling, align 1, !dbg !5557
  call void @llvm.lifetime.start.p0(i64 1, ptr %wake) #8, !dbg !5554
  call void @llvm.dbg.declare(metadata ptr %wake, metadata !5531, metadata !DIExpression()), !dbg !5558
  store i8 0, ptr %wake, align 1, !dbg !5558
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !5559
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5532, metadata !DIExpression()), !dbg !5560
  store i32 0, ptr %ret, align 4, !dbg !5560
  br label %do.body, !dbg !5561

do.body:                                          ; preds = %entry
  br label %do.body3, !dbg !5562

do.body3:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #8, !dbg !5563
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5533, metadata !DIExpression()), !dbg !5563
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #8, !dbg !5563
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5537, metadata !DIExpression()), !dbg !5563
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5563
  %conv = zext i1 %cmp to i32, !dbg !5563
  store i32 1, ptr %tmp, align 4, !dbg !5563
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #8, !dbg !5564
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #8, !dbg !5564
  %4 = load i32, ptr %tmp, align 4, !dbg !5563
  %5 = load ptr, ptr %dev, align 8, !dbg !5564
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 29, !dbg !5564
  %call = call ptr @spinlock_check(ptr noundef %event_lock) #9, !dbg !5564
  %call4 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #9, !dbg !5564
  store i64 %call4, ptr %irqflags, align 8, !dbg !5564
  br label %do.cond, !dbg !5564

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !5564

do.end:                                           ; preds = %do.cond
  br label %do.cond5, !dbg !5562

do.cond5:                                         ; preds = %do.end
  br label %do.end6, !dbg !5562

do.end6:                                          ; preds = %do.cond5
  %6 = load ptr, ptr %work.addr, align 8, !dbg !5565
  %cancelling = getelementptr inbounds %struct.drm_vblank_work, ptr %6, i32 0, i32 3, !dbg !5567
  %7 = load i32, ptr %cancelling, align 8, !dbg !5567
  %tobool = icmp ne i32 %7, 0, !dbg !5565
  br i1 %tobool, label %if.then, label %if.end, !dbg !5568

if.then:                                          ; preds = %do.end6
  br label %out, !dbg !5569

if.end:                                           ; preds = %do.end6
  %8 = load ptr, ptr %dev, align 8, !dbg !5570
  %vbl_lock = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 26, !dbg !5571
  call void @spin_lock(ptr noundef %vbl_lock) #9, !dbg !5572
  %9 = load ptr, ptr %vblank, align 8, !dbg !5573
  %inmodeset7 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %9, i32 0, i32 9, !dbg !5574
  %10 = load i32, ptr %inmodeset7, align 4, !dbg !5574
  %tobool8 = icmp ne i32 %10, 0, !dbg !5573
  %frombool9 = zext i1 %tobool8 to i8, !dbg !5575
  store i8 %frombool9, ptr %inmodeset, align 1, !dbg !5575
  %11 = load ptr, ptr %dev, align 8, !dbg !5576
  %vbl_lock10 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 26, !dbg !5577
  call void @spin_unlock(ptr noundef %vbl_lock10) #9, !dbg !5578
  %12 = load i8, ptr %inmodeset, align 1, !dbg !5579, !range !5403, !noundef !755
  %tobool11 = trunc i8 %12 to i1, !dbg !5579
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !5581

if.then12:                                        ; preds = %if.end
  br label %out, !dbg !5582

if.end13:                                         ; preds = %if.end
  %13 = load ptr, ptr %work.addr, align 8, !dbg !5583
  %node = getelementptr inbounds %struct.drm_vblank_work, ptr %13, i32 0, i32 4, !dbg !5585
  %call14 = call i32 @list_empty(ptr noundef %node) #9, !dbg !5586
  %tobool15 = icmp ne i32 %call14, 0, !dbg !5586
  br i1 %tobool15, label %if.then16, label %if.else, !dbg !5587

if.then16:                                        ; preds = %if.end13
  %14 = load ptr, ptr %dev, align 8, !dbg !5588
  %15 = load ptr, ptr %vblank, align 8, !dbg !5590
  %pipe = getelementptr inbounds %struct.drm_vblank_crtc, ptr %15, i32 0, i32 10, !dbg !5591
  %16 = load i32, ptr %pipe, align 8, !dbg !5591
  %call17 = call i32 @drm_vblank_get(ptr noundef %14, i32 noundef %16) #9, !dbg !5592
  store i32 %call17, ptr %ret, align 4, !dbg !5593
  %17 = load i32, ptr %ret, align 4, !dbg !5594
  %cmp18 = icmp slt i32 %17, 0, !dbg !5596
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !5597

if.then20:                                        ; preds = %if.then16
  br label %out, !dbg !5598

if.end21:                                         ; preds = %if.then16
  br label %if.end28, !dbg !5599

if.else:                                          ; preds = %if.end13
  %18 = load ptr, ptr %work.addr, align 8, !dbg !5600
  %count22 = getelementptr inbounds %struct.drm_vblank_work, ptr %18, i32 0, i32 2, !dbg !5602
  %19 = load i64, ptr %count22, align 8, !dbg !5602
  %20 = load i64, ptr %count.addr, align 8, !dbg !5603
  %cmp23 = icmp eq i64 %19, %20, !dbg !5604
  br i1 %cmp23, label %if.then25, label %if.else26, !dbg !5605

if.then25:                                        ; preds = %if.else
  br label %out, !dbg !5606

if.else26:                                        ; preds = %if.else
  store i8 1, ptr %rescheduling, align 1, !dbg !5608
  br label %if.end27

if.end27:                                         ; preds = %if.else26
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end21
  %21 = load i64, ptr %count.addr, align 8, !dbg !5610
  %22 = load ptr, ptr %work.addr, align 8, !dbg !5611
  %count29 = getelementptr inbounds %struct.drm_vblank_work, ptr %22, i32 0, i32 2, !dbg !5612
  store i64 %21, ptr %count29, align 8, !dbg !5613
  %23 = load ptr, ptr %dev, align 8, !dbg !5614
  %24 = load ptr, ptr %vblank, align 8, !dbg !5615
  %pipe30 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %24, i32 0, i32 10, !dbg !5616
  %25 = load i32, ptr %pipe30, align 8, !dbg !5616
  %call31 = call i64 @drm_vblank_count(ptr noundef %23, i32 noundef %25) #9, !dbg !5617
  store i64 %call31, ptr %cur_vbl, align 8, !dbg !5618
  %26 = load i64, ptr %cur_vbl, align 8, !dbg !5619
  %27 = load i64, ptr %count.addr, align 8, !dbg !5620
  %call32 = call zeroext i1 @drm_vblank_passed(i64 noundef %26, i64 noundef %27) #9, !dbg !5621
  %frombool33 = zext i1 %call32 to i8, !dbg !5622
  store i8 %frombool33, ptr %passed, align 1, !dbg !5622
  %28 = load i8, ptr %passed, align 1, !dbg !5623, !range !5403, !noundef !755
  %tobool34 = trunc i8 %28 to i1, !dbg !5623
  br i1 %tobool34, label %if.then35, label %if.end39, !dbg !5625

if.then35:                                        ; preds = %if.end28
  %29 = load ptr, ptr %dev, align 8, !dbg !5626
  %tobool36 = icmp ne ptr %29, null, !dbg !5626
  br i1 %tobool36, label %cond.true, label %cond.false, !dbg !5626

cond.true:                                        ; preds = %if.then35
  %30 = load ptr, ptr %dev, align 8, !dbg !5626
  %dev37 = getelementptr inbounds %struct.drm_device, ptr %30, i32 0, i32 2, !dbg !5626
  %31 = load ptr, ptr %dev37, align 8, !dbg !5626
  br label %cond.end, !dbg !5626

cond.false:                                       ; preds = %if.then35
  br label %cond.end, !dbg !5626

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %31, %cond.true ], [ null, %cond.false ], !dbg !5626
  %32 = load ptr, ptr %vblank, align 8, !dbg !5626
  %pipe38 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %32, i32 0, i32 10, !dbg !5626
  %33 = load i32, ptr %pipe38, align 8, !dbg !5626
  %34 = load i64, ptr %count.addr, align 8, !dbg !5626
  %35 = load i64, ptr %cur_vbl, align 8, !dbg !5626
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond, i32 noundef 0, ptr noundef @.str.1, i32 noundef %33, i64 noundef %34, i64 noundef %35) #9, !dbg !5626
  br label %if.end39, !dbg !5626

if.end39:                                         ; preds = %cond.end, %if.end28
  %36 = load i8, ptr %nextonmiss.addr, align 1, !dbg !5627, !range !5403, !noundef !755
  %tobool40 = trunc i8 %36 to i1, !dbg !5627
  br i1 %tobool40, label %if.else51, label %land.lhs.true, !dbg !5629

land.lhs.true:                                    ; preds = %if.end39
  %37 = load i8, ptr %passed, align 1, !dbg !5630, !range !5403, !noundef !755
  %tobool41 = trunc i8 %37 to i1, !dbg !5630
  br i1 %tobool41, label %if.then43, label %if.else51, !dbg !5631

if.then43:                                        ; preds = %land.lhs.true
  %38 = load ptr, ptr %dev, align 8, !dbg !5632
  %39 = load ptr, ptr %vblank, align 8, !dbg !5634
  %pipe44 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %39, i32 0, i32 10, !dbg !5635
  %40 = load i32, ptr %pipe44, align 8, !dbg !5635
  call void @drm_vblank_put(ptr noundef %38, i32 noundef %40) #9, !dbg !5636
  %41 = load ptr, ptr %vblank, align 8, !dbg !5637
  %worker = getelementptr inbounds %struct.drm_vblank_crtc, ptr %41, i32 0, i32 15, !dbg !5638
  %42 = load ptr, ptr %worker, align 8, !dbg !5638
  %43 = load ptr, ptr %work.addr, align 8, !dbg !5639
  %base = getelementptr inbounds %struct.drm_vblank_work, ptr %43, i32 0, i32 0, !dbg !5640
  %call45 = call zeroext i1 @kthread_queue_work(ptr noundef %42, ptr noundef %base) #9, !dbg !5641
  %conv46 = zext i1 %call45 to i32, !dbg !5641
  store i32 %conv46, ptr %ret, align 4, !dbg !5642
  %44 = load i8, ptr %rescheduling, align 1, !dbg !5643, !range !5403, !noundef !755
  %tobool47 = trunc i8 %44 to i1, !dbg !5643
  br i1 %tobool47, label %if.then48, label %if.end50, !dbg !5645

if.then48:                                        ; preds = %if.then43
  %45 = load ptr, ptr %work.addr, align 8, !dbg !5646
  %node49 = getelementptr inbounds %struct.drm_vblank_work, ptr %45, i32 0, i32 4, !dbg !5648
  call void @list_del_init(ptr noundef %node49) #9, !dbg !5649
  store i8 1, ptr %wake, align 1, !dbg !5650
  br label %if.end50, !dbg !5651

if.end50:                                         ; preds = %if.then48, %if.then43
  br label %if.end56, !dbg !5652

if.else51:                                        ; preds = %land.lhs.true, %if.end39
  %46 = load i8, ptr %rescheduling, align 1, !dbg !5653, !range !5403, !noundef !755
  %tobool52 = trunc i8 %46 to i1, !dbg !5653
  br i1 %tobool52, label %if.end55, label %if.then53, !dbg !5656

if.then53:                                        ; preds = %if.else51
  %47 = load ptr, ptr %work.addr, align 8, !dbg !5657
  %node54 = getelementptr inbounds %struct.drm_vblank_work, ptr %47, i32 0, i32 4, !dbg !5658
  %48 = load ptr, ptr %vblank, align 8, !dbg !5659
  %pending_work = getelementptr inbounds %struct.drm_vblank_crtc, ptr %48, i32 0, i32 16, !dbg !5660
  call void @list_add_tail(ptr noundef %node54, ptr noundef %pending_work) #9, !dbg !5661
  br label %if.end55, !dbg !5661

if.end55:                                         ; preds = %if.then53, %if.else51
  store i32 1, ptr %ret, align 4, !dbg !5662
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.end50
  br label %out, !dbg !5630

out:                                              ; preds = %if.end56, %if.then25, %if.then20, %if.then12, %if.then
  call void @llvm.dbg.label(metadata !5538), !dbg !5663
  %49 = load ptr, ptr %dev, align 8, !dbg !5664
  %event_lock57 = getelementptr inbounds %struct.drm_device, ptr %49, i32 0, i32 29, !dbg !5665
  %50 = load i64, ptr %irqflags, align 8, !dbg !5666
  call void @spin_unlock_irqrestore(ptr noundef %event_lock57, i64 noundef %50) #9, !dbg !5667
  %51 = load i8, ptr %wake, align 1, !dbg !5668, !range !5403, !noundef !755
  %tobool58 = trunc i8 %51 to i1, !dbg !5668
  br i1 %tobool58, label %if.then59, label %if.end61, !dbg !5670

if.then59:                                        ; preds = %out
  %52 = load ptr, ptr %vblank, align 8, !dbg !5671
  %work_wait_queue = getelementptr inbounds %struct.drm_vblank_crtc, ptr %52, i32 0, i32 17, !dbg !5671
  %call60 = call i32 @__wake_up(ptr noundef %work_wait_queue, i32 noundef 3, i32 noundef 0, ptr noundef null) #9, !dbg !5671
  br label %if.end61, !dbg !5671

if.end61:                                         ; preds = %if.then59, %out
  %53 = load i32, ptr %ret, align 4, !dbg !5672
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !5673
  call void @llvm.lifetime.end.p0(i64 1, ptr %wake) #8, !dbg !5673
  call void @llvm.lifetime.end.p0(i64 1, ptr %rescheduling) #8, !dbg !5673
  call void @llvm.lifetime.end.p0(i64 1, ptr %inmodeset) #8, !dbg !5673
  call void @llvm.lifetime.end.p0(i64 1, ptr %passed) #8, !dbg !5673
  call void @llvm.lifetime.end.p0(i64 8, ptr %irqflags) #8, !dbg !5673
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_vbl) #8, !dbg !5673
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #8, !dbg !5673
  call void @llvm.lifetime.end.p0(i64 8, ptr %vblank) #8, !dbg !5673
  ret i32 %53, !dbg !5674
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5675 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #3 align 16 !dbg !5680 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5685, metadata !DIExpression()), !dbg !5686
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5687
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5688
  ret ptr %1, !dbg !5689
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #3 align 16 !dbg !5690 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5694, metadata !DIExpression()), !dbg !5695
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5696
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5696
  call void @_raw_spin_lock(ptr noundef %1) #9, !dbg !5696
  ret void, !dbg !5697
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #3 align 16 !dbg !5698 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5700, metadata !DIExpression()), !dbg !5701
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5702
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5702
  call void @_raw_spin_unlock(ptr noundef %1) #9, !dbg !5702
  ret void, !dbg !5703
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #5 align 16 !dbg !5704 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5710, metadata !DIExpression()), !dbg !5711
  br label %do.body, !dbg !5712

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5714

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5712
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !5712
  %1 = load volatile ptr, ptr %next, align 8, !dbg !5712
  store ptr %1, ptr %tmp, align 8, !dbg !5714
  %2 = load ptr, ptr %tmp, align 8, !dbg !5712
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5716
  %cmp = icmp eq ptr %2, %3, !dbg !5717
  %conv = zext i1 %cmp to i32, !dbg !5717
  ret i32 %conv, !dbg !5718
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5719 dso_local i32 @drm_vblank_get(ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5722 dso_local i64 @drm_vblank_count(ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5725 dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !5761 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5765, metadata !DIExpression()), !dbg !5767
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5766, metadata !DIExpression()), !dbg !5768
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5769
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5770
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5771
  %2 = load ptr, ptr %prev, align 8, !dbg !5771
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5772
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #9, !dbg !5773
  ret void, !dbg !5774
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #3 align 16 !dbg !5775 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5779, metadata !DIExpression()), !dbg !5785
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5780, metadata !DIExpression()), !dbg !5786
  br label %do.body, !dbg !5787

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #8, !dbg !5788
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5781, metadata !DIExpression()), !dbg !5788
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #8, !dbg !5788
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5784, metadata !DIExpression()), !dbg !5788
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5788
  %conv = zext i1 %cmp to i32, !dbg !5788
  store i32 1, ptr %tmp, align 4, !dbg !5788
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #8, !dbg !5789
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #8, !dbg !5789
  %0 = load i32, ptr %tmp, align 4, !dbg !5788
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !5789
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !5789
  %3 = load i64, ptr %flags.addr, align 8, !dbg !5789
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #9, !dbg !5789
  br label %do.end, !dbg !5789

do.end:                                           ; preds = %do.body
  ret void, !dbg !5790
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @drm_vblank_work_cancel_sync(ptr noundef %work) #0 align 16 !dbg !5791 {
entry:
  %work.addr = alloca ptr, align 8
  %vblank = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %ret = alloca i8, align 1
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !5795, metadata !DIExpression()), !dbg !5799
  call void @llvm.lifetime.start.p0(i64 8, ptr %vblank) #8, !dbg !5800
  call void @llvm.dbg.declare(metadata ptr %vblank, metadata !5796, metadata !DIExpression()), !dbg !5801
  %0 = load ptr, ptr %work.addr, align 8, !dbg !5802
  %vblank1 = getelementptr inbounds %struct.drm_vblank_work, ptr %0, i32 0, i32 1, !dbg !5803
  %1 = load ptr, ptr %vblank1, align 8, !dbg !5803
  store ptr %1, ptr %vblank, align 8, !dbg !5801
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #8, !dbg !5804
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5797, metadata !DIExpression()), !dbg !5805
  %2 = load ptr, ptr %vblank, align 8, !dbg !5806
  %dev2 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %2, i32 0, i32 0, !dbg !5807
  %3 = load ptr, ptr %dev2, align 8, !dbg !5807
  store ptr %3, ptr %dev, align 8, !dbg !5805
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #8, !dbg !5808
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5798, metadata !DIExpression()), !dbg !5809
  store i8 0, ptr %ret, align 1, !dbg !5809
  %4 = load ptr, ptr %dev, align 8, !dbg !5810
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 29, !dbg !5811
  call void @spin_lock_irq(ptr noundef %event_lock) #9, !dbg !5812
  %5 = load ptr, ptr %work.addr, align 8, !dbg !5813
  %node = getelementptr inbounds %struct.drm_vblank_work, ptr %5, i32 0, i32 4, !dbg !5815
  %call = call i32 @list_empty(ptr noundef %node) #9, !dbg !5816
  %tobool = icmp ne i32 %call, 0, !dbg !5816
  br i1 %tobool, label %if.end, label %if.then, !dbg !5817

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %work.addr, align 8, !dbg !5818
  %node3 = getelementptr inbounds %struct.drm_vblank_work, ptr %6, i32 0, i32 4, !dbg !5820
  call void @list_del_init(ptr noundef %node3) #9, !dbg !5821
  %7 = load ptr, ptr %vblank, align 8, !dbg !5822
  %dev4 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %7, i32 0, i32 0, !dbg !5823
  %8 = load ptr, ptr %dev4, align 8, !dbg !5823
  %9 = load ptr, ptr %vblank, align 8, !dbg !5824
  %pipe = getelementptr inbounds %struct.drm_vblank_crtc, ptr %9, i32 0, i32 10, !dbg !5825
  %10 = load i32, ptr %pipe, align 8, !dbg !5825
  call void @drm_vblank_put(ptr noundef %8, i32 noundef %10) #9, !dbg !5826
  store i8 1, ptr %ret, align 1, !dbg !5827
  br label %if.end, !dbg !5828

if.end:                                           ; preds = %if.then, %entry
  %11 = load ptr, ptr %work.addr, align 8, !dbg !5829
  %cancelling = getelementptr inbounds %struct.drm_vblank_work, ptr %11, i32 0, i32 3, !dbg !5830
  %12 = load i32, ptr %cancelling, align 8, !dbg !5831
  %inc = add i32 %12, 1, !dbg !5831
  store i32 %inc, ptr %cancelling, align 8, !dbg !5831
  %13 = load ptr, ptr %dev, align 8, !dbg !5832
  %event_lock5 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 29, !dbg !5833
  call void @spin_unlock_irq(ptr noundef %event_lock5) #9, !dbg !5834
  %14 = load ptr, ptr %vblank, align 8, !dbg !5835
  %work_wait_queue = getelementptr inbounds %struct.drm_vblank_crtc, ptr %14, i32 0, i32 17, !dbg !5835
  %call6 = call i32 @__wake_up(ptr noundef %work_wait_queue, i32 noundef 3, i32 noundef 0, ptr noundef null) #9, !dbg !5835
  %15 = load ptr, ptr %work.addr, align 8, !dbg !5836
  %base = getelementptr inbounds %struct.drm_vblank_work, ptr %15, i32 0, i32 0, !dbg !5838
  %call7 = call zeroext i1 @kthread_cancel_work_sync(ptr noundef %base) #9, !dbg !5839
  br i1 %call7, label %if.then8, label %if.end9, !dbg !5840

if.then8:                                         ; preds = %if.end
  store i8 1, ptr %ret, align 1, !dbg !5841
  br label %if.end9, !dbg !5842

if.end9:                                          ; preds = %if.then8, %if.end
  %16 = load ptr, ptr %dev, align 8, !dbg !5843
  %event_lock10 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 29, !dbg !5844
  call void @spin_lock_irq(ptr noundef %event_lock10) #9, !dbg !5845
  %17 = load ptr, ptr %work.addr, align 8, !dbg !5846
  %cancelling11 = getelementptr inbounds %struct.drm_vblank_work, ptr %17, i32 0, i32 3, !dbg !5847
  %18 = load i32, ptr %cancelling11, align 8, !dbg !5848
  %dec = add i32 %18, -1, !dbg !5848
  store i32 %dec, ptr %cancelling11, align 8, !dbg !5848
  %19 = load ptr, ptr %dev, align 8, !dbg !5849
  %event_lock12 = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 29, !dbg !5850
  call void @spin_unlock_irq(ptr noundef %event_lock12) #9, !dbg !5851
  %20 = load i8, ptr %ret, align 1, !dbg !5852, !range !5403, !noundef !755
  %tobool13 = trunc i8 %20 to i1, !dbg !5852
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #8, !dbg !5853
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #8, !dbg !5853
  call void @llvm.lifetime.end.p0(i64 8, ptr %vblank) #8, !dbg !5853
  ret i1 %tobool13, !dbg !5854
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #3 align 16 !dbg !5855 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5857, metadata !DIExpression()), !dbg !5858
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5859
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5859
  call void @_raw_spin_lock_irq(ptr noundef %1) #9, !dbg !5859
  ret void, !dbg !5860
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #3 align 16 !dbg !5861 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5863, metadata !DIExpression()), !dbg !5864
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5865
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5865
  call void @_raw_spin_unlock_irq(ptr noundef %1) #9, !dbg !5865
  ret void, !dbg !5866
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5867 dso_local zeroext i1 @kthread_cancel_work_sync(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_vblank_work_flush(ptr noundef %work) #0 align 16 !dbg !5870 {
entry:
  %work.addr = alloca ptr, align 8
  %vblank = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret = alloca i64, align 8
  %__int = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !5874, metadata !DIExpression()), !dbg !5897
  call void @llvm.lifetime.start.p0(i64 8, ptr %vblank) #8, !dbg !5898
  call void @llvm.dbg.declare(metadata ptr %vblank, metadata !5875, metadata !DIExpression()), !dbg !5899
  %0 = load ptr, ptr %work.addr, align 8, !dbg !5900
  %vblank1 = getelementptr inbounds %struct.drm_vblank_work, ptr %0, i32 0, i32 1, !dbg !5901
  %1 = load ptr, ptr %vblank1, align 8, !dbg !5901
  store ptr %1, ptr %vblank, align 8, !dbg !5899
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #8, !dbg !5902
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5876, metadata !DIExpression()), !dbg !5903
  %2 = load ptr, ptr %vblank, align 8, !dbg !5904
  %dev2 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %2, i32 0, i32 0, !dbg !5905
  %3 = load ptr, ptr %dev2, align 8, !dbg !5905
  store ptr %3, ptr %dev, align 8, !dbg !5903
  %4 = load ptr, ptr %dev, align 8, !dbg !5906
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 29, !dbg !5907
  call void @spin_lock_irq(ptr noundef %event_lock) #9, !dbg !5908
  br label %do.body, !dbg !5909

do.body:                                          ; preds = %entry
  %5 = load ptr, ptr %work.addr, align 8, !dbg !5910
  %node = getelementptr inbounds %struct.drm_vblank_work, ptr %5, i32 0, i32 4, !dbg !5910
  %call = call i32 @list_empty(ptr noundef %node) #9, !dbg !5910
  %tobool = icmp ne i32 %call, 0, !dbg !5910
  br i1 %tobool, label %if.then, label %if.end, !dbg !5912

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !5910

if.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry) #8, !dbg !5913
  call void @llvm.dbg.declare(metadata ptr %__wq_entry, metadata !5877, metadata !DIExpression()), !dbg !5913
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #8, !dbg !5913
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5891, metadata !DIExpression()), !dbg !5913
  store i64 0, ptr %__ret, align 8, !dbg !5913
  call void @init_wait_entry(ptr noundef %__wq_entry, i32 noundef 0) #9, !dbg !5913
  br label %for.cond, !dbg !5913

for.cond:                                         ; preds = %cleanup.cont, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #8, !dbg !5914
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !5892, metadata !DIExpression()), !dbg !5914
  %6 = load ptr, ptr %vblank, align 8, !dbg !5914
  %work_wait_queue = getelementptr inbounds %struct.drm_vblank_crtc, ptr %6, i32 0, i32 17, !dbg !5914
  %call3 = call i64 @prepare_to_wait_event(ptr noundef %work_wait_queue, ptr noundef %__wq_entry, i32 noundef 2) #9, !dbg !5914
  store i64 %call3, ptr %__int, align 8, !dbg !5914
  %7 = load ptr, ptr %work.addr, align 8, !dbg !5915
  %node4 = getelementptr inbounds %struct.drm_vblank_work, ptr %7, i32 0, i32 4, !dbg !5915
  %call5 = call i32 @list_empty(ptr noundef %node4) #9, !dbg !5915
  %tobool6 = icmp ne i32 %call5, 0, !dbg !5915
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5914

if.then7:                                         ; preds = %for.cond
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5915

if.end8:                                          ; preds = %for.cond
  %8 = load ptr, ptr %dev, align 8, !dbg !5914
  %event_lock9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 29, !dbg !5914
  call void @spin_unlock_irq(ptr noundef %event_lock9) #9, !dbg !5914
  call void @schedule() #9, !dbg !5914
  %9 = load ptr, ptr %dev, align 8, !dbg !5914
  %event_lock10 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 29, !dbg !5914
  call void @spin_lock_irq(ptr noundef %event_lock10) #9, !dbg !5914
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5917
  br label %cleanup, !dbg !5917

cleanup:                                          ; preds = %if.end8, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #8, !dbg !5917
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !5917, !llvm.loop !5918

for.end:                                          ; preds = %cleanup
  %10 = load ptr, ptr %vblank, align 8, !dbg !5913
  %work_wait_queue11 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %10, i32 0, i32 17, !dbg !5913
  call void @finish_wait(ptr noundef %work_wait_queue11, ptr noundef %__wq_entry) #9, !dbg !5913
  br label %__out, !dbg !5913

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !5896), !dbg !5913
  %11 = load i64, ptr %__ret, align 8, !dbg !5913
  store i64 %11, ptr %tmp, align 8, !dbg !5913
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #8, !dbg !5912
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry) #8, !dbg !5912
  %12 = load i64, ptr %tmp, align 8, !dbg !5913
  br label %do.cond, !dbg !5912

do.cond:                                          ; preds = %__out
  br label %do.end, !dbg !5912

do.end:                                           ; preds = %do.cond, %if.then
  %13 = load ptr, ptr %dev, align 8, !dbg !5920
  %event_lock12 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 29, !dbg !5921
  call void @spin_unlock_irq(ptr noundef %event_lock12) #9, !dbg !5922
  %14 = load ptr, ptr %work.addr, align 8, !dbg !5923
  %base = getelementptr inbounds %struct.drm_vblank_work, ptr %14, i32 0, i32 0, !dbg !5924
  call void @kthread_flush_work(ptr noundef %base) #9, !dbg !5925
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #8, !dbg !5926
  call void @llvm.lifetime.end.p0(i64 8, ptr %vblank) #8, !dbg !5926
  ret void, !dbg !5926

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5927 dso_local void @init_wait_entry(ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5930 dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5933 dso_local void @schedule() #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5934 dso_local void @finish_wait(ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5937 dso_local void @kthread_flush_work(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_vblank_work_init(ptr noundef %work, ptr noundef %crtc, ptr noundef %func) #0 align 16 !dbg !5938 {
entry:
  %work.addr = alloca ptr, align 8
  %crtc.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !6677, metadata !DIExpression()), !dbg !6680
  store ptr %crtc, ptr %crtc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !6678, metadata !DIExpression()), !dbg !6681
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !6679, metadata !DIExpression()), !dbg !6682
  br label %do.body, !dbg !6683

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %work.addr, align 8, !dbg !6684
  %base = getelementptr inbounds %struct.drm_vblank_work, ptr %0, i32 0, i32 0, !dbg !6684
  call void @llvm.memset.p0.i64(ptr align 8 %base, i8 0, i64 40, i1 false), !dbg !6684
  %1 = load ptr, ptr %work.addr, align 8, !dbg !6684
  %base1 = getelementptr inbounds %struct.drm_vblank_work, ptr %1, i32 0, i32 0, !dbg !6684
  %node = getelementptr inbounds %struct.kthread_work, ptr %base1, i32 0, i32 0, !dbg !6684
  call void @INIT_LIST_HEAD(ptr noundef %node) #9, !dbg !6684
  %2 = load ptr, ptr %func.addr, align 8, !dbg !6684
  %3 = load ptr, ptr %work.addr, align 8, !dbg !6684
  %base2 = getelementptr inbounds %struct.drm_vblank_work, ptr %3, i32 0, i32 0, !dbg !6684
  %func3 = getelementptr inbounds %struct.kthread_work, ptr %base2, i32 0, i32 1, !dbg !6684
  store ptr %2, ptr %func3, align 8, !dbg !6684
  br label %do.end, !dbg !6684

do.end:                                           ; preds = %do.body
  %4 = load ptr, ptr %work.addr, align 8, !dbg !6686
  %node4 = getelementptr inbounds %struct.drm_vblank_work, ptr %4, i32 0, i32 4, !dbg !6687
  call void @INIT_LIST_HEAD(ptr noundef %node4) #9, !dbg !6688
  %5 = load ptr, ptr %crtc.addr, align 8, !dbg !6689
  %dev = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 0, !dbg !6690
  %6 = load ptr, ptr %dev, align 8, !dbg !6690
  %vblank = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 24, !dbg !6691
  %7 = load ptr, ptr %vblank, align 8, !dbg !6691
  %8 = load ptr, ptr %crtc.addr, align 8, !dbg !6692
  %call = call i32 @drm_crtc_index(ptr noundef %8) #9, !dbg !6693
  %idxprom = zext i32 %call to i64, !dbg !6689
  %arrayidx = getelementptr %struct.drm_vblank_crtc, ptr %7, i64 %idxprom, !dbg !6689
  %9 = load ptr, ptr %work.addr, align 8, !dbg !6694
  %vblank5 = getelementptr inbounds %struct.drm_vblank_work, ptr %9, i32 0, i32 1, !dbg !6695
  store ptr %arrayidx, ptr %vblank5, align 8, !dbg !6696
  ret void, !dbg !6697
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #5 align 16 !dbg !6698 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6700, metadata !DIExpression()), !dbg !6701
  br label %do.body, !dbg !6702

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6703

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6705

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6703

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6707
  %1 = load ptr, ptr %list.addr, align 8, !dbg !6707
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6707
  store volatile ptr %0, ptr %next, align 8, !dbg !6707
  br label %do.end3, !dbg !6707

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6703

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !6709

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6710

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6712

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !6710

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !6714
  %3 = load ptr, ptr %list.addr, align 8, !dbg !6714
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !6714
  store volatile ptr %2, ptr %prev, align 8, !dbg !6714
  br label %do.end9, !dbg !6714

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !6710

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !6716
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_crtc_index(ptr noundef %crtc) #5 align 16 !dbg !6717 {
entry:
  %crtc.addr = alloca ptr, align 8
  store ptr %crtc, ptr %crtc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !6723, metadata !DIExpression()), !dbg !6724
  %0 = load ptr, ptr %crtc.addr, align 8, !dbg !6725
  %index = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8, !dbg !6726
  %1 = load i32, ptr %index, align 8, !dbg !6726
  ret i32 %1, !dbg !6727
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_vblank_worker_init(ptr noundef %vblank) #0 align 16 !dbg !5304 {
entry:
  %retval = alloca i32, align 4
  %vblank.addr = alloca ptr, align 8
  %worker = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vblank, ptr %vblank.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vblank.addr, metadata !5308, metadata !DIExpression()), !dbg !6728
  call void @llvm.lifetime.start.p0(i64 8, ptr %worker) #8, !dbg !6729
  call void @llvm.dbg.declare(metadata ptr %worker, metadata !5309, metadata !DIExpression()), !dbg !6730
  %0 = load ptr, ptr %vblank.addr, align 8, !dbg !6731
  %pending_work = getelementptr inbounds %struct.drm_vblank_crtc, ptr %0, i32 0, i32 16, !dbg !6732
  call void @INIT_LIST_HEAD(ptr noundef %pending_work) #9, !dbg !6733
  br label %do.body, !dbg !6734

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %vblank.addr, align 8, !dbg !6735
  %work_wait_queue = getelementptr inbounds %struct.drm_vblank_crtc, ptr %1, i32 0, i32 17, !dbg !6735
  call void @__init_waitqueue_head(ptr noundef %work_wait_queue, ptr noundef @.str.2, ptr noundef @drm_vblank_worker_init.__key) #9, !dbg !6735
  br label %do.cond, !dbg !6735

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6735

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %vblank.addr, align 8, !dbg !6737
  %dev = getelementptr inbounds %struct.drm_vblank_crtc, ptr %2, i32 0, i32 0, !dbg !6738
  %3 = load ptr, ptr %dev, align 8, !dbg !6738
  %primary = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 6, !dbg !6739
  %4 = load ptr, ptr %primary, align 8, !dbg !6739
  %index = getelementptr inbounds %struct.drm_minor, ptr %4, i32 0, i32 0, !dbg !6740
  %5 = load i32, ptr %index, align 8, !dbg !6740
  %6 = load ptr, ptr %vblank.addr, align 8, !dbg !6741
  %pipe = getelementptr inbounds %struct.drm_vblank_crtc, ptr %6, i32 0, i32 10, !dbg !6742
  %7 = load i32, ptr %pipe, align 8, !dbg !6742
  %call = call ptr (i32, ptr, ...) @kthread_create_worker(i32 noundef 0, ptr noundef @.str.3, i32 noundef %5, i32 noundef %7) #9, !dbg !6743
  store ptr %call, ptr %worker, align 8, !dbg !6744
  %8 = load ptr, ptr %worker, align 8, !dbg !6745
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %8) #9, !dbg !6747
  br i1 %call1, label %if.then, label %if.end, !dbg !6748

if.then:                                          ; preds = %do.end
  %9 = load ptr, ptr %worker, align 8, !dbg !6749
  %call2 = call i64 @PTR_ERR(ptr noundef %9) #9, !dbg !6750
  %conv = trunc i64 %call2 to i32, !dbg !6750
  store i32 %conv, ptr %retval, align 4, !dbg !6751
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6751

if.end:                                           ; preds = %do.end
  %10 = load ptr, ptr %worker, align 8, !dbg !6752
  %11 = load ptr, ptr %vblank.addr, align 8, !dbg !6753
  %worker3 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %11, i32 0, i32 15, !dbg !6754
  store ptr %10, ptr %worker3, align 8, !dbg !6755
  %12 = load ptr, ptr %worker, align 8, !dbg !6756
  %task = getelementptr inbounds %struct.kthread_worker, ptr %12, i32 0, i32 4, !dbg !6757
  %13 = load ptr, ptr %task, align 8, !dbg !6757
  call void @sched_set_fifo(ptr noundef %13) #9, !dbg !6758
  store i32 0, ptr %retval, align 4, !dbg !6759
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6759

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %worker) #8, !dbg !6760
  %14 = load i32, ptr %retval, align 4, !dbg !6760
  ret i32 %14, !dbg !6760
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6761 dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6765 dso_local ptr @kthread_create_worker(i32 noundef, ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #5 align 16 !dbg !6768 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6773, metadata !DIExpression()), !dbg !6774
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6775
  %1 = ptrtoint ptr %0 to i64, !dbg !6775
  %2 = inttoptr i64 %1 to ptr, !dbg !6775
  %3 = ptrtoint ptr %2 to i64, !dbg !6775
  %cmp = icmp uge i64 %3, -4095, !dbg !6775
  %lnot = xor i1 %cmp, true, !dbg !6775
  %lnot1 = xor i1 %lnot, true, !dbg !6775
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6775
  %conv = sext i32 %lnot.ext to i64, !dbg !6775
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6775
  %tobool = icmp ne i64 %expval, 0, !dbg !6775
  ret i1 %tobool, !dbg !6776
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #5 align 16 !dbg !6777 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6781, metadata !DIExpression()), !dbg !6782
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6783
  %1 = ptrtoint ptr %0 to i64, !dbg !6784
  ret i64 %1, !dbg !6785
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6786 dso_local void @sched_set_fifo(ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !6789 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6797, metadata !DIExpression()), !dbg !6799
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6798, metadata !DIExpression()), !dbg !6800
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6801
  %1 = load i64, ptr %size.addr, align 8, !dbg !6802
  %conv = trunc i64 %1 to i32, !dbg !6802
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #9, !dbg !6803
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6804
  %3 = load i64, ptr %size.addr, align 8, !dbg !6804
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #9, !dbg !6804
  ret void, !dbg !6805
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #3 align 16 !dbg !6806 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6809, metadata !DIExpression()), !dbg !6810
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6811
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #9, !dbg !6812
  ret i64 %call, !dbg !6813
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6814 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6819, metadata !DIExpression()), !dbg !6821
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6820, metadata !DIExpression()), !dbg !6822
  ret i1 true, !dbg !6823
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !6824 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6829, metadata !DIExpression()), !dbg !6832
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6830, metadata !DIExpression()), !dbg !6833
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6831, metadata !DIExpression()), !dbg !6834
  ret void, !dbg !6835
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #3 align 16 !dbg !6836 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6839, metadata !DIExpression()), !dbg !6840
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6841
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !6841
  %1 = load volatile i64, ptr %counter, align 8, !dbg !6841
  ret i64 %1, !dbg !6842
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #3 align 16 !dbg !6843 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6849, metadata !DIExpression()), !dbg !6850
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6851
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #9, !dbg !6852
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6853
  %call = call i32 @raw_atomic_read(ptr noundef %1) #9, !dbg !6854
  ret i32 %call, !dbg !6855
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #3 align 16 !dbg !6856 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6858, metadata !DIExpression()), !dbg !6859
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6860
  %call = call i32 @arch_atomic_read(ptr noundef %0) #9, !dbg !6861
  ret i32 %call, !dbg !6862
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #3 align 16 !dbg !6863 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6866, metadata !DIExpression()), !dbg !6867
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6868
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6868
  %1 = load volatile i32, ptr %counter, align 4, !dbg !6868
  ret i32 %1, !dbg !6869
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #5 align 16 !dbg !6870 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6872, metadata !DIExpression()), !dbg !6873
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6874
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #9, !dbg !6876
  br i1 %call, label %if.end, label %if.then, !dbg !6877

if.then:                                          ; preds = %entry
  br label %return, !dbg !6878

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6879
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6880
  %2 = load ptr, ptr %prev, align 8, !dbg !6880
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6881
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6882
  %4 = load ptr, ptr %next, align 8, !dbg !6882
  call void @__list_del(ptr noundef %2, ptr noundef %4) #9, !dbg !6883
  br label %return, !dbg !6884

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6884
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5 align 16 !dbg !6885 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6889, metadata !DIExpression()), !dbg !6890
  ret i1 true, !dbg !6891
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6892 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6894, metadata !DIExpression()), !dbg !6896
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6895, metadata !DIExpression()), !dbg !6897
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6898
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6899
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6900
  store ptr %0, ptr %prev1, align 8, !dbg !6901
  br label %do.body, !dbg !6902

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6903

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6905

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6903

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6907
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6907
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6907
  store volatile ptr %2, ptr %next4, align 8, !dbg !6907
  br label %do.end5, !dbg !6907

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6903

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6909
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6910 dso_local void @_raw_spin_lock(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6913 dso_local void @_raw_spin_unlock(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6914 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6918, metadata !DIExpression()), !dbg !6921
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6919, metadata !DIExpression()), !dbg !6922
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6920, metadata !DIExpression()), !dbg !6923
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6924
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6926
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6927
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9, !dbg !6928
  br i1 %call, label %if.end, label %if.then, !dbg !6929

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6930

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6931
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6932
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6933
  store ptr %3, ptr %prev1, align 8, !dbg !6934
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6935
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6936
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6937
  store ptr %5, ptr %next2, align 8, !dbg !6938
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6939
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6940
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6941
  store ptr %7, ptr %prev3, align 8, !dbg !6942
  br label %do.body, !dbg !6943

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6944

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6946

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6944

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6948
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6948
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6948
  store volatile ptr %9, ptr %next6, align 8, !dbg !6948
  br label %do.end7, !dbg !6948

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6944

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6950
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6951 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6955, metadata !DIExpression()), !dbg !6958
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6956, metadata !DIExpression()), !dbg !6959
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6957, metadata !DIExpression()), !dbg !6960
  ret i1 true, !dbg !6961
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6962 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #6 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6965 dso_local void @_raw_spin_lock_irq(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6966 dso_local void @_raw_spin_unlock_irq(ptr noundef) #6 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { noredzone }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!5320, !5321, !5322, !5323, !5324, !5325, !5326, !5327}
!llvm.ident = !{!5328}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/gpu/drm/drm_vblank_work.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0100fc26d888bcdc01e4edf51c470ed")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 34)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 141, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 51)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_vblank_work_schedule308", scope: !14, file: !2, line: 165, type: !340, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/.drm_vblank_work.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/drm\22 -D KBUILD_BASENAME=\22drm_vblank_work\22 -D KBUILD_MODNAME=\22drm\22 -D __KBUILD_MODNAME=kmod_drm -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/drm_vblank_work.ll drivers/gpu/drm/drm_vblank_work.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !339, globals: !5295, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16, !24, !29, !34, !40, !48, !64, !71, !79, !85, !92, !98, !104, !111, !119, !127, !136, !141, !146, !152, !195, !204, !211, !216, !229, !236, !241, !246, !251, !257, !262, !270, !274, !290, !310, !316, !322, !329}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !17, line: 312, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21, !22, !23}
!20 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!21 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!22 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!23 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !25, line: 2052, baseType: !18, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!28 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !30, line: 65, baseType: !18, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!31 = !{!32, !33}
!32 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!33 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !35, line: 16, baseType: !18, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!36 = !{!37, !38, !39}
!37 = !DIEnumerator(name: "TT_NONE", value: 0)
!38 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!39 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !41, line: 68, baseType: !18, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!42 = !{!43, !44, !45, !46, !47}
!43 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!44 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!45 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!46 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !49, line: 1325, baseType: !18, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!51 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!52 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!53 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!54 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!55 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!56 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!57 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!58 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!59 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!60 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!61 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!62 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!63 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !65, line: 51, baseType: !18, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!66 = !{!67, !68, !69, !70}
!67 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!68 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!69 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!70 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !72, line: 9, baseType: !18, size: 32, elements: !73)
!72 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!73 = !{!74, !75, !76, !77, !78}
!74 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!75 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!76 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!77 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!78 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !80, line: 54, baseType: !18, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!81 = !{!82, !83, !84}
!82 = !DIEnumerator(name: "USRQUOTA", value: 0)
!83 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!84 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !86, line: 15, baseType: !18, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!87 = !{!88, !89, !90, !91}
!88 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!89 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!90 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!91 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !93, line: 26, baseType: !18, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!94 = !{!95, !96, !97}
!95 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!96 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!97 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !99, line: 45, baseType: !18, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!100 = !{!101, !102, !103}
!101 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!102 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!103 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !105, line: 487, baseType: !18, size: 32, elements: !106)
!105 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!106 = !{!107, !108, !109, !110}
!107 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!108 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!109 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!110 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !112, line: 620, baseType: !18, size: 32, elements: !113)
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
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !105, line: 547, baseType: !18, size: 32, elements: !128)
!128 = !{!129, !130, !131, !132, !133, !134, !135}
!129 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!130 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!131 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!132 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!133 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!134 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!135 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !105, line: 564, baseType: !18, size: 32, elements: !137)
!137 = !{!138, !139, !140}
!138 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!139 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!140 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !105, line: 577, baseType: !18, size: 32, elements: !142)
!142 = !{!143, !144, !145}
!143 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!144 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!145 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !105, line: 503, baseType: !18, size: 32, elements: !147)
!147 = !{!148, !149, !150, !151}
!148 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!149 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!150 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!151 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_status", file: !153, line: 91, baseType: !120, size: 32, elements: !154)
!153 = !DIFile(filename: "./include/drm/drm_modes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9464b1418570a46bf1ac7fbe26140ef4")
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194}
!155 = !DIEnumerator(name: "MODE_OK", value: 0)
!156 = !DIEnumerator(name: "MODE_HSYNC", value: 1)
!157 = !DIEnumerator(name: "MODE_VSYNC", value: 2)
!158 = !DIEnumerator(name: "MODE_H_ILLEGAL", value: 3)
!159 = !DIEnumerator(name: "MODE_V_ILLEGAL", value: 4)
!160 = !DIEnumerator(name: "MODE_BAD_WIDTH", value: 5)
!161 = !DIEnumerator(name: "MODE_NOMODE", value: 6)
!162 = !DIEnumerator(name: "MODE_NO_INTERLACE", value: 7)
!163 = !DIEnumerator(name: "MODE_NO_DBLESCAN", value: 8)
!164 = !DIEnumerator(name: "MODE_NO_VSCAN", value: 9)
!165 = !DIEnumerator(name: "MODE_MEM", value: 10)
!166 = !DIEnumerator(name: "MODE_VIRTUAL_X", value: 11)
!167 = !DIEnumerator(name: "MODE_VIRTUAL_Y", value: 12)
!168 = !DIEnumerator(name: "MODE_MEM_VIRT", value: 13)
!169 = !DIEnumerator(name: "MODE_NOCLOCK", value: 14)
!170 = !DIEnumerator(name: "MODE_CLOCK_HIGH", value: 15)
!171 = !DIEnumerator(name: "MODE_CLOCK_LOW", value: 16)
!172 = !DIEnumerator(name: "MODE_CLOCK_RANGE", value: 17)
!173 = !DIEnumerator(name: "MODE_BAD_HVALUE", value: 18)
!174 = !DIEnumerator(name: "MODE_BAD_VVALUE", value: 19)
!175 = !DIEnumerator(name: "MODE_BAD_VSCAN", value: 20)
!176 = !DIEnumerator(name: "MODE_HSYNC_NARROW", value: 21)
!177 = !DIEnumerator(name: "MODE_HSYNC_WIDE", value: 22)
!178 = !DIEnumerator(name: "MODE_HBLANK_NARROW", value: 23)
!179 = !DIEnumerator(name: "MODE_HBLANK_WIDE", value: 24)
!180 = !DIEnumerator(name: "MODE_VSYNC_NARROW", value: 25)
!181 = !DIEnumerator(name: "MODE_VSYNC_WIDE", value: 26)
!182 = !DIEnumerator(name: "MODE_VBLANK_NARROW", value: 27)
!183 = !DIEnumerator(name: "MODE_VBLANK_WIDE", value: 28)
!184 = !DIEnumerator(name: "MODE_PANEL", value: 29)
!185 = !DIEnumerator(name: "MODE_INTERLACE_WIDTH", value: 30)
!186 = !DIEnumerator(name: "MODE_ONE_WIDTH", value: 31)
!187 = !DIEnumerator(name: "MODE_ONE_HEIGHT", value: 32)
!188 = !DIEnumerator(name: "MODE_ONE_SIZE", value: 33)
!189 = !DIEnumerator(name: "MODE_NO_REDUCED", value: 34)
!190 = !DIEnumerator(name: "MODE_NO_STEREO", value: 35)
!191 = !DIEnumerator(name: "MODE_NO_420", value: 36)
!192 = !DIEnumerator(name: "MODE_STALE", value: -3)
!193 = !DIEnumerator(name: "MODE_BAD", value: -2)
!194 = !DIEnumerator(name: "MODE_ERROR", value: -1)
!195 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_picture_aspect", file: !196, line: 96, baseType: !18, size: 32, elements: !197)
!196 = !DIFile(filename: "./include/linux/hdmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "47f4ac8f6225c51a6d030bad9086771f")
!197 = !{!198, !199, !200, !201, !202, !203}
!198 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_NONE", value: 0)
!199 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_4_3", value: 1)
!200 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_16_9", value: 2)
!201 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_64_27", value: 3)
!202 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_256_135", value: 4)
!203 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_RESERVED", value: 5)
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "switch_power_state", file: !205, line: 30, baseType: !18, size: 32, elements: !206)
!205 = !DIFile(filename: "./include/drm/drm_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9743f4a84c342e86d9e79f688e9c49c5")
!206 = !{!207, !208, !209, !210}
!207 = !DIEnumerator(name: "DRM_SWITCH_POWER_ON", value: 0)
!208 = !DIEnumerator(name: "DRM_SWITCH_POWER_OFF", value: 1)
!209 = !DIEnumerator(name: "DRM_SWITCH_POWER_CHANGING", value: 2)
!210 = !DIEnumerator(name: "DRM_SWITCH_POWER_DYNAMIC_OFF", value: 3)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !212, line: 10, baseType: !18, size: 32, elements: !213)
!212 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!213 = !{!214, !215}
!214 = !DIEnumerator(name: "false", value: 0)
!215 = !DIEnumerator(name: "true", value: 1)
!216 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_debug_category", file: !217, line: 330, baseType: !18, size: 32, elements: !218)
!217 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227, !228}
!219 = !DIEnumerator(name: "DRM_UT_CORE", value: 0)
!220 = !DIEnumerator(name: "DRM_UT_DRIVER", value: 1)
!221 = !DIEnumerator(name: "DRM_UT_KMS", value: 2)
!222 = !DIEnumerator(name: "DRM_UT_PRIME", value: 3)
!223 = !DIEnumerator(name: "DRM_UT_ATOMIC", value: 4)
!224 = !DIEnumerator(name: "DRM_UT_VBL", value: 5)
!225 = !DIEnumerator(name: "DRM_UT_STATE", value: 6)
!226 = !DIEnumerator(name: "DRM_UT_LEASE", value: 7)
!227 = !DIEnumerator(name: "DRM_UT_DP", value: 8)
!228 = !DIEnumerator(name: "DRM_UT_DRMRES", value: 9)
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_encoding", file: !230, line: 78, baseType: !18, size: 32, elements: !231)
!230 = !DIFile(filename: "./include/drm/drm_color_mgmt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b92cd49d1b3f8dcc5c490e9b8b1a997a")
!231 = !{!232, !233, !234, !235}
!232 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT601", value: 0)
!233 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT709", value: 1)
!234 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT2020", value: 2)
!235 = !DIEnumerator(name: "DRM_COLOR_ENCODING_MAX", value: 3)
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_range", file: !230, line: 85, baseType: !18, size: 32, elements: !237)
!237 = !{!238, !239, !240}
!238 = !DIEnumerator(name: "DRM_COLOR_YCBCR_LIMITED_RANGE", value: 0)
!239 = !DIEnumerator(name: "DRM_COLOR_YCBCR_FULL_RANGE", value: 1)
!240 = !DIEnumerator(name: "DRM_COLOR_RANGE_MAX", value: 2)
!241 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_scaling_filter", file: !242, line: 38, baseType: !18, size: 32, elements: !243)
!242 = !DIFile(filename: "./include/drm/drm_plane.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "45cb1a1ff150429e63de6789c017e03a")
!243 = !{!244, !245}
!244 = !DIEnumerator(name: "DRM_SCALING_FILTER_DEFAULT", value: 0)
!245 = !DIEnumerator(name: "DRM_SCALING_FILTER_NEAREST_NEIGHBOR", value: 1)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_plane_type", file: !242, line: 563, baseType: !18, size: 32, elements: !247)
!247 = !{!248, !249, !250}
!248 = !DIEnumerator(name: "DRM_PLANE_TYPE_OVERLAY", value: 0)
!249 = !DIEnumerator(name: "DRM_PLANE_TYPE_PRIMARY", value: 1)
!250 = !DIEnumerator(name: "DRM_PLANE_TYPE_CURSOR", value: 2)
!251 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_registration_state", file: !252, line: 98, baseType: !18, size: 32, elements: !253)
!252 = !DIFile(filename: "./include/drm/drm_connector.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63c858da11ce2de4f038056be4cf749")
!253 = !{!254, !255, !256}
!254 = !DIEnumerator(name: "DRM_CONNECTOR_INITIALIZING", value: 0)
!255 = !DIEnumerator(name: "DRM_CONNECTOR_REGISTERED", value: 1)
!256 = !DIEnumerator(name: "DRM_CONNECTOR_UNREGISTERED", value: 2)
!257 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_status", file: !252, line: 63, baseType: !18, size: 32, elements: !258)
!258 = !{!259, !260, !261}
!259 = !DIEnumerator(name: "connector_status_connected", value: 1)
!260 = !DIEnumerator(name: "connector_status_disconnected", value: 2)
!261 = !DIEnumerator(name: "connector_status_unknown", value: 3)
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "subpixel_order", file: !252, line: 137, baseType: !18, size: 32, elements: !263)
!263 = !{!264, !265, !266, !267, !268, !269}
!264 = !DIEnumerator(name: "SubPixelUnknown", value: 0)
!265 = !DIEnumerator(name: "SubPixelHorizontalRGB", value: 1)
!266 = !DIEnumerator(name: "SubPixelHorizontalBGR", value: 2)
!267 = !DIEnumerator(name: "SubPixelVerticalRGB", value: 3)
!268 = !DIEnumerator(name: "SubPixelVerticalBGR", value: 4)
!269 = !DIEnumerator(name: "SubPixelNone", value: 5)
!270 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_link_status", file: !252, line: 337, baseType: !18, size: 32, elements: !271)
!271 = !{!272, !273}
!272 = !DIEnumerator(name: "DRM_LINK_STATUS_GOOD", value: 0)
!273 = !DIEnumerator(name: "DRM_LINK_STATUS_BAD", value: 1)
!274 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_subconnector", file: !275, line: 387, baseType: !18, size: 32, elements: !276)
!275 = !DIFile(filename: "./include/uapi/drm/drm_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "357a7211aa80668185b31e7330dddd63")
!276 = !{!277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289}
!277 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Automatic", value: 0)
!278 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Unknown", value: 0)
!279 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_VGA", value: 1)
!280 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVID", value: 3)
!281 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVIA", value: 4)
!282 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Composite", value: 5)
!283 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SVIDEO", value: 6)
!284 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Component", value: 8)
!285 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SCART", value: 9)
!286 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DisplayPort", value: 10)
!287 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_HDMIA", value: 11)
!288 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Native", value: 15)
!289 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Wireless", value: 18)
!290 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_colorspace", file: !252, line: 502, baseType: !18, size: 32, elements: !291)
!291 = !{!292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309}
!292 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DEFAULT", value: 0)
!293 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_NO_DATA", value: 0)
!294 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_SMPTE_170M_YCC", value: 1)
!295 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT709_YCC", value: 2)
!296 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_XVYCC_601", value: 3)
!297 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_XVYCC_709", value: 4)
!298 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_SYCC_601", value: 5)
!299 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_OPYCC_601", value: 6)
!300 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_OPRGB", value: 7)
!301 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_CYCC", value: 8)
!302 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_RGB", value: 9)
!303 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_YCC", value: 10)
!304 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DCI_P3_RGB_D65", value: 11)
!305 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DCI_P3_RGB_THEATER", value: 12)
!306 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_RGB_WIDE_FIXED", value: 13)
!307 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_RGB_WIDE_FLOAT", value: 14)
!308 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT601_YCC", value: 15)
!309 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_COUNT", value: 16)
!310 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_privacy_screen_status", file: !252, line: 421, baseType: !18, size: 32, elements: !311)
!311 = !{!312, !313, !314, !315}
!312 = !DIEnumerator(name: "PRIVACY_SCREEN_DISABLED", value: 0)
!313 = !DIEnumerator(name: "PRIVACY_SCREEN_ENABLED", value: 1)
!314 = !DIEnumerator(name: "PRIVACY_SCREEN_DISABLED_LOCKED", value: 2)
!315 = !DIEnumerator(name: "PRIVACY_SCREEN_ENABLED_LOCKED", value: 3)
!316 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_force", file: !252, line: 50, baseType: !18, size: 32, elements: !317)
!317 = !{!318, !319, !320, !321}
!318 = !DIEnumerator(name: "DRM_FORCE_UNSPECIFIED", value: 0)
!319 = !DIEnumerator(name: "DRM_FORCE_OFF", value: 1)
!320 = !DIEnumerator(name: "DRM_FORCE_ON", value: 2)
!321 = !DIEnumerator(name: "DRM_FORCE_ON_DIGITAL", value: 3)
!322 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_panel_orientation", file: !252, line: 363, baseType: !120, size: 32, elements: !323)
!323 = !{!324, !325, !326, !327, !328}
!324 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_UNKNOWN", value: -1)
!325 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_NORMAL", value: 0)
!326 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP", value: 1)
!327 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_LEFT_UP", value: 2)
!328 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_RIGHT_UP", value: 3)
!329 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_tv_mode", file: !252, line: 156, baseType: !18, size: 32, elements: !330)
!330 = !{!331, !332, !333, !334, !335, !336, !337, !338}
!331 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC", value: 0)
!332 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC_443", value: 1)
!333 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC_J", value: 2)
!334 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL", value: 3)
!335 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL_M", value: 4)
!336 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL_N", value: 5)
!337 = !DIEnumerator(name: "DRM_MODE_TV_MODE_SECAM", value: 6)
!338 = !DIEnumerator(name: "DRM_MODE_TV_MODE_MAX", value: 7)
!339 = !{!340, !341, !5285, !5288, !5291, !5293, !415, !1307}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_work", file: !343, line: 21, size: 640, elements: !344)
!343 = !DIFile(filename: "./include/drm/drm_vblank_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96889c6232f6603cb6b1c1e4953a59d3")
!344 = !{!345, !4407, !5282, !5283, !5284}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !342, file: !343, line: 28, baseType: !346, size: 320)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_work", file: !347, line: 132, size: 320, elements: !348)
!347 = !DIFile(filename: "./include/linux/kthread.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6109a4682a3e6e690ff3777556e2c944")
!348 = !{!349, !356, !362, !4406}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !346, file: !347, line: 133, baseType: !350, size: 128)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !351, line: 190, size: 128, elements: !352)
!351 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!352 = !{!353, !355}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !350, file: !351, line: 191, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !350, file: !351, line: 191, baseType: !354, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !346, file: !347, line: 134, baseType: !357, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "kthread_work_func_t", file: !347, line: 116, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !346, file: !347, line: 135, baseType: !363, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_worker", file: !347, line: 123, size: 448, elements: !365)
!365 = !{!366, !367, !403, !404, !405, !4405}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !364, file: !347, line: 124, baseType: !18, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !364, file: !347, line: 125, baseType: !368, size: 32, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !369, line: 23, baseType: !370)
!369 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !369, line: 14, size: 32, elements: !371)
!371 = !{!372}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !370, file: !369, line: 15, baseType: !373, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !374, line: 44, baseType: !375)
!374 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !374, line: 14, size: 32, elements: !376)
!376 = !{!377}
!377 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !374, line: 15, baseType: !378, size: 32)
!378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !374, line: 15, size: 32, elements: !379)
!379 = !{!380, !385, !395}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !378, file: !374, line: 16, baseType: !381, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !351, line: 174, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !351, line: 172, size: 32, elements: !383)
!383 = !{!384}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !382, file: !351, line: 173, baseType: !120, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, scope: !378, file: !374, line: 24, baseType: !386, size: 16)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !378, file: !374, line: 24, size: 16, elements: !387)
!387 = !{!388, !394}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !386, file: !374, line: 25, baseType: !389, size: 8)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !390, line: 17, baseType: !391)
!390 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !392, line: 21, baseType: !393)
!392 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!393 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !386, file: !374, line: 26, baseType: !389, size: 8, offset: 8)
!395 = !DIDerivedType(tag: DW_TAG_member, scope: !378, file: !374, line: 28, baseType: !396, size: 32)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !378, file: !374, line: 28, size: 32, elements: !397)
!397 = !{!398, !402}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !396, file: !374, line: 29, baseType: !399, size: 16)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !390, line: 19, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !392, line: 24, baseType: !401)
!401 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !396, file: !374, line: 30, baseType: !399, size: 16, offset: 16)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !364, file: !347, line: 126, baseType: !350, size: 128, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_work_list", scope: !364, file: !347, line: 127, baseType: !350, size: 128, offset: 192)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !364, file: !347, line: 128, baseType: !406, size: 64, offset: 320)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !408, line: 746, size: 58368, elements: !409)
!408 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!409 = !{!410, !421, !422, !423, !429, !430, !431, !432, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !516, !527, !628, !632, !635, !666, !667, !668, !669, !680, !682, !683, !684, !685, !686, !687, !698, !699, !702, !703, !704, !705, !706, !707, !708, !709, !716, !717, !724, !725, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3559, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3607, !3613, !3614, !3615, !3616, !3617, !3619, !3622, !3629, !3634, !3637, !3640, !3643, !3669, !3807, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3845, !3846, !3847, !3856, !3864, !3865, !3866, !3867, !3868, !3873, !3874, !3875, !3878, !3879, !3882, !3885, !3888, !3896, !3899, !3900, !3986, !3987, !3988, !3989, !3990, !3996, !3997, !3998, !3999, !4002, !4003, !4006, !4009, !4010, !4013, !4014, !4015, !4018, !4019, !4020, !4021, !4022, !4023, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4055, !4056, !4062, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4074, !4146, !4148, !4149, !4150, !4151, !4152, !4153, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4182, !4183, !4184}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !407, file: !408, line: 752, baseType: !411, size: 192)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !412, line: 56, size: 192, elements: !413)
!412 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!413 = !{!414, !416, !417, !420}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !411, file: !412, line: 57, baseType: !415, size: 64)
!415 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !411, file: !412, line: 58, baseType: !415, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !411, file: !412, line: 59, baseType: !418, size: 32, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !390, line: 21, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !392, line: 27, baseType: !18)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !411, file: !412, line: 61, baseType: !418, size: 32, offset: 160)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !407, file: !408, line: 754, baseType: !18, size: 32, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !407, file: !408, line: 767, baseType: !340, size: 64, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !407, file: !408, line: 768, baseType: !424, size: 32, offset: 320)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !425, line: 113, baseType: !426)
!425 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !425, line: 111, size: 32, elements: !427)
!427 = !{!428}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !426, file: !425, line: 112, baseType: !381, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !407, file: !408, line: 770, baseType: !18, size: 32, offset: 352)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !407, file: !408, line: 771, baseType: !18, size: 32, offset: 384)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !407, file: !408, line: 774, baseType: !120, size: 32, offset: 416)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !407, file: !408, line: 775, baseType: !433, size: 128, offset: 448)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !434, line: 58, size: 128, elements: !435)
!434 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!435 = !{!436, !442, !447, !448}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !433, file: !434, line: 59, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !438, line: 60, size: 64, elements: !439)
!438 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !437, file: !438, line: 61, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, scope: !433, file: !434, line: 60, baseType: !443, size: 32, offset: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !433, file: !434, line: 60, size: 32, elements: !444)
!444 = !{!445, !446}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !443, file: !434, line: 61, baseType: !18, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !443, file: !434, line: 62, baseType: !381, size: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !433, file: !434, line: 65, baseType: !399, size: 16, offset: 96)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !433, file: !434, line: 65, baseType: !399, size: 16, offset: 112)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !407, file: !408, line: 776, baseType: !18, size: 32, offset: 576)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !407, file: !408, line: 777, baseType: !415, size: 64, offset: 640)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !407, file: !408, line: 778, baseType: !406, size: 64, offset: 704)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !407, file: !408, line: 787, baseType: !120, size: 32, offset: 768)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !407, file: !408, line: 788, baseType: !120, size: 32, offset: 800)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !407, file: !408, line: 790, baseType: !120, size: 32, offset: 832)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !407, file: !408, line: 792, baseType: !120, size: 32, offset: 864)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !407, file: !408, line: 793, baseType: !120, size: 32, offset: 896)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !407, file: !408, line: 794, baseType: !120, size: 32, offset: 928)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !407, file: !408, line: 795, baseType: !18, size: 32, offset: 960)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !407, file: !408, line: 797, baseType: !460, size: 2048, offset: 1024)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !408, line: 551, size: 2048, elements: !461)
!461 = !{!462, !467, !475, !479, !480, !481, !482, !483, !484, !485, !486, !490, !491, !492, !493, !495, !498, !499, !500}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !460, file: !408, line: 553, baseType: !463, size: 128)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !408, line: 411, size: 128, elements: !464)
!464 = !{!465, !466}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !463, file: !408, line: 412, baseType: !415, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !463, file: !408, line: 413, baseType: !418, size: 32, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !460, file: !408, line: 554, baseType: !468, size: 192, align: 64, offset: 128)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !469, line: 5, size: 192, align: 64, elements: !470)
!469 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!470 = !{!471, !472, !474}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !468, file: !469, line: 6, baseType: !415, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !468, file: !469, line: 7, baseType: !473, size: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !468, file: !469, line: 8, baseType: !473, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !460, file: !408, line: 555, baseType: !476, size: 64, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !390, line: 23, baseType: !477)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !392, line: 31, baseType: !478)
!478 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !460, file: !408, line: 556, baseType: !476, size: 64, offset: 384)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !460, file: !408, line: 558, baseType: !350, size: 128, offset: 448)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !460, file: !408, line: 559, baseType: !18, size: 32, offset: 576)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !460, file: !408, line: 561, baseType: !476, size: 64, offset: 640)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !460, file: !408, line: 562, baseType: !476, size: 64, offset: 704)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !460, file: !408, line: 563, baseType: !476, size: 64, offset: 768)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !460, file: !408, line: 564, baseType: !476, size: 64, offset: 832)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !460, file: !408, line: 565, baseType: !487, size: 64, offset: 896)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !390, line: 22, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !392, line: 30, baseType: !489)
!489 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !460, file: !408, line: 566, baseType: !476, size: 64, offset: 960)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !460, file: !408, line: 568, baseType: !476, size: 64, offset: 1024)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !460, file: !408, line: 571, baseType: !120, size: 32, offset: 1088)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !460, file: !408, line: 572, baseType: !494, size: 64, offset: 1152)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !460, file: !408, line: 574, baseType: !496, size: 64, offset: 1216)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !408, line: 49, flags: DIFlagFwdDecl)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !460, file: !408, line: 576, baseType: !496, size: 64, offset: 1280)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !460, file: !408, line: 578, baseType: !415, size: 64, offset: 1344)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !460, file: !408, line: 588, baseType: !501, size: 512, align: 512, offset: 1536)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !408, line: 497, size: 512, align: 512, elements: !502)
!502 = !{!503, !504, !505, !506, !507, !508, !509, !510, !511}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !501, file: !408, line: 498, baseType: !476, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !501, file: !408, line: 499, baseType: !476, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !501, file: !408, line: 500, baseType: !476, size: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !501, file: !408, line: 501, baseType: !418, size: 32, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !501, file: !408, line: 502, baseType: !418, size: 32, offset: 224)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !501, file: !408, line: 503, baseType: !415, size: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !501, file: !408, line: 504, baseType: !415, size: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !501, file: !408, line: 505, baseType: !415, size: 64, offset: 384)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !501, file: !408, line: 506, baseType: !512, size: 64, align: 64, offset: 448)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !408, line: 445, size: 64, align: 64, elements: !513)
!513 = !{!514, !515}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !512, file: !408, line: 446, baseType: !18, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !512, file: !408, line: 447, baseType: !18, size: 32, offset: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !407, file: !408, line: 798, baseType: !517, size: 384, offset: 3072)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !408, line: 592, size: 384, elements: !518)
!518 = !{!519, !520, !521, !522, !523, !524, !525}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !517, file: !408, line: 593, baseType: !350, size: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !517, file: !408, line: 594, baseType: !415, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !517, file: !408, line: 595, baseType: !415, size: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !517, file: !408, line: 596, baseType: !18, size: 32, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !517, file: !408, line: 597, baseType: !401, size: 16, offset: 288)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !517, file: !408, line: 598, baseType: !401, size: 16, offset: 304)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !517, file: !408, line: 600, baseType: !526, size: 64, offset: 320)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !407, file: !408, line: 799, baseType: !528, size: 1792, offset: 3456)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !408, line: 610, size: 1792, elements: !529)
!529 = !{!530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !625, !626}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !528, file: !408, line: 611, baseType: !468, size: 192, align: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !528, file: !408, line: 618, baseType: !476, size: 64, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !528, file: !408, line: 619, baseType: !476, size: 64, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !528, file: !408, line: 620, baseType: !476, size: 64, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !528, file: !408, line: 621, baseType: !476, size: 64, offset: 384)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !528, file: !408, line: 622, baseType: !476, size: 64, offset: 448)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !528, file: !408, line: 629, baseType: !487, size: 64, offset: 512)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !528, file: !408, line: 630, baseType: !476, size: 64, offset: 576)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !528, file: !408, line: 631, baseType: !18, size: 32, offset: 640)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !528, file: !408, line: 653, baseType: !18, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !528, file: !408, line: 654, baseType: !18, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !528, file: !408, line: 655, baseType: !18, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !528, file: !408, line: 656, baseType: !18, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !528, file: !408, line: 662, baseType: !544, size: 512, offset: 704)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !30, line: 118, size: 512, elements: !545)
!545 = !{!546, !554, !555, !560, !621, !622, !623, !624}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !544, file: !30, line: 119, baseType: !547, size: 256)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !548, line: 9, size: 256, elements: !549)
!548 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !547, file: !548, line: 10, baseType: !468, size: 192, align: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !547, file: !548, line: 11, baseType: !552, size: 64, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !553, line: 29, baseType: !487)
!553 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !544, file: !30, line: 120, baseType: !552, size: 64, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !544, file: !30, line: 121, baseType: !556, size: 64, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!29, !559}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !544, file: !30, line: 122, baseType: !561, size: 64, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !30, line: 159, size: 512, align: 512, elements: !563)
!563 = !{!564, !589, !590, !594, !604, !605, !616, !620}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !562, file: !30, line: 160, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !30, line: 215, size: 4608, align: 512, elements: !567)
!567 = !{!568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !566, file: !30, line: 216, baseType: !368, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !566, file: !30, line: 217, baseType: !18, size: 32, offset: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !566, file: !30, line: 218, baseType: !18, size: 32, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !566, file: !30, line: 219, baseType: !18, size: 32, offset: 96)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !566, file: !30, line: 220, baseType: !18, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !566, file: !30, line: 221, baseType: !18, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !566, file: !30, line: 222, baseType: !18, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !566, file: !30, line: 223, baseType: !18, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !566, file: !30, line: 224, baseType: !18, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !566, file: !30, line: 226, baseType: !18, size: 32, offset: 160)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !566, file: !30, line: 227, baseType: !401, size: 16, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !566, file: !30, line: 228, baseType: !401, size: 16, offset: 208)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !566, file: !30, line: 229, baseType: !18, size: 32, offset: 224)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !566, file: !30, line: 235, baseType: !552, size: 64, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !566, file: !30, line: 236, baseType: !559, size: 64, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !566, file: !30, line: 237, baseType: !552, size: 64, offset: 384)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !566, file: !30, line: 238, baseType: !559, size: 64, offset: 448)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !566, file: !30, line: 239, baseType: !586, size: 4096, align: 512, offset: 512)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 4096, align: 512, elements: !587)
!587 = !{!588}
!588 = !DISubrange(count: 8)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !562, file: !30, line: 161, baseType: !18, size: 32, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !562, file: !30, line: 162, baseType: !591, size: 32, offset: 96)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !351, line: 32, baseType: !592)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !593, line: 96, baseType: !120)
!593 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!594 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !562, file: !30, line: 163, baseType: !595, size: 32, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !596, line: 274, baseType: !597)
!596 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !596, line: 274, size: 32, elements: !598)
!598 = !{!599}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !597, file: !596, line: 274, baseType: !600, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !596, line: 69, baseType: !601)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !596, line: 64, size: 32, elements: !602)
!602 = !{!603}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !601, file: !596, line: 65, baseType: !18, size: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !562, file: !30, line: 164, baseType: !559, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !562, file: !30, line: 165, baseType: !606, size: 128, offset: 256)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !548, line: 14, size: 128, elements: !607)
!607 = !{!608}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !606, file: !548, line: 15, baseType: !609, size: 128)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !469, line: 26, size: 128, elements: !610)
!610 = !{!611, !615}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !609, file: !469, line: 27, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !469, line: 12, size: 64, elements: !613)
!613 = !{!614}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !612, file: !469, line: 13, baseType: !473, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !609, file: !469, line: 28, baseType: !473, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !562, file: !30, line: 166, baseType: !617, size: 64, offset: 384)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!552}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !562, file: !30, line: 167, baseType: !552, size: 64, offset: 448)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !544, file: !30, line: 123, baseType: !389, size: 8, offset: 448)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !544, file: !30, line: 124, baseType: !389, size: 8, offset: 456)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !544, file: !30, line: 125, baseType: !389, size: 8, offset: 464)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !544, file: !30, line: 126, baseType: !389, size: 8, offset: 472)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !528, file: !408, line: 671, baseType: !544, size: 512, offset: 1216)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !528, file: !408, line: 679, baseType: !627, size: 64, offset: 1728)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !407, file: !408, line: 800, baseType: !629, size: 64, offset: 5248)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !631)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !408, line: 800, flags: DIFlagFwdDecl)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !407, file: !408, line: 809, baseType: !633, size: 64, offset: 5312)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !408, line: 70, flags: DIFlagFwdDecl)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !407, file: !408, line: 825, baseType: !636, size: 2048, align: 512, offset: 5632)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !408, line: 509, size: 2048, align: 512, elements: !637)
!637 = !{!638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !636, file: !408, line: 511, baseType: !476, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !636, file: !408, line: 512, baseType: !476, size: 64, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !636, file: !408, line: 513, baseType: !476, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !636, file: !408, line: 514, baseType: !476, size: 64, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !636, file: !408, line: 515, baseType: !476, size: 64, offset: 256)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !636, file: !408, line: 516, baseType: !476, size: 64, offset: 320)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !636, file: !408, line: 518, baseType: !476, size: 64, offset: 384)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !636, file: !408, line: 519, baseType: !476, size: 64, offset: 448)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !636, file: !408, line: 520, baseType: !487, size: 64, offset: 512)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !636, file: !408, line: 522, baseType: !476, size: 64, offset: 576)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !636, file: !408, line: 523, baseType: !476, size: 64, offset: 640)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !636, file: !408, line: 524, baseType: !487, size: 64, offset: 704)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !636, file: !408, line: 526, baseType: !487, size: 64, offset: 768)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !636, file: !408, line: 527, baseType: !476, size: 64, offset: 832)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !636, file: !408, line: 529, baseType: !476, size: 64, offset: 896)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !636, file: !408, line: 530, baseType: !476, size: 64, offset: 960)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !636, file: !408, line: 531, baseType: !476, size: 64, offset: 1024)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !636, file: !408, line: 532, baseType: !476, size: 64, offset: 1088)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !636, file: !408, line: 533, baseType: !476, size: 64, offset: 1152)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !636, file: !408, line: 535, baseType: !476, size: 64, offset: 1216)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !636, file: !408, line: 536, baseType: !476, size: 64, offset: 1280)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !636, file: !408, line: 537, baseType: !476, size: 64, offset: 1344)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !636, file: !408, line: 538, baseType: !476, size: 64, offset: 1408)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !636, file: !408, line: 539, baseType: !476, size: 64, offset: 1472)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !636, file: !408, line: 540, baseType: !476, size: 64, offset: 1536)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !636, file: !408, line: 541, baseType: !476, size: 64, offset: 1600)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !636, file: !408, line: 542, baseType: !476, size: 64, offset: 1664)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !636, file: !408, line: 543, baseType: !476, size: 64, offset: 1728)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !407, file: !408, line: 833, baseType: !18, size: 32, offset: 7680)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !407, file: !408, line: 836, baseType: !18, size: 32, offset: 7712)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !407, file: !408, line: 837, baseType: !120, size: 32, offset: 7744)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !407, file: !408, line: 838, baseType: !670, size: 64, offset: 7808)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !672)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !673, line: 19, baseType: !674)
!673 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !673, line: 19, size: 64, elements: !675)
!675 = !{!676}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !674, file: !673, line: 19, baseType: !677, size: 64)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 64, elements: !678)
!678 = !{!679}
!679 = !DISubrange(count: 1)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !407, file: !408, line: 839, baseType: !681, size: 64, offset: 7872)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !407, file: !408, line: 840, baseType: !672, size: 64, offset: 7936)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !407, file: !408, line: 841, baseType: !340, size: 64, offset: 8000)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !407, file: !408, line: 843, baseType: !401, size: 16, offset: 8064)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !407, file: !408, line: 845, baseType: !401, size: 16, offset: 8080)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !407, file: !408, line: 848, baseType: !120, size: 32, offset: 8096)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !407, file: !408, line: 849, baseType: !688, size: 32, offset: 8128)
!688 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !408, line: 718, size: 32, elements: !689)
!689 = !{!690, !697}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !688, file: !408, line: 724, baseType: !691, size: 32)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !688, file: !408, line: 719, size: 32, elements: !692)
!692 = !{!693, !694, !695, !696}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !691, file: !408, line: 720, baseType: !389, size: 8)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !691, file: !408, line: 721, baseType: !389, size: 8, offset: 8)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !691, file: !408, line: 722, baseType: !389, size: 8, offset: 16)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !691, file: !408, line: 723, baseType: !389, size: 8, offset: 24)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !688, file: !408, line: 725, baseType: !418, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !407, file: !408, line: 850, baseType: !350, size: 128, offset: 8192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !407, file: !408, line: 851, baseType: !700, size: 64, offset: 8320)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !408, line: 60, flags: DIFlagFwdDecl)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !407, file: !408, line: 855, baseType: !415, size: 64, offset: 8384)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !407, file: !408, line: 856, baseType: !389, size: 8, offset: 8448)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !407, file: !408, line: 857, baseType: !389, size: 8, offset: 8456)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !407, file: !408, line: 858, baseType: !120, size: 32, offset: 8480)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !407, file: !408, line: 859, baseType: !350, size: 128, offset: 8512)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !407, file: !408, line: 860, baseType: !120, size: 32, offset: 8640)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !407, file: !408, line: 861, baseType: !350, size: 128, offset: 8704)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !407, file: !408, line: 873, baseType: !710, size: 256, offset: 8832)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !408, line: 376, size: 256, elements: !711)
!711 = !{!712, !713, !714, !715}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !710, file: !408, line: 381, baseType: !415, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !710, file: !408, line: 384, baseType: !478, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !710, file: !408, line: 389, baseType: !478, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !710, file: !408, line: 392, baseType: !478, size: 64, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !407, file: !408, line: 875, baseType: !350, size: 128, offset: 9088)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !407, file: !408, line: 877, baseType: !718, size: 320, offset: 9216)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !719, line: 86, size: 320, elements: !720)
!719 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!720 = !{!721, !722, !723}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !718, file: !719, line: 87, baseType: !120, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !718, file: !719, line: 88, baseType: !350, size: 128, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !718, file: !719, line: 89, baseType: !350, size: 128, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !407, file: !408, line: 878, baseType: !468, size: 192, align: 64, offset: 9536)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !407, file: !408, line: 881, baseType: !726, size: 64, offset: 9728)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !49, line: 733, size: 10240, elements: !728)
!728 = !{!729, !3473}
!729 = !DIDerivedType(tag: DW_TAG_member, scope: !727, file: !49, line: 734, baseType: !730, size: 10240)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !727, file: !49, line: 734, size: 10240, elements: !731)
!731 = !{!732, !736, !758, !3352, !3353, !3354, !3355, !3356, !3357, !3364, !3365, !3366, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3405, !3407, !3410, !3453, !3454, !3455, !3458, !3459, !3460, !3463, !3464, !3465, !3471, !3472}
!732 = !DIDerivedType(tag: DW_TAG_member, scope: !730, file: !49, line: 739, baseType: !733, size: 512, align: 512)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !730, file: !49, line: 739, size: 512, align: 512, elements: !734)
!734 = !{!735}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !733, file: !49, line: 747, baseType: !381, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !730, file: !49, line: 750, baseType: !737, size: 128, offset: 512)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !738, line: 218, size: 128, elements: !739)
!738 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!739 = !{!740, !756, !757}
!740 = !DIDerivedType(tag: DW_TAG_member, scope: !737, file: !738, line: 219, baseType: !741, size: 32)
!741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !737, file: !738, line: 219, size: 32, elements: !742)
!742 = !{!743, !752}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !741, file: !738, line: 220, baseType: !744, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !745, line: 29, baseType: !746)
!745 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !745, line: 17, size: 32, elements: !747)
!747 = !{!748}
!748 = !DIDerivedType(tag: DW_TAG_member, scope: !746, file: !745, line: 18, baseType: !749, size: 32)
!749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !746, file: !745, line: 18, size: 32, elements: !750)
!750 = !{!751}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !749, file: !745, line: 19, baseType: !370, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !741, file: !738, line: 221, baseType: !753)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !738, line: 197, baseType: !754)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !738, line: 197, elements: !755)
!755 = !{}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !737, file: !738, line: 223, baseType: !18, size: 32, offset: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !737, file: !738, line: 224, baseType: !340, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !730, file: !49, line: 752, baseType: !759, size: 64, offset: 640)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!415, !762, !415, !415, !415, !415}
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !25, line: 994, size: 1856, align: 64, elements: !764)
!764 = !{!765, !779, !780, !782, !789, !801, !804, !805, !929, !1138, !1147, !3342, !3343, !3344, !3345, !3346, !3347, !3349, !3350, !3351}
!765 = !DIDerivedType(tag: DW_TAG_member, scope: !763, file: !25, line: 995, baseType: !766, size: 128)
!766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !763, file: !25, line: 995, size: 128, elements: !767)
!767 = !{!768, !769, !778}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !766, file: !25, line: 996, baseType: !437, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !766, file: !25, line: 997, baseType: !770, size: 128, align: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !351, line: 232, size: 128, align: 64, elements: !771)
!771 = !{!772, !774}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !770, file: !351, line: 233, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !770, file: !351, line: 234, baseType: !775, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{null, !773}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !766, file: !25, line: 998, baseType: !18, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !763, file: !25, line: 1005, baseType: !744, size: 32, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !763, file: !25, line: 1006, baseType: !781, size: 32, offset: 160)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !351, line: 156, baseType: !18)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !763, file: !25, line: 1007, baseType: !783, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !784, line: 13, baseType: !785)
!784 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !351, line: 181, baseType: !786)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !351, line: 179, size: 64, elements: !787)
!787 = !{!788}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !786, file: !351, line: 180, baseType: !487, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !763, file: !25, line: 1008, baseType: !790, size: 256, offset: 256)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !791, line: 66, size: 256, elements: !792)
!791 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!792 = !{!793, !794, !795, !800}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !790, file: !791, line: 67, baseType: !783, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !790, file: !791, line: 68, baseType: !368, size: 32, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !790, file: !791, line: 70, baseType: !796, size: 32, offset: 96)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !797, line: 15, size: 32, elements: !798)
!797 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!798 = !{!799}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !796, file: !797, line: 20, baseType: !381, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !790, file: !791, line: 72, baseType: !350, size: 128, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !763, file: !25, line: 1009, baseType: !802, size: 64, offset: 512)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !351, line: 52, baseType: !803)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !593, line: 88, baseType: !489)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !763, file: !25, line: 1010, baseType: !18, size: 32, offset: 576)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !763, file: !25, line: 1011, baseType: !806, size: 256, offset: 640)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !25, line: 948, size: 256, elements: !807)
!807 = !{!808, !831, !919, !920, !927, !928}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !806, file: !25, line: 949, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !810, line: 34, baseType: !811)
!810 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !810, line: 25, size: 64, elements: !812)
!812 = !{!813}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !811, file: !810, line: 26, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !815, line: 27, baseType: !816)
!815 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !815, line: 13, size: 64, elements: !817)
!817 = !{!818, !830}
!818 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !815, line: 14, baseType: !819, size: 32)
!819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !816, file: !815, line: 14, size: 32, elements: !820)
!820 = !{!821, !822}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !819, file: !815, line: 15, baseType: !381, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, scope: !819, file: !815, line: 16, baseType: !823, size: 32)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !819, file: !815, line: 16, size: 32, elements: !824)
!824 = !{!825, !826}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !823, file: !815, line: 18, baseType: !389, size: 8)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !823, file: !815, line: 19, baseType: !827, size: 24, offset: 8)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 24, elements: !828)
!828 = !{!829}
!829 = !DISubrange(count: 3)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !816, file: !815, line: 26, baseType: !373, size: 32, offset: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !806, file: !25, line: 950, baseType: !832, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !72, line: 59, size: 768, elements: !834)
!834 = !{!835, !836, !837, !838, !851, !852, !859, !860}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !833, file: !72, line: 61, baseType: !424, size: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !833, file: !72, line: 62, baseType: !18, size: 32, offset: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !833, file: !72, line: 63, baseType: !744, size: 32, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !833, file: !72, line: 65, baseType: !839, size: 256, offset: 128)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 256, elements: !849)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !351, line: 194, size: 64, elements: !841)
!841 = !{!842}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !840, file: !351, line: 195, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !351, line: 198, size: 128, elements: !845)
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !844, file: !351, line: 199, baseType: !843, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !844, file: !351, line: 199, baseType: !848, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!849 = !{!850}
!850 = !DISubrange(count: 4)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !833, file: !72, line: 66, baseType: !840, size: 64, offset: 384)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !833, file: !72, line: 68, baseType: !853, size: 192, offset: 448)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !854, line: 41, baseType: !855)
!854 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !854, line: 37, size: 192, elements: !856)
!856 = !{!857, !858}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !855, file: !854, line: 38, baseType: !744, size: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !855, file: !854, line: 39, baseType: !350, size: 128, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !833, file: !72, line: 69, baseType: !770, size: 128, align: 64, offset: 640)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !833, file: !72, line: 70, baseType: !861, offset: 768)
!861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !862, elements: !917)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !72, line: 54, size: 128, elements: !863)
!863 = !{!864, !865}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !862, file: !72, line: 55, baseType: !120, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !862, file: !72, line: 56, baseType: !866, size: 64, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !868, line: 26, size: 1152, elements: !869)
!868 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!869 = !{!870, !884, !885, !886, !887, !891, !892, !893, !896, !900, !904, !905, !916}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !867, file: !868, line: 27, baseType: !871, size: 192)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !872, line: 19, size: 192, elements: !873)
!872 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!873 = !{!874, !882, !883}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !871, file: !872, line: 20, baseType: !875, size: 128)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !876, line: 296, size: 128, elements: !877)
!876 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!877 = !{!878, !879, !881}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !875, file: !876, line: 297, baseType: !744, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !875, file: !876, line: 299, baseType: !880, size: 32, offset: 32)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !351, line: 154, baseType: !18)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !875, file: !876, line: 300, baseType: !340, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !871, file: !872, line: 21, baseType: !18, size: 32, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !871, file: !872, line: 22, baseType: !18, size: 32, offset: 160)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !867, file: !868, line: 28, baseType: !770, size: 128, align: 64, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !867, file: !868, line: 29, baseType: !18, size: 32, offset: 320)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !867, file: !868, line: 30, baseType: !406, size: 64, offset: 384)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !867, file: !868, line: 31, baseType: !888, size: 64, offset: 448)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !890, line: 325, flags: DIFlagFwdDecl)
!890 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!891 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !867, file: !868, line: 32, baseType: !18, size: 32, offset: 512)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !867, file: !868, line: 33, baseType: !866, size: 64, offset: 576)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !867, file: !868, line: 35, baseType: !894, size: 64, offset: 640)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !868, line: 17, flags: DIFlagFwdDecl)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !867, file: !868, line: 37, baseType: !897, size: 64, offset: 704)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !899, line: 18, flags: DIFlagFwdDecl)
!899 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!900 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !867, file: !868, line: 38, baseType: !901, size: 64, offset: 768)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !903, line: 16, flags: DIFlagFwdDecl)
!903 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!904 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !867, file: !868, line: 39, baseType: !120, size: 32, offset: 832)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !867, file: !868, line: 40, baseType: !906, size: 192, offset: 896)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !907, line: 9, size: 192, elements: !908)
!907 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!908 = !{!909, !910, !914, !915}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !906, file: !907, line: 10, baseType: !783, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !906, file: !907, line: 11, baseType: !911, size: 64, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !913)
!913 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !907, line: 7, flags: DIFlagFwdDecl)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !906, file: !907, line: 12, baseType: !18, size: 32, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !906, file: !907, line: 13, baseType: !424, size: 32, offset: 160)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !867, file: !868, line: 42, baseType: !120, size: 32, offset: 1088)
!917 = !{!918}
!918 = !DISubrange(count: -1)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !806, file: !25, line: 951, baseType: !71, size: 32, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !806, file: !25, line: 952, baseType: !921, size: 32, offset: 160)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !899, line: 23, baseType: !922)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !899, line: 21, size: 32, elements: !923)
!923 = !{!924}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !922, file: !899, line: 22, baseType: !925, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !351, line: 37, baseType: !926)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !593, line: 49, baseType: !18)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !806, file: !25, line: 952, baseType: !921, size: 32, offset: 192)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !806, file: !25, line: 953, baseType: !120, size: 32, offset: 224)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !763, file: !25, line: 1012, baseType: !930, size: 64, offset: 896)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !932)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !933, line: 110, size: 1472, elements: !934)
!933 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!934 = !{!935, !936, !937, !944, !945, !946, !947, !948, !949, !950, !951, !957, !958, !959, !960, !961, !962, !1088, !1089, !1090, !1091, !1092, !1123, !1124, !1125, !1133}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !932, file: !933, line: 111, baseType: !783, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !932, file: !933, line: 112, baseType: !921, size: 32, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !932, file: !933, line: 113, baseType: !938, size: 32, offset: 96)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !899, line: 28, baseType: !939)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !899, line: 26, size: 32, elements: !940)
!940 = !{!941}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !939, file: !899, line: 27, baseType: !942, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !351, line: 38, baseType: !943)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !593, line: 50, baseType: !18)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !932, file: !933, line: 114, baseType: !921, size: 32, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !932, file: !933, line: 115, baseType: !938, size: 32, offset: 160)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !932, file: !933, line: 116, baseType: !921, size: 32, offset: 192)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !932, file: !933, line: 117, baseType: !938, size: 32, offset: 224)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !932, file: !933, line: 118, baseType: !921, size: 32, offset: 256)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !932, file: !933, line: 119, baseType: !938, size: 32, offset: 288)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !932, file: !933, line: 120, baseType: !18, size: 32, offset: 320)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !932, file: !933, line: 121, baseType: !952, size: 64, offset: 384)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !953, line: 24, baseType: !954)
!953 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !953, line: 24, size: 64, elements: !955)
!955 = !{!956}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !954, file: !953, line: 24, baseType: !476, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !932, file: !933, line: 122, baseType: !952, size: 64, offset: 448)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !932, file: !933, line: 123, baseType: !952, size: 64, offset: 512)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !932, file: !933, line: 124, baseType: !952, size: 64, offset: 576)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !932, file: !933, line: 125, baseType: !952, size: 64, offset: 640)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !932, file: !933, line: 127, baseType: !393, size: 8, offset: 704)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !932, file: !933, line: 129, baseType: !963, size: 64, offset: 768)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !965, line: 195, size: 1728, elements: !966)
!965 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!966 = !{!967, !968, !973, !978, !987, !990, !991, !998, !999, !1000, !1001, !1004, !1005, !1006, !1008, !1009, !1052, !1073}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !964, file: !965, line: 196, baseType: !424, size: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !964, file: !965, line: 197, baseType: !969, size: 32, offset: 32)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !965, line: 28, baseType: !970)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !351, line: 104, baseType: !971)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !390, line: 20, baseType: !972)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !392, line: 26, baseType: !120)
!973 = !DIDerivedType(tag: DW_TAG_member, scope: !964, file: !965, line: 198, baseType: !974, size: 192, offset: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !964, file: !965, line: 198, size: 192, elements: !975)
!975 = !{!976, !977}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !974, file: !965, line: 199, baseType: !350, size: 128)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !974, file: !965, line: 200, baseType: !468, size: 192, align: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !964, file: !965, line: 205, baseType: !979, size: 320, offset: 256)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !980, line: 48, size: 320, elements: !981)
!980 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!981 = !{!982, !983, !984, !985, !986}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !979, file: !980, line: 49, baseType: !783, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !979, file: !980, line: 55, baseType: !783, size: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !979, file: !980, line: 57, baseType: !796, size: 32, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !979, file: !980, line: 59, baseType: !368, size: 32, offset: 160)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !979, file: !980, line: 60, baseType: !350, size: 128, offset: 192)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !964, file: !965, line: 206, baseType: !988, size: 64, offset: 576)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !965, line: 206, flags: DIFlagFwdDecl)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !964, file: !965, line: 207, baseType: !340, size: 64, offset: 640)
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !964, file: !965, line: 208, baseType: !992, size: 64, offset: 704)
!992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !964, file: !965, line: 208, size: 64, elements: !993)
!993 = !{!994, !997}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !992, file: !965, line: 209, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !996, line: 8, baseType: !488)
!996 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!997 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !992, file: !965, line: 210, baseType: !995, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !964, file: !965, line: 212, baseType: !995, size: 64, offset: 768)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !964, file: !965, line: 213, baseType: !921, size: 32, offset: 832)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !964, file: !965, line: 214, baseType: !938, size: 32, offset: 864)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !964, file: !965, line: 215, baseType: !1002, size: 32, offset: 896)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !965, line: 31, baseType: !1003)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !351, line: 110, baseType: !418)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !964, file: !965, line: 216, baseType: !401, size: 16, offset: 928)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !964, file: !965, line: 217, baseType: !401, size: 16, offset: 944)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !964, file: !965, line: 221, baseType: !1007, size: 16, offset: 960)
!1007 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !964, file: !965, line: 228, baseType: !415, size: 64, offset: 1024)
!1009 = !DIDerivedType(tag: DW_TAG_member, scope: !964, file: !965, line: 245, baseType: !1010, size: 320, offset: 1088)
!1010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !964, file: !965, line: 245, size: 320, elements: !1011)
!1011 = !{!1012, !1043}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1010, file: !965, line: 246, baseType: !1013, size: 320)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !965, line: 114, size: 320, elements: !1014)
!1014 = !{!1015, !1016, !1028, !1031, !1040}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1013, file: !965, line: 116, baseType: !415, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, scope: !1013, file: !965, line: 117, baseType: !1017, size: 64, offset: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1013, file: !965, line: 117, size: 64, elements: !1018)
!1018 = !{!1019, !1027}
!1019 = !DIDerivedType(tag: DW_TAG_member, scope: !1017, file: !965, line: 118, baseType: !1020, size: 64)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1017, file: !965, line: 118, size: 64, elements: !1021)
!1021 = !{!1022, !1023}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1020, file: !965, line: 120, baseType: !399, size: 16)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1020, file: !965, line: 121, baseType: !1024, size: 48, offset: 16)
!1024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1025)
!1025 = !{!1026}
!1026 = !DISubrange(count: 6)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1017, file: !965, line: 127, baseType: !415, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1013, file: !965, line: 129, baseType: !1029, size: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !965, line: 102, flags: DIFlagFwdDecl)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1013, file: !965, line: 130, baseType: !1032, size: 64, offset: 192)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !965, line: 108, size: 192, elements: !1034)
!1034 = !{!1035, !1036, !1037}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1033, file: !965, line: 109, baseType: !770, size: 128, align: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1033, file: !965, line: 110, baseType: !424, size: 32, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1033, file: !965, line: 111, baseType: !1038, size: 8, offset: 160)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !351, line: 35, baseType: !1039)
!1039 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1013, file: !965, line: 131, baseType: !1041, size: 64, offset: 256)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!1043 = !DIDerivedType(tag: DW_TAG_member, scope: !1010, file: !965, line: 247, baseType: !1044, size: 320)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1010, file: !965, line: 247, size: 320, elements: !1045)
!1045 = !{!1046, !1047, !1048, !1049, !1050}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1044, file: !965, line: 248, baseType: !415, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1044, file: !965, line: 249, baseType: !415, size: 64, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1044, file: !965, line: 250, baseType: !1029, size: 64, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1044, file: !965, line: 251, baseType: !1032, size: 64, offset: 192)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1044, file: !965, line: 252, baseType: !1051, size: 64, offset: 256)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !964, file: !965, line: 260, baseType: !1053, size: 256, offset: 1408)
!1053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !964, file: !965, line: 260, size: 256, elements: !1054)
!1054 = !{!1055, !1061}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1053, file: !965, line: 261, baseType: !1056, size: 256)
!1056 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !965, line: 134, size: 256, elements: !1057)
!1057 = !{!1058, !1059}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1056, file: !965, line: 135, baseType: !340, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1056, file: !965, line: 136, baseType: !1060, size: 256)
!1060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 256, elements: !849)
!1061 = !DIDerivedType(tag: DW_TAG_member, scope: !1053, file: !965, line: 262, baseType: !1062, size: 256)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1053, file: !965, line: 262, size: 256, elements: !1063)
!1063 = !{!1064, !1065}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1062, file: !965, line: 264, baseType: !350, size: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1062, file: !965, line: 265, baseType: !1066, size: 128, offset: 128)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1067, line: 22, size: 128, elements: !1068)
!1067 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1068 = !{!1069, !1072}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1066, file: !1067, line: 23, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1067, line: 23, flags: DIFlagFwdDecl)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1066, file: !1067, line: 24, baseType: !415, size: 64, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !964, file: !965, line: 280, baseType: !1074, size: 64, offset: 1664)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !965, line: 176, size: 192, elements: !1076)
!1076 = !{!1077, !1086, !1087}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1075, file: !965, line: 177, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !965, line: 171, baseType: !1079)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!120, !963, !1082, !1084, !963}
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1030)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1056)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1075, file: !965, line: 178, baseType: !963, size: 64, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1075, file: !965, line: 179, baseType: !1029, size: 64, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !932, file: !933, line: 130, baseType: !963, size: 64, offset: 832)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !932, file: !933, line: 131, baseType: !963, size: 64, offset: 896)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !932, file: !933, line: 132, baseType: !963, size: 64, offset: 960)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !932, file: !933, line: 135, baseType: !340, size: 64, offset: 1024)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !932, file: !933, line: 137, baseType: !1093, size: 64, offset: 1088)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1095, line: 14, size: 1088, elements: !1096)
!1095 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1096 = !{!1097, !1098, !1107, !1108, !1109, !1110, !1111, !1112}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1094, file: !1095, line: 15, baseType: !424, size: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1094, file: !1095, line: 17, baseType: !1099, size: 320, offset: 64)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1100, line: 22, size: 320, elements: !1101)
!1100 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1101 = !{!1102, !1103, !1104, !1105}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1099, file: !1100, line: 23, baseType: !368, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1099, file: !1100, line: 24, baseType: !487, size: 64, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1099, file: !1100, line: 26, baseType: !350, size: 128, offset: 128)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1099, file: !1100, line: 28, baseType: !1106, size: 64, offset: 256)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1094, file: !1095, line: 19, baseType: !415, size: 64, offset: 384)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1094, file: !1095, line: 20, baseType: !783, size: 64, offset: 448)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1094, file: !1095, line: 23, baseType: !844, size: 128, offset: 512)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1094, file: !1095, line: 24, baseType: !921, size: 32, offset: 640)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1094, file: !1095, line: 29, baseType: !783, size: 64, offset: 704)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1094, file: !1095, line: 36, baseType: !1113, size: 320, offset: 768)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1114, line: 15, size: 320, elements: !1115)
!1114 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1115 = !{!1116, !1117, !1118, !1119, !1120, !1121, !1122}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1113, file: !1114, line: 16, baseType: !368, size: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1113, file: !1114, line: 18, baseType: !120, size: 32, offset: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1113, file: !1114, line: 19, baseType: !120, size: 32, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1113, file: !1114, line: 20, baseType: !120, size: 32, offset: 96)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1113, file: !1114, line: 21, baseType: !120, size: 32, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1113, file: !1114, line: 22, baseType: !415, size: 64, offset: 192)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1113, file: !1114, line: 23, baseType: !415, size: 64, offset: 256)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !932, file: !933, line: 138, baseType: !897, size: 64, offset: 1152)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !932, file: !933, line: 139, baseType: !901, size: 64, offset: 1216)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !932, file: !933, line: 140, baseType: !1126, size: 64, offset: 1280)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !933, line: 25, size: 64, elements: !1128)
!1128 = !{!1129, !1130, !1131}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1127, file: !933, line: 26, baseType: !381, size: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1127, file: !933, line: 27, baseType: !120, size: 32, offset: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1127, file: !933, line: 28, baseType: !1132, offset: 64)
!1132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !938, elements: !917)
!1133 = !DIDerivedType(tag: DW_TAG_member, scope: !932, file: !933, line: 142, baseType: !1134, size: 128, offset: 1344)
!1134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !932, file: !933, line: 142, size: 128, elements: !1135)
!1135 = !{!1136, !1137}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1134, file: !933, line: 143, baseType: !120, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1134, file: !933, line: 144, baseType: !770, size: 128, align: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !763, file: !25, line: 1013, baseType: !1139, size: 256, offset: 960)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !25, line: 970, size: 256, elements: !1140)
!1140 = !{!1141, !1142, !1143, !1144, !1145, !1146}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1139, file: !25, line: 971, baseType: !415, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1139, file: !25, line: 972, baseType: !18, size: 32, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1139, file: !25, line: 973, baseType: !18, size: 32, offset: 96)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1139, file: !25, line: 974, baseType: !18, size: 32, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1139, file: !25, line: 975, baseType: !18, size: 32, offset: 160)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1139, file: !25, line: 976, baseType: !802, size: 64, offset: 192)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !763, file: !25, line: 1014, baseType: !1148, size: 128, offset: 1216)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1149, line: 8, size: 128, elements: !1150)
!1149 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1150 = !{!1151, !3341}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1148, file: !1149, line: 9, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1154, line: 70, size: 256, elements: !1155)
!1154 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1155 = !{!1156, !3338, !3339, !3340}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1153, file: !1154, line: 71, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1159, line: 82, size: 1536, elements: !1160)
!1159 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1160 = !{!1161, !1162, !1167, !1175, !1176, !1191, !3306, !3308, !3321, !3322, !3323, !3324, !3325, !3330, !3331, !3332}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1158, file: !1159, line: 84, baseType: !18, size: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1158, file: !1159, line: 85, baseType: !1163, size: 32, offset: 32)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !596, line: 275, baseType: !1164)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !596, line: 275, size: 32, elements: !1165)
!1165 = !{!1166}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1164, file: !596, line: 275, baseType: !600, size: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1158, file: !1159, line: 86, baseType: !1168, size: 128, offset: 64)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1169, line: 38, size: 128, elements: !1170)
!1169 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1170 = !{!1171, !1173}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1168, file: !1169, line: 39, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1168, file: !1169, line: 39, baseType: !1174, size: 64, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1158, file: !1159, line: 87, baseType: !1157, size: 64, offset: 192)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1158, file: !1159, line: 88, baseType: !1177, size: 128, offset: 256)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1159, line: 49, size: 128, elements: !1178)
!1178 = !{!1179, !1188}
!1179 = !DIDerivedType(tag: DW_TAG_member, scope: !1177, file: !1159, line: 50, baseType: !1180, size: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1177, file: !1159, line: 50, size: 64, elements: !1181)
!1181 = !{!1182, !1187}
!1182 = !DIDerivedType(tag: DW_TAG_member, scope: !1180, file: !1159, line: 51, baseType: !1183, size: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1180, file: !1159, line: 51, size: 64, elements: !1184)
!1184 = !{!1185, !1186}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1183, file: !1159, line: 52, baseType: !418, size: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1183, file: !1159, line: 52, baseType: !418, size: 32, offset: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1180, file: !1159, line: 54, baseType: !476, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1177, file: !1159, line: 56, baseType: !1189, size: 64, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1158, file: !1159, line: 89, baseType: !1192, size: 64, offset: 384)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !25, line: 641, size: 4800, elements: !1194)
!1194 = !{!1195, !1197, !1198, !1199, !1200, !1201, !1202, !1205, !1206, !1397, !3120, !3121, !3122, !3123, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3288, !3291, !3292, !3293, !3302, !3303, !3304, !3305}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1193, file: !25, line: 642, baseType: !1196, size: 16)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !351, line: 24, baseType: !401)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1193, file: !25, line: 643, baseType: !401, size: 16, offset: 16)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1193, file: !25, line: 644, baseType: !921, size: 32, offset: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1193, file: !25, line: 645, baseType: !350, size: 128, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1193, file: !25, line: 646, baseType: !938, size: 32, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1193, file: !25, line: 647, baseType: !18, size: 32, offset: 224)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1193, file: !25, line: 650, baseType: !1203, size: 64, offset: 256)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !25, line: 607, flags: DIFlagFwdDecl)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1193, file: !25, line: 651, baseType: !1203, size: 64, offset: 320)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1193, file: !25, line: 654, baseType: !1207, size: 64, offset: 384)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1209)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !25, line: 1966, size: 2048, align: 512, elements: !1210)
!1210 = !{!1211, !1215, !1228, !1234, !1238, !1242, !1246, !1250, !1254, !1258, !1262, !1263, !1269, !1273, !1311, !1342, !1352, !1358, !1362, !1366, !1370, !1374, !1378, !1384, !1388}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1209, file: !25, line: 1967, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!1157, !1192, !1157, !18}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1209, file: !25, line: 1968, baseType: !1216, size: 64, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!1041, !1157, !1192, !1219}
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1221, line: 10, size: 128, elements: !1222)
!1221 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1222 = !{!1223, !1227}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1220, file: !1221, line: 11, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{null, !340}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1220, file: !1221, line: 12, baseType: !340, size: 64, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1209, file: !25, line: 1969, baseType: !1229, size: 64, offset: 128)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!120, !1232, !1192, !120}
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !953, line: 42, flags: DIFlagFwdDecl)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1209, file: !25, line: 1970, baseType: !1235, size: 64, offset: 192)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!1203, !1192, !120, !1038}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1209, file: !25, line: 1972, baseType: !1239, size: 64, offset: 256)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!120, !1157, !1051, !120}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1209, file: !25, line: 1974, baseType: !1243, size: 64, offset: 320)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!120, !1232, !1192, !1157, !1196, !1038}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1209, file: !25, line: 1976, baseType: !1247, size: 64, offset: 384)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!120, !1157, !1192, !1157}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1209, file: !25, line: 1977, baseType: !1251, size: 64, offset: 448)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!120, !1192, !1157}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1209, file: !25, line: 1978, baseType: !1255, size: 64, offset: 512)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!120, !1232, !1192, !1157, !1041}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1209, file: !25, line: 1980, baseType: !1259, size: 64, offset: 576)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!120, !1232, !1192, !1157, !1196}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1209, file: !25, line: 1982, baseType: !1251, size: 64, offset: 640)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1209, file: !25, line: 1983, baseType: !1264, size: 64, offset: 704)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!120, !1232, !1192, !1157, !1196, !1267}
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !351, line: 21, baseType: !1268)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !351, line: 18, baseType: !418)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1209, file: !25, line: 1985, baseType: !1270, size: 64, offset: 768)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!120, !1232, !1192, !1157, !1192, !1157, !18}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1209, file: !25, line: 1987, baseType: !1274, size: 64, offset: 832)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!120, !1232, !1157, !1277}
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !25, line: 226, size: 640, elements: !1279)
!1279 = !{!1280, !1281, !1282, !1292, !1301, !1302, !1308, !1309, !1310}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1278, file: !25, line: 227, baseType: !18, size: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1278, file: !25, line: 228, baseType: !1196, size: 16, offset: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, scope: !1278, file: !25, line: 241, baseType: !1283, size: 32, offset: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1278, file: !25, line: 241, size: 32, elements: !1284)
!1284 = !{!1285, !1286}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1283, file: !25, line: 242, baseType: !921, size: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1283, file: !25, line: 243, baseType: !1287, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1288, line: 16, baseType: !1289)
!1288 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1288, line: 14, size: 32, elements: !1290)
!1290 = !{!1291}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1289, file: !1288, line: 15, baseType: !925, size: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, scope: !1278, file: !25, line: 245, baseType: !1293, size: 32, offset: 96)
!1293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1278, file: !25, line: 245, size: 32, elements: !1294)
!1294 = !{!1295, !1296}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1293, file: !25, line: 246, baseType: !938, size: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1293, file: !25, line: 247, baseType: !1297, size: 32)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1288, line: 20, baseType: !1298)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1288, line: 18, size: 32, elements: !1299)
!1299 = !{!1300}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1298, file: !1288, line: 19, baseType: !942, size: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1278, file: !25, line: 249, baseType: !802, size: 64, offset: 128)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1278, file: !25, line: 250, baseType: !1303, size: 128, offset: 192)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !996, line: 13, size: 128, elements: !1304)
!1304 = !{!1305, !1306}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1303, file: !996, line: 14, baseType: !995, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1303, file: !996, line: 15, baseType: !1307, size: 64, offset: 64)
!1307 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1278, file: !25, line: 251, baseType: !1303, size: 128, offset: 320)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1278, file: !25, line: 252, baseType: !1303, size: 128, offset: 448)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1278, file: !25, line: 259, baseType: !762, size: 64, offset: 576)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1209, file: !25, line: 1988, baseType: !1312, size: 64, offset: 896)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!120, !1232, !1315, !1317, !418, !18}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1148)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1319, line: 22, size: 1280, elements: !1320)
!1319 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1320 = !{!1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1318, file: !1319, line: 23, baseType: !418, size: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1318, file: !1319, line: 24, baseType: !1196, size: 16, offset: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1318, file: !1319, line: 25, baseType: !18, size: 32, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1318, file: !1319, line: 26, baseType: !1003, size: 32, offset: 96)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1318, file: !1319, line: 27, baseType: !476, size: 64, offset: 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1318, file: !1319, line: 28, baseType: !476, size: 64, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1318, file: !1319, line: 41, baseType: !476, size: 64, offset: 256)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1318, file: !1319, line: 42, baseType: !1267, size: 32, offset: 320)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1318, file: !1319, line: 43, baseType: !1267, size: 32, offset: 352)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1318, file: !1319, line: 44, baseType: !921, size: 32, offset: 384)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1318, file: !1319, line: 45, baseType: !938, size: 32, offset: 416)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1318, file: !1319, line: 46, baseType: !802, size: 64, offset: 448)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1318, file: !1319, line: 47, baseType: !1303, size: 128, offset: 512)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1318, file: !1319, line: 48, baseType: !1303, size: 128, offset: 640)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1318, file: !1319, line: 49, baseType: !1303, size: 128, offset: 768)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1318, file: !1319, line: 50, baseType: !1303, size: 128, offset: 896)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1318, file: !1319, line: 51, baseType: !476, size: 64, offset: 1024)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1318, file: !1319, line: 52, baseType: !476, size: 64, offset: 1088)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1318, file: !1319, line: 53, baseType: !418, size: 32, offset: 1152)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1318, file: !1319, line: 54, baseType: !418, size: 32, offset: 1184)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1318, file: !1319, line: 55, baseType: !476, size: 64, offset: 1216)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1209, file: !25, line: 1990, baseType: !1343, size: 64, offset: 960)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!1346, !1157, !1051, !1349}
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !351, line: 66, baseType: !1347)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !593, line: 73, baseType: !1348)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !593, line: 15, baseType: !1307)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !351, line: 61, baseType: !1350)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !593, line: 72, baseType: !1351)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !593, line: 16, baseType: !415)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1209, file: !25, line: 1991, baseType: !1353, size: 64, offset: 1024)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!120, !1192, !1356, !476, !476}
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !25, line: 55, flags: DIFlagFwdDecl)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1209, file: !25, line: 1993, baseType: !1359, size: 64, offset: 1088)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!120, !1192, !120}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1209, file: !25, line: 1994, baseType: !1363, size: 64, offset: 1152)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!120, !1192, !1157, !762, !18, !1196}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1209, file: !25, line: 1997, baseType: !1367, size: 64, offset: 1216)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!120, !1232, !1192, !762, !1196}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1209, file: !25, line: 1999, baseType: !1371, size: 64, offset: 1280)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!1203, !1232, !1157, !120}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1209, file: !25, line: 2001, baseType: !1375, size: 64, offset: 1344)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!120, !1232, !1157, !1203, !120}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1209, file: !25, line: 2003, baseType: !1379, size: 64, offset: 1408)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!120, !1232, !1157, !1382}
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !25, line: 76, flags: DIFlagFwdDecl)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1209, file: !25, line: 2005, baseType: !1385, size: 64, offset: 1472)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!120, !1157, !1382}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1209, file: !25, line: 2006, baseType: !1389, size: 64, offset: 1536)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!1392, !1192}
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !25, line: 3192, size: 192, elements: !1394)
!1394 = !{!1395, !1396}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1393, file: !25, line: 3193, baseType: !875, size: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1393, file: !25, line: 3194, baseType: !418, size: 32, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1193, file: !25, line: 655, baseType: !1398, size: 64, offset: 448)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !25, line: 1190, size: 10752, elements: !1400)
!1400 = !{!1401, !1402, !1403, !1404, !1405, !1406, !2633, !2765, !2805, !2888, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2905, !2909, !2910, !2913, !2916, !2919, !2922, !2923, !2924, !2965, !2991, !2992, !2993, !2994, !2995, !2996, !2999, !3003, !3012, !3013, !3014, !3015, !3074, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1399, file: !25, line: 1191, baseType: !350, size: 128)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1399, file: !25, line: 1192, baseType: !1267, size: 32, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1399, file: !25, line: 1193, baseType: !393, size: 8, offset: 160)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1399, file: !25, line: 1194, baseType: !415, size: 64, offset: 192)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1399, file: !25, line: 1195, baseType: !802, size: 64, offset: 256)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1399, file: !25, line: 1196, baseType: !1407, size: 64, offset: 320)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !25, line: 2366, size: 576, elements: !1409)
!1409 = !{!1410, !1411, !1412, !1418, !1422, !1426, !1430, !2621, !2622, !2623, !2625, !2626, !2627, !2629, !2630, !2631, !2632}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1408, file: !25, line: 2367, baseType: !1041, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1408, file: !25, line: 2368, baseType: !120, size: 32, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1408, file: !25, line: 2376, baseType: !1413, size: 64, offset: 128)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!120, !1416}
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1154, line: 21, flags: DIFlagFwdDecl)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1408, file: !25, line: 2377, baseType: !1419, size: 64, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1421)
!1421 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !25, line: 75, flags: DIFlagFwdDecl)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1408, file: !25, line: 2378, baseType: !1423, size: 64, offset: 256)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!1157, !1407, !120, !1041, !340}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1408, file: !25, line: 2380, baseType: !1427, size: 64, offset: 320)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{null, !1398}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1408, file: !25, line: 2381, baseType: !1431, size: 64, offset: 384)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !17, line: 402, size: 9216, align: 512, elements: !1433)
!1433 = !{!1434, !1435, !1436, !1440, !2264, !2290, !2291, !2292, !2293, !2297, !2300, !2301, !2302, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2370, !2374, !2394, !2414, !2415, !2416, !2417, !2426, !2449, !2450, !2453, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2467, !2468, !2579, !2587, !2588, !2589, !2591, !2595, !2596, !2600, !2601, !2602, !2603, !2605, !2606, !2607, !2614, !2615, !2616, !2620}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1432, file: !17, line: 403, baseType: !16, size: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1432, file: !17, line: 406, baseType: !350, size: 128, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1432, file: !17, line: 409, baseType: !1437, size: 448, offset: 192)
!1437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1438)
!1438 = !{!1439}
!1439 = !DISubrange(count: 56)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1432, file: !17, line: 417, baseType: !1441, size: 768, offset: 640)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !17, line: 45, size: 768, elements: !1442)
!1442 = !{!1443, !2257, !2258, !2259, !2262}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1441, file: !17, line: 46, baseType: !1444, size: 512)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1445, line: 64, size: 512, elements: !1446)
!1445 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1446 = !{!1447, !1448, !1449, !1451, !1495, !2103, !2247, !2252, !2253, !2254, !2255, !2256}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1444, file: !1445, line: 65, baseType: !1041, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1444, file: !1445, line: 66, baseType: !350, size: 128, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1444, file: !1445, line: 67, baseType: !1450, size: 64, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1444, file: !1445, line: 68, baseType: !1452, size: 64, offset: 256)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1445, line: 168, size: 768, elements: !1454)
!1454 = !{!1455, !1456, !1457, !1458}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1453, file: !1445, line: 169, baseType: !350, size: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1453, file: !1445, line: 170, baseType: !744, size: 32, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1453, file: !1445, line: 171, baseType: !1444, size: 512, offset: 192)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1453, file: !1445, line: 172, baseType: !1459, size: 64, offset: 704)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1461)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1445, line: 133, size: 192, elements: !1462)
!1462 = !{!1463, !1470, !1475}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1461, file: !1445, line: 134, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1465)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!120, !1468}
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1444)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1461, file: !1445, line: 135, baseType: !1471, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1472)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!1041, !1468}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1461, file: !1445, line: 136, baseType: !1476, size: 64, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1477)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!120, !1468, !1480}
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1445, line: 125, size: 20736, elements: !1482)
!1482 = !{!1483, !1485, !1489, !1490, !1494}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1481, file: !1445, line: 126, baseType: !1484, size: 192)
!1484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1051, size: 192, elements: !828)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1481, file: !1445, line: 127, baseType: !1486, size: 4096, offset: 192)
!1486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1051, size: 4096, elements: !1487)
!1487 = !{!1488}
!1488 = !DISubrange(count: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1481, file: !1445, line: 128, baseType: !120, size: 32, offset: 4288)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1481, file: !1445, line: 129, baseType: !1491, size: 16384, offset: 4320)
!1491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1492)
!1492 = !{!1493}
!1493 = !DISubrange(count: 2048)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1481, file: !1445, line: 130, baseType: !120, size: 32, offset: 20704)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1444, file: !1445, line: 69, baseType: !1496, size: 64, offset: 320)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1498)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1445, line: 116, size: 384, elements: !1499)
!1499 = !{!1500, !1504, !1523, !2063, !2093, !2097}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1498, file: !1445, line: 117, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{null, !1450}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1498, file: !1445, line: 118, baseType: !1505, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1507)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1508, line: 254, size: 128, elements: !1509)
!1508 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1509 = !{!1510, !1519}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1507, file: !1508, line: 255, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!1346, !1450, !1514, !1051}
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1508, line: 30, size: 128, elements: !1516)
!1516 = !{!1517, !1518}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1515, file: !1508, line: 31, baseType: !1041, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1515, file: !1508, line: 32, baseType: !1196, size: 16, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1507, file: !1508, line: 256, baseType: !1520, size: 64, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!1346, !1450, !1514, !1041, !1349}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1498, file: !1445, line: 119, baseType: !1524, size: 64, offset: 128)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1527)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1508, line: 84, size: 320, elements: !1528)
!1528 = !{!1529, !1530, !1534, !2059, !2061}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1527, file: !1508, line: 85, baseType: !1041, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1527, file: !1508, line: 86, baseType: !1531, size: 64, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!1196, !1450, !1514, !120}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1527, file: !1508, line: 88, baseType: !1535, size: 64, offset: 128)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!1196, !1450, !1538, !120}
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1508, line: 175, size: 512, elements: !1540)
!1540 = !{!1541, !1542, !1543, !1544, !2050, !2054, !2055}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1539, file: !1508, line: 176, baseType: !1515, size: 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1539, file: !1508, line: 177, baseType: !1349, size: 64, offset: 128)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1539, file: !1508, line: 178, baseType: !340, size: 64, offset: 192)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1539, file: !1508, line: 179, baseType: !1545, size: 64, offset: 256)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!1548}
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !25, line: 472, size: 1536, align: 64, elements: !1550)
!1550 = !{!1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !2042, !2043, !2044, !2047, !2048, !2049}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1549, file: !25, line: 473, baseType: !1192, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1549, file: !25, line: 474, baseType: !875, size: 128, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1549, file: !25, line: 475, baseType: !979, size: 320, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1549, file: !25, line: 476, baseType: !880, size: 32, offset: 512)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1549, file: !25, line: 477, baseType: !381, size: 32, offset: 544)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1549, file: !25, line: 482, baseType: !609, size: 128, offset: 576)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1549, file: !25, line: 483, baseType: !415, size: 64, offset: 704)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1549, file: !25, line: 484, baseType: !415, size: 64, offset: 768)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1549, file: !25, line: 485, baseType: !1560, size: 64, offset: 832)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1562)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !25, line: 404, size: 1280, elements: !1563)
!1563 = !{!1564, !1867, !1937, !1941, !1945, !1951, !1957, !1961, !1966, !1970, !1974, !1978, !2006, !2010, !2014, !2018, !2023, !2027, !2034, !2038}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1562, file: !25, line: 405, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!120, !1568, !1865}
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !49, line: 74, size: 512, align: 128, elements: !1570)
!1570 = !{!1571, !1572, !1859, !1864}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1569, file: !49, line: 75, baseType: !415, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, scope: !1569, file: !49, line: 83, baseType: !1573, size: 320, offset: 64)
!1573 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1569, file: !49, line: 83, size: 320, elements: !1574)
!1574 = !{!1575, !1596, !1610, !1614, !1858}
!1575 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !49, line: 84, baseType: !1576, size: 320)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1573, file: !49, line: 84, size: 320, elements: !1577)
!1577 = !{!1578, !1589, !1590, !1595}
!1578 = !DIDerivedType(tag: DW_TAG_member, scope: !1576, file: !49, line: 90, baseType: !1579, size: 128)
!1579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1576, file: !49, line: 90, size: 128, elements: !1580)
!1580 = !{!1581, !1582, !1587, !1588}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1579, file: !49, line: 91, baseType: !350, size: 128)
!1582 = !DIDerivedType(tag: DW_TAG_member, scope: !1579, file: !49, line: 94, baseType: !1583, size: 128)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1579, file: !49, line: 94, size: 128, elements: !1584)
!1584 = !{!1585, !1586}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1583, file: !49, line: 96, baseType: !340, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1583, file: !49, line: 98, baseType: !18, size: 32, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1579, file: !49, line: 102, baseType: !350, size: 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1579, file: !49, line: 103, baseType: !350, size: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1576, file: !49, line: 106, baseType: !1548, size: 64, offset: 128)
!1590 = !DIDerivedType(tag: DW_TAG_member, scope: !1576, file: !49, line: 107, baseType: !1591, size: 64, offset: 192)
!1591 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1576, file: !49, line: 107, size: 64, elements: !1592)
!1592 = !{!1593, !1594}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1591, file: !49, line: 108, baseType: !415, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1591, file: !49, line: 109, baseType: !415, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1576, file: !49, line: 117, baseType: !415, size: 64, offset: 256)
!1596 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !49, line: 119, baseType: !1597, size: 320)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1573, file: !49, line: 119, size: 320, elements: !1598)
!1598 = !{!1599, !1600, !1603, !1604, !1605}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1597, file: !49, line: 124, baseType: !415, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1597, file: !49, line: 125, baseType: !1601, size: 64, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !49, line: 125, flags: DIFlagFwdDecl)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1597, file: !49, line: 126, baseType: !415, size: 64, offset: 128)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1597, file: !49, line: 127, baseType: !415, size: 64, offset: 192)
!1605 = !DIDerivedType(tag: DW_TAG_member, scope: !1597, file: !49, line: 128, baseType: !1606, size: 64, offset: 256)
!1606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1597, file: !49, line: 128, size: 64, elements: !1607)
!1607 = !{!1608, !1609}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1606, file: !49, line: 133, baseType: !415, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1606, file: !49, line: 138, baseType: !783, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !49, line: 141, baseType: !1611, size: 64)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1573, file: !49, line: 141, size: 64, elements: !1612)
!1612 = !{!1613}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1611, file: !49, line: 142, baseType: !415, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !49, line: 144, baseType: !1615, size: 128)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1573, file: !49, line: 144, size: 128, elements: !1616)
!1616 = !{!1617, !1857}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1615, file: !49, line: 146, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !41, line: 126, size: 1216, elements: !1620)
!1620 = !{!1621, !1631, !1652, !1663, !1664, !1665, !1666, !1839, !1840, !1841}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1619, file: !41, line: 127, baseType: !1622, size: 384)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !41, line: 21, size: 384, elements: !1623)
!1623 = !{!1624, !1625, !1627, !1628, !1629, !1630}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1622, file: !41, line: 22, baseType: !415, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1622, file: !41, line: 23, baseType: !1626, size: 64, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1622, file: !41, line: 24, baseType: !1626, size: 64, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1622, file: !41, line: 25, baseType: !415, size: 64, offset: 192)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1622, file: !41, line: 26, baseType: !415, size: 64, offset: 256)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1622, file: !41, line: 27, baseType: !415, size: 64, offset: 320)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1619, file: !41, line: 128, baseType: !1632, size: 128, offset: 384)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1633, line: 105, size: 128, elements: !1634)
!1633 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1634 = !{!1635, !1636}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1632, file: !1633, line: 110, baseType: !415, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1632, file: !1633, line: 118, baseType: !1637, size: 64, offset: 64)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1633, line: 95, size: 448, elements: !1639)
!1639 = !{!1640, !1641, !1647, !1648, !1649, !1650, !1651}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1638, file: !1633, line: 96, baseType: !783, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1638, file: !1633, line: 97, baseType: !1642, size: 64, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1633, line: 60, baseType: !1644)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{null, !1646}
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1638, file: !1633, line: 98, baseType: !1642, size: 64, offset: 128)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1638, file: !1633, line: 99, baseType: !1038, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1638, file: !1633, line: 100, baseType: !1038, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1638, file: !1633, line: 101, baseType: !770, size: 128, align: 64, offset: 256)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1638, file: !1633, line: 102, baseType: !1646, size: 64, offset: 384)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1619, file: !41, line: 129, baseType: !1653, size: 256, offset: 512)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1654, line: 26, size: 256, elements: !1655)
!1654 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1655 = !{!1656, !1657}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1653, file: !1654, line: 27, baseType: !18, size: 32)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1653, file: !1654, line: 28, baseType: !1658, size: 192, offset: 64)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1659, line: 43, size: 192, elements: !1660)
!1659 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1660 = !{!1661, !1662}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1658, file: !1659, line: 44, baseType: !368, size: 32)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1658, file: !1659, line: 45, baseType: !350, size: 128, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1619, file: !41, line: 130, baseType: !40, size: 32, offset: 768)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1619, file: !41, line: 131, baseType: !18, size: 32, offset: 800)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1619, file: !41, line: 132, baseType: !415, size: 64, offset: 832)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1619, file: !41, line: 133, baseType: !1667, size: 64, offset: 896)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1669)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !41, line: 77, size: 192, elements: !1670)
!1670 = !{!1671, !1675, !1835}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1669, file: !41, line: 83, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{null, !1568}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1669, file: !41, line: 89, baseType: !1676, size: 64, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!1679, !1680}
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !49, line: 1184, baseType: !18)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1682, line: 512, size: 896, elements: !1683)
!1682 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1683 = !{!1684, !1802, !1803, !1810, !1817, !1827, !1828, !1829, !1831, !1833}
!1684 = !DIDerivedType(tag: DW_TAG_member, scope: !1681, file: !1682, line: 513, baseType: !1685, size: 320)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1681, file: !1682, line: 513, size: 320, elements: !1686)
!1686 = !{!1687, !1798, !1799, !1800, !1801}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1685, file: !1682, line: 514, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !49, line: 625, size: 1344, elements: !1690)
!1690 = !{!1691, !1700, !1701, !1709, !1716, !1717, !1722, !1723, !1728, !1729, !1732, !1791, !1792, !1793, !1794, !1795, !1796}
!1691 = !DIDerivedType(tag: DW_TAG_member, scope: !1689, file: !49, line: 628, baseType: !1692, size: 128)
!1692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1689, file: !49, line: 628, size: 128, elements: !1693)
!1693 = !{!1694, !1699}
!1694 = !DIDerivedType(tag: DW_TAG_member, scope: !1692, file: !49, line: 629, baseType: !1695, size: 128)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1692, file: !49, line: 629, size: 128, elements: !1696)
!1696 = !{!1697, !1698}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1695, file: !49, line: 631, baseType: !415, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1695, file: !49, line: 632, baseType: !415, size: 64, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1692, file: !49, line: 635, baseType: !770, size: 128, align: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1689, file: !49, line: 639, baseType: !726, size: 64, offset: 128)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1689, file: !49, line: 640, baseType: !1702, size: 64, offset: 192)
!1702 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1703, line: 297, baseType: !1704)
!1703 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1703, line: 297, size: 64, elements: !1705)
!1705 = !{!1706}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1704, file: !1703, line: 297, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1708, line: 19, baseType: !415)
!1708 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1709 = !DIDerivedType(tag: DW_TAG_member, scope: !1689, file: !49, line: 646, baseType: !1710, size: 64, offset: 256)
!1710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1689, file: !49, line: 646, size: 64, elements: !1711)
!1711 = !{!1712, !1715}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1710, file: !49, line: 647, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1714)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !49, line: 542, baseType: !415)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1710, file: !49, line: 648, baseType: !1714, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1689, file: !49, line: 666, baseType: !120, size: 32, offset: 320)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1689, file: !49, line: 667, baseType: !1718, size: 64, offset: 384)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !49, line: 579, size: 320, elements: !1720)
!1720 = !{!1721}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1719, file: !49, line: 580, baseType: !979, size: 320)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1689, file: !49, line: 670, baseType: !1038, size: 8, offset: 448)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1689, file: !49, line: 681, baseType: !1724, size: 256, offset: 512)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1689, file: !49, line: 678, size: 256, elements: !1725)
!1725 = !{!1726, !1727}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1724, file: !49, line: 679, baseType: !468, size: 192, align: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1724, file: !49, line: 680, baseType: !415, size: 64, offset: 192)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1689, file: !49, line: 689, baseType: !350, size: 128, offset: 768)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1689, file: !49, line: 691, baseType: !1730, size: 64, offset: 896)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !49, line: 691, flags: DIFlagFwdDecl)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1689, file: !49, line: 694, baseType: !1733, size: 64, offset: 960)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1735)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1682, line: 563, size: 1024, elements: !1736)
!1736 = !{!1737, !1741, !1742, !1746, !1750, !1754, !1755, !1759, !1763, !1767, !1768, !1769, !1773, !1777, !1783, !1787}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1735, file: !1682, line: 564, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{null, !1688}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1735, file: !1682, line: 569, baseType: !1738, size: 64, offset: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1735, file: !1682, line: 571, baseType: !1743, size: 64, offset: 128)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!120, !1688, !415}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1735, file: !1682, line: 572, baseType: !1747, size: 64, offset: 192)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!120, !1688}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1735, file: !1682, line: 578, baseType: !1751, size: 64, offset: 256)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!120, !1688, !415, !415, !415}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1735, file: !1682, line: 580, baseType: !1676, size: 64, offset: 320)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1735, file: !1682, line: 581, baseType: !1756, size: 64, offset: 384)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!1679, !1680, !18}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1735, file: !1682, line: 582, baseType: !1760, size: 64, offset: 448)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!1679, !1680, !415, !415}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1735, file: !1682, line: 584, baseType: !1764, size: 64, offset: 512)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!415, !1688}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1735, file: !1682, line: 588, baseType: !1676, size: 64, offset: 576)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1735, file: !1682, line: 591, baseType: !1676, size: 64, offset: 640)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1735, file: !1682, line: 597, baseType: !1770, size: 64, offset: 704)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!120, !1688, !415, !340, !120, !120}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1735, file: !1682, line: 603, baseType: !1774, size: 64, offset: 768)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!1041, !1688}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1735, file: !1682, line: 613, baseType: !1778, size: 64, offset: 832)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!120, !1688, !1781}
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !49, line: 717, flags: DIFlagFwdDecl)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1735, file: !1682, line: 625, baseType: !1784, size: 64, offset: 896)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!1781, !1688, !415}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1735, file: !1682, line: 633, baseType: !1788, size: 64, offset: 960)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!1568, !1688, !415}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1689, file: !49, line: 697, baseType: !415, size: 64, offset: 1024)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1689, file: !49, line: 699, baseType: !762, size: 64, offset: 1088)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1689, file: !49, line: 700, baseType: !340, size: 64, offset: 1152)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1689, file: !49, line: 711, baseType: !783, size: 64, offset: 1216)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1689, file: !49, line: 717, baseType: !1781, size: 64, offset: 1280)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1689, file: !49, line: 722, baseType: !1797, offset: 1344)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !49, line: 570, elements: !755)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1685, file: !1682, line: 515, baseType: !880, size: 32, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1685, file: !1682, line: 516, baseType: !415, size: 64, offset: 128)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1685, file: !1682, line: 517, baseType: !415, size: 64, offset: 192)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1685, file: !1682, line: 518, baseType: !415, size: 64, offset: 256)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1681, file: !1682, line: 520, baseType: !48, size: 32, offset: 320)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1681, file: !1682, line: 522, baseType: !1804, size: 64, offset: 384)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1708, line: 22, baseType: !1806)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1708, line: 22, size: 64, elements: !1807)
!1807 = !{!1808}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1806, file: !1708, line: 22, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1708, line: 15, baseType: !415)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1681, file: !1682, line: 524, baseType: !1811, size: 64, offset: 448)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1703, line: 372, baseType: !1813)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1703, line: 372, size: 64, elements: !1814)
!1814 = !{!1815}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1813, file: !1703, line: 372, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1708, line: 16, baseType: !415)
!1817 = !DIDerivedType(tag: DW_TAG_member, scope: !1681, file: !1682, line: 527, baseType: !1818, size: 64, offset: 512)
!1818 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1681, file: !1682, line: 527, size: 64, elements: !1819)
!1819 = !{!1820, !1826}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1818, file: !1682, line: 528, baseType: !1821, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1708, line: 21, baseType: !1822)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1708, line: 21, size: 64, elements: !1823)
!1823 = !{!1824}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1822, file: !1708, line: 21, baseType: !1825, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1708, line: 14, baseType: !415)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1818, file: !1682, line: 529, baseType: !1805, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1681, file: !1682, line: 534, baseType: !1568, size: 64, offset: 576)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1681, file: !1682, line: 535, baseType: !1568, size: 64, offset: 640)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1681, file: !1682, line: 541, baseType: !1830, size: 64, offset: 704)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1681, file: !1682, line: 545, baseType: !1832, size: 64, offset: 768)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1681, file: !1682, line: 549, baseType: !1834, size: 64, offset: 832)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1703, line: 520, baseType: !1568)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1669, file: !41, line: 100, baseType: !1836, size: 64, offset: 128)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!120, !1618, !415, !415, !120}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1619, file: !41, line: 134, baseType: !340, size: 64, offset: 960)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1619, file: !41, line: 135, baseType: !120, size: 32, offset: 1024)
!1841 = !DIDerivedType(tag: DW_TAG_member, scope: !1619, file: !41, line: 136, baseType: !1842, size: 128, offset: 1088)
!1842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1619, file: !41, line: 136, size: 128, elements: !1843)
!1843 = !{!1844, !1850}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1842, file: !41, line: 137, baseType: !1845, size: 128)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1846, line: 6, size: 128, elements: !1847)
!1846 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1847 = !{!1848, !1849}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1845, file: !1846, line: 7, baseType: !476, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1845, file: !1846, line: 8, baseType: !476, size: 64, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, scope: !1842, file: !41, line: 138, baseType: !1851)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1842, file: !41, line: 138, elements: !1852)
!1852 = !{!1853, !1855}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1851, file: !41, line: 138, baseType: !1854)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1851, file: !41, line: 138, elements: !755)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1851, file: !41, line: 138, baseType: !1856)
!1856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1845, elements: !917)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1615, file: !49, line: 147, baseType: !340, size: 64, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1573, file: !49, line: 161, baseType: !770, size: 128, align: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, scope: !1569, file: !49, line: 164, baseType: !1860, size: 32, offset: 384)
!1860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1569, file: !49, line: 164, size: 32, elements: !1861)
!1861 = !{!1862, !1863}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1860, file: !49, line: 169, baseType: !381, size: 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1860, file: !49, line: 177, baseType: !18, size: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1569, file: !49, line: 181, baseType: !381, size: 32, offset: 416)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !25, line: 309, flags: DIFlagFwdDecl)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1562, file: !25, line: 406, baseType: !1868, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!120, !762, !1871}
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !49, line: 293, size: 1536, elements: !1873)
!1873 = !{!1874, !1904, !1918}
!1874 = !DIDerivedType(tag: DW_TAG_member, scope: !1872, file: !49, line: 295, baseType: !1875, size: 512)
!1875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1872, file: !49, line: 295, size: 512, elements: !1876)
!1876 = !{!1877, !1903}
!1877 = !DIDerivedType(tag: DW_TAG_member, scope: !1875, file: !49, line: 296, baseType: !1878, size: 448)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1875, file: !49, line: 296, size: 448, elements: !1879)
!1879 = !{!1880, !1881, !1890, !1891, !1892, !1901, !1902}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1878, file: !49, line: 298, baseType: !415, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, scope: !1878, file: !49, line: 299, baseType: !1882, size: 128, offset: 64)
!1882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1878, file: !49, line: 299, size: 128, elements: !1883)
!1883 = !{!1884, !1885}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1882, file: !49, line: 300, baseType: !350, size: 128)
!1885 = !DIDerivedType(tag: DW_TAG_member, scope: !1882, file: !49, line: 302, baseType: !1886, size: 128)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1882, file: !49, line: 302, size: 128, elements: !1887)
!1887 = !{!1888, !1889}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1886, file: !49, line: 303, baseType: !340, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1886, file: !49, line: 305, baseType: !18, size: 32, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1878, file: !49, line: 310, baseType: !1548, size: 64, offset: 192)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1878, file: !49, line: 311, baseType: !415, size: 64, offset: 256)
!1892 = !DIDerivedType(tag: DW_TAG_member, scope: !1878, file: !49, line: 312, baseType: !1893, size: 64, offset: 320)
!1893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1878, file: !49, line: 312, size: 64, elements: !1894)
!1894 = !{!1895, !1896}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1893, file: !49, line: 313, baseType: !340, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1893, file: !49, line: 314, baseType: !1897, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !49, line: 257, baseType: !1898)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !49, line: 255, size: 64, elements: !1899)
!1899 = !{!1900}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1898, file: !49, line: 256, baseType: !415, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1878, file: !49, line: 316, baseType: !381, size: 32, offset: 384)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1878, file: !49, line: 317, baseType: !381, size: 32, offset: 416)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1875, file: !49, line: 323, baseType: !1569, size: 512, align: 128)
!1904 = !DIDerivedType(tag: DW_TAG_member, scope: !1872, file: !49, line: 325, baseType: !1905, size: 512, offset: 512)
!1905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1872, file: !49, line: 325, size: 512, elements: !1906)
!1906 = !{!1907, !1917}
!1907 = !DIDerivedType(tag: DW_TAG_member, scope: !1905, file: !49, line: 326, baseType: !1908, size: 320)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1905, file: !49, line: 326, size: 320, elements: !1909)
!1909 = !{!1910, !1911, !1912, !1913, !1914, !1915, !1916}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1908, file: !49, line: 327, baseType: !415, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1908, file: !49, line: 328, baseType: !415, size: 64, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1908, file: !49, line: 329, baseType: !415, size: 64, offset: 128)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1908, file: !49, line: 331, baseType: !381, size: 32, offset: 192)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1908, file: !49, line: 332, baseType: !381, size: 32, offset: 224)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1908, file: !49, line: 333, baseType: !381, size: 32, offset: 256)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1908, file: !49, line: 335, baseType: !18, size: 32, offset: 288)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1905, file: !49, line: 339, baseType: !1569, size: 512, align: 128)
!1918 = !DIDerivedType(tag: DW_TAG_member, scope: !1872, file: !49, line: 341, baseType: !1919, size: 512, offset: 1024)
!1919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1872, file: !49, line: 341, size: 512, elements: !1920)
!1920 = !{!1921, !1930, !1936}
!1921 = !DIDerivedType(tag: DW_TAG_member, scope: !1919, file: !49, line: 342, baseType: !1922, size: 384)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1919, file: !49, line: 342, size: 384, elements: !1923)
!1923 = !{!1924, !1925, !1926, !1927, !1928, !1929}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1922, file: !49, line: 343, baseType: !415, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1922, file: !49, line: 344, baseType: !415, size: 64, offset: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1922, file: !49, line: 346, baseType: !340, size: 64, offset: 128)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1922, file: !49, line: 347, baseType: !340, size: 64, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1922, file: !49, line: 348, baseType: !340, size: 64, offset: 256)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1922, file: !49, line: 349, baseType: !340, size: 64, offset: 320)
!1930 = !DIDerivedType(tag: DW_TAG_member, scope: !1919, file: !49, line: 352, baseType: !1931, size: 256)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1919, file: !49, line: 352, size: 256, elements: !1932)
!1932 = !{!1933, !1934, !1935}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1931, file: !49, line: 353, baseType: !415, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1931, file: !49, line: 354, baseType: !415, size: 64, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1931, file: !49, line: 356, baseType: !350, size: 128, offset: 128)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1919, file: !49, line: 359, baseType: !1569, size: 512, align: 128)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1562, file: !25, line: 409, baseType: !1938, size: 64, offset: 128)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!120, !1548, !1865}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1562, file: !25, line: 412, baseType: !1942, size: 64, offset: 192)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!1038, !1548, !1871}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1562, file: !25, line: 414, baseType: !1946, size: 64, offset: 256)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{null, !1949}
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !25, line: 310, flags: DIFlagFwdDecl)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1562, file: !25, line: 416, baseType: !1952, size: 64, offset: 320)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!120, !762, !1548, !802, !18, !1955, !1956}
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1562, file: !25, line: 419, baseType: !1958, size: 64, offset: 384)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!120, !762, !1548, !802, !18, !18, !1568, !340}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1562, file: !25, line: 424, baseType: !1962, size: 64, offset: 448)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!1965, !1548, !1965}
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !351, line: 131, baseType: !476)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1562, file: !25, line: 425, baseType: !1967, size: 64, offset: 512)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{null, !1871, !1349, !1349}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1562, file: !25, line: 426, baseType: !1971, size: 64, offset: 576)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!1038, !1871, !880}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1562, file: !25, line: 427, baseType: !1975, size: 64, offset: 640)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{null, !1871}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1562, file: !25, line: 428, baseType: !1979, size: 64, offset: 704)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!1346, !1982, !2004}
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !25, line: 373, size: 384, elements: !1984)
!1984 = !{!1985, !1986, !1987, !1991, !1992, !1993, !1994}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1983, file: !25, line: 374, baseType: !762, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1983, file: !25, line: 375, baseType: !802, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1983, file: !25, line: 376, baseType: !1988, size: 64, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{null, !1982, !1307}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1983, file: !25, line: 377, baseType: !340, size: 64, offset: 192)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1983, file: !25, line: 378, baseType: !120, size: 32, offset: 256)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1983, file: !25, line: 379, baseType: !399, size: 16, offset: 288)
!1994 = !DIDerivedType(tag: DW_TAG_member, scope: !1983, file: !25, line: 380, baseType: !1995, size: 64, offset: 320)
!1995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1983, file: !25, line: 380, size: 64, elements: !1996)
!1996 = !{!1997, !2000}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1995, file: !25, line: 386, baseType: !1998, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !25, line: 386, flags: DIFlagFwdDecl)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1995, file: !25, line: 395, baseType: !2001, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!1346, !340}
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !25, line: 69, flags: DIFlagFwdDecl)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1562, file: !25, line: 433, baseType: !2007, size: 64, offset: 768)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!120, !1548, !1871, !1871, !85}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1562, file: !25, line: 435, baseType: !2011, size: 64, offset: 832)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!120, !1871}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1562, file: !25, line: 436, baseType: !2015, size: 64, offset: 896)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!1038, !1871, !1349, !1349}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1562, file: !25, line: 438, baseType: !2019, size: 64, offset: 960)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{null, !1871, !2022, !2022}
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1562, file: !25, line: 439, baseType: !2024, size: 64, offset: 1024)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!120, !1548, !1568}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1562, file: !25, line: 442, baseType: !2028, size: 64, offset: 1088)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!120, !2031, !762, !2033}
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !25, line: 66, flags: DIFlagFwdDecl)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1562, file: !25, line: 444, baseType: !2035, size: 64, offset: 1152)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{null, !762}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1562, file: !25, line: 445, baseType: !2039, size: 64, offset: 1216)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!120, !1982, !2004}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1549, file: !25, line: 486, baseType: !415, size: 64, offset: 896)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1549, file: !25, line: 487, baseType: !979, size: 320, offset: 960)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1549, file: !25, line: 488, baseType: !2045, size: 32, offset: 1280)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2046, line: 8, baseType: !418)
!2046 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1549, file: !25, line: 489, baseType: !744, size: 32, offset: 1312)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1549, file: !25, line: 490, baseType: !350, size: 128, offset: 1344)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1549, file: !25, line: 491, baseType: !340, size: 64, offset: 1472)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1539, file: !1508, line: 180, baseType: !2051, size: 64, offset: 320)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!1346, !762, !1450, !1538, !1051, !802, !1349}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1539, file: !1508, line: 182, baseType: !2051, size: 64, offset: 384)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1539, file: !1508, line: 184, baseType: !2056, size: 64, offset: 448)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!120, !762, !1450, !1538, !1688}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1527, file: !1508, line: 90, baseType: !2060, size: 64, offset: 192)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1527, file: !1508, line: 91, baseType: !2062, size: 64, offset: 256)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1498, file: !1445, line: 120, baseType: !2064, size: 64, offset: 192)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!2067, !1468}
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2069)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !93, line: 39, size: 384, elements: !2070)
!2070 = !{!2071, !2072, !2076, !2080, !2088, !2092}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2069, file: !93, line: 40, baseType: !92, size: 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2069, file: !93, line: 41, baseType: !2073, size: 64, offset: 64)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!1038}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2069, file: !93, line: 42, baseType: !2077, size: 64, offset: 128)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!340}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2069, file: !93, line: 43, baseType: !2081, size: 64, offset: 192)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!2084, !2086}
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !93, line: 19, flags: DIFlagFwdDecl)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2069, file: !93, line: 44, baseType: !2089, size: 64, offset: 256)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!2084}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2069, file: !93, line: 45, baseType: !1224, size: 64, offset: 320)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1498, file: !1445, line: 121, baseType: !2094, size: 64, offset: 256)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!2084, !1468}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1498, file: !1445, line: 122, baseType: !2098, size: 64, offset: 320)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{null, !1468, !2101, !2102}
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1444, file: !1445, line: 70, baseType: !2104, size: 64, offset: 384)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2106, line: 190, size: 1152, elements: !2107)
!2106 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2107 = !{!2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2239, !2240, !2241, !2242, !2243, !2246}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2105, file: !2106, line: 191, baseType: !381, size: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2105, file: !2106, line: 192, baseType: !381, size: 32, offset: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2105, file: !2106, line: 202, baseType: !2104, size: 64, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2105, file: !2106, line: 203, baseType: !1041, size: 64, offset: 128)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2105, file: !2106, line: 205, baseType: !468, size: 192, align: 64, offset: 192)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2105, file: !2106, line: 207, baseType: !2084, size: 64, offset: 384)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2105, file: !2106, line: 208, baseType: !18, size: 32, offset: 448)
!2115 = !DIDerivedType(tag: DW_TAG_member, scope: !2105, file: !2106, line: 209, baseType: !2116, size: 256, offset: 512)
!2116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2105, file: !2106, line: 209, size: 256, elements: !2117)
!2117 = !{!2118, !2127, !2131}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2116, file: !2106, line: 210, baseType: !2119, size: 256)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2106, line: 153, size: 256, elements: !2120)
!2120 = !{!2121, !2122, !2123, !2126}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2119, file: !2106, line: 154, baseType: !415, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2119, file: !2106, line: 156, baseType: !612, size: 64, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2119, file: !2106, line: 162, baseType: !2124, size: 64, offset: 128)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2106, line: 162, flags: DIFlagFwdDecl)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2119, file: !2106, line: 167, baseType: !415, size: 64, offset: 192)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2116, file: !2106, line: 211, baseType: !2128, size: 64)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2106, line: 170, size: 64, elements: !2129)
!2129 = !{!2130}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2128, file: !2106, line: 171, baseType: !2104, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2116, file: !2106, line: 212, baseType: !2132, size: 256)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2106, line: 174, size: 256, elements: !2133)
!2133 = !{!2134, !2234, !2237, !2238}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2132, file: !2106, line: 175, baseType: !2135, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2137)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2106, line: 271, size: 768, elements: !2138)
!2138 = !{!2139, !2198, !2202, !2203, !2204, !2205, !2206, !2210, !2211, !2212, !2213, !2230}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2137, file: !2106, line: 276, baseType: !2140, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!120, !2143}
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2106, line: 251, size: 1216, elements: !2145)
!2145 = !{!2146, !2147, !2148, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2144, file: !2106, line: 253, baseType: !2104, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2144, file: !2106, line: 254, baseType: !762, size: 64, offset: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2144, file: !2106, line: 255, baseType: !2149, size: 64, offset: 128)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2151, line: 17, size: 960, elements: !2152)
!2151 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2152 = !{!2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2183, !2184, !2187}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2150, file: !2151, line: 18, baseType: !1051, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2150, file: !2151, line: 19, baseType: !1349, size: 64, offset: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2150, file: !2151, line: 20, baseType: !1349, size: 64, offset: 128)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2150, file: !2151, line: 21, baseType: !1349, size: 64, offset: 192)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2150, file: !2151, line: 22, baseType: !1349, size: 64, offset: 256)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2150, file: !2151, line: 23, baseType: !802, size: 64, offset: 320)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2150, file: !2151, line: 24, baseType: !802, size: 64, offset: 384)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2150, file: !2151, line: 25, baseType: !790, size: 256, offset: 448)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2150, file: !2151, line: 26, baseType: !2162, size: 64, offset: 704)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2164)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2151, line: 32, size: 256, elements: !2165)
!2165 = !{!2166, !2171, !2175, !2179}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2164, file: !2151, line: 33, baseType: !2167, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!340, !2149, !2170}
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2164, file: !2151, line: 34, baseType: !2172, size: 64, offset: 64)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{null, !2149, !340}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2164, file: !2151, line: 35, baseType: !2176, size: 64, offset: 128)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!340, !2149, !340, !2170}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2164, file: !2151, line: 36, baseType: !2180, size: 64, offset: 192)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!120, !2149, !340}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2150, file: !2151, line: 27, baseType: !120, size: 32, offset: 768)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2150, file: !2151, line: 28, baseType: !2185, size: 64, offset: 832)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !763)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2150, file: !2151, line: 29, baseType: !340, size: 64, offset: 896)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2144, file: !2106, line: 256, baseType: !340, size: 64, offset: 192)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2144, file: !2106, line: 259, baseType: !790, size: 256, offset: 256)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2144, file: !2106, line: 260, baseType: !790, size: 256, offset: 512)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2144, file: !2106, line: 261, baseType: !120, size: 32, offset: 768)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2144, file: !2106, line: 262, baseType: !350, size: 128, offset: 832)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2144, file: !2106, line: 263, baseType: !1051, size: 64, offset: 960)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2144, file: !2106, line: 265, baseType: !1349, size: 64, offset: 1024)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2144, file: !2106, line: 266, baseType: !1038, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2144, file: !2106, line: 267, baseType: !1038, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2144, file: !2106, line: 268, baseType: !1733, size: 64, offset: 1152)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2137, file: !2106, line: 277, baseType: !2199, size: 64, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{null, !2143}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2137, file: !2106, line: 290, baseType: !2180, size: 64, offset: 128)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2137, file: !2106, line: 292, baseType: !2167, size: 64, offset: 192)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2137, file: !2106, line: 293, baseType: !2176, size: 64, offset: 256)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2137, file: !2106, line: 294, baseType: !2172, size: 64, offset: 320)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2137, file: !2106, line: 296, baseType: !2207, size: 64, offset: 384)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!1346, !2143, !1051, !1349, !802}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2137, file: !2106, line: 306, baseType: !1349, size: 64, offset: 448)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2137, file: !2106, line: 313, baseType: !1038, size: 8, offset: 512)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2137, file: !2106, line: 314, baseType: !2207, size: 64, offset: 576)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2137, file: !2106, line: 317, baseType: !2214, size: 64, offset: 640)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!2217, !2143, !2219}
!2217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2218, line: 59, baseType: !18)
!2218 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2221, line: 37, size: 128, elements: !2222)
!2221 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2222 = !{!2223, !2229}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2220, file: !2221, line: 38, baseType: !2224, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2221, line: 31, baseType: !2225)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{null, !762, !2228, !2219}
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2220, file: !2221, line: 39, baseType: !2217, size: 32, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2137, file: !2106, line: 320, baseType: !2231, size: 64, offset: 704)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!120, !2143, !1688}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2132, file: !2106, line: 176, baseType: !2235, size: 64, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2106, line: 35, flags: DIFlagFwdDecl)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2132, file: !2106, line: 177, baseType: !802, size: 64, offset: 128)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2132, file: !2106, line: 178, baseType: !2104, size: 64, offset: 192)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2105, file: !2106, line: 215, baseType: !340, size: 64, offset: 768)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2105, file: !2106, line: 221, baseType: !476, size: 64, offset: 832)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2105, file: !2106, line: 223, baseType: !401, size: 16, offset: 896)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2105, file: !2106, line: 224, baseType: !1196, size: 16, offset: 912)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2105, file: !2106, line: 225, baseType: !2244, size: 64, offset: 960)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2106, line: 36, flags: DIFlagFwdDecl)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2105, file: !2106, line: 227, baseType: !770, size: 128, align: 64, offset: 1024)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1444, file: !1445, line: 71, baseType: !2248, size: 32, offset: 448)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2249, line: 19, size: 32, elements: !2250)
!2249 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2250 = !{!2251}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2248, file: !2249, line: 20, baseType: !424, size: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1444, file: !1445, line: 73, baseType: !18, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1444, file: !1445, line: 74, baseType: !18, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1444, file: !1445, line: 75, baseType: !18, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1444, file: !1445, line: 76, baseType: !18, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1444, file: !1445, line: 77, baseType: !18, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1441, file: !17, line: 47, baseType: !1431, size: 64, offset: 512)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1441, file: !17, line: 48, baseType: !1450, size: 64, offset: 576)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1441, file: !17, line: 49, baseType: !2260, size: 64, offset: 640)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !17, line: 49, flags: DIFlagFwdDecl)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1441, file: !17, line: 50, baseType: !2263, size: 64, offset: 704)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1432, file: !17, line: 418, baseType: !2265, size: 64, offset: 1408)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !17, line: 53, size: 448, elements: !2267)
!2267 = !{!2268, !2269, !2274, !2278, !2282, !2286}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2266, file: !17, line: 54, baseType: !1515, size: 128)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2266, file: !17, line: 55, baseType: !2270, size: 64, offset: 128)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!1346, !2265, !2273, !1051}
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2266, file: !17, line: 57, baseType: !2275, size: 64, offset: 192)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!1346, !2265, !2273, !1041, !1349}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2266, file: !17, line: 59, baseType: !2279, size: 64, offset: 256)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{null, !1431, !1041}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2266, file: !17, line: 60, baseType: !2283, size: 64, offset: 320)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!120, !1431}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2266, file: !17, line: 61, baseType: !2287, size: 64, offset: 384)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{null, !1431}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1432, file: !17, line: 419, baseType: !1041, size: 64, offset: 1472)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1432, file: !17, line: 420, baseType: !1041, size: 64, offset: 1536)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1432, file: !17, line: 421, baseType: !1450, size: 64, offset: 1600)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1432, file: !17, line: 424, baseType: !2294, size: 64, offset: 1664)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2296)
!2296 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !17, line: 424, flags: DIFlagFwdDecl)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1432, file: !17, line: 425, baseType: !2298, size: 64, offset: 1728)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !971)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1432, file: !17, line: 426, baseType: !18, size: 32, offset: 1792)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1432, file: !17, line: 435, baseType: !790, size: 256, offset: 1856)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1432, file: !17, line: 437, baseType: !2303, size: 64, offset: 2112)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2305, line: 69, size: 320, elements: !2306)
!2305 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2306 = !{!2307, !2308, !2309, !2326, !2328, !2332, !2333}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2304, file: !2305, line: 70, baseType: !1041, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2304, file: !2305, line: 71, baseType: !1431, size: 64, offset: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2304, file: !2305, line: 72, baseType: !2310, size: 64, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2312)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2305, line: 47, size: 256, elements: !2313)
!2313 = !{!2314, !2315, !2321, !2325}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2312, file: !2305, line: 49, baseType: !18, size: 32)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2312, file: !2305, line: 51, baseType: !2316, size: 64, offset: 64)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!120, !1041, !2319}
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2304)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2312, file: !2305, line: 53, baseType: !2322, size: 64, offset: 128)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!120, !1051, !2319}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2312, file: !2305, line: 55, baseType: !1224, size: 64, offset: 192)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2304, file: !2305, line: 73, baseType: !2327, size: 16, offset: 192)
!2327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2304, file: !2305, line: 74, baseType: !2329, size: 8, offset: 208)
!2329 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !390, line: 16, baseType: !2330)
!2330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !392, line: 20, baseType: !2331)
!2331 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2304, file: !2305, line: 75, baseType: !389, size: 8, offset: 216)
!2333 = !DIDerivedType(tag: DW_TAG_member, scope: !2304, file: !2305, line: 76, baseType: !2334, size: 64, offset: 256)
!2334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2304, file: !2305, line: 76, size: 64, elements: !2335)
!2335 = !{!2336, !2337, !2344}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2334, file: !2305, line: 77, baseType: !340, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2334, file: !2305, line: 78, baseType: !2338, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2340)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2305, line: 86, size: 128, elements: !2341)
!2341 = !{!2342, !2343}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2340, file: !2305, line: 87, baseType: !18, size: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2340, file: !2305, line: 88, baseType: !1051, size: 64, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2334, file: !2305, line: 79, baseType: !2345, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2347)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2305, line: 92, size: 256, elements: !2348)
!2348 = !{!2349, !2350, !2351, !2353, !2354}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2347, file: !2305, line: 94, baseType: !18, size: 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2347, file: !2305, line: 95, baseType: !18, size: 32, offset: 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2347, file: !2305, line: 96, baseType: !2352, size: 64, offset: 64)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2347, file: !2305, line: 97, baseType: !2310, size: 64, offset: 128)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2347, file: !2305, line: 98, baseType: !340, size: 64, offset: 192)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1432, file: !17, line: 438, baseType: !18, size: 32, offset: 2176)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1432, file: !17, line: 441, baseType: !18, size: 32, offset: 2208)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1432, file: !17, line: 442, baseType: !2294, size: 64, offset: 2240)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1432, file: !17, line: 443, baseType: !2298, size: 64, offset: 2304)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1432, file: !17, line: 444, baseType: !1038, size: 8, offset: 2368)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1432, file: !17, line: 451, baseType: !1038, size: 8, offset: 2376)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1432, file: !17, line: 454, baseType: !18, size: 32, offset: 2400)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1432, file: !17, line: 455, baseType: !2363, size: 64, offset: 2432)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2365, line: 23, size: 96, elements: !2366)
!2365 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2366 = !{!2367, !2368, !2369}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2364, file: !2365, line: 24, baseType: !120, size: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2364, file: !2365, line: 24, baseType: !120, size: 32, offset: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2364, file: !2365, line: 24, baseType: !120, size: 32, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1432, file: !17, line: 458, baseType: !2371, size: 64, offset: 2496)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!120}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1432, file: !17, line: 460, baseType: !2375, size: 4032, align: 512, offset: 2560)
!2375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2376, size: 4032, elements: !2392)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !17, line: 362, size: 576, elements: !2377)
!2377 = !{!2378, !2379, !2380}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2376, file: !17, line: 363, baseType: !340, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2376, file: !17, line: 364, baseType: !18, size: 32, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2376, file: !17, line: 367, baseType: !2381, size: 448, offset: 128)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !17, line: 319, size: 448, elements: !2382)
!2382 = !{!2383, !2384}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2381, file: !17, line: 320, baseType: !1431, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2381, file: !17, line: 321, baseType: !2385, size: 384, offset: 64)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2386, line: 40, size: 384, elements: !2387)
!2386 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2387 = !{!2388}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2385, file: !2386, line: 41, baseType: !2389, size: 384, align: 64)
!2389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !468, size: 384, align: 64, elements: !2390)
!2390 = !{!2391}
!2391 = !DISubrange(count: 2)
!2392 = !{!2393}
!2393 = !DISubrange(count: 7)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1432, file: !17, line: 463, baseType: !2395, size: 192, offset: 6592)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2396, line: 8, size: 192, elements: !2397)
!2396 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2397 = !{!2398, !2399, !2401}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2395, file: !2396, line: 10, baseType: !18, size: 32)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2395, file: !2396, line: 11, baseType: !2400, size: 64, offset: 64)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2395, file: !2396, line: 12, baseType: !2402, size: 64, offset: 128)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2404, line: 59, size: 48, elements: !2405)
!2404 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2405 = !{!2406, !2409, !2410, !2411, !2412, !2413}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2403, file: !2404, line: 60, baseType: !2407, size: 16)
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !390, line: 18, baseType: !2408)
!2408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !392, line: 23, baseType: !1007)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2403, file: !2404, line: 61, baseType: !2407, size: 16, offset: 16)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2403, file: !2404, line: 63, baseType: !18, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2403, file: !2404, line: 64, baseType: !18, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2403, file: !2404, line: 65, baseType: !18, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2403, file: !2404, line: 66, baseType: !18, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1432, file: !17, line: 465, baseType: !415, size: 64, offset: 6784)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1432, file: !17, line: 469, baseType: !18, size: 32, offset: 6848)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1432, file: !17, line: 470, baseType: !350, size: 128, offset: 6912)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1432, file: !17, line: 471, baseType: !2418, size: 64, offset: 7040)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2420, line: 33, size: 96, elements: !2421)
!2420 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2421 = !{!2422, !2423, !2424, !2425}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2419, file: !2420, line: 37, baseType: !120, size: 32)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2419, file: !2420, line: 43, baseType: !120, size: 32, offset: 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2419, file: !2420, line: 45, baseType: !401, size: 16, offset: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2419, file: !2420, line: 47, baseType: !401, size: 16, offset: 80)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1432, file: !17, line: 476, baseType: !2427, size: 64, offset: 7104)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !17, line: 378, size: 256, elements: !2429)
!2429 = !{!2430, !2446, !2447, !2448}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2428, file: !17, line: 379, baseType: !2431, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2433, line: 204, baseType: !2434)
!2433 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2433, line: 197, size: 192, elements: !2435)
!2435 = !{!2436, !2438, !2439, !2440, !2442, !2444}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2434, file: !2433, line: 198, baseType: !2437, size: 32)
!2437 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2433, line: 21, baseType: !419)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2434, file: !2433, line: 199, baseType: !393, size: 8, offset: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2434, file: !2433, line: 200, baseType: !393, size: 8, offset: 40)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2434, file: !2433, line: 201, baseType: !2441, size: 16, offset: 48)
!2441 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2433, line: 17, baseType: !400)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2434, file: !2433, line: 202, baseType: !2443, size: 64, offset: 64)
!2443 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2433, line: 16, baseType: !477)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2434, file: !2433, line: 203, baseType: !2445, size: 64, offset: 128)
!2445 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2433, line: 22, baseType: !477)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2428, file: !17, line: 380, baseType: !18, size: 32, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2428, file: !17, line: 381, baseType: !1051, size: 64, offset: 128)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2428, file: !17, line: 382, baseType: !1051, size: 64, offset: 192)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1432, file: !17, line: 477, baseType: !2428, size: 256, offset: 7168)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1432, file: !17, line: 480, baseType: !2451, size: 64, offset: 7424)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !17, line: 480, flags: DIFlagFwdDecl)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1432, file: !17, line: 483, baseType: !2454, size: 64, offset: 7488)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !17, line: 483, flags: DIFlagFwdDecl)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1432, file: !17, line: 488, baseType: !1051, size: 64, offset: 7552)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1432, file: !17, line: 492, baseType: !340, size: 64, offset: 7616)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1432, file: !17, line: 493, baseType: !18, size: 32, offset: 7680)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1432, file: !17, line: 495, baseType: !340, size: 64, offset: 7744)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1432, file: !17, line: 496, baseType: !18, size: 32, offset: 7808)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1432, file: !17, line: 499, baseType: !18, size: 32, offset: 7840)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1432, file: !17, line: 500, baseType: !2463, size: 64, offset: 7872)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2465, line: 45, baseType: !2466)
!2465 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1432, file: !17, line: 503, baseType: !18, size: 32, offset: 7936)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1432, file: !17, line: 504, baseType: !2469, size: 64, offset: 8000)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2472, line: 96, size: 192, elements: !2473)
!2472 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2473 = !{!2474, !2475, !2540, !2543}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2471, file: !2472, line: 97, baseType: !18, size: 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2471, file: !2472, line: 98, baseType: !2476, size: 64, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2472, line: 24, size: 3072, elements: !2478)
!2478 = !{!2479, !2481, !2482, !2483, !2484, !2498, !2499, !2500, !2501, !2513, !2525, !2526, !2537, !2538, !2539}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2477, file: !2472, line: 26, baseType: !2480, size: 128)
!2480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !783, size: 128, elements: !2390)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2477, file: !2472, line: 27, baseType: !2480, size: 128, offset: 128)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2477, file: !2472, line: 28, baseType: !120, size: 32, offset: 256)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2477, file: !2472, line: 31, baseType: !744, size: 32, align: 512, offset: 512)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2477, file: !2472, line: 32, baseType: !2485, size: 960, offset: 576)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2486, line: 206, size: 960, elements: !2487)
!2486 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2487 = !{!2488, !2489, !2492, !2494, !2495, !2497}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2485, file: !2486, line: 207, baseType: !773, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2485, file: !2486, line: 208, baseType: !2490, size: 256, offset: 64)
!2490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2491, size: 256, elements: !849)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2485, file: !2486, line: 209, baseType: !2493, size: 256, offset: 320)
!2493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 256, elements: !849)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2485, file: !2486, line: 213, baseType: !1307, size: 64, offset: 576)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2485, file: !2486, line: 215, baseType: !2496, size: 256, offset: 640)
!2496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1307, size: 256, elements: !849)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2485, file: !2486, line: 216, baseType: !389, size: 8, offset: 896)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2477, file: !2472, line: 33, baseType: !415, size: 64, offset: 1536)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2477, file: !2472, line: 34, baseType: !415, size: 64, offset: 1600)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2477, file: !2472, line: 35, baseType: !1038, size: 8, offset: 1664)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2477, file: !2472, line: 36, baseType: !2502, size: 320, offset: 1728)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2503, line: 11, size: 320, elements: !2504)
!2503 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2504 = !{!2505, !2506, !2507, !2512}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2502, file: !2503, line: 16, baseType: !844, size: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2502, file: !2503, line: 17, baseType: !415, size: 64, offset: 128)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2502, file: !2503, line: 18, baseType: !2508, size: 64, offset: 192)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{null, !2511}
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2502, file: !2503, line: 19, baseType: !418, size: 32, offset: 256)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2477, file: !2472, line: 37, baseType: !2514, size: 256, offset: 2048)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2515, line: 98, size: 256, elements: !2516)
!2515 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2516 = !{!2517, !2518, !2519}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2514, file: !2515, line: 99, baseType: !783, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2514, file: !2515, line: 100, baseType: !350, size: 128, offset: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2514, file: !2515, line: 101, baseType: !2520, size: 64, offset: 192)
!2520 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2515, line: 21, baseType: !2521)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{null, !2524}
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2477, file: !2472, line: 38, baseType: !770, size: 128, align: 64, offset: 2304)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2477, file: !2472, line: 39, baseType: !2527, size: 64, offset: 2432)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2472, line: 49, size: 768, elements: !2529)
!2529 = !{!2530, !2531, !2532, !2533, !2534, !2535, !2536}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2528, file: !2472, line: 50, baseType: !744, size: 32)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2528, file: !2472, line: 51, baseType: !2493, size: 256, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2528, file: !2472, line: 53, baseType: !2493, size: 256, offset: 320)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2528, file: !2472, line: 54, baseType: !415, size: 64, offset: 576)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2528, file: !2472, line: 55, baseType: !2527, size: 64, offset: 640)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2528, file: !2472, line: 56, baseType: !120, size: 32, offset: 704)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2528, file: !2472, line: 57, baseType: !120, size: 32, offset: 736)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2477, file: !2472, line: 40, baseType: !415, size: 64, offset: 2496)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2477, file: !2472, line: 42, baseType: !120, size: 32, offset: 2560)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2477, file: !2472, line: 43, baseType: !2470, size: 64, offset: 2624)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2471, file: !2472, line: 99, baseType: !2541, offset: 128)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2542, line: 211, elements: !755)
!2542 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2471, file: !2472, line: 100, baseType: !2544, size: 64, offset: 128)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2472, line: 63, size: 3008, elements: !2546)
!2546 = !{!2547, !2548, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2578}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2545, file: !2472, line: 64, baseType: !2527, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2545, file: !2472, line: 65, baseType: !2549, size: 192, offset: 64)
!2549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2527, size: 192, elements: !828)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2545, file: !2472, line: 67, baseType: !120, size: 32, offset: 256)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2545, file: !2472, line: 68, baseType: !790, size: 256, offset: 320)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2545, file: !2472, line: 69, baseType: !744, size: 32, offset: 576)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2545, file: !2472, line: 70, baseType: !790, size: 256, offset: 640)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2545, file: !2472, line: 71, baseType: !415, size: 64, offset: 896)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2545, file: !2472, line: 72, baseType: !415, size: 64, offset: 960)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2545, file: !2472, line: 73, baseType: !415, size: 64, offset: 1024)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2545, file: !2472, line: 74, baseType: !415, size: 64, offset: 1088)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2545, file: !2472, line: 75, baseType: !415, size: 64, offset: 1152)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2545, file: !2472, line: 76, baseType: !415, size: 64, offset: 1216)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2545, file: !2472, line: 77, baseType: !415, size: 64, offset: 1280)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2545, file: !2472, line: 78, baseType: !415, size: 64, offset: 1344)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2545, file: !2472, line: 79, baseType: !1038, size: 8, offset: 1408)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2545, file: !2472, line: 80, baseType: !415, size: 64, offset: 1472)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2545, file: !2472, line: 81, baseType: !790, size: 256, offset: 1536)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2545, file: !2472, line: 82, baseType: !1653, size: 256, offset: 1792)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2545, file: !2472, line: 84, baseType: !381, size: 32, offset: 2048)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2545, file: !2472, line: 87, baseType: !415, size: 64, offset: 2112)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2545, file: !2472, line: 88, baseType: !415, size: 64, offset: 2176)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2545, file: !2472, line: 89, baseType: !2570, size: 704, offset: 2240)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2515, line: 111, size: 704, elements: !2571)
!2571 = !{!2572, !2573, !2574, !2577}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2570, file: !2515, line: 112, baseType: !2514, size: 256)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2570, file: !2515, line: 113, baseType: !2502, size: 320, offset: 256)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2570, file: !2515, line: 116, baseType: !2575, size: 64, offset: 576)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2515, line: 18, flags: DIFlagFwdDecl)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2570, file: !2515, line: 117, baseType: !120, size: 32, offset: 640)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2545, file: !2472, line: 90, baseType: !2470, size: 64, offset: 2944)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1432, file: !17, line: 515, baseType: !2580, size: 64, offset: 8064)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2582, line: 117, size: 128, elements: !2583)
!2582 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2583 = !{!2584, !2585, !2586}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2581, file: !2582, line: 118, baseType: !971, size: 32)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2581, file: !2582, line: 119, baseType: !971, size: 32, offset: 32)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2581, file: !2582, line: 120, baseType: !1307, size: 64, offset: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1432, file: !17, line: 516, baseType: !18, size: 32, offset: 8128)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1432, file: !17, line: 519, baseType: !18, size: 32, offset: 8160)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1432, file: !17, line: 520, baseType: !2590, size: 64, offset: 8192)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1432, file: !17, line: 523, baseType: !2592, size: 64, offset: 8256)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !17, line: 523, flags: DIFlagFwdDecl)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1432, file: !17, line: 524, baseType: !18, size: 32, offset: 8320)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1432, file: !17, line: 525, baseType: !2597, size: 64, offset: 8384)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !17, line: 525, flags: DIFlagFwdDecl)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1432, file: !17, line: 526, baseType: !18, size: 32, offset: 8448)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1432, file: !17, line: 533, baseType: !340, size: 64, offset: 8512)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1432, file: !17, line: 534, baseType: !18, size: 32, offset: 8576)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1432, file: !17, line: 535, baseType: !2604, size: 64, offset: 8640)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1432, file: !17, line: 536, baseType: !18, size: 32, offset: 8704)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1432, file: !17, line: 539, baseType: !120, size: 32, offset: 8736)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1432, file: !17, line: 540, baseType: !2608, size: 64, offset: 8768)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2610, line: 32, size: 64, elements: !2611)
!2610 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2611 = !{!2612, !2613}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2609, file: !2610, line: 33, baseType: !971, size: 32)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2609, file: !2610, line: 34, baseType: !971, size: 32, offset: 32)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1432, file: !17, line: 563, baseType: !350, size: 128, offset: 8832)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1432, file: !17, line: 565, baseType: !350, size: 128, offset: 8960)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1432, file: !17, line: 568, baseType: !2617, size: 64, offset: 9088)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{null}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1432, file: !17, line: 570, baseType: !381, size: 32, offset: 9152)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1408, file: !25, line: 2382, baseType: !1407, size: 64, offset: 448)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1408, file: !25, line: 2383, baseType: !840, size: 64, offset: 512)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1408, file: !25, line: 2385, baseType: !2624, offset: 576)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2542, line: 206, elements: !755)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1408, file: !25, line: 2386, baseType: !2624, offset: 576)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1408, file: !25, line: 2387, baseType: !2624, offset: 576)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1408, file: !25, line: 2388, baseType: !2628, offset: 576)
!2628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2624, elements: !828)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1408, file: !25, line: 2390, baseType: !2624, offset: 576)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1408, file: !25, line: 2391, baseType: !2624, offset: 576)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1408, file: !25, line: 2392, baseType: !2624, offset: 576)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1408, file: !25, line: 2393, baseType: !2624, offset: 576)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1399, file: !25, line: 1197, baseType: !2634, size: 64, offset: 384)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2636)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !25, line: 2057, size: 1664, elements: !2637)
!2637 = !{!2638, !2642, !2646, !2647, !2651, !2655, !2659, !2660, !2661, !2665, !2669, !2673, !2674, !2675, !2681, !2685, !2686, !2690, !2691, !2692, !2693, !2697, !2701, !2748, !2763, !2764}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2636, file: !25, line: 2058, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!1192, !1398}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2636, file: !25, line: 2059, baseType: !2643, size: 64, offset: 64)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{null, !1192}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2636, file: !25, line: 2060, baseType: !2643, size: 64, offset: 128)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2636, file: !25, line: 2062, baseType: !2648, size: 64, offset: 192)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{null, !1192, !120}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2636, file: !25, line: 2063, baseType: !2652, size: 64, offset: 256)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!120, !1192, !1865}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2636, file: !25, line: 2064, baseType: !2656, size: 64, offset: 320)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!120, !1192}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2636, file: !25, line: 2065, baseType: !2643, size: 64, offset: 384)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2636, file: !25, line: 2066, baseType: !1427, size: 64, offset: 448)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2636, file: !25, line: 2067, baseType: !2662, size: 64, offset: 512)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!120, !1398, !120}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2636, file: !25, line: 2068, baseType: !2666, size: 64, offset: 576)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!120, !1398, !24}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2636, file: !25, line: 2069, baseType: !2670, size: 64, offset: 640)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!120, !1398}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2636, file: !25, line: 2070, baseType: !2666, size: 64, offset: 704)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2636, file: !25, line: 2071, baseType: !2670, size: 64, offset: 768)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2636, file: !25, line: 2072, baseType: !2676, size: 64, offset: 832)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!120, !1157, !2679}
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !25, line: 62, flags: DIFlagFwdDecl)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2636, file: !25, line: 2073, baseType: !2682, size: 64, offset: 896)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!120, !1398, !2400, !1051}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2636, file: !25, line: 2074, baseType: !1427, size: 64, offset: 960)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2636, file: !25, line: 2076, baseType: !2687, size: 64, offset: 1024)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!120, !2149, !1157}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2636, file: !25, line: 2077, baseType: !2687, size: 64, offset: 1088)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2636, file: !25, line: 2078, baseType: !2687, size: 64, offset: 1152)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2636, file: !25, line: 2079, baseType: !2687, size: 64, offset: 1216)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2636, file: !25, line: 2081, baseType: !2694, size: 64, offset: 1280)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!1346, !1398, !120, !1051, !1349, !802}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2636, file: !25, line: 2082, baseType: !2698, size: 64, offset: 1344)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!1346, !1398, !120, !1041, !1349, !802}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2636, file: !25, line: 2083, baseType: !2702, size: 64, offset: 1408)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!2705, !1192}
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !80, line: 296, size: 1664, elements: !2708)
!2708 = !{!2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2733, !2734, !2735}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2707, file: !80, line: 297, baseType: !844, size: 128)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2707, file: !80, line: 298, baseType: !350, size: 128, offset: 128)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2707, file: !80, line: 299, baseType: !350, size: 128, offset: 256)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2707, file: !80, line: 300, baseType: !350, size: 128, offset: 384)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2707, file: !80, line: 301, baseType: !790, size: 256, offset: 512)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2707, file: !80, line: 302, baseType: !744, size: 32, offset: 768)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2707, file: !80, line: 303, baseType: !381, size: 32, offset: 800)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2707, file: !80, line: 304, baseType: !1398, size: 64, offset: 832)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2707, file: !80, line: 305, baseType: !2718, size: 64, offset: 896)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !80, line: 68, size: 64, elements: !2719)
!2719 = !{!2720, !2732}
!2720 = !DIDerivedType(tag: DW_TAG_member, scope: !2718, file: !80, line: 69, baseType: !2721, size: 32)
!2721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2718, file: !80, line: 69, size: 32, elements: !2722)
!2722 = !{!2723, !2724, !2725}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2721, file: !80, line: 70, baseType: !921, size: 32)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2721, file: !80, line: 71, baseType: !938, size: 32)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2721, file: !80, line: 72, baseType: !2726, size: 32)
!2726 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2727, line: 24, baseType: !2728)
!2727 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2727, line: 22, size: 32, elements: !2729)
!2729 = !{!2730}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2728, file: !2727, line: 23, baseType: !2731, size: 32)
!2731 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2727, line: 20, baseType: !926)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2718, file: !80, line: 74, baseType: !79, size: 32, offset: 32)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2707, file: !80, line: 306, baseType: !802, size: 64, offset: 960)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2707, file: !80, line: 307, baseType: !415, size: 64, offset: 1024)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2707, file: !80, line: 308, baseType: !2736, size: 576, offset: 1088)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !80, line: 205, size: 576, elements: !2737)
!2737 = !{!2738, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2736, file: !80, line: 206, baseType: !2739, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !80, line: 66, baseType: !489)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2736, file: !80, line: 207, baseType: !2739, size: 64, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2736, file: !80, line: 208, baseType: !2739, size: 64, offset: 128)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2736, file: !80, line: 209, baseType: !2739, size: 64, offset: 192)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2736, file: !80, line: 210, baseType: !2739, size: 64, offset: 256)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2736, file: !80, line: 211, baseType: !2739, size: 64, offset: 320)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2736, file: !80, line: 212, baseType: !2739, size: 64, offset: 384)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2736, file: !80, line: 213, baseType: !995, size: 64, offset: 448)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2736, file: !80, line: 214, baseType: !995, size: 64, offset: 512)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2636, file: !25, line: 2085, baseType: !2749, size: 64, offset: 1472)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!1307, !1398, !2752}
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2754, line: 15, size: 256, elements: !2755)
!2754 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2755 = !{!2756, !2757, !2758, !2759, !2760}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2753, file: !2754, line: 16, baseType: !880, size: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2753, file: !2754, line: 19, baseType: !120, size: 32, offset: 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2753, file: !2754, line: 26, baseType: !415, size: 64, offset: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2753, file: !2754, line: 33, baseType: !415, size: 64, offset: 128)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2753, file: !2754, line: 36, baseType: !2761, size: 64, offset: 192)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2754, line: 36, flags: DIFlagFwdDecl)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2636, file: !25, line: 2087, baseType: !2749, size: 64, offset: 1536)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2636, file: !25, line: 2089, baseType: !1427, size: 64, offset: 1600)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1399, file: !25, line: 1198, baseType: !2766, size: 64, offset: 448)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2768)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !80, line: 324, size: 704, elements: !2769)
!2769 = !{!2770, !2774, !2778, !2782, !2783, !2784, !2785, !2786, !2791, !2796, !2800}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2768, file: !80, line: 325, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!120, !2706}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2768, file: !80, line: 326, baseType: !2775, size: 64, offset: 64)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!2706, !1398, !120}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2768, file: !80, line: 327, baseType: !2779, size: 64, offset: 128)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{null, !2706}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2768, file: !80, line: 328, baseType: !2771, size: 64, offset: 192)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2768, file: !80, line: 329, baseType: !2771, size: 64, offset: 256)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2768, file: !80, line: 330, baseType: !2771, size: 64, offset: 320)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2768, file: !80, line: 331, baseType: !2662, size: 64, offset: 384)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2768, file: !80, line: 334, baseType: !2787, size: 64, offset: 448)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!2790, !1192}
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2768, file: !80, line: 335, baseType: !2792, size: 64, offset: 512)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!120, !1192, !2795}
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2768, file: !80, line: 337, baseType: !2797, size: 64, offset: 576)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!120, !1192, !2790}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2768, file: !80, line: 339, baseType: !2801, size: 64, offset: 640)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!120, !1398, !2804}
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1399, file: !25, line: 1199, baseType: !2806, size: 64, offset: 512)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2808)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !80, line: 430, size: 704, elements: !2809)
!2809 = !{!2810, !2814, !2815, !2819, !2820, !2821, !2836, !2859, !2863, !2864, !2887}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2808, file: !80, line: 431, baseType: !2811, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!120, !1398, !120, !120, !1315}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2808, file: !80, line: 432, baseType: !2662, size: 64, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2808, file: !80, line: 433, baseType: !2816, size: 64, offset: 128)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!120, !1398, !18}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2808, file: !80, line: 434, baseType: !2816, size: 64, offset: 192)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2808, file: !80, line: 435, baseType: !2662, size: 64, offset: 256)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2808, file: !80, line: 436, baseType: !2822, size: 64, offset: 320)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!120, !1398, !120, !2825}
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !80, line: 417, size: 256, elements: !2827)
!2827 = !{!2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2826, file: !80, line: 418, baseType: !120, size: 32)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2826, file: !80, line: 419, baseType: !18, size: 32, offset: 32)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2826, file: !80, line: 420, baseType: !18, size: 32, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2826, file: !80, line: 422, baseType: !18, size: 32, offset: 96)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2826, file: !80, line: 423, baseType: !18, size: 32, offset: 128)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2826, file: !80, line: 424, baseType: !18, size: 32, offset: 160)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2826, file: !80, line: 425, baseType: !18, size: 32, offset: 192)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2826, file: !80, line: 426, baseType: !18, size: 32, offset: 224)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2808, file: !80, line: 437, baseType: !2837, size: 64, offset: 384)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!120, !1398, !2718, !2840}
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !80, line: 345, size: 960, elements: !2842)
!2842 = !{!2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2841, file: !80, line: 346, baseType: !120, size: 32)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2841, file: !80, line: 347, baseType: !476, size: 64, offset: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2841, file: !80, line: 348, baseType: !476, size: 64, offset: 128)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2841, file: !80, line: 349, baseType: !476, size: 64, offset: 192)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2841, file: !80, line: 350, baseType: !476, size: 64, offset: 256)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2841, file: !80, line: 351, baseType: !476, size: 64, offset: 320)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2841, file: !80, line: 352, baseType: !476, size: 64, offset: 384)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2841, file: !80, line: 353, baseType: !487, size: 64, offset: 448)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2841, file: !80, line: 355, baseType: !487, size: 64, offset: 512)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2841, file: !80, line: 356, baseType: !120, size: 32, offset: 576)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2841, file: !80, line: 357, baseType: !120, size: 32, offset: 608)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2841, file: !80, line: 358, baseType: !476, size: 64, offset: 640)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2841, file: !80, line: 359, baseType: !476, size: 64, offset: 704)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2841, file: !80, line: 360, baseType: !476, size: 64, offset: 768)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2841, file: !80, line: 361, baseType: !487, size: 64, offset: 832)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2841, file: !80, line: 362, baseType: !120, size: 32, offset: 896)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2808, file: !80, line: 438, baseType: !2860, size: 64, offset: 448)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!120, !1398, !2804, !2840}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2808, file: !80, line: 440, baseType: !2837, size: 64, offset: 512)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2808, file: !80, line: 441, baseType: !2865, size: 64, offset: 576)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!120, !1398, !2868}
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !80, line: 411, size: 1408, elements: !2870)
!2870 = !{!2871, !2872}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2869, file: !80, line: 412, baseType: !18, size: 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2869, file: !80, line: 413, baseType: !2873, size: 1344, offset: 64)
!2873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2874, size: 1344, elements: !828)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !80, line: 397, size: 448, elements: !2875)
!2875 = !{!2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2886}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2874, file: !80, line: 398, baseType: !18, size: 32)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2874, file: !80, line: 399, baseType: !18, size: 32, offset: 32)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2874, file: !80, line: 401, baseType: !18, size: 32, offset: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2874, file: !80, line: 402, baseType: !18, size: 32, offset: 96)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2874, file: !80, line: 403, baseType: !18, size: 32, offset: 128)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2874, file: !80, line: 404, baseType: !18, size: 32, offset: 160)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2874, file: !80, line: 405, baseType: !18, size: 32, offset: 192)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2874, file: !80, line: 406, baseType: !478, size: 64, offset: 256)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2874, file: !80, line: 407, baseType: !2885, size: 64, offset: 320)
!2885 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !351, line: 132, baseType: !476)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2874, file: !80, line: 408, baseType: !2885, size: 64, offset: 384)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2808, file: !80, line: 442, baseType: !2816, size: 64, offset: 640)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1399, file: !25, line: 1200, baseType: !2889, size: 64, offset: 576)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2891)
!2891 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !25, line: 54, flags: DIFlagFwdDecl)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1399, file: !25, line: 1201, baseType: !415, size: 64, offset: 640)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1399, file: !25, line: 1202, baseType: !415, size: 64, offset: 704)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1399, file: !25, line: 1203, baseType: !415, size: 64, offset: 768)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1399, file: !25, line: 1204, baseType: !1157, size: 64, offset: 832)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1399, file: !25, line: 1205, baseType: !979, size: 320, offset: 896)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1399, file: !25, line: 1206, baseType: !120, size: 32, offset: 1216)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1399, file: !25, line: 1207, baseType: !381, size: 32, offset: 1248)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1399, file: !25, line: 1209, baseType: !340, size: 64, offset: 1280)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1399, file: !25, line: 1211, baseType: !2901, size: 64, offset: 1344)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2904)
!2904 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !25, line: 1211, flags: DIFlagFwdDecl)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1399, file: !25, line: 1223, baseType: !2906, size: 64, offset: 1408)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1169, line: 34, size: 64, elements: !2907)
!2907 = !{!2908}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2906, file: !1169, line: 35, baseType: !1172, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1399, file: !25, line: 1224, baseType: !350, size: 128, offset: 1472)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1399, file: !25, line: 1225, baseType: !2911, size: 64, offset: 1600)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !25, line: 1225, flags: DIFlagFwdDecl)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1399, file: !25, line: 1226, baseType: !2914, size: 64, offset: 1664)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !25, line: 1226, flags: DIFlagFwdDecl)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1399, file: !25, line: 1227, baseType: !2917, size: 64, offset: 1728)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !25, line: 50, flags: DIFlagFwdDecl)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1399, file: !25, line: 1228, baseType: !2920, size: 64, offset: 1792)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !25, line: 1228, flags: DIFlagFwdDecl)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1399, file: !25, line: 1229, baseType: !844, size: 128, offset: 1856)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1399, file: !25, line: 1230, baseType: !18, size: 32, offset: 1984)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1399, file: !25, line: 1231, baseType: !2925, size: 2496, offset: 2048)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !80, line: 521, size: 2496, elements: !2926)
!2926 = !{!2927, !2928, !2929, !2931, !2963}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2925, file: !80, line: 522, baseType: !18, size: 32)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2925, file: !80, line: 523, baseType: !979, size: 320, offset: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2925, file: !80, line: 524, baseType: !2930, size: 192, offset: 384)
!2930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1192, size: 192, elements: !828)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2925, file: !80, line: 525, baseType: !2932, size: 1728, offset: 576)
!2932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2933, size: 1728, elements: !828)
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !80, line: 222, size: 576, elements: !2934)
!2934 = !{!2935, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2933, file: !80, line: 223, baseType: !2936, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !80, line: 445, size: 256, elements: !2938)
!2938 = !{!2939, !2940, !2953, !2954}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2937, file: !80, line: 446, baseType: !120, size: 32)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2937, file: !80, line: 447, baseType: !2941, size: 64, offset: 64)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2943)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !80, line: 312, size: 512, elements: !2944)
!2944 = !{!2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2943, file: !80, line: 313, baseType: !2662, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2943, file: !80, line: 314, baseType: !2662, size: 64, offset: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2943, file: !80, line: 315, baseType: !2662, size: 64, offset: 128)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2943, file: !80, line: 316, baseType: !2662, size: 64, offset: 192)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2943, file: !80, line: 317, baseType: !2771, size: 64, offset: 256)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2943, file: !80, line: 318, baseType: !2771, size: 64, offset: 320)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2943, file: !80, line: 319, baseType: !2771, size: 64, offset: 384)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2943, file: !80, line: 320, baseType: !2801, size: 64, offset: 448)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2937, file: !80, line: 448, baseType: !1431, size: 64, offset: 128)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2937, file: !80, line: 449, baseType: !2936, size: 64, offset: 192)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2933, file: !80, line: 224, baseType: !120, size: 32, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2933, file: !80, line: 226, baseType: !350, size: 128, offset: 128)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2933, file: !80, line: 227, baseType: !415, size: 64, offset: 256)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2933, file: !80, line: 228, baseType: !18, size: 32, offset: 320)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2933, file: !80, line: 229, baseType: !18, size: 32, offset: 352)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2933, file: !80, line: 230, baseType: !2739, size: 64, offset: 384)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2933, file: !80, line: 231, baseType: !2739, size: 64, offset: 448)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2933, file: !80, line: 232, baseType: !340, size: 64, offset: 512)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2925, file: !80, line: 526, baseType: !2964, size: 192, offset: 2304)
!2964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2941, size: 192, elements: !828)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1399, file: !25, line: 1233, baseType: !2966, size: 2368, offset: 4544)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !25, line: 1184, size: 2368, elements: !2967)
!2967 = !{!2968, !2969, !2970}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2966, file: !25, line: 1185, baseType: !401, size: 16)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2966, file: !25, line: 1186, baseType: !401, size: 16, offset: 16)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2966, file: !25, line: 1187, baseType: !2971, size: 2304, offset: 64)
!2971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2972, size: 2304, elements: !828)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2973, line: 12, size: 768, elements: !2974)
!2973 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2974 = !{!2975, !2983, !2984, !2989, !2990}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2972, file: !2973, line: 13, baseType: !2976, size: 384)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2977, line: 17, size: 384, elements: !2978)
!2977 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2978 = !{!2979, !2980, !2981, !2982}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2976, file: !2977, line: 18, baseType: !120, size: 32)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2976, file: !2977, line: 19, baseType: !120, size: 32, offset: 32)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2976, file: !2977, line: 20, baseType: !853, size: 192, offset: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2976, file: !2977, line: 22, baseType: !770, size: 128, align: 64, offset: 256)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2972, file: !2973, line: 14, baseType: !2352, size: 64, offset: 384)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2972, file: !2973, line: 15, baseType: !2985, size: 64, offset: 448)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2986, line: 16, size: 64, elements: !2987)
!2986 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2987 = !{!2988}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2985, file: !2986, line: 17, baseType: !406, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2972, file: !2973, line: 16, baseType: !853, size: 192, offset: 512)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2972, file: !2973, line: 17, baseType: !381, size: 32, offset: 704)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1399, file: !25, line: 1240, baseType: !340, size: 64, offset: 6912)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1399, file: !25, line: 1243, baseType: !418, size: 32, offset: 6976)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1399, file: !25, line: 1245, baseType: !995, size: 64, offset: 7040)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1399, file: !25, line: 1246, baseType: !995, size: 64, offset: 7104)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1399, file: !25, line: 1248, baseType: !419, size: 32, offset: 7168)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1399, file: !25, line: 1249, baseType: !2997, size: 64, offset: 7232)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !25, line: 634, flags: DIFlagFwdDecl)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1399, file: !25, line: 1252, baseType: !3000, size: 256, offset: 7296)
!3000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !3001)
!3001 = !{!3002}
!3002 = !DISubrange(count: 32)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1399, file: !25, line: 1253, baseType: !3004, size: 128, offset: 7552)
!3004 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3005, line: 21, baseType: !3006)
!3005 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3005, line: 19, size: 128, elements: !3007)
!3007 = !{!3008}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3006, file: !3005, line: 20, baseType: !3009, size: 128)
!3009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 128, elements: !3010)
!3010 = !{!3011}
!3011 = !DISubrange(count: 16)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1399, file: !25, line: 1255, baseType: !18, size: 32, offset: 7680)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1399, file: !25, line: 1261, baseType: !790, size: 256, offset: 7744)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1399, file: !25, line: 1267, baseType: !1041, size: 64, offset: 8000)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1399, file: !25, line: 1269, baseType: !3016, size: 64, offset: 8064)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3018)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1159, line: 128, size: 1024, align: 512, elements: !3019)
!3019 = !{!3020, !3024, !3025, !3032, !3038, !3042, !3046, !3050, !3051, !3055, !3059, !3064, !3068}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3018, file: !1159, line: 129, baseType: !3021, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!120, !1157, !18}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3018, file: !1159, line: 130, baseType: !3021, size: 64, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3018, file: !1159, line: 131, baseType: !3026, size: 64, offset: 128)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!120, !3029, !3031}
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1158)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3018, file: !1159, line: 132, baseType: !3033, size: 64, offset: 192)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!120, !3029, !18, !1041, !3036}
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1177)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3018, file: !1159, line: 134, baseType: !3039, size: 64, offset: 256)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!120, !3029}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3018, file: !1159, line: 135, baseType: !3043, size: 64, offset: 320)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!120, !1157}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3018, file: !1159, line: 136, baseType: !3047, size: 64, offset: 384)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{null, !1157}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3018, file: !1159, line: 137, baseType: !3047, size: 64, offset: 448)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3018, file: !1159, line: 138, baseType: !3052, size: 64, offset: 512)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{null, !1157, !1192}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3018, file: !1159, line: 139, baseType: !3056, size: 64, offset: 576)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!1051, !1157, !1051, !120}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3018, file: !1159, line: 140, baseType: !3060, size: 64, offset: 640)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!1152, !3063}
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3018, file: !1159, line: 141, baseType: !3065, size: 64, offset: 704)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!120, !1315, !1038}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3018, file: !1159, line: 142, baseType: !3069, size: 64, offset: 768)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!1157, !1157, !3072}
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1193)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1399, file: !25, line: 1271, baseType: !3075, size: 448, offset: 8128)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2754, line: 63, size: 448, elements: !3076)
!3076 = !{!3077, !3082, !3083, !3084, !3085, !3086, !3087}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3075, file: !2754, line: 64, baseType: !3078, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!415, !3081, !2752}
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3075, file: !2754, line: 66, baseType: !3078, size: 64, offset: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3075, file: !2754, line: 69, baseType: !1307, size: 64, offset: 128)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3075, file: !2754, line: 70, baseType: !120, size: 32, offset: 192)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3075, file: !2754, line: 71, baseType: !18, size: 32, offset: 224)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3075, file: !2754, line: 74, baseType: !350, size: 128, offset: 256)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3075, file: !2754, line: 85, baseType: !3088, size: 64, offset: 384)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1399, file: !25, line: 1274, baseType: !783, size: 64, offset: 8576)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1399, file: !25, line: 1280, baseType: !783, size: 64, offset: 8640)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1399, file: !25, line: 1283, baseType: !120, size: 32, offset: 8704)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1399, file: !25, line: 1286, baseType: !2045, size: 32, offset: 8736)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1399, file: !25, line: 1289, baseType: !2575, size: 64, offset: 8768)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1399, file: !25, line: 1290, baseType: !840, size: 64, offset: 8832)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1399, file: !25, line: 1297, baseType: !897, size: 64, offset: 8896)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1399, file: !25, line: 1304, baseType: !3097, size: 64, offset: 8960)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3098, line: 49, size: 64, elements: !3099)
!3098 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3099 = !{!3100}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3097, file: !3098, line: 50, baseType: !3101, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3098, line: 41, size: 512, align: 512, elements: !3103)
!3103 = !{!3104, !3105, !3110}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3102, file: !3098, line: 43, baseType: !744, size: 32)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3102, file: !3098, line: 45, baseType: !3106, size: 192, offset: 64)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3098, line: 29, size: 192, elements: !3107)
!3107 = !{!3108, !3109}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3106, file: !3098, line: 30, baseType: !350, size: 128)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3106, file: !3098, line: 32, baseType: !1307, size: 64, offset: 128)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3102, file: !3098, line: 46, baseType: !1307, size: 64, offset: 256)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1399, file: !25, line: 1305, baseType: !3097, size: 64, offset: 9024)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1399, file: !25, line: 1306, baseType: !770, size: 128, align: 64, offset: 9088)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1399, file: !25, line: 1307, baseType: !2514, size: 256, offset: 9216)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1399, file: !25, line: 1309, baseType: !790, size: 256, offset: 9472)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1399, file: !25, line: 1314, baseType: !120, size: 32, offset: 9728)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1399, file: !25, line: 1317, baseType: !744, size: 32, align: 512, offset: 10240)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1399, file: !25, line: 1318, baseType: !350, size: 128, offset: 10304)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1399, file: !25, line: 1320, baseType: !744, size: 32, offset: 10432)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1399, file: !25, line: 1321, baseType: !350, size: 128, offset: 10496)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1193, file: !25, line: 656, baseType: !1548, size: 64, offset: 512)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1193, file: !25, line: 659, baseType: !340, size: 64, offset: 576)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1193, file: !25, line: 663, baseType: !415, size: 64, offset: 640)
!3123 = !DIDerivedType(tag: DW_TAG_member, scope: !1193, file: !25, line: 671, baseType: !3124, size: 32, offset: 704)
!3124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1193, file: !25, line: 671, size: 32, elements: !3125)
!3125 = !{!3126, !3128}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3124, file: !25, line: 672, baseType: !3127, size: 32)
!3127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3124, file: !25, line: 673, baseType: !18, size: 32)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1193, file: !25, line: 675, baseType: !1267, size: 32, offset: 736)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1193, file: !25, line: 676, baseType: !802, size: 64, offset: 768)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1193, file: !25, line: 677, baseType: !1303, size: 128, offset: 832)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1193, file: !25, line: 678, baseType: !1303, size: 128, offset: 960)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1193, file: !25, line: 679, baseType: !1303, size: 128, offset: 1088)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1193, file: !25, line: 680, baseType: !744, size: 32, offset: 1216)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1193, file: !25, line: 681, baseType: !401, size: 16, offset: 1248)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1193, file: !25, line: 682, baseType: !389, size: 8, offset: 1264)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1193, file: !25, line: 683, baseType: !389, size: 8, offset: 1272)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1193, file: !25, line: 684, baseType: !2885, size: 64, offset: 1280)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1193, file: !25, line: 691, baseType: !415, size: 64, offset: 1344)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1193, file: !25, line: 692, baseType: !979, size: 320, offset: 1408)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1193, file: !25, line: 694, baseType: !415, size: 64, offset: 1728)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1193, file: !25, line: 695, baseType: !415, size: 64, offset: 1792)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1193, file: !25, line: 697, baseType: !844, size: 128, offset: 1856)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1193, file: !25, line: 698, baseType: !350, size: 128, offset: 1984)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1193, file: !25, line: 707, baseType: !350, size: 128, offset: 2112)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1193, file: !25, line: 708, baseType: !350, size: 128, offset: 2240)
!3147 = !DIDerivedType(tag: DW_TAG_member, scope: !1193, file: !25, line: 709, baseType: !3148, size: 128, offset: 2368)
!3148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1193, file: !25, line: 709, size: 128, elements: !3149)
!3149 = !{!3150, !3151}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3148, file: !25, line: 710, baseType: !840, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3148, file: !25, line: 711, baseType: !770, size: 128, align: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1193, file: !25, line: 713, baseType: !785, size: 64, offset: 2496)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1193, file: !25, line: 714, baseType: !785, size: 64, offset: 2560)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1193, file: !25, line: 715, baseType: !381, size: 32, offset: 2624)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1193, file: !25, line: 716, baseType: !381, size: 32, offset: 2656)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1193, file: !25, line: 717, baseType: !381, size: 32, offset: 2688)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1193, file: !25, line: 719, baseType: !381, size: 32, offset: 2720)
!3158 = !DIDerivedType(tag: DW_TAG_member, scope: !1193, file: !25, line: 721, baseType: !3159, size: 64, offset: 2752)
!3159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1193, file: !25, line: 721, size: 64, elements: !3160)
!3160 = !{!3161, !3287}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3159, file: !25, line: 722, baseType: !3162, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3164)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !25, line: 1914, size: 2112, elements: !3165)
!3165 = !{!3166, !3167, !3171, !3175, !3179, !3180, !3181, !3187, !3200, !3204, !3208, !3209, !3213, !3214, !3218, !3223, !3224, !3228, !3232, !3238, !3239, !3243, !3244, !3250, !3254, !3255, !3260, !3264, !3268, !3272, !3276, !3277, !3283}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3164, file: !25, line: 1915, baseType: !1431, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3164, file: !25, line: 1916, baseType: !3168, size: 64, offset: 64)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!802, !762, !802, !120}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3164, file: !25, line: 1917, baseType: !3172, size: 64, offset: 128)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!1346, !762, !1051, !1349, !2170}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3164, file: !25, line: 1918, baseType: !3176, size: 64, offset: 192)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!1346, !762, !1041, !1349, !2170}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3164, file: !25, line: 1919, baseType: !1979, size: 64, offset: 256)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3164, file: !25, line: 1920, baseType: !1979, size: 64, offset: 320)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3164, file: !25, line: 1921, baseType: !3182, size: 64, offset: 384)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!120, !1982, !3185, !18}
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !25, line: 53, flags: DIFlagFwdDecl)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3164, file: !25, line: 1923, baseType: !3188, size: 64, offset: 448)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!120, !762, !3191}
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !25, line: 1858, size: 128, elements: !3193)
!3193 = !{!3194, !3199}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3192, file: !25, line: 1859, baseType: !3195, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !25, line: 1855, baseType: !3196)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!1038, !3191, !1041, !120, !802, !476, !18}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3192, file: !25, line: 1860, baseType: !802, size: 64, offset: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3164, file: !25, line: 1924, baseType: !3201, size: 64, offset: 512)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!2217, !762, !2219}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3164, file: !25, line: 1925, baseType: !3205, size: 64, offset: 576)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!1307, !762, !18, !415}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3164, file: !25, line: 1926, baseType: !3205, size: 64, offset: 640)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3164, file: !25, line: 1927, baseType: !3210, size: 64, offset: 704)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!120, !762, !1688}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3164, file: !25, line: 1928, baseType: !415, size: 64, offset: 768)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3164, file: !25, line: 1929, baseType: !3215, size: 64, offset: 832)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!120, !1192, !762}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3164, file: !25, line: 1930, baseType: !3219, size: 64, offset: 896)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!120, !762, !3222}
!3222 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !25, line: 1061, baseType: !340)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3164, file: !25, line: 1931, baseType: !3215, size: 64, offset: 960)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3164, file: !25, line: 1932, baseType: !3225, size: 64, offset: 1024)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!120, !762, !802, !802, !120}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3164, file: !25, line: 1933, baseType: !3229, size: 64, offset: 1088)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!120, !120, !762, !120}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3164, file: !25, line: 1934, baseType: !3233, size: 64, offset: 1152)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!120, !762, !120, !3236}
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !25, line: 1063, flags: DIFlagFwdDecl)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3164, file: !25, line: 1935, baseType: !759, size: 64, offset: 1216)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3164, file: !25, line: 1936, baseType: !3240, size: 64, offset: 1280)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!120, !120}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3164, file: !25, line: 1937, baseType: !3233, size: 64, offset: 1344)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3164, file: !25, line: 1938, baseType: !3245, size: 64, offset: 1408)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!1346, !3248, !762, !2170, !1349, !18}
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !408, line: 59, flags: DIFlagFwdDecl)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3164, file: !25, line: 1939, baseType: !3251, size: 64, offset: 1472)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!1346, !762, !2170, !3248, !1349, !18}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3164, file: !25, line: 1940, baseType: !2035, size: 64, offset: 1536)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3164, file: !25, line: 1941, baseType: !3256, size: 64, offset: 1600)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!120, !762, !120, !3259, !1956}
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3164, file: !25, line: 1942, baseType: !3261, size: 64, offset: 1664)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!1307, !762, !120, !802, !802}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3164, file: !25, line: 1944, baseType: !3265, size: 64, offset: 1728)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{null, !2149, !762}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3164, file: !25, line: 1948, baseType: !3269, size: 64, offset: 1792)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!1346, !762, !802, !762, !802, !1349, !18}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3164, file: !25, line: 1950, baseType: !3273, size: 64, offset: 1856)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!802, !762, !802, !762, !802, !802, !18}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3164, file: !25, line: 1953, baseType: !3225, size: 64, offset: 1920)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3164, file: !25, line: 1954, baseType: !3278, size: 64, offset: 1984)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!120, !3281, !18}
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !25, line: 1911, flags: DIFlagFwdDecl)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3164, file: !25, line: 1955, baseType: !3284, size: 64, offset: 2048)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!120, !3281, !3185, !18}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3159, file: !25, line: 723, baseType: !2643, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1193, file: !25, line: 725, baseType: !3289, size: 64, offset: 2816)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !25, line: 725, flags: DIFlagFwdDecl)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1193, file: !25, line: 726, baseType: !1549, size: 1536, align: 64, offset: 2880)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1193, file: !25, line: 727, baseType: !350, size: 128, offset: 4416)
!3293 = !DIDerivedType(tag: DW_TAG_member, scope: !1193, file: !25, line: 728, baseType: !3294, size: 64, offset: 4544)
!3294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1193, file: !25, line: 728, size: 64, elements: !3295)
!3295 = !{!3296, !3297, !3300, !3301}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3294, file: !25, line: 729, baseType: !3248, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3294, file: !25, line: 730, baseType: !3298, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !25, line: 730, flags: DIFlagFwdDecl)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3294, file: !25, line: 731, baseType: !1051, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3294, file: !25, line: 732, baseType: !18, size: 32)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1193, file: !25, line: 735, baseType: !419, size: 32, offset: 4608)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1193, file: !25, line: 738, baseType: !419, size: 32, offset: 4640)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1193, file: !25, line: 739, baseType: !2997, size: 64, offset: 4672)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1193, file: !25, line: 750, baseType: !340, size: 64, offset: 4736)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1158, file: !1159, line: 91, baseType: !3307, size: 256, offset: 448)
!3307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 256, elements: !3001)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1158, file: !1159, line: 94, baseType: !3309, size: 64, offset: 704)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3310, line: 25, size: 64, elements: !3311)
!3310 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3311 = !{!3312}
!3312 = !DIDerivedType(tag: DW_TAG_member, scope: !3309, file: !3310, line: 26, baseType: !3313, size: 64)
!3313 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3309, file: !3310, line: 26, size: 64, elements: !3314)
!3314 = !{!3315, !3316}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3313, file: !3310, line: 28, baseType: !477, size: 64, align: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, scope: !3313, file: !3310, line: 30, baseType: !3317, size: 64)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3313, file: !3310, line: 30, size: 64, elements: !3318)
!3318 = !{!3319, !3320}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3317, file: !3310, line: 31, baseType: !744, size: 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3317, file: !3310, line: 32, baseType: !120, size: 32, offset: 32)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1158, file: !1159, line: 95, baseType: !3016, size: 64, offset: 768)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1158, file: !1159, line: 96, baseType: !1398, size: 64, offset: 832)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1158, file: !1159, line: 97, baseType: !415, size: 64, offset: 896)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1158, file: !1159, line: 98, baseType: !340, size: 64, offset: 960)
!3325 = !DIDerivedType(tag: DW_TAG_member, scope: !1158, file: !1159, line: 100, baseType: !3326, size: 128, offset: 1024)
!3326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1158, file: !1159, line: 100, size: 128, elements: !3327)
!3327 = !{!3328, !3329}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3326, file: !1159, line: 101, baseType: !350, size: 128)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3326, file: !1159, line: 102, baseType: !2228, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1158, file: !1159, line: 104, baseType: !350, size: 128, offset: 1152)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1158, file: !1159, line: 105, baseType: !350, size: 128, offset: 1280)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1158, file: !1159, line: 113, baseType: !3333, size: 128, offset: 1408)
!3333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1158, file: !1159, line: 109, size: 128, elements: !3334)
!3334 = !{!3335, !3336, !3337}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3333, file: !1159, line: 110, baseType: !844, size: 128)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3333, file: !1159, line: 111, baseType: !1168, size: 128)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3333, file: !1159, line: 112, baseType: !770, size: 128, align: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1153, file: !1154, line: 72, baseType: !1398, size: 64, offset: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1153, file: !1154, line: 73, baseType: !120, size: 32, offset: 128)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1153, file: !1154, line: 74, baseType: !1232, size: 64, offset: 192)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1148, file: !1149, line: 10, baseType: !1157, size: 64, offset: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !763, file: !25, line: 1015, baseType: !1192, size: 64, offset: 1344)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !763, file: !25, line: 1016, baseType: !3162, size: 64, offset: 1408)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !763, file: !25, line: 1018, baseType: !476, size: 64, offset: 1472)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !763, file: !25, line: 1020, baseType: !340, size: 64, offset: 1536)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !763, file: !25, line: 1023, baseType: !340, size: 64, offset: 1600)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !763, file: !25, line: 1027, baseType: !3348, size: 64, offset: 1664)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !763, file: !25, line: 1029, baseType: !1548, size: 64, offset: 1728)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !763, file: !25, line: 1030, baseType: !2045, size: 32, offset: 1792)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !763, file: !25, line: 1031, baseType: !2045, size: 32, offset: 1824)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !730, file: !49, line: 756, baseType: !415, size: 64, offset: 704)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !730, file: !49, line: 757, baseType: !415, size: 64, offset: 768)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !730, file: !49, line: 760, baseType: !415, size: 64, offset: 832)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !730, file: !49, line: 761, baseType: !415, size: 64, offset: 896)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !730, file: !49, line: 763, baseType: !415, size: 64, offset: 960)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !730, file: !49, line: 764, baseType: !3358, size: 64, offset: 1024)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1703, line: 299, baseType: !3360)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1703, line: 299, size: 64, elements: !3361)
!3361 = !{!3362}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3360, file: !1703, line: 299, baseType: !3363, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1708, line: 18, baseType: !415)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !730, file: !49, line: 773, baseType: !381, size: 32, offset: 1088)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !730, file: !49, line: 785, baseType: !381, size: 32, offset: 1120)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !730, file: !49, line: 795, baseType: !3367, size: 64, offset: 1152)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !49, line: 726, size: 128, elements: !3369)
!3369 = !{!3370, !3371}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3368, file: !49, line: 727, baseType: !476, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3368, file: !49, line: 728, baseType: !120, size: 32, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !730, file: !49, line: 801, baseType: !415, size: 64, offset: 1216)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !730, file: !49, line: 804, baseType: !783, size: 64, offset: 1280)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !730, file: !49, line: 806, baseType: !120, size: 32, offset: 1344)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !730, file: !49, line: 808, baseType: !744, size: 32, offset: 1376)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !730, file: !49, line: 823, baseType: !979, size: 320, offset: 1408)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !730, file: !49, line: 825, baseType: !350, size: 128, offset: 1728)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !730, file: !49, line: 845, baseType: !120, size: 32, offset: 1856)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !730, file: !49, line: 849, baseType: !415, size: 64, offset: 1920)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !730, file: !49, line: 850, baseType: !415, size: 64, offset: 1984)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !730, file: !49, line: 852, baseType: !415, size: 64, offset: 2048)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !730, file: !49, line: 853, baseType: !415, size: 64, offset: 2112)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !730, file: !49, line: 854, baseType: !785, size: 64, offset: 2176)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !730, file: !49, line: 855, baseType: !415, size: 64, offset: 2240)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !730, file: !49, line: 856, baseType: !415, size: 64, offset: 2304)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !730, file: !49, line: 857, baseType: !415, size: 64, offset: 2368)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !730, file: !49, line: 858, baseType: !415, size: 64, offset: 2432)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !730, file: !49, line: 865, baseType: !600, size: 32, offset: 2496)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !730, file: !49, line: 867, baseType: !744, size: 32, offset: 2528)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !730, file: !49, line: 869, baseType: !415, size: 64, offset: 2560)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !730, file: !49, line: 869, baseType: !415, size: 64, offset: 2624)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !730, file: !49, line: 869, baseType: !415, size: 64, offset: 2688)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !730, file: !49, line: 869, baseType: !415, size: 64, offset: 2752)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !730, file: !49, line: 870, baseType: !415, size: 64, offset: 2816)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !730, file: !49, line: 870, baseType: !415, size: 64, offset: 2880)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !730, file: !49, line: 870, baseType: !415, size: 64, offset: 2944)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !730, file: !49, line: 871, baseType: !415, size: 64, offset: 3008)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !730, file: !49, line: 871, baseType: !415, size: 64, offset: 3072)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !730, file: !49, line: 871, baseType: !415, size: 64, offset: 3136)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !730, file: !49, line: 871, baseType: !415, size: 64, offset: 3200)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !730, file: !49, line: 873, baseType: !3402, size: 3328, offset: 3264)
!3402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 3328, elements: !3403)
!3403 = !{!3404}
!3404 = !DISubrange(count: 52)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !730, file: !49, line: 875, baseType: !3406, size: 1280, offset: 6592)
!3406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1099, size: 1280, elements: !849)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !730, file: !49, line: 877, baseType: !3408, size: 64, offset: 7872)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !49, line: 877, flags: DIFlagFwdDecl)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !730, file: !49, line: 880, baseType: !3411, size: 1088, offset: 7936)
!3411 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3412, line: 72, baseType: !3413)
!3412 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3412, line: 23, size: 1088, elements: !3414)
!3414 = !{!3415, !3416, !3417, !3418, !3419, !3422, !3423, !3424, !3425, !3450, !3451, !3452}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3413, file: !3412, line: 28, baseType: !476, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3413, file: !3412, line: 38, baseType: !785, size: 64, offset: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3413, file: !3412, line: 40, baseType: !415, size: 64, offset: 128)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3413, file: !3412, line: 43, baseType: !979, size: 320, offset: 192)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3413, file: !3412, line: 44, baseType: !3420, size: 64, offset: 512)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3412, line: 44, flags: DIFlagFwdDecl)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3413, file: !3412, line: 48, baseType: !415, size: 64, offset: 576)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3413, file: !3412, line: 59, baseType: !790, size: 256, offset: 640)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3413, file: !3412, line: 60, baseType: !340, size: 64, offset: 896)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3413, file: !3412, line: 61, baseType: !3426, size: 64, offset: 960)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3428)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3429, line: 13, size: 1216, elements: !3430)
!3429 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3430 = !{!3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3428, file: !3429, line: 14, baseType: !340, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3428, file: !3429, line: 15, baseType: !415, size: 64, offset: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3428, file: !3429, line: 17, baseType: !415, size: 64, offset: 128)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3428, file: !3429, line: 17, baseType: !415, size: 64, offset: 192)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3428, file: !3429, line: 18, baseType: !415, size: 64, offset: 256)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3428, file: !3429, line: 18, baseType: !415, size: 64, offset: 320)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3428, file: !3429, line: 19, baseType: !2084, size: 64, offset: 384)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3428, file: !3429, line: 21, baseType: !1307, size: 64, offset: 448)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3428, file: !3429, line: 23, baseType: !1307, size: 64, offset: 512)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3428, file: !3429, line: 24, baseType: !1307, size: 64, offset: 576)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3428, file: !3429, line: 25, baseType: !1307, size: 64, offset: 640)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3428, file: !3429, line: 26, baseType: !1307, size: 64, offset: 704)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3428, file: !3429, line: 27, baseType: !1307, size: 64, offset: 768)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3428, file: !3429, line: 28, baseType: !1307, size: 64, offset: 832)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3428, file: !3429, line: 29, baseType: !1307, size: 64, offset: 896)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3428, file: !3429, line: 30, baseType: !1307, size: 64, offset: 960)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3428, file: !3429, line: 31, baseType: !1307, size: 64, offset: 1024)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3428, file: !3429, line: 32, baseType: !1307, size: 64, offset: 1088)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3428, file: !3429, line: 33, baseType: !1307, size: 64, offset: 1152)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3413, file: !3412, line: 63, baseType: !381, size: 32, offset: 1024)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3413, file: !3412, line: 69, baseType: !399, size: 16, offset: 1056)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3413, file: !3412, line: 70, baseType: !2407, size: 16, offset: 1072)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !730, file: !49, line: 882, baseType: !415, size: 64, offset: 9024)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !730, file: !49, line: 885, baseType: !744, size: 32, offset: 9088)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !730, file: !49, line: 886, baseType: !3456, size: 64, offset: 9152)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !49, line: 732, flags: DIFlagFwdDecl)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !730, file: !49, line: 901, baseType: !897, size: 64, offset: 9216)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !730, file: !49, line: 904, baseType: !762, size: 64, offset: 9280)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !730, file: !49, line: 906, baseType: !3461, size: 64, offset: 9344)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !49, line: 906, flags: DIFlagFwdDecl)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !730, file: !49, line: 930, baseType: !381, size: 32, offset: 9408)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !730, file: !49, line: 933, baseType: !381, size: 32, offset: 9440)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !730, file: !49, line: 935, baseType: !3466, size: 64, offset: 9472)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !65, line: 103, size: 64, elements: !3467)
!3467 = !{!3468}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3466, file: !65, line: 104, baseType: !3469, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !65, line: 101, flags: DIFlagFwdDecl)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !730, file: !49, line: 940, baseType: !783, size: 64, offset: 9536)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !730, file: !49, line: 942, baseType: !2514, size: 256, offset: 9600)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !727, file: !49, line: 986, baseType: !3474, offset: 10240)
!3474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, elements: !917)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !407, file: !408, line: 882, baseType: !726, size: 64, offset: 9792)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !407, file: !408, line: 884, baseType: !120, size: 32, offset: 9856)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !407, file: !408, line: 885, baseType: !120, size: 32, offset: 9888)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !407, file: !408, line: 886, baseType: !120, size: 32, offset: 9920)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !407, file: !408, line: 888, baseType: !120, size: 32, offset: 9952)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !407, file: !408, line: 890, baseType: !415, size: 64, offset: 9984)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !407, file: !408, line: 893, baseType: !18, size: 32, offset: 10048)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !407, file: !408, line: 896, baseType: !18, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !407, file: !408, line: 897, baseType: !18, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !407, file: !408, line: 898, baseType: !18, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !407, file: !408, line: 899, baseType: !18, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !407, file: !408, line: 919, baseType: !18, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !407, file: !408, line: 922, baseType: !18, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !407, file: !408, line: 923, baseType: !18, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !407, file: !408, line: 925, baseType: !18, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !407, file: !408, line: 939, baseType: !18, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !407, file: !408, line: 941, baseType: !18, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !407, file: !408, line: 944, baseType: !18, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !407, file: !408, line: 956, baseType: !18, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !407, file: !408, line: 962, baseType: !18, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !407, file: !408, line: 966, baseType: !18, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !407, file: !408, line: 969, baseType: !415, size: 64, offset: 10176)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !407, file: !408, line: 971, baseType: !3498, size: 448, offset: 10240)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !35, line: 25, size: 448, elements: !3499)
!3499 = !{!3500, !3501, !3506}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3498, file: !35, line: 26, baseType: !415, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3498, file: !35, line: 27, baseType: !3502, size: 64, offset: 64)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!1307, !3505}
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, scope: !3498, file: !35, line: 28, baseType: !3507, size: 320, offset: 128)
!3507 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3498, file: !35, line: 28, size: 320, elements: !3508)
!3508 = !{!3509, !3519, !3544}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3507, file: !35, line: 37, baseType: !3510, size: 320)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3507, file: !35, line: 30, size: 320, elements: !3511)
!3511 = !{!3512, !3514, !3515, !3516, !3517, !3518}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3510, file: !35, line: 31, baseType: !3513, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3510, file: !35, line: 32, baseType: !418, size: 32, offset: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3510, file: !35, line: 33, baseType: !418, size: 32, offset: 96)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3510, file: !35, line: 34, baseType: !418, size: 32, offset: 128)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3510, file: !35, line: 35, baseType: !476, size: 64, offset: 192)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3510, file: !35, line: 36, baseType: !3513, size: 64, offset: 256)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3507, file: !35, line: 47, baseType: !3520, size: 192)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3507, file: !35, line: 39, size: 192, elements: !3521)
!3521 = !{!3522, !3523, !3524, !3543}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3520, file: !35, line: 40, baseType: !591, size: 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3520, file: !35, line: 41, baseType: !34, size: 32, offset: 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, scope: !3520, file: !35, line: 42, baseType: !3525, size: 64, offset: 64)
!3525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3520, file: !35, line: 42, size: 64, elements: !3526)
!3526 = !{!3527, !3535}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3525, file: !35, line: 43, baseType: !3528, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3530, line: 7, size: 128, elements: !3531)
!3530 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3531 = !{!3532, !3534}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3529, file: !3530, line: 8, baseType: !3533, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !593, line: 93, baseType: !489)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3529, file: !3530, line: 9, baseType: !489, size: 64, offset: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3525, file: !35, line: 44, baseType: !3536, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3538, line: 7, size: 64, elements: !3539)
!3538 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3539 = !{!3540, !3542}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3537, file: !3538, line: 8, baseType: !3541, size: 32)
!3541 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3538, line: 5, baseType: !971)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3537, file: !3538, line: 9, baseType: !971, size: 32, offset: 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3520, file: !35, line: 46, baseType: !476, size: 64, offset: 128)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3507, file: !35, line: 55, baseType: !3545, size: 256)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3507, file: !35, line: 49, size: 256, elements: !3546)
!3546 = !{!3547, !3555, !3556, !3557, !3558}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3545, file: !35, line: 50, baseType: !3548, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !3550, line: 36, size: 64, elements: !3551)
!3550 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!3551 = !{!3552, !3553, !3554}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !3549, file: !3550, line: 37, baseType: !120, size: 32)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3549, file: !3550, line: 38, baseType: !1007, size: 16, offset: 32)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !3549, file: !3550, line: 39, baseType: !1007, size: 16, offset: 48)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3545, file: !35, line: 51, baseType: !120, size: 32, offset: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3545, file: !35, line: 52, baseType: !120, size: 32, offset: 96)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3545, file: !35, line: 53, baseType: !415, size: 64, offset: 128)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3545, file: !35, line: 54, baseType: !415, size: 64, offset: 192)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !407, file: !408, line: 973, baseType: !3560, size: 32, offset: 10688)
!3560 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !351, line: 27, baseType: !3561)
!3561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !593, line: 28, baseType: !120)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !407, file: !408, line: 974, baseType: !3560, size: 32, offset: 10720)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !407, file: !408, line: 978, baseType: !415, size: 64, offset: 10752)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !407, file: !408, line: 987, baseType: !406, size: 64, offset: 10816)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !407, file: !408, line: 990, baseType: !406, size: 64, offset: 10880)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !407, file: !408, line: 995, baseType: !350, size: 128, offset: 10944)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !407, file: !408, line: 996, baseType: !350, size: 128, offset: 11072)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !407, file: !408, line: 997, baseType: !406, size: 64, offset: 11200)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !407, file: !408, line: 1005, baseType: !350, size: 128, offset: 11264)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !407, file: !408, line: 1006, baseType: !350, size: 128, offset: 11392)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !407, file: !408, line: 1009, baseType: !832, size: 64, offset: 11520)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !407, file: !408, line: 1010, baseType: !3573, size: 512, offset: 11584)
!3573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !844, size: 512, elements: !849)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !407, file: !408, line: 1011, baseType: !350, size: 128, offset: 12096)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !407, file: !408, line: 1012, baseType: !350, size: 128, offset: 12224)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !407, file: !408, line: 1014, baseType: !2263, size: 64, offset: 12352)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !407, file: !408, line: 1017, baseType: !2400, size: 64, offset: 12416)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !407, file: !408, line: 1020, baseType: !2400, size: 64, offset: 12480)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !407, file: !408, line: 1023, baseType: !340, size: 64, offset: 12544)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !407, file: !408, line: 1025, baseType: !476, size: 64, offset: 12608)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !407, file: !408, line: 1026, baseType: !476, size: 64, offset: 12672)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !407, file: !408, line: 1031, baseType: !476, size: 64, offset: 12736)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !407, file: !408, line: 1032, baseType: !3584, size: 192, offset: 12800)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !408, line: 324, size: 192, elements: !3585)
!3585 = !{!3586, !3587, !3588}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3584, file: !408, line: 326, baseType: !476, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3584, file: !408, line: 327, baseType: !476, size: 64, offset: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3584, file: !408, line: 328, baseType: !368, size: 32, offset: 128)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !407, file: !408, line: 1041, baseType: !415, size: 64, offset: 12992)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !407, file: !408, line: 1042, baseType: !415, size: 64, offset: 13056)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !407, file: !408, line: 1045, baseType: !476, size: 64, offset: 13120)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !407, file: !408, line: 1048, baseType: !476, size: 64, offset: 13184)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !407, file: !408, line: 1051, baseType: !415, size: 64, offset: 13248)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !407, file: !408, line: 1052, baseType: !415, size: 64, offset: 13312)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !407, file: !408, line: 1055, baseType: !3596, size: 640, offset: 13376)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3597, line: 132, size: 640, elements: !3598)
!3597 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3598 = !{!3599, !3605, !3606}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3596, file: !3597, line: 133, baseType: !3600, size: 576)
!3600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3601, size: 576, elements: !828)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3597, line: 117, size: 192, elements: !3602)
!3602 = !{!3603, !3604}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3601, file: !3597, line: 118, baseType: !476, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3601, file: !3597, line: 119, baseType: !606, size: 128, offset: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3596, file: !3597, line: 134, baseType: !18, size: 32, offset: 576)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3596, file: !3597, line: 135, baseType: !18, size: 32, offset: 608)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !407, file: !408, line: 1058, baseType: !3608, size: 448, offset: 14016)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3597, line: 144, size: 448, elements: !3609)
!3609 = !{!3610, !3611, !3612}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3608, file: !3597, line: 145, baseType: !770, size: 128, align: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3608, file: !3597, line: 146, baseType: !790, size: 256, offset: 128)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3608, file: !3597, line: 147, baseType: !18, size: 32, offset: 384)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !407, file: !408, line: 1064, baseType: !930, size: 64, offset: 14464)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !407, file: !408, line: 1067, baseType: !930, size: 64, offset: 14528)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !407, file: !408, line: 1070, baseType: !930, size: 64, offset: 14592)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !407, file: !408, line: 1074, baseType: !963, size: 64, offset: 14656)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !407, file: !408, line: 1084, baseType: !3618, size: 128, offset: 14720)
!3618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !3010)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !407, file: !408, line: 1086, baseType: !3620, size: 64, offset: 14848)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !408, line: 55, flags: DIFlagFwdDecl)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !407, file: !408, line: 1089, baseType: !3623, size: 64, offset: 14912)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3624, line: 12, size: 64, elements: !3625)
!3624 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3625 = !{!3626}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3623, file: !3624, line: 13, baseType: !3627, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3624, line: 8, flags: DIFlagFwdDecl)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !407, file: !408, line: 1090, baseType: !3630, size: 128, offset: 14976)
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3631, line: 13, size: 128, elements: !3632)
!3631 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3632 = !{!3633}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3630, file: !3631, line: 14, baseType: !350, size: 128)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !407, file: !408, line: 1097, baseType: !3635, size: 64, offset: 15104)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !408, line: 50, flags: DIFlagFwdDecl)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !407, file: !408, line: 1100, baseType: !3638, size: 64, offset: 15168)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !408, line: 1100, flags: DIFlagFwdDecl)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !407, file: !408, line: 1103, baseType: !3641, size: 64, offset: 15232)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !408, line: 53, flags: DIFlagFwdDecl)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !407, file: !408, line: 1107, baseType: !3644, size: 64, offset: 15296)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3646, line: 31, size: 576, elements: !3647)
!3646 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3647 = !{!3648, !3649, !3652, !3655, !3658, !3659, !3662, !3665, !3666}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3645, file: !3646, line: 32, baseType: !424, size: 32)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3645, file: !3646, line: 33, baseType: !3650, size: 64, offset: 64)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3646, line: 9, flags: DIFlagFwdDecl)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3645, file: !3646, line: 34, baseType: !3653, size: 64, offset: 128)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3646, line: 10, flags: DIFlagFwdDecl)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3645, file: !3646, line: 35, baseType: !3656, size: 64, offset: 192)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3646, line: 8, flags: DIFlagFwdDecl)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3645, file: !3646, line: 36, baseType: !866, size: 64, offset: 256)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3645, file: !3646, line: 37, baseType: !3660, size: 64, offset: 320)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !965, line: 34, flags: DIFlagFwdDecl)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3645, file: !3646, line: 38, baseType: !3663, size: 64, offset: 384)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3646, line: 38, flags: DIFlagFwdDecl)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3645, file: !3646, line: 39, baseType: !3663, size: 64, offset: 448)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3645, file: !3646, line: 40, baseType: !3667, size: 64, offset: 512)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3646, line: 12, flags: DIFlagFwdDecl)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !407, file: !408, line: 1110, baseType: !3670, size: 64, offset: 15360)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3672, line: 93, size: 8768, elements: !3673)
!3672 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3673 = !{!3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3721, !3730, !3731, !3733, !3734, !3735, !3738, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3776, !3777, !3784, !3794, !3797, !3798, !3801, !3802, !3803, !3804, !3805, !3806}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3671, file: !3672, line: 94, baseType: !424, size: 32)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3671, file: !3672, line: 95, baseType: !381, size: 32, offset: 32)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3671, file: !3672, line: 96, baseType: !120, size: 32, offset: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3671, file: !3672, line: 97, baseType: !120, size: 32, offset: 96)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3671, file: !3672, line: 98, baseType: !350, size: 128, offset: 128)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3671, file: !3672, line: 100, baseType: !853, size: 192, offset: 256)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3671, file: !3672, line: 103, baseType: !406, size: 64, offset: 448)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3671, file: !3672, line: 106, baseType: !3682, size: 192, offset: 512)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !903, line: 32, size: 192, elements: !3683)
!3683 = !{!3684, !3685}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3682, file: !903, line: 33, baseType: !350, size: 128)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3682, file: !903, line: 34, baseType: !3686, size: 64, offset: 128)
!3686 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3687, line: 25, baseType: !3688)
!3687 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3687, line: 23, size: 64, elements: !3689)
!3689 = !{!3690}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3688, file: !3687, line: 24, baseType: !677, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3671, file: !3672, line: 109, baseType: !840, size: 64, offset: 704)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3671, file: !3672, line: 112, baseType: !120, size: 32, offset: 768)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3671, file: !3672, line: 114, baseType: !120, size: 32, offset: 800)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3671, file: !3672, line: 115, baseType: !406, size: 64, offset: 832)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3671, file: !3672, line: 118, baseType: !120, size: 32, offset: 896)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3671, file: !3672, line: 119, baseType: !18, size: 32, offset: 928)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3671, file: !3672, line: 121, baseType: !3698, size: 64, offset: 960)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3672, line: 80, size: 448, elements: !3700)
!3700 = !{!3701, !3702, !3708}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3699, file: !3672, line: 81, baseType: !381, size: 32)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3699, file: !3672, line: 82, baseType: !3703, size: 128, offset: 64)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3672, line: 75, size: 128, elements: !3704)
!3704 = !{!3705, !3706}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3703, file: !3672, line: 76, baseType: !406, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3703, file: !3672, line: 77, baseType: !3707, size: 64, offset: 64)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3699, file: !3672, line: 83, baseType: !1653, size: 256, offset: 192)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3671, file: !3672, line: 132, baseType: !18, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3671, file: !3672, line: 133, baseType: !18, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3671, file: !3672, line: 138, baseType: !18, size: 32, offset: 1056)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3671, file: !3672, line: 139, baseType: !350, size: 128, offset: 1088)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3671, file: !3672, line: 142, baseType: !544, size: 512, offset: 1216)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3671, file: !3672, line: 143, baseType: !552, size: 64, offset: 1728)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3671, file: !3672, line: 150, baseType: !3716, size: 256, offset: 1792)
!3716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3717, size: 256, elements: !2390)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3672, line: 38, size: 128, elements: !3718)
!3718 = !{!3719, !3720}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3717, file: !3672, line: 39, baseType: !476, size: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3717, file: !3672, line: 40, baseType: !476, size: 64, offset: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3671, file: !3672, line: 156, baseType: !3722, size: 192, offset: 2048)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3672, line: 66, size: 192, elements: !3723)
!3723 = !{!3724}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3722, file: !3672, line: 67, baseType: !3725, size: 192)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3672, line: 47, size: 192, elements: !3726)
!3726 = !{!3727, !3728, !3729}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3725, file: !3672, line: 48, baseType: !785, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3725, file: !3672, line: 49, baseType: !785, size: 64, offset: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3725, file: !3672, line: 50, baseType: !785, size: 64, offset: 128)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3671, file: !3672, line: 160, baseType: !3596, size: 640, offset: 2240)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3671, file: !3672, line: 163, baseType: !3732, size: 256, offset: 2880)
!3732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !832, size: 256, elements: !849)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3671, file: !3672, line: 169, baseType: !832, size: 64, offset: 3136)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3671, file: !3672, line: 172, baseType: !120, size: 32, offset: 3200)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3671, file: !3672, line: 174, baseType: !3736, size: 64, offset: 3264)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3672, line: 174, flags: DIFlagFwdDecl)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3671, file: !3672, line: 185, baseType: !3739, size: 64, offset: 3328)
!3739 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !596, line: 860, baseType: !3740)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !596, line: 853, size: 64, elements: !3741)
!3741 = !{!3742, !3743}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3740, file: !596, line: 858, baseType: !1163, size: 32)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3740, file: !596, line: 859, baseType: !744, size: 32, offset: 32)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3671, file: !3672, line: 186, baseType: !476, size: 64, offset: 3392)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3671, file: !3672, line: 186, baseType: !476, size: 64, offset: 3456)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3671, file: !3672, line: 186, baseType: !476, size: 64, offset: 3520)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3671, file: !3672, line: 186, baseType: !476, size: 64, offset: 3584)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3671, file: !3672, line: 187, baseType: !476, size: 64, offset: 3648)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3671, file: !3672, line: 188, baseType: !476, size: 64, offset: 3712)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3671, file: !3672, line: 189, baseType: !3584, size: 192, offset: 3776)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3671, file: !3672, line: 190, baseType: !415, size: 64, offset: 3968)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3671, file: !3672, line: 190, baseType: !415, size: 64, offset: 4032)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3671, file: !3672, line: 190, baseType: !415, size: 64, offset: 4096)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3671, file: !3672, line: 190, baseType: !415, size: 64, offset: 4160)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3671, file: !3672, line: 191, baseType: !415, size: 64, offset: 4224)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3671, file: !3672, line: 191, baseType: !415, size: 64, offset: 4288)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3671, file: !3672, line: 191, baseType: !415, size: 64, offset: 4352)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3671, file: !3672, line: 191, baseType: !415, size: 64, offset: 4416)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3671, file: !3672, line: 192, baseType: !415, size: 64, offset: 4480)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3671, file: !3672, line: 192, baseType: !415, size: 64, offset: 4544)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3671, file: !3672, line: 192, baseType: !415, size: 64, offset: 4608)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3671, file: !3672, line: 192, baseType: !415, size: 64, offset: 4672)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3671, file: !3672, line: 193, baseType: !415, size: 64, offset: 4736)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3671, file: !3672, line: 193, baseType: !415, size: 64, offset: 4800)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3671, file: !3672, line: 194, baseType: !3766, size: 448, offset: 4864)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3767, line: 12, size: 448, elements: !3768)
!3767 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3768 = !{!3769, !3770, !3771, !3772, !3773, !3774, !3775}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3766, file: !3767, line: 15, baseType: !476, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3766, file: !3767, line: 17, baseType: !476, size: 64, offset: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3766, file: !3767, line: 19, baseType: !476, size: 64, offset: 128)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3766, file: !3767, line: 21, baseType: !476, size: 64, offset: 192)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3766, file: !3767, line: 29, baseType: !476, size: 64, offset: 256)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3766, file: !3767, line: 35, baseType: !476, size: 64, offset: 320)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3766, file: !3767, line: 44, baseType: !476, size: 64, offset: 384)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3671, file: !3672, line: 202, baseType: !478, size: 64, offset: 5312)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3671, file: !3672, line: 213, baseType: !3778, size: 2048, offset: 5376)
!3778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3779, size: 2048, elements: !3010)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3780, line: 43, size: 128, elements: !3781)
!3780 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3781 = !{!3782, !3783}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3779, file: !3780, line: 44, baseType: !1351, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3779, file: !3780, line: 45, baseType: !1351, size: 64, offset: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3671, file: !3672, line: 216, baseType: !3785, size: 448, offset: 7424)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3672, line: 30, size: 448, elements: !3786)
!3786 = !{!3787, !3788, !3789, !3790, !3791, !3792, !3793}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3785, file: !3672, line: 31, baseType: !120, size: 32)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3785, file: !3672, line: 32, baseType: !1307, size: 64, offset: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3785, file: !3672, line: 33, baseType: !415, size: 64, offset: 128)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3785, file: !3672, line: 34, baseType: !476, size: 64, offset: 192)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3785, file: !3672, line: 34, baseType: !476, size: 64, offset: 256)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3785, file: !3672, line: 35, baseType: !415, size: 64, offset: 320)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3785, file: !3672, line: 35, baseType: !415, size: 64, offset: 384)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3671, file: !3672, line: 219, baseType: !3795, size: 64, offset: 7872)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3672, line: 219, flags: DIFlagFwdDecl)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3671, file: !3672, line: 222, baseType: !18, size: 32, offset: 7936)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3671, file: !3672, line: 223, baseType: !3799, size: 64, offset: 8000)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3672, line: 223, flags: DIFlagFwdDecl)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3671, file: !3672, line: 230, baseType: !1038, size: 8, offset: 8064)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3671, file: !3672, line: 231, baseType: !1007, size: 16, offset: 8080)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3671, file: !3672, line: 232, baseType: !1007, size: 16, offset: 8096)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3671, file: !3672, line: 234, baseType: !726, size: 64, offset: 8128)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3671, file: !3672, line: 237, baseType: !790, size: 256, offset: 8192)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3671, file: !3672, line: 243, baseType: !979, size: 320, offset: 8448)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !407, file: !408, line: 1111, baseType: !3808, size: 64, offset: 15424)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3672, line: 20, size: 16640, elements: !3810)
!3810 = !{!3811, !3812, !3813, !3814}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3809, file: !3672, line: 21, baseType: !744, size: 32)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3809, file: !3672, line: 22, baseType: !424, size: 32, offset: 32)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3809, file: !3672, line: 23, baseType: !853, size: 192, offset: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3809, file: !3672, line: 24, baseType: !3815, size: 16384, offset: 256)
!3815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3816, size: 16384, elements: !1487)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !903, line: 51, size: 256, elements: !3817)
!3817 = !{!3818}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3816, file: !903, line: 52, baseType: !3819, size: 256)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !903, line: 37, size: 256, elements: !3820)
!3820 = !{!3821, !3828, !3829, !3833}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3819, file: !903, line: 39, baseType: !3822, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3823, line: 83, baseType: !3824)
!3823 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3823, line: 82, baseType: !3826)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{null, !120}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3819, file: !903, line: 40, baseType: !415, size: 64, offset: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3819, file: !903, line: 46, baseType: !3830, size: 64, offset: 128)
!3830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3823, line: 86, baseType: !3831)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3823, line: 85, baseType: !2618)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3819, file: !903, line: 48, baseType: !3686, size: 64, offset: 192)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !407, file: !408, line: 1112, baseType: !3686, size: 64, offset: 15488)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !407, file: !408, line: 1113, baseType: !3686, size: 64, offset: 15552)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !407, file: !408, line: 1115, baseType: !3686, size: 64, offset: 15616)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !407, file: !408, line: 1116, baseType: !3682, size: 192, offset: 15680)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !407, file: !408, line: 1117, baseType: !415, size: 64, offset: 15872)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !407, file: !408, line: 1118, baseType: !1349, size: 64, offset: 15936)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !407, file: !408, line: 1119, baseType: !18, size: 32, offset: 16000)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !407, file: !408, line: 1121, baseType: !773, size: 64, offset: 16064)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !407, file: !408, line: 1125, baseType: !3843, size: 64, offset: 16128)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !408, line: 43, flags: DIFlagFwdDecl)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !407, file: !408, line: 1127, baseType: !921, size: 32, offset: 16192)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !407, file: !408, line: 1128, baseType: !18, size: 32, offset: 16224)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !407, file: !408, line: 1130, baseType: !3848, size: 128, offset: 16256)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3849, line: 37, size: 128, elements: !3850)
!3849 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3850 = !{!3851, !3852, !3853}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3848, file: !3849, line: 38, baseType: !120, size: 32)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3848, file: !3849, line: 39, baseType: !381, size: 32, offset: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3848, file: !3849, line: 40, baseType: !3854, size: 64, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3849, line: 24, flags: DIFlagFwdDecl)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !407, file: !408, line: 1131, baseType: !3857, size: 256, offset: 16384)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3858, line: 12, size: 256, elements: !3859)
!3858 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3859 = !{!3860, !3861, !3862, !3863}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3857, file: !3858, line: 13, baseType: !1051, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3857, file: !3858, line: 14, baseType: !415, size: 64, offset: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3857, file: !3858, line: 15, baseType: !415, size: 64, offset: 128)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3857, file: !3858, line: 16, baseType: !1038, size: 8, offset: 192)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !407, file: !408, line: 1134, baseType: !476, size: 64, offset: 16640)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !407, file: !408, line: 1135, baseType: !476, size: 64, offset: 16704)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !407, file: !408, line: 1138, baseType: !744, size: 32, offset: 16768)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !407, file: !408, line: 1141, baseType: !368, size: 32, offset: 16800)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !407, file: !408, line: 1143, baseType: !3869, size: 64, offset: 16832)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !408, line: 735, size: 64, elements: !3870)
!3870 = !{!3871}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3869, file: !408, line: 736, baseType: !3872, size: 64)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !407, file: !408, line: 1147, baseType: !609, size: 128, offset: 16896)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !407, file: !408, line: 1149, baseType: !406, size: 64, offset: 17024)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !407, file: !408, line: 1151, baseType: !3876, size: 64, offset: 17088)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !408, line: 1151, flags: DIFlagFwdDecl)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !407, file: !408, line: 1188, baseType: !340, size: 64, offset: 17152)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !407, file: !408, line: 1191, baseType: !3880, size: 64, offset: 17216)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !408, line: 44, flags: DIFlagFwdDecl)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !407, file: !408, line: 1194, baseType: !3883, size: 64, offset: 17280)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !408, line: 45, flags: DIFlagFwdDecl)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !407, file: !408, line: 1197, baseType: !3886, size: 64, offset: 17344)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !408, line: 61, flags: DIFlagFwdDecl)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !407, file: !408, line: 1199, baseType: !3889, size: 64, offset: 17408)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3891, line: 99, size: 128, elements: !3892)
!3891 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3892 = !{!3893, !3894, !3895}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3890, file: !3891, line: 100, baseType: !783, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3890, file: !3891, line: 101, baseType: !381, size: 32, offset: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3890, file: !3891, line: 103, baseType: !401, size: 16, offset: 96)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !407, file: !408, line: 1202, baseType: !3897, size: 64, offset: 17472)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !408, line: 48, flags: DIFlagFwdDecl)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !407, file: !408, line: 1205, baseType: !415, size: 64, offset: 17536)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !407, file: !408, line: 1206, baseType: !3901, size: 64, offset: 17600)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !903, line: 14, baseType: !3903)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !903, line: 12, size: 384, elements: !3904)
!3904 = !{!3905}
!3905 = !DIDerivedType(tag: DW_TAG_member, scope: !3903, file: !903, line: 13, baseType: !3906, size: 384)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3903, file: !903, line: 13, size: 384, elements: !3907)
!3907 = !{!3908, !3909, !3910, !3911}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3906, file: !903, line: 13, baseType: !120, size: 32)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3906, file: !903, line: 13, baseType: !120, size: 32, offset: 32)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3906, file: !903, line: 13, baseType: !120, size: 32, offset: 64)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3906, file: !903, line: 13, baseType: !3912, size: 256, offset: 128)
!3912 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3913, line: 37, size: 256, elements: !3914)
!3913 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3914 = !{!3915, !3920, !3933, !3939, !3948, !3975, !3980}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3912, file: !3913, line: 42, baseType: !3916, size: 64)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3912, file: !3913, line: 39, size: 64, elements: !3917)
!3917 = !{!3918, !3919}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3916, file: !3913, line: 40, baseType: !3561, size: 32)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3916, file: !3913, line: 41, baseType: !926, size: 32, offset: 32)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3912, file: !3913, line: 50, baseType: !3921, size: 192)
!3921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3912, file: !3913, line: 45, size: 192, elements: !3922)
!3922 = !{!3923, !3925, !3926, !3932}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3921, file: !3913, line: 46, baseType: !3924, size: 32)
!3924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !593, line: 95, baseType: !120)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3921, file: !3913, line: 47, baseType: !120, size: 32, offset: 32)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3921, file: !3913, line: 48, baseType: !3927, size: 64, offset: 64)
!3927 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3913, line: 11, baseType: !3928)
!3928 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3913, line: 8, size: 64, elements: !3929)
!3929 = !{!3930, !3931}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3928, file: !3913, line: 9, baseType: !120, size: 32)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3928, file: !3913, line: 10, baseType: !340, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3921, file: !3913, line: 49, baseType: !120, size: 32, offset: 128)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3912, file: !3913, line: 57, baseType: !3934, size: 128)
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3912, file: !3913, line: 53, size: 128, elements: !3935)
!3935 = !{!3936, !3937, !3938}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3934, file: !3913, line: 54, baseType: !3561, size: 32)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3934, file: !3913, line: 55, baseType: !926, size: 32, offset: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3934, file: !3913, line: 56, baseType: !3927, size: 64, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3912, file: !3913, line: 66, baseType: !3940, size: 256)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3912, file: !3913, line: 60, size: 256, elements: !3941)
!3941 = !{!3942, !3943, !3944, !3945, !3947}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3940, file: !3913, line: 61, baseType: !3561, size: 32)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3940, file: !3913, line: 62, baseType: !926, size: 32, offset: 32)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3940, file: !3913, line: 63, baseType: !120, size: 32, offset: 64)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3940, file: !3913, line: 64, baseType: !3946, size: 64, offset: 128)
!3946 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !593, line: 94, baseType: !1348)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3940, file: !3913, line: 65, baseType: !3946, size: 64, offset: 192)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3912, file: !3913, line: 105, baseType: !3949, size: 256)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3912, file: !3913, line: 69, size: 256, elements: !3950)
!3950 = !{!3951, !3952}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3949, file: !3913, line: 70, baseType: !340, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, scope: !3949, file: !3913, line: 79, baseType: !3953, size: 192, offset: 64)
!3953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3949, file: !3913, line: 79, size: 192, elements: !3954)
!3954 = !{!3955, !3956, !3957, !3964, !3969}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3953, file: !3913, line: 81, baseType: !120, size: 32)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3953, file: !3913, line: 86, baseType: !1007, size: 16)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3953, file: !3913, line: 92, baseType: !3958, size: 192)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3953, file: !3913, line: 88, size: 192, elements: !3959)
!3959 = !{!3960, !3962, !3963}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3958, file: !3913, line: 89, baseType: !3961, size: 64)
!3961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !587)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3958, file: !3913, line: 90, baseType: !340, size: 64, offset: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3958, file: !3913, line: 91, baseType: !340, size: 64, offset: 128)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3953, file: !3913, line: 97, baseType: !3965, size: 96)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3953, file: !3913, line: 94, size: 96, elements: !3966)
!3966 = !{!3967, !3968}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3965, file: !3913, line: 95, baseType: !3961, size: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3965, file: !3913, line: 96, baseType: !419, size: 32, offset: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3953, file: !3913, line: 103, baseType: !3970, size: 128)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3953, file: !3913, line: 99, size: 128, elements: !3971)
!3971 = !{!3972, !3973, !3974}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3970, file: !3913, line: 100, baseType: !415, size: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3970, file: !3913, line: 101, baseType: !419, size: 32, offset: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3970, file: !3913, line: 102, baseType: !419, size: 32, offset: 96)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3912, file: !3913, line: 111, baseType: !3976, size: 128)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3912, file: !3913, line: 108, size: 128, elements: !3977)
!3977 = !{!3978, !3979}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3976, file: !3913, line: 109, baseType: !1307, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3976, file: !3913, line: 110, baseType: !120, size: 32, offset: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3912, file: !3913, line: 118, baseType: !3981, size: 128)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3912, file: !3913, line: 114, size: 128, elements: !3982)
!3982 = !{!3983, !3984, !3985}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3981, file: !3913, line: 115, baseType: !340, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3981, file: !3913, line: 116, baseType: !120, size: 32, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3981, file: !3913, line: 117, baseType: !18, size: 32, offset: 96)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !407, file: !408, line: 1208, baseType: !3766, size: 448, offset: 17664)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !407, file: !408, line: 1215, baseType: !476, size: 64, offset: 18112)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !407, file: !408, line: 1217, baseType: !476, size: 64, offset: 18176)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !407, file: !408, line: 1219, baseType: !476, size: 64, offset: 18240)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !407, file: !408, line: 1223, baseType: !3991, size: 64, offset: 18304)
!3991 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3992, line: 99, baseType: !3993)
!3992 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3993 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3992, line: 99, size: 64, elements: !3994)
!3994 = !{!3995}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3993, file: !3992, line: 99, baseType: !677, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !407, file: !408, line: 1225, baseType: !1163, size: 32, offset: 18368)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !407, file: !408, line: 1226, baseType: !120, size: 32, offset: 18400)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !407, file: !408, line: 1227, baseType: !120, size: 32, offset: 18432)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !407, file: !408, line: 1231, baseType: !4000, size: 64, offset: 18496)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !408, line: 1231, flags: DIFlagFwdDecl)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !407, file: !408, line: 1233, baseType: !350, size: 128, offset: 18560)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !407, file: !408, line: 1240, baseType: !4004, size: 64, offset: 18688)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !408, line: 62, flags: DIFlagFwdDecl)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !407, file: !408, line: 1242, baseType: !4007, size: 64, offset: 18752)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !408, line: 1242, flags: DIFlagFwdDecl)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !407, file: !408, line: 1244, baseType: !350, size: 128, offset: 18816)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !407, file: !408, line: 1245, baseType: !4011, size: 64, offset: 18944)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !408, line: 51, flags: DIFlagFwdDecl)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !407, file: !408, line: 1246, baseType: !790, size: 256, offset: 19008)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !407, file: !408, line: 1247, baseType: !18, size: 32, offset: 19264)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !407, file: !408, line: 1250, baseType: !4016, size: 64, offset: 19328)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !408, line: 57, flags: DIFlagFwdDecl)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !407, file: !408, line: 1251, baseType: !790, size: 256, offset: 19392)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !407, file: !408, line: 1252, baseType: !350, size: 128, offset: 19648)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !407, file: !408, line: 1259, baseType: !1781, size: 64, offset: 19776)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !407, file: !408, line: 1260, baseType: !1007, size: 16, offset: 19840)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !407, file: !408, line: 1261, baseType: !1007, size: 16, offset: 19856)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !407, file: !408, line: 1314, baseType: !4024, size: 64, offset: 19904)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4026, line: 62, size: 256, align: 256, elements: !4027)
!4026 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4027 = !{!4028, !4029, !4030, !4031, !4032, !4033, !4034}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4025, file: !4026, line: 75, baseType: !419, size: 32)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4025, file: !4026, line: 90, baseType: !419, size: 32, offset: 32)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4025, file: !4026, line: 112, baseType: !477, size: 64, offset: 64)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4025, file: !4026, line: 132, baseType: !419, size: 32, offset: 128)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4025, file: !4026, line: 140, baseType: !419, size: 32, offset: 160)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4025, file: !4026, line: 149, baseType: !419, size: 32, offset: 192)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4025, file: !4026, line: 154, baseType: !4035, offset: 224)
!4035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !917)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !407, file: !408, line: 1315, baseType: !418, size: 32, offset: 19968)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !407, file: !408, line: 1316, baseType: !418, size: 32, offset: 20000)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !407, file: !408, line: 1321, baseType: !415, size: 64, offset: 20032)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !407, file: !408, line: 1325, baseType: !120, size: 32, offset: 20096)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !407, file: !408, line: 1326, baseType: !120, size: 32, offset: 20128)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !407, file: !408, line: 1327, baseType: !120, size: 32, offset: 20160)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !407, file: !408, line: 1328, baseType: !120, size: 32, offset: 20192)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !407, file: !408, line: 1329, baseType: !770, size: 128, align: 64, offset: 20224)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !407, file: !408, line: 1332, baseType: !4045, size: 128, offset: 20352)
!4045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4046, line: 51, size: 128, elements: !4047)
!4046 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4047 = !{!4048, !4053, !4054}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4045, file: !4046, line: 60, baseType: !4049, size: 64)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4050, line: 7, size: 64, elements: !4051)
!4050 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4051 = !{!4052}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4049, file: !4050, line: 12, baseType: !674, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4045, file: !4046, line: 63, baseType: !1038, size: 8, offset: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4045, file: !4046, line: 70, baseType: !1038, size: 8, offset: 72)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !407, file: !408, line: 1335, baseType: !3248, size: 64, offset: 20480)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !407, file: !408, line: 1337, baseType: !4057, size: 128, offset: 20544)
!4057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4046, line: 39, size: 128, elements: !4058)
!4058 = !{!4059, !4060, !4061}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4057, file: !4046, line: 40, baseType: !1568, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4057, file: !4046, line: 42, baseType: !419, size: 32, offset: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4057, file: !4046, line: 43, baseType: !419, size: 32, offset: 96)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !407, file: !408, line: 1340, baseType: !4063, size: 64, offset: 20672)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !408, line: 69, flags: DIFlagFwdDecl)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !407, file: !408, line: 1351, baseType: !120, size: 32, offset: 20736)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !407, file: !408, line: 1352, baseType: !120, size: 32, offset: 20768)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !407, file: !408, line: 1354, baseType: !415, size: 64, offset: 20800)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !407, file: !408, line: 1364, baseType: !476, size: 64, offset: 20864)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !407, file: !408, line: 1365, baseType: !476, size: 64, offset: 20928)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !407, file: !408, line: 1412, baseType: !415, size: 64, offset: 20992)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !407, file: !408, line: 1453, baseType: !4072, size: 64, offset: 21056)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !408, line: 1453, flags: DIFlagFwdDecl)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !407, file: !408, line: 1457, baseType: !4075, size: 64, offset: 21120)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !65, line: 61, size: 576, elements: !4077)
!4077 = !{!4078, !4079, !4098, !4101, !4102, !4135, !4145}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4076, file: !65, line: 62, baseType: !64, size: 32)
!4079 = !DIDerivedType(tag: DW_TAG_member, scope: !4076, file: !65, line: 64, baseType: !4080, size: 192, offset: 64)
!4080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4076, file: !65, line: 64, size: 192, elements: !4081)
!4081 = !{!4082, !4093}
!4082 = !DIDerivedType(tag: DW_TAG_member, scope: !4080, file: !65, line: 65, baseType: !4083, size: 192)
!4083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4080, file: !65, line: 65, size: 192, elements: !4084)
!4084 = !{!4085, !4092}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4083, file: !65, line: 66, baseType: !4086, size: 128)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4087, line: 50, size: 128, elements: !4088)
!4087 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4088 = !{!4089, !4090, !4091}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4086, file: !4087, line: 52, baseType: !415, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4086, file: !4087, line: 54, baseType: !18, size: 32, offset: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4086, file: !4087, line: 55, baseType: !18, size: 32, offset: 96)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4083, file: !65, line: 67, baseType: !415, size: 64, offset: 128)
!4093 = !DIDerivedType(tag: DW_TAG_member, scope: !4080, file: !65, line: 70, baseType: !4094, size: 192)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4080, file: !65, line: 70, size: 192, elements: !4095)
!4095 = !{!4096, !4097}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4094, file: !65, line: 71, baseType: !770, size: 128, align: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4094, file: !65, line: 72, baseType: !415, size: 64, offset: 128)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4076, file: !65, line: 76, baseType: !4099, size: 64, offset: 256)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !65, line: 76, flags: DIFlagFwdDecl)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4076, file: !65, line: 77, baseType: !415, size: 64, offset: 320)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4076, file: !65, line: 79, baseType: !4103, size: 64, offset: 384)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4087, line: 25, size: 256, elements: !4105)
!4105 = !{!4106, !4112, !4116}
!4106 = !DIDerivedType(tag: DW_TAG_member, scope: !4104, file: !4087, line: 26, baseType: !4107, size: 128)
!4107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4104, file: !4087, line: 26, size: 128, elements: !4108)
!4108 = !{!4109, !4111}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4107, file: !4087, line: 27, baseType: !4110, size: 128)
!4110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 128, elements: !3010)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4107, file: !4087, line: 28, baseType: !4110, size: 128)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4104, file: !4087, line: 31, baseType: !4113, size: 64, offset: 128)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4115)
!4115 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4087, line: 23, flags: DIFlagFwdDecl)
!4116 = !DIDerivedType(tag: DW_TAG_member, scope: !4104, file: !4087, line: 33, baseType: !4117, size: 64, offset: 192)
!4117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4104, file: !4087, line: 33, size: 64, elements: !4118)
!4118 = !{!4119, !4125, !4130}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4117, file: !4087, line: 38, baseType: !4120, size: 64)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4117, file: !4087, line: 34, size: 64, elements: !4121)
!4121 = !{!4122, !4123, !4124}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4120, file: !4087, line: 35, baseType: !971, size: 32)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4120, file: !4087, line: 36, baseType: !389, size: 8, offset: 32)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4120, file: !4087, line: 37, baseType: !389, size: 8, offset: 40)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4117, file: !4087, line: 42, baseType: !4126, size: 16)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4117, file: !4087, line: 39, size: 16, elements: !4127)
!4127 = !{!4128, !4129}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4126, file: !4087, line: 40, baseType: !389, size: 8)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4126, file: !4087, line: 41, baseType: !389, size: 8, offset: 8)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4117, file: !4087, line: 46, baseType: !4131, size: 16)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4117, file: !4087, line: 43, size: 16, elements: !4132)
!4132 = !{!4133, !4134}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4131, file: !4087, line: 44, baseType: !389, size: 8)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4131, file: !4087, line: 45, baseType: !389, size: 8, offset: 8)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4076, file: !65, line: 81, baseType: !4136, size: 64, offset: 448)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !65, line: 85, size: 384, elements: !4138)
!4138 = !{!4139, !4140, !4141, !4142, !4143, !4144}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4137, file: !65, line: 86, baseType: !4099, size: 64)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4137, file: !65, line: 87, baseType: !415, size: 64, offset: 64)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4137, file: !65, line: 88, baseType: !415, size: 64, offset: 128)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4137, file: !65, line: 89, baseType: !415, size: 64, offset: 192)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4137, file: !65, line: 90, baseType: !1038, size: 8, offset: 256)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4137, file: !65, line: 92, baseType: !4136, size: 64, offset: 320)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4076, file: !65, line: 82, baseType: !18, size: 32, offset: 512)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !407, file: !408, line: 1463, baseType: !4147, offset: 21184)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !408, line: 739, elements: !755)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !407, file: !408, line: 1470, baseType: !770, size: 128, align: 64, offset: 21184)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !407, file: !408, line: 1471, baseType: !424, size: 32, offset: 21312)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !407, file: !408, line: 1472, baseType: !120, size: 32, offset: 21344)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !407, file: !408, line: 1474, baseType: !406, size: 64, offset: 21376)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !407, file: !408, line: 1475, baseType: !2502, size: 320, offset: 21440)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !407, file: !408, line: 1478, baseType: !4154, size: 64, offset: 21760)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4156, line: 49, size: 512, elements: !4157)
!4156 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4157 = !{!4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4167}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4155, file: !4156, line: 50, baseType: !4154, size: 64)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4155, file: !4156, line: 51, baseType: !340, size: 64, offset: 64)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4155, file: !4156, line: 52, baseType: !415, size: 64, offset: 128)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4155, file: !4156, line: 53, baseType: !415, size: 64, offset: 192)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4155, file: !4156, line: 54, baseType: !1955, size: 64, offset: 256)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4155, file: !4156, line: 56, baseType: !18, size: 32, offset: 320)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4155, file: !4156, line: 58, baseType: !18, size: 32, offset: 352)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4155, file: !4156, line: 59, baseType: !4166, size: 64, offset: 384)
!4166 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !351, line: 159, baseType: !476)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4155, file: !4156, line: 60, baseType: !2084, size: 64, offset: 448)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !407, file: !408, line: 1482, baseType: !424, size: 32, offset: 21824)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !407, file: !408, line: 1489, baseType: !340, size: 64, offset: 21888)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !407, file: !408, line: 1504, baseType: !340, size: 64, offset: 21952)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !407, file: !408, line: 1505, baseType: !477, size: 64, offset: 22016)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !407, file: !408, line: 1506, baseType: !476, size: 64, offset: 22080)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !407, file: !408, line: 1507, baseType: !477, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !407, file: !408, line: 1508, baseType: !477, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !407, file: !408, line: 1509, baseType: !477, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !407, file: !408, line: 1510, baseType: !770, size: 128, align: 64, offset: 22208)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !407, file: !408, line: 1511, baseType: !120, size: 32, offset: 22336)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !407, file: !408, line: 1515, baseType: !4179, size: 64, offset: 22400)
!4179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !438, line: 56, size: 64, elements: !4180)
!4180 = !{!4181}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4179, file: !438, line: 57, baseType: !441, size: 64)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !407, file: !408, line: 1518, baseType: !4179, size: 64, offset: 22464)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !407, file: !408, line: 1528, baseType: !770, size: 128, align: 64, offset: 22528)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !407, file: !408, line: 1552, baseType: !4185, size: 35328, offset: 23040)
!4185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4186, line: 430, size: 35328, elements: !4187)
!4186 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4187 = !{!4188, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4217, !4218, !4219, !4220, !4221, !4222, !4225, !4226, !4227, !4228}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4185, file: !4186, line: 432, baseType: !4189, size: 192)
!4189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4190, size: 192, elements: !828)
!4190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4191, line: 16, size: 64, elements: !4192)
!4191 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4192 = !{!4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4190, file: !4191, line: 17, baseType: !399, size: 16)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4190, file: !4191, line: 18, baseType: !399, size: 16, offset: 16)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4190, file: !4191, line: 19, baseType: !399, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4190, file: !4191, line: 19, baseType: !399, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4190, file: !4191, line: 19, baseType: !399, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4190, file: !4191, line: 19, baseType: !399, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4190, file: !4191, line: 19, baseType: !399, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4190, file: !4191, line: 20, baseType: !399, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4190, file: !4191, line: 20, baseType: !399, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4190, file: !4191, line: 20, baseType: !399, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4190, file: !4191, line: 20, baseType: !399, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4190, file: !4191, line: 20, baseType: !399, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4190, file: !4191, line: 20, baseType: !399, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4185, file: !4186, line: 436, baseType: !415, size: 64, offset: 192)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4185, file: !4186, line: 440, baseType: !401, size: 16, offset: 256)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4185, file: !4186, line: 441, baseType: !401, size: 16, offset: 272)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4185, file: !4186, line: 442, baseType: !401, size: 16, offset: 288)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4185, file: !4186, line: 443, baseType: !401, size: 16, offset: 304)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4185, file: !4186, line: 447, baseType: !415, size: 64, offset: 320)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4185, file: !4186, line: 448, baseType: !415, size: 64, offset: 384)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4185, file: !4186, line: 459, baseType: !4214, size: 256, offset: 448)
!4214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4215, size: 256, elements: !849)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4186, line: 428, flags: DIFlagFwdDecl)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4185, file: !4186, line: 461, baseType: !415, size: 64, offset: 704)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4185, file: !4186, line: 463, baseType: !415, size: 64, offset: 768)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4185, file: !4186, line: 465, baseType: !415, size: 64, offset: 832)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4185, file: !4186, line: 466, baseType: !415, size: 64, offset: 896)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4185, file: !4186, line: 467, baseType: !415, size: 64, offset: 960)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4185, file: !4186, line: 473, baseType: !4223, size: 64, offset: 1024)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4186, line: 10, flags: DIFlagFwdDecl)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4185, file: !4186, line: 480, baseType: !415, size: 64, offset: 1088)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4185, file: !4186, line: 482, baseType: !18, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4185, file: !4186, line: 491, baseType: !418, size: 32, offset: 1184)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4185, file: !4186, line: 501, baseType: !4229, size: 33792, offset: 1536)
!4229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4230, line: 448, size: 33792, elements: !4231)
!4230 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4231 = !{!4232, !4233, !4234, !4396, !4397, !4403, !4404}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4229, file: !4230, line: 461, baseType: !18, size: 32)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4229, file: !4230, line: 468, baseType: !415, size: 64, offset: 64)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4229, file: !4230, line: 476, baseType: !4235, size: 64, offset: 128)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4230, line: 356, size: 33280, align: 512, elements: !4237)
!4237 = !{!4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4236, file: !4230, line: 358, baseType: !18, size: 32)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4236, file: !4230, line: 361, baseType: !18, size: 32, offset: 32)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4236, file: !4230, line: 364, baseType: !476, size: 64, offset: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4236, file: !4230, line: 367, baseType: !476, size: 64, offset: 128)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4236, file: !4230, line: 370, baseType: !476, size: 64, offset: 192)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4236, file: !4230, line: 373, baseType: !18, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4236, file: !4230, line: 376, baseType: !18, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4236, file: !4230, line: 391, baseType: !18, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4236, file: !4230, line: 394, baseType: !18, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4236, file: !4230, line: 397, baseType: !4248, size: 32768, offset: 512)
!4248 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4230, line: 348, size: 32768, elements: !4249)
!4249 = !{!4250, !4265, !4302, !4379, !4392}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4248, file: !4230, line: 349, baseType: !4251, size: 896)
!4251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4230, line: 12, size: 896, elements: !4252)
!4252 = !{!4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4264}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4251, file: !4230, line: 13, baseType: !418, size: 32)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4251, file: !4230, line: 14, baseType: !418, size: 32, offset: 32)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4251, file: !4230, line: 15, baseType: !418, size: 32, offset: 64)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4251, file: !4230, line: 16, baseType: !418, size: 32, offset: 96)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4251, file: !4230, line: 17, baseType: !418, size: 32, offset: 128)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4251, file: !4230, line: 18, baseType: !418, size: 32, offset: 160)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4251, file: !4230, line: 19, baseType: !418, size: 32, offset: 192)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4251, file: !4230, line: 22, baseType: !4261, size: 640, offset: 224)
!4261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 640, elements: !4262)
!4262 = !{!4263}
!4263 = !DISubrange(count: 20)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4251, file: !4230, line: 25, baseType: !418, size: 32, offset: 864)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4248, file: !4230, line: 350, baseType: !4266, size: 4096, align: 128)
!4266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4230, line: 34, size: 4096, align: 128, elements: !4267)
!4267 = !{!4268, !4269, !4270, !4271, !4272, !4287, !4288, !4289, !4291, !4293, !4297}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4266, file: !4230, line: 35, baseType: !399, size: 16)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4266, file: !4230, line: 36, baseType: !399, size: 16, offset: 16)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4266, file: !4230, line: 37, baseType: !399, size: 16, offset: 32)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4266, file: !4230, line: 38, baseType: !399, size: 16, offset: 48)
!4272 = !DIDerivedType(tag: DW_TAG_member, scope: !4266, file: !4230, line: 39, baseType: !4273, size: 128, offset: 64)
!4273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4266, file: !4230, line: 39, size: 128, elements: !4274)
!4274 = !{!4275, !4280}
!4275 = !DIDerivedType(tag: DW_TAG_member, scope: !4273, file: !4230, line: 40, baseType: !4276, size: 128)
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4273, file: !4230, line: 40, size: 128, elements: !4277)
!4277 = !{!4278, !4279}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4276, file: !4230, line: 41, baseType: !476, size: 64)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4276, file: !4230, line: 42, baseType: !476, size: 64, offset: 64)
!4280 = !DIDerivedType(tag: DW_TAG_member, scope: !4273, file: !4230, line: 44, baseType: !4281, size: 128)
!4281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4273, file: !4230, line: 44, size: 128, elements: !4282)
!4282 = !{!4283, !4284, !4285, !4286}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4281, file: !4230, line: 45, baseType: !418, size: 32)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4281, file: !4230, line: 46, baseType: !418, size: 32, offset: 32)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4281, file: !4230, line: 47, baseType: !418, size: 32, offset: 64)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4281, file: !4230, line: 48, baseType: !418, size: 32, offset: 96)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4266, file: !4230, line: 51, baseType: !418, size: 32, offset: 192)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4266, file: !4230, line: 52, baseType: !418, size: 32, offset: 224)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4266, file: !4230, line: 55, baseType: !4290, size: 1024, offset: 256)
!4290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 1024, elements: !3001)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4266, file: !4230, line: 58, baseType: !4292, size: 2048, offset: 1280)
!4292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 2048, elements: !1487)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4266, file: !4230, line: 60, baseType: !4294, size: 384, offset: 3328)
!4294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 384, elements: !4295)
!4295 = !{!4296}
!4296 = !DISubrange(count: 12)
!4297 = !DIDerivedType(tag: DW_TAG_member, scope: !4266, file: !4230, line: 62, baseType: !4298, size: 384, offset: 3712)
!4298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4266, file: !4230, line: 62, size: 384, elements: !4299)
!4299 = !{!4300, !4301}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4298, file: !4230, line: 63, baseType: !4294, size: 384)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4298, file: !4230, line: 64, baseType: !4294, size: 384)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4248, file: !4230, line: 351, baseType: !4303, size: 1088)
!4303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4230, line: 79, size: 1088, elements: !4304)
!4304 = !{!4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4378}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4303, file: !4230, line: 80, baseType: !418, size: 32)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4303, file: !4230, line: 81, baseType: !418, size: 32, offset: 32)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4303, file: !4230, line: 82, baseType: !418, size: 32, offset: 64)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4303, file: !4230, line: 83, baseType: !418, size: 32, offset: 96)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4303, file: !4230, line: 84, baseType: !418, size: 32, offset: 128)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4303, file: !4230, line: 85, baseType: !418, size: 32, offset: 160)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4303, file: !4230, line: 86, baseType: !418, size: 32, offset: 192)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4303, file: !4230, line: 88, baseType: !4261, size: 640, offset: 224)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4303, file: !4230, line: 89, baseType: !389, size: 8, offset: 864)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4303, file: !4230, line: 90, baseType: !389, size: 8, offset: 872)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4303, file: !4230, line: 91, baseType: !389, size: 8, offset: 880)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4303, file: !4230, line: 92, baseType: !389, size: 8, offset: 888)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4303, file: !4230, line: 93, baseType: !389, size: 8, offset: 896)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4303, file: !4230, line: 94, baseType: !389, size: 8, offset: 904)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4303, file: !4230, line: 95, baseType: !4320, size: 64, offset: 960)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4322, line: 11, size: 128, elements: !4323)
!4322 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4323 = !{!4324, !4325}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4321, file: !4322, line: 12, baseType: !1307, size: 64)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4321, file: !4322, line: 13, baseType: !4326, size: 64, offset: 64)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4328, line: 103, size: 1344, elements: !4329)
!4328 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4329 = !{!4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4358, !4359, !4360}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4327, file: !4328, line: 109, baseType: !415, size: 64)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4327, file: !4328, line: 110, baseType: !415, size: 64, offset: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4327, file: !4328, line: 111, baseType: !415, size: 64, offset: 128)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4327, file: !4328, line: 112, baseType: !415, size: 64, offset: 192)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4327, file: !4328, line: 113, baseType: !415, size: 64, offset: 256)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4327, file: !4328, line: 114, baseType: !415, size: 64, offset: 320)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4327, file: !4328, line: 117, baseType: !415, size: 64, offset: 384)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4327, file: !4328, line: 118, baseType: !415, size: 64, offset: 448)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4327, file: !4328, line: 119, baseType: !415, size: 64, offset: 512)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4327, file: !4328, line: 120, baseType: !415, size: 64, offset: 576)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4327, file: !4328, line: 121, baseType: !415, size: 64, offset: 640)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4327, file: !4328, line: 122, baseType: !415, size: 64, offset: 704)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4327, file: !4328, line: 123, baseType: !415, size: 64, offset: 768)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4327, file: !4328, line: 124, baseType: !415, size: 64, offset: 832)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4327, file: !4328, line: 125, baseType: !415, size: 64, offset: 896)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4327, file: !4328, line: 139, baseType: !415, size: 64, offset: 960)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4327, file: !4328, line: 142, baseType: !415, size: 64, offset: 1024)
!4347 = !DIDerivedType(tag: DW_TAG_member, scope: !4327, file: !4328, line: 144, baseType: !4348, size: 64, offset: 1088)
!4348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4327, file: !4328, line: 144, size: 64, elements: !4349)
!4349 = !{!4350, !4351, !4352}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4348, file: !4328, line: 146, baseType: !399, size: 16)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4348, file: !4328, line: 148, baseType: !476, size: 64)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4348, file: !4328, line: 150, baseType: !4353, size: 64)
!4353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4328, line: 59, size: 64, elements: !4354)
!4354 = !{!4355, !4356, !4357}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4353, file: !4328, line: 61, baseType: !476, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4353, file: !4328, line: 63, baseType: !476, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4353, file: !4328, line: 65, baseType: !476, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4327, file: !4328, line: 153, baseType: !415, size: 64, offset: 1152)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4327, file: !4328, line: 154, baseType: !415, size: 64, offset: 1216)
!4360 = !DIDerivedType(tag: DW_TAG_member, scope: !4327, file: !4328, line: 156, baseType: !4361, size: 64, offset: 1280)
!4361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4327, file: !4328, line: 156, size: 64, elements: !4362)
!4362 = !{!4363, !4364, !4365}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4361, file: !4328, line: 158, baseType: !399, size: 16)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4361, file: !4328, line: 160, baseType: !476, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4361, file: !4328, line: 162, baseType: !4366, size: 64)
!4366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4328, line: 69, size: 64, elements: !4367)
!4367 = !{!4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4366, file: !4328, line: 71, baseType: !476, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4366, file: !4328, line: 73, baseType: !476, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4366, file: !4328, line: 75, baseType: !476, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4366, file: !4328, line: 77, baseType: !476, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4366, file: !4328, line: 80, baseType: !476, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4366, file: !4328, line: 83, baseType: !476, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4366, file: !4328, line: 86, baseType: !476, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4366, file: !4328, line: 88, baseType: !476, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4366, file: !4328, line: 93, baseType: !476, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4366, file: !4328, line: 100, baseType: !476, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4303, file: !4230, line: 96, baseType: !418, size: 32, offset: 1024)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4248, file: !4230, line: 352, baseType: !4380, size: 4608, align: 512)
!4380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4230, line: 333, size: 4608, align: 512, elements: !4381)
!4381 = !{!4382, !4383, !4390}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4380, file: !4230, line: 334, baseType: !4266, size: 4096, align: 128)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4380, file: !4230, line: 335, baseType: !4384, size: 512, offset: 4096)
!4384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4230, line: 312, size: 512, elements: !4385)
!4385 = !{!4386, !4387, !4388}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4384, file: !4230, line: 313, baseType: !476, size: 64)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4384, file: !4230, line: 314, baseType: !476, size: 64, offset: 64)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4384, file: !4230, line: 315, baseType: !4389, size: 384, offset: 128)
!4389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 384, elements: !1025)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4380, file: !4230, line: 336, baseType: !4391, offset: 4608)
!4391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, elements: !917)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4248, file: !4230, line: 353, baseType: !4393, size: 32768)
!4393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 32768, elements: !4394)
!4394 = !{!4395}
!4395 = !DISubrange(count: 4096)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4229, file: !4230, line: 484, baseType: !4235, size: 64, offset: 192)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4229, file: !4230, line: 491, baseType: !4398, size: 128, offset: 256)
!4398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4230, line: 404, size: 128, elements: !4399)
!4399 = !{!4400, !4401, !4402}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4398, file: !4230, line: 424, baseType: !476, size: 64)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4398, file: !4230, line: 432, baseType: !18, size: 32, offset: 64)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4398, file: !4230, line: 440, baseType: !18, size: 32, offset: 96)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4229, file: !4230, line: 498, baseType: !4398, size: 128, offset: 384)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4229, file: !4230, line: 508, baseType: !4236, size: 33280, align: 512, offset: 512)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "current_work", scope: !364, file: !347, line: 129, baseType: !361, size: 64, offset: 384)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "canceling", scope: !346, file: !347, line: 137, baseType: !120, size: 32, offset: 256)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !342, file: !343, line: 33, baseType: !4408, size: 64, offset: 320)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !4410, line: 91, size: 2432, elements: !4411)
!4410 = !DIFile(filename: "./include/drm/drm_vblank.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03c3f5f08fd7c156883238a0e593b6d6")
!4411 = !{!4412, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4409, file: !4410, line: 95, baseType: !4413, size: 64)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !205, line: 50, size: 12736, elements: !4415)
!4415 = !{!4416, !4417, !4418, !4869, !4875, !4880, !4881, !4893, !4894, !4895, !4896, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !5251, !5252, !5253, !5256, !5259, !5260, !5263, !5264}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !4414, file: !205, line: 52, baseType: !120, size: 32)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4414, file: !205, line: 55, baseType: !2248, size: 32, offset: 32)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4414, file: !205, line: 58, baseType: !4419, size: 64, offset: 64)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !105, line: 705, size: 5824, elements: !4421)
!4421 = !{!4422, !4423, !4424, !4427, !4428, !4481, !4551, !4552, !4553, !4554, !4555, !4562, !4654, !4667, !4677, !4681, !4683, !4684, !4685, !4689, !4696, !4697, !4700, !4703, !4707, !4811, !4812, !4813, !4814, !4815, !4816, !4846, !4847, !4848, !4851, !4854, !4863, !4864, !4865, !4866, !4867, !4868}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4420, file: !105, line: 706, baseType: !1444, size: 512)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4420, file: !105, line: 707, baseType: !4419, size: 64, offset: 512)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4420, file: !105, line: 709, baseType: !4425, size: 64, offset: 576)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !105, line: 37, flags: DIFlagFwdDecl)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4420, file: !105, line: 711, baseType: !1041, size: 64, offset: 640)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4420, file: !105, line: 712, baseType: !4429, size: 64, offset: 704)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4431)
!4431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !105, line: 89, size: 384, elements: !4432)
!4432 = !{!4433, !4434, !4435, !4441, !4446, !4450}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4431, file: !105, line: 90, baseType: !1041, size: 64)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4431, file: !105, line: 91, baseType: !1524, size: 64, offset: 64)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4431, file: !105, line: 92, baseType: !4436, size: 64, offset: 128)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!120, !4439, !1480}
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4420)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4431, file: !105, line: 93, baseType: !4442, size: 64, offset: 192)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{!1051, !4439, !4445, !2101, !2102}
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4431, file: !105, line: 95, baseType: !4447, size: 64, offset: 256)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{null, !4419}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4431, file: !105, line: 97, baseType: !4451, size: 64, offset: 320)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4453)
!4453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !112, line: 286, size: 1472, elements: !4454)
!4454 = !{!4455, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4453, file: !112, line: 287, baseType: !4456, size: 64)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!120, !4419}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4453, file: !112, line: 288, baseType: !4447, size: 64, offset: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4453, file: !112, line: 289, baseType: !4456, size: 64, offset: 128)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4453, file: !112, line: 290, baseType: !4456, size: 64, offset: 192)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4453, file: !112, line: 291, baseType: !4456, size: 64, offset: 256)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4453, file: !112, line: 292, baseType: !4456, size: 64, offset: 320)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4453, file: !112, line: 293, baseType: !4456, size: 64, offset: 384)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4453, file: !112, line: 294, baseType: !4456, size: 64, offset: 448)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4453, file: !112, line: 295, baseType: !4456, size: 64, offset: 512)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4453, file: !112, line: 296, baseType: !4456, size: 64, offset: 576)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4453, file: !112, line: 297, baseType: !4456, size: 64, offset: 640)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4453, file: !112, line: 298, baseType: !4456, size: 64, offset: 704)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4453, file: !112, line: 299, baseType: !4456, size: 64, offset: 768)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4453, file: !112, line: 300, baseType: !4456, size: 64, offset: 832)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4453, file: !112, line: 301, baseType: !4456, size: 64, offset: 896)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4453, file: !112, line: 302, baseType: !4456, size: 64, offset: 960)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4453, file: !112, line: 303, baseType: !4456, size: 64, offset: 1024)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4453, file: !112, line: 304, baseType: !4456, size: 64, offset: 1088)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4453, file: !112, line: 305, baseType: !4456, size: 64, offset: 1152)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4453, file: !112, line: 306, baseType: !4456, size: 64, offset: 1216)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4453, file: !112, line: 307, baseType: !4456, size: 64, offset: 1280)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4453, file: !112, line: 308, baseType: !4456, size: 64, offset: 1344)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4453, file: !112, line: 309, baseType: !4456, size: 64, offset: 1408)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4420, file: !105, line: 714, baseType: !4482, size: 64, offset: 768)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4484)
!4484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4485, line: 80, size: 1344, elements: !4486)
!4485 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4486 = !{!4487, !4488, !4489, !4490, !4491, !4492, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4550}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4484, file: !4485, line: 81, baseType: !1041, size: 64)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4484, file: !4485, line: 82, baseType: !1041, size: 64, offset: 64)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4484, file: !4485, line: 83, baseType: !1524, size: 64, offset: 128)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4484, file: !4485, line: 84, baseType: !1524, size: 64, offset: 192)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4484, file: !4485, line: 85, baseType: !1524, size: 64, offset: 256)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4484, file: !4485, line: 87, baseType: !4493, size: 64, offset: 320)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!120, !4419, !4496}
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !99, line: 96, size: 1152, elements: !4498)
!4498 = !{!4499, !4500, !4501, !4502, !4503, !4504, !4505, !4509, !4513, !4514, !4515, !4516, !4517, !4525, !4526, !4527, !4528, !4529, !4530}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4497, file: !99, line: 97, baseType: !1041, size: 64)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4497, file: !99, line: 98, baseType: !4482, size: 64, offset: 64)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4497, file: !99, line: 100, baseType: !1431, size: 64, offset: 128)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4497, file: !99, line: 101, baseType: !1041, size: 64, offset: 192)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4497, file: !99, line: 103, baseType: !1038, size: 8, offset: 256)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4497, file: !99, line: 104, baseType: !98, size: 32, offset: 288)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4497, file: !99, line: 106, baseType: !4506, size: 64, offset: 320)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4508)
!4508 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !99, line: 106, flags: DIFlagFwdDecl)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4497, file: !99, line: 107, baseType: !4510, size: 64, offset: 384)
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4512)
!4512 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !99, line: 107, flags: DIFlagFwdDecl)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4497, file: !99, line: 109, baseType: !4456, size: 64, offset: 448)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4497, file: !99, line: 110, baseType: !4447, size: 64, offset: 512)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4497, file: !99, line: 111, baseType: !4456, size: 64, offset: 576)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4497, file: !99, line: 112, baseType: !4447, size: 64, offset: 640)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4497, file: !99, line: 113, baseType: !4518, size: 64, offset: 704)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DISubroutineType(types: !4520)
!4520 = !{!120, !4419, !4521}
!4521 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !112, line: 60, baseType: !4522)
!4522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !112, line: 58, size: 32, elements: !4523)
!4523 = !{!4524}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4522, file: !112, line: 59, baseType: !120, size: 32)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4497, file: !99, line: 114, baseType: !4456, size: 64, offset: 768)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4497, file: !99, line: 115, baseType: !1524, size: 64, offset: 832)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4497, file: !99, line: 116, baseType: !1524, size: 64, offset: 896)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4497, file: !99, line: 118, baseType: !4451, size: 64, offset: 960)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4497, file: !99, line: 119, baseType: !4447, size: 64, offset: 1024)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4497, file: !99, line: 121, baseType: !4531, size: 64, offset: 1088)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !99, line: 121, flags: DIFlagFwdDecl)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4484, file: !4485, line: 88, baseType: !4436, size: 64, offset: 384)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4484, file: !4485, line: 89, baseType: !4456, size: 64, offset: 448)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4484, file: !4485, line: 90, baseType: !4447, size: 64, offset: 512)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4484, file: !4485, line: 91, baseType: !4447, size: 64, offset: 576)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4484, file: !4485, line: 92, baseType: !4447, size: 64, offset: 640)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4484, file: !4485, line: 94, baseType: !4456, size: 64, offset: 704)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4484, file: !4485, line: 95, baseType: !4456, size: 64, offset: 768)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4484, file: !4485, line: 97, baseType: !4518, size: 64, offset: 832)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4484, file: !4485, line: 98, baseType: !4456, size: 64, offset: 896)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4484, file: !4485, line: 100, baseType: !4456, size: 64, offset: 960)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4484, file: !4485, line: 102, baseType: !4456, size: 64, offset: 1024)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4484, file: !4485, line: 103, baseType: !4447, size: 64, offset: 1088)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4484, file: !4485, line: 105, baseType: !4451, size: 64, offset: 1152)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4484, file: !4485, line: 107, baseType: !4547, size: 64, offset: 1216)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4549)
!4549 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4485, line: 107, flags: DIFlagFwdDecl)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4484, file: !4485, line: 109, baseType: !1038, size: 8, offset: 1280)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4420, file: !105, line: 715, baseType: !4496, size: 64, offset: 832)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4420, file: !105, line: 717, baseType: !340, size: 64, offset: 896)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4420, file: !105, line: 719, baseType: !340, size: 64, offset: 960)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4420, file: !105, line: 721, baseType: !790, size: 256, offset: 1024)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4420, file: !105, line: 725, baseType: !4556, size: 448, offset: 1280)
!4556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !105, line: 517, size: 448, elements: !4557)
!4557 = !{!4558, !4559, !4560, !4561}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4556, file: !105, line: 518, baseType: !350, size: 128)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4556, file: !105, line: 519, baseType: !350, size: 128, offset: 128)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4556, file: !105, line: 520, baseType: !350, size: 128, offset: 256)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4556, file: !105, line: 521, baseType: !104, size: 32, offset: 384)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4420, file: !105, line: 726, baseType: !4563, size: 2496, offset: 1728)
!4563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !112, line: 663, size: 2496, elements: !4564)
!4564 = !{!4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4647, !4651}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4563, file: !112, line: 664, baseType: !4521, size: 32)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4563, file: !112, line: 665, baseType: !18, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4563, file: !112, line: 666, baseType: !18, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4563, file: !112, line: 667, baseType: !1038, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4563, file: !112, line: 668, baseType: !1038, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4563, file: !112, line: 669, baseType: !1038, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4563, file: !112, line: 670, baseType: !1038, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4563, file: !112, line: 671, baseType: !1038, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4563, file: !112, line: 672, baseType: !1038, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4563, file: !112, line: 673, baseType: !1038, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4563, file: !112, line: 674, baseType: !1038, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4563, file: !112, line: 675, baseType: !418, size: 32, offset: 64)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4563, file: !112, line: 676, baseType: !744, size: 32, offset: 96)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4563, file: !112, line: 678, baseType: !350, size: 128, offset: 128)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4563, file: !112, line: 679, baseType: !1653, size: 256, offset: 256)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4563, file: !112, line: 680, baseType: !4581, size: 64, offset: 512)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4583, line: 43, size: 1536, elements: !4584)
!4583 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4584 = !{!4585, !4586, !4587, !4588, !4589, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4582, file: !4583, line: 44, baseType: !1041, size: 64)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4582, file: !4583, line: 45, baseType: !120, size: 32, offset: 64)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4582, file: !4583, line: 46, baseType: !350, size: 128, offset: 128)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4582, file: !4583, line: 47, baseType: !744, size: 32, offset: 256)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4582, file: !4583, line: 48, baseType: !4590, size: 64, offset: 320)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !112, line: 629, flags: DIFlagFwdDecl)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4582, file: !4583, line: 49, baseType: !2502, size: 320, offset: 384)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4582, file: !4583, line: 50, baseType: !415, size: 64, offset: 704)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4582, file: !4583, line: 51, baseType: !552, size: 64, offset: 768)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4582, file: !4583, line: 52, baseType: !552, size: 64, offset: 832)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4582, file: !4583, line: 53, baseType: !552, size: 64, offset: 896)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4582, file: !4583, line: 54, baseType: !552, size: 64, offset: 960)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4582, file: !4583, line: 55, baseType: !552, size: 64, offset: 1024)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4582, file: !4583, line: 56, baseType: !415, size: 64, offset: 1088)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4582, file: !4583, line: 57, baseType: !415, size: 64, offset: 1152)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4582, file: !4583, line: 58, baseType: !415, size: 64, offset: 1216)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4582, file: !4583, line: 59, baseType: !415, size: 64, offset: 1280)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4582, file: !4583, line: 60, baseType: !415, size: 64, offset: 1344)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4582, file: !4583, line: 61, baseType: !4419, size: 64, offset: 1408)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4582, file: !4583, line: 62, baseType: !1038, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4582, file: !4583, line: 63, baseType: !1038, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4563, file: !112, line: 681, baseType: !1038, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4563, file: !112, line: 682, baseType: !1038, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4563, file: !112, line: 683, baseType: !1038, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4563, file: !112, line: 684, baseType: !18, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4563, file: !112, line: 685, baseType: !18, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4563, file: !112, line: 690, baseType: !544, size: 512, offset: 640)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4563, file: !112, line: 691, baseType: !476, size: 64, offset: 1152)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4563, file: !112, line: 692, baseType: !2514, size: 256, offset: 1216)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4563, file: !112, line: 693, baseType: !853, size: 192, offset: 1472)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4563, file: !112, line: 694, baseType: !4590, size: 64, offset: 1664)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4563, file: !112, line: 695, baseType: !381, size: 32, offset: 1728)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4563, file: !112, line: 696, baseType: !381, size: 32, offset: 1760)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4563, file: !112, line: 697, baseType: !18, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4563, file: !112, line: 698, baseType: !18, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4563, file: !112, line: 699, baseType: !18, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4563, file: !112, line: 700, baseType: !18, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4563, file: !112, line: 701, baseType: !18, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4563, file: !112, line: 702, baseType: !18, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4563, file: !112, line: 703, baseType: !1038, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4563, file: !112, line: 704, baseType: !18, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4563, file: !112, line: 705, baseType: !18, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4563, file: !112, line: 706, baseType: !18, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4563, file: !112, line: 707, baseType: !18, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4563, file: !112, line: 708, baseType: !18, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4563, file: !112, line: 709, baseType: !18, size: 32, offset: 1824)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4563, file: !112, line: 710, baseType: !111, size: 32, offset: 1856)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4563, file: !112, line: 711, baseType: !119, size: 32, offset: 1888)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4563, file: !112, line: 712, baseType: !119, size: 32, offset: 1920)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4563, file: !112, line: 713, baseType: !120, size: 32, offset: 1952)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4563, file: !112, line: 714, baseType: !120, size: 32, offset: 1984)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4563, file: !112, line: 715, baseType: !476, size: 64, offset: 2048)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4563, file: !112, line: 716, baseType: !476, size: 64, offset: 2112)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4563, file: !112, line: 717, baseType: !476, size: 64, offset: 2176)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4563, file: !112, line: 718, baseType: !476, size: 64, offset: 2240)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4563, file: !112, line: 720, baseType: !4642, size: 64, offset: 2304)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !112, line: 632, size: 64, elements: !4644)
!4644 = !{!4645, !4646}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4643, file: !112, line: 633, baseType: !744, size: 32)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4643, file: !112, line: 634, baseType: !18, size: 32, offset: 32)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4563, file: !112, line: 721, baseType: !4648, size: 64, offset: 2368)
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{null, !4419, !971}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4563, file: !112, line: 722, baseType: !4652, size: 64, offset: 2432)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !112, line: 722, flags: DIFlagFwdDecl)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4420, file: !105, line: 727, baseType: !4655, size: 64, offset: 4224)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !112, line: 742, size: 1792, elements: !4657)
!4657 = !{!4658, !4659, !4660, !4664, !4665, !4666}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4656, file: !112, line: 743, baseType: !4453, size: 1472)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4656, file: !112, line: 744, baseType: !4456, size: 64, offset: 1472)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4656, file: !112, line: 745, baseType: !4661, size: 64, offset: 1536)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{null, !4419, !1038}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4656, file: !112, line: 746, baseType: !4456, size: 64, offset: 1600)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4656, file: !112, line: 747, baseType: !4447, size: 64, offset: 1664)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4656, file: !112, line: 748, baseType: !4447, size: 64, offset: 1728)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4420, file: !105, line: 736, baseType: !4668, size: 128, offset: 4288)
!4668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !105, line: 529, size: 128, elements: !4669)
!4669 = !{!4670, !4674}
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4668, file: !105, line: 531, baseType: !4671, size: 64)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4673, line: 13, flags: DIFlagFwdDecl)
!4673 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4668, file: !105, line: 532, baseType: !4675, size: 64, offset: 64)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !105, line: 49, flags: DIFlagFwdDecl)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4420, file: !105, line: 738, baseType: !4678, size: 64, offset: 4416)
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4680)
!4680 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !105, line: 738, flags: DIFlagFwdDecl)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4420, file: !105, line: 740, baseType: !4682, size: 64, offset: 4480)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4420, file: !105, line: 741, baseType: !476, size: 64, offset: 4544)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4420, file: !105, line: 746, baseType: !476, size: 64, offset: 4608)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4420, file: !105, line: 747, baseType: !4686, size: 64, offset: 4672)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4688)
!4688 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !105, line: 747, flags: DIFlagFwdDecl)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4420, file: !105, line: 749, baseType: !4690, size: 64, offset: 4736)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !105, line: 428, size: 128, elements: !4692)
!4692 = !{!4693, !4694, !4695}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4691, file: !105, line: 433, baseType: !18, size: 32)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4691, file: !105, line: 434, baseType: !18, size: 32, offset: 32)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4691, file: !105, line: 435, baseType: !415, size: 64, offset: 64)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4420, file: !105, line: 751, baseType: !350, size: 128, offset: 4800)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4420, file: !105, line: 762, baseType: !4698, size: 64, offset: 4928)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !105, line: 762, flags: DIFlagFwdDecl)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4420, file: !105, line: 770, baseType: !4701, offset: 4992)
!4701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4702, line: 5, elements: !755)
!4702 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4420, file: !105, line: 772, baseType: !4704, size: 64, offset: 4992)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4706, line: 18, flags: DIFlagFwdDecl)
!4706 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4420, file: !105, line: 773, baseType: !4708, size: 64, offset: 5056)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4710, line: 41, size: 512, elements: !4711)
!4710 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4711 = !{!4712, !4713, !4807, !4808, !4809, !4810}
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4709, file: !4710, line: 42, baseType: !4708, size: 64)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4709, file: !4710, line: 43, baseType: !4714, size: 64, offset: 64)
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4716)
!4716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4710, line: 125, size: 1408, elements: !4717)
!4717 = !{!4718, !4722, !4726, !4732, !4736, !4737, !4742, !4746, !4750, !4754, !4758, !4759, !4763, !4767, !4771, !4782, !4783, !4784, !4785, !4795, !4799, !4803}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4716, file: !4710, line: 126, baseType: !4719, size: 64)
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = !DISubroutineType(types: !4721)
!4721 = !{!4708, !4708}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4716, file: !4710, line: 127, baseType: !4723, size: 64, offset: 64)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = !DISubroutineType(types: !4725)
!4725 = !{null, !4708}
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4716, file: !4710, line: 128, baseType: !4727, size: 64, offset: 128)
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = !DISubroutineType(types: !4729)
!4729 = !{!1038, !4730}
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4709)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4716, file: !4710, line: 129, baseType: !4733, size: 64, offset: 192)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DISubroutineType(types: !4735)
!4735 = !{!2084, !4730, !4439}
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4716, file: !4710, line: 131, baseType: !4727, size: 64, offset: 256)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4716, file: !4710, line: 133, baseType: !4738, size: 64, offset: 320)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{!4741, !4730}
!4741 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4710, line: 132, flags: DIFlagFwdDecl)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4716, file: !4710, line: 134, baseType: !4743, size: 64, offset: 384)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = !DISubroutineType(types: !4745)
!4745 = !{!1038, !4730, !1041}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4716, file: !4710, line: 136, baseType: !4747, size: 64, offset: 448)
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4748, size: 64)
!4748 = !DISubroutineType(types: !4749)
!4749 = !{!120, !4730, !1041, !18, !340, !1349}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4716, file: !4710, line: 141, baseType: !4751, size: 64, offset: 512)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{!120, !4730, !1041, !2590, !1349}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4716, file: !4710, line: 144, baseType: !4755, size: 64, offset: 576)
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4756, size: 64)
!4756 = !DISubroutineType(types: !4757)
!4757 = !{!1041, !4730}
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4716, file: !4710, line: 145, baseType: !4755, size: 64, offset: 640)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4716, file: !4710, line: 146, baseType: !4760, size: 64, offset: 704)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DISubroutineType(types: !4762)
!4762 = !{!4708, !4730}
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4716, file: !4710, line: 148, baseType: !4764, size: 64, offset: 768)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!4708, !4730, !4708}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4716, file: !4710, line: 151, baseType: !4768, size: 64, offset: 832)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{!4708, !4730, !1041}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4716, file: !4710, line: 153, baseType: !4772, size: 64, offset: 896)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = !DISubroutineType(types: !4774)
!4774 = !{!120, !4730, !1041, !1041, !18, !18, !4775}
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4710, line: 94, size: 640, elements: !4777)
!4777 = !{!4778, !4779, !4780}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4776, file: !4710, line: 95, baseType: !4708, size: 64)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4776, file: !4710, line: 96, baseType: !18, size: 32, offset: 64)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4776, file: !4710, line: 97, baseType: !4781, size: 512, offset: 128)
!4781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 512, elements: !587)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4716, file: !4710, line: 158, baseType: !4764, size: 64, offset: 960)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4716, file: !4710, line: 161, baseType: !4760, size: 64, offset: 1024)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4716, file: !4710, line: 163, baseType: !4719, size: 64, offset: 1088)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4716, file: !4710, line: 164, baseType: !4786, size: 64, offset: 1152)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!120, !4730, !4789}
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!4790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4710, line: 73, size: 128, elements: !4791)
!4791 = !{!4792, !4793, !4794}
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4790, file: !4710, line: 74, baseType: !18, size: 32)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4790, file: !4710, line: 75, baseType: !18, size: 32, offset: 32)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4790, file: !4710, line: 76, baseType: !4730, size: 64, offset: 64)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4716, file: !4710, line: 166, baseType: !4796, size: 64, offset: 1216)
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{!340, !4708, !120}
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4716, file: !4710, line: 167, baseType: !4800, size: 64, offset: 1280)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{!120, !4730, !18}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4716, file: !4710, line: 168, baseType: !4804, size: 64, offset: 1344)
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = !DISubroutineType(types: !4806)
!4806 = !{!120, !4708}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4709, file: !4710, line: 44, baseType: !4419, size: 64, offset: 128)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4709, file: !4710, line: 45, baseType: !350, size: 128, offset: 192)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4709, file: !4710, line: 46, baseType: !350, size: 128, offset: 320)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4709, file: !4710, line: 47, baseType: !389, size: 8, offset: 448)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4420, file: !105, line: 776, baseType: !120, size: 32, offset: 5120)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4420, file: !105, line: 778, baseType: !1267, size: 32, offset: 5152)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4420, file: !105, line: 779, baseType: !418, size: 32, offset: 5184)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4420, file: !105, line: 781, baseType: !744, size: 32, offset: 5216)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4420, file: !105, line: 782, baseType: !350, size: 128, offset: 5248)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4420, file: !105, line: 784, baseType: !4817, size: 64, offset: 5376)
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4819)
!4819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4820, line: 52, size: 768, elements: !4821)
!4820 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4821 = !{!4822, !4823, !4824, !4825, !4826, !4830, !4834, !4835, !4836, !4837, !4841, !4845}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4819, file: !4820, line: 53, baseType: !1041, size: 64)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4819, file: !4820, line: 55, baseType: !1524, size: 64, offset: 64)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4819, file: !4820, line: 56, baseType: !1524, size: 64, offset: 128)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4819, file: !4820, line: 58, baseType: !4436, size: 64, offset: 192)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4819, file: !4820, line: 59, baseType: !4827, size: 64, offset: 256)
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4828 = !DISubroutineType(types: !4829)
!4829 = !{!1051, !4439, !4445}
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4819, file: !4820, line: 61, baseType: !4831, size: 64, offset: 320)
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4832 = !DISubroutineType(types: !4833)
!4833 = !{null, !4817}
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4819, file: !4820, line: 62, baseType: !4447, size: 64, offset: 384)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4819, file: !4820, line: 64, baseType: !4456, size: 64, offset: 448)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4819, file: !4820, line: 66, baseType: !2067, size: 64, offset: 512)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4819, file: !4820, line: 67, baseType: !4838, size: 64, offset: 576)
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4839, size: 64)
!4839 = !DISubroutineType(types: !4840)
!4840 = !{!2084, !4439}
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4819, file: !4820, line: 69, baseType: !4842, size: 64, offset: 640)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{null, !4439, !2101, !2102}
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4819, file: !4820, line: 71, baseType: !4451, size: 64, offset: 704)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4420, file: !105, line: 785, baseType: !1524, size: 64, offset: 5440)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4420, file: !105, line: 787, baseType: !4447, size: 64, offset: 5504)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4420, file: !105, line: 788, baseType: !4849, size: 64, offset: 5568)
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4850 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !105, line: 46, flags: DIFlagFwdDecl)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4420, file: !105, line: 789, baseType: !4852, size: 64, offset: 5632)
!4852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4853, size: 64)
!4853 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !105, line: 48, flags: DIFlagFwdDecl)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4420, file: !105, line: 791, baseType: !4855, size: 64, offset: 5696)
!4855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4856, size: 64)
!4856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !105, line: 597, size: 128, elements: !4857)
!4857 = !{!4858, !4859, !4860, !4861, !4862}
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4856, file: !105, line: 598, baseType: !127, size: 32)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4856, file: !105, line: 599, baseType: !136, size: 32, offset: 32)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4856, file: !105, line: 600, baseType: !141, size: 32, offset: 64)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4856, file: !105, line: 601, baseType: !1038, size: 8, offset: 96)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4856, file: !105, line: 602, baseType: !1038, size: 8, offset: 104)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4420, file: !105, line: 793, baseType: !146, size: 32, offset: 5760)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4420, file: !105, line: 795, baseType: !1038, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4420, file: !105, line: 796, baseType: !1038, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4420, file: !105, line: 797, baseType: !1038, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4420, file: !105, line: 798, baseType: !1038, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4420, file: !105, line: 799, baseType: !1038, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !4414, file: !205, line: 73, baseType: !4870, size: 256, offset: 128)
!4870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4414, file: !205, line: 66, size: 256, elements: !4871)
!4871 = !{!4872, !4873, !4874}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4870, file: !205, line: 68, baseType: !350, size: 128)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !4870, file: !205, line: 70, baseType: !340, size: 64, offset: 128)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4870, file: !205, line: 72, baseType: !744, size: 32, offset: 192)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4414, file: !205, line: 76, baseType: !4876, size: 64, offset: 384)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4878)
!4878 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !4879, line: 42, flags: DIFlagFwdDecl)
!4879 = !DIFile(filename: "./include/drm/drm_legacy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0a48cbf735602b48f7f8b8e0cbee53a7")
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !4414, file: !205, line: 88, baseType: !340, size: 64, offset: 448)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4414, file: !205, line: 98, baseType: !4882, size: 64, offset: 512)
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !4884, line: 77, size: 640, elements: !4885)
!4884 = !DIFile(filename: "./include/drm/drm_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f20734895d003ad7da48316ffd72e54c")
!4885 = !{!4886, !4887, !4888, !4889, !4890, !4891, !4892}
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4883, file: !4884, line: 79, baseType: !120, size: 32)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4883, file: !4884, line: 80, baseType: !120, size: 32, offset: 32)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !4883, file: !4884, line: 81, baseType: !4419, size: 64, offset: 64)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4883, file: !4884, line: 82, baseType: !4413, size: 64, offset: 128)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_root", scope: !4883, file: !4884, line: 84, baseType: !1157, size: 64, offset: 192)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !4883, file: !4884, line: 86, baseType: !350, size: 128, offset: 256)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_lock", scope: !4883, file: !4884, line: 87, baseType: !790, size: 256, offset: 384)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !4414, file: !205, line: 107, baseType: !4882, size: 64, offset: 576)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !4414, file: !205, line: 110, baseType: !4882, size: 64, offset: 640)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4414, file: !205, line: 117, baseType: !1038, size: 8, offset: 704)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !4414, file: !205, line: 125, baseType: !4897, size: 64, offset: 768)
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4898, size: 64)
!4898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !4899, line: 65, size: 1280, elements: !4900)
!4899 = !DIFile(filename: "./include/drm/drm_auth.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10e944a391afc2612335b30db18d0dee")
!4900 = !{!4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912}
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4898, file: !4899, line: 66, baseType: !2248, size: 32)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4898, file: !4899, line: 67, baseType: !4413, size: 64, offset: 64)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !4898, file: !4899, line: 72, baseType: !1051, size: 64, offset: 128)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "unique_len", scope: !4898, file: !4899, line: 77, baseType: !120, size: 32, offset: 192)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "magic_map", scope: !4898, file: !4899, line: 82, baseType: !871, size: 192, offset: 256)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !4898, file: !4899, line: 83, baseType: !340, size: 64, offset: 448)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "lessor", scope: !4898, file: !4899, line: 99, baseType: !4897, size: 64, offset: 512)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_id", scope: !4898, file: !4899, line: 107, baseType: !120, size: 32, offset: 576)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_list", scope: !4898, file: !4899, line: 116, baseType: !350, size: 128, offset: 640)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "lessees", scope: !4898, file: !4899, line: 128, baseType: !350, size: 128, offset: 768)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "leases", scope: !4898, file: !4899, line: 139, baseType: !871, size: 192, offset: 896)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_idr", scope: !4898, file: !4899, line: 147, baseType: !871, size: 192, offset: 1088)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !4414, file: !205, line: 135, baseType: !418, size: 32, offset: 832)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !4414, file: !205, line: 143, baseType: !1038, size: 8, offset: 864)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !4414, file: !205, line: 146, baseType: !1192, size: 64, offset: 896)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !4414, file: !205, line: 149, baseType: !1051, size: 64, offset: 960)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !4414, file: !205, line: 159, baseType: !790, size: 256, offset: 1024)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !4414, file: !205, line: 166, baseType: !790, size: 256, offset: 1280)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !4414, file: !205, line: 174, baseType: !381, size: 32, offset: 1536)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !4414, file: !205, line: 177, baseType: !790, size: 256, offset: 1600)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !4414, file: !205, line: 183, baseType: !350, size: 128, offset: 1856)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !4414, file: !205, line: 191, baseType: !350, size: 128, offset: 1984)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !4414, file: !205, line: 198, baseType: !790, size: 256, offset: 2112)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !4414, file: !205, line: 205, baseType: !350, size: 128, offset: 2368)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !4414, file: !205, line: 220, baseType: !1038, size: 8, offset: 2496)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !4414, file: !205, line: 230, baseType: !4408, size: 64, offset: 2560)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !4414, file: !205, line: 237, baseType: !744, size: 32, offset: 2624)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !4414, file: !205, line: 242, baseType: !744, size: 32, offset: 2656)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !4414, file: !205, line: 265, baseType: !418, size: 32, offset: 2688)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !4414, file: !205, line: 268, baseType: !350, size: 128, offset: 2752)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !4414, file: !205, line: 276, baseType: !744, size: 32, offset: 2880)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !4414, file: !205, line: 279, baseType: !18, size: 32, offset: 2912)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !4414, file: !205, line: 282, baseType: !4934, size: 8704, offset: 2944)
!4934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !4935, line: 375, size: 8704, elements: !4936)
!4935 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3fe2bd3e9391801689324df8a16c9607")
!4936 = !{!4937, !4938, !4957, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !5137, !5138, !5139, !5140, !5141, !5142, !5143, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4934, file: !4935, line: 386, baseType: !790, size: 256)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !4934, file: !4935, line: 396, baseType: !4939, size: 448, offset: 256)
!4939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !4940, line: 85, size: 448, elements: !4941)
!4940 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90e902ea14584677125d9e33023828e6")
!4941 = !{!4942, !4956}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4939, file: !4940, line: 89, baseType: !4943, size: 320)
!4943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !4944, line: 47, size: 320, elements: !4945)
!4944 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!4945 = !{!4946, !4947}
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4943, file: !4944, line: 48, baseType: !790, size: 256)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4943, file: !4944, line: 49, baseType: !4948, size: 64, offset: 256)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !4944, line: 55, size: 192, elements: !4950)
!4950 = !{!4951, !4952, !4953, !4954, !4955}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4949, file: !4944, line: 56, baseType: !406, size: 64)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !4949, file: !4944, line: 57, baseType: !415, size: 64, offset: 64)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !4949, file: !4944, line: 58, baseType: !18, size: 32, offset: 128)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !4949, file: !4944, line: 59, baseType: !401, size: 16, offset: 160)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !4949, file: !4944, line: 60, baseType: !401, size: 16, offset: 176)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4939, file: !4940, line: 95, baseType: !350, size: 128, offset: 320)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !4934, file: !4935, line: 406, baseType: !4958, size: 64, offset: 704)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !4940, line: 46, size: 512, elements: !4960)
!4960 = !{!4961, !4962, !4964, !4967, !4968, !4969}
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !4959, file: !4940, line: 48, baseType: !4949, size: 192)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !4959, file: !4940, line: 55, baseType: !4963, size: 64, offset: 192)
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "stack_depot", scope: !4959, file: !4940, line: 61, baseType: !4965, size: 32, offset: 256)
!4965 = !DIDerivedType(tag: DW_TAG_typedef, name: "depot_stack_handle_t", file: !4966, line: 27, baseType: !418)
!4966 = !DIFile(filename: "./include/linux/stackdepot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "787fdf2c1a48da25b4d7ecc2db077a40")
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !4959, file: !4940, line: 66, baseType: !350, size: 128, offset: 320)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !4959, file: !4940, line: 71, baseType: !1038, size: 8, offset: 448)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !4959, file: !4940, line: 74, baseType: !1038, size: 8, offset: 456)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !4934, file: !4935, line: 414, baseType: !790, size: 256, offset: 768)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !4934, file: !4935, line: 422, baseType: !871, size: 192, offset: 1024)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !4934, file: !4935, line: 430, baseType: !871, size: 192, offset: 1216)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !4934, file: !4935, line: 433, baseType: !790, size: 256, offset: 1408)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !4934, file: !4935, line: 435, baseType: !120, size: 32, offset: 1664)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !4934, file: !4935, line: 437, baseType: !350, size: 128, offset: 1728)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !4934, file: !4935, line: 443, baseType: !744, size: 32, offset: 1856)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !4934, file: !4935, line: 448, baseType: !120, size: 32, offset: 1888)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !4934, file: !4935, line: 452, baseType: !4979, size: 128, offset: 1920)
!4979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !872, line: 246, size: 128, elements: !4980)
!4980 = !{!4981}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4979, file: !872, line: 247, baseType: !875, size: 128)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !4934, file: !4935, line: 460, baseType: !350, size: 128, offset: 2048)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !4934, file: !4935, line: 470, baseType: !4179, size: 64, offset: 2176)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !4934, file: !4935, line: 474, baseType: !2514, size: 256, offset: 2240)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !4934, file: !4935, line: 482, baseType: !120, size: 32, offset: 2496)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !4934, file: !4935, line: 490, baseType: !350, size: 128, offset: 2560)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !4934, file: !4935, line: 499, baseType: !120, size: 32, offset: 2688)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !4934, file: !4935, line: 506, baseType: !350, size: 128, offset: 2752)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !4934, file: !4935, line: 514, baseType: !120, size: 32, offset: 2880)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !4934, file: !4935, line: 521, baseType: !350, size: 128, offset: 2944)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !4934, file: !4935, line: 530, baseType: !350, size: 128, offset: 3072)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !4934, file: !4935, line: 539, baseType: !350, size: 128, offset: 3200)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !4934, file: !4935, line: 541, baseType: !120, size: 32, offset: 3328)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !4934, file: !4935, line: 541, baseType: !120, size: 32, offset: 3360)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !4934, file: !4935, line: 542, baseType: !120, size: 32, offset: 3392)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !4934, file: !4935, line: 542, baseType: !120, size: 32, offset: 3424)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4934, file: !4935, line: 543, baseType: !4998, size: 64, offset: 3456)
!4998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4999, size: 64)
!4999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5000)
!5000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !4935, line: 47, size: 576, elements: !5001)
!5001 = !{!5002, !5065, !5072, !5076, !5118, !5124, !5128, !5132, !5136}
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !5000, file: !4935, line: 83, baseType: !5003, size: 64)
!5003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5004, size: 64)
!5004 = !DISubroutineType(types: !5005)
!5005 = !{!5006, !4413, !5008, !5050}
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5007 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !4935, line: 83, flags: DIFlagFwdDecl)
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !4884, line: 166, size: 2944, elements: !5010)
!5010 = !{!5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043}
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !5009, file: !4884, line: 176, baseType: !1038, size: 8)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !5009, file: !4884, line: 183, baseType: !1038, size: 8, offset: 8)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "universal_planes", scope: !5009, file: !4884, line: 191, baseType: !1038, size: 8, offset: 16)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "atomic", scope: !5009, file: !4884, line: 194, baseType: !1038, size: 8, offset: 24)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_allowed", scope: !5009, file: !4884, line: 202, baseType: !1038, size: 8, offset: 32)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_connectors", scope: !5009, file: !4884, line: 209, baseType: !1038, size: 8, offset: 40)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "was_master", scope: !5009, file: !4884, line: 220, baseType: !1038, size: 8, offset: 48)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "is_master", scope: !5009, file: !4884, line: 231, baseType: !1038, size: 8, offset: 56)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "supports_virtualized_cursor_plane", scope: !5009, file: !4884, line: 243, baseType: !1038, size: 8, offset: 64)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !5009, file: !4884, line: 268, baseType: !4897, size: 64, offset: 128)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "master_lookup_lock", scope: !5009, file: !4884, line: 271, baseType: !744, size: 32, offset: 192)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !5009, file: !4884, line: 281, baseType: !832, size: 64, offset: 256)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "client_id", scope: !5009, file: !4884, line: 284, baseType: !476, size: 64, offset: 320)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !5009, file: !4884, line: 287, baseType: !5025, size: 32, offset: 384)
!5025 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_magic_t", file: !5026, line: 85, baseType: !18)
!5026 = !DIFile(filename: "./include/uapi/drm/drm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9daee414dd46c3bd0bb57211914f5e3a")
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "lhead", scope: !5009, file: !4884, line: 295, baseType: !350, size: 128, offset: 448)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !5009, file: !4884, line: 298, baseType: !4882, size: 64, offset: 576)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !5009, file: !4884, line: 306, baseType: !871, size: 192, offset: 640)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "table_lock", scope: !5009, file: !4884, line: 309, baseType: !744, size: 32, offset: 832)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "syncobj_idr", scope: !5009, file: !4884, line: 312, baseType: !871, size: 192, offset: 896)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "syncobj_table_lock", scope: !5009, file: !4884, line: 314, baseType: !744, size: 32, offset: 1088)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "filp", scope: !5009, file: !4884, line: 317, baseType: !762, size: 64, offset: 1152)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !5009, file: !4884, line: 325, baseType: !340, size: 64, offset: 1216)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "fbs", scope: !5009, file: !4884, line: 336, baseType: !350, size: 128, offset: 1280)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "fbs_lock", scope: !5009, file: !4884, line: 339, baseType: !790, size: 256, offset: 1408)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "blobs", scope: !5009, file: !4884, line: 349, baseType: !350, size: 128, offset: 1664)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "event_wait", scope: !5009, file: !4884, line: 352, baseType: !853, size: 192, offset: 1792)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "pending_event_list", scope: !5009, file: !4884, line: 363, baseType: !350, size: 128, offset: 1984)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !5009, file: !4884, line: 373, baseType: !350, size: 128, offset: 2112)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "event_space", scope: !5009, file: !4884, line: 382, baseType: !120, size: 32, offset: 2240)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "event_read_lock", scope: !5009, file: !4884, line: 385, baseType: !790, size: 256, offset: 2304)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "prime", scope: !5009, file: !4884, line: 392, baseType: !5044, size: 384, offset: 2560)
!5044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_prime_file_private", file: !5045, line: 45, size: 384, elements: !5046)
!5045 = !DIFile(filename: "./include/drm/drm_prime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "95f128be875629bb4216af76254b38de")
!5046 = !{!5047, !5048, !5049}
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5044, file: !5045, line: 47, baseType: !790, size: 256)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "dmabufs", scope: !5044, file: !5045, line: 48, baseType: !612, size: 64, offset: 256)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !5044, file: !5045, line: 49, baseType: !612, size: 64, offset: 320)
!5050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5051, size: 64)
!5051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5052)
!5052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !275, line: 703, size: 832, elements: !5053)
!5053 = !{!5054, !5055, !5056, !5057, !5058, !5059, !5061, !5062, !5063}
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !5052, file: !275, line: 705, baseType: !419, size: 32)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5052, file: !275, line: 707, baseType: !419, size: 32, offset: 32)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5052, file: !275, line: 709, baseType: !419, size: 32, offset: 64)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !5052, file: !275, line: 714, baseType: !419, size: 32, offset: 96)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5052, file: !275, line: 719, baseType: !419, size: 32, offset: 128)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !5052, file: !275, line: 725, baseType: !5060, size: 128, offset: 160)
!5060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 128, elements: !849)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !5052, file: !275, line: 727, baseType: !5060, size: 128, offset: 288)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !5052, file: !275, line: 729, baseType: !5060, size: 128, offset: 416)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !5052, file: !275, line: 735, baseType: !5064, size: 256, offset: 576)
!5064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 256, elements: !849)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !5000, file: !4935, line: 98, baseType: !5066, size: 64, offset: 64)
!5066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5067, size: 64)
!5067 = !DISubroutineType(types: !5068)
!5068 = !{!5069, !5050}
!5069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5070, size: 64)
!5070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5071)
!5071 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !4935, line: 38, flags: DIFlagFwdDecl)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !5000, file: !4935, line: 114, baseType: !5073, size: 64, offset: 128)
!5073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5074, size: 64)
!5074 = !DISubroutineType(types: !5075)
!5075 = !{null, !4413}
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !5000, file: !4935, line: 124, baseType: !5077, size: 64, offset: 192)
!5077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5078, size: 64)
!5078 = !DISubroutineType(types: !5079)
!5079 = !{!152, !4413, !5080}
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5081, size: 64)
!5081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5082)
!5082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !153, line: 252, size: 960, elements: !5083)
!5083 = !{!5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117}
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !5082, file: !153, line: 258, baseType: !120, size: 32)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "hdisplay", scope: !5082, file: !153, line: 259, baseType: !399, size: 16, offset: 32)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_start", scope: !5082, file: !153, line: 260, baseType: !399, size: 16, offset: 48)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_end", scope: !5082, file: !153, line: 261, baseType: !399, size: 16, offset: 64)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "htotal", scope: !5082, file: !153, line: 262, baseType: !399, size: 16, offset: 80)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "hskew", scope: !5082, file: !153, line: 263, baseType: !399, size: 16, offset: 96)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "vdisplay", scope: !5082, file: !153, line: 264, baseType: !399, size: 16, offset: 112)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_start", scope: !5082, file: !153, line: 265, baseType: !399, size: 16, offset: 128)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_end", scope: !5082, file: !153, line: 266, baseType: !399, size: 16, offset: 144)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "vtotal", scope: !5082, file: !153, line: 267, baseType: !399, size: 16, offset: 160)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "vscan", scope: !5082, file: !153, line: 268, baseType: !399, size: 16, offset: 176)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5082, file: !153, line: 303, baseType: !418, size: 32, offset: 192)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_clock", scope: !5082, file: !153, line: 320, baseType: !120, size: 32, offset: 224)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hdisplay", scope: !5082, file: !153, line: 321, baseType: !399, size: 16, offset: 256)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_start", scope: !5082, file: !153, line: 322, baseType: !399, size: 16, offset: 272)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_end", scope: !5082, file: !153, line: 323, baseType: !399, size: 16, offset: 288)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_start", scope: !5082, file: !153, line: 324, baseType: !399, size: 16, offset: 304)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_end", scope: !5082, file: !153, line: 325, baseType: !399, size: 16, offset: 320)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_htotal", scope: !5082, file: !153, line: 326, baseType: !399, size: 16, offset: 336)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hskew", scope: !5082, file: !153, line: 327, baseType: !399, size: 16, offset: 352)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vdisplay", scope: !5082, file: !153, line: 328, baseType: !399, size: 16, offset: 368)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_start", scope: !5082, file: !153, line: 329, baseType: !399, size: 16, offset: 384)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_end", scope: !5082, file: !153, line: 330, baseType: !399, size: 16, offset: 400)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_start", scope: !5082, file: !153, line: 331, baseType: !399, size: 16, offset: 416)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_end", scope: !5082, file: !153, line: 332, baseType: !399, size: 16, offset: 432)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vtotal", scope: !5082, file: !153, line: 333, baseType: !399, size: 16, offset: 448)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !5082, file: !153, line: 341, baseType: !399, size: 16, offset: 464)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !5082, file: !153, line: 349, baseType: !399, size: 16, offset: 480)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5082, file: !153, line: 378, baseType: !389, size: 8, offset: 496)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "expose_to_userspace", scope: !5082, file: !153, line: 389, baseType: !1038, size: 8, offset: 504)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5082, file: !153, line: 396, baseType: !350, size: 128, offset: 512)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5082, file: !153, line: 403, baseType: !3000, size: 256, offset: 640)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5082, file: !153, line: 411, baseType: !152, size: 32, offset: 896)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !5082, file: !153, line: 418, baseType: !195, size: 32, offset: 928)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !5000, file: !4935, line: 201, baseType: !5119, size: 64, offset: 256)
!5119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5120, size: 64)
!5120 = !DISubroutineType(types: !5121)
!5121 = !{!120, !4413, !5122}
!5122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5123, size: 64)
!5123 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !252, line: 921, flags: DIFlagFwdDecl)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !5000, file: !4935, line: 283, baseType: !5125, size: 64, offset: 320)
!5125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5126, size: 64)
!5126 = !DISubroutineType(types: !5127)
!5127 = !{!120, !4413, !5122, !1038}
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !5000, file: !4935, line: 302, baseType: !5129, size: 64, offset: 384)
!5129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5130, size: 64)
!5130 = !DISubroutineType(types: !5131)
!5131 = !{!5122, !4413}
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !5000, file: !4935, line: 323, baseType: !5133, size: 64, offset: 448)
!5133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5134, size: 64)
!5134 = !DISubroutineType(types: !5135)
!5135 = !{null, !5122}
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !5000, file: !4935, line: 338, baseType: !5133, size: 64, offset: 512)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !4934, file: !4935, line: 546, baseType: !1038, size: 8, offset: 3520)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !4934, file: !4935, line: 547, baseType: !1038, size: 8, offset: 3528)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !4934, file: !4935, line: 548, baseType: !1038, size: 8, offset: 3536)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !4934, file: !4935, line: 549, baseType: !2570, size: 704, offset: 3584)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !4934, file: !4935, line: 557, baseType: !790, size: 256, offset: 4288)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !4934, file: !4935, line: 565, baseType: !350, size: 128, offset: 4544)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !4934, file: !4935, line: 573, baseType: !5144, size: 64, offset: 4672)
!5144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5145, size: 64)
!5145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !5146, line: 80, size: 960, elements: !5147)
!5146 = !DIFile(filename: "./include/drm/drm_property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "320ae008033d09c99df86eb5eb8877c7")
!5147 = !{!5148, !5149, !5173, !5174, !5175, !5176, !5178, !5179}
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5145, file: !5146, line: 84, baseType: !350, size: 128)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5145, file: !5146, line: 89, baseType: !5150, size: 256, offset: 128)
!5150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_object", file: !5151, line: 55, size: 256, elements: !5152)
!5151 = !DIFile(filename: "./include/drm/drm_mode_object.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ffaf2d776d1d6cf92a08dd44b890967f")
!5152 = !{!5153, !5154, !5155, !5167, !5168}
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5150, file: !5151, line: 56, baseType: !1003, size: 32)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5150, file: !5151, line: 57, baseType: !1003, size: 32, offset: 32)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5150, file: !5151, line: 58, baseType: !5156, size: 64, offset: 64)
!5156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5157, size: 64)
!5157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_object_properties", file: !5151, line: 67, size: 3136, elements: !5158)
!5158 = !{!5159, !5160, !5164}
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5157, file: !5151, line: 73, baseType: !120, size: 32)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5157, file: !5151, line: 82, baseType: !5161, size: 1536, offset: 64)
!5161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5144, size: 1536, elements: !5162)
!5162 = !{!5163}
!5163 = !DISubrange(count: 24)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !5157, file: !5151, line: 106, baseType: !5165, size: 1536, offset: 1600)
!5165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5166, size: 1536, elements: !5162)
!5166 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !351, line: 113, baseType: !476)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5150, file: !5151, line: 59, baseType: !2248, size: 32, offset: 128)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "free_cb", scope: !5150, file: !5151, line: 60, baseType: !5169, size: 64, offset: 192)
!5169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5170, size: 64)
!5170 = !DISubroutineType(types: !5171)
!5171 = !{null, !5172}
!5172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5145, file: !5146, line: 166, baseType: !1003, size: 32, offset: 384)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5145, file: !5146, line: 171, baseType: !3000, size: 256, offset: 416)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "num_values", scope: !5145, file: !5146, line: 176, baseType: !1003, size: 32, offset: 672)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !5145, file: !5146, line: 184, baseType: !5177, size: 64, offset: 704)
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5166, size: 64)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5145, file: !5146, line: 189, baseType: !4413, size: 64, offset: 768)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "enum_list", scope: !5145, file: !5146, line: 197, baseType: !350, size: 128, offset: 832)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !4934, file: !4935, line: 578, baseType: !5144, size: 64, offset: 4736)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !4934, file: !4935, line: 583, baseType: !5144, size: 64, offset: 4800)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !4934, file: !4935, line: 589, baseType: !5144, size: 64, offset: 4864)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !4934, file: !4935, line: 594, baseType: !5144, size: 64, offset: 4928)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !4934, file: !4935, line: 599, baseType: !5144, size: 64, offset: 4992)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !4934, file: !4935, line: 604, baseType: !5144, size: 64, offset: 5056)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !4934, file: !4935, line: 609, baseType: !5144, size: 64, offset: 5120)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !4934, file: !4935, line: 614, baseType: !5144, size: 64, offset: 5184)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !4934, file: !4935, line: 619, baseType: !5144, size: 64, offset: 5248)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !4934, file: !4935, line: 624, baseType: !5144, size: 64, offset: 5312)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !4934, file: !4935, line: 629, baseType: !5144, size: 64, offset: 5376)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !4934, file: !4935, line: 634, baseType: !5144, size: 64, offset: 5440)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !4934, file: !4935, line: 639, baseType: !5144, size: 64, offset: 5504)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !4934, file: !4935, line: 644, baseType: !5144, size: 64, offset: 5568)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !4934, file: !4935, line: 649, baseType: !5144, size: 64, offset: 5632)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !4934, file: !4935, line: 655, baseType: !5144, size: 64, offset: 5696)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !4934, file: !4935, line: 660, baseType: !5144, size: 64, offset: 5760)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !4934, file: !4935, line: 669, baseType: !5144, size: 64, offset: 5824)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !4934, file: !4935, line: 675, baseType: !5144, size: 64, offset: 5888)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !4934, file: !4935, line: 681, baseType: !5144, size: 64, offset: 5952)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !4934, file: !4935, line: 686, baseType: !5144, size: 64, offset: 6016)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !4934, file: !4935, line: 692, baseType: !5144, size: 64, offset: 6080)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !4934, file: !4935, line: 697, baseType: !5144, size: 64, offset: 6144)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !4934, file: !4935, line: 703, baseType: !5144, size: 64, offset: 6208)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !4934, file: !4935, line: 709, baseType: !5144, size: 64, offset: 6272)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !4934, file: !4935, line: 714, baseType: !5144, size: 64, offset: 6336)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_tv_mode_property", scope: !4934, file: !4935, line: 722, baseType: !5144, size: 64, offset: 6400)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !4934, file: !4935, line: 728, baseType: !5144, size: 64, offset: 6464)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !4934, file: !4935, line: 734, baseType: !5144, size: 64, offset: 6528)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !4934, file: !4935, line: 739, baseType: !5144, size: 64, offset: 6592)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !4934, file: !4935, line: 744, baseType: !5144, size: 64, offset: 6656)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !4934, file: !4935, line: 749, baseType: !5144, size: 64, offset: 6720)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !4934, file: !4935, line: 754, baseType: !5144, size: 64, offset: 6784)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !4934, file: !4935, line: 759, baseType: !5144, size: 64, offset: 6848)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !4934, file: !4935, line: 764, baseType: !5144, size: 64, offset: 6912)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !4934, file: !4935, line: 769, baseType: !5144, size: 64, offset: 6976)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !4934, file: !4935, line: 774, baseType: !5144, size: 64, offset: 7040)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !4934, file: !4935, line: 778, baseType: !5144, size: 64, offset: 7104)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !4934, file: !4935, line: 784, baseType: !5144, size: 64, offset: 7168)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !4934, file: !4935, line: 789, baseType: !5144, size: 64, offset: 7232)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !4934, file: !4935, line: 794, baseType: !5144, size: 64, offset: 7296)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !4934, file: !4935, line: 799, baseType: !5144, size: 64, offset: 7360)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !4934, file: !4935, line: 804, baseType: !5144, size: 64, offset: 7424)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !4934, file: !4935, line: 810, baseType: !5144, size: 64, offset: 7488)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !4934, file: !4935, line: 816, baseType: !5144, size: 64, offset: 7552)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !4934, file: !4935, line: 821, baseType: !5144, size: 64, offset: 7616)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !4934, file: !4935, line: 827, baseType: !5144, size: 64, offset: 7680)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !4934, file: !4935, line: 832, baseType: !5144, size: 64, offset: 7744)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !4934, file: !4935, line: 839, baseType: !5144, size: 64, offset: 7808)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !4934, file: !4935, line: 846, baseType: !5144, size: 64, offset: 7872)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !4934, file: !4935, line: 853, baseType: !5144, size: 64, offset: 7936)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !4934, file: !4935, line: 861, baseType: !5144, size: 64, offset: 8000)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !4934, file: !4935, line: 869, baseType: !5144, size: 64, offset: 8064)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !4934, file: !4935, line: 876, baseType: !5144, size: 64, offset: 8128)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !4934, file: !4935, line: 882, baseType: !5144, size: 64, offset: 8192)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !4934, file: !4935, line: 888, baseType: !5144, size: 64, offset: 8256)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !4934, file: !4935, line: 891, baseType: !1003, size: 32, offset: 8320)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !4934, file: !4935, line: 891, baseType: !1003, size: 32, offset: 8352)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !4934, file: !4935, line: 899, baseType: !1038, size: 8, offset: 8384)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !4934, file: !4935, line: 913, baseType: !1038, size: 8, offset: 8392)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !4934, file: !4935, line: 919, baseType: !1038, size: 8, offset: 8400)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "fb_modifiers_not_supported", scope: !4934, file: !4935, line: 929, baseType: !1038, size: 8, offset: 8408)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !4934, file: !4935, line: 937, baseType: !1038, size: 8, offset: 8416)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !4934, file: !4935, line: 943, baseType: !5144, size: 64, offset: 8448)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !4934, file: !4935, line: 946, baseType: !1003, size: 32, offset: 8512)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !4934, file: !4935, line: 946, baseType: !1003, size: 32, offset: 8544)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !4934, file: !4935, line: 955, baseType: !5122, size: 64, offset: 8576)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4934, file: !4935, line: 957, baseType: !5248, size: 64, offset: 8640)
!5248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5249, size: 64)
!5249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5250)
!5250 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !4935, line: 957, flags: DIFlagFwdDecl)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !4414, file: !205, line: 285, baseType: !790, size: 256, offset: 11648)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !4414, file: !205, line: 288, baseType: !871, size: 192, offset: 11904)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !4414, file: !205, line: 291, baseType: !5254, size: 64, offset: 12096)
!5254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5255, size: 64)
!5255 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !205, line: 16, flags: DIFlagFwdDecl)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !4414, file: !205, line: 294, baseType: !5257, size: 64, offset: 12160)
!5257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5258, size: 64)
!5258 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !205, line: 17, flags: DIFlagFwdDecl)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !4414, file: !205, line: 304, baseType: !204, size: 32, offset: 12224)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !4414, file: !205, line: 312, baseType: !5261, size: 64, offset: 12288)
!5261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5262, size: 64)
!5262 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !205, line: 18, flags: DIFlagFwdDecl)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !4414, file: !205, line: 319, baseType: !790, size: 256, offset: 12352)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !4414, file: !205, line: 327, baseType: !350, size: 128, offset: 12608)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !4409, file: !4410, line: 99, baseType: !853, size: 192, offset: 64)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "disable_timer", scope: !4409, file: !4410, line: 106, baseType: !2502, size: 320, offset: 256)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "seqlock", scope: !4409, file: !4410, line: 111, baseType: !3739, size: 64, offset: 576)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4409, file: !4410, line: 127, baseType: !785, size: 64, offset: 640)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4409, file: !4410, line: 131, baseType: !552, size: 64, offset: 704)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4409, file: !4410, line: 138, baseType: !381, size: 32, offset: 768)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !4409, file: !4410, line: 142, baseType: !418, size: 32, offset: 800)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !4409, file: !4410, line: 162, baseType: !418, size: 32, offset: 832)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "inmodeset", scope: !4409, file: !4410, line: 171, baseType: !18, size: 32, offset: 864)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4409, file: !4410, line: 176, baseType: !18, size: 32, offset: 896)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "framedur_ns", scope: !4409, file: !4410, line: 182, baseType: !120, size: 32, offset: 928)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "linedur_ns", scope: !4409, file: !4410, line: 188, baseType: !120, size: 32, offset: 960)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "hwmode", scope: !4409, file: !4410, line: 199, baseType: !5082, size: 960, offset: 1024)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4409, file: !4410, line: 207, baseType: !1038, size: 8, offset: 1984)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !4409, file: !4410, line: 212, baseType: !363, size: 64, offset: 2048)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !4409, file: !4410, line: 218, baseType: !350, size: 128, offset: 2112)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "work_wait_queue", scope: !4409, file: !4410, line: 225, baseType: !853, size: 192, offset: 2240)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !342, file: !343, line: 40, baseType: !476, size: 64, offset: 384)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "cancelling", scope: !342, file: !343, line: 47, baseType: !120, size: 32, offset: 448)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !342, file: !343, line: 53, baseType: !350, size: 128, offset: 512)
!5285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5286, size: 64)
!5286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5287)
!5287 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !489)
!5288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5289, size: 64)
!5289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5290)
!5290 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !120)
!5291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5292, size: 64)
!5292 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !354)
!5293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5294, size: 64)
!5294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5292)
!5295 = !{!0, !7, !12, !5296, !5298, !5300, !5302, !5310, !5315}
!5296 = !DIGlobalVariableExpression(var: !5297, expr: !DIExpression())
!5297 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_vblank_work_cancel_sync309", scope: !14, file: !2, line: 209, type: !340, isLocal: true, isDefinition: true)
!5298 = !DIGlobalVariableExpression(var: !5299, expr: !DIExpression())
!5299 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_vblank_work_flush310", scope: !14, file: !2, line: 230, type: !340, isLocal: true, isDefinition: true)
!5300 = !DIGlobalVariableExpression(var: !5301, expr: !DIExpression())
!5301 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_vblank_work_init311", scope: !14, file: !2, line: 247, type: !340, isLocal: true, isDefinition: true)
!5302 = !DIGlobalVariableExpression(var: !5303, expr: !DIExpression())
!5303 = distinct !DIGlobalVariable(name: "__key", scope: !5304, file: !2, line: 254, type: !2624, isLocal: true, isDefinition: true)
!5304 = distinct !DISubprogram(name: "drm_vblank_worker_init", scope: !2, file: !2, line: 249, type: !5305, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5307)
!5305 = !DISubroutineType(types: !5306)
!5306 = !{!120, !4408}
!5307 = !{!5308, !5309}
!5308 = !DILocalVariable(name: "vblank", arg: 1, scope: !5304, file: !2, line: 249, type: !4408)
!5309 = !DILocalVariable(name: "worker", scope: !5304, file: !2, line: 251, type: !363)
!5310 = !DIGlobalVariableExpression(var: !5311, expr: !DIExpression())
!5311 = distinct !DIGlobalVariable(scope: null, file: !2, line: 254, type: !5312, isLocal: true, isDefinition: true)
!5312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !5313)
!5313 = !{!5314}
!5314 = !DISubrange(count: 25)
!5315 = !DIGlobalVariableExpression(var: !5316, expr: !DIExpression())
!5316 = distinct !DIGlobalVariable(scope: null, file: !2, line: 255, type: !5317, isLocal: true, isDefinition: true)
!5317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !5318)
!5318 = !{!5319}
!5319 = !DISubrange(count: 14)
!5320 = !{i32 7, !"Dwarf Version", i32 5}
!5321 = !{i32 2, !"Debug Info Version", i32 3}
!5322 = !{i32 1, !"wchar_size", i32 2}
!5323 = !{i32 8, !"cf-protection-branch", i32 1}
!5324 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5325 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5326 = !{i32 1, !"Code Model", i32 2}
!5327 = !{i32 1, !"override-stack-alignment", i32 8}
!5328 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5329 = distinct !DISubprogram(name: "drm_handle_vblank_works", scope: !2, file: !2, line: 46, type: !5330, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5332)
!5330 = !DISubroutineType(types: !5331)
!5331 = !{null, !4408}
!5332 = !{!5333, !5334, !5335, !5336, !5337, !5338, !5341, !5343}
!5333 = !DILocalVariable(name: "vblank", arg: 1, scope: !5329, file: !2, line: 46, type: !4408)
!5334 = !DILocalVariable(name: "work", scope: !5329, file: !2, line: 48, type: !341)
!5335 = !DILocalVariable(name: "next", scope: !5329, file: !2, line: 48, type: !341)
!5336 = !DILocalVariable(name: "count", scope: !5329, file: !2, line: 49, type: !476)
!5337 = !DILocalVariable(name: "wake", scope: !5329, file: !2, line: 50, type: !1038)
!5338 = !DILocalVariable(name: "__mptr", scope: !5339, file: !2, line: 54, type: !340)
!5339 = distinct !DILexicalBlock(scope: !5340, file: !2, line: 54, column: 2)
!5340 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 54, column: 2)
!5341 = !DILocalVariable(name: "__mptr", scope: !5342, file: !2, line: 54, type: !340)
!5342 = distinct !DILexicalBlock(scope: !5340, file: !2, line: 54, column: 2)
!5343 = !DILocalVariable(name: "__mptr", scope: !5344, file: !2, line: 54, type: !340)
!5344 = distinct !DILexicalBlock(scope: !5345, file: !2, line: 54, column: 2)
!5345 = distinct !DILexicalBlock(scope: !5340, file: !2, line: 54, column: 2)
!5346 = !DILocation(line: 46, column: 54, scope: !5329)
!5347 = !DILocation(line: 48, column: 2, scope: !5329)
!5348 = !DILocation(line: 48, column: 26, scope: !5329)
!5349 = !DILocation(line: 48, column: 33, scope: !5329)
!5350 = !DILocation(line: 49, column: 2, scope: !5329)
!5351 = !DILocation(line: 49, column: 6, scope: !5329)
!5352 = !DILocation(line: 49, column: 29, scope: !5329)
!5353 = !DILocation(line: 49, column: 37, scope: !5329)
!5354 = !DILocation(line: 49, column: 14, scope: !5329)
!5355 = !DILocation(line: 50, column: 2, scope: !5329)
!5356 = !DILocation(line: 50, column: 7, scope: !5329)
!5357 = !DILocation(line: 52, column: 2, scope: !5329)
!5358 = !DILocation(line: 52, column: 2, scope: !5359)
!5359 = distinct !DILexicalBlock(scope: !5360, file: !2, line: 52, column: 2)
!5360 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 52, column: 2)
!5361 = !DILocation(line: 52, column: 2, scope: !5360)
!5362 = !DILocation(line: 52, column: 2, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5359, file: !2, line: 52, column: 2)
!5364 = !DILocation(line: 52, column: 2, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5363, file: !2, line: 52, column: 2)
!5366 = !DILocation(line: 52, column: 2, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5363, file: !2, line: 52, column: 2)
!5368 = !{i64 2155521367, i64 2155521396, i64 2155521442, i64 2155521500, i64 2155521554, i64 2155521608, i64 2155521663, i64 2155521694}
!5369 = !DILocation(line: 54, column: 2, scope: !5339)
!5370 = !DILocation(line: 54, column: 2, scope: !5340)
!5371 = !DILocation(line: 54, column: 2, scope: !5342)
!5372 = !DILocation(line: 54, column: 2, scope: !5345)
!5373 = !DILocation(line: 55, column: 26, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5375, file: !2, line: 55, column: 7)
!5375 = distinct !DILexicalBlock(scope: !5345, file: !2, line: 54, column: 68)
!5376 = !DILocation(line: 55, column: 33, scope: !5374)
!5377 = !DILocation(line: 55, column: 39, scope: !5374)
!5378 = !DILocation(line: 55, column: 8, scope: !5374)
!5379 = !DILocation(line: 55, column: 7, scope: !5375)
!5380 = !DILocation(line: 56, column: 4, scope: !5374)
!5381 = !DILocation(line: 58, column: 18, scope: !5375)
!5382 = !DILocation(line: 58, column: 24, scope: !5375)
!5383 = !DILocation(line: 58, column: 3, scope: !5375)
!5384 = !DILocation(line: 59, column: 18, scope: !5375)
!5385 = !DILocation(line: 59, column: 26, scope: !5375)
!5386 = !DILocation(line: 59, column: 31, scope: !5375)
!5387 = !DILocation(line: 59, column: 39, scope: !5375)
!5388 = !DILocation(line: 59, column: 3, scope: !5375)
!5389 = !DILocation(line: 60, column: 22, scope: !5375)
!5390 = !DILocation(line: 60, column: 30, scope: !5375)
!5391 = !DILocation(line: 60, column: 39, scope: !5375)
!5392 = !DILocation(line: 60, column: 45, scope: !5375)
!5393 = !DILocation(line: 60, column: 3, scope: !5375)
!5394 = !DILocation(line: 61, column: 8, scope: !5375)
!5395 = !DILocation(line: 62, column: 2, scope: !5375)
!5396 = !DILocation(line: 54, column: 2, scope: !5344)
!5397 = distinct !{!5397, !5370, !5398, !5399, !5400}
!5398 = !DILocation(line: 62, column: 2, scope: !5340)
!5399 = !{!"llvm.loop.mustprogress"}
!5400 = !{!"llvm.loop.unroll.disable"}
!5401 = !DILocation(line: 63, column: 6, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 63, column: 6)
!5403 = !{i8 0, i8 2}
!5404 = !DILocation(line: 63, column: 6, scope: !5329)
!5405 = !DILocation(line: 64, column: 3, scope: !5402)
!5406 = !DILocation(line: 65, column: 1, scope: !5329)
!5407 = distinct !DISubprogram(name: "atomic64_read", scope: !5408, file: !5408, line: 1594, type: !5409, scopeLine: 1595, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5413)
!5408 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5409 = !DISubroutineType(types: !5410)
!5410 = !{!487, !5411}
!5411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5412, size: 64)
!5412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!5413 = !{!5414}
!5414 = !DILocalVariable(name: "v", arg: 1, scope: !5407, file: !5408, line: 1594, type: !5411)
!5415 = !DILocation(line: 1594, column: 33, scope: !5407)
!5416 = !DILocation(line: 1596, column: 25, scope: !5407)
!5417 = !DILocation(line: 1596, column: 2, scope: !5407)
!5418 = !DILocation(line: 1597, column: 27, scope: !5407)
!5419 = !DILocation(line: 1597, column: 9, scope: !5407)
!5420 = !DILocation(line: 1597, column: 2, scope: !5407)
!5421 = distinct !DISubprogram(name: "queued_spin_is_locked", scope: !5422, file: !5422, line: 51, type: !5423, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5426)
!5422 = !DIFile(filename: "./include/asm-generic/qspinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9ee2071dbdb30625b016b6622681cc28")
!5423 = !DISubroutineType(types: !5424)
!5424 = !{!120, !5425}
!5425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!5426 = !{!5427}
!5427 = !DILocalVariable(name: "lock", arg: 1, scope: !5421, file: !5422, line: 51, type: !5425)
!5428 = !DILocation(line: 51, column: 68, scope: !5421)
!5429 = !DILocation(line: 57, column: 22, scope: !5421)
!5430 = !DILocation(line: 57, column: 28, scope: !5421)
!5431 = !DILocation(line: 57, column: 9, scope: !5421)
!5432 = !DILocation(line: 57, column: 2, scope: !5421)
!5433 = distinct !DISubprogram(name: "drm_vblank_passed", scope: !5434, file: !5434, line: 85, type: !5435, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5437)
!5434 = !DIFile(filename: "drivers/gpu/drm/drm_internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fe7a92d3daab3a8499bfd2dd21268b57")
!5435 = !DISubroutineType(types: !5436)
!5436 = !{!1038, !476, !476}
!5437 = !{!5438, !5439}
!5438 = !DILocalVariable(name: "seq", arg: 1, scope: !5433, file: !5434, line: 85, type: !476)
!5439 = !DILocalVariable(name: "ref", arg: 2, scope: !5433, file: !5434, line: 85, type: !476)
!5440 = !DILocation(line: 85, column: 42, scope: !5433)
!5441 = !DILocation(line: 85, column: 51, scope: !5433)
!5442 = !DILocation(line: 87, column: 10, scope: !5433)
!5443 = !DILocation(line: 87, column: 16, scope: !5433)
!5444 = !DILocation(line: 87, column: 14, scope: !5433)
!5445 = !DILocation(line: 87, column: 21, scope: !5433)
!5446 = !DILocation(line: 87, column: 2, scope: !5433)
!5447 = distinct !DISubprogram(name: "list_del_init", scope: !5448, file: !5448, line: 285, type: !5449, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5451)
!5448 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5449 = !DISubroutineType(types: !5450)
!5450 = !{null, !354}
!5451 = !{!5452}
!5452 = !DILocalVariable(name: "entry", arg: 1, scope: !5447, file: !5448, line: 285, type: !354)
!5453 = !DILocation(line: 285, column: 52, scope: !5447)
!5454 = !DILocation(line: 287, column: 19, scope: !5447)
!5455 = !DILocation(line: 287, column: 2, scope: !5447)
!5456 = !DILocation(line: 288, column: 17, scope: !5447)
!5457 = !DILocation(line: 288, column: 2, scope: !5447)
!5458 = !DILocation(line: 289, column: 1, scope: !5447)
!5459 = !DISubprogram(name: "drm_vblank_put", scope: !5434, file: !5434, line: 92, type: !5460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5460 = !DISubroutineType(types: !5461)
!5461 = !{null, !4413, !18}
!5462 = !DISubprogram(name: "kthread_queue_work", scope: !347, file: !347, line: 197, type: !5463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5463 = !DISubroutineType(types: !5464)
!5464 = !{!1038, !363, !361}
!5465 = !DISubprogram(name: "__wake_up", scope: !854, file: !854, line: 212, type: !5466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5466 = !DISubroutineType(types: !5467)
!5467 = !{!120, !5468, !18, !120, !340}
!5468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!5469 = distinct !DISubprogram(name: "drm_vblank_cancel_pending_works", scope: !2, file: !2, line: 70, type: !5330, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5470)
!5470 = !{!5471, !5472, !5473, !5474, !5477, !5479}
!5471 = !DILocalVariable(name: "vblank", arg: 1, scope: !5469, file: !2, line: 70, type: !4408)
!5472 = !DILocalVariable(name: "work", scope: !5469, file: !2, line: 72, type: !341)
!5473 = !DILocalVariable(name: "next", scope: !5469, file: !2, line: 72, type: !341)
!5474 = !DILocalVariable(name: "__mptr", scope: !5475, file: !2, line: 76, type: !340)
!5475 = distinct !DILexicalBlock(scope: !5476, file: !2, line: 76, column: 2)
!5476 = distinct !DILexicalBlock(scope: !5469, file: !2, line: 76, column: 2)
!5477 = !DILocalVariable(name: "__mptr", scope: !5478, file: !2, line: 76, type: !340)
!5478 = distinct !DILexicalBlock(scope: !5476, file: !2, line: 76, column: 2)
!5479 = !DILocalVariable(name: "__mptr", scope: !5480, file: !2, line: 76, type: !340)
!5480 = distinct !DILexicalBlock(scope: !5481, file: !2, line: 76, column: 2)
!5481 = distinct !DILexicalBlock(scope: !5476, file: !2, line: 76, column: 2)
!5482 = !DILocation(line: 70, column: 62, scope: !5469)
!5483 = !DILocation(line: 72, column: 2, scope: !5469)
!5484 = !DILocation(line: 72, column: 26, scope: !5469)
!5485 = !DILocation(line: 72, column: 33, scope: !5469)
!5486 = !DILocation(line: 74, column: 2, scope: !5469)
!5487 = !DILocation(line: 74, column: 2, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5489, file: !2, line: 74, column: 2)
!5489 = distinct !DILexicalBlock(scope: !5469, file: !2, line: 74, column: 2)
!5490 = !DILocation(line: 74, column: 2, scope: !5489)
!5491 = !DILocation(line: 74, column: 2, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5488, file: !2, line: 74, column: 2)
!5493 = !DILocation(line: 74, column: 2, scope: !5494)
!5494 = distinct !DILexicalBlock(scope: !5492, file: !2, line: 74, column: 2)
!5495 = !DILocation(line: 74, column: 2, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5492, file: !2, line: 74, column: 2)
!5497 = !{i64 2155527703, i64 2155527732, i64 2155527778, i64 2155527836, i64 2155527890, i64 2155527944, i64 2155527999, i64 2155528030}
!5498 = !DILocation(line: 76, column: 2, scope: !5475)
!5499 = !DILocation(line: 76, column: 2, scope: !5476)
!5500 = !DILocation(line: 76, column: 2, scope: !5478)
!5501 = !DILocation(line: 76, column: 2, scope: !5481)
!5502 = !DILocation(line: 77, column: 18, scope: !5503)
!5503 = distinct !DILexicalBlock(scope: !5481, file: !2, line: 76, column: 68)
!5504 = !DILocation(line: 77, column: 24, scope: !5503)
!5505 = !DILocation(line: 77, column: 3, scope: !5503)
!5506 = !DILocation(line: 78, column: 18, scope: !5503)
!5507 = !DILocation(line: 78, column: 26, scope: !5503)
!5508 = !DILocation(line: 78, column: 31, scope: !5503)
!5509 = !DILocation(line: 78, column: 39, scope: !5503)
!5510 = !DILocation(line: 78, column: 3, scope: !5503)
!5511 = !DILocation(line: 79, column: 2, scope: !5503)
!5512 = !DILocation(line: 76, column: 2, scope: !5480)
!5513 = distinct !{!5513, !5499, !5514, !5399, !5400}
!5514 = !DILocation(line: 79, column: 2, scope: !5476)
!5515 = !DILocation(line: 81, column: 2, scope: !5469)
!5516 = !DILocation(line: 82, column: 1, scope: !5469)
!5517 = distinct !DISubprogram(name: "drm_vblank_work_schedule", scope: !2, file: !2, line: 106, type: !5518, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5520)
!5518 = !DISubroutineType(types: !5519)
!5519 = !{!120, !341, !476, !1038}
!5520 = !{!5521, !5522, !5523, !5524, !5525, !5526, !5527, !5528, !5529, !5530, !5531, !5532, !5533, !5537, !5538}
!5521 = !DILocalVariable(name: "work", arg: 1, scope: !5517, file: !2, line: 106, type: !341)
!5522 = !DILocalVariable(name: "count", arg: 2, scope: !5517, file: !2, line: 107, type: !476)
!5523 = !DILocalVariable(name: "nextonmiss", arg: 3, scope: !5517, file: !2, line: 107, type: !1038)
!5524 = !DILocalVariable(name: "vblank", scope: !5517, file: !2, line: 109, type: !4408)
!5525 = !DILocalVariable(name: "dev", scope: !5517, file: !2, line: 110, type: !4413)
!5526 = !DILocalVariable(name: "cur_vbl", scope: !5517, file: !2, line: 111, type: !476)
!5527 = !DILocalVariable(name: "irqflags", scope: !5517, file: !2, line: 112, type: !415)
!5528 = !DILocalVariable(name: "passed", scope: !5517, file: !2, line: 113, type: !1038)
!5529 = !DILocalVariable(name: "inmodeset", scope: !5517, file: !2, line: 113, type: !1038)
!5530 = !DILocalVariable(name: "rescheduling", scope: !5517, file: !2, line: 113, type: !1038)
!5531 = !DILocalVariable(name: "wake", scope: !5517, file: !2, line: 113, type: !1038)
!5532 = !DILocalVariable(name: "ret", scope: !5517, file: !2, line: 114, type: !120)
!5533 = !DILocalVariable(name: "__dummy", scope: !5534, file: !2, line: 116, type: !415)
!5534 = distinct !DILexicalBlock(scope: !5535, file: !2, line: 116, column: 2)
!5535 = distinct !DILexicalBlock(scope: !5536, file: !2, line: 116, column: 2)
!5536 = distinct !DILexicalBlock(scope: !5517, file: !2, line: 116, column: 2)
!5537 = !DILocalVariable(name: "__dummy2", scope: !5534, file: !2, line: 116, type: !415)
!5538 = !DILabel(scope: !5517, name: "out", file: !2, line: 159)
!5539 = !DILocation(line: 106, column: 54, scope: !5517)
!5540 = !DILocation(line: 107, column: 13, scope: !5517)
!5541 = !DILocation(line: 107, column: 25, scope: !5517)
!5542 = !DILocation(line: 109, column: 2, scope: !5517)
!5543 = !DILocation(line: 109, column: 26, scope: !5517)
!5544 = !DILocation(line: 109, column: 35, scope: !5517)
!5545 = !DILocation(line: 109, column: 41, scope: !5517)
!5546 = !DILocation(line: 110, column: 2, scope: !5517)
!5547 = !DILocation(line: 110, column: 21, scope: !5517)
!5548 = !DILocation(line: 110, column: 27, scope: !5517)
!5549 = !DILocation(line: 110, column: 35, scope: !5517)
!5550 = !DILocation(line: 111, column: 2, scope: !5517)
!5551 = !DILocation(line: 111, column: 6, scope: !5517)
!5552 = !DILocation(line: 112, column: 2, scope: !5517)
!5553 = !DILocation(line: 112, column: 16, scope: !5517)
!5554 = !DILocation(line: 113, column: 2, scope: !5517)
!5555 = !DILocation(line: 113, column: 7, scope: !5517)
!5556 = !DILocation(line: 113, column: 15, scope: !5517)
!5557 = !DILocation(line: 113, column: 26, scope: !5517)
!5558 = !DILocation(line: 113, column: 48, scope: !5517)
!5559 = !DILocation(line: 114, column: 2, scope: !5517)
!5560 = !DILocation(line: 114, column: 6, scope: !5517)
!5561 = !DILocation(line: 116, column: 2, scope: !5517)
!5562 = !DILocation(line: 116, column: 2, scope: !5536)
!5563 = !DILocation(line: 116, column: 2, scope: !5534)
!5564 = !DILocation(line: 116, column: 2, scope: !5535)
!5565 = !DILocation(line: 117, column: 6, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5517, file: !2, line: 117, column: 6)
!5567 = !DILocation(line: 117, column: 12, scope: !5566)
!5568 = !DILocation(line: 117, column: 6, scope: !5517)
!5569 = !DILocation(line: 118, column: 3, scope: !5566)
!5570 = !DILocation(line: 120, column: 13, scope: !5517)
!5571 = !DILocation(line: 120, column: 18, scope: !5517)
!5572 = !DILocation(line: 120, column: 2, scope: !5517)
!5573 = !DILocation(line: 121, column: 14, scope: !5517)
!5574 = !DILocation(line: 121, column: 22, scope: !5517)
!5575 = !DILocation(line: 121, column: 12, scope: !5517)
!5576 = !DILocation(line: 122, column: 15, scope: !5517)
!5577 = !DILocation(line: 122, column: 20, scope: !5517)
!5578 = !DILocation(line: 122, column: 2, scope: !5517)
!5579 = !DILocation(line: 123, column: 6, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5517, file: !2, line: 123, column: 6)
!5581 = !DILocation(line: 123, column: 6, scope: !5517)
!5582 = !DILocation(line: 124, column: 3, scope: !5580)
!5583 = !DILocation(line: 126, column: 18, scope: !5584)
!5584 = distinct !DILexicalBlock(scope: !5517, file: !2, line: 126, column: 6)
!5585 = !DILocation(line: 126, column: 24, scope: !5584)
!5586 = !DILocation(line: 126, column: 6, scope: !5584)
!5587 = !DILocation(line: 126, column: 6, scope: !5517)
!5588 = !DILocation(line: 127, column: 24, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5584, file: !2, line: 126, column: 31)
!5590 = !DILocation(line: 127, column: 29, scope: !5589)
!5591 = !DILocation(line: 127, column: 37, scope: !5589)
!5592 = !DILocation(line: 127, column: 9, scope: !5589)
!5593 = !DILocation(line: 127, column: 7, scope: !5589)
!5594 = !DILocation(line: 128, column: 7, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5589, file: !2, line: 128, column: 7)
!5596 = !DILocation(line: 128, column: 11, scope: !5595)
!5597 = !DILocation(line: 128, column: 7, scope: !5589)
!5598 = !DILocation(line: 129, column: 4, scope: !5595)
!5599 = !DILocation(line: 130, column: 2, scope: !5589)
!5600 = !DILocation(line: 130, column: 13, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5584, file: !2, line: 130, column: 13)
!5602 = !DILocation(line: 130, column: 19, scope: !5601)
!5603 = !DILocation(line: 130, column: 28, scope: !5601)
!5604 = !DILocation(line: 130, column: 25, scope: !5601)
!5605 = !DILocation(line: 130, column: 13, scope: !5584)
!5606 = !DILocation(line: 132, column: 3, scope: !5607)
!5607 = distinct !DILexicalBlock(scope: !5601, file: !2, line: 130, column: 35)
!5608 = !DILocation(line: 134, column: 16, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5601, file: !2, line: 133, column: 9)
!5610 = !DILocation(line: 137, column: 16, scope: !5517)
!5611 = !DILocation(line: 137, column: 2, scope: !5517)
!5612 = !DILocation(line: 137, column: 8, scope: !5517)
!5613 = !DILocation(line: 137, column: 14, scope: !5517)
!5614 = !DILocation(line: 138, column: 29, scope: !5517)
!5615 = !DILocation(line: 138, column: 34, scope: !5517)
!5616 = !DILocation(line: 138, column: 42, scope: !5517)
!5617 = !DILocation(line: 138, column: 12, scope: !5517)
!5618 = !DILocation(line: 138, column: 10, scope: !5517)
!5619 = !DILocation(line: 139, column: 29, scope: !5517)
!5620 = !DILocation(line: 139, column: 38, scope: !5517)
!5621 = !DILocation(line: 139, column: 11, scope: !5517)
!5622 = !DILocation(line: 139, column: 9, scope: !5517)
!5623 = !DILocation(line: 140, column: 6, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !5517, file: !2, line: 140, column: 6)
!5625 = !DILocation(line: 140, column: 6, scope: !5517)
!5626 = !DILocation(line: 141, column: 3, scope: !5624)
!5627 = !DILocation(line: 145, column: 7, scope: !5628)
!5628 = distinct !DILexicalBlock(scope: !5517, file: !2, line: 145, column: 6)
!5629 = !DILocation(line: 145, column: 18, scope: !5628)
!5630 = !DILocation(line: 145, column: 21, scope: !5628)
!5631 = !DILocation(line: 145, column: 6, scope: !5517)
!5632 = !DILocation(line: 146, column: 18, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !5628, file: !2, line: 145, column: 29)
!5634 = !DILocation(line: 146, column: 23, scope: !5633)
!5635 = !DILocation(line: 146, column: 31, scope: !5633)
!5636 = !DILocation(line: 146, column: 3, scope: !5633)
!5637 = !DILocation(line: 147, column: 28, scope: !5633)
!5638 = !DILocation(line: 147, column: 36, scope: !5633)
!5639 = !DILocation(line: 147, column: 45, scope: !5633)
!5640 = !DILocation(line: 147, column: 51, scope: !5633)
!5641 = !DILocation(line: 147, column: 9, scope: !5633)
!5642 = !DILocation(line: 147, column: 7, scope: !5633)
!5643 = !DILocation(line: 149, column: 7, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5633, file: !2, line: 149, column: 7)
!5645 = !DILocation(line: 149, column: 7, scope: !5633)
!5646 = !DILocation(line: 150, column: 19, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5644, file: !2, line: 149, column: 21)
!5648 = !DILocation(line: 150, column: 25, scope: !5647)
!5649 = !DILocation(line: 150, column: 4, scope: !5647)
!5650 = !DILocation(line: 151, column: 9, scope: !5647)
!5651 = !DILocation(line: 152, column: 3, scope: !5647)
!5652 = !DILocation(line: 153, column: 2, scope: !5633)
!5653 = !DILocation(line: 154, column: 8, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5655, file: !2, line: 154, column: 7)
!5655 = distinct !DILexicalBlock(scope: !5628, file: !2, line: 153, column: 9)
!5656 = !DILocation(line: 154, column: 7, scope: !5655)
!5657 = !DILocation(line: 155, column: 19, scope: !5654)
!5658 = !DILocation(line: 155, column: 25, scope: !5654)
!5659 = !DILocation(line: 155, column: 32, scope: !5654)
!5660 = !DILocation(line: 155, column: 40, scope: !5654)
!5661 = !DILocation(line: 155, column: 4, scope: !5654)
!5662 = !DILocation(line: 156, column: 7, scope: !5655)
!5663 = !DILocation(line: 159, column: 1, scope: !5517)
!5664 = !DILocation(line: 160, column: 26, scope: !5517)
!5665 = !DILocation(line: 160, column: 31, scope: !5517)
!5666 = !DILocation(line: 160, column: 43, scope: !5517)
!5667 = !DILocation(line: 160, column: 2, scope: !5517)
!5668 = !DILocation(line: 161, column: 6, scope: !5669)
!5669 = distinct !DILexicalBlock(scope: !5517, file: !2, line: 161, column: 6)
!5670 = !DILocation(line: 161, column: 6, scope: !5517)
!5671 = !DILocation(line: 162, column: 3, scope: !5669)
!5672 = !DILocation(line: 163, column: 9, scope: !5517)
!5673 = !DILocation(line: 164, column: 1, scope: !5517)
!5674 = !DILocation(line: 163, column: 2, scope: !5517)
!5675 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !5676, file: !5676, line: 32, type: !5677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5676 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5677 = !DISubroutineType(types: !5678)
!5678 = !{!415, !5679}
!5679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!5680 = distinct !DISubprogram(name: "spinlock_check", scope: !5681, file: !5681, line: 324, type: !5682, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5684)
!5681 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5682 = !DISubroutineType(types: !5683)
!5683 = !{!5679, !1832}
!5684 = !{!5685}
!5685 = !DILocalVariable(name: "lock", arg: 1, scope: !5680, file: !5681, line: 324, type: !1832)
!5686 = !DILocation(line: 324, column: 67, scope: !5680)
!5687 = !DILocation(line: 326, column: 10, scope: !5680)
!5688 = !DILocation(line: 326, column: 16, scope: !5680)
!5689 = !DILocation(line: 326, column: 2, scope: !5680)
!5690 = distinct !DISubprogram(name: "spin_lock", scope: !5681, file: !5681, line: 349, type: !5691, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5693)
!5691 = !DISubroutineType(types: !5692)
!5692 = !{null, !1832}
!5693 = !{!5694}
!5694 = !DILocalVariable(name: "lock", arg: 1, scope: !5690, file: !5681, line: 349, type: !1832)
!5695 = !DILocation(line: 349, column: 51, scope: !5690)
!5696 = !DILocation(line: 351, column: 2, scope: !5690)
!5697 = !DILocation(line: 352, column: 1, scope: !5690)
!5698 = distinct !DISubprogram(name: "spin_unlock", scope: !5681, file: !5681, line: 389, type: !5691, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5699)
!5699 = !{!5700}
!5700 = !DILocalVariable(name: "lock", arg: 1, scope: !5698, file: !5681, line: 389, type: !1832)
!5701 = !DILocation(line: 389, column: 53, scope: !5698)
!5702 = !DILocation(line: 391, column: 2, scope: !5698)
!5703 = !DILocation(line: 392, column: 1, scope: !5698)
!5704 = distinct !DISubprogram(name: "list_empty", scope: !5448, file: !5448, line: 371, type: !5705, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5709)
!5705 = !DISubroutineType(types: !5706)
!5706 = !{!120, !5707}
!5707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5708, size: 64)
!5708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!5709 = !{!5710}
!5710 = !DILocalVariable(name: "head", arg: 1, scope: !5704, file: !5448, line: 371, type: !5707)
!5711 = !DILocation(line: 371, column: 54, scope: !5704)
!5712 = !DILocation(line: 373, column: 9, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5704, file: !5448, line: 373, column: 9)
!5714 = !DILocation(line: 373, column: 9, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5713, file: !5448, line: 373, column: 9)
!5716 = !DILocation(line: 373, column: 34, scope: !5704)
!5717 = !DILocation(line: 373, column: 31, scope: !5704)
!5718 = !DILocation(line: 373, column: 2, scope: !5704)
!5719 = !DISubprogram(name: "drm_vblank_get", scope: !5434, file: !5434, line: 91, type: !5720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5720 = !DISubroutineType(types: !5721)
!5721 = !{!120, !4413, !18}
!5722 = !DISubprogram(name: "drm_vblank_count", scope: !5434, file: !5434, line: 93, type: !5723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5723 = !DISubroutineType(types: !5724)
!5724 = !{!476, !4413, !18}
!5725 = !DISubprogram(name: "__drm_dev_dbg", scope: !217, file: !217, line: 411, type: !5726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5726 = !DISubroutineType(types: !5727)
!5727 = !{null, !5728, !4439, !216, !1041, null}
!5728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5729, size: 64)
!5729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ddebug", file: !5730, line: 16, size: 448, align: 64, elements: !5731)
!5730 = !DIFile(filename: "./include/linux/dynamic_debug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5870bc31a25115f490bd43a8eae18abb")
!5731 = !{!5732, !5733, !5734, !5735, !5736, !5737, !5738, !5739}
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "modname", scope: !5729, file: !5730, line: 21, baseType: !1041, size: 64)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !5729, file: !5730, line: 22, baseType: !1041, size: 64, offset: 64)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !5729, file: !5730, line: 23, baseType: !1041, size: 64, offset: 128)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !5729, file: !5730, line: 24, baseType: !1041, size: 64, offset: 192)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !5729, file: !5730, line: 25, baseType: !18, size: 18, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "class_id", scope: !5729, file: !5730, line: 27, baseType: !18, size: 6, offset: 274, flags: DIFlagBitField, extraData: i64 256)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5729, file: !5730, line: 52, baseType: !18, size: 8, offset: 280, flags: DIFlagBitField, extraData: i64 256)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5729, file: !5730, line: 57, baseType: !5740, size: 128, offset: 320)
!5740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5729, file: !5730, line: 54, size: 128, elements: !5741)
!5741 = !{!5742, !5757}
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_true", scope: !5740, file: !5730, line: 55, baseType: !5743, size: 128)
!5743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_true", file: !2582, line: 359, size: 128, elements: !5744)
!5744 = !{!5745}
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5743, file: !2582, line: 360, baseType: !5746, size: 128)
!5746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2582, line: 85, size: 128, elements: !5747)
!5747 = !{!5748, !5749}
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5746, file: !2582, line: 86, baseType: !381, size: 32)
!5749 = !DIDerivedType(tag: DW_TAG_member, scope: !5746, file: !2582, line: 101, baseType: !5750, size: 64, offset: 64)
!5750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5746, file: !2582, line: 101, size: 64, elements: !5751)
!5751 = !{!5752, !5753, !5754}
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5750, file: !2582, line: 102, baseType: !415, size: 64)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5750, file: !2582, line: 103, baseType: !2580, size: 64)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5750, file: !2582, line: 104, baseType: !5755, size: 64)
!5755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5756, size: 64)
!5756 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2582, line: 104, flags: DIFlagFwdDecl)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_false", scope: !5740, file: !5730, line: 56, baseType: !5758, size: 128)
!5758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_false", file: !2582, line: 363, size: 128, elements: !5759)
!5759 = !{!5760}
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5758, file: !2582, line: 364, baseType: !5746, size: 128)
!5761 = distinct !DISubprogram(name: "list_add_tail", scope: !5448, file: !5448, line: 181, type: !5762, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5764)
!5762 = !DISubroutineType(types: !5763)
!5763 = !{null, !354, !354}
!5764 = !{!5765, !5766}
!5765 = !DILocalVariable(name: "new", arg: 1, scope: !5761, file: !5448, line: 181, type: !354)
!5766 = !DILocalVariable(name: "head", arg: 2, scope: !5761, file: !5448, line: 181, type: !354)
!5767 = !DILocation(line: 181, column: 52, scope: !5761)
!5768 = !DILocation(line: 181, column: 75, scope: !5761)
!5769 = !DILocation(line: 183, column: 13, scope: !5761)
!5770 = !DILocation(line: 183, column: 18, scope: !5761)
!5771 = !DILocation(line: 183, column: 24, scope: !5761)
!5772 = !DILocation(line: 183, column: 30, scope: !5761)
!5773 = !DILocation(line: 183, column: 2, scope: !5761)
!5774 = !DILocation(line: 184, column: 1, scope: !5761)
!5775 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5681, file: !5681, line: 404, type: !5776, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5778)
!5776 = !DISubroutineType(types: !5777)
!5777 = !{null, !1832, !415}
!5778 = !{!5779, !5780, !5781, !5784}
!5779 = !DILocalVariable(name: "lock", arg: 1, scope: !5775, file: !5681, line: 404, type: !1832)
!5780 = !DILocalVariable(name: "flags", arg: 2, scope: !5775, file: !5681, line: 404, type: !415)
!5781 = !DILocalVariable(name: "__dummy", scope: !5782, file: !5681, line: 406, type: !415)
!5782 = distinct !DILexicalBlock(scope: !5783, file: !5681, line: 406, column: 2)
!5783 = distinct !DILexicalBlock(scope: !5775, file: !5681, line: 406, column: 2)
!5784 = !DILocalVariable(name: "__dummy2", scope: !5782, file: !5681, line: 406, type: !415)
!5785 = !DILocation(line: 404, column: 64, scope: !5775)
!5786 = !DILocation(line: 404, column: 84, scope: !5775)
!5787 = !DILocation(line: 406, column: 2, scope: !5775)
!5788 = !DILocation(line: 406, column: 2, scope: !5782)
!5789 = !DILocation(line: 406, column: 2, scope: !5783)
!5790 = !DILocation(line: 407, column: 1, scope: !5775)
!5791 = distinct !DISubprogram(name: "drm_vblank_work_cancel_sync", scope: !2, file: !2, line: 182, type: !5792, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5794)
!5792 = !DISubroutineType(types: !5793)
!5793 = !{!1038, !341}
!5794 = !{!5795, !5796, !5797, !5798}
!5795 = !DILocalVariable(name: "work", arg: 1, scope: !5791, file: !2, line: 182, type: !341)
!5796 = !DILocalVariable(name: "vblank", scope: !5791, file: !2, line: 184, type: !4408)
!5797 = !DILocalVariable(name: "dev", scope: !5791, file: !2, line: 185, type: !4413)
!5798 = !DILocalVariable(name: "ret", scope: !5791, file: !2, line: 186, type: !1038)
!5799 = !DILocation(line: 182, column: 58, scope: !5791)
!5800 = !DILocation(line: 184, column: 2, scope: !5791)
!5801 = !DILocation(line: 184, column: 26, scope: !5791)
!5802 = !DILocation(line: 184, column: 35, scope: !5791)
!5803 = !DILocation(line: 184, column: 41, scope: !5791)
!5804 = !DILocation(line: 185, column: 2, scope: !5791)
!5805 = !DILocation(line: 185, column: 21, scope: !5791)
!5806 = !DILocation(line: 185, column: 27, scope: !5791)
!5807 = !DILocation(line: 185, column: 35, scope: !5791)
!5808 = !DILocation(line: 186, column: 2, scope: !5791)
!5809 = !DILocation(line: 186, column: 7, scope: !5791)
!5810 = !DILocation(line: 188, column: 17, scope: !5791)
!5811 = !DILocation(line: 188, column: 22, scope: !5791)
!5812 = !DILocation(line: 188, column: 2, scope: !5791)
!5813 = !DILocation(line: 189, column: 19, scope: !5814)
!5814 = distinct !DILexicalBlock(scope: !5791, file: !2, line: 189, column: 6)
!5815 = !DILocation(line: 189, column: 25, scope: !5814)
!5816 = !DILocation(line: 189, column: 7, scope: !5814)
!5817 = !DILocation(line: 189, column: 6, scope: !5791)
!5818 = !DILocation(line: 190, column: 18, scope: !5819)
!5819 = distinct !DILexicalBlock(scope: !5814, file: !2, line: 189, column: 32)
!5820 = !DILocation(line: 190, column: 24, scope: !5819)
!5821 = !DILocation(line: 190, column: 3, scope: !5819)
!5822 = !DILocation(line: 191, column: 18, scope: !5819)
!5823 = !DILocation(line: 191, column: 26, scope: !5819)
!5824 = !DILocation(line: 191, column: 31, scope: !5819)
!5825 = !DILocation(line: 191, column: 39, scope: !5819)
!5826 = !DILocation(line: 191, column: 3, scope: !5819)
!5827 = !DILocation(line: 192, column: 7, scope: !5819)
!5828 = !DILocation(line: 193, column: 2, scope: !5819)
!5829 = !DILocation(line: 195, column: 2, scope: !5791)
!5830 = !DILocation(line: 195, column: 8, scope: !5791)
!5831 = !DILocation(line: 195, column: 18, scope: !5791)
!5832 = !DILocation(line: 196, column: 19, scope: !5791)
!5833 = !DILocation(line: 196, column: 24, scope: !5791)
!5834 = !DILocation(line: 196, column: 2, scope: !5791)
!5835 = !DILocation(line: 198, column: 2, scope: !5791)
!5836 = !DILocation(line: 200, column: 32, scope: !5837)
!5837 = distinct !DILexicalBlock(scope: !5791, file: !2, line: 200, column: 6)
!5838 = !DILocation(line: 200, column: 38, scope: !5837)
!5839 = !DILocation(line: 200, column: 6, scope: !5837)
!5840 = !DILocation(line: 200, column: 6, scope: !5791)
!5841 = !DILocation(line: 201, column: 7, scope: !5837)
!5842 = !DILocation(line: 201, column: 3, scope: !5837)
!5843 = !DILocation(line: 203, column: 17, scope: !5791)
!5844 = !DILocation(line: 203, column: 22, scope: !5791)
!5845 = !DILocation(line: 203, column: 2, scope: !5791)
!5846 = !DILocation(line: 204, column: 2, scope: !5791)
!5847 = !DILocation(line: 204, column: 8, scope: !5791)
!5848 = !DILocation(line: 204, column: 18, scope: !5791)
!5849 = !DILocation(line: 205, column: 19, scope: !5791)
!5850 = !DILocation(line: 205, column: 24, scope: !5791)
!5851 = !DILocation(line: 205, column: 2, scope: !5791)
!5852 = !DILocation(line: 207, column: 9, scope: !5791)
!5853 = !DILocation(line: 208, column: 1, scope: !5791)
!5854 = !DILocation(line: 207, column: 2, scope: !5791)
!5855 = distinct !DISubprogram(name: "spin_lock_irq", scope: !5681, file: !5681, line: 374, type: !5691, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5856)
!5856 = !{!5857}
!5857 = !DILocalVariable(name: "lock", arg: 1, scope: !5855, file: !5681, line: 374, type: !1832)
!5858 = !DILocation(line: 374, column: 55, scope: !5855)
!5859 = !DILocation(line: 376, column: 2, scope: !5855)
!5860 = !DILocation(line: 377, column: 1, scope: !5855)
!5861 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !5681, file: !5681, line: 399, type: !5691, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5862)
!5862 = !{!5863}
!5863 = !DILocalVariable(name: "lock", arg: 1, scope: !5861, file: !5681, line: 399, type: !1832)
!5864 = !DILocation(line: 399, column: 57, scope: !5861)
!5865 = !DILocation(line: 401, column: 2, scope: !5861)
!5866 = !DILocation(line: 402, column: 1, scope: !5861)
!5867 = !DISubprogram(name: "kthread_cancel_work_sync", scope: !347, file: !347, line: 211, type: !5868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5868 = !DISubroutineType(types: !5869)
!5869 = !{!1038, !361}
!5870 = distinct !DISubprogram(name: "drm_vblank_work_flush", scope: !2, file: !2, line: 218, type: !5871, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5873)
!5871 = !DISubroutineType(types: !5872)
!5872 = !{null, !341}
!5873 = !{!5874, !5875, !5876, !5877, !5891, !5892, !5896}
!5874 = !DILocalVariable(name: "work", arg: 1, scope: !5870, file: !2, line: 218, type: !341)
!5875 = !DILocalVariable(name: "vblank", scope: !5870, file: !2, line: 220, type: !4408)
!5876 = !DILocalVariable(name: "dev", scope: !5870, file: !2, line: 221, type: !4413)
!5877 = !DILocalVariable(name: "__wq_entry", scope: !5878, file: !2, line: 224, type: !5880)
!5878 = distinct !DILexicalBlock(scope: !5879, file: !2, line: 224, column: 2)
!5879 = distinct !DILexicalBlock(scope: !5870, file: !2, line: 224, column: 2)
!5880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !854, line: 30, size: 320, elements: !5881)
!5881 = !{!5882, !5883, !5884, !5890}
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5880, file: !854, line: 31, baseType: !18, size: 32)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5880, file: !854, line: 32, baseType: !340, size: 64, offset: 64)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5880, file: !854, line: 33, baseType: !5885, size: 64, offset: 128)
!5885 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !854, line: 16, baseType: !5886)
!5886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5887, size: 64)
!5887 = !DISubroutineType(types: !5888)
!5888 = !{!120, !5889, !18, !120, !340}
!5889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5880, size: 64)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5880, file: !854, line: 34, baseType: !350, size: 128, offset: 192)
!5891 = !DILocalVariable(name: "__ret", scope: !5878, file: !2, line: 224, type: !1307)
!5892 = !DILocalVariable(name: "__int", scope: !5893, file: !2, line: 224, type: !1307)
!5893 = distinct !DILexicalBlock(scope: !5894, file: !2, line: 224, column: 2)
!5894 = distinct !DILexicalBlock(scope: !5895, file: !2, line: 224, column: 2)
!5895 = distinct !DILexicalBlock(scope: !5878, file: !2, line: 224, column: 2)
!5896 = !DILabel(scope: !5878, name: "__out", file: !2, line: 224)
!5897 = !DILocation(line: 218, column: 52, scope: !5870)
!5898 = !DILocation(line: 220, column: 2, scope: !5870)
!5899 = !DILocation(line: 220, column: 26, scope: !5870)
!5900 = !DILocation(line: 220, column: 35, scope: !5870)
!5901 = !DILocation(line: 220, column: 41, scope: !5870)
!5902 = !DILocation(line: 221, column: 2, scope: !5870)
!5903 = !DILocation(line: 221, column: 21, scope: !5870)
!5904 = !DILocation(line: 221, column: 27, scope: !5870)
!5905 = !DILocation(line: 221, column: 35, scope: !5870)
!5906 = !DILocation(line: 223, column: 17, scope: !5870)
!5907 = !DILocation(line: 223, column: 22, scope: !5870)
!5908 = !DILocation(line: 223, column: 2, scope: !5870)
!5909 = !DILocation(line: 224, column: 2, scope: !5870)
!5910 = !DILocation(line: 224, column: 2, scope: !5911)
!5911 = distinct !DILexicalBlock(scope: !5879, file: !2, line: 224, column: 2)
!5912 = !DILocation(line: 224, column: 2, scope: !5879)
!5913 = !DILocation(line: 224, column: 2, scope: !5878)
!5914 = !DILocation(line: 224, column: 2, scope: !5893)
!5915 = !DILocation(line: 224, column: 2, scope: !5916)
!5916 = distinct !DILexicalBlock(scope: !5893, file: !2, line: 224, column: 2)
!5917 = !DILocation(line: 224, column: 2, scope: !5894)
!5918 = distinct !{!5918, !5919, !5919, !5400}
!5919 = !DILocation(line: 224, column: 2, scope: !5895)
!5920 = !DILocation(line: 226, column: 19, scope: !5870)
!5921 = !DILocation(line: 226, column: 24, scope: !5870)
!5922 = !DILocation(line: 226, column: 2, scope: !5870)
!5923 = !DILocation(line: 228, column: 22, scope: !5870)
!5924 = !DILocation(line: 228, column: 28, scope: !5870)
!5925 = !DILocation(line: 228, column: 2, scope: !5870)
!5926 = !DILocation(line: 229, column: 1, scope: !5870)
!5927 = !DISubprogram(name: "init_wait_entry", scope: !854, file: !854, line: 290, type: !5928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5928 = !DISubroutineType(types: !5929)
!5929 = !{null, !5889, !120}
!5930 = !DISubprogram(name: "prepare_to_wait_event", scope: !854, file: !854, line: 1199, type: !5931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5931 = !DISubroutineType(types: !5932)
!5932 = !{!1307, !5468, !5889, !120}
!5933 = !DISubprogram(name: "schedule", scope: !408, file: !408, line: 303, type: !2618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5934 = !DISubprogram(name: "finish_wait", scope: !854, file: !854, line: 1200, type: !5935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5935 = !DISubroutineType(types: !5936)
!5936 = !{null, !5468, !5889}
!5937 = !DISubprogram(name: "kthread_flush_work", scope: !347, file: !347, line: 208, type: !359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5938 = distinct !DISubprogram(name: "drm_vblank_work_init", scope: !2, file: !2, line: 240, type: !5939, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6676)
!5939 = !DISubroutineType(types: !5940)
!5940 = !{null, !341, !5941, !358}
!5941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5942, size: 64)
!5942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc", file: !5943, line: 932, size: 8064, elements: !5944)
!5943 = !DIFile(filename: "./include/drm/drm_crtc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99ea98da3699d3be12a3062031f96ca9")
!5944 = !{!5945, !5946, !5947, !5948, !5949, !5950, !5951, !6119, !6120, !6121, !6122, !6123, !6124, !6125, !6126, !6127, !6128, !6634, !6635, !6637, !6641, !6642, !6643, !6644, !6645, !6646, !6647, !6669, !6670, !6671, !6672, !6673}
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5942, file: !5943, line: 934, baseType: !4413, size: 64)
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5942, file: !5943, line: 936, baseType: !4704, size: 64, offset: 64)
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5942, file: !5943, line: 944, baseType: !350, size: 128, offset: 128)
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5942, file: !5943, line: 947, baseType: !1051, size: 64, offset: 256)
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5942, file: !5943, line: 959, baseType: !4939, size: 448, offset: 320)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5942, file: !5943, line: 962, baseType: !5150, size: 256, offset: 768)
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !5942, file: !5943, line: 971, baseType: !5952, size: 64, offset: 1024)
!5952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5953, size: 64)
!5953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane", file: !242, line: 603, size: 5312, elements: !5954)
!5954 = !{!5955, !5956, !5957, !5958, !5959, !5960, !5961, !5963, !5964, !5965, !5966, !5967, !5968, !5969, !5970, !6104, !6105, !6106, !6107, !6111, !6112, !6113, !6114, !6115, !6116, !6117, !6118}
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5953, file: !242, line: 605, baseType: !4413, size: 64)
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5953, file: !242, line: 614, baseType: !350, size: 128, offset: 64)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5953, file: !242, line: 617, baseType: !1051, size: 64, offset: 192)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5953, file: !242, line: 628, baseType: !4939, size: 448, offset: 256)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5953, file: !242, line: 631, baseType: !5150, size: 256, offset: 704)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "possible_crtcs", scope: !5953, file: !242, line: 637, baseType: !1003, size: 32, offset: 960)
!5961 = !DIDerivedType(tag: DW_TAG_member, name: "format_types", scope: !5953, file: !242, line: 639, baseType: !5962, size: 64, offset: 1024)
!5962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "format_count", scope: !5953, file: !242, line: 641, baseType: !18, size: 32, offset: 1088)
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "format_default", scope: !5953, file: !242, line: 646, baseType: !1038, size: 8, offset: 1120)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers", scope: !5953, file: !242, line: 649, baseType: !5177, size: 64, offset: 1152)
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "modifier_count", scope: !5953, file: !242, line: 651, baseType: !18, size: 32, offset: 1216)
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5953, file: !242, line: 660, baseType: !5941, size: 64, offset: 1280)
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !5953, file: !242, line: 669, baseType: !5006, size: 64, offset: 1344)
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "old_fb", scope: !5953, file: !242, line: 677, baseType: !5006, size: 64, offset: 1408)
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5953, file: !242, line: 680, baseType: !5971, size: 64, offset: 1472)
!5971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5972, size: 64)
!5972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5973)
!5973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_funcs", file: !242, line: 279, size: 832, elements: !5974)
!5974 = !{!5975, !5979, !5983, !5987, !5988, !5992, !6047, !6051, !6055, !6061, !6065, !6066, !6100}
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "update_plane", scope: !5973, file: !242, line: 306, baseType: !5976, size: 64)
!5976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5977, size: 64)
!5977 = !DISubroutineType(types: !5978)
!5978 = !{!120, !5952, !5941, !5006, !120, !120, !18, !18, !1003, !1003, !1003, !1003, !4958}
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "disable_plane", scope: !5973, file: !242, line: 329, baseType: !5980, size: 64, offset: 64)
!5980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5981, size: 64)
!5981 = !DISubroutineType(types: !5982)
!5982 = !{!120, !5952, !4958}
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5973, file: !242, line: 339, baseType: !5984, size: 64, offset: 128)
!5984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5985, size: 64)
!5985 = !DISubroutineType(types: !5986)
!5986 = !{null, !5952}
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5973, file: !242, line: 351, baseType: !5984, size: 64, offset: 192)
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5973, file: !242, line: 367, baseType: !5989, size: 64, offset: 256)
!5989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5990, size: 64)
!5990 = !DISubroutineType(types: !5991)
!5991 = !{!120, !5952, !5144, !5166}
!5992 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5973, file: !242, line: 401, baseType: !5993, size: 64, offset: 320)
!5993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5994, size: 64)
!5994 = !DISubroutineType(types: !5995)
!5995 = !{!5996, !5952}
!5996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5997, size: 64)
!5997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_state", file: !242, line: 52, size: 1280, elements: !5998)
!5998 = !{!5999, !6000, !6001, !6002, !6005, !6006, !6007, !6008, !6009, !6010, !6011, !6012, !6013, !6014, !6016, !6017, !6018, !6019, !6020, !6021, !6031, !6032, !6040, !6041, !6042, !6043, !6046}
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !5997, file: !242, line: 54, baseType: !5952, size: 64)
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5997, file: !242, line: 62, baseType: !5941, size: 64, offset: 64)
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !5997, file: !242, line: 70, baseType: !5006, size: 64, offset: 128)
!6002 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !5997, file: !242, line: 83, baseType: !6003, size: 64, offset: 192)
!6003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6004, size: 64)
!6004 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !4884, line: 41, flags: DIFlagFwdDecl)
!6005 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_x", scope: !5997, file: !242, line: 92, baseType: !970, size: 32, offset: 256)
!6006 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_y", scope: !5997, file: !242, line: 99, baseType: !970, size: 32, offset: 288)
!6007 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_w", scope: !5997, file: !242, line: 103, baseType: !1003, size: 32, offset: 320)
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_h", scope: !5997, file: !242, line: 103, baseType: !1003, size: 32, offset: 352)
!6009 = !DIDerivedType(tag: DW_TAG_member, name: "src_x", scope: !5997, file: !242, line: 109, baseType: !1003, size: 32, offset: 384)
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "src_y", scope: !5997, file: !242, line: 114, baseType: !1003, size: 32, offset: 416)
!6011 = !DIDerivedType(tag: DW_TAG_member, name: "src_h", scope: !5997, file: !242, line: 117, baseType: !1003, size: 32, offset: 448)
!6012 = !DIDerivedType(tag: DW_TAG_member, name: "src_w", scope: !5997, file: !242, line: 117, baseType: !1003, size: 32, offset: 480)
!6013 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !5997, file: !242, line: 125, baseType: !399, size: 16, offset: 512)
!6014 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_blend_mode", scope: !5997, file: !242, line: 133, baseType: !6015, size: 16, offset: 528)
!6015 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !351, line: 109, baseType: !399)
!6016 = !DIDerivedType(tag: DW_TAG_member, name: "rotation", scope: !5997, file: !242, line: 140, baseType: !18, size: 32, offset: 544)
!6017 = !DIDerivedType(tag: DW_TAG_member, name: "zpos", scope: !5997, file: !242, line: 155, baseType: !18, size: 32, offset: 576)
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_zpos", scope: !5997, file: !242, line: 164, baseType: !18, size: 32, offset: 608)
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding", scope: !5997, file: !242, line: 171, baseType: !229, size: 32, offset: 640)
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "color_range", scope: !5997, file: !242, line: 178, baseType: !236, size: 32, offset: 672)
!6021 = !DIDerivedType(tag: DW_TAG_member, name: "fb_damage_clips", scope: !5997, file: !242, line: 191, baseType: !6022, size: 64, offset: 704)
!6022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6023, size: 64)
!6023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property_blob", file: !5146, line: 216, size: 704, elements: !6024)
!6024 = !{!6025, !6026, !6027, !6028, !6029, !6030}
!6025 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !6023, file: !5146, line: 217, baseType: !5150, size: 256)
!6026 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !6023, file: !5146, line: 218, baseType: !4413, size: 64, offset: 256)
!6027 = !DIDerivedType(tag: DW_TAG_member, name: "head_global", scope: !6023, file: !5146, line: 219, baseType: !350, size: 128, offset: 320)
!6028 = !DIDerivedType(tag: DW_TAG_member, name: "head_file", scope: !6023, file: !5146, line: 220, baseType: !350, size: 128, offset: 448)
!6029 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !6023, file: !5146, line: 221, baseType: !1349, size: 64, offset: 576)
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !6023, file: !5146, line: 222, baseType: !340, size: 64, offset: 640)
!6031 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_damage_clips", scope: !5997, file: !242, line: 201, baseType: !1038, size: 8, offset: 768)
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !5997, file: !242, line: 223, baseType: !6033, size: 128, offset: 800)
!6033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_rect", file: !6034, line: 46, size: 128, elements: !6035)
!6034 = !DIFile(filename: "./include/drm/drm_rect.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16c059bec9955b5d3fc8d798e393cc6b")
!6035 = !{!6036, !6037, !6038, !6039}
!6036 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !6033, file: !6034, line: 47, baseType: !120, size: 32)
!6037 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !6033, file: !6034, line: 47, baseType: !120, size: 32, offset: 32)
!6038 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !6033, file: !6034, line: 47, baseType: !120, size: 32, offset: 64)
!6039 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !6033, file: !6034, line: 47, baseType: !120, size: 32, offset: 96)
!6040 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !5997, file: !242, line: 223, baseType: !6033, size: 128, offset: 928)
!6041 = !DIDerivedType(tag: DW_TAG_member, name: "visible", scope: !5997, file: !242, line: 231, baseType: !1038, size: 8, offset: 1056)
!6042 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter", scope: !5997, file: !242, line: 238, baseType: !241, size: 32, offset: 1088)
!6043 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5997, file: !242, line: 246, baseType: !6044, size: 64, offset: 1152)
!6044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6045, size: 64)
!6045 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_commit", file: !252, line: 928, flags: DIFlagFwdDecl)
!6046 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5997, file: !242, line: 249, baseType: !5122, size: 64, offset: 1216)
!6047 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5973, file: !242, line: 411, baseType: !6048, size: 64, offset: 384)
!6048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6049, size: 64)
!6049 = !DISubroutineType(types: !6050)
!6050 = !{null, !5952, !5996}
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5973, file: !242, line: 456, baseType: !6052, size: 64, offset: 448)
!6052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6053, size: 64)
!6053 = !DISubroutineType(types: !6054)
!6054 = !{!120, !5952, !5996, !5144, !5166}
!6055 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5973, file: !242, line: 479, baseType: !6056, size: 64, offset: 512)
!6056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6057, size: 64)
!6057 = !DISubroutineType(types: !6058)
!6058 = !{!120, !5952, !6059, !5144, !5177}
!6059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6060, size: 64)
!6060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5997)
!6061 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5973, file: !242, line: 496, baseType: !6062, size: 64, offset: 576)
!6062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6063, size: 64)
!6063 = !DISubroutineType(types: !6064)
!6064 = !{!120, !5952}
!6065 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5973, file: !242, line: 507, baseType: !5984, size: 64, offset: 640)
!6066 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5973, file: !242, line: 518, baseType: !6067, size: 64, offset: 704)
!6067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6068, size: 64)
!6068 = !DISubroutineType(types: !6069)
!6069 = !{null, !6070, !6059}
!6070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6071, size: 64)
!6071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !217, line: 76, size: 256, elements: !6072)
!6072 = !{!6073, !6094, !6098, !6099}
!6073 = !DIDerivedType(tag: DW_TAG_member, name: "printfn", scope: !6071, file: !217, line: 78, baseType: !6074, size: 64)
!6074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6075, size: 64)
!6075 = !DISubroutineType(types: !6076)
!6076 = !{null, !6070, !6077}
!6077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6078, size: 64)
!6078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !6079, line: 79, size: 128, elements: !6080)
!6079 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6080 = !{!6081, !6082}
!6081 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !6078, file: !6079, line: 80, baseType: !1041, size: 64)
!6082 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !6078, file: !6079, line: 81, baseType: !6083, size: 64, offset: 64)
!6083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6084, size: 64)
!6084 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !6085, line: 5, baseType: !6086)
!6085 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!6086 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2, baseType: !6087)
!6087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6088, size: 192, elements: !678)
!6088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !6089)
!6089 = !{!6090, !6091, !6092, !6093}
!6090 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !6088, file: !2, line: 230, baseType: !18, size: 32)
!6091 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !6088, file: !2, line: 230, baseType: !18, size: 32, offset: 32)
!6092 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !6088, file: !2, line: 230, baseType: !340, size: 64, offset: 64)
!6093 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !6088, file: !2, line: 230, baseType: !340, size: 64, offset: 128)
!6094 = !DIDerivedType(tag: DW_TAG_member, name: "puts", scope: !6071, file: !217, line: 79, baseType: !6095, size: 64, offset: 64)
!6095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6096, size: 64)
!6096 = !DISubroutineType(types: !6097)
!6097 = !{null, !6070, !1041}
!6098 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !6071, file: !217, line: 80, baseType: !340, size: 64, offset: 128)
!6099 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !6071, file: !217, line: 81, baseType: !1041, size: 64, offset: 192)
!6100 = !DIDerivedType(tag: DW_TAG_member, name: "format_mod_supported", scope: !5973, file: !242, line: 537, baseType: !6101, size: 64, offset: 768)
!6101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6102, size: 64)
!6102 = !DISubroutineType(types: !6103)
!6103 = !{!1038, !5952, !1003, !5166}
!6104 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5953, file: !242, line: 683, baseType: !5157, size: 3136, offset: 1536)
!6105 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5953, file: !242, line: 686, baseType: !246, size: 32, offset: 4672)
!6106 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5953, file: !242, line: 692, baseType: !18, size: 32, offset: 4704)
!6107 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5953, file: !242, line: 695, baseType: !6108, size: 64, offset: 4736)
!6108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6109, size: 64)
!6109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6110)
!6110 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_helper_funcs", file: !242, line: 695, flags: DIFlagFwdDecl)
!6111 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5953, file: !242, line: 710, baseType: !5996, size: 64, offset: 4800)
!6112 = !DIDerivedType(tag: DW_TAG_member, name: "alpha_property", scope: !5953, file: !242, line: 717, baseType: !5144, size: 64, offset: 4864)
!6113 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_property", scope: !5953, file: !242, line: 723, baseType: !5144, size: 64, offset: 4928)
!6114 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_property", scope: !5953, file: !242, line: 729, baseType: !5144, size: 64, offset: 4992)
!6115 = !DIDerivedType(tag: DW_TAG_member, name: "blend_mode_property", scope: !5953, file: !242, line: 737, baseType: !5144, size: 64, offset: 5056)
!6116 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding_property", scope: !5953, file: !242, line: 746, baseType: !5144, size: 64, offset: 5120)
!6117 = !DIDerivedType(tag: DW_TAG_member, name: "color_range_property", scope: !5953, file: !242, line: 754, baseType: !5144, size: 64, offset: 5184)
!6118 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter_property", scope: !5953, file: !242, line: 760, baseType: !5144, size: 64, offset: 5248)
!6119 = !DIDerivedType(tag: DW_TAG_member, name: "cursor", scope: !5942, file: !5943, line: 980, baseType: !5952, size: 64, offset: 1088)
!6120 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5942, file: !5943, line: 986, baseType: !18, size: 32, offset: 1152)
!6121 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_x", scope: !5942, file: !5943, line: 995, baseType: !120, size: 32, offset: 1184)
!6122 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_y", scope: !5942, file: !5943, line: 1003, baseType: !120, size: 32, offset: 1216)
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5942, file: !5943, line: 1013, baseType: !1038, size: 8, offset: 1248)
!6124 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5942, file: !5943, line: 1023, baseType: !5082, size: 960, offset: 1280)
!6125 = !DIDerivedType(tag: DW_TAG_member, name: "hwmode", scope: !5942, file: !5943, line: 1039, baseType: !5082, size: 960, offset: 2240)
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5942, file: !5943, line: 1048, baseType: !120, size: 32, offset: 3200)
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !5942, file: !5943, line: 1056, baseType: !120, size: 32, offset: 3232)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5942, file: !5943, line: 1059, baseType: !6129, size: 64, offset: 3264)
!6129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6130, size: 64)
!6130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6131)
!6131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_funcs", file: !5943, line: 402, size: 1536, elements: !6132)
!6132 = !{!6133, !6137, !6141, !6145, !6149, !6154, !6155, !6496, !6543, !6547, !6551, !6585, !6589, !6593, !6599, !6603, !6604, !6608, !6613, !6619, !6623, !6627, !6628, !6629}
!6133 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !6131, file: !5943, line: 413, baseType: !6134, size: 64)
!6134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6135, size: 64)
!6135 = !DISubroutineType(types: !6136)
!6136 = !{null, !5941}
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set", scope: !6131, file: !5943, line: 436, baseType: !6138, size: 64, offset: 64)
!6138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6139, size: 64)
!6139 = !DISubroutineType(types: !6140)
!6140 = !{!120, !5941, !5008, !1003, !1003, !1003}
!6141 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set2", scope: !6131, file: !5943, line: 458, baseType: !6142, size: 64, offset: 128)
!6142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6143, size: 64)
!6143 = !DISubroutineType(types: !6144)
!6144 = !{!120, !5941, !5008, !1003, !1003, !1003, !970, !970}
!6145 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_move", scope: !6131, file: !5943, line: 478, baseType: !6146, size: 64, offset: 192)
!6146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6147, size: 64)
!6147 = !DISubroutineType(types: !6148)
!6148 = !{!120, !5941, !120, !120}
!6149 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_set", scope: !6131, file: !5943, line: 493, baseType: !6150, size: 64, offset: 256)
!6150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6151, size: 64)
!6151 = !DISubroutineType(types: !6152)
!6152 = !{!120, !5941, !6153, !6153, !6153, !1003, !4958}
!6153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!6154 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !6131, file: !5943, line: 504, baseType: !6134, size: 64, offset: 320)
!6155 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !6131, file: !5943, line: 520, baseType: !6156, size: 64, offset: 384)
!6156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6157, size: 64)
!6157 = !DISubroutineType(types: !6158)
!6158 = !{!120, !6159, !4958}
!6159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6160, size: 64)
!6160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_set", file: !5943, line: 1193, size: 384, elements: !6161)
!6161 = !{!6162, !6163, !6164, !6166, !6167, !6168, !6495}
!6162 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !6160, file: !5943, line: 1194, baseType: !5006, size: 64)
!6163 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !6160, file: !5943, line: 1195, baseType: !5941, size: 64, offset: 64)
!6164 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !6160, file: !5943, line: 1196, baseType: !6165, size: 64, offset: 128)
!6165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!6166 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !6160, file: !5943, line: 1198, baseType: !1003, size: 32, offset: 192)
!6167 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !6160, file: !5943, line: 1199, baseType: !1003, size: 32, offset: 224)
!6168 = !DIDerivedType(tag: DW_TAG_member, name: "connectors", scope: !6160, file: !5943, line: 1201, baseType: !6169, size: 64, offset: 256)
!6169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6170, size: 64)
!6170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6171, size: 64)
!6171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector", file: !252, line: 1494, size: 10880, elements: !6172)
!6172 = !{!6173, !6174, !6175, !6188, !6189, !6190, !6191, !6192, !6193, !6194, !6195, !6196, !6197, !6198, !6199, !6200, !6201, !6202, !6203, !6204, !6205, !6276, !6380, !6381, !6382, !6383, !6384, !6385, !6386, !6387, !6390, !6402, !6403, !6404, !6406, !6407, !6411, !6433, !6434, !6438, !6439, !6440, !6441, !6442, !6446, !6447, !6449, !6451, !6452, !6455, !6456, !6457, !6458, !6459, !6460, !6461, !6462, !6463, !6472, !6473, !6474, !6475, !6476, !6477, !6478, !6479, !6480}
!6173 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !6171, file: !252, line: 1496, baseType: !4413, size: 64)
!6174 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !6171, file: !252, line: 1498, baseType: !4419, size: 64, offset: 64)
!6175 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !6171, file: !252, line: 1500, baseType: !6176, size: 64, offset: 128)
!6176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6177, size: 64)
!6177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !105, line: 106, size: 256, elements: !6178)
!6178 = !{!6179, !6180, !6184}
!6179 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !6177, file: !105, line: 107, baseType: !1515, size: 128)
!6180 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !6177, file: !105, line: 108, baseType: !6181, size: 64, offset: 128)
!6181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6182, size: 64)
!6182 = !DISubroutineType(types: !6183)
!6183 = !{!1346, !4419, !6176, !1051}
!6184 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !6177, file: !105, line: 110, baseType: !6185, size: 64, offset: 192)
!6185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6186, size: 64)
!6186 = !DISubroutineType(types: !6187)
!6187 = !{!1346, !4419, !6176, !1041, !1349}
!6188 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !6171, file: !252, line: 1508, baseType: !4708, size: 64, offset: 192)
!6189 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !6171, file: !252, line: 1518, baseType: !350, size: 128, offset: 256)
!6190 = !DIDerivedType(tag: DW_TAG_member, name: "global_connector_list_entry", scope: !6171, file: !252, line: 1526, baseType: !350, size: 128, offset: 384)
!6191 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !6171, file: !252, line: 1529, baseType: !5150, size: 256, offset: 512)
!6192 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6171, file: !252, line: 1532, baseType: !1051, size: 64, offset: 768)
!6193 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !6171, file: !252, line: 1539, baseType: !790, size: 256, offset: 832)
!6194 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !6171, file: !252, line: 1547, baseType: !18, size: 32, offset: 1088)
!6195 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type", scope: !6171, file: !252, line: 1553, baseType: !120, size: 32, offset: 1120)
!6196 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type_id", scope: !6171, file: !252, line: 1555, baseType: !120, size: 32, offset: 1152)
!6197 = !DIDerivedType(tag: DW_TAG_member, name: "interlace_allowed", scope: !6171, file: !252, line: 1561, baseType: !1038, size: 8, offset: 1184)
!6198 = !DIDerivedType(tag: DW_TAG_member, name: "doublescan_allowed", scope: !6171, file: !252, line: 1567, baseType: !1038, size: 8, offset: 1192)
!6199 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !6171, file: !252, line: 1573, baseType: !1038, size: 8, offset: 1200)
!6200 = !DIDerivedType(tag: DW_TAG_member, name: "ycbcr_420_allowed", scope: !6171, file: !252, line: 1581, baseType: !1038, size: 8, offset: 1208)
!6201 = !DIDerivedType(tag: DW_TAG_member, name: "registration_state", scope: !6171, file: !252, line: 1589, baseType: !251, size: 32, offset: 1216)
!6202 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !6171, file: !252, line: 1596, baseType: !350, size: 128, offset: 1280)
!6203 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !6171, file: !252, line: 1603, baseType: !257, size: 32, offset: 1408)
!6204 = !DIDerivedType(tag: DW_TAG_member, name: "probed_modes", scope: !6171, file: !252, line: 1611, baseType: !350, size: 128, offset: 1472)
!6205 = !DIDerivedType(tag: DW_TAG_member, name: "display_info", scope: !6171, file: !252, line: 1622, baseType: !6206, size: 1536, offset: 1600)
!6206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_info", file: !252, line: 651, size: 1536, elements: !6207)
!6207 = !{!6208, !6209, !6210, !6211, !6212, !6213, !6214, !6217, !6218, !6219, !6220, !6221, !6222, !6223, !6224, !6225, !6226, !6227, !6228, !6258, !6259, !6264, !6269, !6270, !6271, !6272, !6274, !6275}
!6208 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !6206, file: !252, line: 655, baseType: !18, size: 32)
!6209 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !6206, file: !252, line: 660, baseType: !18, size: 32, offset: 32)
!6210 = !DIDerivedType(tag: DW_TAG_member, name: "bpc", scope: !6206, file: !252, line: 665, baseType: !18, size: 32, offset: 64)
!6211 = !DIDerivedType(tag: DW_TAG_member, name: "subpixel_order", scope: !6206, file: !252, line: 670, baseType: !262, size: 32, offset: 96)
!6212 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !6206, file: !252, line: 684, baseType: !120, size: 32, offset: 128)
!6213 = !DIDerivedType(tag: DW_TAG_member, name: "color_formats", scope: !6206, file: !252, line: 692, baseType: !418, size: 32, offset: 160)
!6214 = !DIDerivedType(tag: DW_TAG_member, name: "bus_formats", scope: !6206, file: !252, line: 699, baseType: !6215, size: 64, offset: 192)
!6215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6216, size: 64)
!6216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!6217 = !DIDerivedType(tag: DW_TAG_member, name: "num_bus_formats", scope: !6206, file: !252, line: 703, baseType: !18, size: 32, offset: 256)
!6218 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !6206, file: !252, line: 710, baseType: !418, size: 32, offset: 288)
!6219 = !DIDerivedType(tag: DW_TAG_member, name: "max_tmds_clock", scope: !6206, file: !252, line: 716, baseType: !120, size: 32, offset: 320)
!6220 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_dual", scope: !6206, file: !252, line: 721, baseType: !1038, size: 8, offset: 352)
!6221 = !DIDerivedType(tag: DW_TAG_member, name: "is_hdmi", scope: !6206, file: !252, line: 729, baseType: !1038, size: 8, offset: 360)
!6222 = !DIDerivedType(tag: DW_TAG_member, name: "has_audio", scope: !6206, file: !252, line: 737, baseType: !1038, size: 8, offset: 368)
!6223 = !DIDerivedType(tag: DW_TAG_member, name: "has_hdmi_infoframe", scope: !6206, file: !252, line: 742, baseType: !1038, size: 8, offset: 376)
!6224 = !DIDerivedType(tag: DW_TAG_member, name: "rgb_quant_range_selectable", scope: !6206, file: !252, line: 748, baseType: !1038, size: 8, offset: 384)
!6225 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_rgb444_dc_modes", scope: !6206, file: !252, line: 754, baseType: !389, size: 8, offset: 392)
!6226 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_ycbcr444_dc_modes", scope: !6206, file: !252, line: 760, baseType: !389, size: 8, offset: 400)
!6227 = !DIDerivedType(tag: DW_TAG_member, name: "cea_rev", scope: !6206, file: !252, line: 765, baseType: !389, size: 8, offset: 408)
!6228 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi", scope: !6206, file: !252, line: 770, baseType: !6229, size: 768, offset: 448)
!6229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_info", file: !252, line: 293, size: 768, elements: !6230)
!6230 = !{!6231, !6241, !6242, !6243, !6244, !6245, !6246}
!6231 = !DIDerivedType(tag: DW_TAG_member, name: "scdc", scope: !6229, file: !252, line: 295, baseType: !6232, size: 32)
!6232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scdc", file: !252, line: 231, size: 32, elements: !6233)
!6233 = !{!6234, !6235, !6236}
!6234 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !6232, file: !252, line: 235, baseType: !1038, size: 8)
!6235 = !DIDerivedType(tag: DW_TAG_member, name: "read_request", scope: !6232, file: !252, line: 239, baseType: !1038, size: 8, offset: 8)
!6236 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling", scope: !6232, file: !252, line: 243, baseType: !6237, size: 16, offset: 16)
!6237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scrambling", file: !252, line: 214, size: 16, elements: !6238)
!6238 = !{!6239, !6240}
!6239 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !6237, file: !252, line: 218, baseType: !1038, size: 8)
!6240 = !DIDerivedType(tag: DW_TAG_member, name: "low_rates", scope: !6237, file: !252, line: 222, baseType: !1038, size: 8, offset: 8)
!6241 = !DIDerivedType(tag: DW_TAG_member, name: "y420_vdb_modes", scope: !6229, file: !252, line: 303, baseType: !2493, size: 256, offset: 64)
!6242 = !DIDerivedType(tag: DW_TAG_member, name: "y420_cmdb_modes", scope: !6229, file: !252, line: 311, baseType: !2493, size: 256, offset: 320)
!6243 = !DIDerivedType(tag: DW_TAG_member, name: "y420_dc_modes", scope: !6229, file: !252, line: 314, baseType: !389, size: 8, offset: 576)
!6244 = !DIDerivedType(tag: DW_TAG_member, name: "max_frl_rate_per_lane", scope: !6229, file: !252, line: 317, baseType: !389, size: 8, offset: 584)
!6245 = !DIDerivedType(tag: DW_TAG_member, name: "max_lanes", scope: !6229, file: !252, line: 320, baseType: !389, size: 8, offset: 592)
!6246 = !DIDerivedType(tag: DW_TAG_member, name: "dsc_cap", scope: !6229, file: !252, line: 323, baseType: !6247, size: 128, offset: 608)
!6247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_dsc_cap", file: !252, line: 253, size: 128, elements: !6248)
!6248 = !{!6249, !6250, !6251, !6252, !6253, !6254, !6255, !6256, !6257}
!6249 = !DIDerivedType(tag: DW_TAG_member, name: "v_1p2", scope: !6247, file: !252, line: 255, baseType: !1038, size: 8)
!6250 = !DIDerivedType(tag: DW_TAG_member, name: "native_420", scope: !6247, file: !252, line: 258, baseType: !1038, size: 8, offset: 8)
!6251 = !DIDerivedType(tag: DW_TAG_member, name: "all_bpp", scope: !6247, file: !252, line: 264, baseType: !1038, size: 8, offset: 16)
!6252 = !DIDerivedType(tag: DW_TAG_member, name: "bpc_supported", scope: !6247, file: !252, line: 269, baseType: !389, size: 8, offset: 24)
!6253 = !DIDerivedType(tag: DW_TAG_member, name: "max_slices", scope: !6247, file: !252, line: 272, baseType: !389, size: 8, offset: 32)
!6254 = !DIDerivedType(tag: DW_TAG_member, name: "clk_per_slice", scope: !6247, file: !252, line: 275, baseType: !120, size: 32, offset: 64)
!6255 = !DIDerivedType(tag: DW_TAG_member, name: "max_lanes", scope: !6247, file: !252, line: 278, baseType: !389, size: 8, offset: 96)
!6256 = !DIDerivedType(tag: DW_TAG_member, name: "max_frl_rate_per_lane", scope: !6247, file: !252, line: 281, baseType: !389, size: 8, offset: 104)
!6257 = !DIDerivedType(tag: DW_TAG_member, name: "total_chunk_kbytes", scope: !6247, file: !252, line: 284, baseType: !389, size: 8, offset: 112)
!6258 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop", scope: !6206, file: !252, line: 775, baseType: !1038, size: 8, offset: 1216)
!6259 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_range", scope: !6206, file: !252, line: 780, baseType: !6260, size: 32, offset: 1232)
!6260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_monitor_range_info", file: !252, line: 383, size: 32, elements: !6261)
!6261 = !{!6262, !6263}
!6262 = !DIDerivedType(tag: DW_TAG_member, name: "min_vfreq", scope: !6260, file: !252, line: 384, baseType: !399, size: 16)
!6263 = !DIDerivedType(tag: DW_TAG_member, name: "max_vfreq", scope: !6260, file: !252, line: 385, baseType: !399, size: 16, offset: 16)
!6264 = !DIDerivedType(tag: DW_TAG_member, name: "luminance_range", scope: !6206, file: !252, line: 785, baseType: !6265, size: 64, offset: 1280)
!6265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_luminance_range_info", file: !252, line: 399, size: 64, elements: !6266)
!6266 = !{!6267, !6268}
!6267 = !DIDerivedType(tag: DW_TAG_member, name: "min_luminance", scope: !6265, file: !252, line: 400, baseType: !418, size: 32)
!6268 = !DIDerivedType(tag: DW_TAG_member, name: "max_luminance", scope: !6265, file: !252, line: 401, baseType: !418, size: 32, offset: 32)
!6269 = !DIDerivedType(tag: DW_TAG_member, name: "mso_stream_count", scope: !6206, file: !252, line: 792, baseType: !389, size: 8, offset: 1344)
!6270 = !DIDerivedType(tag: DW_TAG_member, name: "mso_pixel_overlap", scope: !6206, file: !252, line: 797, baseType: !389, size: 8, offset: 1352)
!6271 = !DIDerivedType(tag: DW_TAG_member, name: "max_dsc_bpp", scope: !6206, file: !252, line: 803, baseType: !418, size: 32, offset: 1376)
!6272 = !DIDerivedType(tag: DW_TAG_member, name: "vics", scope: !6206, file: !252, line: 808, baseType: !6273, size: 64, offset: 1408)
!6273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!6274 = !DIDerivedType(tag: DW_TAG_member, name: "vics_len", scope: !6206, file: !252, line: 813, baseType: !120, size: 32, offset: 1472)
!6275 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !6206, file: !252, line: 818, baseType: !418, size: 32, offset: 1504)
!6276 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !6171, file: !252, line: 1625, baseType: !6277, size: 64, offset: 3136)
!6277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6278, size: 64)
!6278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6279)
!6279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_funcs", file: !252, line: 1034, size: 1024, elements: !6280)
!6280 = !{!6281, !6285, !6289, !6293, !6294, !6298, !6302, !6306, !6307, !6308, !6357, !6361, !6365, !6371, !6375, !6376}
!6281 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !6279, file: !252, line: 1051, baseType: !6282, size: 64)
!6282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6283, size: 64)
!6283 = !DISubroutineType(types: !6284)
!6284 = !{!120, !6170, !120}
!6285 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !6279, file: !252, line: 1063, baseType: !6286, size: 64, offset: 64)
!6286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6287, size: 64)
!6287 = !DISubroutineType(types: !6288)
!6288 = !{null, !6170}
!6289 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !6279, file: !252, line: 1096, baseType: !6290, size: 64, offset: 128)
!6290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6291, size: 64)
!6291 = !DISubroutineType(types: !6292)
!6292 = !{!257, !6170, !1038}
!6293 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !6279, file: !252, line: 1113, baseType: !6286, size: 64, offset: 192)
!6294 = !DIDerivedType(tag: DW_TAG_member, name: "fill_modes", scope: !6279, file: !252, line: 1138, baseType: !6295, size: 64, offset: 256)
!6295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6296, size: 64)
!6296 = !DISubroutineType(types: !6297)
!6297 = !{!120, !6170, !1003, !1003}
!6298 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !6279, file: !252, line: 1154, baseType: !6299, size: 64, offset: 320)
!6299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6300, size: 64)
!6300 = !DISubroutineType(types: !6301)
!6301 = !{!120, !6170, !5144, !5166}
!6302 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !6279, file: !252, line: 1173, baseType: !6303, size: 64, offset: 384)
!6303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6304, size: 64)
!6304 = !DISubroutineType(types: !6305)
!6305 = !{!120, !6170}
!6306 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !6279, file: !252, line: 1186, baseType: !6286, size: 64, offset: 448)
!6307 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !6279, file: !252, line: 1196, baseType: !6286, size: 64, offset: 512)
!6308 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !6279, file: !252, line: 1229, baseType: !6309, size: 64, offset: 576)
!6309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6310, size: 64)
!6310 = !DISubroutineType(types: !6311)
!6311 = !{!6312, !6170}
!6312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6313, size: 64)
!6313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_state", file: !252, line: 884, size: 1280, elements: !6314)
!6314 = !{!6315, !6316, !6317, !6320, !6321, !6322, !6323, !6343, !6344, !6345, !6346, !6347, !6348, !6349, !6350, !6353, !6354, !6355, !6356}
!6315 = !DIDerivedType(tag: DW_TAG_member, name: "connector", scope: !6313, file: !252, line: 886, baseType: !6170, size: 64)
!6316 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !6313, file: !252, line: 894, baseType: !5941, size: 64, offset: 64)
!6317 = !DIDerivedType(tag: DW_TAG_member, name: "best_encoder", scope: !6313, file: !252, line: 912, baseType: !6318, size: 64, offset: 128)
!6318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6319, size: 64)
!6319 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder", file: !252, line: 41, flags: DIFlagFwdDecl)
!6320 = !DIDerivedType(tag: DW_TAG_member, name: "link_status", scope: !6313, file: !252, line: 918, baseType: !270, size: 32, offset: 192)
!6321 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6313, file: !252, line: 921, baseType: !5122, size: 64, offset: 256)
!6322 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !6313, file: !252, line: 928, baseType: !6044, size: 64, offset: 320)
!6323 = !DIDerivedType(tag: DW_TAG_member, name: "tv", scope: !6313, file: !252, line: 931, baseType: !6324, size: 448, offset: 384)
!6324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tv_connector_state", file: !252, line: 867, size: 448, elements: !6325)
!6325 = !{!6326, !6327, !6328, !6335, !6336, !6337, !6338, !6339, !6340, !6341, !6342}
!6326 = !DIDerivedType(tag: DW_TAG_member, name: "select_subconnector", scope: !6324, file: !252, line: 868, baseType: !274, size: 32)
!6327 = !DIDerivedType(tag: DW_TAG_member, name: "subconnector", scope: !6324, file: !252, line: 869, baseType: !274, size: 32, offset: 32)
!6328 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !6324, file: !252, line: 870, baseType: !6329, size: 128, offset: 64)
!6329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_tv_margins", file: !252, line: 831, size: 128, elements: !6330)
!6330 = !{!6331, !6332, !6333, !6334}
!6331 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !6329, file: !252, line: 835, baseType: !18, size: 32)
!6332 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !6329, file: !252, line: 840, baseType: !18, size: 32, offset: 32)
!6333 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !6329, file: !252, line: 845, baseType: !18, size: 32, offset: 64)
!6334 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !6329, file: !252, line: 850, baseType: !18, size: 32, offset: 96)
!6335 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mode", scope: !6324, file: !252, line: 871, baseType: !18, size: 32, offset: 192)
!6336 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !6324, file: !252, line: 872, baseType: !18, size: 32, offset: 224)
!6337 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !6324, file: !252, line: 873, baseType: !18, size: 32, offset: 256)
!6338 = !DIDerivedType(tag: DW_TAG_member, name: "contrast", scope: !6324, file: !252, line: 874, baseType: !18, size: 32, offset: 288)
!6339 = !DIDerivedType(tag: DW_TAG_member, name: "flicker_reduction", scope: !6324, file: !252, line: 875, baseType: !18, size: 32, offset: 320)
!6340 = !DIDerivedType(tag: DW_TAG_member, name: "overscan", scope: !6324, file: !252, line: 876, baseType: !18, size: 32, offset: 352)
!6341 = !DIDerivedType(tag: DW_TAG_member, name: "saturation", scope: !6324, file: !252, line: 877, baseType: !18, size: 32, offset: 384)
!6342 = !DIDerivedType(tag: DW_TAG_member, name: "hue", scope: !6324, file: !252, line: 878, baseType: !18, size: 32, offset: 416)
!6343 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_aware", scope: !6313, file: !252, line: 945, baseType: !1038, size: 8, offset: 832)
!6344 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !6313, file: !252, line: 954, baseType: !195, size: 32, offset: 864)
!6345 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !6313, file: !252, line: 962, baseType: !18, size: 32, offset: 896)
!6346 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type", scope: !6313, file: !252, line: 968, baseType: !18, size: 32, offset: 928)
!6347 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode", scope: !6313, file: !252, line: 974, baseType: !18, size: 32, offset: 960)
!6348 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection", scope: !6313, file: !252, line: 980, baseType: !18, size: 32, offset: 992)
!6349 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !6313, file: !252, line: 987, baseType: !290, size: 32, offset: 1024)
!6350 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_job", scope: !6313, file: !252, line: 1000, baseType: !6351, size: 64, offset: 1088)
!6351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6352, size: 64)
!6352 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_writeback_job", file: !252, line: 1000, flags: DIFlagFwdDecl)
!6353 = !DIDerivedType(tag: DW_TAG_member, name: "max_requested_bpc", scope: !6313, file: !252, line: 1006, baseType: !389, size: 8, offset: 1152)
!6354 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc", scope: !6313, file: !252, line: 1012, baseType: !389, size: 8, offset: 1160)
!6355 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_sw_state", scope: !6313, file: !252, line: 1018, baseType: !310, size: 32, offset: 1184)
!6356 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata", scope: !6313, file: !252, line: 1024, baseType: !6022, size: 64, offset: 1216)
!6357 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !6279, file: !252, line: 1239, baseType: !6358, size: 64, offset: 640)
!6358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6359, size: 64)
!6359 = !DISubroutineType(types: !6360)
!6360 = !{null, !6170, !6312}
!6361 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !6279, file: !252, line: 1284, baseType: !6362, size: 64, offset: 704)
!6362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6363, size: 64)
!6363 = !DISubroutineType(types: !6364)
!6364 = !{!120, !6170, !6312, !5144, !5166}
!6365 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !6279, file: !252, line: 1307, baseType: !6366, size: 64, offset: 768)
!6366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6367, size: 64)
!6367 = !DISubroutineType(types: !6368)
!6368 = !{!120, !6170, !6369, !5144, !5177}
!6369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6370, size: 64)
!6370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6313)
!6371 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !6279, file: !252, line: 1321, baseType: !6372, size: 64, offset: 832)
!6372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6373, size: 64)
!6373 = !DISubroutineType(types: !6374)
!6374 = !{null, !6070, !6369}
!6375 = !DIDerivedType(tag: DW_TAG_member, name: "oob_hotplug_event", scope: !6279, file: !252, line: 1330, baseType: !6286, size: 64, offset: 896)
!6376 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_init", scope: !6279, file: !252, line: 1337, baseType: !6377, size: 64, offset: 960)
!6377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6378, size: 64)
!6378 = !DISubroutineType(types: !6379)
!6379 = !{null, !6170, !1157}
!6380 = !DIDerivedType(tag: DW_TAG_member, name: "edid_blob_ptr", scope: !6171, file: !252, line: 1632, baseType: !6022, size: 64, offset: 3200)
!6381 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !6171, file: !252, line: 1635, baseType: !5157, size: 3136, offset: 3264)
!6382 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !6171, file: !252, line: 1641, baseType: !5144, size: 64, offset: 6400)
!6383 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_capable_property", scope: !6171, file: !252, line: 1652, baseType: !5144, size: 64, offset: 6464)
!6384 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace_property", scope: !6171, file: !252, line: 1658, baseType: !5144, size: 64, offset: 6528)
!6385 = !DIDerivedType(tag: DW_TAG_member, name: "path_blob_ptr", scope: !6171, file: !252, line: 1666, baseType: !6022, size: 64, offset: 6592)
!6386 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc_property", scope: !6171, file: !252, line: 1672, baseType: !5144, size: 64, offset: 6656)
!6387 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen", scope: !6171, file: !252, line: 1675, baseType: !6388, size: 64, offset: 6720)
!6388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6389, size: 64)
!6389 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_privacy_screen", file: !252, line: 46, flags: DIFlagFwdDecl)
!6390 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_notifier", scope: !6171, file: !252, line: 1678, baseType: !6391, size: 192, offset: 6784)
!6391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !6392, line: 54, size: 192, elements: !6393)
!6392 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!6393 = !{!6394, !6400, !6401}
!6394 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !6391, file: !6392, line: 55, baseType: !6395, size: 64)
!6395 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !6392, line: 51, baseType: !6396)
!6396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6397, size: 64)
!6397 = !DISubroutineType(types: !6398)
!6398 = !{!120, !6399, !415, !340}
!6399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6391, size: 64)
!6400 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6391, file: !6392, line: 56, baseType: !6399, size: 64, offset: 64)
!6401 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !6391, file: !6392, line: 57, baseType: !120, size: 32, offset: 128)
!6402 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_sw_state_property", scope: !6171, file: !252, line: 1684, baseType: !5144, size: 64, offset: 6976)
!6403 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_hw_state_property", scope: !6171, file: !252, line: 1690, baseType: !5144, size: 64, offset: 7040)
!6404 = !DIDerivedType(tag: DW_TAG_member, name: "polled", scope: !6171, file: !252, line: 1717, baseType: !6405, size: 8, offset: 7104)
!6405 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !351, line: 108, baseType: !389)
!6406 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !6171, file: !252, line: 1725, baseType: !120, size: 32, offset: 7136)
!6407 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !6171, file: !252, line: 1728, baseType: !6408, size: 64, offset: 7168)
!6408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6409, size: 64)
!6409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6410)
!6410 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_helper_funcs", file: !252, line: 37, flags: DIFlagFwdDecl)
!6411 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_mode", scope: !6171, file: !252, line: 1731, baseType: !6412, size: 768, offset: 7232)
!6412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_cmdline_mode", file: !252, line: 1348, size: 768, elements: !6413)
!6413 = !{!6414, !6415, !6416, !6417, !6418, !6419, !6420, !6421, !6422, !6423, !6424, !6425, !6426, !6427, !6428, !6429, !6430, !6431, !6432}
!6414 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6412, file: !252, line: 1354, baseType: !3000, size: 256)
!6415 = !DIDerivedType(tag: DW_TAG_member, name: "specified", scope: !6412, file: !252, line: 1361, baseType: !1038, size: 8, offset: 256)
!6416 = !DIDerivedType(tag: DW_TAG_member, name: "refresh_specified", scope: !6412, file: !252, line: 1368, baseType: !1038, size: 8, offset: 264)
!6417 = !DIDerivedType(tag: DW_TAG_member, name: "bpp_specified", scope: !6412, file: !252, line: 1375, baseType: !1038, size: 8, offset: 272)
!6418 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_clock", scope: !6412, file: !252, line: 1382, baseType: !18, size: 32, offset: 288)
!6419 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !6412, file: !252, line: 1389, baseType: !120, size: 32, offset: 320)
!6420 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !6412, file: !252, line: 1396, baseType: !120, size: 32, offset: 352)
!6421 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !6412, file: !252, line: 1403, baseType: !120, size: 32, offset: 384)
!6422 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !6412, file: !252, line: 1410, baseType: !120, size: 32, offset: 416)
!6423 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !6412, file: !252, line: 1417, baseType: !1038, size: 8, offset: 448)
!6424 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !6412, file: !252, line: 1424, baseType: !1038, size: 8, offset: 456)
!6425 = !DIDerivedType(tag: DW_TAG_member, name: "cvt", scope: !6412, file: !252, line: 1432, baseType: !1038, size: 8, offset: 464)
!6426 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !6412, file: !252, line: 1440, baseType: !1038, size: 8, offset: 472)
!6427 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !6412, file: !252, line: 1448, baseType: !316, size: 32, offset: 480)
!6428 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_reflection", scope: !6412, file: !252, line: 1458, baseType: !18, size: 32, offset: 512)
!6429 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !6412, file: !252, line: 1466, baseType: !322, size: 32, offset: 544)
!6430 = !DIDerivedType(tag: DW_TAG_member, name: "tv_margins", scope: !6412, file: !252, line: 1471, baseType: !6329, size: 128, offset: 576)
!6431 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode", scope: !6412, file: !252, line: 1476, baseType: !329, size: 32, offset: 704)
!6432 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_specified", scope: !6412, file: !252, line: 1483, baseType: !1038, size: 8, offset: 736)
!6433 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !6171, file: !252, line: 1733, baseType: !316, size: 32, offset: 8000)
!6434 = !DIDerivedType(tag: DW_TAG_member, name: "edid_override", scope: !6171, file: !252, line: 1741, baseType: !6435, size: 64, offset: 8064)
!6435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6436, size: 64)
!6436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6437)
!6437 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_edid", file: !252, line: 1741, flags: DIFlagFwdDecl)
!6438 = !DIDerivedType(tag: DW_TAG_member, name: "edid_override_mutex", scope: !6171, file: !252, line: 1746, baseType: !790, size: 256, offset: 8128)
!6439 = !DIDerivedType(tag: DW_TAG_member, name: "epoch_counter", scope: !6171, file: !252, line: 1749, baseType: !476, size: 64, offset: 8384)
!6440 = !DIDerivedType(tag: DW_TAG_member, name: "possible_encoders", scope: !6171, file: !252, line: 1756, baseType: !418, size: 32, offset: 8448)
!6441 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !6171, file: !252, line: 1764, baseType: !6318, size: 64, offset: 8512)
!6442 = !DIDerivedType(tag: DW_TAG_member, name: "eld", scope: !6171, file: !252, line: 1768, baseType: !6443, size: 1024, offset: 8576)
!6443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6405, size: 1024, elements: !6444)
!6444 = !{!6445}
!6445 = !DISubrange(count: 128)
!6446 = !DIDerivedType(tag: DW_TAG_member, name: "eld_mutex", scope: !6171, file: !252, line: 1770, baseType: !790, size: 256, offset: 9600)
!6447 = !DIDerivedType(tag: DW_TAG_member, name: "latency_present", scope: !6171, file: !252, line: 1773, baseType: !6448, size: 16, offset: 9856)
!6448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1038, size: 16, elements: !2390)
!6449 = !DIDerivedType(tag: DW_TAG_member, name: "video_latency", scope: !6171, file: !252, line: 1778, baseType: !6450, size: 64, offset: 9888)
!6450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 64, elements: !2390)
!6451 = !DIDerivedType(tag: DW_TAG_member, name: "audio_latency", scope: !6171, file: !252, line: 1783, baseType: !6450, size: 64, offset: 9952)
!6452 = !DIDerivedType(tag: DW_TAG_member, name: "ddc", scope: !6171, file: !252, line: 1794, baseType: !6453, size: 64, offset: 10048)
!6453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6454, size: 64)
!6454 = !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !252, line: 48, flags: DIFlagFwdDecl)
!6455 = !DIDerivedType(tag: DW_TAG_member, name: "null_edid_counter", scope: !6171, file: !252, line: 1800, baseType: !120, size: 32, offset: 10112)
!6456 = !DIDerivedType(tag: DW_TAG_member, name: "bad_edid_counter", scope: !6171, file: !252, line: 1803, baseType: !18, size: 32, offset: 10144)
!6457 = !DIDerivedType(tag: DW_TAG_member, name: "edid_corrupt", scope: !6171, file: !252, line: 1810, baseType: !1038, size: 8, offset: 10176)
!6458 = !DIDerivedType(tag: DW_TAG_member, name: "real_edid_checksum", scope: !6171, file: !252, line: 1816, baseType: !389, size: 8, offset: 10184)
!6459 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_entry", scope: !6171, file: !252, line: 1819, baseType: !1157, size: 64, offset: 10240)
!6460 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6171, file: !252, line: 1835, baseType: !6312, size: 64, offset: 10304)
!6461 = !DIDerivedType(tag: DW_TAG_member, name: "tile_blob_ptr", scope: !6171, file: !252, line: 1852, baseType: !6022, size: 64, offset: 10368)
!6462 = !DIDerivedType(tag: DW_TAG_member, name: "has_tile", scope: !6171, file: !252, line: 1855, baseType: !1038, size: 8, offset: 10432)
!6463 = !DIDerivedType(tag: DW_TAG_member, name: "tile_group", scope: !6171, file: !252, line: 1857, baseType: !6464, size: 64, offset: 10496)
!6464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6465, size: 64)
!6465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tile_group", file: !252, line: 2058, size: 256, elements: !6466)
!6466 = !{!6467, !6468, !6469, !6470}
!6467 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !6465, file: !252, line: 2059, baseType: !2248, size: 32)
!6468 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !6465, file: !252, line: 2060, baseType: !4413, size: 64, offset: 64)
!6469 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !6465, file: !252, line: 2061, baseType: !120, size: 32, offset: 128)
!6470 = !DIDerivedType(tag: DW_TAG_member, name: "group_data", scope: !6465, file: !252, line: 2062, baseType: !6471, size: 64, offset: 160)
!6471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 64, elements: !587)
!6472 = !DIDerivedType(tag: DW_TAG_member, name: "tile_is_single_monitor", scope: !6171, file: !252, line: 1859, baseType: !1038, size: 8, offset: 10560)
!6473 = !DIDerivedType(tag: DW_TAG_member, name: "num_h_tile", scope: !6171, file: !252, line: 1863, baseType: !6405, size: 8, offset: 10568)
!6474 = !DIDerivedType(tag: DW_TAG_member, name: "num_v_tile", scope: !6171, file: !252, line: 1863, baseType: !6405, size: 8, offset: 10576)
!6475 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_loc", scope: !6171, file: !252, line: 1866, baseType: !6405, size: 8, offset: 10584)
!6476 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_loc", scope: !6171, file: !252, line: 1866, baseType: !6405, size: 8, offset: 10592)
!6477 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_size", scope: !6171, file: !252, line: 1869, baseType: !6015, size: 16, offset: 10608)
!6478 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_size", scope: !6171, file: !252, line: 1869, baseType: !6015, size: 16, offset: 10624)
!6479 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !6171, file: !252, line: 1878, baseType: !437, size: 64, offset: 10688)
!6480 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_sink_metadata", scope: !6171, file: !252, line: 1881, baseType: !6481, size: 96, offset: 10752)
!6481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_sink_metadata", file: !196, line: 383, size: 96, elements: !6482)
!6482 = !{!6483, !6484}
!6483 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !6481, file: !196, line: 387, baseType: !419, size: 32)
!6484 = !DIDerivedType(tag: DW_TAG_member, scope: !6481, file: !196, line: 391, baseType: !6485, size: 64, offset: 32)
!6485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6481, file: !196, line: 391, size: 64, elements: !6486)
!6486 = !{!6487}
!6487 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi_type1", scope: !6485, file: !196, line: 392, baseType: !6488, size: 64)
!6488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_static_metadata", file: !196, line: 370, size: 64, elements: !6489)
!6489 = !{!6490, !6491, !6492, !6493, !6494}
!6490 = !DIDerivedType(tag: DW_TAG_member, name: "eotf", scope: !6488, file: !196, line: 371, baseType: !391, size: 8)
!6491 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !6488, file: !196, line: 372, baseType: !391, size: 8, offset: 8)
!6492 = !DIDerivedType(tag: DW_TAG_member, name: "max_cll", scope: !6488, file: !196, line: 373, baseType: !400, size: 16, offset: 16)
!6493 = !DIDerivedType(tag: DW_TAG_member, name: "max_fall", scope: !6488, file: !196, line: 374, baseType: !400, size: 16, offset: 32)
!6494 = !DIDerivedType(tag: DW_TAG_member, name: "min_cll", scope: !6488, file: !196, line: 375, baseType: !400, size: 16, offset: 48)
!6495 = !DIDerivedType(tag: DW_TAG_member, name: "num_connectors", scope: !6160, file: !5943, line: 1202, baseType: !1349, size: 64, offset: 320)
!6496 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip", scope: !6131, file: !5943, line: 576, baseType: !6497, size: 64, offset: 448)
!6497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6498, size: 64)
!6498 = !DISubroutineType(types: !6499)
!6499 = !{!120, !5941, !5006, !6500, !1003, !4958}
!6500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6501, size: 64)
!6501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_pending_vblank_event", file: !4410, line: 42, size: 960, elements: !6502)
!6502 = !{!6503, !6521, !6522, !6523}
!6503 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !6501, file: !4410, line: 46, baseType: !6504, size: 576)
!6504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_pending_event", file: !4884, line: 97, size: 576, elements: !6505)
!6505 = !{!6506, !6507, !6511, !6517, !6518, !6519, !6520}
!6506 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !6504, file: !4884, line: 105, baseType: !2263, size: 64)
!6507 = !DIDerivedType(tag: DW_TAG_member, name: "completion_release", scope: !6504, file: !4884, line: 114, baseType: !6508, size: 64, offset: 64)
!6508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6509, size: 64)
!6509 = !DISubroutineType(types: !6510)
!6510 = !{null, !2263}
!6511 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !6504, file: !4884, line: 124, baseType: !6512, size: 64, offset: 128)
!6512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6513, size: 64)
!6513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_event", file: !5026, line: 1226, size: 64, elements: !6514)
!6514 = !{!6515, !6516}
!6515 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6513, file: !5026, line: 1227, baseType: !419, size: 32)
!6516 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !6513, file: !5026, line: 1228, baseType: !419, size: 32, offset: 32)
!6517 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !6504, file: !4884, line: 132, baseType: !6003, size: 64, offset: 192)
!6518 = !DIDerivedType(tag: DW_TAG_member, name: "file_priv", scope: !6504, file: !4884, line: 140, baseType: !5008, size: 64, offset: 256)
!6519 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !6504, file: !4884, line: 149, baseType: !350, size: 128, offset: 320)
!6520 = !DIDerivedType(tag: DW_TAG_member, name: "pending_link", scope: !6504, file: !4884, line: 158, baseType: !350, size: 128, offset: 448)
!6521 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !6501, file: !4410, line: 50, baseType: !18, size: 32, offset: 576)
!6522 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !6501, file: !4410, line: 54, baseType: !476, size: 64, offset: 640)
!6523 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !6501, file: !4410, line: 78, baseType: !6524, size: 256, offset: 704)
!6524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6501, file: !4410, line: 58, size: 256, elements: !6525)
!6525 = !{!6526, !6527, !6536}
!6526 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !6524, file: !4410, line: 62, baseType: !6513, size: 64)
!6527 = !DIDerivedType(tag: DW_TAG_member, name: "vbl", scope: !6524, file: !4410, line: 72, baseType: !6528, size: 256)
!6528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_event_vblank", file: !5026, line: 1258, size: 256, elements: !6529)
!6529 = !{!6530, !6531, !6532, !6533, !6534, !6535}
!6530 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !6528, file: !5026, line: 1259, baseType: !6513, size: 64)
!6531 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !6528, file: !5026, line: 1260, baseType: !477, size: 64, offset: 64)
!6532 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !6528, file: !5026, line: 1261, baseType: !419, size: 32, offset: 128)
!6533 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !6528, file: !5026, line: 1262, baseType: !419, size: 32, offset: 160)
!6534 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !6528, file: !5026, line: 1263, baseType: !419, size: 32, offset: 192)
!6535 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_id", scope: !6528, file: !5026, line: 1264, baseType: !419, size: 32, offset: 224)
!6536 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !6524, file: !4410, line: 77, baseType: !6537, size: 256)
!6537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_event_crtc_sequence", file: !5026, line: 1270, size: 256, elements: !6538)
!6538 = !{!6539, !6540, !6541, !6542}
!6539 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !6537, file: !5026, line: 1271, baseType: !6513, size: 64)
!6540 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !6537, file: !5026, line: 1272, baseType: !477, size: 64, offset: 64)
!6541 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !6537, file: !5026, line: 1273, baseType: !488, size: 64, offset: 128)
!6542 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !6537, file: !5026, line: 1274, baseType: !477, size: 64, offset: 192)
!6543 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip_target", scope: !6131, file: !5943, line: 595, baseType: !6544, size: 64, offset: 512)
!6544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6545, size: 64)
!6545 = !DISubroutineType(types: !6546)
!6546 = !{!120, !5941, !5006, !6500, !1003, !1003, !4958}
!6547 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !6131, file: !5943, line: 615, baseType: !6548, size: 64, offset: 576)
!6548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6549, size: 64)
!6549 = !DISubroutineType(types: !6550)
!6550 = !{!120, !5941, !5144, !5166}
!6551 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !6131, file: !5943, line: 649, baseType: !6552, size: 64, offset: 640)
!6552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6553, size: 64)
!6553 = !DISubroutineType(types: !6554)
!6554 = !{!6555, !5941}
!6555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6556, size: 64)
!6556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_state", file: !5943, line: 81, size: 2688, elements: !6557)
!6557 = !{!6558, !6559, !6560, !6561, !6562, !6563, !6564, !6565, !6566, !6567, !6568, !6569, !6570, !6571, !6572, !6573, !6574, !6575, !6576, !6577, !6578, !6579, !6580, !6581, !6582, !6583, !6584}
!6558 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !6556, file: !5943, line: 83, baseType: !5941, size: 64)
!6559 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !6556, file: !5943, line: 90, baseType: !1038, size: 8, offset: 64)
!6560 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !6556, file: !5943, line: 105, baseType: !1038, size: 8, offset: 72)
!6561 = !DIDerivedType(tag: DW_TAG_member, name: "planes_changed", scope: !6556, file: !5943, line: 111, baseType: !1038, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 80)
!6562 = !DIDerivedType(tag: DW_TAG_member, name: "mode_changed", scope: !6556, file: !5943, line: 123, baseType: !1038, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 80)
!6563 = !DIDerivedType(tag: DW_TAG_member, name: "active_changed", scope: !6556, file: !5943, line: 130, baseType: !1038, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 80)
!6564 = !DIDerivedType(tag: DW_TAG_member, name: "connectors_changed", scope: !6556, file: !5943, line: 141, baseType: !1038, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 80)
!6565 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_changed", scope: !6556, file: !5943, line: 147, baseType: !1038, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 80)
!6566 = !DIDerivedType(tag: DW_TAG_member, name: "color_mgmt_changed", scope: !6556, file: !5943, line: 153, baseType: !1038, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 80)
!6567 = !DIDerivedType(tag: DW_TAG_member, name: "no_vblank", scope: !6556, file: !5943, line: 189, baseType: !1038, size: 1, offset: 86, flags: DIFlagBitField, extraData: i64 80)
!6568 = !DIDerivedType(tag: DW_TAG_member, name: "plane_mask", scope: !6556, file: !5943, line: 195, baseType: !418, size: 32, offset: 96)
!6569 = !DIDerivedType(tag: DW_TAG_member, name: "connector_mask", scope: !6556, file: !5943, line: 201, baseType: !418, size: 32, offset: 128)
!6570 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_mask", scope: !6556, file: !5943, line: 207, baseType: !418, size: 32, offset: 160)
!6571 = !DIDerivedType(tag: DW_TAG_member, name: "adjusted_mode", scope: !6556, file: !5943, line: 222, baseType: !5082, size: 960, offset: 192)
!6572 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !6556, file: !5943, line: 239, baseType: !5082, size: 960, offset: 1152)
!6573 = !DIDerivedType(tag: DW_TAG_member, name: "mode_blob", scope: !6556, file: !5943, line: 245, baseType: !6022, size: 64, offset: 2112)
!6574 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut", scope: !6556, file: !5943, line: 254, baseType: !6022, size: 64, offset: 2176)
!6575 = !DIDerivedType(tag: DW_TAG_member, name: "ctm", scope: !6556, file: !5943, line: 262, baseType: !6022, size: 64, offset: 2240)
!6576 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut", scope: !6556, file: !5943, line: 275, baseType: !6022, size: 64, offset: 2304)
!6577 = !DIDerivedType(tag: DW_TAG_member, name: "target_vblank", scope: !6556, file: !5943, line: 283, baseType: !418, size: 32, offset: 2368)
!6578 = !DIDerivedType(tag: DW_TAG_member, name: "async_flip", scope: !6556, file: !5943, line: 291, baseType: !1038, size: 8, offset: 2400)
!6579 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_enabled", scope: !6556, file: !5943, line: 300, baseType: !1038, size: 8, offset: 2408)
!6580 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_active", scope: !6556, file: !5943, line: 311, baseType: !1038, size: 8, offset: 2416)
!6581 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter", scope: !6556, file: !5943, line: 318, baseType: !241, size: 32, offset: 2432)
!6582 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !6556, file: !5943, line: 375, baseType: !6500, size: 64, offset: 2496)
!6583 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !6556, file: !5943, line: 384, baseType: !6044, size: 64, offset: 2560)
!6584 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6556, file: !5943, line: 387, baseType: !5122, size: 64, offset: 2624)
!6585 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !6131, file: !5943, line: 659, baseType: !6586, size: 64, offset: 704)
!6586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6587, size: 64)
!6587 = !DISubroutineType(types: !6588)
!6588 = !{null, !5941, !6555}
!6589 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !6131, file: !5943, line: 704, baseType: !6590, size: 64, offset: 768)
!6590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6591, size: 64)
!6591 = !DISubroutineType(types: !6592)
!6592 = !{!120, !5941, !6555, !5144, !5166}
!6593 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !6131, file: !5943, line: 726, baseType: !6594, size: 64, offset: 832)
!6594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6595, size: 64)
!6595 = !DISubroutineType(types: !6596)
!6596 = !{!120, !5941, !6597, !5144, !5177}
!6597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6598, size: 64)
!6598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6556)
!6599 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !6131, file: !5943, line: 744, baseType: !6600, size: 64, offset: 896)
!6600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6601, size: 64)
!6601 = !DISubroutineType(types: !6602)
!6602 = !{!120, !5941}
!6603 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !6131, file: !5943, line: 755, baseType: !6134, size: 64, offset: 960)
!6604 = !DIDerivedType(tag: DW_TAG_member, name: "set_crc_source", scope: !6131, file: !5943, line: 784, baseType: !6605, size: 64, offset: 1024)
!6605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6606, size: 64)
!6606 = !DISubroutineType(types: !6607)
!6607 = !{!120, !5941, !1041}
!6608 = !DIDerivedType(tag: DW_TAG_member, name: "verify_crc_source", scope: !6131, file: !5943, line: 800, baseType: !6609, size: 64, offset: 1088)
!6609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6610, size: 64)
!6610 = !DISubroutineType(types: !6611)
!6611 = !{!120, !5941, !1041, !6612}
!6612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!6613 = !DIDerivedType(tag: DW_TAG_member, name: "get_crc_sources", scope: !6131, file: !5943, line: 822, baseType: !6614, size: 64, offset: 1152)
!6614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6615, size: 64)
!6615 = !DISubroutineType(types: !6616)
!6616 = !{!6617, !5941, !6612}
!6617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6618, size: 64)
!6618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1041)
!6619 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !6131, file: !5943, line: 834, baseType: !6620, size: 64, offset: 1216)
!6620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6621, size: 64)
!6621 = !DISubroutineType(types: !6622)
!6622 = !{null, !6070, !6597}
!6623 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_counter", scope: !6131, file: !5943, line: 861, baseType: !6624, size: 64, offset: 1280)
!6624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6625, size: 64)
!6625 = !DISubroutineType(types: !6626)
!6626 = !{!418, !5941}
!6627 = !DIDerivedType(tag: DW_TAG_member, name: "enable_vblank", scope: !6131, file: !5943, line: 874, baseType: !6600, size: 64, offset: 1344)
!6628 = !DIDerivedType(tag: DW_TAG_member, name: "disable_vblank", scope: !6131, file: !5943, line: 882, baseType: !6134, size: 64, offset: 1408)
!6629 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_timestamp", scope: !6131, file: !5943, line: 920, baseType: !6630, size: 64, offset: 1472)
!6630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6631, size: 64)
!6631 = !DISubroutineType(types: !6632)
!6632 = !{!1038, !5941, !2400, !6633, !1038}
!6633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!6634 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_size", scope: !5942, file: !5943, line: 1068, baseType: !1003, size: 32, offset: 3328)
!6635 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_store", scope: !5942, file: !5943, line: 1077, baseType: !6636, size: 64, offset: 3392)
!6636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6015, size: 64)
!6637 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5942, file: !5943, line: 1080, baseType: !6638, size: 64, offset: 3456)
!6638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6639, size: 64)
!6639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6640)
!6640 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_helper_funcs", file: !5943, line: 63, flags: DIFlagFwdDecl)
!6641 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5942, file: !5943, line: 1083, baseType: !5157, size: 3136, offset: 3520)
!6642 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter_property", scope: !5942, file: !5943, line: 1089, baseType: !5144, size: 64, offset: 6656)
!6643 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5942, file: !5943, line: 1104, baseType: !6555, size: 64, offset: 6720)
!6644 = !DIDerivedType(tag: DW_TAG_member, name: "commit_list", scope: !5942, file: !5943, line: 1121, baseType: !350, size: 128, offset: 6784)
!6645 = !DIDerivedType(tag: DW_TAG_member, name: "commit_lock", scope: !5942, file: !5943, line: 1128, baseType: !744, size: 32, offset: 6912)
!6646 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_entry", scope: !5942, file: !5943, line: 1135, baseType: !1157, size: 64, offset: 6976)
!6647 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !5942, file: !5943, line: 1142, baseType: !6648, size: 576, offset: 7040)
!6648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc", file: !6649, line: 53, size: 576, elements: !6650)
!6649 = !DIFile(filename: "./include/drm/drm_debugfs_crc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e277ec0ede400e3d94103804613a92f2")
!6650 = !{!6651, !6652, !6653, !6654, !6655, !6665, !6666, !6667, !6668}
!6651 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6648, file: !6649, line: 54, baseType: !744, size: 32)
!6652 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !6648, file: !6649, line: 55, baseType: !1041, size: 64, offset: 64)
!6653 = !DIDerivedType(tag: DW_TAG_member, name: "opened", scope: !6648, file: !6649, line: 56, baseType: !1038, size: 8, offset: 128)
!6654 = !DIDerivedType(tag: DW_TAG_member, name: "overflow", scope: !6648, file: !6649, line: 56, baseType: !1038, size: 8, offset: 136)
!6655 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !6648, file: !6649, line: 57, baseType: !6656, size: 64, offset: 192)
!6656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6657, size: 64)
!6657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc_entry", file: !6649, line: 33, size: 384, elements: !6658)
!6658 = !{!6659, !6660, !6661}
!6659 = !DIDerivedType(tag: DW_TAG_member, name: "has_frame_counter", scope: !6657, file: !6649, line: 34, baseType: !1038, size: 8)
!6660 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !6657, file: !6649, line: 35, baseType: !1003, size: 32, offset: 32)
!6661 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !6657, file: !6649, line: 36, baseType: !6662, size: 320, offset: 64)
!6662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1003, size: 320, elements: !6663)
!6663 = !{!6664}
!6664 = !DISubrange(count: 10)
!6665 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !6648, file: !6649, line: 58, baseType: !120, size: 32, offset: 256)
!6666 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !6648, file: !6649, line: 58, baseType: !120, size: 32, offset: 288)
!6667 = !DIDerivedType(tag: DW_TAG_member, name: "values_cnt", scope: !6648, file: !6649, line: 59, baseType: !1349, size: 64, offset: 320)
!6668 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !6648, file: !6649, line: 60, baseType: !853, size: 192, offset: 384)
!6669 = !DIDerivedType(tag: DW_TAG_member, name: "fence_context", scope: !5942, file: !5943, line: 1149, baseType: !18, size: 32, offset: 7616)
!6670 = !DIDerivedType(tag: DW_TAG_member, name: "fence_lock", scope: !5942, file: !5943, line: 1156, baseType: !744, size: 32, offset: 7648)
!6671 = !DIDerivedType(tag: DW_TAG_member, name: "fence_seqno", scope: !5942, file: !5943, line: 1163, baseType: !415, size: 64, offset: 7680)
!6672 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_name", scope: !5942, file: !5943, line: 1170, baseType: !3000, size: 256, offset: 7744)
!6673 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_data", scope: !5942, file: !5943, line: 1177, baseType: !6674, size: 64, offset: 8000)
!6674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6675, size: 64)
!6675 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_self_refresh_data", file: !5943, line: 44, flags: DIFlagFwdDecl)
!6676 = !{!6677, !6678, !6679}
!6677 = !DILocalVariable(name: "work", arg: 1, scope: !5938, file: !2, line: 240, type: !341)
!6678 = !DILocalVariable(name: "crtc", arg: 2, scope: !5938, file: !2, line: 240, type: !5941)
!6679 = !DILocalVariable(name: "func", arg: 3, scope: !5938, file: !2, line: 241, type: !358)
!6680 = !DILocation(line: 240, column: 51, scope: !5938)
!6681 = !DILocation(line: 240, column: 74, scope: !5938)
!6682 = !DILocation(line: 241, column: 13, scope: !5938)
!6683 = !DILocation(line: 243, column: 2, scope: !5938)
!6684 = !DILocation(line: 243, column: 2, scope: !6685)
!6685 = distinct !DILexicalBlock(scope: !5938, file: !2, line: 243, column: 2)
!6686 = !DILocation(line: 244, column: 18, scope: !5938)
!6687 = !DILocation(line: 244, column: 24, scope: !5938)
!6688 = !DILocation(line: 244, column: 2, scope: !5938)
!6689 = !DILocation(line: 245, column: 18, scope: !5938)
!6690 = !DILocation(line: 245, column: 24, scope: !5938)
!6691 = !DILocation(line: 245, column: 29, scope: !5938)
!6692 = !DILocation(line: 245, column: 51, scope: !5938)
!6693 = !DILocation(line: 245, column: 36, scope: !5938)
!6694 = !DILocation(line: 245, column: 2, scope: !5938)
!6695 = !DILocation(line: 245, column: 8, scope: !5938)
!6696 = !DILocation(line: 245, column: 15, scope: !5938)
!6697 = !DILocation(line: 246, column: 1, scope: !5938)
!6698 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5448, file: !5448, line: 35, type: !5449, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6699)
!6699 = !{!6700}
!6700 = !DILocalVariable(name: "list", arg: 1, scope: !6698, file: !5448, line: 35, type: !354)
!6701 = !DILocation(line: 35, column: 53, scope: !6698)
!6702 = !DILocation(line: 37, column: 2, scope: !6698)
!6703 = !DILocation(line: 37, column: 2, scope: !6704)
!6704 = distinct !DILexicalBlock(scope: !6698, file: !5448, line: 37, column: 2)
!6705 = !DILocation(line: 37, column: 2, scope: !6706)
!6706 = distinct !DILexicalBlock(scope: !6704, file: !5448, line: 37, column: 2)
!6707 = !DILocation(line: 37, column: 2, scope: !6708)
!6708 = distinct !DILexicalBlock(scope: !6704, file: !5448, line: 37, column: 2)
!6709 = !DILocation(line: 38, column: 2, scope: !6698)
!6710 = !DILocation(line: 38, column: 2, scope: !6711)
!6711 = distinct !DILexicalBlock(scope: !6698, file: !5448, line: 38, column: 2)
!6712 = !DILocation(line: 38, column: 2, scope: !6713)
!6713 = distinct !DILexicalBlock(scope: !6711, file: !5448, line: 38, column: 2)
!6714 = !DILocation(line: 38, column: 2, scope: !6715)
!6715 = distinct !DILexicalBlock(scope: !6711, file: !5448, line: 38, column: 2)
!6716 = !DILocation(line: 39, column: 1, scope: !6698)
!6717 = distinct !DISubprogram(name: "drm_crtc_index", scope: !5943, file: !5943, line: 1265, type: !6718, scopeLine: 1266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6722)
!6718 = !DISubroutineType(types: !6719)
!6719 = !{!18, !6720}
!6720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6721, size: 64)
!6721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5942)
!6722 = !{!6723}
!6723 = !DILocalVariable(name: "crtc", arg: 1, scope: !6717, file: !5943, line: 1265, type: !6720)
!6724 = !DILocation(line: 1265, column: 66, scope: !6717)
!6725 = !DILocation(line: 1267, column: 9, scope: !6717)
!6726 = !DILocation(line: 1267, column: 15, scope: !6717)
!6727 = !DILocation(line: 1267, column: 2, scope: !6717)
!6728 = !DILocation(line: 249, column: 52, scope: !5304)
!6729 = !DILocation(line: 251, column: 2, scope: !5304)
!6730 = !DILocation(line: 251, column: 25, scope: !5304)
!6731 = !DILocation(line: 253, column: 18, scope: !5304)
!6732 = !DILocation(line: 253, column: 26, scope: !5304)
!6733 = !DILocation(line: 253, column: 2, scope: !5304)
!6734 = !DILocation(line: 254, column: 2, scope: !5304)
!6735 = !DILocation(line: 254, column: 2, scope: !6736)
!6736 = distinct !DILexicalBlock(scope: !5304, file: !2, line: 254, column: 2)
!6737 = !DILocation(line: 256, column: 12, scope: !5304)
!6738 = !DILocation(line: 256, column: 20, scope: !5304)
!6739 = !DILocation(line: 256, column: 25, scope: !5304)
!6740 = !DILocation(line: 256, column: 34, scope: !5304)
!6741 = !DILocation(line: 257, column: 12, scope: !5304)
!6742 = !DILocation(line: 257, column: 20, scope: !5304)
!6743 = !DILocation(line: 255, column: 11, scope: !5304)
!6744 = !DILocation(line: 255, column: 9, scope: !5304)
!6745 = !DILocation(line: 258, column: 13, scope: !6746)
!6746 = distinct !DILexicalBlock(scope: !5304, file: !2, line: 258, column: 6)
!6747 = !DILocation(line: 258, column: 6, scope: !6746)
!6748 = !DILocation(line: 258, column: 6, scope: !5304)
!6749 = !DILocation(line: 259, column: 18, scope: !6746)
!6750 = !DILocation(line: 259, column: 10, scope: !6746)
!6751 = !DILocation(line: 259, column: 3, scope: !6746)
!6752 = !DILocation(line: 261, column: 19, scope: !5304)
!6753 = !DILocation(line: 261, column: 2, scope: !5304)
!6754 = !DILocation(line: 261, column: 10, scope: !5304)
!6755 = !DILocation(line: 261, column: 17, scope: !5304)
!6756 = !DILocation(line: 263, column: 17, scope: !5304)
!6757 = !DILocation(line: 263, column: 25, scope: !5304)
!6758 = !DILocation(line: 263, column: 2, scope: !5304)
!6759 = !DILocation(line: 264, column: 2, scope: !5304)
!6760 = !DILocation(line: 265, column: 1, scope: !5304)
!6761 = !DISubprogram(name: "__init_waitqueue_head", scope: !854, file: !854, line: 64, type: !6762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6762 = !DISubroutineType(types: !6763)
!6763 = !{null, !5468, !1041, !6764}
!6764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!6765 = !DISubprogram(name: "kthread_create_worker", scope: !347, file: !347, line: 191, type: !6766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6766 = !DISubroutineType(types: !6767)
!6767 = !{!363, !18, !1041, null}
!6768 = distinct !DISubprogram(name: "IS_ERR", scope: !6769, file: !6769, line: 59, type: !6770, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6772)
!6769 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6770 = !DISubroutineType(types: !6771)
!6771 = !{!1038, !2084}
!6772 = !{!6773}
!6773 = !DILocalVariable(name: "ptr", arg: 1, scope: !6768, file: !6769, line: 59, type: !2084)
!6774 = !DILocation(line: 59, column: 60, scope: !6768)
!6775 = !DILocation(line: 61, column: 9, scope: !6768)
!6776 = !DILocation(line: 61, column: 2, scope: !6768)
!6777 = distinct !DISubprogram(name: "PTR_ERR", scope: !6769, file: !6769, line: 49, type: !6778, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6780)
!6778 = !DISubroutineType(types: !6779)
!6779 = !{!1307, !2084}
!6780 = !{!6781}
!6781 = !DILocalVariable(name: "ptr", arg: 1, scope: !6777, file: !6769, line: 49, type: !2084)
!6782 = !DILocation(line: 49, column: 61, scope: !6777)
!6783 = !DILocation(line: 51, column: 16, scope: !6777)
!6784 = !DILocation(line: 51, column: 9, scope: !6777)
!6785 = !DILocation(line: 51, column: 2, scope: !6777)
!6786 = !DISubprogram(name: "sched_set_fifo", scope: !408, file: !408, line: 1933, type: !6787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6787 = !DISubroutineType(types: !6788)
!6788 = !{null, !406}
!6789 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6790, file: !6790, line: 66, type: !6791, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6796)
!6790 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6791 = !DISubroutineType(types: !6792)
!6792 = !{null, !6793, !1349}
!6793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6794, size: 64)
!6794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6795)
!6795 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6796 = !{!6797, !6798}
!6797 = !DILocalVariable(name: "v", arg: 1, scope: !6789, file: !6790, line: 66, type: !6793)
!6798 = !DILocalVariable(name: "size", arg: 2, scope: !6789, file: !6790, line: 66, type: !1349)
!6799 = !DILocation(line: 66, column: 73, scope: !6789)
!6800 = !DILocation(line: 66, column: 83, scope: !6789)
!6801 = !DILocation(line: 68, column: 19, scope: !6789)
!6802 = !DILocation(line: 68, column: 22, scope: !6789)
!6803 = !DILocation(line: 68, column: 2, scope: !6789)
!6804 = !DILocation(line: 69, column: 2, scope: !6789)
!6805 = !DILocation(line: 70, column: 1, scope: !6789)
!6806 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !6807, file: !6807, line: 2554, type: !5409, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6808)
!6807 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6808 = !{!6809}
!6809 = !DILocalVariable(name: "v", arg: 1, scope: !6806, file: !6807, line: 2554, type: !5411)
!6810 = !DILocation(line: 2554, column: 37, scope: !6806)
!6811 = !DILocation(line: 2556, column: 28, scope: !6806)
!6812 = !DILocation(line: 2556, column: 9, scope: !6806)
!6813 = !DILocation(line: 2556, column: 2, scope: !6806)
!6814 = distinct !DISubprogram(name: "kasan_check_read", scope: !6815, file: !6815, line: 40, type: !6816, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6818)
!6815 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6816 = !DISubroutineType(types: !6817)
!6817 = !{!1038, !6793, !18}
!6818 = !{!6819, !6820}
!6819 = !DILocalVariable(name: "p", arg: 1, scope: !6814, file: !6815, line: 40, type: !6793)
!6820 = !DILocalVariable(name: "size", arg: 2, scope: !6814, file: !6815, line: 40, type: !18)
!6821 = !DILocation(line: 40, column: 58, scope: !6814)
!6822 = !DILocation(line: 40, column: 74, scope: !6814)
!6823 = !DILocation(line: 42, column: 2, scope: !6814)
!6824 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6825, file: !6825, line: 229, type: !6826, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6828)
!6825 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6826 = !DISubroutineType(types: !6827)
!6827 = !{null, !6793, !1349, !120}
!6828 = !{!6829, !6830, !6831}
!6829 = !DILocalVariable(name: "ptr", arg: 1, scope: !6824, file: !6825, line: 229, type: !6793)
!6830 = !DILocalVariable(name: "size", arg: 2, scope: !6824, file: !6825, line: 229, type: !1349)
!6831 = !DILocalVariable(name: "type", arg: 3, scope: !6824, file: !6825, line: 230, type: !120)
!6832 = !DILocation(line: 229, column: 60, scope: !6824)
!6833 = !DILocation(line: 229, column: 72, scope: !6824)
!6834 = !DILocation(line: 230, column: 15, scope: !6824)
!6835 = !DILocation(line: 230, column: 23, scope: !6824)
!6836 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !6837, file: !6837, line: 13, type: !5409, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6838)
!6837 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!6838 = !{!6839}
!6839 = !DILocalVariable(name: "v", arg: 1, scope: !6836, file: !6837, line: 13, type: !5411)
!6840 = !DILocation(line: 13, column: 65, scope: !6836)
!6841 = !DILocation(line: 15, column: 9, scope: !6836)
!6842 = !DILocation(line: 15, column: 2, scope: !6836)
!6843 = distinct !DISubprogram(name: "atomic_read", scope: !5408, file: !5408, line: 30, type: !6844, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6848)
!6844 = !DISubroutineType(types: !6845)
!6845 = !{!120, !6846}
!6846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6847, size: 64)
!6847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!6848 = !{!6849}
!6849 = !DILocalVariable(name: "v", arg: 1, scope: !6843, file: !5408, line: 30, type: !6846)
!6850 = !DILocation(line: 30, column: 29, scope: !6843)
!6851 = !DILocation(line: 32, column: 25, scope: !6843)
!6852 = !DILocation(line: 32, column: 2, scope: !6843)
!6853 = !DILocation(line: 33, column: 25, scope: !6843)
!6854 = !DILocation(line: 33, column: 9, scope: !6843)
!6855 = !DILocation(line: 33, column: 2, scope: !6843)
!6856 = distinct !DISubprogram(name: "raw_atomic_read", scope: !6807, file: !6807, line: 442, type: !6844, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6857)
!6857 = !{!6858}
!6858 = !DILocalVariable(name: "v", arg: 1, scope: !6856, file: !6807, line: 442, type: !6846)
!6859 = !DILocation(line: 442, column: 33, scope: !6856)
!6860 = !DILocation(line: 444, column: 26, scope: !6856)
!6861 = !DILocation(line: 444, column: 9, scope: !6856)
!6862 = !DILocation(line: 444, column: 2, scope: !6856)
!6863 = distinct !DISubprogram(name: "arch_atomic_read", scope: !6864, file: !6864, line: 17, type: !6844, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6865)
!6864 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6865 = !{!6866}
!6866 = !DILocalVariable(name: "v", arg: 1, scope: !6863, file: !6864, line: 17, type: !6846)
!6867 = !DILocation(line: 17, column: 61, scope: !6863)
!6868 = !DILocation(line: 23, column: 9, scope: !6863)
!6869 = !DILocation(line: 23, column: 2, scope: !6863)
!6870 = distinct !DISubprogram(name: "__list_del_entry", scope: !5448, file: !5448, line: 213, type: !5449, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6871)
!6871 = !{!6872}
!6872 = !DILocalVariable(name: "entry", arg: 1, scope: !6870, file: !5448, line: 213, type: !354)
!6873 = !DILocation(line: 213, column: 55, scope: !6870)
!6874 = !DILocation(line: 215, column: 30, scope: !6875)
!6875 = distinct !DILexicalBlock(scope: !6870, file: !5448, line: 215, column: 6)
!6876 = !DILocation(line: 215, column: 7, scope: !6875)
!6877 = !DILocation(line: 215, column: 6, scope: !6870)
!6878 = !DILocation(line: 216, column: 3, scope: !6875)
!6879 = !DILocation(line: 218, column: 13, scope: !6870)
!6880 = !DILocation(line: 218, column: 20, scope: !6870)
!6881 = !DILocation(line: 218, column: 26, scope: !6870)
!6882 = !DILocation(line: 218, column: 33, scope: !6870)
!6883 = !DILocation(line: 218, column: 2, scope: !6870)
!6884 = !DILocation(line: 219, column: 1, scope: !6870)
!6885 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5448, file: !5448, line: 134, type: !6886, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6888)
!6886 = !DISubroutineType(types: !6887)
!6887 = !{!1038, !354}
!6888 = !{!6889}
!6889 = !DILocalVariable(name: "entry", arg: 1, scope: !6885, file: !5448, line: 134, type: !354)
!6890 = !DILocation(line: 134, column: 61, scope: !6885)
!6891 = !DILocation(line: 136, column: 2, scope: !6885)
!6892 = distinct !DISubprogram(name: "__list_del", scope: !5448, file: !5448, line: 193, type: !5762, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6893)
!6893 = !{!6894, !6895}
!6894 = !DILocalVariable(name: "prev", arg: 1, scope: !6892, file: !5448, line: 193, type: !354)
!6895 = !DILocalVariable(name: "next", arg: 2, scope: !6892, file: !5448, line: 193, type: !354)
!6896 = !DILocation(line: 193, column: 50, scope: !6892)
!6897 = !DILocation(line: 193, column: 75, scope: !6892)
!6898 = !DILocation(line: 195, column: 15, scope: !6892)
!6899 = !DILocation(line: 195, column: 2, scope: !6892)
!6900 = !DILocation(line: 195, column: 8, scope: !6892)
!6901 = !DILocation(line: 195, column: 13, scope: !6892)
!6902 = !DILocation(line: 196, column: 2, scope: !6892)
!6903 = !DILocation(line: 196, column: 2, scope: !6904)
!6904 = distinct !DILexicalBlock(scope: !6892, file: !5448, line: 196, column: 2)
!6905 = !DILocation(line: 196, column: 2, scope: !6906)
!6906 = distinct !DILexicalBlock(scope: !6904, file: !5448, line: 196, column: 2)
!6907 = !DILocation(line: 196, column: 2, scope: !6908)
!6908 = distinct !DILexicalBlock(scope: !6904, file: !5448, line: 196, column: 2)
!6909 = !DILocation(line: 197, column: 1, scope: !6892)
!6910 = !DISubprogram(name: "_raw_spin_lock", scope: !5676, file: !5676, line: 22, type: !6911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6911 = !DISubroutineType(types: !6912)
!6912 = !{null, !5679}
!6913 = !DISubprogram(name: "_raw_spin_unlock", scope: !5676, file: !5676, line: 39, type: !6911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6914 = distinct !DISubprogram(name: "__list_add", scope: !5448, file: !5448, line: 146, type: !6915, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6917)
!6915 = !DISubroutineType(types: !6916)
!6916 = !{null, !354, !354, !354}
!6917 = !{!6918, !6919, !6920}
!6918 = !DILocalVariable(name: "new", arg: 1, scope: !6914, file: !5448, line: 146, type: !354)
!6919 = !DILocalVariable(name: "prev", arg: 2, scope: !6914, file: !5448, line: 147, type: !354)
!6920 = !DILocalVariable(name: "next", arg: 3, scope: !6914, file: !5448, line: 148, type: !354)
!6921 = !DILocation(line: 146, column: 49, scope: !6914)
!6922 = !DILocation(line: 147, column: 28, scope: !6914)
!6923 = !DILocation(line: 148, column: 28, scope: !6914)
!6924 = !DILocation(line: 150, column: 24, scope: !6925)
!6925 = distinct !DILexicalBlock(scope: !6914, file: !5448, line: 150, column: 6)
!6926 = !DILocation(line: 150, column: 29, scope: !6925)
!6927 = !DILocation(line: 150, column: 35, scope: !6925)
!6928 = !DILocation(line: 150, column: 7, scope: !6925)
!6929 = !DILocation(line: 150, column: 6, scope: !6914)
!6930 = !DILocation(line: 151, column: 3, scope: !6925)
!6931 = !DILocation(line: 153, column: 15, scope: !6914)
!6932 = !DILocation(line: 153, column: 2, scope: !6914)
!6933 = !DILocation(line: 153, column: 8, scope: !6914)
!6934 = !DILocation(line: 153, column: 13, scope: !6914)
!6935 = !DILocation(line: 154, column: 14, scope: !6914)
!6936 = !DILocation(line: 154, column: 2, scope: !6914)
!6937 = !DILocation(line: 154, column: 7, scope: !6914)
!6938 = !DILocation(line: 154, column: 12, scope: !6914)
!6939 = !DILocation(line: 155, column: 14, scope: !6914)
!6940 = !DILocation(line: 155, column: 2, scope: !6914)
!6941 = !DILocation(line: 155, column: 7, scope: !6914)
!6942 = !DILocation(line: 155, column: 12, scope: !6914)
!6943 = !DILocation(line: 156, column: 2, scope: !6914)
!6944 = !DILocation(line: 156, column: 2, scope: !6945)
!6945 = distinct !DILexicalBlock(scope: !6914, file: !5448, line: 156, column: 2)
!6946 = !DILocation(line: 156, column: 2, scope: !6947)
!6947 = distinct !DILexicalBlock(scope: !6945, file: !5448, line: 156, column: 2)
!6948 = !DILocation(line: 156, column: 2, scope: !6949)
!6949 = distinct !DILexicalBlock(scope: !6945, file: !5448, line: 156, column: 2)
!6950 = !DILocation(line: 157, column: 1, scope: !6914)
!6951 = distinct !DISubprogram(name: "__list_add_valid", scope: !5448, file: !5448, line: 128, type: !6952, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6954)
!6952 = !DISubroutineType(types: !6953)
!6953 = !{!1038, !354, !354, !354}
!6954 = !{!6955, !6956, !6957}
!6955 = !DILocalVariable(name: "new", arg: 1, scope: !6951, file: !5448, line: 128, type: !354)
!6956 = !DILocalVariable(name: "prev", arg: 2, scope: !6951, file: !5448, line: 129, type: !354)
!6957 = !DILocalVariable(name: "next", arg: 3, scope: !6951, file: !5448, line: 130, type: !354)
!6958 = !DILocation(line: 128, column: 55, scope: !6951)
!6959 = !DILocation(line: 129, column: 23, scope: !6951)
!6960 = !DILocation(line: 130, column: 23, scope: !6951)
!6961 = !DILocation(line: 132, column: 2, scope: !6951)
!6962 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !5676, file: !5676, line: 43, type: !6963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6963 = !DISubroutineType(types: !6964)
!6964 = !{null, !5679, !415}
!6965 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !5676, file: !5676, line: 29, type: !6911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6966 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !5676, file: !5676, line: 41, type: !6911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
